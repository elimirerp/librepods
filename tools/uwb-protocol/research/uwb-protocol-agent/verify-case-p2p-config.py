#!/usr/bin/env python3
"""Execute original case0702 decoder and0707 response with synthetic input.

No radio/account I/O. Enrollment/connection flags, logs, async work and final
transport are explicit boundaries. Original opcode dispatch and field packing
execute unchanged; this does not claim successful radio setup.
"""
import importlib.util
import json
import struct
from pathlib import Path
from unicorn.arm_const import UC_ARM_REG_SP

root = Path(__file__).resolve().parent.parent / 'airpods-pro3-firmware-agent'
spec = importlib.util.spec_from_file_location('policy', root / 'emulate_key_policy.py')
policy = importlib.util.module_from_spec(spec)
spec.loader.exec_module(policy)

def configure(tx, rx):
    h = policy.Harness(policy.VERSIONS['9A348'])
    h.hooks[0x36b2c] = h.noop
    h.hooks[0x40350] = lambda: h.ret(1)
    flags = []
    def flag():
        flags.append(h.r(1))
        h.ret(1)
    h.hooks[0x3b53c] = flag
    h.put(0x2000fc00, policy.CTX)
    h.u.mem_write(policy.CTX + 0x3e, b'\x26\x00')
    packet = bytes.fromhex('010207') + struct.pack('<BBH', 0, 0x81 | (tx << 2) | (rx << 4), 71) + bytes(range(1, 9))
    h.u.mem_write(policy.EVT + 0xa, struct.pack('<H', len(packet)))
    h.u.mem_write(policy.EVT + 0xc, packet)
    captured = {}
    def mac():
        captured['rose_mac'] = struct.pack('<II', h.r(0), h.r(1)).hex()
        h.ret()
    def config():
        captured['rose_config'] = bytes(h.u.mem_read(h.r(0), 12)).hex()
        h.ret()
    def event():
        captured['event'] = h.r(0)
        h.ret()
    h.hooks[0x25a58] = mac
    h.hooks[0x25fa8] = config
    h.hooks[0x38804] = event
    h.run(0x24008, 1, policy.EVT)
    expected = bytearray(12)
    expected[1], expected[2], expected[5], expected[7] = 9, 0x44, 71, tx | (rx << 4)
    assert captured == {'rose_mac': '0102030405060708', 'rose_config': expected.hex(), 'event': 0x1d}, captured
    assert flags == [5, 4], flags
    assert policy.STOP in h.executed
    return {'tx_code': tx, 'rx_code': rx, **captured}

def completion():
    h = policy.Harness(policy.VERSIONS['9A348'])
    h.hooks[0x3b54e] = lambda: h.ret(1)
    for a in (0x36b2c, 0x28760, 0x287a8):
        h.hooks[a] = h.noop
    h.hooks[0x259f0] = lambda: h.ret(2)
    h.put(0x2000fc00, policy.CTX)
    h.u.mem_write(policy.CTX + 0x3e, b'\x26\x00')
    captured = {}
    def send():
        n = h.get(h.u.reg_read(UC_ARM_REG_SP)) & 0xffff
        captured.update(opcode=h.r(2), body=bytes(h.u.mem_read(h.r(3), n)).hex())
        h.ret()
    h.hooks[0x3c6d4] = send
    h.run(0x23dbc, 0x707, 0)
    assert captured == {'opcode': 0x707, 'body': '00000000'}, captured
    return captured

if __name__ == '__main__':
    print(json.dumps({'scope': __doc__, 'configure': [configure(t, r) for t in range(4) for r in range(4)], 'completion': completion()}, indent=2))
