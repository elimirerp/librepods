# Resolve the active primary LTK index before encryption

## Finding

The existing A3122 9A348 firmware exposes a read-only command that returns the
**current primary public key** through an unencrypted, open GATT control point.
Match that public key to the owner's generated primary sequence to resolve the
primary LTK index used by the case. This resolves the branch/index ambiguity
when the connected advertising address comes from the secondary/recovery bank.

This is a control-point write requesting public metadata, not an ATT value READ.
No pairing, key rotation, reset, UWB configuration or ranging command is needed.

## Exact bounded exchange

1. Discover service **FD44** as UUID16.
2. Select **4F860004-943B-49EF-BED4-2F730304427A**, properties write + indicate
   (`0x28`). It is distinct from the precision-finding characteristic UUID6.
3. Enable indications by writing CCCD `02 00`.
4. Prefer an ATT MTU of at least 34 to avoid fragmenting the 31-byte reply.
5. Write exactly **`01 00 04`**: final-fragment marker 1 and opcode `0x0400` LE16.
6. Success is **`01 02 04 || primaryPublicKey[28]`**, total 31 bytes.
   There is **no status field** in the success body and no required success ACK.
7. Keep the public key in memory; compare all 28 bytes privately to generated
   primary candidates. Alternatively compare its Find My advertising-address
   prefix against the primary candidates, then require a unique row.
8. Obtain that primary row's LTK through the existing private IPC and use it for
   the same connected session. This research did not perform a live exchange.

Invalid-request ACK opcode is `0x0406`, body acknowledged opcode LE16 and status
LE16. Valid `0x0400` goes directly to the `0x0402` response.

The firmware can fragment replies at small MTUs: initial fragment includes
fragment-marker + opcode + first payload portion; continuation fragments include
marker + remaining payload. Do not assume every indication contains an opcode.
Only interpret the assembled exact 28-byte success body.

## Official iOS proof

Binary: retained official iOS26.7.1 locationd, SHA256
`4fe45b1b58a28fd4397fea587eefe0cda16717eceda9f3e9aff6426a2c09b74b`.

- `+[CLDurianTask getCurrentPrimaryKeyTask]`, **0x10144B814**:
  expectsResponse true at B850..85C; Find My Network service at B860..874;
  paired-owner-information characteristic at B878..888;
  sets opcode **0x0400** at B88C..894; serializes `01 00 04` as 3-byte NSData
  at B898..8C8. Evidence: `current-primary-key-task.asm`.
- `+[CBUUID _cl_HawkeyePairedOwnerInformationCharacteristicUUID]`,
  **0x10141B01C**, resolves literal UUID4 at B024..02C.
- `-[CLHawkeyeDevice createFetchCurrentPrimaryKeyTask]`, **0x10148A2D0**, native
  selector evidence in `locationd-ios26-addresses.txt`.

## Official A3122 9A348 case proof

NERF SHA256
`d5670f883e56efc8b4db4ac9fe9a28fec2a02271e442492924faaf5070898f47`.

### Permissions

UUID4 registration at **0x3D20E..236** selects UUID4, sets length148,
characteristic properties byte0x28 (`0x2801` at struct+0xC), and stores
**0x0101** at parameter struct+0x12: value write and CCCD write both enum1.
Value read permission remains zero (no access). UUID1 instead uses0x0202.

Builder **0x2C162** feeds value-write enum from struct+0x12 to helper0x2C130 at
2C18E..194, CCCD-write enum from+0x13 at2C1DA..1E8.
Helper enum1→0x11 = security mode1/level1 (open); enum2→0x21 = mode1/level2
(encryption). No ATT encryption requirement applies to this UUID4 request.
Evidence: `case-owner-service-registration.asm`,
`case-characteristic-permissions.asm`, `case-security-mode-enum.asm`.

### Handler and payload

- Generic write route **0x3C98A..9F4** matches owner-information handle from
  global+0x2E; validates complete-frame marker1; strips marker and calls3E37C.
- **0x3E37C..392** runs opcode/length validator3C680 using table5E6E6.
  Table contains `0400,length2`; input excludes marker.
- Dispatch **0x3E3EC..416** logs current-primary-key request, calls predicate
  **0x40350**, gets current primary-bank pointer via **0x37CA0**, selects
  response **0x0402** with payload length **28**.
- Getter37CA0 returns **0x20014000**. This is the active primary bank whose
  LTK begins at+0x1C, as proved by the recovery-address/primary-LTK installer.
- Predicate40350 checks cached Find My enrollment bits0..1 equal3. It does
  **not** read a per-connection encryption flag.
- No flag5 lookup, init flag4, or owner-encryption check occurs on this route.
- Generic response wrapper3C6D4→3C308→3C138 serializes indication fragments;
  single-frame marker1/opcode is built at3C176..1B8.
- If unenrolled, handler returns a fixed 28-byte placeholder rather than the
  synthetic current public key. Require a unique matching owner primary row.

Evidence: `case-owner-info-request-gate.asm`,
`case-current-primary-key-handler.asm`, `case-fragmentation-continuation.asm`.

## Synthetic verification

`verify-case-current-primary-key.py` executes unchanged firmware validator,
dispatch, real enrollment predicate, getter and payload selection under Unicorn.
RAM contains only fake public key bytes00..1B. Encryption state remains zero;
an encryption-flag function call fails the test. Logging and final indication
transport are explicit harness boundaries.

Both cases passed: enrolled returns exact fake28B primary public key;
unenrolled returns a distinct28B placeholder. Output contains no fake key bytes
and no live identifiers or keys: `case-current-primary-key-synthetic.json`.

## Limits

Static + synthetic proof covers 9A348. The physical case firmware version and
live connection can still affect behavior. No actual unencrypted query was run
by this agent. The earlier successful FD44 discovery establishes service
visibility but does not by itself establish UUID4 command success.
