"""Synthetic bridge semantics and private-file tests; no native operations."""
import contextlib
import io
import json
import os
from pathlib import Path
import tempfile
import unittest
from datetime import datetime, timezone

from bridge_plan import assess, collect_host_metadata, main, read_private_manifest, registration_outcome
from findmy_enrollment import accessory_udid, PRODUCT_TYPE

NOW=datetime(2026,10,9,tzinfo=timezone.utc)
MAC="02:11:22:33:44:55"


def manifest():
    return {"enrollmentState":"new", "pairing":{
        "source":"apple_native_owner_pairing", "ownerAccountVerified":True,
        "ownerAccountId":"12345", "acknowledgedComponents":[0,1,2], "cloudKitSavedComponents":[0,1,2],
        "alreadyEnrolled":False, "vendorId":76, "productId":8231, "audioAddress":MAC,
        "udid":accessory_udid(MAC), "groupUuid":"11111111-2222-4333-8444-555555555555",
        "deviceName":"Synthetic AirPods", "serialNumbers":{"case":"SYNTHETIC-SERIAL"},
        "connectionStatus":"disconnected"}, "host":{
        "source":"actual_apple_host", "ownerAccountVerified":True, "ownerAccountId":"12345",
        "deviceName":"Synthetic Mac", "udid":"AAAAAAAA-BBBB-4CCC-8DDD-EEEEEEEEEEEE",
        "deviceClass":"MacBook Pro", "platform":"macosx", "productType":"MacSynthetic1,1", "productVersion":"26.4"},
        "configuration":{"type":PRODUCT_TYPE, "version":"42", "receivedAt":NOW.timestamp()}}


class BridgeTests(unittest.TestCase):
    def test_existing_and_unknown_never_touch_pairing_inputs(self):
        for state,expected in (("existing","preserve_existing"),("unknown","preserve_unknown"),(None,"preserve_unknown")):
            result=assess({"enrollmentState":state},now=NOW)
            self.assertEqual(result["state"],expected)
            self.assertFalse(result["canSubmit"])

    def test_legacy_list_absence_never_authorizes_registration(self):
        item=manifest(); item["absenceEvidence"]="legacy_device_list_missing"
        self.assertEqual(assess(item,now=NOW)["state"],"preserve_unknown")

    def test_valid_structure_still_has_no_submit_capability(self):
        item=manifest(); result=assess(item,now=NOW)
        self.assertEqual(result["state"],"structure_valid_bridge_incomplete")
        self.assertFalse(result["canSubmit"])
        self.assertFalse(result["payloadWritten"])
        self.assertEqual(result["configurationVersion"],"42")
        exported=json.dumps(result)
        for private in (MAC,item["pairing"]["groupUuid"],"SYNTHETIC-SERIAL","12345",item["host"]["udid"]):
            self.assertNotIn(private,exported)

    def test_case_only_or_mismatched_owner_evidence_is_blocked(self):
        item=manifest(); item["pairing"]["acknowledgedComponents"]=[2]
        self.assertEqual(assess(item,now=NOW)["state"],"prerequisites_missing")
        item=manifest(); item["host"]["ownerAccountId"]="99999"
        self.assertEqual(assess(item,now=NOW)["state"],"prerequisites_missing")

    def test_credentials_and_keys_rejected_at_any_depth(self):
        for key in ("password","tokens","mmeFMIPToken","ltk","shared_secret","private-key"):
            item=manifest(); item["pairing"]["untrustedNested"]={key:"SYNTHETIC-SECRET"}
            with self.assertRaises(ValueError): assess(item,now=NOW)

    def test_204_is_only_server_acceptance_and_has_no_automatic_retry(self):
        self.assertEqual(registration_outcome(204),{"state":"server_accepted_unconfirmed","enrollmentConfirmed":False,"retryAllowed":False})
        for status in (200,401,500,None):
            self.assertEqual(registration_outcome(status)["state"],"request_failed")

    def test_native_confirmation_requires_exact_subject_and_owner(self):
        expected={"accessoryUdid":accessory_udid(MAC),"pairedGroupUuid":"SYNTHETIC-GROUP","ownerAccountId":"12345"}
        native={**expected,"source":"native_find_my","deviceRowVisible":True}
        self.assertTrue(registration_outcome(204,native_confirmation=native,expected_identity=expected)["enrollmentConfirmed"])
        for key in ("accessoryUdid","pairedGroupUuid","ownerAccountId","source"):
            wrong={**native,key:"wrong"}
            self.assertFalse(registration_outcome(204,native_confirmation=wrong,expected_identity=expected)["enrollmentConfirmed"])
        self.assertFalse(registration_outcome(204,native_confirmation={**native,"deviceRowVisible":False},expected_identity=expected)["enrollmentConfirmed"])
        self.assertFalse(registration_outcome(204,native_confirmation=native)["enrollmentConfirmed"])

    def test_actual_host_collector_is_account_unverified(self):
        calls=[]
        def text(args):
            calls.append(args)
            return {"ComputerName":"Synthetic Mac","hw.model":"MacSynthetic1,1","-productVersion":"26.4"}[args[-1]]
        data=lambda args:{"SPHardwareDataType":[{"machine_model":"MacBook Pro"}]}
        result=collect_host_metadata(platform="darwin",command_text=text,command_json=data,
            host_uuid=lambda:"AAAAAAAA-BBBB-4CCC-8DDD-EEEEEEEEEEEE")
        self.assertEqual(result["platform"],"macosx")
        self.assertFalse(result["ownerAccountVerified"])
        self.assertNotIn("ownerAccountId",result)
        self.assertEqual(len(calls),3)
        item=manifest(); item["host"]=result
        self.assertEqual(assess(item,now=NOW)["state"],"prerequisites_missing")

    def test_nonmac_host_collection_rejected_before_commands(self):
        def forbidden(*args): raise AssertionError("Native calls forbidden")
        with self.assertRaises(ValueError): collect_host_metadata(platform="linux",command_text=forbidden,command_json=forbidden,host_uuid=forbidden)

    def test_private_file_and_redacted_cli_errors(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)/"fixture.json"; path.write_text(json.dumps({"enrollmentState":"existing"})); path.chmod(0o600)
            self.assertEqual(read_private_manifest(path)["enrollmentState"],"existing")
            output=io.StringIO()
            with contextlib.redirect_stdout(output): self.assertEqual(main([str(path)]),0)
            self.assertEqual(json.loads(output.getvalue())["state"],"preserve_existing")
            path.write_text('{"password":"SYNTHETIC-SECRET"}')
            output=io.StringIO()
            with contextlib.redirect_stdout(output): self.assertEqual(main([str(path)]),1)
            self.assertNotIn("SYNTHETIC-SECRET",output.getvalue())
            self.assertNotIn(str(path),output.getvalue())

    def test_world_readable_symlink_and_oversized_inputs_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)/"fixture.json"; path.write_text('{}'); path.chmod(0o644)
            with self.assertRaises(ValueError): read_private_manifest(path)
            path.chmod(0o600); link=Path(directory)/"link.json"; link.symlink_to(path)
            with self.assertRaises(OSError): read_private_manifest(link)
            path.write_bytes(b'x'*(1024*1024+1))
            with self.assertRaises(ValueError): read_private_manifest(path)


if __name__=="__main__": unittest.main()
