#!/usr/bin/env python3
"""User-started, local-only administrator session. Exits after 15 minutes.

Run with sudo. Requests are accepted only from the original SUDO_UID over a
Unix socket. No TCP listener, launch agent, sudoers edit, or persistent grant.
The authorized user can execute arbitrary root commands during this session.
"""
import ctypes
import json
import os
import signal
import socket
import subprocess
import sys
import tempfile
import time

BASE = "/private/var/tmp"
MAX_REQUEST = 65536
MAX_OUTPUT = 131072
LIFETIME = 900


def peer_uid(connection):
    uid, gid = ctypes.c_uint(), ctypes.c_uint()
    libc = ctypes.CDLL("/usr/lib/libSystem.B.dylib", use_errno=True)
    if libc.getpeereid(connection.fileno(), ctypes.byref(uid), ctypes.byref(gid)):
        raise OSError(ctypes.get_errno(), "getpeereid")
    return uid.value


def serve():
    if os.geteuid() != 0 or not os.environ.get("SUDO_UID", "").isdigit():
        raise SystemExit("Start this helper with sudo from your normal Mac user.")
    owner = int(os.environ["SUDO_UID"])
    if owner == 0:
        raise SystemExit("SUDO_UID must identify your normal Mac user.")
    os.umask(0o077)
    directory = tempfile.mkdtemp(prefix=f"airpods-admin-{owner}-", dir=BASE)
    os.chmod(directory, 0o711)  # Root-owned; clients can traverse but cannot replace files.
    endpoint = os.path.join(directory, "control.sock")
    server = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
    stopped = False
    active_process = None

    def stop(_sig, _frame):
        nonlocal stopped
        stopped = True
        if active_process is not None and active_process.poll() is None:
            try:
                os.killpg(active_process.pid, signal.SIGTERM)
            except ProcessLookupError:
                pass

    signal.signal(signal.SIGTERM, stop)
    signal.signal(signal.SIGINT, stop)
    signal.signal(signal.SIGHUP, stop)
    deadline = time.monotonic() + LIFETIME
    try:
        server.bind(endpoint)
        os.chown(endpoint, owner, -1)
        os.chmod(endpoint, 0o600)
        server.listen(1)
        server.settimeout(1)
        print(f"Temporary administrator helper ready for uid {owner}.", flush=True)
        print(f"Socket: {endpoint}", flush=True)
        print("Expires in 15 minutes. Press Control-C to stop it earlier.", flush=True)
        while not stopped and time.monotonic() < deadline:
            try:
                connection, _ = server.accept()
            except socket.timeout:
                continue
            with connection:
                try:
                    if peer_uid(connection) != owner:
                        raise PermissionError("Client user does not match SUDO_UID")
                    connection.settimeout(5)
                    raw = bytearray()
                    while b"\n" not in raw and len(raw) <= MAX_REQUEST:
                        chunk = connection.recv(4096)
                        if not chunk:
                            break
                        raw.extend(chunk)
                    if len(raw) > MAX_REQUEST or b"\n" not in raw:
                        raise ValueError("Invalid request length")
                    request = json.loads(raw.split(b"\n", 1)[0])
                    action = request.get("action", "run")
                    if action == "stop":
                        stopped = True
                        result = {"stopped": True}
                    elif action == "status":
                        result = {"uid": 0, "client_uid": owner, "seconds_remaining": max(0, int(deadline - time.monotonic()))}
                    elif action == "run":
                        argv = request.get("argv")
                        if not isinstance(argv, list) or not argv or not all(isinstance(x, str) and "\0" not in x for x in argv):
                            raise ValueError("argv must be a nonempty string array")
                        if not os.path.isabs(argv[0]):
                            raise ValueError("Executable path must be absolute")
                        timeout = min(float(request.get("timeout", 30)), 120, deadline - time.monotonic())
                        if timeout <= 0:
                            raise ValueError("Session expired")
                        print(f"Running {os.path.basename(argv[0])}", flush=True)
                        env = dict(os.environ)
                        env["PATH"] = "/usr/bin:/bin:/usr/sbin:/sbin"
                        # Temporary files bound capture memory without exposing command output.
                        with tempfile.TemporaryFile() as out, tempfile.TemporaryFile() as err:
                            process = subprocess.Popen(argv, cwd=request.get("cwd", "/"), env=env,
                                                       stdin=subprocess.DEVNULL, stdout=out, stderr=err,
                                                       start_new_session=True)
                            active_process = process
                            timed_out = False
                            try:
                                process.wait(timeout=timeout)
                            except subprocess.TimeoutExpired:
                                timed_out = True
                                os.killpg(process.pid, signal.SIGTERM)
                                try:
                                    process.wait(timeout=5)
                                except subprocess.TimeoutExpired:
                                    os.killpg(process.pid, signal.SIGKILL)
                                    process.wait()
                            active_process = None
                            out.seek(0); err.seek(0)
                            stdout, stderr = out.read(MAX_OUTPUT + 1), err.read(MAX_OUTPUT + 1)
                            result = {"exit_code": process.returncode, "timed_out": timed_out,
                                      "stdout": stdout[:MAX_OUTPUT].decode(errors="replace"),
                                      "stderr": stderr[:MAX_OUTPUT].decode(errors="replace"),
                                      "truncated": len(stdout) > MAX_OUTPUT or len(stderr) > MAX_OUTPUT}
                    else:
                        raise ValueError("Unknown action")
                except Exception as error:
                    result = {"error": str(error)}
                try:
                    connection.sendall(json.dumps(result).encode() + b"\n")
                except OSError:
                    pass
    finally:
        server.close()
        if os.path.exists(endpoint):
            os.unlink(endpoint)
        os.rmdir(directory)
        print("Administrator helper stopped; socket removed.", flush=True)


if __name__ == "__main__":
    serve()
