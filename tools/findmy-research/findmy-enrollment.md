# Find My enrollment integration

The current owned AirPods Pro 3 are already enrolled. The successful native Find My
row and map pin were confirmed on 2026-10-08. Preserve that pairing and enrollment.
The app exposes account access checks; it does not repeat enrollment.

## Current Android behavior

Apple Account settings offers **Check Find My account access** after sign-in.
Construction, opening settings without a saved session, and the local readiness
inspection make no Find My requests. Explicit refresh uses the existing account
worker and session, obtains local Anisette headers, then reads:

- Account settings from `setup.icloud.com`, when a general iCloud token exists.
- The current exact AirPods Pro 3 configuration from Findkit `accessoryInfo`.
- The legacy Find My `initClient` device list with `shouldLocate=false` and
  `push=false`. No locate command or registration request is sent.

Returned settings can select a validated regional Find My host and refresh the
service tokens used for this check. Those refreshed tokens stay in memory for
the check; they do not replace the stored login session. TLS verification is
enabled with the pinned FindMy package's platform trust plus verified Apple root.
Redirects stay within the expected Apple Find My hosts. Successful response bodies
are capped at 1 MiB. Raw responses, locations, identities, credentials and header
values do not enter the status object or logs.

The ViewModel passes LibrePods' selected audio address from `settings/mac_address`
after validation. The module derives `SHA256("BT_" + uppercase_colon_audio_MAC)` and
matches exact `udid`/`id` or the exact `deviceDiscoveryId`. A name containing
"AirPods" does not prove the selected device is registered. The rotating case BLE
address and CloudKit beacon UUID are different identities and must not be used.

The historical legacy endpoint omitted these AirPods while native Find My showed
them. A missing web-list row remains **unconfirmed**, and never enables reenrollment.
Product catalogue failures do not hide a successful selected-device match;
device-list failures retain a successfully fetched configuration version.

Supported catalogue type is deliberately limited to the audited product:

```text
vendor/product = 76 / 8231
productType = SHA256("BT_76_8231")
            = d698de70c4177995dbe15a33e3985e66db0bfa044dfd70dd38e82262394bac0d
```

The current version comes from Apple's successful exact configuration response.
Version 27 was the value during the successful experiment, not a permanent default.

## What still requires the native Apple route

The experiment established two independent operations:

1. Native macOS `searchpartyuseragent` completed owner pairing of both earbuds and
   the case. Native logs recorded one genuine BeaconGroup, successful CloudKit
   saves, pairing acknowledgement HTTP 200/application error 0, and completion
   for all serial numbers. A standalone local pairing that skipped account
   acknowledgement did not establish account ownership.
2. The extension-shaped accessory registration used that genuine audio address
   and paired group UUID, current hashed product configuration, and the actual
   signed-in Mac host in `otherDevices`. HTTP 204 was followed by native Find My
   row/map confirmation. Earlier HTTP 204 responses had failed to produce a row.

The supplied Android implementation can sign in and read account state without
the Mac running. It has no implementation of the native accessory owner-pairing
exchange, CloudKit ownership writes, pairing acknowledgement, or an authenticated
native pairing exporter. Android Bluetooth bonding and Apple Account login do
not establish those prerequisites. A generated group UUID cannot substitute.

The proven new-enrollment route uses a Mac. This is a dependency of the demonstrated
implementation, not proof that the protocol fundamentally forbids an eventual
Android implementation. Native Apple owner pairing might be supplied by another
Apple device, but the custom extension registration here was validated only with
an actual Mac host and `macosx_proxy`. No Android host/platform substitution or
alternate iOS registration route has been validated.

An already enrolled accessory needs no Mac bridge, registration replay, reset or
unpair to preserve its registration. A future Mac registration bridge must obtain
fresh native evidence and genuine host metadata; it must not reuse the login
adapter's synthetic authentication hardware profile as an actual Mac host.

## Prepared core and remaining work

`findmy_enrollment.build_registration` is a pure, offline payload builder for a
future Mac bridge. It performs no HTTP calls and is not exposed as an Android
enrollment action. It accepts only the audited vendor/product, a genuine
MAC-derived UDID, a nonzero paired group UUID, all three native pairing/CloudKit
component confirmations, a verified matching owner account, and an actual Mac
host reference. Current configuration evidence must be at most 15 minutes old.
Existing or unknown enrollment is rejected. Missing web-list entries must never
be used to assert `alreadyEnrolled=false`.

The builder uses the audited extension defaults, actual Mac version and host
reference, serial dictionary, observed connection state, and literal `aps-token`
value `TOKEN`. It omits obsolete Bluetooth fields. Its assertions check structure
and consistency; they cannot authenticate a caller's self-reported evidence.
The native exporter and trust boundary must exist before this core can become a
live registration flow. It presently does not mint UUIDs, host identities, keys,
CloudKit records, ownership acknowledgements or enrollment confirmations.

Remaining implementation for adding a genuinely new accessory is native pairing
and authenticated evidence export (or a fully implemented Android pairing
protocol), a secure connection to an actual supported registration host, explicit
new-device registration with the current regional configuration, and native
visibility confirmation. No such action is needed for the already enrolled case.
Precision Finding additionally needs the encrypted owner Bluetooth connection and
compatible UWB session; a registration row or account login proves neither.

Isolated bridge planning and a more detailed artifact audit now live in
`tools/findmy-enrollment/README.md`. The planner preserves existing/unknown
enrollment and never exposes submit capability. Its actual Mac host metadata
collector deliberately leaves account ownership unverified. The existing
historical `registration-record` helper accepts the group UUID and hardcodes
hardware fields; it is not the missing authenticated native exporter.

## Source and verification

Authoritative evidence in the parent workspace:

- `work/protocol-agent/FindMy-registration-audit.md`, final successful extension
  profile and native method field audit.
- `handoff.md`, sections 6 and 7, final registration result and identity boundaries.
- `outputs/airpods-enrollment-lab/README.md`, final result and historical native
  account-pairing observations. Later final result takes precedence over old
  unresolved statements in its chronological log.

Implementation files:

- `android/app/src/main/python/findmy_enrollment/__init__.py`
- `android/app/src/main/java/me/kavishdevar/librepods/findmy/enrollment/EnrollmentStatus.kt`
- Account Backend/ViewModel/Screen integration uses the existing single worker.
- `android/app/src/test/python/test_findmy_enrollment.py`

Run the 23 offline enrollment tests:

```sh
python3 -m unittest discover -s android/app/src/test/python -p test_findmy_enrollment.py -v
```

They cover native hash/profile shape, fresh configurations, partial service
failures, exact identity matching, bounded partial HTTP reads, Apple-only redirects,
safe status/error output, false owner/host evidence, incomplete component pairing,
and preservation of existing/unknown enrollment. Fixtures are synthetic, so these
tests establish implementation behavior, not a new live enrollment success.
