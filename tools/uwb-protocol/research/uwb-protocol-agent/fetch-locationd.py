from pathlib import Path
import urllib.request,json,struct,lzma,re
URL='https://updates.cdn-apple.com/2026FallFCS/97d26691-7bd1-4c88-b86c-61dfc4dad8b4/com_apple_MobileAsset_SoftwareUpdate/23d7cd20eb33682a98a76bc639f3f37fa329edcb.zip'
entry=next(x for x in json.load(open('work/ios-registration/ios26-zip.json')) if x['name']=='AssetData/payloadv2/payload.022')
def read(a,n):
 req=urllib.request.Request(URL,headers={'Range':f'bytes={a}-{a+n-1}'})
 with urllib.request.urlopen(req,timeout=60) as r:
  if r.status!=206:raise ValueError('range refused')
  return r.read()
h=read(entry['offset'],30);n,e=struct.unpack_from('<HH',h,26);base=entry['offset']+30+n+e
p=Path('work/uwb-protocol-agent/payload022.pbzx')
if not p.exists():p.write_bytes(read(base,entry['size']))
b=p.read_bytes();assert b[:4]==b'pbzx';pos=12;chunks=[]
while pos<len(b):
 flags,size=struct.unpack_from('>QQ',b,pos);pos+=16;chunk=b[pos:pos+size];pos+=size
 d=lzma.decompress(chunk) if chunk.startswith(b'\xfd7zXZ') else chunk
 chunks.append(d)
 print(len(chunks),[x.decode(errors='replace') for x in re.findall(rb'usr/libexec/[ -~]{1,70}',d)[:4]],flush=True)
data=b''.join(chunks);Path('work/uwb-protocol-agent/payload022.raw').write_bytes(data)
for target in (b'usr/libexec/locationd',b'usr/libexec/nearbyd'):
 a=data.find(target);print(target,a,flush=True)
