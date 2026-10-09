
-[CLHawkeyeDevice createStartNBRangingTaskWithIRK:]:
0x1014891b4:  7f 23 03 d5   pacibsp
0x1014891b8:  ff 03 01 d1   sub	sp, sp, #0x40
0x1014891bc:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x1014891c0:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x1014891c4:  fd c3 00 91   add	fp, sp, #0x30
0x1014891c8:  48 78 00 b0   adrp	x8, 0x102392000
0x1014891cc:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014891d0:  08 01 40 f9   ldr	x8, [x8]
0x1014891d4:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x1014891d8:  c8 87 00 b0   adrp	x8, 0x102582000
0x1014891dc:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014891e0:  22 04 00 b4   cbz	x2, loc_101489264 ; ⤵ 0x84
0x1014891e4:  f3 03 02 aa   mov	x19, x2
0x1014891e8:  1f 05 00 b1   cmn	x8, #0x1
0x1014891ec:  61 08 00 54   b.ne	loc_1014892f8 ; ⤵ 0x10c
0x1014891f0:  ; loc_1014891f0
0x1014891f0:  c8 87 00 b0   adrp	x8, 0x102582000
0x1014891f4:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014891f8:  e0 03 14 aa   mov	x0, x20
0x1014891fc:  01 00 80 52   mov	w1, #0
0x101489200:  3c 34 1a 94   bl	j__os_log_type_enabled
0x101489204:  60 02 00 34   cbz	w0, loc_101489250 ; ⤵ 0x4c
0x101489208:  48 43 00 f0   adrp	x8, 0x101cf4000
0x10148920c:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101489210:  e0 03 00 bd   str	s0, [sp]
0x101489214:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101489218:  48 04 81 52   mov	w8, #0x822
0x10148921c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101489220:  28 51 00 b0   adrp	x8, 0x101eae000
0x101489224:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101489228:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10148922c:  a0 5b ff f0   adrp	x0, 0x100000000
0x101489230:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101489234:  e3 6f 00 d0   adrp	x3, 0x102287000
0x101489238:  63 00 1d 91   add	x3, x3, #0x740 ; "{\"msg%{public}.0s\":\"#durian #hawkeye #nb creating StartNBRangingTask\"}"
0x10148923c:  e4 03 00 91   mov	x4, sp
0x101489240:  e1 03 14 aa   mov	x1, x20
0x101489244:  02 00 80 52   mov	w2, #0
0x101489248:  45 02 80 52   mov	w5, #0x12
0x10148924c:  e9 2f 1a 94   bl	j___os_log_impl
0x101489250:  ; loc_101489250
0x101489250:  a8 84 00 d0   adrp	x8, 0x10251f000
0x101489254:  00 c1 27 91   add	x0, x8, #0x9f0 ; CLDurianTask
0x101489258:  e2 03 13 aa   mov	x2, x19
0x10148925c:  69 34 1b 94   bl	j__objc_msgSend(x0, "startNBRangingHawkeyeTaskWithIRK:")
0x101489260:  1c 00 00 14   b	loc_1014892d0 ; ⤵ 0x70
0x101489264:  ; loc_101489264
0x101489264:  1f 05 00 b1   cmn	x8, #0x1
0x101489268:  c1 04 00 54   b.ne	loc_101489300 ; ⤵ 0x98
0x10148926c:  ; loc_10148926c
0x10148926c:  c8 87 00 b0   adrp	x8, 0x102582000
0x101489270:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101489274:  e0 03 13 aa   mov	x0, x19
0x101489278:  01 00 80 52   mov	w1, #0
0x10148927c:  1d 34 1a 94   bl	j__os_log_type_enabled
0x101489280:  60 02 00 34   cbz	w0, loc_1014892cc ; ⤵ 0x4c
0x101489284:  48 43 00 f0   adrp	x8, 0x101cf4000
0x101489288:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10148928c:  e0 03 00 bd   str	s0, [sp]
0x101489290:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101489294:  48 04 81 52   mov	w8, #0x822
0x101489298:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10148929c:  28 51 00 b0   adrp	x8, 0x101eae000
0x1014892a0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014892a4:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014892a8:  a0 5b ff f0   adrp	x0, 0x100000000
0x1014892ac:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014892b0:  e3 6f 00 d0   adrp	x3, 0x102287000
0x1014892b4:  63 1c 1e 91   add	x3, x3, #0x787 ; "{\"msg%{public}.0s\":\"#durian #hawkeye #nb ranging exiting early; nil IRK passed in\"}"
0x1014892b8:  e4 03 00 91   mov	x4, sp
0x1014892bc:  e1 03 13 aa   mov	x1, x19
0x1014892c0:  02 00 80 52   mov	w2, #0
0x1014892c4:  45 02 80 52   mov	w5, #0x12
0x1014892c8:  ca 2f 1a 94   bl	j___os_log_impl
0x1014892cc:  ; loc_1014892cc
0x1014892cc:  00 00 80 d2   mov	x0, #0
0x1014892d0:  ; loc_1014892d0
0x1014892d0:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x1014892d4:  49 78 00 b0   adrp	x9, 0x102392000
0x1014892d8:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x1014892dc:  29 01 40 f9   ldr	x9, [x9]
0x1014892e0:  3f 01 08 eb   cmp	x9, x8
0x1014892e4:  21 01 00 54   b.ne	loc_101489308 ; ⤵ 0x24
0x1014892e8:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x1014892ec:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x1014892f0:  ff 03 01 91   add	sp, sp, #0x40
0x1014892f4:  ff 0f 5f d6   retab
0x1014892f8:  ; loc_1014892f8
0x1014892f8:  de 1b 1a 94   bl	0x101b10270
0x1014892fc:  bd ff ff 17   b	loc_1014891f0 ; ⤴ -0x10c
0x101489300:  ; loc_101489300
0x101489300:  dc 1b 1a 94   bl	0x101b10270
0x101489304:  da ff ff 17   b	loc_10148926c ; ⤴ -0x98
0x101489308:  ; loc_101489308
0x101489308:  8e 2f 1a 94   bl	j____stack_chk_fail

-[CLHawkeyeDevice createGetMultiStatusTask]:
0x10148930c:  7f 23 03 d5   pacibsp
0x101489310:  ff 03 01 d1   sub	sp, sp, #0x40
0x101489314:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x101489318:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10148931c:  fd c3 00 91   add	fp, sp, #0x30
0x101489320:  48 78 00 b0   adrp	x8, 0x102392000
0x101489324:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101489328:  08 01 40 f9   ldr	x8, [x8]
0x10148932c:  e8 0f 00 f9   str	x8, [sp, #0x18]

