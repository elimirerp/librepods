#!/usr/bin/env python3
"""Offline execution of original 9A348 paired-owner primary-public-key request.
No credentials, actual identifiers, radio operations, or live keys are used.
Logging and final indication transport are explicit harness boundaries.
Opcode validation, pairing predicate, getter and payload selection run unchanged.
"""
import importlib.util, json, struct
from pathlib import Path
from unicorn.arm_const import UC_ARM_REG_SP
ROOT=Path(__file__).resolve().parent.parent/'airpods-pro3-firmware-agent'
spec=importlib.util.spec_from_file_location('policy',ROOT/'emulate_key_policy.py')
p=importlib.util.module_from_spec(spec);spec.loader.exec_module(p)

def run(enrolled):
 h=p.Harness(p.VERSIONS['9A348']); h.hooks[0x36b2c]=h.noop
 h.u.mem_write(0x20014d80,bytes([7 if enrolled else 4]))
 h.put(0x2000fc00,p.CTX);h.u.mem_write(p.CTX+0x2e,b'\x26\x00')
 fake=bytes(range(28));h.u.mem_write(0x20014000,fake)
 # Input to native owner-information handler excludes fragmentation byte01.
 h.u.mem_write(p.EVT,bytes.fromhex('0004'))
 captured=[]
 def send():
  size=h.get(h.u.reg_read(UC_ARM_REG_SP))&0xffff
  captured.append({'opcode':h.r(2),'payload':bytes(h.u.mem_read(h.r(3),size)).hex()});h.ret()
 h.hooks[0x3c6d4]=send
 # Encryption state is left at zero; any encryption-flag lookup is an error.
 def unexpected_flag(): raise AssertionError('owner-information queried encryption flag')
 h.hooks[0x3b53c]=unexpected_flag
 h.run(0x3e37c,1,p.EVT,2)
 assert p.STOP in h.executed
 assert len(captured)==1 and captured[0]['opcode']==0x402
 if enrolled: assert captured[0]['payload']==fake.hex()
 assert 0x3c680 in h.executed and 0x40350 in h.executed
 return {'enrolled':enrolled,'encryption_flag_queried':False,
         'response_opcode':hex(captured[0]['opcode']),
         'response_payload_length':len(bytes.fromhex(captured[0]['payload'])),
         'synthetic_current_public_key_returned':captured[0]['payload']==fake.hex()}

if __name__=='__main__':
 print(json.dumps({'scope':__doc__,'cases':[run(True),run(False)]},indent=2))
