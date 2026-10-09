#!/usr/bin/env python3
"""Verify the unchanged A3122 ROSE P2P frame validator using public synthetic bytes.
No radio I/O or owner material. The caller's separate status/source checks are
not emulated here. A 23-byte PSDU plus a two-byte FCS meets the native 25-byte
minimum; this harness does not calculate or validate that FCS.
"""
import json, struct
from pathlib import Path
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_MODE_MCLASS, UC_HOOK_CODE
from unicorn.arm_const import *
IMAGE = Path(__file__).resolve().parent.parent / 'airpods-pro3-firmware-agent/A3122-rose/rkos.bin'
BASE, STOP, RAM = 0x400000, 0x4f0000, 0x10000000
DEST = bytes.fromhex('0002030405060708')
SOURCE = bytes.fromhex('0102030405060708')

def native(frame, sequence=1, kind=0x31):
    u = Uc(UC_ARCH_ARM, UC_MODE_THUMB | UC_MODE_MCLASS)
    u.mem_map(BASE, 0x100000); u.mem_write(BASE, IMAGE.read_bytes())
    u.mem_map(RAM, 0x40000)
    packet, dest, stack = RAM + 0x1000, RAM + 0x2000, RAM + 0x30000
    u.mem_write(packet, frame); u.mem_write(dest, DEST)
    u.mem_write(stack, struct.pack('<I', kind))
    for reg, value in [(UC_ARM_REG_R0, packet), (UC_ARM_REG_R1, len(frame)),
                       (UC_ARM_REG_R2, sequence), (UC_ARM_REG_R3, dest),
                       (UC_ARM_REG_SP, stack), (UC_ARM_REG_LR, STOP | 1)]:
        u.reg_write(reg, value)
    def hook(uc, address, size, arg):
        if address == STOP: uc.emu_stop()
    u.hook_add(UC_HOOK_CODE, hook)
    u.emu_start(0x42b924 | 1, STOP + 2, count=1000)
    return u.reg_read(UC_ARM_REG_R0)

frame = struct.pack('<HB', 0xa841, 1) + DEST + SOURCE + struct.pack('<HBBH', 0xa5a5, 0, 0x31, 0)
assert len(frame) == 25
cases = [('valid', frame, 0), ('short', frame[:-1], 0xf6)]
for name, offset, expected in [('pan', 19, 0xf2), ('fcf', 0, 0xf3),
                               ('sequence', 2, 0xf4), ('destination', 3, 0xf5),
                               ('kind', 22, 0xf7)]:
    bad = bytearray(frame); bad[offset] ^= 1
    cases.append((name, bytes(bad), expected))
# Demonstrate exactly what the common routine leaves to its caller.
for name, offset in [('status_checked_by_caller', 21), ('source_checked_by_caller', 11),
                     ('fcs_checked_by_radio', 23)]:
    altered = bytearray(frame); altered[offset] ^= 1
    cases.append((name, bytes(altered), 0))
results = []
for name, value, expected in cases:
    actual = native(value)
    assert actual == expected, (name, actual, expected)
    results.append({'name': name, 'nativeStatus': actual})
print(json.dumps({'scope': __doc__, 'syntheticFrameIncludingPlaceholderFCS': frame.hex(),
                  'results': results}, indent=2))
