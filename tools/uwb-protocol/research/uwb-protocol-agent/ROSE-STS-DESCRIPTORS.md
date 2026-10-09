# ROSE STS engine: instructions proved, operation still unresolved

Scope: offline inspection and synthetic execution of official Apple firmware. No phone, account, controller or radio operations. This report does not equate a software AES candidate with native hardware output.

## Firmware comparison

The genuine8B34 ROSE container is `A3064-8B34-payloads/ROSE.bin`, version81.175308800.78643200.6589. It differs from9A348. Its rkos component was separately extracted offline into `rose-8B34/rkos.bin`; `rose-8B34/provenance.json` records the source and digest.

| Image | rkos length | SHA256 | P2P initializer | Generic generator |
|---|---:|---|---|---|
| 9A348 A3122 | 552384 | `917c4da5686973c6190200875212c874a6e1c945129ba93e450db073ddc6e5c0` | `0x42BD4C` | `0x41FFA0` |
| 8B34 A3064 | 552320 | `849508e50c1ef7d9d45df2d1cd1a9fdaf1d8ef891055bc7c014743a33a4e57e0` | `0x42BEC4` | `0x41FFF0` |

The older initializer emits the **same six FIFO words** with the same key and synthetic address-derived IV. This was verified by executing the unchanged8B34 instructions (`rose-8B34/verify-initializer.py`, `initializer-synthetic.json`). Its generic generator likewise preserves the same chunk/counter logic in disassembly, despite moved addresses and helper factoring. This comparison provides no alternate descriptor decoder.

Provenance correction: an initial comparison used `A3064-reproduced/rose`, which belongs to the second9A348 model package. That mistaken cross-generation byte-identity claim is withdrawn; no conclusion here relies on it.

## P2P initializer

Original function `0x42BD4C`:

| Instructions | Proven operation |
|---|---|
| `0x42BD56..64` | Copy16-byte public fixed key from`0x469CF8` to securitycontext+`0xA1`. |
| `0x42BD68..70` | Zero16-byte IV at context+`0x81`. |
| `0x42BD7C..80` | Store two supplied Rose address words into the first8 IV bytes. Callers clear address byte0. |
| `0x42BD84..88` | Retain output pointer at context+`0xC8` and opaque32-bit scalar`0x2056C539` at+`0xC4`. |
| `0x42BD8C..98` | Write six32-bit words in order to`0x44005020`. |
| `0x42BD9C..AA` | Start engine, wait for status bit0 at+`0x14`, clear completion with`FFFFFFFF`. |

The words are:

```
16000000, keyPointer,
26020000, ivPointer, 2056C539, outputPointer
```

Thus inputs are known key`4a5572bc90798c8e518d2449092f1b55`, RAM IV`M0 || 0000000000000000`, and an additional scalar. M0=`00 || RoseMAC[1:8]`. No owner BLE LTK enters this routine.

The known key equals the public IEEE HRP test-vector key documented by [MathWorks](https://www.mathworks.com/help/comm/ref/lrwpanhrpconfig.html). Their documented IV/counter is`68debd3a599939dd57fdbb0e || 2a10fac0`; that is different from Apple's RAM IV. Key equality provides a concrete standards clue, but does not settle hardware IV composition or STS equality.

## Generic stream generator and the fifth FIFO word

Original `0x41FFA0..420024`:

1. Require output pointer aligned4 and offset divisible16.
2. Copy16-byte IV to RAM`0x10031008`.
3. Interpret the final IV word as big endian via`REV` at`0x41FFC8`.
4. Add`offsetBytes >> 4` to that word before submission.
5. Submit chunks of at most1024bytes using:

```
16000000, keyPointer,
26000000 | (chunkBytes << 8), ivCopyPointer, argument2, outputPointer
```

6. Increment final IV word by`chunkBytes >> 4`, output pointer by`chunkBytes`, and decrement remaining length by`chunkBytes`.

`verify-rose-sts-stream-descriptors.py` executes this unchanged routine. It checks512byte and1040byte requests, two descriptor submissions, a final-word carry from`000000FF` to`00000100`, and unchanged fifth-word forwarding. Completion is synthetic; **no AES or output stream is emulated**. Results: `rose-sts-stream-descriptors-synthetic.json`.

An additional semantic clue comes from NBAMMS:

- `0x426E9E` loads generator argument2 as a16-bit value from task+`0x80`.
- `0x426C8E..96` updates that field by adding skipped-cycle count plus1, retaining16bits.
- The reciprocal task does the same at+`0x88`, update`0x428452..5C`, generator caller`0x42865C`.

Therefore the same fifth-word position **can carry an evolving numeric cycle/sequence value**, including values below65536. Calling it a plaintext DMA pointer or unconditionally labelling it an independent opcode is unsupported. The firmware never masks or decodes the P2P scalar in software.

A plausible interpretation is a separate sequence/counter operand of the`0x26...` operation. **This is a hypothesis.** It does not prove where that value is inserted, XORed, or otherwise combined with the RAM IV; does not prove preincrement vs postincrement; and does not prove output word or bit order.

## Logical counter model after the controlled RF detection

The parent's controlled trial detected acquisition, synchronization and SFD only during the case's scheduled burst, with no STS correlation. This establishes a useful RF timing result; it does not expose the ROSE generator's output or prove its waveform equals the Samsung test generator.

The strongest software model has **two independent numeric inputs**:

| Input | Source evidence | Interpretation supported by callers |
|---|---|---|
| RAM IV bytes 12–15 | `0x41FFC8..D4`, `0x41FFDE..E4`, `0x42001A` | Big endian stream position, measured in 16-byte blocks. The caller adds both a requested byte offset and each completed chunk's block count. |
| Fifth FIFO word | `0x420002`; NB callers `0x426E9E`, `0x42865C` | Separate sequence/cycle operand, forwarded as a numeric word. |
| Same word in `mac_f.c` | `0x4241CC..CE`, `0x424218..28`, `0x4243A8..AE` | A stored 32-bit seed or a pseudorandom 32-bit value, plus a caller offset. |

At `0x424218..26`, the `mac_f.c` branch updates its RNG state, passes the resulting word as argument 1, and passes the caller's offset as argument 2. At `0x4243A8`, their sum becomes generator argument 2 and is retained at context+`0x138`. This is additional evidence that the fifth FIFO word is a variable sequence value rather than a constant command encoding. It does not establish that `mac_f.c` is the case's P2P caller.

Under an ordinary independent descriptor model, replacing IV bytes 12–15 solely with the scalar would discard the byte-offset and chunk-continuation work. The synthetic 1040-byte request submits IV counters `0x100` and `0x140` while preserving scalar `0x1234`; those descriptors are intended to describe successive portions of one stream. Hardware could instead add or mix the scalar, place it in another counter word, or retain additional internal state. **The source does not distinguish those alternatives.**

The closest standard-shaped hypothesis is:

```
logical AES input = M0[64] || sequence[32] || blockCounter[32]
sequence = 0x2056C539 for legacy P2P
blockCounter advances once per 16 generated bytes
```

This layout is structurally consistent with the STS model described in [Samsung's patent US11936771B2](https://patents.google.com/patent/US11936771B2/en): an upper 64-bit value, a separate 32-bit slot/STS index, and a 32-bit counter that advances for each DRBG output. That patent is a primary description of Samsung's model, **not a decoder for Apple's ROSE descriptors**.

For a wholly synthetic M0 `0002030405060708`, the proposed concatenation would yield `0002030405060708 2056c539 00000000` before any generator increment if the scalar is encoded big endian. A little endian scalar encoding would put `39c55620` in the middle instead. Neither byte string is verified as Apple's actual AES input. The RAM source contains zeros in that middle word; any insertion of the scalar occurs inside hardware. Likewise, zero versus one for the first encrypted block, word ordering, bit-to-pulse mapping, and any additional transformation remain unproved.

**Practical conclusion:** use the three-field model to identify which Samsung configuration inputs must be controllable. Do not treat `M0 || zero8` as the complete cryptographic counter, and do not use a calculated AES stream as a native reference. The next needed evidence is an exact hardware descriptor definition, native synthetic output, or a controlled STS correlation with explicitly configurable scalar/counter fields.

## Every AES base reference examined

The entire image has four literal references to`0x44005000`:

| Reference pool | Caller | Observation |
|---|---|---|
| `0x420040` | generic stream`0x41FFA0` | six-word generator sequence above |
| `0x42442C` | `0x42435C` in`mac_f.c` | preload`16000000,keyPointer`, then calls generic stream |
| `0x429BF8` | NB address/security helper`0x429B90` | `10000000,keyPointer,50001000,inputPointer,outputPointer` |
| `0x42BDC8` | P2P initializer`0x42BD4C` | fixed512byte generation descriptor |

For the`0x429B90` helper, fifth word is an **output pointer**, proven by caller`0x42544A..5C` passing its result buffer at`fp+0x930` as the sixth C argument. It is a separate operation shape, not a direct scalar decoder. This helper initializes a16-byte input block, copies a short address and type field, and delegates all cryptographic work to hardware.

Raw adjacent evidence: `rose-aes-engine-init.asm`, `rose-aes-engine-caller.asm`, `rose-uwbsec-stream-generation.asm`, existing`rose-p2p-sts-init*` files.

## Output ordering and radio fetch

P2P software forwards generated memory to the radio STS buffer using ordinary memcpy; no bit reversal, byte reversal or spreading loop appears between them. The HMD STS callback uses an output pointer and hardware packet length. This proves **CPU-side copying**, not the AES engine's output order or the PHY's bit-to-pulse mapping.

The descriptor length512 is consistent with4096 STS sequence bits. Separate packet duration code computes approximately32768 timing chips plus guard. A later2048byte capacity-sized memcpy does not establish a fourfold expansion. The actual meaningful sequence output length remains512 under the generic descriptor encoding.

## Why other Apple AES definitions cannot fill the gap

[Asahi's AES implementation](https://github.com/AsahiLinux/m1n1/blob/main/proxyclient/m1n1/hw/aes.py) describes a different command FIFO and inline key/IV format. Its key command would interpret`16000000` as selecting a built-in key, whereas ROSE supplies a RAM key pointer immediately after it. [QEMU's vmapple AES model](https://github.com/qemu/qemu/blob/master/hw/vmapple/aes.c) likewise expects inline key words and a different data descriptor. Reusing these bitfield names would create contradictions with the observed ROSE instructions.

No primary public ROSE AES descriptor specification or native generated sequence was found. A synthetic AES-CTR calculation alone cannot close that gap.

## Smallest next evidence

Bounded Samsung raw RX can prove preamble/SFD or acquisition detection independently of exact STS authentication. To prove the STS generator itself, one of these is needed:

- a documented ROSE`0x26` descriptor format;
- a native public/synthetic generated memory stream with known key, IV and scalar;
- a controlled over-air comparison exposing the generated sequence or validated STS correlation.

Until then, the exact required firmware input tuple is known; the byte-generation algorithm and STS equivalence remain unresolved. No further BLE key guessing is motivated by this STS boundary.
