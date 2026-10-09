# Apple ItemLocalizer legacy P2P: static evidence

Inspected 2026-10-08. No Bluetooth or UWB sessions were opened. All native
addresses below are **x86_64** in the locally extracted `/usr/libexec/nearbyd`.
Do not cross-reference identical addresses in the arm64e image. Reproducible
extractor and assembly excerpts: `work/uwb-p2p-agent/` in the research workspace.

## Finding

Apple's ItemLocalizer fallback is a distinct native **PeerToPeer** MAC mode,
using **Legacy_BPRF packet family 0, index 4**. It is not presently mapped to
Android's ordinary FiRa session configuration. Radio channels and preambles
overlap with the S25 Ultra, but this alone establishes no interoperability.
Static evidence does not establish that a Samsung vendor route cannot express
the Apple mode. That route remains to be identified.

## Native request and profile

`_prepareP2PServiceRequest` at `0x1002f0df6` calls `_getCompanionDescriptor`,
queries preferred channels, and passes `useAoA` and `useGattRangingInterval`
to the preset builder `0x10015205b`.

The descriptor builder `0x1002ee621` reads the companion's UUID (16 bytes) and
`roseMACAddress` (8 bytes). It writes type 3, UUID optional at descriptor
offsets 4/0x14, address optional at 0x15/0x1d. It does not read an IRK in this
function. Eight bytes in this internal descriptor do not prove an eight-byte
over-the-air IEEE address or a FiRa STS key.

Preset builder facts:

| Native field | Value | Evidence |
|---|---|---|
| Service role | 1, string `Responder` | `0x100152509`; string selector `0x1001633ed` |
| MAC mode | 2, string `PeerToPeer` | `0x10015250e`; string table `0x1005e3890` |
| TX preamble | 10 | `0x100152170` |
| RX preamble | random choice 9, 11, or 12 | distribution bound 2 at `0x1001520a7`; byte table `0x1005e1a7e` |
| TX/RX packet type | family 0, index 4 | `0x1001521ae` through `0x1001521bf` |
| TX/RX micro-slot size | 1 in units 250 µs | `0x1001521c6`; complete native log in `packet-v1-log-fields.txt` |
| Debug flags | 3 | `0x1001521d6` |
| Channel | first preferred physical channel | `0x1001521ff` |
| Interval, ordinary | 51,52,53,54,56,57,58,59,61,62,63,64,66,67 ms | uint16 table `0x1005e1a46` |
| Interval, GATT | 71,72,73,74,76,77,78,79,81,82,83,84,86,87 ms | uint16 table `0x1005e1a62` |

Both interval distributions select indices 0 through 13. RX preamble selects
0 through 2; bytes following its three-byte table are not preamble choices.
The constructor `0x100150df2` copies RangeEnable into service request offset
0x60. Flags such as debug overrides can change final request fields.

Native MAC mode string table `0x1005e3890`:

| Enum | Name |
|---|---|
| 0 | Unspecified |
| 1 | PointToShare |
| 2 | PeerToPeer |
| 3 | Alisha |
| 4 | GR |
| 5 | FiRaUnicast |
| 6 | FiRaContentionBased |
| 7 | TestNMI |
| 8 | NMI |
| 9 | Localization |

Packet-family string dispatch `0x1004091cc`: 0 Legacy_BPRF, 1 IEEE_BPRF,
2 IEEE_HPRF, 4 Proprietary_HPRF, 5 SplitND_BPRF, 6 SplitND_HPRF, 7 MMS,
8 Mixed_MMS, 16 NB. Family 0 is distinct from family 1. The enum/index alone
does not reveal Legacy_BPRF index 4's complete PHY waveform or MAC bytes.

## Four-byte companion body

The builder at `0x1002f793c` zeros four bytes and fills:

| Body location | Meaning |
|---|---|
| byte 0 | opaque native country-code byte from configuration manager |
| byte 1, bits 0–1 | HSI1 channel: physical 5→0, physical 9→1 |
| byte 1, bits 2–3 | HSI1 TX preamble: physical 9,10,11,12→0,1,2,3 |
| byte 1, bits 4–5 | HSI1 RX preamble, same mapping |
| byte 1, bits 6–7 | zero |
| bytes 2–3 | interval in milliseconds, uint16 little endian |

The surrounding `_configureCompanionForRanging` logs label countryCode,
channel, txPreamble, rxPreamble, intervalMs, and submits this body through the
companion configuration manager. This body contains no visible STS key,
session identifier, MAC address or timestamp. Those may arrive in other
setup messages; absence here does not imply unauthenticated ranging.

HSI1 preamble mapping is verified from the jump table at `0x100407e98`:
1–8 invalid; 0 and 13–32 unsupported. HSI2 passes extended preamble values.
Channel converter `0x100408cee` uses HSI1 0/1 and HSI2 physical 5/9.

`apple_p2p.py` encodes/decodes only this body. Synthetic fixture
`7a354700` = opaque country byte 0x7a, channel 9, TX 10, RX 12, interval 71 ms.
It is not a command ready for an AirPods BLE write. Five offline tests cover
the bit fixture, every supported encoding, malformed/unmapped values and
boolean/float rejection. The semantic wrapper reuses `LegacyP2PConfig` and
the shared strict radio converters from `apple_ranging.py`.

## Radio firmware request and timing

P2P V1 builder `0x100163d8a` requires Legacy_BPRF for both packet fields via
the family-zero predicate `0x100408ef0`; it writes index bytes directly to
firmware offsets 0x1c/0x1d. It writes converted TX/RX preambles separately
at 0x1a/0x1b, micro-slot sizes at 0x1e/0x1f, channel at 0x20, interval at
0x36, and packet word 0x4010 at 0x10. Its log says `Built P2P packet V1`.
Other HSI versions have separate builders, so this is not a universal packet
encoding for all Apple controllers.

`populateP2PRoseStartRangingOptions` at `0x1002f15a2` defaults start-time
offset to 510,000 µs (1,500,000 µs for the conservative once path), listening
window to 3,000 µs and BLE connection interval to 30,000 µs. It has explicit
Bluetooth time-sync/scheduling paths. These are additional setup semantics,
not merely preamble and channel choices. Exact connection event selection
and encrypted BLE setup belong to the separate transport investigation.

## S25 Ultra / Android comparison

Read-only phone snapshot: `work/phone-uwb/specification.txt`.
The actual phone advertises FiRa PHY/MAC 1.0–3.0, UCI 3, channels 5/9,
BPRF/HPRF, frame capability mask 11 (SP0/SP1/SP3), STS mask 31,
min_slot_duration 1000, min_ranging_interval 100 and
extended_mac_address=false. It also exposes CCC/Aliro profiles. The snapshot
does not advertise an Apple PeerToPeer profile.

[S25 FCC report](https://fccid.io/A3LSMS938B/Test-Report/UWB-Test-Report-7820748.pdf)
page 4 documents BPRF preambles 9–12 and HPRF preamble 27; pages 35–40 show
channel 5/9 test plots. This confirms overlapping RF capabilities only.

[AOSP FiraOpenSessionParams](https://android.googlesource.com/platform/packages/modules/Uwb/+/refs/heads/main/service/support_lib/src/com/google/uwb/support/fira/FiraOpenSessionParams.java)
has one `setPreambleCodeIndex`, `setChannelNumber`, FiRa round usage,
`setHoppingMode`, slot duration in RSTU, and FiRa STS configuration.
[AOSP FiraParams](https://android.googlesource.com/platform/packages/modules/Uwb/+/refs/heads/main/service/support_lib/src/com/google/uwb/support/fira/FiraParams.java)
defines SP0=no STS, SP1=STS after SFD, SP3=STS after SFD/no data.
Neither examined schema exposes separate TX/RX preambles or the Apple
Legacy_BPRF family/index selector. AOSP source snapshots are retained in
`work/uwb-p2p-agent/Fira*.java`.

AOSP `FiraSpecificationParams.getMinSlotDurationUs()` proves the reported
1000 field is microseconds. Apple's 250 µs **micro-slot** is not proven to
equal a complete FiRa slot. Likewise interval values below the advertised
FiRa minimum are a profile mismatch, not proof of hardware incompatibility:
override/negotiation/enforcement need separate evidence. No conversion of
Apple debug flags into FiRa hopping or STS modes is established.

## Remaining gates and next safe work

1. Recover the Legacy_BPRF index 4 waveform/MAC definition or a documented
   Samsung/NXP vendor selector. Choosing BPRF plus a matching preamble is
   insufficient evidence for this mapping.
2. Map asymmetric preambles and Bluetooth-event timing through Samsung's
   time-sync/vendor extension. Distinguish micro-slots from FiRa slots.
3. Recover the P2P STS/security state from the complete native setup chain.
   The four-byte body and companion descriptor do not settle it.
4. Identify the actual AirPods Pro 3 mode on the modern iOS path. This older
   fallback exists in the inspected Mac daemon; that alone does not prove
   the accessory uses it or accepts its setup.

No live trial is justified by these bytes alone. The next reversible step is
static vendor API/config inspection and offline transport/radio-model
fixtures, preserving the working pairing and enrollment.
