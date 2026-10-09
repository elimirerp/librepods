0x1007237f0:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x1007237f4:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x1007237f8:  fd 43 01 91   add	fp, sp, #0x50
0x1007237fc:  ff 83 10 d1   sub	sp, sp, #0x420
0x100723800:  f3 03 01 aa   mov	x19, x1
0x100723804:  f4 03 00 aa   mov	x20, x0
0x100723808:  68 18 00 f0   adrp	x8, 0x100a32000
0x10072380c:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100723810:  08 01 40 f9   ldr	x8, [x8]
0x100723814:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x100723818:  e0 03 01 aa   mov	x0, x1
0x10072381c:  d9 ae 03 94   bl	j__objc_retain
0x100723820:  ff 7f 0c a9   stp	xzr, xzr, [sp, #0xc0]
0x100723824:  e0 03 03 91   add	x0, sp, #0xc0
0x100723828:  81 82 01 91   add	x1, x20, #0x60
0x10072382c:  33 4d ee 97   bl	0x1002b6cf8
0x100723830:  e0 03 14 aa   mov	x0, x20
0x100723834:  e1 03 13 aa   mov	x1, x19
0x100723838:  b8 a4 ff 97   bl	0x10070cb18
0x10072383c:  f4 03 00 aa   mov	x20, x0
0x100723840:  00 e4 00 6f   movi	v0.2d, #0
0x100723844:  e0 03 1f ad   stp	q0, q0, [sp, #0x3e0]
0x100723848:  e0 03 1e ad   stp	q0, q0, [sp, #0x3c0]
0x10072384c:  e0 03 1d ad   stp	q0, q0, [sp, #0x3a0]
0x100723850:  e0 03 1c ad   stp	q0, q0, [sp, #0x380]
0x100723854:  e0 03 1b ad   stp	q0, q0, [sp, #0x360]
0x100723858:  e0 03 1a ad   stp	q0, q0, [sp, #0x340]
0x10072385c:  e0 03 19 ad   stp	q0, q0, [sp, #0x320]
0x100723860:  e0 03 18 ad   stp	q0, q0, [sp, #0x300]
0x100723864:  e0 03 17 ad   stp	q0, q0, [sp, #0x2e0]
0x100723868:  e0 03 16 ad   stp	q0, q0, [sp, #0x2c0]
0x10072386c:  ff b3 0b b8   stur	wzr, [sp, #0xbb]
0x100723870:  ff bb 00 b9   str	wzr, [sp, #0xb8]
0x100723874:  ff 7f 0a a9   stp	xzr, xzr, [sp, #0xa0]
0x100723878:  ff 5b 00 f9   str	xzr, [sp, #0xb0]
0x10072387c:  88 0b 00 b0   adrp	x8, 0x100894000
0x100723880:  08 61 2c 91   add	x8, x8, #0xb18
0x100723884:  00 01 c0 3d   ldr	q0, [x8]
0x100723888:  e0 ab 80 3d   str	q0, [sp, #0x2a0]
0x10072388c:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x100723890:  e8 b3 02 b9   str	w8, [sp, #0x2b0]
0x100723894:  e0 43 03 91   add	x0, sp, #0xd0
0x100723898:  e1 83 0a 91   add	x1, sp, #0x2a0
0x10072389c:  0d a0 01 94   bl	0x10078b8d0
0x1007238a0:  e0 83 02 91   add	x0, sp, #0xa0
0x1007238a4:  e1 43 03 91   add	x1, sp, #0xd0
0x1007238a8:  28 f2 e4 97   bl	0x100060148
0x1007238ac:  ff 57 01 f9   str	xzr, [sp, #0x2a8]
0x1007238b0:  ff 53 01 f9   str	xzr, [sp, #0x2a0]
0x1007238b4:  ff 5b 01 f9   str	xzr, [sp, #0x2b0]
0x1007238b8:  88 0b 00 b0   adrp	x8, 0x100894000
0x1007238bc:  08 b1 2c 91   add	x8, x8, #0xb2c
0x1007238c0:  00 01 c0 3d   ldr	q0, [x8]
0x1007238c4:  e0 a3 80 3d   str	q0, [sp, #0x280]
0x1007238c8:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x1007238cc:  e8 93 02 b9   str	w8, [sp, #0x290]
0x1007238d0:  e0 43 03 91   add	x0, sp, #0xd0
0x1007238d4:  e1 03 0a 91   add	x1, sp, #0x280
0x1007238d8:  fe 9f 01 94   bl	0x10078b8d0
0x1007238dc:  e0 83 0a 91   add	x0, sp, #0x2a0
0x1007238e0:  e1 43 03 91   add	x1, sp, #0xd0
0x1007238e4:  19 f2 e4 97   bl	0x100060148
0x1007238e8:  88 96 45 39   ldrb	w8, [x20, #0x165]
0x1007238ec:  1f 05 00 71   cmp	w8, #0x1
0x1007238f0:  81 02 00 54   b.ne	loc_100723940 ; ⤵ 0x50
0x1007238f4:  68 1d 00 d0   adrp	x8, 0x100ad1000
0x1007238f8:  08 c1 30 91   add	x8, x8, #0xc30
0x1007238fc:  14 01 40 f9   ldr	x20, [x8]
0x100723900:  e0 03 14 aa   mov	x0, x20
0x100723904:  01 00 80 52   mov	w1, #0
0x100723908:  4a af 03 94   bl	j__os_log_type_enabled
0x10072390c:  60 01 00 34   cbz	w0, loc_100723938 ; ⤵ 0x2c
0x100723910:  ff a3 01 79   strh	wzr, [sp, #0xd0]
0x100723914:  e0 c6 ff b0   adrp	x0, 0x100000000
0x100723918:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10072391c:  43 13 00 d0   adrp	x3, 0x10098d000
0x100723920:  63 48 07 91   add	x3, x3, #0x1d2 ; "Identification - metric has already been updated"
0x100723924:  e4 43 03 91   add	x4, sp, #0xd0
0x100723928:  e1 03 14 aa   mov	x1, x20
0x10072392c:  02 00 80 52   mov	w2, #0
0x100723930:  45 00 80 52   mov	w5, #0x2
0x100723934:  87 aa 03 94   bl	j___os_log_impl
0x100723938:  ; loc_100723938
0x100723938:  74 00 80 52   mov	w20, #0x3
0x10072393c:  c8 04 00 14   b	loc_100724c5c ; ⤵ 0x1320
0x100723940:  ; loc_100723940
0x100723940:  b5 1b 00 d0   adrp	x21, 0x100a99000
0x100723944:  a8 de 40 f9   ldr	x8, [x21, #0x1b8] ; data_100a991b8 (__DATA.__data)
0x100723948:  1f 05 00 b1   cmn	x8, #0x1
0x10072394c:  e1 a8 00 54   b.ne	loc_100724e68 ; ⤵ 0x151c
0x100723950:  b6 1b 00 d0   adrp	x22, 0x100a99000
0x100723954:  c0 da 40 f9   ldr	x0, [x22, #0x1b0] ; data_100a991b0 (__DATA.__data)
0x100723958:  e2 83 02 91   add	x2, sp, #0xa0
0x10072395c:  e1 03 13 aa   mov	x1, x19
0x100723960:  23 00 80 52   mov	w3, #0x1
0x100723964:  04 00 80 52   mov	w4, #0
0x100723968:  05 00 80 52   mov	w5, #0
0x10072396c:  c4 99 fd 97   bl	0x10068a07c
0x100723970:  80 00 00 34   cbz	w0, loc_100723980 ; ⤵ 0x10
0x100723974:  28 00 80 52   mov	w8, #0x1
0x100723978:  e8 0f 0b 39   strb	w8, [sp, #0x2c3]
0x10072397c:  0e 00 00 14   b	loc_1007239b4 ; ⤵ 0x38
0x100723980:  ; loc_100723980
0x100723980:  a8 de 40 f9   ldr	x8, [x21, #0x1b8]
0x100723984:  1f 05 00 b1   cmn	x8, #0x1
0x100723988:  41 a7 00 54   b.ne	loc_100724e70 ; ⤵ 0x14e8
0x10072398c:  c0 da 40 f9   ldr	x0, [x22, #0x1b0]
0x100723990:  e2 83 0a 91   add	x2, sp, #0x2a0
0x100723994:  e1 03 13 aa   mov	x1, x19
0x100723998:  23 00 80 52   mov	w3, #0x1
0x10072399c:  04 00 80 52   mov	w4, #0
0x1007239a0:  05 00 80 52   mov	w5, #0
0x1007239a4:  b6 99 fd 97   bl	0x10068a07c
0x1007239a8:  40 16 00 34   cbz	w0, loc_100723c70 ; ⤵ 0x2c8
0x1007239ac:  28 00 80 52   mov	w8, #0x1
0x1007239b0:  e8 e3 0f 39   strb	w8, [sp, #0x3f8]
0x1007239b4:  ; loc_1007239b4
0x1007239b4:  88 9e 45 39   ldrb	w8, [x20, #0x167]
0x1007239b8:  68 13 00 36   tbz	w8, #0, loc_100723c24 ; ⤵ 0x26c
0x1007239bc:  99 0e 40 f9   ldr	x25, [x20, #0x18]
0x1007239c0:  b9 23 00 b4   cbz	x25, loc_100723e34 ; ⤵ 0x474
0x1007239c4:  ff 0b 05 79   strh	wzr, [sp, #0x284]
0x1007239c8:  ff 83 02 b9   str	wzr, [sp, #0x280]
0x1007239cc:  e0 03 19 aa   mov	x0, x25
0x1007239d0:  29 b7 eb 97   bl	0x100211674
0x1007239d4:  e0 83 02 b9   str	w0, [sp, #0x280]
0x1007239d8:  08 fc 60 d3   lsr	x8, x0, #0x20
0x1007239dc:  e8 0b 05 79   strh	w8, [sp, #0x284]
0x1007239e0:  e0 83 05 79   strh	w0, [sp, #0x2c0]
0x1007239e4:  08 5c 10 53   ubfx	w8, w0, #0x10, #0x8
0x1007239e8:  e8 0b 0b 39   strb	w8, [sp, #0x2c2]
0x1007239ec:  76 1d 00 d0   adrp	x22, 0x100ad1000
0x1007239f0:  d6 c2 30 91   add	x22, x22, #0xc30
0x1007239f4:  d5 02 40 f9   ldr	x21, [x22]
0x1007239f8:  e0 03 15 aa   mov	x0, x21
0x1007239fc:  01 00 80 52   mov	w1, #0
0x100723a00:  0c af 03 94   bl	j__os_log_type_enabled
0x100723a04:  80 03 00 34   cbz	w0, loc_100723a74 ; ⤵ 0x70
0x100723a08:  a8 0b 00 d0   adrp	x8, 0x100899000
0x100723a0c:  00 e9 43 fd   ldr	d0, [x8, #0x7d0]
0x100723a10:  e0 d3 00 bd   str	s0, [sp, #0xd0]
0x100723a14:  c8 00 80 52   mov	w8, #0x6
0x100723a18:  e8 d7 00 b9   str	w8, [sp, #0xd4]
0x100723a1c:  48 06 81 52   mov	w8, #0x832
0x100723a20:  e8 b3 01 79   strh	w8, [sp, #0xd8]
0x100723a24:  e9 03 0a 91   add	x9, sp, #0x280
0x100723a28:  ea 43 03 91   add	x10, sp, #0xd0
0x100723a2c:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x100723a30:  49 82 80 52   mov	w9, #0x412
0x100723a34:  e9 c7 01 79   strh	w9, [sp, #0xe2]
0x100723a38:  69 00 80 52   mov	w9, #0x3
0x100723a3c:  e9 e7 00 b9   str	w9, [sp, #0xe4]
0x100723a40:  e8 d3 01 79   strh	w8, [sp, #0xe8]
0x100723a44:  e8 03 0b 91   add	x8, sp, #0x2c0
0x100723a48:  48 a1 01 f8   stur	x8, [x10, #0x1a]
0x100723a4c:  e0 c6 ff b0   adrp	x0, 0x100000000
0x100723a50:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100723a54:  e3 15 00 90   adrp	x3, 0x1009df000
0x100723a58:  63 04 31 91   add	x3, x3, #0xc41 ; "Identification - device has resolved address %{public}.6P and OUI %{public}.3P"
0x100723a5c:  e4 43 03 91   add	x4, sp, #0xd0
0x100723a60:  e1 03 15 aa   mov	x1, x21
0x100723a64:  02 00 80 52   mov	w2, #0
0x100723a68:  45 04 80 52   mov	w5, #0x22
0x100723a6c:  39 aa 03 94   bl	j___os_log_impl
0x100723a70:  d5 02 40 f9   ldr	x21, [x22]
0x100723a74:  ; loc_100723a74
0x100723a74:  e0 03 15 aa   mov	x0, x21
0x100723a78:  01 00 80 52   mov	w1, #0
0x100723a7c:  ed ae 03 94   bl	j__os_log_type_enabled
0x100723a80:  00 05 00 34   cbz	w0, loc_100723b20 ; ⤵ 0xa0
0x100723a84:  e8 1f 80 52   mov	w8, #0xff
0x100723a88:  09 c1 59 ea   ands	x9, x8, x25, lsr #0x30
0x100723a8c:  3f 05 00 f1   cmp	x9, #0x1
0x100723a90:  e9 17 9f 1a   cset	w9, eq
0x100723a94:  0a 18 80 52   mov	w10, #0xc0
0x100723a98:  4a a1 59 ea   ands	x10, x10, x25, lsr #0x28
0x100723a9c:  eb 13 89 1a   csel	w11, wzr, w9, ne
0x100723aa0:  6c 0b 00 f0   adrp	x12, 0x100892000
0x100723aa4:  80 19 43 fd   ldr	d0, [x12, #0x630]
0x100723aa8:  5f 01 02 f1   cmp	x10, #0x80
0x100723aac:  ec 03 89 1a   csel	w12, wzr, w9, eq
0x100723ab0:  e0 d3 00 bd   str	s0, [sp, #0xd0]
0x100723ab4:  1f c1 59 ea   tst	x8, x25, lsr #0x30
0x100723ab8:  e8 17 9f 1a   cset	w8, eq
0x100723abc:  e8 d7 00 b9   str	w8, [sp, #0xd4]
0x100723ac0:  88 15 9f 1a   csinc	w8, w12, wzr, ne
0x100723ac4:  0c 80 80 52   mov	w12, #0x400
0x100723ac8:  ec b3 01 79   strh	w12, [sp, #0xd8]
0x100723acc:  5f 01 01 f1   cmp	x10, #0x40
0x100723ad0:  ed 13 89 1a   csel	w13, wzr, w9, ne
0x100723ad4:  ee 43 03 91   add	x14, sp, #0xd0
0x100723ad8:  cd a1 00 b8   stur	w13, [x14, #0xa]
0x100723adc:  ec bf 01 79   strh	w12, [sp, #0xde]
0x100723ae0:  5f 01 03 f1   cmp	x10, #0xc0
0x100723ae4:  e9 13 89 1a   csel	w9, wzr, w9, ne
0x100723ae8:  e9 e3 00 b9   str	w9, [sp, #0xe0]
0x100723aec:  ec cb 01 79   strh	w12, [sp, #0xe4]
0x100723af0:  cb 61 01 b8   stur	w11, [x14, #0x16]
0x100723af4:  ec d7 01 79   strh	w12, [sp, #0xea]
0x100723af8:  e8 ef 00 b9   str	w8, [sp, #0xec]
0x100723afc:  e0 c6 ff b0   adrp	x0, 0x100000000
0x100723b00:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100723b04:  e3 15 00 90   adrp	x3, 0x1009df000
0x100723b08:  63 40 32 91   add	x3, x3, #0xc90 ; "Identification - le device has address type %d, %d, %d, %d, %d"
0x100723b0c:  e4 43 03 91   add	x4, sp, #0xd0

