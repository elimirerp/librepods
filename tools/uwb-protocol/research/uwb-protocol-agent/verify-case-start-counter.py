#!/usr/bin/env python3
"""Original case0703 future-counter validation, synthetic BLE state; no radio."""
import importlib.util,json,struct
from pathlib import Path
p=Path(__file__).resolve().parent.parent/'airpods-pro3-firmware-agent/emulate_key_policy.py'
s=importlib.util.spec_from_file_location('policy',p);policy=importlib.util.module_from_spec(s);s.loader.exec_module(policy)
def trial(current,target):
 h=policy.Harness(policy.VERSIONS['9A348'])
 h.u.mem_write(0x20011014,b'\x01');h.u.mem_write(0x20011016,struct.pack('<H',target))
 h.u.mem_write(0x200145c0+0x60+0xe,struct.pack('<H',24))
 for a in [0x36b2c,0x24a94,0x3f5b8,0x34b70,0x41f24]:h.hooks[a]=h.noop
 h.hooks[0x24a40]=lambda:h.ret(0);h.hooks[0x3b54e]=lambda:h.ret(1)
 def getcounter():
  h.u.mem_write(h.r(1),struct.pack('<H',current));h.ret(0)
 h.hooks[0x259e4]=getcounter;h.hooks[0x26ff8]=lambda:h.ret(h.r(0))
 captured=[]
 def start():
  captured.append(dict(handle=h.get(h.r(0))&65535,target=h.r(1),interval=h.r(2)));h.ret(0)
 h.hooks[0x203d0]=start
 h.run(0x25c3c)
 result=h.r(0);accept=bool(captured)
 assert accept==(target>current+3),(current,target,accept,result)
 assert result==(0 if accept else 7)
 return dict(current=current,target=target,acceptedByCounterGate=accept,status=result,startParameters=captured)
if __name__=='__main__':
 print(json.dumps({'scope':__doc__,'trials':[trial(c,t) for c,t in [(80,0),(80,83),(80,84),(80,90),(65534,0),(65530,65534)]]},indent=2))
