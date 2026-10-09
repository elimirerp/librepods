0x10145c5c8:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10145c5cc:  1f 05 00 b1   cmn	x8, #0x1
0x10145c5d0:  21 24 00 54   b.ne	loc_10145ca54 ; ⤵ 0x484
0x10145c5d4:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x10145c5d8:  e0 03 14 aa   mov	x0, x20
0x10145c5dc:  01 00 80 52   mov	w1, #0
0x10145c5e0:  44 e7 1a 94   bl	j__os_log_type_enabled
0x10145c5e4:  a0 03 00 34   cbz	w0, loc_10145c658 ; ⤵ 0x74
0x10145c5e8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c5ec:  0b f1 00 94   bl	0x101498a18
0x10145c5f0:  c8 44 00 90   adrp	x8, 0x101cf4000
0x10145c5f4:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10145c5f8:  e0 03 00 bd   str	s0, [sp]
0x10145c5fc:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c600:  48 04 81 52   mov	w8, #0x822
0x10145c604:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145c608:  88 52 00 d0   adrp	x8, 0x101eae000
0x10145c60c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145c610:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145c614:  28 08 81 52   mov	w8, #0x841
0x10145c618:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145c61c:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10145c620:  48 80 80 52   mov	w8, #0x402
0x10145c624:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145c628:  f6 e3 01 b8   stur	w22, [sp, #0x1e]
0x10145c62c:  e8 47 00 79   strh	w8, [sp, #0x22]
0x10145c630:  ff 27 00 b9   str	wzr, [sp, #0x24]
0x10145c634:  20 5d ff 90   adrp	x0, 0x100000000
0x10145c638:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145c63c:  c3 70 00 d0   adrp	x3, 0x102276000
0x10145c640:  63 a0 0b 91   add	x3, x3, #0x2e8 ; "{\"msg%{public}.0s\":\"#durian #hawkeye command response\", \"item\":%{private, location:escape_only}@, \"acked opcode\":%{public}d, \"response\":%{public}d}"
0x10145c644:  e4 03 00 91   mov	x4, sp
0x10145c648:  e1 03 14 aa   mov	x1, x20
0x10145c64c:  02 00 80 52   mov	w2, #0
0x10145c650:  05 05 80 52   mov	w5, #0x28
0x10145c654:  e7 e2 1a 94   bl	j___os_log_impl
0x10145c658:  ; loc_10145c658
0x10145c658:  83 3f 00 12   and	w3, w28, #0xffff
0x10145c65c:  e0 03 13 aa   mov	x0, x19
0x10145c660:  e2 03 15 aa   mov	x2, x21
0x10145c664:  e4 03 16 aa   mov	x4, x22
0x10145c668:  ae 47 1b 94   bl	j__objc_msgSend(x0, "handleDurianData:opcode:ackOpcode:")
0x10145c66c:  c0 fd ff 17   b	loc_10145bd6c ; ⤴ -0x900
0x10145c670:  f6 12 40 78   ldurh	w22, [x23, #0x1]
0x10145c674:  e0 03 13 aa   mov	x0, x19
0x10145c678:  e2 03 16 aa   mov	x2, x22
0x10145c67c:  f1 f1 1b 94   bl	j__objc_msgSend(x0, "supportsFragmentationForOpcode:")
0x10145c680:  c0 01 00 36   tbz	w0, #0, loc_10145c6b8 ; ⤵ 0x38
0x10145c684:  76 42 01 79   strh	w22, [x19, #0xa0]
0x10145c688:  e0 03 15 aa   mov	x0, x21
0x10145c68c:  55 73 1b 94   bl	j__objc_msgSend(x0, "length")
0x10145c690:  03 0c 00 d1   sub	x3, x0, #0x3
0x10145c694:  e0 03 15 aa   mov	x0, x21
0x10145c698:  62 00 80 52   mov	w2, #0x3
0x10145c69c:  55 fe ff 17   b	loc_10145bff0 ; ⤴ -0x6ac
0x10145c6a0:  1f 07 00 71   cmp	w24, #0x1
0x10145c6a4:  c0 08 00 54   b.eq	loc_10145c7bc ; ⤵ 0x118
0x10145c6a8:  1f 0b 00 71   cmp	w24, #0x2
0x10145c6ac:  c1 09 00 54   b.ne	loc_10145c7e4 ; ⤵ 0x138
0x10145c6b0:  94 03 80 52   mov	w20, #0x1c
0x10145c6b4:  8c 00 00 14   b	loc_10145c8e4 ; ⤵ 0x230
0x10145c6b8:  ; loc_10145c6b8
0x10145c6b8:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x10145c6bc:  a9 79 00 d0   adrp	x9, 0x102392000
0x10145c6c0:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10145c6c4:  29 01 40 f9   ldr	x9, [x9]
0x10145c6c8:  3f 01 08 eb   cmp	x9, x8
0x10145c6cc:  81 1c 00 54   b.ne	loc_10145ca5c ; ⤵ 0x390
0x10145c6d0:  e0 03 13 aa   mov	x0, x19
0x10145c6d4:  02 04 80 52   mov	w2, #0x20
0x10145c6d8:  0f ff ff 17   b	loc_10145c314 ; ⤴ -0x3c4
0x10145c6dc:  df 42 1c 71   cmp	w22, #0x710
0x10145c6e0:  61 08 00 54   b.ne	loc_10145c7ec ; ⤵ 0x10c
0x10145c6e4:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10145c6e8:  1f 05 00 b1   cmn	x8, #0x1
0x10145c6ec:  a1 1b 00 54   b.ne	loc_10145ca60 ; ⤵ 0x374
0x10145c6f0:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x10145c6f4:  e0 03 14 aa   mov	x0, x20
0x10145c6f8:  01 00 80 52   mov	w1, #0
0x10145c6fc:  fd e6 1a 94   bl	j__os_log_type_enabled
0x10145c700:  39 00 80 52   mov	w25, #0x1
0x10145c704:  00 18 00 34   cbz	w0, loc_10145ca04 ; ⤵ 0x300

