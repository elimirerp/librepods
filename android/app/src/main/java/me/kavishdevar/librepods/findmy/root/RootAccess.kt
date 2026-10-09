package me.kavishdevar.librepods.findmy.root

import android.content.Context
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import org.json.JSONObject
import java.io.IOException
import java.util.concurrent.TimeUnit

data class RootAccessResult(
    val granted: Boolean = false,
    val bluetoothPolicyAllowed: Boolean = false,
    val recognizedHal: Boolean = false,
    val error: String? = null,
    val diagnostic: String = "",
)

/** Requests the app's own su permission. Every launch rechecks the current grant. */
object RootAccess {
    private val mutex = Mutex()
    private const val PROBE = "me.kavishdevar.librepods.findmy.root.RootBluetoothProbe"

    private fun shellQuote(value: String): String = "'" + value.replace("'", "'\\''") + "'"

    suspend fun request(context: Context): RootAccessResult = mutex.withLock {
        withContext(Dispatchers.IO) {
            // APK path comes from PackageManager. No user input or key enters a shell command.
            val command = "exec /system/bin/timeout -s KILL 15 /system/bin/env " +
                "CLASSPATH=${shellQuote(context.applicationInfo.sourceDir)} " +
                "/system/bin/app_process /system/bin $PROBE inspect"
            var process: Process? = null
            for (su in listOf("/system/bin/su", "/system/xbin/su", "su")) {
                try {
                    process = ProcessBuilder(su, "-c", command).redirectErrorStream(true).start()
                    break
                } catch (_: IOException) { }
            }
            val child = process ?: return@withContext RootAccessResult(error = "root_unavailable")
            val output = StringBuilder()
            val reader = Thread({
                try {
                    child.inputStream.bufferedReader().use { stream ->
                        stream.forEachLine { line ->
                            synchronized(output) {
                                if (output.length < 32768) output.append(line.take(4096)).append('\n')
                            }
                        }
                    }
                } catch (_: IOException) { }
            }, "librepods-root-output").apply { isDaemon = true; start() }
            try {
                // Allows time for the root manager's permission dialog.
                if (!child.waitFor(45, TimeUnit.SECONDS)) {
                    child.destroyForcibly()
                    return@withContext RootAccessResult(error = "root_request_timeout")
                }
                reader.join(1000)
                val text = synchronized(output) { output.toString() }
                val json = text.lineSequence().lastOrNull { it.startsWith("{") }
                    ?.let { runCatching { JSONObject(it) }.getOrNull() }
                    ?: return@withContext RootAccessResult(error = "root_not_granted")
                val granted = json.optBoolean("rootGranted") && json.optInt("uid", -1) == 0
                RootAccessResult(
                    granted = granted,
                    bluetoothPolicyAllowed = json.optBoolean("halCallbackPolicyAllowed"),
                    recognizedHal = json.optBoolean("halInterfaceRecognized"),
                    error = if (json.optString("status") == "success") null else "root_check_failed",
                    diagnostic = json.toString(),
                )
            } finally {
                child.destroy()
            }
        }
    }
}
