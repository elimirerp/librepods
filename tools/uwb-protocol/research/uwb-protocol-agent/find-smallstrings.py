import struct,sys
b=open(sys.argv[1],'rb').read();p=32;ss=[]
for _ in range(struct.unpack_from('<I',b,16)[0]):
 c,n=struct.unpack_from('<II',b,p)
 if c==0x19:
  seg=b[p+8:p+24].split(b'\0')[0].decode();va,vs,fo,fs=struct.unpack_from('<QQQQ',b,p+24)
  if seg=='__TEXT':ss.append((va,fo,fs))
 p+=n
wanted={int.from_bytes(x.encode(),'little'):x for x in ['connect','update','intermed','iate']}
for va,fo,fs in ss:
 regs={}
 for o in range(fo,fo+fs-4,4):
  w=struct.unpack_from('<I',b,o)[0];typ=w&0xff800000
  if typ not in (0xd2800000,0xf2800000):continue
  reg=w&31;sh=((w>>21)&3)*16;im=(w>>5)&65535
  if typ==0xd2800000:regs[reg]=im<<sh
  elif reg in regs:regs[reg]=(regs[reg]&~(65535<<sh))|(im<<sh)
  if regs.get(reg) in wanted:print(hex(va+o-fo),wanted[regs[reg]],'x'+str(reg))
