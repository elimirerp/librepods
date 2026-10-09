#!/usr/bin/env python3
"""Offline audit of the user's exact Hamilton patch; firmware is not distributed.

Runs original Thumb lookup instructions, not a reimplementation. This verifies
patch dispatch only: the file does not contain the controller's complete ROM.
Requires capstone and unicorn. Makes no connection to a phone.
"""
import argparse
import hashlib
import json
import struct
from pathlib import Path

from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_MCLASS
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB
from unicorn.arm_const import UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_SP, UC_ARM_REG_LR

SHA256 = "ff39d6a312648e64f81c933f324c2858c6bb1ee93a71d5440604e2230379fb37"
BASE = 0x1FFE8  # File offset 0x28 corresponds to linked startup address 0x20010.
DATA_SOURCE, DATA_DEST, DATA_SIZE = 0x618E0, 0x61CE8, 0x402
TABLE = 0x61DA8
TABLE_SOURCE = DATA_SOURCE + TABLE - DATA_DEST
LOOKUP, COUNT = 0x26E84, 26


def audit(image):
    raw = image.read_bytes()
    digest = hashlib.sha256(raw).hexdigest()
    if digest != SHA256:
        raise ValueError("Unrecognized firmware: offsets are specific to the recorded SHA-256")
    assert len(raw) == 269600
    assert int.from_bytes(raw[1:4], "little") == len(raw) - 4
    expected_label = b"BTFW.HAMILTON_C.2.0.1-00353-PATCHZ-2.90463.51"
    assert expected_label in raw

    def read_at(address, length):
        offset = address - BASE
        assert 0 <= offset <= len(raw) - length
        return raw[offset:offset + length]

    entries = []
    for index in range(COUNT):
        ocf, length, flags, handler = struct.unpack("<HBBI", read_at(TABLE_SOURCE + index * 8, 8))
        assert handler & 1 and 0x20010 <= (handler & ~1) < BASE + len(raw)
        entries.append({"index": index, "ocf": hex(ocf), "opcode": hex(0xFC00 | ocf),
                        "parameter_length": length, "flags": flags,
                        "handler": hex(handler & ~1),
                        "permitted_by_android_vendor_api": not (0x150 <= ocf < 0x160 and ocf != 0x153)})
    ocfs = [int(e["ocf"], 16) for e in entries]
    assert ocfs == sorted(set(ocfs))

    # Setup mirrors the startup's initialized-data source/destination literals.
    # No ROM, radio, or encryption operation is simulated here.
    uc = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
    uc.mem_map(0, 0x100000)
    uc.mem_write(BASE, raw)
    uc.mem_write(DATA_DEST, read_at(DATA_SOURCE, DATA_SIZE))
    end, output = 0xF0000, 0xF1000
    checked = 0
    for ocf in range(1024):
        for supplied in (ocf, 0xFC00 | ocf):
            uc.mem_write(output, b"\xff\xff")
            uc.reg_write(UC_ARM_REG_SP, 0xF8000)
            uc.reg_write(UC_ARM_REG_LR, end | 1)
            uc.reg_write(UC_ARM_REG_R0, supplied)
            uc.reg_write(UC_ARM_REG_R1, output)
            uc.emu_start(LOOKUP | 1, end, count=1000)
            found = uc.reg_read(UC_ARM_REG_R0)
            index = int.from_bytes(uc.mem_read(output, 2), "little")
            assert found == int(ocf in ocfs), (hex(supplied), found)
            assert index == (ocfs.index(ocf) if found else 0xFFFF), (hex(supplied), index)
            checked += 1

    # Record the actual ROM trampoline targets for unmatched vendor commands.
    # Their implementations are outside this image, so absence cannot be proved.
    md = Cs(CS_ARCH_ARM, CS_MODE_THUMB | CS_MODE_MCLASS)
    trampolines = {}
    for start in (0x2704C, 0x27058):
        instructions = list(md.disasm(read_at(start, 10), start))
        trampolines[hex(start)] = [f"{i.mnemonic} {i.op_str}" for i in instructions]

    return {
        "image_sha256": digest,
        "image_bytes": len(raw),
        "embedded_build": expected_label.decode(),
        "file_address_base": hex(BASE),
        "table_runtime_address": hex(TABLE),
        "table_file_backed_address": hex(TABLE_SOURCE),
        "patch_vendor_entries": entries,
        "original_instruction_lookup_cases_passed": checked,
        "rom_fallback_trampolines": trampolines,
        "full_rom_present": False,
        "owner_key_loading_demonstrated": False,
        "live_encryption_or_ranging_demonstrated": False,
    }


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("image", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    result = audit(args.image)
    args.output.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"patch_handlers": len(result["patch_vendor_entries"]),
                      "lookup_cases_passed": result["original_instruction_lookup_cases_passed"],
                      "full_rom_present": result["full_rom_present"]}))
