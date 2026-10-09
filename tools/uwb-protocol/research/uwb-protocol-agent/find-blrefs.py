import struct,sys
b=open(sys.argv[1],'rb').read();p=32;target=int(sys.argv[2],0)
for _ in range(struct.unpack_from('<I',b,16)[0]):
 c,n=struct.unpack_from('<II',b,p)
 if c==0x19 and b[p+8:p+24].split(b'\0')[0]==b'__TEXT':
  va,vs,fo,fs=struct.unpack_from('<QQQQ',b,p+24)
  for off in range(fo,fo+fs-4,4):
   w=struct.unpack_from('<I',b,off)[0]
   if w&0xfc000000!=0x94000000:continue
   d=w&0x3ffffff;d=d-(1<<26) if d&(1<<25) else d
   a=va+off-fo
   if a+d*4==target:print(hex(a))
 p+=n
