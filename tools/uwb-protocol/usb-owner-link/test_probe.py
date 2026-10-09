"""Synthetic HCI + ATT integration, not an emulation of Apple's RF crypto."""
import asyncio
from datetime import datetime, timedelta, timezone
import logging
import struct
from types import SimpleNamespace as NS
import unittest
from unittest.mock import patch

import probe
import phone_owner_link
from bumble import att, gatt, hci, smp
from bumble.controller import Controller
from bumble.device import Advertisement, Device
from bumble.link import LocalLink

logging.disable(logging.CRITICAL)
KEY = bytes(range(16))
CASE = "C1:02:03:04:05:06"
CENTRAL = "C2:02:03:04:05:06"


class CheckingController(Controller):
    """Bumble accepts any encryption key by default; explicitly gate this one."""
    def __init__(self, *args, encryption_mode="accept", **kwargs):
        super().__init__(*args, **kwargs)
        self.encryption_commands = []
        self.encryption_mode = encryption_mode

    def on_hci_le_enable_encryption_command(self, command):
        self.encryption_commands.append(command)
        valid = (command.long_term_key == KEY and command.random_number == bytes(8)
                 and command.encrypted_diversifier == 0)
        if valid and self.encryption_mode == "accept":
            return super().on_hci_le_enable_encryption_command(command)
        self.send_hci_packet(hci.HCI_Command_Status_Event(
            status=0, num_hci_command_packets=1, command_opcode=command.op_code))
        self.send_hci_packet(hci.HCI_Encryption_Change_Event(
            status=0 if self.encryption_mode == "disabled" else 0x06,
            connection_handle=command.connection_handle, encryption_enabled=0))


class RadioSimulation(unittest.IsolatedAsyncioTestCase):
    async def asyncSetUp(self):
        self.link = LocalLink()
        self.controller = CheckingController("central", link=self.link)
        self.case_controller = Controller("case", link=self.link)
        self.device = Device.with_hci("central", hci.Address(CENTRAL), self.controller, self.controller)
        self.case = Device.with_hci("case", hci.Address(CASE), self.case_controller, self.case_controller)
        self.commands, self.events, self.smp_packets = [], [], []
        probe.configure_owner_host(self.device, self.report)
        self.case.l2cap_channel_manager.register_fixed_channel(
            smp.SMP_CID, lambda _c, pdu: self.smp_packets.append(pdu))
        self.init_status = 0
        self.suppress_capabilities = False
        self.malformed = False
        self.negative_ack = False
        self.config_status = 0
        self.allow_configuration = False
        self.omit_success_ack = False
        self.response_tasks = []
        self.primary_public_key = bytes.fromhex('031020304050') + bytes(22)
        self.primary_query_rejected = False
        self.owner_queries = []

        async def respond_owner():
            response = (bytes.fromhex('01060400040500') if self.primary_query_rejected
                        else bytes.fromhex('010204') + self.primary_public_key)
            await self.case.indicate_subscribers(self.owner_information, response)

        def write_owner(connection, value):
            if connection.encryption or value != bytes.fromhex('010004'):
                raise AssertionError('expected unencrypted current-primary query')
            self.owner_queries.append(value)
            self.response_tasks.append(asyncio.create_task(respond_owner()))

        self.owner_information = gatt.Characteristic(
            '4F860004-943B-49EF-BED4-2F730304427A',
            gatt.Characteristic.Properties.WRITE | gatt.Characteristic.Properties.INDICATE,
            att.Attribute.Permissions.WRITEABLE,
            gatt.CharacteristicValue(write=write_owner),
        )

        async def respond(opcode):
            ack_status = 5 if self.negative_ack else 0
            packets = ([] if self.omit_success_ack and not self.negative_ack
                       else [probe.hawkeye.frame(0x0700, struct.pack("<HH", opcode, ack_status))])
            if not self.negative_ack:
                if opcode == 0x0701:
                    packets.append(probe.hawkeye.frame(0x0706, struct.pack("<I", self.init_status)))
                elif opcode == 0x0702:
                    packets.append(probe.hawkeye.frame(0x0707, struct.pack('<I', self.config_status)))
                elif not self.suppress_capabilities:
                    packets.append(b"\x01\x11\x07" if self.malformed else probe.hawkeye.frame(0x0711, struct.pack("<I", 0x0B)))
            for packet in packets:
                await self.case.indicate_subscribers(self.characteristic, packet)

        def write(connection, value):
            if not connection.encryption:
                raise AssertionError("unencrypted case write")
            opcode = int.from_bytes(value[1:3], "little")
            if (value not in (probe.hawkeye.frame(0x0701), probe.hawkeye.capabilities_query())
                    and not (self.allow_configuration and opcode == 0x0702 and len(value) == 15)):
                raise AssertionError("unexpected owner command")
            self.commands.append(value)
            self.response_tasks.append(asyncio.create_task(respond(opcode)))

        self.characteristic = gatt.Characteristic(
            probe.hawkeye.CHARACTERISTIC,
            gatt.Characteristic.Properties.WRITE | gatt.Characteristic.Properties.INDICATE,
            att.Attribute.Permissions.WRITEABLE | att.Attribute.Permissions.WRITE_REQUIRES_ENCRYPTION,
            gatt.CharacteristicValue(write=write),
        )
        # NERF firmware declares the primary FD44 attribute with a 16-bit value.
        # A synthetic 128-bit alias hides the ATT width mismatch seen on hardware.
        self.case.add_service(gatt.Service("FD44", [self.owner_information, self.characteristic]))
        await self.device.power_on()
        await self.case.power_on()
        await self.case.start_advertising(auto_restart=False)
        self.connection = await self.device.connect(hci.Address(CASE), timeout=2)

    async def asyncTearDown(self):
        await self.connection.disconnect()
        await asyncio.gather(*self.response_tasks, return_exceptions=True)
        await self.case.power_off()
        await self.device.power_off()
        self.assertEqual(self.smp_packets, [], "must not attempt fresh pairing")
        self.assertEqual(await self.device.keystore.get_all(), [], "temporary key must be removed")

    def report(self, event, **fields):
        self.events.append((event, fields))

    async def test_primary_query_resolves_key_independently_of_recovery_address(self):
        active = {'address': 'C3:10:20:30:40:50', 'keySequence': 'primary', 'branchIndex': 97}
        recovery = {'address': CASE, 'keySequence': 'secondary', 'branchIndex': 2}
        with patch.object(phone_owner_link, 'emit', self.report):
            selected = await phone_owner_link.resolve_primary_key(
                self.connection, {active['address']: active, CASE: recovery})
        self.assertEqual(selected, active)
        self.assertFalse(self.connection.encryption)
        self.assertEqual(self.controller.encryption_commands, [])
        self.assertEqual(self.owner_queries, [bytes.fromhex('010004')])
        await probe.probe_connection(self.connection, KEY, self.report, timeout=1)
        self.assertEqual(len(self.controller.encryption_commands), 1)
        events = [event for event, _ in self.events]
        self.assertLess(events.index('current_primary_resolved'), events.index('encryption_requested'))

    async def test_app_primary_query_returns_full_key_before_encryption(self):
        from findmy_owner_radio import query_primary
        result = await query_primary(self.connection, timeout=1)
        self.assertEqual(result, self.primary_public_key)
        self.assertFalse(self.connection.encryption)
        self.assertEqual(self.commands, [])
        self.assertEqual(self.controller.encryption_commands, [])

    async def test_app_primary_query_rejection_cannot_encrypt(self):
        from findmy_owner_radio import query_primary
        self.primary_query_rejected = True
        with self.assertRaisesRegex(probe.ProbeError, 'case_rejected_primary_query'):
            await query_primary(self.connection, timeout=1)
        self.assertEqual(self.commands, [])
        self.assertEqual(self.controller.encryption_commands, [])

    async def test_primary_query_cannot_select_secondary_material(self):
        candidate = {'address': 'C3:10:20:30:40:50', 'keySequence': 'secondary', 'branchIndex': 2}
        with patch.object(phone_owner_link, 'emit', self.report):
            with self.assertRaisesRegex(phone_owner_link.radio.ProbeError, 'current_primary_not_in_candidates'):
                await phone_owner_link.resolve_primary_key(self.connection, {candidate['address']: candidate})
        self.assertEqual(self.controller.encryption_commands, [])
        self.assertEqual(self.commands, [])

    async def test_primary_query_rejection_stops_before_encryption(self):
        self.primary_query_rejected = True
        with patch.object(phone_owner_link, 'emit', self.report):
            with self.assertRaisesRegex(phone_owner_link.radio.ProbeError, 'case_rejected_primary_query'):
                await phone_owner_link.resolve_primary_key(self.connection, {})
        self.assertEqual(self.controller.encryption_commands, [])
        self.assertEqual(self.commands, [])

    async def test_configure_only_uses_status_only_completion_without_success_ack(self):
        self.allow_configuration = True
        self.omit_success_ack = True
        configuration = (probe.hawkeye.LegacyP2PConfig(0, 1, 0, 0, 100), bytes(range(1, 9)))
        await probe.probe_connection(self.connection, KEY, self.report, timeout=1,
                                     legacy_configuration=configuration)
        self.assertEqual([int.from_bytes(packet[1:3], 'little') for packet in self.commands],
                         [0x0701, 0x0710, 0x0702])
        self.assertIn(('case_configured', {'mode': 'apple_legacy', 'rangingStarted': False}), self.events)

    async def test_failed_configuration_is_not_reported_as_success(self):
        self.allow_configuration = True
        self.config_status = 0x80000001
        configuration = (probe.hawkeye.LegacyP2PConfig(0, 1, 0, 0, 100), bytes(range(1, 9)))
        with self.assertRaisesRegex(probe.ProbeError, 'case_configuration_failed'):
            await probe.probe_connection(self.connection, KEY, self.report, timeout=1,
                                         legacy_configuration=configuration)
        self.assertNotIn('case_configured', [event for event, _ in self.events])

    async def test_success_uses_exact_standard_hci_and_indications(self):
        result = await probe.probe_connection(self.connection, KEY, self.report, timeout=1)
        self.assertEqual(result["raw"], 11)
        self.assertEqual(self.commands, [bytes.fromhex("010107"), bytes.fromhex("01100700000000")])
        self.assertEqual(len(self.controller.encryption_commands), 1)
        packet = bytes(self.controller.encryption_commands[0])
        # H4 command + opcode LE 0x2019 + length 28 + handle + RAND + EDIV + raw key.
        self.assertEqual(packet[:4], bytes.fromhex("0119201c"))
        self.assertEqual(packet[6:16], bytes(10))
        self.assertEqual(packet[16:], KEY)
        self.assertLess([e[0] for e in self.events].index("encryption_confirmed"),
                        [e[0] for e in self.events].index("subscribed"))

    async def test_wrong_key_stops_before_gatt_writes(self):
        with self.assertRaises(hci.HCI_Error):
            await probe.probe_connection(self.connection, bytes(16), self.report, timeout=1)
        self.assertEqual(self.commands, [])

    async def test_unsolicited_pairing_is_ignored(self):
        case_connection = next(iter(self.case.connections.values()))
        case_connection.send_l2cap_pdu(smp.SMP_CID, bytes.fromhex("01030001100000"))
        await asyncio.sleep(0.01)
        self.assertEqual(self.device.smp_manager.sessions, {})
        self.assertIn("smp_ignored", [event for event, _ in self.events])
        await probe.probe_connection(self.connection, KEY, self.report, timeout=1)

    async def test_encryption_disabled_event_is_not_success(self):
        self.controller.encryption_mode = "disabled"
        with self.assertRaisesRegex(probe.ProbeError, "encryption_not_enabled"):
            await probe.probe_connection(self.connection, KEY, self.report, timeout=1)
        self.assertEqual(self.commands, [])

    async def test_init_failure_never_sends_capability_request(self):
        self.init_status = 0x80000001
        with self.assertRaisesRegex(probe.ProbeError, "case_initialization_failed"):
            await probe.probe_connection(self.connection, KEY, self.report, timeout=1)
        self.assertEqual(len(self.commands), 1)

    async def test_negative_ack_stops(self):
        self.negative_ack = True
        with self.assertRaisesRegex(probe.ProbeError, "case_rejected_request"):
            await probe.probe_connection(self.connection, KEY, self.report, timeout=1)
        self.assertEqual(len(self.commands), 1)

    async def test_ack_alone_is_not_capability_success(self):
        self.suppress_capabilities = True
        with self.assertRaises(TimeoutError):
            await probe.probe_connection(self.connection, KEY, self.report, timeout=0.2)

    async def test_malformed_capability_is_rejected(self):
        self.malformed = True
        with self.assertRaisesRegex(probe.ProbeError, "unsupported_response"):
            await probe.probe_connection(self.connection, KEY, self.report, timeout=1)


class IdentityTests(unittest.TestCase):
    def document(self):
        return {"schemaVersion": 1, "component": "case", "componentPosition": 2,
                "generatedAt": datetime.now(timezone.utc).isoformat(), "candidates": [
                    {"address": CASE, "keySequence": "primary", "branchIndex": 12}]}

    def test_stale_and_wrong_component_candidates_rejected(self):
        doc = self.document()
        doc["generatedAt"] = (datetime.now(timezone.utc) - timedelta(minutes=5)).isoformat()
        with self.assertRaisesRegex(probe.ProbeError, "fresh_candidates"):
            probe.candidates_from_document(doc)
        doc = self.document()
        doc["componentPosition"] = 0
        with self.assertRaisesRegex(probe.ProbeError, "selected_case"):
            probe.candidates_from_document(doc)

    def test_match_requires_exact_random_connectable_address_not_frame12(self):
        candidates = probe.candidates_from_document(self.document())
        advertisement = Advertisement(hci.Address(CASE), is_connectable=True,
                                      data_bytes=bytes.fromhex("05ff4c000700"))
        self.assertIsNotNone(probe.match_advertisement(advertisement, candidates))
        advertisement.is_connectable = False
        self.assertIsNone(probe.match_advertisement(advertisement, candidates))
        advertisement.is_connectable = True
        advertisement.address = hci.Address(CASE, hci.Address.PUBLIC_DEVICE_ADDRESS)
        self.assertIsNone(probe.match_advertisement(advertisement, candidates))

    def test_owner_helper_requires_exact_current_selected_branch(self):
        import base64
        import owner_link
        class Generator:
            def __getitem__(self, index): return NS(mac_address=CASE)
            def _get_sk(self, index): return bytes(range(32))
        holder = {"record": NS(name="case", values={"stableIdentifier": "a:/test~#¶x§x§4142§2"}),
                  "accessory": NS(_primary_gen=Generator())}
        request = {"action": "owner_link", "beaconIdentifier": "case", "address": CASE,
                   "keySequence": "primary", "branchIndex": 12}
        with patch.object(probe.identity, "candidate_document", return_value=self.document()):
            result = probe.identity.owner_link_response(holder, request)
            self.assertEqual(base64.b64decode(result["temporaryLtk"]),
                             owner_link.derive_from_matched_secret(bytes(range(32))).temporary_ltk)
            for change in ({"beaconIdentifier": "bud"}, {"branchIndex": 13}, {"keySequence": "secondary"}):
                with self.assertRaises(probe.identity.ProofError):
                    probe.identity.owner_link_response(holder, request | change)


if __name__ == "__main__":
    unittest.main()
