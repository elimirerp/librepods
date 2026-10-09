# Legacy0703 acceptance, counter scheduling and completion

Original A3122 9A348 NERF instructions; static sources and synthetic RAM only. No phone, radio, account, build or app operations.

## Immediate answer for one bounded trial

**An estimated counter is not intrinsically rejected.** The case reads its actual current BLE counter and accepts any target strictly greater than current+3, then schedules the trigger after subtracting its90ms preparation lead. An estimate can pass this numeric test and still place RF outside the receive window. There is no observed upper-distance or host-clock correspondence check in the inspected gate.

0703's **immediate acceptance ACK is0700**, not0708. Full success ACK frame:

```
01 00 07 03 07 00 00
            ^^^^^ requestOpcodeLE16, statusLE16=0
```

0708 is the **asynchronous range-complete/failure** indication: statusLE32 followed by one-byte end reason. Waiting for0708 before starting the receiver can therefore wait until the case has finished or failed. A successful0700 ACK alone does not prove the trigger was installed or RF emitted.

## Wire command and immediate rejections

Frame `01 03 07 targetLE16` is five bytes. Dispatcher24008 gates owner pairing40350, encrypted flag5, schema validation3C680, then0703-specific initialized flag4 at24344..4E. Schema4E2DE expects four bytes excluding version.

| Condition |0700 ACK body | Effect |
|---|---|---|
| Valid command, owner+encrypted+initialized |`03 07 00 00` | Set connection flag1=1; store target and validflag; post RANGE_START |
| Initialized flag4 absent |`03 07 01 00` | Reject before starting |
| Owner pairing or encryption absent |`00 00 01 00` | Common early rejection; request opcode0 |
| Wrong0703 body length |`03 07 03 00` | Schema rejection |

These ACK statuses are16-bit. At24350..56 the dispatcher sets flag1 through3B700(conn,1,1), resets counter state25A24, stores target25A38 and posts global event1F at24368..6A. It then reaches2436E..78→2409E and emits0700 with status0. Thus even target0 initially gets acceptance ACK0; its later counter check rejects it.

The actual ACK serializer3C7F4 writes requestopcode16+status16 and sends exactly four body bytes through3C6D4. The incoming version byte is excluded by this dispatcher length calculation; this audit does not claim an independent version validator here.

## Asynchronous path, native current counter and wrap

Find My FINDING row4DC70 posts Rose RANGE_START through23724. Rose READY row4FE48 selects26228, queues2637C→25C3C and transitions to RANGE(state5).25C3C sets end-reason1, arms its overall timer, then reads mode byte2000FAD3. Mode0 uses the legacy branch25C8E.

Ordinary0703 always sets validflag20011014=1, including target0. The branch with validflag0 and null connection at25D54 is not the ordinary command path.

25CCA invokes259E4 (`svc94`, native connection-event-counter getter) using the selected initialized connection. At25D08..1A:

```
if counter_query_failed: status7
current32 = zero_extend(current16)
target32  = zero_extend(target16)
if current32 + 3 >= target32: status7
else: call203D0(connection, target16, interval)
```

The branch is signed BGE, but both operands here are nonnegative32-bit values. **There is no16-bit truncation of current+3 and no modular wrap comparison.** For current65532 or greater, no16-bit target can pass. Current65534,target0 rejects; current65530,target65534 passes. A post-wrap target cannot be used while the sampled current is still near65535.

Rejected counter/query paths stop the timer through24A94 and pass status7 to26FF8. In Rose RANGE,26D94 routes that status to RANGE_COMPLETE,261A4 posts global RANGE_COMPLETE,236E4→23F5C sends:

```
01 08 07 07 00 00 00 01
         statusLE32=7   endReason=1
```

This happens before203D0 and before connection-event-trigger installation. It is a concrete pre-RF failure for this path. It does not mean every scheduling or radio error is status7.

## After the numeric gate

203D0 additionally requires controller state8 or18 and completed-configuration bit0 atstate+3, otherwise status8. For an ordinary connection it initializes timesync GPIO; initialization results with bits other than bit3 yield status25. It calculates:

```
interval_ms = interval_native * 1.25
events_to_subtract = ceil(90.0 / interval_ms)
trigger_target16 = uint16(target16 - events_to_subtract)
```

At30ms interval, events_to_subtract=3. The visible subtraction is followed byUXTH; there is no separate underflow check in this slice. The target is passed through the registered controller callbackstate+10 to25B34, which allocates PPI and invokes259E8 (`svc95`, native connection-event-trigger start). Allocation or trigger API failures call26FF8 with their native status; the status is not restricted to7.25B34 sets20011010=1 only after successful native trigger installation.

25D44 logs `Sent range start` after203D0 returns0. **No0708 or other start-success indication is sent from this success path.** RF timing still depends on the controller event trigger and subsequent Rose processing. A host monotonic estimate is not an exact read of the native counter, and this audit does not infer a link's initial counter value from elapsed time.

## Completion, flags and timeouts

All inspected normal RANGE completion statuses route26FF8→26D94→26E78→Rose event0B→261A4→Find My event20→236E4→23F5C.0708 is statusLE32+endReason8 (body5), and23F5C clears connection flag1 after sending. Rose state returns to READY(state2). Connection flag4 remains initialized until explicit0705/deinit completion clears it.

| End reason | Instruction-backed meaning |
|---|---|
|1 | Default at25C46..4A; natural completion or failure without another end reason |
|2 | Explicit0704 or0705 invokes259FC(2) |
|3 | SOUND_START/SHORT_SOUND_START interrupts ranging at2367C..9C |
|4 | NB timeout or UWB regulatory timeout callbacks24600/24624 request stopping |

259FC replaces reason only while existing reason is1; otherwise it logs an overload and retains the first nondefault reason. End reason is independent from completion status: e.g. native timeout-requested STOP can complete with status0/reason4.

The initial timer value at25C4C..56 is `uint16(params+8) * uint16(params+10) + 8000`, from staged legacy parameters2001103C. It is passed to24A40. Timer initialization24748 connects the general Rose response timer20010248 to24468, which logs `Timed out waiting for response from rose` and calls26FF8(1). In RANGE, that emits0708 status1 with the current end reason. This is not a promise of RF emission or a precise live time bound. Separate regulatory timeout24624 sets reason4 and requests RANGE_STOP.

0709 is a20-byte range-result indication, emitted by23FD4 from controller reply5. Its existence can provide additional session evidence; no result is fabricated by these checks. Exceptional fatal/error paths may emit070A(statusLE32), as established by the cleanup report.

## Verification

`work/uwb-protocol-agent/verify-case-legacy-start-semantics.py` passed18 synthetic cases:6 original dispatcher/ACK-serializer cases;7 actual counter-gate boundary/wrap cases;5 original completion-routing/serializer cases. The latter executes26D94 status selection, Rose transition, Find My extension selection,0708 serializer and flag1 clearing. Scheduler, controller hardware, logs and GATT transport are explicit boundaries; no booted device or radio is emulated.

Output: `work/uwb-protocol-agent/case-legacy-start-synthetic-checks.json`. Additional raw instruction slices: `case-legacy-start-{dispatch-exact,controller,session,end-reason,flag,error-ack}.asm`, `case-legacy-{timeout-callbacks,timer-install,config-storage,controller-timing}.asm`, plus existing `case-start-counter-install.asm`, `case-start-trigger-ipc.asm`, `case-cleanup-decoded-state-table.txt` and `modern-nb-response.asm`.
