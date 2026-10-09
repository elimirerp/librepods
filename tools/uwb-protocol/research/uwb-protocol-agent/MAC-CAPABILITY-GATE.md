# Mac assistance: normal capability API and Bluetooth metadata probes

Read-only/capability-only experiment on 2026-10-08, macOS 26.4. No ownership,
pairing, enrollment, account-token, or connection-key changes. No ranging init,
configuration, start, or stop command was called. No restricted entitlement was
added and no protected service was attached or modified.

## CoreLocation capability API

Installed CoreLocation exposes `CLFindMyAccessoryManager`, its delegate initializer,
and `fetchFindingCapabilities:`. `mac-accessory-runtime.txt` records the method
inventory. `mac-capabilities.m` calls only that fetch API, once, for the known
case `fmCI` metadata UUID from the existing private graph audit. The exact mapping
of that UUID to locationd's beacon lookup was not established.

The bounded helper reported API availability and timed out after twelve seconds,
with no delegate callback and no stderr. Native locationd logged at
`2026-10-08 22:50:55.445282-0500`:

```
message: Got unhandled mesage
type: DurianManagement/FetchFindingCapabilities
```

The preceding log recorded the helper's client connection carrying that message.
This establishes that the request reached locationd, which did not handle the
message on this Mac. It does not establish case GATT permission, authentication,
or capability bits. Repeating the query with another identifier will not repair
an unhandled message. No automatic escalation was attempted.

## Public CoreBluetooth metadata

The existing normal-permission `gatt-probe` was run once for the graph audit's
cached `CBDevice` identifier. CoreBluetooth reported powered-on state 5 and
authorization 3, retrieved the target from its cache, then timed out after thirty
seconds while connecting. No service discovery callback occurred and no
characteristic value was read or written. The user subsequently clarified that
the case was closed and disconnected. This timeout is consequently inconclusive
about case compatibility or whether this cached identifier represents the case.

The graph audit's `fmCI`, `fmGI`, and `CBDevice` UUIDs are all distinct. Their
presence next to case serial metadata does not by itself prove that `CBDevice`
is a separate case LE peripheral rather than the audio device record.

`mac-fd44-inventory.swift` performs only public connected-peripheral retrieval
and a fifteen-second scan filtered to service FD44. It performs no connections,
characteristic reads, subscriptions, or writes and does not inspect manufacturer
payloads. Results:

```
bluetooth_state=5 authorization=3
connected_fd44_count=0
seen_fd44_count=0 exact_target_name_matches=0
```

This is absence from a **service-filtered advertisement** inventory. Find My
manufacturer advertisements can omit that service UUID, so it is not absence
of all advertisements and does not show that the case lacks FD44. No unknown
nearby Find My device was connected or queried. The inventory metadata file is
mode 0600; it contains no candidate identifiers in this run.

## Current limit

Normal Mac CoreLocation capability fetching is blocked by unhandled native
message dispatch. Public GATT metadata remains available with normal Bluetooth
permission, but a distinct, currently reachable case peripheral and its owner
authorization have not been established. Keep the working enrollment unchanged.
The next live metadata experiment should establish the target's actual BLE
identity and reachability before a capability query; an audio-bond UUID alone is
insufficient evidence.

## Retry after the case was opened

The user first reported the case open and the AirPods connected to the Mac. The
cached `CBDevice` GATT metadata retry again timed out after thirty seconds. A
read-only `IOBluetoothDevice` lookup for the genuine audio address reported
paired=true, connected=false, and no cached `CBPeripheral`. The active console
user matched the helper user. The user then clarified that the AirPods may have
connected to Samsung instead. No further audio-identifier connection was tried.
The second fifteen-second FD44-filtered inventory again found zero connected or
advertising peripherals, with the same service-filter caveat described above.

### Manufacturer advertisement inventory

`mac-findmy-inventory.swift` then performed a bounded twenty-second passive scan
without a service filter. It performs no connections or GATT operations. It
examines only company ID, manufacturer type, length/status bytes, and generic
advertised-service metadata; it never logs or persists raw advertisement bytes,
key bytes, addresses, or names. Candidate CoreBluetooth UUID metadata is saved
only in an own-workspace mode-0600 file and is not ownership proof.

The scanner implements the primary AirGuard source's Apple manufacturer `0x004c`
and leading type `0x12` filter. On CoreBluetooth the company ID is included in
manufacturer data: bytes 0..1 are `4c00`, type is byte 2, length is byte 3, and
status is byte 4. AirGuard's `(status & 0x18) == 0x18` AirPods-family heuristic is
applied without claiming case-vs-earbud or owner identity. Its length-byte
connection-state labels are also explicitly treated as heuristics.

Source: AirGuard commit `d515c534be7aac370de33e7bae0136a7b995e0cf`,
[AirPods.kt](https://github.com/seemoo-lab/AirGuard/blob/d515c534be7aac370de33e7bae0136a7b995e0cf/app/src/main/java/de/seemoo/at_tracking_detection/database/models/device/types/AirPods.kt#L28)
and [AppleFindMy.kt](https://github.com/seemoo-lab/AirGuard/blob/d515c534be7aac370de33e7bae0136a7b995e0cf/app/src/main/java/de/seemoo/at_tracking_detection/database/models/device/types/AppleFindMy.kt#L531).

Results while scanning was authorized and Bluetooth was powered on:

```
scan_callback_count=354 unique_peripheral_count=27 apple_manufacturer_count=4
findmy_type12_count=0 airpods_type_heuristic_count=0 known_cached_identifier_match_count=0
```

This verifies that the broader scanner received nearby advertisements, including
Apple manufacturer data, but saw no leading type-12 Find My advertisement during
that window. It does not prove that the case never advertises, nor determine its
GATT permissions or UWB capability. No case candidate UUID was recovered. Mac
CoreBluetooth UUIDs are host identifiers; they do not directly provide the
rotating BLE advertising address an Android client would use.

## Retry after genuine Mac connection was confirmed

The user subsequently confirmed a new physical connection. The normal
IOBluetooth lookup now reported paired=true, connected=true, and a cached
`CBPeripheral`. Its identifier matched the historical `CBDevice` exactly. The
single connected paired product-8231 candidate matched the genuine recorded
audio address after normalizing colon/hyphen separators. Thus the connection
state really changed; the preceding disconnected tests are not substituted for
this result.

One bounded public GATT metadata retry then succeeded (exit 0). The ordinary
connection exposed these services:

```
1804
180A
4715650B-5E9D-4AC2-B898-A4FC0AA5DF78
15190001-12F4-C226-88ED-2AC5579F2A85
```

FD44 was not among the services discovered in this connection. This establishes
that the known paired audio/control peripheral is reachable, but does not
establish a case owner endpoint or its permission requirements. No values were
read, no notifications enabled, and no characteristic written. The helper
cancelled only its own LE connection. A subsequent metadata lookup still showed
the audio connection active. `mac-gatt-confirmed-connected-result.txt` records
the service/characteristic UUIDs and properties without the device identifier.

A simultaneous fifteen-second passive inventory recorded:

```
connected_fd44_count=0 connected_fd44_known_cached_matches=0
scan_callback_count=287 unique_peripheral_count=28 apple_manufacturer_count=4
apple_primary_type_counts=0x07:2,0x10:2
findmy_type12_count=0 airpods_type_heuristic_count=0 known_cached_identifier_match_count=0
```

The scanner now accepts a bounded duration argument and additionally counts
primary Apple advertisement types. These type counts do not authenticate an
owner or distinguish a case from an earbud. No separate case peripheral was
identified, and no unowned candidate was connected.
