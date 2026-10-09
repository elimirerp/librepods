# Read-only iOS registration audit

Examined Apple's extracted iOS 18 and iOS 26 findmydeviced binaries. No Apple account, protected service, or Bluetooth pairing was mutated by these experiments.

## Applicable accessory class

`FMDInternalLocalFindableAccessory` is **not new in iOS 26**. It is already implemented in `work/findmydeviced-ios-disassembly.txt:99040` (constructor), `:99609` (deviceInfo), and `:178903` (serviceProvider constructor call). Its iOS 26 category is zero (`work/findmydeviced-ios26-disassembly.txt:418495`). The Bluetooth accessory category is one (`:444573`), and only the Bluetooth class declares `FMDAudioAccessory` conformance (`work/ios26-objc.txt:2838`).

The local-findable constructor is reached through explicit XPC `didAddLocalFindableAccessory:completion:` (`:464883`), then `registerAccessory:completion:` (`:507861`). It directly uses the supplied local accessory baUUID for its accessory identifier (`:418368`). This is a separate API; its existence does not prove AirPods Pro 3 use it.

The iOS 26 Bluetooth route still constructs `FMDBluetoothAccessory` from BluetoothManager devices (`:442717`), derives identifier with `FMDAccessoryIdentifier.initWithAddress:`, and uses `%i_%i` product type (`:445492`). This supports retaining the current MAC hash identity unless an actual Apple caller for product 8231 is found using the local-findable API.

## Registration payload

`AccessoryRegisterAction` selects `completeDeviceInfoForAccount:accessory:` when includeDeviceState is true (`:348365`, helper at `:348731`). The Bluetooth `completeDeviceInfo` is a tail branch to `deviceInfo` (`:446629`). There is no separate missing deviceState envelope. `ServerDeviceInfo.completeDeviceInfoForAccount:accessory:` adds aps-token TOKEN (`:377284`); the decoded constants verify those exact strings.

Additional optional native Bluetooth fields missing from the current registration-record generator: `cachedConfigVersion`, `colorCode`, `accessoryStyle`. The native config lookup uses accessory type `76_8231`; nil version removes the key. The beacons array serializes only name/rssi/updateTimestamp (`:521055`), not beacon cryptographic material. Its emptiness therefore does not omit a crypto enrollment proof.

Native accessory deviceInfo.otherDevices is a host reference (already addressed by root). Whether later macOS host registrations with an empty otherDevices list remove a linked accessory is a server behavior not proven by static code.

## Config catalogue bootstrap

The iOS 26 default `FMDSupportedAccessoryRegistry.defaultSupportedAccessoriesIfEnabled:` hardcodes vendor 76 with products 0x2002, 0x200f, 0x200e, 0x200a, 0x201f, 0x202d (`:546225` onward). The genuine product 8231 is 0x2027 and absent from that hardcoded list. The native Bluetooth route checks registry support (`:512046`, `:546950`, `:547735`); newer support can arrive from the server.

`FMDExtConfigurationRegistry` loads `findkit-default-configs.json` from `/System/Library/PrivateFrameworks/FindMyDevice.framework` (`:343935`) and requests server data (`:344170`).

Decoded Mach-O constants at slot 0x10030b2b0 contain Apple's default:

    https://gateway.icloud.com/fmadminws/findkit

The corresponding key is `configURL`; pairing default at slot 0x10030b2c8 is `https://gateway.icloud.com/fmadminws`, key `pairingURL`. Exact decoded output: `work/protocol-agent/ios26-request-constants.txt`.

`FMDFMIPAccount.applyPropertiesFromACAccount:` gets its account dictionary from `fmipAccountInfoWithTokens:` (`:327984`) and copies extAccessoryConfigURL from that result. It does not get this URL from an accessory registration response.

`FMDSupportedAccessoryTypesRequest` uses baseURL + `/supportedAccessoryTypes` (`:334471`), standard FMD request headers plus `X-MMe-Client-Info` (`:334425`), and body key `cachedVersion` omitted when nil (`:334511`).

`FMDAccessoryInfoRequest` uses baseURL + `/accessoryInfo` (`:548805` onward), the same client info header, and body:

    {"accessoryTypes":[{"type":"76_8231","cachedVersion":""}]}

Its code replaces nil cached config version with the empty string (`:549038` onward). FMDRequest auth comes from FMIP account auth token.

## Precise next experiment

Using root's already authenticated experimental client, issue read-only config queries to the Apple default gateway endpoint, with real Mac `X-MMe-Client-Info` and existing mmeFMIPToken, while recording only HTTP status, schema, catalogue types, and selected 76_8231 metadata. Do not register under the alternate UUID until Apple caller evidence establishes that route.

The scratch no-account runtime probe `account-category-inspect.m` loaded the Mac framework and looked up ACAccount.fmipAccountInfoWithTokens:, without creating an account or invoking a method. It is absent on macOS; the fallback category must be extracted from iOS framework if exact fallback execution is needed.

## Follow-up: precise config HTTP shape

Base `FMDRequest.requestBody` creates an empty dictionary and returns it immediately if decorator is nil (`work/findmydeviced-ios26-disassembly.txt:18124`, branch at address 0x100013644). `initWithAccount:` only copies account authId, authToken and apsEnvironment, creates request UUID, and sets willRetry (`:368831`). `decorator` is a plain ivar getter (`:369009`). Neither config action installs a decorator before enqueue (`:376403`, `:440615`); enqueue itself does not install one (`:20194`). Consequently these config requests do not require host `deviceInfo`, `deviceContext`, or `serverContext` bodies.

`FMDServerConfig.init` generates the client info from host productType, productName, productVersion, buildVersion and mainBundle.bundleIdentifier (`:487141`):

    <PRODUCT_TYPE> <PRODUCT_NAME;PRODUCT_VERSION;BUILD_VERSION> <BUNDLE_ID/1 (BUNDLE_ID/1)>

Native main bundle identifies findmydeviced. The User-Agent is `FMDClient/6.0 PRODUCT_TYPE/BUILD_VERSION`. Config subclass adds X-MMe-Client-Info to base headers (`:548993`, `:334425`). Base headers map X-Apple-PrsId, X-Apple-PushEnv, X-Apple-Find-API-Ver, User-Agent, Content-Type, Authorization and optional X-Apple-Ctx (`:18784`). X-Apple-Ctx comes from protected context `serverContextHeaderContext`; absent context is safely omitted, not a hard precondition.

## Follow-up: two separate catalogues

AccessoryInfo HTTP body is passed into `FMDExtConfigurationRegistry.updateConfigurations:` (`:440939`). It reads root `configurations` array (`:344643`) and accepts each item only when `statusCode` equals string `200`. Each item's `config` must be dictionary containing nonnil `type`, `version` and `features` (`:470494`). It caches configuration by `config.type`. Other returned metadata including `productData`, `minSupportedVersions`, `firstClassAccessory`, and `daemonVisible` are not consumed by this parser.

For `FMDBluetoothAccessory.deviceInfo`, productType is directly formatted as `%i_%i` from vendorID/productID (address 0x1001a9878, file line `:445924`). The exact same formatted type is looked up in ExtConfigurationRegistry, and its `version` goes to `cachedConfigVersion` (0x1001a98cc through 0x1001a9954). This configuration does not override Bluetooth productType. ColorCode and accessoryStyle come from the Bluetooth device/styleDescriptor, not this server config.

The Bluetooth support gate uses separate `FMDSupportedAccessoryRegistry`. Standard host deviceInfo advertises this catalogue version as `accConfigVersion` (`:13029`). The command handler key is `accessory_config` (decoded slot 0x10030b5b0; handler registry at `:24218`). `FMDCommandHandlerAccessoryConfiguration.handleCommand` extracts commandParams.supportedAccessories (`:358057`) and passes that nested dictionary into `updateSupportedAccessories:completion:` (`:546475`). That dictionary has a `supportedAccessories` array of per-vendor/product profiles and `accConfigVersion` (`:546564`, `:546700`). This differs from the Findkit configuration's `accessoryTypes`/`version` and per-type `cachedConfigVersion`.

Concrete next experiment after successful config query: add only returned `config.version` as accessory deviceInfo.cachedConfigVersion while retaining MAC-derived UDID and plain `76_8231` productType. Root performs any live registration. If still absent, retrieve/inspect native `accessory_config` catalogue command rather than changing UDID based solely on the existence of local-findable wrapper.

## Follow-up: live catalogue reveals extension type

Root's read-only config query returned AirPods product configuration type `d698de70c4177995dbe15a33e3985e66db0bfa044dfd70dd38e82262394bac0d` = SHA256(`BT_76_8231`), version `27`. Public selected response is `outputs/airpods-enrollment-lab/.direct-state/airpods-product-configuration.json`. It specifies Bluetooth discovery/connection/streaming sound with left/right channels, daemonVisible true, firstClassAccessory false, and minimum iOS 19.0.

The ExtConfigurationRegistry has **no** plain-to-hash mapping: `configForAccessoryType:` and its synchronous block perform direct dictionary lookups / supportedAccessories.containsObject on the supplied argument (`:345175` onward). FMDAccessoryInfoRequest also transmits the type unchanged (`:549030` onward). Therefore the legacy Bluetooth plain productType `76_8231` cannot consume the hashed configuration without a caller mapping.

However, hashed type is **not unique to the local-findable/group-UUID route**. `FMDExtHelper.deviceIDFromAddress:` uses SHA256(`BT_` + address) (`:505132`); `deviceTypeFromVendorId:productId:` uses SHA256(`BT_%u_%u`) (`:505176`). `FMDExtAccessory.initWithExtAccessoryInfo:` accepts the identifier and type independently (`:426610`, `:426626`). Its deviceInfo uses supplied accessoryType verbatim as productType and looks it up for cachedConfigVersion (`:428819` through `:428867`). This route can preserve the current MAC-derived UDID and use the catalogue's hashed productType.

The next concrete registration experiment is now: preserve real MAC-derived UDID/address/baUUID and actual host reference, use returned hash as productType and string `27` as cachedConfigVersion. This follows the native extension route's separate identity/type helpers and avoids alternate account identities. The native extension payload calls the style value `deviceColor` and keeps serialNumbers as a dictionary. Parent performs live trials; this subagent has made no live requests or mutations.

## Final result: extension-shaped registration succeeded

Parent reported that its 2026-10-08 23:45:12 UTC registration using the extension profile with `macosx_proxy`, the existing genuine MAC-derived accessory UDID and paired group UUID returned HTTP 204 **with new DeviceRestart-Register-Interval and LocSrc headers**. At approximately 23:46 UTC, native Find My displayed AirPods Pro as a Devices row beside the Mac and a map pin with current location. This agent performed no live requests or mutations and stopped exploration when success was reported. The account/UI observations belong to the parent's live trial.

The successful combined change used the server-returned hashed productType and cached configuration version, actual Mac host in otherDevices, and the extension payload defaults. Earlier HTTP 204 responses alone did not establish enrollment. The experiment does not separately isolate whether the hash, version, removed legacy fields, or combination was decisive.

### Exact native FMDExtAccessory.deviceInfo evidence

All line numbers below refer to `work/findmydeviced-ios26-disassembly.txt`. The method begins at line 428515, address 0x100199b30.

| Field | Native source/value |
| --- | --- |
| deviceName | accessory name |
| udid | accessoryIdentifier.stringValue; independently supplied at construction |
| deviceDiscoveryId | address; constructor copies extInfo.deviceDiscoveryId |
| connectionStatus | connectionStateAsString; enum 0 Unknown, 1 connected, 2 disconnected; >2 omitted |
| additional fields | additionalInfo dictionary merged if nonempty, before remaining fixed fields |
| lastActiveTime | lastActiveTime.fm_epoch, or numeric -1 |
| accessoryRSSITimestamp | lastStatusUpdateTime.fm_epoch, or numeric -1 |
| batteryInfo | accessory batteryInfo array, omitted if nil |
| audioChannels | array of audio channel dictionaryValue entries; [] when empty |
| locationServicesEnabled | boolean true |
| findMyiPhone | boolean true |
| activationLock | boolean false |
| firmwareVersion | accessory firmwareVersion, omitted if nil |
| productVersion | actual host FMDSystemConfig.productVersion |
| deviceClass | literal Accessory |
| productType | accessoryType formatted verbatim as a string |
| cachedConfigVersion | configForAccessoryType(accessoryType).version |
| platform | actual host FMDSystemConfig.platform + _proxy |
| otherDevices | one-element array describing the actual host |
| serialNumbers | accessory serialNumbers dictionary, omitted if nil |
| deviceColor | accessory style, omitted if nil |
| baUUID | accessory baUUID.UUIDString, omitted if nil |

The explicit extension deviceInfo method does not add beacons, accessoryRSSI, colorCode, accessoryStyle, top-level serialNumber, an extension ID, or cryptographic enrollment proof. A caller-provided additionalInfo dictionary can add arbitrary fields, but none was necessary in the successful parent trial. The outer ServerDeviceInfo builder additionally supplies the literal aps-token TOKEN.

Specific method references:

- Constructor independently copies extInfo.accessoryIdentifier and extInfo.accessoryType: lines 426613 and 426625, addresses 0x100197ed0 and 0x100197f00.
- Connection enum string table: method line 427835, table at 0x10030c6f0 with strings Unknown / connected / disconnected, independently decoded by `ext-connection-constants.py`.
- productVersion, deviceClass, productType and cachedConfigVersion: lines 428790–428867, addresses 0x100199f54–0x10019a088.
- platform, otherDevices, serialNumbers, deviceColor and baUUID: lines 428884–428944, addresses 0x10019a0cc–0x10019a1bc.
- otherDeviceInfo begins line 429520, address 0x10019aa4c. Host record keys are deviceName, lastActiveTime (same accessory timestamp or -1), deviceClass (deviceClassString), platform, udid (deviceUDID), and productType.
- Complete device info delegates directly to deviceInfo (line 429319); no required deviceState envelope.
- Identity and type helper methods: line 505141, `FMDExtHelper.deviceIDFromAddress:` SHA256(BT_ + address); line 505176, `deviceTypeFromVendorId:productId:` SHA256(BT_%u_%u).

### Effective successful profile (public template)

    deviceInfo.udid = SHA256("BT_" + genuine uppercase colon Bluetooth MAC)
    deviceInfo.deviceDiscoveryId = genuine Bluetooth MAC
    deviceInfo.baUUID = existing genuine paired group UUID
    deviceInfo.productType = "d698de70c4177995dbe15a33e3985e66db0bfa044dfd70dd38e82262394bac0d"
    deviceInfo.cachedConfigVersion = "27"
    deviceInfo.deviceClass = "Accessory"
    deviceInfo.platform = "macosx_proxy"
    deviceInfo.productVersion = actual Mac OS version
    deviceInfo.otherDevices = [actual Mac reference]
    deviceInfo.locationServicesEnabled = true
    deviceInfo.findMyiPhone = true
    deviceInfo.activationLock = false
    deviceInfo.aps-token = "TOKEN"
    deviceInfo.batteryInfo = []
    deviceInfo.audioChannels = []
    deviceInfo.accessoryRSSITimestamp = -1
    deviceInfo.serialNumbers = genuine serial dictionary
    deviceInfo.connectionStatus = actual observed connection state
    deviceInfo.lastActiveTime = observed epoch, or -1 while disconnected
    deviceContext = {deviceTS: current UTC timestamp, cause: "accessoryRegistryUpdate"}

Parent's `direct-register.py` extension profile implements this from its verified record and configuration response, removes beacons/accessoryRSSI/accessoryStyle/colorCode, and retains genuine serials/name/firmware. No alternate UDID or group UUID was introduced.

The native extension wrapper is proven to accept extension callback records and serialize this shape; the binary alone does not establish which extension supplies AirPods Pro 3 on iOS. The successful live experiment establishes that the corresponding configuration hash/version profile enrolls this genuinely paired AirPods accessory from the Mac.
