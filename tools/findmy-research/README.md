# Read-only Termux UWB research

This lab collects bounded, nonsecret Android metadata without starting a ranging session or changing any radio settings. It requires Python3 and installs nothing.

Start with local simulation:

```sh
sh -n tools/findmy-research/probe.sh
sh tools/findmy-research/probe.sh --self-test
sh tools/findmy-research/probe.sh --simulate success
sh tools/findmy-research/probe.sh --simulate missing
sh tools/findmy-research/probe.sh --simulate denied
```

On the non-root Android phone, after simulation:

```sh
sh tools/findmy-research/probe.sh --live > tools/findmy-research/device-metadata.json
```

No mode is selected by default. `--live` rejects a root process or non-Android environment. Each allowlisted system command has a 3-second timeout. Only approved properties, interpreted query states and public framework filenames are emitted. Missing/denied shell access does not establish absent hardware. The probe cannot query Android app ranging capabilities from Termux.

Use `termux-handoff.txt` as the historical nonroot phone-agent prompt. The probe output is metadata; the separately authored research report follows `research-report.schema.json`. Current root-enabled work and live STS results are summarized in [the repository handoff](../../HANDOFF.md).

`vendor-uwb-findings.json` records the primary-source protocol and permission boundaries. `source-snapshots/manifest.json` records URLs and SHA256 values for the saved Android source/API snapshots. These snapshots describe upstream source, not the phone’s measured capabilities.

The full Samsung thesis PDF/text remains a local reference. Its URL/hash are
retained in the source manifest; the complete paper is not redistributed here.

## Coordinated ADB metadata probe

`adb_probe.py` and `adb_probe.sh` require an existing authorized ADB transport.
They do not pair, connect, install, grant permissions, start sessions, reset radios,
or send UCI commands. The parent agent coordinates all phone access.

Simulate before hardware access:

```sh
sh -n tools/findmy-research/adb_probe.sh
sh tools/findmy-research/adb_probe.sh --self-test
sh tools/findmy-research/adb_probe.sh --simulate success
sh tools/findmy-research/adb_probe.sh --simulate missing
sh tools/findmy-research/adb_probe.sh --simulate denied
```

The explicit live invocation is:

```sh
sh tools/findmy-research/adb_probe.sh --live --adb /absolute/path/to/existing/adb --serial EXISTING_AUTHORIZED_TARGET
```

The target is never included in the report. Each command has a four-second
timeout and a bounded output buffer. The probe requires the ADB shell UID and
queries only approved build properties, the UWB feature, shell permission grants,
service visibility, advertised read-only `cmd uwb` metadata commands, and public
framework/config/firmware filenames. It discards raw output, unrecognized
capability fields, account identifiers and key buffers. Shell permissions do not
establish ordinary app access.

## Exact Samsung static review

`dex_metadata.py` reads pulled DEX metadata without executing code. Its selected
method records include Java access flags, hidden API flags, method/field
references and bounded permission labels. `samsung-extras-hidden-api.json`
records that both the public factory and send method have hidden API flag 2
(ART `blocked`). Granting `WRITE_SECURE_SETTINGS` does not remove that gate.

`samsung-runtime-review.json` combines those exact-artifact findings with the
parent agent's sanitized read-only controller queries. It records the reviewed
Binder argument/reply layout, capability units, and the Samsung calibrated angle
path. `samsung-caps-tags.json` contains the exact Samsung capability-tag map.
`samsung-aoa-output-path.json` and `samsung-aoa-session-gates.json` preserve the
selected static call references supporting the angle findings.

The interleaving capability can coexist with generic azimuth/elevation capability
flags being false. Samsung's service has a path that places calibrated angles in
standard Android ranging reports. Its existence does not establish a successful
AirPods session. The optional fusion flag and package allowlist must not be
confused with the earlier calibration step.

The shell capability query passes through the vendor HAL. Public NXP HAL source
rewrites capability responses and removes extended NXP tags, so these results
are not proved to be an unfiltered list of silicon modes. No NBAMMS compatibility
has been established. The CCC Digital Key capability namespace is not an Apple
profile namespace.
