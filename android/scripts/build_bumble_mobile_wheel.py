"""Repackage an installed pinned Bumble0.0.223 with H4-only dependency metadata.
Upstream package bytes are verified against its installed RECORD and unchanged.
No network/radio/build calls. Generated wheel is retained for reproducible APK builds.
"""
import base64,csv,hashlib,importlib.metadata,io,json,sys
from pathlib import Path
from zipfile import ZipFile,ZipInfo,ZIP_DEFLATED

def build(output):
    dist=importlib.metadata.distribution('bumble')
    if dist.version!='0.0.223':raise ValueError('pinned Bumble required')
    entries={}
    for f in dist.files:
        name=str(f)
        if name.startswith('bumble/') and '__pycache__' not in name and not name.endswith('.pyc'):
            data=dist.locate_file(f).read_bytes()
            if not f.hash or f.hash.mode!='sha256' or base64.urlsafe_b64encode(hashlib.sha256(data).digest()).rstrip(b'=').decode()!=f.hash.value:
                raise ValueError('upstream RECORD mismatch')
            entries[name]=data
    version='0.0.223+librepods.1';info=f'bumble-{version}.dist-info'
    entries[info+'/METADATA']=('\n'.join(['Metadata-Version: 2.4','Name: bumble',f'Version: {version}',
        'Summary: Bumble unchanged H4 stack; desktop transport dependencies omitted',
        'License-Expression: Apache-2.0','Requires-Python: >=3.10',
        'Requires-Dist: pyee>=13.0.0','Requires-Dist: cryptography>=42.0.8',
        'Requires-Dist: typing_extensions>=4.12.2','',''])).encode()
    entries[info+'/WHEEL']=b'Wheel-Version: 1.0\nGenerator: LibrePods H4 wheel\nRoot-Is-Purelib: true\nTag: py3-none-any\n'
    entries[info+'/licenses/LICENSE']=dist.locate_file('bumble-0.0.223.dist-info/licenses/LICENSE').read_bytes()
    provenance={'upstream':'https://github.com/google/bumble','version':dist.version,
        'source':'retained installed distribution; every packaged source verified against upstream RECORD',
        'modification':'package bytes unchanged; dependency metadata reduced to in-process H4 runtime; crypto floor42.0.8 for available Android AES/CMAC/P256 APIs',
        'files':{n:hashlib.sha256(d).hexdigest() for n,d in sorted(entries.items()) if n.startswith('bumble/')}}
    entries[info+'/PROVENANCE.json']=json.dumps(provenance,indent=2).encode()
    rows=[(n,'sha256='+base64.urlsafe_b64encode(hashlib.sha256(d).digest()).rstrip(b'=').decode(),str(len(d))) for n,d in sorted(entries.items())]
    rows.append((info+'/RECORD','',''));record=io.StringIO();csv.writer(record,lineterminator='\n').writerows(rows)
    entries[info+'/RECORD']=record.getvalue().encode()
    output.parent.mkdir(parents=True,exist_ok=True)
    with ZipFile(output,'w') as z:
        for n,d in sorted(entries.items()):
            zi=ZipInfo(n,date_time=(1980,1,1,0,0,0));zi.compress_type=ZIP_DEFLATED;zi.external_attr=0o644<<16;z.writestr(zi,d)
    (output.parent/'PROVENANCE.json').write_text(json.dumps({**provenance,'wheelSha256':hashlib.sha256(output.read_bytes()).hexdigest()},indent=2)+'\n')

if __name__=='__main__':build(Path(sys.argv[1]))
