import re,struct
from pathlib import Path
b=Path('work/uwb-protocol-agent/nearbyd-ios26').read_bytes();p=32;segs=[]
for _ in range(struct.unpack_from('<I',b,16)[0]):
 c,s=struct.unpack_from('<II',b,p)
 if c==0x19:segs.append(struct.unpack_from('<QQQQ',b,p+24))
 p+=s
def read(a,n):
 for va,vs,fo,fs in segs:
  if va<=a and a+n<=va+fs:return b[fo+a-va:fo+a-va+n]
 return b''
f=Path('work/uwb-protocol-agent/nearbyd-ios26-fixups.txt').read_text();fix={int(a,16):int(v,16) for a,v in re.findall(r'(0x[0-9A-Fa-f]+)\s+(?:auth-)?rebase\s+(0x[0-9A-Fa-f]+)',f)}
for a in range(0x1009e87a8,0x1009e8c68,32):
 ptr=fix.get(a+16,0)
 print(hex(a),read(ptr,200).split(b'\0')[0].decode(errors='replace'))
for a in range(0x100a14290,0x100a142e0,4):print(hex(a),struct.unpack('<I',read(a,4))[0])
