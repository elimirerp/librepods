package me.kavishdevar.librepods.findmy.uwb

import android.bluetooth.BluetoothDevice
import android.bluetooth.BluetoothGatt
import android.bluetooth.BluetoothGattCallback
import android.bluetooth.BluetoothGattCharacteristic
import android.bluetooth.BluetoothGattDescriptor
import android.bluetooth.BluetoothGattConnectionSettings
import android.bluetooth.BluetoothManager
import android.bluetooth.BluetoothProfile
import android.content.Context
import android.os.SystemClock
import org.json.JSONObject
import org.json.JSONArray
import java.util.UUID
import java.util.concurrent.ArrayBlockingQueue
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.ConcurrentLinkedQueue
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicReference

/** Exact owned case only. Fixed CCC/init/capability handshake; no config/start or key material.
 * Wire evidence: tools/uwb-protocol/hawkeye.py and HAWKEYE-WIRE.md (native locationd).
 */
object CaseCapabilitiesProbe {
    private val SERVICE = UUID.fromString("0000fd44-0000-1000-8000-00805f9b34fb")
    private val CHARACTERISTIC = UUID.fromString("4f860006-943b-49ef-bed4-2f730304427a")
    private val CCC = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb")
    private val INIT = byteArrayOf(1, 1, 7)
    private val CAPS = byteArrayOf(1, 0x10, 7, 0, 0, 0, 0)
    private data class Selected(val device: BluetoothDevice, val ordinal: Int, val index: Long)
    private data class Event(val kind: String, val status: Int = 0, val opcode: Int = 0, val flags: Long = 0)
    private class Stop(val code: String) : Exception()

    fun run(context: Context, knownPrimaryIndex: Long? = null): JSONObject {
        val deadline = SystemClock.elapsedRealtime() + 60_000
        val output = JSONObject().put("mode", "case_capabilities").put("deadlineMs", 60_000)
            .put("gattConnections", 0).put("characteristicReads", 0)
            .put("characteristicWrites", 0).put("descriptorWrites", 0)
            .put("uwbConfigurations", 0).put("rangingSessions", 0)
        val selected = AtomicReference<Selected?>()
        val scan = if (knownPrimaryIndex == null) {
            CaseIdentityScanProbe.run(context, requireCase = true) { device, ordinal, index ->
                selected.compareAndSet(null, Selected(device, ordinal, index))
            }
        } else {
            val known = CaseIdentityScanProbe.knownPrimaryCase(context, knownPrimaryIndex)
            selected.set(Selected(known.first, known.second, known.third))
            JSONObject().put("mode", "known_owned_case_candidate").put("status", "success")
                .put("branchIndex", knownPrimaryIndex).put("newAdvertisementObserved", false)
        }
        output.put("scan", scan)
        fun fail(code: String) = output.put("status", "error").put("error", code)
        if (scan.optString("status") != "success") return fail("case_scan_failed")
        val target = selected.get() ?: return fail(if (scan.optInt("matchCount") > 0)
            "owned_case_not_connectable" else "owned_case_not_observed")
        output.put("candidateOrdinal", target.ordinal).put("index", target.index)
        val events = ArrayBlockingQueue<Event>(64)
        val counts = ConcurrentHashMap<String, AtomicInteger>()
        val overflow = AtomicInteger(0)
        val writingOpcode = AtomicInteger(0)
        val stopped = AtomicBoolean(false)
        val terminalError = AtomicReference<Event?>()
        val callbackStage = AtomicReference("none")
        val packetMetadata = ConcurrentLinkedQueue<JSONObject>()
        val packetCount = AtomicInteger(0)
        val pending = mutableListOf<Event>()
        var gatt: BluetoothGatt? = null
        fun count(kind: String) { counts.computeIfAbsent(kind) { AtomicInteger(0) }
            .updateAndGet { (it + 1).coerceAtMost(1_000_000) } }
        fun offer(event: Event) {
            if (stopped.get()) return
            count(event.kind)
            callbackStage.set(event.kind)
            if (event.status != 0 || event.kind == "disconnected" || event.kind == "malformed")
                terminalError.compareAndSet(null, event)
            if (!events.offer(event)) overflow.set(1)
        }
        fun checkTerminal() {
            val event = terminalError.get() ?: return
            output.put("failureEvent", event.kind).put("failureStatus", event.status)
            if (event.kind == "ack" || event.kind == "init_response") {
                output.put("failureAckOpcode", event.opcode)
                throw Stop("hawkeye_nonzero_status")
            }
            if (event.kind == "disconnected") throw Stop("gatt_disconnected")
            if (event.kind == "malformed") throw Stop("malformed_hawkeye_response")
            output.put("authenticationError", event.status in setOf(5, 8, 15))
            throw Stop("gatt_operation_failed")
        }
        fun await(kind: String, opcode: Int = 0): Event {
            output.put("stage", kind)
            while (true) {
                checkTerminal()
                if (overflow.get() != 0) throw Stop("callback_queue_overflow")
                val position = pending.indexOfFirst { it.kind == kind && (opcode == 0 || it.opcode == opcode) }
                if (position >= 0) return pending.removeAt(position)
                val remaining = deadline - SystemClock.elapsedRealtime()
                if (remaining <= 0) throw Stop("handshake_deadline")
                val event = events.poll(remaining, TimeUnit.MILLISECONDS) ?: throw Stop("handshake_deadline")
                checkTerminal()
                if (event.kind == kind && (opcode == 0 || event.opcode == opcode)) return event
                if (pending.size >= 64) throw Stop("unexpected_event_limit")
                pending.add(event)
            }
        }
        val callback = object : BluetoothGattCallback() {
            override fun onConnectionStateChange(gatt: BluetoothGatt, status: Int, newState: Int) {
                if (status != BluetoothGatt.GATT_SUCCESS) offer(Event("connection", status))
                else if (newState == BluetoothProfile.STATE_CONNECTED) offer(Event("connected"))
                else if (newState == BluetoothProfile.STATE_DISCONNECTED) offer(Event("disconnected"))
            }
            override fun onServicesDiscovered(gatt: BluetoothGatt, status: Int) { offer(Event("services", status)) }
            override fun onDescriptorWrite(gatt: BluetoothGatt, descriptor: BluetoothGattDescriptor, status: Int) {
                if (descriptor.uuid == CCC && descriptor.characteristic.uuid == CHARACTERISTIC)
                    offer(Event("ccc", status))
            }
            override fun onCharacteristicWrite(gatt: BluetoothGatt, characteristic: BluetoothGattCharacteristic, status: Int) {
                if (characteristic.uuid == CHARACTERISTIC) offer(Event("write", status, writingOpcode.get()))
            }
            override fun onCharacteristicChanged(gatt: BluetoothGatt, characteristic: BluetoothGattCharacteristic, value: ByteArray) {
                if (stopped.get() || characteristic.uuid != CHARACTERISTIC) return
                callbackStage.set("indication")
                val packet = JSONObject().put("byteCount", value.size)
                    .put("frameMarker", if (value.isNotEmpty()) value[0].toInt() and 0xFF else JSONObject.NULL)
                    .put("opcode", if (value.size >= 3) le16(value, 1) else JSONObject.NULL)
                if (value.size == 7 && value[0].toInt() == 1 && le16(value, 1) == 0x0700)
                    packet.put("ackOpcode", le16(value, 3)).put("ackStatus", le16(value, 5))
                if (value.size == 7 && value[0].toInt() == 1 && le16(value, 1) == 0x0706)
                    packet.put("rangingStatus", le32(value, 3))
                if (packetCount.getAndIncrement() < 16) packetMetadata.add(packet)
                // Parse only complete, verified 7-byte response types. Never retain/log payload.
                if (value.size < 3 || value[0].toInt() != 1) { offer(Event("malformed")); return }
                val opcode = le16(value, 1)
                when (opcode) {
                    0x0700 -> if (value.size == 7) offer(Event("ack", le16(value, 5), le16(value, 3)))
                        else offer(Event("malformed"))
                    0x0706 -> if (value.size == 7 && writingOpcode.get() == 0x0701)
                        offer(Event("init_response", le32(value, 3).toInt(), opcode))
                        else offer(Event("malformed"))
                    0x0711 -> if (value.size == 7 && writingOpcode.get() == 0x0710)
                        offer(Event("capabilities", flags = le32(value, 3)))
                        else if (value.size == 7) count("early_capabilities")
                        else offer(Event("malformed"))
                    else -> count("other_indication")
                }
            }
        }
        try {
            output.put("gattConnections", 1)
            // The owned-key derivation and native iOS path establish RANDOM type.
            // API37 exposes this explicitly; retain an already-correct ScanResult device.
            output.put("observedAddressType", target.device.addressType)
            val device = if (target.device.addressType == BluetoothDevice.ADDRESS_TYPE_RANDOM) target.device
                else context.getSystemService(BluetoothManager::class.java).adapter
                    .getRemoteLeDevice(target.device.address, BluetoothDevice.ADDRESS_TYPE_RANDOM)
            output.put("connectionAddressType", device.addressType)
            if (device.address != target.device.address) throw Stop("owned_address_changed")
            val settings = BluetoothGattConnectionSettings.Builder()
                .setTransport(BluetoothDevice.TRANSPORT_LE)
                .setAutoConnectEnabled(false).setAutomaticMtuEnabled(false).build()
            gatt = device.connectGatt(settings, context.mainExecutor, callback)
                ?: throw Stop("gatt_client_unavailable")
            await("connected")
            if (!gatt.discoverServices()) throw Stop("service_discovery_not_started")
            output.put("serviceDiscoveryStatus", await("services").status)
            val characteristic = gatt.getService(SERVICE)?.getCharacteristic(CHARACTERISTIC)
                ?: throw Stop("hawkeye_characteristic_missing")
            if (characteristic.properties and BluetoothGattCharacteristic.PROPERTY_WRITE == 0 ||
                characteristic.properties and BluetoothGattCharacteristic.PROPERTY_INDICATE == 0)
                throw Stop("hawkeye_properties_incompatible")
            val descriptor = characteristic.getDescriptor(CCC) ?: throw Stop("ccc_missing")
            checkTerminal()
            if (!gatt.setCharacteristicNotification(characteristic, true)) throw Stop("local_indication_enable_failed")
            output.put("descriptorWrites", 1)
            val cccSubmission = gatt.writeDescriptor(descriptor, BluetoothGattDescriptor.ENABLE_INDICATION_VALUE)
            output.put("cccSubmissionStatus", cccSubmission)
            if (cccSubmission != 0) throw Stop("ccc_write_not_started")
            output.put("cccStatus", await("ccc").status)
            fun write(opcode: Int, bytes: ByteArray, field: String) {
                checkTerminal()
                if (SystemClock.elapsedRealtime() >= deadline) throw Stop("handshake_deadline")
                writingOpcode.set(opcode)
                output.put("characteristicWrites", output.getInt("characteristicWrites") + 1)
                val submission = gatt.writeCharacteristic(characteristic, bytes, BluetoothGattCharacteristic.WRITE_TYPE_DEFAULT)
                output.put(field + "SubmissionStatus", submission)
                if (submission != 0) throw Stop("characteristic_write_not_started")
                output.put(field + "WriteStatus", await("write", opcode).status)
            }
            write(0x0701, INIT, "init")
            val initAck = await("ack", 0x0701)
            output.put("initAckOpcode", initAck.opcode).put("initAckStatus", initAck.status)
            // Native init expects a separate status response after acknowledgement.
            val initResponse = await("init_response", 0x0706)
            output.put("initResponseStatus", initResponse.status)
            write(0x0710, CAPS, "capabilities")
            val capabilities = await("capabilities").flags
            checkTerminal()
            output.put("capabilitiesFlags", capabilities)
                .put("supportsFC1ND", capabilities and 1L != 0L)
                .put("supportsNBAMMS", capabilities and 2L != 0L)
                .put("supportsUNII5", capabilities and 4L != 0L)
                .put("supportsSimultaneousRanging", capabilities and 8L != 0L)
                .put("status", "success")
            return output
        } catch (stop: Stop) {
            return fail(stop.code)
        } catch (failure: Exception) {
            return fail("handshake_exception").put("exceptionType", failure.javaClass.simpleName)
        } finally {
            stopped.set(true)
            try { gatt?.disconnect() } catch (_: Exception) { output.put("disconnectFailed", true) }
            try { gatt?.close() } catch (_: Exception) { output.put("closeFailed", true) }
            val metadata = JSONObject()
            for ((kind, count) in counts.entries.sortedBy { it.key }) metadata.put(kind, count.get())
            output.put("eventCounts", metadata)
                .put("callbackStage", callbackStage.get())
                .put("receivedPackets", JSONArray(packetMetadata.toList()))
                .put("receivedPacketMetadataTruncated", packetCount.get() > 16)
        }
    }

    private fun le16(value: ByteArray, offset: Int): Int =
        (value[offset].toInt() and 0xFF) or ((value[offset + 1].toInt() and 0xFF) shl 8)
    private fun le32(value: ByteArray, offset: Int): Long =
        (0 until 4).fold(0L) { result, i -> result or ((value[offset + i].toLong() and 0xFF) shl (i * 8)) }
}
