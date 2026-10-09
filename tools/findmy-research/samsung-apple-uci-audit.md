# Samsung SR200T / Apple finding UCI audit — 2026-10-09

Scope: offline inspection of retained Samsung DEX, exact vendor HAL, retained firmware containers, public source snapshots, and the iOS agent's native protocol extracts. No phone commands, builds, account requests, session creation, radio operations, or enrollment changes were performed by this audit.

## Result

There is a concrete Samsung vendor-command transport and a distinct vendor session app-config path. Neither the standard FiRa API nor the retained vendor parameter definitions establishes an Apple legacy packet-family/index selector or NBA/MMS support. The exact HAL removes extended controller capability fields and injects Android capability values, so Android's returned capability list cannot resolve this question by itself.

### Later live verification: raw controller capabilities recovered

The parent subsequently attached a temporary native Frida trace to the exact HAL's exported `phNxpUciHal_print_packet(type, buffer, length)`. It captured only a complete response MT2/GID0/OID3 to one read-only CORE_GET_CAPS_INFO query, before `handle_get_caps_info`. All other packets were ignored. No sessions or RF tests were started by that trace. The hook was unloaded, session detached, root tracing server expired after its bounded60s lifetime, and ADB forwarding removed. The HAL remained PID1950 and UWB remained enabled. The phone's HAL hash matched the retained binary above exactly.

The raw response is165bytes including its4-byte UCI header, status0,44TLVs, and **contains no E0/E1/E2/E3 extended capability records**. RFRAME=`0B` (SP0/SP1/SP3), channels=`09` (5/9), STS configurations=`1F`, generic AoA=`00`, extended MAC=`00`. Thus the missing extended fields are no longer merely a log-access uncertainty: this particular response did not advertise them. This still does not establish the absence of an undocumented proprietary radio mode. Evidence: `work/phone-uwb/root-assessment/uwb-vendor/samsung-pre-filter-caps.json`.

Read-only CORE_GET_DEVICE_INFO additionally identified **SR200D_A2_PROD, firmware1.64.4, vendor UCI3.0.2**, boot-mode byte01 (meaning unverified). The exact device name supersedes an identity inferred only from the `libsr200t_prod_fw.so` filename. The parser exports only device-name, firmware, vendor-UCI and boot-mode fields, excluding unique chip IDs and other TLVs. Evidence: `work/phone-uwb/root-assessment/uwb-vendor/samsung-live-firmware-info.json`.

### Later live verification: temporary PHY configuration

A temporary ordinary FiRa session accepted and returned exactly eight PHY values: channel9, BPRF, SP3, SFD0, preamble10,64-symbol preamble, one STS segment and64-symbol STS. The session was deinitialized with status0 and controller session count returned to0. This proves parameter acceptance/storage, not Apple waveform, key, acquisition exchange, distance or direction compatibility. Evidence: `work/phone-uwb/root-assessment/samsung-fira-phy-config-trial.log`.

The initial RFTEST/D0 trial used a random session ID and received status4. Subsequent exact Samsung factory-code inspection established session ID0 for RFTEST; a comparison using that native context is therefore justified. The first attempts at that comparison stopped at the idle prerequisite because Google Play services held an unrelated session; they made no changes. Do not label D0 unsupported solely from the random-ID trial.

The subsequent factory-context retry **succeeded**: temporary session ID0/typeD0 returned status0 and a generated handle, accepted/read back the eight PHY fields, and deinitialized with status0/count0. The parent briefly toggled UWB off/on to clear a Google Play services session and restored the originally enabled state. Evidence: `work/phone-uwb/root-assessment/samsung-factory-context-phy-trial.log`.

### Later live verification: low-level reception starts and stops

The first receive attempt was rejected with status0x15 (SESSION_NOT_CONFIGURED). Native factory and SDK inspection supplied the missing MAC/role/FCS/data-rate/STS-index fields and complete RFTEST parameters. The resulting session reached **IDLE=3**. An intermediate host guard mistakenly compared against ACTIVE=2 and stopped before reception; that guard was corrected against both exact Samsung DEX and AOSP definitions.

With the complete configuration, **TEST_RX (GID0D/OID05) returned0**, the host observed for1.5seconds, STOP returned0, deinit returned0, and count returned0. No packets/notifications arrived; the AirPods case had not been started. A separate **PER_RX (0D/03)** attempt using Samsung's receive-reference bytesABCDABCD likewise started/stopped/deinitialized successfully, without notifications in its short observation. These references are comparison data, not transmitted payloads. Both experiments used receive-only allowlists and temporary native notification capture; all tracing detached and UWB remained enabled.

These results establish live RFTEST receive-control access, **not** reception of the case, usable timestamps, matching STS, custom acquisition-reply timing, distance, or bearing. Packet count and T_WIN alone are not runtime bounds; the host deadline, explicit STOP and deinit are required. T_WIN units are not relabeled as verified microseconds. Evidence: `work/phone-uwb/root-assessment/samsung-receive-final-trial.log` and `samsung-per-receive-trial.log`. Reusable receive-only implementation: repository `tools/uwb-protocol/samsung_uwb_rx_probe.py`.

A **pre-filter CORE_GET_CAPS_INFO response** would resolve which fields the HAL removes. The parent repeated the read-only query after restoring Bluetooth and found zero `NxpUciR` logcat lines via both shell and root. This route is currently unavailable without changing logger state; no such change was made. Repeating the post-filter query does not recover the missing extended fields.

## Exact retained hardware and binaries

The existing phone assessment identifies SM-S938U, Android 17/API 37, build S938USQUCDZIF, NXP SR200T. `work/phone-uwb/libuwb-nxp.conf` selects `libsr200t_prod_fw.so`. All paths below are relative to the shared `bas` workspace unless introduced as repository paths.

| Artifact in `work/phone-uwb/root-assessment/uwb-vendor/` | SHA-256 |
| --- | --- |
| `uwb_uci.hal.so` | `6c6828d0a12024026a6db70e4f9b928fa60cf696f1d0c77b2046b78ce414bcd9` |
| `libsr200t_prod_fw.so` | `029491157210aa8b00b7f3ec502be6483dba0f6bb29c6e3cc0f7098637878272` |
| `libsr200t_dev_fw.bin` | `94ec62d5938711906b04cde1878b399fd9fe2cd88ed81e297aae7e82883927cd` |

The production ELF exports encrypted SR200 firmware image objects (`heliosA1V1EncryptedProdFwImage`, `heliosA1V2EncryptedProdFwImage`). This provides container identity, not decoded firmware logic. The dev BIN has exactly the same first20bytes (`00d2030100000001000055550000000000000000`) as both named encrypted production image objects and the same387024-byte length as A1V2, but differs in content/hash. That proves a shared wrapper format; it does not conclusively establish the dev image's encryption. HAL `printManifest_info` at `0x36CA4` prints only version/date/time/count. The production manifest first12bytes are `010000001607080c1700000f`; there is no encryption field identified by this print path. Comparison is retained in `work/uwb-protocol-agent/samsung-firmware-image-comparison.json`. Opaque firmware bytes and absent readable mode names are insufficient to decide mode support.

## Proven command route

The existing repository `samsung-vendor-methods.json`, `samsung-vendor-internal-methods.json`, and runtime review establish:

```
semuwb_extras Binder
  com.samsung.android.uwb_extras.IUwbExtrasAdapter
  transaction 2: gid:int32, oid:int32, payload:bytearray
    -> SamsungExtension.UwbExtrasAdapterService.sendUciMessage
    -> UwbVendorExtensionWrapper.sendVendorUciMessageWithBlocked
    -> UwbManager.sendVendorUciMessage
    -> native HAL
```

The transaction returns `readException()` followed by a payload byte array, without the four-byte UCI header. The service enforces WRITE_SECURE_SETTINGS; the public-looking Java facade has hidden-API blocked flags. The parent's previously validated privileged Binder route is the established access path.

Exact `semuwb-service.jar` DEX constructors establish:

| Command | MT / GID / OID | DEX constructor code offset |
| --- | --- | --- |
| `SessionSetVendorAppConfigCommand(long,List)` | command1 / F / 0 | `0x1F9154`; constants at `0x1F916E..1F9176` |
| `SessionGetVendorAppConfigCommand(long,List)` | command1 / F / 3 | `0x1F88E0`; constants at `0x1F88FA..1F8902` |

SET payload is `uint32LE session token, byte parameter count, encoded TLVs`. GET payload is `uint32LE session token, byte parameter count, byte parameter IDs`. It is not a global mode-discovery command and needs a genuine existing session token. No vendor GET was sent by this audit.

Exact HAL virtual addresses, in `work/uwb-protocol-agent/samsung-hal-disassembly.txt`:

- `phNxpUciHal_write` starts `0x197BC` and calls `phNxpUciHal_process_ext_cmd_rsp` at `0x19824`.
- That dispatcher starts `0x1D844`; standard GID1/OID3 session SET_APP_CONFIG takes the chained/filter path at `0x1D918`.
- Generic commands reach `phNxpUciHal_write_unlocked` at `0x1DA24`. F0/F3 are outside the standard GID1/OID3 branch. This is a transport route, not proof that the firmware accepts arbitrary vendor TLVs.

## Exact filtering: two separate mechanisms

### Standard session app-config filtering

`phNxpUciHal_handle_set_app_config` starts `0x1E2F4`. It validates packet length, preserves the header/session/count, and filters its TLVs. The four-byte ELF literal at virtual address `0x8D88` is exactly `1C E3 E4 E5`; `memchr` tests it at `0x1E598`. Those tags are removed from the standard session command. The channel4/length1 branch enforces channel5/channel9 country policy at `0x1E52C..1E584`.

No blanket validation of RFRAME, MAC mode, preamble, or duration values appears in this filter. Other TLVs can be delivered to the controller, whose response can still reject them. Putting an E3-prefixed NXP extension blindly into standard SET_APP_CONFIG would hit this filter; documented Samsung F0 vendor parameters use their separate command namespace.

### Controller capability rewriting

`phNxpUciHal_handle_get_caps_info` starts `0x204B0`:

1. It treats E0/E1/E2/E3 as two-byte extended-tag prefixes and decodes the controller TLVs (`0x20514..20538`).
2. It compares decoded map keys with **0x100 / decimal256** (`0x205EC`) and deletes extended entries at or above that value (`0x20620..2063C`). This does **not** mean ordinary tags A0..FF are deleted.
3. It replaces ordinary AoA support and applies channel policy.
4. It loads `UWB_VENDOR_CAPABILITY` (literal `0xAA26`, lookup `0x20B0C`), decodes those configured ordinary TLVs at `0x20B3C`, and merges them into the response.

The retained config injects E4=`64 00 00 00` (minimum interval100ms), E8=`B0 04 00 00` (minimum slot1200RSTU=1ms), plus Android AoA/reporting/session-count capabilities. These are demonstrated policy/configuration values. They are not independent proof that the silicon cannot implement shorter Apple timings.

## Capabilities currently evidenced

`work/phone-uwb/root-assessment/uwb-capabilities-after-owner.json` is the parent's post-owner read-only response: status0, payload214bytes. Its useful ordinary fields include:

| Capability | Returned value | Interpretation / limit |
| --- | --- | --- |
| Channels | mask9 | channels5 and9 |
| FiRa PHY/MAC version range | 1.0..3.0 | standard protocol capability |
| RFRAME | mask11 | SP0, SP1, SP3; no standard RFRAME4 |
| BPRF parameter sets | mask63 | standard sets1..6 |
| HPRF parameter sets | bytes `AF AA AA AA 01` | HPRF set bitmap |
| STS modes | mask31 | standard STS configurations |
| Scheduling modes | mask7 | contention/time/hybrid |
| Extended MAC address | 0 | advertised unsupported; raw controller comparison still useful |
| Generic AoA support | 0 | HAL replaces this field; Samsung calibration/reporting route is separate |
| Minimum interval / slot | 100ms / 1200RSTU | injected configuration values |

A CCC sync-code bitmap or CCC UWB config ID belongs to digital-key capability definitions; it is not an Apple packet-family selector. Numeric Apple packet index4 is not standard RFRAME4 or FiRa BPRF parameter set4.

## What Samsung can express versus the Apple request

Standard UCI packet definitions in repository `source-snapshots/uwb-uci_packets.pdl`, retained `uwb-FiraParams.java`, and exact Samsung DEX constants agree on these app-config tags:

| Property | Samsung standard tag | Apple native finding evidence |
| --- | --- | --- |
| Channel | 04 |5 or9; compatible advertised channels |
| Local/destination MAC | 06 / 07; MAC mode26 | fresh8B Rose MAC per session, separate from BLE identity and owner key |
| Slot/ranging duration | 08 / 09 | default microslot250us and ordinary interval51..67ms excluding multiples of5 |
| RFRAME | 12; values0/1/3 | native family0/index4 is its own packet table selection |
| Preamble code | 14, **one setting** | native default host TX10, RX9/11/12; GATT0702 independently accepts both encoded preambles, including equal values |
| Preamble duration | 17 | legacy case row4 uses64symbols |
| Scheduled mode | 22 | Apple P2P MAC mode2 has independent native semantics |
| STS count/length | 29 / 35 | case row4: one segment,64-length setting, no PHR/data block |

Apple values above were confirmed by the iOS protocol agent's nearbyd/case analysis. Retained evidence: `work/uwb-protocol-agent/rose-packet-properties.asm`, `rose-packet-field-accessors.asm`, `rose-packet-sts-definition.asm`, `rose-packet-sts-caller.asm`, and the `HAWKEYE-WIRE.md` serializer. Case row4 is at `0x4673E8`, table stride56. The existing serializer document predates the later controller unit mapping.

Equal preambles are supported by the native case parser; therefore the default asymmetric preamble selection is not itself a proven hard blocker. A standard single preamble can describe equal values. The row's apparent STS-only shape overlaps some SP3 properties, but neither SFD waveform, Apple MAC framing, nor STS evolution has been proven equivalent. Do not label packet4 as FiRa SP3 or send a guessed FiRa profile as a completed Apple implementation.

The fresh Rose MAC must come from the Apple ranging session. MAC mode2 can serialize an8B UCI address, but extended-MAC support is currently advertised false. BLE address, FMIP UDID, and LTK must not be substituted for this address.

## Retained NXP headers: actual vendor knobs

The retained `nxp-srxxx-uci-ext-defs.h` and `nxp-srxxx-proprietary-types.h` are public SDK reference artifacts, not an exact firmware ABI guarantee. They document the same basic vendor parameter IDs that Samsung DEX implements:

- 00 MAC payload encryption;02 TX antenna;03 RX antenna;20 RAN multiplier;21 last STS index;30 CIR logging;31 PSDU logging;40 RSSI averaging.
- 70 MAC_CFG controls MAC header/footer presence bits, not an Apple MAC scheduler.
- 9F SET_USECASE_ID lists payment/NXP static STS/Mifare use cases, not Apple finding.
- Radar B3 has a single preamble and RX capture/antenna/gain fields; RX capture index is not RX preamble index.

There is no explicit Apple family/index, separate TX/RX preamble, NBA/MMS fragment, or Apple P2P scheduling parameter in those retained definitions. This is a gap in the exposed contract, not proof of absence in proprietary firmware.

## Proposed minimal read-only inspection

The existing post-filter response already supplies the public capability baseline. Do not create a session merely to run vendor GET_APP_CONFIG.

1. Inspect existing HAL UCI receive logs for the completed CORE_GET_CAPS_INFO response. Exact `phNxpUciHal_read_complete` calls `phNxpUciHal_print_packet(type1,rawPacket,length)` at **0x19DD0**, before the caps filter call at **0x1A214**. The logger has the literal tag `NxpUciR` (`0xD448`). Both UCIX/UCIR retained config levels are4; the function gates on UCIX>=3 and subsequently UCIR>=3. Runtime suppression/log retention can still make it unavailable. The parent's completed query produced no such log lines, so this is a statically located observation point, not an available present read path.
2. If an additional read-only query is later authorized by the parent, use the already validated Binder route with GID0/OID3/empty payload. Optionally GID0/OID2/empty supplies version information. Do not reset/init/change country, enable logs, configure sessions, send RF-test commands, or probe arbitrary vendor opcodes as part of this inspection.
3. Accept only the matching response MT2/GID0/OID3, validate the four-byte UCI framing and declared length, status byte0 and parameter count. Raw packet TLVs use ordinary one-byte tags except E0/E1/E2/E3, which consume a second tag byte before the length. Preserve unknown tags as bounded hex; do not interpret an E3 extension as the injected ordinary E3 Android capability.
4. Compare raw versus post-filter fields: extended capability entries, genuine MAC-address capability, channels/PRF/RFRAME, and entries appended from `UWB_VENDOR_CAPABILITY`. A visible proprietary field needs a definition or code path before being called Apple support.

No global read-only command exposing Apple/PHY mode support was identified. Vendor GET_APP_CONFIG requires an existing session; RF-test functions start receive/transmit tests and are not passive capability queries. Neither routine offers a justified substitute for the missing pre-filter capability response.

The remaining implementation gate is a verified SR200T controller contract for the Apple packet waveform/MAC/STS/scheduling combination. A reachable raw transport or success from standard capabilities does not satisfy that gate.

## Offline verification performed

- Disassembled the exact AArch64 HAL with the retained NDK `llvm-objdump`; symbol inventory saved as `samsung-hal-selected-symbols.txt`.
- Read the ELF load segments to verify the unsupported-tag bytes and exact config/logger literals at the addresses above.
- Used Android SDK `dexdump` on the retained Samsung JAR; verified F0/F3 constructor arguments and little-endian session payload parsing.
- Extracted scalar DEX protocol constants with `work/uwb-protocol-agent/samsung-uci-constants.py`; fixed omitted trailing numeric static fields to use their DEX implicit-zero defaults. Output is `samsung-uci-constants.json`; SP0/1/3, shortMAC0/extendedMAC2, BPRF0/HPRF1/2 match the exact class data.

No app source or hardware state was changed. Only this report and offline analysis artifacts were written.
