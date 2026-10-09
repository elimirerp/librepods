#!/usr/bin/env python3
"""Run Apple's original ARM64 HCI format'd' slice with a synthetic16B key.

No hardware or credentials. This executes0x10016BBE4..0x10016BC68 only;
descriptor and jump-table selection are separately checked from the image.
"""
import json
import struct
import sys
from pathlib import Path
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE
from unicorn.arm64_const import UC_ARM64_REG_SP, UC_ARM64_REG_X20

ROOT = Path(__file__).resolve().parent
data = (ROOT / 'mac-bluetoothd-arm64e').read_bytes()
segments = []
offset = 32
for _ in range(struct.unpack_from('<I', data, 16)[0]):
    cmd, size = struct.unpack_from('<II', data, offset)
    if cmd == 0x19:
        segments.append(struct.unpack_from('<QQQQ', data, offset + 24))
    offset += size
def read(address, size):
    for va, _, file_offset, file_size in segments:
        if va <= address and address + size <= va + file_size:
            return data[file_offset + address - va:file_offset + address - va + size]
    raise ValueError(hex(address))

descriptor = read(0x100a9bce8, 8)
assert struct.unpack_from('<H', descriptor, 2)[0] == 0x2019
assert read(0x1008e1124, 5) == b'h82d\0'
table_delta = struct.unpack('<i', read(0x10016c714 + 3 * 4, 4))[0]
assert 0x10016b714 + table_delta == 0x10016bbe4

u = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
u.mem_map(0x10016b000, 0x2000)
u.mem_write(0x10016b000, read(0x10016b000, 0x2000))
u.mem_map(0x20000000, 0x4000)
stack, args, stream, output, key = (0x20000000, 0x20001000, 0x20001100, 0x20001200, 0x20001300)
synthetic = bytes(range(16))
u.mem_write(stack + 0x28, struct.pack('<Q', args))
u.mem_write(args, struct.pack('<Q', key))
u.mem_write(key, synthetic)
u.mem_write(stream, struct.pack('<QHHHBB', output, 28, 28, 12, 2, 0))
u.reg_write(UC_ARM64_REG_SP, stack)
u.reg_write(UC_ARM64_REG_X20, stream)
executed = []
def hook(uc, address, size, user_data):
    executed.append(address)
    if address == 0x10016bef4:
        uc.emu_stop()
u.hook_add(UC_HOOK_CODE, hook)
u.emu_start(0x10016bbe4, 0x10016c000, count=100)
wire = bytes(u.mem_read(output + 12, 16))
assert 0x10016bc58 in executed and 0x10016bc5c in executed
assert wire == synthetic

# Compare the actual installed Bumble HCI serializer, still synthetic only.
sys.path.insert(0, str(ROOT.parent / 'usb-owner-link-venv/lib/python3.12/site-packages'))
from bumble.hci import HCI_LE_Enable_Encryption_Command
command = HCI_LE_Enable_Encryption_Command(connection_handle=1, random_number=bytes(8), encrypted_diversifier=0, long_term_key=synthetic)
parameters = command.parameters
assert len(parameters) == 28 and parameters[12:] == wire
print(json.dumps({'scope': __doc__, 'descriptor_address': '0x100A9BCE8', 'format': 'h82d',
                  'd_entry': '0x10016BBE4', 'native_wire_equals_input': True,
                  'bumble_wire_equals_native': True, 'synthetic_key': wire.hex()}, indent=2))
