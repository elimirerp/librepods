"""Local Apple Account bridge. No Android imports; injectable dependencies support offline tests.

Native anisette adapter is adapted from OpenTagViewer (MIT, Copyright 2025 ShaneB).
See THIRD_PARTY_LICENSE.txt. No remote anisette fallback is implemented.
"""
from __future__ import annotations
import json
import inspect
import asyncio
import logging
from types import SimpleNamespace

_FIELDS = {"model", "os_name", "os_version", "os_build", "cfnetwork", "darwin"}


def _dependencies():
    from findmy.reports import (AppleAccount, BaseAnisetteProvider, DeviceIdentity, LoginState,
                                SmsSecondFactorMethod, TrustedDeviceSecondFactorMethod)
    from findmy.errors import InvalidCredentialsError, UnauthorizedError, AppleServiceUnavailableError
    for name in ("findmy", "aiohttp", "srp", "anisette"):
        logging.getLogger(name).setLevel(logging.CRITICAL)
    return SimpleNamespace(Account=AppleAccount, ProviderBase=BaseAnisetteProvider,
                           Identity=DeviceIdentity, State=LoginState, Sms=SmsSecondFactorMethod,
                           Trusted=TrustedDeviceSecondFactorMethod, Invalid=InvalidCredentialsError,
                           Unauthorized=UnauthorizedError, Unavailable=AppleServiceUnavailableError)


def _identity(bridge):
    profile = json.loads(str(bridge.hardwareProfileJson()))
    ids = json.loads(str(bridge.deviceIdsJson()))
    serial = str(bridge.serial())
    if set(profile) != _FIELDS or not all(isinstance(v, str) and v for v in profile.values()):
        raise ValueError("Incomplete local hardware profile")
    if set(ids) != {"uid", "devid"} or not all(isinstance(v, str) and v for v in ids.values()):
        raise ValueError("Incomplete local identifiers")
    if not serial:
        raise ValueError("Missing local serial")
    return {"profile": profile, "ids": ids, "serial": serial}


def _provider(bridge, identity, deps):
    class NativeProvider(deps.ProviderBase):
        @property
        def otp(self):
            value = str(bridge.otp())
            if not value:
                raise RuntimeError("Local anisette is unavailable")
            return value

        @property
        def machine(self):
            value = str(bridge.machine())
            if not value:
                raise RuntimeError("Local anisette is unavailable")
            return value

        def to_json(self, dst=None, /):
            if dst is not None:
                raise ValueError("Native provider cannot write unencrypted state")
            return {"type": "librepodsNativeADI", "serial": identity["serial"],
                    "identity": identity["profile"]}

        @classmethod
        def from_json(cls, val):
            raise ValueError("Restore through the local account bridge")

        async def close(self):
            pass
    return NativeProvider(serial=identity["serial"], identity=deps.Identity.from_json(identity["profile"]))


def _close_account(account):
    # The pinned library's synchronous AppleAccount still exposes async close().
    # Close on its own loop because aiohttp resources were created on that loop.
    result = account.close()
    if inspect.isawaitable(result):
        loop = getattr(account, "_evt_loop", None)
        if loop is None:
            loop = asyncio.get_event_loop()
        loop.run_until_complete(result)
        # Each synchronous wrapper owns a loop created on this otherwise non-async worker.
        # Detach Closable's GC hook before closing it to avoid scheduling another close later.
        if getattr(account, "_evt_loop", None) is loop:
            account._loop = None
            loop.close()


class AccountSession:
    """One account owned by the dedicated Android worker. Never call from concurrent threads."""
    def __init__(self, bridge, dependencies=None):
        self.bridge = bridge
        self.deps = dependencies or _dependencies()
        self.identity = _identity(bridge)
        self.account = None
        self.methods = {}
        self.selected = None
        self.terms = []
        self.pending_terms = []
        self._last = self._status("ready", "Local Apple sign-in is ready.")

    def _status(self, state, message="", **extra):
        out = {"state": state, "message": message, "methods": [], "selectedMethodId": self.selected,
               "termsHtml": None, "busy": False}
        out.update(extra)
        self._last = out
        return out

    def _result(self, status):
        return json.dumps(status, separators=(",", ":"))

    def status(self):
        return self._result(self._last)

    def close(self):
        old = self.account
        self.account = None
        self.methods.clear()
        self.selected = None
        self.terms.clear()
        self.pending_terms.clear()
        if old is not None:
            _close_account(old)
        return self._result(self._status("signed_out"))

    def _new_account(self, state=None):
        provider = _provider(self.bridge, self.identity, self.deps)
        kwargs = {"timeout": 30}
        if state is None:
            kwargs.update(self.identity["ids"])
            kwargs["device_name"] = "LibrePods"
        else:
            kwargs["state_info"] = state
        return self.deps.Account(provider, **kwargs)

    def _methods_status(self):
        self.methods.clear()
        self.selected = None
        labels = []
        for idx, method in enumerate(self.account.get_2fa_methods()):
            key = str(idx)
            if isinstance(method, self.deps.Sms):
                # Apple returns an already masked number. Do not expose account or token fields.
                label, kind = str(method.phone_number), "sms"
            elif isinstance(method, self.deps.Trusted):
                label, kind = "Trusted Apple device", "trusted_device"
            else:
                continue
            self.methods[key] = method
            labels.append({"id": key, "label": label, "kind": kind})
        if not labels:
            return self._status("error", "Apple returned no supported verification method.")
        return self._status("needs_2fa", "Choose where to receive a verification code.", methods=labels)

    def _finish(self, state):
        if state == self.deps.State.REQUIRE_2FA:
            return self._methods_status()
        if state == self.deps.State.LOGGED_IN:
            # Reconstruct through the supported constructor with password=None, then close all
            # references to the in-memory password-bearing account and second-factor objects.
            snapshot = self.account.to_json()
            snapshot["account"]["password"] = None
            new = self._new_account(snapshot)
            old = self.account
            self.account = new
            self.methods.clear()
            self.selected = None
            self.terms.clear()
            self.pending_terms.clear()
            _close_account(old)
            return self._status("signed_in", "Signed in to Apple Account.")
        return self._status("needs_terms", "Apple has not completed sign-in. Check pending iCloud terms.",
                            termsHtml=self._last.get("termsHtml"))

    def _failure(self, exc, during_code=False):
        # Never return repr/str/traceback or raw Apple response bodies through the UI boundary.
        if isinstance(exc, self.deps.Invalid):
            return self._status("error", "Apple did not accept the email or password.")
        if isinstance(exc, self.deps.Unauthorized):
            if during_code and self.account is not None and self.account.login_state == self.deps.State.REQUIRE_2FA:
                return self._status("needs_2fa", "Apple did not accept that verification code.",
                                    methods=self._last.get("methods", []))
            self.close()
            return self._status("reauth_required", "Apple requires a new sign-in.")
        message = ("Apple sign-in is temporarily unavailable. Try again later."
                   if isinstance(exc, self.deps.Unavailable) else
                   "The Apple request failed. Check the connection and try again.")
        if self.methods and self.account is not None and self.account.login_state == self.deps.State.REQUIRE_2FA:
            return self._status("needs_2fa", message, methods=self._last.get("methods", []))
        if self.account is not None and self.account.login_state == self.deps.State.AUTHENTICATED:
            return self._status("needs_terms", message + " Review pending iCloud terms.",
                                termsHtml=self._last.get("termsHtml"))
        return self._status("error", message)

    def sign_in(self, email, password):
        self.close()
        try:
            self.account = self._new_account()
            return self._result(self._finish(self.account.login(str(email), str(password))))
        except Exception as exc:
            result = self._failure(exc)
            # Authenticated terms/2FA state is needed to complete sign-in; failed credentials are not.
            if result["state"] not in ("needs_terms", "needs_2fa"):
                self.close()
                self._last = result
            return self._result(result)

    def request_code(self, method_id):
        method = self.methods.get(str(method_id))
        if method is None:
            return self._result(self._status("needs_2fa", "Choose a current verification method.",
                                            methods=self._last.get("methods", [])))
        try:
            method.request()
            self.selected = str(method_id)
            return self._result(self._status("needs_2fa", "Enter the verification code.", methods=self._last["methods"]))
        except Exception as exc:
            return self._result(self._failure(exc, during_code=True))

    def submit_code(self, code):
        method = self.methods.get(self.selected)
        code = str(code).strip()
        if method is None or len(code) != 6 or not code.isascii() or not code.isdigit():
            return self._result(self._status("needs_2fa", "Select a method and enter its six-digit code.",
                                            methods=self._last.get("methods", [])))
        try:
            return self._result(self._finish(method.submit(code)))
        except Exception as exc:
            return self._result(self._failure(exc, during_code=True))

    def export_session(self):
        if self.account is None or self.account.login_state != self.deps.State.LOGGED_IN:
            raise ValueError("Only completed sign-in can be stored")
        state = self.account.to_json()
        state["account"]["password"] = None
        return json.dumps({"version": 1, "provider": "nativeADI", "identity": self.identity,
                           "account": state}, separators=(",", ":"))

    def restore(self, serialized):
        self.close()
        try:
            data = json.loads(str(serialized))
            if data["version"] != 1 or data["provider"] != "nativeADI" or data["identity"] != self.identity:
                raise ValueError("Stored session is bound to a different local identity")
            state = data["account"]
            if state["account"]["password"] is not None or state["ids"] != self.identity["ids"]:
                raise ValueError("Invalid saved account identity")
            expected = {"type": "librepodsNativeADI", "serial": self.identity["serial"], "identity": self.identity["profile"]}
            if state["anisette"] != expected or state["login"]["state"] != self.deps.State.LOGGED_IN.value:
                raise ValueError("Invalid saved provider or incomplete login")
            self.account = self._new_account(state)
            # No network here: token validity is checked by the next authenticated operation.
            return self._result(self._status("signed_in", "Saved Apple session restored."))
        except Exception:
            self.close()
            return self._result(self._status("reauth_required", "Saved session cannot be restored. Sign in again."))

    def fetch_terms(self):
        if self.account is None:
            return self._result(self._status("reauth_required", "Sign in before reviewing iCloud terms."))
        try:
            self.terms = list(self.account.fetch_terms())
            self.pending_terms = list(self.terms)
            if not self.terms:
                return self._result(self._status("needs_terms", "Apple returned no terms to review. Try again."))
            return self._result(self._status("needs_terms", "Review the iCloud terms before accepting.",
                                            termsHtml="<hr>".join(t.html for t in self.terms)))
        except Exception as exc:
            return self._result(self._failure(exc))

    def accept_terms(self):
        if not self.terms:
            return self._result(self._status("needs_terms", "Fetch and review the terms first."))
        try:
            # Retain reviewed text on failures and remember each successful acceptance.
            # Retrying the delegate exchange must not submit agreement again.
            while self.pending_terms:
                self.account.accept_terms(self.pending_terms[0])
                self.pending_terms.pop(0)
            return self._result(self._finish(self.account.complete_login()))
        except Exception as exc:
            return self._result(self._failure(exc))
