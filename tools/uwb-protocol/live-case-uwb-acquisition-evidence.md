# Live owned-case UWB acquisition — 2026-10-09

Target: owned AirPods Pro3 A3122 case, rooted Samsung S25 Ultra SM-S938U,
SR200D_A2_PROD firmware1.64.4. This is acquisition evidence, not successful
secure ranging, decoded case identity, distance, or direction.

## Controlled comparison

The same fresh encrypted owner BLE connection and accepted US legacy profile
were held throughout: channel9, acquisition/tracking preamble10, interval71ms.
Current PRIMARY material was resolved through the native open owner-information
query. No SMP, persistent bond, pairing reset, enrollment mutation, or phone UWB
transmit command was used.

Samsung RFTEST sessionID0/typeD0 was configured SP3, BPRF, 64-symbol preamble,
SFD0, one64-symbol STS segment. The verified factory PER_RX command used its
receive comparison referenceABCDABCD. Each observation was bounded by an8-second
host deadline, STOP and session deinit; `T_WIN` is not claimed as a total deadline.

| Condition | Observation |
|---|---|
| Case configured but not started | No PER/RX notification during8seconds |
| Same case, single0703 start | PER notification: status0, acquisitionDetected2, acquisitionRejected1, syncCirReady1, sfdFound1, stsFound0 |

The target BLE counter583 was a **host elapsed-time estimate**,128events ahead
at30ms per event. It was not read from the controller. The receiver notification
arrived **3.842292seconds after receive start**, closely matching the3.84-second
future margin. The case emitted0708(status0,endReason1) within2ms of that
notification. This timing and the silent baseline strongly support reception of
the owned case's scheduled UWB transmission. No decoded RF identity was obtained,
so this is controlled causal evidence rather than cryptographic attribution.

An earlier single-start trial independently observed acquisition1/sync1/SFD1,
STS0. It had no contemporaneous baseline and is supporting evidence only.

## What remains unresolved

- `stsFound=0` does not establish a matching secure timestamp sequence. RFTEST
  counter semantics and defaults also limit how much that zero alone proves.
- No raw successful RX notification, decoded PSDU, valid secure timestamp,
  two-way range, distance, or AoA reading was obtained.
- Apple acquisition's fixed AES key appears in a MathWorks example, but differs
  from the IEEE P802.15.4z/D8 Annex H key named by NXP's test selector. Apple's
  address-derived IV and separate opaque FIFO scalar have not been reproduced
  on Samsung. NXP's IEEE test selector fixes both key and input data; the exact
  SR200D preset material has not been independently recovered.
- The native23-byte kind31 reply and roughly3ms reply slot are instruction-backed;
  a matching Samsung timestamp epoch, automatic reply, hardware FCS behavior and
  sufficiently fast scheduled transmit have not been demonstrated.

## Cleanup

Both started trials naturally completed before cleanup. The case's explicit
0705 deinit produced070B/status0, then the owner BLE link disconnected and normal
Android Bluetooth was restored. Samsung PER STOP returned1 after its result;
its session deinit returned0 and session count returned0. The trace was unloaded,
detached, bounded server expired, and forwarding was removed. UWB remained enabled.

An initial deinit-only test also received070B/status0 but the host fixture waiter
incorrectly required an ACK request field on that completion and reported a
timeout. The waiter was corrected and checked against the native ACK,
counter-rejection and deinit frames before the started trials. That initial
timeout was a harness error, not a case deinit rejection.

## Reproduction and artifacts

- `phone_case_acquisition_trial.py`: fresh owner connection, optional single
  start, paired baseline/on observations, strict completion metadata, cleanup.
- `samsung_uwb_rx_probe.py`: receiver-only UCI allowlist and metadata hook; never
  exports PSDU, vendor data or owner key material.
- `phone_owner_link.py`: research callback after accepted configuration; the
  normal CLI still never sends a ranging start.
- `case-ranging-stop-cleanup-evidence.md` and
  `case-legacy-start-response-evidence.md`: original firmware cleanup/start gates.
- Live logs under `work/phone-uwb/root-assessment/`:
  `case-legacy-receive-start-trial.log` and
  `case-legacy-controlled-receive-trial.log`.

The app's production distance and arrow remain gated on real ranging data.

## Follow-up: nearby reception and SP0 loopback — 2026-10-09

The report-driven timestamp probe now preserves the six timestamp bytes even
on failed TEST_RX notifications. `phone_case_acquisition_trial.py` supports
`--receive-mode packet` alongside its original PER counter test.

Moving the case from weak BLE reception (-81dBm) to roughly0.5–1m from the phone
gave -27/-29dBm. Each fresh owner connection successfully encrypted and accepted
the same legacy configuration and single0703 start. The nearby controlled PER
test again had a silent8s baseline, followed by acquisition1/sync1/SFD1/STS0 at
3.845211s after receiver start. This reproduces controlled reception.

The nearby TEST_RX experiment had a silent baseline and a20-byte notification
3.824137s after receiver start: status0x24 and timestamp bytes000000000000.
The exact Samsung `StatusCode` class identifies0x24 as
`STATUS_CODE_RANGING_RX_PHY_STS_FAILED` (DEX file line607207). This path does not
provide a usable timestamp for the proposed STS-independent reply. The earlier
weak-signal TEST_RX attempt produced no notification and alone was inconclusive.
Every case trial explicitly deinitialized and restored normal Bluetooth.

### Exact-chip configuration qualification

- RFTEST E503 getter succeeds and returns1 (IEEE selector). This establishes the
  selector's presence/current value, not its effective key/input or an override.
- Ordinary vendor/static-IV getters27/28 succeed and return zero defaults. No
  Apple key/IV was installed in that earlier read-only trial and no PHY
  consumption was demonstrated.
- NXP vendor MAC_CFG70 getter/setter/readback succeeds for0 and2. The older
  Samsung `AppConfigParamNames` string19 does not invalidate this live70 route.
- Native Samsung factory antenna_caseNo1 (TX2/RX3) is rejected with parameter
  status5. Actual default getters return TX1 and RX1. The retained board config
  defines only TX1; an old factory choice is not a valid target-board choice.
- Native loopback markers124000/69 are accepted and read back. Their time domain
  and their use as an absolute receive-relative scheduling interface are unproved.

### STS configuration qualification, subsequent isolated session

`samsung-sts-config-qualification.log` records a live no-RF experiment using
`samsung_uwb_sts_config_probe.py`. Both documented E503 presets0 and1 accepted
and read back exactly. Ordinary STS_CONFIG02, VENDOR_ID27, STATIC_STS_IV28 and
STS_INDEX0A accepted a public synthetic upper64 and the native public scalar
2056C539, with exact readback. SESSION_KEY45 accepted and returned the public
Apple acquisition key in both staticSTS0 and provisionedSTS3. The initial
SESSION_KEY getter had returned length0.

This proves configuration storage/acceptance, including a16-byte key field in
static RFTEST. It does **not** show that the RFTEST generator consumes that key,
which preset has priority, the AES input layout, or Apple STS correlation.
No transmit or receive command was issued. The temporary session was deinitialized
and zero sessions confirmed. UWB was restored to enabled after the initial
service restart used to clear an unrelated session.

The receive driver now has an explicit finite public-key hypothesis option,
kept out of the default profile. It derives upper64 from the fresh Rose nonce,
sets the public acquisition key, chooses documented preset0/1 and index0,
2056C539 or39C55620, and requires every field to read back before receiving.
These are unverified candidate mappings, not a reconstructed native generator.

### First explicit public-key STS case trials

Both documented presets were subsequently tested on the real owned case with
fresh independent Rose nonces. For each preset, the receiver first observed an
8s silent baseline, then a scheduled case burst using the same receiver profile.
Static STS mode0, SESSION_KEY45 equal to the public Apple acquisition key,
VENDOR_ID27/STATIC_STS_IV28 from the fresh nonce, and index0x2056C539 all read back
exactly. Preset0 and preset1 both produced TEST_RX status0x24 (STS failed),
20-byte notifications and timestamp bytes000000000000, approximately3.817s and
3.810s after receive start respectively. Both case0703 requests acknowledged
status0 and completed with0708 status0/reason1.

The native-scalar mapping therefore did not yield a working STS match under
either preset. This does not isolate whether the key/IV fields are ignored,
the upper64/scalar layout differs, block indexing differs, or another PHY
detail remains wrong. Byte-swapped and zero-index candidates have **not** been
tested. All sessions/case tasks were explicitly deinitialized; Bluetooth was
restored in each trial. No distance or direction was obtained.

Public metadata logs are retained in `evidence/case-sts-native-preset0-trial.jsonl`,
`evidence/case-sts-native-preset1-trial.jsonl` and
`evidence/samsung-sts-config-qualification.jsonl`. Earlier local `.log` filenames
below correspond to the same stems under `evidence/` with the `.jsonl` extension.

### Resolving the loopback abort

The initial four23/25-byte SP0 loopback conditions accepted commands but returned
no result. A broader metadata trace captured immediate IDLE with reason0x8A.
The related NXP SR150 manual identifies that reason as loopback TX power too high
(page29), and documents an RMS gain-index minimum80 for loopback (page74).
The actual channel9/antenna1 entry read peak10/RMS27. Per-session attenuation65
was accepted/read back at127 but did not remove the0x8A abort.

Following the exact Samsung factory `setTxPower` serializer, a bounded trial
saved the original channel9 power entry, selected peak127/RMS127, and installed
an independent phone-side50s original-value restore. With native markers and
default antennas, the23-byte SP0 loopback then produced status0, exact synthetic
PSDU23, nonzero TX/RX timestamp fields, and PHR raw2654. This proves this internal
radio's loopback path works after lowering power. It does not prove over-air FCS
behavior, a secure timestamp, distance to the case, or usable absolute scheduling.

Original power was restored immediately after the probe and verified byte for
byte. The independent restore also completed and exact original readback was
verified. No OTP/flash command or enrollment mutation was issued.

Artifacts in `work/phone-uwb/root-assessment/`:
`case-rx-timestamp-trial.log`, `case-nearby-per-control-trial.log`,
`case-nearby-rx-timestamp-trial.log`, `samsung-sp0-framing-trial.log`,
`samsung-sp0-framing-control-trial.log`, `samsung-native-sp0-loopback-trial.log`,
`samsung-native-marker-loopback-trial.log`, `samsung-attenuated-sp0-loopback-trial.log`,
`samsung-low-power-sp0-loopback-trial.log`, and
`channel9-loopback-power-backup.json`.

### Low-power framing matrix

Repeating the four conditions with the same backed-up/restored low-power entry
gave the following live results (`samsung-low-power-sp0-framing-matrix.log`):

| MAC_CFG | Supplied bytes | Result | Returned PSDU | Raw PHR |
|---|---:|---|---:|---:|
|0|23, no manual FCS|LOOPBACK status0|23, exact bytes|2654 (0x0A5E)|
|0|25, appended software FCS|LOOPBACK status0|25, exact bytes|2662 (0x0A66)|
|2|23|Immediate IDLE reason0x87; no loopback result|none|none|
|2|25|Immediate IDLE reason0x87; no loopback result|none|none|

The related NXP reason table names0x87 `ERROR_INVALID_MAC_CFG`. Thus acceptance
and readback of2 does not establish that it is usable for this SP0 test. Both
MAC_CFG0 results contain nonzero TX/RX timestamp fields and retain the supplied
payload including the manually appended footer. Their PHR words differ by8,
consistent with two extra bytes in the standard seven-bit length field at
bits2–8; that interpretation does not independently establish over-air CRC
generation/checking. Loopback can bypass MAC/FCS checks.

The software CRC16 passes the standard `123456789` check (0x2189) and yields
footerF054 for this fixed synthetic payload. That is not a production case
reply, and neither successful condition proves case acceptance or ranging.
The TX integer fields equal the configured marker124000; echoing that requested
value alone cannot establish an absolute hardware time domain. Actual delayed
case-reply scheduling remains unverified, especially since the failed case RX
returned zero timestamp bytes.

Both low-power experiments restored the original channel9 power entry
`0001040601010a001b00` and verified it immediately and after the independent
phone-side restore. Session count returned0 and trace forwarding was removed.
Final phone checks showed UWB enabled, normal Bluetooth enabled, and a successful
device-info response. Nonunique firmware metadata is retained in
`samsung-post-framing-firmware-info.json`.
