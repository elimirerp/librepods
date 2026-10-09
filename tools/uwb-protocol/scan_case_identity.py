#!/usr/bin/env python3
"""Refresh owned case candidates and run bounded foreground Android scans.

Requires the authenticated account_case_identity helper and a debug APK.
Only public address candidates cross to Android; output contains no addresses.
"""
import argparse
from datetime import datetime, timezone
import json
from pathlib import Path
import socket
import subprocess
import sys

PACKAGE = "me.kavishdevar.librepods"
RUNNER = PACKAGE + "/" + PACKAGE + ".findmy.uwb.UwbProbeInstrumentation"


def refresh(control):
    with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as client:
        client.settimeout(30)
        client.connect(str(control))
        client.sendall(b'{"action":"refresh_candidates"}\n')
        response = bytearray()
        while b"\n" not in response:
            part = client.recv(4096)
            if not part or len(response) + len(part) > 16384:
                raise RuntimeError("invalid_helper_response")
            response.extend(part)
    if json.loads(response).get("ok") is not True:
        raise RuntimeError("candidate_refresh_failed")


def run(args):
    adb = [str(args.adb), "-s", args.serial]
    results = []
    for attempt in range(1, args.attempts + 1):
        refresh(args.control)
        payload = args.candidate_file.read_bytes()
        if len(payload) > 96 * 1024:
            raise RuntimeError("candidate_file_too_large")
        candidate = json.loads(payload)
        if (candidate.get("schemaVersion") != 1 or candidate.get("component") != "case"
                or candidate.get("componentPosition") != 2):
            raise RuntimeError("unique_case_candidates_required")
        subprocess.run(adb + ["shell", "run-as", PACKAGE, "mkdir", "-p", "no_backup"],
                       check=True, capture_output=True, timeout=15)
        subprocess.run(adb + ["exec-in", "run-as", PACKAGE, "sh", "-c",
                              "umask 077; cat > no_backup/findmy-case-identity.json"],
                       input=payload, check=True, capture_output=True, timeout=15)
        capture = subprocess.run(adb + ["shell", "am", "instrument", "-w", "-e", "mode",
                                        "case_identity_scan", RUNNER],
                                 check=True, capture_output=True, text=True, timeout=60)
        lines = [line.split("capabilities_json=", 1)[1]
                 for line in capture.stdout.splitlines() if "capabilities_json=" in line]
        if len(lines) != 1:
            raise RuntimeError("probe_result_missing")
        probe = json.loads(lines[0])
        # An explicit field list avoids copying a future debug payload into logs.
        scalar_fields = ("status", "error", "durationMs", "candidateCount", "sourceComponent",
                         "candidateTimestampAgeMs", "manufacturerCallbackCount", "findMyType12Count",
                         "matchCount", "firstMatchElapsedMs", "locationEnabled", "bluetoothEnabled")
        clean = {key: probe[key] for key in scalar_fields if key in probe
                 and isinstance(probe[key], (str, int, float, bool, type(None)))}
        match_fields = ("candidateOrdinal", "index", "rssi", "observations", "findMyStatus",
                        "appleFrameType", "firstSeenElapsedMs", "lastSeenElapsedMs", "connectable")
        clean["matches"] = [{key: row[key] for key in match_fields if key in row
                             and isinstance(row[key], (int, float, bool, type(None)))}
                            for row in probe.get("matches", [])]
        result = {"attempt": attempt, "time": datetime.now(timezone.utc).isoformat(), "result": clean}
        results.append(result)
        print(json.dumps(result), flush=True)
        if probe.get("status") != "success":
            raise RuntimeError("case_scan_failed")
    # Instrumentation finishes its activity; leave the requested app visible.
    subprocess.run(adb + ["shell", "am", "start", "-n", PACKAGE + "/.MainActivity"],
                   check=True, capture_output=True, timeout=15)
    if args.output:
        args.output.write_text(json.dumps(results, indent=2) + "\n")
    return 0 if all(row["result"].get("matchCount", 0) for row in results) else 2


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--adb", type=Path, required=True)
    parser.add_argument("--serial", required=True)
    parser.add_argument("--candidate-file", type=Path, required=True)
    parser.add_argument("--control", type=Path, required=True)
    parser.add_argument("--attempts", type=int, choices=range(1, 6), default=1)
    parser.add_argument("--output", type=Path, help="Optional sanitized result JSON")
    args = parser.parse_args()
    try:
        return run(args)
    except Exception as error:
        # Never echo subprocess stdout, candidate contents, or account responses.
        print(json.dumps({"status": "error", "exceptionType": type(error).__name__}), file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
