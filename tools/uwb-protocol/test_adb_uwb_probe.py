import struct
import unittest
from adb_uwb_probe import capabilities, device_info, parse_service_call


class ReadOnlyUciTest(unittest.TestCase):
    def test_android_parcel_golden(self):
        text = "Result: Parcel(\n  0x00000000: 00000000 00000003 00ccbbaa             '........'\n)"
        self.assertEqual(b"\xaa\xbb\xcc", parse_service_call(text))
        self.assertEqual(b'\x00\x00', parse_service_call(
            "Result: Parcel(\t00000000 00000002 00000000  '............')"))

    def test_binder_exception_null_and_truncation(self):
        for text in ("", "0x00000000: ffffffff 00000000", "0x00000000: 00000000 ffffffff",
                     "0x00000000: 00000000 00000010"):
            with self.assertRaises(ValueError):
                parse_service_call(text)

    def test_device_info_omits_vendor_bytes(self):
        payload = b"\0" + struct.pack("<4H", 1, 2, 3, 4) + b"\x03\xaa\xbb\xcc"
        result = device_info(payload)
        self.assertEqual(3, result["phyVersionRaw"])
        self.assertEqual(13, result["responseLength"])
        self.assertEqual(6, len(result))
        with self.assertRaises(ValueError):
            device_info(payload[:-1])

    def test_caps_known_and_unknown_tags_are_distinct(self):
        result = capabilities(bytes.fromhex("00020e025009ff02aabb"), {14: "Channels"})
        self.assertEqual([80, 9], result["capabilities"][0]["valueBytes"])
        self.assertEqual({"tag": 255, "length": 2}, result["capabilities"][1])

    def test_firmware_information_excludes_chip_and_unknown_values(self):
        vendor = bytes.fromhex("000553523230300103010203020204000304deadbeefff02cafe630101")
        payload = b"\0" + struct.pack("<4H", 3, 3, 3, 3) + bytes([len(vendor)]) + vendor
        result = device_info(payload, include_firmware=True)
        self.assertEqual(list(b"SR200"), result["deviceNameBytes"])
        self.assertEqual([1, 2, 3], result["firmwareVersionBytes"])
        self.assertEqual([4, 0], result["vendorUciVersionBytes"])
        self.assertEqual([1], result["firmwareBootModeBytes"])
        self.assertEqual(10, len(result))
        for malformed in (payload[:-1], payload + b"\0",
                          b"\0" + struct.pack("<4H", 3, 3, 3, 3) + b"\1\0"):
            with self.assertRaises(ValueError):
                device_info(malformed, include_firmware=True)

    def test_caps_reject_malformed_counts_lengths_and_trailing_data(self):
        for data in (b"", b"\0", bytes.fromhex("0001"), bytes.fromhex("00010e0250"),
                     bytes.fromhex("000001")):
            with self.assertRaises(ValueError):
                capabilities(data, {})


if __name__ == "__main__":
    unittest.main()
