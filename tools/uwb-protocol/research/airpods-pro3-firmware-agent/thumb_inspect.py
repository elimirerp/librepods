#!/usr/bin/env python3
"""Local raw Cortex-M inspection. Linear decode is not control-flow recovery.

Literal pools can decode as instructions; all xrefs require manual validation.
"""
import argparse
import struct
from pathlib import Path

from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB, CS_MODE_MCLASS
from capstone.arm import ARM_OP_IMM, ARM_OP_MEM, ARM_REG_PC


def number(value):
    return int(value, 0)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("image", type=Path)
    parser.add_argument("--start", type=number, default=0)
    parser.add_argument("--end", type=number)
    parser.add_argument("--base", type=number, default=0)
    parser.add_argument("--xref", type=number)
    args = parser.parse_args()
    data = args.image.read_bytes()
    end = args.end if args.end is not None else args.base + len(data)
    md = Cs(CS_ARCH_ARM, CS_MODE_THUMB | CS_MODE_MCLASS)
    md.detail = True
    md.skipdata = True

    def u32(address):
        off = address - args.base
        return struct.unpack_from("<I", data, off)[0] if 0 <= off <= len(data) - 4 else None

    def ascii_at(address):
        off = address - args.base
        if not 0 <= off < len(data):
            return ""
        raw = data[off:off + 180].split(b"\0", 1)[0]
        if len(raw) >= 4 and all(32 <= x < 127 or x in (9, 10, 13) for x in raw):
            return repr(raw.decode("ascii"))
        return ""

    if args.xref is not None:
        for pointer in (args.xref, args.xref | 1):
            needle = struct.pack("<I", pointer)
            off = data.find(needle)
            while off >= 0:
                print(f"raw pointer {pointer:#x} at {args.base + off:#x}")
                off = data.find(needle, off + 1)
    start_off = args.start - args.base
    for ins in md.disasm(data[start_off:end - args.base], args.start):
        notes = []
        match = False
        if ins.id:
            if ins.mnemonic in ("bl", "b", "b.w") and ins.operands[-1].type == ARM_OP_IMM:
                match = args.xref is not None and ins.operands[-1].imm == args.xref
            for op in ins.operands:
                if op.type == ARM_OP_MEM and op.mem.base == ARM_REG_PC:
                    addr = ((ins.address + 4) & ~3) + op.mem.disp
                    value = u32(addr)
                    if value is not None:
                        notes.append(f"[{addr:#x}]={value:#x} {ascii_at(value)}".rstrip())
                        if args.xref is not None and value in (args.xref, args.xref | 1):
                            match = True
        if args.xref is None or match:
            suffix = " ; " + "; ".join(notes) if notes else ""
            print(f"{ins.address:08x} {ins.bytes.hex():10} {ins.mnemonic:8} {ins.op_str}{suffix}")


if __name__ == "__main__":
    main()
