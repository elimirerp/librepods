package me.kavishdevar.librepods.findmy.uwb

import android.Manifest
import android.bluetooth.BluetoothDevice
import android.bluetooth.BluetoothGatt
import android.bluetooth.BluetoothGattCallback
import android.bluetooth.BluetoothManager
import android.bluetooth.BluetoothProfile
import android.content.Context
import android.content.pm.PackageManager
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.util.Locale
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicReference

/** Debug instrumentation only: discover services on an existing AirPods bond.
 * No scan, bond creation, descriptor/characteristic writes, or UWB session.
 * Device addresses and names are never included in the result.
 */
object BondedGattProbe {
    fun run(context: Context, discover: Boolean = true): JSONObject {
        val metadata = JSONObject()
        fun outcome(status: String) = JSONObject().put("mode", if (discover) "bonded_gatt" else "bonded_target")
            .put("status", status).put("characteristicWrites", 0).put("rangingSessions", 0)
            .put("target", metadata)
        if (context.checkSelfPermission(Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED) {
            return outcome("missing_bluetooth_connect_permission")
        }
        val adapter = context.getSystemService(BluetoothManager::class.java)?.adapter
            ?: return outcome("bluetooth_unavailable")
        if (!adapter.isEnabled) return outcome("bluetooth_disabled")
        val bonded = adapter.bondedDevices
        val savedAddress = context.getSharedPreferences("settings", Context.MODE_PRIVATE)
            .getString("mac_address", null)
        val savedDevice = bonded.singleOrNull { savedAddress != null && it.address.equals(savedAddress, true) }
        val namedAirPods = bonded.filter { it.name?.contains("airpods", ignoreCase = true) == true }
        metadata.put("totalBondCount", bonded.size)
            .put("airpodsBondCount", namedAirPods.size)
            .put("airpodsBleOnlyBondCount", namedAirPods.count { it.type == BluetoothDevice.DEVICE_TYPE_LE })
            .put("airpodsDualModeBondCount", namedAirPods.count { it.type == BluetoothDevice.DEVICE_TYPE_DUAL })
            .put("airpodsNamedFindMyBondCount", namedAirPods.count {
                it.name?.contains("find my", ignoreCase = true) == true
            })
        // Compare public addresses locally; never emit names, addresses, or key material.
        // An absent match cannot exclude a bond indexed under a different identity address.
        val candidateFile = File(context.noBackupFilesDir, "findmy-case-identity.json")
        metadata.put("caseCandidateFilePresent", candidateFile.isFile)
        if (candidateFile.isFile && candidateFile.length() <= 96 * 1024) {
            try {
                val input = JSONObject(candidateFile.readText())
                if (input.optString("component") == "case") {
                    val candidates = input.getJSONArray("candidates")
                    val addresses = (0 until candidates.length()).map {
                        candidates.getJSONObject(it).getString("address").uppercase(Locale.ROOT)
                    }.toSet()
                    metadata.put("caseCandidateAddressCount", addresses.size)
                        .put("exactCaseCandidateBondMatches", bonded.count {
                            it.address.uppercase(Locale.ROOT) in addresses
                        })
                }
            } catch (_: Exception) {
                metadata.put("caseCandidateComparisonUnavailable", true)
            }
        }
        val device = savedDevice ?: namedAirPods.singleOrNull()
            ?: return outcome(if (namedAirPods.isEmpty()) "no_bonded_airpods" else "ambiguous_bonded_airpods")
                .put("airpodsBondCount", namedAirPods.size)

        metadata.put("deviceType", device.type)
            .put("nameIndicatesFindMy", device.name?.contains("find my", ignoreCase = true) == true)
            .put("selectedFromSavedSettings", savedDevice != null)
            .put("cachedServiceUuids", JSONArray(device.uuids?.take(32)?.map { it.uuid.toString() } ?: emptyList<String>()))
        if (!discover) return outcome("success")

        val finished = CountDownLatch(1)
        val result = AtomicReference<JSONObject?>(null)
        fun complete(value: JSONObject) {
            if (result.compareAndSet(null, value)) finished.countDown()
        }
        val callback = object : BluetoothGattCallback() {
            override fun onConnectionStateChange(gatt: BluetoothGatt, status: Int, newState: Int) {
                if (status != BluetoothGatt.GATT_SUCCESS) {
                    complete(outcome("gatt_connection_failed").put("gattStatus", status))
                } else if (newState == BluetoothProfile.STATE_CONNECTED) {
                    if (!gatt.discoverServices()) complete(outcome("service_discovery_not_started"))
                } else if (newState == BluetoothProfile.STATE_DISCONNECTED) {
                    complete(outcome("gatt_disconnected"))
                }
            }

            override fun onServicesDiscovered(gatt: BluetoothGatt, status: Int) {
                if (status != BluetoothGatt.GATT_SUCCESS) {
                    complete(outcome("service_discovery_failed").put("gattStatus", status))
                    return
                }
                val services = JSONArray()
                var hawkeyeFound = false
                var precisionFound = false
                for (service in gatt.services) {
                    val uuid = service.uuid.toString()
                    // UUIDs describe protocol services, not device identity.
                    services.put(uuid)
                    if (uuid.equals("0000fd44-0000-1000-8000-00805f9b34fb", true)) {
                        hawkeyeFound = true
                        precisionFound = service.characteristics.any {
                            it.uuid.toString().equals("4f860006-943b-49ef-bed4-2f730304427a", true)
                        }
                    }
                }
                complete(outcome("success").put("serviceUuids", services)
                    .put("hawkeyeServicePresent", hawkeyeFound)
                    .put("precisionCharacteristicPresent", precisionFound)
                    .put("selectedFromSavedSettings", savedDevice != null))
            }
        }
        var gatt: BluetoothGatt? = null
        return try {
            gatt = device.connectGatt(context, false, callback, BluetoothDevice.TRANSPORT_LE)
            if (gatt == null) return outcome("gatt_client_unavailable")
            if (!finished.await(12, TimeUnit.SECONDS)) complete(outcome("gatt_timeout"))
            result.get() ?: outcome("missing_result")
        } catch (exception: Exception) {
            outcome("error").put("exception", exception.javaClass.simpleName)
        } finally {
            gatt?.disconnect()
            gatt?.close()
        }
    }
}
