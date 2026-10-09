# LibrePods Find My and AirPods case UWB handoff

Updated: 2026-10-09. Branch: `findmy-account-uwb`. Fork: `elimirerp/librepods`.

## Goal and present result

Build a LibrePods app which signs into an Apple Account, obtains the owner's
AirPods case material, asks for root once through the phone's root manager,
and finds the case with actual UWB distance and directional arrows.

**Real case distance and arrows are not working yet.** The latest blocker is
matching Apple's acquisition STS on Samsung's internal UWB controller. The
owner Bluetooth link works. Samsung detects the scheduled case UWB burst, but
returns `STS failed` and zero timestamp bytes. Two explicit public-key STS
candidates tested immediately before this handoff failed in the same way.

| Area | Established | Remaining work |
| --- | --- | --- |
| Find My enrollment | Owned AirPods appeared in native Mac Find My; a separate right-bud location was observed | Reusable authenticated enrollment bridge for a genuinely new device |
| Android Apple login | Local native Anisette/ADI, SRP, 2FA and encrypted session storage implemented; sign-in flow fixed and exercised on phone earlier | Longer session refresh and broader device testing |
| App device list | Read clients and UI implemented | Legacy FMIP lists can omit these enrolled AirPods; don't use omission as proof of failure |
| Case identity | Exact decrypted case record, rolling address and current primary-key query established | Discovery across every lid/connection condition and unattended app lifecycle |
| Owner Bluetooth | Repeated live encrypted connections, FD44 protected init/config/start/deinit | Full app-contained live account-recovery-to-radio regression |
| UWB receiver | SR200D RFTEST, channel9/preamble10, controlled case detection | Matching STS and a usable case timestamp |
| SP0 transport | Low-power internal loopback returns exact synthetic PSDU and timestamps | Real case reply, FCS behavior, absolute scheduling and 3ms deadline |
| Finding UI | Apple-style green finding screen, smooth arrow, distance and stale-reading gates implemented | Connect a genuine ranging/AoA producer; production currently passes `reading=null` |

The target phone is an owned Samsung S25 Ultra **SM-S938U**, Android17/API37,
One UI9. Root was granted through KernelSU, including Shell and LibrePods. Root
is temporary and may need reapplying after boot; check it instead of assuming.
The app should request its own root grant. ADB is the current development path.
Use the phone's internal Bluetooth/UWB radios; no external USB hardware is part
of the requested direction. Preserve the existing AirPods enrollment and bonds.

AirPods Pro3 earbuds are A3063/A3064/A3065; case is **A3122**. Firmware9A348 and
genuine8B34 case code were analyzed. Historical device observations and downloaded
firmware are distinguished in the firmware reports; don't infer the currently
installed case build merely from an available archive.

## Where the code is

| Path | Contents |
| --- | --- |
| `android/app/src/main/java/me/kavishdevar/librepods/findmy/` | Account backend, local ADI/Anisette, encrypted store, recovery/device/enrollment/root status, HCI bridge and finding data model |
| `android/app/src/main/python/findmy_account/` | Apple login/session binding |
| `android/app/src/main/python/findmy_case_recovery/` | Read-only escrow/PCS/BeaconStore recovery and case selection |
| `android/app/src/main/python/findmy_owner_radio/` | Shared owner BLE protocol and in-app root transport integration |
| `android/app/src/main/python/findmy_devices/`, `findmy_enrollment/` | Read clients, conservative device/enrollment classification and payload preparation |
| `android/app/src/main/java/me/kavishdevar/librepods/presentation/screens/` | Apple Account, case recovery and precision-finding screens |
| `android/app/src/main/cpp/adi/` | Native ADI JNI and compatibility stubs, adapted with OpenTagViewer attribution |
| `android/app/src/debug/` | ADB instrumentation, bounded probes and explicitly simulated finding preview |
| `android/vendor/`, `android/scripts/` | Pinned FindMy source, Bumble mobile wheel, provenance/licenses and deterministic builders |
| `tools/uwb-protocol/` | Current host probes, codecs, ownership derivation, offline tests and evidence |
| `tools/uwb-protocol/evidence/` | Sanitized live metadata traces and this handoff's verification logs |
| `tools/uwb-protocol/research/` | Actual firmware/system binaries, complete compressed disassembly dumps, `.m` probes, original notes, instruction harnesses and provenance |
| `tools/findmy-enrollment/` | Offline bridge preparation and registration audit |
| `tools/findmy-enrollment/mac-lab-archive/` | Redacted historical Mac enrollment programs; fixed-target guards prevent reuse as an installer |
| `tools/findmy-research/` | Earlier nonroot/vendor/API research and primary-source manifest |

Read the current live evidence before historical notes. Archived reports retain
their original stage-specific unknowns; this handoff and subsequent live tests
supersede them. Actual firmware, analyzed system binaries and complete static
DEX/disassembly inputs are included at the user's explicit request. Credentials,
live account state, owner keys, case candidate files and owned identifiers are
excluded from Git. `tools/uwb-protocol/research/binary-input-manifest.json`
records both original and archived hashes; large text dumps use lossless gzip.
Run `python3 tools/uwb-protocol/research/verify_archived_inputs.py --unpack` from
the repository root to verify the inputs and restore their complete text files.
Historical advice to keep firmware local is superseded by this archive decision;
the included Apple/Samsung binaries retain their original ownership.

## Find My enrollment: what actually worked

Native Mac services first completed owner pairing for left bud, right bud and
case, saved CloudKit records and acknowledged pairing. Pairing alone didn't
make the device visible. The successful subsequent registration followed the
iOS26 `FMDExtAccessory` shape:

- UDID: SHA256 of `BT_` plus the genuine uppercase colon-separated audio MAC.
- Product type: SHA256 of `BT_76_8231`, rather than the plain product string.
- Configuration version: the exact server-returned string; it was `27` then.
- Retain the genuine existing group UUID and serial dictionary.
- Include the actual Mac reference in `otherDevices`, with `macosx_proxy`.
- Follow native extension defaults, including unknown RSSI timestamp `-1`.
- Register through the genuine accessory URL using refreshed Find My tokens.

HTTP204 was followed by actual native Find My row/map visibility and a right-bud
location. Earlier204 responses did not produce visibility. The combined trial
doesn't isolate which changed field caused success. `initClient` still listed
only the Mac, so that endpoint isn't an authoritative verification for this entry.
Reboot persistence, remote/offline finding and sound weren't established.

See `tools/findmy-enrollment/research/FindMy-registration-audit.md` and the
archived Mac README. The Android enrollment feature prepares/read-checks; it
does **not** implement a proven fresh Android-only owner pairing or submission
flow. Don't re-enroll the existing device. The successful route used a Mac;
no Windows-only enrollment was demonstrated. Ongoing use doesn't require the
historical registration helper to remain running.

## Account and case recovery

Local account login uses native Apple Music ADI/Anisette adapted from
OpenTagViewer plus pinned FindMy.py. ADI preparation is explicit, isolated in
`:adiprobe`, and guarded against native crashes. The account worker serializes
Python/native operations. Completed token state is stored with AndroidKeyStore
AES-GCM in `noBackupFilesDir`; passwords are removed after login. The Android
Unicorn wheel is an import-only stub which deliberately cannot emulate ARM;
the local ADI provider does not use emulation.

Login tokens alone don't decrypt the case. Read-only escrow recovery needs a
recoverable enrolled peer and that device's passcode, then Manatee/PCS service
keys and BeaconStore zone keys. Exact `MasterBeaconRecord` group plus structured
component position2 selects the case; positions0/1 identify buds. The audio MAC,
CoreBluetooth UUID, `fmCI` and CloudKit beacon UUID are different namespaces.

The development Mac helper recovered the exact existing case again for these
final tests. Selecting the actual host model **MacBookPro18,1** succeeded; the
newer-dated MacBookPro13,2 record didn't recover with that host's passcode. Choose
the matching enrolled device, not simply the newest record. No password or
passcode belongs in this handoff or in a command line.

`account_case_identity.py --stage candidates --serve` retains decoded material
only in memory for one hour and exposes fixed same-user socket operations.
It clears the account password after recovery. The0600 candidate output contains
public rotating address/index association metadata, not master secrets or LTKs.
The phone probe requires a fresh candidate document and obtains LTK privately
through the running helper. The account backend also has an in-app recovery
implementation; this final over-air proof used the development helper.

## Owner Bluetooth: solved development path

1. Exact stable case record → rolling public-key prefix6.
2. First address byte OR0xC0 → static-random BLE address.
3. Passive scan matches an exact current candidate; observed case frame type0x07.
4. Connect to FD44 and query the current primary key with0400/0402.
5. Resolve that public value to this owned case's exact primary branch.
6. Derive the temporary owner LTK using the recovered native intermediate/connect
   X9.63/SHA256 construction; provide it through the rooted HCI host.
7. Require actual HCI encryption completion, then use the protected characteristic
   `4F860006-943B-49EF-BED4-2F730304427A`.

A recovery/secondary advertisement address can still require the active **primary**
LTK. Guessing its LTK from its address branch caused earlier failures. Repeated
trials now resolve the branch explicitly. No SMP pairing, persistent replacement
bond, reset or firmware patch is used. `RootHciBridge` temporarily holds Android's
Bluetooth HAL and restores Bluetooth on EOF, error or its180s deadline. Don't
force-kill it before restoration.

Short passive scans can miss the case.30s scans succeeded where15s didn't;
that does not establish a fixed advertising interval. The earbuds are separate
records and haven't been given the same ranging proof as the case.

## Case commands and timing

The native Hawkeye frame starts with01 and a little-endian opcode. Accepted
legacy configuration uses verified US country code0, channel9/preamble10,
fresh8-byte RoseMAC and71ms ranging interval. Never send the four-byte internal
configuration directly as a complete GATT packet; use the recovered codec.

- 0701 initialization →0706 status0.
- 0702 configuration →0707 status0.
- 0703 scheduled start →0700 acknowledgement for0703, status0.
- 0708 is completion/failure, not start acceptance.
- 0704 stop and0705 deinit have separate responses; explicit deinit is verified.

Native start gating requires target BLE event counter greater than current+3,
with no modular-wrap handling shown. The host currently estimates the current
counter from elapsed time and the30ms BLE interval, then adds128 events. That
passes the case gate and produces the observed burst ~3.8s later, but isn't an
exact controller anchor. Real reply scheduling cannot use that estimate.

## Samsung UWB: measured controller and commands

The live chip reports **SR200D_A2_PROD**, firmware **1.64.4**, vendorUCI3.0.2.
Don't assume pulled `libsr200t_*` file names mean the live target is SR200T.
The closed chip generator implementation isn't present in the Android wrapper.

Development calls use Samsung `semuwb_extras` Binder transaction2, with signed
little-endian32-bit payload words. Host probes bound commands/lengths and require
an idle controller. RFTEST uses session ID0/typeD0. Session initialization returns
a generated4-byte handle on this target; subsequent commands use that handle.

Working receiver profile: channel9, BPRF, SP3, SFD0, preamble10, one64-symbol STS
segment. A silent8s baseline followed by the owned case burst yielded
acquisition1/sync1/SFD1 but STS0. `TEST_RX` explicitly returns status0x24:
`STATUS_CODE_RANGING_RX_PHY_STS_FAILED`, with six zero timestamp bytes.

### STS: exactly where work stopped

Apple ROSE initializer supplies:

```text
public AES key = 4a5572bc90798c8e518d2449092f1b55
RAM IV         = M0 || zero8
M0             = 00 || freshRoseMAC[1:8]
extra scalar   = 2056C539
FIFO words     = 16000000, keyPointer, 26020000, ivPointer, scalar, outputPointer
```

The generic generator advances the IV's last word as a big-endian16-byte block
counter; another numeric word passes separately. Original ARM instructions were
executed with synthetic RAM in Unicorn to verify descriptors/chunk continuation.
The hardware AES engine was **not** emulated. Strongest unproved hypothesis:
`M0[64] || sequence[32] || blockCounter[32]`. Scalar placement, endian order,
first-block increment, output bit ordering and PHY mapping remain unknown.

Important correction: the public MathWorks example uses that4a55 key, but
P802.15.4z-D8 AnnexH.2 uses key
`14148674d1d336aaf86050a814eb220f`. Related NXP documentation says E503 IEEE
selects AnnexH key **and input**. Therefore IEEE preset1 isn't a proven Apple
key match. Actual SR200D effective preset data remain unverified.

Latest no-RF qualification succeeded for:

| Field | Result |
| --- | --- |
| TEST_CONFIG E503 | Presets0/proprietary and1/IEEE both set/read back |
| APP_CONFIG02 | Static0 and provisioned3 set/read back |
| APP_CONFIG27/28 | Synthetic vendor2B/static-IV6B set/read back |
| APP_CONFIG0A | Index0x2056C539 set/read back, wire little endian |
| APP_CONFIG45 | Public16-byte Apple key set/read back in both modes0 and3 |

**Storage acceptance doesn't establish generator use.** SESSION_KEY normally
belongs to provisioned STS; static RFTEST may ignore it or prioritize preset data.

Immediately before handoff, two real case trials used static0, that public key,
the fresh nonce-derived27/28 prefix, index0x2056C539 and preset0 or1. Both had
silent baselines, valid encrypted owner links and accepted case starts. Both
returned status0x24/zero timestamps at the expected burst time. Neither matched.
Byte-swapped index0x39C55620, index0, other prefix orders and provisioned-mode
over-air candidates were **not tested**. Avoid reporting them as ruled out.

See `tools/uwb-protocol/live-case-uwb-acquisition-evidence.md`, then
`research/uwb-protocol-agent/ROSE-STS-DESCRIPTORS.md` and
`SR200D-RFTEST-STATIC-STS-BOUNDARY.md`. The latter is an earlier static report;
its unverified setter/getter boundaries are superseded by the live qualification.

### SP0 loopback and the reply still needed

Initial loopback starts were accepted but immediately aborted with reason0x8A,
loopback TX power too high. Session attenuation65=127 didn't fix it. Exact
Samsung factory serialization exposed volatile channel9/calibration parameter04:
original antenna1 peak10/RMS27; temporary peak127/RMS127 fixed loopback.

The wrapper saves the exact original entry, starts an independent phone-side
50/60s restoration, lowers power, runs bounded tests, restores immediately and
verifies again after the watchdog. No OTP/flash command is used. Don't copy the
observed original values to another phone; read and save that phone's originals.

With native TX/RX markers124000/69 and default valid TX1/RX1:

| MAC_CFG70 | Supplied bytes | Result |
| --- | --- | --- |
|0|23, no manual FCS|status0, exact23-byte synthetic PSDU, timestamps, PHR0x0A5E|
|0|25, manual CRC16 appended|status0, exact25-byte PSDU including CRC, PHR0x0A66|
|2|23 or25|immediate idle/reason0x87, no loopback result|

MAC_CFG2 setter/readback accepts storage but SP0 operation rejects it. Old
factory TX2/RX3 is invalid on this board. The CRC check is reflected0x8408,
init0; `123456789` →0x2189. Loopback doesn't independently prove over-air FCS
checking/appending. The TX integer timestamp equals the supplied marker124000,
so it may be an echo; absolute scheduling/time units aren't established.

Even after a secure case timestamp is obtained, the next requirement is the
native custom SP0 reply about3ms later, using the controller's time domain.
ADB round trips or host sleep won't meet that requirement reliably. No delayed
case reply, real two-way range, or real azimuth has been demonstrated.

## Resume commands

Use Python3.12, JDK21, Android SDK37 and NDK30.0.14904198. Configure your SDK
path locally; `local.properties` isn't committed. Gradle's default build Python
is `python3.12`, overridable with `-PfindMyBuildPython=/path/to/python3.12`.

```sh
cd android
./gradlew :app:assembleFossDebug -PfindMyBuildPython=/path/to/python3.12
```

The retained mobile Bumble wheel and FindMy source/provenance are included.
The build generates the FindMy and Unicorn import-stub wheels. ADI proprietary
libraries are fetched/validated on explicit app preparation, not bundled.

For host radio probes, install `tools/uwb-protocol/requirements.txt` into a local
venv. For account helpers/tests, generate/install the FindMy account wheel with
`android/scripts/build_findmy_account_wheel.py` and its declared dependencies.
Check authorized ADB, `su -c id`, KernelSU's app grant, UWB enabled and countryUS.
Determine the current HAL PID dynamically; never reuse an old PID or pairing port.

Current no-RF STS qualification:

```sh
python tools/uwb-protocol/samsung_uwb_sts_config_probe.py \
  --adb /path/to/adb --serial PHONE_ADB_SERIAL --restart-for-idle
```

Start `account_case_identity.py --stage candidates --serve` with your private
local Anisette identity/library cache, exact owned group/case selector and a new
private output. Enter secrets at its hidden prompts. Once ready, the controlled
public-key candidate trial is:

```sh
python tools/uwb-protocol/phone_case_acquisition_trial.py \
  --adb /path/to/adb --serial PHONE_ADB_SERIAL \
  --control /private/path/control.sock \
  --candidate-file /private/path/case-candidates.json \
  --start-case --receive-mode packet \
  --apple-sts-candidate --sts-preset 0 --sts-index 2056c539
```

The phone needs the root HCI bridge dex and an ARM64 Frida server at the helper
paths specified by the probes. Build the bridge from `RootHciBridge.java` with
the SDK's android.jar/javac/D8, or use the app's integrated APK root launcher.
For the current host tracing scripts, deploy the verified Frida server as
`/data/local/tmp/librepods-uwb-trace`; don't mistake its filename for custom
firmware. The probes bound its lifetime and remove their forwarding endpoint.

The portable low-power loopback wrapper is:

```sh
python tools/uwb-protocol/run_low_power_loopback.py \
  --adb /path/to/adb --serial PHONE_ADB_SERIAL \
  --backup /private/path/new-original-power.json --matrix
```

It requires a new backup path and verifies restoration. The original equivalent
wrapper was run on hardware; the portable copy was syntax-checked, not rerun.

## Suggested next work, in order

1. Establish **effective** SR200D RFTEST key/IV control. Use a demonstrable
   correlation/generator oracle or exact controller evidence; GET/SET alone
   is insufficient. Check E503 priority over ordinary27/28/0A/45 fields.
2. Decode the ROSE0x26 AES descriptor or obtain native generated bytes for
   known public key/IV/scalar. Decrypting such AES output would settle counter
   placement. Software AES with an assumed layout isn't an independent oracle.
3. Use only a finite set of source-supported counter/prefix hypotheses and
   controlled silent-baseline/case-burst trials. Current tool supports native,
   byte-swapped and zero index. Record failures without claiming every key or
   frame possibility is excluded.
4. Once timestamps work, establish marker epoch/units and implement the case's
   custom3ms SP0 reply below host/ADB timing. Validate FCS on air and actual
   repeated distance before adding measurements to the app.
5. Establish Samsung's calibrated azimuth/elevation output and phone-relative
   bearing, then feed real, fresh `FindingReading` values to the existing UI.
6. Finish the independent new-device enrollment bridge and improve device-list
   reliability without resetting the already enrolled AirPods.

Modern NBAMMS and ordinary FiRa are distinct paths. Shared channels/preambles or
Android ranging support don't establish Apple mode compatibility. Bluetooth
root solved the owner-key delivery obstacle; it doesn't solve UWB waveform or
timing compatibility. No arbitrary firmware writes are justified by this work.

## Verification and shutdown at handoff

- 39 existing host protocol tests passed.
- 109 existing app Python tests passed with warnings treated as errors.
- 11 existing enrollment bridge tests passed.
- `:app:assembleFossDebug` passed on JDK21/SDK37, producing the debug APK.
- Live STS storage/readback qualification and both final case trials completed.
- Both final case tasks and RFTEST sessions deinitialized; Bluetooth restored.
- Original UWB power had been restored and verified after every low-power trial.
- No real distance/angle is claimed; production UI remains awaiting real readings.

Verification logs are in `tools/uwb-protocol/evidence/`. Temporary authenticated
case helper state is process-local and is stopped for this handoff. Normal root
manager grants and device enrollment remain available; credentials must be
provided afresh to a future helper. Actual firmware and analyzed binary inputs
are included under `tools/uwb-protocol/research/`, with verified hashes, complete
compressed text dumps and the original extraction/provenance scripts.
