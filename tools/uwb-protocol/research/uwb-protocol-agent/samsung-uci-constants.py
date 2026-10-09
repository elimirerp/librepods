"""Read scalar public protocol constants from retained Samsung DEX only."""
import json,re,struct,sys
from zipfile import ZipFile
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'elimirerp-librepods/tools/findmy-research'))
from dex_metadata import Dex
with ZipFile(Path(__file__).resolve().parents[1]/'phone-uwb/semuwb-service.jar') as z:d=Dex(z.read('classes.dex'))
results=[]
for i in range(d.u32(96)):
 p=d.u32(100)+32*i;cls=d.types[d.u32(p)];cd=d.u32(p+24);values=d.u32(p+28)
 if not re.search(r'/(UciConstant\$(Gid|UwbSessionConfigGroupOid|SamsungProprietaryGroupOid)|NxpUciConstants|AppConfigParameter|VendorAppConfigParameter|MacAddressMode\$Value|RframeConfig\$Value|ScheduledMode\$Value|PrfMode\$Value|SfdId\$Value);',cls):continue
 if not cd:continue
 count,cursor=d.uleb(cd);fields=[];fid=0
 for j in range(3):_,cursor=d.uleb(cursor)
 for j in range(count):
  delta,cursor=d.uleb(cursor);fid+=delta;_,cursor=d.uleb(cursor);fields.append(d.fields[fid])
 count,cursor=d.uleb(values) if values else (0,0)
 for j in range(count):
  header=d.d[cursor];cursor+=1;kind=header&31;length=(header>>5)+1
  if kind in (0x1c,0x1d):raise ValueError('not scalar')
  if kind in (0x1e,0x1f):value=(header>>5) if kind==0x1f else None
  else:
   raw=d.d[cursor:cursor+length];cursor+=length
   value=int.from_bytes(raw,'little',signed=kind in (0,2,4,6))
   if kind==0x17:value=d.strings[value]
  results.append({'class':cls,'field':fields[j]['field'],'value':value})
 for field in fields[count:]:
  if field['type'] in ('B','S','I','J','Z','C','F','D'):
   results.append({'class':cls,'field':field['field'],'value':0,'implicit_default':True})
print(json.dumps(results,indent=2))
