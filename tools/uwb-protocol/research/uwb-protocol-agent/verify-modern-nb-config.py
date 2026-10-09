"""Static original NERF slices with synthetic RAM; no radio/account/hardware."""
import importlib.util,json,struct
from pathlib import Path
p=Path(__file__).parent
s=importlib.util.spec_from_file_location('responses',p/'verify-case-precision-responses.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
policy=m.policy

def configure(mixed):
 h=policy.Harness(policy.VERSIONS['9A348'])
 h.hooks[0x39c54]=h.noop;h.hooks[0x36b2c]=h.noop
 body=struct.pack('<8B2H4BHB',0,mixed<<4,0x21,0x43,60,99,10,2,0x3005,0x1d,31,64,41,196,99,3)
 h.u.mem_write(policy.PARAMS,body)
 h.run(0x25fe0,policy.PARAMS)
 assert bytes(h.u.mem_read(0x20011028,19))==body
 assert bytes(h.u.mem_read(0x2000fad3,1))==b'\1'
 h.u.mem_write(0x2000fd31,b'\x08')
 def memset():
  h.u.mem_write(h.r(0),bytes([h.r(1)&255])*h.r(2));h.ret(h.r(0))
 h.hooks[0x44692]=memset
 captured={}
 def ipc():
  args=bytes(h.u.mem_read(h.r(0),25))
  captured.update(mode_argument=h.r(1),uwb_country=args[0],uwb_packet_type=struct.unpack_from('<H',args,1)[0],nb_country=args[3],nb_sar=args[4],nb_band=args[5],nb_packet_type=struct.unpack_from('<H',args,6)[0],nb_flag=bytes(h.u.mem_read(0x2000fda8,1))[0])
  h.ret()
 h.hooks[0x1c994]=ipc
 h.run(0x20198,policy.PARAMS)
 assert captured==dict(mode_argument=9,uwb_country=0,uwb_packet_type=0x807 if mixed else 0x704,nb_country=1,nb_sar=3,nb_band=1,nb_packet_type=1,nb_flag=1),captured
 return {'mixed_mms':mixed,'controller_args':captured}

out={'scope':__doc__,'fixture_is_not_a_live_configuration':True,'configure_response':[m.response(0x70f),m.response(0x70f,8)],'config_slices':[configure(0),configure(1)]}
print(json.dumps(out,indent=2))
