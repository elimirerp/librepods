"""Bounded, read-only CloudKit metadata for an already signed-in AccountSession.

Call fetch_account_metadata on the account's single Android worker. It runs on
the synchronous AppleAccount wrapper's existing event loop with its existing
AsyncAppleAccount, service tokens, anisette provider and device identity. No
login, PET, keychain recovery, pairing, record saves or persistence occurs here.

Returned counts describe observed record changes, not a current accessory
inventory or a selected case. Deletions carry no record and are not counted.
Encrypted groupIdentifier and stableIdentifier/component fields still need
Manatee PCS keys before an exact owner case can be selected. The pinned
AsyncKeychainSession.open requests a fresh PET; a password-free restored session
does not supply that prerequisite. This adapter deliberately does not open it.
The existing AsyncBeaconStore can use already recovered service keys directly
later, without invoking that recovery flow again.

Pagination, change counts and time are bounded. The pinned HTTP client buffers
each response before decoding it; these are not transport-level byte limits.
No names, tokens, continuation tokens, ciphertext or exception text is returned.
"""
from __future__ import annotations

import asyncio
import json
from types import SimpleNamespace

ZONE = "BeaconStore"
PAGE_SIZE = 64
MAX_PAGES = 8
MAX_CHANGES = 256
MAX_TOKEN_BYTES = 4096
PAGE_TIMEOUT_SECONDS = 45
FETCH_TIMEOUT_SECONDS = 120
CLOSE_TIMEOUT_SECONDS = 5
_RECORD_TYPES = {"MasterBeaconRecord", "KeyAlignmentRecord"}


def _dependencies():
    from findmy.cloudkit.beacons import AsyncBeaconStore
    from findmy.cloudkit.records import records_from_changes
    from findmy.errors import UnauthorizedError
    return SimpleNamespace(Store=AsyncBeaconStore, convert=records_from_changes,
                           Unauthorized=UnauthorizedError)


class _ReadFailure(Exception):
    def __init__(self, reason):
        self.reason = reason


def _result(state, reason=None, **counts):
    # Failed or incomplete reads never present partial counts as success.
    value = dict(state=state, reason=reason, complete=False, pagesRead=0,
                 masterBeaconChanges=0, keyAlignmentChanges=0,
                 excludedRecordChanges=0, recordlessChanges=0,
                 caseIdentified=False, keysAvailable=False)
    value.update(counts)
    return json.dumps(value, separators=(",", ":"))


def _allowed_record(record):
    if record.record_type not in _RECORD_TYPES or record.zone_name != ZONE:
        return False
    # records_from_changes fills in the requested zone for records which omit it.
    # Reject an explicitly different original zone before accepting that fallback.
    source = getattr(record, "source", None)
    if source is not None:
        claimed_zone = source.record_identifier.zone_identifier.value.name
        if claimed_zone and claimed_zone != ZONE:
            return False
    return True


async def _read_pages(store, convert):
    token = None
    seen_tokens = set()
    change_count = 0
    counts = dict(masterBeaconChanges=0, keyAlignmentChanges=0,
                  excludedRecordChanges=0, recordlessChanges=0)
    for number in range(1, MAX_PAGES + 1):
        page = await asyncio.wait_for(store.client.record_sync(
            ZONE, continuation_token=token, max_changes=PAGE_SIZE),
            timeout=PAGE_TIMEOUT_SECONDS)
        # The pinned RecordSyncPage holds a list, not an unbounded iterator.
        if not isinstance(page.changes, list):
            raise _ReadFailure("invalid_page")
        if len(page.changes) > PAGE_SIZE:
            raise _ReadFailure("page_change_limit")
        change_count += len(page.changes)
        if change_count > MAX_CHANGES:
            raise _ReadFailure("total_change_limit")
        records = convert(page.changes, ZONE)
        if not isinstance(records, list) or len(records) > len(page.changes):
            raise _ReadFailure("invalid_conversion")
        counts["recordlessChanges"] += len(page.changes) - len(records)
        for record in records:
            if not _allowed_record(record):
                counts["excludedRecordChanges"] += 1
            elif record.record_type == "MasterBeaconRecord":
                counts["masterBeaconChanges"] += 1
            else:
                counts["keyAlignmentChanges"] += 1
        # Only the pinned protocol's observed status 3 proves sync completion.
        if type(page.status) is int and page.status == 3:
            state = ("encrypted_metadata_available" if
                     counts["masterBeaconChanges"] or counts["keyAlignmentChanges"]
                     else "no_beacon_metadata")
            return _result(state, complete=True, pagesRead=number, **counts)
        following = page.continuation_token
        if not following:
            raise _ReadFailure("pagination_incomplete")
        if not isinstance(following, bytes) or len(following) > MAX_TOKEN_BYTES:
            raise _ReadFailure("invalid_continuation_token")
        if following in seen_tokens:
            raise _ReadFailure("pagination_cycle")
        seen_tokens.add(following)
        token = following
    raise _ReadFailure("page_limit")


async def _read(account, deps):
    # Construct the client on the same running loop as the account's HTTP session.
    store = deps.Store(account)
    try:
        return await asyncio.wait_for(_read_pages(store, deps.convert),
                                      timeout=FETCH_TIMEOUT_SECONDS)
    finally:
        # Close only the temporary CloudKit client, never the account/provider/loop.
        await asyncio.wait_for(store.close(), timeout=CLOSE_TIMEOUT_SECONDS)


def fetch_account_metadata(session, dependencies=None):
    """Return redacted JSON. No real account call occurs until explicitly invoked.

    `dependencies` is for offline synthetic tests. Call on the same worker as
    AccountSession; concurrent access, or invoking from an async callback, is
    unsupported and is rejected before constructing a CloudKit client.
    """
    try:
        account = session.account
        if account is None or account.login_state != session.deps.State.LOGGED_IN:
            return _result("signed_out", "signed_in_session_required")
        async_account = getattr(account, "_asyncacc", None)
        if async_account is None or async_account.login_state != session.deps.State.LOGGED_IN:
            return _result("session_unavailable", "async_session_required")
        tokens = async_account.service_tokens
        if not all(isinstance(tokens.get(key), str) and tokens[key]
                   for key in ("mmeAuthToken", "cloudKitToken")):
            return _result("service_unavailable", "cloudkit_tokens_required")
        loop = getattr(account, "_evt_loop", None)
        if loop is None or loop.is_closed():
            return _result("session_unavailable", "account_loop_unavailable")
        try:
            asyncio.get_running_loop()
        except RuntimeError:
            pass
        else:
            return _result("session_unavailable", "worker_loop_required")
        if loop.is_running():
            return _result("session_unavailable", "worker_loop_required")
        deps = dependencies or _dependencies()
    except Exception:
        return _result("session_unavailable", "session_check_failed")
    operation = _read(async_account, deps)
    try:
        return loop.run_until_complete(operation)
    except deps.Unauthorized:
        return _result("reauth_required", "cloudkit_authorization_refused")
    except _ReadFailure as failure:
        return _result("metadata_unavailable", failure.reason)
    except asyncio.TimeoutError:
        return _result("metadata_unavailable", "read_timeout")
    except Exception:
        return _result("metadata_unavailable", "cloudkit_read_failed")
    finally:
        # Also close if run_until_complete rejected a changed/closed loop before
        # scheduling the coroutine. A finished coroutine's close is harmless.
        operation.close()
