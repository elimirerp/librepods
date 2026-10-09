0x10021c500:  29 a3 00 94   bl	0x1002451a4
0x10021c504:  60 08 80 52   mov	w0, #0x43
0x10021c508:  84 8d fa 97   bl	0x1000bfb18
0x10021c50c:  f3 03 00 aa   mov	x19, x0
0x10021c510:  01 02 80 52   mov	w1, #0x10
0x10021c514:  47 cc 17 94   bl	j__os_log_type_enabled
0x10021c518:  20 02 00 34   cbz	w0, loc_10021c55c ; ⤵ 0x44
0x10021c51c:  e0 03 13 aa   mov	x0, x19
0x10021c520:  65 6f 16 94   bl	0x1007b82b4
0x10021c524:  0e 00 00 14   b	loc_10021c55c ; ⤵ 0x38
0x10021c528:  40 00 80 52   mov	w0, #0x2
0x10021c52c:  61 08 80 52   mov	w1, #0x43
0x10021c530:  05 20 fb 97   bl	0x1000e4544
0x10021c534:  40 01 00 34   cbz	w0, loc_10021c55c ; ⤵ 0x28
0x10021c538:  c0 36 00 d0   adrp	x0, 0x1008f6000
0x10021c53c:  00 44 13 91   add	x0, x0, #0x4d1 ; "Cannot resolve a non-resolvable address."
0x10021c540:  19 a3 00 94   bl	0x1002451a4
0x10021c544:  60 08 80 52   mov	w0, #0x43
0x10021c548:  74 8d fa 97   bl	0x1000bfb18
0x10021c54c:  f3 03 00 aa   mov	x19, x0
0x10021c550:  01 02 80 52   mov	w1, #0x10
0x10021c554:  37 cc 17 94   bl	j__os_log_type_enabled
0x10021c558:  60 05 00 35   cbnz	w0, loc_10021c604 ; ⤵ 0xac
0x10021c55c:  ; loc_10021c55c
0x10021c55c:  a0 0c 80 52   mov	w0, #0x65
0x10021c560:  ; loc_10021c560
0x10021c560:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x10021c564:  a9 40 00 d0   adrp	x9, 0x100a32000
0x10021c568:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10021c56c:  29 01 40 f9   ldr	x9, [x9]
0x10021c570:  3f 01 08 eb   cmp	x9, x8
0x10021c574:  e1 04 00 54   b.ne	loc_10021c610 ; ⤵ 0x9c
0x10021c578:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10021c57c:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10021c580:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10021c584:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x10021c588:  fa 67 42 a9   ldp	x26, x25, [sp, #0x20]
0x10021c58c:  ff c3 01 91   add	sp, sp, #0x70
0x10021c590:  ff 0f 5f d6   retab
0x10021c594:  20 00 80 52   mov	w0, #0x1
0x10021c598:  61 08 80 52   mov	w1, #0x43
0x10021c59c:  ea 1f fb 97   bl	0x1000e4544
0x10021c5a0:  00 fe ff 34   cbz	w0, loc_10021c560 ; ⤴ -0x40
0x10021c5a4:  c0 36 00 d0   adrp	x0, 0x1008f6000
0x10021c5a8:  00 e8 13 91   add	x0, x0, #0x4fa ; "No resolving cache defined."
0x10021c5ac:  fe a2 00 94   bl	0x1002451a4
0x10021c5b0:  60 08 80 52   mov	w0, #0x43
0x10021c5b4:  59 8d fa 97   bl	0x1000bfb18
0x10021c5b8:  f3 03 00 aa   mov	x19, x0
0x10021c5bc:  21 00 80 52   mov	w1, #0x1
0x10021c5c0:  1c cc 17 94   bl	j__os_log_type_enabled
0x10021c5c4:  e0 fc ff 34   cbz	w0, loc_10021c560 ; ⤴ -0x64
0x10021c5c8:  15 a2 00 94   bl	0x100244e1c
0x10021c5cc:  a8 33 00 b0   adrp	x8, 0x100891000
0x10021c5d0:  00 65 44 fd   ldr	d0, [x8, #0x8c8]
0x10021c5d4:  e0 03 00 bd   str	s0, [sp]
0x10021c5d8:  e0 43 00 f8   stur	x0, [sp, #0x4]
0x10021c5dc:  20 ef ff 90   adrp	x0, 0x100000000
0x10021c5e0:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10021c5e4:  43 39 00 f0   adrp	x3, 0x100947000
0x10021c5e8:  63 90 35 91   add	x3, x3, #0xd64 ; " %{public}s"
0x10021c5ec:  e4 03 00 91   mov	x4, sp
0x10021c5f0:  e1 03 13 aa   mov	x1, x19
0x10021c5f4:  22 00 80 52   mov	w2, #0x1
0x10021c5f8:  85 01 80 52   mov	w5, #0xc
0x10021c5fc:  55 c7 17 94   bl	j___os_log_impl
0x10021c600:  b8 ff ff 17   b	loc_10021c4e0 ; ⤴ -0x120
0x10021c604:  ; loc_10021c604
0x10021c604:  e0 03 13 aa   mov	x0, x19
0x10021c608:  2b 6f 16 94   bl	0x1007b82b4
0x10021c60c:  d4 ff ff 17   b	loc_10021c55c ; ⤴ -0xb0
0x10021c610:  ; loc_10021c610
0x10021c610:  20 c7 17 94   bl	j____stack_chk_fail

sub_10021c614:
0x10021c614:  7f 23 03 d5   pacibsp
0x10021c618:  ff 43 01 d1   sub	sp, sp, #0x50
0x10021c61c:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x10021c620:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x10021c624:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x10021c628:  fd 03 01 91   add	fp, sp, #0x40
0x10021c62c:  00 07 00 b4   cbz	x0, loc_10021c70c ; ⤵ 0xe0
0x10021c630:  f3 03 01 aa   mov	x19, x1
0x10021c634:  c1 08 00 b4   cbz	x1, loc_10021c74c ; ⤵ 0x118
0x10021c638:  f5 03 00 aa   mov	x21, x0
0x10021c63c:  51 56 fd 97   bl	0x100171f80
0x10021c640:  e0 0a 00 b4   cbz	x0, loc_10021c79c ; ⤵ 0x15c
0x10021c644:  f4 03 00 aa   mov	x20, x0
0x10021c648:  00 d4 40 b9   ldr	w0, [x0, #0xd4]
0x10021c64c:  60 00 00 34   cbz	w0, loc_10021c658 ; ⤵ 0xc
0x10021c650:  7e a5 00 94   bl	0x100245c48
0x10021c654:  9f d6 00 b9   str	wzr, [x20, #0xd4]
0x10021c658:  ; loc_10021c658
0x10021c658:  e0 03 14 aa   mov	x0, x20
0x10021c65c:  e1 03 13 aa   mov	x1, x19
0x10021c660:  fc 14 00 94   bl	0x100221a50
0x10021c664:  f3 03 00 aa   mov	x19, x0
0x10021c668:  e0 08 00 34   cbz	w0, loc_10021c784 ; ⤵ 0x11c
0x10021c66c:  ff 0b 00 f9   str	xzr, [sp, #0x10]
0x10021c670:  61 42 86 d2   mov	x1, #0x3213
0x10021c674:  a1 4b a7 f2   movk	x1, #0x3a5d, lsl #0x10
0x10021c678:  01 08 c0 f2   movk	x1, #0x40, lsl #0x20
0x10021c67c:  41 20 e0 f2   movk	x1, #0x102, lsl #0x30
0x10021c680:  00 02 80 52   mov	w0, #0x10
0x10021c684:  72 4c fb 97   bl	0x1000ef84c
0x10021c688:  e0 07 00 f9   str	x0, [sp, #0x8]
0x10021c68c:  14 00 00 f9   str	x20, [x0]
0x10021c690:  68 58 82 52   mov	w8, #0x12c3
0x10021c694:  08 08 00 b9   str	w8, [x0, #0x8]
0x10021c698:  e8 23 00 91   add	x8, sp, #0x8
0x10021c69c:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x10021c6a0:  08 01 80 52   mov	w8, #0x8
0x10021c6a4:  e8 23 00 79   strh	w8, [sp, #0x10]
0x10021c6a8:  10 00 00 90   adrp	x16, 0x10021c000
0x10021c6ac:  10 e2 1f 91   add	x16, x16, #0x7f8
0x10021c6b0:  f0 23 c1 da   paciza	x16
0x10021c6b4:  e0 03 10 aa   mov	x0, x16
0x10021c6b8:  e1 43 00 91   add	x1, sp, #0x10
0x10021c6bc:  02 00 80 52   mov	w2, #0
0x10021c6c0:  03 00 80 d2   mov	x3, #0
0x10021c6c4:  5a a4 00 94   bl	0x10024582c
0x10021c6c8:  e0 05 00 34   cbz	w0, loc_10021c784 ; ⤵ 0xbc
0x10021c6cc:  40 00 80 52   mov	w0, #0x2
0x10021c6d0:  61 08 80 52   mov	w1, #0x43
0x10021c6d4:  9c 1f fb 97   bl	0x1000e4544
0x10021c6d8:  40 05 00 34   cbz	w0, loc_10021c780 ; ⤵ 0xa8
0x10021c6dc:  c0 36 00 d0   adrp	x0, 0x1008f6000

