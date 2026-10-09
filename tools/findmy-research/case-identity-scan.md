# Debug case identity scan

Instrumentation mode: `case_identity_scan`. This is a fixed 30-second passive BLE scan using the public API `ScanSettings.Builder.setScanType(SCAN_TYPE_PASSIVE)` (introduced Android 36.1; this probe requires SDK 37). It does not connect GATT, write characteristics, change Bluetooth settings, open ranging sessions, or access the Apple account.

Input is the private, non-backed-up app file `noBackupFilesDir/findmy-case-identity.json`:

```json
{"schemaVersion":1,"component":"case","generatedAt":"UTC ISO timestamp ending Z or +00:00","candidates":[{"address":"synthetic static-random MAC","index":123}]}
```

The root coordinator transfers the real candidate file privately. Do not paste it into reports. The validator accepts 1..512 unique static-random addresses, nonnegative integral indexes, at most 96 KiB, timestamps at most 15 minutes old and at most 1 minute in the future. Zero/all-one random-address bodies are rejected. Ordinals are zero-based array positions.

`component` also accepts `airpods-group` for the three verified owned records before their exact roles are resolved. Each candidate may include integral `beaconOrdinal` 0..2, which is included in its sanitized match result. The output's `sourceComponent` identifies the input scope; a group match alone does not prove which component is the charging case.

Debug manifest removes `neverForLocation` from BLUETOOTH_SCAN and declares ACCESS_FINE_LOCATION. BLUETOOTH_SCAN, BLUETOOTH_CONNECT and ACCESS_FINE_LOCATION must be granted for this mode. The release manifest is unaffected.

This mode starts the app's visible `MainActivity` through instrumentation and waits for UI idle before scanning, so a foreground-only fine-location grant can apply. It does not change AppOps or request background location. The app remains visible after the probe.

The hardware filter selects Apple manufacturer ID 0x004C. Callback processing immediately rejects any address absent from the exact candidate set; unmatched observations are neither retained nor logged. Public `ScanFilter.setDeviceAddress(String)` defaults to PUBLIC, while selecting RANDOM is a SystemApi, so it is unsuitable for these candidates. This also avoids requiring up to 512 hardware address filters.

Output contains status, permission state, candidate count, match count, and matched candidate ordinal/index, RSSI, observation count, Apple manufacturer presence, and Find My status byte if the manufacturer payload has the expected type/length. No MAC, raw advertisement, name, UUID, key material or account identifier is emitted. A zero-match result alone cannot exclude an authentic case: it may not currently advertise or its expected rolling-key interval may be misaligned.

Read-only diagnostics also report `locationEnabled`, `adapterState`, `bluetoothEnabled`, `manufacturerCallbackCount` (callbacks containing Apple manufacturer data), and `findMyType12Count` (callbacks whose Apple payload starts with type 0x12). These are aggregate callback counts, not counts of unique devices; unmatched addresses and payloads are not retained. Positive type-12 count with zero matches establishes that Find My advertisements reached the callback, without identifying their source.

Reliability metadata includes `candidateTimestampAgeMs`, `firstMatchElapsedMs` (null if unmatched), and each matched entry's `appleFrameType` and `lastSeenElapsedMs`. Frame metadata is emitted only for exact matches. RSSI is metadata, never an identity criterion.

Optional mode `case_identity_gatt` requires `component: "case"`; group input is rejected. It scans at most 30 seconds, stops at its first exact owned-case candidate match, then uses that actual ScanResult BluetoothDevice to open one LE GATT connection and discover services, with a 15-second connection/discovery timeout. It emits service and characteristic UUIDs/properties, selected candidate ordinal/index, and scan diagnostics. It never reads/writes characteristics, enables notifications, pairs, changes MTU, or opens UWB sessions. It disconnects and closes in finally. Root coordinates any installation or hardware run.

Verification: `:app:assembleFossDebug` succeeded. The actual compiled Kotlin private-file validator was run locally against 18 synthetic success/rejection cases (valid UTC Z/+00:00, rejection of non-UTC, stale, future, schema/component/count/address/index/duplicate/size), all passed. Six manufacturer-status cases also passed, including short nearby and long separated payloads and rejection of truncated/wrong-type/null payloads. This simulation invokes no Android or radio operations. Harness: `work/routes-agent/mac-owner-static/CaseIdentityValidationSimulation.java`.

Primary API sources: [passive scan type](https://developer.android.com/reference/android/bluetooth/le/ScanSettings.Builder#setScanType(int)), [AOSP address filter implementation](https://android.googlesource.com/platform/packages/modules/Bluetooth/+/refs/heads/main/framework/java/android/bluetooth/le/ScanFilter.java).
