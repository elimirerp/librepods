package me.kavishdevar.librepods.findmy.recovery

import org.json.JSONObject

/** Opaque selections and redacted status only. This contains no recovered keys. */
data class RecoveryChoice(val id: String, val label: String)
data class RecoveredAccessoryGroup(val label: String, val components: List<String>)
data class CaseRecoveryStatus(
    val state: String = "idle",
    val message: String = "",
    val reason: String? = null,
    val stage: String? = null,
    val options: List<RecoveryChoice> = emptyList(),
    val cases: List<RecoveryChoice> = emptyList(),
    val groups: List<RecoveredAccessoryGroup> = emptyList(),
    val keysAvailable: Boolean = false,
    val busy: Boolean = false,
) {
    companion object {
        fun fromJson(json: String): CaseRecoveryStatus {
            val data = JSONObject(json)
            fun choices(key: String): List<RecoveryChoice> {
                val rows = data.optJSONArray(key) ?: return emptyList()
                require(rows.length() <= 64)
                return (0 until rows.length()).map { index ->
                    val row = rows.getJSONObject(index)
                    RecoveryChoice(row.getString("id"), row.getString("label"))
                }
            }
            val groups = data.optJSONArray("groups")
            require(groups == null || groups.length() <= 256)
            val convertedGroups = if (groups == null) emptyList() else (0 until groups.length()).map { index ->
                val group = groups.getJSONObject(index)
                val components = group.getJSONArray("components")
                require(components.length() <= 3)
                RecoveredAccessoryGroup(group.getString("label"), (0 until components.length()).map { components.getString(it) })
            }
            return CaseRecoveryStatus(
                state = data.getString("state"), message = data.optString("message"),
                reason = data.opt("reason")?.takeUnless { it == JSONObject.NULL }?.toString(),
                stage = data.opt("stage")?.takeUnless { it == JSONObject.NULL }?.toString(),
                options = choices("options"), cases = choices("cases"),
                groups = convertedGroups,
                keysAvailable = data.optBoolean("keysAvailable", false),
            )
        }
    }
}
