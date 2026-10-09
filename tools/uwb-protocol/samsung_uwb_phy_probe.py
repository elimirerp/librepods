#!/usr/bin/env python3
"""Bounded idle-controller PHY configuration experiment, with no RF start.

Only creates one temporary session, configures eight public PHY fields,
reads them back, and deinitializes that session. This tests parameter acceptance,
not Apple interoperability, radio reception, distance, or direction.
"""
import argparse
import json
from pathlib import Path
import secrets
import struct
import subprocess

from adb_uwb_probe import parse_service_call

PROFILE = {0x04: b'\x09', 0x1f: b'\x00', 0x12: b'\x03', 0x15: b'\x00',
           0x14: b'\x0a', 0x17: b'\x01', 0x29: b'\x01', 0x35: b'\x01'}


def emit(event, **fields):
    print(json.dumps({'event': event, **fields}), flush=True)


def send(adb, serial, gid, oid, payload=b''):
    if (gid, oid) not in ((1, 0), (1, 1), (1, 3), (1, 4), (1, 5)):
        raise ValueError('command_outside_configuration_experiment')
    if len(payload) > 64:
        raise ValueError('payload_bound_exceeded')
    command = [str(adb), '-s', serial, 'shell', 'service', 'call', 'semuwb_extras',
               '2', 'i32', str(gid), 'i32', str(oid), 'i32', str(len(payload))]
    padded = payload + bytes(-len(payload) % 4)
    for offset in range(0, len(padded), 4):
        command += ['i32', str(int.from_bytes(padded[offset:offset + 4], 'little', signed=True))]
    result = subprocess.run(command, capture_output=True, text=True, timeout=12)
    if result.returncode:
        raise ValueError('transport_failed')
    response = parse_service_call(result.stdout)
    if not response:
        raise ValueError('empty_response')
    return response


def read_config(payload):
    if len(payload) < 2 or payload[0] != 0:
        raise ValueError('config_read_failed')
    values = {}
    offset = 2
    for _ in range(payload[1]):
        if offset + 2 > len(payload):
            raise ValueError('truncated_tlv')
        tag, size = payload[offset:offset + 2]
        offset += 2
        if tag not in PROFILE or tag in values or size != 1 or offset + size > len(payload):
            raise ValueError('unexpected_phy_tlv')
        values[tag] = payload[offset:offset + size]
        offset += size
    if offset != len(payload) or set(values) != set(PROFILE):
        raise ValueError('incomplete_phy_readback')
    return values


def run(args):
    baseline = send(args.adb, args.serial, 1, 5)
    if baseline != b'\x00\x00':
        raise ValueError('idle_uwb_controller_required')
    emit('uwb_idle_confirmed')
    token = None
    # Samsung's exact factory RFTEST builder uses SESSION_ID_RFTEST=0.
    # The idle baseline excludes a preexisting zero-ID session. FiRa sessions
    # retain a fresh ID. This comparison never starts an RF test.
    session_id = (0x4c500000 | secrets.randbits(16)) if args.fira_session else 0
    try:
        session_type = 0 if args.fira_session else 0xd0
        response = send(args.adb, args.serial, 1, 0, struct.pack('<IB', session_id, session_type))
        emit('test_session_response', status=response[0], responseBytes=len(response),
             sessionType=session_type, factorySessionContext=not args.fira_session)
        if response[0] != 0:
            raise ValueError('test_session_rejected')
        # Version1 uses the requested ID; version2+ returns the generated handle.
        if len(response) == 1:
            token = session_id
        elif len(response) == 5:
            token = int.from_bytes(response[1:], 'little')
        else:
            raise ValueError('unexpected_session_response')
        payload = struct.pack('<IB', token, len(PROFILE)) + b''.join(
            bytes([tag, len(value)]) + value for tag, value in PROFILE.items())
        response = send(args.adb, args.serial, 1, 3, payload)
        if len(response) < 2 or len(response) != 2 + 2 * response[1]:
            raise ValueError('unexpected_config_response')
        errors = [{'tag': response[i], 'status': response[i+1]}
                  for i in range(2, len(response), 2)]
        emit('phy_configuration_response', status=response[0], parameterStatus=errors,
             radioStarted=False)
        if response[0] != 0 or any(item['status'] != 0 for item in errors):
            raise ValueError('phy_configuration_rejected')
        response = send(args.adb, args.serial, 1, 4,
                        struct.pack('<IB', token, len(PROFILE)) + bytes(PROFILE))
        values = read_config(response)
        equal = values == PROFILE
        emit('phy_readback', exactMatch=equal,
             values={f'{tag:02x}': list(value) for tag, value in values.items()},
             rangingProven=False)
        if not equal:
            raise ValueError('phy_readback_mismatch')
    finally:
        if token is not None:
            response = send(args.adb, args.serial, 1, 1, struct.pack('<I', token))
            emit('test_session_deinitialized', status=response[0])
            if response != b'\x00':
                raise ValueError('session_cleanup_unconfirmed')
        after = send(args.adb, args.serial, 1, 5)
        emit('uwb_session_cleanup', idle=after == b'\x00\x00')
        if after != b'\x00\x00':
            raise ValueError('idle_controller_restore_unconfirmed')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--adb', type=Path, required=True)
    parser.add_argument('--serial', required=True)
    parser.add_argument('--fira-session', action='store_true',
        help='Use a temporary FiRa session to test parameter storage; never start ranging')
    args = parser.parse_args()
    try:
        run(args)
        return 0
    except Exception as error:
        # Fixed labels only; Binder/shell exceptions and raw frames aren't printed.
        reason = str(error) if isinstance(error, ValueError) else type(error).__name__
        emit('phy_probe_failed', reason=reason)
        return 1


if __name__ == '__main__':
    raise SystemExit(main())
