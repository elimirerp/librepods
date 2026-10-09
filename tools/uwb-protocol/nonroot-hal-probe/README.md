# Nonroot Samsung Bluetooth HAL investigation

Tested 2026-10-09 on the connected SM-S938U, Android 17 / API 37, SELinux
enforcing, ADB shell UID 2000. This is research tooling, not an implemented
LibrePods ranging feature. No successful encrypted case connection or UWB
ranging is claimed.

## Live findings

The stable AIDL service `android.hardware.bluetooth.IBluetoothHci/default`
answers version and hash queries from shell. It reports version 1 and hash
`f0eb2eb6d3b970cef8fb1b6e22c4ec39a4da5119`, matching the frozen AOSP interface.
That interface contains `sendHciCommand`, but reachability alone does not give
shell a usable independent controller session.

We queried the running phone's SELinux decisions through
`android.os.SELinux.checkSELinuxAccess`:

| Source → target | Binder call | Binder object transfer |
| --- | --- | --- |
| shell → hal_bluetooth_default | allowed | denied |
| hal_bluetooth_default → shell | denied | denied |
| bluetooth → hal_bluetooth_default | allowed | allowed |
| hal_bluetooth_default → bluetooth | allowed | allowed |
| untrusted_app → hal_bluetooth_default | denied | denied |
| hal_bluetooth_default → untrusted_app | denied | denied |
| runas_app → hal_bluetooth_default | denied | denied |
| hal_bluetooth_default → runas_app | denied | denied |

The Bluetooth-domain positive controls succeeded, distinguishing these denials
from a universally failing policy-query API. The app's observed domain was
`untrusted_app`; `run-as` used `runas_app`. App-domain table entries use the base
contexts; the eligibility guard queries its exact current process context.
The kernel policy and platform/vendor CIL files were copied for local analysis;
no security policy was modified.

### Exclusive controller trial

Ordinary Bluetooth disable, even with background scanning temporarily off,
left the adapter in `BLE_ON` because background clients re-enabled BLE.
The phone's decompiled `IBluetoothManager.shutdown(boolean, AttributionSource)`
exposes Samsung's temporary DUT-client gate. Calling it from shell with true
suppressed those clients and reached genuine `STATE_OFF` (10).

With Android Bluetooth OFF, the probe verified the HAL hash, created a
VINTF-stable callback, and called `initialize(callback)`. The transaction raised
`DeadObjectException`; no initialization callback arrived and no HCI command
was sent. The HAL remained PID 2069, with its original start time. Together
with the live permission decisions, this identifies the missing Binder
callback permissions, rather than evidence of a successful HAL session.

The wrapper then called `shutdown(false)`, restored the original background
scan setting (1), and re-enabled Bluetooth. State 12 (ON) was verified. No bond
creation/removal, key-store write, reset, firmware update, or Find My account
mutation occurred.

The final probe adds a policy preflight. On this phone the wrapper now exits 3
**before changing Bluetooth settings**. That behavior was exercised live.

## Other interfaces inspected

- `BluetoothAdapter.getVendorFile/writeVendorFile` call the manager's
  `readFile/writeFile`. Its legacy implementation checks for UID 1000 or 1002.
  The newer server wrapper also has a privileged-permission gate and delegates
  across a server thread, so the legacy UID check alone is not proof that every
  call through the newer wrapper is unavailable. No key-file ID was identified.
- `ISehBluetooth.readFile(byte)` is transaction 2. A read-only invalid-ID (-1)
  probe returned an empty string. This is not proof of arbitrary file access
  or a key-import capability. No file-write transaction was sent.
- The publicly available Qualcomm BtTpi reference implementation constructs
  fixed vendor power/coexistence commands; it does not expose an arbitrary
  standard-HCI opcode parameter. It is a reference version, not the exact
  Samsung AIDL implementation. Only the service's presence was checked live.
- Direct `sendHciCommand` beside Android's active host would bypass its command
  queue. AOSP aborts on unexpected command replies, and this phone's native
  image contains the corresponding checks/log strings. No direct command was
  injected into the active stack.

Shizuku running as shell inherits the shell SELinux restrictions above. A
callable API inside an already-authorized service would still be a possible
research direction; none audited so far accepts an arbitrary existing owner
LTK. This does not prove every possible nonroot method impossible.

## PRNG / pairing idea

The case-side audit in `../case-identity-evidence.md` reconstructs new-pairing
rejection while enrolled, plus separate stored-bond and rotating Find My key
selection paths. Its instruction emulation is not a live RF result.

Changing a random seed would not by itself select a specified existing owner
key. Legacy SMP's short-term key is AES under the temporary key, with inputs
from both peers; Secure Connections derives its LTK from ECDH material and
both peers' inputs. Android's corresponding native SMP routines use controller
randomness and protected stack state. No nonroot caller-controlled PRNG or
arbitrary final-key setter was found. Even controlling a pairing input would
not remove the case's enrolled-state rejection of fresh pairing.

The already-derived owner LTK remains the target. A matching stored case bond
is a real alternate branch, but a bonded audio-device entry alone does not
prove that Samsung holds that case bond.

The updated debug `bonded_target` probe ran successfully after building and
installing the APK. It reported 8 total bonds, 1 named AirPods entry (dual-mode,
with cached audio services), 0 AirPods entries named Find My, and 0 exact bond
matches against 83 cached public case candidate addresses. This is a metadata
comparison, not a fresh case scan or an examination of secret bond keys. An
alternate identity address remains possible. Results are in the local
`bond-inventory.json`; no names or addresses were emitted.

## Tool behavior and reproduction

### Vendor API follow-up, 2026-10-09

`VendorServiceProbe.java` successfully used the **running Android Bluetooth
host**, as ADB shell UID 2000, to register a vendor-command callback and send
`LE_Get_Vendor_Capabilities` (OCF `0x153`, empty parameters). Its callback
reported status **0** and **25 response bytes**. The probe unregistered both
callbacks and verified adapter state **12 / ON** afterward. This establishes a
working command-and-response path without taking ownership of the HAL.

The same probe submitted the full standard encryption opcode `0x2019` with
empty parameters. The Java API rejected it with `IllegalArgumentException`;
no encryption request reached the controller. Static inspection of this
phone's `AdapterServiceBinder` shows it permits OCFs `0..0x3ff`, excluding
`0x150..0x15f` except `0x153`. The native path adds the vendor OGF (`0xfc00`).
Passing an encryption command through that API therefore requires an actual
vendor equivalent or wrapper; changing the opcode number alone is insufficient.

The route requires `BLUETOOTH_PRIVILEGED`, which this phone's ADB shell holds.
A LibrePods integration could delegate to a shell helper (for example through
Shizuku). The normal app has not acquired this permission, and no Shizuku
integration or owner-key import is demonstrated by this probe.

Five Samsung APKs were pulled from the running build and their DEX methods
inspected: Bluetooth Agent, Hardware Module Test, Factory App, UWB Test, and
Factory Keystring. Bluetooth Agent's `BluetoothBDTestService.onStart` identifies
vendor file **ID 0** as the local Bluetooth address file, `bt_addr`. Its RF and
channel-sounding tests call `sendRawHci`, whose native implementation was
previously found disabled in this shipping build. The inspected call sites did
not expose an LTK setter.

The read-only `address-file` probe then called ID 0 through both
`ISehBluetooth.readFile` and `IBluetoothManager.readFile`. Both returned equal
17-character strings; the actual address was neither printed nor saved.
**This corrects the earlier access uncertainty:** shell can read this known
file through the current manager wrapper despite the legacy method's UID
check. This is not arbitrary file access. No write was attempted, and no key
file ID has been identified.

Vendor metadata queries returned Samsung Bluetooth AIDL v1 and Qualcomm
BtTpi AIDL v3. The older public Qualcomm BtTpi reference is therefore not proof
of the complete current interface. A further 42 Qualcomm reference source
files covering factory tools and XPAN were inspected. The XPAN LTK path consumes
standard `0x2019` internally; its similarly named C++ encryption function is not
a discovered callable key-import API. No usable vendor encryption opcode was
identified in this pass.

The phone reports Hamilton firmware. A public Linux `hmtbtfw20.tlv` reference
was initially downloaded for offline inspection; it has a different build
string. The exact phone image was subsequently obtained as described below.
No firmware was uploaded, flashed, or modified.

Evidence is saved locally under
`work/phone-uwb/nonroot-system-api/vendor-audit/` (relative to the parent
workspace): `live-vendor-probe.jsonl`, `live-address-file.jsonl`, package
entrypoint summaries, and SHA-256 package provenance. Proprietary APKs and
reference binaries remain outside the fork.

Build and run the vendor probe:

```sh
bash build-vendor.sh /absolute/path/to/vendor-probe-build
adb -s "$serial" push /absolute/path/to/vendor-probe-build/dex/classes.dex /data/local/tmp/librepods-vendor-service.dex
adb -s "$serial" shell 'CLASSPATH=/data/local/tmp/librepods-vendor-service.dex app_process /system/bin VendorServiceProbe capabilities'
adb -s "$serial" shell 'CLASSPATH=/data/local/tmp/librepods-vendor-service.dex app_process /system/bin VendorServiceProbe address-file'
adb -s "$serial" shell 'CLASSPATH=/data/local/tmp/librepods-vendor-service.dex app_process /system/bin VendorServiceProbe firmware-version'
```

The source accepts only those three modes and takes no key or arbitrary opcode.
It does not scan, pair, change adapter settings, or write vendor files.

Reference: [AOSP vendor-capabilities command definition](https://source.android.com/docs/core/connect/bluetooth/hci_requirements#vendor-specific_capabilities).

### Exact Qualcomm firmware audit and stopping decision

The user requested one bounded investigation of the exact vendor-command
handlers, continuing only if it produced a concrete key-loading route.
**That threshold was not met. Stop this nonroot approach unless new evidence
provides a specific callable key-loading mechanism.** This conclusion does not
claim that every undocumented command is impossible. Find My enrollment and
case-identity work are independent of this unsuccessful ranging route.

#### Exact image obtained and matched to the live controller

`adb pull` was denied, but the device's vendor policy permits the **shell**
domain to read `vendor_firmware_file`. Reading the specific file via
`adb exec-out cat /vendor/firmware/hmtbtfw20.tlv` succeeded. A phone-side
`sha256sum` matched the downloaded bytes:

- 269,600 bytes.
- SHA-256 `ff39d6a312648e64f81c933f324c2858c6bb1ee93a71d5440604e2230379fb37`.
- Embedded build `BTFW.HAMILTON_C.2.0.1-00353-PATCHZ-2.90463.51`, matching
  `vendor.bluetooth_fw_ver`.
- TLV header: product `0x19`, ROM `0x0200`, patch `0x7c95`.

The read-only `firmware-version` probe used vendor opcode `0xfc00`, subcommand
`0x19`, through the working Android vendor API. The controller returned 15
bytes with prefix `00 19 0c` and patch/ROM versions **`0x7c95` / `0x0200`**,
matching the extracted header. Callback cleanup succeeded and Bluetooth
remained ON. This confirms version identity, not encryption functionality.

#### Recovered dispatch and its limits

The image contains Thumb code linked at file offset `0x28` → address
`0x20010`. Startup copies initialized data from `0x618e0` to `0x61ce8`.
The patched vendor table is at runtime `0x61da8` (file-backed source `0x619a0`):
26 sorted records of `{uint16 OCF, uint8 parameter_length, uint8 flags,
uint32 handler}`. The actual lookup at `0x26e84` masks the OCF to ten bits and
uses binary search. Dispatchers at `0x26f04` and `0x26fb8` select the handler.

`audit_qualcomm_hamilton.py` executes that original lookup in Unicorn for
all 1,024 OCFs, both bare and with vendor OGF added: **2,048 cases passed**.
Initialized table memory is supplied from the image; no radio or encryption
is emulated. The emulator result validates this dispatch reconstruction only.

Selected candidate traces:

| Opcode | Entry | Observed behavior / remaining limit |
| --- | --- | --- |
| `0xfc19` | `0x25ee0` | Formats a controller-statistics response; changing the standard encryption opcode's OGF to vendor does not turn this into LE Start Encryption. |
| `0xfc3c` | `0x26bf0` | Subcommand 0 copies up to 24 bytes into a fixed global buffer at `0x628a7`; subcommand 1 reads it back. No connection handle or encryption call appears in this handler. No evidence connects the buffer to owner-LTK loading; its broader consumers are not fully resolved. No buffer write was attempted. |
| `0xfc51` | `0x5362c` | Dispatches selected subcommands in the patch, with other subcommands delegated to ROM `0x100e9af9` or an indirect function pointer. No demonstrated key-import command. |
| `0xfcda` | `0x258a8` | Multiplexes power/coexistence operations, including the BtTpi-related branches. Other branches delegate to ROM. No arbitrary standard-HCI tunnel identified. |
| `0xfcdd` | `0x24e08` | Produces patch/build diagnostic text. |
| `0xfd7d` | `0x25234` | Builds a fixed capability-style response; does not consume caller key bytes. |
| `0xfe00` | `0x26b94` | The implemented subcommand sets four configuration bytes; no 16-byte key input. |
| `0xffff` | `0x26470` | Patched subcommands `0x23` and `0x24` set small configuration values; other branches delegate to ROM. |

Other table entries and addresses are preserved in the generated audit JSON.
They are mapped entrypoints, not a claim that every underlying routine has
been fully reconstructed.

**The file is a RAM patch, not the full chip ROM.** Unmatched vendor commands
fall through explicit trampolines to `0x1001a12d` and `0x1001a1a1`, outside the
image. Several patched handlers similarly delegate unknown subcommands to
ROM. No exact ROM image or verified, nonroot ROM-read command was obtained.
Blindly sending unrelated chips' memory/debug opcodes would not establish a
key-loading route and was not done.

Thus we obtained and inspected the exact deployed patch, verified its dispatch,
and matched its version live, but **did not find a concrete owner-key loader or
standard-encryption tunnel**. There is still no encrypted owner connection or
UWB ranging on Samsung. Further unrestricted ROM research falls outside the
agreed stopping criterion.

Reproduce the offline dispatch verification (with `capstone` and `unicorn`):

```sh
python audit_qualcomm_hamilton.py /private/path/exact-hmtbtfw20.tlv --output /private/path/exact-hamilton-dispatch.json
```

The audit rejects other firmware hashes. Local evidence is in the previously
listed `vendor-audit/` directory: `exact-hmtbtfw20.tlv`,
`exact-hamilton-linear.asm`, `exact-hamilton-dispatch.json`, and
`live-exact-firmware-version.jsonl`. The raw firmware remains outside the fork.
The linear listing contains data as well as code and is not itself a recovered
control-flow graph.

Format and version-command references:
[Linux Qualcomm TLV definitions](https://github.com/torvalds/linux/blob/master/drivers/bluetooth/btqca.h)
and [Qualcomm version request implementation](https://github.com/torvalds/linux/blob/master/drivers/bluetooth/btqca.c).

`NonRootHalProbe.java` supports:

- `status`: adapter state, shell UID, and HAL hash verification.
- `policy`: read-only access-decision matrix.
- `eligible`: exact caller-context preflight; nonzero if callback access fails.
- `exclusive`: requires STATE_OFF and a passing preflight; initialize, read
  local version once, close. It accepts no arbitrary HCI command or key.
- `hold-off` / `shutdown`: Samsung-specific temporary manager gate; use only
  through the restoring wrapper, not as unattended standalone commands.

Build with JDK 21 and Android SDK 37.0 / build-tools 37.0.0:

```sh
bash build.sh /absolute/path/to/probe-build
adb -s "$serial" push /absolute/path/to/probe-build/dex/classes.dex /data/local/tmp/librepods-nonroot-hal.dex
adb -s "$serial" shell 'CLASSPATH=/data/local/tmp/librepods-nonroot-hal.dex app_process /system/bin NonRootHalProbe policy'
```

`exclusive-trial.sh` requires an initially ON adapter, uses fixed deadlines,
restores its settings with a shell trap, and refuses the trial when policy
already rules it out. The final guarded script was deployed to the phone.

Local evidence outside the repository is in
`work/phone-uwb/nonroot-system-api/`, including `live-policy-results.json`,
`guard-check.txt`, the phone's service DEX, kernel policy, and reference sources.
Proprietary firmware and platform binaries are not included in this directory.

## Primary references

- [AOSP frozen Bluetooth HAL v1](https://android.googlesource.com/platform/hardware/interfaces/+/refs/heads/main/bluetooth/aidl/aidl_api/android.hardware.bluetooth/1/android/hardware/bluetooth/IBluetoothHci.aidl)
- [AOSP HCI command response handling](https://android.googlesource.com/platform/packages/modules/Bluetooth/+/refs/heads/main/system/gd/hci/hci_layer.cc)
- [Bumble Android Remote HCI](https://google.github.io/bumble/extras/android_remote_hci.html) documents exclusive HAL ownership and its usual root/SELinux prerequisites.
- [Bluetooth Security Manager specification](https://www.bluetooth.com/wp-content/uploads/Files/Specification/HTML/Core-54/out/en/host/security-manager-specification.html), sections 2.2.4 and 2.2.7.
- [AOSP native SMP key generation](https://android.googlesource.com/platform/packages/modules/Bluetooth/+/refs/heads/main/system/stack/smp/smp_keys.cc)
