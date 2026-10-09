from pathlib import Path
import struct,lzma,re
exec(Path('work/remote-ota-sample.py').read_text().split('r=Remote();')[0])
URL='https://updates.cdn-apple.com/2026FallFCS/97d26691-7bd1-4c88-b86c-61dfc4dad8b4/com_apple_MobileAsset_SoftwareUpdate/23d7cd20eb33682a98a76bc639f3f37fa329edcb.zip'
r=Remote();z=zipfile.ZipFile(r)
f=z.getinfo('AssetData/payloadv2/payload.022')
print('Payload compression:',f.compress_type,'bytes:',f.file_size,flush=True)
assert f.compress_type==0
r.seek(f.header_offset);h=r.read(30);n,e=struct.unpack_from('<HH',h,26)
base=f.header_offset+30+n+e
r.seek(base);h=r.read(12);assert h[:4]==b'pbzx'
blocks=[];pos=12
while pos<f.file_size:
 r.seek(base+pos);h=r.read(16);flags,size=struct.unpack('>QQ',h)
 blocks.append((pos+16,size));pos+=16+size
print('Blocks:',len(blocks),'Fetching final six.',flush=True)
data=b''
for offset,size in blocks[-6:]:
 r.seek(base+offset);b=r.read(size)
 data+=lzma.decompress(b) if b.startswith(b'\xfd7zXZ') else b
p=Path('work/ios-registration/ios26-payload022-tail.bin');p.write_bytes(data)
for m in re.finditer(rb'usr/libexec/[^\x00-\x1f]+',data):
 print(m.start(),m.group()[:110],flush=True)
