004250a0 c6f8ec10   str.w    r1, [r6, #0xec]
004250a4 3146       mov      r1, r6
004250a6 c6f8e800   str.w    r0, [r6, #0xe8]
004250aa 9af8ac00   ldrb.w   r0, [sl, #0xac]
004250ae 0028       cmp      r0, #0
004250b0 18bf       it       ne
004250b2 0120       movne    r0, #1
004250b4 86f8d700   strb.w   r0, [r6, #0xd7]
004250b8 9af8ad00   ldrb.w   r0, [sl, #0xad]
004250bc 86f8cd41   strb.w   r4, [r6, #0x1cd]
004250c0 0028       cmp      r0, #0
004250c2 18bf       it       ne
004250c4 0120       movne    r0, #1
004250c6 86f8cc01   strb.w   r0, [r6, #0x1cc]
004250ca baf8aa00   ldrh.w   r0, [sl, #0xaa]
004250ce f0f7a7fd   bl       #0x415c20
004250d2 05f17008   add.w    r8, r5, #0x70
004250d6 3188       ldrh     r1, [r6]
004250d8 4046       mov      r0, r8
004250da f4f765ff   bl       #0x419fa8
004250de 286c       ldr      r0, [r5, #0x40]
004250e0 4ff41063   mov.w    r3, #0x900
004250e4 0021       movs     r1, #0
004250e6 b0f89820   ldrh.w   r2, [r0, #0x98]
004250ea 2b66       str      r3, [r5, #0x60]
004250ec 86f8d810   strb.w   r1, [r6, #0xd8]
004250f0 a6f8d440   strh.w   r4, [r6, #0xd4]
004250f4 131f       subs     r3, r2, #4
004250f6 022b       cmp      r3, #2
004250f8 0ad3       blo      #0x425110
004250fa 032a       cmp      r2, #3
004250fc 00f00683   beq.w    #0x42570c
00425100 002a       cmp      r2, #0
00425102 40f00883   bne.w    #0x425716
00425106 c6f8da10   str.w    r1, [r6, #0xda]
0042510a 86f8d410   strb.w   r1, [r6, #0xd4]
0042510e 02e3       b        #0x425716
00425110 37f0d7f9   bl       #0x45c4c2
00425114 4ff49641   mov.w    r1, #0x4b00
00425118 2966       str      r1, [r5, #0x60]
0042511a 0121       movs     r1, #1
0042511c fbe2       b        #0x425716
0042511e 41f66810   movw     r0, #0x1968
00425122 01f08bfa   bl       #0x42663c
00425126 38f016fc   bl       #0x45d956
0042512a 0121       movs     r1, #1
0042512c 0d22       movs     r2, #0xd
0042512e 6148       ldr      r0, [pc, #0x184] ; [0x4252b4]=0x42c741
00425130 a863       str      r0, [r5, #0x38]
00425132 6148       ldr      r0, [pc, #0x184] ; [0x4252b8]=0x42c1e9
00425134 6863       str      r0, [r5, #0x34]
00425136 6148       ldr      r0, [pc, #0x184] ; [0x4252bc]=0x42c159
00425138 2863       str      r0, [r5, #0x30]
0042513a 6148       ldr      r0, [pc, #0x184] ; [0x4252c0]=0x42c125
0042513c e862       str      r0, [r5, #0x2c]
0042513e 6148       ldr      r0, [pc, #0x184] ; [0x4252c4]=0x42c101
00425140 a862       str      r0, [r5, #0x28]
00425142 6148       ldr      r0, [pc, #0x184] ; [0x4252c8]=0x42c0fd
00425144 6862       str      r0, [r5, #0x24]
00425146 6148       ldr      r0, [pc, #0x184] ; [0x4252cc]=0x42c079
00425148 2862       str      r0, [r5, #0x20]
0042514a 41f2d400   movw     r0, #0x10d4
0042514e 05eb000b   add.w    fp, r5, r0
00425152 b9f81000   ldrh.w   r0, [sb, #0x10]
00425156 8bf88c18   strb.w   r1, [fp, #0x88c]
0042515a 37f0b0fc   bl       #0x45cabe
0042515e abf81e08   strh.w   r0, [fp, #0x81e]
00425162 41f6d400   movw     r0, #0x18d4
00425166 2844       add      r0, r5
00425168 e1f7f2fb   bl       #0x406950
0042516c 36f04afe   bl       #0x45be04
00425170 05f16409   add.w    sb, r5, #0x64
00425174 37f0eff8   bl       #0x45c356
00425178 37f076f8   bl       #0x45c268
0042517c 9bf80208   ldrb.w   r0, [fp, #0x802]
00425180 b5f87620   ldrh.w   r2, [r5, #0x76]
00425184 9bf80918   ldrb.w   r1, [fp, #0x809]
00425188 40ea0240   orr.w    r0, r0, r2, lsl #16
0042518c 40ea0120   orr.w    r0, r0, r1, lsl #8
00425190 0bf2dc71   addw     r1, fp, #0x7dc
00425194 6867       str      r0, [r5, #0x74]
00425196 36f085fd   bl       #0x45bca4
0042519a 37f05cfb   bl       #0x45c856
0042519e 37f01bfe   bl       #0x45cdd8
004251a2 20b1       cbz      r0, #0x4251ae
004251a4 37f057f8   bl       #0x45c256
004251a8 2c6c       ldr      r4, [r5, #0x40]
004251aa b4f8a860   ldrh.w   r6, [r4, #0xa8]
004251ae 36f06dfb   bl       #0x45b88c
004251b2 88bf       it       hi
004251b4 0146       movhi    r1, r0
004251b6 2961       str      r1, [r5, #0x10]
004251b8 baf8d800   ldrh.w   r0, [sl, #0xd8]
004251bc 4ff47a71   mov.w    r1, #0x3e8
004251c0 0a22       movs     r2, #0xa
004251c2 0023       movs     r3, #0
004251c4 0024       movs     r4, #0
004251c6 36f077fa   bl       #0x45b6b8
004251ca 6861       str      r0, [r5, #0x14]
004251cc 36f07ffc   bl       #0x45bace
004251d0 04d1       bne      #0x4251dc
004251d2 3249       ldr      r1, [pc, #0xc8] ; [0x42529c]=0x40002018
004251d4 324a       ldr      r2, [pc, #0xc8] ; [0x4252a0]=0x249f000
004251d6 36f045ff   bl       #0x45c064
004251da 89b2       uxth     r1, r1
004251dc 37f0b8fe   bl       #0x45cf50
004251e0 37f09bfb   bl       #0x45c91a
004251e4 3049       ldr      r1, [pc, #0xc0] ; [0x4252a8]=0x426485
004251e6 05f1d002   add.w    r2, r5, #0xd0
004251ea 06f63803   addw     r3, r6, #0x838
004251ee c5f86091   str.w    sb, [r5, #0x160]
004251f2 c5f84093   str.w    sb, [r5, #0x340]
004251f6 c5f8f844   str.w    r4, [r5, #0x4f8]
004251fa a146       mov      sb, r4
004251fc 05f6cc44   addw     r4, r5, #0xccc
00425200 4ff0020c   mov.w    ip, #2
00425204 c5f8f434   str.w    r3, [r5, #0x4f4]
00425208 c5f86821   str.w    r2, [r5, #0x168]
0042520c c5f84823   str.w    r2, [r5, #0x348]
00425210 41f6d703   movw     r3, #0x18d7
00425214 c5f81c13   str.w    r1, [r5, #0x31c]
00425218 2b44       add      r3, r5
0042521a 8e46       mov      lr, r1
0042521c 234a       ldr      r2, [pc, #0x8c] ; [0x4252ac]=0x4264d1
0042521e c5f8644d   str.w    r4, [r5, #0xd64]
00425222 c5f8fc34   str.w    r3, [r5, #0x4fc]
00425226 c5f80425   str.w    r2, [r5, #0x504]
0042522a 294b       ldr      r3, [pc, #0xa4] ; [0x4252d0]=0x42c055
0042522c 9bf80018   ldrb.w   r1, [fp, #0x800]
00425230 c5f858cd   str.w    ip, [r5, #0xd58]
00425234 c5f8488d   str.w    r8, [r5, #0xd48]
00425238 c5f87451   str.w    r5, [r5, #0x174]
0042523c c5f85453   str.w    r5, [r5, #0x354]
00425240 c5f85c5d   str.w    r5, [r5, #0xd5c]
00425244 c5f8444f   str.w    r4, [r5, #0xf44]
00425248 c5f804ef   str.w    lr, [r5, #0xf04]
0042524c c5f84c6d   str.w    r6, [r5, #0xd4c]
00425250 c5f8288f   str.w    r8, [r5, #0xf28]
00425254 c5f838cf   str.w    ip, [r5, #0xf38]
00425258 c5f82c6f   str.w    r6, [r5, #0xf2c]
0042525c cbf81820   str.w    r2, [fp, #0x18]
00425260 c5f85c90   str.w    sb, [r5, #0x5c]
00425264 85f81013   strb.w   r1, [r5, #0x310]
00425268 d5f8cc1c   ldr.w    r1, [r5, #0xccc]
0042526c c5f8f43e   str.w    r3, [r5, #0xef4]
00425270 cbf80030   str.w    r3, [fp]
00425274 36f0b6f9   bl       #0x45b5e4
00425278 37f018f9   bl       #0x45c4ac
0042527c 29e3       b        #0x4258d2
0042527e 00bf       nop      
00425280 d5a5       adr      r5, #0x354
00425282 4200       lsls     r2, r0, #1
00425284 41a2       adr      r2, #0x104
00425286 4200       lsls     r2, r0, #1
00425288 45a1       adr      r1, #0x114
0042528a 4200       lsls     r2, r0, #1
0042528c 09a1       adr      r1, #0x24
0042528e 4200       lsls     r2, r0, #1
00425290 f5a0       adr      r0, #0x3d4
00425292 4200       lsls     r2, r0, #1
00425294 e1a0       adr      r0, #0x384
00425296 4200       lsls     r2, r0, #1
00425298 ed9f       ldr      r7, [sp, #0x3b4]
0042529a 4200       lsls     r2, r0, #1
0042529c 1820       movs     r0, #0x18
0042529e 0040       ands     r0, r0
004252a0 00f04902   and      r2, r0, #0x49
004252a4 0060       str      r0, [r0]
004252a6 e316       asrs     r3, r4, #0x1b
004252a8 8564       str      r5, [r0, #0x48]
004252aa 4200       lsls     r2, r0, #1
004252ac d164       str      r1, [r2, #0x4c]
004252ae 4200       lsls     r2, r0, #1
004252b0 1d86       strh     r5, [r3, #0x30]
004252b2 4200       lsls     r2, r0, #1
004252b4 41c7       stm      r7!, {r0, r6}
004252b6 4200       lsls     r2, r0, #1
004252b8 e9c1       stm      r1!, {r0, r3, r5, r6, r7}
004252ba 4200       lsls     r2, r0, #1
004252bc 59c1       stm      r1!, {r0, r3, r4, r6}
004252be 4200       lsls     r2, r0, #1
004252c0 25c1       stm      r1!, {r0, r2, r5}
004252c2 4200       lsls     r2, r0, #1
004252c4 01c1       stm      r1!, {r0}
004252c6 4200       lsls     r2, r0, #1
004252c8 fdc0       stm      r0!, {r0, r2, r3, r4, r5, r6, r7}
004252ca 4200       lsls     r2, r0, #1
004252cc 79c0       stm      r0!, {r0, r3, r4, r5, r6}
004252ce 4200       lsls     r2, r0, #1
004252d0 55c0       stm      r0!, {r0, r2, r4, r6}
004252d2 4200       lsls     r2, r0, #1
004252d4 41f65010   movw     r0, #0x1950
004252d8 01f0b0f9   bl       #0x42663c
004252dc 38f03bfb   bl       #0x45d956
004252e0 0121       movs     r1, #1
004252e2 0d22       movs     r2, #0xd
004252e4 af48       ldr      r0, [pc, #0x2bc] ; [0x4255a4]=0x42d975
004252e6 a863       str      r0, [r5, #0x38]
004252e8 af48       ldr      r0, [pc, #0x2bc] ; [0x4255a8]=0x42d631
004252ea 6863       str      r0, [r5, #0x34]
004252ec af48       ldr      r0, [pc, #0x2bc] ; [0x4255ac]=0x42d53d
004252ee 2863       str      r0, [r5, #0x30]
004252f0 af48       ldr      r0, [pc, #0x2bc] ; [0x4255b0]=0x42d509
004252f2 e862       str      r0, [r5, #0x2c]
004252f4 af48       ldr      r0, [pc, #0x2bc] ; [0x4255b4]=0x42d4f5
004252f6 a862       str      r0, [r5, #0x28]
004252f8 af48       ldr      r0, [pc, #0x2bc] ; [0x4255b8]=0x42d4f1
004252fa 6862       str      r0, [r5, #0x24]
004252fc af48       ldr      r0, [pc, #0x2bc] ; [0x4255bc]=0x42d46d
004252fe 2862       str      r0, [r5, #0x20]
00425300 41f2dc00   movw     r0, #0x10dc
00425304 2c18       adds     r4, r5, r0
00425306 b9f81000   ldrh.w   r0, [sb, #0x10]
0042530a 84f86c18   strb.w   r1, [r4, #0x86c]
0042530e 37f0d6fb   bl       #0x45cabe
00425312 a4f80208   strh.w   r0, [r4, #0x802]
00425316 05f5c650   add.w    r0, r5, #0x18c0
0042531a e1f719fb   bl       #0x406950
0042531e 36f071fd   bl       #0x45be04
00425322 05f16809   add.w    sb, r5, #0x68
00425326 37f016f8   bl       #0x45c356
0042532a 36f082ff   bl       #0x45c232
0042532e 94f8e607   ldrb.w   r0, [r4, #0x7e6]
00425332 b5f87a20   ldrh.w   r2, [r5, #0x7a]
00425336 94f8ed17   ldrb.w   r1, [r4, #0x7ed]
0042533a 40ea0240   orr.w    r0, r0, r2, lsl #16
0042533e 40ea0120   orr.w    r0, r0, r1, lsl #8
00425342 04f2d471   addw     r1, r4, #0x7d4
00425346 a867       str      r0, [r5, #0x78]
00425348 36f0acfc   bl       #0x45bca4
0042534c 05f54d68   add.w    r8, r5, #0xcd0
00425350 37f0a3ff   bl       #0x45d29a
00425354 37f03afd   bl       #0x45cdcc
00425358 20b1       cbz      r0, #0x425364
0042535a 36f061ff   bl       #0x45c220
0042535e 2e6c       ldr      r6, [r5, #0x40]
00425360 b6f8a8b0   ldrh.w   fp, [r6, #0xa8]
00425364 a4f8feb7   strh.w   fp, [r4, #0x7fe]
00425368 4ff41651   mov.w    r1, #0x2580
0042536c 0023       movs     r3, #0
0042536e 4ff0000b   mov.w    fp, #0
00425372 36f017fc   bl       #0x45bba4
00425376 4ff47a71   mov.w    r1, #0x3e8
0042537a 0a22       movs     r2, #0xa
0042537c 2865       str      r0, [r5, #0x50]
0042537e 2861       str      r0, [r5, #0x10]
00425380 baf8d800   ldrh.w   r0, [sl, #0xd8]
00425384 36f098f9   bl       #0x45b6b8
00425388 6861       str      r0, [r5, #0x14]
0042538a 36f0a0fb   bl       #0x45bace
0042538e 04d1       bne      #0x42539a
00425390 8b49       ldr      r1, [pc, #0x22c] ; [0x4255c0]=0x40002018
00425392 8c4a       ldr      r2, [pc, #0x230] ; [0x4255c4]=0x249f000
00425394 36f066fe   bl       #0x45c064
00425398 89b2       uxth     r1, r1
0042539a 37f0d9fd   bl       #0x45cf50
0042539e 37f0c3fa   bl       #0x45c928
004253a2 894a       ldr      r2, [pc, #0x224] ; [0x4255c8]=0x426485
004253a4 05f1d401   add.w    r1, r5, #0xd4
004253a8 06f63803   addw     r3, r6, #0x838
004253ac c5f86091   str.w    sb, [r5, #0x160]
004253b0 c5f8f8b4   str.w    fp, [r5, #0x4f8]
004253b4 c5f84093   str.w    sb, [r5, #0x340]
004253b8 c5f8f434   str.w    r3, [r5, #0x4f4]
004253bc c5f86811   str.w    r1, [r5, #0x168]
004253c0 c5f84813   str.w    r1, [r5, #0x348]
004253c4 05f6cc43   addw     r3, r5, #0xccc
004253c8 c5f81c23   str.w    r2, [r5, #0x31c]
004253cc 7f49       ldr      r1, [pc, #0x1fc] ; [0x4255cc]=0x4264d1
004253ce c5f8042f   str.w    r2, [r5, #0xf04]
004253d2 94f8e427   ldrb.w   r2, [r4, #0x7e4]
004253d6 c5f8643d   str.w    r3, [r5, #0xd64]
004253da c5f8443f   str.w    r3, [r5, #0xf44]
004253de c5f8488d   str.w    r8, [r5, #0xd48]
004253e2 c5f87451   str.w    r5, [r5, #0x174]
004253e6 c5f85453   str.w    r5, [r5, #0x354]
004253ea c5f85c5d   str.w    r5, [r5, #0xd5c]
004253ee c5f8288f   str.w    r8, [r5, #0xf28]
004253f2 c5f860b0   str.w    fp, [r5, #0x60]
004253f6 85f81023   strb.w   r2, [r5, #0x310]
004253fa d5f8cc2c   ldr.w    r2, [r5, #0xccc]
004253fe 8c46       mov      ip, r1
00425400 c5f80415   str.w    r1, [r5, #0x504]
00425404 41f6c301   movw     r1, #0x18c3
00425408 2944       add      r1, r5
0042540a c4f810c0   str.w    ip, [r4, #0x10]
0042540e 22f00b02   bic      r2, r2, #0xb
00425412 c5f8fc14   str.w    r1, [r5, #0x4fc]
00425416 0221       movs     r1, #2
00425418 0244       add      r2, r0
0042541a c5f8581d   str.w    r1, [r5, #0xd58]
0042541e c5f8381f   str.w    r1, [r5, #0xf38]
00425422 36f088fa   bl       #0x45b936
00425426 c5f8cc0c   str.w    r0, [r5, #0xccc]
0042542a 38f020f8   bl       #0x45d46e
0042542e 50e2       b        #0x4258d2
