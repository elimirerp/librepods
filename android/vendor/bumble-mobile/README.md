# Bumble H4 runtime

Pinned Bumble 0.0.223, Apache-2.0, from the retained installed upstream distribution. All package files were checked against its upstream RECORD and are unchanged. The license and per-file provenance are inside the wheel; `PROVENANCE.json` also records its SHA-256.

The local wheel version adds `+librepods.1`. Only dependency metadata differs: it requires pyee, cryptography>=42.0.8 and typing_extensions for the in-process HCI/device/GATT stack. Desktop USB packages, CLI dependencies and gRPC/Pandora dependencies are omitted. The app does not use those transports or optional modules.

`scripts/build_bumble_mobile_wheel.py` regenerates the wheel from an installed exact 0.0.223 distribution after verifying package hashes. APK builds consume this retained wheel without downloading Bumble or accepting a newer version. No Bluetooth driver firmware is included here.

The Android cryptography floor is42.0.8, the available Chaquopy runtime. The active Bumble crypto backend imports longstanding AES/CMAC/P256 APIs available in that version. Owner encryption is performed by the Bluetooth controller with the recovered LTK; app SMP pairing is disabled. No general optional Bumble feature compatibility with older crypto is claimed.
