from pathlib import Path
import struct
src=Path('work/uwb-session-agent/nearbyd-disassembly.txt')
lines=src.read_text().split('/usr/libexec/nearbyd [arm64e]:')[0].splitlines()
ranges={'four-byte-config':(0x1002f793c,0x1002f7a08),'preferred-channels':(0x1002f71e6,0x1002f779c),'prepare-request-cpp':(0x10015205b,0x100154000),'extended-preamble-map':(0x100407de1,0x100407e98),'channel-map':(0x100408cee,0x100408d53),'build-p2p-packet':(0x100163c00,0x100164aea),'populate-p2p-options':(0x1002f15a2,0x1002f1b00),'request-preset-builder':(0x10015205b,0x100152673),'service-request-builder':(0x100150df2,0x100151056),'packet-v1-builder':(0x100163d40,0x1001642d0),'companion-configure':(0x1002ed040,0x1002edfff),'packet-type':(0x100408e00,0x100409250),'preset-knobs':(0x10015d5b0,0x10015dfbe)}
for name,(start,end) in ranges.items():
 out=[l for l in lines if l.startswith('0x') and start<=int(l.split()[0],16)<end]
 Path('work/uwb-p2p-agent/'+name+'.asm').write_text('\n'.join(out)+'\n')
p=Path('work/uwb-session-agent/nearbyd-x86_64').read_bytes()
num=struct.unpack_from('<I',p,16)[0]; off=32; segs=[]
for _ in range(num):
 cmd,size=struct.unpack_from('<II',p,off)
 if cmd==0x19:
  addr,vmsize,fileoff,filesize=struct.unpack_from('<QQQQ',p,off+24)
  segs.append((addr,vmsize,fileoff,filesize))
 off+=size
def read(addr,size):
 for va,vsize,fo,fs in segs:
  if va<=addr<va+fs:return p[fo+addr-va:fo+addr-va+size]
 raise ValueError(hex(addr))
base=0x100407e98
result=[]
for i,delta in enumerate(struct.unpack('<33i',read(base,33*4))):
 target=base+delta
 output={0x100407e15:0,0x100407e19:1,0x100407e1e:3,0x100407e23:2,0x100407e28:'unsupported',0x100407e36:'invalid'}.get(target,hex(target))
 result.append((i,output))
Path('work/uwb-p2p-agent/preamble-jump-table.txt').write_text('\n'.join(f'{a} -> {b}' for a,b in result)+'\n')
print('\n'.join(f'{a} -> {b}' for a,b in result))
base=0x1004091cc
names={0x100408fcc:'Legacy_BPRF',0x100408fda:'IEEE_HPRF',0x100409014:'IEEE_BPRF',0x100408feb:'SplitND_HPRF',0x10040908f:'SplitND_BPRF',0x10040902c:'MMS',0x10040903d:'Mixed_MMS',0x100409066:'Proprietary_HPRF',0x1004090cc:'NB',0x1004090e4:'unknown'}
out=[]
for i,delta in enumerate(struct.unpack('<17i',read(base,17*4))):
 target=base+delta;out.append(f'{i} -> {names.get(target,hex(target))}')
Path('work/uwb-p2p-agent/packet-family-jump-table.txt').write_text('\n'.join(out)+'\n')
print('\n'.join(out))
tables={
 'rx-preamble-candidates':(0x10015219d+0x48f8e1,3,'B'),
 'gatt-interval-ms-candidates':(0x1001522a4+0x48f7be,14,'H'),
 'ordinary-interval-ms-candidates':(0x1001522c3+0x48f783,14,'H'),
 'legacy-packet-code-table':(0x100408f78+0x1f07ec,13,'H'),
 'trigger-mode-table':(0x10016b430,9,'i'),
 'diversity-mode-table':(0x10016b4b0,4,'i'),
}
result=[]
for name,(addr,count,fmt) in tables.items():
 values=struct.unpack('<'+str(count)+fmt,read(addr,count*struct.calcsize(fmt)))
 result.append(f'{name} @ {addr:#x}: {list(values)}')
Path('work/uwb-p2p-agent/native-constant-tables.txt').write_text('\n'.join(result)+'\n')
print('\n'.join(result))
base=0x1005e3890
names=[]
for i,delta in enumerate(struct.unpack('<10i',read(base,40))):
 target=base+delta
 names.append(f'{i} -> '+read(target,100).split(b'\0')[0].decode('ascii'))
Path('work/uwb-p2p-agent/mac-mode-string-table.txt').write_text('\n'.join(names)+'\n')
