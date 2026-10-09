#!/usr/bin/env python3
"""Read-only ADB metadata, with an explicit mode and no radio/session commands."""
import argparse
import json
from pathlib import Path
import re
import subprocess
from probe import PROPERTIES, outcome, scalar

PERMISSIONS = ("UWB_PRIVILEGED", "UWB_RANGING", "RANGING", "BLUETOOTH_PRIVILEGED", "WRITE_SECURE_SETTINGS")
READ_ONLY_UWB = ("status", "get-specification-info")
PUBLIC_DIRS = (
    "/system/framework", "/system_ext/framework", "/product/framework",
    "/vendor/framework", "/apex/com.android.uwb/javalib",
    "/vendor/etc", "/vendor/firmware", "/vendor/lib64/hw",
)
CAPABILITY_KEYS = (
    "min_phy_version", "max_phy_version", "min_mac_version", "max_mac_version",
    "uci_version", "channels", "prf_capabilities", "rframe_capabilities",
    "sts_capabilities", "bprf_parameter_set_capabilities", "hprf_parameter_set_capabilities",
    "aoa_capabilities", "extended_mac_address", "device_role_capabilities",
    "ranging_round_capabilities", "psdu_data_rate_capabilities", "session_key_length",
    "min_ranging_interval", "min_slot_duration", "hopping_preference",
    "non_deferred_mode", "background_ranging_support", "max_ranging_session_number",
)


def advertised_commands(result):
    if result["status"] != "ok":
        return []
    # Only these metadata commands can ever be selected; help may list writes too.
    return [name for name in READ_ONLY_UWB if re.search(r"(?m)^\s*" + re.escape(name) + r"(?:\s|$)", result["text"])]


def permission_grants(result):
    grants = {}
    for name in PERMISSIONS:
        matches = re.findall(r"android\.permission\." + name + r":\s*granted=(true|false)\b", result["text"])
        grants[name] = matches[0] if result["status"] == "ok" and matches and len(set(matches)) == 1 else "unknown"
    return {"query_status": result["status"], "package": "com.android.shell", "grants": grants}


def capability_values(result):
    values = {}
    if result["status"] == "ok":
        match = re.search(r"\bfira=PersistableBundle\[\{(.*?)\}\]", result["text"], re.S)
        text = match.group(1) if match else ""
        for key in CAPABILITY_KEYS:
            match = re.search(r"(?:^|,\s*)" + key + r"=(\[[^\]]*\]|[^,}]+)", text)
            if not match:
                continue
            value = match.group(1).strip()
            if value in ("true", "false"):
                values[key] = value == "true"
            elif re.fullmatch(r"\d{1,2}\.\d{1,2}", value):
                values[key] = value
            elif re.fullmatch(r"\d{1,20}", value) and int(value) < 2**64:
                values[key] = int(value)
            elif re.fullmatch(r"\[\s*\d{1,2}(?:\s*,\s*\d{1,2}){0,15}\s*\]", value):
                values[key] = [int(x) for x in re.findall(r"\d+", value)]
    return {"query_status": result["status"], "fira_capability_fields": values,
            "controller_firmware_version": "not_identified_by_this_query"}


def mock_run(scenario, args):
    if scenario == "denied" and args[0] != "id":
        return {"status": "denied", "text": "Permission Denial: simulated"}
    if args == ["id", "-u"]:
        return {"status": "ok", "text": "2000"}
    if args[0] == "getprop":
        values = dict(zip(PROPERTIES.values(), ("37", "17", "2026-09-01", "90000", "samsung", "SM-S938U")))
        return {"status": "ok", "text": values[args[1]]}
    if args[:3] == ["pm", "list", "features"]:
        return {"status": "ok", "text": "feature:android.hardware.bluetooth_le\n" + ("feature:android.hardware.uwb\n" if scenario == "success" else "")}
    if args[:2] == ["dumpsys", "package"]:
        return {"status": "ok", "text": "\n".join("android.permission." + p + ": granted=true" for p in PERMISSIONS)}
    if args[:2] == ["service", "check"]:
        return {"status": "ok", "text": "Service uwb: " + ("found" if scenario == "success" else "not found")}
    if args == ["cmd", "uwb", "help"]:
        return {"status": "ok" if scenario == "success" else "unsupported_command", "text": "  status\n  get-specification-info\n  start-fira-ranging-session\n  disable-uwb\n"}
    if args == ["cmd", "uwb", "status"]:
        return {"status": "ok", "text": "Uwb is enabled"}
    if args == ["cmd", "uwb", "get-specification-info"]:
        return {"status": "ok", "text": "Specification info: PersistableBundle[{fira=PersistableBundle[{channels=[5, 9], max_phy_version=3.0, prf_capabilities=3, bprf_parameter_set_capabilities=63, sts_capabilities=31, rframe_capabilities=11, hprf_parameter_set_capabilities=7158278831, secret_key=DO_NOT_EMIT, device_address=DO_NOT_EMIT}]}]"}
    if args[0] == "ls":
        return {"status": "ok", "text": "com.samsung.android.uwb_extras.jar\nlibsr200t_prod_fw.so\nunrelated-account-name\n"}
    raise AssertionError("Unexpected probe command")


def collect(run, mode):
    count = 0
    def query(args):
        nonlocal count
        count += 1
        return run(args)
    uid = query(["id", "-u"])
    if uid["status"] != "ok" or uid["text"].strip() != "2000":
        return {"schema_version": 1, "mode": mode, "status": "requires_adb_shell_uid",
                "query_status": uid["status"], "raw_uid_emitted": False, "live_ranging_performed": False}
    device = {name: scalar(query(["getprop", prop])) for name,prop in PROPERTIES.items()}
    features = query(["pm", "list", "features"])
    feature = "unknown"
    if features["status"] == "ok" and any(line.startswith("feature:") for line in features["text"].splitlines()):
        feature = "present" if re.search(r"(?m)^feature:android\.hardware\.uwb(?:=\d+)?\s*$", features["text"]) else "not_advertised"
    permissions = permission_grants(query(["dumpsys", "package", "com.android.shell"]))
    service = query(["service", "check", "uwb"])
    visible = "unknown"
    if service["status"] == "ok":
        if "not found" in service["text"]:
            visible = "not_visible_to_caller"
        elif re.search(r"\bfound\b", service["text"]):
            visible = "present"
    help_result = query(["cmd", "uwb", "help"])
    commands = advertised_commands(help_result)
    state = {"query_status": "not_queried", "state": "unknown"}
    spec = capability_values({"status": "not_queried", "text": ""})
    if "status" in commands:
        result = query(["cmd", "uwb", "status"])
        state = {"query_status": result["status"], "state": "unknown"}
        if result["status"] == "ok":
            match = re.search(r"\bUwb is (enabled|disabled)\b", result["text"], re.I)
            if match:
                state["state"] = match.group(1).lower()
    if "get-specification-info" in commands:
        spec = capability_values(query(["cmd", "uwb", "get-specification-info"]))
    artifacts, directory_states = [], []
    for directory in PUBLIC_DIRS:
        result = query(["ls", "-1", directory])
        directory_states.append({"path": directory, "query_status": result["status"]})
        if result["status"] != "ok":
            continue
        for name in result["text"].splitlines():
            if len(artifacts) >= 32:
                break
            if re.fullmatch(r"[A-Za-z0-9_.@+-]{1,100}", name) and (name == "framework.jar" or re.search(r"uwb|fira|nbamms|sr200|sr100", name, re.I)):
                artifacts.append(directory + "/" + name)
    return {"schema_version": 1, "mode": mode, "caller_context": "adb_shell",
            "device": device, "uwb_feature": {"query_status": features["status"], "advertised": feature},
            "shell_package_permissions": permissions,
            "uwb_service": {"query_status": service["status"], "visibility": visible},
            "uwb_shell_help": {"query_status": help_result["status"], "advertised_read_only_commands": commands},
            "uwb_state": state, "specification": spec,
            "public_artifacts": artifacts, "artifact_directory_queries": directory_states,
            "command_count": count, "live_ranging_performed": False,
            "limitations": ["ADB shell privileges do not establish ordinary APK permissions.",
                            "Missing fields or commands do not establish missing controller support.",
                            "No identifiers, credentials, raw command output, sessions, logs or key bytes are emitted."]}


def self_test():
    reports = {}
    for scenario in ("success", "missing", "denied"):
        calls = []
        def run(args):
            calls.append(args)
            return mock_run(scenario, args)
        report = collect(run, "simulation")
        reports[scenario] = report
        assert all(args[:2] != ["cmd", "uwb"] or args[2] in ("help", *READ_ONLY_UWB) for args in calls)
        assert report["live_ranging_performed"] is False
        assert "DO_NOT_EMIT" not in json.dumps(report)
    assert reports["success"]["specification"]["fira_capability_fields"]["channels"] == [5,9]
    assert reports["missing"]["uwb_feature"]["advertised"] == "not_advertised"
    assert reports["denied"]["uwb_feature"]["advertised"] == "unknown"
    assert advertised_commands({"status": "ok", "text": "start-fira-ranging-session\ndisable-uwb"}) == []
    assert permission_grants({"status": "denied", "text": "android.permission.UWB_PRIVILEGED: granted=true"})["grants"]["UWB_PRIVILEGED"] == "unknown"
    print(json.dumps({"self_test": "passed", "scenarios": list(reports), "adb_commands_executed": 0}, indent=2))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--self-test", action="store_true")
    mode.add_argument("--simulate", choices=("success", "missing", "denied"))
    mode.add_argument("--live", action="store_true")
    parser.add_argument("--adb", help="Explicit path to existing ADB; no installation or pairing")
    parser.add_argument("--serial", help="Existing authorized transport target; never emitted")
    args = parser.parse_args()
    if args.self_test:
        self_test()
    elif args.simulate:
        print(json.dumps(collect(lambda argv: mock_run(args.simulate, argv), "simulation"), indent=2))
    else:
        if not args.adb or not args.serial or not Path(args.adb).is_file():
            parser.error("--live requires existing --adb path and root-agent coordinated --serial target")
        def run(argv):
            try:
                result = subprocess.run([args.adb, "-s", args.serial, "shell", *argv], stdin=subprocess.DEVNULL,
                                        stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=4, check=False)
                if len(result.stdout) > 131072:
                    return {"status": "output_limit", "text": ""}
                text = result.stdout.decode("utf-8", "replace")
                return {"status": outcome(result.returncode, text), "text": text}
            except subprocess.TimeoutExpired:
                return {"status": "timeout", "text": ""}
            except OSError:
                return {"status": "unavailable", "text": ""}
        print(json.dumps(collect(run, "read_only_adb_metadata"), indent=2))


if __name__ == "__main__":
    main()
