"""Static executable + synthetic enum bytes only; never opens account data."""
import hashlib
import struct
from pathlib import Path
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM
from unicorn.arm64_const import UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X8, UC_ARM64_REG_X20, UC_ARM64_REG_LR

path = Path('/usr/libexec/searchpartyuseragent')
fat = path.read_bytes()
for i in range(struct.unpack_from('>I', fat, 4)[0]):
    cpu, subtype, offset, size, align = struct.unpack_from('>IIIII', fat, 8 + 20 * i)
    if cpu == 0x100000c:
        data = fat[offset:offset + size]
        break
else:
    raise RuntimeError('arm64 slice missing')

uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
pos = 32
for _ in range(struct.unpack_from('<I', data, 16)[0]):
    command, command_size = struct.unpack_from('<II', data, pos)
    if command == 0x19:
        va, vm_size, file_offset, file_size = struct.unpack_from('<QQQQ', data, pos + 24)
        if file_size:
            start = va & ~0xfff
            end = (va + vm_size + 0xfff) & ~0xfff
            uc.mem_map(start, end - start)
            uc.mem_write(va, data[file_offset:file_offset + file_size])
    pos += command_size

scratch = 0x200000000
uc.mem_map(scratch, 0x1000)

def execute(address):
    uc.reg_write(UC_ARM64_REG_LR, scratch + 0x800)
    uc.emu_start(address, scratch + 0x800, count=150)

expected = ['unknown', 'nearOwner', 'latchSeparated', 'successfulConnectionAddress',
            'successfulConnectionLTK', 'wildPrimary', 'wildSecondary', 'hintBased', 'keyAlignment']
print('arm64 SHA256:', hashlib.sha256(data).hexdigest())
for value, name in enumerate(expected):
    uc.reg_write(UC_ARM64_REG_X0, value)
    execute(0x10092507c)
    first = uc.reg_read(UC_ARM64_REG_X0)
    second = uc.reg_read(UC_ARM64_REG_X1)
    if second >> 60 == 0xe:
        count = (second >> 56) & 15
        result = struct.pack('<QQ', first, second)[:count].decode()
    else:
        count = first & ((1 << 56) - 1)
        result = bytes(uc.mem_read((second & ((1 << 63) - 1)) + 0x20, count)).decode()
    assert result == '.' + name, (value, result)
    uc.mem_write(scratch, bytes([value, 255]))
    uc.reg_write(UC_ARM64_REG_X20, scratch)
    uc.reg_write(UC_ARM64_REG_X8, scratch + 1)
    execute(0x1000581d0)
    assert bytes(uc.mem_read(scratch + 1, 1)) == bytes([value])
    print(f'{value}: {name}; raw getter preserves {value}')
for value in range(256):
    uc.reg_write(UC_ARM64_REG_X0, value)
    execute(0x100926474)
    assert uc.reg_read(UC_ARM64_REG_X0) == (value if value < 9 else 9)
print('Initializer helper: 0..8 accepted; all247 remaining UInt8 values produce nil tag9.')
