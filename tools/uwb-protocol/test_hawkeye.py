import json
from pathlib import Path
import unittest
from dataclasses import asdict, replace
from apple_ranging import LegacyP2PConfig
from hawkeye import NBConfig, configure_nb, start_nb, configure_p2p, start_p2p, capabilities_query, parse, parse_capabilities, frame

class HawkeyeTests(unittest.TestCase):
    def test_configuration_response_is_status_only(self):
        self.assertEqual(parse(bytes.fromhex('01070700000000')),
                         {'opcode': 0x0707, 'configuration_status': 0})
        for length in (0, 3, 5):
            with self.assertRaises(ValueError):
                parse(frame(0x0707, bytes(length)))

    def test_native_init_response_is_separate_from_ack(self):
        self.assertEqual(parse(bytes.fromhex('01060700000000')),
                         {'opcode': 0x0706, 'ranging_status': 0})
        self.assertEqual(parse(bytes.fromhex('01060701000080'))['ranging_status'], 0x80000001)
        for body_length in (0, 3, 5):
            with self.assertRaises(ValueError):
                parse(bytes.fromhex('010607') + bytes(body_length))

    def setUp(self):
        self.nb = NBConfig(1,2,3,4,5,6,7,8,0x0a09,0x0c0b,13,14,15,16,0x1211,19)
        self.fixtures = json.loads(Path(__file__).with_name('hawkeye-fixtures.json').read_text())

    def test_instruction_derived_vectors(self):
        actual = {
            'synthetic_nb_config': configure_nb(self.nb),
            'synthetic_nb_start': start_nb(bytes(range(16))),
            'synthetic_p2p_config': configure_p2p(LegacyP2PConfig(1,2,3,1,0x1234),bytes(range(8))),
            'synthetic_p2p_start': start_p2p(0x1234),
            'native_capabilities_query': capabilities_query(),
            'synthetic_capabilities_response': frame(0x0711,bytes.fromhex('0f000000')),
            'synthetic_capabilities_ack': frame(0x0700,bytes.fromhex('10070000')),
        }
        for name, packet in actual.items():
            with self.subTest(name=name):
                self.assertEqual(packet.hex(), self.fixtures[name]['hex'])
                self.assertEqual(parse(packet), self.fixtures[name]['parsed'])
        self.assertEqual(parse(actual['synthetic_nb_config'])['nb_config'],asdict(self.nb))

    def test_capability_bits_individually_and_unknown_bits(self):
        names = ('supports_fc1nd','supports_nbamms','supports_unii5','supports_simultaneous_ranging')
        for bit in range(4):
            parsed = parse_capabilities((1<<bit).to_bytes(4,'little'))
            self.assertEqual([parsed[n] for n in names],[i==bit for i in range(4)])
        self.assertEqual(parse_capabilities(bytes.fromhex('00000080'))['raw'],1<<31)

    def test_nb_unsigned_widths(self):
        for name in asdict(self.nb):
            bits = 16 if name in ('nb_mask_nap_channel','nb_channel_select_mask','interval') else 8
            for value in (-1,1<<bits,True,1.0):
                with self.subTest(name=name,value=value), self.assertRaises(ValueError):
                    configure_nb(replace(self.nb,**{name:value}))

    def test_malformed_frame_lengths_and_p2p_flags(self):
        for packet in (b'',b'\0\x0d\x07',b'\x01\x0d\x07\0',
                       b'\x01\x0e\x07'+bytes(15),b'\x01\x11\x07'+bytes(3),
                       b'\x01\x00\x07'+bytes(5),b'\x01\x02\x07'+bytes(12)):
            with self.subTest(packet=packet.hex()), self.assertRaises(ValueError):
                parse(packet)
        for length in (0,15,17):
            with self.assertRaises(ValueError): start_nb(bytes(length))
        for length in (0,7,9):
            with self.assertRaises(ValueError): configure_p2p(LegacyP2PConfig(0,0,0,0,0),bytes(length))

if __name__ == '__main__':
    unittest.main()
