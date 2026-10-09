from pathlib import Path
import urllib.request,json,struct,lzma,re,zlib,sys
URL='https://updates.cdn-apple.com/2026FallFCS/97d26691-7bd1-4c88-b86c-61dfc4dad8b4/com_apple_MobileAsset_SoftwareUpdate/23d7cd20eb33682a98a76bc639f3f37fa329edcb.zip'
root=Path('work/uwb-protocol-agent'); entries=json.load(open('work/ios-registration/ios26-zip.json'))
for num in [int(a) for a in sys.argv[1:]]:
 e=next(x for x in entries if x['name']==f'AssetData/payloadv2/payload.{num:03d}');a=e['offset']
 req=urllib.request.Request(URL,headers={'Range':f'bytes={a}-{a+30+len(e["name"])+128+e["compressed"]}'})
 with urllib.request.urlopen(req,timeout=90) as r: b=r.read()
 n,x=struct.unpack_from('<HH',b,26);p=30+n+x;b=b[p:p+e['compressed']]
 if e['method']==8:b=zlib.decompress(b,-15)
 assert b[:4]==b'pbzx';pos=12;chunks=[]
 while pos<len(b):
  flags,size=struct.unpack_from('>QQ',b,pos);pos+=16;chunk=b[pos:pos+size];pos+=size
  chunks.append(lzma.decompress(chunk) if chunk.startswith(b'\xfd7zXZ') else chunk)
 raw=b''.join(chunks);del b,chunks;pos=0;paths=[];found=[]
 while pos<len(raw):
  assert raw[pos:pos+4] in [b'YAA1',b'AA01'],(num,pos,raw[pos:pos+20])
  hs=struct.unpack_from('<H',raw,pos+4)[0];hdr=raw[pos+6:pos+hs];pat=hdr.find(b'PATP');path=''
  if pat>=0:
   sz=struct.unpack_from('<H',hdr,pat+4)[0];path=hdr[pat+6:pat+6+sz].decode();paths.append(path)
  ds=0
  m=re.search(rb'DAT([ABC])',hdr)
  if m:ds=int.from_bytes(hdr[m.end():m.end()+{'A':2,'B':4,'C':8}[m[1].decode()]],'little')
  if path in ['usr/libexec/locationd','usr/libexec/nearbyd']:
   out=root/(Path(path).name+'-ios26');out.write_bytes(raw[pos+hs:pos+hs+ds]);found.append((path,ds));print('FOUND',num,path,ds,flush=True)
  pos+=hs+ds
 (root/f'payload{num:03d}-files.txt').write_text('\n'.join(paths)+'\n');print(num,len(raw),len(paths),found,flush=True);del raw
