0x10048b780:  15 ec ed 97   bl	0x1000067d4
0x10048b784:  cb f6 43 94   bl	j__$sScTss5NeverORszABRs_rlE11isCancelledSbvgZ
0x10048b788:  98 0e 80 d2   mov	x24, #0x74
0x10048b78c:  18 20 fd f2   movk	x24, #0xe900, lsl #0x30
0x10048b790:  60 ce 07 36   tbz	w0, #0, loc_10048b15c ; ⤴ -0x634
0x10048b794:  5c 01 00 14   b	loc_10048bd04 ; ⤵ 0x570
0x10048b798:  f0 5f 00 b0   adrp	x16, 0x101088000
0x10048b79c:  10 d2 26 91   add	x16, x16, #0x9b4
0x10048b7a0:  f0 23 c1 da   paciza	x16
0x10048b7a4:  e1 03 10 aa   mov	x1, x16
0x10048b7a8:  c0 a5 00 d0   adrp	x0, 0x101945000
0x10048b7ac:  00 00 03 91   add	x0, x0, #0xc0 ; data_1019450c0 (__DATA.__data)
0x10048b7b0:  b8 00 44 94   bl	j__swift_once
0x10048b7b4:  87 fe ff 17   b	loc_10048b1d0 ; ⤴ -0x5e4
0x10048b7b8:  fa e3 4a a9   ldp	x26, x24, [sp, #0xa8]
0x10048b7bc:  e0 03 1a aa   mov	x0, x26
0x10048b7c0:  e1 03 18 aa   mov	x1, x24
0x10048b7c4:  8c 35 ee 97   bl	0x100018df4
0x10048b7c8:  a0 87 76 a9   ldp	x0, x1, [fp, #-0x98]
0x10048b7cc:  9d 3b 02 94   bl	0x10051a640
0x10048b7d0:  e2 03 00 aa   mov	x2, x0
0x10048b7d4:  e3 03 01 aa   mov	x3, x1
0x10048b7d8:  a8 a3 01 d1   sub	x8, fp, #0x68
0x10048b7dc:  c0 00 80 52   mov	w0, #0x6
0x10048b7e0:  e1 03 02 aa   mov	x1, x2
0x10048b7e4:  e2 03 03 aa   mov	x2, x3
0x10048b7e8:  81 95 ee 97   bl	0x100030dec
0x10048b7ec:  b7 e7 79 a9   ldp	x23, x25, [fp, #-0x68]
0x10048b7f0:  60 ec 8d d2   mov	x0, #0x6f63
0x10048b7f4:  c0 cd ad f2   movk	x0, #0x6e6e, lsl #0x10
0x10048b7f8:  a0 6c cc f2   movk	x0, #0x6365, lsl #0x20
0x10048b7fc:  80 0e e0 f2   movk	x0, #0x74, lsl #0x30
0x10048b800:  01 e0 fc d2   mov	x1, #0xe700000000000000
0x10048b804:  bb f4 43 94   bl	j__$sSS10FindMyBaseE8utf8Data10Foundation0E0Vvg
0x10048b808:  f3 03 00 aa   mov	x19, x0
0x10048b80c:  f4 03 01 aa   mov	x20, x1
0x10048b810:  e0 03 1a aa   mov	x0, x26
0x10048b814:  e1 03 18 aa   mov	x1, x24
0x10048b818:  e2 03 13 aa   mov	x2, x19
0x10048b81c:  e3 03 14 aa   mov	x3, x20
0x10048b820:  04 04 80 52   mov	w4, #0x20
0x10048b824:  85 95 1b 94   bl	0x100b70e38
0x10048b828:  35 6e 00 b5   cbnz	x21, loc_10048c5ec ; ⤵ 0xdc4
0x10048b82c:  a8 a3 01 d1   sub	x8, fp, #0x68
0x10048b830:  e6 7c 02 94   bl	0x10052abc8
0x10048b834:  d5 6d 00 b5   cbnz	x21, loc_10048c5ec ; ⤵ 0xdb8
0x10048b838:  e0 03 13 aa   mov	x0, x19
0x10048b83c:  e1 03 14 aa   mov	x1, x20
0x10048b840:  d8 2d ee 97   bl	0x100016fa0
0x10048b844:  b4 cf 79 a9   ldp	x20, x19, [fp, #-0x68]
0x10048b848:  e0 3f 40 f9   ldr	x0, [sp, #0x78]
0x10048b84c:  85 00 44 94   bl	j__swift_isUniquelyReferenced_nonNull_native
0x10048b850:  b4 83 17 f8   stur	x20, [fp, #-0x88]
0x10048b854:  c0 04 00 36   tbz	w0, #0, loc_10048b8ec ; ⤵ 0x98
0x10048b858:  ; loc_10048b858
0x10048b858:  e8 3f 40 f9   ldr	x8, [sp, #0x78]
0x10048b85c:  1a 21 41 a9   ldp	x26, x8, [x8, #0x10]
0x10048b860:  54 07 00 91   add	x20, x26, #0x1
0x10048b864:  5f 07 48 eb   cmp	x26, x8, lsr #0x1
0x10048b868:  f3 3b 00 f9   str	x19, [sp, #0x70]
0x10048b86c:  f5 03 1b aa   mov	x21, x27
0x10048b870:  e2 04 00 54   b.hs	loc_10048b90c ; ⤵ 0x9c
0x10048b874:  ; loc_10048b874
0x10048b874:  d8 a6 4b 39   ldrb	w24, [x22, #0x2e9]
0x10048b878:  f3 ef 4a a9   ldp	x19, x27, [sp, #0xa8]
0x10048b87c:  e0 03 13 aa   mov	x0, x19
0x10048b880:  e1 03 1b aa   mov	x1, x27
0x10048b884:  c7 2d ee 97   bl	0x100016fa0
0x10048b888:  e0 87 49 a9   ldp	x0, x1, [sp, #0x98]
0x10048b88c:  c5 2d ee 97   bl	0x100016fa0
0x10048b890:  e0 03 13 aa   mov	x0, x19
0x10048b894:  e1 03 1b aa   mov	x1, x27
0x10048b898:  cf eb ed 97   bl	0x1000067d4
0x10048b89c:  a0 87 76 a9   ldp	x0, x1, [fp, #-0x98]
0x10048b8a0:  c0 2d ee 97   bl	0x100016fa0
0x10048b8a4:  e0 07 48 a9   ldp	x0, x1, [sp, #0x80]
0x10048b8a8:  cb eb ed 97   bl	0x1000067d4
0x10048b8ac:  e9 3f 40 f9   ldr	x9, [sp, #0x78]
0x10048b8b0:  34 09 00 f9   str	x20, [x9, #0x10]
0x10048b8b4:  08 06 80 52   mov	w8, #0x30
0x10048b8b8:  48 27 08 9b   madd	x8, x26, x8, x9
0x10048b8bc:  18 81 00 39   strb	w24, [x8, #0x20]
0x10048b8c0:  15 dd 02 a9   stp	x21, x23, [x8, #0x28]
0x10048b8c4:  aa 83 57 f8   ldur	x10, [fp, #-0x88]
0x10048b8c8:  19 a9 03 a9   stp	x25, x10, [x8, #0x38]
0x10048b8cc:  ea 3b 40 f9   ldr	x10, [sp, #0x70]
0x10048b8d0:  0a 25 00 f9   str	x10, [x8, #0x48]
0x10048b8d4:  f4 03 09 aa   mov	x20, x9
0x10048b8d8:  76 f6 43 94   bl	j__$sScTss5NeverORszABRs_rlE11isCancelledSbvgZ
0x10048b8dc:  98 0e 80 d2   mov	x24, #0x74
0x10048b8e0:  18 20 fd f2   movk	x24, #0xe900, lsl #0x30
0x10048b8e4:  a0 c3 07 36   tbz	w0, #0, loc_10048b158 ; ⤴ -0x78c
0x10048b8e8:  08 01 00 14   b	loc_10048bd08 ; ⤵ 0x420
0x10048b8ec:  ; loc_10048b8ec
0x10048b8ec:  e3 3f 40 f9   ldr	x3, [sp, #0x78]
0x10048b8f0:  68 08 40 f9   ldr	x8, [x3, #0x10]
0x10048b8f4:  01 05 00 91   add	x1, x8, #0x1
0x10048b8f8:  00 00 80 52   mov	w0, #0
0x10048b8fc:  22 00 80 52   mov	w2, #0x1
0x10048b900:  ae 1c 1b 94   bl	0x100b52bb8
0x10048b904:  e0 3f 00 f9   str	x0, [sp, #0x78]
0x10048b908:  d4 ff ff 17   b	loc_10048b858 ; ⤴ -0xb0
0x10048b90c:  ; loc_10048b90c
0x10048b90c:  1f 05 00 f1   cmp	x8, #0x1
0x10048b910:  e0 97 9f 1a   cset	w0, hi
0x10048b914:  e1 03 14 aa   mov	x1, x20
0x10048b918:  22 00 80 52   mov	w2, #0x1
0x10048b91c:  e3 3f 40 f9   ldr	x3, [sp, #0x78]
0x10048b920:  a6 1c 1b 94   bl	0x100b52bb8
0x10048b924:  e0 3f 00 f9   str	x0, [sp, #0x78]
0x10048b928:  d3 ff ff 17   b	loc_10048b874 ; ⤴ -0xb4
0x10048b92c:  11 f7 43 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x10048b930:  f4 03 00 aa   mov	x20, x0
0x10048b934:  68 a5 00 d0   adrp	x8, 0x101939000
0x10048b938:  08 d9 40 f9   ldr	x8, [x8, #0x1b0] ; data_1019391b0 (__DATA.__data)
0x10048b93c:  1f 05 00 b1   cmn	x8, #0x1
0x10048b940:  e1 6e 00 54   b.ne	loc_10048c71c ; ⤵ 0xddc
0x10048b944:  e8 ab 00 90   adrp	x8, 0x101a07000
0x10048b948:  13 35 43 f9   ldr	x19, [x8, #0x668]
0x10048b94c:  80 a4 00 b0   adrp	x0, 0x10191c000
0x10048b950:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x10048b954:  01 8b 00 d0   adrp	x1, 0x1015ed000
0x10048b958:  21 00 19 91   add	x1, x1, #0x640
0x10048b95c:  a6 b2 f0 97   bl	0x1000b83f4

