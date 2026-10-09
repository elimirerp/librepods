#!/usr/bin/env python3
"""Execute native ROSE mini-slot normalization and acquisition reply builder.
Only public synthetic addresses/timestamps. No RF, AES, owner material or FCS.
"""
import json, struct
from pathlib import Path
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_MODE_MCLASS, UC_HOOK_CODE
from unicorn.arm_const import *
IMAGE=Path(__file__).resolve().parent.parent/'airpods-pro3-firmware-agent/A3122-rose/rkos.bin'
RAM=0x10000000

def harness(stop):
 u=Uc(UC_ARCH_ARM, UC_MODE_THUMB|UC_MODE_MCLASS)
 u.mem_map(0x400000,0x100000);u.mem_write(0x400000,IMAGE.read_bytes())
 u.mem_map(RAM,0x40000)
 u.reg_write(UC_ARM_REG_SP,RAM+0x3e000)
 def hook(uc,a,s,_):
  if a==stop: uc.emu_stop()
 u.hook_add(UC_HOOK_CODE,hook)
 return u

def normalize(group,tx=0,rx=0):
 u=harness(0x423160); cmd=RAM+0x1000
 u.mem_write(cmd+0x17,bytes([group]));u.mem_write(cmd+0x24,bytes([tx,rx]))
 for r,v in [(UC_ARM_REG_R1,group),(UC_ARM_REG_R5,cmd),(UC_ARM_REG_R9,71),(UC_ARM_REG_R10,1)]:u.reg_write(r,v)
 u.emu_start(0x42302a|1,0x423162,count=100)
 return list(u.mem_read(cmd+0x24,2))

for group,expected in [(0,[12,12]),(1,[56,56])]: assert normalize(group)==expected
assert normalize(0,13,14)==[13,14]

mac=bytes.fromhex('a002030405060708'); m0=b'\0'+mac[1:];m1=b'\1'+mac[1:]
u=harness(0x42b882);task=RAM+0x3000;ctx=task+0x960;frame=RAM+0x6000
u.mem_write(ctx+0xc50,m0);u.mem_write(ctx+0xc58,m1)
u.mem_write(task+0x68,b'\x00');u.mem_write(frame,bytes(25))
# A low32 carry demonstrates the native timestamp's modulo48 arithmetic.
rx_timestamp=0x1234fffffff0;delay=12*9600
for r,v in [(UC_ARM_REG_R5,frame),(UC_ARM_REG_R8,task),(UC_ARM_REG_R9,ctx),
            (UC_ARM_REG_R11,rx_timestamp&0xffffffff),(UC_ARM_REG_R6,rx_timestamp>>32),
            (UC_ARM_REG_R4,delay)]:u.reg_write(r,v)
u.emu_start(0x42b838|1,0x42b884,count=100)
psdu=bytes(u.mem_read(frame,23)); scheduled=int.from_bytes(u.mem_read(ctx,8),'little')
expected=struct.pack('<HB',0xa841,1)+m0+m1+struct.pack('<HBB',0xa5a5,0,0x31)
assert psdu==expected,(psdu.hex(),expected.hex())
assert scheduled==(rx_timestamp+delay)&((1<<48)-1)
assert int.from_bytes(u.mem_read(task+0x976,2),'little')==23
print(json.dumps({'scope':__doc__,'normalization':[{'packetGroup':g,'zeroCodesBecome':normalize(g)} for g in [0,1]],
 'syntheticRoseMac':mac.hex(),'replyPsduWithoutFcs':psdu.hex(),
 'rxTimestamp48':hex(rx_timestamp),'delayNativeTicks':delay,'scheduledTx48':hex(scheduled),
 'fcsEmulated':False},indent=2))
