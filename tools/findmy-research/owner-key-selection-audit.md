# Owner connection key selection audit — 2026-10-09

Scope: retained native binaries, pinned FindMy source, and synthetic tests only. No account requests, private candidate files, device operations, or enrollment changes were performed.

## Concrete discrepancy

`tools/uwb-protocol/owner_link.py` derives the connection token from the secret that generated the exact observed advertisement. Its arithmetic is consistent with the retained generic native key derivation. That does **not** establish that an AirPods case accepts that branch's connection key when advertising a secondary address.

The firmware investigation reported by the parent found that address installation at `3A660` consumes the supplied address argument, while replacement LTK loading at `37CA8` always reads `0x2001401C`, in the primary key bank. That firmware observation makes advertisement identity and encryption key selection separate requirements. This audit did not independently re-disassemble that firmware region.

The present helper cannot express this separation: `derive_for_observed_candidate()` chooses the generator from the advertised branch, verifies that generator's address, and derives only that generator's `_get_sk(branch_index)`. A secondary-address match is sufficient to identify the owned case; it is insufficient to select the current primary owner LTK. Do not change the SHA-256 labels, add an arbitrary update, or reverse token bytes to compensate for missing selection state.

## Derivation verified in retained native sources

For an already selected ratcheted shared secret `s`:

```
intermediate = SHA256(s || 00000001 || "intermediate")
connectionToken = SHA256(intermediate || 00000001 || "connect")
temporaryLTK = connectionToken[0:16]
```

The pinned generator `_get_sk(j)` applies `update` exactly `j` times to its supplied CloudKit seed. The same secret diversifies the P-224 beacon key. Native searchpartyd's indexed generator can label its callback `i` after applying `update^(i+1)` to its supplied seed; that difference in seed/index convention alone is not proof of an extra update after an exact address match.

Retained artifacts under `work/uwb-protocol-agent/`:

- `INDEXED-INTERMEDIATE-KEY.md`: diversified root helper `0x100b6c994` uses the same newly updated secret for public-key diversification and intermediate-key creation; indexed loop `0x101554960` documents relative seed convention.
- `connectionKey-callerB-ios26.asm`: `0x1007662b0` derives `connect` from the selected TimeBasedKey's intermediate key. Its SPCommandKey constructor uses a primary index and nil secondary index. The `floor(primary/96)+1` calculation nearby is appended to another array and must not be confused with proof that the connection token came from that secondary secret.
- `connectionKey-callerA-ios26.asm`: both enum branches call the same connect KDF (`0x10048ce78`, `0x10048ced0`). This establishes a shared primitive, not which branch/index the case accepts.
- `nearOwnerCommandKeys-keyconstruction.asm`: near-owner command keys also use the selected intermediate key with `connect`.
- `CASE-IDENTITY-AND-OWNER-LINK.md`: locationd copies SPCommandKey connection tokens without another KDF; CoreBluetooth receives their first 16 bytes.

## Native same-address retry is explicit

Apple retains multiple genuine connection materials for one peripheral and tries them serially:

1. `CLDurianConnectionAttempt.addPossiblePeripheral:withConnectionMaterial:` at `0x10140f0d4` groups materials in a mutable array by peripheral. At `0x10140f20c` it checks material equality, then appends a distinct material at `0x10140f220`. The retained full extraction is `owner-multiple-material-add.asm`.
2. `nextConnectionMaterialForPeripheral:` returns array element zero (`0x10140f644`, `root-next-material.asm`).
3. `popConnectionMaterialForPeripheral:` removes element zero (`0x10140f708`) and removes the dictionary entry only when the array becomes empty (`0x10140f710`–`0x10140f720`).
4. The active failure path logs “same address but multiple LTKs serially” at `0x1014750c0` (`root-retry-failure.asm`), schedules a 1.25 second delay (`0x1014750e8`–`0x1014750f0`), and calls `connectToDevice:withPeripheral:` again from `0x1014752b4`/`0x1014752c0`.

These are retries of provided native materials. The extracts do not establish a rule to synthesize arbitrary alternative token encodings or to choose one primary index from a secondary address.

## Stored state and fields

Retained `searchpartyd-ios26-swift.txt` provides useful distinctions:

- `OwnedBeaconRecord` has the primary/secondary secrets, optional secure-locations secret, private/public keys, and pairing date. No stored connection token or intermediate key appears in its schema.
- `KeySyncSnapshot.connectionKey` is `KeySyncData<PrimaryIndex>`. `wildSecondaryKey` is independently `KeySyncData<SecondaryIndex>`; `keyAlignment` is separately `KeySyncData<PrimaryIndex>`. `KeySyncData` contains an index and timestamp, not secret bytes. This is native local connection-index state absent from the current helper.
- `ManagedCBPeripheralKeys` stores `nearOwnerAdvertisement` and `connectionKey` separately, with sequence/index metadata.
- `BeaconKeyManager.ConnectionKeyGroup` similarly pairs a near-owner advertisement with a connection key. Its KeyResult route is `.shared`; its mere existence does not prove the owned AirPods case uses that route.
- The `connectionKeys` SQLite table belongs to `ItemSharingKeyDatabase`, not the owned master-beacon record. It is not evidence of another missing owned master secret.
- `CryptoKeys` serializes a computed connection key by calling the same `connect` KDF (`0x100823004`, `owner-connect-caller-untraced.asm`). Finding a serialized connection key does not by itself establish an independent seed.

## What the current library can determine

`cloudkit/beacons.py:accessory_from_record()` imports `sharedSecret` as SKN and `sharedSecret2` (or `secureLocationsSharedSecret`) as SKS. It uses `KeyAlignmentRecord.lastIndexObserved` and `lastIndexObservationDate` when available. Otherwise `FindMyAccessory` initializes alignment at pairing date/index zero.

Primary rollovers are bounded at one per 15 minutes. The minimum index may remain at the last observed alignment; the maximum advances with elapsed time. The library does not assume uninterrupted rollover. `candidate_document()` adds a 12-hour recovery margin and derives the finite primary range plus secondary keys.

Secondary candidates for primary index `i` are `floor(i/96)+1` and `floor(i/96)+2`. Thus a secondary branch-index 2 match is compatible with primary indices 0–191 before intersecting the alignment window. It does not identify one primary index. The candidate row's `index` is the first deduplicated representative produced by `current_keys()`/`current_mac_addresses()`, not an observed current primary connection index.

## Actionable integration requirement

Retain exact secondary advertisement matching as the case identity proof. Represent the connection key's source sequence/index independently. A firmware-supported primary-bank experiment needs a separately justified primary index (native connection-index sync or another verified alignment source) or an explicitly bounded candidate list derived from the existing alignment range. Native evidence supports serially trying distinct supplied materials; it does not establish their correct ordering for this case. The helper should describe its existing result as an advertisement-associated connection candidate until link acceptance is verified.

## Exact Mac local metadata lead

The retained Mac reflection dump `work/routes-agent/mac-owner-static/searchparty-swift.txt` confirms the same model in `searchpartyuseragent`:

- Lines 18291–18308: `ObservationDatabase` owns a SQLite `keySyncMetadata` table. `BeaconKeyStore` wraps this database. The database has an `encrypted` flag, so ordinary SQLite readability is not established.
- Lines 8951–8956: persisted `KeySyncMetadata` CodingKeys are `beaconIdentifier`, `type`, `indexInfo`, `timestamp`.
- Lines 8965–8975: `MetadataType` explicitly distinguishes `successfulConnectionAddress` and `successfulConnectionLTK` from `nearOwner`, `wildPrimary`, `wildSecondary`, `hintBased`, and `keyAlignment`.
- Lines 8977–8981: `indexInfo` CodingKeys are `rawValue`, `sequence`, and `isWild`.
- Lines 7409–7422: the snapshot's `connectionKey` is a primary index plus timestamp. This is the desired semantic index; a generic `keyAlignment` index need not be the last successful LTK index.
- Line 56221: metadata type RawValue is UInt8. The numeric mapping is independently verified below; concrete SQL column representation still needs decoding.

Static path construction is traceable in `work/searchpartyuseragent-disassembly.txt`:

1. Observation database file-URL getter, x86_64 `0x100fa99b0`, loads a base URL whose initializer is `0x100570500` (the `_swift_once` target at `0x100fa9ae3`). It appends the inline Swift string `Observations.db`; companion filenames are `Observations.db-shm` and `Observations.db-wal`.
2. `0x100570500` supplies the inline literal `DarwinUser` to the protected-app-data path selector. The equivalent arm64e constructor starts `0x10066c370` and supplies `DarwinUser` to `0x10066ee6c` at `0x10066c440` when the migration feature is enabled.
3. Arm64e `0x10066ef94` obtains the group container for `group.com.apple.icloud.searchpartyuseragent`; its actual string bytes at `0x10135e390` were read from the executable's arm64e Mach-O section. At `0x10066f00c` it appends `Library`, then the supplied `DarwinUser` subdirectory at `0x10066f020`.

Thus the enabled group-container branch constructs:

```
~/Library/Group Containers/group.com.apple.icloud.searchpartyuseragent/
    Library/DarwinUser/Observations.db
```

This is a static-derived path, not confirmation that the current host stores its database there. The fallback uses the Darwin protected-app-data directory through `confstr` (`ProtectedAppDataURLs.swift`), not the ordinary group-container branch. No directory contents or database were inspected in this audit. Full-disassembly string annotations sometimes point to unrelated pooled strings; actual Mach-O bytes and inline Swift constants were used to check the group identifier and `DarwinUser`/`Library` components.

The read-only index query should select the exact case `beaconIdentifier`, semantic type `successfulConnectionLTK`, primary/non-wild `indexInfo`, and retain its timestamp. A missing or stale record is unresolved state, not permission to substitute a secondary row's representative index. The nearby `successfulConnectionAddress` record can describe a different advertisement index. The selector `keySyncMetadataWithcompletion:` also exists on the Mac BeaconManager trampoline, but the existing helper's entitlement rejection for that service makes it an unavailable ordinary-process shortcut.

### Mac persisted UInt8 mapping — verified by native leaf execution

The actual `/usr/libexec/searchpartyuseragent` arm64e slice has SHA-256 `17ab587bee6429916c5edf8ffc26e9eaa11b1ba417f94676698be06f4677e592`. Synthetic Unicorn execution of its description function and raw getter confirms:

| UInt8 | MetadataType |
| --- | --- |
| 0 | unknown |
| 1 | nearOwner |
| 2 | latchSeparated |
| **3** | **successfulConnectionAddress** |
| **4** | **successfulConnectionLTK** |
| 5 | wildPrimary |
| 6 | wildSecondary |
| 7 | hintBased |
| 8 | keyAlignment |

The check operates solely on executable sections and synthetic bytes. Reproduction: `work/uwb-protocol-agent/verify-mac-key-sync-enum.py`; disassembly: `mac-key-sync-enum.asm`.

Proof chain, rather than assuming enum declaration order:

1. Swift nominal descriptor `0x10147706c` names `MetadataType` under parent `KeySyncMetadata`.
2. Its RawRepresentable conformance descriptor `0x1013cbf70` references the imported Swift `SY` protocol through `0x1015dea50` (verified with `dyld_info -fixups`). The resilient witnesses point to initializer `0x1009251dc` and raw getter `0x1000581d0`.
3. The raw getter is `ldrb w9,[x20]; strb w9,[x8]; ret`: the enum byte and persisted raw UInt8 are identical. The initializer calls `0x100926474`, which accepts bytes 0–8 and emits optional nil tag 9 for every other UInt8 value; all 256 inputs were checked synthetically.
4. CustomStringConvertible conformance `0x1013cbe10` points to `0x100926420`, which loads the enum byte and branches to description function `0x10092507c`. Executing that leaf for each valid byte yields the names in the table, including address=3 and LTK=4. Swift small strings and pooled strings were decoded from the returned two-word representation.
5. Encodable conformance `0x1013cc270` points to `0x100925268`, whose call at `0x1009252a4` is the Swift RawRepresentable/UInt8 encoder. Decodable conformance `0x1013cc1f8` points to `0x100925208`, whose call at `0x100925250` is the corresponding UInt8 decoder.

An initial manual CSEL interpretation briefly inverted values 4 and 5; actual synthetic execution caught this and the parent was immediately corrected before the final verified mapping was recorded. **The verified LTK value is 4.**

## Offline verification

Ran the existing `test_owner_link` and `test_account_case_identity` suites using the research virtualenv: **14 tests passed**. The owner-link suite includes three synthetic connection-token vectors independently checked against Apple CommonCrypto. These tests verify arithmetic and identity guards; they do not prove live AirPods LTK acceptance. No code or account state was mutated for this audit.
