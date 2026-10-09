import struct,sys
b=open(sys.argv[1],'rb').read();p=32;target=int(sys.argv[2],0)
for _ in range(struct.unpack_from('<I',b,16)[0]):
 c,n=struct.unpack_from('<II',b,p)
 if c==0x19 and b[p+8:p+24].split(b'\0')[0]==b'__TEXT':
  va,vs,fo,fs=struct.unpack_from('<QQQQ',b,p+24)
  for off in range(fo,fo+fs-16,4):
   w=struct.unpack_from('<I',b,off)[0]
   if w&0x9f000000!=0x90000000:continue
   reg=w&31;im=(((w>>5)&0x7ffff)<<2)|((w>>29)&3);im=im-(1<<21) if im&(1<<20) else im
   a=va+off-fo;base=(a&~4095)+(im<<12)
   if base!=target&~4095:continue
   for d in (4,8,12):
    v=struct.unpack_from('<I',b,off+d)[0]
    if v&0xffc00000==0xf9400000 and(v>>5)&31==reg and base+((v>>10)&0xfff)*8==target:print(hex(a),hex(a+d))
    if v&0xffc00000==0x91000000 and(v>>5)&31==reg and base+((v>>10)&0xfff)==target:print(hex(a),hex(a+d))
 p+=n
