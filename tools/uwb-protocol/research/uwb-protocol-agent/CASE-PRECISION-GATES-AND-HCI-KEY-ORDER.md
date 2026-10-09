# Case precision gates and Apple HCI key byte order

Static and synthetic only. No phone, controller, account, real key or identifier operations. Firmware source: official A3122 9A348 NERF and official A3064 8B34 NERF retained by the firmware audit. Case currently installed version was not re-read here.

## HCI key byte order is an unchanged16-byte copy

Installed Mac bluetoothd SHA256 ac6536ad1bb18d6657f4254ef7e7a878bb396d095ee6d04ac89a68738d51dd0c:

1. LE security call0x10021BA74 copies the input key into a16-byte command buffer at0x10021BC38, then submits internal command identifier0xB9 at0x10021BC48..4C.
2. HCI descriptor lookup0x1001B9698 selects24-byte records from0x100A9AB90. Record0xB9 is0x100A9BCE8; its opcode field is0x2019 and format-pointer rebase at+8 resolves to0x1008E1124, string `h82d`.
3. Command dispatch0x10016CD64 sees descriptor+0x10=0 and selects genericCommandFormatter0x10016B5A8 at0x10016CDB4.
4. Formatter'd' uses signed jump-table entry3 at0x10016C714+12, relative to0x10016B714, resolving to0x10016BBE4.
5. That path checks room for16bytes then goes to0x10016BC50. It dereferences the key pointer, loads q0 directly from the key at0x10016BC58, stores q0 directly at output+offset0x10016BC5C, and increments the output offset16 at0x10016BC64. There is no reverse/shuffle operation.

`verify-apple-hci-ltk-encoder.py` executes this original ARM64 slice under Unicorn with synthetic00..0F bytes. It also checks descriptor/format/jump-table values and compares the actual installed Bumble HCI_LE_Enable_Encryption_Command serialization. Native wire bytes and Bumble parameters[12:28] both equal input exactly. Result: `apple-hci-ltk-synthetic-result.json`.

This proves the actual final native command formatter preserves key byte order. Separately, temporary-key copying into the LE key structure uses unchanged copies: cached default key0x10077F7C4 uses memcpy from cache+0x218 to LE structure+0x1C; root's temporary-map path0x100771FB0..BC fills the same field. iOSlocationd supplies NSData subdataWithRange:(0,16) at0x101472C60..C68. The complete upstream map-copy helper was previously traced by root; this report does not execute that Objective-C daemon.

The NERF replacement-key routine0x2E708 also copies16bytes unchanged. Its caller0x3A6A4..A8 installs the fixed active primary bank key atoffset0x1C, then explicitly reverses only the6-byte address at0x3A6B6..C4. Final HCI serialization therefore supplies no evidence for reversing KDFconnect[0:16].

## Precision init and capabilities require different gates

9A348 precision handler0x24008 checks enrolled state0x2401E..24 and connection-encrypted flag5 at0x24050..5A before opcode parsing. On failure it sends0700 with acknowledged opcode0/status1.

Successful0701 dispatch0x240E8:

- selects any existing connection markedflag4; rejects if it belongs to another connection;
- sets current connectionflag4 at0x24108..10;
- posts asynchronous init event0x1B at0x2411A..1C;
- returns0 through0x243D0 without an immediate success0700 call.

Outer GATT callback0x3CA1A calls the precision handler and, for return0, simply returns at0x3CA22..24. It adds no successful ACK. The0706 completion callback0x23F04 invokes responsebuilder0x23DBC with status argument. iOS's endpoint matcher maps0706 to active0701 and its response completion path does not require preceding0700. Treat successful0700 as optional; require ATT write success and0706/status0 before declaring initialization complete.

Capability query0710 dispatch is0x243EA in both9A348 and8B34. It checks only nonnil capability object, logs request bit0, then calls responsebuilder0711 at0x2440E..12. It does not explicitly checkinitflag4 here. **However, the responsebuilder0x23DBC obtains its destination through getConnectionWithFlag(4) at0x23DC4..DD4 and drops the response if none exists.** Therefore a newly connected encrypted link still needs init to establish this response destination. A dispatch-only synthetic hook would omit that gate; the integrated harness preserves it.

Responsebuilder0711 branch0x23E9C copies full32-bit capabilityobject[0] and uses4-byte payload.0706 uses the supplied32-bit status argument. These yield7-byte complete frames including marker and opcode: `01 06 07 +statusLE32`, `01 11 07 +flagsLE32`.

`verify-case-precision-responses.py` runs original9A348 opcode validator/dispatch/response copies with synthetic RAM and explicit boundaries for connection flags, logging, asynchronous work and final transport. Six cases verify0706 zero/nonzero status,0711 payload, encrypted-uninitialized query yielding no response, encrypted-initialized query yielding0711, and unencrypted rejection. Results: `case-precision-response-synthetic.json`. This is not a full firmware boot or hardware crypto test.

## Current diagnostic limit

Parent's reported HCIEncryptionChange status8 plus disconnectreason8 is a connection timeout, not a positive encryption result even when the enabled field is1. The unchanged native formatter narrows byte-order uncertainty; it does not establish which LL exchange failed.

**New recovery-address trace:** callers0x383A4/0x38408 choose latched primary public key0x2001414C if nonzero, otherwise log"Using recovery key" and choose0x20014054 through getter0x37CD0. Both pass this independently selected address into0x3A980→0x3A660. The latter always obtains the replacementLTK through fixed getter0x37CA8→0x2001401C. The recovery bank is32bytes (public key28,index4), and its+0x1C field is an index, not an LTK. Therefore a recovery address can use the active primary bank's connection key. The previous same-address/same-key-branch inference was incorrect.

`verify-case-recovery-address-primary-ltk.py` executes original9A348 caller0x38408, real bank getters, and installer0x3A660 with distinct synthetic addresses and primary key. Both address branches install the same16-byte active primary key; the address reversal is checked separately. Result: `case-recovery-address-primary-ltk-synthetic.json`.

The native upstream command-token mapping for recovery addresses and exact current-primary selection remain to be established. The smallest new hypothesis is current primary LTK against the observed recovery address, using a valid current-primary time/index derivation rather than reusing the recoveryindex as a primaryindex.
