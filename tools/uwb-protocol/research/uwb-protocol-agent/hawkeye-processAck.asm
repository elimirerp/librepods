
-[CLDurianDevice processAcknowledgedTask]:
0x101458674:  7f 23 03 d5   pacibsp
0x101458678:  ff c3 01 d1   sub	sp, sp, #0x70
0x10145867c:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x101458680:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101458684:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x101458688:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10145868c:  fd 83 01 91   add	fp, sp, #0x60
0x101458690:  f3 03 00 aa   mov	x19, x0
0x101458694:  c8 79 00 d0   adrp	x8, 0x102392000
0x101458698:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10145869c:  08 01 40 f9   ldr	x8, [x8]
0x1014586a0:  e8 17 00 f9   str	x8, [sp, #0x28]
0x1014586a4:  28 00 80 52   mov	w8, #0x1
0x1014586a8:  08 60 01 39   strb	w8, [x0, #0x58]
0x1014586ac:  15 2c 1b 94   bl	j__objc_msgSend(x0, "delegate")
0x1014586b0:  f4 03 00 aa   mov	x20, x0
0x1014586b4:  e0 03 13 aa   mov	x0, x19
0x1014586b8:  52 06 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014586bc:  e3 03 00 aa   mov	x3, x0
0x1014586c0:  e0 03 14 aa   mov	x0, x20
0x1014586c4:  e2 03 13 aa   mov	x2, x19
0x1014586c8:  66 2e 1b 94   bl	j__objc_msgSend(x0, "device:didAcknowledgeCommandForTask:")
0x1014586cc:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x1014586d0:  3c 0c 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x1014586d4:  f4 03 00 aa   mov	x20, x0
0x1014586d8:  57 89 00 d0   adrp	x23, 0x102582000
0x1014586dc:  e8 3a 46 f9   ldr	x8, [x23, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014586e0:  1f 05 00 b1   cmn	x8, #0x1
0x1014586e4:  61 15 00 54   b.ne	loc_101458990 ; ⤵ 0x2ac
0x1014586e8:  ; loc_1014586e8
0x1014586e8:  56 89 00 d0   adrp	x22, 0x102582000
0x1014586ec:  d5 3e 46 f9   ldr	x21, [x22, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014586f0:  e0 03 15 aa   mov	x0, x21
0x1014586f4:  01 00 80 52   mov	w1, #0
0x1014586f8:  fe f6 1a 94   bl	j__os_log_type_enabled
0x1014586fc:  60 03 00 36   tbz	w0, #0, loc_101458768 ; ⤵ 0x6c
0x101458700:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101458704:  c5 00 01 94   bl	0x101498a18
0x101458708:  e8 44 00 90   adrp	x8, 0x101cf4000
0x10145870c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101458710:  e0 03 00 bd   str	s0, [sp]
0x101458714:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101458718:  48 04 81 52   mov	w8, #0x822
0x10145871c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101458720:  a8 52 00 d0   adrp	x8, 0x101eae000
0x101458724:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101458728:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145872c:  28 08 81 52   mov	w8, #0x841
0x101458730:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101458734:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101458738:  48 80 80 52   mov	w8, #0x402
0x10145873c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101458740:  f4 e3 01 b8   stur	w20, [sp, #0x1e]
0x101458744:  40 5d ff 90   adrp	x0, 0x100000000
0x101458748:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145874c:  e3 70 00 90   adrp	x3, 0x102274000
0x101458750:  63 d8 0a 91   add	x3, x3, #0x2b6 ; "{\"msg%{public}.0s\":\"#durian processAcknowledged\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x101458754:  e4 03 00 91   mov	x4, sp
0x101458758:  e1 03 15 aa   mov	x1, x21
0x10145875c:  02 00 80 52   mov	w2, #0
0x101458760:  45 04 80 52   mov	w5, #0x22
0x101458764:  a3 f2 1a 94   bl	j___os_log_impl
0x101458768:  ; loc_101458768
0x101458768:  9f 06 0c 71   cmp	w20, #0x301
0x10145876c:  4d 01 00 54   b.le	loc_101458794 ; ⤵ 0x28
0x101458770:  9f 9a 0c 71   cmp	w20, #0x326
0x101458774:  ec 01 00 54   b.gt	loc_1014587b0 ; ⤵ 0x3c
0x101458778:  9f 0a 0c 71   cmp	w20, #0x302
0x10145877c:  c0 09 00 54   b.eq	loc_1014588b4 ; ⤵ 0x138
0x101458780:  9f 6a 0c 71   cmp	w20, #0x31a
0x101458784:  80 09 00 54   b.eq	loc_1014588b4 ; ⤵ 0x130
0x101458788:  9f 8a 0c 71   cmp	w20, #0x322
0x10145878c:  c0 07 00 54   b.eq	loc_101458884 ; ⤵ 0xf8
0x101458790:  74 00 00 14   b	loc_101458960 ; ⤵ 0x1d0
0x101458794:  ; loc_101458794
0x101458794:  9f 9e 00 71   cmp	w20, #0x27
0x101458798:  ed 06 00 54   b.le	loc_101458874 ; ⤵ 0xdc
0x10145879c:  9f a2 00 71   cmp	w20, #0x28
0x1014587a0:  40 01 00 54   b.eq	loc_1014587c8 ; ⤵ 0x28
0x1014587a4:  9f be 02 71   cmp	w20, #0xaf
0x1014587a8:  00 01 00 54   b.eq	loc_1014587c8 ; ⤵ 0x20
0x1014587ac:  38 00 00 14   b	loc_10145888c ; ⤵ 0xe0
0x1014587b0:  ; loc_1014587b0
0x1014587b0:  9f 9e 0c 71   cmp	w20, #0x327
0x1014587b4:  80 06 00 54   b.eq	loc_101458884 ; ⤵ 0xd0
0x1014587b8:  9f 0e 20 71   cmp	w20, #0x803
0x1014587bc:  40 06 00 54   b.eq	loc_101458884 ; ⤵ 0xc8
0x1014587c0:  9f 36 20 71   cmp	w20, #0x80d
0x1014587c4:  e1 0c 00 54   b.ne	loc_101458960 ; ⤵ 0x19c
0x1014587c8:  ; loc_1014587c8
0x1014587c8:  28 00 80 52   mov	w8, #0x1
0x1014587cc:  68 be 04 39   strb	w8, [x19, #0x12f]
0x1014587d0:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x1014587d4:  1f 05 00 b1   cmn	x8, #0x1
0x1014587d8:  01 0e 00 54   b.ne	loc_101458998 ; ⤵ 0x1c0
0x1014587dc:  ; loc_1014587dc
0x1014587dc:  d5 3e 46 f9   ldr	x21, [x22, #0xc78]
0x1014587e0:  e0 03 15 aa   mov	x0, x21
0x1014587e4:  01 00 80 52   mov	w1, #0
0x1014587e8:  c2 f6 1a 94   bl	j__os_log_type_enabled
0x1014587ec:  60 03 00 34   cbz	w0, loc_101458858 ; ⤵ 0x6c
0x1014587f0:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014587f4:  89 00 01 94   bl	0x101498a18
0x1014587f8:  e8 44 00 90   adrp	x8, 0x101cf4000
0x1014587fc:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101458800:  e0 03 00 bd   str	s0, [sp]
0x101458804:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101458808:  48 04 81 52   mov	w8, #0x822
0x10145880c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101458810:  a8 52 00 d0   adrp	x8, 0x101eae000
0x101458814:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101458818:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145881c:  28 08 81 52   mov	w8, #0x841
0x101458820:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101458824:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101458828:  48 80 80 52   mov	w8, #0x402
0x10145882c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101458830:  f4 e3 01 b8   stur	w20, [sp, #0x1e]
0x101458834:  40 5d ff 90   adrp	x0, 0x100000000
0x101458838:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145883c:  e3 70 00 90   adrp	x3, 0x102274000
0x101458840:  63 74 0e 91   add	x3, x3, #0x39d ; "{\"msg%{public}.0s\":\"#durian isPlayingSound\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x101458844:  e4 03 00 91   mov	x4, sp
0x101458848:  e1 03 15 aa   mov	x1, x21
0x10145884c:  02 00 80 52   mov	w2, #0
0x101458850:  45 04 80 52   mov	w5, #0x22
0x101458854:  67 f2 1a 94   bl	j___os_log_impl
0x101458858:  ; loc_101458858
0x101458858:  9f 9a 0c 71   cmp	w20, #0x326
0x10145885c:  6c 07 00 54   b.gt	loc_101458948 ; ⤵ 0xec
0x101458860:  9f 3e 08 71   cmp	w20, #0x20f
0x101458864:  80 01 00 54   b.eq	loc_101458894 ; ⤵ 0x30
0x101458868:  9f 8a 0c 71   cmp	w20, #0x322
0x10145886c:  60 07 00 54   b.eq	loc_101458958 ; ⤵ 0xec
0x101458870:  3c 00 00 14   b	loc_101458960 ; ⤵ 0xf0
0x101458874:  ; loc_101458874
0x101458874:  9f 0e 00 71   cmp	w20, #0x3
0x101458878:  60 00 00 54   b.eq	loc_101458884 ; ⤵ 0xc
0x10145887c:  9f 16 00 71   cmp	w20, #0x5
0x101458880:  01 07 00 54   b.ne	loc_101458960 ; ⤵ 0xe0
0x101458884:  ; loc_101458884
0x101458884:  28 00 80 52   mov	w8, #0x1
0x101458888:  68 c6 04 39   strb	w8, [x19, #0x131]
0x10145888c:  ; loc_10145888c
0x10145888c:  9f 3e 08 71   cmp	w20, #0x20f
0x101458890:  81 06 00 54   b.ne	loc_101458960 ; ⤵ 0xd0
0x101458894:  ; loc_101458894
0x101458894:  48 00 80 52   mov	w8, #0x2
0x101458898:  68 ba 00 f9   str	x8, [x19, #0x170]
0x10145889c:  62 8a 40 f9   ldr	x2, [x19, #0x110]
0x1014588a0:  02 06 00 b4   cbz	x2, loc_101458960 ; ⤵ 0xc0
0x1014588a4:  e0 03 13 aa   mov	x0, x19
0x1014588a8:  b6 3b 1b 94   bl	j__objc_msgSend(x0, "enqueueTask:")
0x1014588ac:  7f 8a 00 f9   str	xzr, [x19, #0x110]
0x1014588b0:  2c 00 00 14   b	loc_101458960 ; ⤵ 0xb0
0x1014588b4:  ; loc_1014588b4
0x1014588b4:  28 00 80 52   mov	w8, #0x1
0x1014588b8:  68 be 04 39   strb	w8, [x19, #0x12f]
0x1014588bc:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x1014588c0:  1f 05 00 b1   cmn	x8, #0x1
0x1014588c4:  e1 06 00 54   b.ne	loc_1014589a0 ; ⤵ 0xdc
0x1014588c8:  ; loc_1014588c8
0x1014588c8:  d5 3e 46 f9   ldr	x21, [x22, #0xc78]
0x1014588cc:  e0 03 15 aa   mov	x0, x21
0x1014588d0:  01 00 80 52   mov	w1, #0
0x1014588d4:  87 f6 1a 94   bl	j__os_log_type_enabled
0x1014588d8:  40 04 00 34   cbz	w0, loc_101458960 ; ⤵ 0x88
0x1014588dc:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014588e0:  4e 00 01 94   bl	0x101498a18
0x1014588e4:  e8 44 00 90   adrp	x8, 0x101cf4000
0x1014588e8:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x1014588ec:  e0 03 00 bd   str	s0, [sp]
0x1014588f0:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014588f4:  48 04 81 52   mov	w8, #0x822
0x1014588f8:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014588fc:  a8 52 00 d0   adrp	x8, 0x101eae000
0x101458900:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101458904:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101458908:  28 08 81 52   mov	w8, #0x841
0x10145890c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101458910:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101458914:  48 80 80 52   mov	w8, #0x402
0x101458918:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145891c:  f4 e3 01 b8   stur	w20, [sp, #0x1e]
0x101458920:  40 5d ff 90   adrp	x0, 0x100000000
0x101458924:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101458928:  e3 70 00 90   adrp	x3, 0x102274000
0x10145892c:  63 9c 0c 91   add	x3, x3, #0x327 ; "{\"msg%{public}.0s\":\"#durian #posh #ut isPlayingSound\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x101458930:  e4 03 00 91   mov	x4, sp
0x101458934:  e1 03 15 aa   mov	x1, x21
0x101458938:  02 00 80 52   mov	w2, #0
0x10145893c:  45 04 80 52   mov	w5, #0x22
0x101458940:  2c f2 1a 94   bl	j___os_log_impl
0x101458944:  07 00 00 14   b	loc_101458960 ; ⤵ 0x1c
0x101458948:  ; loc_101458948
0x101458948:  9f 0e 20 71   cmp	w20, #0x803
0x10145894c:  60 00 00 54   b.eq	loc_101458958 ; ⤵ 0xc
0x101458950:  9f 9e 0c 71   cmp	w20, #0x327
0x101458954:  61 00 00 54   b.ne	loc_101458960 ; ⤵ 0xc
0x101458958:  ; loc_101458958
0x101458958:  28 00 80 52   mov	w8, #0x1
0x10145895c:  68 c6 04 39   strb	w8, [x19, #0x131]
0x101458960:  ; loc_101458960
0x101458960:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101458964:  c9 79 00 d0   adrp	x9, 0x102392000
0x101458968:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10145896c:  29 01 40 f9   ldr	x9, [x9]
0x101458970:  3f 01 08 eb   cmp	x9, x8
0x101458974:  a1 01 00 54   b.ne	loc_1014589a8 ; ⤵ 0x34
0x101458978:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10145897c:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101458980:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101458984:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101458988:  ff c3 01 91   add	sp, sp, #0x70
0x10145898c:  ff 0f 5f d6   retab
0x101458990:  ; loc_101458990
0x101458990:  9c dd 1a 94   bl	0x101b10000
0x101458994:  55 ff ff 17   b	loc_1014586e8 ; ⤴ -0x2ac
0x101458998:  ; loc_101458998
0x101458998:  9b dd 1a 94   bl	0x101b10004
0x10145899c:  90 ff ff 17   b	loc_1014587dc ; ⤴ -0x1c0
0x1014589a0:  ; loc_1014589a0
0x1014589a0:  99 dd 1a 94   bl	0x101b10004
0x1014589a4:  c9 ff ff 17   b	loc_1014588c8 ; ⤴ -0xdc
0x1014589a8:  ; loc_1014589a8
0x1014589a8:  e6 f1 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice processCompletedTask]:
0x1014589ac:  7f 23 03 d5   pacibsp
0x1014589b0:  ff c3 01 d1   sub	sp, sp, #0x70
0x1014589b4:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x1014589b8:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x1014589bc:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x1014589c0:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x1014589c4:  fd 83 01 91   add	fp, sp, #0x60
0x1014589c8:  f3 03 00 aa   mov	x19, x0
0x1014589cc:  c8 79 00 d0   adrp	x8, 0x102392000
0x1014589d0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014589d4:  08 01 40 f9   ldr	x8, [x8]
0x1014589d8:  e8 17 00 f9   str	x8, [sp, #0x28]
0x1014589dc:  00 6c 41 f9   ldr	x0, [x0, #0x2d8]
0x1014589e0:  78 0b 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x1014589e4:  f4 03 00 aa   mov	x20, x0
0x1014589e8:  56 89 00 d0   adrp	x22, 0x102582000
0x1014589ec:  c8 3a 46 f9   ldr	x8, [x22, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014589f0:  1f 05 00 b1   cmn	x8, #0x1
0x1014589f4:  41 10 00 54   b.ne	loc_101458bfc ; ⤵ 0x208
0x1014589f8:  57 89 00 d0   adrp	x23, 0x102582000
0x1014589fc:  f5 3e 46 f9   ldr	x21, [x23, #0xc78] ; data_102582c78 (__DATA.__data)
0x101458a00:  e0 03 15 aa   mov	x0, x21
0x101458a04:  01 00 80 52   mov	w1, #0
0x101458a08:  3a f6 1a 94   bl	j__os_log_type_enabled
0x101458a0c:  60 03 00 36   tbz	w0, #0, loc_101458a78 ; ⤵ 0x6c
0x101458a10:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101458a14:  01 00 01 94   bl	0x101498a18
0x101458a18:  e8 44 00 90   adrp	x8, 0x101cf4000
0x101458a1c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101458a20:  e0 03 00 bd   str	s0, [sp]
0x101458a24:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101458a28:  48 04 81 52   mov	w8, #0x822
0x101458a2c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101458a30:  a8 52 00 d0   adrp	x8, 0x101eae000
0x101458a34:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101458a38:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101458a3c:  28 08 81 52   mov	w8, #0x841
0x101458a40:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101458a44:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101458a48:  48 80 80 52   mov	w8, #0x402
0x101458a4c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101458a50:  f4 e3 01 b8   stur	w20, [sp, #0x1e]
0x101458a54:  40 5d ff 90   adrp	x0, 0x100000000
0x101458a58:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101458a5c:  e3 70 00 90   adrp	x3, 0x102274000
0x101458a60:  63 24 10 91   add	x3, x3, #0x409 ; "{\"msg%{public}.0s\":\"#durian processCompleted\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x101458a64:  e4 03 00 91   mov	x4, sp
0x101458a68:  e1 03 15 aa   mov	x1, x21
0x101458a6c:  02 00 80 52   mov	w2, #0
0x101458a70:  45 04 80 52   mov	w5, #0x22
0x101458a74:  df f1 1a 94   bl	j___os_log_impl
0x101458a78:  ; loc_101458a78
0x101458a78:  9f 0e 0c 71   cmp	w20, #0x303
0x101458a7c:  4c 01 00 54   b.gt	loc_101458aa4 ; ⤵ 0x28
0x101458a80:  9f ba 02 71   cmp	w20, #0xae
0x101458a84:  2c 02 00 54   b.gt	loc_101458ac8 ; ⤵ 0x44
0x101458a88:  9f 0e 00 71   cmp	w20, #0x3
0x101458a8c:  20 09 00 54   b.eq	loc_101458bb0 ; ⤵ 0x124
0x101458a90:  9f 16 00 71   cmp	w20, #0x5
0x101458a94:  e0 08 00 54   b.eq	loc_101458bb0 ; ⤵ 0x11c
0x101458a98:  9f a2 00 71   cmp	w20, #0x28
0x101458a9c:  80 07 00 54   b.eq	loc_101458b8c ; ⤵ 0xf0
0x101458aa0:  4b 00 00 14   b	loc_101458bcc ; ⤵ 0x12c
0x101458aa4:  ; loc_101458aa4
0x101458aa4:  9f 9a 0c 71   cmp	w20, #0x326
0x101458aa8:  6c 06 00 54   b.gt	loc_101458b74 ; ⤵ 0xcc
0x101458aac:  9f 12 0c 71   cmp	w20, #0x304
0x101458ab0:  c0 08 00 54   b.eq	loc_101458bc8 ; ⤵ 0x118
0x101458ab4:  9f 6a 0c 71   cmp	w20, #0x31a
0x101458ab8:  60 01 00 54   b.eq	loc_101458ae4 ; ⤵ 0x2c
0x101458abc:  9f 8a 0c 71   cmp	w20, #0x322
0x101458ac0:  80 07 00 54   b.eq	loc_101458bb0 ; ⤵ 0xf0
0x101458ac4:  42 00 00 14   b	loc_101458bcc ; ⤵ 0x108
0x101458ac8:  ; loc_101458ac8
0x101458ac8:  88 3e 08 51   sub	w8, w20, #0x20f
0x101458acc:  1f 09 00 71   cmp	w8, #0x2
0x101458ad0:  c3 07 00 54   b.lo	loc_101458bc8 ; ⤵ 0xf8
0x101458ad4:  9f be 02 71   cmp	w20, #0xaf
0x101458ad8:  a0 05 00 54   b.eq	loc_101458b8c ; ⤵ 0xb4
0x101458adc:  9f 02 0c 71   cmp	w20, #0x300
0x101458ae0:  61 07 00 54   b.ne	loc_101458bcc ; ⤵ 0xec
0x101458ae4:  ; loc_101458ae4
0x101458ae4:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x101458ae8:  1f 05 00 b1   cmn	x8, #0x1
0x101458aec:  c1 08 00 54   b.ne	loc_101458c04 ; ⤵ 0x118
0x101458af0:  f5 3e 46 f9   ldr	x21, [x23, #0xc78]
0x101458af4:  e0 03 15 aa   mov	x0, x21
0x101458af8:  01 00 80 52   mov	w1, #0
0x101458afc:  fd f5 1a 94   bl	j__os_log_type_enabled
0x101458b00:  60 03 00 34   cbz	w0, loc_101458b6c ; ⤵ 0x6c
0x101458b04:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101458b08:  c4 ff 00 94   bl	0x101498a18
0x101458b0c:  e8 44 00 90   adrp	x8, 0x101cf4000
0x101458b10:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101458b14:  e0 03 00 bd   str	s0, [sp]
0x101458b18:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101458b1c:  48 04 81 52   mov	w8, #0x822
0x101458b20:  e8 13 00 79   strh	w8, [sp, #0x8]

