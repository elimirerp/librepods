"""Offline enrollment boundary tests. No live account, Bluetooth or native pairing."""
import asyncio
import copy
import json
import plistlib
import sys
import unittest
from datetime import datetime, timezone
from enum import Enum
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "main/python"))
from findmy_enrollment import (PRODUCT_TYPE, _AppleReadClient, _HttpFailure, _account_settings,
    accessory_udid, build_registration, inspect_account, parse_configuration,
    refresh_account, summarize_devices)

ADDRESS = "02:11:22:33:44:55"
UDID = accessory_udid(ADDRESS)
NOW = datetime(2026, 10, 9, tzinfo=timezone.utc)
PROFILE = dict(model="MacBookPro13,2", os_name="macOS", os_version="13.1", os_build="22C65")


def configuration(version="42"):
    return {"configurations": [{"statusCode": "200", "config": {
        "type": PRODUCT_TYPE, "version": version, "features": {"sound": {}}}}]}


def pairing():
    return dict(source="apple_native_owner_pairing", ownerAccountVerified=True,
        ownerAccountId="12345", acknowledgedComponents=[0, 1, 2], cloudKitSavedComponents=[0, 1, 2],
        alreadyEnrolled=False, vendorId=76, productId=8231, audioAddress=ADDRESS, udid=UDID,
        groupUuid="11111111-2222-4333-8444-555555555555", deviceName="Synthetic AirPods",
        serialNumbers={"case": "SYNTHETIC-CASE", "left": "SYNTHETIC-LEFT", "right": "SYNTHETIC-RIGHT"},
        connectionStatus="disconnected", lastActiveTime=123, firmwareVersion="SYNTHETIC")


def host():
    return dict(source="actual_apple_host", ownerAccountVerified=True, ownerAccountId="12345",
        deviceName="Synthetic Mac", udid="AAAAAAAA-BBBB-4CCC-8DDD-EEEEEEEEEEEE",
        deviceClass="MacBook Pro", platform="macosx", productType="MacSynthetic1,1", productVersion="26.4")


def current_config():
    return dict(type=PRODUCT_TYPE, version="42", features={}, receivedAt=NOW.timestamp())


class State(Enum):
    LOGGED_OUT = 0
    LOGGED_IN = 3


class Stream:
    def __init__(self, data): self.data = data
    async def read(self, count):
        # Force partial reads to verify full-response assembly.
        result, self.data = self.data[:min(count, 4096)], self.data[min(count, 4096):]
        return result


class Response:
    def __init__(self, body=None, status=200, headers=None, raw=None):
        self.status = status
        self.headers = headers or {}
        self.content = Stream(raw if raw is not None else json.dumps(body).encode())
    async def __aenter__(self): return self
    async def __aexit__(self, *unused): pass


class Transport:
    def __init__(self, responses): self.responses=list(responses); self.calls=[]; self.closed=False
    def request(self, method, url, **kwargs):
        self.calls.append((method, url, copy.deepcopy(kwargs)))
        return self.responses.pop(0)
    async def close(self): self.closed=True


def account(tokens=None):
    return SimpleNamespace(login_state=State.LOGGED_IN, dsid="12345", device_uuid="SYNTHETIC-CLIENT",
        service_tokens=tokens or {"mmeFMIPToken": "SYNTHETIC-TOKEN", "mmeFMIPAppToken": "SYNTHETIC-APP-TOKEN"})


class IdentityAndPayloadTests(unittest.TestCase):
    def test_verified_hash_vectors_and_mac_normalization(self):
        self.assertEqual(PRODUCT_TYPE, "d698de70c4177995dbe15a33e3985e66db0bfa044dfd70dd38e82262394bac0d")
        self.assertEqual(accessory_udid("aA:bb:cC:dd:eE:fF"), accessory_udid("AA:BB:CC:DD:EE:FF"))
        for invalid in ("", "uuid", "00:00:00:00:00:00", "FF:FF:FF:FF:FF:FF", "02:00:00:00:00:00", "02:11:22:33:44:55/path"):
            with self.assertRaises(ValueError): accessory_udid(invalid)

    def test_configuration_uses_dynamic_exact_version(self):
        self.assertEqual(parse_configuration(configuration("42"))["version"], "42")
        for invalid in ({}, {"configurations": []}, configuration(None), configuration(True)):
            with self.assertRaises(ValueError): parse_configuration(invalid)
        wrong=configuration(); wrong["configurations"][0]["config"]["type"]="76_8231"
        with self.assertRaises(ValueError): parse_configuration(wrong)
        duplicate=configuration(); duplicate["configurations"] *= 2
        with self.assertRaises(ValueError): parse_configuration(duplicate)

    def test_extension_profile_matches_native_defaults_and_actual_host(self):
        result=build_registration(pairing(), host(), current_config(), now=NOW)
        info=result["deviceInfo"]
        self.assertEqual(info["udid"], UDID)
        self.assertEqual(info["productType"], PRODUCT_TYPE)
        self.assertEqual(info["cachedConfigVersion"], "42")
        self.assertEqual(info["platform"], "macosx_proxy")
        self.assertEqual(info["productVersion"], "26.4")
        self.assertEqual(info["aps-token"], "TOKEN")
        self.assertEqual(info["otherDevices"][0]["udid"], host()["udid"])
        self.assertEqual(info["otherDevices"][0]["lastActiveTime"], -1)
        self.assertEqual(info["lastActiveTime"], -1)
        self.assertEqual(result["deviceContext"]["deviceTS"], "2026-10-09T00:00:00.000Z")
        for obsolete in ("beacons", "accessoryRSSI", "accessoryStyle", "colorCode", "serialNumber"):
            self.assertNotIn(obsolete, info)
        self.assertNotIn("ownerAccountId", json.dumps(result))

    def test_existing_or_unknown_enrollment_never_prepares_reenrollment(self):
        for existing in (True, None):
            item=pairing(); item["alreadyEnrolled"]=existing
            with self.assertRaises(ValueError): build_registration(item, host(), current_config(), now=NOW)

    def test_missing_or_wrong_native_evidence_and_identity_fail(self):
        cases = [("source", "android_bond"), ("ownerAccountVerified", False),
            ("acknowledgedComponents", [0, 1]), ("cloudKitSavedComponents", [0, 1]),
            ("groupUuid", "00000000-0000-0000-0000-000000000000"), ("groupUuid", "invented"),
            ("udid", "wrong"), ("productId", 8207)]
        for key, value in cases:
            item=pairing(); item[key]=value
            with self.subTest(key=key), self.assertRaises(ValueError):
                build_registration(item, host(), current_config(), now=NOW)

    def test_false_or_wrong_account_host_fails(self):
        for key,value in (("platform", "android"), ("source", "auth_client_profile"),
                ("ownerAccountId", "98765"), ("ownerAccountVerified", False)):
            item=host(); item[key]=value
            with self.subTest(key=key), self.assertRaises(ValueError):
                build_registration(pairing(), item, current_config(), now=NOW)

    def test_stale_missing_and_future_configuration_fail(self):
        for age in (901, -61, None):
            item=current_config(); item["receivedAt"]=None if age is None else NOW.timestamp()-age
            with self.assertRaises(ValueError): build_registration(pairing(), host(), item, now=NOW)

    def test_connected_observed_timestamp_retained(self):
        item=pairing(); item["connectionStatus"]="connected"
        result=build_registration(item, host(), current_config(), now=NOW)
        self.assertEqual(result["deviceInfo"]["lastActiveTime"], 123)
        self.assertEqual(result["deviceInfo"]["otherDevices"][0]["lastActiveTime"], 123)

    def test_names_never_confirm_selected_device(self):
        summary=summarize_devices({"content":[{"name":"Synthetic AirPods", "deviceClass":"AirPods", "id":"unrelated"}]}, ADDRESS)
        self.assertEqual(summary, {"visibleAirPods":1, "selectedDeviceVisible":False})
        self.assertIsNone(summarize_devices({"content":[]})["selectedDeviceVisible"])
        with self.assertRaises(ValueError): summarize_devices({})

    def test_selected_device_requires_exact_known_address_or_udid(self):
        for entry in ({"udid":UDID.upper()}, {"id":UDID}, {"deviceDiscoveryId":ADDRESS}):
            self.assertTrue(summarize_devices({"content":[entry]}, ADDRESS)["selectedDeviceVisible"])
        self.assertFalse(summarize_devices({"content":[{"id":UDID+"extra"}]}, ADDRESS)["selectedDeviceVisible"])


class ReadClientTests(unittest.IsolatedAsyncioTestCase):
    async def run_client(self, responses, address="", tokens=None):
        transport=Transport(responses)
        async with _AppleReadClient(account(tokens), {"X-MMe-Client-Info":"synthetic-info"}, PROFILE, transport) as client:
            result=await client.read(address)
        self.assertTrue(transport.closed)
        return result,transport

    async def test_only_reads_exact_config_and_nonlocating_device_list(self):
        result,transport=await self.run_client([Response(configuration("43")), Response({"content":[{"udid":UDID,"location":{"secret":"private-coordinate"}}]})],ADDRESS)
        self.assertEqual(result["state"], "existing_device_visible")
        self.assertEqual(result["configVersion"], "43")
        self.assertFalse(result["canRegister"])
        self.assertNotIn("private-coordinate", json.dumps(result))
        self.assertNotIn("SYNTHETIC-TOKEN", json.dumps(result))
        self.assertEqual(transport.calls[0][2]["json"]["accessoryTypes"][0]["cachedVersion"], "")
        context=transport.calls[1][2]["json"]["clientContext"]
        self.assertFalse(context["shouldLocate"]); self.assertFalse(context["push"])
        self.assertFalse(any("/register" in url for _,url,_ in transport.calls))
        self.assertTrue(all(kwargs["allow_redirects"] is False for _,_,kwargs in transport.calls))

    async def test_settings_hosts_and_fresh_tokens_are_ephemeral(self):
        original={"mmeAuthToken":"SYNTHETIC-AUTH", "mmeFMIPToken":"SYNTHETIC-TOKEN", "mmeFMIPAppToken":"SYNTHETIC-APP-TOKEN"}
        settings={"tokens":{"mmeFMIPToken":"SYNTHETIC-FRESH", "mmeFMIPAppToken":"SYNTHETIC-FRESH-APP"}, "url":"https://p42-fmipmobile.icloud.com/service"}
        result,transport=await self.run_client([Response(raw=plistlib.dumps(settings)), Response(configuration()), Response({"content":[]})], tokens=original)
        self.assertEqual(result["state"], "registration_unconfirmed")
        self.assertIn("p42-fmipmobile.icloud.com",transport.calls[2][1])
        self.assertEqual(original["mmeFMIPToken"], "SYNTHETIC-TOKEN")

    async def test_missing_web_row_remains_inconclusive(self):
        result,_=await self.run_client([Response(configuration()), Response({"content":[]})],ADDRESS)
        self.assertEqual(result["state"], "registration_unconfirmed")
        self.assertIn("does not prove missing enrollment", result["message"])

    async def test_missing_application_token_keeps_catalogue_only(self):
        result,transport=await self.run_client([Response(configuration())],tokens={"mmeFMIPToken":"SYNTHETIC-TOKEN"})
        self.assertEqual(len(transport.calls),1)
        self.assertEqual(result["state"], "native_pairing_required")

    async def test_safe_regional_redirect(self):
        result,transport=await self.run_client([Response(configuration()), Response(status=330,headers={"X-Apple-MME-Host":"p12-fmipmobile.icloud.com.cn"}), Response({"content":[]})])
        self.assertIn("p12-fmipmobile.icloud.com.cn",transport.calls[2][1])
        self.assertEqual(transport.calls[1][2]["headers"]["Authorization"],transport.calls[2][2]["headers"]["Authorization"])

    async def test_untrusted_redirect_receives_no_token(self):
        for host_value in ("attacker.invalid", "fmipmobile.icloud.com.attacker.invalid", "fmipmobile.icloud.com:443", "https://fmipmobile.icloud.com"):
            transport=Transport([Response(configuration()),Response(status=330,headers={"X-Apple-MME-Host":host_value})])
            async with _AppleReadClient(account(),{},PROFILE,transport) as client: result=await client.read()
            self.assertEqual(result["state"], "service_unavailable")
            self.assertEqual(len(transport.calls),2)
            self.assertTrue(transport.closed)

    async def test_oversized_and_malformed_responses_fail(self):
        for raw in (b"x"*(1024*1024+1),b"not-json"):
            result,_=await self.run_client([Response(raw=raw), Response({"content":[{"udid":UDID}]})],ADDRESS)
            self.assertIsNone(result["configVersion"])
            self.assertIn("configuration could not be checked", result["message"])
            self.assertEqual(result["state"], "existing_device_visible")

    async def test_http_error_contains_only_status(self):
        result,_=await self.run_client([Response(configuration()), Response(status=401,raw=b"SYNTHETIC-PRIVATE-BODY")])
        self.assertEqual(result["state"], "reauth_required")
        self.assertNotIn("PRIVATE", json.dumps(result))
        self.assertEqual(result["configVersion"], "42")

    async def test_catalogue_failure_does_not_hide_existing_selected_row(self):
        result,_=await self.run_client([Response(status=503,raw=b"SYNTHETIC-PRIVATE-BODY"), Response({"content":[{"udid":UDID}]})],ADDRESS)
        self.assertEqual(result["state"], "existing_device_visible")
        self.assertTrue(result["selectedDeviceVisible"])
        self.assertIsNone(result["configVersion"])
        self.assertNotIn("PRIVATE",json.dumps(result))

    async def test_device_list_failure_retains_current_catalogue_version(self):
        result,_=await self.run_client([Response(configuration("44")), Response(status=503,raw=b"SYNTHETIC-PRIVATE-BODY")],ADDRESS)
        self.assertEqual(result["state"], "service_unavailable")
        self.assertIsNone(result["selectedDeviceVisible"])
        self.assertEqual(result["configVersion"], "44")
        self.assertNotIn("PRIVATE",json.dumps(result))


class PublicBoundaryTests(unittest.TestCase):
    def test_inspect_is_inert_and_redacted(self):
        item=account(); item.get_anisette_headers=lambda **kwargs: (_ for _ in ()).throw(AssertionError("ADI forbidden"))
        session=SimpleNamespace(account=item,deps=SimpleNamespace(State=State))
        result=json.loads(inspect_account(session))
        self.assertEqual(result["state"],"native_pairing_required")
        self.assertFalse(result["canRegister"])
        self.assertNotIn("SYNTHETIC-TOKEN",json.dumps(result))
        item.login_state=State.LOGGED_OUT
        self.assertEqual(json.loads(refresh_account(session))["state"],"signed_out")

    def test_refresh_loop_and_errors_never_expose_account_material(self):
        loop=asyncio.new_event_loop()
        try:
            item=account(); item._evt_loop=loop; item.get_anisette_headers=lambda **kwargs: {}
            session=SimpleNamespace(account=item,deps=SimpleNamespace(State=State),identity={"profile":PROFILE})
            for failure, expected in ((_HttpFailure(401),"reauth_required"),(_HttpFailure(503),"service_unavailable"),(RuntimeError("SYNTHETIC-SECRET"),"service_unavailable")):
                with patch.object(_AppleReadClient,"__aenter__", side_effect=failure):
                    result=refresh_account(session)
                self.assertEqual(json.loads(result)["state"],expected)
                self.assertNotIn("SYNTHETIC-SECRET",result)
            with patch.object(_AppleReadClient,"__aenter__", side_effect=AssertionError("network forbidden")) as call:
                result=refresh_account(session,"bad-MAC")
                self.assertEqual(json.loads(result)["state"],"service_unavailable")
                call.assert_not_called()
        finally: loop.close()

    def test_settings_reject_untrusted_configuration_hosts(self):
        for value in ("http://gateway.icloud.com/fmadminws/findkit", "https://attacker.invalid/fmadminws/findkit", "https://gateway.icloud.com:443/fmadminws/findkit", "https://user@gateway.icloud.com/fmadminws/findkit"):
            with self.assertRaises(ValueError): _account_settings({"extAccessoryConfigURL":value})


if __name__ == "__main__": unittest.main()
