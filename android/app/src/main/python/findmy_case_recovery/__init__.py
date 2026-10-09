"""Explicit, read-only Manatee recovery from this installation's signed-in session.

The sequence and strict component/alignment checks follow the proven
tools/uwb-protocol/account_case_identity.py. Cryptography comes exclusively from
the pinned findmy library. A fresh PET needs a transient Apple password; the
chosen escrow device needs its own login password/PIN. There are no automatic
passcode retries, trust-circle joins, enrollment, saves, host imports or files.

Options are revalidated by exact private escrow identity on each recovery. Both
network operations use a temporary supported AsyncAppleAccount constructor with
a deep copy of current state and the same native identity/provider, on the
existing account loop. The original password-free account is never modified.
Only newly recovered case candidate material remains in memory; explicit case
selection narrows it to one case. It expires after 30 minutes or is cleared on
account replacement. Python/JVM strings cannot be guaranteed
zeroed; references to input passwords are released after each operation.
"""
from __future__ import annotations

import asyncio
import copy
import json
import re
import secrets
import time
from datetime import datetime
from types import SimpleNamespace

from findmy_case_metadata import (ZONE, PAGE_SIZE, MAX_PAGES, MAX_CHANGES,
                                 MAX_TOKEN_BYTES, _allowed_record)

MAX_OPTIONS = 64
REQUEST_TIMEOUT = 45
OPERATION_TIMEOUT = 180
OPTION_LIFETIME = 600
KEY_LIFETIME = 1800


def _dependencies():
    from findmy.reports import AsyncAppleAccount
    from findmy.icloud import AsyncFindMyClient
    from findmy.cloudkit.beacons import decrypt_records, accessory_from_record
    from findmy.cloudkit.records import records_from_changes
    from findmy.errors import UnauthorizedError, InvalidCredentialsError
    from findmy_account import _provider
    def create(session, state):
        provider = _provider(session.bridge, session.identity, session.deps)
        return AsyncAppleAccount(provider, state_info=state, timeout=30)
    return SimpleNamespace(create_account=create, Client=AsyncFindMyClient,
        convert=records_from_changes, decrypt=decrypt_records,
        accessory=accessory_from_record, Unauthorized=UnauthorizedError,
        Invalid=InvalidCredentialsError)


class _Failure(Exception):
    def __init__(self, reason):
        self.reason = reason


def _position(stable):
    # Exact live component format from account_case_identity.case_position.
    if not isinstance(stable, str) or len(stable) > 1024:
        return None
    prefix, sep, tail = stable.partition("~#")
    if not sep or not prefix.startswith("a:/") or not tail.startswith("¶"):
        return None
    parts = tail.split("§")
    if len(parts) == 5 and parts[-1] == "":
        parts.pop()
    if len(parts) != 4 or parts[3] not in ("0", "1", "2"):
        return None
    try:
        serial = bytes.fromhex(parts[2]).decode("ascii")
    except (ValueError, UnicodeDecodeError):
        return None
    return int(parts[3]) if serial and len(serial) <= 64 else None


def _escrow_identity(record):
    if not isinstance(record.label, str) or not record.label or len(record.label) > 1024:
        raise _Failure("invalid_recovery_record")
    if not isinstance(record.bottle_id, str) or not record.bottle_id or len(record.bottle_id) > 256:
        raise _Failure("invalid_recovery_record")
    return record.label, record.bottle_id


async def _request(operation):
    return await asyncio.wait_for(operation, timeout=REQUEST_TIMEOUT)


async def _records(store, convert):
    token, seen, records, changes = None, set(), [], 0
    for _ in range(MAX_PAGES):
        page = await _request(store.client.record_sync(ZONE, continuation_token=token,
                                                       max_changes=PAGE_SIZE))
        if not isinstance(page.changes, list) or len(page.changes) > PAGE_SIZE:
            raise _Failure("record_page_limit")
        changes += len(page.changes)
        if changes > MAX_CHANGES:
            raise _Failure("record_change_limit")
        converted = convert(page.changes, ZONE)
        if not isinstance(converted, list) or len(converted) > len(page.changes):
            raise _Failure("invalid_record_conversion")
        records.extend(record for record in converted if _allowed_record(record))
        if type(page.status) is int and page.status == 3:
            return records
        following = page.continuation_token
        if not isinstance(following, bytes) or not following or len(following) > MAX_TOKEN_BYTES:
            raise _Failure("record_pagination_incomplete")
        if following in seen:
            raise _Failure("record_pagination_cycle")
        seen.add(following)
        token = following
    raise _Failure("record_page_limit")


class CaseRecovery:
    """Single account-worker owner. Never serialize this object or its attributes."""
    def __init__(self, session, dependencies=None):
        self.session = session
        self.deps = dependencies
        self._owner = None
        self._options = {}
        self._public_options = []
        self._option_expiry = 0
        self._cases = {}
        self._components = []
        self._selected = None
        self._key_expiry = 0
        self._last = dict(state="idle", message="Recover this account’s case keys when you are ready.",
                          options=[], cases=[], keysAvailable=False)
        self._stage = "session"

    def _status(self, state, message, **extra):
        self._last = dict(state=state, message=message, options=self._public_options,
                          cases=[], groups=self._components, keysAvailable=self._selected is not None)
        self._last.update(extra)
        return self.status()

    def status(self):
        if self._owner is not None and self.session.account is not self._owner:
            self.clear()
        if self._key_expiry and time.monotonic() >= self._key_expiry:
            self.clear()
        return json.dumps(self._last, separators=(",", ":"))

    def clear(self):
        self._owner = None
        self._options.clear()
        self._public_options = []
        self._cases.clear()
        self._components = []
        self._selected = None
        self._key_expiry = self._option_expiry = 0
        return self._status("idle", "Case keys cleared from memory.")

    def _account_loop(self):
        account = self.session.account
        if account is None or account.login_state != self.session.deps.State.LOGGED_IN:
            raise _Failure("signed_in_session_required")
        if self._owner is not None and account is not self._owner:
            self.clear()
            raise _Failure("account_changed")
        loop = getattr(account, "_evt_loop", None)
        if loop is None or loop.is_closed() or loop.is_running():
            raise _Failure("account_worker_required")
        try:
            asyncio.get_running_loop()
        except RuntimeError:
            return account, loop
        raise _Failure("account_worker_required")

    def _execute(self, password, action):
        operation = None
        try:
            account, loop = self._account_loop()
            if not isinstance(password, str) or not password:
                return self._status("needs_password", "Enter your Apple Account password for fresh keychain access.")
            self.deps = self.deps or _dependencies()
            self._owner = account
            self._stage = "authentication"
            operation = self._temporary(account, password, action)
            return loop.run_until_complete(operation)
        except _Failure as failure:
            self._cases.clear()
            self._selected = None
            self._key_expiry = 0
            return self._status("recovery_unavailable", "Recovery could not finish. Check the selected device and try again.",
                                reason=failure.reason, stage=self._stage)
        except Exception as failure:
            self._cases.clear()
            self._selected = None
            self._key_expiry = 0
            deps = self.deps
            if deps is not None and isinstance(failure, (deps.Unauthorized, deps.Invalid)):
                return self._status("authentication_required", "Apple refused fresh keychain authentication. Check your Apple password or sign in again, then retry.",
                                    reason="fresh_authentication_refused", stage=self._stage)
            if isinstance(failure, asyncio.TimeoutError):
                return self._status("recovery_unavailable", "Key recovery timed out. Retry only when you are ready.",
                                    reason="recovery_timeout", stage=self._stage)
            return self._status("recovery_unavailable", "Key recovery failed. The selected device password or Apple recovery exchange could not be verified.",
                                reason="recovery_failed", stage=self._stage)
        finally:
            password = None
            if operation is not None:
                operation.close()

    async def _temporary(self, account, password, action):
        snapshot = copy.deepcopy(account.to_json())
        snapshot["account"]["password"] = password
        clone = client = None
        try:
            clone = self.deps.create_account(self.session, snapshot)
            client = await _request(self.deps.Client.open(clone))
            return await asyncio.wait_for(action(client), timeout=OPERATION_TIMEOUT)
        finally:
            snapshot["account"]["password"] = None
            password = None
            try:
                if client is not None:
                    await asyncio.wait_for(client.close(), timeout=5)
            finally:
                if clone is not None:
                    await asyncio.wait_for(clone.close(), timeout=5)

    async def _viable(self, client):
        self._stage = "recovery_options"
        options = list((await _request(client.recovery_options())).recoverable)
        if not 1 <= len(options) <= MAX_OPTIONS:
            raise _Failure("recovery_option_count")
        identities = [_escrow_identity(record) for record in options]
        if len(set(identities)) != len(identities):
            raise _Failure("recovery_options_ambiguous")
        return options

    def list_options(self, apple_password):
        self.clear()
        async def action(client):
            options = await self._viable(client)
            public = []
            for record in options:
                handle = secrets.token_hex(16)
                self._options[handle] = _escrow_identity(record)
                model = record.device_model
                model = model if isinstance(model, str) and re.fullmatch(r"[A-Za-z0-9,._-]{1,40}", model) else "Unknown model"
                date = record.escrowed_at.date().isoformat() if isinstance(record.escrowed_at, datetime) else "Unknown date"
                public.append(dict(id=handle, label=f"{model} · {date}"))
            self._option_expiry = time.monotonic() + OPTION_LIFETIME
            self._public_options = public
            return self._status("choose_device", "Choose the escrow device whose login password or PIN you know. Match its model and escrow date.", options=public)
        return self._execute(apple_password, action)

    def recover(self, option_id, apple_password, device_passcode):
        identity = self._options.get(str(option_id))
        if identity is None or time.monotonic() >= self._option_expiry:
            return self._status("needs_options", "List current recovery devices again.")
        if not isinstance(device_passcode, str) or not device_passcode:
            return self._status("needs_device_passcode", "Enter the selected device’s login password or PIN.")
        self._cases.clear()
        self._selected = None
        self._key_expiry = 0
        async def action(client):
            options = await self._viable(client)
            matches = [record for record in options if _escrow_identity(record) == identity]
            if len(matches) != 1:
                raise _Failure("selected_escrow_record_changed")
            self._stage = "device_recovery"
            await _request(client.unlock(matches[0], device_passcode, views=("Manatee",)))
            self._stage = "zone_keys"
            keys = await _request(client.zone_keys())
            defaults = await _request(client.store.zone_record_defaults(keys))
            self._stage = "case_records"
            raw = await _records(client.store, self.deps.convert)
            decoded = self.deps.decrypt(raw, keys, default_master_keys=defaults)
            self._stage = "case_selection"
            self._prepare_cases(decoded)
            self._key_expiry = time.monotonic() + KEY_LIFETIME
            return self._status("choose_case", "Choose the owned case matching its serial ending. Recovered keys stay in memory for 30 minutes.",
                                cases=[dict(id=handle, label=label) for handle, (_, _, label) in self._cases.items()])
        try:
            return self._execute(apple_password, action)
        finally:
            device_passcode = apple_password = None

    def _prepare_cases(self, decoded):
        if not isinstance(decoded, list) or len(decoded) > MAX_CHANGES:
            raise _Failure("decoded_record_limit")
        groups = {}
        for record in decoded:
            if record.record_type != "MasterBeaconRecord" or record.undecryptable:
                continue
            group = record.values.get("groupIdentifier")
            position = _position(record.values.get("stableIdentifier"))
            if isinstance(group, str) and 1 <= len(group) <= 128 and position is not None:
                groups.setdefault(group.casefold(), set()).add(position)
        beacons = [record for record in decoded if record.record_type == "MasterBeaconRecord"
                   and not record.undecryptable and _position(record.values.get("stableIdentifier")) == 2]
        if not 1 <= len(beacons) <= MAX_OPTIONS:
            raise _Failure("case_missing_or_incomplete")
        names = [record.name for record in beacons]
        if any(not isinstance(name, str) or not 1 <= len(name) <= 256 for name in names) or len(set(names)) != len(names):
            raise _Failure("case_identity_ambiguous")
        prepared = {}
        for number, beacon in enumerate(beacons, 1):
            alignments = [record for record in decoded if record.record_type == "KeyAlignmentRecord"
                          and record.values.get("beaconIdentifier") == beacon.name]
            if len(alignments) > 1:
                raise _Failure("case_alignment_ambiguous")
            alignment = alignments[0] if alignments else None
            if alignment is not None and (alignment.undecryptable or
                    not isinstance(alignment.values.get("lastIndexObservationDate"), datetime) or
                    type(alignment.values.get("lastIndexObserved")) is not int or
                    alignment.values["lastIndexObserved"] < 0):
                raise _Failure("case_alignment_incomplete")
            accessory = self.deps.accessory(beacon, alignment=alignment)
            tail = beacon.values["stableIdentifier"].partition("~#")[2]
            serial = bytes.fromhex(tail.split("§")[2]).decode("ascii")
            suffix = serial[-4:]
            if not re.fullmatch(r"[A-Za-z0-9]{1,4}", suffix):
                suffix = "unknown"
            prepared[secrets.token_hex(16)] = (beacon, accessory, f"Case {number} · serial ending {suffix}")
        self._cases = prepared
        roles = {0: "Left earbud", 1: "Right earbud", 2: "Case"}
        self._components = [dict(label=f"Owned accessory group {number}",
            components=[roles[position] for position in sorted(positions)])
            for number, positions in enumerate(groups.values(), 1)]

    def select_case(self, case_id):
        try:
            self._account_loop()
            if not self._key_expiry or time.monotonic() >= self._key_expiry:
                self.clear()
                raise _Failure("case_keys_expired")
            selected = self._cases.get(str(case_id))
            if selected is None:
                raise _Failure("exact_case_selection_required")
            self._selected = selected[:2]
            self._cases.clear()
            self._options.clear()
            self._public_options = []
            return self._status("keys_ready", "Selected case keys are available in memory. The app’s case connection still needs integration.")
        except _Failure as failure:
            self._cases.clear()
            self._selected = None
            self._key_expiry = 0
            return self._status("recovery_unavailable", "Select a current owned case after recovery.", reason=failure.reason)

    def selected_accessory(self):
        """Internal worker API for future owner BLE integration. Never log/export it."""
        self._account_loop()
        if self._selected is None or time.monotonic() >= self._key_expiry:
            self.clear()
            raise _Failure("selected_case_required")
        return self._selected[1]

    def radio_accessory(self):
        """In-process owner-radio API. Allows only the account's existing async loop.

        Caller must complete its operation within the remaining key lifetime;
        recheck this method before each new candidate/encryption attempt.
        """
        account = self.session.account
        if account is None or account is not self._owner or account.login_state != self.session.deps.State.LOGGED_IN:
            self.clear()
            raise _Failure("signed_in_owner_required")
        try:
            running = asyncio.get_running_loop()
        except RuntimeError:
            running = None
        loop = account._evt_loop
        if loop.is_closed() or (running is None and loop.is_running()) or (running is not None and running is not loop):
            raise _Failure("account_worker_required")
        if self._selected is None or time.monotonic() >= self._key_expiry:
            self.clear()
            raise _Failure("selected_case_required")
        return self._selected[1]
