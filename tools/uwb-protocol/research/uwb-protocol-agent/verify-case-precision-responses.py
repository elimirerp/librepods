#!/usr/bin/env python3
"""Synthetic slices of original 9A348 NERF; no radio, keys or account access.

Logging, connection flags, async dispatch and final transport are explicit
harness boundaries. The opcode table, validation, dispatch and response payload
copies execute unchanged firmware instructions.
"""
import importlib.util
import json
import struct
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent / 'airpods-pro3-firmware-agent'
spec = importlib.util.spec_from_file_location('policy', ROOT / 'emulate_key_policy.py')
policy = importlib.util.module_from_spec(spec)
spec.loader.exec_module(policy)
from unicorn.arm_const import UC_ARM_REG_SP


def response(opcode, status=0):
    h = policy.Harness(policy.VERSIONS['9A348'])
    h.hooks[0x3b54e] = lambda: h.ret(1)
    for address in (0x28760, 0x287a8, 0x36b2c):
        h.hooks[address] = h.noop
    h.put(0x2000fc00, policy.CTX)
    h.u.mem_write(policy.CTX + 0x3e, b'\x26\x00')
    h.put(0x20010160, policy.PARAMS)
    h.put(policy.PARAMS, 0x0f)
    captured = {}
    def send():
        size = h.get(h.u.reg_read(UC_ARM_REG_SP)) & 0xffff
        captured.update(opcode=h.r(2), payload=bytes(h.u.mem_read(h.r(3), size)).hex())
        h.ret()
    h.hooks[0x3c6d4] = send
    h.run(0x23dbc, opcode, status)
    assert policy.STOP in h.executed
    expected = struct.pack('<I', 0x0f if opcode == 0x711 else status).hex()
    assert captured == {'opcode': opcode, 'payload': expected}, captured
    return captured


def query(encrypted, initialized):
    h = policy.Harness(policy.VERSIONS['9A348'])
    h.hooks[0x36b2c] = h.noop
    h.hooks[0x40350] = lambda: h.ret(1)
    requested_flags = []
    def flag():
        requested_flags.append(h.r(1))
        h.ret(int(encrypted) if h.r(1) == 5 else int(initialized))
    h.hooks[0x3b53c] = flag
    h.put(0x2000fc00, policy.CTX)
    h.u.mem_write(policy.CTX + 0x3e, b'\x26\x00')
    h.put(0x20010160, policy.PARAMS)
    h.put(policy.PARAMS, 0x0f)
    frame = bytes.fromhex('01100700000000')
    h.u.mem_write(policy.EVT + 0xa, struct.pack('<H', len(frame)))
    h.u.mem_write(policy.EVT + 0xc, frame)
    responses = []
    # Keep the real indication builder: it selects the destination connection
    # through flag4, even though the query dispatcher itself checks flag5 only.
    h.hooks[0x3b54e] = lambda: h.ret(1 if initialized else 0xffff)
    for address in (0x28760, 0x287a8):
        h.hooks[address] = h.noop
    def indication():
        size = h.get(h.u.reg_read(UC_ARM_REG_SP)) & 0xffff
        responses.append({'opcode': h.r(2), 'payload': bytes(h.u.mem_read(h.r(3), size)).hex()})
        h.ret()
    def ack():
        responses.append({'opcode': h.r(0), 'ack_opcode': h.r(3),
                          'status': h.get(h.u.reg_read(UC_ARM_REG_SP)) & 0xffff})
        h.ret()
    h.hooks[0x3c6d4] = indication
    h.hooks[0x3c7f4] = ack
    h.run(0x24008, 1, policy.EVT)
    assert policy.STOP in h.executed
    assert requested_flags == [5], requested_flags
    if encrypted and initialized:
        assert responses == [{'opcode': 0x711, 'payload': '0f000000'}], responses
    elif encrypted:
        assert responses == [], responses
    else:
        assert responses == [{'opcode': 0x700, 'ack_opcode': 0, 'status': 1}], responses
    return {'encrypted': encrypted, 'initialized': initialized,
            'queried_flags': requested_flags, 'responses': responses}


if __name__ == '__main__':
    print(json.dumps({'scope': __doc__,
                     'completion_payloads': [response(0x706), response(0x706, 3), response(0x711)],
                     'capability_gate': [query(False, False), query(True, False), query(True, True)]}, indent=2))
