0x1007e98c0:  e0 2b 40 f9   ldr	x0, [sp, #0x50]
0x1007e98c4:  b7 88 36 94   bl	j__swift_task_dealloc
0x1007e98c8:  e0 2f 40 f9   ldr	x0, [sp, #0x58]
0x1007e98cc:  b5 88 36 94   bl	j__swift_task_dealloc
0x1007e98d0:  e0 33 40 f9   ldr	x0, [sp, #0x60]
0x1007e98d4:  b3 88 36 94   bl	j__swift_task_dealloc
0x1007e98d8:  e0 37 40 f9   ldr	x0, [sp, #0x68]
0x1007e98dc:  b1 88 36 94   bl	j__swift_task_dealloc
0x1007e98e0:  e0 3b 40 f9   ldr	x0, [sp, #0x70]
0x1007e98e4:  af 88 36 94   bl	j__swift_task_dealloc
0x1007e98e8:  e0 3f 40 f9   ldr	x0, [sp, #0x78]
0x1007e98ec:  ad 88 36 94   bl	j__swift_task_dealloc
0x1007e98f0:  e0 43 40 f9   ldr	x0, [sp, #0x80]
0x1007e98f4:  ab 88 36 94   bl	j__swift_task_dealloc
0x1007e98f8:  e0 47 40 f9   ldr	x0, [sp, #0x88]
0x1007e98fc:  a9 88 36 94   bl	j__swift_task_dealloc
0x1007e9900:  a0 83 57 f8   ldur	x0, [fp, #-0x88]
0x1007e9904:  a7 88 36 94   bl	j__swift_task_dealloc
0x1007e9908:  a0 03 58 f8   ldur	x0, [fp, #-0x80]
0x1007e990c:  a5 88 36 94   bl	j__swift_task_dealloc
0x1007e9910:  e3 03 16 aa   mov	x3, x22
0x1007e9914:  64 8c 40 f8   ldr	x4, [x3, #0x8]!
0x1007e9918:  e0 4b 40 f9   ldr	x0, [sp, #0x90]
0x1007e991c:  a1 83 58 f8   ldur	x1, [fp, #-0x78]
0x1007e9920:  a2 03 59 b8   ldur	w2, [fp, #-0x70]
0x1007e9924:  14 00 80 d2   mov	x20, #0
0x1007e9928:  fd 7b 52 a9   ldp	fp, lr, [sp, #0x120]
0x1007e992c:  f5 cf 50 a9   ldp	x21, x19, [sp, #0x108]
0x1007e9930:  f8 df 4f a9   ldp	x24, x23, [sp, #0xf8]
0x1007e9934:  fa e7 4e a9   ldp	x26, x25, [sp, #0xe8]
0x1007e9938:  fc ef 4d a9   ldp	x28, x27, [sp, #0xd8]
0x1007e993c:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x1007e9940:  ff c3 04 91   add	sp, sp, #0x130
0x1007e9944:  ff 23 03 d5   autibsp
0x1007e9948:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1007e994c:  50 00 f0 b6   tbz	x16, #0x3e, loc_1007e9954 ; ⤵ 0x8
0x1007e9950:  20 8e 38 d4   brk	#0xc471
0x1007e9954:  ; loc_1007e9954
0x1007e9954:  f0 03 03 aa   mov	x16, x3
0x1007e9958:  f0 e0 fa f2   movk	x16, #0xd707, lsl #0x30
0x1007e995c:  90 08 1f d7   braa	x4, x16
0x1007e9960:  f8 5f 05 a9   stp	x24, x23, [sp, #0x50]
0x1007e9964:  fb 27 00 f9   str	x27, [sp, #0x48]
0x1007e9968:  ca f2 41 f9   ldr	x10, [x22, #0x3e0]
0x1007e996c:  c8 de 41 f9   ldr	x8, [x22, #0x3b8]
0x1007e9970:  c9 c6 41 f9   ldr	x9, [x22, #0x388]
0x1007e9974:  e9 ab 07 a9   stp	x9, x10, [sp, #0x78]
0x1007e9978:  ca c2 41 f9   ldr	x10, [x22, #0x380]
0x1007e997c:  a0 87 39 a9   stp	x0, x1, [fp, #-0x68]
0x1007e9980:  09 41 00 91   add	x9, x8, #0x10
0x1007e9984:  e9 ab 06 a9   stp	x9, x10, [sp, #0x68]
0x1007e9988:  08 21 00 91   add	x8, x8, #0x8
0x1007e998c:  e8 33 00 f9   str	x8, [sp, #0x60]
0x1007e9990:  d4 3a 41 f9   ldr	x20, [x22, #0x270]
0x1007e9994:  fc 84 00 b0   adrp	x28, 0x101886000
0x1007e9998:  9c 73 47 f9   ldr	x28, [x28, #0xee0] ; __got.__swiftEmptyArrayStorage
0x1007e999c:  85 85 36 94   bl	j___objc_autoreleasePoolPush
0x1007e99a0:  f3 03 00 aa   mov	x19, x0
0x1007e99a4:  ba ef 79 a9   ldp	x26, x27, [fp, #-0x68]
0x1007e99a8:  e0 03 1a aa   mov	x0, x26
0x1007e99ac:  e1 03 1b aa   mov	x1, x27
0x1007e99b0:  11 bd e0 97   bl	0x100018df4
0x1007e99b4:  c8 02 01 91   add	x8, x22, #0x40
0x1007e99b8:  a7 a3 01 d1   sub	x7, fp, #0x68
0x1007e99bc:  a0 07 78 a9   ldp	x0, x1, [fp, #-0x80]
0x1007e99c0:  e2 47 40 f9   ldr	x2, [sp, #0x88]
0x1007e99c4:  a3 83 57 f8   ldur	x3, [fp, #-0x88]
0x1007e99c8:  e4 03 1a aa   mov	x4, x26
0x1007e99cc:  e5 03 1b aa   mov	x5, x27
0x1007e99d0:  26 00 80 52   mov	w6, #0x1
0x1007e99d4:  15 00 80 d2   mov	x21, #0
0x1007e99d8:  ef 0b 0e 94   bl	0x100b6c994
0x1007e99dc:  35 29 00 b5   cbnz	x21, loc_1007e9f00 ; ⤵ 0x524
0x1007e99e0:  b3 03 19 f8   stur	x19, [fp, #-0x70]
0x1007e99e4:  d8 fa 41 f9   ldr	x24, [x22, #0x3f0]
0x1007e99e8:  d5 ea 41 f9   ldr	x21, [x22, #0x3d0]
0x1007e99ec:  d9 da 41 f9   ldr	x25, [x22, #0x3b0]
0x1007e99f0:  fc 4b 00 f9   str	x28, [sp, #0x90]
0x1007e99f4:  dc d6 41 f9   ldr	x28, [x22, #0x3a8]
0x1007e99f8:  d7 d2 41 f9   ldr	x23, [x22, #0x3a0]
0x1007e99fc:  d3 e6 52 39   ldrb	w19, [x22, #0x4b9]
0x1007e9a00:  e0 03 1a aa   mov	x0, x26
0x1007e9a04:  e1 03 1b aa   mov	x1, x27
0x1007e9a08:  66 b5 e0 97   bl	0x100016fa0
0x1007e9a0c:  e8 43 40 f9   ldr	x8, [sp, #0x80]
0x1007e9a10:  1a 21 80 b9   ldrsw	x26, [x8, #0x20]
0x1007e9a14:  e0 03 13 aa   mov	x0, x19
0x1007e9a18:  a7 13 00 94   bl	0x1007ee8b4
0x1007e9a1c:  e2 03 00 aa   mov	x2, x0
0x1007e9a20:  00 03 1a 8b   add	x0, x24, x26
0x1007e9a24:  e8 03 15 aa   mov	x8, x21
0x1007e9a28:  e1 03 14 aa   mov	x1, x20
0x1007e9a2c:  49 e5 05 94   bl	0x100962f50
0x1007e9a30:  ea cf 46 a9   ldp	x10, x19, [sp, #0x68]
0x1007e9a34:  68 16 80 b9   ldrsw	x8, [x19, #0x14]
0x1007e9a38:  49 01 40 f9   ldr	x9, [x10]
0x1007e9a3c:  80 03 08 8b   add	x0, x28, x8
0x1007e9a40:  e1 03 15 aa   mov	x1, x21
0x1007e9a44:  e2 03 19 aa   mov	x2, x25
0x1007e9a48:  f1 03 0a aa   mov	x17, x10
0x1007e9a4c:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x1007e9a50:  31 09 3f d7   blraa	x9, x17
0x1007e9a54:  94 03 00 f9   str	x20, [x28]
0x1007e9a58:  68 1a 80 b9   ldrsw	x8, [x19, #0x18]
0x1007e9a5c:  88 03 08 8b   add	x8, x28, x8
0x1007e9a60:  c1 82 42 ad   ldp	q1, q0, [x22, #0x50]
0x1007e9a64:  c2 02 c4 3c   ldur	q2, [x22, #0x40]
0x1007e9a68:  02 05 00 ad   stp	q2, q1, [x8]
0x1007e9a6c:  00 09 80 3d   str	q0, [x8, #0x20]
0x1007e9a70:  e0 03 1c aa   mov	x0, x28
0x1007e9a74:  fc 4b 40 f9   ldr	x28, [sp, #0x90]
0x1007e9a78:  e1 03 17 aa   mov	x1, x23
0x1007e9a7c:  03 1b 00 94   bl	0x1007f0688
0x1007e9a80:  e0 03 1c aa   mov	x0, x28
0x1007e9a84:  f7 87 36 94   bl	j__swift_isUniquelyReferenced_nonNull_native
0x1007e9a88:  c0 05 00 36   tbz	w0, #0, loc_1007e9b40 ; ⤵ 0xb8
0x1007e9a8c:  9a 23 41 a9   ldp	x26, x8, [x28, #0x10]
0x1007e9a90:  55 07 00 91   add	x21, x26, #0x1
0x1007e9a94:  5f 07 48 eb   cmp	x26, x8, lsr #0x1
0x1007e9a98:  42 06 00 54   b.hs	loc_1007e9b60 ; ⤵ 0xc8
0x1007e9a9c:  d3 ea 41 f9   ldr	x19, [x22, #0x3d0]
0x1007e9aa0:  d7 da 41 f9   ldr	x23, [x22, #0x3b0]
0x1007e9aa4:  c0 d6 41 f9   ldr	x0, [x22, #0x3a8]
0x1007e9aa8:  d9 d2 41 f9   ldr	x25, [x22, #0x3a0]
0x1007e9aac:  f0 4a 00 d0   adrp	x16, 0x101147000
0x1007e9ab0:  10 82 00 91   add	x16, x16, #0x20
0x1007e9ab4:  91 36 8a d2   mov	x17, #0x51b4
0x1007e9ab8:  30 02 c1 da   pacia	x16, x17
0x1007e9abc:  e1 03 10 aa   mov	x1, x16
0x1007e9ac0:  ca 1d 00 94   bl	0x1007f11e8
0x1007e9ac4:  e9 33 40 f9   ldr	x9, [sp, #0x60]
0x1007e9ac8:  28 01 40 f9   ldr	x8, [x9]
0x1007e9acc:  e0 03 13 aa   mov	x0, x19
0x1007e9ad0:  e1 03 17 aa   mov	x1, x23
0x1007e9ad4:  f1 03 09 aa   mov	x17, x9
0x1007e9ad8:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x1007e9adc:  11 09 3f d7   blraa	x8, x17
0x1007e9ae0:  95 0b 00 f9   str	x21, [x28, #0x10]
0x1007e9ae4:  ea 3f 40 f9   ldr	x10, [sp, #0x78]
0x1007e9ae8:  48 41 41 39   ldrb	w8, [x10, #0x50]
0x1007e9aec:  09 81 00 91   add	x9, x8, #0x20

