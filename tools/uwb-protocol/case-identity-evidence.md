# Case identity: static evidence and live boundary

This records the distinction between an AirPods audio device, its case, and a
rotating Find My Bluetooth address. No live identifiers or keys belong here.

## Identifiers are not interchangeable

| Field | Established meaning | Remaining limit |
| --- | --- | --- |
| IOBluetooth address / cached `CBDevice` peripheral UUID | Existing paired audio/control device | Its live GATT service discovery completed without FD44 |
| `fmCI` | `CBDevice.findMyCaseIdentifier`, established by a synthetic XPC encode/decode fixture | Privately compared unequal to all three owned group's CloudKit master-beacon UUIDs; these namespaces must remain separate |
| `fmGI` | `CBDevice.findMyGroupIdentifier`, from the same fixture | A group does not select an individual case or bud |
| `SPCommandKey.address` | First six bytes of the rolling `SPBeaconingKey.key` | Requires the current owner's key record and index |
| Find My LE address | Above address with byte zero ORed with `0xC0` | Exact live Samsung advertisement matches confirmed for the selected case; ordinary GATT service discovery succeeded once; reliable connections and protected owner operations remain unproven |

The synthetic fixture never queries a real account or radio. The case identifier
is a stable selector; it is not itself a Bluetooth MAC address.

## Native path

In the inspected macOS SPOwner implementation,
`SPBeaconManager.connectionTokensForBeaconUUID:criteria:completion:` delegates to
the user-agent proxy's `commandKeysForUUID:withCriteria:completion:`. The latter
callback carries an array of command-key objects. The service is
`com.apple.icloud.searchpartyuseragent.beaconmanager`.

`SPCommandKey.address` at `0x1B878D304` extracts range `(0, 6)` from its
beaconing key. The iOS locationd `_retrievePeripheralForMaterial:isFindMyNetwork:`
path at `0x10147EEE4..0x10147EF10` sets the high two bits for Find My before
creating/retrieving a peripheral by its address. It does not depend on the
audio endpoint's cached CoreBluetooth UUID.

In the same iOS implementation, `connectionToken` is passed directly as `ltk`
to `initWithAddress:ltk:primaryIndex:secondaryIndex:`. The later connection
setup supplies its first 16 bytes through the temporary-LTK option. The
upstream token derivation is separate from this copy. `owner_link.py` now
implements the traced intermediate/connect X9.63 derivation and has synthetic
vectors checked against CommonCrypto. Live acceptance of that key is unproven.

`SPPeripheralConnectionMaterial` is a different structure containing IRK and
Bluetooth-address data. It must not be conflated with `SPCommandKey`.

## Live access result

One ordinary, bounded, read-only `allBeaconsWithCompletion:` request reached the
Mac's beacon-manager service. The service rejected it with XPC error 4097;
its log explicitly required `com.apple.icloud.searchpartyd.beaconmanager`.
No entitlement or system-security change was made. This limits the local
helper route, not the independent account protocol implementation.

## Account route and live case match

The pinned FindMy library implements encrypted CloudKit BeaconStore retrieval
and read-only escrow/keychain recovery. Account sign-in alone does not decrypt
the records: Manatee PCS keys are also needed. `MasterBeaconRecord` contains
the accessory key material and group relationship. An AirPods structured
`stableIdentifier` component position 2 denotes its case, while 0 and 1 denote
buds. `FindMyAccessory.current_mac_addresses()` derives bounded rolling address
candidates from the selected record.

`account_case_identity.py` selects the exact group and case, keeps credentials
and owner keys in memory, and emits a private candidate file for a separate
passive Android matcher. Live account recovery decrypted ten master records;
three matched the verified owned group and exactly one had component position2.
The current case uses a trailing `§` after its position. The parser accepts that
single terminator, while retaining strict role and group checks.

The Android debug probe initially received no Apple advertisements because fine
location was allowed only in the foreground. Starting MainActivity **inside**
instrumentation fixed this: the activity is restarted by instrumentation, so
launching it beforehand did not establish the required foreground state.

On 2026-10-09 UTC, a foreground scan over all three owned components matched an
address whose beacon UUID was privately confirmed equal to the selected case.
Two subsequent case-only scans matched the same derived candidate, at RSSI
-25 and -27, with four and two observations respectively. The case was beside
the phone; the earbuds were across the room. Identity follows the exact account
record and address match, not proximity or the Bluetooth display name.

A third 15-second case-only scan missed despite receiving other Apple packets.
Thus the identity derivation works, but a short passive scan does not guarantee
discovery. The matched Apple frame type is being measured; a type0x12-only
filter would have discarded the initial successful matches. No firmware
advertising interval has been established.

After extending the window to30 seconds, three fresh foreground scans all
matched the case. First detection was23.488s,0.154s and16.938s; observation
counts were1,4,1. All matched frame types were0x07, with RSSI -26,-26,-25.
The scanner restarted the app between attempts. This explains how a15-second
window can miss this case, without establishing a fixed advertising cadence.
Private branch reconciliation confirmed the matched address comes from the
**primary** chain at library branch index31; this is separate from the row's
sorted candidate ordinal. Future rows carry both keySequence and branchIndex.
These three successes alone did not establish detection through a future key
rotation. A subsequent match across one rotation is recorded below; detection
in every lid/connection state remains unproven.

## Reproducible foreground probe

`scan_case_identity.py` refreshes the authenticated helper's case candidates,
copies only the private public-address candidate file into the debug app, runs
the foreground scanner and emits sanitized counts/match metadata. It supports
one to five attempts and reopens the app after instrumentation finishes. It
does not make a GATT connection or start UWB. The helper must still be running;
this is currently a Mac-assisted development proof, not phone-only account
recovery.

```sh
python3 tools/uwb-protocol/scan_case_identity.py \
  --adb /absolute/path/to/adb --serial PHONE_ADB_SERIAL \
  --control /private/path/control.sock \
  --candidate-file /private/path/findmy-case-identity.json --attempts 3
```

Exact case identification is established, including one observed address
rotation. Reliable Bluetooth connections, protected GATT, and real UWB distance
are separate remaining gates.

## Live case GATT inventory

The Samsung connected using the BluetoothDevice from the exact matching scan
and completed service discovery (GATT status0). The case exposed FD44 and
4F860006-943B-49EF-BED4-2F730304427A with properties0x28 (write and indicate),
plus FD44 characteristics0001,0002 and0004 in the same UUID family.
This probe performed no characteristic reads/writes or ranging. It disconnected
and closed the GATT client afterward. A later capability handshake is a
separate step; service discovery alone does not prove authenticated owner access.

## Observed address rotation

The first capability probe matched a fresh case address at library observation
index32 after earlier matches at31. The unchanged bounded candidate mechanism
therefore recognized one live rotation. Its BLE connection then returned Android
GATT status147 before descriptor or characteristic writes. This does not prove
authentication failure. Subsequent connection probes require ScanResult's
connectable flag in addition to an exact owned-case address match; identity
scans continue reporting nonconnectable matches too.

## Host encryption trace

Static analysis on2026-10-09 connected iOS locationd's temporary owner LTK option
to the installed Mac bluetoothd's temporary key store and LE encryption call.
The native path uses a16-byte LTK, length16, and type marker2. The corresponding
central encryption branch supplies zero RAND and EDIV. This is link encryption,
not a characteristic to which an app should write the owner key.

The Mac daemon also filters FD44 from ordinary service-discovery replies without
the restricted-service entitlement. This explains missing Mac services without
invalidating the exact case identity. These are static host findings, not proof
of the case firmware's characteristic permissions. Samsung's status147 occurred
before a CCC/init exchange, so it cannot establish the need for encryption.

No supported nonroot Android API for installing this arbitrary LTK has been
found. The one successful discovery does not establish that UWB commands can
run without owner authentication. The firmware policy has since been traced
below; live encrypted owner access remains unproven.

## Case firmware encryption gate

Apple's official A3122 9A348 package includes readable case Bluetooth firmware
under `nerfthis/b747/nerfthis_b747user.bin` (NERF). The official A3064 8B34
combined package also explicitly identifies this case component. Its internal
NERF version is80.56.0.0, versus90.264.0.0 in9A348. The earlier installed-case
observation was8B34; neither downloaded image has been read back from hardware.
Firmware stays in the local research directory, outside this repository.

In9A348, the service initializer at0x3D058 reads FD44 from0x5DD92 and the reversed
vendor base UUID from0x5DD96. At0x3D2E0..0x3D322 it registers characteristic0006
and stores its handles beginning at service+0x3E. The GATT write dispatcher at
0x3C9F8 compares that handle and invokes configuration+0x40. The configured
Thumb function pointer at0x5FF80 is0x24009, identifying the handler at0x24008.

That handler checks Find My paired state, then calls the connection-state
getter with flag5 at0x24050..0x2405A. A false result logs "not encrypted, reject"
and returns an error before parsing the precision opcode. The connection
security callback at0x3CB50..0x3CB66 sets this flag following its "Conn secured"
event. Only after this gate does the jump table dispatch0701 to R1 initialization
at0x240E8. The gate also precedes0710 capability dispatch.

The8B34 NERF handler is also at0x24008 and contains the same gate and opcode
dispatch, with relocated callees and strings. This establishes the policy in
both downloaded versions. It is stronger evidence than a rejection string
alone, but does not decode Samsung status147 or prove a live key was accepted.

### Observed Apple route versus exclusive key requirement (initial audit)

The retained iOS owner connection code explicitly reads the connection
material's `ltk`, checks that its length is at least 16 bytes, and places its
first 16 bytes under `CBConnectPeripheralOptionUseTempLTK`. The option is omitted
when that length check fails; this is not evidence that such a connection can
perform owner ranging. The lower-stack consumption trace is from Mac
bluetoothd, not an independent trace of iOS bluetoothd.

The case handler above tests Find My paired state and a connection-encrypted
flag. It does not itself compare the key or identify its origin. These findings
establish Apple's explicit-key route and the case's encryption gate, but do not
yet establish that the derived owner LTK is the only possible way to satisfy
the gate. Excluding a normal BLE bond requires tracing the case's SMP pairing
policy and security-key selection, or an appropriately bounded live test.
Neither ordinary-bond acceptance nor an alternative authenticated route has
been demonstrated.

### Deeper firmware and iOS audit: new pairing rejected; stored bond exception

The subsequent 2026-10-09 audit reconstructs control flow and data movement from
instructions. Strings were navigation aids; the conclusions below do not rely
on log wording alone. This supersedes the initial uncertainty about the new
pairing policy above.

#### 1. New ordinary BLE pairing is rejected while enrolled

In 9A348, `0x3CBD4` initializes Peer Manager and registers callback `0x3CAFC`.
Its byte jump table maps event 5 (`PM_EVT_CONN_SEC_PARAMS_REQ`) to `0x3CB7E`.
At `0x3CB8A`, event+8 is loaded as the peer-parameters pointer. If nonzero,
`0x40334` returns bit 0 of the cached BA-paired state. This state is loaded from
the persisted pairing record by `0x402C8`. The precision gate's stronger
`0x40350` paired-and-enabled predicate implies this paired bit is set.

When both conditions hold, `0x3CB9E..0x3CBAA` tail-calls `0x2D9DC` with
`r0=conn_handle`, **`r1=0`**, and `r2=event.context`. This is
`pm_conn_sec_params_reply(handle, NULL, context)`: the wrapper enters
`0x2EC58`, writes NULL into the context's parameter pointer, and marks the reply
called. The security dispatcher's `0x2E26C` takes NULL parameters to status
**0x85**, then invokes SVC 0x7F (`sd_ble_gap_sec_params_reply`). The SDK defines
0x85 as Pairing Not Supported. This is a Nordic security status, not Android
GATT status 133.

Reconstructed logic (helper names inferred from SDK correspondence):

```c
on_peer_security_parameters_request(event) {
    if (event.peer_parameters != NULL && persisted_ba_paired()) {
        pm_conn_sec_params_reply(event.connection, NULL, event.context);
    }
}

smd_params_reply(connection, parameters, public_key) {
    // Other setup omitted; this is the traced NULL branch.
    if (parameters == NULL) {
        sd_ble_gap_sec_params_reply(connection, 0x85, NULL, &keyset);
    }
}
```

8B34 has the same logic: callback `0x3C8F0`, parameters branch `0x3C972`,
paired predicate `0x4010C`, NULL reply call `0x3C99E -> 0x2D978`.
Default pairing configuration initializes the first byte to 0x31, which has
bonding enabled and LE Secure Connections disabled. This default does not
override the explicit enrolled-state rejection.

Nordic's primary documentation independently defines a NULL
`pm_conn_sec_params_reply` parameter as a rejection:
https://docs.nordicsemi.com/r/bundle/nrf5_sdk_v17.1.1/page/group_peer_manager.html
The SDK comparison copy in the local lab is a reference, not evidence that
Apple uses that unmodified revision. The firmware instructions are decisive.

#### 2. The case explicitly selects a rotating replacement encryption key

The `BLE_GAP_EVT_SEC_INFO_REQUEST` branch is `0x2E43C` in 9A348 and
`0x2E3D8` in 8B34. It obtains the peer's stored bonding record and selects the
encryption information using this reconstructed logic:

```c
info = NULL;
if (stored_bond_is_available) {
    info = &bond.own_ltk.enc_info;
    if (!info->lesc && !master_ids_match(bond.own_ltk.master_id, request.master_id)) {
        temporary_info = *info;              // preserve key-length/auth flags
        memcpy(temporary_info.ltk, active_findmy_key, 16);
        info = &temporary_info;
    }
}
sd_ble_gap_sec_info_reply(connection, info, NULL, NULL);
```

The actual 9A348 copies are at `0x2E4C0..0x2E4F8`; source is RAM
`0x2001197C`. The 8B34 source is `0x20011974`. A **matching stored bond** or
stored LESC key therefore remains a real alternate branch. It is incorrect
to claim every possible connection must use the rotating key.

`master_ids_match` (`0x2C8CA`) first validates the stored master ID: an entirely
zero ID is invalid. Otherwise it compares EDIV and all eight RAND bytes. The
Apple zero-RAND/zero-EDIV request selects the replacement-key branch for a
legacy bond. Merely choosing the stored master ID would still require knowing
the corresponding secret LTK for actual Bluetooth encryption.

At advertising-address installation, `0x3A660` sets the top address bits to
11, calls `0x37CA8` to get `0x2001401C`, and calls `0x2E708` to copy exactly
16 bytes into `0x2001197C`. Thus the replacement key comes from offset 0x1C
of the active 0x54-byte Find My beacon-key material at `0x20014000`; it is
installed alongside the current advertising address. The active material is
loaded during key rotation (`0x37BD2..0x37BD8`). Its complete upstream
cryptographic generation inside the case has not been reconstructed here.

Local evidence outside the repository:
`root-case-security-events.asm`, `root-case-encryption-key-selection.asm`,
`root-case-key-address-install.asm`, `root-case-replacement-key-copy.asm`,
`root-8B34-case-security-events.asm`, and `root-8B34-case-key-reply.asm` in
`work/airpods-pro3-firmware-agent/`.

#### 3. The iOS no-key branch is not an observed owner-pairing fallback

The retained iOS `locationd` owner connection method reads `material.ltk`,
checks length >=16, takes bytes 0..15, and inserts them into
`CBConnectPeripheralOptionUseTempLTK` (`0x101472C44..0x101472C80`).
`connectToPeripheral:withOptions:andTimeout:` forwards the options unchanged
to `CBCentralManager connectPeripheral:options:` at `0x101473D78`.

The token-fetch method distinguishes the normal account-token route from
explicit test and unknown-accessory routes. Test configuration is guarded by
`TestFreshDurianConfig`. The `isTAAISDevice` branch at `0x10147B258` retrieves
`taUnknownBeacon.address` and explicitly sets the LTK argument `x3=0` before
`initWithAddress:ltk:primaryIndex:secondaryIndex:` at `0x10147B310`. This
accounts for a real no-key use of the shared connection method without
demonstrating unencrypted owner ranging. The normal route at `0x10147B350`
requests account connection tokens.

The failure method removes the failed connection material and schedules a
retry through a block at `0x1014752B4` after 1.25 seconds when continuing the
attempt (`0x101475004..0x101475154`). No ordinary-pairing fallback was found in
these traced methods. This is not an exhaustive proof about every iOS path.
The lower-stack key-consumption trace remains from Mac bluetoothd; no iOS
bluetoothd trace or iPhone radio capture is claimed.

#### 4. Bounded execution of original firmware instructions

`work/airpods-pro3-firmware-agent/emulate_key_policy.py` uses Unicorn 2.1.4 to
execute the unmodified Thumb instructions with synthetic RAM. It ran seven
checks per firmware version, 14 total:

- Enrolled + incoming peer parameters: reply context becomes NULL.
- Unenrolled + incoming peer parameters: callback leaves default context.
- Enrolled + no peer parameters: callback leaves default context.
- NULL parameters reach the SoftDevice boundary with status 0x85.
- Zero request master ID with a legacy bond selects the rotating key.
- Matching nonzero master ID selects the stored key.
- Stored LESC flag selects the stored key.

All passed. Results are in `root-key-policy-emulation.json`. Logging, database
access, role lookup and SoftDevice boundaries are mocked; the case's branch,
comparison and key-copy instructions execute. These are instruction-level
checks, not a complete firmware boot, RF test, cryptographic handshake, or
proof of successful Samsung ranging. Synthetic key bytes only were used.

**Conclusion:** the currently enrolled case requires an already known matching
key to establish the encrypted link used by precision commands. New ordinary
pairing is explicitly rejected in both examined versions. The rotating owner
LTK is Apple's demonstrated route for this connection; a previously established
case bond is a genuine alternate key source. No usable stored case bond on the
Samsung, nonroot key-import method, or live owner-encrypted link has been shown.

## Samsung system API boundary

The connected phone's ADB shell was checked on2026-10-09 and **does hold
BLUETOOTH_PRIVILEGED**. Therefore permission alone is not the reason to reject
all ADB/Shizuku system API routes. An unprivileged LibrePods process does not
inherit the shell's permissions.

The phone's native Bluetooth image has real key-handling functions:

- `SecurityClientInterfaceImpl::BTM_SecAddBleKey` at0xA2494C forwards to0x9DD978.
- `btm_ble_start_encrypt` at0x9E0A7C has an explicit-key branch at0x9E0C08:
  RAND=0, EDIV=0, key supplied by the caller. This is its temporary-key/STK path;
  using it for the case owner LTK is a hypothesis, not a live result.
- `btsnd_hcic_ble_start_enc` at0xA7930C serializes standard HCI opcode0x2019,
  a28-byte payload, and the16 key bytes before forwarding to the HCI stack.

These functions run inside the Bluetooth process. Their presence does not
expose a Binder API for an ADB process to call them. The audited interfaces:

| Interface | Observed limit |
| --- | --- |
| Normal pairing / PIN / OOB | Pairing inputs, not an arbitrary existing LTK import |
| Samsung `sendRawHci` | Native implementation logs unsupported on this shipping build and returns8 |
| `sendHciVendorSpecificCommand` | Requires privileged permission and callback registration; native code rejects OCF>=0x400 and forces opcode into0xFC00..0xFFFF, so cannot directly emit0x2019 |
| Samsung backup / Smart Switch bond database | Device metadata schema has no LTK/key field; restoration writes metadata, not the native key store |
| `BluetoothKeystoreService.setEncryptKeyOrRemoveKey` | Internal native-to-Java callback for protected storage; no corresponding callable Binder entry point found |

No arbitrary controller commands, pairing, reset, key-store modification, or
firmware write was performed during this audit. No usable nonroot key-loading
route has been demonstrated. Additional vendor functionality remains a research
question; the audited paths do not establish universal impossibility.

## Modified case firmware feasibility

On2026-10-09, the official A3122 SuperBinary metadata was checked for update
authentication. The NERF Bluetooth payload explicitly specifies companion
`.hash`, `.sig`, and `.cert` source paths. BAPP and STFW specify these too.
ROSE separately requires personalization and lists trusted SHA-384-measured
components with production and security modes enabled. These are package
declarations; the device's verification implementation has not yet been traced.

The identified NERF precision-handler encryption gate is a possible target for
a local binary modification experiment. Running such a modification would still
require a demonstrated installation/execution route. No custom-image installer,
signature bypass, or usable hardware debug route has been established for this
case. Changing the gate would not establish Samsung/Apple UWB interoperability.
No modified firmware was produced or installed during this investigation.

The public LibrePods firmware-update issue612 describes proposed research and
transfer of official images. The `mooons/airpods-fw` tool asks the existing Mac
updater to scan; its documentation explicitly excludes selecting a firmware
image or forcing a flash. Neither is evidence of custom case firmware support.

- https://github.com/librepods-org/librepods/issues/612
- https://github.com/mooons/airpods-fw
## 2026-10-09: live Samsung owner connection and precision initialization

Two bounded trials on the rooted SM-S938U established the real owner link using
the phone's own Bluetooth controller. The first observed the case at its
secondary/recovery index 2 address; the repeat observed its primary index 97
address. Both resolved the active primary index 97 through the same open control
point before encryption, rather than inferring an LTK from the advertised address.

Sequence confirmed on hardware:

1. Match an address from this exact owned case's fresh candidate window.
2. Connect, negotiate ATT MTU 128, discover the short service UUID `FD44`.
3. Subscribe to owner-information UUID
   `4F860004-943B-49EF-BED4-2F730304427A` indications while unencrypted.
4. Write `01 00 04`; receive `01 02 04` plus 28-byte current primary public key.
5. Match the primary candidate, obtain its temporary owner LTK from the private
   account helper, then start encryption on the same connection. Both trials
   received HCI encryption status 0, enabled 1.
6. Subscribe to precision UUID `4F860006-943B-49EF-BED4-2F730304427A`.
   `0701` initialization returned `0706` status 0.
7. `0710` capability query returned `0711` value 3: FC1ND and NBAMMS present;
   U-NII-5 and simultaneous ranging absent.
8. Disconnect, close the temporary HAL owner, restore ordinary Android Bluetooth.

Redacted live logs:
`work/phone-uwb/root-assessment/owner-link-trial-primary-query.log` and
`work/phone-uwb/root-assessment/owner-link-trial-primary-query-repeat.log` in the
parent workspace. No UWB configure/start was sent. These results prove the
encrypted owner connection and precision control exchange; they do not yet prove
UWB distance, bearing, or an app-contained account-to-radio implementation.

The research phone runner now queries the current primary key by default and
uses the successful 4-second supervision timeout. Mac Observations.db and the
protected native key vault were unnecessary for resolving this active index.
