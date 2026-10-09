# iOS owner BLE initialization: verified native gates

Scope: static analysis of retained official Apple iOS 26.7.1/23H6030Beta locationd and installed Mac CoreBluetooth/bluetoothd. No account keys, owned identifiers, radio operations, key installation, or ranging commands were used for this report.

## Result

Hawkeye initialization command0701 completes through0706/statusLE32. A0700 ACK, when received, accepts or rejects the command and does not complete initialization. **Receiving0700 is not a prerequisite for accepting0706.** The case firmware's successful init branch emits no immediate0700; its outer write callback adds none. The precision characteristic has no extra application authentication preamble in the traced task/discovery path. Owner temporary LTK is supplied before connection through CoreBluetooth options.

## Native owner connection options

CLDurianDevice connectToDevice: (owner-connectToDevice-full.asm, 0x101472AF0):

| Option | Evidence |
|---|---|
| HideFromBTSettings | true, 0x101472C10–20 |
| ConnectionUseCase | NSNumber, dynamically selected, 0x101472C28–40 and 0x1014730B4–C4 |
| UseTempLTK | NSData containing LTK bytes0..15 when original length >=16, 0x101472C44–80 |
| SetConnectScanDutyCycle | NSNumber, 0x101472FB0–BC |

No explicit transport/address-type option or encrypt call appears in this method. connectToPeripheral:withOptions:andTimeout: (owner-connectToPeripheral.asm, 0x101473D78) calls CBCentralManager connectPeripheral:options:.

The address is prepared earlier by _retrievePeripheralForMaterial:isFindMyNetwork: (retrievePeripheralForMaterial.asm): material address copied; Find My network sets first-byte top bits to 11; createPeripheralWithAddress:andIdentifier: gets NSData and nil identifier; fallback retrievePeripheralWithAddress: gets the string prefix Random. This follows owner connection material, rather than the ordinary audio peripheral UUID.

## Discovery and task readiness

The didConnect callback invokes handleConnectionForPeripheral: (owner-didConnect.asm, 0x10146A9F8). handleConnected: selects the corresponding owner connection material and stores activePeripheralMaterial (owner-handleConnected.asm, 0x10147791C–92C), then discovers Hawkeye services (0x101477D90–E04).

The precision characteristic is FD44 / 4F860006-943B-49EF-BED4-2F730304427A. The discovery callback stores it and calls setNotifyValue:YES (hawkeye-discover-tail.asm, 0x101463AA4–AB4). After characteristic enumeration it calls activate (0x101464210). activate sets activePeripheralReady YES (owner-activate.asm, 0x101455660). Notification-state callback has no authentication preamble or second-stage packet for plain CLHawkeyeTask (owner-notificationState.asm).

Other FD44 characteristics are inventoried and subscribed in the generic service discovery routine. This does not establish that a write on them is a mandatory init prerequisite. The traced init task writes directly to characteristic6 using the already formed Hawkeye payload; no encryption wrapper is added in executeTask (0x10145FCF0–FD0C). Optional leash timeout/persistent-connection tasks can be enqueued under their own conditions; their presence is not proof of a universal preamble.

## Init 0701 must await completion 0706

1. CLHawkeyeDevice createInitRangingTaskWithMacAddress: ignores its Mac-address argument and calls initRangingHawkeyeTask (hawkeye-createInit.asm, 0x101488ACC).
2. Constructor inherits initRoseTaskWithParameters: with empty data (hawkeye-init-constructor.asm, 0x101449B30–50), binds the precision characteristic, sets opcode0701, and constructs exactly three bytes: 01 01 07 (0x101449BA0–BDC).
3. The inherited initializer sets expectsResponse=true (rose-init-constructor.asm, 0x1014466D8–E4). The base object stores this at offset0x20 and its getter reads it (hawkeye-task-base-init.asm, owner-expectsResponse-getter.asm). There is no Hawkeye override clearing it.
4. If ACK0700 with active opcode0701/status0 arrives, it acknowledges the task. Because expectsResponse is true, native transitions to state6/event12 and waits (hawkeye-handleDurian-ack-tail.asm, 0x101459714–738). This branch proves how an ACK is handled, not that the accessory sends a successful ACK for every command.
5. isEndpointTask matches incoming0706 to active0701 (hawkeye-endpoint-ranging.asm, 0x101452BBC–BC8). 0709 is a ranging timestamp message, not init completion.
6. Native validates the complete0706 packet as exactly7 bytes (checkHawkeyeDataValidity.asm default7 at0x10145AF64; hawkeye-response-lengths.asm 0x10145B0D0–D8 and 0x10145B124–138).
7. CLDurianCommand initWithData: strips only the leading01 marker. The completion payload is therefore opcodeLE16 + statusLE32 (command-initWithData.asm, 0x10144278C).
8. The original generic RoseInit task opcode is1. The completion-dispatch jump table at0x100394C78 contains signed delta1000 for opcode1, added to0x101420198, yielding0x101420580. This branch calls completeRangingInit:client:data:opcode: at0x10142059C (owner-completeTask-dispatch.asm).
9. completeRangingInit invokes CLHawkeyeDevice getRangingStatusForOpcode:data: and forwards the returned status into didInitRangingOnTag:withStatus:error:forClient: (hawkeye-complete-init.asm, 0x10142B1D0 and 0x10142B218). For original opcode1, the status parser loads LE32 from payload+2, i.e. complete-wire offset3 (hawkeye-ranging-status.asm, 0x10148AE88–B4).
10. A0706 response falls directly through didReceiveHawkeyeData0x10145C658 into handleDurianData. The generic completion path0x101459848 checks expectsResponse, then active-opcode/endpoint match, and transitions state4/event13 at0x101459918 without a preceding-ACK flag check. Thus accept valid0706 even if no0700 was received.

## Bounded capability-only packet sequence

This is an offline schema, not proof that the case allows unencrypted writes. Stop on permission/authentication error, failed connection, negative ACK, nonzero init status, or timeout.

| Step | Complete packet |
|---|---|
| Enable indications | CCC value02 00, then wait for successful descriptor callback |
| Init request | 01 01 07 |
| Optional init ACK accepted | 01 00 07 01 07 00 00 |
| Init completion, zero status | 01 06 07 00 00 00 00 |
| Capability query, after init completion | 01 10 07 00 00 00 00 |
| Capability response | 01 11 07 + four-byte LE capability flags |

Await successful GATT write callbacks and0706 completion; parse any0700 independently and stop on its nonzero status. Do not require a successful0700 before accepting0706. Query ACK0700 for opcode0710 is likewise distinct from0711;0711 is sufficient capability completion.

No configuration/start command is necessary to inspect capability flags. Native0711 endpoint matching is to active0710 (0x101452BAC–BB8). Existing offline codec in the LibrePods fork now parses0706 as LE32 status.

## Mac transport and daemon handling

Static extraction from installed official system cache produced mac-corebluetooth/CoreBluetooth; no manager was initialized.

- createPeripheralWithAddress:andIdentifier: inserts NSData under kCBAdvOptionInstanceRandomAddressBytes and sends synchronous message0x52 (mac-cb-create-address.asm, 0x1999B5D4C–88). Thus the method requests random-address handling at the framework boundary.
- retrievePeripheralWithAddress: uses kCBMsgArgAddressString/message0x51, then sets BDAddress to the supplied string (mac-cb-retrieve-address.asm, 0x1999B5994).
- connectPeripheral:options: builds kCBMsgArgDeviceUUID plus kCBMsgArgOptions and sends message0x4F; options are passed unchanged (mac-cb-connect-block.asm, 0x1999ADE1C–24).
- Mac bluetoothd reads kCBConnectOptionsTemporaryLTK (mac-bluetoothd-temp-prepare.asm, 0x1005D9C28), checks a lower-layer per-device result, then calls setTemporaryLTK: (0x1005D9CD8). If that result is absent, it follows an error/status8 branch. Exact authorization purpose of that opaque lower-layer result is not established.
- Later setup passes temporaryLTK bytes to lower-layer function0x10078051C with key slot5, the one-byte key length to slot6, and the one-byte type marker2 to slot7 (mac-bluetoothd-temp-setup.asm, 0x100466F90–100467098). The earlier description of slot6 as byte2 was incorrect: its pointer is sp+0x130, containing the length; slot7 receives fp-0x100, containing2. There is also a branch that ignores the temporary key because extra addresses and LTKs already exist. The callee records these in the temporary key store. The root audit below follows their use through the encryption call.

The native owner options do not select EnableTransportBridgingKey or CtkdTransport. The mere existence of those exported CoreBluetooth constants is not evidence to add them to a proof probe. An immediate connection with audio-only services cannot establish whether the case Find My endpoint was resolved, whether cached GATT data was used, or whether the expected owner encryption was active.

## Key derivation when the exact beaconing branch is known

**Qualification from the case firmware trace:** this primitive gives the connection token corresponding to an intermediate key, but an observed recovery/secondary advertisement does not prove that intermediate key is the secondary one. NERF recovery-address callers install the active primary bank's LTK. See CASE-PRECISION-GATES-AND-HCI-KEY-ORDER.md. Current-primary selection is a separate gate; native material rows alone do not prove token derivation from their address branch.

If S is the updated shared secret that generated the exact address-matched beaconing public key:

I = X9.63-SHA256(S, sharedInfo="intermediate", output32)
C = X9.63-SHA256(I, sharedInfo="connect", output32)
temporaryLTK = C[0:16]

Each32-byte derivation is SHA256(input || 00000001 || ASCII label). No UUID, role, address, or index is concatenated in these two derivations. The index/primary/secondary branch selects S upstream. Do not update S again if it already generated the matched public key. This is supported by diversified-intermediate-ios26.asm, connect-derive-function-ios26.asm, commandKeys-intermediate-lookup-ios26.asm, and the locationd truncation above. Fake vectors were previously compared against Apple's native CommonCrypto routine; no actual key operation was performed here.

## Remaining limits

Static locationd proves packets and owner option order. It does not prove the case's GATT encryption permissions, whether Samsung can supply this LTK through a public API, or whether Mac private option use is accepted for this caller. Connection status147 before CCC provides no observation of the init/capability protocol. Root owns live diagnostics; this agent performed none.

## Root audit: encryption consumption and retry behavior, 2026-10-09

This section was independently traced by the primary agent. The owner client
is the retained iOS locationd; lower-stack findings are from the installed Mac
bluetoothd. They are not a decompilation of the case firmware. No radio or key
installation was performed during this audit.

### Temporary key to Bluetooth encryption

1. The LE connection-complete routine `0x100209E60` calls
   `0x10020AC38` at `0x10020A190` on the ordinary successful-central path.
   Fast-connection and role branches have separate handling. The wrapper calls
   `0x10021BE24`, which schedules the registered key-request callback.
2. `0x10021AD24` reads the callback at `0x100AB7A18`. Registration at
   `0x10077418C–1B0` copies the table at `0x100A9D418`; its second function
   pointer is `0x1007880C4`, verified using Mach-O authenticated rebases.
   That callback dispatches block `0x100788334`, which tail-calls
   `0x10078036C` using the security-manager singleton.
3. `0x10078036C` zero-initializes the key structure and calls `0x10077F49C`.
   That getter checks the temporary map at manager+0x1E8 and calls
   `0x100771E6C` to fill the structure. The latter copies slot6 to offset0x2C
   (length), slot7 to0x2D (type), and slot5's16 bytes to0x1C (key), then sets
   the valid-key flag0x08 at0x50.
4. The filled structure reaches `0x10021C614` at `0x100780490`; this calls
   `0x100221A50`. For valid flag0x08 and type2 or3, the central path
   `0x100221BD0–BF4` passes RAND=8 zero bytes, EDIV=0, the key at0x1C,
   its length, and its type to `0x10021BA74`.
5. `0x10021BA74` validates the LE handle and key length, copies the key to
   a16-byte command buffer, then submits internal HCI command identifier0xB9
   at `0x10021BC48–4C`. Successful submission marks encryption pending.
   The exact numeric on-wire opcode is not inferred from internal identifier0xB9.
6. The completion path `0x10020967C` contains explicit branches that abort
   connection notifications or disconnect after certain encryption failures.
   This is Apple-stack behavior; it does not decode Android status147.

Evidence files: `root-LE-connection-complete.asm`,
`root-startLinkEncryption.asm`, `root-encryption-policy.asm`,
`root-key-request-callback.asm`, `root-register-LE-owner-security.asm`,
`root-registered-key-request.asm`, `root-registered-key-request-block.asm`,
`root-temporary-key-to-encryption.asm`, `root-keystore-to-LE-keys.asm`,
`root-keyslots-to-LE-keys.asm`, `root-key-request-bridge.asm`,
`root-key-pairing.asm`, `root-LE-security-encrypt.asm`,
`root-encryption-complete.asm`.

Conclusion: these bytes are consumed as link-encryption material, not as an
application-layer owner-key write. This establishes Apple's route. It does
not establish that the case rejects unencrypted characteristic6 operations.

### Owner connection retries

`nextConnectionMaterialForPeripheral:` returns the first pending material for
that peripheral (`0x10140F630–64C`). In
`failedToConnectToPossiblePeripheral:withError:`, the active attempt pops its
failed material when no replacement attempt is pending (`0x101475004–00C`).
If materials remain, the routine explicitly describes retrying the same address
with multiple LTKs serially. The dispatch delay is0x4A817C80 nanoseconds, or
1.25 seconds (`0x1014750E8–F0`), before calling
`connectToDevice:withPeripheral:` again. This is a bounded-material retry;
it is not evidence that repeated unkeyed connections can authenticate.

Evidence: `root-next-material.asm`, `root-retry-failure.asm`,
`root-connection-failure.asm`, `root-connection-timeout.asm`.

### Mac FD44 visibility

The UUID constant at0x100894BB8 is a20-byte structure beginning
`02 00 00 00 44 FD`, verified directly in the binary. The policy constructor
inserts it into the restricted set at object+0x48. The UUID check
`0x100689EA4` applies the caller's restricted-service permission, and the service
reply loop at `0x1003F06D0–708` omits rejected entries. The session permission
comes from `com.apple.BTServer.allowRestrictedServices`. Thus a normal Mac app's
missing FD44 is explained by host filtering and does not identify the accessory
as wrong. Samsung's successful discovery remains a separate live observation.

### Decisive missing observation

An actual successful case connection followed by the characteristic6 CCC/init
exchange, or case-firmware access-policy analysis, is needed to determine the
case's requirement. GATT service enumeration does not expose the server's
encryption permissions. No live CCC write or initialization has succeeded yet.
