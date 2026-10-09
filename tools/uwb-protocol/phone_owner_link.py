#!/usr/bin/env python3
"""Owned case encryption/GATT trial on the rooted phone's own Bluetooth chip.

ADB carries private binary pipes to RootHciBridge. No keys/packet dumps, pairing,
bond changes, enrollment, or UWB start commands. Android Bluetooth is restored
by the helper when this pipe closes. Also supports a controller/scan-only proof.
"""
import argparse
import asyncio
import base64
from datetime import datetime, timezone
import importlib.util
import json
import logging
import os
from pathlib import Path
import re
import shlex
import sys
import time
import uuid

from bumble import hci
from bumble.core import UUID
from bumble.device import ConnectionParametersPreferences, Device, DeviceConfiguration, Peer
from bumble.transport.common import AsyncPacketReader, PumpedPacketSource, PumpedPacketSink, Transport

BASE = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location('shared_owner_radio', BASE / 'usb-owner-link/probe.py')
radio = importlib.util.module_from_spec(spec)
spec.loader.exec_module(radio)


def emit(event, **fields):
    print(json.dumps({'event': event, **fields}), flush=True)


class AdbRootTransport(Transport):
    @classmethod
    async def open(cls, adb, serial):
        command = ('CLASSPATH=/data/local/tmp/librepods-root-bridge.dex '
                   'app_process /system/bin me.kavishdevar.librepods.findmy.root.RootHciBridge bridge')
        child = await asyncio.create_subprocess_exec(str(adb), '-s', serial, 'shell', '-T',
            'su', '-c', shlex.quote(command), stdin=asyncio.subprocess.PIPE,
            stdout=asyncio.subprocess.PIPE, stderr=asyncio.subprocess.PIPE)
        async def send(packet):
            child.stdin.write(packet)
            await child.stdin.drain()
        packet_reader = AsyncPacketReader(child.stdout)
        started = time.monotonic()
        async def receive():
            packet = await packet_reader.next_packet()
            # Command failures reveal opcodes/status only; never command parameters.
            if len(packet) >= 7 and packet[0] == 4:
                if packet[1] == 0x0e:
                    opcode, status = int.from_bytes(packet[4:6], 'little'), packet[6]
                elif packet[1] == 0x0f:
                    opcode, status = int.from_bytes(packet[5:7], 'little'), packet[3]
                else:
                    opcode = status = 0
                if status:
                    emit('hci_command_failed', opcode=f'{opcode:04x}', status=status)
            if len(packet) >= 7 and packet[0] == 4:
                if packet[1] in (0x08, 0x59):
                    emit('encryption_event', status=packet[3], enabled=packet[6],
                        elapsedSeconds=round(time.monotonic() - started, 2))
                elif packet[1] == 0x05:
                    emit('disconnection_event', status=packet[3], reason=packet[6],
                        elapsedSeconds=round(time.monotonic() - started, 2))
            return packet
        source = PumpedPacketSource(receive)
        sink = PumpedPacketSink(send)
        result = cls(source, sink)
        result.child = child
        result.events = set()
        async def stderr():
            while line := await child.stderr.readline():
                # Only fixed helper event names; ignore arbitrary shell diagnostics.
                try:
                    message = json.loads(line)
                    event = message.get('event', '')
                    if re.fullmatch(r'[a-zA-Z_]{1,80}', event):
                        result.events.add(event)
                        emit('phone_helper', state=event)
                except (ValueError, UnicodeDecodeError):
                    pass
        result.stderr_task = asyncio.create_task(stderr())
        source.start(); sink.start()
        return result

    async def close(self):
        self.sink.close()
        self.source.close()
        self.child.stdin.close()
        try:
            await asyncio.wait_for(self.child.wait(), 25)
        except asyncio.TimeoutError:
            self.child.terminate()
            await self.child.wait()
            emit('restore_unconfirmed')
        await self.stderr_task
        if 'bluetooth_restored' not in self.events:
            emit('restore_unconfirmed')


async def scan_inventory(device, seconds):
    addresses = set()
    apple = set()
    def on_advertisement(advertisement):
        addresses.add(advertisement.address)
        # Examine manufacturer code only; don't log nearby identity or payload.
        for entry in advertisement.data.get_all(0xff, raw=True):
            if len(entry) >= 2 and entry[:2] == b'\x4c\x00':
                apple.add(advertisement.address)
    device.on(device.EVENT_ADVERTISEMENT, on_advertisement)
    try:
        await device.start_scanning(legacy=False, active=False, filter_duplicates=False,
            scanning_phys=(hci.HCI_LE_1M_PHY,))
        await asyncio.sleep(seconds)
    finally:
        await device.stop_scanning(legacy=False)
        device.remove_listener(device.EVENT_ADVERTISEMENT, on_advertisement)
    emit('scan_complete', distinctAddressCount=len(addresses), appleAddressCount=len(apple))


async def resolve_primary_key(connection, candidates):
    """Query the open owner-information control point, retaining only its match.

    NERF UUID4 / opcode0400 returns current PRIMARY public key28B (0402),
    independently of the recovery address and without changing enrollment.
    """
    peer = Peer(connection)
    mtu = await asyncio.wait_for(peer.request_mtu(128), 10)
    emit('owner_information_mtu', mtu=mtu)
    if mtu < 34:
        raise radio.ProbeError('primary_response_fragmentation_required')
    services = await asyncio.wait_for(peer.discover_service('FD44'), 10)
    if len(services) != 1:
        raise radio.ProbeError('unique_fd44_required')
    characteristics = await asyncio.wait_for(services[0].discover_characteristics(
        ['4F860004-943B-49EF-BED4-2F730304427A']), 10)
    if len(characteristics) != 1:
        raise radio.ProbeError('unique_owner_information_required')
    characteristic = characteristics[0]
    result = asyncio.get_running_loop().create_future()
    def receive(packet):
        if result.done():
            return
        if len(packet) == 31 and packet[:3] == b'\x01\x02\x04':
            result.set_result(bytes(packet[3:]))
        elif len(packet) == 7 and packet[:3] == b'\x01\x06\x04':
            emit('primary_query_rejected', acknowledgedOpcode=int.from_bytes(packet[3:5], 'little'),
                status=int.from_bytes(packet[5:7], 'little'))
            result.set_exception(radio.ProbeError('case_rejected_primary_query'))
        else:
            emit('primary_response_unexpected', responseBytes=len(packet))
            result.set_exception(radio.ProbeError('unexpected_primary_response'))
    await asyncio.wait_for(characteristic.discover_descriptors(), 10)
    await asyncio.wait_for(characteristic.subscribe(receive, prefer_notify=False), 10)
    emit('primary_query_subscribed', encrypted=bool(connection.encryption))
    await asyncio.wait_for(characteristic.write_value(bytes.fromhex('010004'), with_response=True), 10)
    public_key = await connection.cancel_on_disconnection(asyncio.wait_for(result, 10))
    prefix = bytearray(public_key[:6]); prefix[0] |= 0xc0
    address = ':'.join(f'{octet:02X}' for octet in prefix)
    row = candidates.get(address)
    if row is None or row['keySequence'] != 'primary':
        raise radio.ProbeError('current_primary_not_in_candidates')
    emit('current_primary_resolved', keySequence=row['keySequence'], branchIndex=row['branchIndex'],
        encrypted=bool(connection.encryption))
    return row


async def run(args, *, after_configuration=None):
    if os.getenv('BUMBLE_SNOOPER'):
        raise radio.ProbeError('disable_hci_snooping_for_owner_trial')
    legacy_configuration = None
    if args.configure_legacy:
        # US=0 is verified from iOS26's regulatory-country table. Do not use it
        # if the phone's current regulatory context differs.
        country_query = await asyncio.create_subprocess_exec(str(args.adb), '-s', args.serial,
            'shell', 'cmd', 'uwb', 'get-country-code', stdout=asyncio.subprocess.PIPE,
            stderr=asyncio.subprocess.DEVNULL)
        try:
            country, _ = await asyncio.wait_for(country_query.communicate(), 8)
        except BaseException:
            country_query.kill(); await country_query.wait()
            raise
        if country_query.returncode or country.strip() != b'Uwb Country Code = US':
            raise radio.ProbeError('verified_us_country_required')
        # Native GATT interval choice71ms; equal preamble10 is accepted by
        # the case decoder. This config does not send a ranging-start command.
        rose_mac = bytes(octet or 1 for octet in uuid.uuid4().bytes[:8])
        legacy_configuration = (radio.hawkeye.LegacyP2PConfig(0, 1, 1, 1, 71), rose_mac)
        emit('legacy_configuration_selected', country='US', channel=9, txPreamble=10,
            rxPreamble=10, intervalMs=71, rangingStart=False)
    candidates = document = None
    if args.discovery_only:
        document = radio.identity.read_private_json(args.candidate_file)
        generated = datetime.fromisoformat(document['generatedAt'])
        age = (datetime.now(timezone.utc) - generated).total_seconds()
        if generated.tzinfo is None or not 0 <= age <= 172800:
            raise radio.ProbeError('historical_identity_window_exceeded')
        # This mode only checks historical public addresses and service discovery.
        # It never obtains a key or makes a protected characteristic write.
        candidates = radio.candidates_from_document(document, now=generated)
        emit('historical_identity_candidates', candidateCount=len(candidates), ageSeconds=int(age))
    elif not args.controller_only and not args.scan_only:
        if not args.control or not args.candidate_file:
            raise radio.ProbeError('private_case_helper_required')
        await radio.control_request(args.control, {'action': 'refresh_candidates'})
        document = radio.identity.read_private_json(args.candidate_file)
        candidates = radio.candidates_from_document(document)
    async with await AdbRootTransport.open(args.adb, args.serial) as transport:
        config = DeviceConfiguration(name='LibrePods case proof', address=hci.Address.generate_static_address())
        device = Device.from_config_with_hci(config, transport.source, transport.sink)
        radio.configure_owner_host(device, emit)
        connection = None
        connection_completed_at = None
        powered = False
        try:
            await asyncio.wait_for(device.power_on(), 35)
            powered = True
            emit('controller_ready')
            if args.controller_only:
                return
            if args.scan_only:
                await scan_inventory(device, args.scan_seconds)
                return
            emit('scanning', candidateCount=len(candidates), seconds=args.scan_seconds)
            address, row, rssi = await radio.scan_case(device, candidates, args.scan_seconds, legacy=False)
            emit('case_matched', keySequence=row['keySequence'], branchIndex=row['branchIndex'], rssi=rssi)
            if args.discovery_only:
                connection = await device.connect(address, timeout=15)
                emit('connected')
                peer = Peer(connection)
                services = await asyncio.wait_for(peer.discover_services(), 12)
                matching = [service for service in services if service.uuid == UUID('FD44')]
                emit('service_discovery', serviceCount=len(services), fd44Count=len(matching),
                    serviceUuids=[str(service.uuid) for service in services], encrypted=bool(connection.encryption))
                return
            materials = [row]
            # A recovery advertisement uses a secondary address but the active
            # PRIMARY LTK. Query that index instead of guessing from the address.
            if args.resolve_primary_key or not args.primary_key_index:
                if args.primary_key_index or args.key_octet_order != 'native':
                    raise radio.ProbeError('resolved_primary_requires_native_key_order')
                preferences = {hci.HCI_LE_1M_PHY: ConnectionParametersPreferences(
                    supervision_timeout=args.supervision_timeout)}
                connection = await device.connect(address, timeout=15,
                    connection_parameters_preferences=preferences)
                connection_completed_at = time.monotonic()
                emit('connected')
                materials = [await resolve_primary_key(connection, candidates)]
            elif args.primary_key_index:
                indices = args.primary_key_index
                if len(indices) > 8 or len(set(indices)) != len(indices):
                    raise radio.ProbeError('bounded_unique_primary_indices_required')
                # Case firmware installs its PRIMARY key even when its address
                # comes from the recovery bank (NERF 383FA -> 3A980 -> 3A660).
                # Every alternate is still from this exact owned case's fresh
                # finite candidate window, independently validated by the helper.
                materials = []
                for index in indices:
                    matching = [candidate for candidate in candidates.values()
                        if candidate['keySequence'] == 'primary' and candidate['branchIndex'] == index]
                    if len(matching) != 1:
                        raise radio.ProbeError('current_owned_primary_candidate_required')
                    materials.append(matching[0])
            for attempt, material in enumerate(materials, 1):
                if attempt > 1:
                    # Native iOS also spaces same-address, different-LTK retries.
                    await asyncio.sleep(1.25)
                    observed, _, _ = await radio.scan_case(device, {str(address).split('/')[0]: row},
                        min(args.scan_seconds, 10), legacy=False)
                    if observed != address:
                        raise radio.ProbeError('observed_case_changed')
                response = await radio.control_request(args.control, {
                    'action': 'owner_link', 'beaconIdentifier': document['beaconIdentifier'],
                    'address': material['address'], 'keySequence': material['keySequence'],
                    'branchIndex': material['branchIndex'],
                })
                ltk = base64.b64decode(response.pop('temporaryLtk'), validate=True)
                if args.key_octet_order == 'reversed':
                    # Diagnostic for the Apple host-to-HCI boundary, not a new KDF.
                    ltk = ltk[::-1]
                emit('key_loading_mode', attempt=attempt, octetOrder=args.key_octet_order,
                    keySequence=material['keySequence'], branchIndex=material['branchIndex'])
                preferences = {hci.HCI_LE_1M_PHY: ConnectionParametersPreferences(
                    supervision_timeout=args.supervision_timeout)}
                if connection is None:
                    connection = await device.connect(address, timeout=15,
                        connection_parameters_preferences=preferences)
                    connection_completed_at = time.monotonic()
                emit('connected', intervalMs=connection.parameters.connection_interval,
                    latency=connection.parameters.peripheral_latency,
                    supervisionTimeoutMs=connection.parameters.supervision_timeout)
                if args.preflight_discovery:
                    services = await asyncio.wait_for(Peer(connection).discover_services(), 12)
                    emit('preflight_services', serviceCount=len(services),
                        fd44Count=sum(service.uuid == UUID('FD44') for service in services))
                try:
                    await radio.probe_connection(connection, ltk, report=emit,
                        legacy_configuration=legacy_configuration)
                except hci.HCI_Error as error:
                    if connection.encryption or error.error_code not in (5, 6, 8, 0x3d):
                        raise
                    emit('owner_material_failed', attempt=attempt, protocolStatus=error.error_code)
                    if device.lookup_connection(connection.handle) is connection:
                        try:
                            await asyncio.wait_for(connection.disconnect(), 5)
                        except hci.HCI_Error as disconnect_error:
                            if disconnect_error.error_code != 2:
                                raise
                    connection = None
                    if attempt == len(materials):
                        raise radio.ProbeError('owner_materials_exhausted') from None
                else:
                    if after_configuration is not None:
                        if legacy_configuration is None or connection_completed_at is None:
                            raise radio.ProbeError('configured_fresh_connection_required')
                        await after_configuration(connection, legacy_configuration, connection_completed_at)
                    emit('trial_complete', rangingProven=False,
                        configurationAccepted=legacy_configuration is not None,
                        keySequence=material['keySequence'], branchIndex=material['branchIndex'])
                    return
                finally:
                    ltk = None
        finally:
            if connection is not None and device.lookup_connection(connection.handle) is connection:
                try:
                    await asyncio.wait_for(connection.disconnect(), 5)
                    emit('disconnected')
                except Exception:
                    emit('disconnect_unconfirmed')
            if powered:
                try:
                    await asyncio.wait_for(device.power_off(), 5)
                except Exception:
                    emit('controller_poweroff_unconfirmed')


def main():
    logging.disable(logging.CRITICAL)
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--adb', required=True, type=Path)
    parser.add_argument('--serial', required=True)
    parser.add_argument('--controller-only', action='store_true')
    parser.add_argument('--scan-only', action='store_true')
    parser.add_argument('--discovery-only', action='store_true')
    parser.add_argument('--preflight-discovery', action='store_true')
    parser.add_argument('--configure-legacy', action='store_true',
        help='After init/caps, test the verified US legacy configuration without starting ranging')
    parser.add_argument('--supervision-timeout', type=int, choices=(720, 4000), default=4000)
    parser.add_argument('--key-octet-order', choices=('native', 'reversed'), default='native')
    parser.add_argument('--primary-key-index', action='append', type=int, default=[])
    parser.add_argument('--resolve-primary-key', action='store_true',
        help='Query the active primary key before encryption (default without manual indices)')
    parser.add_argument('--scan-seconds', type=int, choices=range(1, 61), default=30)
    parser.add_argument('--control', type=Path)
    parser.add_argument('--candidate-file', type=Path)
    args = parser.parse_args()
    if args.configure_legacy and (args.controller_only or args.scan_only or args.discovery_only):
        parser.error('configure-legacy requires the encrypted owner trial')
    try:
        asyncio.run(run(args))
        return 0
    except KeyboardInterrupt:
        emit('stopped'); return 130
    except Exception as error:
        fields = {'reason': str(error)} if isinstance(error, radio.ProbeError) else {'exceptionType': type(error).__name__}
        if isinstance(getattr(error, 'error_code', None), int):
            fields['protocolStatus'] = error.error_code
        emit('trial_failed', **fields)
        return 1


if __name__ == '__main__':
    raise SystemExit(main())
