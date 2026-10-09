"""Synthetic named-device reads. No Apple, credentials, locations or radio calls."""
import asyncio
import json
import plistlib
import sys
import unittest
from enum import Enum
from pathlib import Path
from types import SimpleNamespace

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "main/python"))
from findmy_devices import _DeviceReader, refresh_devices, summarize_devices
from test_findmy_enrollment import Response, Transport


class State(Enum):
    LOGGED_IN = 3
    REQUIRE_2FA = 1


class DevicesTests(unittest.TestCase):
    def setUp(self):
        self.loop = asyncio.new_event_loop()
        self.headers_calls = []
        def headers(**kwargs):
            self.assertFalse(self.loop.is_running())
            self.headers_calls.append(kwargs)
            return {"SYNTHETIC-ANISE TTE": "HEADER"}
        self.account = SimpleNamespace(login_state=State.LOGGED_IN, _evt_loop=self.loop,
            dsid="12345", device_uuid="SYNTHETIC-DEVICE", get_anisette_headers=headers,
            service_tokens={"mmeAuthToken": "SYNTHETIC-MME", "mmeFMIPAppToken": "SYNTHETIC-APP"})
        self.profile = dict(model="MacBookPro18,1", os_name="macOS", os_version="26.4", os_build="SYNTHETIC")
        self.session = SimpleNamespace(account=self.account, deps=SimpleNamespace(State=State), identity={"profile": self.profile})
        self.devices = {"content": [dict(name="Synthetic Mac", deviceClass="Mac", deviceDisplayName="MacBook Pro", isOffline=False,
            id="PRIVATE-ID", location={"latitude": 123}, authToken="PRIVATE-TOKEN")]}
        self.settings = {"tokens": {"mmeFMIPAppToken": "SYNTHETIC-FRESH"}}
        self.instances = []
        self.transport = None

    def tearDown(self): self.loop.close()

    def fetch(self, responses=None):
        self.transport = Transport(responses if responses is not None else [
            Response(raw=plistlib.dumps(self.settings)), Response(self.devices)])
        def create(account, headers, profile):
            self.assertIs(account, self.account)
            self.assertIs(asyncio.get_running_loop(), self.loop)
            result = _DeviceReader(account, headers, profile, self.transport)
            self.instances.append(result)
            return result
        return json.loads(refresh_devices(self.session, create))

    def test_named_mac_rows_existing_session_and_loop_no_location_or_secret_output(self):
        result = self.fetch()
        self.assertEqual(result["state"], "devices_available")
        self.assertEqual(result["devices"], [dict(id="0", name="Synthetic Mac", type="MacBook Pro", state="Online")])
        self.assertNotIn("PRIVATE", json.dumps(result))
        self.assertEqual(self.headers_calls, [{"with_client_info": True}])
        self.assertTrue(self.transport.closed)
        self.assertFalse(self.loop.is_closed())
        self.assertIs(self.session.account, self.account)

    def test_only_settings_and_disabled_locate_push_init_client_with_fresh_token(self):
        self.fetch()
        self.assertEqual([call[0] for call in self.transport.calls], ["GET", "POST"])
        post = self.transport.calls[1]
        self.assertTrue(post[1].endswith("/fmipservice/device/12345/initClient"))
        context = post[2]["json"]["clientContext"]
        self.assertIs(context["shouldLocate"], False)
        self.assertIs(context["push"], False)
        self.assertEqual(context["deviceUDID"], "SYNTHETIC-DEVICE")
        self.assertFalse(post[2]["allow_redirects"])
        import base64
        expected = "Basic " + base64.b64encode(b"12345:SYNTHETIC-FRESH").decode()
        self.assertEqual(post[2]["headers"]["Authorization"], expected)
        self.assertEqual(self.account.service_tokens["mmeFMIPAppToken"], "SYNTHETIC-APP")

    def test_empty_distinct_from_errors_and_does_not_prove_no_airpods(self):
        self.devices = {"content": []}
        result = self.fetch()
        self.assertEqual(result["state"], "empty")
        self.assertIn("BeaconStore", result["message"])
        self.assertIn("does not prove", result["message"])
        result = self.fetch([Response(status=503)])
        self.assertEqual(result["state"], "service_unavailable")
        self.assertEqual(result["devices"], [])
        self.assertTrue(self.transport.closed)

    def test_401_and_403_are_reauth_not_empty(self):
        for status in (401, 403):
            self.assertEqual(self.fetch([Response(status=status)])["state"], "reauth_required")

    def test_204_and_malformed_success_are_not_visibility(self):
        for response in (Response(status=204), Response({"statusCode": "200"}), Response(raw=b"PRIVATE-BAD-JSON")):
            result = self.fetch([Response(raw=plistlib.dumps(self.settings)), response])
            self.assertEqual(result["state"], "service_unavailable")
            self.assertNotIn("PRIVATE", json.dumps(result))

    def test_missing_device_service_token_no_init_client(self):
        self.settings = {}
        self.account.service_tokens.pop("mmeFMIPAppToken")
        result = self.fetch()
        self.assertEqual(result["state"], "service_unavailable")
        self.assertEqual(len(self.transport.calls), 1)

    def test_token_without_general_settings_credential_can_read_devices(self):
        self.account.service_tokens.pop("mmeAuthToken")
        self.assertEqual(self.fetch([Response(self.devices)])["state"], "devices_available")
        self.assertEqual(len(self.transport.calls), 1)

    def test_redirect_to_verified_apple_host_and_reject_non_apple(self):
        result = self.fetch([Response(raw=plistlib.dumps(self.settings)),
            Response(status=330, headers={"X-Apple-MME-Host": "p12-fmipmobile.icloud.com"}), Response(self.devices)])
        self.assertEqual(result["state"], "devices_available")
        self.assertTrue(self.transport.calls[-1][1].startswith("https://p12-fmipmobile.icloud.com/"))
        result = self.fetch([Response(raw=plistlib.dumps(self.settings)),
            Response(status=330, headers={"X-Apple-MME-Host": "evil.example"})])
        self.assertEqual(result["state"], "service_unavailable")
        self.assertEqual(len(self.transport.calls), 2)

    def test_unspecified_numeric_state_not_guessed_offline_and_text_bounded(self):
        rows, _ = summarize_devices({"content": [dict(name="x\n" * 100, deviceStatus=203, deviceClass="Mac\0")]})
        self.assertEqual(rows[0]["state"], "Unknown (Apple status 203)")
        self.assertLessEqual(len(rows[0]["name"]), 120)
        self.assertNotIn("\n", rows[0]["name"])
        self.assertEqual(rows[0]["type"], "Mac")

    def test_airpods_rows_reported_without_enrollment_or_registration_claim(self):
        self.devices["content"].append(dict(name="Synthetic AirPods", deviceClass="AirPods", deviceStatus="Online"))
        result = self.fetch()
        self.assertEqual(result["legacyAirPods"], 1)
        self.assertEqual(len(result["devices"]), 2)
        self.assertNotIn("canRegister", result)

    def test_invalid_rows_and_count_bound_fail_closed(self):
        for content in (None, [{}] * 257, [None]):
            self.devices = {"content": content}
            self.assertEqual(self.fetch()["state"], "service_unavailable")

    def test_partial_login_and_running_loop_never_construct_transport(self):
        self.account.login_state = State.REQUIRE_2FA
        self.assertEqual(self.fetch()["state"], "signed_out")
        self.assertEqual(self.instances, [])
        self.account.login_state = State.LOGGED_IN
        async def attempt(): return self.fetch()
        self.assertEqual(self.loop.run_until_complete(attempt())["state"], "service_unavailable")
        self.assertEqual(self.instances, [])


if __name__ == "__main__": unittest.main()
