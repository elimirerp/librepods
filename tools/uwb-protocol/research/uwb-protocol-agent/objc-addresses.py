from pathlib import Path
import subprocess,re,struct,sys
p=Path(sys.argv[1]);b=p.read_bytes();o=32;segs=[]
for _ in range(struct.unpack_from('<I',b,16)[0]):
 cmd,size=struct.unpack_from('<II',b,o)
 if cmd==0x19:segs.append(struct.unpack_from('<QQQQ',b,o+24))
 o+=size
def read(a,n):
 for va,vs,fo,fs in segs:
  if va<=a and a+n<=va+fs:return b[fo+a-va:fo+a-va+n]
 raise ValueError(hex(a))
f=subprocess.check_output(['xcrun','dyld_info','-fixups',str(p)],text=True)
fix={int(a,16):int(v,16) for a,v in re.findall(r'(0x[0-9A-Fa-f]+)\s+(?:auth-)?rebase\s+(0x[0-9A-Fa-f]+)',f)}
t=subprocess.check_output(['otool','-ov',str(p)],text=True)
lists=re.findall(r'\n        name\s+0x[0-9a-f]+ ([^\n]+)\n        baseMethods\s+(0x[0-9a-f]+)\n            entsize 12 \(relative\)\n            count\s+(\d+)',t)
if len(sys.argv)>3:lists=[('CBUUID',sys.argv[2],sys.argv[3])]
for cl,base,count in lists:
 for j in range(int(count)):
  addr=int(base,16)+8+12*j
  try:
   name,ty,imp=struct.unpack('<iii',read(addr,12));ref=addr+name;ptr=fix.get(ref,struct.unpack('<Q',read(ref,8))[0]);sel=read(ptr,256).split(b'\0')[0].decode();print(f'0x{addr+8+imp:x} [{cl} {sel}]')
  except (ValueError,UnicodeError,struct.error):pass
