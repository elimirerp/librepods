import itertools
import unittest

from apple_ranging import (LegacyP2PConfig, legacy_channel_code, legacy_preamble_code,
                           ranging_address, select_item_localizer_mode, siphash24)


class RangingPrimitivesTest(unittest.TestCase):
    def test_address_matches_apple_coreutils_with_synthetic_keys(self):
        # Captured by native-siphash-fixture.c, calling only a pure hash function.
        for key, expected in [
            (bytes(range(16)), 0xDDAFCF0FDF393464),
            (bytes(16), 0x88899A45DC40A124),
            (bytes([255]) * 16, 0xDBA0D558388119BF),
        ]:
            self.assertEqual(expected, ranging_address(key))

    def test_standard_siphash_vectors(self):
        # The reference algorithm's first sixteen vectors exercise partial blocks.
        vectors = [
            0x726FDB47DD0E0E31, 0x74F839C593DC67FD, 0x0D6C8009D9A94F5A,
            0x85676696D7FB7E2D, 0xCF2794E0277187B7, 0x18765564CD99A68D,
            0xCBC9466E58FEE3CE, 0xAB0200F58B01D137, 0x93F5F5799A932462,
            0x9E0082DF0BA9E4B0, 0x7A5DBBC594DDB9F3, 0xF4B32F46226BADA7,
            0x751E8FBC860EE5FB, 0x14EA5627C0843D90, 0xF723CA908E7AF2EE,
            0xA129CA6149BE45E5,
        ]
        for length, expected in enumerate(vectors):
            self.assertEqual(expected, siphash24(bytes(range(16)), bytes(range(length))))

    def test_rejects_wrong_key_length(self):
        for size in (0, 8, 15, 17, 32):
            with self.assertRaises(ValueError):
                ranging_address(bytes(size))

    def test_legacy_binary_layout(self):
        config = LegacyP2PConfig(0xA5, 2, 1, 3, 240)
        self.assertEqual(bytes.fromhex("a536f000"), config.encode())
        self.assertEqual(config, LegacyP2PConfig.decode(bytes.fromhex("a536f000")))

    def test_native_hsi1_radio_conversion(self):
        self.assertEqual([0, 1], [legacy_channel_code(n) for n in (5, 9)])
        self.assertEqual([0, 1, 2, 3], [legacy_preamble_code(n) for n in (9, 10, 11, 12)])
        for invalid in (-1, 0, 4, 6, 8, 10, 255, True, 5.0):
            with self.assertRaises(ValueError):
                legacy_channel_code(invalid)
        for invalid in (-1, 0, 1, 8, 13, 32, 33, True, 10.0):
            with self.assertRaises(ValueError):
                legacy_preamble_code(invalid)

    def test_all_compact_codes_and_interval_boundaries(self):
        for channel, tx, rx, interval in itertools.product(range(4), range(4), range(4), (0, 1, 255, 256, 65535)):
            config = LegacyP2PConfig(255, channel, tx, rx, interval)
            self.assertEqual(config, LegacyP2PConfig.decode(config.encode()))

    def test_rejects_truncation_trailing_data_and_unknown_flags(self):
        for data in (b"", bytes(3), bytes(5), bytes.fromhex("00400000"), bytes.fromhex("00800000")):
            with self.assertRaises(ValueError):
                LegacyP2PConfig.decode(data)
        for args in ((256, 0, 0, 0, 1), (0, 4, 0, 0, 1), (0, 0, -1, 0, 1), (0, 0, 0, 0, 65536)):
            with self.assertRaises(ValueError):
                LegacyP2PConfig(*args).encode()

    def test_all_mode_gate_combinations(self):
        for feature, local, accessory, unavailable in itertools.product((False, True), repeat=4):
            result = select_item_localizer_mode(extended_feature=feature, local_support=local,
                                                accessory_nbamms=accessory, slot_unavailable=unavailable)
            expected = "nbamms" if (feature, local, accessory, unavailable) == (True, True, True, False) else "apple_p2p"
            self.assertEqual(expected, result)


if __name__ == "__main__":
    unittest.main()
