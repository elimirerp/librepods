"""Synthetic recovery boundary tests. No live account, ADI, escrow or Bluetooth."""
import asyncio
import copy
import json
import sys
import unittest
from datetime import datetime, timezone
from enum import Enum
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "main/python"))
sys.path.insert(0, str(Path(__file__).resolve().parents[4] / "vendor/findmy-account"))
import findmy_case_recovery as recovery

NOW = datetime(2026, 10, 9, tzinfo=timezone.utc)


class State(Enum):
    LOGGED_IN = 3
    REQUIRE_2FA = 1


class Unauthorized(Exception): pass
class Invalid(Exception): pass


def escrow(label="PRIVATE-ESCROW", model="MacBookPro18,1", bottle="PRIVATE-BOTTLE"):
    return SimpleNamespace(label=label, bottle_id=bottle, device_model=model, escrowed_at=NOW)


def beacon(name="PRIVATE-CASE", position=2, undecryptable=False):
    stable = f"a:/owned~#¶type§slot§{'SYNTHETIC1234'.encode().hex()}§{position}§"
    return SimpleNamespace(name=name, record_type="MasterBeaconRecord", zone_name="BeaconStore",
        source=None, undecryptable=undecryptable, values=dict(stableIdentifier=stable,
        groupIdentifier="PRIVATE-GROUP", privateKey=b"SYNTHETIC-PRIVATE-KEY", sharedSecret=b"SYNTHETIC-SECRET"))


def alignment(name="PRIVATE-CASE", index=12):
    return SimpleNamespace(record_type="KeyAlignmentRecord", zone_name="BeaconStore", source=None,
        undecryptable=False, values=dict(beaconIdentifier=name, lastIndexObserved=index,
                                       lastIndexObservationDate=NOW))


class RecoveryTests(unittest.TestCase):
    def setUp(self):
        self.loop = asyncio.new_event_loop()
        self.state = dict(ids=dict(uid="SYNTHETIC-UID", devid="SYNTHETIC-DEVICE"),
            account=dict(username="SYNTHETIC-USER", password=None),
            login=dict(state=3, data={"SYNTHETIC": "STATE"}))
        self.account = SimpleNamespace(login_state=State.LOGGED_IN, _evt_loop=self.loop,
                                      to_json=lambda: self.state)
        self.session = SimpleNamespace(account=self.account, deps=SimpleNamespace(State=State))
        self.calls = []
        self.snapshots = []
        self.closed = []
        self.viable = [escrow(), escrow("PRIVATE-OTHER", "iPhone16,2", "OTHER-BOTTLE")]
        self.raw = [beacon(), alignment()]
        self.decoded = self.raw
        self.open_error = self.unlock_error = self.close_error = None
        self.pages = None
        outer = self

        def create(session, snapshot):
            outer.snapshots.append(snapshot)
            outer.calls.append(("create", session, copy.deepcopy(snapshot), asyncio.get_running_loop()))
            async def close():
                outer.closed.append("account")
            return SimpleNamespace(close=close)

        class Client:
            @classmethod
            async def open(cls, account):
                outer.calls.append(("open", account, asyncio.get_running_loop()))
                if outer.open_error:
                    raise outer.open_error
                result = cls()
                result.store = result
                result.client = result
                return result

            async def close(self):
                outer.closed.append("client")
                if outer.close_error:
                    raise outer.close_error

            async def recovery_options(self):
                return SimpleNamespace(recoverable=outer.viable)

            async def unlock(self, option, passcode, **kwargs):
                outer.calls.append(("unlock", option, passcode, kwargs, asyncio.get_running_loop()))
                if outer.unlock_error:
                    raise outer.unlock_error

            async def zone_keys(self): return ["SYNTHETIC-ZONE-KEY"]
            async def zone_record_defaults(self, keys): return {"SYNTHETIC": "DEFAULT"}

            async def record_sync(self, zone, **kwargs):
                outer.calls.append(("records", zone, kwargs))
                if outer.pages is not None:
                    return outer.pages.pop(0)
                return SimpleNamespace(changes=outer.raw, status=3, continuation_token=None)

        def decrypt(raw, keys, **kwargs):
            outer.calls.append(("decrypt", raw, keys, kwargs))
            return outer.decoded

        def accessory(record, **kwargs):
            outer.calls.append(("accessory", record, kwargs))
            return SimpleNamespace(private_material="SYNTHETIC-KEY", exact_record=record.name)

        self.deps = SimpleNamespace(create_account=create, Client=Client, convert=lambda raw, zone: raw,
            decrypt=decrypt, accessory=accessory, Unauthorized=Unauthorized, Invalid=Invalid)
        self.recovery = recovery.CaseRecovery(self.session, self.deps)

    def tearDown(self):
        # The vendored Closable GC hook can schedule an idempotent close after
        # the tested constructor coroutine returns. Drain those offline closes.
        for _ in range(3):
            pending = asyncio.all_tasks(self.loop)
            if not pending:
                break
            self.loop.run_until_complete(asyncio.gather(*pending))
        self.loop.close()
    def list_options(self): return json.loads(self.recovery.list_options("SYNTHETIC-APPLE-PASSWORD"))
    def recover(self, option=None):
        if option is None: option = self.list_options()["options"][0]["id"]
        return json.loads(self.recovery.recover(option, "SYNTHETIC-APPLE-PASSWORD", "SYNTHETIC-DEVICE-PASSWORD"))

    def test_constructor_inert_and_list_uses_same_session_loop_deep_copied_identity(self):
        self.assertEqual(self.calls, [])
        before = copy.deepcopy(self.state)
        result = self.list_options()
        self.assertEqual(result["state"], "choose_device")
        self.assertEqual(result["options"][0]["label"], "MacBookPro18,1 · 2026-10-09")
        self.assertIs(self.calls[0][1], self.session)
        self.assertEqual(self.calls[0][2]["ids"], self.state["ids"])
        self.assertEqual(self.calls[0][2]["account"]["password"], "SYNTHETIC-APPLE-PASSWORD")
        self.assertIs(self.calls[0][3], self.loop)
        self.assertEqual(self.state, before)
        self.assertIsNone(self.snapshots[0]["account"]["password"])
        self.assertEqual(self.closed, ["client", "account"])
        self.assertNotIn("PRIVATE", json.dumps(result))
        self.assertNotIn("SYNTHETIC-APPLE-PASSWORD", self.recovery.status())

    def test_missing_password_and_partial_login_never_open_recovery(self):
        result = json.loads(self.recovery.list_options(""))
        self.assertEqual(result["state"], "needs_password")
        self.account.login_state = State.REQUIRE_2FA
        result = self.list_options()
        self.assertEqual(result["reason"], "signed_in_session_required")
        self.assertEqual(self.calls, [])

    def test_running_loop_rejected_before_create(self):
        async def attempt(): return self.list_options()
        result = self.loop.run_until_complete(attempt())
        self.assertEqual(result["reason"], "account_worker_required")
        self.assertEqual(self.calls, [])

    def test_bounded_and_unique_escrow_options(self):
        for viable in ([], [escrow()] * 65, [escrow(), escrow()]):
            self.viable = viable
            result = self.list_options()
            self.assertEqual(result["state"], "recovery_unavailable")
            self.assertEqual(result["options"], [])

    def test_hostile_model_sanitized_not_device_names_serials_or_labels(self):
        self.viable = [escrow(model="PRIVATE-MODEL\nTOKEN")]
        result = self.list_options()
        self.assertEqual(result["options"][0]["label"], "Unknown model · 2026-10-09")
        self.assertNotIn("PRIVATE", json.dumps(result))

    def test_exact_escrow_choice_revalidated_before_passcode_attempt(self):
        option = self.list_options()["options"][0]["id"]
        self.viable[0] = escrow(bottle="CHANGED-BOTTLE")
        result = self.recover(option)
        self.assertEqual(result["reason"], "selected_escrow_record_changed")
        self.assertFalse(any(call[0] == "unlock" for call in self.calls))

    def test_missing_passcode_or_stale_handle_does_not_open_or_unlock(self):
        option = self.list_options()["options"][0]["id"]
        count = len(self.calls)
        self.assertEqual(json.loads(self.recovery.recover(option, "pw", ""))["state"], "needs_device_passcode")
        self.assertEqual(self.recover("unknown")["state"], "needs_options")
        self.assertEqual(len(self.calls), count)
        with patch.object(recovery.time, "monotonic", return_value=self.recovery._option_expiry + 1):
            self.assertEqual(self.recover(option)["state"], "needs_options")

    def test_recovery_one_explicit_manatee_attempt_and_filter_before_decryption(self):
        unrelated = beacon("unrelated")
        unrelated.record_type = "NamingRecord"
        wrong_zone = beacon("wrong-zone")
        wrong_zone.zone_name = "OtherZone"
        self.raw += [unrelated, wrong_zone]
        self.decoded = [beacon(), alignment(), beacon("BUD", position=0)]
        result = self.recover()
        self.assertEqual(result["state"], "choose_case")
        self.assertFalse(result["keysAvailable"])
        self.assertEqual(len(result["cases"]), 1)
        unlock = [call for call in self.calls if call[0] == "unlock"]
        self.assertEqual(len(unlock), 1)
        self.assertIs(unlock[0][1], self.viable[0])
        self.assertEqual(unlock[0][3], {"views": ("Manatee",)})
        decrypted = next(call for call in self.calls if call[0] == "decrypt")
        self.assertEqual(len(decrypted[1]), 2)
        self.assertEqual(decrypted[3], {"default_master_keys": {"SYNTHETIC": "DEFAULT"}})
        self.assertNotIn("PRIVATE", json.dumps(result))
        self.assertNotIn("SYNTHETIC-KEY", json.dumps(result))
        self.assertEqual(self.closed, ["client", "account", "client", "account"])

    def test_explicit_case_selection_retains_only_exact_case_material(self):
        self.raw += [beacon("OTHER-CASE")]
        result = self.recover()
        case = result["cases"][1]["id"]
        selected = json.loads(self.recovery.select_case(case))
        self.assertEqual(selected["state"], "keys_ready")
        self.assertTrue(selected["keysAvailable"])
        self.assertEqual(self.recovery.selected_accessory().exact_record, "OTHER-CASE")
        self.assertEqual(self.recovery._cases, {})
        self.assertEqual(self.recovery._options, {})
        self.assertNotIn("PRIVATE", self.recovery.status())

    def test_ambiguous_or_unreadable_alignment_and_case_ids_fail_closed(self):
        for decoded, reason in (([beacon(), beacon()], "case_identity_ambiguous"),
                ([beacon(), alignment(), alignment()], "case_alignment_ambiguous"),
                ([beacon(), alignment(index=True)], "case_alignment_incomplete"),
                ([beacon(undecryptable=True)], "case_missing_or_incomplete"),
                ([beacon(position=0)], "case_missing_or_incomplete")):
            self.decoded = decoded
            self.assertEqual(self.recover()["reason"], reason)
            self.assertEqual(self.recovery._cases, {})

    def test_strict_component_parser_rejects_fuzzy_or_malformed_identity(self):
        valid = beacon().values["stableIdentifier"]
        self.assertEqual(recovery._position(valid), 2)
        self.assertEqual(recovery._position(valid[:-1]), 2)
        for value in (None, "case", valid.replace("a:/", "b:/"),
                      valid.replace("§2§", "§12§"), "a:/~#¶type§slot§zz§2", valid + "§bad"):
            self.assertIsNone(recovery._position(value))

    def test_record_pagination_partial_and_cycles_do_not_decrypt(self):
        for pages in ([SimpleNamespace(changes=[beacon()], status=None, continuation_token=None)],
                [SimpleNamespace(changes=[beacon()], status=None, continuation_token=b"a")] * 2):
            self.pages = list(pages)
            result = self.recover()
            self.assertIn(result["reason"], {"record_pagination_incomplete", "record_pagination_cycle"})
        self.assertFalse(any(call[0] == "decrypt" for call in self.calls))

    def test_account_replacement_or_key_expiry_drops_memory_material(self):
        result = self.recover()
        self.recovery.select_case(result["cases"][0]["id"])
        self.session.account = SimpleNamespace(login_state=State.LOGGED_IN, _evt_loop=self.loop)
        self.assertEqual(json.loads(self.recovery.status())["state"], "idle")
        self.assertIsNone(self.recovery._selected)
        self.session.account = self.account
        result = self.recover()
        self.recovery.select_case(result["cases"][0]["id"])
        with patch.object(recovery.time, "monotonic", return_value=self.recovery._key_expiry + 1):
            self.assertEqual(json.loads(self.recovery.status())["state"], "idle")

    def test_auth_failure_keeps_original_signin_and_releases_temporary_clone(self):
        self.open_error = Unauthorized("PRIVATE-AUTH-DETAIL")
        result = self.list_options()
        self.assertEqual(result["state"], "authentication_required")
        self.assertEqual(result["stage"], "authentication")
        self.assertEqual(self.closed, ["account"])
        self.assertEqual(self.account.login_state, State.LOGGED_IN)
        self.assertIsNone(self.state["account"]["password"])
        self.assertNotIn("PRIVATE", json.dumps(result))

    def test_failed_device_recovery_not_retried_and_no_exception_text_returned(self):
        self.unlock_error = ValueError("PRIVATE-DEVICE-PASSWORD")
        result = self.recover()
        self.assertEqual(result["stage"], "device_recovery")
        self.assertEqual(len([call for call in self.calls if call[0] == "unlock"]), 1)
        self.assertNotIn("PRIVATE", json.dumps(result))
        self.assertEqual(self.recovery._cases, {})

    def test_cleanup_failure_does_not_expose_recovered_cases(self):
        option = self.list_options()["options"][0]["id"]
        self.close_error = ValueError("PRIVATE-CLOSE")
        result = self.recover(option)
        self.assertEqual(result["state"], "recovery_unavailable")
        self.assertEqual(result["cases"], [])
        self.assertEqual(self.recovery._cases, {})
        self.assertEqual(self.closed[-1], "account")

    def test_record_total_bound_and_page_limit_include_irrelevant_changes(self):
        excluded = beacon()
        excluded.record_type = "NamingRecord"
        self.pages = [SimpleNamespace(changes=[excluded] * 64, status=None, continuation_token=str(i).encode())
                      for i in range(5)]
        self.assertEqual(self.recover()["reason"], "record_change_limit")
        self.pages = [SimpleNamespace(changes=[], status=None, continuation_token=str(i).encode())
                      for i in range(9)]
        self.assertEqual(self.recover()["reason"], "record_page_limit")
        self.assertEqual(len(self.pages), 1)
        self.assertFalse(any(call[0] == "decrypt" for call in self.calls))

    def test_device_recovery_timeout_no_retry_closes_resources(self):
        async def delayed(client, *args, **kwargs):
            await asyncio.sleep(1)
        with patch.object(self.deps.Client, "unlock", delayed), patch.object(recovery, "REQUEST_TIMEOUT", 0.001):
            result = self.recover()
        self.assertEqual(result["reason"], "recovery_timeout")
        self.assertEqual(result["stage"], "device_recovery")
        self.assertEqual(self.closed[-2:], ["client", "account"])

    def test_unknown_case_handle_clears_memory_and_cannot_expose_previous_case(self):
        self.recover()
        result = json.loads(self.recovery.select_case("unknown"))
        self.assertFalse(result["keysAvailable"])
        self.assertEqual(self.recovery._cases, {})
        self.assertIsNone(self.recovery._selected)

    def test_exact_vendored_constructor_preserves_native_identity_without_real_requests(self):
        from findmy.reports import BaseAnisetteProvider, DeviceIdentity
        profile = dict(model="MacBookPro18,1", os_name="macOS", os_version="26.4",
                       os_build="SYNTHETIC", cfnetwork="SYNTHETIC", darwin="SYNTHETIC")
        session = SimpleNamespace(bridge=SimpleNamespace(),
            identity=dict(profile=profile, serial="SYNTHETIC-SERIAL"),
            deps=SimpleNamespace(ProviderBase=BaseAnisetteProvider, Identity=DeviceIdentity))
        snapshot = copy.deepcopy(self.state)
        snapshot["account"].update(password="SYNTHETIC-TRANSIENT", info={})
        deps = recovery._dependencies()
        async def construct():
            clone = deps.create_account(session, snapshot)
            try:
                saved = clone.to_json()
                self.assertEqual(saved["ids"], snapshot["ids"])
                self.assertEqual(saved["account"]["password"], "SYNTHETIC-TRANSIENT")
                self.assertEqual(clone.serial, "SYNTHETIC-SERIAL")
                self.assertEqual(clone.timeout, 30)
                self.assertEqual(saved["anisette"]["identity"], profile)
            finally:
                await clone.close()
        self.loop.run_until_complete(construct())
        self.assertIsNone(self.state["account"]["password"])

    def test_exact_vendored_accessory_parser_accepts_strict_case_and_alignment(self):
        self.deps.accessory = recovery._dependencies().accessory
        case = beacon()
        case.values.update(privateKey=b"\x01" * 28, sharedSecret=b"\x02" * 32,
                           sharedSecret2=b"\x03" * 32, pairingDate=NOW)
        self.decoded = [case, alignment()]
        result = self.recover()
        self.assertEqual(result["state"], "choose_case")
        selected = json.loads(self.recovery.select_case(result["cases"][0]["id"]))
        self.assertTrue(selected["keysAvailable"])
        self.assertEqual(self.recovery.selected_accessory().serial_number, "SYNTHETIC1234")

    def test_decrypted_owned_group_components_and_radio_access_on_same_loop(self):
        self.decoded = [beacon(), beacon("LEFT", position=0), beacon("RIGHT", position=1), alignment()]
        result = self.recover()
        self.assertEqual(result["groups"], [dict(label="Owned accessory group 1", components=["Left earbud", "Right earbud", "Case"])])
        self.recovery.select_case(result["cases"][0]["id"])
        async def get(): return self.recovery.radio_accessory()
        self.assertEqual(self.loop.run_until_complete(get()).exact_record, "PRIVATE-CASE")
        wrong_loop = asyncio.new_event_loop()
        try:
            with self.assertRaises(recovery._Failure): wrong_loop.run_until_complete(get())
        finally:
            wrong_loop.close()
        self.assertNotIn("PRIVATE", self.recovery.status())


if __name__ == "__main__": unittest.main()
