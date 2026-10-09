from pathlib import Path
import urllib.request,json,struct,lzma,re,concurrent.futures
from importlib.machinery import SourceFileLoader
URL='https://updates.cdn-apple.com/2026FallFCS/97d26691-7bd1-4c88-b86c-61dfc4dad8b4/com_apple_MobileAsset_SoftwareUpdate/23d7cd20eb33682a98a76bc639f3f37fa329edcb.zip'
def sample(e):
 try:
  a=e['offset'];req=urllib.request.Request(URL,headers={'Range':f'bytes={a}-{a+8*1024*1024}'})
  with urllib.request.urlopen(req,timeout=45) as r:b=r.read()
  n,x=struct.unpack_from('<HH',b,26);p=30+n+x; b=b[p:];assert b[:4]==b'pbzx';pos=12;out=b''
  while pos+16<len(b):
   flags,size=struct.unpack_from('>QQ',b,pos);pos+=16
   if pos+size>len(b):break
   chunk=b[pos:pos+size];pos+=size;out+=lzma.decompress(chunk) if chunk.startswith(b'\xfd7zXZ') else chunk
  paths=re.findall(rb'(?:usr/libexec|System/Library|Applications)/[ -~]{1,120}',out)
  return e['name'],len(out),[x.decode(errors='replace') for x in paths[:2]], b'usr/libexec/locationd' in out,b'usr/libexec/nearbyd' in out
 except Exception as ex:return e['name'],str(ex)
d=[x for x in json.load(open('work/ios-registration/ios26-zip.json')) if re.search(r'payload\.\d{3}$',x['name']) and 3<=int(x['name'][-3:])<=20]
with concurrent.futures.ThreadPoolExecutor(4) as pool:
 for r in pool.map(sample,d):print(r,flush=True)
