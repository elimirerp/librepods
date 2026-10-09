# Legacy acquisition and the remaining STS hardware boundary

Scope: static inspection of Apple's official A3122 9A348 ROSE/NERF images and execution of unchanged firmware with synthetic inputs only. No account, Bluetooth, UWB or controller operations.

## Native case acquisition requires two PHY frame shapes

The NERF legacy command builder zeroes its command at `0x2065C..64`, then leaves `sessionRole` (command body+2 / state+0x7F) zero; the later diagnostic labels that exact field at `0x2076A`. ROSE's session factory uses role0 for `p2pm_task` (`0x424AC2..C8`, branch `0x424E94`), with start callback `0x429FEC`.

The configured case TX type4 is at original ROSE request+0x98. Factory `0x424F54..58` branches to `0x425704` for types4/5. Its helper **`0x45C4C2`** writes:

- initial TX type4 into task+0x15A2 (context+0xDA);
- initial RX type1 into task+0x15A4 (context+0xDC);
- special mode flag1 into task+0x15A0;
- mode word0x100 into task+0x159C.

The start callback reads TX type4 at `0x42A0AA`, and starts actual HMD TX through `0x419FC4` at `0x42A0AE`. Its TX-complete state1 path loads the **RX type1** at `0x42A1C0` and arms HMD RX through the folded helper `0x45BDD4` at `0x42A1C4`.

The immutable Legacy_BPRF packet table at `0x467308` proves:

| Row | Preamble | SFD | STS | PHR/data |
|---|---:|---:|---|---|
| 1 (`0x467340`) | 64 symbols | selector0 | disabled | present |
| 4 (`0x4673E8`) | 64 symbols | selector0 | one length64 segment | absent |

Consequently an ordinary SP3-only FiRa session does not implement this acquisition exchange. The case first transmits a type4 waveform, then waits for a data reply of a different frame shape. PHY setting acceptance alone does not prove this MAC/scheduling contract.

Raw evidence: `case-p2p-full-rose-command.asm`, `rose-p2pm-factory.asm`, `rose-p2pm-all.asm`, `rose-hmd-tx-rx-start.asm`. Do not infer a complete reciprocal P2PS configuration simply by swapping the case's TX/RX fields; the phone's native request is a separate configuration.

## Exact Apple acquisition reply checks

Case state2 receive handling calls common validator `0x42B924` with message kind **0x31** at `0x42A38E..3A4`. The validator requires:

| Offset | Required bytes/field |
|---|---|
| 0 | LE16 frame-header constant `0xA841` |
| 2 | sequence, first cycle1 |
| 3 | 8-byte destination equal to the case session destination |
| 11 | 8-byte source; separate caller checks |
| 19 | LE16 PAN `0xA5A5` |
| 21 | status; caller requires0 |
| 22 | message kind `0x31` |
| 23 | two additional received bytes, consistent with PHY FCS |

Minimum receive length is **25 bytes**. The validator itself does not calculate a checksum. Native P2PS builder `0x42B804..89E` constructs **23 transmit-buffer bytes**, inserts kind0x31, and submits HMD TX. HMD TX configuration `0x4195B4..C6` reads `common->crc_mode` (+0x18), indexes the public length table `0x46DACA={2,4,0}`, and adds that CRC length to the PSDU length. The first reply context comes from a zeroed allocation (`0x426648..4C`), giving mode0 and a two-byte PHY CRC. Its polynomial and wire bit ordering remain hardware details; raw TX should provide the23-byte PSDU and the appropriate controller CRC16 mode, rather than append placeholder zero bytes. The eight-byte comparison fields are native Apple fields; no standard IEEE extended-address interpretation is assumed. It derives reply transmit timestamp from the received packet timestamp plus one mini-slot at `0x42B852..872`; later legs use additional timestamp-bearing packets of kinds0x32/0x33. This is not a FiRa ranging control message.

`verify-rose-p2p-frame.py` executes unchanged validator instructions with synthetic bytes. Ten cases pass: valid, length/FCF/PAN/sequence/destination/kind failures, and explicit confirmation that status/source/FCS belong to separate caller/PHY checks. `rose-p2p-frame-synthetic.json` contains only synthetic addresses and placeholder FCS. **It is not an over-air packet generator.**

Useful next capability gate is whether SR200D_A2_PROD exposes bounded raw RX timestamp capture and delayed raw TX with independent RX/TX frame shapes and custom PSDU containing the native comparison fields. An ordinary UCI FiRa session that inserts its own MAC header/schedule cannot express the native reply merely through eight accepted PHY parameters. This is an API gap to verify, not a claim that the radio hardware cannot do it.

## STS byte count refinement

The actual initializer still proves the fixed public firmware AES key, address-derived IV, and MMIO words recorded in `rose-sts-initializer-synthetic.json`. It does **not** prove the AES engine's expansion or byte/chip order.

The generic generator at `0x41FFA0` advances its output pointer by the commanded chunk length at `0x42001E`. Thus the initializer's command length512 versus later fixed-size buffer copy2048 does not establish a fourfold chip expansion. A full-capacity buffer copy can exceed the actual meaningful sequence length.

A stronger count distinction is visible in duration calculation `0x41BB3C..74`: it independently computes `64 * (512 >> 3) = 4096` sequence units in r0 and approximately `65 << 9 = 33280` timing-chip units in r1 (one segment plus its guard, subject to caller timing selection). Therefore the table's4096 should **not** be labelled4096 physical time chips. The512 generated bytes supply4096 sequence bits; the separate time-chip calculation is compatible with standard BPRF spreading but does not prove the exact hardware mapping.

The scalar `0x2056C539` appears only in the P2P initializer. The general generator forwards its scalar argument directly to the same FIFO position; NB callers can supply a16-bit scalar. No software interpretation or CPU bit expansion has been found. The radio uses a DMA sequence pointer and a hardware length. Exact semantics remain inside the ROSE AES/PHY hardware interface.

Selector0 and selector2 both have8 SFD symbols, but `0x41BAE2..E8` uses only half of selector0's SFD length in one timestamp/duration term; selector2 uses the full length. This is another reason to verify actual timing/waveform rather than equating numeric SFD selectors across chips.

Public checks: [Asahi's AES register definitions](https://github.com/AsahiLinux/m1n1/blob/main/proxyclient/m1n1/hw/aes.py) and [QEMU's Apple AES model](https://github.com/qemu/qemu/blob/master/hw/vmapple/aes.c) have a different FIFO/register and command format and cannot decode ROSE's scalar. [The U1 research source](https://github.com/seemoo-lab/apple_u1) documents host↔ROSE command observation, not this AES engine. No public primary ROSE AES command specification was located.


## Session addresses and first acquisition reply timing

Let `R` be the fresh eight-byte RoseMAC supplied in0702. The two session addresses are **M0=`00 || R[1:8]`** and **M1=`01 || R[1:8]`**, with no byte reversal or cryptographic derivation. P2PM factory `0x424ECA..EE2` constructs them with first-byte overwrite and clear; its folded helper `0x45CAC8` only stores the supplied words and reloads the original. The case validates destination M0 in `0x42A394..3A4` and source M1 in `0x42A438..44A`. The source range guard also excludes all-zero and the two largest unsigned64 values (`0x42A416..434`). P2PS emits the reciprocal destination/source fields at `0x42B844..87E`.

For the first successful cycle, the minimal native transmit PSDU is:

| Offset | Size | Field |
|---|---:|---|
| 0 | 2 | `41 A8` |
| 2 | 1 | cycle sequence1 |
| 3 | 8 | M0 |
| 11 | 8 | M1 |
| 19 | 2 | `A5 A5` |
| 21 | 1 | status0 |
| 22 | 1 | kind`31` |

This describes bytes supplied to the PHY, not a complete tested Samsung over-air frame. The23-byte payload is not itself a standard FiRa message.

### Zero mini-slot fields select native defaults

The BLE0702 LE16 interval is genuinely milliseconds: NERF `0x2419A..9E` reads it separately and stores expanded config+5; log `0x241B0` labels it `intv=%ums`. Expanded config+3/+4 (TX/RX mini-slot codes) are independently zeroed by the native0702 handler. Storage `0x25FA8` and `0x200F2..FC` preserve them, and builder `0x2069C..A4` forwards them to ROSE.

ROSE validates/defaults the command **before** the task factory: `0x42302A..3E` chooses default12 for packet group0 and56 otherwise; `0x423044..58` replaces zero TX/RX fields at command+0x24/+0x25. Only afterwards are command bytes copied into original task+0x90 (`0x42326E..72`). Thus seeing zero in the NERF command does not mean a zero ranging delay. For legacy group0, the actual default is **12×250µs=3ms**. The native schema names these fields `tx_mslot_sz_250us` and `rx_mslot_sz_250us`.

The factory `0x425A34..44` converts the TX code to native clock units with `code × 9600`; helper `0x45CB2C` stores that result at task+0x58. P2PS first reply `0x42B852..72` computes **scheduledTX=(receivedTimestamp48 + task+0x58) mod2^48**. Default legacy delay is115200 ROSE ticks, corresponding to a38.4MHz clock scale. This must not be added directly to NXP124.8MHz timestamps. Whether NXP `RX_DONE` shares the native receive timestamp/RMARKER reference point is an independent unresolved ABI question.

`verify-rose-acquisition-layout.py` executes the unchanged defaulting block and unchanged reply-builder instructions, including a low32 carry into high16. `rose-acquisition-layout-synthetic.json` records only public synthetic inputs. It proves byte layout and arithmetic, not radio interoperability.

## Precisely remaining STS boundary

The proven public fixed P2P AES key is `4a5572bc90798c8e518d2449092f1b55`; the initializer's IV is M0 followed by eight zero bytes. The captured AES FIFO command words are `16000000,keyPointer,26020000,ivPointer,2056C539,outPointer`. The32-bit value `2056C539` is **not yet decoded**. Its presence, and IV counter handling in the generic generator, do not prove that output is ordinary AES-CTR on zero plaintext or that IEEE4z's preincrement and bit ordering are identical.

The [Keysight HRP UWB STS reference](https://helpfiles.keysight.com/csg/89600B/Webhelp/Subsystems/hrpuwb/content/hrpuwb_dlg_fmt_stsparameters.htm) independently documents the IEEE-style key128, upperV96 and counter32 interface. Those fields are an appropriate comparison target, not proof of Apple's hardware semantics. Neither a fresh owner BLE LTK nor a FiRa session key can substitute for this unresolved public waveform generator.

The smallest useful next evidence is bounded raw RX on the verified PHY parameters that reports preamble/SFD/STS detection separately. This can establish whether the case's acquisition waveform reaches the SR200D receiver even before exact STS authentication. A successful first acquisition reply additionally needs raw custom PSDU, independent no-STS data-frame TX, hardware CRC16, and delayed TX with a verified RX timestamp-to-TX RMARKER conversion. No over-air result is claimed by this report.
