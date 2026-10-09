# One-time owner case BLE identity proof

Source audit and offline verification, 2026-10-08. This agent made no Apple
authentication, account read, registration or radio call. Parent coordinates
any live use. The helper is deliberately independent of the Android app's
saved account state and the retired enrollment control helper.

## What an account can provide

Paths below are relative to `android/vendor/findmy-account/findmy/` in this
fork, pinned FindMy version 0.10.1 commit
`7969003ca785658369b650f75d9e7ca519566bf6`.

| Source/API | Wire response or relevant fields | Case address value |
|---|---|---|
| Enrollment lab `direct-register.py:device_list` | `/fmipservice/device/{dsid}/initClient`, JSON `content[]`; client examines `id`, `baUUID`, `serialNumber`, `serialNumbers`, `deviceDiscoveryId`, `udid` | Cloud/discovery identifiers; not a demonstrated current case BLE address. Earlier successful AirPods registration remained absent here. |
| `cloudkit/client.py:open_container` | `https://gateway.icloud.com/setup/setup/ck/v1/ckAppInit?container=com.apple.icloud.searchparty`; `cloudKitUserId`, database/code/share gateway URLs | Routes CloudKit reads. Basic auth uses mmeAuthToken; header also requires cloudKitToken. |
| `cloudkit/client.py:record_sync`, `constants.py` | Gateway `/api/client/record/sync`, protobuf operation 213, zone `BeaconStore`; changes, continuation token, status3 means complete | Reads records encrypted; no keychain state needed for fetching. |
| `cloudkit/proto/cloudkit.proto:Record` | record identifier/type, record fields, protection info; each field has name, declared plaintext type, ciphertext bytes and `is_encrypted` | Interesting BeaconStore values are encrypted, even if their declared type is string/integer/date. |
| `cloudkit/beacons.py:accessory_from_record` | `MasterBeaconRecord`: `privateKey`, `sharedSecret`, `sharedSecret2` or `secureLocationsSharedSecret`, `pairingDate`, `model`, `groupIdentifier`, `stableIdentifier` | Supplies master rolling-key state after decryption. |
| `cloudkit/beacons.py:group_records` | `BeaconNamingRecord.associatedBeacon`; `KeyAlignmentRecord.beaconIdentifier`, `lastIndexObserved`, `lastIndexObservationDate` | Joins component records by master record ID. Alignment is optional but reduces candidate uncertainty. |
| `accessory.py:current_mac_addresses`, `keys.py:mac_address` | Derives primary/secondary public-key candidates; address = first six public-key bytes, first byte OR0xc0 | Produces candidate rotating static-random BLE addresses, not an immutable hardware address. |
| `reports/account.py:fetch_raw_reports` | `https://gateway.icloud.com/findmyservice/v2/fetch`; `acsnLocations.statusCode`, `locationPayload[].id`, `locationInfo[]` | Location-report path, not used by this helper and unnecessary for identity. |

The AirPods structured stable identifier is documented in `accessory.py` as
`a:/<uuid>~#¶<model>§<hwid>§<hex-ascii-serial>§<position>`; positions0/1
identify buds and position2 identifies the case. The helper requires an
exact decrypted `groupIdentifier` match plus a valid position2 structure,
and refuses zero or multiple matches. Neither an audio Bluetooth UUID nor
a FMIP URL ID substitutes for this component beacon identity.

## Authentication and E2E decryption are separate

An ordinary authenticated Apple Account can fetch the encrypted records.
The current Android account backend stores service-token state, without
Manatee/PCS keys. Decryption needs the protected keychain hierarchy:

1. A usable escrow record and that device's screen-lock passcode recover
   the existing peer's encryption identity.
2. Recoverable TLK shares/class keys permit reading the `Manatee` view.
3. Its Find My PCS service-key item (service82 in `keychain/servicekey.py`)
   yields service keys.
4. Service keys unwrap the BeaconStore zone; zone keys unwrap/decrypt its
   records.
5. The decrypted case rolling-key state yields candidate addresses.

This is implemented by `icloud.py:AsyncFindMyClient.unlock`,
`keychain/session.py:recover/pcs_keys`, and `cloudkit/beacons.py:zone_keys`.
The source explicitly describes recovery as read-only. `join`, escrow
enrollment/deletion and naming updates are separate mutation APIs and are
never called by the helper. Manual local TLK export is not required if
the escrow recovery path succeeds. A prior valid peer or PCS keys could
also supply the hierarchy, but none is loaded from the app here.

Opening the keychain reader needs a fresh PET, so it performs another SRP
authentication using the in-memory account password. A password-free
service-token export alone cannot supply that PET. The helper can reuse an
explicit password-free local-Anisette account export but prompts for the
password again for recovery/candidates. It does not save that password.

The retired enrollment `.direct-state` filenames indicate only client
identity, Anisette libraries, product configuration and results. Its README
states the authenticated helper was stopped and no account service-token
snapshot was stored. Existing local owner-session probes were rejected
for Apple-restricted entitlements; they are not a working owner-key export
bridge.

## Native connection material is an additional requirement

iOS locationd calls `connectionTokensForBeaconUUID:criteria:completion:`.
The reply material fields are `address`, `connectionToken`, `primaryIndex`
and `secondaryIndex`; it passes connectionToken into a connection-material
initializer as the LTK. Mac SPBeaconManager forwards this to the local
user-agent `commandKeysForUUID:withCriteria:completion:`. This is a private
local IPC contract, not an identified public HTTP endpoint.

The Python client implements rolling beacon keys/addresses but not the
native command-key/connectionToken/LTK derivation. Resolving and matching
the case address is therefore a useful independent proof; it does not yet
permit the protected GATT connection or UWB session.

## Runnable helper

`account_case_identity.py --help` needs only Python3.10+. Live execution
needs the pinned library's dependencies; the enrollment lab virtualenv
imports them successfully after installing its missing protobuf runtime.
The helper imports the vendored source directly, avoiding upstream's
incomplete package-subdirectory declaration.

From the fork root:

```sh
../../outputs/airpods-enrollment-lab/.venv/bin/python \
  tools/uwb-protocol/account_case_identity.py \
  --stage candidates \
  --local-identity ../../outputs/airpods-enrollment-lab/.direct-state/client-identity.json \
  --anisette-libs ../../outputs/airpods-enrollment-lab/.direct-state/anisette-libs.bin \
  --output ../../work/account-integration-agent/findmy-case-identity.json \
  --serve
```

Required interactive input: exact owned group ID, account email/password,
2FA if requested, numbered recoverable device choice and that device's
screen-lock passcode. Secrets are hidden. Recovery options show only option
number, hardware model and escrow date; no device names/serials/labels.
Parent can wrap only the passcode prompt with its local secret broker.

Stages: `login` stops after sign-in; `records` reads encrypted record
metadata only; `recovery` additionally lists usable escrow metadata;
`candidates` decrypts/selects/derives. Terms acceptance is not automatic.
Every HTTP phase has a45-second deadline. BeaconStore reads have8-page /
256-record limits. Candidate generation has a128-primary-index span,
maximum index100000 and maximum512 resulting addresses. No alignment is
allowed only if the library can use pairingDate and these bounds pass;
ambiguous or malformed alignment fails.

Only the explicit new output receives a0600 JSON: schemaVersion1,
component `case`, generatedAt, candidate address/index pairs and minimal
group/beacon association. No master keys, shared secrets, passcodes,
passwords, session tokens, locations or names are persisted. Input session
and identity files are not modified. Local Anisette's library cache is
copied into an isolated private temporary directory before use.

With `--serve`, the account password is cleared and decrypted records,
case/accessory when selected, and session stay in memory for one hour.
Post-decryption selection failure also starts the server; the user does
not need to sign in again just to resolve the component association.
Default socket is output-directory /
`case-identity-control/control.sock`; its parent is0700 and socket0600.
Darwin getpeereid (or Linux SO_PEERCRED) enforces same UID. Fixed requests
are exactly `{"action":"status"}`, `metadata`, `refresh_candidates`, or
`stop`. `metadata` returns bounded field-type/structural-role counts only,
with no values or record IDs. The explicit `select_case_id` action takes
exactly `{"action":"select_case_id","caseIdentifier":"<verified native case ID>"}`
(alias `reselect_case`). It requires an exact unique master-beacon name
and strict position2 stable identifier; it does not silently substitute
another group. Output labels this explicit selector, preserving the
record's actual group identifier when available.
No credentials are accepted through this control socket. Refresh derives
locally and atomically replaces only the selected output, checking its
inode/owner/mode; it refuses a file another process has replaced.

## Verification

Nine offline tests pass, including case/bud/ambiguous selection, output
privacy and exclusive creation, candidate bounds, local-only Anisette
gating, recovery stopping before passcode, complete fake read-only flow,
optional alignment, bounded pagination and a real local same-UID Unix
socket test. The socket test rejects registration/location/join/connect
commands and arbitrary paths, exercises refresh/stop and refuses an
externally replaced output. Another test retains initially unselected
records, reports only safe metadata and rejects a wrong exact case ID
before accepting the verified ID, without a new authentication request.
No live Apple session was used in these tests.
