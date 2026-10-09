# Case identity and owner BLE link: native evidence

No account keys, actual identifiers, live radio probes, or ranging commands are included here.

## Distinct identities

- `CBDevice.findMyCaseIdentifier` is an NSString serialized as XPC dictionary `dvIn.fmCI`.
- `CBDevice.findMyGroupIdentifier` is an NSString serialized as `dvIn.fmGI`.
- `CBDevice.identifier` / `CBPeripheral.identifier` is a CoreBluetooth local peripheral identity. The successfully connected ordinary audio peripheral exposes no FD44 service.
- `SPBeacon.identifier` is the lookup UUID used by locationd's owner finding path.
- The current BLE address is obtained from connection material; native code creates/retrieves the peripheral from that address.

The first two mappings are verified using only synthetic UUID strings in `cbdevice-fmci-fixture.m`; its results are in `cbdevice-fmci-fixture-result.txt`. Both setters encode the expected nested fields, and decoding recovers the exact fake input values. This proves the field semantics. It does **not** prove `fmCI == SPBeacon.identifier`, or that the ordinary audio BLE address is the case Find My address.

## Account accessory to finding device

In iOS locationd:

1. `didFetchAllDurians:` reads each simple beacon's `.identifier` at `0x10146c6a0`, uses it as the device dictionary key at `0x10146c6ac`, and calls `fetchOrCreateDeviceWithSimpleBeacon:` at `0x10146c6cc`. Group UUID / part number are separate fields (`0x10146c6f4`, `0x10146c720`).
2. `deviceWithUUID:` (`0x10146e340`) looks up the same UUID in the cache. An absent SPBeacon results in a missing-device error; it is not a generic arbitrary UUID connection interface.
3. The factory at `0x10146e4cc` maps Durian -> CLAirtagDevice, Accessory -> CLHawkeyeDevice, Hele -> CLHeleDevice.
4. `fetchConnectionTokensForDevice:` calls SPCommandKeysCriteria.driftModeledCriteria (`0x10147b370`), reads `device.uuid` (`0x10147b380`), and calls SPBeaconManager `connectionTokensForBeaconUUID:criteria:completion:` (`0x10147b3e0`).
5. SPBeaconManager's framework implementation wraps `commandKeysForUUID:withCriteria:completion:`. Existing Mac SearchParty disassembly: `work/sp-disassembly.txt`, `0x1b87ec6f0`.

Relevant extracts: `didFetchAllDurians.asm`, `deviceWithUUID.asm`, `fetchConnectionTokensDevice.asm`.

## Owner connection token is the source of temporary LTK

Locationd's callback reads each returned material's `.address`, `.connectionToken`, `.primaryIndex`, `.secondaryIndex` at `0x10147c120`, `12c`, `138`, `144`. It passes those directly to `CLFindMyAccessoryConnectionMaterial initWithAddress:ltk:primaryIndex:secondaryIndex:` at `0x10147c15c`. There is no additional KDF between connectionToken and the object's LTK.

`connectToDevice:` (`0x101472af0`) obtains the active attempt's material, checks `.ltk.length >= 16`, takes `subdataWithRange:{0,16}`, and inserts those first 16 bytes into `CBConnectPeripheralOptionUseTempLTK` at `0x101472c44..c80`.

This LTK is separate from nearbyd's newly generated 16-byte UWB session IRK. The latter is carried in the UWB configuration path, after the owner Bluetooth link is established.

## Owner address becomes a peripheral without using the cached audio UUID

`_retrievePeripheralForMaterial:isFindMyNetwork:` (`0x10147eeac`):

1. Makes a mutable copy of material.address.
2. For Find My network material, sets the high two bits of the first address byte (`OR 0xc0`, `0x10147ef08..10`).
3. Calls CBCentralManager private `createPeripheralWithAddress:andIdentifier:` with identifier nil (`0x10147f008`).
4. Fallback formats `Random %hhX:%hhX:%hhX:%hhX:%hhX:%hhX`, then calls `retrievePeripheralWithAddress:` (`0x10147f0d8`).

The exact byte order must be preserved as returned by native material. No offline address derivation, reversal, or address injection has been attempted here.

Relevant extracts: `didFetchConnectionMaterial-full.asm`, `addPossiblePeripherals.asm`, `retrievePeripheralForMaterial.asm`.

## iOS upstream derivation proof

Official Apple OTA iOS26.7.1/23H6030Beta, iPad11,1 code, payload011, `usr/libexec/searchpartyd` (27,497,168 bytes). SHA256:
`cbc5a9168f2e10bf767b113069a91f23b465fc56cf1baa8e010f1c060b3f4658`.
The OTA URL is recorded in `find-searchpartyd.py`; only the target binary was persisted.

`0x10051b3ec`:

- Input is Swift Data in x0/x1.
- Builds literal UTF8 `connect` (`0x10051b40c..420`).
- Calls ANSI X9.63 KDF helper `0x100b70e38`, requesting 32 bytes (`0x10051b43c..444`).
- Validates exactly 32 bytes using `0x100519c78`; error text identifies this as connectionKey.
- Helper calls `CCKDFParametersCreateAnsiX963`; inner derivation calls `CCDeriveKey` with digest constant 0xA. Apple OSS [CommonDigestSPI.h](https://github.com/apple-oss-distributions/CommonCrypto/blob/main/include/Private/CommonDigestSPI.h) line71 defines constant10 as SHA256. [CommonKeyDerivationSPI.h](https://github.com/apple-oss-distributions/CommonCrypto/blob/main/include/Private/CommonKeyDerivationSPI.h) lines183–184 and223–225 confirm sharedinfo and keyDerivationKey argument roles. Both primary headers are retained locally.

Returned SPCommandKey construction at `0x100765fb0`:

- Metadata accessor `0x101147020` identifies TimeBasedKey.
- Reads the metadata field offset 0x18 and loads its key material at `0x100766064..70`.
- Swift reflection: TimeBasedKey has `index`, `dateInterval`, `keyMaterial:DiversifiedRootKeys`; DiversifiedRootKeys starts with optional `intermediateKey`.
- If absent, logs `No intermediate key found in commandKeys ... index` (`0x100766170`).
- If present, passes that intermediate key's Data to the connectionKey helper (`0x1007662a8..2b0`).
- Bridges the **full** 32-byte result to NSData (`0x100766338..348`).
- Passes it as x4/connectionToken to `initWithBeaconingKey:commandKey:connectionToken:nearbyToken:primaryIndex:secondaryIndex:type:` (`0x100766378..388`).

Thus the verified downstream relationship is:

`per-index intermediate key -> X9.63-SHA256 KDF(info='connect', output=32) -> SPCommandKey.connectionToken -> first 16 bytes -> CoreBluetooth temporary LTK`.

Do not substitute the root shared secret directly. Per-index intermediate generation, primary/secondary selection and time/drift windows still require separate verification.

Extracts: `connect-derive-function-ios26.asm`, `connectionKey-data-wrapper-ios26.asm`, `connectionKey-callerB-ios26.asm`, `commandKeys-intermediate-lookup-ios26.asm`, `x963KDF-ios26.asm`, `x963-derive-ios26.asm`, `searchpartyd-ios26-swift.txt`.

## LocalFindable alternate is not yet tied to case precision finding

The newer daemon also exposes `peripheralConnectionMaterialForAccessoryIdentifier:completion:` and SPPeripheralConnectionMaterial fields `irkData`, `btAddressData`, `btAddressWithTypeData`. Those are not an SPCommandKey LTK. Their presence does not establish that this is the AirPods case Hawkeye/Hele ranging caller; retain the distinction.

## Smallest next check

Privately compare a decrypted owner's BeaconStore record identifier / group part metadata with the already cached `fmCI` and `fmGI`, reporting equality and category only. That would prove which stable case identifier is accepted by the existing owner-token selector, while keeping identifiers and keys private. If the native metadata API is entitlement-rejected, do not bypass that restriction.

Then verify the exact indexed intermediate-key generation and key rotation against the newly retained iOS searchpartyd. A current case BLE address must be derived/resolved from owner material or matched against the correct owned beacon; an audio UUID retry does not test this path.
