package me.kavishdevar.librepods.findmy

import org.json.JSONObject

data class FindMyDeviceRow(val id: String, val name: String, val type: String, val state: String)
data class DeviceListStatus(
    val state: String = "idle",
    val message: String = "",
    val devices: List<FindMyDeviceRow> = emptyList(),
    val busy: Boolean = false,
) {
    companion object {
        fun fromJson(json: String): DeviceListStatus {
            val data = JSONObject(json)
            val rows = data.optJSONArray("devices")
            require(rows == null || rows.length() <= 256)
            val devices = if (rows == null) emptyList() else (0 until rows.length()).map { index ->
                val row = rows.getJSONObject(index)
                FindMyDeviceRow(row.getString("id"), row.getString("name"), row.getString("type"), row.getString("state"))
            }
            return DeviceListStatus(data.getString("state"), data.optString("message"), devices)
        }
    }
}
