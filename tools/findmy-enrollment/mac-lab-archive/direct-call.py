#!/usr/bin/env python3
"""Send a target-limited command to the user's signed-in experiment."""
import json, socket, sys
from pathlib import Path
path=Path(__file__).resolve().parent/'.direct-state/control.sock'
request=json.load(sys.stdin)
with socket.socket(socket.AF_UNIX,socket.SOCK_STREAM) as s:
    s.settimeout(90)
    s.connect(str(path))
    s.sendall(json.dumps(request).encode()+b'\n')
    with s.makefile('rb') as f:
        print(f.readline(65536).decode(),end='')
