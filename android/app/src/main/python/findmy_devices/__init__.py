"""Named, read-only Find My device rows for the signed-in Android account worker.

Reuses the enrollment transport's Apple-only redirects, authentication and 1MiB
response bound. initClient explicitly disables locate/push. No enrollment or
device action is performed. Legacy rows do not enumerate every encrypted AirPods
component; those come from BeaconStore after explicit Manatee recovery.
Names/types/status are for the user's UI only; ids, locations and secrets are
discarded. Unknown numeric Apple status codes are displayed without guessing.
"""
import asyncio
import json
import plistlib
import time
import unicodedata

from findmy_enrollment import _AppleReadClient, _HttpFailure, _account_settings, _fmip_host, PRODUCT_TYPE

MAX_DEVICES = 256


def _text(value, fallback, limit=120):
    if not isinstance(value, str):
        return fallback
    value = "".join(character for character in value if not unicodedata.category(character).startswith("C"))
    return value.strip()[:limit] or fallback


def _state(device):
    if isinstance(device.get("isOffline"), bool):
        return "Offline" if device["isOffline"] else "Online"
    if isinstance(device.get("online"), bool):
        return "Online" if device["online"] else "Offline"
    value = device.get("deviceStatus")
    if type(value) is int or isinstance(value, str) and value.isascii() and value.isdecimal():
        return "Unknown (Apple status " + str(value)[:8] + ")"
    return _text(value, "Status unavailable", 60)


def summarize_devices(data):
    rows = data.get("content") if isinstance(data, dict) else None
    if not isinstance(rows, list):
        raise ValueError("Missing device list")
    if len(rows) > MAX_DEVICES or any(not isinstance(row, dict) for row in rows):
        raise ValueError("Invalid device list")
    result = []
    airpods = 0
    for index, row in enumerate(rows):
        kind = _text(row.get("deviceDisplayName") or row.get("modelDisplayName") or
                     row.get("deviceClass") or row.get("productType"), "Unknown device type")
        if "airpod" in kind.lower() or row.get("productType") == PRODUCT_TYPE:
            airpods += 1
        result.append(dict(id=str(index), name=_text(row.get("name"), "Unnamed device"),
                           type=kind, state=_state(row)))
    return result, airpods


class _DeviceReader(_AppleReadClient):
    async def read_devices(self):
        tokens = dict(self.account.service_tokens)
        viewer, _ = _account_settings({})
        if tokens.get("mmeAuthToken"):
            raw = await self._request("GET", "https://setup.icloud.com/setup/get_account_settings",
                tokens["mmeAuthToken"], {**self.anisette, "Accept": "application/x-apple-plist"})
            settings = plistlib.loads(raw)
            if not isinstance(settings, dict):
                raise ValueError("Invalid settings")
            viewer, _ = _account_settings(settings)
            fresh = settings.get("tokens", {})
            if isinstance(fresh, dict) and isinstance(fresh.get("mmeFMIPAppToken"), str) and fresh["mmeFMIPAppToken"]:
                tokens["mmeFMIPAppToken"] = fresh["mmeFMIPAppToken"]
        if not tokens.get("mmeFMIPAppToken"):
            return _status("service_unavailable", "Apple did not return device-list access. Sign in again to refresh it.")
        profile = self.profile
        context = dict(appName="FindMyiPhone", appVersion="7.0", fmly=False, shouldLocate=False,
            deviceUDID=self.account.device_uuid, productType=profile["model"], osVersion=profile["os_version"],
            osBuild=profile["os_build"], buildVersion="517", clientTimestamp=int(time.time() * 1000),
            lastSllTimestamp=0, showSllCount=0, inactiveTime=0, push=False)
        raw = await self._request("POST", "https://" + _fmip_host(viewer) + "/fmipservice/device/" + str(self.account.dsid) + "/initClient",
            tokens["mmeFMIPAppToken"], {**self.anisette, "X-Apple-Find-API-Ver": "3.0", "X-Apple-Realm-Support": "1.0",
            "X-Apple-AuthScheme": "Forever", "User-Agent": "FindMyiPhone/7.0", "Content-Type": "application/json"},
            {"clientContext": context, "serverContext": {}}, fmip_redirects=True)
        devices, airpods = summarize_devices(json.loads(raw))
        state = "devices_available" if devices else "empty"
        message = "Find My returned these devices." if devices else "Find My returned an empty device list. This does not prove there are no encrypted accessories."
        if not airpods:
            message += " AirPods were not returned by this endpoint. Recover the encrypted BeaconStore records below to check their groups and components."
        return _status(state, message, devices=devices, legacyAirPods=airpods)


def _status(state, message, **extra):
    value = dict(state=state, message=message, devices=[], legacyAirPods=0)
    value.update(extra)
    return value


def refresh_devices(session, reader_type=None):
    """Explicit user refresh, on AccountSession's existing synchronous worker."""
    operation = None
    try:
        account = session.account
        if account is None or account.login_state != session.deps.State.LOGGED_IN:
            return json.dumps(_status("signed_out", "Sign in to read your Find My devices."))
        loop = account._evt_loop
        if loop.is_closed() or loop.is_running():
            raise ValueError("Account worker required")
        try:
            asyncio.get_running_loop()
        except RuntimeError:
            pass
        else:
            raise ValueError("Account worker required")
        # The sync wrapper is called before entering its loop, never recursively.
        anisette = account.get_anisette_headers(with_client_info=True)
        async def read():
            async with (reader_type or _DeviceReader)(account, anisette, session.identity["profile"]) as client:
                return await asyncio.wait_for(client.read_devices(), timeout=60)
        operation = read()
        result = loop.run_until_complete(operation)
    except _HttpFailure as failure:
        if failure.status in (401, 403):
            result = _status("reauth_required", "Apple refused device-list access. Sign in again, then refresh.")
        else:
            result = _status("service_unavailable", "The Find My device list is temporarily unavailable. Try again.")
    except Exception:
        result = _status("service_unavailable", "The Find My device list could not be read. Check the connection and refresh.")
    finally:
        if operation is not None:
            operation.close()
    return json.dumps(result, separators=(",", ":"))
