0x25232ad20:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x25232ad24:  8b 69 c9 94   bl	0x255585350
0x25232ad28:  32 68 c9 94   bl	0x255584df0
0x25232ad2c:  e9 87 40 a9   ldp	x9, x1, [sp, #0x8]
0x25232ad30:  28 8d 40 f8   ldr	x8, [x9, #0x8]!
0x25232ad34:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x25232ad38:  f1 03 09 aa   mov	x17, x9
0x25232ad3c:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x25232ad40:  11 09 3f d7   blraa	x8, x17
0x25232ad44:  0e 00 00 14   b	loc_25232ad7c ; ⤵ 0x38
0x25232ad48:  c0 d2 54 a9   ldp	x0, x20, [x22, #0x148]
0x25232ad4c:  d8 d6 4f a9   ldp	x24, x21, [x22, #0xf8]
0x25232ad50:  d7 7a 40 f9   ldr	x23, [x22, #0xf0]
0x25232ad54:  bb 68 c9 94   bl	0x255585040
0x25232ad58:  e0 03 14 aa   mov	x0, x20
0x25232ad5c:  b9 68 c9 94   bl	0x255585040
0x25232ad60:  24 68 c9 94   bl	0x255584df0
0x25232ad64:  08 8f 40 f8   ldr	x8, [x24, #0x8]!
0x25232ad68:  e0 03 15 aa   mov	x0, x21
0x25232ad6c:  e1 03 17 aa   mov	x1, x23
0x25232ad70:  f1 03 18 aa   mov	x17, x24
0x25232ad74:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x25232ad78:  11 09 3f d7   blraa	x8, x17
0x25232ad7c:  ; loc_25232ad7c
0x25232ad7c:  d4 aa 40 f9   ldr	x20, [x22, #0x150]
0x25232ad80:  c2 a2 40 f9   ldr	x2, [x22, #0x140]
0x25232ad84:  c8 5a 40 f9   ldr	x8, [x22, #0xb0]
0x25232ad88:  18 39 40 f9   ldr	x24, [x8, #0x70]
0x25232ad8c:  e0 03 18 aa   mov	x0, x24
0x25232ad90:  6c 07 01 94   bl	_objc_msgSend$setDiscoveryFlags:
0x25232ad94:  95 0a 40 f9   ldr	x21, [x20, #0x10]
0x25232ad98:  b4 20 13 f0   adrp	x20, 0x278741000
0x25232ad9c:  94 0e 40 f9   ldr	x20, [x20, #0x18]
0x25232ada0:  f8 0f 00 f9   str	x24, [sp, #0x18]
0x25232ada4:  d5 09 00 b4   cbz	x21, loc_25232aedc ; ⤵ 0x138
0x25232ada8:  d3 aa 40 f9   ldr	x19, [x22, #0x150]
0x25232adac:  dc e2 4d a9   ldp	x28, x24, [x22, #0xd8]
0x25232adb0:  f4 17 00 f9   str	x20, [sp, #0x28]
0x25232adb4:  f4 a3 00 91   add	x20, sp, #0x28
0x25232adb8:  e0 03 15 aa   mov	x0, x21
0x25232adbc:  d9 66 c9 94   bl	0x255584920
0x25232adc0:  08 43 41 39   ldrb	w8, [x24, #0x50]
0x25232adc4:  09 81 00 91   add	x9, x8, #0x20
0x25232adc8:  28 01 28 8a   bic	x8, x9, x8
0x25232adcc:  77 02 08 8b   add	x23, x19, x8
0x25232add0:  13 27 40 f9   ldr	x19, [x24, #0x48]
0x25232add4:  ; loc_25232add4
0x25232add4:  d4 76 40 f9   ldr	x20, [x22, #0xe8]
0x25232add8:  50 00 00 b0   adrp	x16, 0x252333000
0x25232addc:  10 82 26 91   add	x16, x16, #0x9a0
0x25232ade0:  51 86 84 d2   mov	x17, #0x2432
0x25232ade4:  30 02 c1 da   pacia	x16, x17
0x25232ade8:  e2 03 10 aa   mov	x2, x16
0x25232adec:  e0 03 17 aa   mov	x0, x23
0x25232adf0:  e1 03 14 aa   mov	x1, x20
0x25232adf4:  0b 23 00 94   bl	0x252333a20
0x25232adf8:  88 1a 13 90   adrp	x8, 0x27867a000
0x25232adfc:  00 59 40 f9   ldr	x0, [x8, #0xb0]
0x25232ae00:  ec 67 c9 94   bl	0x255584db0
0x25232ae04:  df 05 01 94   bl	_objc_msgSend$init
0x25232ae08:  f8 03 00 aa   mov	x24, x0
0x25232ae0c:  88 17 80 b9   ldrsw	x8, [x28, #0x14]
0x25232ae10:  88 02 08 8b   add	x8, x20, x8
0x25232ae14:  00 05 40 a9   ldp	x0, x1, [x8]
0x25232ae18:  c6 64 c9 94   bl	0x255584130
0x25232ae1c:  f9 03 00 aa   mov	x25, x0
0x25232ae20:  e0 03 18 aa   mov	x0, x24
0x25232ae24:  e2 03 19 aa   mov	x2, x25
0x25232ae28:  56 07 01 94   bl	_objc_msgSend$setIrkData:
0x25232ae2c:  09 68 c9 94   bl	0x255584e50
0x25232ae30:  2c 64 c9 94   bl	0x255583ee0
0x25232ae34:  f9 03 00 aa   mov	x25, x0
0x25232ae38:  fa 03 01 aa   mov	x26, x1
0x25232ae3c:  bd 64 c9 94   bl	0x255584130
0x25232ae40:  fb 03 00 aa   mov	x27, x0
0x25232ae44:  e0 03 19 aa   mov	x0, x25
0x25232ae48:  e1 03 1a aa   mov	x1, x26
0x25232ae4c:  8d 38 fe 97   bl	0x2522b9080
0x25232ae50:  e0 03 18 aa   mov	x0, x24
0x25232ae54:  e2 03 1b aa   mov	x2, x27
0x25232ae58:  0a 07 01 94   bl	_objc_msgSend$setBtAddressData:
0x25232ae5c:  05 68 c9 94   bl	0x255584e70
0x25232ae60:  28 64 c9 94   bl	0x255583f00
0x25232ae64:  08 1c 00 12   and	w8, w0, #0xff
0x25232ae68:  1f 05 00 71   cmp	w8, #0x1
0x25232ae6c:  e2 17 9f 1a   cset	w2, eq
0x25232ae70:  e0 03 18 aa   mov	x0, x24
0x25232ae74:  f3 06 01 94   bl	_objc_msgSend$setAddressType:
0x25232ae78:  50 00 00 b0   adrp	x16, 0x252333000
0x25232ae7c:  10 82 26 91   add	x16, x16, #0x9a0
0x25232ae80:  71 8b 98 d2   mov	x17, #0xc45b
0x25232ae84:  30 02 c1 da   pacia	x16, x17
0x25232ae88:  e1 03 10 aa   mov	x1, x16
0x25232ae8c:  e0 03 14 aa   mov	x0, x20
0x25232ae90:  fc 22 00 94   bl	0x252333a80
0x25232ae94:  f4 a3 00 91   add	x20, sp, #0x28
0x25232ae98:  9a 66 c9 94   bl	0x255584900
0x25232ae9c:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x25232aea0:  19 09 40 f9   ldr	x25, [x8, #0x10]
0x25232aea4:  f4 a3 00 91   add	x20, sp, #0x28
0x25232aea8:  e0 03 19 aa   mov	x0, x25
0x25232aeac:  a1 66 c9 94   bl	0x255584930
0x25232aeb0:  f4 a3 00 91   add	x20, sp, #0x28
0x25232aeb4:  e0 03 19 aa   mov	x0, x25
0x25232aeb8:  e1 03 18 aa   mov	x1, x24
0x25232aebc:  a1 66 c9 94   bl	0x255584940
0x25232aec0:  f4 a3 00 91   add	x20, sp, #0x28
0x25232aec4:  93 66 c9 94   bl	0x255584910
0x25232aec8:  f7 02 13 8b   add	x23, x23, x19
0x25232aecc:  b5 06 00 f1   subs	x21, x21, #0x1
0x25232aed0:  21 f8 ff 54   b.ne	loc_25232add4 ; ⤴ -0xfc
0x25232aed4:  f4 17 40 f9   ldr	x20, [sp, #0x28]
0x25232aed8:  f8 0f 40 f9   ldr	x24, [sp, #0x18]
0x25232aedc:  ; loc_25232aedc
0x25232aedc:  a1 87 17 f0   adrp	x1, 0x281421000
0x25232aee0:  21 00 1b 91   add	x1, x1, #0x6c0 ; data_2814216c0 (__DATA_DIRTY.__data)
0x25232aee4:  82 1a 13 90   adrp	x2, 0x27867a000
0x25232aee8:  42 c0 02 91   add	x2, x2, #0xb0
0x25232aeec:  00 00 80 d2   mov	x0, #0
0x25232aef0:  3e ca fd 97   bl	0x25229d7e8
0x25232aef4:  e1 03 00 aa   mov	x1, x0
0x25232aef8:  e0 03 14 aa   mov	x0, x20
0x25232aefc:  99 65 c9 94   bl	0x255584560
0x25232af00:  f5 03 00 aa   mov	x21, x0
0x25232af04:  e0 03 14 aa   mov	x0, x20
0x25232af08:  4e 68 c9 94   bl	0x255585040
0x25232af0c:  e0 03 18 aa   mov	x0, x24
0x25232af10:  e2 03 15 aa   mov	x2, x21
0x25232af14:  2b 07 01 94   bl	_objc_msgSend$setOobKeys:
0x25232af18:  be 67 c9 94   bl	0x255584e10
0x25232af1c:  e0 03 18 aa   mov	x0, x24
0x25232af20:  f8 04 01 94   bl	_objc_msgSend$bleScanRate
0x25232af24:  e8 a3 00 91   add	x8, sp, #0x28
0x25232af28:  32 9e fd 97   bl	0x2522927f0
0x25232af2c:  e8 a3 40 39   ldrb	w8, [sp, #0x28]
0x25232af30:  29 01 00 d0   adrp	x9, 0x252350000
0x25232af34:  29 d1 3d 91   add	x9, x9, #0xf74
0x25232af38:  22 79 68 b8   ldr	w2, [x9, x8, lsl #0x2]
0x25232af3c:  d4 8a 45 39   ldrb	w20, [x22, #0x162]
0x25232af40:  e0 03 18 aa   mov	x0, x24
0x25232af44:  c7 06 01 94   bl	_objc_msgSend$setBleScanRate:
0x25232af48:  9f 06 00 71   cmp	w20, #0x1
0x25232af4c:  8c 00 00 54   b.gt	loc_25232af5c ; ⤵ 0x10
0x25232af50:  14 01 00 35   cbnz	w20, loc_25232af70 ; ⤵ 0x20
0x25232af54:  a2 21 80 52   mov	w2, #0x10d
0x25232af58:  07 00 00 14   b	loc_25232af74 ; ⤵ 0x1c
0x25232af5c:  ; loc_25232af5c
0x25232af5c:  9f 0a 00 71   cmp	w20, #0x2
0x25232af60:  e1 00 00 54   b.ne	loc_25232af7c ; ⤵ 0x1c
0x25232af64:  22 00 80 52   mov	w2, #0x1
0x25232af68:  22 01 a0 72   movk	w2, #0x9, lsl #0x10
0x25232af6c:  02 00 00 14   b	loc_25232af74 ; ⤵ 0x8
0x25232af70:  ; loc_25232af70
0x25232af70:  22 01 a0 52   mov	w2, #0x90000
0x25232af74:  ; loc_25232af74
0x25232af74:  e0 03 18 aa   mov	x0, x24

