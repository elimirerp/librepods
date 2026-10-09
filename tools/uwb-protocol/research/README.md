# Protocol research archive

Start with [HANDOFF.md](../../../HANDOFF.md). It supersedes early-stage unknowns
and conclusions in historical reports. In particular, root owner BLE now works,
STS fields now accept/read back, and both first STS candidates failed on air.

This archive includes author notes, selected assembly, synthetic fixtures,
emulator harnesses, firmware provenance, and the P2P/iOS audits. Sources retain
their historical workspace names so neighboring-directory references in the
original harnesses can be reproduced. `archive-manifest.json` lists origins and
the hashes of the archived copies. Some original notes refer to workspace-local
raw DEX/disassembly files; those full proprietary inputs are not redistributed.

## Firmware inputs for reproducing instruction tests

`airpods-pro3-firmware-agent/*-provenance.json` records official Apple URLs,
package sizes and SHA256 digests. Obtain those exact packages locally and verify
them before extraction. Clone `spotlightishere/superbinary-parser` separately at
`599b71405045573efee37cd5bec0d2e399c8c2fc` into the indicated local research
directory; that checkout has no identified license and is not bundled. The
author `reproduce_extraction.py` reads cached catalogs/ZIPs and bounds-checks the
reviewed UARP/FTAB entries. Its optional decompression uses macOS libcompression.

The original verification harnesses expect the local layout described in the
firmware README, including `A3122-rose/rkos.bin`, `A3122-payloads/NERF.bin`, and
the actual `A3064-8B34-payloads` inputs. Copy the verified extracted components
to those local paths. Do not mistake an A3064 9A348 package for the genuine8B34
package. `uwb-protocol-agent/rose-8B34/provenance.json` distinguishes them.

ARM instruction harnesses require real Unicorn2.1.1, not the Android import
stub; static inspection also uses Capstone. They execute unchanged instructions
with synthetic RAM and mocked hardware boundaries. They do not emulate ROSE's
AES engine, the UWB PHY, or a complete accessory boot.

## Current priority

Read `uwb-protocol-agent/ROSE-STS-DESCRIPTORS.md` and
`uwb-protocol-agent/SR200D-RFTEST-STATIC-STS-BOUNDARY.md`, then the live evidence
one directory above. The hardware crypto descriptor contract/effective Samsung
RFTEST key and input are still unresolved. Stored configuration is not proof
of generated sequence equivalence.
