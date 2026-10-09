"""Canonical owner BLE protocol; caller supplies transport and ephemeral key.
No SMP pairing, bond persistence, account access or ranging start.
"""
import asyncio
from datetime import datetime, timezone
import re
from bumble import gatt, hci, keys, smp
from bumble.device import Peer
from . import codec as hawkeye


def emit(event, **fields):
    pass

class ProbeError(Exception):
    """Fixed nonsecret labels only."""

def configure_owner_host(device, report=emit):
    # This experiment resumes encryption with a known key; unsolicited SMP
    # traffic must not create a new pairing session in Bumble's default handler.
    device.l2cap_channel_manager.register_fixed_channel(
        smp.SMP_CID, lambda _connection, _pdu: report("smp_ignored"))

def candidates_from_document(document, now=None):
    now = now or datetime.now(timezone.utc)
    if (document.get("schemaVersion") != 1 or document.get("component") != "case"
            or document.get("componentPosition") != 2):
        raise ProbeError("selected_case_required")
    generated = datetime.fromisoformat(document["generatedAt"])
    if generated.tzinfo is None or not -5 <= (now - generated).total_seconds() <= 120:
        raise ProbeError("fresh_candidates_required")
    rows = document.get("candidates", [])
    if not 1 <= len(rows) <= 512:
        raise ProbeError("invalid_candidate_count")
    result = {}
    for row in rows:
        address = row.get("address", "")
        if (not re.fullmatch(r"(?:[0-9A-F]{2}:){5}[0-9A-F]{2}", address)
                or int(address[:2], 16) & 0xC0 != 0xC0
                or row.get("keySequence") not in ("primary", "secondary")
                or type(row.get("branchIndex")) is not int
                or not 0 <= row["branchIndex"] <= 100_000 or address in result):
            raise ProbeError("invalid_candidate")
        result[address] = row
    return result

def match_advertisement(advertisement, candidates):
    # The case was observed with Apple type 0x07; do not impose a 0x12 filter.
    if (advertisement.address.address_type != hci.Address.RANDOM_DEVICE_ADDRESS
            or not advertisement.is_connectable):
        return None
    address = str(advertisement.address).split("/")[0].upper()
    return candidates.get(address)

async def scan_case(device, candidates, seconds, *, legacy=True):
    matched = asyncio.get_running_loop().create_future()

    def on_advertisement(advertisement):
        row = match_advertisement(advertisement, candidates)
        if row is not None and not matched.done():
            matched.set_result((advertisement.address, row, advertisement.rssi))

    device.on(device.EVENT_ADVERTISEMENT, on_advertisement)
    try:
        await device.start_scanning(legacy=legacy, active=False, filter_duplicates=False,
                                  scanning_phys=(hci.HCI_LE_1M_PHY,))
        return await asyncio.wait_for(matched, seconds)
    finally:
        device.remove_listener(device.EVENT_ADVERTISEMENT, on_advertisement)
        await asyncio.wait_for(device.stop_scanning(legacy=legacy), 5)

class Responses:
    def __init__(self, report):
        self.queue = asyncio.Queue(maxsize=32)
        self.report = report
        self.overflow = False

    def receive(self, packet):
        # Only decode known fixed-size responses; never print unknown payloads.
        try:
            if len(packet) not in (7, 8) or packet[:1] != b"\x01":
                raise ValueError()
            opcode = int.from_bytes(packet[1:3], "little")
            if opcode not in (0x0700, 0x0706, 0x0707, 0x0711):
                raise ValueError()
            message = hawkeye.parse(packet)
        except ValueError:
            message = {"error": "unsupported_response"}
        if self.queue.full():
            self.overflow = True
        else:
            self.queue.put_nowait(message)

    async def expect(self, opcode, request_opcode, timeout):
        async with asyncio.timeout(timeout):
            while True:
                message = await self.queue.get()
                if self.overflow:
                    raise ProbeError("response_overflow")
                if "error" in message:
                    raise ProbeError("unsupported_response")
                if message["opcode"] == 0x0700:
                    if message["acknowledged_opcode"] == request_opcode:
                        self.report("ack", requestOpcode=request_opcode, status=message["status"])
                        if message["status"] != 0:
                            raise ProbeError("case_rejected_request")
                elif message["opcode"] == opcode:
                    return message

async def probe_connection(connection, ltk, report=emit, timeout=12, legacy_configuration=None):
    """Shared live/simulation path. HCI encryption completion is a hard gate."""
    if not isinstance(ltk, bytes) or len(ltk) != 16:
        raise ProbeError("invalid_temporary_key")
    device = connection.device
    store = keys.MemoryKeyStore()
    device.keystore = store
    await store.update(str(connection.peer_address), keys.PairingKeys(
        address_type=hci.Address.RANDOM_DEVICE_ADDRESS,
        ltk=keys.PairingKeys.Key(value=ltk),
    ))
    try:
        report("encryption_requested")
        await asyncio.wait_for(connection.encrypt(), timeout)
        if not connection.encryption:
            raise ProbeError("encryption_not_enabled")
        report("encryption_confirmed")
        peer = Peer(connection)
        # Nordic declares FD44 as a 16-bit attribute. A full UUID alias isn't the
        # same ATT Find-By-Type-Value payload even though UUID objects compare equal.
        services = await asyncio.wait_for(peer.discover_service('FD44'), timeout)
        if len(services) != 1:
            raise ProbeError("unique_fd44_required")
        characteristics = await asyncio.wait_for(
            services[0].discover_characteristics([hawkeye.CHARACTERISTIC]), timeout)
        if len(characteristics) != 1:
            raise ProbeError("unique_precision_characteristic_required")
        characteristic = characteristics[0]
        props = gatt.Characteristic.Properties
        if (not characteristic.properties & props.WRITE
                or not characteristic.properties & (props.NOTIFY | props.INDICATE)):
            raise ProbeError("unsupported_characteristic_properties")
        await asyncio.wait_for(characteristic.discover_descriptors(), timeout)
        if characteristic.get_descriptor(gatt.GATT_CLIENT_CHARACTERISTIC_CONFIGURATION_DESCRIPTOR) is None:
            raise ProbeError("cccd_required")
        responses = Responses(report)
        await asyncio.wait_for(characteristic.subscribe(responses.receive, prefer_notify=False), timeout)
        report("subscribed", properties=int(characteristic.properties))
        await asyncio.wait_for(characteristic.write_value(hawkeye.frame(0x0701), with_response=True), timeout)
        initialized = await connection.cancel_on_disconnection(responses.expect(0x0706, 0x0701, timeout))
        report("initialization_response", status=initialized["ranging_status"])
        if initialized["ranging_status"] != 0:
            raise ProbeError("case_initialization_failed")
        await asyncio.wait_for(characteristic.write_value(hawkeye.capabilities_query(), with_response=True), timeout)
        response = await connection.cancel_on_disconnection(responses.expect(0x0711, 0x0710, timeout))
        report("capabilities", **response["capabilities"])
        if legacy_configuration is not None:
            configuration, rose_mac = legacy_configuration
            packet = hawkeye.configure_p2p(configuration, rose_mac)
            await asyncio.wait_for(characteristic.write_value(packet, with_response=True), timeout)
            configured = await connection.cancel_on_disconnection(responses.expect(0x0707, 0x0702, timeout))
            report("configuration_response", status=configured["configuration_status"],
                endReason=configured.get("end_reason", 0))
            if configured["configuration_status"] != 0:
                raise ProbeError("case_configuration_failed")
            report("case_configured", mode="apple_legacy", rangingStarted=False)
        return response["capabilities"]
    finally:
        await store.delete_all()
