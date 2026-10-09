# Apple ranging primitives: offline evidence

These tools model recovered encodings. They do not establish a Bluetooth
connection, authenticate an accessory, start UWB, or prove Samsung compatibility.
All test keys and addresses are synthetic. No owner keys or account credentials
are included.

## Reproducible checks

From the repository root:

```sh
python3 -m unittest discover -s tools/uwb-protocol -v
```

On macOS, the optional `native-siphash-fixture.c` calls only CoreUtils' pure
SipHash function. It does not use account or radio APIs. Its three outputs are
independent golden results for the Python implementation. The standard reference
SipHash vectors additionally exercise lengths 0 through 15.

## Binary provenance

Analysis date: 2026-10-08. Addresses below are unslid virtual addresses, not file
offsets. Architecture matters: addresses in the universal Mac executable are
ambiguous until a slice is selected.

| Input | SHA-256 |
| --- | --- |
| Mac `nearbyd`, x86_64 slice from macOS 26.4 build 25E5223i | `65b0690e2923623874de063c471d404c70c9a3b721a09f3ad363d362c98f8543` |
| iOS `nearbyd`, arm64, OTA build 23H6030 | `157d2d556142c3f390321524b479b871b70cdbb37399afd38a1f35985dc36ca0` |
| iOS `locationd`, arm64, same OTA | `4fe45b1b58a28fd4397fea587eefe0cda16717eceda9f3e9aff6426a2c09b74b` |

The iOS inputs were extracted from Apple's [official OTA archive](https://updates.cdn-apple.com/2026FallFCS/97d26691-7bd1-4c88-b86c-61dfc4dad8b4/com_apple_MobileAsset_SoftwareUpdate/23d7cd20eb33682a98a76bc639f3f37fa329edcb.zip).
Apple executable binaries are not redistributed in this repository.

## Address derivation and key scope

Mac `-[NIServerItemLocalizerSession macAddressForIRK:]` at `0x1002F2856` calls
`SipHash` with the 16-byte key and the eight message bytes `0123456789abcdef`.
The generic finding provider uses the same derivation at `0x1002693BA`.

Synthetic native results, formatted as unsigned 64-bit integers:

| Key | Result |
| --- | --- |
| `000102030405060708090a0b0c0d0e0f` | `ddafcf0fdf393464` |
| 16 zero bytes | `88899a45dc40a124` |
| 16 `ff` bytes | `dba0d558388119bf` |

ItemLocalizer NBAMMS creates a fresh session IRK using `NSRandomData(16, 0)`.
This occurs in the Mac method at `0x1002F1C48` and actual iOS method at
`0x100330D58` (call at `0x100330E98`). This IRK is distinct from the owner's
Bluetooth connection LTK. The derived address is neither a Bluetooth MAC
address nor evidence that the IRK can serve as a FiRa STS key.

## Legacy configuration

The four-byte internal companion structure at Mac `0x1002F793C` is:

1. Country code byte.
2. Channel code in bits 0–1; TX preamble code in bits 2–3; RX in bits 4–5.
3. Interval in milliseconds, little-endian unsigned 16-bit.

The HSI 1 channel converter at `0x100408CEE` maps channel 5 to 0 and 9 to 1.
The preamble converter at `0x100407DE1` maps preambles 9–12 to codes 0–3.
The Python channel converter deliberately rejects unsupported inputs instead
of reproducing the native converter's unchecked fallback.

The test vector `a536f000` tests bit packing, including a synthetic compact
channel code of 2. It is not a valid suggested radio configuration. Real profile
selection must use the documented channel converter and regional capabilities.

Hawkeye framing in iOS `locationd` changes the packed byte by setting bit 7 and
adds the ranging address. Do not send this four-byte internal structure directly
to a GATT characteristic.

## Mode and compatibility limits

The Mac mode gate at `0x1002EE74C` defaults to Apple P2P. NBAMMS requires the
extended-finding feature, local support, accessory NBAMMS support, and an
available slot. Local support also incorporates hardware and regional rules.
The pure model omits debug overrides; it does not change device configuration.

Apple's preset is `Legacy_BPRF`, family 0, index 4. Apple's separate `IEEE_BPRF`
family is 1. Shared channels and preambles with Android do not prove matching
packet formats or session timing. Capability callbacks and authenticated case
responses remain necessary; simulation cannot produce a real distance or angle.

One encoding trap: iOS nearbyd `_getDictFromRangeConfigNBAMMS:` at `0x10033171C`
subtracts 1 from the controller structure's PSR byte at offset 12. Locationd
packs the resulting dictionary value without adding it back. Consequently the
19-byte wire configuration cannot be copied verbatim from the controller
structure. The PSR byte needs the observed transformation.
