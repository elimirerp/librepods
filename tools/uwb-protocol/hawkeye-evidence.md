# Hawkeye case transport: recovered layouts and diagnostic gate

`hawkeye.py` is an offline encoder/parser. `hawkeye-fixtures.json` contains
instruction-derived synthetic vectors, not packets captured from an AirPods case.
Run the shared test suite with the command in [EVIDENCE.md](EVIDENCE.md).
Binary hashes, the official Apple OTA URL, and architecture are recorded there.
All addresses below are unslid arm64 virtual addresses from that OTA.

## Case path and GATT endpoint

`CLHeleDevice` inherits `CLHawkeyeDevice`; its eleven overrides do not replace
the ranging constructors. The device factory selects `CLHeleDevice` for a Hele
beacon. This establishes the native case code path; it does not establish the
capability bits advertised by the particular case connected to an Android phone.

The CBUUID category returns service `FD44` at `0x10141AFE0` and precision-finding
characteristic `4F860006-943B-49EF-BED4-2F730304427A` at `0x10141B044`.
During characteristic discovery, locationd matches that UUID, stores the
characteristic, then calls `setNotifyValue:YES` at `0x101463AA8..0x101463AB4`.
The precision branch has no owner test around that subscription call.
CoreBluetooth abstracts the CCC descriptor; this code does not establish whether
an Android client should select notification or indication without inspecting
the actual characteristic properties.

`CLDurianDevice executeTask:` selects a Hawkeye task's `hawkeyePayload` and calls
`writeValue:forCharacteristic:type:` with type 0 (write with response) at
`0x10145FCF0..0x10145FD0C`. No application encryption wrapper appears between
the constructed payload and this write. Bluetooth link authorization is separate.

## Frame and opcode layouts

The modeled complete packet begins `01 || opcodeLE16 || body`. The parser
accepts complete packets only. Native inbound handling also has a fragmentation
path; the leading byte must not be treated as a negotiated protocol version.

| Opcode | Body | Native constructor |
| --- | --- | --- |
| `0701` initialize ranging | empty | `initRangingHawkeyeTask`, `0x101449B08` |
| `0702` configure P2P | packed config 4 B + Rose address 8 B | `0x101449D18`; populated at `0x101488BD8` |
| `0703` start P2P | target event counter LE16 | `0x101449F3C` |
| `070D` configure NBAMMS | packed config 19 B | `0x10144A35C` |
| `070E` start NBAMMS | fresh ranging IRK 16 B | `0x10144A610` |
| `0710` fetch capabilities | query mask LE32, native value zero | `0x1014498FC`; zero supplied at `0x101488944` |
| `0711` capabilities response | capability bits LE32 | validation at `0x10145AF64`, `0x10145B01C..0x10145B038`, `0x10145B124` |
| `0700` generic acknowledgment | acknowledged opcode LE16 + status LE16 | decode at `0x10145C4BC`, `0x10145C4C0` |

ACK status is retained as a number. The synthetic ACK vector does not prove the
meaning of every case status. A successful GATT write and an application ACK do
not replace the `0711` capability response.

The capability class `initWithData:` at CoreLocation `0x19CB9088C` requires four
bytes, loads LE32, and selects bits 0 through 3 for FC1ND, NBAMMS, UNII5, and
simultaneous ranging, respectively. Unknown bits are preserved in `raw`.

## Packed configuration

P2P uses the existing `LegacyP2PConfig` codec. Hawkeye sets its second byte's bit
7, leaves bit 6 clear, then appends the eight-byte ranging address. The lower
six bits encode channel (0..1), acquisition preamble (2..3), and tracking
preamble (4..5). The interval is an unsigned LE16. The internal four-byte
structure alone is not a complete GATT command.

`CLDurianDevice readNBRangingConfigParams:` at `0x101467EA4` packs:

| Body offset | Field | Width |
| --- | --- | --- |
| 0 | Version | byte |
| 1 | MMSFragCountryCode | byte |
| 2 | NBCountryCodes | byte |
| 3 | SarCountryCodes | byte |
| 4 | AcqTimeout | byte |
| 5 | AcqRetryInterval | byte |
| 6 | AcqDitherMax | byte |
| 7 | RangingTimeout | byte |
| 8 | NBMaskNapChannel | LE16 |
| 10 | NBChannelSelectMask | LE16 |
| 12 | MMSPSR | byte |
| 13 | MMSGap | byte |
| 14 | MMSSequenceIdx | byte |
| 15 | MMSSlotSize | byte |
| 16 | Interval | LE16 |
| 18 | DebugFlags | byte |

These are wire fields, not a ready-to-use Android radio profile. Nearbyd
`_getDictFromRangeConfigNBAMMS:` at `0x10033171C` subtracts one from the controller
PSR byte; locationd stores the resulting dictionary value unchanged at
`0x10146802C..0x101468034`. The wire codec does not perform a second conversion.

## Native capability ordering and authorization

The normal nearbyd ItemLocalizer flow is:

1. `didConnectDevice` calls `_initCompanion:` at `0x10033247C`.
2. `_initCompanion:` calls `initRangingOnDevice:macAddress:` at `0x10032C33C`.
3. The successful initialization callback uses cached capabilities or calls
   `fetchFindingCapabilities:` at `0x10033318C`.
4. The capability callback at `0x100334E80` selects the mode and configures
   the local radio and companion.

The locationd `fetchFindingCapabilitiesOnTag:forClient:` service entry at
`0x1014297E0` independently creates the task and passes it to `performTask:`.
The latter checks manager readiness, firmware-update exclusion, and task mutex
state before enqueueing at `0x101427444`; it has no explicit initialization
precondition. This makes a pre-init query a plausible diagnostic experiment,
but does **not** prove that case firmware accepts it.

Native connection setup obtains `nextConnectionMaterialForPeripheral:`, reads
its LTK, and, if at least 16 bytes are present, supplies the first 16 through
private `CBConnectPeripheralOptionUseTempLTK` at `0x101472C44..0x101472C80`.
Connection tokens come from SearchParty's
`connectionTokensForBeaconUUID:criteria:completion:` at `0x10147B908`.
No capability-specific alternative authorization route was found. The connection
code can continue without that option when no LTK is available; that is not
proof that owner commands are permitted. Whether an existing Android audio bond
authorizes this characteristic, or whether the query is allowed without link
encryption, remains a live ATT-permission question. No real key was inspected.

## Minimal Android diagnostic state machine (proposed)

This sequence deliberately tests capability access before initialization; it
does not reproduce the full native ranging sequence.

| State | Action / success transition | Failure transition |
| --- | --- | --- |
| Connected | Discover services and find FD44 | Stop and close this GATT connection |
| Discovered | Find exact precision UUID; inspect properties and CCC | Stop if missing, not writable with response, or not subscribable |
| Subscribe | Enable local callback and write CCC according to actual notify/indicate properties; wait for descriptor success | Record exact Android status; stop |
| Query | Write `01100700000000` once with response | Record write status; stop |
| Receive | Record raw bytes; parse matching ACK and complete `0711` response; finish when capability response arrives | Non-success ACK, disconnect, malformed response, or bounded timeout: stop |
| Finished | Disconnect and close this connection | No automatic retry or command escalation |

In particular, permission/encryption/authentication errors do not trigger an
automatic initialization command, pairing reset, bond replacement, or key
injection. Locationd itself finishes a failed write task and requests disconnect
at `0x101464CBC..0x101464CC8`; that callback contains no reset/rebond operation.
An init-then-query experiment needs a separately chosen step because init changes
case ranging state. Only actual capability bytes and Android radio support can
guide the next compatibility test.
