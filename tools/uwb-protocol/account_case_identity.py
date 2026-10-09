#!/usr/bin/env python3
"""Owned-case identity and temporary owner-link material. No account mutations.

Uses the pinned vendored FindMy library. Credentials/keys exist only in memory.
Explicit input files are never overwritten. Only --output receives a new 0600
JSON containing rotating case address candidates, indices and association IDs.
The same-user private socket can supply one matched temporary LTK to a radio
probe. It never exports master secrets or writes that LTK to the candidate file.
"""
from __future__ import annotations

import argparse
import asyncio
import base64
import getpass
import json
import logging
import os
from pathlib import Path
import re
import shutil
import socket
import struct
import sys
import tempfile
from datetime import datetime, timedelta, timezone

MAX_PAGES = 8
PAGE_SIZE = 64
MAX_RECORDS = 256
MAX_CANDIDATES = 512
MAX_PRIMARY_SPAN = 256
MAX_KEY_INDEX = 100_000
VENDOR = Path(__file__).resolve().parents[2] / "android/vendor/findmy-account"


class ProofError(Exception):
    """Only fixed, nonsecret reason labels may be passed to this exception."""


def read_private_json(path):
    path = Path(path)
    if path.is_symlink() or not path.is_file() or path.stat().st_size > 2_000_000:
        raise ProofError("invalid-input-file")
    if path.stat().st_mode & 0o077:
        raise ProofError("input-file-not-private")
    return json.loads(path.read_text())


def local_provider_mapping(data):
    if not isinstance(data, dict) or data.get("type") != "aniLocal" or not data.get("prov_data"):
        raise ProofError("provisioned-local-anisette-required")
    return data


def case_position(stable):
    if not isinstance(stable, str) or len(stable) > 1024:
        return None
    prefix, sep, tail = stable.partition("~#")
    if not sep or not prefix.startswith("a:/") or not tail.startswith("¶"):
        return None
    parts = tail.split("§")
    # Live Pro 3 records carry one trailing separator after the part number.
    # Preserve all nonempty fields; only that observed empty terminator is optional.
    if len(parts) == 5 and parts[-1] == "":
        parts.pop()
    if len(parts) != 4 or parts[3] not in ("0", "1", "2"):
        return None
    # Validate the serial slot without exposing it or using it as identity.
    try:
        serial = bytes.fromhex(parts[2]).decode("ascii")
    except (ValueError, UnicodeDecodeError):
        return None
    if not serial or len(serial) > 64:
        return None
    return int(parts[3])


def select_case(records, group):
    if not isinstance(group, str) or not group or len(group) > 128:
        raise ProofError("exact-group-required")
    matches = [r for r in records if r.record_type == "MasterBeaconRecord"
               and isinstance(r.values.get("groupIdentifier"), str)
               and r.values["groupIdentifier"].casefold() == group.casefold()
               and case_position(r.values.get("stableIdentifier")) == 2]
    if len(matches) != 1:
        raise ProofError("case-missing-or-ambiguous")
    selected = matches[0]
    if selected.undecryptable or not isinstance(selected.name, str) or len(selected.name) > 256:
        raise ProofError("case-record-incomplete")
    return selected


def stable_shape(stable):
    """Bounded protocol punctuation and lengths; no identifier characters."""
    if not isinstance(stable, str):
        return {"type": "non-string"}
    if len(stable) > 1024:
        return {"type": "string", "length": len(stable), "oversize": True}
    sections = stable.split("§")
    # Keep only known protocol separators. Replace every other run by its length.
    masked = re.sub(r"[^:/~#¶§\-]+", lambda m: f"<{len(m.group())}>", stable)
    role = sections[-1] if sections[-1] in ("0", "1", "2") else None
    return {"type": "string", "length": len(stable),
            "sectionCount": len(sections), "sectionLengths": [len(s) for s in sections[:16]],
            "skeleton": masked[:512], "finalRoleMarker": role,
            "strictPosition": case_position(stable)}


def case_metadata(records, group):
    """Fixed shape/count diagnostics; never return field values or record IDs."""
    masters = [r for r in records if r.record_type == "MasterBeaconRecord"]
    result = {"masterCount": len(masters), "completeCount": 0,
              "exactGroupMatchCount": 0, "groupTypes": {}, "stableTypes": {},
              "positionCounts": {"0": 0, "1": 0, "2": 0, "unknown": 0},
              "finalRoleMarkerCounts": {"0": 0, "1": 0, "2": 0, "unknown": 0},
              "sectionCounts": {},
              "groupAndCaseCount": 0, "paragraphMarkerCount": 0,
              "fourSectionCount": 0, "accessoryPrefixCount": 0,
              "exactGroupStableShapes": []}
    def category(value):
        if value is None: return "missing"
        if isinstance(value, str): return "string"
        if isinstance(value, list): return "list"
        if isinstance(value, bytes): return "bytes"
        if hasattr(value, "DESCRIPTOR"): return "protobuf-wrapper"
        return "other"
    for r in masters:
        if not r.undecryptable: result["completeCount"] += 1
        grouped = r.values.get("groupIdentifier")
        stable = r.values.get("stableIdentifier")
        for table, value in (("groupTypes", grouped), ("stableTypes", stable)):
            key = category(value)
            result[table][key] = result[table].get(key, 0) + 1
        match = isinstance(grouped, str) and isinstance(group, str) and grouped.casefold() == group.casefold()
        result["exactGroupMatchCount"] += int(match)
        if match and len(result["exactGroupStableShapes"]) < 16:
            result["exactGroupStableShapes"].append(stable_shape(stable))
        position = case_position(stable)
        result["positionCounts"][str(position) if position is not None else "unknown"] += 1
        result["groupAndCaseCount"] += int(match and position == 2)
        if isinstance(stable, str):
            count = min(len(stable.split("§")), 8)
            result["sectionCounts"][str(count)] = result["sectionCounts"].get(str(count), 0) + 1
            role = stable.rsplit("§", 1)[-1]
            result["finalRoleMarkerCounts"][role if role in ("0", "1", "2") else "unknown"] += 1
            result["paragraphMarkerCount"] += int("¶" in stable)
            result["fourSectionCount"] += int(len(stable.split("§")) == 4)
            result["accessoryPrefixCount"] += int(stable.startswith("a:/"))
    return result


def candidate_branches(accessory, candidates, lo, hi):
    """Associate a MAC with chain sequence/index, never export key material."""
    branches = {}
    for primary_index in range(max(0, lo), hi + 1):
        possibilities = [(accessory._primary_key_at(primary_index), "primary", primary_index)]
        possibilities.extend((key, "secondary", primary_index // 96 + offset)
                             for offset, key in enumerate(accessory._secondary_keys_at(primary_index), 1))
        for key, sequence, branch_index in possibilities:
            address = key.mac_address.upper()
            if address not in candidates:
                continue
            branch = (sequence, branch_index)
            if address in branches and branches[address] != branch:
                raise ProofError("candidate-branch-ambiguous")
            branches[address] = branch
    if set(branches) != set(candidates):
        raise ProofError("candidate-branch-unresolved")
    return branches


def candidate_document(record, accessory, now=None, *, expected_group=None):
    now = now or datetime.now(timezone.utc)
    # The library recommends a 12-hour recovery window when key alignment may
    # have drifted. Keep the finite index/address limits even during this probe.
    margin = timedelta(hours=12)
    lo = accessory.get_min_index(now - margin)
    hi = accessory.get_max_index(now + margin)
    if (type(lo) is not int or type(hi) is not int or hi < lo or hi < 0
            or hi > MAX_KEY_INDEX or hi - max(0, lo) + 1 > MAX_PRIMARY_SPAN):
        raise ProofError("candidate-window-too-wide")
    candidates = accessory.current_mac_addresses(now=now, margin=margin)
    if not candidates or len(candidates) > MAX_CANDIDATES:
        raise ProofError("candidate-count-invalid")
    normalized = {}
    for address, index in sorted(candidates.items()):
        if (not isinstance(address, str)
                or re.fullmatch(r"(?:[0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}", address) is None
                or int(address[:2], 16) & 0xc0 != 0xc0
                or type(index) is not int or not 0 <= index <= MAX_KEY_INDEX):
            raise ProofError("candidate-format-invalid")
        if address.upper() in normalized:
            raise ProofError("candidate-address-duplicate")
        normalized[address.upper()] = index
    branches = candidate_branches(accessory, normalized, lo, hi)
    rows = [{"address": address, "index": index,
             "keySequence": branches[address][0], "branchIndex": branches[address][1]}
            for address, index in sorted(normalized.items())]
    position = case_position(record.values.get("stableIdentifier"))
    component = {0: "left-bud", 1: "right-bud", 2: "case"}.get(position, "unknown")
    document = {"schemaVersion": 1, "component": component, "beaconIdentifier": record.name,
                "selectionBasis": "decoded-component-position" + str(position) if position is not None else "component-unresolved",
                "generatedAt": now.isoformat(), "candidates": rows}
    if position is not None:
        document["componentPosition"] = position
    group = record.values.get("groupIdentifier")
    if isinstance(group, str):
        document["groupIdentifier"] = group
    if expected_group is not None:
        if (not isinstance(group, str) or not isinstance(expected_group, str)
                or not expected_group or group.casefold() != expected_group.casefold()):
            raise ProofError("candidate-owned-group-mismatch")
        if position is not None:
            document["selectionBasis"] = "exact-owned-group+decoded-component-position" + str(position)
    return document


def selection_document(holder, *, case_identifier=None):
    records, group, deps = holder["decoded"], holder["group"], holder["deps"]
    if case_identifier is not None:
        if not isinstance(case_identifier, str) or not 1 <= len(case_identifier) <= 256:
            raise ProofError("invalid-exact-case-identifier")
        matches = [r for r in records if r.record_type == "MasterBeaconRecord"
                   and isinstance(r.name, str) and r.name.casefold() == case_identifier.casefold()
                   and case_position(r.values.get("stableIdentifier")) == 2]
        if len(matches) != 1 or matches[0].undecryptable:
            raise ProofError("exact-case-identifier-missing-or-ambiguous")
        case = matches[0]
    else:
        case = select_case(records, group)
    alignments = [r for r in records if r.record_type == "KeyAlignmentRecord"
                  and r.values.get("beaconIdentifier") == case.name]
    if len(alignments) > 1:
        raise ProofError("case-alignment-ambiguous")
    alignment = alignments[0] if alignments else None
    if alignment is not None and (alignment.undecryptable
            or not isinstance(alignment.values.get("lastIndexObservationDate"), datetime)
            or type(alignment.values.get("lastIndexObserved")) is not int
            or alignment.values["lastIndexObserved"] < 0):
        raise ProofError("case-alignment-incomplete")
    accessory = deps.accessory_from_record(case, alignment=alignment)
    document = candidate_document(case, accessory, expected_group=group if case_identifier is None else None)
    if case_identifier is not None:
        document["selectionMethod"] = "explicit-exact-case-identifier"
        document["selectionBasis"] = "exact-beacon-identifier+decoded-component-position2"
    holder.update(record=case, accessory=accessory, case_identifier=case_identifier)
    return document


def write_private_output(path, document):
    # Exclusive creation prevents clobbering existing output or following a symlink.
    fd = os.open(path, os.O_WRONLY | os.O_CREAT | os.O_EXCL, 0o600)
    try:
        with os.fdopen(fd, "w") as stream:
            json.dump(document, stream, separators=(",", ":"))
            stream.write("\n")
            stream.flush()
            os.fsync(stream.fileno())
    except BaseException:
        Path(path).unlink(missing_ok=True)
        raise


def file_identity(path):
    st = Path(path).lstat()
    if (Path(path).is_symlink() or not Path(path).is_file()
            or st.st_uid != os.getuid() or st.st_mode & 0o077):
        raise ProofError("output-identity-changed")
    return st.st_dev, st.st_ino


def replace_own_output(path, document, expected):
    path = Path(path)
    if file_identity(path) != expected:
        raise ProofError("output-identity-changed")
    fd, tmp = tempfile.mkstemp(prefix=".case-candidates-", dir=path.parent)
    try:
        with os.fdopen(fd, "w") as stream:
            json.dump(document, stream, separators=(",", ":"))
            stream.write("\n")
            stream.flush()
            os.fsync(stream.fileno())
        if file_identity(path) != expected:
            raise ProofError("output-identity-changed")
        os.replace(tmp, path)
    finally:
        Path(tmp).unlink(missing_ok=True)
    return file_identity(path)


def socket_peer_uid(sock):
    if sys.platform == "darwin":
        import ctypes
        uid, gid = ctypes.c_uint(), ctypes.c_uint()
        libc = ctypes.CDLL("/usr/lib/libSystem.B.dylib", use_errno=True)
        if libc.getpeereid(sock.fileno(), ctypes.byref(uid), ctypes.byref(gid)):
            raise ProofError("peer-check-failed")
        return uid.value
    if hasattr(socket, "SO_PEERCRED"):
        _, uid, _ = struct.unpack("3i", sock.getsockopt(socket.SOL_SOCKET, socket.SO_PEERCRED, 12))
        return uid
    raise ProofError("peer-check-unavailable")


def owner_link_response(holder, message):
    """One current, exactly selected case branch; response is private IPC only."""
    from owner_link import derive_for_observed_candidate

    record = holder.get("record")
    if record is None or case_position(record.values.get("stableIdentifier")) != 2:
        raise ProofError("selected-case-required")
    if message.get("beaconIdentifier") != record.name:
        raise ProofError("selected-case-mismatch")
    document = candidate_document(record, holder["accessory"])
    matches = [row for row in document["candidates"]
               if row["address"] == message.get("address")
               and row["keySequence"] == message.get("keySequence")
               and type(message.get("branchIndex")) is int
               and row["branchIndex"] == message["branchIndex"]]
    if len(matches) != 1:
        raise ProofError("current-case-candidate-required")
    row = matches[0]
    material = derive_for_observed_candidate(holder["accessory"], row["keySequence"],
                                            row["branchIndex"], row["address"])
    return {"ok": True, "temporaryLtk": base64.b64encode(material.temporary_ltk).decode()}


async def serve_candidates(control, output, holder):
    control = Path(control)
    control.parent.mkdir(mode=0o700, parents=False, exist_ok=True)
    st = control.parent.lstat()
    if control.parent.is_symlink() or st.st_uid != os.getuid() or st.st_mode & 0o077:
        raise ProofError("control-parent-not-private")
    if control.exists() or control.is_symlink():
        raise ProofError("control-path-already-exists")
    expected = file_identity(output) if Path(output).exists() else None
    stop = asyncio.Event()
    lock = asyncio.Lock()
    count = len(candidate_document(holder["record"], holder["accessory"])["candidates"]) if "record" in holder else 0

    async def handle(reader, writer):
        nonlocal expected, count
        try:
            if socket_peer_uid(writer.get_extra_info("socket")) != os.getuid():
                raise ProofError("wrong-peer-uid")
            message = json.loads(await asyncio.wait_for(reader.readline(), timeout=5))
            if not isinstance(message, dict):
                raise ProofError("invalid-control-request")
            action = message.get("action")
            allowed = ({"action", "caseIdentifier"} if action in ("reselect_case", "select_case_id")
                       else {"action", "beaconIdentifier", "address", "keySequence", "branchIndex"}
                       if action == "owner_link" else {"action"})
            if set(message) != allowed:
                raise ProofError("invalid-control-request")
            async with lock:
                action = message["action"]
                if action == "status":
                    result = {"ok": True, "authenticated": True, "caseReady": "record" in holder, "candidateCount": count}
                elif action == "metadata":
                    result = {"ok": True, "metadata": case_metadata(holder.get("decoded", []), holder.get("group"))}
                elif action == "owner_link":
                    result = owner_link_response(holder, message)
                elif action in ("refresh_candidates", "reselect_case", "select_case_id"):
                    if action in ("reselect_case", "select_case_id"):
                        # Explicit known native case identity; must match exactly one
                        # decrypted beacon with strict case position2. No heuristic
                        # substitution for the requested group's UUID domain.
                        document = selection_document(holder, case_identifier=message["caseIdentifier"])
                    else:
                        document = selection_document(holder, case_identifier=holder.get("case_identifier"))
                    if expected is None:
                        write_private_output(output, document)
                        expected = file_identity(output)
                    else:
                        expected = replace_own_output(output, document, expected)
                    count = len(document["candidates"])
                    result = {"ok": True, "candidateCount": count}
                elif action == "stop":
                    result = {"ok": True, "stopped": True}
                    stop.set()
                else:
                    raise ProofError("unsupported-control-action")
        except ProofError as exc:
            result = {"ok": False, "error": str(exc)}
        except Exception:
            result = {"ok": False, "error": "control-request-failed"}
        try:
            writer.write(json.dumps(result, separators=(",", ":")).encode() + b"\n")
            await writer.drain()
        finally:
            writer.close()
            await writer.wait_closed()

    server = await asyncio.start_unix_server(handle, path=str(control), limit=4096)
    os.chmod(control, 0o600)
    print("Case identity control ready for one hour; decoded records/session retained, account password cleared.", flush=True)
    try:
        async with server:
            try:
                await asyncio.wait_for(stop.wait(), timeout=3600)
            except asyncio.TimeoutError:
                pass
    finally:
        control.unlink(missing_ok=True)


async def request(awaitable):
    return await asyncio.wait_for(awaitable, timeout=45)


async def fetch_bounded_records(store, convert):
    records = []
    token = None
    for _ in range(MAX_PAGES):
        page = await request(store.client.record_sync("BeaconStore", continuation_token=token,
                                                       max_changes=PAGE_SIZE))
        records.extend(convert(page.changes, "BeaconStore"))
        if len(records) > MAX_RECORDS:
            raise ProofError("record-limit-exceeded")
        if page.status == 3:
            return records
        if not page.continuation_token or page.continuation_token == token:
            raise ProofError("record-pagination-incomplete")
        token = page.continuation_token
    raise ProofError("record-page-limit-exceeded")


async def prove(client, stage, group, choose, secret, deps, *, raw_records=None, capture=None):
    options = await request(client.recovery_options())
    viable = list(options.recoverable)
    if not viable or len(viable) > 64:
        raise ProofError("recovery-record-count-invalid")
    for number, record in enumerate(viable, 1):
        model = record.device_model
        safe_model = model if isinstance(model, str) and re.fullmatch(r"[A-Za-z0-9,._-]{1,40}", model) else "unknown-model"
        date = record.escrowed_at.date().isoformat() if isinstance(record.escrowed_at, datetime) else "unknown-date"
        # No device names, serials, labels, account IDs or record IDs.
        print(f"Recovery option {number}: {safe_model}, {date}")
    if stage == "recovery":
        return None
    choice = choose(len(viable))
    if type(choice) is not int or not 0 <= choice < len(viable):
        raise ProofError("invalid-recovery-selection")
    passcode = secret("Selected device screen-lock passcode (hidden): ")
    try:
        await request(client.unlock(viable[choice], passcode, views=("Manatee",)))
    finally:
        passcode = None
    store = client.store
    keys = await request(client.zone_keys())
    defaults = await request(store.zone_record_defaults(keys))
    raw = raw_records if raw_records is not None else await fetch_bounded_records(store, deps.records_from_changes)
    # Ignore every unrelated record type BEFORE decryption; no locations fetched.
    raw = [r for r in raw if r.record_type in ("MasterBeaconRecord", "KeyAlignmentRecord")]
    decoded = deps.decrypt_records(raw, keys, default_master_keys=defaults)
    if capture is not None:
        capture.update(decoded=decoded, group=group, deps=deps)
    print("Case record metadata: " + json.dumps(case_metadata(decoded, group), separators=(",", ":")), flush=True)
    holder = capture if capture is not None else {"decoded": decoded, "group": group, "deps": deps}
    return selection_document(holder, case_identifier=holder.get("case_identifier"))


def load_dependencies():
    sys.path.insert(0, str(VENDOR))
    from findmy import AsyncAppleAccount, LocalAnisetteProvider, LoginState
    from findmy.icloud import AsyncFindMyClient
    from findmy.cloudkit.beacons import AsyncBeaconStore, accessory_from_record, decrypt_records
    from findmy.cloudkit.records import records_from_changes
    from types import SimpleNamespace
    return SimpleNamespace(**locals())


def choose_number(count):
    value = input(f"Recovery option [1-{count}]: ").strip()
    if not value.isascii() or not value.isdecimal():
        raise ProofError("invalid-recovery-selection")
    return int(value) - 1


async def login(account, deps):
    email = getpass.getpass("Apple Account email (hidden): ").strip()
    password = getpass.getpass("Apple Account password (hidden): ")
    try:
        state = await request(account.login(email, password))
    finally:
        email = password = None
    if state == deps.LoginState.REQUIRE_2FA:
        methods = list(await request(account.get_2fa_methods()))
        if not 1 <= len(methods) <= 16:
            raise ProofError("verification-method-count-invalid")
        for i, method in enumerate(methods, 1):
            kind = "SMS" if hasattr(method, "phone_number") else "trusted-device"
            print(f"Verification option {i}: {kind}")
        choice = choose_number(len(methods))
        if not 0 <= choice < len(methods):
            raise ProofError("invalid-verification-selection")
        method = methods[choice]
        await request(method.request())
        code = getpass.getpass("Apple verification code (hidden): ")
        try:
            state = await request(method.submit(code))
        finally:
            code = None
    if state != deps.LoginState.LOGGED_IN:
        raise ProofError("sign-in-incomplete")


async def run(args):
    deps = load_dependencies()
    if args.stage == "candidates" and (not args.output or Path(args.output).exists()):
        raise ProofError("new-explicit-output-required")
    if args.serve and args.stage != "candidates":
        raise ProofError("serve-requires-candidates-stage")
    if not Path(args.anisette_libs).is_file():
        raise ProofError("existing-anisette-libraries-required")
    group = args.group
    if args.stage == "candidates" and not group:
        group = getpass.getpass("Exact owned AirPods group identifier (hidden): ").strip()
    account = client = None
    # LocalAnisetteProvider saves its library cache. Give it an isolated private copy
    # so the existing account identity/provision/cache remain untouched.
    with tempfile.TemporaryDirectory(prefix="case-identity-") as scratch:
        libs = Path(scratch) / "anisette-libs.bin"
        shutil.copyfile(args.anisette_libs, libs)
        os.chmod(libs, 0o600)
        try:
            if args.session:
                data = read_private_json(args.session)
                local_provider_mapping(data.get("anisette"))
                if data.get("type") != "account" or data.get("account", {}).get("password") is not None:
                    raise ProofError("unsupported-session-export")
                account = deps.AsyncAppleAccount.from_json(data, anisette_libs_path=libs)
                if account.login_state != deps.LoginState.LOGGED_IN:
                    raise ProofError("saved-session-not-signed-in")
                if args.stage in ("recovery", "candidates"):
                    # Escrow requires a fresh PET: a service-token snapshot cannot
                    # supply it. Password is retained only for this process/renewal.
                    account._password = getpass.getpass("Apple Account password for escrow PET (hidden): ")
            else:
                profile = read_private_json(args.local_identity)
                provider = deps.LocalAnisetteProvider.from_json(local_provider_mapping(profile.get("anisette")), libs_path=libs)
                account = deps.AsyncAppleAccount(provider)
                account._uid = profile["ids"]["uid"]
                account._devid = profile["ids"]["devid"]
                await login(account, deps)
            print("Apple session ready; no session export written.")
            if args.stage == "login":
                return
            # Establish encrypted-record presence before requesting an escrow
            # passcode. This stage needs service auth, not recovered E2E keys.
            store = deps.AsyncBeaconStore(account)
            try:
                raw = await fetch_bounded_records(store, deps.records_from_changes)
            finally:
                await store.close()
            masters = sum(r.record_type == "MasterBeaconRecord" for r in raw)
            alignments = sum(r.record_type == "KeyAlignmentRecord" for r in raw)
            print(f"Encrypted record metadata: {len(raw)} records, {masters} master beacons, {alignments} alignments.")
            if args.stage == "records":
                return
            client = await request(deps.AsyncFindMyClient.open(account))
            holder = {"case_identifier": args.case_identifier}
            try:
                document = await prove(client, args.stage, group, choose_number, getpass.getpass, deps,
                                       raw_records=raw, capture=holder)
            except Exception as exc:
                if not args.serve or "decoded" not in holder:
                    raise
                label = str(exc) if isinstance(exc, ProofError) else type(exc).__name__
                print("Case selection pending; " + label, flush=True)
                document = None
            if document is not None:
                write_private_output(args.output, document)
                print(f"Private case candidate file created; {len(document['candidates'])} candidates.")
            if args.serve and "decoded" in holder:
                account._password = None
                control = args.control or str(Path(args.output).parent / "case-identity-control/control.sock")
                await serve_candidates(control, args.output, holder)
        finally:
            if account is not None:
                account._password = None
            if client is not None:
                await client.close()
            if account is not None:
                await account.close()


def parser():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--stage", choices=("login", "records", "recovery", "candidates"), default="login")
    source = p.add_mutually_exclusive_group(required=True)
    source.add_argument("--local-identity", help="Explicit existing provisioned local-Anisette JSON (0600)")
    source.add_argument("--session", help="Explicit password-free FindMy account JSON with aniLocal (0600)")
    p.add_argument("--anisette-libs", required=True, help="Explicit existing local Anisette library bundle")
    p.add_argument("--group", help="Exact group identifier; otherwise hidden prompt in candidates stage")
    p.add_argument("--case-identifier", help="Explicit verified native case ID; must uniquely match a decrypted position2 beacon")
    p.add_argument("--output", help="New private candidate JSON, required for candidates stage")
    p.add_argument("--serve", action="store_true", help="After candidates, retain case/session for fixed read-only control ops for one hour")
    p.add_argument("--control", help="Explicit Unix socket path; its parent must be owned by you and 0700")
    return p


def main():
    args = parser().parse_args()
    if not sys.stdin.isatty() or os.geteuid() == 0:
        print("error: interactive-normal-user-required", file=sys.stderr)
        return 2
    # Library warnings and errors can contain record identifiers/plaintext/server data.
    # The proof reports only fixed stage labels; never exception messages/tracebacks.
    logging.disable(sys.maxsize)
    try:
        asyncio.run(run(args))
    except ProofError as exc:
        print("error: " + str(exc), file=sys.stderr)
        return 1
    except (Exception, KeyboardInterrupt) as exc:
        label = type(exc).__name__
        if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]{0,63}", label) is None:
            label = "Exception"
        print("error: proof-not-completed; exceptionType=" + label, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
