"""One volatile channel9 loopback-power trial with saved/verified restoration.

Only GET/SET_DEVICE_CALIBRATION parameter04; no OTP/flash access. Exact original
entry is saved before lowering power. An independent phone-side50/60s restore
also runs if the host loses its wireless connection during the experiment.
"""
import argparse
import json
from pathlib import Path
import shlex
import subprocess
import sys
import time

BASE = Path(__file__).resolve().parent
sys.path.insert(0, str(BASE))
from adb_uwb_probe import parse_service_call
ADB = SERIAL = BACKUP = None


def emit(event, **fields):
    print(json.dumps({'event': event, **fields}), flush=True)


def parts(oid, payload):
    result = ['service', 'call', 'semuwb_extras', '2', 'i32', '15', 'i32', str(oid), 'i32', str(len(payload))]
    padded = payload + bytes(-len(payload) % 4)
    for offset in range(0, len(padded), 4):
        result += ['i32', str(int.from_bytes(padded[offset:offset+4], 'little', signed=True))]
    return result


def send(oid, payload):
    if oid not in (0x21, 0x22) or (oid == 0x22 and payload != b'\x09\x04'):
        raise ValueError('only_fixed_power_calibration_commands_allowed')
    if oid == 0x21 and (len(payload) != 9 or payload[:5] != bytes.fromhex('0904060101')):
        raise ValueError('only_channel9_antenna1_power_entry_allowed')
    completed = subprocess.run([str(ADB), '-s', SERIAL, 'shell', *parts(oid, payload)],
                               capture_output=True, text=True, timeout=10)
    if completed.returncode:
        raise ValueError('power_transport_failed')
    response = parse_service_call(completed.stdout)
    emit('power_command', oid=oid, responseHex=response.hex())
    return response


def run(matrix=False):
    baseline = send(0x22, b'\x09\x04')
    if len(baseline) != 10 or baseline[:6] != bytes.fromhex('000104060101'):
        raise ValueError('exact_original_power_schema_required')
    original = b'\x09' + baseline[2:]
    lowered = bytes.fromhex('09040601017f007f00')
    backup = BACKUP
    if backup.exists():
        raise ValueError('new_backup_path_required')
    backup.parent.mkdir(parents=True, exist_ok=True)
    backup.write_text(json.dumps({'channel': 9, 'antenna': 1, 'originalSetPayloadHex': original.hex(),
                                 'originalGetResponseHex': baseline.hex()}, indent=2) + '\n')
    emit('power_backup_saved', path=str(backup), peakIndex=int.from_bytes(baseline[6:8], 'little'),
         rmsIndex=int.from_bytes(baseline[8:10], 'little'))
    # This backup restore runs on the phone even if the host disappears. It uses
    # the exact original entry, not a default/reset or an inferred value.
    restore_command = shlex.join(parts(0x21, original))
    watchdog_seconds = 60 if matrix else 50
    watchdog_command = f'sleep {watchdog_seconds}\n' + restore_command
    watchdog = subprocess.Popen([str(ADB), '-s', SERIAL, 'shell', '-T', 'su', '-c',
                                 shlex.quote(watchdog_command)],
                                stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    modified = False
    returncode = 1
    try:
        modified = True
        if send(0x21, lowered) != b'\x00':
            raise ValueError('low_power_set_rejected')
        if send(0x22, b'\x09\x04') != bytes.fromhex('0001040601017f007f00'):
            raise ValueError('low_power_readback_mismatch')
        emit('volatile_loopback_power_selected', peakIndex=127, rmsIndex=127)
        command = [sys.executable, str(BASE / 'samsung_uwb_framing_probe.py'),
                   '--adb', str(ADB), '--serial', SERIAL, '--factory-markers']
        if not matrix:
            command.append('--single-control')
        result = subprocess.run(command, timeout=45 if matrix else 35)
        returncode = result.returncode
    finally:
        if modified:
            restored = send(0x21, original) == b'\x00' and send(0x22, b'\x09\x04') == baseline
            emit('power_restoration_verified', exactOriginal=restored)
            if not restored:
                raise ValueError('original_power_restore_unconfirmed')
        output, _ = watchdog.communicate(timeout=watchdog_seconds + 2)
        delayed = parse_service_call(output.decode()) == b'\x00' if watchdog.returncode == 0 else False
        final = send(0x22, b'\x09\x04') == baseline
        emit('power_watchdog_completed', restoreAccepted=delayed, exactOriginal=final)
        if not delayed or not final:
            raise ValueError('power_watchdog_restore_unconfirmed')
    return returncode


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--adb', type=Path, required=True)
    parser.add_argument('--serial', required=True)
    parser.add_argument('--backup', type=Path, required=True, help='New file for the exact original calibration entry')
    parser.add_argument('--matrix', action='store_true', help='Four single-packet framing conditions')
    args = parser.parse_args()
    ADB, SERIAL, BACKUP = args.adb.resolve(), args.serial, args.backup.resolve()
    try:
        raise SystemExit(run(args.matrix))
    except Exception as error:
        emit('low_power_trial_failed', reason=str(error) if isinstance(error, ValueError) else type(error).__name__)
        raise SystemExit(1)
