"""Find My readiness and bounded account reads; never pair or register an accessory.

The extension payload is based on the verified 2026-10-08 registration audit.
HTTP 204 is not enrollment confirmation. The native Apple owner-pairing chain is
an independent prerequisite and has not been implemented on Android.
"""
from __future__ import annotations

import asyncio
import base64
import hashlib
import json
import math
import plistlib
import re
import time
from datetime import datetime, timezone
from urllib.parse import urlsplit
from uuid import UUID

APPLE_VENDOR = 76
AIRPODS_PRO_3_PRODUCT = 8231
PRODUCT_TYPE = hashlib.sha256(b"BT_76_8231").hexdigest()
_MAC = re.compile(r"(?:[0-9A-F]{2}:){5}[0-9A-F]{2}\Z")
_FMIP_HOST = re.compile(r"(?:p[0-9]+-)?fmip(?:mobile)?\.icloud\.com(?:\.cn)?\Z")
_CONFIG_HOSTS = {"gateway.icloud.com", "gateway.icloud.com.cn"}
_PAIRING_MESSAGE = (
    "Adding new AirPods requires owner pairing on an Apple device first. "
    "Android sign-in alone does not create the Find My pairing records."
)


def accessory_udid(audio_address):
    """Use the audio Bluetooth address, never the rotating case BLE address."""
    address = str(audio_address).upper()
    if not _MAC.fullmatch(address) or address in {"00:00:00:00:00:00", "FF:FF:FF:FF:FF:FF", "02:00:00:00:00:00"}:
        raise ValueError("A genuine audio Bluetooth address is required")
    return hashlib.sha256(("BT_" + address).encode("ascii")).hexdigest()


def _status(state, message, **extra):
    result = dict(state=state, message=message, configVersion=None, visibleAirPods=0,
                  selectedDeviceVisible=None, canRegister=False, busy=False)
    result.update(extra)
    return result


def _result(value):
    return json.dumps(value, separators=(",", ":"))


def _account(session):
    account = getattr(session, "account", None)
    if account is None or account.login_state != session.deps.State.LOGGED_IN:
        return None
    return account


def inspect_account(session):
    """Inert readiness check. No ADI, transport, keychain, pairing or account writes."""
    account = _account(session)
    if account is None:
        return _result(_status("signed_out", "Sign in to check Find My account access."))
    if not account.service_tokens.get("mmeFMIPToken"):
        return _result(_status("service_unavailable", "Apple did not return Find My service access."))
    return _result(_status("native_pairing_required", _PAIRING_MESSAGE))


def parse_configuration(data):
    """Consume a current exact product configuration, never assume historical version 27."""
    entries = data.get("configurations") if isinstance(data, dict) else None
    if not isinstance(entries, list):
        raise ValueError("Missing product configuration response")
    matches = []
    for entry in entries:
        if not isinstance(entry, dict) or str(entry.get("statusCode")) != "200":
            continue
        config = entry.get("config")
        if isinstance(config, dict) and config.get("type") == PRODUCT_TYPE:
            version = config.get("version")
            if isinstance(version, (str, int)) and not isinstance(version, bool) and str(version) and isinstance(config.get("features"), dict):
                matches.append({"type": PRODUCT_TYPE, "version": str(version), "features": config["features"], "receivedAt": time.time()})
    if len(matches) != 1:
        raise ValueError("No unique current AirPods product configuration")
    return matches[0]


def _fmip_host(value):
    if not isinstance(value, str) or not _FMIP_HOST.fullmatch(value):
        raise ValueError("Unexpected Apple Find My host")
    return value


def _configuration_url(value):
    parsed = urlsplit(value)
    if parsed.scheme != "https" or parsed.hostname not in _CONFIG_HOSTS or parsed.port is not None or parsed.username or parsed.password or parsed.query or parsed.fragment or parsed.path.rstrip("/") != "/fmadminws/findkit":
        raise ValueError("Unexpected Apple configuration URL")
    return value.rstrip("/")


def _account_settings(data):
    """Choose only service hosts explicitly returned by Apple; retain verified defaults."""
    viewer = "fmipmobile.icloud.com"
    config_url = "https://gateway.icloud.com/fmadminws/findkit"
    def visit(value):
        nonlocal viewer, config_url
        if isinstance(value, dict):
            supplied = value.get("extAccessoryConfigURL")
            if supplied is not None:
                config_url = _configuration_url(supplied)
            for item in value.values():
                visit(item)
        elif isinstance(value, list):
            for item in value:
                visit(item)
        elif isinstance(value, str) and value.startswith("https://"):
            parsed = urlsplit(value)
            if parsed.hostname and _FMIP_HOST.fullmatch(parsed.hostname) and "fmipmobile." in parsed.hostname and not parsed.username and not parsed.password and parsed.port is None:
                viewer = parsed.hostname
    visit(data)
    return viewer, config_url


def summarize_devices(data, audio_address=""):
    """Exact selected-device identity only. Names never prove ownership or enrollment."""
    entries = data.get("content") if isinstance(data, dict) else None
    if not isinstance(entries, list):
        raise ValueError("Missing device list")
    expected = accessory_udid(audio_address) if audio_address else None
    matched = None if expected is None else False
    count = 0
    for device in entries:
        if not isinstance(device, dict):
            continue
        if "airpod" in str(device.get("deviceClass", "")).lower() or device.get("productType") == PRODUCT_TYPE:
            count += 1
        if expected is not None and any(isinstance(device.get(key), str) and device[key].lower() == expected for key in ("id", "udid")):
            matched = True
        if expected is not None and isinstance(device.get("deviceDiscoveryId"), str) and device["deviceDiscoveryId"].upper() == str(audio_address).upper():
            matched = True
    return dict(visibleAirPods=count, selectedDeviceVisible=matched)


class _HttpFailure(Exception):
    def __init__(self, status):
        self.status = status


class _AppleReadClient:
    """Fixed read operations. Credential redirects never follow arbitrary Location URLs."""
    def __init__(self, account, anisette, profile, transport=None):
        self.account = account
        self.anisette = anisette
        self.profile = profile
        self.transport = transport

    async def __aenter__(self):
        if self.transport is None:
            import aiohttp
            from findmy.util.tls import apple_trust_context
            self.transport = aiohttp.ClientSession(timeout=aiohttp.ClientTimeout(total=20),
                connector=aiohttp.TCPConnector(ssl=apple_trust_context()))
        return self

    async def __aexit__(self, *unused):
        await self.transport.close()

    async def _request(self, method, url, token, headers, body=None, fmip_redirects=False):
        headers = dict(headers)
        dsid = str(self.account.dsid)
        if not dsid.isascii() or not dsid.isdecimal() or not token:
            raise ValueError("Missing Find My credential")
        headers["Authorization"] = "Basic " + base64.b64encode((dsid + ":" + token).encode()).decode()
        for _ in range(3):
            kwargs = dict(headers=headers, allow_redirects=False)
            if body is not None:
                kwargs["json"] = body
            async with self.transport.request(method, url, **kwargs) as response:
                if fmip_redirects and response.status in (301, 302, 307, 308, 330):
                    host = _fmip_host(response.headers.get("X-Apple-MME-Host"))
                    parsed = urlsplit(url)
                    url = "https://" + host + parsed.path
                    continue
                if response.status != 200:
                    raise _HttpFailure(response.status)
                # Bound successful responses too; no raw body leaves this module or enters logs.
                chunks = []
                size = 0
                while True:
                    chunk = await response.content.read(min(65536, 1024 * 1024 + 1 - size))
                    if not chunk:
                        break
                    chunks.append(chunk)
                    size += len(chunk)
                    if size > 1024 * 1024:
                        raise ValueError("Oversized Apple response")
                return b"".join(chunks)
        raise ValueError("Too many Apple redirects")

    async def read(self, audio_address=""):
        tokens = dict(self.account.service_tokens)
        viewer, config_url = _account_settings({})
        if tokens.get("mmeAuthToken"):
            raw = await self._request("GET", "https://setup.icloud.com/setup/get_account_settings",
                tokens["mmeAuthToken"], {**self.anisette, "Accept": "application/x-apple-plist"})
            settings = plistlib.loads(raw)
            if not isinstance(settings, dict):
                raise ValueError("Unexpected Apple settings")
            fresh = settings.get("tokens", {})
            if isinstance(fresh, dict):
                for key in ("mmeFMIPToken", "mmeFMIPAppToken"):
                    if isinstance(fresh.get(key), str) and fresh[key]:
                        tokens[key] = fresh[key]
            viewer, config_url = _account_settings(settings)
        profile = self.profile
        client_info = f'<{profile["model"]}> <{profile["os_name"]};{profile["os_version"]};{profile["os_build"]}> <com.apple.findmydeviced/1 (com.apple.findmydeviced/1)>'
        config_headers = {"X-Apple-PrsId": str(self.account.dsid), "X-Apple-Find-API-Ver": "6.0",
            "X-Apple-PushEnv": "production", "Content-Type": "application/json",
            "X-MMe-Client-Info": client_info, "User-Agent": f'FMDClient/6.0 {profile["model"]}/{profile["os_build"]}'}
        config_version = None
        config_note = ""
        try:
            raw = await self._request("POST", config_url + "/accessoryInfo", tokens.get("mmeFMIPToken"),
                config_headers, {"accessoryTypes": [{"type": PRODUCT_TYPE, "cachedVersion": ""}]})
            config_version = parse_configuration(json.loads(raw))["version"]
        except Exception:
            # Catalogue access and device-list visibility are independent evidence.
            # A broken catalogue must not hide a successfully registered owned row.
            config_note = " The current AirPods product configuration could not be checked."
        summary = dict(visibleAirPods=0, selectedDeviceVisible=None)
        if not tokens.get("mmeFMIPAppToken"):
            return _status("native_pairing_required", _PAIRING_MESSAGE + " Device-list access was not returned by Apple." + config_note, configVersion=config_version, **summary)
        context = dict(appName="FindMyiPhone", appVersion="7.0", fmly=False, shouldLocate=False,
            deviceUDID=self.account.device_uuid, productType=profile["model"], osVersion=profile["os_version"],
            osBuild=profile["os_build"], buildVersion="517", clientTimestamp=int(time.time()*1000),
            lastSllTimestamp=0, showSllCount=0, inactiveTime=0, push=False)
        try:
            raw = await self._request("POST", "https://" + _fmip_host(viewer) + "/fmipservice/device/" + str(self.account.dsid) + "/initClient",
                tokens["mmeFMIPAppToken"], {**self.anisette, "X-Apple-Find-API-Ver": "3.0", "X-Apple-Realm-Support": "1.0",
                "X-Apple-AuthScheme": "Forever", "User-Agent": "FindMyiPhone/7.0", "Content-Type": "application/json"},
                {"clientContext": context, "serverContext": {}}, fmip_redirects=True)
            summary = summarize_devices(json.loads(raw), audio_address)
        except _HttpFailure as failure:
            state = "reauth_required" if failure.status in (401, 403) else "service_unavailable"
            message = ("Apple refused device-list access. Sign in again to refresh it." if state == "reauth_required" else "The Find My device list is temporarily unavailable. Try again later.")
            return _status(state, message + config_note, configVersion=config_version)
        except Exception:
            return _status("service_unavailable", "The Find My device list could not be checked. Check the connection and try again." + config_note, configVersion=config_version)
        if summary["selectedDeviceVisible"] is True:
            return _status("existing_device_visible", "These AirPods are listed in this Find My account. Keep the existing pairing." + config_note, configVersion=config_version, **summary)
        message = _PAIRING_MESSAGE
        if summary["selectedDeviceVisible"] is False:
            message = "The selected AirPods were not returned by this device-list endpoint. Native Find My may still show them; absence here does not prove missing enrollment. " + message
        elif summary["visibleAirPods"]:
            message = "AirPods entries are visible in this account. Connect your AirPods in LibrePods to check their exact identity. " + message
        return _status("registration_unconfirmed", message + config_note, configVersion=config_version, **summary)


def refresh_account(session, audio_address=""):
    """Run on the same Android account worker. Explicit user refresh performs reads only."""
    account = _account(session)
    if account is None:
        return inspect_account(session)
    try:
        if audio_address:
            accessory_udid(audio_address)
        if not account.service_tokens.get("mmeFMIPToken"):
            return inspect_account(session)
        anisette = account.get_anisette_headers(with_client_info=True)
        async def read():
            async with _AppleReadClient(account, anisette, session.identity["profile"]) as client:
                return await client.read(audio_address)
        # Pinned FindMy.py's synchronous wrapper owns this loop. Headers are obtained
        # before entering it, so no synchronous wrapper recursively runs a live loop.
        return _result(account._evt_loop.run_until_complete(read()))
    except _HttpFailure as failure:
        if failure.status in (401, 403):
            return _result(_status("reauth_required", "Apple refused Find My access. Sign in again to refresh it."))
        return _result(_status("service_unavailable", "Find My account access is temporarily unavailable. Try again later."))
    except Exception:
        return _result(_status("service_unavailable", "The Find My check could not finish. Check the connection and try again."))


def build_registration(pairing, host, configuration, *, now=None):
    """Pure Mac bridge preparation, NOT an enrollment operation.

    `pairing` must come from a trusted native Apple owner-pairing exporter. These
    structural checks cannot authenticate self-reported evidence. An Android
    Bluetooth bond, generated UUID or account login does not satisfy this contract.
    Never call for an already enrolled device merely because a web list omits it.
    """
    if pairing.get("source") != "apple_native_owner_pairing" or pairing.get("ownerAccountVerified") is not True or pairing.get("acknowledgedComponents") != [0, 1, 2] or pairing.get("cloudKitSavedComponents") != [0, 1, 2]:
        raise ValueError("Verified native owner pairing for both earbuds and case is required")
    if pairing.get("alreadyEnrolled") is not False:
        raise ValueError("Existing or unknown enrollment must be preserved")
    if pairing.get("vendorId") != APPLE_VENDOR or pairing.get("productId") != AIRPODS_PRO_3_PRODUCT:
        raise ValueError("Unverified accessory product")
    address = str(pairing.get("audioAddress", "")).upper()
    udid = accessory_udid(address)
    group = str(UUID(str(pairing.get("groupUuid", "")))).upper()
    if UUID(group).int == 0 or pairing.get("udid") != udid:
        raise ValueError("Native paired accessory identity mismatch")
    current = now or datetime.now(timezone.utc)
    if current.tzinfo is None:
        raise ValueError("An explicit UTC timestamp is required")
    received = configuration.get("receivedAt")
    if configuration.get("type") != PRODUCT_TYPE or not isinstance(configuration.get("version"), str) or not configuration["version"] or not isinstance(received, (int, float)) or isinstance(received, bool) or not -60 <= current.timestamp() - received <= 900:
        raise ValueError("A current exact product configuration is required")
    required = ("deviceName", "udid", "deviceClass", "platform", "productType", "productVersion")
    if host.get("source") != "actual_apple_host" or host.get("ownerAccountVerified") is not True or host.get("platform") != "macosx" or not all(isinstance(host.get(key), str) and host[key] for key in required):
        raise ValueError("An actual owner Mac host reference is required")
    if UUID(host["udid"]).int == 0:
        raise ValueError("Invalid native host identity")
    owner = pairing.get("ownerAccountId")
    if not isinstance(owner, str) or not owner.isascii() or not owner.isdecimal() or owner != host.get("ownerAccountId"):
        raise ValueError("Pairing and Apple host must belong to the same verified account")
    name = pairing.get("deviceName")
    serials = pairing.get("serialNumbers")
    if not isinstance(name, str) or not name or not isinstance(serials, dict) or not serials or not all(isinstance(k, str) and isinstance(v, str) and v for k, v in serials.items()):
        raise ValueError("Genuine name and serial dictionary are required")
    connection = pairing.get("connectionStatus")
    if connection not in ("Unknown", "connected", "disconnected"):
        raise ValueError("Invalid observed connection state")
    last_active = pairing.get("lastActiveTime", -1) if connection == "connected" else -1
    if not isinstance(last_active, (int, float)) or isinstance(last_active, bool) or not math.isfinite(last_active):
        raise ValueError("Invalid observed activity timestamp")
    info = dict(deviceName=name, udid=udid, deviceDiscoveryId=address, baUUID=group,
        connectionStatus=connection, lastActiveTime=last_active, accessoryRSSITimestamp=-1,
        batteryInfo=[], audioChannels=[], locationServicesEnabled=True, findMyiPhone=True,
        activationLock=False, productVersion=host["productVersion"], deviceClass="Accessory",
        productType=PRODUCT_TYPE, cachedConfigVersion=configuration["version"], platform="macosx_proxy",
        otherDevices=[{key: host[key] for key in required if key != "productVersion"}],
        serialNumbers=dict(serials), **{"aps-token": "TOKEN"})
    info["otherDevices"][0]["lastActiveTime"] = last_active
    for key in ("firmwareVersion", "deviceColor"):
        if key in pairing:
            info[key] = pairing[key]
    return {"deviceInfo": info, "deviceContext": {"deviceTS": current.astimezone(timezone.utc).isoformat(timespec="milliseconds").replace("+00:00", "Z"), "cause": "accessoryRegistryUpdate"}}
