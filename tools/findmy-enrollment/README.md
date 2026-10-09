# Isolated Mac enrollment bridge preparation

These tools are offline preparation for a future bridge. They do not call Apple,
query Bluetooth, pair, register, change accounts or operate the phone. They expose
no registration submit operation. The current owned AirPods are already enrolled;
their correct outcome is `preserve_existing`.

## What the existing artifacts actually establish

The final authoritative registration audit and handoff establish native owner
pairing followed by extension registration. The native Mac process completed
left/right/case pairing, CloudKit saves and acknowledgement. The successful
registration then used the existing audio MAC, group UUID and actual Mac host,
with the exact server configuration hash/version. Native Find My row/map
visibility established success after HTTP 204.

The original `outputs/airpods-enrollment-lab/registration-record.m` does **not**
discover an accessory's ownership evidence. It accepts the group UUID as an
argument, checks ordinary Bluetooth pairing, and contains values verified for
one historical device. Its serials, product and firmware fields are hardcoded.
It must not be generalized by replacing the Bluetooth address or minting a UUID.

`work/routes-agent/graph-audit.json` explicitly reports private redaction of
CloudKit relationship values and lack of protected native directory access.
Those historical metadata logs independently support the pairing chronology,
but do not export exact component relationships. Later account-keychain/CloudKit
work decrypted the owned records and established the exact group and component
positions. Both evidence types must retain their original scope.

The ordinary `SPOwnerSession` status probe was rejected because it lacked an
Apple-restricted entitlement. Merely loading a private framework does not grant
access. The demonstrated pairing was completed by Apple's native Mac service.
The Mac's legacy accessory registration callbacks were empty/stubbed in the
examined build, which is why the separate extension registration was needed.

## Concrete remaining bridge pieces

| Piece | Available evidence/code | Still needed |
| --- | --- | --- |
| Native owner pairing | Historical successful native Mac pairing of all three components | For a genuinely new device, complete Apple's native pairing with the same owner account; no Android equivalent exists in this build |
| Exact ownership/export | Existing decrypted owned CloudKit records and genuine group metadata | A fresh exporter binding the audio MAC, group UUID, component records and acknowledgement to the authenticated account; caller-written booleans are insufficient |
| Actual host identity | `collect_host_metadata` reads real Mac host fields | Authenticate that this Mac and the accessory belong to the same account; host metadata alone cannot establish ownership |
| Current product config | Android bounded read client and exact hashed config parser | Fetch on the bridge session before a new registration; never assume historical version 27 |
| Transport | Successful historical extension registration shape/path | A current authenticated Mac bridge with validated regional host, same owner account, isolated credentials and explicit new-device request |
| Android/Mac connection | No transport added here | An authenticated, user-selected local channel carrying redacted readiness/results; keep Apple tokens and owner keys on the endpoint that needs them |
| Confirmation | Native row/map was confirmed for the existing device | For any new request, exact native device/account visibility; HTTP 204 or response headers alone cannot prove it |

A future channel must bind the authenticated Mac peer/session to each evidence
bundle and request. Neither a local JSON file nor its permissions authenticates
Apple evidence. Secure enrollment authorization must come from the verified new
device flow. A missing `initClient` entry cannot provide that authorization.

For the demonstrated route, the Mac must have native owner pairing for the same
Apple account. Android Apple Account sign-in by itself does not sign the Mac's
native services into iCloud. The custom registration was validated only using
the actual Mac in `otherDevices` with `macosx_proxy`. No Android substitute host
or Mac-free new-accessory pairing flow is demonstrated. Existing enrollment
does not require an always-running Mac helper.

## Prepared APIs

`bridge_plan.assess(manifest)` returns a redacted assessment:

- `existing` enrollment → `preserve_existing`, without inspecting pairing inputs.
- Unknown enrollment or a missing legacy list row → `preserve_unknown`.
- Explicit new-device inputs with incomplete genuine evidence → prerequisites missing.
- Structurally consistent new-device inputs → bridge incomplete, always `canSubmit=false`.

The last case calls the audited pure registration builder only in memory. It
does not return or save the payload. It lists the remaining authenticated bridge
pieces and exposes the public config version. The manifest has `enrollmentState`,
`pairing`, `host`, and `configuration` using the app builder's field contracts;
do not create a manifest for the currently enrolled accessory.

`registration_outcome` separately classifies a future request receipt. HTTP 204
means server accepted/unconfirmed. A native confirmation must be authenticated
by the future caller and bound to the exact accessory UDID, genuine group and
owner account. The function only compares those values; it cannot establish the
source's authenticity. It never suggests automatic retries.

`collect_host_metadata` is inert until called. It uses real `gethostuuid`, hardware
model, computer name and macOS version to supply the audited host fields. It does
not read account stores, contact Apple or access Bluetooth. Returned
`ownerAccountVerified` is false and no account ID is supplied. That result alone
intentionally fails registration preparation until an authenticated same-owner
binding exists. It has not been executed on live hardware during this task.

## Offline CLI and tests

The CLI accepts only an explicit private, regular, same-user JSON file. It refuses
world/group permissions, final symlinks, oversized data and credential/key fields.
Output is redacted; credentials, identities, serials, payloads and raw errors are
not printed. It can assess existing historical evidence without attempting a new
registration.

```sh
python3 tools/findmy-enrollment/bridge_plan.py PRIVATE_MANIFEST.json
cd tools/findmy-enrollment
python3 -m unittest -v test_bridge_plan
```

All 11 tests use synthetic inputs and injected host readers. They cover existing
and unknown enrollment preservation, missing-list ambiguity, swapped device/account
confirmation, 204 interpretation, unverified actual-host collection, forbidden
credential fields, file permissions/symlinks/bounds, and redacted errors.

No new enrollment, authenticated account read, phone action, APK build/install or
native host metadata collection was performed for these tools.
