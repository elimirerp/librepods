# Indexed intermediate key: iOS26 native trace

Scope: binary analysis and fake-data CommonCrypto calls only. No real keys, account access, peripheral access, or Bluetooth operations.

## Verified primitive

Apple iOS searchpartyd, retained `searchpartyd-ios26`, SHA256 `cbc5a9168f2e10bf767b113069a91f23b465fc56cf1baa8e010f1c060b3f4658`.

Define `K(Z,label,n) = ANSI X9.63-SHA256(Z, sharedinfo=UTF8(label), outputLength=n)`.
For n=32 this is `SHA256(Z || 00 00 00 01 || UTF8(label))`.

Native `0x100b6bae0`:

- Takes Swift Data x0/x1 and iteration count x2 (copied x28 at `0x100b6bb08`).
- Uses UTF8 `update` (`0x100b6bb94..ba4`), output32.
- Zero iteration count returns the input (`0x100b6bbbc` -> `0x100b6c33c`).
- Each successful result becomes the next input (`0x100b6c328..32c`).
- Decrements iteration count and loops (`0x100b6c330..334`).

Native `0x100b6c994` diversified root helper:

- Calls update(input,1) (`0x100b6ca7c..a8c`).
- Stores returned Data x22/x20 (`0x100b6ca98..9c`).
- Derives `diversify` length72 from that updated secret (`0x100b6caa0..ad8`).
- Writes the updated secret through an inout argument (`0x100b6cdc0..dc8`).
- Derives `intermediate` length32 from the **same updated secret** (`0x100b6cde4..e24`).

The 72-byte diversification is used in EC public/private key derivation. It is not the connection token or temporary Bluetooth key.

## Indexed range generator

Native `0x101554960`:

- Saves requested start index from x2 in x23 (`0x101554994`).
- Calls update(seed,startIndex) (`0x101554a00..10`).
- In the emitted-key loop, calls the diversified-root helper, which itself updates once (`0x101554a44..a78`).
- Callback receives the current start/index value x23 (`0x101554b2c..b3c`).
- Increments x23 and loops while carrying the mutated shared secret (`0x101554b58..b70`).

Thus, relative to this generator's supplied seed, emitted index i uses:

```
S_i = update^(i+1)(seed)
I_i = K(S_i, "intermediate", 32)
C_i = K(I_i, "connect", 32)
LTK_i = C_i[0:16]
```

The `+1` is proven by the initial update(startIndex) followed by the helper's one update before the indexed callback. This relationship does not establish that cloud SKN/SKS is always the exact supplied seed, or which index is appropriate at the current time.

The returned SPCommandKey's connection token and locationd truncation are traced in `CASE-IDENTITY-AND-OWNER-LINK.md`.

## Primitive checked against Apple native code

`verify-x963-synthetic.py` calls the native `/usr/lib/system/libcommonCrypto.dylib` implementations of `CCKDFParametersCreateAnsiX963`, `CCDeriveKey` with digest10, and `CCKDFParametersDestroy`.

It compares them to the explicit SHA256 formula for fake input bytes00..1f, three consecutive updates, intermediate32, connect32, and diversify72. All comparisons pass. Fake vectors are saved in `x963-synthetic-result.json`.

Primary SPI definitions are retained as `CommonDigestSPI.h` and `CommonKeyDerivationSPI.h`:

- [Apple CommonDigestSPI.h](https://github.com/apple-oss-distributions/CommonCrypto/blob/main/include/Private/CommonDigestSPI.h): digest constant10 = SHA256 (line71).
- [Apple CommonKeyDerivationSPI.h](https://github.com/apple-oss-distributions/CommonCrypto/blob/main/include/Private/CommonKeyDerivationSPI.h): sharedinfo parameters and CCDeriveKey input/output roles (lines183–184,223–225).

## Remaining branch to verify

Reflection proves `OwnedBeaconRecord` contains `sharedSecret` and optional `secondarySharedSecret`, and KeyGenerationBeaconInfo.Keys carries those same fields. It also proves TimeBasedKey stores index/dateInterval/DiversifiedRootKeys.

The remaining trace is the selection that supplies SKN vs SKS to the indexed generator and the time/drift alignment that selects current primary and secondary indices. Do not test guesses against a real case, read actual keys for this task, or label the synthetic formula a complete session bootstrap.

Relevant extracts:

- `sharedsecret-update-ios26.asm`
- `diversified-intermediate-ios26.asm`
- `diversified-root-callerC-ios26.asm`
- `key-range-caller-ios26.asm`
- `searchpartyd-ios26-swift.txt`

## External index convention differs

The vendored FindMy `_AccessoryKeyGenerator._get_sk(ind)` computes `update^ind(initial_sk)` and leaves index0 unchanged (`work/account-integration-agent/findmy-pinned/findmy/accessory.py`, lines729–749). It defines `_primary_key_at(ind)` without adding1, and guesses two secondary index candidates `ind//96+1` and `ind//96+2` (lines458–477).

The native range generator above has a different local emitted-index convention relative to its supplied seed. A caller adjustment or seed already advanced by one could reconcile these. That bridge has not been verified. Do not reuse a library observation index directly as the native owner's index without checking the address/public-key match and the generator's actual supplied seed.
