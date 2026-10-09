package me.kavishdevar.librepods.findmy.root

import org.json.JSONObject

/** Owner BLE proof only. This status never represents a UWB distance or bearing. */
data class OwnerLinkStatus(
    val state: String = "idle",
    val message: String = "Recover and select this account’s case before testing its connection.",
    val encryptionConfirmed: Boolean = false,
    val initializationStatus: Long? = null,
    val capabilitiesRaw: Long? = null,
    val bluetoothRestored: Boolean = false,
    val reason: String? = null,
    val busy: Boolean = false,
) {
    val verified: Boolean get() = state == "owner_link_verified" && encryptionConfirmed &&
        initializationStatus == 0L && capabilitiesRaw != null && bluetoothRestored
    val supportsFc1nd get() = capabilitiesRaw?.let { it and 1L != 0L } ?: false
    val supportsNbamms get() = capabilitiesRaw?.let { it and 2L != 0L } ?: false
    companion object {
        fun fromJson(json: String): OwnerLinkStatus {
            val data = JSONObject(json)
            fun word(name: String) = if (data.isNull(name)) null else data.optLong(name, -1)
                .takeIf { it in 0..0xffffffffL }
            val state = data.optString("state").takeIf {
                it in setOf("idle", "error", "owner_link_verified", "restore_unconfirmed")
            } ?: "error"
            val result = OwnerLinkStatus(state, data.optString("message"),
                data.optBoolean("encryptionConfirmed"), word("initializationStatus"), word("capabilitiesRaw"),
                data.optBoolean("bluetoothRestored"), data.optString("reason").takeIf {
                    it.matches(Regex("[a-z_]{1,80}"))
                })
            return if (state == "owner_link_verified" && !result.verified) result.copy(
                state = "error", message = "The case connection proof was incomplete.", reason = "incomplete_owner_proof")
            else result
        }
    }
}
