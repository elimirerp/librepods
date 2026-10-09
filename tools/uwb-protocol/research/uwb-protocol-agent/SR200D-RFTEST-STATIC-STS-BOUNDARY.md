# SR200D RFTEST static STS boundary

Research date: 2026-10-09. Static inspection only; no phone commands, account calls, builds, or key trials were performed by this research agent.

## Actual device and observed boundary

The live device reports **SR200D_A2_PROD, firmware 1.64.4**, not a verified SR200T firmware target. Parent proved RFTEST session ID 0/type D0, SP3 channel 9/preamble 10, PER_RX and explicit stop/deinit. In a controlled baseline/on experiment, the baseline produced no notification; a scheduled owned-case burst produced acquisition/SFD/sync counts at the predicted event time, with STS found zero. This supports reception of the controlled case burst. It does not demonstrate matching STS or ranging.

Parent logs: `work/phone-uwb/root-assessment/samsung-receive-final-trial.log`; current controlled experiment evidence is maintained by parent. Identity: `work/phone-uwb/root-assessment/uwb-vendor/samsung-live-firmware-info.json`.

## Exact controls and what they establish

| Control | Wire format | Evidence | Limit |
|---|---|---|---|
| STS_CONFIG | SESSION_SET_APP_CONFIG tag 02, len 1; static value 00 | Standard UCI/NXP field and Samsung typed parser | Not yet demonstrated effective in D0 RFTEST |
| STS_INDEX | App tag 0A, len 4, little endian | Exact Samsung `AppConfigParameter.Builder.setStsIndex` at DEX 1e876c; RFTEST builder exposes it and defaults to 0 | Accepted configured index is not proof of which DRBG counter words RFTEST uses |
| VENDOR_ID | App tag 27, len 2; Samsung reads little-endian unsigned short | Exact Samsung `VendorId` constructor 1eb7d0; NXP standard definitions | D0 acceptance/effect unproved |
| STATIC_STS_IV | App tag 28, len 6, byte array copied unchanged | Exact Samsung `StaticStsIv` constructor 1eb224; NXP standard definitions | Java setting LITTLE_ENDIAN before copying an array does not reverse the six bytes or prove AES input order |
| SESSION_KEY | App tag 45, ordinarily 16/32 bytes for provisioned STS; Samsung parser shown reads 16 | NXP UCI definition; exact Samsung `SessionKey` constructor 1eae58 | Provisioned STS is a different generator setup; no demonstrated RFTEST override of test-vector key/input |
| STS_INDEX_AUTO_INCR | TEST_SET_CONFIG tag 08, len 1; 00 fixed, 01 increment per PER frame | NXP RFTEST type documentation and Samsung typed wrapper | This is the concrete RFTEST index control; does not itself expose upper96/block-counter values |
| TEST_SESSION_STS_KEY_OPTION | TEST_SET_CONFIG extended ID E503, len 1; 00 proprietary, 01 IEEE/default, remaining bits RFU | NXP SRXXX SDK serializer and SR150 UCI reference | Selects **key and DRBG input**, not an arbitrary key setter. Actual SR200D acceptance/current value remains unverified |

Command shapes use the actual returned session handle, not an assumed ID: app set `21 03 ... | handleLE32 | count | tag,len,value...`; test set `2D 00 ... | handleLE32 | count | E5,03,01,value`. TEST_GET_CONFIG E503 is `2D 01 ... | handleLE32 | 01 | E5,03`. Standard app getter is `21 04 ... | handleLE32 | count | tags...`.

A bounded getter/readback of 02/0A/27/28 plus E503 and test 08 can establish which values this firmware exposes. A setter/readback can establish acceptance. Neither establishes that D0's STS generator consumes the ordinary static fields. No specific Apple-compatible signal trial is justified by the retained reference alone.

## Why E503=1 does not complete the Apple mapping

The NXP-authored SR150 UCI specification v2.0.17, PDF page 122 / table 142, explicitly describes E503 as selecting both key and DRBG input data; IEEE=1 uses Annex H of P802.15.4z-D8. Proprietary=0 selects another key/data option whose values are not provided there. It contains no statement that VENDOR_ID, STATIC_STS_IV, STS_INDEX or SESSION_KEY overrides those selected test inputs. This is a related NXP reference, not proof of the closed SR200D firmware implementation.

The NXP-owned SRXXX SDK reinforces the same interface: `UwbApi_SetTestConfig` serializes E503 as a one-byte selector; `getExtTestConfigTLVBuffer` has no key/IV byte-array input. `UwbApi_SetRfTestParams` sends test configuration and mandatory MAC addresses, without vendor/static-IV/session-key fields. Exact Samsung `RfTestOpenSessionParams.Builder` similarly exposes STS index, auto increment, segment count and detection bitmap, but no key, vendor ID or static-IV setter. No firmware generator code is present in these host interfaces.

## Ordinary static STS composition: conditional, not RFTEST proof

Samsung patent US11936771B2 / EP4054114A1 describes vUpper64[15:0] from VENDOR_ID, vUpper64[63:16] from STATIC_STS_IV, followed by slotCount32 (cryptoStsIndex) and a generator counter32. Slot count resets by round; the generator counter resets by slot. The key is predefined. This makes an eight-byte prefix representable in an ordinary static-STS model. It does not establish its AES byte order, initialization value, E503 precedence, or use in this phone's D0 RFTEST.

Apple native acquisition initializes a public fixed key and a 16-byte IV `M0 || zero8`, where M0 is built from the fresh RoseMAC nonce. The separate AES FIFO scalar 2056C539 remains opaque; assigning it to STS_INDEX or a DRBG word would be speculation. A key match with an IEEE example is insufficient because the documented test-vector input differs from the nonce-derived Apple IV. An effective RFTEST IV override or a decoded native generator contract is still required.

## Sources

- Exact Samsung DEX: `work/uwb-protocol-agent/samsung-service-dexdump.txt`, methods/addresses above. The ordinary static wrappers demonstrate host wire format, not closed firmware behavior.
- NXP-owned SDK RFTEST implementation: https://github.com/nxp-uwb/sr250-uwbiot-zephyr/blob/main/uwbiot-top/libs/uwb-iot/uwb_api/proprietary/SRXXX/UwbApi_RfTest.c (SetTestConfig lines 351–381; mandatory-address setup 249–295).
- NXP-owned RFTEST types: https://github.com/nxp-uwb/sr250-uwbiot-zephyr/blob/main/uwbiot-top/libs/uwb-iot/uwb_api/proprietary/SRXXX/UwbApi_Types_RfTest.h (E503 selector and fixed/incrementing index descriptions).
- NXP-owned extended serializer: https://github.com/nxp-uwb/sr250-uwbiot-zephyr/blob/main/uwbiot-top/libs/uwb-iot/uwb_api/proprietary/SRXXX/UwbApi_Proprietary_Internal.c (getExtTestConfigTLVBuffer lines 295–321).
- NXP standard UCI tags/lengths: https://github.com/nxp-uwb/sr250-uwbiot-zephyr/blob/main/uwbiot-top/libs/uci-core/inc/uci_defs.h.
- NXP-authored SR150 reference, public repository mirror: https://raw.githubusercontent.com/L-Red/UWBIOT_SR150_LiamRoth/main/NXP_SR150_UCI_Specification_v2.0.17.pdf (page 122, related hardware only).
- Samsung patent: https://patents.google.com/patent/US11936771B2/en (Fig. 8 description); primary EPO publication https://data.epo.org/publication-server/rest/v1.0/publication-dates/20220907/patents/EP4054114NWA1/document.pdf (paragraphs 111–114).
- Apple native evidence: `work/uwb-protocol-agent/LEGACY-ACQUISITION-AND-STS-BOUNDARY.md` (iOS protocol agent).

## Current blocker

The controlled receive path works through SFD/sync. The concrete unresolved step is making SR200D RFTEST generate/expect the same nonce-derived Apple STS, followed by the controller-side 3ms custom SP0 reply. Standard field names, accepted readback, the Samsung patent and an IEEE test-key match do not prove either capability. No arbitrary key permutations, unsupported vendor selector or firmware mutation is recommended.
