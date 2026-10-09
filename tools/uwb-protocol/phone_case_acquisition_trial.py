#!/usr/bin/env python3
"""One owned-case legacy start with bounded Samsung receive-only observation.

Uses fresh owner auth, a host-estimated BLE event counter (UNVERIFIED), and the
instruction-verified STOP/deinit/disconnect routes. No phone UWB transmit, SMP,
bond changes, enrollment operations, payload dumps, or simulated measurements.
Without --start-case, only proves the configured case's explicit deinit.
"""
import argparse
import asyncio
from concurrent.futures import TimeoutError as FutureTimeout
import json
import logging
from pathlib import Path
import shlex
import subprocess
import time
from types import SimpleNamespace

from bumble.device import Peer
import phone_owner_link as owner
import samsung_uwb_rx_probe as rx


def emit(event, **fields):
    print(json.dumps({'event': event, 'hostMonotonicSeconds': round(time.monotonic(), 6), **fields}), flush=True)


def command(args, *parts, timeout=12):
    result = subprocess.run([str(args.adb), '-s', args.serial, *parts],
                            capture_output=True, text=True, timeout=timeout)
    if result.returncode:
        raise owner.radio.ProbeError('phone_command_failed')
    return result.stdout.strip()


def counter_candidate(elapsed, interval_ms):
    # BLE counters start at zero, but the host return timestamp is NOT the
    # controller's anchor. No claim of exact synchronization follows. The
    # future128-event margin tests whether the native acceptance gate passes.
    if not 0 <= elapsed < 90 or not 15 <= interval_ms <= 60:
        raise owner.radio.ProbeError('bounded_counter_estimate_required')
    target = int(elapsed * 1000 / interval_ms) + 128
    if not 0 < target < 0x4000:
        raise owner.radio.ProbeError('counter_wrap_excluded')
    return target


class CaseResponses:
    def __init__(self):
        self.queue = asyncio.Queue(maxsize=64)
        self.completed = False
        self.overflow = False

    def receive(self, packet):
        if len(packet) < 3 or packet[0] != 1:
            emit('case_unparsed_indication', packetBytes=len(packet)); return
        opcode = int.from_bytes(packet[1:3], 'little')
        message = {'opcode': opcode}
        if opcode == 0x700 and len(packet) == 7:
            message.update(requestOpcode=int.from_bytes(packet[3:5], 'little'),
                           status=int.from_bytes(packet[5:7], 'little'))
        elif opcode == 0x708 and len(packet) == 8:
            message.update(status=int.from_bytes(packet[3:7], 'little'), endReason=packet[7])
            self.completed = True
        elif opcode in (0x70a, 0x70b) and len(packet) == 7:
            message['status'] = int.from_bytes(packet[3:7], 'little')
        else:
            emit('case_other_indication', opcode=f'{opcode:04x}', packetBytes=len(packet)); return
        emit('case_indication', **message)
        if self.queue.full():
            self.overflow = True
        else:
            self.queue.put_nowait(message)

    async def expect(self, opcode, request=None, seconds=8):
        async with asyncio.timeout(seconds):
            while True:
                message = await self.queue.get()
                if self.overflow:
                    raise owner.radio.ProbeError('case_response_overflow')
                if message['opcode'] == opcode and (opcode != 0x700 or request is None or message.get('requestOpcode') == request):
                    return message
                if message['opcode'] == 0x700 and message.get('requestOpcode') == request and message['status']:
                    raise owner.radio.ProbeError('case_request_rejected')


async def trial(connection, configuration, connected_at, args):
    service, = await Peer(connection).discover_service('FD44')
    characteristic, = await service.discover_characteristics([owner.radio.hawkeye.CHARACTERISTIC])
    await characteristic.discover_descriptors()
    responses = CaseResponses()
    await characteristic.subscribe(responses.receive, prefer_notify=False)
    start_attempted = start_accepted = False
    cleanup_ok = True
    server = None
    forwarded = False
    loop = asyncio.get_running_loop()
    initial_interval = connection.parameters.connection_interval

    async def start_case():
        nonlocal start_attempted, start_accepted
        if not connection.encryption or connection.parameters.connection_interval != initial_interval:
            raise owner.radio.ProbeError('unchanged_encrypted_connection_required')
        elapsed = time.monotonic() - connected_at
        target = counter_candidate(elapsed, initial_interval)
        emit('case_start_counter_hypothesis', source='host_elapsed_estimate_unverified',
             elapsedSeconds=round(elapsed, 3), intervalMs=initial_interval,
             targetEventCounter=target, marginEvents=128, exactCounter=False)
        start_attempted = True
        await characteristic.write_value(owner.radio.hawkeye.start_p2p(target), with_response=True)
        ack = await responses.expect(0x700, 0x703)
        start_accepted = ack['status'] == 0
        emit('case_start_ack', status=ack['status'], rfTransmissionProven=False)
        if not start_accepted:
            raise owner.radio.ProbeError('case_start_command_rejected')

    def receive_ready():
        future = asyncio.run_coroutine_threadsafe(start_case(), loop)
        try:
            future.result(timeout=9)
        except FutureTimeout:
            future.cancel()
            raise owner.radio.ProbeError('case_start_deadline_exceeded') from None

    try:
        if args.start_case:
            if command(args, 'shell', 'cmd', 'uwb', 'status') != 'Uwb is enabled':
                raise owner.radio.ProbeError('uwb_initial_enabled_required')
            if rx.send(args, 1, 5) != b'\x00\x00':
                # A current GMS session cannot share the factory session. This
                # only restarts the phone's enabled UWB service, not Bluetooth.
                emit('uwb_restart_for_owned_trial')
                command(args, 'shell', 'cmd', 'uwb', 'disable-uwb')
                await asyncio.sleep(.5)
                command(args, 'shell', 'cmd', 'uwb', 'enable-uwb')
                await asyncio.sleep(1)
            if rx.send(args, 1, 5) != b'\x00\x00':
                raise owner.radio.ProbeError('idle_uwb_controller_required')
            pid = command(args, 'shell', 'pidof', 'vendor.samsung.hardware.uwb@1.0-service')
            if not pid.isdecimal():
                raise owner.radio.ProbeError('unique_uwb_hal_required')
            command(args, 'forward', 'tcp:53042', 'tcp:53042'); forwarded = True
            remote = ('/system/bin/timeout 45 /data/local/tmp/librepods-uwb-trace '
                      '--listen=127.0.0.1:53042 --policy-softener=internal --disable-preload')
            server = subprocess.Popen([str(args.adb), '-s', args.serial, 'shell', '-T',
                'su', '-c', shlex.quote(remote)], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            await asyncio.sleep(1)
            rx_args = SimpleNamespace(adb=args.adb, serial=args.serial, hal_pid=int(pid),
                                      frida_address='127.0.0.1:53042', per_rx=args.receive_mode == 'per')
            emit('controlled_receive_mode', mode=args.receive_mode)
            sts_experiment = None
            if args.apple_sts_candidate:
                _, rose_mac = configuration
                # Native initializer clears byte0. The ordinary static-STS
                # mapping below is a hypothesis, not a decoded AES descriptor.
                sts_experiment = {'upper64': b'\x00' + rose_mac[1:],
                                  'index': int(args.sts_index, 16), 'preset': args.sts_preset}
            results = {}
            for label, callback in (('case_not_started', None), ('case_start_requested', receive_ready)):
                emit('controlled_receive_condition', condition=label)
                notifications = await asyncio.to_thread(rx.run, rx_args, while_receiving=callback,
                                                        observation_seconds=8, sts_experiment=sts_experiment)
                results[label] = [{k: n[k] for k in ('status', 'rxAttempts', 'acquisitionDetected', 'sfdFound', 'stsFound',
                                                   'packetBytes', 'timestampBytesHex', 'timestampValidityVerified')
                                  if k in n} for n in notifications]
            emit('controlled_receive_comparison', conditions=results, rangingProven=False)
            emit('case_receive_observation_complete', caseCompleted=responses.completed, rangingProven=False)
    finally:
        if start_attempted and start_accepted and not responses.completed:
            try:
                await asyncio.wait_for(characteristic.write_value(bytes.fromhex('010407'), with_response=True), 5)
                completion = await responses.expect(0x708, 0x704)
                emit('case_stop_completion', **completion)
                cleanup_ok &= completion['status'] == 0
            except Exception:
                cleanup_ok = False; emit('case_stop_unconfirmed')
        try:
            await asyncio.wait_for(characteristic.write_value(bytes.fromhex('010507'), with_response=True), 5)
            completion = await responses.expect(0x70b, 0x705)
            emit('case_deinit_completion', **completion)
            cleanup_ok &= completion['status'] == 0
        except Exception:
            cleanup_ok = False; emit('case_deinit_unconfirmed')
        if forwarded:
            command(args, 'forward', '--remove', 'tcp:53042')
        if server is not None:
            # Server is independently limited to45s, even after host failure.
            try:
                await asyncio.to_thread(server.wait, 47)
            except subprocess.TimeoutExpired:
                server.terminate()
        if args.start_case and command(args, 'shell', 'cmd', 'uwb', 'status') != 'Uwb is enabled':
            command(args, 'shell', 'cmd', 'uwb', 'enable-uwb')
        emit('case_trial_cleanup', explicitDeinitConfirmed=cleanup_ok)
        if not cleanup_ok:
            raise owner.radio.ProbeError('case_explicit_cleanup_unconfirmed')


def main():
    logging.disable(logging.CRITICAL)
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--adb', type=Path, required=True)
    parser.add_argument('--serial', required=True)
    parser.add_argument('--control', type=Path, required=True)
    parser.add_argument('--candidate-file', type=Path, required=True)
    parser.add_argument('--start-case', action='store_true')
    parser.add_argument('--receive-mode', choices=('per', 'packet'), default='per',
                        help='PER counters or TEST_RX packet/timestamp notification')
    parser.add_argument('--apple-sts-candidate', action='store_true',
                        help='Try the public Apple key with a fresh nonce-derived static IV hypothesis')
    parser.add_argument('--sts-preset', type=int, choices=(0, 1), default=0,
                        help='Documented proprietary/IEEE test selector for the explicit hypothesis')
    parser.add_argument('--sts-index', choices=('0', '2056c539', '39c55620'), default='2056c539',
                        help='Finite zero/native/byte-swapped scalar hypotheses, not verified AES layouts')
    args = parser.parse_args()
    args.controller_only = args.scan_only = args.discovery_only = False
    args.configure_legacy = args.resolve_primary_key = True
    args.preflight_discovery = False
    args.primary_key_index = []
    args.key_octet_order = 'native'
    args.supervision_timeout = 4000
    args.scan_seconds = 20
    try:
        async def run():
            await owner.run(args, after_configuration=lambda c, cfg, clock: trial(c, cfg, clock, args))
        asyncio.run(run())
        return 0
    except Exception as error:
        emit('acquisition_trial_failed', reason=str(error) if isinstance(error, owner.radio.ProbeError)
             else type(error).__name__)
        return 1


if __name__ == '__main__':
    raise SystemExit(main())
