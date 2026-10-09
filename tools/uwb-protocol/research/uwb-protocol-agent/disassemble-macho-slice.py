#!/usr/bin/env python3
"""Bounded static ARM64 Mach-O slice, with literal ADRP+ADD string hints."""
import struct
import sys
from pathlib import Path
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
from capstone.arm64 import ARM64_OP_IMM, ARM64_OP_REG

b = Path(sys.argv[1]).read_bytes()
p, segs = 32, []
for _ in range(struct.unpack_from('<I', b, 16)[0]):
    c, s = struct.unpack_from('<II', b, p)
    if c == 0x19:
        segs.append(struct.unpack_from('<QQQQ', b, p + 24))
    p += s
def read(a, n):
    for va, vs, fo, fs in segs:
        if va <= a and a + n <= va + fs:
            return b[fo + a - va:fo + a - va + n]
    return b''
start, end = map(lambda s: int(s, 0), sys.argv[2:4])
m = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
m.detail = True
pages = {}
for i in m.disasm(read(start, end - start), start):
    note = ''
    if i.mnemonic == 'adrp':
        pages[i.operands[0].reg] = i.operands[1].imm
    elif i.mnemonic == 'add' and len(i.operands) == 3:
        d, a, v = i.operands
        if a.type == ARM64_OP_REG and v.type == ARM64_OP_IMM and a.reg in pages:
            addr = pages[a.reg] + v.imm
            raw = read(addr, 180).split(b'\0', 1)[0]
            if len(raw) >= 3 and all(32 <= x < 127 for x in raw):
                note = f' ; {addr:#x} {raw.decode()!r}'
    print(f'{i.address:#x}: {i.mnemonic} {i.op_str}{note}')
