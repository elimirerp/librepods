package me.kavishdevar.librepods.findmy.root

import android.content.Context
import org.json.JSONObject
import java.io.DataInputStream
import java.io.EOFException
import java.io.IOException
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean

/** Context-only launcher. No user input, radio material, host files or IPC endpoint. */
@androidx.annotation.Keep
class RootOwnerLinkAdapter(context: Context) {
    private val apk = context.applicationContext.applicationInfo.sourceDir
    companion object {
        private val active = AtomicBoolean(false)
        private const val BRIDGE = "me.kavishdevar.librepods.findmy.root.RootHciBridge"
        private fun quote(value: String) = "'" + value.replace("'", "'\\''") + "'"
    }

    fun openPipe(): RootOwnerHciPipe {
        check(active.compareAndSet(false, true)) { "owner_radio_busy" }
        try {
            require(apk.startsWith("/") && !apk.contains('\n') && !apk.contains('\u0000'))
            // RootHciBridge already owns a 180s deadline and restores Bluetooth on EOF.
            // An external KILL timeout would bypass its restoration finally block.
            val command = "exec /system/bin/env CLASSPATH=${quote(apk)} " +
                "/system/bin/app_process /system/bin $BRIDGE bridge"
            var child: Process? = null
            for (su in listOf("/system/bin/su", "/system/xbin/su", "su")) {
                try { child = ProcessBuilder(su, "-c", command).start(); break }
                catch (_: IOException) { }
            }
            return RootOwnerHciPipe(child ?: throw IOException("root_unavailable")) { active.set(false) }
        } catch (failure: Throwable) {
            active.set(false)
            throw failure
        }
    }
}

/** Private process streams only; H4 packets and ephemeral keys never enter files or logs. */
@androidx.annotation.Keep
class RootOwnerHciPipe internal constructor(private val child: Process, private val released: () -> Unit) {
    private val input = DataInputStream(child.inputStream)
    private val closed = AtomicBoolean(false)
    private val events = mutableSetOf<String>()
    private val reader = Thread({
        try {
            child.errorStream.bufferedReader().use { stream ->
                while (true) {
                    val line = stream.readLine() ?: break
                    if (line.length > 256) continue
                    val event = runCatching { JSONObject(line).optString("event") }.getOrNull() ?: continue
                    val safe = when (event) {
                        "bridge_ready", "bluetooth_restored", "bluetooth_restore_pending",
                        "bluetooth_restore_failed", "scan_restore_failed", "hold_release_failed",
                        "hal_close_failed", "hal_closed", "deadline" -> event
                        else -> if (event.startsWith("bridge_failed_")) "bridge_failed" else null
                    }
                    if (safe != null) synchronized(events) { events.add(safe) }
                }
            }
        } catch (_: IOException) { }
    }, "librepods-owner-helper-events").apply { isDaemon = true; start() }

    fun readPacket(): ByteArray {
        val type = try { input.readUnsignedByte() } catch (_: EOFException) { return ByteArray(0) }
        val headerSize = when (type) { 1, 3 -> 3; 2, 4, 5 -> if (type == 4) 2 else 4; else -> throw IOException("invalid_h4") }
        val header = ByteArray(headerSize)
        input.readFully(header)
        val length = when (type) {
            4 -> header[1].toInt() and 255
            1, 3 -> header[2].toInt() and 255
            else -> (header[2].toInt() and 255) or ((header[3].toInt() and 255) shl 8)
        }.let { if (type == 5) it and 0x3fff else it }
        val packet = ByteArray(1 + headerSize + length)
        packet[0] = type.toByte()
        header.copyInto(packet, 1)
        input.readFully(packet, 1 + headerSize, length)
        return packet
    }

    @Synchronized fun writePacket(packet: ByteArray) {
        require(packet.size in 4..65540 && packet[0].toInt() in listOf(1, 2, 3, 5))
        check(!closed.get())
        child.outputStream.write(packet)
        child.outputStream.flush()
    }

    fun closePipe(): String {
        if (closed.compareAndSet(false, true)) {
            try {
                runCatching { child.outputStream.close() }
                // EOF causes HAL close, release of hold, scan setting restore and BT enable.
                // Never force-kill the root helper before it can restore those settings.
                val exited = child.waitFor(45, TimeUnit.SECONDS)
                if (!exited) synchronized(events) { events.add("restore_unconfirmed") }
                reader.join(1000)
            } finally {
                runCatching { input.close() }
                if (!child.isAlive) released() else Thread({
                    try { child.waitFor() } finally { released() }
                }, "librepods-owner-helper-exit").apply { isDaemon = true; start() }
            }
        }
        val snapshot = synchronized(events) { events.toSet() }
        return JSONObject().put("bridgeReady", "bridge_ready" in snapshot)
            .put("bluetoothRestored", "bluetooth_restored" in snapshot)
            .put("restoreConfirmed", "bluetooth_restored" in snapshot &&
                snapshot.none { it in setOf("scan_restore_failed", "hold_release_failed", "hal_close_failed") })
            .put("helperFailed", "bridge_failed" in snapshot || "deadline" in snapshot).toString()
    }
}
