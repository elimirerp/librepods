package me.kavishdevar.librepods.findmy.uwb

/** Bearing is relative to the phone, clockwise from straight ahead. */
data class FindingReading(
    val distanceMeters: Float,
    val azimuthDegrees: Float?,
    val bearingReliable: Boolean,
    val receivedAtMillis: Long,
) {
    fun usableAt(nowMillis: Long): Boolean = distanceMeters.isFinite() &&
        distanceMeters >= 0f && distanceMeters <= 100f &&
        nowMillis - receivedAtMillis in 0..2500

    fun bearingAt(nowMillis: Long): Float? = azimuthDegrees?.takeIf {
        usableAt(nowMillis) && bearingReliable && it.isFinite() && it in -180f..180f
    }
}
