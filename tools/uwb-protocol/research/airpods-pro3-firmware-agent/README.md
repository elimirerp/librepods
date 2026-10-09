# AirPods Pro 3 firmware: verified static-analysis inventory

Retrieved 2026-10-09 from Apple's public HTTPS MobileAsset catalogs and CDN. No device, account, radio, flashing, resetting, or firmware modification was used.

**Older 8B34 package now acquired:** see [8B34 acquisition and case comparison](8B34-ACQUISITION.md). It includes explicitly identified b747 case MCU components; the NERF component differs from 9A348. A separately labeled historical A3122 archive remains unlocated.

## Model and version confirmation

[Apple's identification page](https://support.apple.com/en-us/109525) identifies **A3063/A3064/A3065 as AirPods Pro 3**, and **A3122 as its MagSafe Charging Case**. This differs from non-Pro AirPods 3 and AirPods Pro 2.

Two official catalogs were fetched:

- [A3064 earbud catalog](https://mesu.apple.com/assets/macos/com_apple_MobileAsset_UARP_A3064/com_apple_MobileAsset_UARP_A3064.xml): asset type `com.apple.MobileAsset.UARP.A3064`, build `9A348`.
- [A3122 case catalog](https://mesu.apple.com/assets/macos/com_apple_MobileAsset_UARP_A3122/com_apple_MobileAsset_UARP_A3122.xml): asset type `com.apple.MobileAsset.UARP.A3122`, build `9A348`.

The case ZIP's `AssetData/Firmware.acsw/Info.plist` explicitly says `CFBundleDisplayName=AirPodsCase` and `CFBundleIdentifier=com.apple.accessory.updater.payload.A3122`. The earbud package says `com.apple.accessory.updater.payload.A3064`. Both restore manifests identify `AirPods3,4`, board `b788ap`, CPID `0x2016`; that restore identity describes the combined package rather than every individual MCU. The case SuperBinary separately identifies its MCU images under source paths containing **b747**, its UWB image under `Rose/b747/ftab.bin`, and its case analytics maps under `b747/a3122`.

[Apple's firmware page](https://support.apple.com/en-us/106340) currently lists AirPods Pro 3 build **9A348**. Earlier session observations recorded case **8B34** and later earbuds **9A348**. These are prior observations, not a new hardware query. The downloaded case image must not be described as the installed 8B34 image.

## Actual images and integrity

| File | Size | SHA-256 |
| --- | ---: | --- |
| `A3064-9A348.zip` | 12,538,358 | `0705f8a4bfde09f8c8ad5969c9c84eafcf876d6903efd348cf1c54bcf20d8750` |
| `A3122-9A348.zip` | 12,538,372 | `90e345c960d8d324263950f057af46ee77f2094b4452173d23e3f57395dd88c4` |
| A3122 `firmware.uarp` | 17,889,870 | `3d68b5ca1e6f217f65b47f695a00c804046bf2db74988549b91043ad561fa8da` |

Both ZIP lengths and SHA-256 digests exactly match `_DownloadSize` and `_Measurement-SHA256` in their corresponding Apple catalog. This verifies the downloaded data against the HTTPS catalog; the catalog's embedded signing certificate/signature was preserved but its cryptographic signature chain was not independently validated.

Exact CDN URLs, source catalog URLs, build, sizes and hashes are in `A3064-9A348-provenance.json` and `A3122-9A348-provenance.json`. Complete raw catalogs and original ZIPs remain locally available.

The ZIPs contain actual **SuperBinary v3** `firmware.uarp` images, not only update metadata. Each has 19 payloads plus an NSKeyedArchiver property list describing their source paths. Case-specific `NERF`, `BAPP`, `STFW`, `ROSE`, audio and analytics payloads are byte-for-byte identical in the separate official A3064 and A3122 downloads. Only `CTAB` and `FTAB` differ. This supplies a second provenance check for selecting the case images.

## Case payloads for decompilation

| Extracted file in `A3122-payloads/` | Size | Interpretation supported by the image |
| --- | ---: | --- |
| `NERF.bin` | 402,632 | Case nRF Bluetooth firmware; source path `nerfthis/b747/nerfthis_b747user.bin`; readable Thumb code and strings, vector SP `0x20000400`, reset `0x00000a81` |
| `STFW.bin` | 624,192 | Case STM firmware, source path `b747/FWUP_b747.bin`; readable Thumb vectors, reset `0x08005109` |
| `BAPP.bin` | 102,464 | Case MCU auxiliary/boot application, source path `b747/bapp_b747.bin`; readable Thumb vectors, reset `0x20001909`; precise role not yet traced |
| `ROSE.bin` | 896,868 | Case UWB FTAB container; source path `Rose/b747/ftab.bin` |
| `FTAB.bin` | 8,413,184 | Larger audio processor FTAB container |
| `CTAB.bin` | 6,533,379 | LZBitmapFast2 chunk-compressed FTAB; local decompression exactly equals `FTAB.bin` |

`reproduced-inventory.json` records every payload's SHA-256 and authoritative source path. These payloads are readable without a decryption key. ROSE metadata says personalization is required for installation, with trusted SHA-384-measured `rkos`, `sbd1`, `icnf`; that does **not** make these static image bytes encrypted.

### ROSE architecture/load map

`A3122-rose/` holds the five bounded FTAB entries. Original offsets are recorded in `ftab-components.json`:

| Component | ROSE offset | Size | Observation |
| --- | ---: | ---: | --- |
| `rkos.bin` | `0x80` | 552,384 | ARM Thumb application; reset vector `0x00400221`, default exception vector `0x00400109`, coherent code at image base **0x00400000** |
| `sbd1.bin` | `0x86e40` | 342,400 | DSP image; precise instruction architecture/load map not yet established |
| `bver.bin` | `0xda7c0` | 67 | `90.3431000025000000.6807\|9.0.348.0\|date:2026 8 17\|chip_revision_b0` |
| `icnf.bin` | `0xda804` | 32 | Zero-filled configuration entry |
| `_osl.bin` | `0xda824` | 1,856 | Additional payload, purpose not established |

`rkos.bin` has readable `RTKit_release-3514.0.15.release` and `RTKitOSPlatform-3431.0.25~004286` version strings. `rose-vector-disassembly.txt` records a small static Capstone disassembly validating the base/Thumb mapping. It is not a Mach-O; `ipsw fw aop -i` correctly rejected it as not BUND. Raw Thumb imports are appropriate for static decompilation.

## FD44 / precisionfinding protection evidence

The NERF image contains these literal strings:

- File offset `0x4dfb6`: `conn_handle 0x%x not encrypted, reject.`
- File offset `0x5df1b`: `conn_handle 0x%x, opcode 0x%x -  not encrypted`
- `0x4e005`: `Rx Opcode: 0x%x conn_hdl 0x%x`
- `0x4e79e`: `rose_control.c`; `0x4f10c`: `rose_ranging.c`.

These are **targets for control-flow analysis**, not sufficient proof of a particular characteristic's permission or opcode 0701 policy. The full precision UUID was not found in canonical, fully reversed, or mixed-endian form; the firmware may register a base UUID with a separate short characteristic value. Occurrences of bytes `44 fd` at `0xc1ac`, `0xdf5a`, `0x38f9e`, `0x5dd92` are unclassified and must not be treated as attribute records automatically.

Parent agent owns the decisive NERF GATT table/write-handler analysis. This inventory itself does not claim that FD44/4F860006 requires encryption, nor that 0701 is protected. It confirms that the exact Pro 3 case firmware needed to test those claims is available and readable.

## Reproduce extraction locally

The extractor author source is [spotlightishere/superbinary-parser](https://github.com/spotlightishere/superbinary-parser), cloned at **599b71405045573efee37cd5bec0d2e399c8c2fc**. Its reviewed parser reads the SuperBinary/NSKeyedArchiver structures and uses macOS `libcompression` for LZBitmapFast2. It does not execute the firmware or interact with a device.

```sh
python3 work/airpods-pro3-firmware-agent/reproduce_extraction.py
```

The local script reads cached ZIPs/catalogs, verifies their lengths/digests, extracts only reviewed tags, bounds-checks FTAB entries, and checks decompressed CTAB equality with FTAB. It completed successfully for **38 payloads**. Output is in `A3064-reproduced/`, `A3122-reproduced/`, plus `reproduced-inventory.json`.

## Provenance and licensing

Firmware is proprietary Apple material obtained from Apple's public update CDN. No open-source license or redistribution grant was found in these packages. Preserve originals and extracted firmware locally; **do not include proprietary payloads in LibrePods/fork/public commits**. The parser checkout did not contain a license file at the recorded commit, so its code should also not be copied into the project under an assumed license. Research reports, URLs and hashes can be shared separately from the firmware images.
