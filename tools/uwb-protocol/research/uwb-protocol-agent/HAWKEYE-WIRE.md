# Native AirPods case BLE ranging command evidence

## Primary binary provenance

Apple public OTA: https://updates.cdn-apple.com/2026FallFCS/97d26691-7bd1-4c88-b86c-61dfc4dad8b4/com_apple_MobileAsset_SoftwareUpdate/23d7cd20eb33682a98a76bc639f3f37fa329edcb.zip

Associated asset metadata identifies iPad11,1/J210AP, iOS26.7.1 build 23H6030Beta. This is a binary-code evidence source; it is not proof that this iPad has UWB hardware.

- `locationd-ios26`: extracted exactly from `AssetData/payloadv2/payload.011`, `usr/libexec/locationd`; 40,226,848B; SHA256 `4fe45b1b58a28fd4397fea587eefe0cda16717eceda9f3e9aff6426a2c09b74b`.
- `nearbyd-ios26`: extracted from payload.018, `usr/libexec/nearbyd`; 10,878,496B; SHA256 `157d2d556142c3f390321524b479b871b70cdbb37399afd38a1f35985dc36ca0`.
- Official `post.bom` corroborates both paths and sizes.
- `find-daemons.py` performs HTTP Range, ZIP deflate when needed, PBZX/XZ decode, then parses AppleArchive metadata and retains only the target daemon bytes. `objc-addresses.py` decodes relative Objective-C method lists using dyld fixups. Both operate on public files only.
- System cryptex was a full replacement RIDIFF10, expanded with native RawImagePatch and mounted read-only. It contained frameworks/dyld cache but no daemon targets. Framework code and method/selector metadata were retained; the 5.2 GB image and 1.4 GB patch were removed after unmounting. No full OTA remains.

## Case implementation relationship

`CLDurianDeviceManager createDeviceWithUUID:beaconType:isPosh:simpleBeacon:` selects `CLHeleDevice` for `SPBeaconTypeHele`, and `CLHawkeyeDevice` for `SPBeaconTypeAccessory` (`createDevice.asm`).

`CLHeleDevice` inherits `CLHawkeyeDevice`: superclass pointer `0x102520058` at `locationd-ios26-methods.txt:209157` equals the Hawkeye class address at 218989. Hele has no overrides for the ranging constructors. Both communicationProtocol methods return2. Thus the Hele/AirPods case route inherits the Hawkeye serializer; observing the actual case's beacon family/capabilities remains necessary for a live profile.

## GATT transport

Native CBUUID category returns:

| Item | Value | Code address |
|---|---|---|
| Find My network service | `FD44` | `0x10141afe0` |
| Precision Finding characteristic | `4F860006-943B-49EF-BED4-2F730304427A` | `0x10141b044` |

`hawkeye-uuid-methods.asm` contains literal strings and constructors. `CLDurianDevice executeTask:` chooses `hawkeyePayload`, then directly calls `writeValue:forCharacteristic:type:` with type0 at `0x10145fcf0..0x10145fd0c`. Type0 is the CoreBluetooth write-with-response value. No application-layer cryptographic wrapper appears between this payload and the write in that branch.

The write is not proof of public unencrypted access. `connectToDevice:withPeripheral:` obtains `nextConnectionMaterialForPeripheral:`, reads `.ltk`, and passes its first 16 B under private `CBConnectPeripheralOptionUseTempLTK` if length >= 16 (`connectToDevice.asm`, `0x101472c44..0x101472c80`). The connection material is fetched through `connectionTokensForBeaconUUID:criteria:completion:` (`fetchConnectionTokens.asm`, `0x10147b908`). This connection LTK is distinct from the fresh ranging IRK found by the root in nearbyd. No live key was read or generated during this analysis.

Unknown: whether the case's existing Android bond can authorize this characteristic; whether it accepts conventional BLE pairing; how to obtain/derive the temporary owner LTK without private Apple APIs; whether an Android UWB/Bluetooth controller exposes the required hooks. Native code by itself proves none of these alternatives impossible.

## Actual command bytes

Hawkeye frame prefix is version byte01, then unsigned16-bit little-endian opcode. These are actual GATT bytes, copied into hawkeyePayload.

| Native task | Opcode | Body | Total bytes |
|---|---:|---|---:|
| initRangingHawkeyeTask | `0701` | empty | 3 |
| configureRangingHawkeyeTaskWithPayload | `0702` | P2P 12-byte config | 15 |
| startRangingHawkeyeTaskWithTargetEventCounter | `0703` | target event counter LE16 | 5 |
| configureNBRangingHawkeyeTaskWithParameters | `070d` | NB 19-byte config | 22 |
| startNBRangingHawkeyeTaskWithIRK | `070e` | ranging IRK 16 B copied unchanged | 19 |
| fetchFindingCapabilitiesHawkeyeTaskWithPayload | `0710` | mask LE32; native constructor supplies0 | 7 |

Evidence files: `initRangingHawkeye.asm`, `configureRangingHawkeye.asm`, `startRangingHawkeye.asm`, `configureNBRangingHawkeye.asm`, `startNBRangingHawkeye.asm`, `fetchFindingCapabilitiesHawkeye.asm`, `createFetchFindingCapabilitiesHawkeye.asm`.

### NB body

`readNBRangingConfigParams.asm` (`0x101467ea4`) packs the dictionary values into the following 19-byte body; all are unsigned8 except the explicit LE16 fields. Key names below omit the common `CLDurianNBRanging` prefix and `Key` suffix.

| Body offset | Field |
|---:|---|
| 0 | Version |
| 1 | MMSFragCountryCode |
| 2 | NBCountryCodes |
| 3 | SarCountryCodes |
| 4 | AcqTimeout |
| 5 | AcqRetryInterval |
| 6 | AcqDitherMax |
| 7 | RangingTimeout |
| 8..9 | NBMaskNapChannel, LE16 |
| 10..11 | NBChannelSelectMask, LE16 |
| 12 | MMSPSR |
| 13 | MMSGap |
| 14 | MMSSequenceIdx |
| 15 | MMSSlotSize |
| 16..17 | Interval, LE16 |
| 18 | DebugFlags |

PSR detail: locationd copies the dictionary MMSPSR unchanged. Root's nearbyd `_getDictFromRangeConfigNBAMMS:` loads native controller PSR and subtracts 1 before making this dictionary value. There is no inverse +1 in locationd. The codec names this field `wire_mms_psr` to preserve that difference.

### Legacy P2P body

`CLHawkeyeDevice createConfigureRangingTaskWithMacAddress:countryCode:uwbChannel:acqPreamble:trackingPreamble:interval:` (`0x101488bd8`) emits:

1. Country code byte.
2. `0x80 | (channel &3) | ((acqPreamble &3)<<2) | ((trackingPreamble &3)<<4)`.
3. Interval LE16.
4. Rose MAC8B, unchanged.

These channel/preamble values are native encoded indices, not IEEE channel numbers or FiRa profile identifiers. Their mapping requires nearbyd/controller analysis. The interval unit is not established by this serializer.

## Offline implementation and verification

`hawkeye_codec.py` encodes/decodes the native NB and P2P frames and rejects malformed lengths. It has no radio/network/account interface. Running it produces `hawkeye-fixtures.json` from explicit instruction-derived synthetic byte expectations:

- NB config: `010d070102030405060708090a0b0c0d0e0f10111213`.
- NB start with dummy IRK 00..0f: `010e07000102030405060708090a0b0c0d0e0f`.
- P2P config with dummy Rose MAC 00..07: `010207019e34120001020304050607`.
- P2P start dummy counter 1234: `0103073412`.
- Native capabilities query: `01100700000000`.

No synthetic profile values should be sent to the case. These fixtures test serialization only; they do not establish that Samsung's radio implements the Apple ranging mode or that it can authorize the case's BLE link.

## Next concrete gates

1. Samsung read-only UWB capability/vendor mode inventory and GATT inventory. Match actual radio/channel/preamble/STS support to nearbyd's selected P2P/NBAMMS request.
2. Establish case control point authorization with the existing bond, before any ranging writes; don't inject or replace a working pairing as a guess.
3. Observe the real case capability response using the decoded query and parser below; the case's actual flag values remain unknown.
4. Trace the ownership connection LTK derivation in SearchParty, using binary code only.

## Capability response now decoded

Recovered iOS CoreLocation initializer directly verifies the response payload's 4-byte LE32 field (`capabilities-ios26-init.asm`, `0x19cb9088c`). Its method order was matched to the retained in-cache Objective-C listing `CoreLocation-ios26-objc.txt:1867`; raw relative method list is at 0x19cca6190. The same parse was crosschecked on the local Mac framework via a metadata-only own-process LLDB experiment (`capabilities-mac-imp.txt`). Bit 0=FC1ND, bit 1=NBAMMS, bit 2=UNII5, bit 3=simultaneous ranging. Other bits are preserved as raw capabilities.

The notification opcode `0711` is accepted by locationd's `checkHawkeyeDataValidity:` and requires exactly 7 B: version 01, opcode 11 07, capabilityLE32. The code initializes expected length 7 at 0x10145af64, selects0711 through the bitmask 0x146 at 0x10145b01c..0x10145b038, and checks exact length at 0x10145b124. `hawkeye-length-check.asm` preserves the latter.

The generic ACK opcode 0700 contains acknowledged opcodeLE16 at notification offset 3 and statusLE16 at offset 5 (`hawkeye-response-complete.asm:0x10145c4bc..0x10145c4c4`). The codec decodes these values without assigning unverified status semantics.

Synthetic capability response `0111070f000000` tests all four known flags. Synthetic query ACK `01000710070000` tests ACK correlation. These have not been observed from the real case.
