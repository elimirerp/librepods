package me.kavishdevar.librepods.findmy.uwb

import android.content.Context
import android.content.pm.PackageManager
import android.os.Process
import dalvik.system.PathClassLoader
import org.json.JSONArray
import org.json.JSONObject
import java.lang.reflect.InvocationTargetException
import java.util.concurrent.ExecutionException
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.TimeoutException
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicReference

/** One fixed read-only CORE_GET_DEVICE_INFO. No Sec callbacks, sessions or config setters. */
object SamsungVendorProbe {
    private const val ADAPTER_CLASS = "com.samsung.android.uwb_extras.UwbExtrasAdapter"
    private const val FRAMEWORK_JAR = "/system/framework/com.samsung.android.uwb_extras.jar"
    private const val PERMISSION = "android.permission.WRITE_SECURE_SETTINGS"

    fun run(context: Context): JSONObject {
        val result = JSONObject()
            .put("mode", "samsung_device_info")
            .put("uid", Process.myUid())
            .put("writeSecureSettingsGranted", context.checkSelfPermission(PERMISSION) == PackageManager.PERMISSION_GRANTED)
        val phase = AtomicReference("class_load")
        val adapterAvailable = AtomicBoolean(false)
        val methodDiagnostics = AtomicReference<JSONObject?>()
        val executor = Executors.newSingleThreadExecutor { runnable ->
            Thread(runnable, "SamsungDeviceInfoProbe").apply { isDaemon = true }
        }
        val request = executor.submit<JSONObject> {
            val adapterClass = try {
                Class.forName(ADAPTER_CLASS, true, context.classLoader)
            } catch (_: ClassNotFoundException) {
                Class.forName(ADAPTER_CLASS, true, PathClassLoader(FRAMEWORK_JAR, context.classLoader))
            }
            phase.set("adapter_lookup")
            methodDiagnostics.set(visibleMethodSignatures(adapterClass))
            val adapter = adapterClass.getMethod("getUwbAdapter", Context::class.java).invoke(null, context)
                ?: return@submit JSONObject().put("status", "error").put("error", "adapter_unavailable")
            adapterAvailable.set(true)
            phase.set("device_info_request")
            // The reviewed Samsung method returns response payload only, not a UCI header.
            val payload = adapterClass.getMethod(
                "sendUciMessage", Int::class.javaPrimitiveType, Int::class.javaPrimitiveType, ByteArray::class.java
            ).invoke(adapter, 0, 2, byteArrayOf())
            if (payload !is ByteArray) {
                JSONObject().put("status", "error").put("error", "response_unavailable")
            } else {
                parseDeviceInfo(payload)
            }
        }
        try {
            val captured = request.get(8, TimeUnit.SECONDS)
            for (key in captured.keys()) result.put(key, captured.get(key))
        } catch (_: TimeoutException) {
            result.put("status", "error").put("error", "device_info_timeout")
        } catch (error: ExecutionException) {
            result.put("status", "error").put("error", "vendor_call_failed")
                .put("exceptionType", exceptionLabel(error))
        } catch (error: Exception) {
            if (error is InterruptedException) Thread.currentThread().interrupt()
            result.put("status", "error").put("error", "probe_exception")
                .put("exceptionType", exceptionLabel(error))
        } finally {
            if (!request.isDone) request.cancel(true)
            executor.shutdownNow()
            result.put("adapterAvailable", adapterAvailable.get()).put("phase", phase.get())
            methodDiagnostics.get()?.let { result.put("methodDiagnostics", it) }
        }
        return result
    }

    /** Read safe symbol metadata only; never make hidden methods accessible or invoke alternatives. */
    private fun visibleMethodSignatures(adapterClass: Class<*>): JSONObject {
        val result = JSONObject().put("adapterClass", adapterClass.name.take(160))
            .put("classLoaderType", adapterClass.classLoader?.javaClass?.name?.take(160) ?: "bootstrap")
        fun signatures(methods: Array<java.lang.reflect.Method>): JSONArray {
            val filtered = methods.filter { method ->
                (method.name.startsWith("get") || method.name.startsWith("send")) &&
                    method.declaringClass.name.startsWith("com.samsung.android.uwb_extras.")
            }.sortedWith(compareBy({ it.name }, { it.parameterCount })).take(24)
            return JSONArray().apply {
                for (method in filtered) {
                    put(JSONObject().put("name", method.name.take(120))
                        .put("parameters", JSONArray(method.parameterTypes.take(8).map { it.name.take(160) }))
                        .put("returnType", method.returnType.name.take(160)))
                }
            }
        }
        try {
            result.put("public", signatures(adapterClass.methods))
            result.put("declared", signatures(adapterClass.declaredMethods))
        } catch (error: Exception) {
            result.put("diagnosticExceptionType", exceptionLabel(error))
        } catch (error: LinkageError) {
            result.put("diagnosticExceptionType", exceptionLabel(error))
        }
        return result
    }

    private fun parseDeviceInfo(payload: ByteArray): JSONObject {
        val result = JSONObject().put("responseLength", payload.size)
        if (payload.isEmpty()) return result.put("status", "error").put("error", "empty_response")
        val responseStatus = payload[0].toInt() and 255
        result.put("responseStatus", responseStatus)
        if (responseStatus != 0) return result.put("status", "error").put("error", "device_info_rejected")
        if (payload.size < 10) return result.put("status", "error").put("error", "truncated_response")
        val vendorLength = payload[9].toInt() and 255
        if (vendorLength > payload.size - 10) return result.put("status", "error").put("error", "invalid_response_length")
        fun le16(offset: Int) = (payload[offset].toInt() and 255) or ((payload[offset + 1].toInt() and 255) shl 8)
        // Raw version words only: the reviewed parser does not establish dotted-version encoding.
        return result.put("status", "success")
            .put("uciVersionRaw", le16(1)).put("macVersionRaw", le16(3))
            .put("phyVersionRaw", le16(5)).put("uciTestVersionRaw", le16(7))
    }

    /** Preserve only the underlying typed failure, never vendor messages or response bytes. */
    private fun exceptionLabel(error: Throwable): String {
        var current = error
        repeat(4) {
            val wrapped = current
            current = when (wrapped) {
                is ExecutionException -> wrapped.cause ?: wrapped
                is InvocationTargetException -> wrapped.targetException ?: wrapped
                else -> wrapped
            }
        }
        return current.javaClass.simpleName.take(80)
    }
}
