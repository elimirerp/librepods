004256c0 642f       cmp      r7, #0x64
004256c2 c5f858cf   str.w    ip, [r5, #0xf58]
004256c6 c5f84c6f   str.w    r6, [r5, #0xf4c]
004256ca cbf81810   str.w    r1, [fp, #0x18]
004256ce c5f87c90   str.w    sb, [r5, #0x7c]
004256d2 c5f87c5d   str.w    r5, [r5, #0xd7c]
004256d6 c5f85c5f   str.w    r5, [r5, #0xf5c]
004256da cbf80800   str.w    r0, [fp, #8]
004256de 06f6cc00   addw     r0, r6, #0x8cc
004256e2 c5f8143f   str.w    r3, [r5, #0xf14]
004256e6 c5f8684d   str.w    r4, [r5, #0xd68]
004256ea c5f8484f   str.w    r4, [r5, #0xf48]
004256ee cbf80c00   str.w    r0, [fp, #0xc]
004256f2 cbf80030   str.w    r3, [fp]
004256f6 caf80850   str.w    r5, [sl, #8]
004256fa 7c48       ldr      r0, [pc, #0x1f0] ; [0x4258ec]=0x10008860
004256fc 417a       ldrb     r1, [r0, #9]
004256fe 0131       adds     r1, #1
00425700 4172       strb     r1, [r0, #9]
00425702 fee1       b        #0x425b02
00425704 36f0ddfe   bl       #0x45c4c2
00425708 0121       movs     r1, #1
0042570a 93e1       b        #0x425a34
0042570c 4ff00311   mov.w    r1, #0x30003
00425710 c6f8da10   str.w    r1, [r6, #0xda]
00425714 0021       movs     r1, #0
00425716 90f8a820   ldrb.w   r2, [r0, #0xa8]
0042571a 4ff41653   mov.w    r3, #0x2580
0042571e 5a43       muls     r2, r3, r2
00425720 37f004fa   bl       #0x45cb2c
00425724 37f09efc   bl       #0x45d064
00425728 a6f8c401   strh.w   r0, [r6, #0x1c4]
0042572c faf7b0fe   bl       #0x420490
00425730 7060       str      r0, [r6, #4]
00425732 b6f8da00   ldrh.w   r0, [r6, #0xda]
00425736 f4f7cfff   bl       #0x41a6d8
0042573a 2c46       mov      r4, r5
0042573c 54f86c1f   ldr      r1, [r4, #0x6c]!
00425740 35f050ff   bl       #0x45b5e4
00425744 2060       str      r0, [r4]
00425746 41f2d840   movw     r0, #0x14d8
0042574a d9f80820   ldr.w    r2, [sb, #8]
0042574e d9f80c30   ldr.w    r3, [sb, #0xc]
00425752 2918       adds     r1, r5, r0
00425754 05f5b070   add.w    r0, r5, #0x160
00425758 22f0ff02   bic      r2, r2, #0xff
0042575c 06f0f6fa   bl       #0x42bd4c
00425760 c5f8644b   str.w    r4, [r5, #0xb64]
00425764 8221       movs     r1, #0x82
00425766 5e48       ldr      r0, [pc, #0x178] ; [0x4258e0]=0x426485
00425768 c5f86889   str.w    r8, [r5, #0x968]
0042576c c5f88449   str.w    r4, [r5, #0x984]
00425770 a5f8541b   strh.w   r1, [r5, #0xb54]
00425774 c5f8488b   str.w    r8, [r5, #0xb48]
00425778 c5f8240b   str.w    r0, [r5, #0xb24]
0042577c 05f1dc00   add.w    r0, r5, #0xdc
00425780 c5f87009   str.w    r0, [r5, #0x970]
00425784 c5f8500b   str.w    r0, [r5, #0xb50]
00425788 5648       ldr      r0, [pc, #0x158] ; [0x4258e4]=0x4264d1
0042578a caf80850   str.w    r5, [sl, #8]
0042578e c5f87c59   str.w    r5, [r5, #0x97c]
00425792 c5f85c5b   str.w    r5, [r5, #0xb5c]
00425796 c5f80c0d   str.w    r0, [r5, #0xd0c]
0042579a 0020       movs     r0, #0
0042579c 85f86400   strb.w   r0, [r5, #0x64]
004257a0 7068       ldr      r0, [r6, #4]
004257a2 00f6cc01   addw     r1, r0, #0x8cc
004257a6 00f50060   add.w    r0, r0, #0x800
004257aa c5f8001d   str.w    r1, [r5, #0xd00]
004257ae c5f8fc0c   str.w    r0, [r5, #0xcfc]
004257b2 a6e1       b        #0x425b02
004257b4 f649       ldr      r1, [pc, #0x3d8] ; [0x425b90]=0x40002018
004257b6 f74a       ldr      r2, [pc, #0x3dc] ; [0x425b94]=0x249f000
004257b8 36f099f9   bl       #0x45baee
004257bc f648       ldr      r0, [pc, #0x3d8] ; [0x425b98]=0x16e36000
004257be c5f840a0   str.w    sl, [r5, #0x40]
004257c2 a865       str      r0, [r5, #0x58]
004257c4 0121       movs     r1, #1
004257c6 0d22       movs     r2, #0xd
004257c8 b9f81000   ldrh.w   r0, [sb, #0x10]
004257cc 8bf87c18   strb.w   r1, [fp, #0x87c]
