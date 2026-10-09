00425a40 5a43       muls     r2, r3, r2
00425a42 0023       movs     r3, #0
00425a44 37f072f8   bl       #0x45cb2c
00425a48 0a22       movs     r2, #0xa
00425a4a 37f00bfb   bl       #0x45d064
00425a4e 4ff47a71   mov.w    r1, #0x3e8
00425a52 a6f89a01   strh.w   r0, [r6, #0x19a]
00425a56 baf8d000   ldrh.w   r0, [sl, #0xd0]
00425a5a 35f02dfe   bl       #0x45b6b8
00425a5e 6861       str      r0, [r5, #0x14]
00425a60 37f031fd   bl       #0x45d4c6
00425a64 04d1       bne      #0x425a70
00425a66 4a49       ldr      r1, [pc, #0x128] ; [0x425b90]=0x40002018
00425a68 4a4a       ldr      r2, [pc, #0x128] ; [0x425b94]=0x249f000
00425a6a 36f0fbfa   bl       #0x45c064
00425a6e 89b2       uxth     r1, r1
00425a70 37f06efa   bl       #0x45cf50
00425a74 7060       str      r0, [r6, #4]
00425a76 b6f8da00   ldrh.w   r0, [r6, #0xda]
00425a7a f4f72dfe   bl       #0x41a6d8
00425a7e 2c46       mov      r4, r5
00425a80 54f8641f   ldr      r1, [r4, #0x64]!
00425a84 35f0aefd   bl       #0x45b5e4
00425a88 2060       str      r0, [r4]
00425a8a 41f2d040   movw     r0, #0x14d0
00425a8e dbf80820   ldr.w    r2, [fp, #8]
00425a92 dbf80c30   ldr.w    r3, [fp, #0xc]
00425a96 2918       adds     r1, r5, r0
00425a98 05f5ac70   add.w    r0, r5, #0x158
00425a9c 22f0ff02   bic      r2, r2, #0xff
00425aa0 06f054f9   bl       #0x42bd4c
00425aa4 3d48       ldr      r0, [pc, #0xf4] ; [0x425b9c]=0x426485
00425aa6 8221       movs     r1, #0x82
00425aa8 c5f86089   str.w    r8, [r5, #0x960]
00425aac c5f87c49   str.w    r4, [r5, #0x97c]
00425ab0 c5f85c4b   str.w    r4, [r5, #0xb5c]
00425ab4 c5f8408b   str.w    r8, [r5, #0xb40]
00425ab8 a5f84c1b   strh.w   r1, [r5, #0xb4c]
00425abc c5f81c0b   str.w    r0, [r5, #0xb1c]
00425ac0 05f1d400   add.w    r0, r5, #0xd4
00425ac4 c5f86809   str.w    r0, [r5, #0x968]
00425ac8 c5f8480b   str.w    r0, [r5, #0xb48]
00425acc 3448       ldr      r0, [pc, #0xd0] ; [0x425ba0]=0x4264d1
00425ace 85f8       .byte    0x85, 0xf8
