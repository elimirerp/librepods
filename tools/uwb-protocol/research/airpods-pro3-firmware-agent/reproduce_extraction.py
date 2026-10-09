#!/usr/bin/env python3
"""Reproduce verified, local-only AirPods Pro 3 firmware extraction.

Reads already-downloaded Apple catalogs and ZIPs; never accesses a device.
Requires the separately cloned superbinary-parser at the recorded commit.
"""
import hashlib
import json
from pathlib import Path
import plistlib
import struct
import sys
from zipfile import ZipFile

ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / "superbinary-parser"))
from super_binary import SuperBinary
from compressed_payload import decompress_payload_chunks


def main():
    inventory = []
    for model in ("A3064", "A3122"):
        catalog = plistlib.loads((ROOT / f"{model}-macos-catalog.plist").read_bytes())
        assert catalog["AssetType"] == f"com.apple.MobileAsset.UARP.{model}"
        asset = next(a for a in catalog["Assets"] if a["Build"] == "9A348")
        archive = ROOT / f"{model}-9A348.zip"
        raw = archive.read_bytes()
        assert len(raw) == asset["_DownloadSize"]
        assert hashlib.sha256(raw).digest() == asset["_Measurement-SHA256"]
        # Only the reviewed fixed firmware member is read from the ZIP.
        with ZipFile(archive) as z:
            raw_uarp = z.read("AssetData/Firmware.acsw/firmware.uarp")
        import io
        binary = SuperBinary(io.BufferedReader(io.BytesIO(raw_uarp)))
        destination = ROOT / f"{model}-reproduced"
        destination.mkdir(exist_ok=True)
        counts = {}
        for payload in binary.payloads:
            tag = payload.get_tag()
            assert len(tag) == 4 and tag.isalnum()
            ordinal = counts.get(tag, 0)
            counts[tag] = ordinal + 1
            filename = f"{tag}.bin" + (f".{ordinal}" if ordinal else "")
            (destination / filename).write_bytes(payload.contents)
            inventory.append({"model": model, "tag": tag, "ordinal": ordinal,
                              "length": len(payload.contents),
                              "sha256": hashlib.sha256(payload.contents).hexdigest(),
                              "sourcePath": payload.plist_metadata.filepath,
                              "compressionChunkSize": payload.plist_metadata.compressed_chunk_size})
            if payload.plist_metadata.compressed_chunk_size:
                (destination / f"{tag}.decompressed.bin").write_bytes(decompress_payload_chunks(payload))
        (destination / "SuperBinary.plist").write_bytes(binary.raw_plist_data)
        (destination / "SuperBinary-metadata.json").write_text(json.dumps(binary.metadata.all_metadata, indent=2))
        for container in ("ROSE", "FTAB"):
            data = (destination / f"{container}.bin").read_bytes()
            assert data[32:40] == b"rkosftab"
            count = struct.unpack_from("<I", data, 40)[0]
            assert 0 < count <= 64
            component_dir = destination / container.lower()
            component_dir.mkdir(exist_ok=True)
            for index in range(count):
                tag, offset, length, _ = struct.unpack_from("<4sIII", data, 48 + index * 16)
                assert offset + length <= len(data)
                name = tag.decode("ascii")
                assert all(c.isalnum() or c == "_" for c in name)
                (component_dir / f"{name}.bin").write_bytes(data[offset:offset + length])
        assert (destination / "CTAB.decompressed.bin").read_bytes() == (destination / "FTAB.bin").read_bytes()
    (ROOT / "reproduced-inventory.json").write_text(json.dumps(inventory, indent=2))
    print(f"Verified and extracted both official packages; {len(inventory)} payloads.")


if __name__ == "__main__":
    main()
