import io, urllib.request, zipfile, re, struct, zlib, lzma
URL='https://updates.cdn-apple.com/2026WinterFCS/patches/140-74721/FA40D9AE-2468-4D21-B13F-FD82D978CA3C/com_apple_MobileAsset_SoftwareUpdate/8949fdc674113f5ab3c8a8ce8d222442cddb3194.zip'
class Remote(io.RawIOBase):
 def __init__(self):
  with urllib.request.urlopen(urllib.request.Request(URL,method='HEAD'),timeout=30) as r: self.size=int(r.headers['Content-Length'])
  self.pos=0
 def seekable(self): return True
 def readable(self): return True
 def tell(self): return self.pos
 def seek(self,n,w=0):
  self.pos=n if w==0 else self.pos+n if w==1 else self.size+n
  return self.pos
 def read(self,n=-1):
  n=self.size-self.pos if n<0 else min(n,self.size-self.pos)
  if not n: return b''
  q=urllib.request.Request(URL,headers={'Range':f'bytes={self.pos}-{self.pos+n-1}'})
  with urllib.request.urlopen(q,timeout=40) as r:
   if r.status != 206: raise RuntimeError('Server ignored byte range')
   b=r.read()
  self.pos+=len(b);return b

URL='https://updates.cdn-apple.com/2026FallFCS/97d26691-7bd1-4c88-b86c-61dfc4dad8b4/com_apple_MobileAsset_SoftwareUpdate/23d7cd20eb33682a98a76bc639f3f37fa329edcb.zip'
r=Remote(); z=zipfile.ZipFile(r)
for f in z.infolist():
 if not re.search(r'payloadv2/payload\.0(2[0-9]|30)$',f.filename):continue
 r.seek(f.header_offset); h=r.read(30); n,e=struct.unpack_from('<HH',h,26)
 r.seek(f.header_offset+30+n+e); b=r.read(min(f.compress_size,4*1024*1024))
 if f.compress_type==8:b=zlib.decompressobj(-15).decompress(b)
 if not b.startswith(b'pbzx'):print(f.filename,b[:16],flush=True);continue
 try:
  length=struct.unpack_from('>Q',b,20)[0]
  block=b[28:28+length]
  d=lzma.LZMADecompressor().decompress(block,max_length=8*1024*1024) if block.startswith(b'\xfd7zXZ') else block
  strings=re.findall(rb'[ -~]{12,}',d)
  paths=[s.decode() for s in strings if (s.startswith(b'usr/') or s.startswith(b'System/') or s.startswith(b'Applications/'))]
  print(f.filename,'chunk bytes',length,'paths',paths[:3],flush=True)
 except Exception as e:print(f.filename,type(e).__name__,str(e),flush=True)
