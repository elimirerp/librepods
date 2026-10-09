#!/usr/bin/env python3
"""Original 9A348 dispatcher/completion with synthetic state, no radio."""
import importlib.util
import json
import struct
from pathlib import Path
from unicorn.arm_const import UC_ARM_REG_SP

def module(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    value = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(value)
    return value

ROOT = Path(__file__).resolve().parent
cleanup = module('cleanup', ROOT / 'verify-case-ranging-cleanup.py')
counter = module('counter', ROOT / 'verify-case-start-counter.py')
policy = cleanup.policy

def dispatch(target=180, paired=True, encrypted=True, initialized=True, body=True):
    h = cleanup.harness()
    h.hooks[0x40350] = lambda: h.ret(int(paired))
    h.hooks[0x3b53c] = lambda: h.ret(int(encrypted if h.r(1) == 5 else initialized))
    h.put(0x2000fc00, policy.CTX)
    h.u.mem_write(policy.CTX + 0x3e, b'\x26\x00')
    frame = bytes.fromhex('010307') + (struct.pack('<H', target) if body else b'')
    h.u.mem_write(policy.EVT + 0xa, struct.pack('<H', len(frame)))
    h.u.mem_write(policy.EVT + 0xc, frame)
    events, flags, responses = [], [], []
    def event():
        events.append([h.r(0), h.r(1)])
        h.ret()
    def flag():
        flags.append([h.r(0), h.r(1), h.r(2)])
        h.ret()
    def send():
        size = h.get(h.u.reg_read(UC_ARM_REG_SP)) & 0xffff
        responses.append([h.r(2), bytes(h.u.mem_read(h.r(3), size)).hex()])
        h.ret()
    h.hooks[0x38804] = event
    h.hooks[0x3b700] = flag
    h.hooks[0x3c6d4] = send
    h.run(0x24008, 1, policy.EVT)
    assert policy.STOP in h.executed
    accepted = paired and encrypted and initialized and body
    request = 0x703 if paired and encrypted else 0
    status = 0 if accepted else (3 if paired and encrypted and not body else 1)
    assert responses == [[0x700, struct.pack('<HH', request, status).hex()]], responses
    assert events == ([[0x1f, 0]] if accepted else [])
    assert flags == ([[1, 1, 1]] if accepted else [])
    if accepted:
        assert h.u.mem_read(0x20011014, 1) == b'\x01'
        assert bytes(h.u.mem_read(0x20011016, 2)) == struct.pack('<H', target)
    return dict(frame=frame.hex(), accepted=accepted, events=events, flags=flags, responses=responses)

def completion(status, end_reason):
    h = cleanup.harness()
    h.put(0x200141c8, 0x4dc2c)
    h.put(0x2000fc00, policy.CTX)
    h.u.mem_write(policy.CTX + 0x3e, b'\x26\x00')
    h.u.mem_write(0x200142ee, b'\x0c')
    h.u.mem_write(0x20011055, b'\x05')
    h.u.mem_write(0x2000fad4, bytes([end_reason]))
    h.hooks[0x3b54e] = lambda: h.ret(1)
    for addr in (0x38204, 0x3f6bc, 0x28760, 0x287a8):
        h.hooks[addr] = h.noop
    flags, responses, scheduled = [], [], []
    def flag():
        flags.append([h.r(0), h.r(1), h.r(2)])
        h.ret()
    def schedule():
        scheduled.append(hex(h.r(2)))
        h.ret()
    def send():
        size = h.get(h.u.reg_read(UC_ARM_REG_SP)) & 0xffff
        responses.append([h.r(2), bytes(h.u.mem_read(h.r(3), size)).hex()])
        h.ret()
    h.hooks[0x3b700] = flag
    h.hooks[0x2821c] = schedule
    h.hooks[0x3c6d4] = send
    h.put(policy.PARAMS, status)
    h.run(0x26d94, policy.PARAMS)
    assert scheduled == ['0x26e79'], scheduled
    h.run(0x26e78)
    assert policy.STOP in h.executed
    assert h.u.mem_read(0x20011055, 1) == b'\x02'  # READY
    assert responses == [[0x708, (struct.pack('<I', status) + bytes([end_reason])).hex()]], responses
    assert flags == [[1, 1, 0]], flags
    return dict(status=status, end_reason=end_reason, responses=responses,
                flag_changes=flags, scheduled=scheduled, rose_final_state=2)

if __name__ == '__main__':
    print(json.dumps({'scope': __doc__,
                      'dispatch': [dispatch(), dispatch(0), dispatch(paired=False),
                                   dispatch(encrypted=False), dispatch(initialized=False), dispatch(body=False)],
                      'counter': [counter.trial(c,t) for c,t in
                                  [(80,0),(80,83),(80,84),(80,180),(65530,65534),(65532,65535),(65534,0)]],
                      'completion': [completion(7,1), completion(0,1), completion(0,2), completion(1,1), completion(0,4)]}, indent=2))
