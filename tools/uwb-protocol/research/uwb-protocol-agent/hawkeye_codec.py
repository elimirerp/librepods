"""Offline codec derived from Apple locationd 26.7.1; no Bluetooth/account I/O.

Byte layouts: configureNBRangingHawkeye 0x10144a35c, startNB 0x10144a610,
readNBRangingConfigParams 0x101467ea4, createConfigureRanging 0x101488bd8.
Values are encoded wire fields, not controller enum values. In particular
nearbyd subtracts one from controller MMS PSR before this wire field.
"""
import struct
from dataclasses import dataclass,asdict
SERVICE='0000fd44-0000-1000-8000-00805f9b34fb'
CHARACTERISTIC='4f860006-943b-49ef-bed4-2f730304427a'
NB_FORMAT='<8B2H4BHB'
@dataclass(frozen=True)
class NBConfig:
 version:int; mms_frag_country_code:int; nb_country_codes:int; sar_country_codes:int
 acq_timeout:int; acq_retry_interval:int; acq_dither_max:int; ranging_timeout:int
 nb_mask_nap_channel:int; nb_channel_select_mask:int
 wire_mms_psr:int; mms_gap:int; mms_sequence_index:int; mms_slot_size:int
 interval:int; debug_flags:int
 def encode(self):return struct.pack(NB_FORMAT,*asdict(self).values())
 @classmethod
 def decode(cls,data):
  if len(data)!=19:raise ValueError('NB config body must be 19 bytes')
  return cls(*struct.unpack(NB_FORMAT,data))
def frame(opcode,body=b''):return b'\x01'+struct.pack('<H',opcode)+body
def configure_nb(config):return frame(0x070d,config.encode())
def start_nb(irk):
 if len(irk)!=16:raise ValueError('ranging IRK must be 16 bytes')
 return frame(0x070e,irk)
def configure_p2p(country,channel,acq_preamble,tracking_preamble,interval,rose_mac):
 if len(rose_mac)!=8:raise ValueError('Rose MAC must be 8 bytes')
 flags=0x80|(channel&3)|((acq_preamble&3)<<2)|((tracking_preamble&3)<<4)
 return frame(0x0702,struct.pack('<BBH',country,flags,interval)+rose_mac)
def start_p2p(target_event_counter):return frame(0x0703,struct.pack('<H',target_event_counter))
def capabilities_query():return frame(0x0710,b'\0'*4)
def parse_capabilities(data):
 if len(data)!=4:raise ValueError('capabilities body must be LE32')
 value=int.from_bytes(data,'little')
 return {'raw':value, 'supports_fc1nd':bool(value&1), 'supports_nbamms':bool(value&2), 'supports_unii5':bool(value&4), 'supports_simultaneous_ranging':bool(value&8)}
def parse(packet):
 if len(packet)<3 or packet[0]!=1:raise ValueError('expected Hawkeye version byte 1 and LE16 opcode')
 opcode=struct.unpack('<H',packet[1:3])[0];body=packet[3:]
 if opcode==0x0711:return {'opcode':opcode,'capabilities':parse_capabilities(body)}
 if opcode==0x0700:
  if len(body)!=4:raise ValueError('Hawkeye ACK body must be opcodeLE16/statusLE16')
  ack,status=struct.unpack('<HH',body)
  return {'opcode':opcode,'acknowledged_opcode':ack,'status':status}
 if opcode==0x070d:return {'opcode':opcode,'nb_config':asdict(NBConfig.decode(body))}
 if opcode==0x070e:
  if len(body)!=16:raise ValueError('NB start body must be 16 bytes')
  return {'opcode':opcode,'ranging_irk_hex':body.hex()}
 if opcode==0x0702:
  if len(body)!=12:raise ValueError('P2P config body must be 12 bytes')
  country,flags,interval=struct.unpack('<BBH',body[:4])
  return {'opcode':opcode,'country':country,'flags':flags,'channel':flags&3,'acq_preamble':(flags>>2)&3,'tracking_preamble':(flags>>4)&3,'interval':interval,'rose_mac_hex':body[4:].hex()}
 if opcode==0x0703:
  if len(body)!=2:raise ValueError('P2P start body must be LE16 counter')
  return {'opcode':opcode,'target_event_counter':int.from_bytes(body,'little')}
 if opcode==0x0710:
  if len(body)!=4:raise ValueError('capabilities query body must be 4 bytes')
  return {'opcode':opcode,'capabilities_query_mask':int.from_bytes(body,'little')}
 return {'opcode':opcode,'body_hex':body.hex()}
if __name__=='__main__':
 import json
 nb=NBConfig(1,2,3,4,5,6,7,8,0x0a09,0x0c0b,13,14,15,16,0x1211,19)
 fixtures={
  'synthetic_nb_config':configure_nb(nb),
  'synthetic_nb_start':start_nb(bytes(range(16))),
  'synthetic_p2p_config':configure_p2p(1,2,3,1,0x1234,bytes(range(8))),
  'synthetic_p2p_start':start_p2p(0x1234),
  'native_capabilities_query':capabilities_query(),
  'synthetic_capabilities_response':frame(0x0711,bytes.fromhex('0f000000')),
  'synthetic_capabilities_ack':frame(0x0700,bytes.fromhex('10070000')),
 }
 # Explicit instruction-derived bytes, independently distinguish packing order.
 assert fixtures['synthetic_nb_config'].hex()=='010d070102030405060708090a0b0c0d0e0f10111213'
 assert fixtures['synthetic_nb_start'].hex()=='010e07000102030405060708090a0b0c0d0e0f'
 assert fixtures['synthetic_p2p_config'].hex()=='010207019e34120001020304050607'
 assert fixtures['synthetic_p2p_start'].hex()=='0103073412'
 assert fixtures['native_capabilities_query'].hex()=='01100700000000'
 assert fixtures['synthetic_capabilities_response'].hex()=='0111070f000000'
 assert all(parse(fixtures['synthetic_capabilities_response'])['capabilities'][k] for k in ['supports_fc1nd','supports_nbamms','supports_unii5','supports_simultaneous_ranging'])
 assert parse(fixtures['synthetic_nb_config'])['nb_config']==asdict(nb)
 for malformed in [b'',b'\x00\x0d\x07',b'\x01\x0d\x07\x00',b'\x01\x0e\x07'+bytes(15)]:
  try:parse(malformed)
  except ValueError:pass
  else:raise AssertionError('accepted malformed fixture')
 print(json.dumps({k:{'hex':v.hex(),'parsed':parse(v),'synthetic':k!='native_capabilities_query'} for k,v in fixtures.items()},indent=2))
