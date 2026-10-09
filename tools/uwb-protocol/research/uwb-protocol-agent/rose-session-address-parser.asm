0040bcd0 0100       movs     r1, r0
0040bcd2 0080       strh     r0, [r0]
0040bcd4 08ed00e0   stc      p0, c14, [r8, #-0]
0040bcd8 5460       str      r4, [r2, #4]
0040bcda 0010       asrs     r0, r0, #0x20
0040bcdc 0014       asrs     r0, r0, #0x10
0040bcde 4600       lsls     r6, r0, #1
0040bce0 0229       cmp      r1, #2
0040bce2 02d1       bne      #0x40bcea
0040bce4 1348       ldr      r0, [pc, #0x4c] ; [0x40bd34]=0xe000ed24
0040bce6 0068       ldr      r0, [r0]
0040bce8 15e0       b        #0x40bd16
0040bcea 0020       movs     r0, #0
0040bcec 0f29       cmp      r1, #0xf
0040bcee 20d3       blo      #0x40bd32
0040bcf0 124a       ldr      r2, [pc, #0x48] ; [0x40bd3c]=0x10006054
0040bcf2 1268       ldr      r2, [r2]
0040bcf4 1032       adds     r2, #0x10
0040bcf6 9142       cmp      r1, r2
0040bcf8 1bd2       bhs      #0x40bd32
0040bcfa 0e48       ldr      r0, [pc, #0x38] ; [0x40bd34]=0xe000ed24
0040bcfc 0f29       cmp      r1, #0xf
0040bcfe 0068       ldr      r0, [r0]
0040bd00 04bf       itt      eq
0040bd02 c0f3c020   ubfxeq   r0, r0, #0xb, #1
0040bd06 7047       bxeq     lr
0040bd08 0e29       cmp      r1, #0xe
0040bd0a 04bf       itt      eq
0040bd0c c0f38020   ubfxeq   r0, r0, #0xa, #1
0040bd10 7047       bxeq     lr
0040bd12 0229       cmp      r1, #2
0040bd14 04d1       bne      #0x40bd20
0040bd16 eff30580   mrs      r0, ipsr
0040bd1a 0238       subs     r0, #2
0040bd1c 50f0f6b9   b.w      #0x45c10c
0040bd20 a1f11000   sub.w    r0, r1, #0x10
0040bd24 044a       ldr      r2, [pc, #0x10] ; [0x40bd38]=0xe000e300
0040bd26 7346       mov      r3, lr
0040bd28 51f008fa   bl       #0x45d13c
0040bd2c 9e46       mov      lr, r3
0040bd2e 00f00100   and      r0, r0, #1
0040bd32 7047       bx       lr
0040bd34 24ed00e0   stc      p0, c14, [r4, #-0]!
0040bd38 00e3       b        #0x40c33c
0040bd3a 00e0       b        #0x40bd3e
0040bd3c 5460       str      r4, [r2, #4]
0040bd3e 0010       asrs     r0, r0, #0x20
0040bd40 f0b5       push     {r4, r5, r6, r7, lr}
0040bd42 03af       add      r7, sp, #0xc
0040bd44 2de9800f   push.w   {r7, r8, sb, sl, fp}
0040bd48 684a       ldr      r2, [pc, #0x1a0] ; [0x40beec]=0x1003fb74
0040bd4a 0446       mov      r4, r0
0040bd4c 5068       ldr      r0, [r2, #4]
0040bd4e 0092       str      r2, [sp]
0040bd50 0130       adds     r0, #1
0040bd52 5060       str      r0, [r2, #4]
0040bd54 481e       subs     r0, r1, #1
0040bd56 0d28       cmp      r0, #0xd
0040bd58 0ad8       bhi      #0x40bd70
0040bd5a 82b2       uxth     r2, r0
0040bd5c 42f23f43   movw     r3, #0x243f
0040bd60 23fa02f2   lsr.w    r2, r3, r2
0040bd64 d207       lsls     r2, r2, #0x1f
0040bd66 03d0       beq      #0x40bd70
0040bd68 614a       ldr      r2, [pc, #0x184] ; [0x40bef0]=0x462c4c
0040bd6a 52f82080   ldr.w    r8, [r2, r0, lsl #2]
0040bd6e 05e0       b        #0x40bd7c
0040bd70 4ff00908   mov.w    r8, #9
0040bd74 0f29       cmp      r1, #0xf
0040bd76 88bf       it       hi
0040bd78 4ff00508   movhi.w  r8, #5
0040bd7c 5d48       ldr      r0, [pc, #0x174] ; [0x40bef4]=0x1003fd68
0040bd7e 4466       str      r4, [r0, #0x64]
0040bd80 14b1       cbz      r4, #0x40bd88
0040bd82 227e       ldrb     r2, [r4, #0x18]
0040bd84 d206       lsls     r2, r2, #0x1b
0040bd86 01d4       bmi      #0x40bd8c
0040bd88 e822       movs     r2, #0xe8
0040bd8a 00e0       b        #0x40bd8e
0040bd8c 6022       movs     r2, #0x60
0040bd8e 544e       ldr      r6, [pc, #0x150] ; [0x40bee0]=0xe000ed28
0040bd90 8266       str      r2, [r0, #0x68]
0040bd92 e160       str      r1, [r4, #0xc]
0040bd94 c0f86080   str.w    r8, [r0, #0x60]
0040bd98 eff31185   mrs      r5, basepri
0040bd9c 0022       movs     r2, #0
0040bd9e d6f810c0   ldr.w    ip, [r6, #0x10]
0040bda2 d6f800b0   ldr.w    fp, [r6]
0040bda6 eff31480   mrs      r0, control
0040bdaa d6f80890   ldr.w    sb, [r6, #8]
0040bdae eff31383   mrs      r3, faultmask
0040bdb2 d6f804a0   ldr.w    sl, [r6, #4]
0040bdb6 d6f80ce0   ldr.w    lr, [r6, #0xc]
0040bdba eff31086   mrs      r6, primask
0040bdbe 6060       str      r0, [r4, #4]
0040bdc0 2260       str      r2, [r4]
0040bdc2 2261       str      r2, [r4, #0x10]
0040bdc4 6261       str      r2, [r4, #0x14]
0040bdc6 06f00102   and      r2, r6, #1
0040bdca 2802       lsls     r0, r5, #8
0040bdcc 80b2       uxth     r0, r0
0040bdce 63f34100   bfi      r0, r3, #1, #1
0040bdd2 5c23       movs     r3, #0x5c
0040bdd4 1044       add      r0, r2
0040bdd6 a060       str      r0, [r4, #8]
0040bdd8 2046       mov      r0, r4
0040bdda 50f8182f   ldr      r2, [r0, #0x18]!
0040bdde 12f0100f   tst.w    r2, #0x10
0040bde2 4ff05402   mov.w    r2, #0x54
0040bde6 08bf       it       eq
0040bde8 9c23       moveq    r3, #0x9c
0040bdea 08bf       it       eq
0040bdec 9422       moveq    r2, #0x94
0040bdee a258       ldr      r2, [r4, r2]
0040bdf0 d206       lsls     r2, r2, #0x1b
0040bdf2 4ff04802   mov.w    r2, #0x48
0040bdf6 58bf       it       pl
0040bdf8 d022       movpl    r2, #0xd0
0040bdfa 1044       add      r0, r2
0040bdfc 0339       subs     r1, #3
0040bdfe e258       ldr      r2, [r4, r3]
