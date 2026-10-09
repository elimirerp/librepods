#!/usr/bin/env python3
"""One bounded Samsung RFTEST receive experiment; no transmit commands.

Requires an idle controller and a temporary local Frida forwarding endpoint.
Uses Samsung's factory session ID0/typeD0. Configures a bounded receive test,
observes notification metadata only, then stops/deinitializes its own session.
Does not start the AirPods case, load owner keys, or prove Apple ranging.
"""
import argparse
import json
from pathlib import Path
import struct
import subprocess
import threading
import time

import frida
from adb_uwb_probe import parse_service_call
from samsung_uwb_phy_probe import PROFILE, read_config

# Full native factory RFTEST field set; packet count1 keeps the experiment small.
TEST_PROFILE = {0: struct.pack('<I', 1), 1: struct.pack('<I', 2000),
                2: struct.pack('<I', 450), 3: struct.pack('<I', 750),
                4: b'\x00', 5: b'\x00', 6: bytes(4), 7: bytes(4),
                8: b'\x00', 9: b'\x00'}
# Mandatory factory session fields, using Samsung's synthetic local/dest MACs.
APP_PROFILE = {**PROFILE, 5: b'\x01', 6: b'\x00\x00', 7: b'\x01\x00',
               0x11: b'\x00', 0x0a: bytes(4), 0x0b: b'\x00', 0x16: b'\x00'}
ALLOWED = {(1, 0), (1, 1), (1, 3), (1, 4), (1, 5), (1, 6),
           (13, 0), (13, 1), (13, 3), (13, 5), (13, 7)}
HOOK = """
const mod=Process.getModuleByName('uwb_uci.hal.so');
const target=mod.getExportByName('_Z24phNxpUciHal_print_packet20phNxpUciHal_Pkt_TypePKht');
let count=0;
Interceptor.attach(target,{onEnter(args){
    if(args[0].toInt32()!==1 || count>=4) return;
    const n=args[2].toUInt32()&0xffff;
    if(n<5 || n>259) return;
    const h=new Uint8Array(args[1].readByteArray(4));
    if(h[0]!==0x6d || (h[1]!==5 && h[1]!==3) || h[2]!==0 || h[3]+4!==n) return;
    const b=new Uint8Array(args[1].readByteArray(n));
    const v=new DataView(b.buffer);
    if(h[1]===3) {
        const result={event:'receive_per_notification',status:b[4],packetBytes:n};
        if(n>=57) {
            const names=['rxAttempts','acquisitionDetected','acquisitionRejected',
                'rxFailedBeforeSync','syncCirReady','acquisitionOrSyncStuck',
                'sfdFound','phrDecodeError','phrBitErrors','psduDecodeError',
                'psduBitErrors','stsFound','endOfFrame'];
            names.forEach((name,i)=>result[name]=v.getUint32(5+4*i,true));
        }
        count++;send(result);return;
    }
    const result={event:'receive_notification',status:b[4],packetBytes:n};
    // Preserve clock bytes even on an STS/error result. Presence does not
    // establish freshness, units, a marker, or validity for scheduling.
    if(n>=20) {
        result.timestampBytesHex=Array.from(b.slice(5,11),x=>x.toString(16).padStart(2,'0')).join('');
        result.timestampValidityVerified=false;
    }
    if(b[4]===0 && n>=20) {
        const psduLength=v.getUint16(18,true);
        if(psduLength>n-20) {send({event:'invalid_receive_notification'});return;}
        result.timestampInteger=v.getUint32(5,true);
        result.timestampFraction=v.getUint16(9,true);
        result.azimuthRaw=v.getInt16(11,true);
        result.elevationRaw=v.getInt16(13,true);
        result.psduBytes=psduLength;
    }
    count++; send(result); // Never export PSDU/vendor payloads.
}});
send({event:'receive_hook_ready'});
"""


def emit(event, **values):
    print(json.dumps({'event': event, **values}), flush=True)


def send(args, gid, oid, payload=b''):
    if (gid, oid) not in ALLOWED or len(payload) > 64:
        raise ValueError('command_outside_receive_experiment')
    if gid == 13 and oid in (5, 7) and payload:
        raise ValueError('empty_receive_stop_payload_required')
    if gid == 13 and oid == 3 and payload != bytes.fromhex('abcdabcd'):
        raise ValueError('fixed_factory_receive_reference_required')
    command = [str(args.adb), '-s', args.serial, 'shell', 'service', 'call',
               'semuwb_extras', '2', 'i32', str(gid), 'i32', str(oid), 'i32', str(len(payload))]
    padded = payload + bytes(-len(payload) % 4)
    for i in range(0, len(padded), 4):
        command += ['i32', str(int.from_bytes(padded[i:i+4], 'little', signed=True))]
    response = subprocess.run(command, capture_output=True, text=True, timeout=12)
    if response.returncode:
        raise ValueError('transport_failed')
    result = parse_service_call(response.stdout)
    if not result:
        raise ValueError('empty_response')
    return result


def set_config(args, token, gid, values):
    body = struct.pack('<IB', token, len(values)) + b''.join(
        bytes([tag, len(value)]) + value for tag, value in values.items())
    response = send(args, gid, 3 if gid == 1 else 0, body)
    if len(response) < 2 or len(response) != 2 + 2 * response[1]:
        raise ValueError('malformed_configuration_response')
    emit('receive_configuration', group=gid, status=response[0], parameterErrors=response[1])
    if response[0] or response[1]:
        raise ValueError('receive_configuration_rejected')


def test_readback(response):
    if len(response) < 2 or response[0]:
        raise ValueError('test_read_failed')
    result = {}; offset = 2
    for _ in range(response[1]):
        if offset + 2 > len(response):
            raise ValueError('truncated_test_tlv')
        tag, size = response[offset:offset+2]; offset += 2
        if tag not in TEST_PROFILE or tag in result or size != len(TEST_PROFILE[tag]):
            raise ValueError('unexpected_test_tlv')
        if offset + size > len(response):
            raise ValueError('truncated_test_value')
        result[tag] = response[offset:offset+size]; offset += size
    if offset != len(response) or result != TEST_PROFILE:
        raise ValueError('test_profile_readback_mismatch')


def run(args, *, while_receiving=None, observation_seconds=1.5, sts_experiment=None):
    if not 0.1 <= observation_seconds <= 8:
        raise ValueError('bounded_observation_required')
    if args.frida_address != '127.0.0.1:53042':
        raise ValueError('fixed_local_trace_endpoint_required')
    if send(args, 1, 5) != b'\x00\x00':
        raise ValueError('idle_uwb_controller_required')
    emit('receive_idle_confirmed')
    session = script = token = None
    started = False
    receive_started_at = None
    ready = threading.Event(); notifications = []
    def on_message(message, data):
        if message.get('type') != 'send':
            return
        value = message['payload']
        if value.get('event') == 'receive_hook_ready':
            ready.set()
        elif value.get('event') in ('receive_notification', 'receive_per_notification'):
            value['hostMonotonicSeconds'] = round(time.monotonic(), 6)
            value['secondsAfterReceiveStart'] = (round(time.monotonic() - receive_started_at, 6)
                                                if receive_started_at is not None else None)
            notifications.append(value)
            print(json.dumps(value), flush=True)
    try:
        remote = frida.get_device_manager().add_remote_device(args.frida_address)
        session = remote.attach(args.hal_pid)
        script = session.create_script(HOOK); script.on('message', on_message); script.load()
        if not ready.wait(5):
            raise ValueError('receive_hook_not_ready')
        response = send(args, 1, 0, struct.pack('<IB', 0, 0xd0))
        emit('receive_session_initialized', status=response[0])
        if response[0] != 0:
            raise ValueError('receive_session_rejected')
        token = 0 if len(response) == 1 else int.from_bytes(response[1:], 'little') if len(response) == 5 else None
        if token is None:
            raise ValueError('malformed_session_response')
        set_config(args, token, 1, APP_PROFILE)
        if read_config(send(args, 1, 4, struct.pack('<IB', token, len(PROFILE))+bytes(PROFILE))) != PROFILE:
            raise ValueError('phy_readback_mismatch')
        set_config(args, token, 13, TEST_PROFILE)
        test_readback(send(args, 13, 1, struct.pack('<IB', token, len(TEST_PROFILE))+bytes(TEST_PROFILE)))
        if sts_experiment is not None:
            # Explicit public-key hypothesis only. Acceptance/readback do not
            # establish that RFTEST consumes these ordinary static fields.
            if (set(sts_experiment) != {'upper64', 'index', 'preset'}
                    or not isinstance(sts_experiment['upper64'], bytes)
                    or len(sts_experiment['upper64']) != 8
                    or sts_experiment['upper64'][0] != 0
                    or sts_experiment['index'] not in (0, 0x2056c539, 0x39c55620)
                    or sts_experiment['preset'] not in (0, 1)):
                raise ValueError('bounded_public_sts_hypothesis_required')
            prefix = sts_experiment['upper64']
            values = {0x02: b'\x00', 0x27: prefix[:2], 0x28: prefix[2:],
                      0x0a: struct.pack('<I', sts_experiment['index']),
                      0x45: bytes.fromhex('4a5572bc90798c8e518d2449092f1b55')}
            for tag, value in values.items():
                set_config(args, token, 1, {tag: value})
                response = send(args, 1, 4, struct.pack('<IBB', token, 1, tag))
                if response != bytes([0, 1, tag, len(value)]) + value:
                    raise ValueError('public_sts_field_readback_mismatch')
            response = send(args, 13, 0, struct.pack('<IB', token, 1)
                            + bytes.fromhex('e50301') + bytes([sts_experiment['preset']]))
            if response != b'\x00\x00':
                raise ValueError('public_sts_preset_rejected')
            response = send(args, 13, 1, struct.pack('<IB', token, 1) + bytes.fromhex('e503'))
            if response != bytes.fromhex('0001e50301') + bytes([sts_experiment['preset']]):
                raise ValueError('public_sts_preset_readback_mismatch')
            emit('public_sts_hypothesis_configured', preset=sts_experiment['preset'],
                 index=sts_experiment['index'], upper64Source='fresh_owned_case_rose_nonce',
                 generatorUseProven=False, scalarLayoutVerified=False)
        emit('receive_window_verified', tWinParameter=750,
             tWinUnitVerified=False, hostObservationSeconds=observation_seconds, transmission=False)
        state = send(args, 1, 6, struct.pack('<I', token))
        emit('receive_session_state', status=state[0], state=state[1] if len(state)==2 else None)
        # Exact Samsung SessionState and AOSP UCI define IDLE=3, ACTIVE=2.
        if state != b'\x00\x03':
            raise ValueError('configured_idle_session_required')
        started = True # Even a transport error may follow a controller start.
        operation = 3 if args.per_rx else 5
        # Samsung's native PER_RX uses AB CD AB CD as a receive reference.
        # It is never transmitted by this receive-only command.
        response = send(args, 13, operation, bytes.fromhex('abcdabcd') if args.per_rx else b'')
        emit('receive_start_response', status=response[0], operation=operation)
        if response != b'\x00':
            raise ValueError('receive_start_rejected')
        receive_started_at = time.monotonic()
        if while_receiving is not None:
            while_receiving()
        time.sleep(observation_seconds)
        emit('receive_experiment_result', notificationCount=len(notifications),
             successfulPackets=sum(n['status']==0 for n in notifications
                                   if n['event']=='receive_notification'),
             timestampBearingNotifications=sum('timestampBytesHex' in n for n in notifications),
             rangingProven=False)
        return notifications
    finally:
        cleanup_failed = False
        if started:
            try:
                response = send(args, 13, 7)
                emit('receive_stop_response', status=response[0])
            except Exception:
                cleanup_failed = True
                emit('receive_stop_unconfirmed')
        if token is not None:
            try:
                response = send(args, 1, 1, struct.pack('<I', token))
                emit('receive_session_deinitialized', status=response[0])
                cleanup_failed |= response != b'\x00'
            except Exception:
                cleanup_failed = True
                emit('receive_deinit_unconfirmed')
        if script is not None:
            try:
                script.unload()
            except Exception:
                emit('receive_trace_unload_unconfirmed')
        if session is not None:
            try:
                session.detach()
                emit('receive_trace_detached')
            except Exception:
                emit('receive_trace_detach_unconfirmed')
        idle = send(args, 1, 5) == b'\x00\x00'
        emit('receive_controller_cleanup', idle=idle)
        if not idle or cleanup_failed:
            raise ValueError('receive_idle_restore_unconfirmed')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--adb', type=Path, required=True)
    parser.add_argument('--serial', required=True)
    parser.add_argument('--hal-pid', type=int, required=True)
    parser.add_argument('--frida-address', default='127.0.0.1:53042')
    parser.add_argument('--per-rx', action='store_true',
                        help='Receive-only PER counters with Samsung native reference PSDU')
    args = parser.parse_args()
    try:
        run(args)
        return 0
    except Exception as error:
        emit('receive_probe_failed', reason=str(error) if isinstance(error, ValueError) else type(error).__name__)
        return 1


if __name__ == '__main__':
    raise SystemExit(main())
