"""Offline CloudKit metadata tests; no credentials, network, native ADI or radio."""
import asyncio
import json
import sys
import unittest
from enum import Enum
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "main/python"))
# Exercise the exact vendored parser/schema, rather than a separately installed copy.
sys.path.insert(0, str(Path(__file__).resolve().parents[4] / "vendor/findmy-account"))
import findmy_case_metadata as metadata


class State(Enum):
    LOGGED_OUT = 0
    REQUIRE_2FA = 1
    LOGGED_IN = 3


class Unauthorized(Exception):
    pass


def record(kind="MasterBeaconRecord", zone="BeaconStore"):
    return SimpleNamespace(record_type=kind, zone_name=zone, source=None,
                           name="PRIVATE-RECORD-ID", fields={"private": b"PRIVATE-CIPHERTEXT"})


def page(changes=None, token=None, status=3):
    return SimpleNamespace(changes=[] if changes is None else changes,
                           continuation_token=token, status=status)


class MetadataTests(unittest.TestCase):
    def setUp(self):
        self.loop = asyncio.new_event_loop()
        self.async_account = SimpleNamespace(login_state=State.LOGGED_IN,
            service_tokens={"mmeAuthToken": "PRIVATE-MME-TOKEN", "cloudKitToken": "PRIVATE-CK-TOKEN"},
            password=None, serial="PRIVATE-SERIAL", device_uuid="PRIVATE-UUID")
        self.account = SimpleNamespace(login_state=State.LOGGED_IN,
                                      _asyncacc=self.async_account, _evt_loop=self.loop)
        self.session = SimpleNamespace(account=self.account, deps=SimpleNamespace(State=State))
        self.constructed = []
        self.calls = []
        self.closed = []
        self.responses = [page([record()])]
        self.request_error = None
        self.delay = False
        self.close_error = None
        outer = self

        class Store:
            def __init__(self, account):
                outer.constructed.append((account, asyncio.get_running_loop()))
                self.client = self

            async def record_sync(self, zone, **kwargs):
                outer.calls.append((zone, kwargs, asyncio.get_running_loop()))
                if outer.delay:
                    await asyncio.sleep(1)
                if outer.request_error:
                    raise outer.request_error
                return outer.responses.pop(0)

            async def close(self):
                outer.closed.append(asyncio.get_running_loop())
                if outer.close_error:
                    raise outer.close_error

        self.deps = SimpleNamespace(Store=Store, convert=lambda changes, zone: changes,
                                    Unauthorized=Unauthorized)

    def tearDown(self):
        self.loop.close()

    def fetch(self):
        return json.loads(metadata.fetch_account_metadata(self.session, self.deps))

    def assert_failure(self, reason, state="metadata_unavailable"):
        result = self.fetch()
        self.assertEqual((result["state"], result["reason"]), (state, reason))
        self.assertFalse(result["complete"])
        self.assertEqual(result["pagesRead"], 0)
        self.assertEqual(result["masterBeaconChanges"], 0)
        self.assertEqual(result["keyAlignmentChanges"], 0)
        return result

    def test_same_async_account_and_existing_loop_without_auth_mutation(self):
        before = dict(vars(self.async_account))
        result = self.fetch()
        self.assertEqual(result["state"], "encrypted_metadata_available")
        self.assertTrue(result["complete"])
        self.assertEqual(result["masterBeaconChanges"], 1)
        self.assertEqual(self.constructed, [(self.async_account, self.loop)])
        self.assertEqual(self.closed, [self.loop])
        self.assertEqual(self.calls, [("BeaconStore", {"continuation_token": None,
                                                     "max_changes": 64}, self.loop)])
        self.assertEqual(vars(self.async_account), before)
        self.assertFalse(self.loop.is_closed())
        self.assertIs(self.session.account, self.account)
        self.assertFalse(result["caseIdentified"])
        self.assertFalse(result["keysAvailable"])

    def test_exact_types_and_zone_only_and_no_private_data_returned(self):
        self.responses = [page([record(), record("KeyAlignmentRecord"),
            record("NamingRecord"), record("MasterBeaconRecord-extra"),
            record("masterbeaconrecord"), record(zone="OtherZone")])]
        result = self.fetch()
        self.assertEqual(result["masterBeaconChanges"], 1)
        self.assertEqual(result["keyAlignmentChanges"], 1)
        self.assertEqual(result["excludedRecordChanges"], 4)
        self.assertNotIn("PRIVATE", json.dumps(result))

    def test_empty_complete_page_is_successful_read_not_accessory_proof(self):
        self.responses = [page()]
        result = self.fetch()
        self.assertTrue(result["complete"])
        self.assertEqual(result["state"], "no_beacon_metadata")

    def test_empty_incomplete_page_continues_and_nonempty_complete_stops(self):
        self.responses = [page(token=b"PRIVATE-TOKEN-A", status=None),
                          page([record("KeyAlignmentRecord")], token=b"ignored-final", status=3)]
        result = self.fetch()
        self.assertEqual(result["pagesRead"], 2)
        self.assertEqual(result["keyAlignmentChanges"], 1)
        self.assertEqual(self.calls[1][1]["continuation_token"], b"PRIVATE-TOKEN-A")
        self.assertNotIn("PRIVATE", json.dumps(result))

    def test_signed_out_and_partial_2fa_never_construct_client(self):
        for account in (None, SimpleNamespace(login_state=State.REQUIRE_2FA)):
            self.session.account = account
            self.assert_failure("signed_in_session_required", "signed_out")
        self.assertEqual(self.constructed, [])

    def test_missing_or_unsigned_async_session_never_constructs_client(self):
        for account in (None, SimpleNamespace(login_state=State.LOGGED_OUT)):
            self.account._asyncacc = account
            self.assert_failure("async_session_required", "session_unavailable")
        self.assertEqual(self.constructed, [])

    def test_both_existing_cloudkit_tokens_are_required_without_login(self):
        for tokens in ({}, {"mmeAuthToken": "x"}, {"cloudKitToken": "x"},
                       {"mmeAuthToken": "x", "cloudKitToken": b"invalid"}):
            self.async_account.service_tokens = tokens
            self.assert_failure("cloudkit_tokens_required", "service_unavailable")
        self.assertEqual(self.constructed, [])

    def test_closed_or_missing_account_loop_rejected(self):
        self.loop.close()
        self.assert_failure("account_loop_unavailable", "session_unavailable")
        self.account._evt_loop = None
        self.assert_failure("account_loop_unavailable", "session_unavailable")
        self.assertEqual(self.constructed, [])

    def test_nested_same_or_different_running_loop_rejected_without_coroutine_leak(self):
        async def nested():
            return self.fetch()
        for loop in (self.loop, asyncio.new_event_loop()):
            try:
                result = loop.run_until_complete(nested())
                self.assertEqual(result["reason"], "worker_loop_required")
            finally:
                if loop is not self.loop:
                    loop.close()
        self.assertEqual(self.constructed, [])

    def test_token_cycles_fail_closed_including_nonadjacent_repeat(self):
        for tokens in ((b"a", b"a"), (b"a", b"b", b"a")):
            self.responses = [page([record()], token=token, status=None) for token in tokens]
            self.assert_failure("pagination_cycle")
        self.assertEqual(self.closed, [self.loop, self.loop])

    def test_missing_token_fails_closed_even_with_partial_matching_records(self):
        self.responses = [page([record()], status=None)]
        self.assert_failure("pagination_incomplete")
        self.assertEqual(self.closed, [self.loop])

    def test_token_type_and_size_are_bounded(self):
        for token in ("private-string", b"a" * (metadata.MAX_TOKEN_BYTES + 1)):
            self.responses = [page([record()], token=token, status=None)]
            self.assert_failure("invalid_continuation_token")

    def test_page_limit_includes_empty_pages(self):
        self.responses = [page(token=str(i).encode(), status=None) for i in range(9)]
        self.assert_failure("page_limit")
        self.assertEqual(len(self.calls), metadata.MAX_PAGES)
        self.assertEqual(len(self.responses), 1)

    def test_page_change_limit_applies_before_conversion(self):
        self.responses = [page([record("Excluded")] * (metadata.PAGE_SIZE + 1))]
        with patch.object(self.deps, "convert", side_effect=AssertionError("must not decode")):
            self.assert_failure("page_change_limit")

    def test_total_change_limit_includes_excluded_and_recordless_changes(self):
        self.responses = [page([record("Excluded")] * 64, token=str(i).encode(), status=None)
                          for i in range(5)]
        self.deps.convert = lambda changes, zone: []
        self.assert_failure("total_change_limit")
        self.assertEqual(len(self.calls), 5)

    def test_exact_change_bound_and_last_page_completion_accepted(self):
        self.responses = [page([record()] * 64, token=str(i).encode(), status=None)
                          for i in range(3)] + [page([record()] * 64)]
        result = self.fetch()
        self.assertTrue(result["complete"])
        self.assertEqual(result["masterBeaconChanges"], metadata.MAX_CHANGES)

    def test_invalid_page_or_converter_result_is_not_success(self):
        self.responses = [page()]
        self.responses[0].changes = iter([record()])
        self.assert_failure("invalid_page")
        self.responses = [page()]
        self.deps.convert = lambda changes, zone: [record()]
        self.assert_failure("invalid_conversion")

    def test_unauthorized_and_private_exception_text_sanitized_and_client_closed(self):
        self.request_error = Unauthorized("PRIVATE-TOKEN")
        self.assert_failure("cloudkit_authorization_refused", "reauth_required")
        self.request_error = ValueError("PRIVATE-CIPHERTEXT")
        result = self.assert_failure("cloudkit_read_failed")
        self.assertNotIn("PRIVATE", json.dumps(result))
        self.assertEqual(self.closed, [self.loop, self.loop])

    def test_page_and_overall_timeout_each_close_client_without_closing_session(self):
        self.delay = True
        for timeout in ("PAGE_TIMEOUT_SECONDS", "FETCH_TIMEOUT_SECONDS"):
            with patch.object(metadata, timeout, 0.001):
                self.assert_failure("read_timeout")
        self.assertEqual(self.closed, [self.loop, self.loop])
        self.assertFalse(self.loop.is_closed())
        self.assertIs(self.session.account, self.account)

    def test_cleanup_failure_never_reports_success(self):
        self.close_error = ValueError("PRIVATE-CLOSE-DETAIL")
        self.assert_failure("cloudkit_read_failed")
        self.assertFalse(self.loop.is_closed())

    def test_pinned_proto_conversion_deletions_fallback_type_and_explicit_zone_filter(self):
        from findmy.cloudkit.proto import cloudkit_pb2 as ck
        from findmy.cloudkit.records import records_from_changes
        self.deps.convert = records_from_changes

        def change(kind, zone="", fallback=False):
            value = ck.RecordChange()
            value.record.record_identifier.value.name = "PRIVATE-RECORD-ID"
            value.record.record_identifier.zone_identifier.value.name = zone
            if fallback:
                value.record_type.name = kind
            else:
                value.record.type.name = kind
            return value

        deletion = ck.RecordChange()
        deletion.identifier.value.name = "PRIVATE-DELETED-ID"
        self.responses = [page([change("MasterBeaconRecord"),
            change("KeyAlignmentRecord", "BeaconStore", fallback=True),
            change("MasterBeaconRecord", "OtherZone"),
            change("NamingRecord", "BeaconStore"), deletion])]
        result = self.fetch()
        self.assertEqual(result["masterBeaconChanges"], 1)
        self.assertEqual(result["keyAlignmentChanges"], 1)
        self.assertEqual(result["excludedRecordChanges"], 2)
        self.assertEqual(result["recordlessChanges"], 1)
        self.assertNotIn("PRIVATE", json.dumps(result))


if __name__ == "__main__":
    unittest.main()
