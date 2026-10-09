
sub_10077f49c:
0x10077f49c:  7f 23 03 d5   pacibsp
0x10077f4a0:  ff 03 02 d1   sub	sp, sp, #0x80
0x10077f4a4:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x10077f4a8:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x10077f4ac:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x10077f4b0:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x10077f4b4:  fd c3 01 91   add	fp, sp, #0x70
0x10077f4b8:  f4 03 02 aa   mov	x20, x2
0x10077f4bc:  f3 03 01 aa   mov	x19, x1
0x10077f4c0:  f5 03 00 aa   mov	x21, x0
0x10077f4c4:  88 15 00 f0   adrp	x8, 0x100a32000
0x10077f4c8:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10077f4cc:  08 01 40 f9   ldr	x8, [x8]
0x10077f4d0:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x10077f4d4:  e0 03 01 aa   mov	x0, x1
0x10077f4d8:  aa 3f 02 94   bl	j__objc_retain
0x10077f4dc:  ff 7f 00 a9   stp	xzr, xzr, [sp]
0x10077f4e0:  e0 03 00 91   mov	x0, sp
0x10077f4e4:  a1 c2 00 91   add	x1, x21, #0x30
0x10077f4e8:  04 de ec 97   bl	0x1002b6cf8
0x10077f4ec:  e0 43 00 91   add	x0, sp, #0x10
0x10077f4f0:  e1 03 13 aa   mov	x1, x19
0x10077f4f4:  68 d9 ec 97   bl	0x1002b5a94
0x10077f4f8:  a0 a2 07 91   add	x0, x21, #0x1e8
0x10077f4fc:  e1 43 00 91   add	x1, sp, #0x10
0x10077f500:  99 6d eb 97   bl	0x10025ab64
0x10077f504:  f6 03 00 aa   mov	x22, x0
0x10077f508:  d7 18 00 d0   adrp	x23, 0x100a99000
0x10077f50c:  e8 46 40 f9   ldr	x8, [x23, #0x88] ; data_100a99088 (__DATA.__data)
0x10077f510:  1f 05 00 b1   cmn	x8, #0x1
0x10077f514:  a1 17 00 54   b.ne	loc_10077f808 ; ⤵ 0x2f4
0x10077f518:  ; loc_10077f518
0x10077f518:  d8 18 00 d0   adrp	x24, 0x100a99000
0x10077f51c:  00 43 40 f9   ldr	x0, [x24, #0x80] ; data_100a99080 (__DATA.__data)
0x10077f520:  e1 03 13 aa   mov	x1, x19
0x10077f524:  79 84 fe 97   bl	0x100720708
0x10077f528:  e0 02 00 34   cbz	w0, loc_10077f584 ; ⤵ 0x5c
0x10077f52c:  e8 46 40 f9   ldr	x8, [x23, #0x88]
0x10077f530:  1f 05 00 b1   cmn	x8, #0x1
0x10077f534:  e1 16 00 54   b.ne	loc_10077f810 ; ⤵ 0x2dc
0x10077f538:  ; loc_10077f538
0x10077f538:  00 43 40 f9   ldr	x0, [x24, #0x80]
0x10077f53c:  e1 03 13 aa   mov	x1, x19
0x10077f540:  f4 36 fe 97   bl	0x10070d110
0x10077f544:  fd 03 1d aa   mov	fp, fp
0x10077f548:  96 3f 02 94   bl	j__objc_retainAutoreleasedReturnValue
0x10077f54c:  f5 03 00 aa   mov	x21, x0
0x10077f550:  40 0a 00 b4   cbz	x0, loc_10077f698 ; ⤵ 0x148
0x10077f554:  88 a2 40 79   ldrh	w8, [x20, #0x50]
0x10077f558:  08 01 1d 32   orr	w8, w8, #0x8
0x10077f55c:  88 a2 00 79   strh	w8, [x20, #0x50]
0x10077f560:  08 42 80 52   mov	w8, #0x210
0x10077f564:  88 5a 00 79   strh	w8, [x20, #0x2c]
0x10077f568:  e0 03 15 aa   mov	x0, x21
0x10077f56c:  89 3f 02 94   bl	j__objc_retainAutorelease
0x10077f570:  e0 03 15 aa   mov	x0, x21
0x10077f574:  53 58 02 94   bl	j__objc_msgSend(x0, "bytes")
0x10077f578:  00 00 c0 3d   ldr	q0, [x0]
0x10077f57c:  80 c2 81 3c   stur	q0, [x20, #0x1c]
0x10077f580:  50 00 00 14   b	loc_10077f6c0 ; ⤵ 0x140
0x10077f584:  ; loc_10077f584
0x10077f584:  a8 c2 07 91   add	x8, x21, #0x1f0
0x10077f588:  1f 01 16 eb   cmp	x8, x22
0x10077f58c:  a0 06 00 54   b.eq	loc_10077f660 ; ⤵ 0xd4
0x10077f590:  c1 c2 00 91   add	x1, x22, #0x30
0x10077f594:  e0 03 15 aa   mov	x0, x21
0x10077f598:  e2 03 14 aa   mov	x2, x20
0x10077f59c:  34 ca ff 97   bl	0x100771e6c
0x10077f5a0:  67 62 f0 97   bl	0x100397f3c
0x10077f5a4:  10 00 40 f9   ldr	x16, [x0]
0x10077f5a8:  f1 03 00 aa   mov	x17, x0
0x10077f5ac:  f1 ee e1 f2   movk	x17, #0xf77, lsl #0x30
0x10077f5b0:  30 1a c1 da   autda	x16, x17
0x10077f5b4:  08 8e 40 f8   ldr	x8, [x16, #0x8]!
0x10077f5b8:  90 b6 f8 f2   movk	x16, #0xc5b4, lsl #0x30
0x10077f5bc:  10 09 3f d7   blraa	x8, x16
0x10077f5c0:  f6 03 00 aa   mov	x22, x0
0x10077f5c4:  88 1a 00 d0   adrp	x8, 0x100ad1000
0x10077f5c8:  08 e1 30 91   add	x8, x8, #0xc38
0x10077f5cc:  15 01 40 f9   ldr	x21, [x8]
0x10077f5d0:  e0 03 15 aa   mov	x0, x21
0x10077f5d4:  01 00 80 52   mov	w1, #0
0x10077f5d8:  16 40 02 94   bl	j__os_log_type_enabled
0x10077f5dc:  76 09 00 34   cbz	w22, loc_10077f708 ; ⤵ 0x12c
0x10077f5e0:  40 07 00 34   cbz	w0, loc_10077f6c8 ; ⤵ 0xe8
0x10077f5e4:  88 15 00 f0   adrp	x8, 0x100a32000
0x10077f5e8:  00 ed 43 f9   ldr	x0, [x8, #0x7d8] ; __got._OBJC_CLASS_$_NSData
0x10077f5ec:  83 b2 40 39   ldrb	w3, [x20, #0x2c]
0x10077f5f0:  82 72 00 91   add	x2, x20, #0x1c
0x10077f5f4:  cb 5c 02 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x10077f5f8:  fd 03 1d aa   mov	fp, fp
0x10077f5fc:  69 3f 02 94   bl	j__objc_retainAutoreleasedReturnValue
0x10077f600:  f6 03 00 aa   mov	x22, x0
0x10077f604:  88 b6 40 39   ldrb	w8, [x20, #0x2d]
0x10077f608:  a9 08 00 f0   adrp	x9, 0x100896000
0x10077f60c:  20 35 41 fd   ldr	d0, [x9, #0x268]
0x10077f610:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10077f614:  f3 43 01 f8   stur	x19, [sp, #0x14]
0x10077f618:  09 08 81 52   mov	w9, #0x840
0x10077f61c:  e9 3b 00 79   strh	w9, [sp, #0x1c]
0x10077f620:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x10077f624:  09 80 80 52   mov	w9, #0x400
0x10077f628:  e9 4f 00 79   strh	w9, [sp, #0x26]
0x10077f62c:  e8 2b 00 b9   str	w8, [sp, #0x28]
0x10077f630:  00 c4 ff b0   adrp	x0, 0x100000000
0x10077f634:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10077f638:  63 13 00 b0   adrp	x3, 0x1009ec000
0x10077f63c:  63 b0 04 91   add	x3, x3, #0x12c ; "using temporary keys for device \"%{public}@\" LocalLTK:%@(type:%d)"
0x10077f640:  e4 43 00 91   add	x4, sp, #0x10
0x10077f644:  e1 03 15 aa   mov	x1, x21
0x10077f648:  02 00 80 52   mov	w2, #0
0x10077f64c:  85 03 80 52   mov	w5, #0x1c
0x10077f650:  40 3b 02 94   bl	j___os_log_impl
0x10077f654:  e0 03 16 aa   mov	x0, x22
0x10077f658:  46 3f 02 94   bl	j__objc_release
0x10077f65c:  1b 00 00 14   b	loc_10077f6c8 ; ⤵ 0x6c
0x10077f660:  ; loc_10077f660
0x10077f660:  e0 43 00 91   add	x0, sp, #0x10
0x10077f664:  e1 03 13 aa   mov	x1, x19
0x10077f668:  0b d9 ec 97   bl	0x1002b5a94
0x10077f66c:  a0 e2 06 91   add	x0, x21, #0x1b8
0x10077f670:  e1 43 00 91   add	x1, sp, #0x10
0x10077f674:  3c 6d eb 97   bl	0x10025ab64
0x10077f678:  a8 02 07 91   add	x8, x21, #0x1c0
0x10077f67c:  1f 01 00 eb   cmp	x8, x0
0x10077f680:  20 06 00 54   b.eq	loc_10077f744 ; ⤵ 0xc4
0x10077f684:  01 c0 00 91   add	x1, x0, #0x30
0x10077f688:  e0 03 15 aa   mov	x0, x21
0x10077f68c:  e2 03 14 aa   mov	x2, x20
0x10077f690:  f7 c9 ff 97   bl	0x100771e6c
0x10077f694:  0d 00 00 14   b	loc_10077f6c8 ; ⤵ 0x34
0x10077f698:  ; loc_10077f698
0x10077f698:  88 1a 00 d0   adrp	x8, 0x100ad1000
0x10077f69c:  08 e1 30 91   add	x8, x8, #0xc38
0x10077f6a0:  14 01 40 f9   ldr	x20, [x8]
0x10077f6a4:  e0 03 14 aa   mov	x0, x20
0x10077f6a8:  01 02 80 52   mov	w1, #0x10
0x10077f6ac:  e1 3f 02 94   bl	j__os_log_type_enabled
0x10077f6b0:  80 00 00 34   cbz	w0, loc_10077f6c0 ; ⤵ 0x10
0x10077f6b4:  e0 03 13 aa   mov	x0, x19
0x10077f6b8:  e1 03 14 aa   mov	x1, x20
0x10077f6bc:  6f 2a 02 94   bl	0x10080a078
0x10077f6c0:  ; loc_10077f6c0
0x10077f6c0:  e0 03 15 aa   mov	x0, x21
0x10077f6c4:  2b 3f 02 94   bl	j__objc_release
0x10077f6c8:  ; loc_10077f6c8
0x10077f6c8:  e0 03 00 91   mov	x0, sp
0x10077f6cc:  ae dd ec 97   bl	0x1002b6d84
0x10077f6d0:  e0 03 13 aa   mov	x0, x19
0x10077f6d4:  27 3f 02 94   bl	j__objc_release
0x10077f6d8:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x10077f6dc:  89 15 00 f0   adrp	x9, 0x100a32000
0x10077f6e0:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10077f6e4:  29 01 40 f9   ldr	x9, [x9]
0x10077f6e8:  3f 01 08 eb   cmp	x9, x8
0x10077f6ec:  61 09 00 54   b.ne	loc_10077f818 ; ⤵ 0x12c
0x10077f6f0:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x10077f6f4:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x10077f6f8:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x10077f6fc:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x10077f700:  ff 03 02 91   add	sp, sp, #0x80
0x10077f704:  ff 0f 5f d6   retab
0x10077f708:  ; loc_10077f708
0x10077f708:  00 fe ff 34   cbz	w0, loc_10077f6c8 ; ⤴ -0x40
0x10077f70c:  a8 08 00 d0   adrp	x8, 0x100895000
0x10077f710:  00 55 43 fd   ldr	d0, [x8, #0x6a8]
0x10077f714:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10077f718:  f3 43 01 f8   stur	x19, [sp, #0x14]
0x10077f71c:  00 c4 ff b0   adrp	x0, 0x100000000
0x10077f720:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10077f724:  63 13 00 b0   adrp	x3, 0x1009ec000
0x10077f728:  63 b8 05 91   add	x3, x3, #0x16e ; "using temporary keys for device \"%{public}@\""
0x10077f72c:  e4 43 00 91   add	x4, sp, #0x10
0x10077f730:  e1 03 15 aa   mov	x1, x21
0x10077f734:  02 00 80 52   mov	w2, #0
0x10077f738:  ; loc_10077f738
0x10077f738:  85 01 80 52   mov	w5, #0xc
0x10077f73c:  05 3b 02 94   bl	j___os_log_impl
0x10077f740:  e2 ff ff 17   b	loc_10077f6c8 ; ⤴ -0x78
0x10077f744:  ; loc_10077f744
0x10077f744:  b7 a2 48 39   ldrb	w23, [x21, #0x228]
0x10077f748:  88 1a 00 d0   adrp	x8, 0x100ad1000
0x10077f74c:  08 e1 30 91   add	x8, x8, #0xc38
0x10077f750:  16 01 40 f9   ldr	x22, [x8]
0x10077f754:  e0 03 16 aa   mov	x0, x22
0x10077f758:  b7 03 00 34   cbz	w23, loc_10077f7cc ; ⤵ 0x74
0x10077f75c:  01 00 80 52   mov	w1, #0
0x10077f760:  b4 3f 02 94   bl	j__os_log_type_enabled
0x10077f764:  40 02 00 34   cbz	w0, loc_10077f7ac ; ⤵ 0x48
0x10077f768:  a8 08 00 d0   adrp	x8, 0x100895000
0x10077f76c:  00 c1 43 fd   ldr	d0, [x8, #0x780]
0x10077f770:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10077f774:  f3 43 01 f8   stur	x19, [sp, #0x14]
0x10077f778:  08 80 80 52   mov	w8, #0x400
0x10077f77c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10077f780:  f7 e3 01 b8   stur	w23, [sp, #0x1e]
0x10077f784:  00 c4 ff b0   adrp	x0, 0x100000000
0x10077f788:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10077f78c:  63 13 00 b0   adrp	x3, 0x1009ec000
0x10077f790:  63 6c 06 91   add	x3, x3, #0x19b ; "using default temporary keys for device \"%{public}@\", keyLen %d"
0x10077f794:  e4 43 00 91   add	x4, sp, #0x10
0x10077f798:  e1 03 16 aa   mov	x1, x22
0x10077f79c:  02 00 80 52   mov	w2, #0
0x10077f7a0:  45 02 80 52   mov	w5, #0x12
0x10077f7a4:  eb 3a 02 94   bl	j___os_log_impl
0x10077f7a8:  b7 a2 48 39   ldrb	w23, [x21, #0x228]
0x10077f7ac:  ; loc_10077f7ac
0x10077f7ac:  97 b2 00 39   strb	w23, [x20, #0x2c]
0x10077f7b0:  48 00 80 52   mov	w8, #0x2
0x10077f7b4:  88 b6 00 39   strb	w8, [x20, #0x2d]
0x10077f7b8:  e2 03 17 2a   mov	w2, w23
0x10077f7bc:  80 72 00 91   add	x0, x20, #0x1c
0x10077f7c0:  a1 62 08 91   add	x1, x21, #0x218
0x10077f7c4:  77 3d 02 94   bl	j__memcpy
0x10077f7c8:  c0 ff ff 17   b	loc_10077f6c8 ; ⤴ -0x100
0x10077f7cc:  ; loc_10077f7cc
0x10077f7cc:  21 00 80 52   mov	w1, #0x1
0x10077f7d0:  98 3f 02 94   bl	j__os_log_type_enabled
0x10077f7d4:  a0 f7 ff 34   cbz	w0, loc_10077f6c8 ; ⤴ -0x10c
0x10077f7d8:  a8 08 00 d0   adrp	x8, 0x100895000
0x10077f7dc:  00 55 43 fd   ldr	d0, [x8, #0x6a8]
0x10077f7e0:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10077f7e4:  f3 43 01 f8   stur	x19, [sp, #0x14]
0x10077f7e8:  00 c4 ff b0   adrp	x0, 0x100000000
0x10077f7ec:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10077f7f0:  63 13 00 b0   adrp	x3, 0x1009ec000
0x10077f7f4:  63 6c 07 91   add	x3, x3, #0x1db ; "No security keys found for device \"%{public}@\""
0x10077f7f8:  e4 43 00 91   add	x4, sp, #0x10
0x10077f7fc:  e1 03 16 aa   mov	x1, x22
0x10077f800:  22 00 80 52   mov	w2, #0x1
0x10077f804:  cd ff ff 17   b	loc_10077f738 ; ⤴ -0xcc
0x10077f808:  ; loc_10077f808
0x10077f808:  37 27 02 94   bl	0x1008094e4
0x10077f80c:  43 ff ff 17   b	loc_10077f518 ; ⤴ -0x2f4
0x10077f810:  ; loc_10077f810
0x10077f810:  35 27 02 94   bl	0x1008094e4
0x10077f814:  49 ff ff 17   b	loc_10077f538 ; ⤴ -0x2dc
0x10077f818:  ; loc_10077f818
0x10077f818:  9e 3a 02 94   bl	j____stack_chk_fail
0x10077f81c:  0a 00 00 14   b	loc_10077f844 ; ⤵ 0x28
0x10077f820:  f4 03 00 aa   mov	x20, x0
0x10077f824:  e0 03 15 aa   mov	x0, x21
0x10077f828:  d2 3e 02 94   bl	j__objc_release
0x10077f82c:  07 00 00 14   b	loc_10077f848 ; ⤵ 0x1c
0x10077f830:  05 00 00 14   b	loc_10077f844 ; ⤵ 0x14
0x10077f834:  04 00 00 14   b	loc_10077f844 ; ⤵ 0x10
0x10077f838:  f4 03 00 aa   mov	x20, x0
0x10077f83c:  05 00 00 14   b	loc_10077f850 ; ⤵ 0x14
0x10077f840:  01 00 00 14   b	loc_10077f844 ; ⤵ 0x4
0x10077f844:  ; loc_10077f844
0x10077f844:  f4 03 00 aa   mov	x20, x0
0x10077f848:  ; loc_10077f848
0x10077f848:  e0 03 00 91   mov	x0, sp
0x10077f84c:  4e dd ec 97   bl	0x1002b6d84
0x10077f850:  ; loc_10077f850
0x10077f850:  e0 03 13 aa   mov	x0, x19
0x10077f854:  c7 3e 02 94   bl	j__objc_release
0x10077f858:  02 00 00 14   b	loc_10077f860 ; ⤵ 0x8
0x10077f85c:  f4 03 00 aa   mov	x20, x0
0x10077f860:  ; loc_10077f860
0x10077f860:  e0 03 14 aa   mov	x0, x20
0x10077f864:  1f 39 02 94   bl	j___Unwind_Resume

