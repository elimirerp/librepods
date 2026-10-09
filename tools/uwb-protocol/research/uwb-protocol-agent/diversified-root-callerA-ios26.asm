0x10043e8e0:  db 6a 40 a9   ldp	x27, x26, [x22]
0x10043e8e4:  f6 03 09 aa   mov	x22, x9
0x10043e8e8:  28 31 80 b9   ldrsw	x8, [x9, #0x30]
0x10043e8ec:  48 01 08 8b   add	x8, x10, x8
0x10043e8f0:  19 51 40 a9   ldp	x25, x20, [x8]
0x10043e8f4:  e0 03 1c aa   mov	x0, x28
0x10043e8f8:  e1 03 13 aa   mov	x1, x19
0x10043e8fc:  3e 69 ef 97   bl	0x100018df4
0x10043e900:  a8 23 02 d1   sub	x8, fp, #0x88
0x10043e904:  1b 01 10 f8   stur	x27, [x8, #-0x100]
0x10043e908:  e0 03 1b aa   mov	x0, x27
0x10043e90c:  a8 03 02 d1   sub	x8, fp, #0x80
0x10043e910:  1a 01 10 f8   stur	x26, [x8, #-0x100]
0x10043e914:  e1 03 1a aa   mov	x1, x26
0x10043e918:  37 69 ef 97   bl	0x100018df4
0x10043e91c:  a8 e3 01 d1   sub	x8, fp, #0x78
0x10043e920:  19 01 10 f8   stur	x25, [x8, #-0x100]
0x10043e924:  e0 03 19 aa   mov	x0, x25
0x10043e928:  a8 c3 01 d1   sub	x8, fp, #0x70
0x10043e92c:  14 01 10 f8   stur	x20, [x8, #-0x100]
0x10043e930:  e1 03 14 aa   mov	x1, x20
0x10043e934:  30 69 ef 97   bl	0x100018df4
0x10043e938:  28 a8 00 f0   adrp	x8, 0x101945000
0x10043e93c:  08 61 40 f9   ldr	x8, [x8, #0xc0] ; data_1019450c0 (__DATA.__data)
0x10043e940:  1f 05 00 b1   cmn	x8, #0x1
0x10043e944:  61 29 00 54   b.ne	loc_10043ee70 ; ⤵ 0x52c
0x10043e948:  28 a8 00 f0   adrp	x8, 0x101945000
0x10043e94c:  14 41 40 f9   ldr	x20, [x8, #0x80] ; data_101945080 (__DATA.__data)
0x10043e950:  a8 ce 8d d2   mov	x8, #0x6e75
0x10043e954:  88 ac ac f2   movk	x8, #0x6564, lsl #0x10
0x10043e958:  48 8e ca f2   movk	x8, #0x5472, lsl #0x20
0x10043e95c:  a8 6c ee f2   movk	x8, #0x7365, lsl #0x30
0x10043e960:  89 0e 80 d2   mov	x9, #0x74
0x10043e964:  09 20 fd f2   movk	x9, #0xe900, lsl #0x30
0x10043e968:  a8 a7 37 a9   stp	x8, x9, [fp, #-0x88]
0x10043e96c:  43 a2 00 90   adrp	x3, 0x101886000
0x10043e970:  63 ac 45 f9   ldr	x3, [x3, #0xb58] ; __got._$sSbN
0x10043e974:  50 62 00 d0   adrp	x16, 0x101088000
0x10043e978:  10 82 3e 91   add	x16, x16, #0xfa0
0x10043e97c:  f1 41 8e d2   mov	x17, #0x720f
0x10043e980:  30 02 c1 da   pacia	x16, x17
0x10043e984:  e1 03 10 aa   mov	x1, x16
0x10043e988:  a8 83 02 d1   sub	x8, fp, #0xa0
0x10043e98c:  a0 23 02 d1   sub	x0, fp, #0x88
0x10043e990:  02 00 80 d2   mov	x2, #0
0x10043e994:  bb 17 45 94   bl	j__$s10FindMyBase16SynchronousCacheC11cachedValue3key12computeBlockqd__x_qd__yXEts8SendableRd__lF
0x10043e998:  e0 03 1c aa   mov	x0, x28
0x10043e99c:  e1 03 13 aa   mov	x1, x19
0x10043e9a0:  e2 03 17 aa   mov	x2, x23
0x10043e9a4:  4f b4 1c 94   bl	0x100b6bae0
0x10043e9a8:  fb 03 13 aa   mov	x27, x19
0x10043e9ac:  55 05 00 b4   cbz	x21, loc_10043ea54 ; ⤵ 0xa8
0x10043e9b0:  a8 63 00 d1   sub	x8, fp, #0x18
0x10043e9b4:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e9b8:  2a 33 45 94   bl	j__swift_bridgeObjectRelease
0x10043e9bc:  a8 23 02 d1   sub	x8, fp, #0x88
0x10043e9c0:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e9c4:  a8 03 02 d1   sub	x8, fp, #0x80
0x10043e9c8:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x10043e9cc:  75 61 ef 97   bl	0x100016fa0
0x10043e9d0:  a8 e3 01 d1   sub	x8, fp, #0x78
0x10043e9d4:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e9d8:  a8 c3 01 d1   sub	x8, fp, #0x70
0x10043e9dc:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x10043e9e0:  70 61 ef 97   bl	0x100016fa0
0x10043e9e4:  e0 03 1c aa   mov	x0, x28
0x10043e9e8:  e1 03 1b aa   mov	x1, x27
0x10043e9ec:  4f 00 00 14   b	loc_10043eb28 ; ⤵ 0x13c
0x10043e9f0:  a8 e3 00 d1   sub	x8, fp, #0x38
0x10043e9f4:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e9f8:  a8 a3 00 d1   sub	x8, fp, #0x28
0x10043e9fc:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x10043ea00:  68 61 ef 97   bl	0x100016fa0
0x10043ea04:  27 32 45 94   bl	j__objc_release_x28
0x10043ea08:  70 de ff 90   adrp	x16, 0x10000a000
0x10043ea0c:  10 e2 14 91   add	x16, x16, #0x538
0x10043ea10:  31 0b 84 d2   mov	x17, #0x2059
0x10043ea14:  30 02 c1 da   pacia	x16, x17
0x10043ea18:  e1 03 10 aa   mov	x1, x16
0x10043ea1c:  e0 03 19 aa   mov	x0, x25
0x10043ea20:  39 b2 00 94   bl	0x10046b304
0x10043ea24:  68 8f 40 f8   ldr	x8, [x27, #0x8]!
0x10043ea28:  e0 03 14 aa   mov	x0, x20
0x10043ea2c:  e1 03 18 aa   mov	x1, x24
0x10043ea30:  f1 03 1b aa   mov	x17, x27
0x10043ea34:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10043ea38:  11 09 3f d7   blraa	x8, x17
0x10043ea3c:  a8 c3 00 d1   sub	x8, fp, #0x30
0x10043ea40:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10043ea44:  28 8d 40 f8   ldr	x8, [x9, #0x8]!
0x10043ea48:  e0 03 17 aa   mov	x0, x23
0x10043ea4c:  e1 03 1a aa   mov	x1, x26
0x10043ea50:  bb 00 00 14   b	loc_10043ed3c ; ⤵ 0x2ec
0x10043ea54:  ; loc_10043ea54
0x10043ea54:  e8 03 17 aa   mov	x8, x23
0x10043ea58:  f7 03 00 aa   mov	x23, x0
0x10043ea5c:  f4 03 01 aa   mov	x20, x1
0x10043ea60:  a9 43 02 d1   sub	x9, fp, #0x90
0x10043ea64:  3c 01 10 f8   stur	x28, [x9, #-0x100]
0x10043ea68:  a9 43 01 d1   sub	x9, fp, #0x50
0x10043ea6c:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10043ea70:  a0 07 36 a9   stp	x0, x1, [fp, #-0xa0]
0x10043ea74:  4f 31 45 94   bl	j___objc_autoreleasePoolPush
0x10043ea78:  a8 63 02 d1   sub	x8, fp, #0x98
0x10043ea7c:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10043ea80:  e0 03 17 aa   mov	x0, x23
0x10043ea84:  e1 03 14 aa   mov	x1, x20
0x10043ea88:  db 68 ef 97   bl	0x100018df4
0x10043ea8c:  a8 23 02 d1   sub	x8, fp, #0x88
0x10043ea90:  a7 83 02 d1   sub	x7, fp, #0xa0
0x10043ea94:  a9 e3 01 d1   sub	x9, fp, #0x78
0x10043ea98:  20 01 50 f8   ldur	x0, [x9, #-0x100]
0x10043ea9c:  f3 03 00 aa   mov	x19, x0
0x10043eaa0:  a9 c3 01 d1   sub	x9, fp, #0x70
0x10043eaa4:  3c 01 50 f8   ldur	x28, [x9, #-0x100]
0x10043eaa8:  e1 03 1c aa   mov	x1, x28
0x10043eaac:  a9 23 02 d1   sub	x9, fp, #0x88
0x10043eab0:  3a 01 50 f8   ldur	x26, [x9, #-0x100]
0x10043eab4:  e2 03 1a aa   mov	x2, x26
0x10043eab8:  a9 03 02 d1   sub	x9, fp, #0x80
0x10043eabc:  39 01 50 f8   ldur	x25, [x9, #-0x100]
0x10043eac0:  e3 03 19 aa   mov	x3, x25
0x10043eac4:  e4 03 17 aa   mov	x4, x23
0x10043eac8:  e5 03 14 aa   mov	x5, x20
0x10043eacc:  26 00 80 52   mov	w6, #0x1
0x10043ead0:  b1 b7 1c 94   bl	0x100b6c994
0x10043ead4:  95 16 00 b4   cbz	x21, loc_10043eda4 ; ⤵ 0x2d0
0x10043ead8:  e0 03 17 aa   mov	x0, x23
0x10043eadc:  e1 03 14 aa   mov	x1, x20
0x10043eae0:  30 61 ef 97   bl	0x100016fa0
0x10043eae4:  a8 63 02 d1   sub	x8, fp, #0x98
0x10043eae8:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043eaec:  2d 31 45 94   bl	j___objc_autoreleasePoolPop
0x10043eaf0:  a8 63 00 d1   sub	x8, fp, #0x18
0x10043eaf4:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043eaf8:  da 32 45 94   bl	j__swift_bridgeObjectRelease
0x10043eafc:  e0 03 1a aa   mov	x0, x26
0x10043eb00:  e1 03 19 aa   mov	x1, x25
0x10043eb04:  27 61 ef 97   bl	0x100016fa0
0x10043eb08:  e0 03 13 aa   mov	x0, x19
0x10043eb0c:  e1 03 1c aa   mov	x1, x28
0x10043eb10:  24 61 ef 97   bl	0x100016fa0
0x10043eb14:  a8 43 02 d1   sub	x8, fp, #0x90
0x10043eb18:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043eb1c:  e1 03 1b aa   mov	x1, x27
0x10043eb20:  20 61 ef 97   bl	0x100016fa0
0x10043eb24:  a0 07 76 a9   ldp	x0, x1, [fp, #-0xa0]
0x10043eb28:  ; loc_10043eb28
0x10043eb28:  1e 61 ef 97   bl	0x100016fa0
0x10043eb2c:  a8 a3 00 d1   sub	x8, fp, #0x28
0x10043eb30:  1c 01 50 f8   ldur	x28, [x8, #-0x100]
0x10043eb34:  68 a7 00 b0   adrp	x8, 0x10192b000
0x10043eb38:  08 51 47 f9   ldr	x8, [x8, #0xea0] ; data_10192bea0 (__DATA.__data)
0x10043eb3c:  1f 05 00 b1   cmn	x8, #0x1
0x10043eb40:  a8 a3 01 d1   sub	x8, fp, #0x68
0x10043eb44:  1b 01 50 f8   ldur	x27, [x8, #-0x100]
0x10043eb48:  a8 23 00 d1   sub	x8, fp, #0x8
0x10043eb4c:  16 01 50 f8   ldur	x22, [x8, #-0x100]
0x10043eb50:  a8 03 01 d1   sub	x8, fp, #0x40
0x10043eb54:  18 01 50 f8   ldur	x24, [x8, #-0x100]
0x10043eb58:  a8 63 01 d1   sub	x8, fp, #0x58
0x10043eb5c:  14 01 50 f8   ldur	x20, [x8, #-0x100]
0x10043eb60:  81 19 00 54   b.ne	loc_10043ee90 ; ⤵ 0x330
0x10043eb64:  41 ae 00 90   adrp	x1, 0x101a06000
0x10043eb68:  21 60 33 91   add	x1, x1, #0xcd8
0x10043eb6c:  e0 03 18 aa   mov	x0, x24
0x10043eb70:  ca 23 ef 97   bl	0x100007a98
0x10043eb74:  e1 03 00 aa   mov	x1, x0
0x10043eb78:  a8 23 01 d1   sub	x8, fp, #0x48
0x10043eb7c:  1a 01 50 f8   ldur	x26, [x8, #-0x100]
0x10043eb80:  e8 03 1a aa   mov	x8, x26
0x10043eb84:  09 0d 41 f8   ldr	x9, [x8, #0x10]!

