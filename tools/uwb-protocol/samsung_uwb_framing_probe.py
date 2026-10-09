#!/usr/bin/env python3
"""Bounded single-packet SP0 loopback on the owned Samsung internal radio.

Only documented test/config commands; no firmware writes, enrollment changes,
BLE access, or case start. Synthetic addresses cannot identify the owned case.
Related-chip MAC_CFG=0x70 is queried before any setter is used. A successful
loopback does not prove over-air FCS behavior or Apple ranging.
"""
import argparse
import json
from pathlib import Path
import shlex
import struct
import subprocess
import threading
import time

import frida
from adb_uwb_probe import parse_service_call
from samsung_uwb_rx_probe import APP_PROFILE, TEST_PROFILE

ALLOWED = {(1, 0), (1, 1), (1, 3), (1, 4), (1, 5), (1, 6),
           (13, 0), (13, 1), (13, 6), (13, 7), (15, 0), (15, 3)}
HOOK = """
const mod=Process.getModuleByName('uwb_uci.hal.so');
const target=mod.getExportByName('_Z24phNxpUciHal_print_packet20phNxpUciHal_Pkt_TypePKht');
let count=0;
Interceptor.attach(target,{onEnter(args){
 if(args[0].toInt32()!==1 || count>=48) return;
 const n=args[2].toUInt32()&0xffff;
 if(n<4 || n>259) return;
 const h=new Uint8Array(args[1].readByteArray(4));
 if((h[0]&0xe0)!==0x60 || h[2]!==0 || h[3]+4!==n) return;
 const gid=h[0]&15, oid=h[1]&63;
 if(gid!==1 && gid!==13 && gid!==15) return;
 const b=new Uint8Array(args[1].readByteArray(n));
 count++;
 if(gid===13 && oid===6 && n>=5) {
  send({event:'loopback_notification',rawHex:Array.from(b,x=>x.toString(16).padStart(2,'0')).join('')});
 } else {
  const value={event:'framing_other_notification',gid:gid,oid:oid,packetBytes:n};
  if(gid===1 && oid===2 && n===10) { value.sessionState=b[8]; value.reasonCode=b[9]; }
  send(value);
 }
}});
send({event:'framing_hook_ready'});
"""


def emit(event, **fields):
    print(json.dumps({'event': event, 'hostMonotonicSeconds': round(time.monotonic(), 6), **fields}), flush=True)


def shell(args, *parts):
    result = subprocess.run([str(args.adb), '-s', args.serial, *parts],
                            capture_output=True, text=True, timeout=12)
    if result.returncode:
        raise ValueError('phone_command_failed')
    return result.stdout.strip()


def send(args, gid, oid, payload=b''):
    if (gid, oid) not in ALLOWED or len(payload) > 80:
        raise ValueError('command_outside_framing_experiment')
    if gid == 15:
        suffix = payload[4:]
        allowed = ((b'\x01\x70', b'\x01\x65', b'\x02\x02\x03') if oid == 3 else
                   (bytes.fromhex('01700100'), bytes.fromhex('01700102'),
                    bytes.fromhex('0165017f'),
                    bytes.fromhex('02020201020303000103')))
        if suffix not in allowed:
            raise ValueError('only_mac_cfg_and_native_loopback_antennas_allowed')
    if (gid, oid) == (13, 6) and len(payload) not in (23, 25):
        raise ValueError('fixed_single_packet_length_required')
    parts = ['shell', 'service', 'call', 'semuwb_extras', '2', 'i32', str(gid),
             'i32', str(oid), 'i32', str(len(payload))]
    padded = payload + bytes(-len(payload) % 4)
    for offset in range(0, len(padded), 4):
        parts += ['i32', str(int.from_bytes(padded[offset:offset+4], 'little', signed=True))]
    response = parse_service_call(shell(args, *parts))
    if not response:
        raise ValueError('empty_response')
    emit('framing_command', gid=gid, oid=oid, payloadBytes=len(payload), responseHex=response.hex())
    return response


def config_set(args, token, gid, values):
    body = struct.pack('<IB', token, len(values)) + b''.join(bytes([tag, len(value)]) + value for tag, value in values.items())
    response = send(args, gid, 3 if gid == 1 else 0, body)
    if response != b'\x00\x00':
        raise ValueError('framing_configuration_rejected')


def config_read(args, token, gid, values):
    response = send(args, gid, 4 if gid == 1 else 1, struct.pack('<IB', token, len(values)) + bytes(values))
    if response[:2] != bytes([0, len(values)]):
        raise ValueError('framing_readback_failed')
    result = {}; offset = 2
    for _ in range(response[1]):
        if offset + 2 > len(response):
            raise ValueError('truncated_readback')
        tag, size = response[offset:offset+2]; offset += 2
        if tag not in values or tag in result or offset + size > len(response):
            raise ValueError('invalid_readback')
        result[tag] = response[offset:offset+size]; offset += size
    if offset != len(response) or result != values:
        raise ValueError('framing_readback_mismatch')


def crc16(data):
    value = 0
    for octet in data:
        value ^= octet
        for _ in range(8):
            value = (value >> 1) ^ (0x8408 if value & 1 else 0)
    return value


def decode_loopback(raw):
    if len(raw) < 5 or raw[:3] != b'\x6d\x06\x00' or raw[3] + 4 != len(raw):
        raise ValueError('invalid_loopback_notification')
    result = {'status': raw[4], 'packetBytes': len(raw), 'timestampValidityVerified': False}
    if len(raw) >= 25:
        size = int.from_bytes(raw[23:25], 'little')
        if size > len(raw) - 25:
            raise ValueError('invalid_loopback_psdu_length')
        result.update(txTimestampBytesHex=raw[5:11].hex(), rxTimestampBytesHex=raw[11:17].hex(),
                      phrRaw=int.from_bytes(raw[21:23], 'little'), psduBytes=size,
                      psduHex=raw[25:25+size].hex(), trailingBytes=len(raw)-25-size)
    return result


def run(args):
    if crc16(b'123456789') != 0x2189:
        raise ValueError('independent_crc_check_failed')
    initial = shell(args, 'shell', 'cmd', 'uwb', 'status')
    if initial != 'Uwb is enabled':
        raise ValueError('initial_uwb_enabled_required')
    if send(args, 1, 5) != b'\x00\x00':
        emit('framing_restart_for_idle')
        shell(args, 'shell', 'cmd', 'uwb', 'disable-uwb'); time.sleep(.5)
        shell(args, 'shell', 'cmd', 'uwb', 'enable-uwb'); time.sleep(1)
    if send(args, 1, 5) != b'\x00\x00':
        raise ValueError('idle_controller_required')
    pid = shell(args, 'shell', 'pidof', 'vendor.samsung.hardware.uwb@1.0-service')
    if not pid.isdecimal():
        raise ValueError('unique_hal_required')
    session = script = token = server = None
    forwarded = started = False
    ready = threading.Event(); received = threading.Event(); notifications = []
    def on_message(message, data):
        if message.get('type') == 'error':
            emit('framing_hook_error'); return
        if message.get('type') != 'send':
            return
        value = message['payload']
        if value.get('event') == 'framing_hook_ready':
            ready.set()
        elif value.get('event') == 'loopback_notification':
            notifications.append(bytes.fromhex(value['rawHex'])); received.set()
        elif value.get('event') == 'framing_other_notification':
            emit('framing_other_notification', **{k: value[k] for k in
                 ('gid', 'oid', 'packetBytes', 'sessionState', 'reasonCode') if k in value})
    try:
        shell(args, 'forward', 'tcp:53042', 'tcp:53042'); forwarded = True
        lifetime = 20 if args.single_control else 40
        remote = f'/system/bin/timeout {lifetime} /data/local/tmp/librepods-uwb-trace --listen=127.0.0.1:53042 --policy-softener=internal --disable-preload'
        server = subprocess.Popen([str(args.adb), '-s', args.serial, 'shell', '-T', 'su', '-c', shlex.quote(remote)],
                                  stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        time.sleep(1)
        session = frida.get_device_manager().add_remote_device('127.0.0.1:53042').attach(int(pid))
        script = session.create_script(HOOK); script.on('message', on_message); script.load()
        if not ready.wait(5):
            raise ValueError('framing_hook_not_ready')
        response = send(args, 1, 0, struct.pack('<IB', 0, 0xd0))
        if response[0] or len(response) not in (1, 5):
            raise ValueError('framing_session_init_failed')
        token = 0 if len(response) == 1 else int.from_bytes(response[1:], 'little')
        profile = {**APP_PROFILE, 0x02: b'\x00', 0x12: b'\x00', 0x29: b'\x00'}
        config_set(args, token, 1, profile); config_read(args, token, 1, profile)
        test_profile = dict(TEST_PROFILE)
        if args.factory_loopback or args.factory_markers:
            # Exact Samsung UwbFactoryHandler.startRfLoopback, DEX 1db580.
            test_profile.update({6: struct.pack('<I', 124000), 7: struct.pack('<I', 69), 8: b'\x01'})
            emit('native_loopback_markers', txMarker=124000, rxMarker=69, markerEpochVerified=False)
        send(args, 15, 3, struct.pack('<I', token) + bytes.fromhex('020203'))
        if args.factory_loopback:
            # Exact native antenna_caseNo=1: TX2, RX3, TOA mode0.
            body = struct.pack('<I', token) + bytes.fromhex('02020201020303000103')
            if send(args, 15, 0, body) != b'\x00\x00':
                raise ValueError('native_loopback_antenna_set_rejected')
            response = send(args, 15, 3, struct.pack('<I', token) + bytes.fromhex('020203'))
            if response != bytes.fromhex('0002020201020303000103'):
                raise ValueError('native_loopback_antenna_readback_mismatch')
            emit('native_loopback_profile', txMarker=124000, rxMarker=69,
                 txAntenna=2, rxAntenna=3, markerEpochVerified=False)
        config_set(args, token, 13, test_profile); config_read(args, token, 13, test_profile)
        # Read-only qualification of the exact chip's extended STS selector
        # and ordinary static-STS upper64 fields; no key or IV writes.
        send(args, 13, 1, struct.pack('<IB', token, 1) + bytes.fromhex('e503'))
        send(args, 1, 4, struct.pack('<IB', token, 2) + bytes.fromhex('2728'))
        if args.attenuated_loopback:
            power = send(args, 15, 3, struct.pack('<IBB', token, 1, 0x65))
            if len(power) != 5 or power[:4] != bytes.fromhex('00016501'):
                raise ValueError('session_attenuation_not_supported')
            body = struct.pack('<I', token) + bytes.fromhex('0165017f')
            if send(args, 15, 0, body) != b'\x00\x00':
                raise ValueError('session_attenuation_set_rejected')
            if send(args, 15, 3, struct.pack('<IBB', token, 1, 0x65)) != bytes.fromhex('000165017f'):
                raise ValueError('session_attenuation_readback_mismatch')
            emit('session_loopback_attenuation', attenuationId=127, baselineId=power[4],
                 deviceCalibrationChanged=False)
        mac = send(args, 15, 3, struct.pack('<IBB', token, 1, 0x70))
        supported = len(mac) == 5 and mac[:4] == b'\x00\x01\x70\x01'
        emit('framing_mac_cfg_support', supported=supported, value=mac[4] if supported else None)
        modes = ((0,) if args.single_control else (0, 2)) if supported else (None,)
        # Public fixed synthetic addresses; no active owner/session identity.
        psdu = bytes.fromhex('41a80000010203040506070101020304050607a5a50031')
        if len(psdu) != 23:
            raise ValueError('synthetic_payload_length_failed')
        for mode in modes:
            if mode is not None:
                body = struct.pack('<IBBBB', token, 1, 0x70, 1, mode)
                if send(args, 15, 0, body) != b'\x00\x00':
                    raise ValueError('mac_cfg_set_rejected')
                if send(args, 15, 3, struct.pack('<IBB', token, 1, 0x70)) != bytes([0, 1, 0x70, 1, mode]):
                    raise ValueError('mac_cfg_readback_mismatch')
            for manual_fcs in ((False,) if args.single_control else (False, True)):
                payload = psdu + (struct.pack('<H', crc16(psdu)) if manual_fcs else b'')
                received.clear(); offset = len(notifications)
                if send(args, 1, 6, struct.pack('<I', token)) != b'\x00\x03':
                    raise ValueError('loopback_idle_session_required')
                started = True
                response = send(args, 13, 6, payload)
                if response != b'\x00':
                    raise ValueError('loopback_start_rejected')
                received.wait(3)
                for raw in notifications[offset:]:
                    emit('framing_result', macCfg=mode, suppliedBytes=len(payload), manualFcs=manual_fcs,
                         **decode_loopback(raw), rangingProven=False)
                if len(notifications) == offset:
                    emit('framing_no_notification', macCfg=mode, suppliedBytes=len(payload))
                stop = send(args, 13, 7)
                if stop not in (b'\x00', b'\x01'):
                    raise ValueError('loopback_stop_failed')
                started = False
                if send(args, 1, 6, struct.pack('<I', token)) != b'\x00\x03':
                    raise ValueError('loopback_idle_not_restored')
                time.sleep(.1)
    finally:
        cleanup_ok = True
        if started:
            try: send(args, 13, 7)
            except Exception: cleanup_ok = False
        if token is not None:
            try: cleanup_ok &= send(args, 1, 1, struct.pack('<I', token)) == b'\x00'
            except Exception: cleanup_ok = False
        if script is not None:
            try: script.unload()
            except Exception: cleanup_ok = False
        if session is not None:
            try: session.detach()
            except Exception: cleanup_ok = False
        if forwarded: shell(args, 'forward', '--remove', 'tcp:53042')
        if server is not None:
            try: server.wait(timeout=42)
            except subprocess.TimeoutExpired: server.terminate(); cleanup_ok = False
        idle = send(args, 1, 5) == b'\x00\x00'
        enabled = shell(args, 'shell', 'cmd', 'uwb', 'status') == initial
        emit('framing_cleanup', idle=idle, uwbEnabled=enabled, cleanupConfirmed=cleanup_ok)
        if not idle or not enabled or not cleanup_ok:
            raise ValueError('framing_cleanup_unconfirmed')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--adb', type=Path, required=True)
    parser.add_argument('--serial', required=True)
    parser.add_argument('--single-control', action='store_true',
                        help='One 23-byte loopback to validate the broader notification trace')
    parser.add_argument('--factory-loopback', action='store_true',
                        help='Exact Samsung native loopback markers and antenna_caseNo=1; no power writes')
    parser.add_argument('--factory-markers', action='store_true',
                        help='Native loopback marker values with the controller default antennas')
    parser.add_argument('--attenuated-loopback', action='store_true',
                        help='Temporary session attenuation127; no calibration or persistent power changes')
    args = parser.parse_args()
    try:
        run(args)
        return 0
    except Exception as error:
        emit('framing_probe_failed', reason=str(error) if isinstance(error, ValueError) else type(error).__name__)
        return 1


if __name__ == '__main__':
    raise SystemExit(main())
