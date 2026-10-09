# App owner BLE diagnostic — 2026-10-09

Implemented and Android fossDebug APK build verified. Install/live validation is reserved to the parent.

## Worker interface

`findmy_owner_radio.run_diagnostic(caseRecovery, RootOwnerLinkAdapter(appContext))` returns a fixed JSON status on the existing Apple worker/event loop. `CaseRecovery.radio_accessory()` verifies signed-in account identity, explicit strict case selection, and the 30-minute recovered-key lifetime. It is rechecked before encryption. No account request occurs in the radio module.

The diagnostic:

1. Derives a bounded fresh primary/secondary address window from the selected recovered case (12-hour library recovery margin, maximum 256 primary indices/512 addresses).
2. Starts the app's root helper from its installed APK classpath; no ADB, host socket, private file import, or supplied shell command.
3. Scans connectable random addresses, matches the owned candidate exactly, and connects with 4s supervision timeout.
4. Subscribes to NERF UUID4, sends only `010004`, obtains the current PRIMARY public key from `010204` and compares **all 28 bytes** with this case's bounded primary candidates.
5. Derives the native `intermediate`/`connect` KDF from that primary secret and resumes encryption with its first 16 bytes. The recovery advertisement's secondary key is not used as the LTK.
6. After verified encryption, subscribes to precision UUID6, sends init `010107`, requires0706 status0, sends capquery `01100700000000`, and requires a complete0711 capability word.
7. Removes the temporary keystore, disconnects, powers down the temporary host, closes its H4 input pipe, and waits for helper Bluetooth restoration.

No UWB start, distance, or bearing is produced. App entry does not request optional legacy configuration. The canonical radio core retains the host CLI's optional configure-only0702 path so the existing successful experiment and tests remain usable;0707 completion is statusLE32/4B. There is no start serializer in the app codec.

## JVM boundary and root lifecycle

New Kotlin types: `findmy.root.RootOwnerLinkAdapter`, `RootOwnerHciPipe`, `OwnerLinkStatus`. Python passes the LTK only as an H4 packet into the private process pipe; it never serializes keys to Kotlin status, files, preferences or logs. Adapter command uses only Context's APK path and a fixed RootHciBridge class/mode. Python-accessed adapter/pipe classes have AndroidX Keep annotations.

RootHciBridge already limits its process to 180s and restores Bluetooth on EOF/deadline. Adapter keeps a single process lease and waits 45s on close; if helper exit/restoration cannot be confirmed, the result is `restore_unconfirmed` and the lease remains held until actual process exit. The root helper is not force-killed before restoration. The existing bridge restores the prior scan setting and re-enables Bluetooth; it requires Bluetooth to be ON initially.

Only allowlisted helper event names are read. Bumble packet/ATT logging is disabled for the app operation; BUMBLE_SNOOPER makes the operation fail before opening root. `OwnerLinkStatus.verified` requires encryption, init 0, a capability word, and confirmed restoration. It cannot represent UWB ranging.

## Shared core and packaging

`tools/uwb-protocol/usb-owner-link/probe.py` now imports scan, response/encryption/init/cap and optional configuration functions from the packaged `findmy_owner_radio.radio`. Host account/socket/USB concerns remain in that wrapper. Existing phone CLI uses this wrapper and remains compatible.

The retained Bumble 0.0.223 mobile wheel contains unchanged upstream package bytes verified against its distribution RECORD. Only dependency metadata omits desktop USB/gRPC/CLI requirements; H4 core needs pyee, cryptography and typing_extensions. Wheel license/provenance/source hashes are included and checked offline. Gradle adds this wheel alongside the existing pinned FindMy account wheel.

## Verification

- 8 new app Python selection/KDF/cleanup/error-boundary tests pass, including full-key rejection of a same-MAC-prefix mismatch and the independent CommonCrypto synthetic KDF vector.
- 18 HCI/ATT simulation tests pass through the shared radio core, including the new app's open current-primary query, wrong-key/disabled-encryption gates, init/cap failures, no SMP pairing, key removal, and optional 4B configuration completion.
- Mobile wheel imports Device/Peer/H4 transport; every retained source hash matches provenance, and none of the omitted desktop transports are imported.

Backend/ViewModel worker/state integration is owned by the Apple account agent; screen action and Android build/live validation are owned by the parent. Actual app-root/Bumble/Chaquopy behavior remains to be tested on the phone before claiming this app diagnostic is live verified.

## Finding UI and APK

CaseFindingRoute observes the real root/account/recovery/owner status flows and invokes the backend diagnostic action. It displays prerequisite/checking/failure/restoration/verified states. Root access, signed-in account and selected recovered case gate the connection button. The verified title describes the completed connection proof; the bounded diagnostic disconnects and restores Bluetooth. Closing this UI is labelled Close, without claiming to cancel the background worker. Distance reading stays null; freshness/bearing guards and the debug SIMULATION badge are preserved.

`:app:assembleFossDebug` succeeded with JDK21/SDK37 and the retained Python3.12. The pinned H4 wheel uses cryptography42.0.8, the available Android runtime; its active AES/CMAC/P256 API imports were inspected. APK: `android/app/build/outputs/apk/foss/debug/app-foss-debug.apk`. No phone installation, launch, radio action or account request was performed during this build task.
