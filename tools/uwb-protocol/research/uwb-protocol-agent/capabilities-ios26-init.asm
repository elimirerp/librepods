0x19cb9088c:  7f 23 03 d5   pacibsp
0x19cb90890:  ff c3 01 d1   sub	sp, sp, #0x70
0x19cb90894:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x19cb90898:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x19cb9089c:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x19cb908a0:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x19cb908a4:  fd 83 01 91   add	fp, sp, #0x60
0x19cb908a8:  f3 03 02 aa   mov	x19, x2
0x19cb908ac:  f4 03 00 aa   mov	x20, x0
0x19cb908b0:  88 8c 24 d0   adrp	x8, 0x1e5d22000
0x19cb908b4:  08 85 43 f9   ldr	x8, [x8, #0x708]
0x19cb908b8:  08 01 40 f9   ldr	x8, [x8]
0x19cb908bc:  e8 17 00 f9   str	x8, [sp, #0x28]
0x19cb908c0:  e0 03 02 aa   mov	x0, x2
0x19cb908c4:  37 17 07 94   bl	0x19cd565a0
0x19cb908c8:  1f 10 00 f1   cmp	x0, #0x4
0x19cb908cc:  21 03 00 54   b.ne	0x19cb90930
0x19cb908d0:  e0 03 13 aa   mov	x0, x19
0x19cb908d4:  b3 fd 06 94   bl	0x19cd4ffa0
0x19cb908d8:  05 00 40 b9   ldr	w5, [x0]
0x19cb908dc:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x19cb908e0:  89 8c 24 d0   adrp	x9, 0x1e5d22000
0x19cb908e4:  29 85 43 f9   ldr	x9, [x9, #0x708]
0x19cb908e8:  29 01 40 f9   ldr	x9, [x9]
0x19cb908ec:  3f 01 08 eb   cmp	x9, x8
0x19cb908f0:  01 0e 00 54   b.ne	0x19cb90ab0
0x19cb908f4:  a3 04 01 53   ubfx	w3, w5, #0x1, #0x1
0x19cb908f8:  a4 08 02 53   ubfx	w4, w5, #0x2, #0x1
0x19cb908fc:  a6 0c 03 53   ubfx	w6, w5, #0x3, #0x1
0x19cb90900:  a2 00 00 12   and	w2, w5, #0x1
0x19cb90904:  e0 03 14 aa   mov	x0, x20
0x19cb90908:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x19cb9090c:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x19cb90910:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x19cb90914:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x19cb90918:  ff c3 01 91   add	sp, sp, #0x70
0x19cb9091c:  ff 23 03 d5   autibsp
0x19cb90920:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x19cb90924:  50 00 f0 b6   tbz	x16, #0x3e, 0x19cb9092c

