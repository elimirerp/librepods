# AirPods case rolling-key selection audit

Scope: local source review and synthetic tests. No live account/process/radio access by this agent. Root reports the subsequent foreground passive scan matched the exact selected position2 case's candidate address at library index31. No address, account identifier or real key is recorded here.

## What the pinned client actually uses

- `work/elimirerp-librepods/android/vendor/findmy-account/findmy/cloudkit/beacons.py:336`: master private scalar is the final28 bytes of `privateKey`. `sharedSecret` becomes SKN unchanged. `sharedSecret2`, otherwise `secureLocationsSharedSecret`, becomes SKS unchanged. No derivation, seed advance or reset occurs during assembly.
- `beacons.py:361`: optional `KeyAlignmentRecord.lastIndexObservationDate` / `lastIndexObserved` supply the alignment date and index. The helper joins this record through `beaconIdentifier == MasterBeaconRecord.name`; it does not use native fmCI as this join key.
- `findmy/accessory.py:415`: alignment sets only the candidate index/time window. It never replaces or offsets the original SKN/SKS. With no alignment, pairing date/index0 are used.
- `accessory.py:729`: chain indexi is `update^i(initialSeed)`, where update is X9.63-SHA256 with label `update`. Index0 leaves the initial seed unchanged.
- `accessory.py:458`: `keys_at(i)` includes primaryi and secondary `floor(i/96)+1` and `floor(i/96)+2`. Primary0 is included whenever the searched nonnegative range reaches0. Secondary0 is never included.
- `findmy/util/crypto.py:79`: diversification is X9.63-SHA256 label `diversify`, output72; split into36-byte integers u/v, normalize each modulo P224 order minus1 plus1, then scalar `(u*master+v) mod order`.
- `findmy/keys.py:99`: BLE address is first6 big-endian public x-coordinate bytes, with first byte OR0xC0. This creates a static-random address, not an IRK-derived resolvable private address.

## Concrete checks and implications

Six tests in `test_key_selection_audit.py` independently implement SHA256 X9.63, scalar arithmetic and P224 public extraction using synthetic seeds. All passed under the enrollment lab virtualenv. They verify the primary index0 branch, absence of secondary0, alignment without seed mutation, candidate index labels for secondary keys, and the helper's branch metadata with the actual pinned library.

The native range trace in `work/uwb-protocol-agent/INDEXED-INTERMEDIATE-KEY.md` emits native indexi using `update^(i+1)(suppliedSeed)`. This differs from the library's index label. A contiguous library primary range0..78 already covers78 of79 keys in the corresponding native shifted range1..79; adding one at the upper boundary would cover the remaining key. Therefore a simple +1 offset was unlikely to explain zero matches throughout a wide window.

Root's later exact case match demonstrates the cloud-to-library assembly and address encoding work for the matched key branch. Missing secondary0 is a source observation, not evidence that the current case uses it, and no extra candidates or seed transformations are needed to explain the current result.

## Preserve sequence information for the next step

`current_mac_addresses()` returns an address→primary-window-index mapping. For a secondary key, that number is only the first primary index in the search range at which the secondary key was included. For example, a search starting at31 returns31 for both secondary chain indices1 and2. It is not proof of secondary chain index31.

Before deriving the connect token from the matched address, compare that address privately against `_primary_key_at(31)` and `_secondary_keys_at(31)`. Record only the matching sequence and exact chain index. Under the library convention, use the matched chain secret `update^j(SKN or SKS)` for `intermediate` and then `connect`; do not apply another update merely because native callback index labels start one lower relative to the same seed. The native supplied-seed bridge remains unverified, so address/public-key equality is the reliable anchor.

The helper now resolves each candidate's generator branch over its bounded window and exports only `keySequence` (primary/secondary) and `branchIndex` beside the existing scanner `index`. It fails on ambiguous or unresolved branches. Component labels come from the decoded stableIdentifier position, including the verified single trailing separator; generic invocation on buds no longer labels them case. An explicit expected-group argument validates group equality before returning `selectionBasis=exact-owned-group+decoded-component-position2` for a case. Eleven helper fake tests also pass.

## Separate Bluetooth path

ios_protocol reports a separate FindMyBluetooth pairing-info path containing `RemoteIRK`, remote address and address type, supplied to CBOOBKey discovery. This can resolve RPA advertising independently of the offline-finding public-key address path. The library candidate generator does not cover RPA resolution; the successful static-random case match does not establish that every case advertising mode uses that address. No random hash or byte-reversal transformation is justified.

Native cached fmCI and the selected CloudKit MasterBeacon UUID have been reported unequal. Maintain their separate namespaces; position2 plus exact verified group selected the CloudKit case record.

Run:

```sh
outputs/airpods-enrollment-lab/.venv/bin/python work/account-integration-agent/test_key_selection_audit.py
```
