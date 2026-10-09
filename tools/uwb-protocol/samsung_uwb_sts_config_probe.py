#!/usr/bin/env python3
"""Qualify STS configuration storage in one temporary RFTEST session.

No transmit/receive, calibration, firmware, BLE, or account commands. All IV
and key values are public synthetic data. Readback proves storage only; it
does not prove that RFTEST uses a key or that it can match Apple's STS.
"""
import argparse
import json
from pathlib import Path
import struct
import subprocess
import time

from samsung_uwb_rx_probe import APP_PROFILE, send


def emit(event, **fields):
    print(json.dumps({'event': event, **fields}), flush=True)


def app_set(args, token, tag, value):
    result = send(args, 1, 3, struct.pack('<IBBB', token, 1, tag, len(value)) + value)
    emit('sts_app_set', tag=tag, responseHex=result.hex())
    return result == b'\x00\x00'


def app_get(args, token, tag, expected=None):
    result = send(args, 1, 4, struct.pack('<IBB', token, 1, tag))
    valid = (len(result) >= 4 and result[:3] == bytes([0, 1, tag])
             and len(result) == 4 + result[3])
    emit('sts_app_readback', tag=tag, supported=valid,
         responseHex=None if tag == 0x45 else result.hex(),
         valueBytes=result[3] if valid else None,
         matchesSupplied=(valid and result[4:] == expected)
         if expected is not None else None)
    return valid and (expected is None or result[4:] == expected)


def preset_get(args, token, expected=None):
    result = send(args, 13, 1, struct.pack('<IB', token, 1) + bytes.fromhex('e503'))
    valid = len(result) == 6 and result[:5] == bytes.fromhex('0001e50301')
    emit('sts_preset_readback', supported=valid, responseHex=result.hex(),
         matchesSupplied=(valid and result[5] == expected) if expected is not None else None)
    return valid and (expected is None or result[5] == expected)


def run(args):
    idle = send(args, 1, 5) == b'\x00\x00'
    if not idle and args.restart_for_idle:
        def uwb(*parts):
            response = subprocess.run([str(args.adb), '-s', args.serial, 'shell', 'cmd', 'uwb', *parts],
                                      capture_output=True, text=True, timeout=12)
            if response.returncode:
                raise ValueError('uwb_service_command_failed')
            return response.stdout.strip()
        if uwb('status') != 'Uwb is enabled':
            raise ValueError('initial_uwb_enabled_required')
        emit('sts_config_restart_for_idle')
        try:
            uwb('disable-uwb')
            time.sleep(.5)
            uwb('enable-uwb')
            time.sleep(1)
        finally:
            if uwb('status') != 'Uwb is enabled':
                uwb('enable-uwb')
        idle = send(args, 1, 5) == b'\x00\x00'
    if not idle:
        raise ValueError('idle_controller_required')
    token = None
    try:
        response = send(args, 1, 0, struct.pack('<IB', 0, 0xd0))
        if response[:1] != b'\x00' or len(response) not in (1, 5):
            raise ValueError('temporary_session_init_failed')
        token = 0 if len(response) == 1 else int.from_bytes(response[1:], 'little')
        body = struct.pack('<IB', token, len(APP_PROFILE)) + b''.join(
            bytes([tag, len(value)]) + value for tag, value in APP_PROFILE.items())
        if send(args, 1, 3, body) != b'\x00\x00':
            raise ValueError('known_profile_rejected')
        emit('sts_config_session_ready', transmission=False, reception=False)
        for tag in (0x02, 0x0a, 0x27, 0x28, 0x45):
            app_get(args, token, tag)
        preset_get(args, token)
        # Both documented preset values, each followed by exact readback.
        for preset in (0, 1):
            body = struct.pack('<IB', token, 1) + bytes.fromhex('e50301') + bytes([preset])
            response = send(args, 13, 0, body)
            emit('sts_preset_set', preset=preset, responseHex=response.hex())
            if response == b'\x00\x00':
                preset_get(args, token, preset)
        # Public synthetic upper64 and the public native Apple scalar. This
        # tests field acceptance; no AES layout or RF use is inferred.
        for tag, value in ((0x02, b'\x00'), (0x27, bytes.fromhex('0200')),
                           (0x28, bytes.fromhex('030405060708')),
                           (0x0a, struct.pack('<I', 0x2056c539))):
            if app_set(args, token, tag, value):
                app_get(args, token, tag, value)
        public_key = bytes.fromhex('4a5572bc90798c8e518d2449092f1b55')
        # SESSION_KEY is specified for provisioned STS. Checking static first
        # does not imply an accepted field overrides the static generator.
        for mode in (0, 3):
            if not app_set(args, token, 0x02, bytes([mode])):
                continue
            app_get(args, token, 0x02, bytes([mode]))
            accepted = app_set(args, token, 0x45, public_key)
            matches = app_get(args, token, 0x45, public_key) if accepted else False
            emit('sts_public_key_storage', stsMode=mode, accepted=accepted,
                 readbackMatches=matches, generatorUseProven=False)
        emit('sts_config_result', appleMatchProven=False, rangingProven=False)
    finally:
        deinitialized = token is None
        if token is not None:
            deinitialized = send(args, 1, 1, struct.pack('<I', token)) == b'\x00'
        idle = send(args, 1, 5) == b'\x00\x00'
        emit('sts_config_cleanup', deinitialized=deinitialized, idle=idle)
        if not deinitialized or not idle:
            raise ValueError('temporary_session_cleanup_unconfirmed')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--adb', type=Path, required=True)
    parser.add_argument('--serial', required=True)
    parser.add_argument('--restart-for-idle', action='store_true',
                        help='Restart the enabled UWB service if another session is active')
    try:
        run(parser.parse_args())
    except Exception as error:
        emit('sts_config_failed', reason=str(error) if isinstance(error, ValueError)
             else type(error).__name__)
        raise SystemExit(1)
