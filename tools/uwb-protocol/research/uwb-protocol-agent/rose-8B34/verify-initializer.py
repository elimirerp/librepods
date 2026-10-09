#!/usr/bin/env python3
"""Run original ROSE STS setup with synthetic addresses; capture AES MMIO, no AES/radio."""
import json,struct
from pathlib import Path
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB,UC_MODE_MCLASS,UC_HOOK_CODE,UC_HOOK_MEM_WRITE
from unicorn.arm_const import *
ROOT=Path(__file__).resolve().parent.parent/'airpods-pro3-firmware-agent'
flash=(Path(__file__).resolve().parent/'rkos.bin').read_bytes()
u=Uc(UC_ARCH_ARM,UC_MODE_THUMB|UC_MODE_MCLASS)
u.mem_map(0x400000,0x100000);u.mem_write(0x400000,flash)
u.mem_map(0x10000000,0x40000);u.mem_map(0x44005000,0x1000)
STOP=0x4f0000;ctx=0x10032000;out=0x10030000;regs=[UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3];writes=[]
def ret(v=0):
 u.reg_write(UC_ARM_REG_R0,v);u.reg_write(UC_ARM_REG_PC,u.reg_read(UC_ARM_REG_LR))
def code(uc,a,s,x):
 if a==STOP:uc.emu_stop()
 elif a==0x4068a0:
  d,s,n=[uc.reg_read(r) for r in regs[:3]];uc.mem_write(d,bytes(uc.mem_read(s,n)));ret(d)
 elif a==0x4069c0:
  d,v,n=[uc.reg_read(r) for r in regs[:3]];uc.mem_write(d,bytes([v&255])*n);ret(d)
 elif a==0x45b0ba:ret(0x44005000)
def mmio(uc,access,a,s,v,x):
 if a==0x44005020:writes.append(v)
u.hook_add(UC_HOOK_CODE,code);u.hook_add(UC_HOOK_MEM_WRITE,mmio)
u.mem_write(0x44005014,struct.pack('<I',1))
# The two original session callers clear the first RoseMAC byte before setup.
mac=bytes(range(1,9));iv=bytes([0])+mac[1:]+bytes(8)
for r,v in zip(regs,[out,ctx,int.from_bytes(iv[:4],'little'),int.from_bytes(iv[4:8],'little')]):u.reg_write(r,v)
u.reg_write(UC_ARM_REG_SP,0x1003f000);u.reg_write(UC_ARM_REG_LR,STOP|1)
u.emu_start(0x42bec4|1,STOP+2,count=10000)
key=bytes(u.mem_read(ctx+0xa1,16));actualiv=bytes(u.mem_read(ctx+0x81,16))
assert key==flash[0x69258:0x69268]
assert actualiv==iv,(actualiv.hex(),iv.hex())
assert writes==[0x16000000,ctx+0xa1,0x26020000,ctx+0x81,0x2056c539,out],writes
print(json.dumps({'scope':__doc__,'syntheticRoseMAC':mac.hex(),'storedIV':actualiv.hex(),'fixedFirmwareAESKey':key.hex(),'AESCommandWords':[hex(x) for x in writes],'aesExpansionEmulated':False},indent=2))
