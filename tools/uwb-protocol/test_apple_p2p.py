import unittest
from apple_p2p import CompanionConfig, decode_companion_config, encode_companion_config


class CompanionConfigTests(unittest.TestCase):
    def test_synthetic_bit_position_fixture(self):
        # Native shifts: channel1 + TX(10-9)<<2 + RX(12-9)<<4; uint16 LE71.
        config = CompanionConfig(0x7a, 9, 10, 12, 71)
        self.assertEqual(encode_companion_config(config), bytes.fromhex("7a354700"))
        self.assertEqual(decode_companion_config(bytes.fromhex("7a354700")), config)

    def test_all_native_encodings(self):
        for channel in (5, 9):
            for tx in range(9, 13):
                for rx in range(9, 13):
                    config = CompanionConfig(0, channel, tx, rx, 65535)
                    self.assertEqual(decode_companion_config(encode_companion_config(config)), config)

    def test_malformed_reserved_or_unsupported_channel(self):
        for payload in (b"", b"\0"*5, bytes.fromhex("00400000"), bytes.fromhex("00020000")):
            with self.assertRaises(ValueError):
                decode_companion_config(payload)

    def test_unmapped_physical_values(self):
        for config in (CompanionConfig(0, 6, 10, 12, 71), CompanionConfig(0, 9, 8, 12, 71),
                       CompanionConfig(256, 9, 10, 12, 71), CompanionConfig(0, 9, 10, 12, 65536)):
            with self.assertRaises(ValueError):
                encode_companion_config(config)

    def test_noninteger_and_boolean_fields(self):
        fields = ("country_code", "channel", "tx_preamble", "rx_preamble", "interval_ms")
        ordinary = dict(country_code=0, channel=5, tx_preamble=10, rx_preamble=12, interval_ms=71)
        for field in fields:
            for value in (True, float(ordinary[field])):
                changed = dict(ordinary, **{field: value})
                with self.assertRaises(ValueError):
                    encode_companion_config(CompanionConfig(**changed))


if __name__ == "__main__":
    unittest.main()
