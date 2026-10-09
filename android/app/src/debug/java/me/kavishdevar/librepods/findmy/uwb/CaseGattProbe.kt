package me.kavishdevar.librepods.findmy.uwb

import android.bluetooth.BluetoothDevice
import android.bluetooth.BluetoothGatt
import android.bluetooth.BluetoothGattCallback
import android.bluetooth.BluetoothProfile
import android.content.Context
import org.json.JSONArray
import org.json.JSONObject
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicReference

/** Optional debug probe: one exact owned-case scan match, one LE connection, service discovery.
 * No characteristic reads/writes, pairing, notifications, MTU changes, or ranging sessions.
 */
object CaseGattProbe {
    private data class Selected(val device: BluetoothDevice, val ordinal: Int, val index: Long)

    fun run(context: Context): JSONObject {
        val selected = AtomicReference<Selected?>()
        val scan = CaseIdentityScanProbe.run(context, requireCase = true) { device, ordinal, index ->
            selected.compareAndSet(null, Selected(device, ordinal, index))
        }
        val output = JSONObject().put("mode", "case_identity_gatt").put("scan", scan)
            .put("gattConnections", 0).put("characteristicReads", 0)
            .put("characteristicWrites", 0).put("rangingSessions", 0)
            .put("gattTimeoutMs", 15_000)
        fun fail(code: String) = output.put("status", "error").put("error", code)
        if (scan.optString("status") != "success") return fail("case_scan_failed")
        val target = selected.get() ?: return fail(if (scan.optInt("matchCount") > 0)
            "owned_case_not_connectable" else "owned_case_not_observed")
        output.put("candidateOrdinal", target.ordinal).put("index", target.index)
        val finished = CountDownLatch(1)
        val discoveryStarted = AtomicBoolean(false)
        val completed = AtomicReference<JSONObject?>()
        fun complete(value: JSONObject) {
            if (completed.compareAndSet(null, value)) finished.countDown()
        }
        fun error(code: String, status: Int? = null): JSONObject {
            val value = JSONObject().put("status", "error").put("error", code)
            if (status != null) value.put("gattStatus", status)
            return value
        }
        val callback = object : BluetoothGattCallback() {
            override fun onConnectionStateChange(gatt: BluetoothGatt, status: Int, newState: Int) {
                if (completed.get() != null) return
                try {
                    if (status != BluetoothGatt.GATT_SUCCESS) complete(error("gatt_connection_failed", status))
                    else if (newState == BluetoothProfile.STATE_CONNECTED && discoveryStarted.compareAndSet(false, true)) {
                        if (!gatt.discoverServices()) complete(error("service_discovery_not_started"))
                    } else if (newState == BluetoothProfile.STATE_DISCONNECTED) complete(error("gatt_disconnected", status))
                } catch (failure: Exception) {
                    complete(error("gatt_callback_exception").put("exceptionType", failure.javaClass.simpleName))
                }
            }

            override fun onServicesDiscovered(gatt: BluetoothGatt, status: Int) {
                if (completed.get() != null) return
                if (status != BluetoothGatt.GATT_SUCCESS) {
                    complete(error("service_discovery_failed", status))
                    return
                }
                try {
                    val services = JSONArray()
                    val allServices = gatt.services
                    for (service in allServices.take(64)) {
                        val characteristics = JSONArray()
                        for (characteristic in service.characteristics.take(128)) {
                            characteristics.put(JSONObject().put("uuid", characteristic.uuid.toString())
                                .put("properties", characteristic.properties))
                        }
                        services.put(JSONObject().put("uuid", service.uuid.toString())
                            .put("type", service.type).put("characteristics", characteristics)
                            .put("characteristicMetadataTruncated", service.characteristics.size > 128))
                    }
                    complete(JSONObject().put("status", "success").put("gattStatus", status)
                        .put("services", services).put("serviceMetadataTruncated", allServices.size > 64))
                } catch (failure: Exception) {
                    complete(error("service_metadata_exception").put("exceptionType", failure.javaClass.simpleName))
                }
            }
        }
        var gatt: BluetoothGatt? = null
        try {
            output.put("gattConnections", 1)
            // Use the actual matched ScanResult device, preserving Android's address type.
            gatt = target.device.connectGatt(context, false, callback, BluetoothDevice.TRANSPORT_LE)
            if (gatt == null) return fail("gatt_client_unavailable")
            if (!finished.await(15, TimeUnit.SECONDS)) complete(error("gatt_timeout"))
            val captured = completed.get() ?: error("gatt_result_missing")
            for (key in captured.keys()) output.put(key, captured.get(key))
            return output
        } catch (failure: Exception) {
            return fail("gatt_exception").put("exceptionType", failure.javaClass.simpleName)
        } finally {
            try { gatt?.disconnect() } catch (_: Exception) { output.put("disconnectFailed", true) }
            try { gatt?.close() } catch (_: Exception) { output.put("closeFailed", true) }
        }
    }
}
