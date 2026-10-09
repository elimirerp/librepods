#!/usr/bin/env python3
"""Bounded metadata-only Android UWB probe. Defaults to no hardware access."""
import argparse
import json
import os
from pathlib import Path
import re
import subprocess

PROPERTIES = {
    "api_level": "ro.build.version.sdk",
    "android_release": "ro.build.version.release",
    "security_patch": "ro.build.version.security_patch",
    "oneui_version": "ro.build.version.oneui",
    "manufacturer": "ro.product.manufacturer",
    "model": "ro.product.model",
}
COMMANDS = {"getprop", "pm", "cmd", "service"}
PERMISSIONS = ("UWB_RANGING", "RANGING", "UWB_PRIVILEGED")
DENIED = re.compile(r"permission denial|permission denied|securityexception|not allowed|access denied", re.I)
MISSING = re.compile(r"unknown command|unknown option|not found|can't find service|cannot find service|no such file", re.I)
LIBRARY_DIRS = (
    "/system/framework", "/system_ext/framework", "/product/framework",
    "/vendor/framework", "/apex/com.android.uwb/javalib",
)


def outcome(code, output):
    if DENIED.search(output):
        return "denied"
    if MISSING.search(output):
        return "unsupported_command"
    return "ok" if code == 0 else "error"


def live_command(args):
    assert args[0] in COMMANDS
    # Use Android system binaries, not replacements supplied by PATH.
    binary = Path("/system/bin") / args[0]
    if not binary.is_file():
        return {"status": "missing_binary", "text": ""}
    try:
        result = subprocess.run(
            [str(binary), *args[1:]], stdin=subprocess.DEVNULL,
            stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
            timeout=3, check=False,
        )
        if len(result.stdout) > 131072:
            return {"status": "output_limit", "text": ""}
        text = result.stdout.decode("utf-8", errors="replace")
        status = outcome(result.returncode, text)
        # A service check returning "not found" is a completed visibility query.
        if args[:2] == ["service", "check"] and result.returncode == 0 and not DENIED.search(text):
            status = "ok"
        return {"status": status, "text": text}
    except subprocess.TimeoutExpired:
        return {"status": "timeout", "text": ""}
    except OSError:
        return {"status": "unavailable", "text": ""}


def mock_command(scenario, args):
    if scenario == "denied":
        return {"status": "denied", "text": "Permission Denial: simulated Termux UID"}
    if args[0] == "getprop":
        values = dict(zip(PROPERTIES.values(), ("37", "17", "2026-09-01", "90000", "samsung", "SM-S938B")))
        return {"status": "ok", "text": values[args[1]]}
    if args[:3] == ["pm", "list", "features"]:
        suffix = "feature:android.hardware.uwb\n" if scenario == "success" else ""
        return {"status": "ok", "text": "feature:android.hardware.bluetooth_le\n" + suffix}
    if args[:3] == ["cmd", "package", "check-permission"]:
        return {"status": "ok", "text": "denied\n"}
    if args[:2] == ["service", "check"]:
        return {"status": "ok", "text": "Service uwb: " + ("found" if scenario == "success" else "not found")}
    return {"status": "ok" if scenario == "success" else "unsupported_command", "text": "Ultra Wideband (UWB) commands: help, status"}


def scalar(result):
    # Output only explicitly allowed scalar properties. No fingerprint, serial or IDs.
    value = result["text"].strip()
    if result["status"] != "ok":
        return {"status": result["status"], "value": None}
    if not value:
        return {"status": "unset", "value": None}
    if len(value) > 80 or not re.fullmatch(r"[A-Za-z0-9 ._+/-]+", value):
        return {"status": "unrecognized", "value": None}
    return {"status": "ok", "value": value}


def libraries(simulated):
    if simulated:
        return {"status": "not_queried_in_simulation", "artifacts": []}
    artifacts, unreadable = [], 0
    for directory in LIBRARY_DIRS:
        try:
            for entry in Path(directory).iterdir():
                if len(artifacts) >= 24:
                    break
                if (entry.name == "framework.jar" or re.search(r"uwb|fira|nbamms", entry.name, re.I)) and re.fullmatch(r"[A-Za-z0-9_.@+-]{1,100}", entry.name):
                    artifacts.append({"path": str(entry), "readable": os.access(entry, os.R_OK)})
        except (PermissionError, OSError):
            unreadable += 1
    return {"status": "partial" if unreadable else "ok", "artifacts": artifacts}


def collect(scenario=None):
    run = live_command if scenario is None else lambda args: mock_command(scenario, args)
    props = {name: scalar(run(["getprop", key])) for name, key in PROPERTIES.items()}
    features = run(["pm", "list", "features"])
    lines = features["text"].splitlines()
    if features["status"] == "ok" and any(line.startswith("feature:") for line in lines):
        feature = "present" if any(line.strip().split("=", 1)[0] == "feature:android.hardware.uwb" for line in lines) else "not_advertised"
    else:
        feature = "unknown"
    permissions = {}
    for permission in PERMISSIONS:
        result = run(["cmd", "package", "check-permission", "android.permission." + permission, "com.termux"])
        value = result["text"].strip().lower()
        permissions[permission] = {
            "query_status": result["status"],
            "grant": value if result["status"] == "ok" and value in ("granted", "denied") else "unknown",
        }
    service = run(["service", "check", "uwb"])
    if service["status"] == "ok" and "not found" not in service["text"].lower() and re.search(r"\bfound\b", service["text"]):
        existence = "present"
    elif service["status"] == "ok" and "not found" in service["text"].lower():
        existence = "not_visible_to_caller"
    else:
        existence = "unknown"
    help_result = run(["cmd", "uwb", "help"])
    return {
        "schema_version": 1, "mode": "simulation" if scenario else "read_only_device_metadata",
        "simulation_scenario": scenario,
        "caller_context": "simulated_termux_app_uid" if scenario else "termux_app_uid" if os.getuid() >= 10000 else "non_app_uid",
        "device": props,
        "uwb_feature": {"query_status": features["status"], "advertised": feature},
        "uwb_service": {"query_status": service["status"], "visibility": existence},
        "termux_package_permissions": {"package": "com.termux", "permissions": permissions},
        "uwb_shell_help": {"query_status": help_result["status"]},
        "public_framework_artifacts": libraries(scenario is not None),
        "app_capabilities": {"status": "not_queried", "reason": "Termux metadata cannot determine an installed Android app's UWB ranging capability set."},
        "interop": {"status": "unresolved", "apple_mode": "unconfirmed_for_this_case", "nbamms_public_android_support": "unknown", "live_ranging_performed": False},
        "limitations": [
            "Denied or missing shell commands do not prove missing hardware or Android app APIs.",
            "com.termux permission results describe that package; they are not an app-capability query.",
            "No serials, account IDs, raw command output, sessions, keys, logs or protected stores are emitted.",
        ],
    }


def self_test():
    reports = {case: collect(case) for case in ("success", "missing", "denied")}
    assert reports["success"]["uwb_feature"]["advertised"] == "present"
    assert reports["missing"]["uwb_feature"]["advertised"] == "not_advertised"
    assert reports["denied"]["uwb_feature"]["advertised"] == "unknown"
    assert reports["denied"]["uwb_feature"]["query_status"] == "denied"
    assert reports["success"]["termux_package_permissions"]["permissions"]["UWB_RANGING"]["grant"] == "denied"
    assert outcome(1, "Permission Denial") == "denied"
    assert outcome(127, "unknown command") == "unsupported_command"
    assert scalar({"status": "missing_binary", "text": ""}) == {"status": "missing_binary", "value": None}
    for report in reports.values():
        assert report["interop"]["live_ranging_performed"] is False
        assert report["app_capabilities"]["status"] == "not_queried"
    print(json.dumps({"self_test": "passed", "scenarios": list(reports), "android_commands_executed": 0}, indent=2))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--self-test", action="store_true")
    mode.add_argument("--simulate", choices=("success", "missing", "denied"))
    mode.add_argument("--live", action="store_true", help="Read allowlisted Android metadata; never start ranging.")
    args = parser.parse_args()
    if args.self_test:
        self_test()
    elif args.simulate:
        print(json.dumps(collect(args.simulate), indent=2))
    else:
        if not Path("/system/bin/getprop").is_file() or os.getuid() == 0:
            parser.error("--live requires a non-root Android environment; use --simulate on a workstation.")
        print(json.dumps(collect(), indent=2))


if __name__ == "__main__":
    main()
