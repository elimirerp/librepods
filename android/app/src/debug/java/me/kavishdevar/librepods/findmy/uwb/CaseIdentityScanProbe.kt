package me.kavishdevar.librepods.findmy.uwb

import android.Manifest
import android.bluetooth.BluetoothDevice
import android.bluetooth.BluetoothManager
import android.bluetooth.le.ScanCallback
import android.bluetooth.le.ScanFilter
import android.bluetooth.le.ScanResult
import android.bluetooth.le.ScanSettings
import android.content.Context
import android.content.pm.PackageManager
import android.location.LocationManager
import android.os.Build
import android.os.SystemClock
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.time.Instant
import java.time.OffsetDateTime
import java.time.ZoneOffset
import java.util.Locale
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicLong

/** Debug-only, 30-second passive identity scan, including the optional GATT handoff.
 * No GATT connection, radio settings, or account changes within this scanner.
 * Candidates stay in noBackupFilesDir; output never contains addresses or advertisement bytes.
 */
object CaseIdentityScanProbe {
    private const val WINDOW_MS = 30_000L
    private const val MAX_BYTES = 96 * 1024L
    private data class Candidate(val address: String, val index: Long, val ordinal: Int,
                                 val beaconOrdinal: Int?)
    private data class CandidateInput(val sourceComponent: String, val candidates: List<Candidate>, val ageMs: Long)
    private data class Match(val candidate: Candidate, var rssi: Int, var observations: Int,
                             var appleManufacturerPresent: Boolean, var findMyStatus: Int?,
                             var appleFrameType: Int?, var lastSeenElapsedMs: Long,
                             var connectable: Boolean)
    private class InvalidInput(val code: String) : Exception()

    /** Explicit diagnostic target from a fresh, validated owned-case candidate file.
     * Does not claim a new advertisement observation and does not scan/connect.
     */
    internal fun knownPrimaryCase(context: Context, branchIndex: Long): Triple<BluetoothDevice, Int, Long> {
        require(branchIndex in 0..100_000)
        val file = File(context.noBackupFilesDir, "findmy-case-identity.json")
        val input = readCandidates(file)
        require(input.sourceComponent == "case")
        val rows = JSONObject(file.readText()).getJSONArray("candidates")
        val exact = input.candidates.filter { candidate ->
            val row = rows.getJSONObject(candidate.ordinal)
            row.optString("keySequence") == "primary" && row.optLong("branchIndex", -1) == branchIndex
        }.single()
        val device = context.getSystemService(BluetoothManager::class.java).adapter
            .getRemoteLeDevice(exact.address, BluetoothDevice.ADDRESS_TYPE_RANDOM)
        return Triple(device, exact.ordinal, exact.index)
    }

    internal fun run(context: Context, requireCase: Boolean = false,
                     onFirstMatch: ((BluetoothDevice, Int, Long) -> Unit)? = null): JSONObject {
        val windowMs = WINDOW_MS
        val result = JSONObject().put("mode", "case_identity_scan")
            .put("durationMs", windowMs).put("passive", true)
            .put("gattConnections", 0).put("characteristicWrites", 0).put("rangingSessions", 0)
            .put("locationEnabled", context.getSystemService(LocationManager::class.java)?.isLocationEnabled
                ?: JSONObject.NULL)
        fun fail(code: String) = result.put("status", "error").put("error", code)
        if (Build.VERSION.SDK_INT < 37) return fail("passive_scan_api_unavailable")
        val required = listOf(Manifest.permission.BLUETOOTH_SCAN,
            Manifest.permission.BLUETOOTH_CONNECT, Manifest.permission.ACCESS_FINE_LOCATION)
        val permissions = JSONObject()
        for (permission in required) permissions.put(permission,
            context.checkSelfPermission(permission) == PackageManager.PERMISSION_GRANTED)
        result.put("permissions", permissions)
        if (required.any { !permissions.getBoolean(it) }) return fail("scan_permission_missing")
        val input = try {
            readCandidates(File(context.noBackupFilesDir, "findmy-case-identity.json"))
        } catch (error: InvalidInput) {
            return fail(error.code)
        } catch (error: Exception) {
            return fail("candidate_file_invalid").put("exceptionType", error.javaClass.simpleName)
        }
        if (requireCase && input.sourceComponent != "case") return fail("case_component_required")
        val candidates = input.candidates
        result.put("sourceComponent", input.sourceComponent).put("candidateCount", candidates.size)
            .put("candidateTimestampAgeMs", input.ageMs)
        val byAddress = candidates.associateBy { it.address }
        val matches = linkedMapOf<Int, Match>()
        val finished = CountDownLatch(1)
        val scanError = AtomicInteger(0)
        val manufacturerCallbackCount = AtomicInteger(0)
        val findMyType12Count = AtomicInteger(0)
        val firstMatched = AtomicBoolean(false)
        val firstMatchElapsedMs = AtomicLong(-1)
        var startedAt = 0L
        val callback = object : ScanCallback() {
            override fun onScanResult(callbackType: Int, observation: ScanResult) {
                try {
                    val data = observation.scanRecord?.getManufacturerSpecificData(0x004C)
                    // Aggregate diagnostics only: no unmatched address or payload is retained.
                    if (data != null) manufacturerCallbackCount.updateAndGet { (it + 1).coerceAtMost(1_000_000) }
                    if (data != null && data.isNotEmpty() && (data[0].toInt() and 0xFF) == 0x12)
                        findMyType12Count.updateAndGet { (it + 1).coerceAtMost(1_000_000) }
                    val candidate = byAddress[observation.device.address.uppercase(Locale.ROOT)] ?: return
                    val elapsedMs = SystemClock.elapsedRealtime() - startedAt
                    firstMatchElapsedMs.compareAndSet(-1, elapsedMs)
                    val frameType = if (data != null && data.isNotEmpty()) data[0].toInt() and 0xFF else null
                    // Type 0x12 includes short nearby (body length 2) and separated
                    // advertisements (body length 25). Expose only status, never key bytes.
                    val findMyStatus = parseFindMyStatus(data)
                    synchronized(matches) {
                        val previous = matches[candidate.ordinal]
                        if (previous == null) matches[candidate.ordinal] = Match(candidate,
                            observation.rssi, 1, data != null, findMyStatus, frameType, elapsedMs,
                            observation.isConnectable)
                        else {
                            previous.rssi = observation.rssi
                            previous.observations = (previous.observations + 1).coerceAtMost(1_000_000)
                            previous.appleManufacturerPresent = previous.appleManufacturerPresent || data != null
                            if (findMyStatus != null) previous.findMyStatus = findMyStatus
                            previous.appleFrameType = frameType
                            previous.lastSeenElapsedMs = elapsedMs
                            previous.connectable = observation.isConnectable
                        }
                    }
                    if (onFirstMatch != null && observation.isConnectable && firstMatched.compareAndSet(false, true)) {
                        onFirstMatch(observation.device, candidate.ordinal, candidate.index)
                        finished.countDown()
                    }
                } catch (_: Exception) {
                    scanError.compareAndSet(0, -1)
                    finished.countDown()
                }
            }

            override fun onScanFailed(errorCode: Int) {
                scanError.compareAndSet(0, errorCode)
                finished.countDown()
            }
        }
        var attempted = false
        try {
            val adapter = context.getSystemService(BluetoothManager::class.java)?.adapter
                ?: return fail("bluetooth_unavailable")
            result.put("adapterState", adapter.state).put("bluetoothEnabled", adapter.isEnabled)
            if (!adapter.isEnabled) return fail("bluetooth_disabled")
            val scanner = adapter.bluetoothLeScanner ?: return fail("scanner_unavailable")
            try {
                // Public setDeviceAddress(String) defaults to PUBLIC; selecting RANDOM is
                // SystemApi. Filter Apple's manufacturer first, then discard every result
                // whose exact address is absent from byAddress. No unrelated data is retained.
                val filters = listOf(ScanFilter.Builder().setManufacturerData(0x004C, byteArrayOf()).build())
                val settings = ScanSettings.Builder().setScanMode(ScanSettings.SCAN_MODE_LOW_LATENCY)
                    .setScanType(ScanSettings.SCAN_TYPE_PASSIVE).setReportDelay(0).build()
                attempted = true
                startedAt = SystemClock.elapsedRealtime()
                scanner.startScan(filters, settings, callback)
                finished.await(windowMs, TimeUnit.MILLISECONDS)
            } finally {
                if (attempted) scanner.stopScan(callback)
            }
        } catch (error: Exception) {
            return fail("scan_exception").put("exceptionType", error.javaClass.simpleName)
        } catch (error: LinkageError) {
            return fail("passive_scan_api_unavailable").put("exceptionType", error.javaClass.simpleName)
        } finally {
            result.put("manufacturerCallbackCount", manufacturerCallbackCount.get())
                .put("findMyType12Count", findMyType12Count.get())
                .put("firstMatchElapsedMs", firstMatchElapsedMs.get().takeIf { it >= 0 } ?: JSONObject.NULL)
        }
        val rows = JSONArray()
        synchronized(matches) {
            for (match in matches.values.sortedBy { it.candidate.ordinal }) {
                val row = JSONObject().put("candidateOrdinal", match.candidate.ordinal)
                    .put("index", match.candidate.index).put("rssi", match.rssi)
                    .put("observations", match.observations)
                    .put("appleManufacturerPresent", match.appleManufacturerPresent)
                    .put("findMyStatus", match.findMyStatus ?: JSONObject.NULL)
                    .put("appleFrameType", match.appleFrameType ?: JSONObject.NULL)
                    .put("lastSeenElapsedMs", match.lastSeenElapsedMs)
                    .put("connectable", match.connectable)
                match.candidate.beaconOrdinal?.let { row.put("beaconOrdinal", it) }
                rows.put(row)
            }
        }
        result.put("matches", rows).put("matchCount", rows.length())
        return if (scanError.get() != 0) fail("scan_failed").put("scanErrorCode", scanError.get())
            else result.put("status", "success")
    }

    private fun parseFindMyStatus(data: ByteArray?): Int? {
        if (data == null || data.size < 4) return null
        val bodyLength = data[1].toInt() and 0xFF
        return if ((data[0].toInt() and 0xFF) == 0x12 && bodyLength >= 2 && bodyLength <= data.size - 2)
            data[2].toInt() and 0xFF else null
    }

    private fun readCandidates(file: File): CandidateInput {
        fun reject(code: String): Nothing = throw InvalidInput(code)
        if (!file.isFile || file.length() == 0L) reject("candidate_file_missing")
        if (file.length() > MAX_BYTES) reject("candidate_file_too_large")
        val text = file.inputStream().use { stream ->
            val data = stream.readNBytes(MAX_BYTES.toInt() + 1)
            if (data.size > MAX_BYTES) reject("candidate_file_too_large")
            String(data, Charsets.UTF_8)
        }
        val input = JSONObject(text)
        val component = input.optString("component")
        if (input.opt("schemaVersion") != 1 || component !in setOf("case", "airpods-group"))
            reject("candidate_schema_invalid")
        val timestamp = input.getString("generatedAt")
        val parsedTimestamp = OffsetDateTime.parse(timestamp)
        if (parsedTimestamp.offset != ZoneOffset.UTC) reject("candidate_timestamp_invalid")
        val generatedAt = parsedTimestamp.toInstant()
        val ageMs = java.time.Duration.between(generatedAt, Instant.now()).toMillis()
        if (ageMs > 15 * 60_000L) reject("candidate_file_stale")
        if (ageMs < -60_000L) reject("candidate_timestamp_future")
        val entries = input.getJSONArray("candidates")
        if (entries.length() !in 1..512) reject("candidate_count_invalid")
        val seen = mutableSetOf<String>()
        val candidates = (0 until entries.length()).map { ordinal ->
            val entry = entries.getJSONObject(ordinal)
            val address = entry.getString("address").uppercase(Locale.ROOT)
            if (!address.matches(Regex("(?:[0-9A-F]{2}:){5}[0-9A-F]{2}"))) reject("candidate_address_invalid")
            val bytes = address.split(':').map { it.toInt(16) }
            if (bytes[0] and 0xC0 != 0xC0 ||
                (bytes[0] and 0x3F == 0 && bytes.drop(1).all { it == 0 }) ||
                (bytes[0] and 0x3F == 0x3F && bytes.drop(1).all { it == 0xFF }))
                reject("candidate_address_not_static_random")
            if (!seen.add(address)) reject("candidate_address_duplicate")
            val rawIndex = entry.get("index")
            if (rawIndex !is Int && rawIndex !is Long) reject("candidate_index_invalid")
            val index = (rawIndex as Number).toLong()
            if (index < 0) reject("candidate_index_invalid")
            val beaconOrdinal = if (entry.has("beaconOrdinal")) {
                val rawOrdinal = entry.get("beaconOrdinal")
                if (rawOrdinal !is Int && rawOrdinal !is Long) reject("candidate_beacon_ordinal_invalid")
                val value = (rawOrdinal as Number).toLong()
                if (value !in 0L..2L) reject("candidate_beacon_ordinal_invalid")
                value.toInt()
            } else null
            Candidate(address, index, ordinal, beaconOrdinal)
        }
        return CandidateInput(component, candidates, ageMs)
    }
}
