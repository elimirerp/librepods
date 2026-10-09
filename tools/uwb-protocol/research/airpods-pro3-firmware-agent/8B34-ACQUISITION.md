# Official 8B34 acquisition and case MCU comparison

## Installed-version evidence and limit

Existing workspace evidence is `outputs/airpods-enrollment-lab/README.md:52`, which records initial earbuds 8B34, later earbuds 9A348, and case still 8B34. The saved `bluetooth-info.plist` did not expose a firmware/version field in a recursive field-name check. No new hardware query was performed. Thus **case 8B34 is a previously recorded observation**, not a newly verified installed version.

## Actual Apple image obtained

An older URL was discovered through the [AppleSN firmware directory](https://applesn.info/firmware/bluetooth-headset-firmware/8B34/) and its download redirect. The directory is used only to discover a URL; image model/build and integrity were checked against the actual **Apple CDN bytes and response headers**.

[Original Apple CDN ZIP](https://updates.cdn-apple.com/MobileAssets2026/patches/089-90709/0290C372-A841-4B4B-BAD5-D26C67A5C097/com_apple_MobileAsset_UARP_A3064/386c8646f9de72382c870b3daefc033a1a4c7979.zip), stored as `A3064-8B34.zip`:

- Length **12,164,673 bytes**, matching Apple's HTTP `Content-Length`.
- SHA-256 **6a1d984ed4aedf1b3c3e9821e73f0efeec2a53bc979287024768effba9435fbf**, matching Apple's `x-amz-meta-digest-sha256`.
- SHA-1 **930291e83eb0f4697b635a8c3d398d95b9b47206**, matching Apple's `x-amz-meta-digest-sh1`.
- Apple CDN `Last-Modified`: **Tue, 06 Jan 2026 22:16:39 GMT**.
- ZIP `Info.plist`: asset `com.apple.MobileAsset.UARP.A3064`, **Build 8B34**, version **8.1.34**.
- ZIP restore manifest: `ProductBuildVersion=8B34`, product `AirPods3,4`, board `b788ap`, chip `0x2016`.
- Embedded SuperBinary: format **v3**, firmware version **8.1.34.0**.

`8B34-apple-cdn.headers`, `8B34-discovery-redirect.headers` and `A3064-8B34-provenance.json` preserve these checks. No historical catalog signature verification was performed.

## Case selection: package label versus MCU component

This is an **A3064 combined firmware package**, not a separately located historical A3122 ZIP. Its actual SuperBinary metadata contains:

- `NERF` source path `usr/local/standalone/firmware/nerfthis/b747/nerfthis_b747user.bin`.
- Case source paths `b747/bapp_b747.bin`, `b747/FWUP_b747.bin`, `Rose/b747/ftab.bin`.
- Case analytics map paths `b747/a3122_cmap.plist` and `b747/a3122.plist`.
- Separate earbud map `b788/a3064.plist`.

This identifies actual **case components inside the old package** without assuming that an earbud version is a case MCU version. Current 9A348 separate official A3064 and A3122 downloads contain identical NERF/BAPP/STFW/ROSE components, independently corroborating the combined-package structure.

Live Apple root and macOS A3064/A3122 catalogs now list 9A348; their `/assets/ios/` variants returned HTTP403. No separately labeled historical A3122 8B34 catalog/archive was found in the bounded search. That missing catalog does not prevent static analysis of the explicitly identified b747 case component, but it prevents claiming an independently verified historical A3122 catalog association.

## Extracted old component versus current component

Extraction succeeded using the already-reviewed parser at commit `599b71405045573efee37cd5bec0d2e399c8c2fc`:

```sh
python3 work/airpods-pro3-firmware-agent/superbinary-parser/main.py --extract-payloads \
  work/airpods-pro3-firmware-agent/A3064-8B34/AssetData/Firmware.acsw/firmware.uarp \
  work/airpods-pro3-firmware-agent/A3064-8B34-payloads
```

The old case Bluetooth MCU component is **`A3064-8B34-payloads/NERF.bin`**, 388,132 bytes, SHA-256 **8739310ec8ca7febb3ee3fe6ead2126cc5466b497d13c42e09fe97bbfe62aeda**. Its metadata version is **80.56.0.0**. The current 9A348 NERF component is **90.264.0.0**, 402,632 bytes, SHA-256 **d5670f883e56efc8b4db4ac9fe9a28fec2a02271e442492924faaf5070898f47**. They differ byte-for-byte. Therefore the latest handler offsets must not be reused automatically.

Old NERF policy-related literal targets:

- `0x4dd76`: `conn_handle 0x%x not encrypted, reject.`
- `0x5a69b`: `conn_handle 0x%x, opcode 0x%x -  not encrypted`
- `0x4ddc5`: `Rx Opcode: 0x%x conn_hdl 0x%x`
- `0x4e55e`: `rose_control.c`.

These matching log messages do not independently prove identical control flow or opcode policy. Parent owns the old/new handler trace.

`8B34-vs-9A348-payload-comparison.json` records component versions, lengths, hashes and byte equality. Old STFW/BAPP/ROSE also differ; audio payloads were extracted separately. No component was flashed or modified. Firmware remains proprietary local research material under the limits in the main README.
