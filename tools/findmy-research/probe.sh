#!/bin/sh
# No Android commands run unless --live is explicitly supplied.
set -eu
probe_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
if ! command -v python3 >/dev/null 2>&1; then
    echo 'python3 is required; no packages were installed.' >&2
    exit 2
fi
exec python3 "$probe_dir/probe.py" "$@"
