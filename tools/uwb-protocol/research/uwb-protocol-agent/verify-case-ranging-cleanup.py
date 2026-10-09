#!/usr/bin/env python3
"""Original 9A348 Thumb cleanup slices, synthetic RAM only.

Logging, radio/controller hardware, scheduler, and GATT transport are explicit
harness boundaries. No account, private keys, phone, or radio access.
"""
import importlib.util
import json
import struct
from pathlib import Path
from unicorn.arm_const import UC_ARM_REG_SP

ROOT = Path(__file__).resolve().parent.parent / 'airpods-pro3-firmware-agent'
spec = importlib.util.spec_from_file_location('policy', ROOT / 'emulate_key_policy.py')
policy = importlib.util.module_from_spec(spec)
spec.loader.exec_module(policy)


def harness():
    h = policy.Harness(policy.VERSIONS['9A348'])
    h.hooks[0x36b2c] = h.noop
    return h


def command(opcode, paired=True, encrypted=True, initialized=True, extra=b''):
    h = harness()
    h.hooks[0x40350] = lambda: h.ret(int(paired))
    h.hooks[0x3b53c] = lambda: h.ret(int(encrypted if h.r(1) == 5 else initialized))
    h.hooks[0x34b70] = h.noop
    h.put(0x2000fc00, policy.CTX)
    h.u.mem_write(policy.CTX + 0x3e, b'\x26\x00')
    h.u.mem_write(0x2000fad4, b'\x01')  # native default reason
    frame = b'\x01' + struct.pack('<H', opcode) + extra
    h.u.mem_write(policy.EVT + 0xa, struct.pack('<H', len(frame)))
    h.u.mem_write(policy.EVT + 0xc, frame)
    events, acks = [], []
    def event():
        events.append([h.r(0), h.r(1)])
        h.ret()
    def ack():
        acks.append({'opcode': h.r(0), 'request': h.r(3),
                     'status': h.get(h.u.reg_read(UC_ARM_REG_SP)) & 0xffff})
        h.ret()
    h.hooks[0x38804] = event
    h.hooks[0x3c7f4] = ack
    h.run(0x24008, 1, policy.EVT)
    assert policy.STOP in h.executed
    if paired and encrypted and initialized and not extra:
        assert events == [[0x21 if opcode == 0x704 else 0x1c, 0]], events
        assert not acks
        assert h.u.mem_read(0x2000fad4, 1) == b'\x02'
    else:
        assert not events
        assert len(acks) == 1 and acks[0]['opcode'] == 0x700
        assert acks[0]['status'] == (3 if extra and paired and encrypted else 1), acks
    return {'frame': frame.hex(), 'paired': paired, 'encrypted': encrypted,
            'initialized': initialized, 'events': events, 'acks': acks}


def indication(opcode, status, end_reason=2):
    h = harness()
    h.hooks[0x3b54e] = lambda: h.ret(1)
    for address in (0x28760, 0x287a8):
        h.hooks[address] = h.noop
    h.put(0x2000fc00, policy.CTX)
    h.u.mem_write(policy.CTX + 0x3e, b'\x26\x00')
    h.u.mem_write(0x2000fad4, bytes([end_reason]))
    capture = []
    def send():
        size = h.get(h.u.reg_read(UC_ARM_REG_SP)) & 0xffff
        capture.append([h.r(2), bytes(h.u.mem_read(h.r(3), size)).hex()])
        h.ret()
    h.hooks[0x3c6d4] = send
    h.run(0x23dbc, opcode, status)
    expected = struct.pack('<I', status) + (bytes([end_reason]) if opcode == 0x708 else b'')
    assert capture == [[opcode, expected.hex()]], capture
    return capture[0]


def finding_event(event, any_initialized=False, ranging_flag=False):
    # Execute the real Find My extension lookup, real event callback and exit
    # callback. Rose SM and post-transition actions are audit boundaries here.
    h = harness()
    h.put(0x200141c8, 0x4dc2c)
    h.u.mem_write(0x200142ee, b'\x0c')  # FINDING
    h.u.mem_write(0x20011055, b'\x02')  # Rose READY; no key roll exception
    h.hooks[0x38204] = h.noop
    for addr in (0x3f6bc, 0x3e62c, 0x40334, 0x38aa8, 0x2da04,
                 0x3a344, 0x3bdb4, 0x2821c):
        h.hooks[addr] = h.noop
    h.hooks[0x3b53c] = lambda: h.ret(int(any_initialized if h.r(1) == 4 else ranging_flag))
    rose_events, range_completions = [], []
    def rose():
        rose_events.append([h.r(0), h.r(1)])
        h.ret()
    h.hooks[0x26b10] = rose
    def range_complete():
        range_completions.append(h.r(0))
        h.ret()
    h.hooks[0x23f5c] = range_complete
    h.run(0x38804, event, 0)
    assert policy.STOP in h.executed
    if event == 0x21:
        assert rose_events == [[0xa, 0]]
    elif event == 0x1c:
        assert rose_events == [[0x18, 0]]
        assert h.u.mem_read(0x200142ee, 1) == b'\x08'
    elif event == 5:
        expected = [[0x17, 0]] if not any_initialized else ([[0xa, 0]] if not ranging_flag else [])
        assert rose_events == expected, rose_events
    elif event == 0x20:
        assert range_completions == [0] and not rose_events
    return {'findmy_event': event, 'any_initialized_connection': any_initialized,
            'any_ranging_connection': ranging_flag, 'rose_events': rose_events,
            'range_completion_statuses': range_completions}


def rose_event(state, event):
    # Real ROSE table lookup/transition, concrete hardware callback is boundary.
    h = harness()
    h.u.mem_write(0x20011055, bytes([state]))
    callbacks = []
    for addr in (0x26322, 0x261a4, 0x260f4, 0x26108):
        def cb(addr=addr):
            callbacks.append(addr)
            h.ret()
        h.hooks[addr] = cb
    h.run(0x26b10, event, 0)
    assert policy.STOP in h.executed
    expected = {0xa: 0x26322, 0xb: 0x261a4, 0x17: 0x260f4, 0x18: 0x26108}[event]
    assert callbacks == [expected], callbacks
    return {'state': state, 'event': event, 'callback': hex(expected),
            'new_state': h.u.mem_read(0x20011055, 1)[0]}


if __name__ == '__main__':
    report = {'scope': __doc__,
              'commands': [command(op, **options) for op in (0x704, 0x705)
                           for options in ({}, {'paired': False}, {'encrypted': False},
                                           {'initialized': False}, {'extra': b'\x00'})],
              'indications': [indication(op, st) for op in (0x708, 0x70a, 0x70b) for st in (0, 8)],
              'finding_routes': [finding_event(0x21), finding_event(0x1c), finding_event(0x20),
                                 finding_event(5), finding_event(5, True, False),
                                 finding_event(5, True, True)],
              'rose_routes': [rose_event(5, 0xa), rose_event(5, 0xb)] +
                             [rose_event(st, ev) for st in (2, 4, 5) for ev in (0x17, 0x18)]}
    print(json.dumps(report, indent=2))
