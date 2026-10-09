0x1015548d0:  a8 e3 00 d1   sub	x8, fp, #0x38
0x1015548d4:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x1015548d8:  e1 03 18 aa   mov	x1, x24
0x1015548dc:  74 0a 3f d7   blraa	x19, x20
0x1015548e0:  e0 03 16 aa   mov	x0, x22
0x1015548e4:  e1 03 17 aa   mov	x1, x23
0x1015548e8:  e2 03 15 aa   mov	x2, x21
0x1015548ec:  21 dc aa 97   bl	0x10000b970
0x1015548f0:  a8 33 00 d1   sub	x8, fp, #0xc
0x1015548f4:  08 01 50 b8   ldur	w8, [x8, #-0x100]
0x1015548f8:  68 ec 07 36   tbz	w8, #0, loc_101554684 ; ⤴ -0x274
0x1015548fc:  8e ff ff 17   b	loc_101554734 ; ⤴ -0x1c8
0x101554900:  d0 a0 ff 90   adrp	x16, 0x10096c000
0x101554904:  10 12 19 91   add	x16, x16, #0x644
0x101554908:  f0 23 c1 da   paciza	x16
0x10155490c:  e1 03 10 aa   mov	x1, x16
0x101554910:  e0 1e 00 90   adrp	x0, 0x101930000
0x101554914:  00 00 2e 91   add	x0, x0, #0xb80 ; data_101930b80 (__DATA.__data)
0x101554918:  5e dc 00 94   bl	j__swift_once
0x10155491c:  a0 fe ff 17   b	loc_10155439c ; ⤴ -0x580
0x101554920:  d0 a0 ff 90   adrp	x16, 0x10096c000
0x101554924:  10 12 19 91   add	x16, x16, #0x644
0x101554928:  f0 23 c1 da   paciza	x16
0x10155492c:  e1 03 10 aa   mov	x1, x16
0x101554930:  e0 1e 00 90   adrp	x0, 0x101930000
0x101554934:  00 00 2e 91   add	x0, x0, #0xb80 ; data_101930b80 (__DATA.__data)
0x101554938:  56 dc 00 94   bl	j__swift_once
0x10155493c:  58 ff ff 17   b	loc_10155469c ; ⤴ -0x2a0
0x101554940:  d0 a0 ff 90   adrp	x16, 0x10096c000
0x101554944:  10 12 19 91   add	x16, x16, #0x644
0x101554948:  f0 23 c1 da   paciza	x16
0x10155494c:  e1 03 10 aa   mov	x1, x16
0x101554950:  e0 1e 00 90   adrp	x0, 0x101930000
0x101554954:  00 00 2e 91   add	x0, x0, #0xb80 ; data_101930b80 (__DATA.__data)
0x101554958:  4e dc 00 94   bl	j__swift_once
0x10155495c:  8d ff ff 17   b	loc_101554790 ; ⤴ -0x1cc

sub_101554960:
0x101554960:  7f 23 03 d5   pacibsp
0x101554964:  ff 03 06 d1   sub	sp, sp, #0x180
0x101554968:  fc 93 00 f9   str	x28, [sp, #0x120]
0x10155496c:  fb 6b 13 a9   stp	x27, x26, [sp, #0x130]
0x101554970:  f9 63 14 a9   stp	x25, x24, [sp, #0x140]
0x101554974:  f7 5b 15 a9   stp	x23, x22, [sp, #0x150]
0x101554978:  f4 4f 16 a9   stp	x20, x19, [sp, #0x160]
0x10155497c:  fd 7b 17 a9   stp	fp, lr, [sp, #0x170]
0x101554980:  fd c3 05 91   add	fp, sp, #0x170
0x101554984:  fb 03 15 aa   mov	x27, x21
0x101554988:  e6 9f 03 a9   stp	x6, x7, [sp, #0x38]
0x10155498c:  e4 97 02 a9   stp	x4, x5, [sp, #0x28]
0x101554990:  fa 03 03 aa   mov	x26, x3
0x101554994:  f7 03 02 aa   mov	x23, x2
0x101554998:  e0 87 01 a9   stp	x0, x1, [sp, #0x18]
0x10155499c:  b6 4f 41 a9   ldp	x22, x19, [fp, #0x10]
0x1015549a0:  88 1f 00 b0   adrp	x8, 0x101945000
0x1015549a4:  08 61 40 f9   ldr	x8, [x8, #0xc0] ; data_1019450c0 (__DATA.__data)
0x1015549a8:  1f 05 00 b1   cmn	x8, #0x1
0x1015549ac:  c1 10 00 54   b.ne	loc_101554bc4 ; ⤵ 0x218
0x1015549b0:  ; loc_1015549b0
0x1015549b0:  88 1f 00 b0   adrp	x8, 0x101945000
0x1015549b4:  14 41 40 f9   ldr	x20, [x8, #0x80] ; data_101945080 (__DATA.__data)
0x1015549b8:  a8 ce 8d d2   mov	x8, #0x6e75
0x1015549bc:  88 ac ac f2   movk	x8, #0x6564, lsl #0x10
0x1015549c0:  48 8e ca f2   movk	x8, #0x5472, lsl #0x20
0x1015549c4:  a8 6c ee f2   movk	x8, #0x7365, lsl #0x30
0x1015549c8:  89 0e 80 d2   mov	x9, #0x74
0x1015549cc:  09 20 fd f2   movk	x9, #0xe900, lsl #0x30
0x1015549d0:  e8 27 05 a9   stp	x8, x9, [sp, #0x50]
0x1015549d4:  83 19 00 d0   adrp	x3, 0x101886000
0x1015549d8:  63 ac 45 f9   ldr	x3, [x3, #0xb58] ; __got._$sSbN
0x1015549dc:  b0 d9 ff 90   adrp	x16, 0x101088000
0x1015549e0:  10 82 3e 91   add	x16, x16, #0xfa0
0x1015549e4:  f1 41 8e d2   mov	x17, #0x720f
0x1015549e8:  30 02 c1 da   pacia	x16, x17
0x1015549ec:  e1 03 10 aa   mov	x1, x16
0x1015549f0:  e8 43 02 91   add	x8, sp, #0x90
0x1015549f4:  e0 43 01 91   add	x0, sp, #0x50
0x1015549f8:  02 00 80 d2   mov	x2, #0
0x1015549fc:  a1 bf 00 94   bl	j__$s10FindMyBase16SynchronousCacheC11cachedValue3key12computeBlockqd__x_qd__yXEts8SendableRd__lF
0x101554a00:  e0 03 16 aa   mov	x0, x22
0x101554a04:  e1 03 13 aa   mov	x1, x19
0x101554a08:  e2 03 17 aa   mov	x2, x23
0x101554a0c:  f5 03 1b aa   mov	x21, x27
0x101554a10:  34 5c d8 97   bl	0x100b6bae0
0x101554a14:  f3 03 15 aa   mov	x19, x21
0x101554a18:  55 0c 00 b5   cbnz	x21, loc_101554ba0 ; ⤵ 0x188
0x101554a1c:  f4 03 00 aa   mov	x20, x0
0x101554a20:  fb 03 01 aa   mov	x27, x1
0x101554a24:  a8 17 40 f9   ldr	x8, [fp, #0x28]
0x101554a28:  e8 03 00 f9   str	x8, [sp]
0x101554a2c:  a8 83 40 39   ldrb	w8, [fp, #0x20]
0x101554a30:  e8 17 00 b9   str	w8, [sp, #0x14]
0x101554a34:  e0 07 09 a9   stp	x0, x1, [sp, #0x90]
0x101554a38:  5f 03 17 eb   cmp	x26, x23
0x101554a3c:  48 83 97 9a   csel	x8, x26, x23, hi
0x101554a40:  e8 07 00 f9   str	x8, [sp, #0x8]
0x101554a44:  ; loc_101554a44
0x101554a44:  5b d9 00 94   bl	j___objc_autoreleasePoolPush
0x101554a48:  fa 03 00 aa   mov	x26, x0
0x101554a4c:  e0 03 14 aa   mov	x0, x20
0x101554a50:  e1 03 1b aa   mov	x1, x27
0x101554a54:  e8 10 ab 97   bl	0x100018df4
0x101554a58:  e8 83 02 91   add	x8, sp, #0xa0
0x101554a5c:  e7 43 02 91   add	x7, sp, #0x90
0x101554a60:  e0 87 42 a9   ldp	x0, x1, [sp, #0x28]
0x101554a64:  e2 8f 43 a9   ldp	x2, x3, [sp, #0x38]
0x101554a68:  e4 03 14 aa   mov	x4, x20
0x101554a6c:  e5 03 1b aa   mov	x5, x27
0x101554a70:  26 00 80 52   mov	w6, #0x1
0x101554a74:  f5 03 13 aa   mov	x21, x19
0x101554a78:  c7 5f d8 97   bl	0x100b6c994
0x101554a7c:  f3 03 15 aa   mov	x19, x21
0x101554a80:  b5 07 00 b5   cbnz	x21, loc_101554b74 ; ⤵ 0xf4
0x101554a84:  f3 27 00 f9   str	x19, [sp, #0x48]
0x101554a88:  b7 83 1b f8   stur	x23, [fp, #-0x48]
0x101554a8c:  e0 03 14 aa   mov	x0, x20
0x101554a90:  e1 03 1b aa   mov	x1, x27
0x101554a94:  43 09 ab 97   bl	0x100016fa0
0x101554a98:  e8 17 40 b9   ldr	w8, [sp, #0x14]
0x101554a9c:  28 01 00 36   tbz	w8, #0, loc_101554ac0 ; ⤵ 0x24
0x101554aa0:  18 00 80 d2   mov	x24, #0
0x101554aa4:  1b 00 80 d2   mov	x27, #0
0x101554aa8:  13 00 80 d2   mov	x19, #0
0x101554aac:  19 00 fe d2   mov	x25, #0xf000000000000000
0x101554ab0:  f4 5f 4b a9   ldp	x20, x23, [sp, #0xb0]
0x101554ab4:  16 00 fe d2   mov	x22, #0xf000000000000000
0x101554ab8:  1c 00 fe d2   mov	x28, #0xf000000000000000
0x101554abc:  10 00 00 14   b	loc_101554afc ; ⤵ 0x40
0x101554ac0:  ; loc_101554ac0
0x101554ac0:  fb 5b 4c a9   ldp	x27, x22, [sp, #0xc0]
0x101554ac4:  e0 03 1b aa   mov	x0, x27
0x101554ac8:  e1 03 16 aa   mov	x1, x22
0x101554acc:  86 70 ab 97   bl	0x100030ce4
0x101554ad0:  e0 03 1b aa   mov	x0, x27
0x101554ad4:  e1 03 16 aa   mov	x1, x22
0x101554ad8:  f4 03 40 f9   ldr	x20, [sp]
0x101554adc:  ea 00 00 94   bl	0x101554e84
0x101554ae0:  f3 03 00 aa   mov	x19, x0
0x101554ae4:  fc 03 01 aa   mov	x28, x1
0x101554ae8:  f8 67 4a a9   ldp	x24, x25, [sp, #0xa0]
0x101554aec:  f4 5f 4b a9   ldp	x20, x23, [sp, #0xb0]
0x101554af0:  e0 03 18 aa   mov	x0, x24
0x101554af4:  e1 03 19 aa   mov	x1, x25
0x101554af8:  7b 70 ab 97   bl	0x100030ce4
0x101554afc:  ; loc_101554afc
0x101554afc:  f8 67 05 a9   stp	x24, x25, [sp, #0x50]
0x101554b00:  f4 5f 06 a9   stp	x20, x23, [sp, #0x60]
0x101554b04:  fb 5b 07 a9   stp	x27, x22, [sp, #0x70]
0x101554b08:  f3 73 08 a9   stp	x19, x28, [sp, #0x80]
0x101554b0c:  e0 87 42 ad   ldp	q0, q1, [sp, #0x50]
0x101554b10:  a0 07 3b ad   stp	q0, q1, [fp, #-0xa0]
0x101554b14:  e0 87 43 ad   ldp	q0, q1, [sp, #0x70]
0x101554b18:  a0 07 3c ad   stp	q0, q1, [fp, #-0x80]
0x101554b1c:  e0 03 14 aa   mov	x0, x20
0x101554b20:  e1 03 17 aa   mov	x1, x23
0x101554b24:  b4 10 ab 97   bl	0x100018df4
0x101554b28:  a1 83 02 d1   sub	x1, fp, #0xa0
0x101554b2c:  b7 83 5b f8   ldur	x23, [fp, #-0x48]
0x101554b30:  e0 03 17 aa   mov	x0, x23
0x101554b34:  e8 d3 41 a9   ldp	x8, x20, [sp, #0x18]
0x101554b38:  31 d9 8a d2   mov	x17, #0x56c9
0x101554b3c:  11 09 3f d7   blraa	x8, x17
0x101554b40:  e0 83 02 91   add	x0, sp, #0xa0
0x101554b44:  ea 58 bc 97   bl	0x10046aeec
0x101554b48:  e0 43 01 91   add	x0, sp, #0x50
0x101554b4c:  dd 37 00 94   bl	0x101562ac0
0x101554b50:  e0 03 1a aa   mov	x0, x26
0x101554b54:  13 d9 00 94   bl	j___objc_autoreleasePoolPop
0x101554b58:  e8 07 40 f9   ldr	x8, [sp, #0x8]
0x101554b5c:  1f 01 17 eb   cmp	x8, x23
0x101554b60:  a0 01 00 54   b.eq	loc_101554b94 ; ⤵ 0x34
0x101554b64:  f7 06 00 91   add	x23, x23, #0x1
0x101554b68:  f4 6f 49 a9   ldp	x20, x27, [sp, #0x90]
0x101554b6c:  f3 27 40 f9   ldr	x19, [sp, #0x48]
0x101554b70:  b5 ff ff 17   b	loc_101554a44 ; ⤴ -0x12c
0x101554b74:  ; loc_101554b74
0x101554b74:  e0 03 14 aa   mov	x0, x20
0x101554b78:  e1 03 1b aa   mov	x1, x27
0x101554b7c:  09 09 ab 97   bl	0x100016fa0
0x101554b80:  e0 03 1a aa   mov	x0, x26
0x101554b84:  07 d9 00 94   bl	j___objc_autoreleasePoolPop
0x101554b88:  e0 07 49 a9   ldp	x0, x1, [sp, #0x90]
0x101554b8c:  05 09 ab 97   bl	0x100016fa0
0x101554b90:  04 00 00 14   b	loc_101554ba0 ; ⤵ 0x10
0x101554b94:  ; loc_101554b94
0x101554b94:  e0 07 49 a9   ldp	x0, x1, [sp, #0x90]
0x101554b98:  02 09 ab 97   bl	0x100016fa0
0x101554b9c:  f3 27 40 f9   ldr	x19, [sp, #0x48]
0x101554ba0:  ; loc_101554ba0
0x101554ba0:  f5 03 13 aa   mov	x21, x19
0x101554ba4:  fd 7b 57 a9   ldp	fp, lr, [sp, #0x170]
0x101554ba8:  f4 4f 56 a9   ldp	x20, x19, [sp, #0x160]
0x101554bac:  f7 5b 55 a9   ldp	x23, x22, [sp, #0x150]
0x101554bb0:  f9 63 54 a9   ldp	x25, x24, [sp, #0x140]
0x101554bb4:  fb 6b 53 a9   ldp	x27, x26, [sp, #0x130]
0x101554bb8:  fc 93 40 f9   ldr	x28, [sp, #0x120]
0x101554bbc:  ff 03 06 91   add	sp, sp, #0x180
0x101554bc0:  ff 0f 5f d6   retab
0x101554bc4:  ; loc_101554bc4
0x101554bc4:  80 1f 00 b0   adrp	x0, 0x101945000
0x101554bc8:  00 00 03 91   add	x0, x0, #0xc0 ; data_1019450c0 (__DATA.__data)
0x101554bcc:  b0 d9 ff 90   adrp	x16, 0x101088000
0x101554bd0:  10 d2 26 91   add	x16, x16, #0x9b4
0x101554bd4:  f0 23 c1 da   paciza	x16
0x101554bd8:  e1 03 10 aa   mov	x1, x16
0x101554bdc:  ad db 00 94   bl	j__swift_once
0x101554be0:  74 ff ff 17   b	loc_1015549b0 ; ⤴ -0x230

sub_101554be4:
0x101554be4:  7f 23 03 d5   pacibsp
0x101554be8:  ff 43 05 d1   sub	sp, sp, #0x150
0x101554bec:  fc 7b 00 f9   str	x28, [sp, #0xf0]

