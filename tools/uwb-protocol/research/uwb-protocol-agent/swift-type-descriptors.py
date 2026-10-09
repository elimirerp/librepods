import struct,sys
b=open(sys.argv[1],'rb').read();p=32;segs=[];types=[]
for _ in range(struct.unpack_from('<I',b,16)[0]):
 c,n=struct.unpack_from('<II',b,p)
 if c==0x19:
  va,vs,fo,fs=struct.unpack_from('<QQQQ',b,p+24);segs.append((va,fo,fs))
  ns=struct.unpack_from('<I',b,p+64)[0]
  for j in range(ns):
   q=p+72+j*80;name=b[q:q+16].split(b'\0')[0]
   sa,sz=struct.unpack_from('<QQ',b,q+32);off=struct.unpack_from('<I',b,q+48)[0]
   if name==b'__swift5_types':types.append((sa,off,sz))
 p+=n
def read(a,n):
 for va,fo,fs in segs:
  if va<=a and a+n<=va+fs:return b[fo+a-va:fo+a-va+n]
 raise ValueError(a)
def rel(a):return a+struct.unpack('<i',read(a,4))[0]
for va,fo,sz in types:
 for i in range(0,sz,4):
  d=rel(va+i);flags=struct.unpack('<I',read(d,4))[0]
  try:name=read(rel(d+8),256).split(b'\0')[0].decode()
  except (UnicodeError,ValueError):continue
  if name in sys.argv[2:]:
   print(name,'descriptor',hex(d),'kind',flags&31,'accessor',hex(rel(d+12)),'fields',hex(rel(d+16)),'additional',read(d+20,20).hex())
