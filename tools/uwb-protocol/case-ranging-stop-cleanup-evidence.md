# Case ranging stop and deinit — original 9A348 instruction evidence

Scope: A3122 `NERF.bin`, static disassembly and unchanged Thumb instructions with synthetic RAM. No phone, account, private material, Bluetooth, UWB, pairing, reset, or enrollment operations were performed. This supplements `modern-nb-config-evidence.md` and resolves its previous disconnect-cleanup gap.

## Bounded legacy trial cleanup

| Action | Complete GATT frame | Successful asynchronous indication |
|---|---|---|
| Stop an active legacy or NB range | `01 04 07` | **`01 08 07 00 00 00 00 02`**: opcode0708, statusLE32=0, end reason2 |
| Deinit Rose | `01 05 07` | **`01 0b 07 00 00 00 00`**: opcode070B, statusLE32=0 |

Keep the existing encrypted owner connection and indication subscription while issuing these commands. After an active range, send0704, await the actual range-complete indication with end reason2, send0705, await070B, then disconnect BLE. If only configured and never started, use0705 directly: there is no active RANGE state in which0704 can stop. Use bounded waits; a missing response is not evidence of successful cleanup. Native stop arms a2000-unit timer, and deinit arms4000; the values pass directly through the existing timer helper. No hardware latency guarantee follows from these static constants.

**070A is not the normal stop completion.** It is a four-byte status response emitted on the handler/error paths at244B8 and24B32 when Rose state is RANGE. Normal controller stop completion is routed through RANGE_COMPLETE and emits0708. The fifth0708 byte distinguishes end reason2 from an earlier start or natural completion indication. The native reason setter only replaces initial reason1; an already overloaded reason can remain different, so this discriminator is a normal-path expectation rather than a universal guarantee.

## Exact command gates and response widths

Dispatcher24008 first checks Find My owner pairing through40350, then encrypted flag5 through3B53C. Validator3C680 uses table4E2DE:0704 and0705 each have expected length2 after excluding the leading version byte. Extra body bytes cause0700 ACK status3. Both handlers additionally require initialized precision flag4; owner/encryption/init failures return0700 ACK status1. No successful immediate ACK is emitted by either handler.

-0704 at243A8..243CC: flag4 gate, end-reason setter259FC(2), global Find My event21(RANGE_STOP), metrics call34B70.
-0705 at243D4..243E8: flag4 gate,259FC(2), global Find My event1C(R1_DEINIT_HE).
-23DBC is the common indication serializer.0708 writes status32 plus259F0() byte, length5.070A and070B write status32, length4. Each needs an initialized connection selected by3B54E(flag4); after BLE is disconnected there is no indication destination.
-23F10 sends070B and then clears connection flag4 with3B700(conn,4,0).23F5C sends0708 and clears flag1. Both clear state only on a valid connection handle.

The relevant precision schema bytes are:

```
4e2de: 01 07 02 00 02 07 0e 00 03 07 04 00 04 07 02 00
4e2ee: 05 07 02 00 10 07 06 00 0d 07 15 00 0e 07 12 00
```

## Normal STOP path

The registered Find My extension header at4DC2C points to its state table4DCC0. FINDING(state12) uses event rows4DC58, count13. Its row4DC78 maps event21 to2362C, which posts Rose event0A(RANGE_STOP).

Rose dispatcher26B10 reads state byte20011055, the per-state list4FB40, and its eight-byte rows (`event, successState, failureState, pad, callback32`). RANGE(state5), row4FDE0 maps event0A to26322. Success/failure state20 means retain the current state.26322 invokes25D9C: starts timer2000, calls controller20DFC, retries status0x10004 after its logged2ms delay, otherwise reports controller errors through26FF8.20DFC rejects passthrough and invalid controller states; an initialized precision flag alone does not mean ranging has started.

Actual controller response4 reaches25F4E..25F62, stops the active legacy result timeout if present, logs `Ranging stopped`, and calls26FF8(0). The status-to-event function26D94 maps Rose RANGE(state5) to scheduled event0B(RANGE_COMPLETE), via26E78. Row4FDE8 invokes261A4 and transitions to READY(state2).261A4 posts Find My event20(RANGE_COMPLETE). In FINDING, row4DC88 calls236E4, which invokes23F5C(status). That emits0708 with the stored end-reason byte. This same completion wrapper serves ordinary legacy and NB range modes.

## Explicit DEINIT path

FINDING row4DC90 maps global event1C to236D0; CONNECTED row4DC48 maps it to23610. Both post Rose event18(R1_DEINIT_HE). READY, RANGE_CONFIG, and RANGE each map event18 to26108 and transition to PREP_FOR_HALT(state14); table rows4FE38,4FDA8,4FDF8.

26108 sets deinit-reason1 through24D88 and invokes24C90.24C90 resets ranging housekeeping through257B4, arms4000 timer and calls21828(prepare-for-halt). After the halt/idle event, state14 row4FD88 invokes2657C and transitions to IDLE(state0).2657C calls248F0→1FED0, actual Rose controller deinit. With reason1, it emits070B through23F10; if power-off delay is active, it stores status in2001104C and the pending bit2001104B, and callback266B4 emits070B after that delay. Consequently,070B is an asynchronous teardown completion, not merely acceptance of0705.

## BLE disconnect cleanup and its exact qualification

BLE disconnect code3BA70..3BB40 marks the dropped connection's handleFFFF.3BABA schedules3B4C8, which posts global event5(DISCONNECTED). In FINDING, row4DC60 chooses237E4:

1. Calls3B53C(FFFE,4).FFFE means **any remaining valid connection**, through3B4E6→3B474. The latter first checks handle!=FFFF before testing its flag bits.
2. If no initialized connection remains, falls through39048.39048 invokes the registered extension's exit callback at offset8. The installed extension header4DC2C+8 is2377B.
3.2377A clears the Rose keyroll marker through26FEC and, except when Rose is in KEYROLL_CONFIG or KEYROLL_PERFORM(states8/9), posts Rose event17(R1_DEINIT).
4. READY, RANGE_CONFIG, and RANGE rows4FE30,4FDA0,4FDF0 map event17 to260F4→24C90. It follows the same prepare-for-halt/controller-deinit path; generic deinit reason0 does not promise a070B indication, and a disconnected link could not carry that indication anyway.

If another initialized connection remains,237E4 retains Find My state (returns1, table failureState14 means retain). If no remaining connection has the ranging flag1, it posts a RANGE_STOP event first. This is deliberate multi-connection preservation. **The cleanup claim therefore applies to disconnecting the sole precision owner connection in this trial**, rather than any arbitrary BLE link. The unrelated keyroll exception does not affect a session whose Rose state is READY/RANGE_CONFIG/RANGE.

The traced paths do not enter INITIATE_PAIRING, KEYROLL, or CLR_CRYPTO_DATA events. These are distinct rows in the same decoded state table. No reset/unpair/re-enrollment command is part of this cleanup sequence.

## NB comparison

070D configuration sets the precision mode byte2000FAD3=1 and posts the same global RANGE_CONFIG event as legacy0702. Successful config returns Rose to READY(state2); it has not posted RANGE_START. Therefore **0705 after successful070F configuration or sole-owner BLE disconnect tears it down without issuing070E**. The disconnect/explicit-deinit state-table paths above do not branch on the legacy/NB mode byte or require phone NB hardware. This is a code-backed cleanup result for the staged configuration.

An active070E NB session uses the same global RANGE_START/RANGE_STOP/RANGE_COMPLETE state routes, including the common controller20DFC. NB result/timeouts differ at25ECE..25F4C; that distinction does not change the deinit route. This evidence still does not establish an MMS-only mode or functioning Samsung NB PHY. The previous NB configuration report's field and host-radio limitations remain.

## Reproducible synthetic verification and source artifacts

Run from the workspace root:

```
work/airpods-pro3-firmware-agent/root-venv/bin/python \
  work/uwb-protocol-agent/verify-case-ranging-cleanup.py
```

Thirty cases passed:10 command/gate/length cases;6 actual indication-serializer cases;6 real Find My extension routing cases (including disconnect and RANGE_COMPLETE);8 real Rose lookup/transition cases. Controller hardware, logs, scheduler, post-transition advertising actions, and transport are explicit harness boundaries. The tests do not claim hardware completion or emulate a booted case.

Evidence under `work/uwb-protocol-agent/`:

- `case-ranging-cleanup-synthetic-checks.json`, `verify-case-ranging-cleanup.py`.
- `case-cleanup-decoded-state-table.txt`: full Rose state and event rows decoded using the instruction-proven layouts.
- `case-cleanup-findmy-extension.asm`, `case-cleanup-event-bus.asm`, `case-cleanup-ble-disconnect.asm`, `case-cleanup-ble-observers.asm`.
- `case-cleanup-rose-event-dispatch.asm`, `case-cleanup-status-event.asm`, `case-cleanup-stop-callbacks.asm`, `case-cleanup-config-and-stop.asm`.
- `case-stop-response-controller.asm`, `case-cleanup-state-hooks.asm`, `case-cleanup-deinit-controller.asm`.
- Existing `modern-nb-response.asm`, `modern-nb-dispatch-common.asm`, `modern-nb-stop-controller.asm`.
