# Legacy P2P RF correspondence and a receive-only compatibility experiment

Static review, 2026-10-08. No UWB commands, ranging sessions, BLE writes,
pairing changes or daemon attachments were performed in this investigation.

## What the native code settles

The inspected Mac ItemLocalizer P2P preset uses packet family 0 / index 4,
named `Legacy_BPRF`, TX preamble 10 and RX preamble 9, 11 or 12. The V1
firmware builder at x86_64 `0x100163d8a` validates only the family-zero
predicate, then writes the index directly to TX/RX bytes 0x1c/0x1d. It
converts the preambles separately. There is no visible decomposition of
index 4 into SFD, RFRAME, STS length, STS key or initialization vector.

The native packet-to-integer helper at `0x100408f3d` maps legacy indices
1–5 to the same numbers; 6–9 to zero; 10–13 to the same numbers. This table
does not encode a PHY definition. The packet-family string routine labels
family 1 `IEEE_BPRF` separately from family 0. Neither this distinction nor
the integer 4 proves an incompatible waveform or identifies a standard
STS packet configuration.

The V1 P2P builder sets firmware command word 0x4010 and zeroes the word at
packet offset 0x38. Its body contains role, antenna masks, preambles,
packet indices, micro-slot sizes, channel and interval. It does not log
the `sts_blob` seen in other GR packet builders. This observation does not
prove the P2P session lacks STS: firmware state or another setup command
can carry security parameters. No STS key was read or recovered.

Raw assembly and decoded constant tables are in the research workspace
`work/uwb-p2p-agent/packet-type.asm`, `packet-v1-builder.asm` and
`native-constant-tables.txt`. All addresses refer to the x86_64 image.
The complete preset/timing findings remain in `p2p-evidence.md`.

## Primary research and the actual public artifact

[GhostPeak](https://www.usenix.org/system/files/sec22-leu.pdf), section 3.3,
reports receiving Apple traffic using a Qorvo receiver after adjusting
radio settings, and describes Apple's proprietary MAC format. Section
4.1 distinguishes native Find My tests from compatibility-mode tests.
The paper does not supply an AirPods Pro 3 / Legacy_BPRF index 4 profile.

The [artifact appendix](https://www.usenix.org/system/files/usenixsecurity22-leu.pdf)
provides a sniffer, requires settings obtained through reverse engineering,
and warns that malformed received frames are forwarded too. It is not an
authenticated Find My implementation.

The authors' MIT [uwb-sniffer](https://github.com/seemoo-lab/uwb-sniffer)
is pinned locally to tag `v1.0`, commit
`f102de44c5c5927f35ddac23dfdad0fa0a36a0d1`. The compiled `dwt_config_t`
initializer in `uwb_sniffer_source/uwb_sniffer.c` sets:

| Field | Active initializer |
|---|---|
| Channel | 9 |
| TX/RX preamble | 12 / 12 |
| TX preamble length | 128 |
| RX PAC | 8 |
| SFD selector | 0, comment describes standard eight-symbol SFD |
| Data rate | 6.8 Mbps |
| PHR mode/rate | standard / standard |
| STS mode | `DWT_STS_MODE_1` |
| STS length | `DWT_STS_LEN_64` |
| PDOA | off |

Unused macros above the initializer instead name preamble 3 and SFD mode
3. They do not select the compiled configuration. No STS-key/IV load call
appears in the repository. The receiver still forwards data on some error
paths. Thus its default settings and a nonempty Wireshark frame cannot
establish the Find My profile or successful secure timestamp validation.

[The same authors' Apple U1 slides](https://github.com/seemoo-lab/apple_u1)
discuss a GR profile and leave STS format/length as questions. The GR
profile is not the inspected ItemLocalizer P2P profile. Public Nearby
Interaction compatibility likewise does not establish native Find My
interoperability.

## Fields which can be expressed, without assuming their Apple mapping

[AOSP UCI packet schema](https://android.googlesource.com/platform/external/uwb/+/refs/heads/main/src/rust/uwb_uci_packets/uci_packets.pdl)
exposes these separate app-configuration fields:

| Field | TLV ID |
|---|---|
| Channel | 0x04 |
| STS index | 0x0a |
| RFRAME configuration | 0x12 |
| Preamble code | 0x14 |
| SFD ID | 0x15 |
| PSDU data rate | 0x16 |
| Preamble duration | 0x17 |
| PRF mode | 0x1f |
| Static STS IV | 0x28 |
| Number of STS segments | 0x29 |
| BPRF PHR data rate | 0x31 |
| STS length | 0x35 |

[AOSP FiRa definitions](https://android.googlesource.com/platform/packages/modules/Uwb/+/refs/heads/main/service/support_lib/src/com/google/uwb/support/fira/FiraParams.java)
give SP0 = no STS; SP1 = STS after SFD before PHR/data; SP3 = STS after
SFD with no PHR/data. Those definitions identify standard frame shapes,
not Apple index 4. The phone reports frame mask 11, supporting SP0/SP1/SP3;
SP2 is not advertised. No conclusion about which shape Apple uses follows.

Samsung's current pulled service DEX recognizes `TestRxCommand` with
MT 1, GID 0x0d, OID 0x05, and an `SfdId.Value` enum named `SFD_0` through
`SFD_4`. Names alone do not reveal their waveform definitions. Static
references are retained in
`tools/findmy-research/samsung-rx-static-references.json` by the vendor
research agent.

The separately archived Samsung thesis, appendix tables 129 and 222,
describes historical vendor test TLV 229/sub-ID 3,
`TEST_SESSION_STS_KEY_OPTION`: 0 proprietary, 1 IEEE. Its tables 148 and
151 also describe frame placement and SFD choices. This is a concrete
historical lead, but that selector was not found in the current service
DEX; no proof connects it to Apple or SR200T production firmware. Do not
send it to the phone on this evidence.

SFD selector integers are driver-specific. In particular Qorvo's selector
3 cannot be copied into NXP's enum merely because both are called SFD.
Likewise `DWT_STS_LEN_64` is a driver symbol, not a proven raw UCI value.

## Smallest plausible real radio experiment

**Question:** Can the actual SR200T receive the PHY frames of the owned
AirPods' selected legacy session? This must be settled before implementing
an active Apple MAC on the phone. This is a proposed receive-only test,
not an executable command sequence or completed trial.

### Prerequisites

1. Establish which mode the accessory actually selects on a legitimate
   Apple Find My session. The old Mac fallback alone does not prove that
   AirPods Pro 3 uses it. Obtain nonsecret radio configuration metadata
   for that session or an independently validated RF capture.
2. Establish a supported application route for receive-test commands and
   their notifications. Samsung `getUwbAdapter` / `sendUciMessage` are
   hidden-API blocked in boot-class reflection. WRITE_SECURE_SETTINGS
   alone does not remove that separate restriction. Existing callback
   registration replaces a global Samsung callback, so it needs a
   reviewed coexistence/restoration plan before use.
3. Confirm production-firmware device-test support and an idle radio;
   parser classes in the service do not prove controller acceptance.
4. Verify the current phone's exact response/notification layouts.
   The historical Samsung TEST_RX notification layout differs from the
   current AOSP layout; interpreting either blindly can manufacture
   apparently useful timestamps or frames from unrelated bytes.

### Bounded candidate

Use one isolated device-test session with a fixed, finite receive window
while the owner uses a legitimate Apple endpoint to start its normal
finding exchange. Do not transmit test packets, emulate a response,
change AirPods pairing, or inject a BLE configuration. Restore/deinitialize
the test session and callback in all exit paths.

The AOSP command vocabulary is session type `DEVICE_TEST_MODE = 0xd0`,
test group `0x0d`, `RF_TEST_CONFIG_SET` OID 0, `RF_TEST_RX` OID 5 and
`RF_TEST_STOP_SESSION` OID 7. Session tokens/handles and test payloads are
version-dependent; confirm them before constructing a request. No UCI
bytes are supplied here because current phone access and support remain
unverified.

Start with measured channel and the Apple sender's known TX preamble:
the inspected P2P host TX is 10, while the companion sends on the host's
RX choice 9, 11 or 12. Do not confuse which direction is being received.
Keep antenna gain/calibration unchanged. Use measured PHY values if
available. If not, a reviewed finite matrix of supported receive SFD /
frame placement / STS length combinations can distinguish hypotheses;
the archived sniffer's SP1/64 setting is only one candidate, not a
preferred Find My profile. Unknown keys are not brute forced.

### Measurements and decisions

| Observation | What it supports |
|---|---|
| Energy/preamble detection only | RF channel/preamble overlap; no packet-format claim |
| Repeated valid PHR and exact PSDU with good FCS | PHY data-frame reception under the recorded settings |
| STS correlation failure with otherwise readable PSDU | Separate secure timestamp state remains unresolved |
| No PSDU | Could be SP3, wrong PHY parameters, no selected legacy mode, or no burst; not proof of incompatibility |
| Valid secure timestamps using legitimately negotiated matching state | STS compatibility for that state; still does not implement Apple MAC/time synchronization |

Record bounded counts, status flags, PHR/length/FCS, configuration and
relative timing. An error-path payload is not a successful frame. Keep
private payloads and key material out of routine logs. No distance is
reported from a receiver-only capture, and success does not authorize an
active session by itself.

## Remaining exact unknowns

Legacy_BPRF index 4's SFD waveform, data/PHR encoding, RFRAME placement,
STS segment count/length, AES key/IV state, counter initialization and
update, hopping semantics, Apple MAC bytes and BLE-event synchronization
are not recovered. Index 4 must remain opaque in the offline codec.
The experiment above can narrow waveform questions without inventing a
FiRa mapping; a complete Apple session still needs its authenticated OOB
setup and timing.
