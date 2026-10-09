# Case legacy PHY, STS and start contracts

Static analysis of Apple's A3122 9A348 NERF and ROSE images, plus synthetic execution. No account, Bluetooth or UWB operations were performed by this agent. Parent subsequently reported a successful configure-only live trial: US byte0, channel9, equal preambles10/10, interval71, fresh RoseMAC8; response0707 status0. That live observation belongs to the parent's owner-link-trial-legacy-configure.log.

## Configuration settled

`0702` body is country byte, compact flags, interval LE16, RoseMAC8. A channel9 / preambles10+10 / interval71 packet is `01 02 07 00 95 47 00 || RoseMAC8` (15 bytes). NERF0x24166..182 extracts both preambles independently;0x2418E..196 forces legacy packet index4 for both directions. All16 combinations decoded successfully under original firmware instructions in `verify-case-p2p-config.py`; final radio setup is outside that harness.

US enum is0, not ASCII US: iOS26nearbyd0x10045043C constructs US dictionary entry with enumbyte0 at450544..54C; record copying/getter/settings/state/default provider leads to country byte returned by0x100382438 and inserted by companion builder0x10033AA74. Raw evidence: ios-regulatory-country-table.asm, ios-regulatory-country-lookup-main.asm, ios-regulatory-country-install.asm, ios-legacy-country-byte-getter.asm, ios-companion-p2p-config-builder.asm. Default enum table1009D9130 is US0/EU1/TW2/CN3/JP4/KR5/RU6/AR7.

**0707 completion is exactly statusLE32 (4-byte body /7-byte frame).** The5-byte status+endReason body belongs to0708. Firmware jump table23E1C index1 leads23E94 (4B), index2 leads23E28 (5B). Original response builder synthetic execution verifies0707 status0 body00000000. The earlier5-byte configure interpretation was corrected before the parent's live trial.

## Actual packet4 definition

ROSE base0x400000: family table0x4684F8, family0 Legacy_BPRF table0x467308, stride56, row4 at0x4673E8. The row is:

| Byte offset | Value | Evidence-backed interpretation |
|---|---:|---|
|00|1|valid|
|04|1|RX format / PRF related; exact enum not recovered|
|08|64|preamble symbols|
|0C|0|SFD selector; selector0 has8 symbols|
|10|1|STS enabled|
|14|0|segments minus1 ->1|
|18|2|STS length enum ->16<<2=64 symbols|
|1C|4096|64*64 sequence units; separate timing-chip count|
|20|0|PHR/PSDU block absent|
|24|0|PHR related selector, unused for no-data packet|
|28|2|rate/timing selector|
|2C|3|chips-per-symbol shift ->512>>3=64|
|30|4672E8|hardware descriptor pointer|
|34|C7E068A|hardware preamble timing constant|

0x4197CC RX setup consumes these fields;0x41BA1C duration calculation explicitly skips PHR/PSDU when row+20 is0. `rose-packet-rx-config-setup.asm`, `rose-packet-properties.asm`, `rose-packet-sts-caller.asm` and `rose-packet-sts-definition.asm` preserve instructions.

The shape is SP3-like (preamble+SFD+STS, no PHR/data), **not a proof of FiRa interoperability**. IEEE_BPRF row4 uses SFD selector2 whereas legacy row4 uses0, though both have8 symbols. Their last hardware timing words differ. Waveform equivalence remains unresolved. 0702 cannot select the IEEE family; capabilityFC1ND alone does not expose such a configuration command.

## STS initialization: fixed firmware key + negotiated session address

This is a separate path from mac_f.c's public sec_preamble table. The following actual P2P lineage is established:

1. NERF0702 handler0x24130..13A stores RoseMAC8 through0x25A58 at20011008.
2. Legacy config forwarding0x25AB4..BA passes it to0x2003C, which saves state+58/+5C at0x20116.
3. ROSE command generation0x206BE..C6 copies state+58/+5C into command/state+BF/+C3.0x2089A labels it `baseMacAddress`. Command starts state+79, body/sessionID starts+7D, so MAC is body+42.
4. ROSE0x423264..72 copies0x4A bytes of this body into task+90. MAC lands task+D2/D6.0x4232A4..BA selects tasktype11 and role from body+2.
5. Factory0x424AA0 sets request pointer task+CA. Role0 installs p2pm_task.c callbacks and reaches0x425AA0; role nonzero installs p2ps_task.c callbacks and reaches0x42575C.
6. Both callers load request+8/+C (=task+D2/D6), clear lowfirstbyte, and call uwbsec initializer0x42BD4C.
7. Initializer copies16-byte **fixed public firmware constant** at0x469CF8 into securitycontext+A1, zeroes16B IV at+81, writes the supplied address words to+81/+85, then programs AES DMA.

Fixed firmware key: `4a5572bc90798c8e518d2449092f1b55`. This is a public binary constant, unrelated to recovered owner/account secrets. It is not the standard sequential IEEE test key. Initial IV in RAM is `00 || RoseMAC[1:8] || zero8`.

AES DMA words written to44005020 are16000000/keypointer/26020000/IVpointer/2056C539/outputpointer. `verify-rose-sts-initializer.py` executes the unchanged initializer with synthetic addresses; memcpy/memset and AES completion are harness boundaries. It verifies key/IV/MMIO writes; **it does not emulate AES expansion, determine engine byte order, or prove bit-to-chip mapping**. P2PM0x429C30..3C and0x42A08A..9A copy0x800 bytes from the initialized task+158 output to the radio STS buffer. No ownerLTK enters the inspected STS initializer. Remaining work: AES command format / generated chip stream and any radio-internal counter updates.

Raw evidence: case-p2p-full-rose-command.asm, rose-p2p-command-install.asm, rose-session-factory-head.asm, rose-session-factory-role1.asm, rose-p2p-sts-init.asm, rose-p2p-sts-init-2.asm, rose-rmac-sts.asm, rose-p2pm-all.asm, rose-sts-initializer-synthetic.json.

## Legacy0703 requires a future BLE event counter

Native locationd `+[CLDurianTask startRangingHawkeyeTaskWithTargetEventCounter:]`0x101449F3C serializes five bytes:01/03/07/targetECLE16.

NERF0x2435A resets counter state;0x2435E..62 always sets the supplied16-bit counter and its validflag, even for counter0. Start handler0x25CCA calls SVC94 (`sd_ble_gap_conn_evt_counter_get`).0x25D0E..1A requires **targetEC > currentEC+3** or returns error7. Then0x25D24..26 passes connection handle, targetcounter and connectioninterval to0x203D0. That function calculates lead time, subtracts ceil(90ms/connectionInterval) from target, and calls the registered connection-event trigger throughstate+10.0x25B34 constructs `sd_ble_gap_conn_evt_trigger_start` parameters with targetcounter and a PPI/timer trigger.

The counter0 immediate fallback at0x25D54 is flag0-only and is not reachable through ordinary0703. A zero packet will not provide a burst. A standards-only HCI API does not supply the Apple's controller event-counter metadata. For an independently justified receive-only experiment, the parent must arrange a finite future counter tied to the same connection, or establish a counter-aware controller route. No start packet was sent by this agent.

Evidence: startRangingHawkeye.asm, case-start-counter-install.asm, case-start-trigger-ipc.asm, case-rose-config-storage.asm. The subtraction uses signed compare at25D1A and does not visibly handle16-bit wrap as modular arithmetic.

## NBAMMS070E avoids that BLE trigger contract

070E carries16BIRK. NERF0x2439E..A2 stores16B through26024 and posts event1F. NB start branch25D58 calls2050C directly, bypassing legacy eventcounter validation.20544..54 copiesIRK16 tostate+37, computes a bounded randomized acquisition delay from NB config bytes+29/+2A, pulses local timesync, and arms acquisition retrytimer. No BLEcounter query occurs in this slice.

This provides an actual native asynchronous start path, not proof that Samsung can speak NBAMMS. 070D's NB country/channel/MMS fragment/preamble configuration requires a second narrowband radio contract as well as UWB; the public Samsung FiRaSP0/SP1/SP3 capabilities do not establish it. No NB configuration/start trial was performed here. Raw evidence: startNBRangingHawkeye.asm, case-nb-start-ipc.asm, case-precision-dispatch-tail.asm.

### AES hardware boundary refinement

The shared uwbsec stream generator0x41FFA0..420024 advances the IV's final32-bit word in big-endian order (`rev` before/after addition), requires offsets divisible by16 (`UWBSEC_BYTES_PER_CTR`), and emits chunks at most0x400. Its command words are16000000/keypointer,26000000|(chunkLength<<8)/IVpointer,scalarArg2,outputpointer. In the P2P initializer, scalarArg2=2056C539 is unaligned and outside ordinary ROSE RAM, so it must not be described as a plaintext RAM source pointer. The initializer's26020000 corresponds to length512 under this command encoding;0x800 bytes are subsequently copied into the radio buffer. The general generator advances output by the commanded chunk length; the2048-byte copy may be a capacity-sized copy rather than fourfold expansion. No expansion ratio is established. Generic AES-CTR of zero plaintext is therefore not a verified radio STS implementation. Evidence: rose-uwbsec-stream-generation.asm. An unrelated newer Asahi AES engine register map was checked and differs; it was not used to label these opcodes.

NB hardware evidence in the actual ROSE image includes `bch.band_type == HMD_BAND_TYPE_NB && bch.band < HMD_BAND_NB_MAX`, `unii3_nch <= MAX_NB_UNII3_P25_FRAC_CHANNELS`, `unii5_nch <= MAX_NB_UNII5_P25_FRAC_CHANNELS`, `nb_phy_chain < HMD_RX_CHAIN2` and `nb_rad_chain < HMD_RX_CHAIN_MAX`. NB is a real additional PHY/radio chain and UNII3/5 channel manager, not a Bluetooth narrowband flag. Exact frequencies and Samsung equivalent remain unproved.

Further acquisition frame and STS count evidence: `LEGACY-ACQUISITION-AND-STS-BOUNDARY.md`.
