"""Build the pinned MIT FindMy.py account wheel without its optional desktop BLE dependency.

Usage: python scripts/build_findmy_account_wheel.py output.whl
The complete source lives under vendor/findmy-account. Its provenance records upstream
commit and hashes; package contents are unchanged. Only Bleak's unused dependency edge
is removed. No network, credential or Bluetooth calls occur during this build.
"""
from __future__ import annotations
import base64
import csv
import hashlib
import io
import json
from pathlib import Path
import sys
import tomllib
import zipfile

ROOT = Path(__file__).resolve().parents[1] / 'vendor/findmy-account'
VERSION = '0.10.1+librepods.1'
DIST = f'findmy-{VERSION}.dist-info'

def build(output: Path):
    provenance=json.loads((ROOT/'PROVENANCE.json').read_text())
    entries={}
    for name, expected in provenance['files'].items():
        data=(ROOT/name).read_bytes()
        if hashlib.sha256(data).hexdigest()!=expected:
            raise ValueError(f'Pinned source differs from provenance: {name}')
        if name.startswith('findmy/'): entries[name]=data
    # Check every source is represented, rather than omitting a newly added subpackage.
    source_files={str(p.relative_to(ROOT)) for p in (ROOT/'findmy').rglob('*') if p.is_file() and '__pycache__' not in p.parts and p.suffix!='.pyc'}
    if set(entries)!=source_files:
        raise ValueError('Package source set differs from provenance')
    project=tomllib.loads((ROOT/'pyproject.toml').read_text())['project']
    requires=project['dependencies']
    if any(req.lower().startswith('bleak') for req in requires):raise ValueError('Desktop BLE dependency returned')
    metadata='\n'.join(['Metadata-Version: 2.4','Name: FindMy',f'Version: {VERSION}',
                         f'Summary: {project["description"]}',f'Requires-Python: {project["requires-python"]}',
                         'License-Expression: MIT','License-File: licenses/LICENSE.md',
                         *[f'Requires-Dist: {req}' for req in requires],'',''])
    entries[DIST+'/METADATA']=metadata.encode()
    entries[DIST+'/WHEEL']=b'Wheel-Version: 1.0\nGenerator: LibrePods pinned-account-wheel\nRoot-Is-Purelib: true\nTag: py3-none-any\n'
    entries[DIST+'/licenses/LICENSE.md']=(ROOT/'LICENSE.md').read_bytes()
    entries[DIST+'/PROVENANCE.json']=(ROOT/'PROVENANCE.json').read_bytes()
    rows=[]
    for name,data in sorted(entries.items()):
        digest=base64.urlsafe_b64encode(hashlib.sha256(data).digest()).rstrip(b'=').decode()
        rows.append((name,'sha256='+digest,str(len(data))))
    rows.append((DIST+'/RECORD','',''))
    record=io.StringIO();csv.writer(record,lineterminator='\n').writerows(rows)
    entries[DIST+'/RECORD']=record.getvalue().encode()
    output.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(output,'w',compression=zipfile.ZIP_DEFLATED) as zf:
        for name,data in sorted(entries.items()):
            info=zipfile.ZipInfo(name,date_time=(1980,1,1,0,0,0));info.compress_type=zipfile.ZIP_DEFLATED;info.external_attr=0o644<<16
            zf.writestr(info,data)

if __name__=='__main__':
    if len(sys.argv)!=2:raise SystemExit(__doc__)
    build(Path(sys.argv[1]));print('Built pinned account wheel')
