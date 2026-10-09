package me.kavishdevar.librepods.findmy.enrollment

import org.json.JSONObject

/** Redacted account readiness. A visible row is distinct from native owner pairing. */
data class EnrollmentStatus(
    val state: String = "signed_out",
    val message: String = "Sign in to check Find My account access.",
    val configVersion: String? = null,
    val visibleAirPods: Int = 0,
    val selectedDeviceVisible: Boolean? = null,
    val canRegister: Boolean = false,
    val busy: Boolean = false,
) {
    companion object {
        fun fromJson(json: String): EnrollmentStatus {
            val data = JSONObject(json)
            return EnrollmentStatus(
                state = data.getString("state"),
                message = data.optString("message"),
                configVersion = data.opt("configVersion")?.takeUnless { it == JSONObject.NULL }?.toString(),
                visibleAirPods = data.optInt("visibleAirPods", 0).coerceAtLeast(0),
                selectedDeviceVisible = data.opt("selectedDeviceVisible") as? Boolean,
                // Android has no demonstrated native owner-pairing or genuine Apple host
                // registration path. Account reads must never enable an enrollment button.
                canRegister = false,
                busy = data.optBoolean("busy", false),
            )
        }
    }
}
