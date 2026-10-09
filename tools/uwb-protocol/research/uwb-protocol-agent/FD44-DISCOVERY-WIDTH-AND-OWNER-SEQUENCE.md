# FD44 discovery width and native owner sequence

Scope: local static/synthetic analysis only, after the rooted Samsung discovery-only run. No phone/controller/account/key operations performed by this agent.

## Decisive current probe mismatch

`work/elimirerp-librepods/tools/uwb-protocol/phone_owner_link.py:157` passes `radio.hawkeye.SERVICE` to `Peer.discover_service`. That constant is the full128-bit Bluetooth-base alias of FD44.

Installed Bumble `gatt_client.py:534–553` converts the string to UUID and places `uuid.to_pdu_bytes()` in an ATT Find By Type Value request. `core.py:292` preserves a16-byte UUID; it only forces expansion for32-bit UUIDs. Consequently:

| Input | Attribute value sent |
|---|---|
| FD44 | 44fd (2 bytes) |
| 0000fd44-0000-1000-8000-00805f9b34fb | fb349b5f800000800010000044fd0000 (16 bytes) |

The API objects compare equal semantically. The ATT Find By Type Value operation compares the service declaration's value bytes. Bumble's own server implements that literal comparison at `gatt_server.py:725`.

`verify-fd44-width.py` runs the actual installed Bumble client and server handler against a synthetic16-bit FD44 primary-service declaration. Short form finds1service; full form finds0. Results: `fd44-width-synthetic-result.json`. No hardware/network transport exists in this harness.

This supplied a concrete explanation for a zero result without requiring a hidden or encryption-dependent service. Parent subsequently confirmed a live complete primary-service read with8services including16-bit FD44 before encryption. This agent did not perform that live operation.

## Firmware service declaration is16-bit FD44

Official A3122 9A348 NERF, SHA256 d5670f883e56efc8b4db4ac9fe9a28fec2a02271e442492924faaf5070898f47:

- service initializer0x3D058 sets up the global service structure.
-0x3D10E loads configuration base0x5DD52.
-0x3D11C loads configuration+0x40 into the stack UUID atsp+0x48.
- The actual four-byte configuration is44fd0100 at0x5DD92: UUID0xFD44, type1 (Nordic Bluetooth-base UUID).
-0x3D126 sets r0=1 (primary service), r1 points to that UUID, r2 is the handle destination;0x3D128 calls0x3CD08.
-0x3CD08 is SVC0xA8 / bx lr, the service-add SoftDevice boundary. No connection handle or encryption-state argument is passed in this registration.
- The separate characteristic6 registration0x3D2E0..322 is conditioned on configured callback+0x40 being nonnil. It does not create the primary service dynamically following an owner packet.

Clean aligned extracts are in `case-fd44-registration-and-active-key.asm`; original broader evidence is `work/airpods-pro3-firmware-agent/root-gatt-service-init.asm`. This report does not claim a hardware firmware readback. Parent's previous inventory recorded case8B34; old/new write protection was already audited in the fork's case-identity-evidence.md.

## Native iOS ordering

The traced locationd path obtains SPCommandKeys from the stable case beacon UUID using drift-modeled criteria. For EACH returned row, `didFetchConnectionTokens:forDevice:withError:` copies that row's address, connectionToken, primaryIndex and secondaryIndex into one CLFindMyAccessoryConnectionMaterial (0x10147C120,12C,138,144,15C). It does not choose a primary token then attach it to an unrelated secondary address.

Peripheral resolution is from that material's address, not the audio peripheral UUID: createPeripheralWithAddress:andIdentifier: (identifiernil), with Random-string fallback. The Find My address top bits are11.

`connectToDevice:` installs the first16bytes of material.ltk as NSData under UseTempLTK before CBCentralManager connectPeripheral:options: (0x101472C44..C80). `didConnectPeripheral:` calls connection handling (0x10146A9F8); active material is matched and stored (0x10147791C..92C); Hawkeye services are then discovered (0x101477D90..E04).

No separate GATT command activating FD44 appears between native connection and service discovery. No additional UUID/role context enters the connect KDF: exact selected beacon branch updated secret S -> intermediate32 -> connect32 -> first16bytes. Detailed derivation in INDEXED-INTERMEDIATE-KEY.md. No actual key operation was performed here.

The actual controller encryption consumption previously traced by parent is from installed Mac bluetoothd, not retained iOS bluetoothd. locationd's didConnect callback alone does not prove the iOS controller had completed encryption by that instant. A CoreBluetooth delegate may report a usable connection after stack-specific setup; a Bumble connection event cannot be assumed equivalent. Explicit successful encryption plus inventory is the useful observable comparison.

## Case recovery address does not select a recovery LTK

NERF0x3A660 receives its address as an argument, sets its top bits to11, calls0x37CA8 then0x2E708 before installing the address.0x37CA8 returns fixed RAM0x2001401C;0x2E708 copies16bytes into the replacement-key store. This is offset0x1C in the active primary0x54-byte beacon material. The address argument is independent of that fixed key pointer.

The wild-advertising callers0x383A4 and0x38408 test the latched primary28-byte key at0x2001414C. If absent, they log"Using recovery key", obtain recovery public-key bank0x20014054 via0x37CD0, and pass it as the address to0x3A980, which calls0x3A660. The installed key remains fixed active-primary+0x1C. Recovery material is32bytes:28-byte public key and index at+0x1C; it contains no16-byte connection-key slot.

Thus the earlier coupling inference was incorrect: **a secondary/recovery address match does not prove a secondary-derived connection LTK.** Native locationd copies each returned address/token row together, but the upstream native service's selection of the token for a recovery address still needs verification. `verify-case-recovery-address-primary-ltk.py` executes original selection and installation instructions with synthetic distinct banks and confirms both primary and recovery addresses install the same active-primary key.

## Encryption gates apply before precision commands

Existing verified case-handler evidence: the precision write handler0x24008 checks paired state and connection-encrypted flag5 at0x24050..5A before parsing0701 or0710. Connection-secured callback sets that flag at0x3CB50..66. New ordinary pairing is rejected while enrolled; zero-RAND/EDIV owner encryption uses the rotating replacement LTK branch. Stored matching bonds are a separate real branch. These are firmware write-policy findings; they do not show primary-service declaration visibility changes on encryption.

## Smallest next probe owned by parent

1. Fix only the UUID wire representation: discover_service('FD44') or UUID.from_16_bits(0xFD44).
2. Prefer one complete primary-service inventory using Read By Group Type, logging UUIDs/count and ATT error categories only. This distinguishes actual database contents from Find By Type Value width mismatch.
3. With fresh ownership material and a fresh exact observed address, establish the explicit owner encrypted link and record encryption success/failure before repeating the SAME inventory.
4. Only after success and FD44 presence proceed to characteristic6 subscription and native init gates:0701 request,0706/statusLE32 completion, then0710 ->0711 capability reply. A0700 ACK is parsed when received; successful0700 is not mandatory before accepting0706. No config/start is needed for this comparison.

Do not infer owner-command support from an unencrypted connection. Conversely, the existing count0 result does not prove an encryption-hidden primary service because the transmitted UUID value was different in width from the firmware declaration.

## Mac-specific visibility boundary remains separate

Mac bluetoothd's constructor0x10068400C inserts native FD44 UUID constant0x100894BB8 into policy set+0x48 at0x10068432C..35C. Service serializer0x1003F06D0 calls restricted UUID checker0x100689EA4; denied entries are skipped before kCBMsgArgServices0x1003F06E0..708. The session obtains com.apple.BTServer.allowRestrictedServices at0x1005CDA1C..28. Thus an ordinary Mac enumeration may filter FD44 independently of firmware permissions. CBManagerNeedsRestrictedStateOperation is a power-state permission, not an unhide flag. No entitlement bypass was attempted or proposed.
