#!/usr/bin/env python3
"""Execute original 9A348 recovery-address selection and LTK installation.

Entirely synthetic RAM. Advertising transport and logs are harness boundaries.
No controller, account, owner data or radio operations.
"""
import importlib.util
import json
import struct
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent / 'airpods-pro3-firmware-agent'
spec = importlib.util.spec_from_file_location('policy', ROOT / 'emulate_key_policy.py')
policy = importlib.util.module_from_spec(spec)
spec.loader.exec_module(policy)

PRIMARY = bytes(range(0x10, 0x2c))
RECOVERY = bytes(range(0x40, 0x5c))
PRIMARY_LTK = bytes(range(0xa0, 0xb0))


def select_address(latched_primary_present):
    h = policy.Harness(policy.VERSIONS['9A348'])
    h.hooks[0x36b2c] = h.noop
    h.u.mem_write(0x2001414c, PRIMARY if latched_primary_present else bytes(28))
    h.u.mem_write(0x20014054, RECOVERY + struct.pack('<I', 2))
    selected = {}
    def wild_init():
        selected['pointer'] = h.r(0)
        selected['address'] = bytes(h.u.mem_read(h.r(0), 6))
        h.u.emu_stop()
    h.hooks[0x3a980] = wild_init
    h.run(0x38408)
    expected = 0x2001414c if latched_primary_present else 0x20014054
    assert selected['pointer'] == expected, selected
    return selected


def install(selected):
    h = policy.Harness(policy.VERSIONS['9A348'])
    h.hooks[0x36b2c] = h.noop
    h.u.mem_write(selected['pointer'], selected['address'])
    h.u.mem_write(0x2001401c, PRIMARY_LTK)
    captured = {}
    def address_transport():
        captured['controller_address_bytes'] = bytes(h.u.mem_read(h.r(0) + 1, 6)).hex()
        h.ret()
    h.hooks[0x3a61c] = address_transport
    h.run(0x3a660, selected['pointer'])
    assert policy.STOP in h.executed
    copied = bytes(h.u.mem_read(0x2001197c, 16))
    assert copied == PRIMARY_LTK
    address = bytes([selected['address'][0] | 0xc0]) + selected['address'][1:]
    assert captured['controller_address_bytes'] == address[::-1].hex()
    return {'address_bank': 'latched_primary' if selected['pointer'] == 0x2001414c else 'recovery',
            'replacement_ltk_source': 'active_primary_bank_plus_0x1c',
            'replacement_ltk_equals_synthetic_primary': True, **captured}


if __name__ == '__main__':
    print(json.dumps({'scope': __doc__, 'cases': [install(select_address(False)), install(select_address(True))]}, indent=2))
