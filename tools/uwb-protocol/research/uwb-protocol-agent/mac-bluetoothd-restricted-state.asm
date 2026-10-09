0x1005cf480:  55 07 00 b4   cbz	x21, loc_1005cf568 ; ⤵ 0xe8
0x1005cf484:  1f 05 00 71   cmp	w8, #0x1
0x1005cf488:  6b 00 00 54   b.lt	loc_1005cf494 ; ⤵ 0xc
0x1005cf48c:  7c 02 40 f9   ldr	x28, [x19]
0x1005cf490:  1c 00 00 14   b	loc_1005cf500 ; ⤵ 0x70
0x1005cf494:  ; loc_1005cf494
0x1005cf494:  88 ea 42 39   ldrb	w8, [x20, #0xba]
0x1005cf498:  7c 02 40 f9   ldr	x28, [x19]
0x1005cf49c:  28 03 00 36   tbz	w8, #0, loc_1005cf500 ; ⤵ 0x64
0x1005cf4a0:  e0 03 1c aa   mov	x0, x28
0x1005cf4a4:  01 00 80 52   mov	w1, #0
0x1005cf4a8:  62 00 09 94   bl	j__os_log_type_enabled
0x1005cf4ac:  08 00 80 52   mov	w8, #0
0x1005cf4b0:  a0 05 00 34   cbz	w0, loc_1005cf564 ; ⤵ 0xb4
0x1005cf4b4:  49 03 c0 39   ldrsb	w9, [x26]
0x1005cf4b8:  e8 03 1b aa   mov	x8, x27
0x1005cf4bc:  49 00 f8 36   tbz	w9, #0x1f, loc_1005cf4c4 ; ⤵ 0x8
0x1005cf4c0:  68 03 40 f9   ldr	x8, [x27]
0x1005cf4c4:  ; loc_1005cf4c4
0x1005cf4c4:  09 16 00 d0   adrp	x9, 0x100891000
0x1005cf4c8:  20 65 44 fd   ldr	d0, [x9, #0x8c8]
0x1005cf4cc:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x1005cf4d0:  c8 42 00 f8   stur	x8, [x22, #0x4]
0x1005cf4d4:  80 d1 ff b0   adrp	x0, 0x100000000
0x1005cf4d8:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005cf4dc:  03 1f 00 f0   adrp	x3, 0x1009b2000
0x1005cf4e0:  63 54 2c 91   add	x3, x3, #0xb15 ; "Access level is less than kXPCAccessLevelSystem for session \"%{public}s\". Restricted state operation not allowed"
0x1005cf4e4:  a4 83 02 d1   sub	x4, fp, #0xa0
0x1005cf4e8:  e1 03 1c aa   mov	x1, x28
0x1005cf4ec:  02 00 80 52   mov	w2, #0
0x1005cf4f0:  85 01 80 52   mov	w5, #0xc
0x1005cf4f4:  97 fb 08 94   bl	j___os_log_impl
0x1005cf4f8:  08 00 80 52   mov	w8, #0
0x1005cf4fc:  1a 00 00 14   b	loc_1005cf564 ; ⤵ 0x68
0x1005cf500:  ; loc_1005cf500
0x1005cf500:  e0 03 1c aa   mov	x0, x28
0x1005cf504:  01 00 80 52   mov	w1, #0
0x1005cf508:  4a 00 09 94   bl	j__os_log_type_enabled
0x1005cf50c:  a0 02 00 34   cbz	w0, loc_1005cf560 ; ⤵ 0x54
0x1005cf510:  49 03 c0 39   ldrsb	w9, [x26]
0x1005cf514:  e8 03 1b aa   mov	x8, x27
0x1005cf518:  49 00 f8 36   tbz	w9, #0x1f, loc_1005cf520 ; ⤵ 0x8
0x1005cf51c:  68 03 40 f9   ldr	x8, [x27]
0x1005cf520:  ; loc_1005cf520
0x1005cf520:  29 16 00 d0   adrp	x9, 0x100895000
0x1005cf524:  20 51 43 fd   ldr	d0, [x9, #0x6a0]
0x1005cf528:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x1005cf52c:  d5 42 00 f8   stur	x21, [x22, #0x4]
0x1005cf530:  49 04 81 52   mov	w9, #0x822
0x1005cf534:  a9 c3 16 78   sturh	w9, [fp, #-0x94]
0x1005cf538:  c8 e2 00 f8   stur	x8, [x22, #0xe]
0x1005cf53c:  80 d1 ff b0   adrp	x0, 0x100000000
0x1005cf540:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005cf544:  03 1f 00 f0   adrp	x3, 0x1009b2000
0x1005cf548:  63 38 2b 91   add	x3, x3, #0xace ; "Setting fNeedsRestrictedState operation: %lld for session \"%{public}s\""
0x1005cf54c:  a4 83 02 d1   sub	x4, fp, #0xa0
0x1005cf550:  e1 03 1c aa   mov	x1, x28
0x1005cf554:  02 00 80 52   mov	w2, #0
0x1005cf558:  c5 02 80 52   mov	w5, #0x16
0x1005cf55c:  7d fb 08 94   bl	j___os_log_impl
0x1005cf560:  ; loc_1005cf560
0x1005cf560:  28 00 80 52   mov	w8, #0x1
0x1005cf564:  ; loc_1005cf564
0x1005cf564:  88 ee 02 39   strb	w8, [x20, #0xbb]
0x1005cf568:  ; loc_1005cf568
0x1005cf568:  9f f2 02 39   strb	wzr, [x20, #0xbc]
0x1005cf56c:  e0 8b 40 f9   ldr	x0, [sp, #0x110]
0x1005cf570:  e2 03 17 aa   mov	x2, x23
0x1005cf574:  6b 1b 09 94   bl	j__objc_msgSend(x0, "containsObject:")
0x1005cf578:  a0 02 00 34   cbz	w0, loc_1005cf5cc ; ⤵ 0x54
0x1005cf57c:  28 20 80 52   mov	w8, #0x101
0x1005cf580:  88 b2 0b 78   sturh	w8, [x20, #0xbb]
0x1005cf584:  7c 02 40 f9   ldr	x28, [x19]
0x1005cf588:  e0 03 1c aa   mov	x0, x28
0x1005cf58c:  01 00 80 52   mov	w1, #0
0x1005cf590:  28 00 09 94   bl	j__os_log_type_enabled
0x1005cf594:  c0 01 00 34   cbz	w0, loc_1005cf5cc ; ⤵ 0x38
0x1005cf598:  08 16 00 d0   adrp	x8, 0x100891000
0x1005cf59c:  00 49 46 fd   ldr	d0, [x8, #0xc90]
0x1005cf5a0:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x1005cf5a4:  d7 42 00 f8   stur	x23, [x22, #0x4]
0x1005cf5a8:  80 d1 ff b0   adrp	x0, 0x100000000
0x1005cf5ac:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005cf5b0:  03 1f 00 f0   adrp	x3, 0x1009b2000
0x1005cf5b4:  63 18 2e 91   add	x3, x3, #0xb86 ; "\"%@\" will get power state ON in Restricted mode"
0x1005cf5b8:  a4 83 02 d1   sub	x4, fp, #0xa0
0x1005cf5bc:  e1 03 1c aa   mov	x1, x28
0x1005cf5c0:  02 00 80 52   mov	w2, #0
0x1005cf5c4:  85 01 80 52   mov	w5, #0xc
0x1005cf5c8:  62 fb 08 94   bl	j___os_log_impl
0x1005cf5cc:  ; loc_1005cf5cc
0x1005cf5cc:  81 32 40 f9   ldr	x1, [x20, #0x60]
0x1005cf5d0:  7e 6d 00 94   bl	0x1005eabc8
0x1005cf5d4:  80 00 00 37   tbnz	w0, #0, loc_1005cf5e4 ; ⤵ 0x10
0x1005cf5d8:  88 52 40 b9   ldr	w8, [x20, #0x50]
0x1005cf5dc:  1f 05 00 71   cmp	w8, #0x1
0x1005cf5e0:  eb 02 00 54   b.lt	loc_1005cf63c ; ⤵ 0x5c
0x1005cf5e4:  ; loc_1005cf5e4
0x1005cf5e4:  28 00 80 52   mov	w8, #0x1
0x1005cf5e8:  88 66 01 39   strb	w8, [x20, #0x59]
0x1005cf5ec:  7c 02 40 f9   ldr	x28, [x19]
0x1005cf5f0:  e0 03 1c aa   mov	x0, x28
0x1005cf5f4:  01 00 80 52   mov	w1, #0
0x1005cf5f8:  0e 00 09 94   bl	j__os_log_type_enabled
0x1005cf5fc:  a0 02 00 34   cbz	w0, loc_1005cf650 ; ⤵ 0x54
0x1005cf600:  88 32 40 f9   ldr	x8, [x20, #0x60]
0x1005cf604:  09 16 00 d0   adrp	x9, 0x100891000
0x1005cf608:  20 49 46 fd   ldr	d0, [x9, #0xc90]
0x1005cf60c:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x1005cf610:  c8 42 00 f8   stur	x8, [x22, #0x4]
0x1005cf614:  80 d1 ff b0   adrp	x0, 0x100000000
0x1005cf618:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005cf61c:  03 1f 00 f0   adrp	x3, 0x1009b2000
0x1005cf620:  63 d8 2e 91   add	x3, x3, #0xbb6 ; "Warning: Overriding TCC for bundleIdentifier %@"
0x1005cf624:  a4 83 02 d1   sub	x4, fp, #0xa0
0x1005cf628:  e1 03 1c aa   mov	x1, x28
0x1005cf62c:  02 00 80 52   mov	w2, #0
0x1005cf630:  85 01 80 52   mov	w5, #0xc
0x1005cf634:  47 fb 08 94   bl	j___os_log_impl

