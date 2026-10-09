#!/usr/bin/env python3
"""Execute bounded slices of original case Thumb code with synthetic RAM.

No hardware or account access. Database access, logging and SoftDevice calls
are explicit harness boundaries. This is not a simulation of Bluetooth crypto
or a complete booted case. Branches, memory copies and comparisons under audit
execute the unchanged firmware instructions.
"""
import hashlib
import json
import struct
from pathlib import Path

from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_MODE_MCLASS, UC_HOOK_CODE
from unicorn.arm_const import UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3, UC_ARM_REG_SP, UC_ARM_REG_LR, UC_ARM_REG_PC

ROOT = Path(__file__).resolve().parent
VERSIONS = {
    '9A348': dict(file='A3122-payloads/NERF.bin', delta=0,
                  callback=0x3cafc, paired=0x40334, log=0x36b2c,
                  memcmp=0x445fc, memset=0x44692),
    '8B34': dict(file='A3064-8B34-payloads/NERF.bin', delta=-0x64,
                 callback=0x3c8f0, paired=0x4010c, log=0x36ac0,
                 memcmp=0x443b8, memset=0x4444e),
}
REGS = [UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3]
STOP = 0xf0000
EVT, CTX, PARAMS, BOND = 0x20020000, 0x20020100, 0x20020200, 0x20020300
STORED = bytes(range(0x10, 0x20))
ROTATING = bytes(range(0xa0, 0xb0))


class Harness:
    def __init__(self, cfg):
        self.cfg = cfg
        self.data = (ROOT / cfg['file']).read_bytes()
        self.u = Uc(UC_ARCH_ARM, UC_MODE_THUMB | UC_MODE_MCLASS)
        self.u.mem_map(0, 0x100000)
        self.u.mem_write(0, self.data)
        self.u.mem_map(0x20000000, 0x40000)
        self.hooks = {}
        self.executed = []
        self.u.hook_add(UC_HOOK_CODE, self.on_code)

    def addr(self, new):
        return new + self.cfg['delta']

    def literal(self, at):
        return struct.unpack_from('<I', self.data, at)[0]

    def r(self, n):
        return self.u.reg_read(REGS[n])

    def put(self, addr, value):
        self.u.mem_write(addr, struct.pack('<I', value))

    def get(self, addr):
        return struct.unpack('<I', self.u.mem_read(addr, 4))[0]

    def ret(self, value=0):
        self.u.reg_write(UC_ARM_REG_R0, value & 0xffffffff)
        self.u.reg_write(UC_ARM_REG_PC, self.u.reg_read(UC_ARM_REG_LR))

    def noop(self):
        self.ret()

    def on_code(self, uc, address, size, userdata):
        self.executed.append(address)
        if address == STOP:
            uc.emu_stop()
        elif address in self.hooks:
            self.hooks[address]()

    def run(self, address, *args):
        self.u.reg_write(UC_ARM_REG_SP, 0x2003f000)
        self.u.reg_write(UC_ARM_REG_LR, STOP | 1)
        for reg, value in zip(REGS, args):
            self.u.reg_write(reg, value)
        self.u.emu_start(address | 1, STOP + 2, count=10000)


def pairing(cfg, enrolled, peer_params):
    h = Harness(cfg)
    for a in (0x2debc, 0x2def4, 0x2db80):
        h.hooks[h.addr(a)] = h.noop
    h.hooks[cfg['log']] = h.noop
    # Cached pairing state: bit2 says initialized; bit0 says paired.
    state = h.literal(cfg['paired'] + 0x18)
    h.u.mem_write(state, bytes([4 | int(enrolled)]))
    init = h.literal(h.addr(0x2d9ec))
    h.u.mem_write(init, b'\x01')
    h.u.mem_write(EVT, bytes([5]))  # PM_EVT_CONN_SEC_PARAMS_REQ
    h.u.mem_write(EVT + 2, b'\x01\x00')
    h.put(EVT + 8, PARAMS if peer_params else 0)
    h.put(EVT + 12, CTX)
    h.put(CTX, PARAMS)
    h.run(cfg['callback'], EVT)
    assert STOP in h.executed, 'callback failed to return within instruction limit'
    rejected = h.get(CTX) == 0
    assert rejected == (enrolled and peer_params)
    return {'enrolled': enrolled, 'peer_parameters_present': peer_params,
            'reply_context_set_to_null': rejected,
            'reply_called_flag': h.u.mem_read(CTX + 9, 1)[0]}


def null_params_status(cfg):
    h = Harness(cfg)
    h.hooks[h.addr(0x2bfc8)] = lambda: h.ret(1)  # peripheral role
    h.hooks[h.addr(0x2c0c4)] = h.noop
    def memset():
        h.u.mem_write(h.r(0), bytes([h.r(1) & 255]) * h.r(2))
        h.ret(h.r(0))
    h.hooks[cfg['memset']] = memset
    captured = {}
    def reply():
        captured.update(status=h.r(1), parameters_pointer=h.r(2))
        h.u.emu_stop()
    h.hooks[h.addr(0x2e01e)] = reply
    h.run(h.addr(0x2e26c), 1, 0, 0)
    assert captured == {'status': 0x85, 'parameters_pointer': 0}
    return captured


def key_reply(cfg, mode):
    h = Harness(cfg)
    h.hooks[h.addr(0x2c848)] = lambda: h.ret(0)  # existing peer slot
    h.hooks[h.addr(0x2c8f4)] = h.noop
    h.hooks[h.addr(0x2e114)] = h.noop
    def database():
        h.put(h.r(2) + 4, BOND)
        h.ret()
    h.hooks[h.addr(0x2d4d0)] = database
    def memcmp():
        a = bytes(h.u.mem_read(h.r(0), h.r(2)))
        b = bytes(h.u.mem_read(h.r(1), h.r(2)))
        h.ret((a > b) - (a < b))
    h.hooks[cfg['memcmp']] = memcmp
    h.u.mem_write(EVT, b'\x14\x00')  # BLE_GAP_EVT_SEC_INFO_REQUEST
    h.u.mem_write(EVT + 4, b'\x01\x00')
    h.u.mem_write(BOND + 0x34, STORED)
    h.u.mem_write(BOND + 0x44, bytes([0x40 | (mode == 'stored_lesc')]))
    master_id = struct.pack('<H', 0x1234) + b'12345678'
    h.u.mem_write(BOND + 0x46, master_id)
    if mode == 'stored_matching_id':
        h.u.mem_write(EVT + 0x10, master_id)
    active = h.literal(h.addr(0x2e6e8))
    h.u.mem_write(active, ROTATING)
    captured = {}
    def reply():
        ptr = h.r(1)
        key = bytes(h.u.mem_read(ptr, 16)) if ptr else None
        captured.update(selected_key=('rotating' if key == ROTATING else
                                      'stored' if key == STORED else 'unexpected'),
                        id_info_pointer=h.r(2), sign_info_pointer=h.r(3))
        h.u.emu_stop()
    h.hooks[h.addr(0x2e022)] = reply
    h.run(h.addr(0x2e3b4), EVT)
    expected = 'rotating' if mode == 'zero_id' else 'stored'
    assert captured.get('selected_key') == expected, captured
    return {'mode': mode, **captured}


def main():
    report = {'scope': __doc__, 'versions': {}}
    for version, cfg in VERSIONS.items():
        report['versions'][version] = {
            'sha256': hashlib.sha256((ROOT / cfg['file']).read_bytes()).hexdigest(),
            'pairing': [pairing(cfg, e, p) for e, p in
                        [(True, True), (False, True), (True, False)]],
            'null_parameters_status': null_params_status(cfg),
            'encryption_key_selection': [key_reply(cfg, m) for m in
                                        ['zero_id', 'stored_matching_id', 'stored_lesc']],
        }
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
