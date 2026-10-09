# External USB owner-link experiment

Built 2026-10-09. **No live encrypted AirPods connection or UWB ranging has
been demonstrated by this tool.** Local libusb inventory returned zero USB
Bluetooth controllers on the development Mac. A compatible external adapter is
required for the next hardware trial.

This uses Bumble 0.0.223 to control an external USB HCI controller. It avoids
the previously investigated Samsung stack's missing arbitrary-LTK API. It
does not give Samsung's built-in radio new permissions.

## Trial

1. Refresh the authenticated account helper's selected case candidates.
2. Passively scan for an exact random-address match marked connectable.
   Accept any advertisement type: the live case previously used Apple type07.
3. Request that exact sequence/index's temporary LTK through the same-user
   private Unix socket. The helper validates the current selected case and
   candidate, then recomputes its address before deriving the key.
4. Connect, use an in-memory Bumble key entry, and issue standard HCI
   `0x2019`, length28, with RAND=0, EDIV=0, and the 16 key bytes unchanged.
5. Require a successful controller encryption event with encryption enabled.
6. Discover FD44 and characteristic `4F860006-943B-49EF-BED4-2F730304427A`.
   Validate write/subscription properties and CCCD, then subscribe (prefer
   indications, matching the case's previously observed properties0x28).
7. Write `010107` (init); require `0706` with status0. Write
   `01100700000000` (capabilities); require a complete `0711` response.
8. Disconnect and remove the temporary key from the in-memory keystore.

There is one connection attempt, bounded waits, no fresh SMP pairing, no
persisted bond, no firmware/account mutation, and no UWB configure/start
command. Init does change the case's transient ranging state. Unsolicited SMP
is ignored. Raw HCI logging is disabled because it would contain the key.
Unknown/fragmented responses fail explicitly; this implements the known small,
complete responses, not Apple's full fragmentation protocol.

The existing account helper gains the fixed `owner_link` operation. It returns
one temporary key over private IPC, never in the candidate JSON or diagnostic
log. Restart an older helper using the updated source before using this probe.
An expired helper requires the existing account sign-in/recovery flow again.
No session renewal or credentials are embedded in this tool.

## Run

Install the pinned requirement in an isolated Python3.12 environment. A native
libusb shared library is also required. If it isn't available through the normal
loader, pass `--libusb /absolute/path/to/libusb-1.0.dylib` (macOS) or the
appropriate shared library on Linux.

```sh
python -m pip install -r requirements.txt
python probe.py --list-adapters
python probe.py --transport usb:VVVV:PPPP \
  --control /private/path/control.sock \
  --candidate-file /private/path/findmy-case-identity.json
```

Use a vendor/product returned by inventory, not the literal placeholder above.
An optional `#index` selects among duplicate devices. Inventory alone does not
prove the adapter supports LE, needs no firmware loader, or can be claimed by
the process. Do not point this at a controller concurrently owned by another
Bluetooth host. No macOS NVRAM or host-controller setting is changed by this
script. Bumble documents a macOS controller-ownership prerequisite; assess it
for the actual adapter before the live trial.

Workspace installation prepared outside the fork:

- `work/usb-owner-link-venv`: Python/Bumble environment.
- `work/usb-owner-link-runtime/lib/libusb-1.0.dylib`: libusb1.0.29 built from
  the upstream release. Homebrew's prefix wasn't writable, so no Homebrew
  ownership or system library changes were made.
- `work/usb-owner-link.sh`: local launcher, including the explicit library path.

## Simulation and limits

```sh
python -m unittest -v test_probe
```

The integration tests use actual Bumble hosts, virtual controllers, and ATT
indications. A custom controller checks the fixture LTK, RAND and EDIV because
Bumble's stock simulator assumes encryption succeeds. Tests inspect serialized
HCI bytes and exercise rejected keys, encryption-disabled events, initialization
errors, negative ACKs, ACK-only timeouts, malformed responses, and unsolicited
pairing. Identity tests reject stale/wrong-component candidates and mismatched
case/branch requests. Existing account-helper tests also pass.

This validates the client and its failure gates. It does **not** emulate real
BLE encryption, execute AirPods firmware, prove live key acceptance, or prove
Apple/Samsung UWB compatibility. Only a live encrypted link plus the case's
response can establish the next milestone. Samsung UWB coordination follows
after that milestone.

References:

- [Bumble USB transport](https://google.github.io/bumble/transports/usb.html)
- [Bumble macOS controller ownership](https://google.github.io/bumble/platforms/macos.html)
- [libusb1.0.29 release](https://github.com/libusb/libusb/releases/tag/v1.0.29)
- Native owner derivation: `../owner_link.py`, `../case-identity-evidence.md`.
- Apple init/capability layout and ordering: `../hawkeye-evidence.md`.
