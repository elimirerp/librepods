"""In-process recovered owner BLE diagnostic. No account requests or UWB start.
Only fixed status fields cross the Python/JVM boundary; keys remain ephemeral.
"""
from __future__ import annotations
import asyncio
from datetime import datetime, timedelta, timezone
import hashlib
import hmac
import json
import logging
import os
import re

MAX_INDEX = 100_000
MAX_SPAN = 256

class OwnerRadioError(Exception):
    pass


def candidate_window(accessory, now=None):
    now = now or datetime.now(timezone.utc)
    margin = timedelta(hours=12)
    lo, hi = accessory.get_min_index(now-margin), accessory.get_max_index(now+margin)
    if (type(lo) is not int or type(hi) is not int or hi < max(0, lo)
            or hi > MAX_INDEX or hi-max(0,lo)+1 > MAX_SPAN):
        raise OwnerRadioError("candidate_window_too_wide")
    result, primary = {}, []
    for index in range(max(0,lo),hi+1):
        key = accessory._primary_key_at(index)
        primary.append((index, bytes(key.adv_key_bytes)))
        rows = [(key, 'primary', index)] + [
            (key,'secondary',index//96+offset)
            for offset,key in enumerate(accessory._secondary_keys_at(index),1)]
        for key,sequence,branch in rows:
            address = key.mac_address.upper()
            if (not re.fullmatch(r'(?:[0-9A-F]{2}:){5}[0-9A-F]{2}',address)
                    or int(address[:2],16)&0xc0 != 0xc0):
                raise OwnerRadioError("invalid_candidate")
            row = dict(address=address,keySequence=sequence,branchIndex=branch)
            if address in result and result[address] != row:
                raise OwnerRadioError("candidate_branch_ambiguous")
            result[address] = row
    if not 1 <= len(result) <= 512 or any(len(key)!=28 for _,key in primary):
        raise OwnerRadioError("invalid_candidate_count")
    return result, primary


def resolve_ltk(accessory, public_key, primary):
    """Full28B queried public key must match this selected case's primary chain."""
    if not isinstance(public_key, bytes) or len(public_key) != 28:
        raise OwnerRadioError("invalid_primary_response")
    matches = [index for index,key in primary if hmac.compare_digest(key,public_key)]
    if len(matches) != 1:
        raise OwnerRadioError("current_primary_not_in_candidates")
    index = matches[0]
    if not hmac.compare_digest(bytes(accessory._primary_gen[index].adv_key_bytes),public_key):
        raise OwnerRadioError("selected_primary_changed")
    secret = accessory._primary_gen._get_sk(index)
    if not isinstance(secret,bytes) or len(secret)!=32:
        raise OwnerRadioError("invalid_owner_material")
    intermediate = hashlib.sha256(secret+b'\0\0\0\1intermediate').digest()
    token = hashlib.sha256(intermediate+b'\0\0\0\1connect').digest()
    return token[:16]


async def query_primary(connection, timeout=10):
    from bumble.device import Peer
    from .radio import ProbeError
    peer = Peer(connection)
    if await asyncio.wait_for(peer.request_mtu(128), timeout) < 34:
        raise ProbeError("primary_response_fragmentation_required")
    services = await asyncio.wait_for(peer.discover_service('FD44'), timeout)
    if len(services)!=1:
        raise ProbeError("unique_fd44_required")
    chars = await asyncio.wait_for(services[0].discover_characteristics(
        ['4F860004-943B-49EF-BED4-2F730304427A']), timeout)
    if len(chars)!=1:
        raise ProbeError("unique_owner_information_required")
    char = chars[0]
    response = asyncio.get_running_loop().create_future()
    def receive(packet):
        if response.done():return
        if len(packet)==31 and packet[:3]==b'\x01\x02\x04':
            response.set_result(bytes(packet[3:]))
        elif len(packet)==7 and packet[:3]==b'\x01\x06\x04':
            response.set_exception(ProbeError('case_rejected_primary_query'))
        else:
            response.set_exception(ProbeError('unexpected_primary_response'))
    await asyncio.wait_for(char.discover_descriptors(), timeout)
    await asyncio.wait_for(char.subscribe(receive,prefer_notify=False), timeout)
    await asyncio.wait_for(char.write_value(b'\x01\x00\x04',with_response=True), timeout)
    return await connection.cancel_on_disconnection(asyncio.wait_for(response,timeout))


class AndroidPipeTransport:
    """Wrap Java-owned private H4 streams without a socket, file or subprocess API."""
    @classmethod
    async def open(cls, adapter):
        from bumble.transport.common import PumpedPacketSource, PumpedPacketSink, Transport
        obj = cls()
        obj.pipe = await asyncio.to_thread(adapter.openPipe)
        obj.closed = False
        async def receive():
            packet = await asyncio.to_thread(obj.pipe.readPacket)
            # Java bytes are signed. Do not convert through text/base64 or log them.
            data = bytes(int(octet)&255 for octet in packet)
            if not data:raise EOFError()
            return data
        async def send(packet):
            await asyncio.to_thread(obj.pipe.writePacket,bytes(packet))
        obj.source = PumpedPacketSource(receive)
        obj.sink = PumpedPacketSink(send)
        obj.source.start();obj.sink.start()
        return obj

    async def close(self):
        if self.closed:return {}
        self.closed = True
        self.sink.close();self.source.close()
        raw = await asyncio.to_thread(self.pipe.closePipe)
        data = json.loads(str(raw))
        return {name:data.get(name) is True for name in (
            'bridgeReady','bluetoothRestored','restoreConfirmed','helperFailed')}


def _result(state='idle', **extra):
    messages = {
        'owner_link_verified':'Case encryption, initialization and capabilities verified. UWB ranging is not started.',
        'error':'Case connection could not finish. Check root access, recovered keys and case proximity.',
        'restore_unconfirmed':'Case trial ended, but Bluetooth restoration could not be confirmed.',
        'idle':'Recover and select this account’s case before testing its connection.',
    }
    return dict(state=state,message=messages[state],encryptionConfirmed=False,
                initializationStatus=None,capabilitiesRaw=None,bluetoothRestored=False,
                rangingProven=False,**extra)


async def _diagnostic(recovery,adapter,transport_factory=None):
    from bumble import hci
    from bumble.device import Device,DeviceConfiguration,ConnectionParametersPreferences
    from . import radio
    status = _result()
    transport = connection = device = None
    powered = False
    def report(event,**fields):
        if event=='encryption_confirmed':status['encryptionConfirmed']=True
        elif event=='initialization_response':status['initializationStatus']=fields['status']
        elif event=='capabilities':status['capabilitiesRaw']=fields['raw']
    try:
        if os.getenv('BUMBLE_SNOOPER'):
            raise OwnerRadioError('hci_snooping_forbidden')
        # Suppress packet/ATT debug logs, including key-bearing HCI commands.
        for name in list(logging.Logger.manager.loggerDict):
            if name=='bumble' or name.startswith('bumble.'):
                logging.getLogger(name).disabled=True
        accessory = recovery.radio_accessory()
        candidates,primary = candidate_window(accessory)
        factory = transport_factory or AndroidPipeTransport.open
        transport = await factory(adapter)
        device = Device.from_config_with_hci(DeviceConfiguration(
            name='LibrePods owner diagnostic',address=hci.Address.generate_static_address()),
            transport.source,transport.sink)
        radio.configure_owner_host(device,report)
        async with asyncio.timeout(115):
            await asyncio.wait_for(device.power_on(),35)
            powered = True
            address,_,_ = await radio.scan_case(device,candidates,25,legacy=False)
            preferences = {hci.HCI_LE_1M_PHY:ConnectionParametersPreferences(supervision_timeout=4000)}
            connection = await device.connect(address,timeout=15,
                connection_parameters_preferences=preferences)
            public = await query_primary(connection)
            # Do not use the recovery advertisement's secondary encryption key.
            if recovery.radio_accessory() is not accessory:
                raise OwnerRadioError('selected_case_changed')
            ltk = resolve_ltk(accessory,public,primary)
            try:
                await radio.probe_connection(connection,ltk,report,timeout=12)
            finally:
                ltk = None
            status['state']='owner_link_verified'
            status['message']=_result('owner_link_verified')['message']
    except Exception as error:
        status['state']='error';status['message']=_result('error')['message']
        if isinstance(error,(OwnerRadioError,radio.ProbeError)):
            status['reason']=str(error)
        elif isinstance(error,TimeoutError):status['reason']='operation_timeout'
        else:status['reason']='owner_radio_unavailable'
        code=getattr(error,'error_code',None)
        if type(code) is int and 0<=code<=255:status['protocolStatus']=code
    finally:
        if connection is not None and device.lookup_connection(connection.handle) is connection:
            try:await asyncio.wait_for(connection.disconnect(),5)
            except Exception:pass
        if powered:
            try:await asyncio.wait_for(device.power_off(),5)
            except Exception:pass
        if transport is not None:
            try:
                restored=await transport.close()
                status['bluetoothRestored']=restored.get('restoreConfirmed') is True
            except Exception:status['bluetoothRestored']=False
            if not status['bluetoothRestored']:
                status['state']='restore_unconfirmed'
                status['message']=_result('restore_unconfirmed')['message']
        accessory=primary=candidates=public=None
    return status


def run_diagnostic(recovery,adapter):
    """Blocking backend-worker entry. Reuses the existing account's event loop."""
    try:
        loop=recovery.session.account._evt_loop
        if loop.is_closed() or loop.is_running():raise OwnerRadioError('account_worker_required')
        return json.dumps(loop.run_until_complete(_diagnostic(recovery,adapter)),separators=(',',':'))
    except Exception:
        return json.dumps(_result('error',reason='selected_case_or_worker_required'),separators=(',',':'))
