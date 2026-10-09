import struct,subprocess,re,sys
from pathlib import Path
p=sys.argv[1];b=Path(p).read_bytes();n=struct.unpack_from('<I',b,16)[0];o=32;segments=[]
for _ in range(n):
 cmd,size=struct.unpack_from('<II',b,o)
 if cmd==0x19:
  va,vs,fo,fs=struct.unpack_from('<QQQQ',b,o+24);segments.append((va,vs,fo,fs))
 o+=size
def get(a,n):
 for va,vs,fo,fs in segments:
  if va<=a and a+n<=va+fs:return b[fo+a-va:fo+a-va+n]
 raise ValueError(a)
f=subprocess.check_output(['xcrun','dyld_info','-fixups',p],text=True)
fix={int(a,16):int(v,16) for a,v in re.findall(r'(0x[0-9A-Fa-f]+)\s+rebase\s+(0x[0-9A-Fa-f]+)',f)}
for src,dst in sorted(fix.items()):
 if not 0x10030b000<=src<0x10030c000:continue
 try:
  flags=struct.unpack('<Q',get(dst+8,8))[0];ln=struct.unpack('<Q',get(dst+24,8))[0]
  if ln>128:continue
  data=get(fix[dst+16],ln*(2 if flags & 0x10 else 1))
  s=data.decode('utf-16le' if flags & 0x10 else 'utf-8')
  if all(c.isprintable() for c in s):print(hex(src),s)
 except (ValueError,KeyError,UnicodeError,struct.error):pass
