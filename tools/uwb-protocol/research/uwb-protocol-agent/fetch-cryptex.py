from pathlib import Path
import urllib.request,json,struct,time
URL='https://updates.cdn-apple.com/2026FallFCS/97d26691-7bd1-4c88-b86c-61dfc4dad8b4/com_apple_MobileAsset_SoftwareUpdate/23d7cd20eb33682a98a76bc639f3f37fa329edcb.zip'
e=next(x for x in json.load(open('work/ios-registration/ios26-zip.json')) if x['name'].endswith('image_patches/cryptex-system-arm64e'))
base=3730174381;path=Path('work/uwb-protocol-agent/cryptex-system.ridiff');old=path.stat().st_size if path.exists() else 0
if old<e['size']:
 req=urllib.request.Request(URL,headers={'Range':f"bytes={base+old}-{base+e['size']-1}"})
 with urllib.request.urlopen(req,timeout=120) as r,path.open('ab') as f:
  assert r.status==206
  mark=old//200_000_000
  while b:=r.read(2*1024*1024):
   f.write(b);old+=len(b)
   if old//200_000_000!=mark:mark=old//200_000_000;print('downloaded',old,flush=True)
assert path.stat().st_size==e['size'];print('patch complete',path.stat().st_size,flush=True)
