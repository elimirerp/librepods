# AirPods enrollment experiments

> Historical source archive. Owned identifiers and serial numbers have been
> redacted. The fixed-target registration programs consequently reject use;
> they are evidence of the completed experiment, not a reusable enrollment
> installer. Current implementation and remaining bridge work are described in
> [the handoff](../../../HANDOFF.md) and [bridge preparation](../README.md).
> No candidate JSON, account state, keys or compiled helpers are included.

These are executable Mac probes built while investigating Find My enrollment for AirPods Pro 3 on macOS 26.4. **At approximately 18:46 CDT on October 8, 2026, these AirPods became visible in native Find My with a current location. A separate “Right Bud” location was subsequently observed with the earbuds outside the case.** See the latest results below; earlier sections are a historical experiment log. The authenticated helper has been stopped. It is not required to keep the native entry open.

## Working profile and latest results, 18:19–18:49 CDT

Three Sol agents independently audited iOS protocol code, the client, and open-source routes. Apple's iOS 26 `findmydeviced` binary was extracted using partial OTA downloads and compared with the earlier iOS 18 implementation.

The successful UI observation followed one `FMDExtAccessory`-shaped registration at 18:45:12:

- Genuine accessory identifier retained: SHA-256 of `BT_` followed by the uppercase colon-delimited Bluetooth address.
- Product type changed from plain `76_8231` to SHA-256 of `BT_76_8231`.
- `cachedConfigVersion` set to string `"27"`, returned by Apple's authenticated `/fmadminws/findkit/accessoryInfo` endpoint for this exact product.
- Genuine paired group UUID retained; recent native Bluetooth `fmGI` metadata independently confirmed it was unchanged.
- Actual Mac host reference included in `otherDevices`, with `macosx_proxy` as the accessory platform.
- Unknown RSSI timestamp set to `-1`; legacy-only fields omitted in accordance with `FMDExtAccessory.deviceInfo`.
- Cause `accessoryRegistryUpdate`, real account service token, verified TLS, and genuine accessory URL identity.

This request returned HTTP 204 with additional `X-Apple-DeviceRestart-Register-Interval` and `X-Apple-Loc-Src` response headers. At approximately 18:46, opening “Show in Find My” displayed an **AirPods Pro** Devices row and map pin with a current location. At approximately 18:48, native Find My displayed **Right Bud** and **Outside of case**. The user independently confirmed the result.

The legacy `initClient` API used by the diagnostic client still returned only the Mac, even while native Find My showed the AirPods. Therefore that API is not a sufficient verification method for this native entry. Long-term persistence after reboot, remote/offline finding, and sound playback were not tested. This combined trial does not isolate which changed field caused the result.

The direct helper was stopped after confirmation, releasing its in-memory account session and removing its control socket. No further registration attempts were made. No root operation was needed for this successful profile, and no system security settings were changed.

Implementation: `direct-register.py`, `payload('macosx_proxy', 'extension')`. Product-only catalogue metadata is stored privately in `.direct-state/airpods-product-configuration.json`; no password or service token is stored there. The client now also recognizes viewer `id` fields and keeps any returned `X-Apple-Ctx` in memory, separately for viewer and registration services. Neither service returned that header in this session. The one-hour session made seven registration attempts; its guard allows at most eight.

Exact native schema evidence is in `../../work/protocol-agent/FindMy-registration-audit.md`. The metadata-only pairing audit is in `../../work/routes-agent/graph-audit.json`. `registration-record` reads the current paired MAC/name/connection and derives the native accessory identifier, but its group argument and hardware constants originate from previously verified records; it does not independently discover the current group.

**Do not rerun the registration experiments for normal use.** The original direct-client startup path is an experimental registration flow, not a background service or an idempotent installer.

## Build and run

Requires the Xcode command-line tools already installed on this Mac.

```sh
make
bin/bluetooth-helper status AA:BB:CC:DD:EE:FF
bin/bluetooth-helper connect AA:BB:CC:DD:EE:FF
bin/owner-status AA:BB:CC:DD:EE:FF
bin/gatt-probe EXISTING-AIRPODS-PERIPHERAL-UUID
```

Use this Mac's Bluetooth address and cached peripheral UUID for the target AirPods, not the example address. Bluetooth probes require the normal macOS Bluetooth permission. All probes exit or time out; none run persistently.

- `bluetooth-helper`: checks an existing Bluetooth pairing or reconnects it. It does not forget, reset, or create a pairing.
- `owner-status`: sends a read-only Find My network status query to the existing Apple owner-session service. The MAC argument is encoded as six bytes, as confirmed from Apple's implementation. On this Mac the service rejects the request because the caller lacks an Apple-restricted entitlement.
- `gatt-probe`: connects only to the supplied cached peripheral and lists service/characteristic UUIDs and properties. It neither reads characteristic values nor writes pairing commands.
- `runtime-inspect`: lists class methods/properties in a locally installed framework; it does not call enrollment methods.

## Findings verified on October 8, 2026

1. The target is AirPods Pro 3, model A3064. The earbuds reported 8B34 initially and 9A348 later in the session; the case still reported 8B34.
2. At approximately 15:35 CDT, macOS's `searchpartyuseragent` completed a standalone pairing exchange with the target. Logs explicitly state that iCloud was considered signed out, that it created a standalone beacon, and that it skipped the pairing acknowledgement for standalone pairing. This does **not** prove account enrollment.
3. At approximately 15:43 CDT, the agent reported that standalone pairing was no longer required. Later logs repeatedly reported no beacon group for the target audio device.
4. The earlier exchange discovered the Find My service `FD44` and pairing characteristic `4F860001-943B-49EF-BED4-2F730304427A` with write and indicate properties. A separate LE peripheral participated in that exchange.
5. A live owner-session query reached `com.apple.icloud.searchpartyuseragent.ownersession`. The daemon explicitly rejected it for missing `com.apple.icloud.searchpartyd.ownersession`. The revised probe reports the XPC communication error immediately.
6. A separate ad-hoc signing experiment with that entitlement was rejected by AMFI: restricted entitlements cannot be granted by ad-hoc signing. The runnable probes here do not carry that entitlement.
7. The accessory-discovery-session interface in SPOwner attempted to contact a Mach service that was not registered on this Mac.
8. Bluetooth permission was subsequently granted. Public Bluetooth status and connection operations worked; the earlier GATT probe had timed out while the Mac was locked.
9. iCloud Find Devices showed only the Mac after refreshing the existing web session. No successful AirPods enrollment has been verified.

## Account pairing completed; device-list registration remains unresolved

At 16:15 CDT, the native account pairing exchange lost its Bluetooth link during finalize, timed out, and then stayed in “Pairing in progress. Not retrying.” The target was reconnected with the helper. A normal TERM signal to the user-owned `searchpartyuseragent`, followed by a demand launch, cleared that stale session. No system protections were changed.

The native retry then completed the left earbud at 16:19:25 and the right at 16:19:29. After closing and reopening the case, case pairing completed at 16:21:10. Evidence in the native unified log included:

- All three serial numbers marked paired in one `BeaconGroup`, with Find My network enabled.
- CloudKit record saves completed successfully.
- Case pairing acknowledgement returned HTTP 200 and application error code 0.
- State changed to `.successfullyPaired`, followed by “Pairing has been completed for all serial numbers.”

**This still has not made the AirPods visible in Find My.** Relaunching Find My, checking both Devices and Items, and opening “Show in Find My” from AirPods settings did not resolve it.

Inspection of the installed macOS 26.4 `findmydeviced` ARM64 implementation found:

- `ServerDeviceInfo._constructPairedDevicesInfo` returns a new empty array.
- `FMDServiceProvider._handleAccessoryDidPairNotification:` immediately returns.
- `FMDServiceProvider.supportsAccessory:` returns false.

These are concrete missing behaviors in the Mac's device-registration path. They are a likely explanation for the invisible entry, not proof that a custom implementation will succeed. The next investigation is the iOS registration payload and whether it can be supplied using the genuine, already-paired AirPods identifiers. The host-registration experiments below were subsequently submitted; a successful accessory enrollment has not been observed.

## Sources examined

### iOS registration code and prepared trial

The iOS 18.7.10 (22H374) `findmydeviced` binary was extracted from Apple's OTA package using partial downloads. Its `FMDBluetoothAccessory.deviceInfoForHostRegister` supplies genuine accessory identifiers under the host's `otherDevices` array. A separate `AccessoryRegisterAction` also sends a fuller accessory registration. The host-only experiments below did not produce a visible entry.

The Mac service merges the `deviceInfoOverrides` preference into its native registration dictionary. `FMPreferencesUtil.dictionaryForKey:inDomain:` directly calls `CFPreferencesCopyAppValue`, without an internal-build gate in this path.

- `registration-record` uses the local Apple `FMDAccessoryIdentifier` implementation and the paired Bluetooth device to create `registration-candidate.json`. It performs no registration. The host platform is truthfully `macosx_proxy`; server support is unverified.
- `registration-trial --check candidate.json` validates the target and permitted fields without changing preferences.
- `sudo registration-trial --run candidate.json` temporarily adds only this accessory to `otherDevices`, saves a root-only recovery backup, asks the native service to re-register via its existing notification, and restores the original local preference after 90 seconds. Server-side registration, if accepted, is not rolled back by restoring that local preference.
- At 16:47 CDT the user ran the first trial. The native service skipped registration because its registration digest was unchanged.
- At 16:55 CDT a revised trial temporarily changed the existing refresh marker as well as the nested accessory record. Apple returned HTTP 204 to the host registration. Find My still showed only the Mac.
- At 17:00 CDT a second host trial supplied the fuller real accessory identity and the iOS `iphoneos_proxy` protocol value. Apple again returned HTTP 204; Find My still showed only the Mac.
- Both the original override and refresh marker were restored and independently checked. A 204 response confirms the host request completed, not that Apple enrolled the AirPods.
- `--run-refresh` restores after 90 seconds; `--run-refresh-short` restores after 15 seconds. These remain experiments, not enrollment tools.

The generated JSON contains device identifiers. Do not publish it with the generic source code.

- [OpenHaystack](https://github.com/seemoo-lab/openhaystack): custom beacon keys and location-report retrieval in its own app; no genuine AirPods enrollment/Apple Devices-list registration implementation found.
- [LibrePods](https://github.com/librepods-org/librepods): AAP controls and MagicPairing keys; Find My enrollment remains a planned feature.
- [Apple Wireshark dissectors](https://github.com/pabloaul/apple-wireshark): AACP, MagicPairing, and other Apple protocols.
- [airpods-ctl](https://github.com/BorgoGustavo/airpods-ctl): macOS AAP/L2CAP transport experiments.
- [OpenTagViewer enrollment research](https://github.com/parawanderer/OpenTagViewer/issues/166): account and BLE provisioning are separate unresolved pieces. Its demonstrated CloudKit write feature is accessory renaming, not new accessory enrollment.
- [Apple's Find My instructions](https://support.apple.com/guide/airpods/find-your-airpods-dev8e8b93d71/web): official setup route uses iPhone or iPad.

Raw logs may include identifiers and cryptographic data. They are deliberately not bundled here. No system security settings were changed.


## Direct accessory client (prepared at 17:09 CDT)

`direct-register.py` uses FindMy.py 0.10.2 in the isolated `.venv` for an interactive Apple Account sign-in. The existing Mac and browser sessions are not read. The local Anisette provider has been provisioned successfully, without signing into an Apple Account.

```sh
.venv/bin/python direct-register.py --mode check
.venv/bin/python direct-register.py
```

Run in the user's own Terminal without sudo. It requests the account password and verification code using hidden input. A sign-in may produce an Apple sign-in notification or a new account device entry. Passwords and service tokens are held in process memory, not saved in the account library's normal export format. Only stable local Anisette/client identity is saved with mode 0600 inside a mode 0700 directory.

After successful sign-in, it checks the Find My device list and attempts one dedicated registration for the fixed genuine AirPods identifier, with `mmeFMIPToken` from Apple's MobileMe delegate. The URL is `https://fmip.icloud.com/fmipservice/findme/{dsid}/{accessoryUDID}/register`, following Apple's URL template and accessory controller behavior. The payload contains only these AirPods' identity. Their `activationLock: false` field mirrors the accessory implementation; it never changes the Mac's Activation Lock settings.

The process then stays open for 15 minutes, accepting only `status`, `list`, `register`, and `stop` over a user-only Unix socket. A same-UID peer check and four-attempt registration limit apply. Redirects carrying credentials are restricted to the observed Apple Find My host family. TLS certificate verification is enabled. Raw service responses, account identifiers, credentials, and locations are excluded from result logs.

Validated before user handoff: target identity matching, request body isolation, redirect restrictions, successful local authentication-provider preparation, same-user control-socket access, and clean socket shutdown. **Apple Account authentication and dedicated accessory registration were subsequently tested; see the live results below.**

### Protocol evidence

The extracted iOS implementation establishes:

- `AccessoryRegisterAction._registerDeviceWithCause:` supplies `deviceContext`, `deviceInfo`, and the account's `X-Apple-PrsId` header to `FMDRequestRegister`.
- `FMDServiceProvider.serverInteractionControllerForAccessory:` sets the URL's UDID to the accessory identifier, independently of body fields.
- `RequestTemplateURL.serviceIdentifierInURL` returns `findme`.
- `NSDate(FMDCodable).stringValueForServer` uses UTC `yyyy-MM-dd'T'HH:mm:ss.SSS'Z'` for `deviceTS`.
- `FMDRequest` sends API version `6.0`, HTTP Basic account authentication, and realm support `1.0`.
- The per-accessory APS value is the literal `TOKEN`.

Remaining uncertainty: whether Apple accepts a Mac-created proxy, additional account or accessory requirements on the server, and whether the iOS 18 code needs adaptation for AirPods Pro 3. A returned 2xx alone will not be reported as enrollment success; the target must appear in Find My.

Authentication implementation: [FindMy.py](https://github.com/malmeloo/FindMy.py), with [local sign-in documentation](https://docs.mikealmel.ooo/FindMy.py/getstarted/01-account.html). This library does not itself implement AirPods enrollment; the registration client here is experimental code written for this investigation.


## Direct-client live results, 17:11–17:23 CDT

- User sign-in and two-factor authentication succeeded. The first requests returned 401.
- Updated the running user-owned Python client with LLDB, retaining its in-memory session. No protected Apple process was attached, no credential values were extracted, and no second sign-in was needed.
- Added Anisette headers and explicit Basic Authorization via `aiohttp.encode_basic_auth`, removing the deprecated `auth=` usage in the custom transport.
- A successful read of Apple's `get_account_settings` returned refreshed Find My service tokens and the account's regional Find My hosts. The client now requests these before registering.
- Completed the Find My viewer's client context. Device-list requests then returned HTTP 200 with one device and no matching AirPods.
- Dedicated accessory registration returned HTTP 204 using both `macosx_proxy` at 17:17:53 and `iphoneos_proxy` at 17:18:10. Subsequent device lists still contained one device and no AirPods.
- Verified the signed-in client's account matched the Mac's native Find My account by comparing SHA-256 digests of account IDs, without logging the IDs. Repeated native host registration at 17:19:28, after the dedicated accessory registrations; Apple returned 204. Its original preference and refresh marker were restored and verified. Still no AirPods entry afterward.
- At 17:14:20 Bluetooth logged `UserSwitch` unpairing. The foreground console session changed away from `elibaum`. The client's original Apple account stayed in memory. While another Mac user is active, the revised client can use the previously verified target identity marked disconnected; it does not read the other user's account data.

**Result: authentication works and genuine accessory requests reach Apple, but enrollment is still unconfirmed and the device list still lacks the AirPods.** The original Mac session and live Bluetooth pairing need to be restored before further connected-device tests. The root helper is time-limited; all completed native trials restored their settings. The direct client's authenticated session expires 15 minutes after its `ready` event.
