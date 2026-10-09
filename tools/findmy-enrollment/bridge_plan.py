#!/usr/bin/env python3
"""Offline Mac bridge assessment. No account, Bluetooth or registration requests.

This tool checks input consistency, not source authenticity. File ownership and
permissions do not authenticate native pairing evidence. No submit API exists.
"""
from __future__ import annotations

import ctypes
import json
import os
from pathlib import Path
import stat
import subprocess
import sys
from uuid import UUID

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "android/app/src/main/python"))
from findmy_enrollment import build_registration

_MAX_INPUT = 1024 * 1024
_FORBIDDEN_FIELDS = frozenset({"password", "authorization", "tokens", "servicetokens",
    "mmefmiptoken", "mmefmipapptoken", "mmeauthtoken", "ltk", "sharedsecret",
    "mastersecret", "privatekey", "anisette", "otp", "machineid"})


def _check_no_secrets(value):
    if isinstance(value, dict):
        for key, item in value.items():
            if str(key).lower().replace("_", "").replace("-", "") in _FORBIDDEN_FIELDS:
                raise ValueError("Credentials and owner keys must not enter bridge planning input")
            _check_no_secrets(item)
    elif isinstance(value, list):
        for item in value:
            _check_no_secrets(item)


def read_private_manifest(path):
    """Read a bounded, regular, same-user file without following its final symlink."""
    descriptor = os.open(path, os.O_RDONLY | os.O_NOFOLLOW | os.O_NONBLOCK)
    try:
        info = os.fstat(descriptor)
        if not stat.S_ISREG(info.st_mode) or info.st_uid != os.getuid() or info.st_mode & 0o077:
            raise ValueError("Planning input must be a private regular file owned by this user")
        if info.st_size > _MAX_INPUT:
            raise ValueError("Oversized planning input")
        with os.fdopen(descriptor, "rb", closefd=False) as stream:
            raw = stream.read(_MAX_INPUT + 1)
        if len(raw) > _MAX_INPUT:
            raise ValueError("Oversized planning input")
        result = json.loads(raw)
        if not isinstance(result, dict):
            raise ValueError("Invalid bridge planning input")
        _check_no_secrets(result)
        return result
    finally:
        os.close(descriptor)


def assess(manifest, *, now=None):
    """Produce a redacted plan. Never turn a caller assertion into enrollment authority."""
    _check_no_secrets(manifest)
    base = {"canSubmit": False, "payloadWritten": False, "accountContacted": False}
    state = manifest.get("enrollmentState", "unknown")
    if state == "existing":
        return {**base, "state": "preserve_existing", "message": "Keep the confirmed existing Find My enrollment."}
    if state != "new" or manifest.get("absenceEvidence") == "legacy_device_list_missing":
        return {**base, "state": "preserve_unknown", "message": "Enrollment is unknown. A missing legacy device-list row cannot authorize registration."}
    try:
        body = build_registration(manifest["pairing"], manifest["host"], manifest["configuration"], now=now)
    except (KeyError, TypeError, ValueError):
        return {**base, "state": "prerequisites_missing", "message": "Current native owner pairing, matching genuine Mac host and fresh exact product configuration are required."}
    info = body["deviceInfo"]
    # Deliberately do not return MAC, UDID, group UUID, serials, owner ID or host ID.
    return {**base, "state": "structure_valid_bridge_incomplete", "message": "Input structure is valid. Native evidence authenticity and an authenticated registration bridge remain required.",
        "configurationVersion": info["cachedConfigVersion"], "profile": "extension",
        "hostReferencePresent": len(info["otherDevices"]) == 1,
        "requiredBridgePieces": ["authenticated_native_pairing_export", "authenticated_owner_host_binding",
            "authenticated_registration_transport", "exact_native_visibility_confirmation"]}


def registration_outcome(http_status, *, native_confirmation=None, expected_identity=None):
    """Classify future bridge receipts; neither 204 nor header presence proves enrollment.

    The future caller must authenticate the confirmation's provenance before
    calling. These comparisons only prevent swapped-device/account receipts.
    """
    if http_status != 204:
        return {"state": "request_failed", "enrollmentConfirmed": False, "retryAllowed": False}
    confirmation, expected = native_confirmation or {}, expected_identity or {}
    required = ("accessoryUdid", "pairedGroupUuid", "ownerAccountId")
    matches = all(isinstance(expected.get(key), str) and expected[key] and confirmation.get(key) == expected[key] for key in required)
    if confirmation.get("source") == "native_find_my" and confirmation.get("deviceRowVisible") is True and matches:
        return {"state": "native_visibility_confirmed", "enrollmentConfirmed": True, "retryAllowed": False}
    return {"state": "server_accepted_unconfirmed", "enrollmentConfirmed": False, "retryAllowed": False}


def _command_json(argv):
    return json.loads(subprocess.check_output(argv, timeout=15, stderr=subprocess.DEVNULL))


def _command_text(argv):
    return subprocess.check_output(argv, timeout=15, stderr=subprocess.DEVNULL, text=True).strip()


def _host_uuid():
    class Timespec(ctypes.Structure):
        _fields_ = [("seconds", ctypes.c_long), ("nanoseconds", ctypes.c_long)]
    host_bytes = (ctypes.c_ubyte * 16)()
    timeout = Timespec(3, 0)
    library = ctypes.CDLL("/usr/lib/libSystem.B.dylib", use_errno=True)
    library.gethostuuid.argtypes = [ctypes.POINTER(ctypes.c_ubyte), ctypes.POINTER(Timespec)]
    library.gethostuuid.restype = ctypes.c_int
    if library.gethostuuid(host_bytes, ctypes.byref(timeout)):
        raise ValueError("Cannot read the actual Mac host UUID")
    return str(UUID(bytes=bytes(host_bytes))).upper()


def collect_host_metadata(*, platform=None, command_text=None, command_json=None, host_uuid=None):
    """Read real Mac host fields for a future private in-memory bridge.

    Inert until explicitly called. Does not contact Apple, load private frameworks,
    read account stores or query Bluetooth. It cannot prove account ownership.
    Never use the local ADI authentication profile as these actual host fields.
    """
    if (platform or sys.platform) != "darwin":
        raise ValueError("Actual Mac host metadata requires macOS")
    text, data, identifier = command_text or _command_text, command_json or _command_json, host_uuid or _host_uuid
    hardware = data(["/usr/sbin/system_profiler", "-json", "SPHardwareDataType"])
    info = {"source": "actual_apple_host", "deviceName": text(["/usr/sbin/scutil", "--get", "ComputerName"]),
        "udid": identifier(), "deviceClass": hardware["SPHardwareDataType"][0]["machine_model"],
        "platform": "macosx", "productType": text(["/usr/sbin/sysctl", "-n", "hw.model"]),
        "productVersion": text(["/usr/bin/sw_vers", "-productVersion"]), "ownerAccountVerified": False}
    if not all(isinstance(info[key], str) and info[key] for key in ("deviceName", "udid", "deviceClass", "productType", "productVersion")) or UUID(info["udid"]).int == 0:
        raise ValueError("Incomplete actual Mac host metadata")
    return info


def main(argv=None):
    args = sys.argv[1:] if argv is None else argv
    if len(args) != 1:
        print("Usage: bridge_plan.py PRIVATE_MANIFEST.json", file=sys.stderr)
        return 2
    try:
        result = assess(read_private_manifest(args[0]))
    except Exception:
        # Paths, raw JSON, native records, error strings and stack traces stay private.
        print(json.dumps({"state": "invalid_private_input", "canSubmit": False,
            "message": "Cannot read valid private bridge planning input."}))
        return 1
    print(json.dumps(result, separators=(",", ":")))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
