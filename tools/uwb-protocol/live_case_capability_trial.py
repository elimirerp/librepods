"""Explicit one-shot Mac test inside the existing user-owned account helper.
No auth, registration, key export, or arbitrary-command interface.
"""
import base64
import gc
import json
from pathlib import Path
import subprocess
import types

import account_case_identity as proof
from owner_link import derive_for_observed_candidate

ROOT = Path("/Users/elibaum/Documents/Codex/2026-10-08/bas")
OUTPUT = ROOT / "work/account-integration-agent/mac-case-capabilities-keyed.json"

def run():
    result = {"status": "error"}
    try:
        holders = []
        for obj in gc.get_objects():
            if (isinstance(obj, types.FunctionType) and obj.__name__ == "handle"
                    and obj.__module__ == "account_case_identity" and obj.__closure__):
                values = dict(zip(obj.__code__.co_freevars, (c.cell_contents for c in obj.__closure__)))
                holder = values.get("holder")
                if isinstance(holder, dict) and "accessory" in holder:
                    if not any(holder is existing for existing in holders): holders.append(holder)
        if len(holders) != 1:
            raise ValueError("unique live case context required")
        holder = holders[0]
        record = holder["record"]
        if proof.case_position(record.values.get("stableIdentifier")) != 2:
            raise ValueError("case position required")
        if record.values["groupIdentifier"].casefold() != holder["group"].casefold():
            raise ValueError("owned group required")
        document = json.loads((ROOT / "work/account-integration-agent/findmy-case-identity.json").read_text())
        if document.get("component") != "case" or document["beaconIdentifier"] != record.name:
            raise ValueError("selected case mismatch")
        rows = [r for r in document["candidates"]
                if r.get("keySequence") == "primary" and r.get("branchIndex") == 32]
        if len(rows) != 1:
            raise ValueError("observed case branch unavailable")
        previous = json.loads((ROOT / "work/phone-uwb/case-capabilities-connectable.json").read_text())
        if (previous["scan"]["sourceComponent"] != "case"
                or previous["scan"]["matches"][0]["index"] != 32):
            raise ValueError("previous exact case observation required")
        address = rows[0]["address"]
        material = derive_for_observed_candidate(holder["accessory"], "primary", 32, address)
        payload = json.dumps({"address": address,
                              "temporaryLtk": base64.b64encode(material.temporary_ltk).decode()}) + "\n"
        response = subprocess.run([str(ROOT / "work/uwb-protocol-agent/mac-case-capabilities")],
                                  input=payload, text=True, capture_output=True, timeout=45)
        events = [json.loads(line) for line in response.stdout.splitlines() if line.startswith("{")]
        result = {"status": "complete", "exitCode": response.returncode,
                  "component": "case", "keySequence": "primary", "branchIndex": 32,
                  "stderrBytes": len(response.stderr.encode()), "events": events}
    except Exception as exc:
        result = {"status": "error", "exceptionType": type(exc).__name__}
    OUTPUT.write_text(json.dumps(result, indent=2) + "\n")
