import asyncio
import contextlib
from datetime import datetime, timezone
import io
import json
import os
from pathlib import Path
from types import SimpleNamespace as NS
import tempfile
import unittest

import account_case_identity as proof


NOW = datetime(2026, 10, 8, tzinfo=timezone.utc)
GROUP = "synthetic-group"


def record(position=2, group=GROUP, name="synthetic-case", kind="MasterBeaconRecord"):
    return NS(name=name, record_type=kind, undecryptable={}, values={
        "groupIdentifier": group,
        "stableIdentifier": "a:/synthetic~#¶synthetic-model§synthetic-hwid§53455249414c§" + str(position),
        "privateKey": b"do-not-export-master-key", "sharedSecret": b"do-not-export-secret",
    })


class Accessory:
    def get_min_index(self, _): return 4
    def get_max_index(self, _): return 5
    def current_mac_addresses(self, **_): return {"C0:01:02:03:04:05": 4}
    def _primary_key_at(self, index):
        return NS(mac_address="C0:01:02:03:04:05" if index == 4 else "C0:11:22:33:44:55")
    def _secondary_keys_at(self, index):
        return (NS(mac_address="C0:11:22:33:44:66"), NS(mac_address="C0:11:22:33:44:77"))


class Cloud:
    def __init__(self, records): self.records, self.calls = records, []
    async def record_sync(self, zone, **kwargs):
        self.calls.append((zone, kwargs))
        return NS(changes=self.records, status=3, continuation_token=None)


class Store:
    def __init__(self, records): self.client = Cloud(records)
    async def zone_record_defaults(self, _): return []


class Client:
    def __init__(self, records): self.store, self.calls = Store(records), []
    async def recovery_options(self):
        self.calls.append("recovery_options")
        return NS(recoverable=[NS(device_model="Mac14,1", escrowed_at=NOW,
                                  device_name="PRIVATE_NAME", serial="PRIVATE_SERIAL")])
    async def unlock(self, _, passcode, *, views):
        self.calls.append(("unlock", views))
        if passcode != "synthetic-passcode": raise AssertionError("wrong fixture")
    async def zone_keys(self): self.calls.append("zone_keys"); return []
    # No join, rename, location, registration or radio methods are provided.


class ProofTests(unittest.TestCase):
    def test_group_shape_masks_every_identifier_and_bounds_output(self):
        matched = record()
        other = record(group="unrelated", name="other")
        other.values["stableIdentifier"] = "PRIVATE_UNRELATED"
        metadata = proof.case_metadata([matched, other], GROUP)
        shapes = metadata["exactGroupStableShapes"]
        self.assertEqual(len(shapes), 1)
        self.assertEqual(shapes[0]["finalRoleMarker"], "2")
        self.assertEqual(shapes[0]["strictPosition"], 2)
        serialized = json.dumps(metadata)
        for secret in ("synthetic", "53455249414c", "PRIVATE_UNRELATED", GROUP):
            self.assertNotIn(secret, serialized)
        self.assertEqual(shapes[0]["sectionCount"], 4)
        self.assertIn("§", shapes[0]["skeleton"])
        self.assertNotIn("skeleton", proof.stable_shape("x" * 1025))
        self.assertEqual(len(proof.case_metadata([record() for _ in range(20)], GROUP)
                             ["exactGroupStableShapes"]), 16)

    def test_exact_case_selection_and_ambiguity(self):
        case = record()
        self.assertIs(proof.select_case([record(0), record(1), case, record(group="other")], GROUP), case)
        for position in (0, 1, 2):
            terminated = record(position)
            terminated.values["stableIdentifier"] += "§"
            self.assertEqual(proof.case_position(terminated.values["stableIdentifier"]), position)
            self.assertIsNone(proof.case_position(terminated.values["stableIdentifier"] + "§"))
        for records in ([], [record(0)], [case, record(name="duplicate")]):
            with self.assertRaises(proof.ProofError): proof.select_case(records, GROUP)
        for stable in ("a:/x~#invalid", "a:/x~#¶m§h§zz§2", "a:/x~#¶m§h§00§3"):
            self.assertIsNone(proof.case_position(stable))

    def test_private_output_exact_allowlist_and_exclusive_creation(self):
        doc = proof.candidate_document(record(), Accessory(), NOW)
        self.assertEqual(set(doc), {"schemaVersion", "component", "groupIdentifier", "beaconIdentifier", "componentPosition", "selectionBasis", "generatedAt", "candidates"})
        serialized = json.dumps(doc)
        self.assertNotIn("do-not-export", serialized)
        self.assertNotIn("stableIdentifier", serialized)
        self.assertEqual(doc["candidates"][0]["keySequence"], "primary")
        self.assertEqual(doc["candidates"][0]["branchIndex"], 4)
        with tempfile.TemporaryDirectory() as folder:
            path = Path(folder) / "case.json"
            proof.write_private_output(path, doc)
            self.assertEqual(path.stat().st_mode & 0o777, 0o600)
            with self.assertRaises(FileExistsError): proof.write_private_output(path, {})
            link = Path(folder) / "link.json"
            link.symlink_to(path)
            with self.assertRaises(FileExistsError): proof.write_private_output(link, {})
            self.assertEqual(json.loads(path.read_text()), doc)

    def test_truthful_roles_expected_group_and_branch_indices(self):
        for position, component in ((0, "left-bud"), (1, "right-bud"), (2, "case")):
            doc = proof.candidate_document(record(position), Accessory(), NOW, expected_group=GROUP)
            self.assertEqual(doc["component"], component)
            self.assertEqual(doc["componentPosition"], position)
            self.assertEqual(doc["selectionBasis"], "exact-owned-group+decoded-component-position" + str(position))
        with self.assertRaises(proof.ProofError):
            proof.candidate_document(record(), Accessory(), NOW, expected_group="other")
        unresolved = record()
        unresolved.values["stableIdentifier"] = "unsupported"
        doc = proof.candidate_document(unresolved, Accessory(), NOW)
        self.assertEqual(doc["component"], "unknown")
        self.assertNotIn("componentPosition", doc)
        class Secondary(Accessory):
            def get_min_index(self, _): return 31
            def get_max_index(self, _): return 32
            def current_mac_addresses(self, **_): return {"C0:11:22:33:44:66": 31}
        row = proof.candidate_document(record(), Secondary(), NOW)["candidates"][0]
        self.assertEqual((row["index"], row["keySequence"], row["branchIndex"]), (31, "secondary", 1))
        class Collision(Accessory):
            def _secondary_keys_at(self, index):
                return (NS(mac_address="C0:01:02:03:04:05"), NS(mac_address="C0:11:22:33:44:77"))
        with self.assertRaises(proof.ProofError):
            proof.candidate_document(record(), Collision(), NOW)

    def test_wide_window_invalid_indices_and_addresses_fail_closed(self):
        class Wide(Accessory):
            def get_max_index(self, _): return 10000
        class Bad(Accessory):
            def current_mac_addresses(self, **_): return {"00:01:02:03:04:05": 4}
        class Bool(Accessory):
            def current_mac_addresses(self, **_): return {"C0:01:02:03:04:05": True}
        for accessory in (Wide(), Bad(), Bool()):
            with self.assertRaises(proof.ProofError): proof.candidate_document(record(), accessory, NOW)

    def test_only_local_provisioned_provider_and_private_input(self):
        for value in ({"type": "aniRemote", "prov_data": "x"}, {"type": "aniLocal", "prov_data": None}):
            with self.assertRaises(proof.ProofError): proof.local_provider_mapping(value)
        with tempfile.TemporaryDirectory() as folder:
            path = Path(folder) / "state.json"
            path.write_text("{}")
            os.chmod(path, 0o644)
            with self.assertRaises(proof.ProofError): proof.read_private_json(path)
            os.chmod(path, 0o600)
            self.assertEqual(proof.read_private_json(path), {})

    def test_recovery_stage_never_unlocks_or_fetches_records_and_redacts(self):
        client = Client([])
        output = io.StringIO()
        def forbidden(*_): raise AssertionError("must not request input")
        with contextlib.redirect_stdout(output):
            result = asyncio.run(proof.prove(client, "recovery", None, forbidden, forbidden, None))
        self.assertIsNone(result)
        self.assertEqual(client.calls, ["recovery_options"])
        self.assertEqual(client.store.client.calls, [])
        self.assertNotIn("PRIVATE", output.getvalue())

    def test_end_to_end_fake_read_only_route_ignores_unrelated_data(self):
        case = record()
        alignment = NS(name="synthetic-alignment", record_type="KeyAlignmentRecord", undecryptable={},
                       values={"beaconIdentifier": case.name, "lastIndexObserved": 4,
                               "lastIndexObservationDate": NOW})
        location = NS(record_type="SafeLocation", values={"name": "PRIVATE_HOME"})
        client = Client([case, alignment, location])
        def decrypt(rows, *_, **__):
            self.assertEqual([r.record_type for r in rows], ["MasterBeaconRecord", "KeyAlignmentRecord"])
            return rows
        deps = NS(records_from_changes=lambda rows, _: rows, decrypt_records=decrypt,
                  accessory_from_record=lambda *_, **__: Accessory())
        output = io.StringIO()
        with contextlib.redirect_stdout(output):
            doc = asyncio.run(proof.prove(client, "candidates", GROUP, lambda _: 0,
                                         lambda _: "synthetic-passcode", deps))
        self.assertEqual(client.calls, ["recovery_options", ("unlock", ("Manatee",)), "zone_keys"])
        self.assertEqual(doc["componentPosition"], 2)
        for value in ("PRIVATE", "synthetic-passcode", "C0:01", "do-not-export", GROUP):
            self.assertNotIn(value, output.getvalue())

    def test_optional_alignment_and_bounded_pagination(self):
        client = Client([record()])
        deps = NS(records_from_changes=lambda rows, _: rows, decrypt_records=lambda rows, *_, **__: rows,
                  accessory_from_record=lambda _, *, alignment: Accessory() if alignment is None else None)
        with contextlib.redirect_stdout(io.StringIO()):
            doc = asyncio.run(proof.prove(client, "candidates", GROUP, lambda _: 0,
                                         lambda _: "synthetic-passcode", deps))
        self.assertEqual(doc["component"], "case")
        class Endless(Cloud):
            async def record_sync(self, *_args, **_kwargs):
                return NS(changes=[], status=1, continuation_token=b"unchanged")
        with self.assertRaises(proof.ProofError):
            asyncio.run(proof.fetch_bounded_records(NS(client=Endless([])), lambda rows, _: rows))

    def test_private_same_uid_control_and_only_owned_output_refresh(self):
        async def exercise(folder):
            output = Path(folder) / "case.json"
            original = proof.candidate_document(record(), Accessory(), NOW)
            proof.write_private_output(output, original)
            control = Path(folder) / "control/control.sock"
            holder = {"record": record(), "accessory": Accessory(), "decoded": [record()],
                      "group": GROUP, "deps": NS(accessory_from_record=lambda *_a, **_kw: Accessory())}
            task = asyncio.create_task(proof.serve_candidates(control, output, holder))
            try:
                for _ in range(100):
                    if control.exists(): break
                    await asyncio.sleep(0.005)
                self.assertTrue(control.exists())
                self.assertEqual(control.stat().st_mode & 0o777, 0o600)
                self.assertEqual(control.parent.stat().st_mode & 0o777, 0o700)
                async def send(message):
                    reader, writer = await asyncio.open_unix_connection(str(control))
                    writer.write(json.dumps(message).encode() + b"\n")
                    await writer.drain()
                    answer = json.loads(await reader.readline())
                    writer.close()
                    await writer.wait_closed()
                    return answer
                status = await send({"action": "status"})
                self.assertTrue(status["caseReady"])
                self.assertNotIn("address", json.dumps(status))
                for action in ("register", "locate", "join", "connect", "fetch_keys"):
                    self.assertFalse((await send({"action": action}))["ok"])
                self.assertFalse((await send({"action": "status", "path": "arbitrary"}))["ok"])
                self.assertTrue((await send({"action": "refresh_candidates"}))["ok"])
                self.assertEqual(output.stat().st_mode & 0o777, 0o600)
                # Replacing the selected file externally is not adopted by the server.
                output.unlink()
                output.write_text("{}")
                os.chmod(output, 0o600)
                self.assertFalse((await send({"action": "refresh_candidates"}))["ok"])
                self.assertEqual(output.read_text(), "{}")
                self.assertTrue((await send({"action": "stop"}))["ok"])
                await asyncio.wait_for(task, timeout=2)
                self.assertFalse(control.exists())
            finally:
                if not task.done():
                    task.cancel()
                    with contextlib.suppress(asyncio.CancelledError): await task
        with tempfile.TemporaryDirectory() as folder, contextlib.redirect_stdout(io.StringIO()):
            asyncio.run(exercise(folder))

    def test_unselected_records_retained_metadata_and_exact_case_reselection(self):
        async def exercise(folder):
            case = record(group="different-uuid-domain")
            holder = {"decoded": [case], "group": GROUP,
                      "deps": NS(accessory_from_record=lambda *_args, **_kwargs: Accessory())}
            control = Path(folder) / "control/control.sock"
            output = Path(folder) / "case.json"
            task = asyncio.create_task(proof.serve_candidates(control, output, holder))
            try:
                for _ in range(100):
                    if control.exists(): break
                    await asyncio.sleep(0.005)
                async def send(message):
                    reader, writer = await asyncio.open_unix_connection(str(control))
                    writer.write(json.dumps(message).encode() + b"\n")
                    await writer.drain()
                    result = json.loads(await reader.readline())
                    writer.close()
                    await writer.wait_closed()
                    return result
                self.assertFalse((await send({"action": "status"}))["caseReady"])
                metadata = await send({"action": "metadata"})
                self.assertEqual(metadata["metadata"]["exactGroupMatchCount"], 0)
                self.assertEqual(metadata["metadata"]["positionCounts"]["2"], 1)
                for secret in (case.name, "different-uuid-domain", "53455249414c", "synthetic-model"):
                    self.assertNotIn(secret, json.dumps(metadata))
                self.assertFalse((await send({"action": "refresh_candidates"}))["ok"])
                self.assertFalse(output.exists())
                self.assertFalse((await send({"action": "select_case_id", "caseIdentifier": "wrong"}))["ok"])
                answer = await send({"action": "select_case_id", "caseIdentifier": case.name})
                self.assertTrue(answer["ok"])
                self.assertNotIn(case.name, json.dumps(answer))
                saved = json.loads(output.read_text())
                self.assertEqual(saved["selectionMethod"], "explicit-exact-case-identifier")
                self.assertEqual(saved["groupIdentifier"], "different-uuid-domain")
                self.assertTrue((await send({"action": "status"}))["caseReady"])
                await send({"action": "stop"})
                await asyncio.wait_for(task, timeout=2)
            finally:
                if not task.done():
                    task.cancel()
                    with contextlib.suppress(asyncio.CancelledError): await task
        with tempfile.TemporaryDirectory() as folder, contextlib.redirect_stdout(io.StringIO()):
            asyncio.run(exercise(folder))


if __name__ == "__main__": unittest.main()
