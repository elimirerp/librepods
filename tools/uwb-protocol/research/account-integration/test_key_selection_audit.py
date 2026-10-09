"""Synthetic-only branch and alignment audit of the pinned FindMy library."""
import hashlib
from datetime import datetime, timedelta, timezone
from pathlib import Path
import sys
from types import SimpleNamespace
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1] /
                      "elimirerp-librepods/android/vendor/findmy-account"))
from cryptography.hazmat.primitives.asymmetric import ec
from findmy.accessory import FindMyAccessory
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "elimirerp-librepods/tools/uwb-protocol"))
import account_case_identity as proof

NOW = datetime(2026, 10, 8, tzinfo=timezone.utc)
MASTER = (1).to_bytes(28, "big")
SKN = bytes(range(32))
SKS = bytes(range(32, 64))
N = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D


def kdf(z, label, length):
    return b"".join(hashlib.sha256(z + i.to_bytes(4, "big") + label).digest()
                    for i in range(1, (length + 31) // 32 + 1))[:length]


def expected_public(seed, index):
    for _ in range(index):
        seed = kdf(seed, b"update", 32)
    diversifier = kdf(seed, b"diversify", 72)
    u = int.from_bytes(diversifier[:36], "big") % (N - 1) + 1
    v = int.from_bytes(diversifier[36:], "big") % (N - 1) + 1
    scalar = (u * int.from_bytes(MASTER, "big") + v) % N
    return ec.derive_private_key(scalar, ec.SECP224R1()).public_key().public_numbers().x.to_bytes(28, "big")


def accessory(**kwargs):
    return FindMyAccessory(master_key=MASTER, skn=SKN, sks=SKS, paired_at=NOW,
                           identifier=None, **kwargs)


class KeySelectionAudit(unittest.TestCase):
    def test_independent_sha256_diversification_and_primary_zero(self):
        acc = accessory()
        for i in (0, 1, 31, 96, 2, 129):
            self.assertEqual(acc._primary_key_at(i).adv_key_bytes, expected_public(SKN, i))
        self.assertIn(expected_public(SKN, 0), {k.adv_key_bytes for k in acc.keys_at(0)})

    def test_secondary_zero_is_not_selected(self):
        acc = accessory()
        keys = {k.adv_key_bytes for k in acc.keys_at(0)}
        self.assertIn(expected_public(SKS, 1), keys)
        self.assertIn(expected_public(SKS, 2), keys)
        self.assertNotIn(expected_public(SKS, 0), keys)

    def test_native_plus_one_is_mostly_covered_by_contiguous_window(self):
        acc = accessory()
        current = {acc._primary_key_at(i).adv_key_bytes for i in range(79)}
        shifted = {expected_public(SKN, i + 1) for i in range(79)}
        self.assertEqual(len(current & shifted), 78)
        self.assertEqual(shifted - current, {expected_public(SKN, 79)})

    def test_alignment_changes_window_not_seed(self):
        acc = accessory(alignment_date=NOW, alignment_index=80)
        self.assertEqual(acc.get_min_index(NOW - timedelta(hours=12)), 32)
        self.assertEqual(acc.get_max_index(NOW + timedelta(hours=12)), 128)
        self.assertEqual(acc._primary_key_at(31).adv_key_bytes, expected_public(SKN, 31))

    def test_secondary_candidate_index_is_primary_lower_bound(self):
        acc = accessory(alignment_date=NOW, alignment_index=31)
        candidates = acc.current_keys(now=NOW)
        for key in acc._secondary_keys_at(31):
            self.assertEqual(candidates[key], 31)
        # Both secondary seeds are actually chain indices1/2, not31.
        self.assertEqual({k.adv_key_bytes for k in acc._secondary_keys_at(31)},
                         {expected_public(SKS, 1), expected_public(SKS, 2)})

    def test_actual_library_helper_branch_metadata(self):
        record = SimpleNamespace(name="synthetic-case", values={"groupIdentifier": "synthetic-group",
            "stableIdentifier": "a:/fixture~#¶model§hwid§53455249414c§2§"})
        doc = proof.candidate_document(record, accessory(), NOW, expected_group="synthetic-group")
        self.assertEqual(doc["selectionBasis"], "exact-owned-group+decoded-component-position2")
        self.assertEqual(len(doc["candidates"]), 51)
        secondary = [r for r in doc["candidates"] if r["keySequence"] == "secondary"]
        self.assertEqual({r["branchIndex"] for r in secondary}, {1, 2})
        self.assertEqual({r["index"] for r in secondary}, {0})


if __name__ == "__main__":
    unittest.main()
