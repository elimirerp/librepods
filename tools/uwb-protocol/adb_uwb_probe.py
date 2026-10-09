"""Two fixed read-only Samsung UCI queries through an authorized ADB shell.

Requires a paired device. No root, session creation, configuration, or key access.
The shell's privileges differ from those of the installed LibrePods app.
"""
import argparse
import json
from pathlib import Path
import re
import struct
import subprocess


def parse_service_call(output: str) -> bytes:
    parcel = bytearray()
    for line in output.splitlines():
        match = re.match(r"\s*0x[0-9a-fA-F]{8}:\s*((?:[0-9a-fA-F]{8}\s*){1,4})", line)
        if match:
            for word in re.findall(r"[0-9a-fA-F]{8}", match.group(1)):
                parcel.extend(struct.pack("<I", int(word, 16)))
    if not parcel:
        # Android prints a short Parcel on one line, without 0x-address rows.
        compact = re.search(r"Result:\s*Parcel\(\s*((?:[0-9a-fA-F]{8}\s+)+)(?=['\)])", output)
        if compact:
            for word in compact.group(1).split():
                parcel.extend(struct.pack('<I', int(word, 16)))
    if len(parcel) < 8:
        raise ValueError("Missing Binder byte-array response")
    exception, length = struct.unpack_from("<ii", parcel)
    if exception != 0:
        raise ValueError(f"Binder exception code {exception}")
    if not 0 <= length <= 65536 or length > len(parcel) - 8:
        raise ValueError("Invalid Binder response length")
    return bytes(parcel[8:8 + length])


def device_info(payload: bytes, *, include_firmware: bool = False) -> dict:
    if not payload:
        raise ValueError("Empty device info response")
    result = {"responseLength": len(payload), "responseStatus": payload[0]}
    if payload[0] != 0:
        return result
    if len(payload) < 10 or payload[9] > len(payload) - 10:
        raise ValueError("Invalid device info response length")
    # Exact Samsung API returns payload only. Version formatting is unresolved.
    result.update(zip(("uciVersionRaw", "macVersionRaw", "phyVersionRaw", "uciTestVersionRaw"),
                      struct.unpack_from("<4H", payload, 1)))
    if include_firmware:
        # Samsung DeviceInfoParameter.parse uses one-byte tag/length TLVs.
        # Export only nonunique ABI fields; never export chip IDs/unknown data.
        names = {0x00: "deviceNameBytes", 0x01: "firmwareVersionBytes",
                 0x02: "vendorUciVersionBytes", 0x63: "firmwareBootModeBytes"}
        end = 10 + payload[9]
        if end != len(payload):
            raise ValueError("Unexpected device info trailing bytes")
        offset = 10
        seen = set()
        while offset < end:
            if offset + 2 > end:
                raise ValueError("Truncated device info TLV header")
            tag, size = payload[offset:offset + 2]
            offset += 2
            if offset + size > end:
                raise ValueError("Truncated device info TLV value")
            if tag in names:
                if tag in seen:
                    raise ValueError("Duplicate firmware information tag")
                seen.add(tag)
                result[names[tag]] = list(payload[offset:offset + size])
            offset += size
    return result


def capabilities(payload: bytes, known_tags: dict[int, str]) -> dict:
    if len(payload) < 2:
        raise ValueError("Truncated capability response")
    result = {"responseLength": len(payload), "responseStatus": payload[0]}
    if payload[0] != 0:
        return result
    offset = 2
    records = []
    for _ in range(payload[1]):
        if offset + 2 > len(payload):
            raise ValueError("Truncated capability TLV header")
        tag, size = payload[offset:offset + 2]
        offset += 2
        if offset + size > len(payload):
            raise ValueError("Truncated capability TLV value")
        value = payload[offset:offset + size]
        offset += size
        record = {"tag": tag, "length": size}
        if tag in known_tags:
            record["name"] = known_tags[tag]
            # Byte arrays retain ordering; no unverified integer/bit decoding.
            record["valueBytes"] = list(value)
        records.append(record)
    if offset != len(payload):
        raise ValueError("Unexpected capability response trailing bytes")
    result["capabilities"] = records
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("operation", choices=("device-info", "capabilities"))
    parser.add_argument("--adb", default="adb")
    parser.add_argument("--serial", required=True)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--firmware-info", action="store_true",
                        help="Include only nonunique device-name, firmware, vendor-UCI and boot-mode TLVs")
    args = parser.parse_args()
    oid = {"device-info": 2, "capabilities": 3}[args.operation]
    # Exact Samsung IUwbExtrasAdapter transaction 2: gid, oid, byte[] length=0.
    command = [args.adb, "-s", args.serial, "shell", "service", "call", "semuwb_extras",
               "2", "i32", "0", "i32", str(oid), "i32", "0"]
    completed = subprocess.run(command, capture_output=True, text=True, timeout=12)
    if completed.returncode:
        raise SystemExit("ADB command failed; no response content emitted")
    payload = parse_service_call(completed.stdout)
    if args.operation == "device-info":
        result = device_info(payload, include_firmware=args.firmware_info)
    else:
        tag_file = Path(__file__).parent.parent / "findmy-research/samsung-caps-tags.json"
        tags = {item["tag"]: item["class"].split("/")[-1].removesuffix(";")
                for item in json.loads(tag_file.read_text())}
        result = capabilities(payload, tags)
    result.update(operation=args.operation, transport="adb_shell_binder", root=False)
    encoded = json.dumps(result, indent=2) + "\n"
    if args.output:
        args.output.write_text(encoded)
        print(json.dumps({"operation": args.operation, "responseStatus": result["responseStatus"],
                          "saved": str(args.output)}))
    else:
        print(encoded, end="")


if __name__ == "__main__":
    main()
