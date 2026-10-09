# Android temporary BLE LTK API boundary

Read-only primary-source review. No phone commands, account key reads, bonding, controller commands, or Android changes. Ordinary case GATT already exposes FD44 according to the parent; this LTK work is a fallback if later ATT or application authentication fails.

## Finding

No equivalent of Apple's per-connection UseTempLTK option was found in complete upstream IBluetooth, IBluetoothGatt, or IBluetoothSocketManager interfaces. Public connectGatt accepts transport/PHY and connection policy, not key bytes. Native Android BLE encryption accepts an SMP STK or stored peer LTK in the Bluetooth stack process; no reviewed Binder method exposes that native key argument.

This is an API gap in the reviewed stock interface, not proof that every Samsung vendor image lacks an extension. Local phone artifacts currently contain Samsung UWB jars, not the phone's Bluetooth framework/APK/ native library; the exact OneUI9 Bluetooth interface has not been audited.

## ADB shell and Shizuku nuance

AOSP com.android.shell requests BLUETOOTH_PRIVILEGED in its manifest (local snapshot android-ltk/Shell-AndroidManifest.xml lines132-133; upstream also allowlists it). Therefore shell can legitimately have Bluetooth Binder permissions unavailable to an ordinary LibrePods APK. It still needs a method with the correct semantics. Shizuku executes selected operations with shell identity; it does not invent a missing LTK import/connect method or become the Bluetooth stack process.

Current AOSP IBluetooth has a privileged `sendHciVendorSpecificCommand(ocf, parameters, callback)` method. AdapterService validates active-user/caller rules, BLUETOOTH_PRIVILEGED, OCF0..0x3ff, maximum255-byte parameters, callback registration, and excludes most Android vendor OCF0x150..0x15f. This is a vendor-specific command interface, not a generic standard-HCI transport. No reviewed primary source documents a Samsung/controller vendor opcode that installs a transient LTK for an existing connection. No vendor opcode guessing or live commands were attempted. Passing the complete standard LE encryption opcode cannot bypass this interface's OCF validation.

Stock BluetoothShellCommand defines enable, enableBle, disable, disableBle, wait-for-state. The BLE-only commands require root UID; none imports an LTK. No raw Bluetooth-HCI shell socket was identified as a supported alternate route. Google's RemoteHCI example explicitly requires privileged HAL access/root or disabling SELinux and stopping the normal Bluetooth stack; that route is excluded by task constraints.

## OOB pairing is a different primitive

`OobData.LeBuilder.setLeTemporaryKey` is a16-byte **pairing TK** used by the LE Security Manager. `createBondOutOfBand` initiates bonding through the Binder createBond method; AdapterService requires BLUETOOTH_PRIVILEGED when its OOB data arguments are non-null. Neither is documented as installing an existing owner LTK for an encrypted connection. The valid input length16 does not establish equivalent cryptographic semantics. Do not pass the derived owner LTK as a pairing TK or create a replacement bond to test the hypothesis.

Native `btm_ble_start_encrypt` uses either a supplied SMP STK with zero rand/ediv or the stored peer LTK plus stored rand/ediv. Its presence proves the radio stack can encrypt, but its in-process native API is not an ordinary APK or shell Binder endpoint.

## Smallest remaining evidence if authentication blocks

Inspect the exact phone's already-installed Bluetooth interface/implementation read-only for a documented temporary-key API and its caller permission checks. A permission-presence check for com.android.shell can clarify whether its privileged Binder functions are available. No need to invoke createBond, vendor HCI or reset commands. If no suitable vendor method exists, stock phone-only Android cannot express the verified Apple step through the reviewed APIs.

Mac-assisted BLE remains a separate concrete proof route: local class/symbol inspection found createPeripheralWithAddress:andIdentifier:, retrievePeripheralWithAddress:, connectPeripheral:options:, and exported UseTempLTK. Evidence mac-temporary-ltk-static-result.txt. This inspection created no CBCentralManager instance and did not read or inject a key. Successful unentitled daemon acceptance is still untested.

## Primary sources and local evidence

- [IBluetooth](https://android.googlesource.com/platform/packages/modules/Bluetooth/+/refs/heads/main/android/app/aidl/android/bluetooth/IBluetooth.aidl), local android-ltk/IBluetooth.aidl, vendor command lines302-307.
- [IBluetoothGatt](https://android.googlesource.com/platform/packages/modules/Bluetooth/+/refs/heads/main/android/app/aidl/android/bluetooth/IBluetoothGatt.aidl), local android-ltk/IBluetoothGatt.aidl.
- [IBluetoothSocketManager](https://android.googlesource.com/platform/packages/modules/Bluetooth/+/refs/heads/main/android/app/aidl/android/bluetooth/IBluetoothSocketManager.aidl), local android-ltk/IBluetoothSocketManager.aidl.
- [BluetoothShellCommand](https://android.googlesource.com/platform/packages/modules/Bluetooth/+/refs/heads/main/service/src/com/android/server/bluetooth/BluetoothShellCommand.java), local android-ltk/BluetoothShellCommand.java, command list lines39-41 and root gate lines220+.
- [Shell manifest](https://android.googlesource.com/platform/frameworks/base/+/refs/heads/main/packages/Shell/AndroidManifest.xml), local android-ltk/Shell-AndroidManifest.xml.
- [AdapterService](https://android.googlesource.com/platform/packages/modules/Bluetooth/+/refs/heads/main/android/app/src/com/android/bluetooth/btservice/AdapterService.java), existing source snapshot tools/findmy-research/source-snapshots/bluetooth-AdapterService.java, createBond lines2604-2629, vendor method lines4171-4206, privileged OOB check lines6799-6805.
- [OobData](https://android.googlesource.com/platform/packages/modules/Bluetooth/+/refs/heads/main/framework/java/android/bluetooth/OobData.java), existing source snapshot lines299-316.
- [Native BLE security](https://android.googlesource.com/platform/packages/modules/Bluetooth/+/refs/heads/main/system/stack/btm/btm_ble_sec.cc), existing source snapshot btm_ble_start_encrypt lines1218-1253.
- [Google RemoteHCI conditions](https://android.googlesource.com/platform/external/python/bumble/+/HEAD/docs/mkdocs/src/extras/android_remote_hci.md).

Upstream main sources were read on2026-10-08 and may differ from Samsung's build. Existing root report tools/findmy-research/ble-temporary-ltk-boundary.json records the baseline public API gap; this report adds the complete Binder, shell and privileged vendor-command distinction.
