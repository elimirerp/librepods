"""Verify archived firmware/static inputs; optionally restore full text dumps."""
from __future__ import annotations

import argparse
import gzip
import hashlib
import json
from pathlib import Path


def digest(path: Path, compressed: bool = False) -> str:
    result = hashlib.sha256()
    opener = gzip.open if compressed else open
    with opener(path, 'rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            result.update(block)
    return result.hexdigest()


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--unpack', action='store_true',
                        help='Restore complete .txt/.a2s files beside their gzip archives.')
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[3]
    manifest = json.loads((Path(__file__).parent / 'binary-input-manifest.json').read_text())
    restored = 0
    for entry in manifest['files']:
        path = root / entry['path']
        if path.stat().st_size != entry['bytes'] or digest(path) != entry['sha256']:
            raise RuntimeError(f"Archived input mismatch: {entry['path']}")
        compressed = entry['compression'] == 'gzip'
        if not entry['redacted'] and digest(path, compressed) != entry['source_sha256']:
            raise RuntimeError(f"Original input mismatch: {entry['path']}")
        if compressed and args.unpack:
            target = path.with_suffix('')
            if target.exists():
                if digest(target) != entry['source_sha256']:
                    raise RuntimeError(f'Refusing to overwrite different text: {target}')
            else:
                import shutil
                with gzip.open(path, 'rb') as source, target.open('wb') as output:
                    shutil.copyfileobj(source, output)
            restored += 1
    print(f"Verified {len(manifest['files'])} archived inputs; restored {restored} complete text dumps.")


if __name__ == '__main__':
    main()
