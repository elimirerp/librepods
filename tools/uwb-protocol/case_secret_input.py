#!/usr/bin/env python3
"""One-use local hidden input for an already-running case identity helper.

Only a same-user Unix socket carries the input. No secret is written to a file,
command argument, environment variable, stdout, or diagnostic message.
"""
import argparse
import ctypes
import getpass
import json
import os
from pathlib import Path
import shutil
import socket
import stat
import struct
import sys
import tempfile


def peer_uid(connection):
    if sys.platform == "darwin":
        libc = ctypes.CDLL(None, use_errno=True)
        uid, gid = ctypes.c_uint(), ctypes.c_uint()
        libc.getpeereid.argtypes = [ctypes.c_int, ctypes.POINTER(ctypes.c_uint), ctypes.POINTER(ctypes.c_uint)]
        libc.getpeereid.restype = ctypes.c_int
        if libc.getpeereid(connection.fileno(), ctypes.byref(uid), ctypes.byref(gid)):
            raise PermissionError("peer-check-failed")
        return uid.value
    if hasattr(socket, "SO_PEERCRED"):
        return struct.unpack("3i", connection.getsockopt(socket.SOL_SOCKET, socket.SO_PEERCRED, 12))[1]
    raise PermissionError("peer-check-unavailable")


def receive_line(connection, limit=8192):
    data = bytearray()
    while len(data) <= limit:
        part = connection.recv(min(1024, limit + 1 - len(data)))
        if not part:
            raise ValueError("incomplete-input")
        data.extend(part)
        if data.endswith(b"\n"):
            return json.loads(data)
    raise ValueError("input-too-long")


def request_hidden_input(prompt):
    if prompt not in ("Selected device screen-lock passcode (hidden): ", "Apple verification code (hidden): "):
        raise ValueError("unsupported-input-prompt")
    directory = Path(tempfile.mkdtemp(prefix="lp-case-input-", dir="/private/tmp" if sys.platform == "darwin" else None))
    endpoint = directory / "input.sock"
    try:
        with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as server:
            server.bind(str(endpoint))
            os.chmod(endpoint, 0o600)
            server.listen(1)
            server.settimeout(600)
            kind = "device-unlock" if "passcode" in prompt else "apple-verification"
            print(json.dumps({"input_required": kind, "socket": str(endpoint)}), flush=True)
            with server.accept()[0] as connection:
                connection.settimeout(600)
                if peer_uid(connection) != os.getuid():
                    raise PermissionError("different-user")
                connection.sendall(json.dumps({"version": 1, "prompt": prompt}).encode() + b"\n")
                document = receive_line(connection)
                value = document.get("secret")
                if document.get("version") != 1 or not isinstance(value, str) or not 1 <= len(value) <= 1024:
                    raise ValueError("invalid-input")
                connection.sendall(b'{"received":true}\n')
                return value
    finally:
        shutil.rmtree(directory)


def submit_hidden_input(endpoint):
    if not sys.stdin.isatty() or os.getuid() == 0:
        raise PermissionError("interactive-normal-user-required")
    path = Path(endpoint)
    parent_stat, socket_stat = path.parent.lstat(), path.lstat()
    if (path.parent.is_symlink() or not stat.S_ISDIR(parent_stat.st_mode)
            or parent_stat.st_uid != os.getuid() or parent_stat.st_mode & 0o077
            or not stat.S_ISSOCK(socket_stat.st_mode) or socket_stat.st_uid != os.getuid()
            or socket_stat.st_mode & 0o077):
        raise PermissionError("invalid-private-socket")
    with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as connection:
        connection.settimeout(600)
        connection.connect(str(path))
        if peer_uid(connection) != os.getuid():
            raise PermissionError("different-server-user")
        document = receive_line(connection)
        prompt = document.get("prompt")
        if document.get("version") != 1 or prompt not in (
                "Selected device screen-lock passcode (hidden): ", "Apple verification code (hidden): "):
            raise ValueError("unexpected-prompt")
        secret = getpass.getpass(prompt)
        try:
            connection.sendall(json.dumps({"version": 1, "secret": secret}).encode() + b"\n")
        finally:
            secret = None
        if receive_line(connection).get("received") is not True:
            raise ValueError("input-not-received")
        print("Input delivered to the local helper. It was not saved.")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--socket", required=True)
    args = parser.parse_args()
    try:
        submit_hidden_input(args.socket)
    except (Exception, KeyboardInterrupt) as error:
        print("Input not delivered: " + type(error).__name__, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
