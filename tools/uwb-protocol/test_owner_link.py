import hashlib
from types import SimpleNamespace
import unittest

from owner_link import derive_from_matched_secret, derive_for_observed_candidate


class OwnerLinkTests(unittest.TestCase):
    def test_matches_native_commoncrypto_synthetic_vectors(self):
        # Independently checked against Apple's native CommonCrypto X9.63 API.
        expected = (
            "23e319f8011baeb5f69fb53088d0a8594ef52a04128e30166005df2eb2f5ed1e",
            "dace21a1dbb487fa20adcaed176fbdfcea26ade80ceeab0784841b756dcb21a4",
            "e6eceee9f9c42ff01c970568e18eb173ce11462fc728554389c177904b729234",
        )
        secret = bytes(range(32))
        for vector in expected:
            secret = hashlib.sha256(secret + b"\0\0\0\1update").digest()
            material = derive_from_matched_secret(secret)
            self.assertEqual(material.connection_token.hex(), vector)
            self.assertEqual(material.temporary_ltk.hex(), vector[:32])
            self.assertEqual(repr(material), "OwnerLinkMaterial()")

    def test_wrong_address_never_reads_secret(self):
        class Generator:
            def __getitem__(self, index):
                return SimpleNamespace(mac_address="C1:02:03:04:05:06")
            def _get_sk(self, index):
                raise AssertionError("must reject before secret access")
        accessory = SimpleNamespace(_primary_gen=Generator())
        with self.assertRaisesRegex(ValueError, "does not match"):
            derive_for_observed_candidate(accessory, "primary", 31, "C1:02:03:04:05:07")

    def test_invalid_secret_and_branch_are_rejected(self):
        for secret in (b"", bytes(31), bytes(33), "x" * 32):
            with self.assertRaises(ValueError):
                derive_from_matched_secret(secret)
        for index in (-1, 100001, True, 1.0):
            with self.assertRaises(ValueError):
                derive_for_observed_candidate(None, "primary", index, "C1:02:03:04:05:06")


if __name__ == "__main__":
    unittest.main()
