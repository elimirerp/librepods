package me.kavishdevar.librepods.findmy.uwb

import android.app.Activity
import android.app.Instrumentation
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.ranging.RangingCapabilities
import android.ranging.RangingManager
import org.json.JSONArray
import org.json.JSONObject
import kotlinx.coroutines.runBlocking
import me.kavishdevar.librepods.findmy.AppleAccountStoreProbe
import me.kavishdevar.librepods.findmy.AppleAccountBackend
import me.kavishdevar.librepods.findmy.AppleAccountRenderProbeActivity
import me.kavishdevar.librepods.findmy.anisette.LocalAnisette
import me.kavishdevar.librepods.findmy.root.RootAccess
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicReference

/** Debug-only probe with fixed modes; capabilities mode never opens a radio session. */
class UwbProbeInstrumentation : Instrumentation() {
    private var mode: ProbeMode? = ProbeMode.CAPABILITIES
    private var knownPrimaryIndex: Long? = null

    override fun onCreate(arguments: Bundle?) {
        super.onCreate(arguments)
        knownPrimaryIndex = arguments?.getString("known_primary_index")?.toLongOrNull()
        if (arguments?.containsKey("known_primary_index") == true &&
            (knownPrimaryIndex == null || knownPrimaryIndex!! !in 0..100_000)) {
            mode = null
            start()
            return
        }
        mode = when (arguments?.getString("mode") ?: "capabilities") {
            "capabilities" -> ProbeMode.CAPABILITIES
            "bonded_gatt" -> ProbeMode.BONDED_GATT
            "bonded_target" -> ProbeMode.BONDED_TARGET
            "samsung_device_info" -> ProbeMode.SAMSUNG_DEVICE_INFO
            "case_identity_scan" -> ProbeMode.CASE_IDENTITY_SCAN
            "case_identity_gatt" -> ProbeMode.CASE_IDENTITY_GATT
            "case_capabilities" -> ProbeMode.CASE_CAPABILITIES
            "root_access" -> ProbeMode.ROOT_ACCESS
            "account_store" -> ProbeMode.ACCOUNT_STORE
            "apple_prepare" -> ProbeMode.APPLE_PREPARE
            "account_render" -> ProbeMode.ACCOUNT_RENDER
            else -> null
        }
        start()
    }

    override fun onStart() {
        // Instrumentation runs on a worker; keep the main executor free for the callback.
        val result = JSONObject().put("sdk", Build.VERSION.SDK_INT)
        try {
            val target = targetContext
            val permissions = JSONObject()
            for (permission in listOf(RANGING_PERMISSION, UWB_PERMISSION)) {
                permissions.put(permission, target.checkSelfPermission(permission) == PackageManager.PERMISSION_GRANTED)
            }
            result.put("permissions", permissions)
            when (mode) {
                null -> fail(result, "unsupported_probe_mode")
                ProbeMode.ACCOUNT_RENDER -> {
                    val account = runBlocking { AppleAccountBackend.get(target).connect() }
                    result.put("mode", "account_render").put("accountState", account.state)
                    if (account.state != "signed_in") fail(result, "signed_in_session_required")
                    else {
                        val activity = startActivitySync(Intent().setClassName(target.packageName,
                            "me.kavishdevar.librepods.findmy.AppleAccountRenderProbeActivity")
                            .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)) as AppleAccountRenderProbeActivity
                        try {
                            // Several seconds of real drawing detect the native RenderNode cycle,
                            // which kills RenderThread before it can report an account UI exception.
                            val deadline = android.os.SystemClock.elapsedRealtime() + 5000
                            while (android.os.SystemClock.elapsedRealtime() < deadline) Thread.sleep(100)
                            result.put("drawnFrames", activity.drawnFrames.get())
                            if (activity.drawnFrames.get() >= 30) result.put("status", "success")
                            else fail(result, "account_ui_did_not_draw")
                        } finally { runOnMainSync { activity.finish() } }
                    }
                }
                ProbeMode.ACCOUNT_STORE -> {
                    val captured = AppleAccountStoreProbe.run(target)
                    for (key in captured.keys()) result.put(key, captured.get(key))
                }
                ProbeMode.APPLE_PREPARE -> {
                    val native = LocalAnisette(target)
                    val ready = native.ensureReady()
                    result.put("mode", "apple_prepare").put("nativeReady", ready)
                    if (ready) {
                        result.put("otpAvailable", native.otp().isNotEmpty())
                            .put("machineAvailable", native.machine().isNotEmpty())
                            .put("status", "success")
                        val account = runBlocking { AppleAccountBackend.get(target).connect() }
                        result.put("accountState", account.state)
                        if (account.state !in setOf("ready", "signed_in")) fail(result, "account_flow_not_ready")
                    } else fail(result, native.unavailableReason() ?: "native_setup_unavailable")
                }
                ProbeMode.ROOT_ACCESS -> {
                    val root = runBlocking { RootAccess.request(target) }
                    result.put("mode", "root_access").put("rootGranted", root.granted)
                        .put("bluetoothPolicyAllowed", root.bluetoothPolicyAllowed)
                        .put("recognizedHal", root.recognizedHal)
                        .put("status", if (root.granted && root.error == null) "success" else "error")
                    if (root.diagnostic.isNotEmpty()) result.put("rootDetails", JSONObject(root.diagnostic))
                    if (root.error != null) result.put("error", root.error)
                }
                ProbeMode.CASE_IDENTITY_SCAN, ProbeMode.CASE_IDENTITY_GATT, ProbeMode.CASE_CAPABILITIES -> {
                    // Fine location is granted only while this app is foreground. Launch
                    // inside instrumentation so a separate am start is not force-stopped.
                    startActivitySync(Intent().setClassName(target.packageName,
                        "me.kavishdevar.librepods.MainActivity")
                        .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
                    waitForIdleSync()
                    val captured = when (mode) {
                        ProbeMode.CASE_IDENTITY_GATT -> CaseGattProbe.run(target)
                        ProbeMode.CASE_CAPABILITIES -> CaseCapabilitiesProbe.run(target, knownPrimaryIndex)
                        else -> CaseIdentityScanProbe.run(target)
                    }
                    for (key in captured.keys()) result.put(key, captured.get(key))
                    if (!result.has("status")) fail(result, "probe_status_missing")
                }
                ProbeMode.BONDED_GATT, ProbeMode.BONDED_TARGET -> {
                    val captured = BondedGattProbe.run(target, mode == ProbeMode.BONDED_GATT)
                    for (key in captured.keys()) result.put(key, captured.get(key))
                    if (!result.has("status")) fail(result, "probe_status_missing")
                }
                ProbeMode.SAMSUNG_DEVICE_INFO -> {
                    val captured = SamsungVendorProbe.run(target)
                    for (key in captured.keys()) result.put(key, captured.get(key))
                    if (!result.has("status")) fail(result, "probe_status_missing")
                }
                ProbeMode.CAPABILITIES -> {
                    result.put("mode", "capabilities")
                    when {
                        Build.VERSION.SDK_INT < 36 -> fail(result, "unsupported_api")
                        !permissions.getBoolean(RANGING_PERMISSION) -> fail(result, "ranging_permission_missing")
                        else -> readCapabilities(target, result)
                    }
                }
            }
        } catch (error: Exception) {
            fail(result, "probe_exception", error.javaClass.simpleName)
        } catch (error: LinkageError) {
            fail(result, "api_unavailable", error.javaClass.simpleName)
        }
        val status = if (result.optString("status") == "success") Activity.RESULT_OK else Activity.RESULT_CANCELED
        finish(status, Bundle().apply { putString("capabilities_json", result.toString()) })
    }

    private fun readCapabilities(target: Context, result: JSONObject) {
        val manager = target.getSystemService(RangingManager::class.java)
        if (manager == null) {
            fail(result, "ranging_service_unavailable")
            return
        }
        val latch = CountDownLatch(1)
        val snapshot = AtomicReference<JSONObject?>()
        val failure = AtomicReference<String?>()
        val callback = object : RangingManager.RangingCapabilitiesCallback {
            override fun onRangingCapabilities(capabilities: RangingCapabilities) {
                try {
                    snapshot.compareAndSet(null, serialize(capabilities))
                } catch (error: Exception) {
                    failure.compareAndSet(null, error.javaClass.simpleName)
                } catch (error: LinkageError) {
                    failure.compareAndSet(null, error.javaClass.simpleName)
                } finally {
                    latch.countDown()
                }
            }
        }
        var attemptedRegistration = false
        try {
            attemptedRegistration = true
            manager.registerCapabilitiesCallback(target.mainExecutor, callback)
            if (!latch.await(8, TimeUnit.SECONDS)) {
                fail(result, "capability_callback_timeout")
            } else if (failure.get() != null) {
                fail(result, "capability_serialization_failed", failure.get())
            } else {
                val captured = snapshot.get()
                if (captured == null) {
                    fail(result, "capabilities_missing")
                } else {
                    for (key in captured.keys()) result.put(key, captured.get(key))
                    result.put("status", "success")
                }
            }
        } finally {
            // Also try cleanup after a registration call which throws after partially registering.
            if (attemptedRegistration) {
                try {
                    manager.unregisterCapabilitiesCallback(callback)
                } catch (error: Exception) {
                    fail(result, "callback_cleanup_failed", error.javaClass.simpleName)
                } catch (error: LinkageError) {
                    fail(result, "callback_cleanup_failed", error.javaClass.simpleName)
                }
            }
        }
    }

    private fun serialize(capabilities: RangingCapabilities): JSONObject {
        val result = JSONObject()
        val availability = JSONObject()
        for ((technology, status) in capabilities.technologyAvailability.entries.sortedBy { it.key }.take(16)) {
            availability.put(technology.toString(), status)
        }
        result.put("availability", availability)
        val uwb = capabilities.uwbCapabilities
        result.put("uwbPresent", uwb != null)
        if (uwb == null) return result
        fun bounded(values: List<Int>): JSONArray = JSONArray(values.take(64))
        result.put("channels", bounded(uwb.supportedChannels))
            .put("preambles", bounded(uwb.supportedPreambleIndexes))
            .put("configs", bounded(uwb.supportedConfigIds))
            .put("slotDurations", bounded(uwb.supportedSlotDurations))
            .put("minIntervalMs", uwb.minimumRangingInterval.toMillis())
            .put("distanceSupported", uwb.isDistanceMeasurementSupported)
            .put("azimuthSupported", uwb.isAzimuthalAngleSupported)
            .put("elevationSupported", uwb.isElevationAngleSupported)
            .put("antennaModes", if (Build.VERSION.SDK_INT >= 37) bounded(uwb.supportedAntennaModes) else JSONObject.NULL)
        return result
    }

    private fun fail(result: JSONObject, code: String, exceptionType: String? = null) {
        result.put("status", "error").put("error", code)
        if (exceptionType != null) result.put("exceptionType", exceptionType.take(80))
    }

    private companion object {
        const val RANGING_PERMISSION = "android.permission.RANGING"
        const val UWB_PERMISSION = "android.permission.UWB_RANGING"
    }

    private enum class ProbeMode { CAPABILITIES, BONDED_GATT, BONDED_TARGET, SAMSUNG_DEVICE_INFO, CASE_IDENTITY_SCAN, CASE_IDENTITY_GATT, CASE_CAPABILITIES, ROOT_ACCESS, ACCOUNT_STORE, APPLE_PREPARE, ACCOUNT_RENDER }
}
