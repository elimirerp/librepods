0003d160 0446       mov      r4, r0
0003d162 0028       cmp      r0, #0
0003d164 6cd1       bne      #0x3d240
0003d166 2b79       ldrb     r3, [r5, #4]
0003d168 564a       ldr      r2, [pc, #0x158] ; [0x3d2c4]=0x5dbe7 'VS UUID FindMy Char addition index: %d'
0003d16a dff87091   ldr.w    sb, [pc, #0x170] ; [0x3d2dc]=0xffffd700
0003d16e 0221       movs     r1, #2
0003d170 1c20       movs     r0, #0x1c
0003d172 f9f7dbfc   bl       #0x36b2c
0003d176 2146       mov      r1, r4
0003d178 2022       movs     r2, #0x20
0003d17a 3046       mov      r0, r6
0003d17c 07f089fa   bl       #0x44692
0003d180 2b79       ldrb     r3, [r5, #4]
0003d182 8df8aa30   strb.w   r3, [sp, #0xaa]
0003d186 4ff0f413   mov.w    r3, #0xf400f4
0003d18a 2b93       str      r3, [sp, #0xac]
0003d18c bdf8b430   ldrh.w   r3, [sp, #0xb4]
0003d190 a88a       ldrh     r0, [r5, #0x14]
0003d192 0122       movs     r2, #1
0003d194 03ea0903   and.w    r3, r3, sb
0003d198 42f60107   movw     r7, #0x2801
0003d19c adf8a820   strh.w   r2, [sp, #0xa8]
0003d1a0 3b43       orrs     r3, r7
0003d1a2 8df8b820   strb.w   r2, [sp, #0xb8]
0003d1a6 40f2022a   movw     sl, #0x202
0003d1aa 474a       ldr      r2, [pc, #0x11c] ; [0x3d2c8]=0x20014a3e
0003d1ac adf8baa0   strh.w   sl, [sp, #0xba]
0003d1b0 3146       mov      r1, r6
0003d1b2 adf8b430   strh.w   r3, [sp, #0xb4]
0003d1b6 eef7d4ff   bl       #0x2c162
0003d1ba 0446       mov      r4, r0
0003d1bc 0028       cmp      r0, #0
0003d1be 3fd1       bne      #0x3d240
0003d1c0 0146       mov      r1, r0
0003d1c2 2022       movs     r2, #0x20
0003d1c4 3046       mov      r0, r6
0003d1c6 07f064fa   bl       #0x44692
0003d1ca 0223       movs     r3, #2
0003d1cc adf8a830   strh.w   r3, [sp, #0xa8]
0003d1d0 2b79       ldrb     r3, [r5, #4]
0003d1d2 8df8aa30   strb.w   r3, [sp, #0xaa]
0003d1d6 4ff00b13   mov.w    r3, #0xb000b
0003d1da 2b93       str      r3, [sp, #0xac]
0003d1dc bdf8b430   ldrh.w   r3, [sp, #0xb4]
0003d1e0 3a4a       ldr      r2, [pc, #0xe8] ; [0x3d2cc]=0x20014a46
0003d1e2 a88a       ldrh     r0, [r5, #0x14]
0003d1e4 adf8baa0   strh.w   sl, [sp, #0xba]
0003d1e8 03ea0903   and.w    r3, r3, sb
0003d1ec 3b43       orrs     r3, r7
0003d1ee 3146       mov      r1, r6
0003d1f0 adf8b430   strh.w   r3, [sp, #0xb4]
0003d1f4 eef7b5ff   bl       #0x2c162
0003d1f8 0446       mov      r4, r0
0003d1fa 08bb       cbnz     r0, #0x3d240
0003d1fc 2b68       ldr      r3, [r5]
0003d1fe 93f84430   ldrb.w   r3, [r3, #0x44]
0003d202 0bb3       cbz      r3, #0x3d248
0003d204 2022       movs     r2, #0x20
0003d206 0021       movs     r1, #0
0003d208 3046       mov      r0, r6
0003d20a 07f042fa   bl       #0x44692
0003d20e 0423       movs     r3, #4
0003d210 adf8a830   strh.w   r3, [sp, #0xa8]
0003d214 2b79       ldrb     r3, [r5, #4]
0003d216 8df8aa30   strb.w   r3, [sp, #0xaa]
0003d21a 4ff09413   mov.w    r3, #0x940094
0003d21e 2b93       str      r3, [sp, #0xac]
0003d220 2b4a       ldr      r2, [pc, #0xac] ; [0x3d2d0]=0x20014a56
0003d222 a88a       ldrh     r0, [r5, #0x14]
0003d224 40f20113   movw     r3, #0x101
0003d228 42f60107   movw     r7, #0x2801
0003d22c 3146       mov      r1, r6
0003d22e adf8ba30   strh.w   r3, [sp, #0xba]
0003d232 adf8b470   strh.w   r7, [sp, #0xb4]
0003d236 eef794ff   bl       #0x2c162
0003d23a 0446       mov      r4, r0
0003d23c 0028       cmp      r0, #0
0003d23e 4fd0       beq      #0x3d2e0
0003d240 2046       mov      r0, r4
0003d242 eaf7b9ff   bl       #0x281b8
0003d246 0ae1       b        #0x3d45e
0003d248 0146       mov      r1, r0
0003d24a 2022       movs     r2, #0x20
0003d24c 3046       mov      r0, r6
0003d24e 95f804b0   ldrb.w   fp, [r5, #4]
0003d252 b5f814a0   ldrh.w   sl, [r5, #0x14]
0003d256 07f01cfa   bl       #0x44692
0003d25a 0323       movs     r3, #3
0003d25c adf8a830   strh.w   r3, [sp, #0xa8]
0003d260 4ff00713   mov.w    r3, #0x70007
0003d264 2b93       str      r3, [sp, #0xac]
0003d266 40f20113   movw     r3, #0x101
0003d26a adf8ba30   strh.w   r3, [sp, #0xba]
0003d26e bdf8b430   ldrh.w   r3, [sp, #0xb4]
0003d272 184a       ldr      r2, [pc, #0x60] ; [0x3d2d4]=0x20014a4e
0003d274 8df8aab0   strb.w   fp, [sp, #0xaa]
0003d278 03ea0909   and.w    sb, r3, sb
0003d27c 47ea0907   orr.w    r7, r7, sb
0003d280 3146       mov      r1, r6
0003d282 5046       mov      r0, sl
0003d284 adf8b470   strh.w   r7, [sp, #0xb4]
0003d288 eef76bff   bl       #0x2c162
0003d28c 0446       mov      r4, r0
0003d28e 0028       cmp      r0, #0
0003d290 b8d0       beq      #0x3d204
0003d292 d5e7       b        #0x3d240
0003d294 284a       ldr      r2, [pc, #0xa0] ; [0x3d338]=0x201c2102
0003d296 0120       movs     r0, #1
0003d298 a8db       blt      #0x3d1ec
0003d29a 0500       movs     r5, r0
0003d29c 11cd       ldm      r5!, {r0, r4}
0003d29e 0300       movs     r3, r0
0003d2a0 044a       ldr      r2, [pc, #0x10] ; [0x3d2b4]=0x5dbc4 'TPS added'
0003d2a2 0120       movs     r0, #1
0003d2a4 104a       ldr      r2, [pc, #0x40] ; [0x3d2e8]=0x46302220
0003d2a6 0120       movs     r0, #1
0003d2a8 59c8       ldm      r0, {r0, r3, r4, r6}
0003d2aa 0300       movs     r3, r0
0003d2ac badb       blt      #0x3d224
0003d2ae 0500       movs     r5, r0
0003d2b0 1c4a       ldr      r2, [pc, #0x70] ; [0x3d324]=0x4604ff1e
0003d2b2 0120       movs     r0, #1
0003d2b4 c4db       blt      #0x3d240
0003d2b6 0500       movs     r5, r0
0003d2b8 3c4a       ldr      r2, [pc, #0xf0] ; [0x3d3ac]=0x68180710
0003d2ba 0120       movs     r0, #1
0003d2bc cedb       blt      #0x3d25c
0003d2be 0500       movs     r5, r0
0003d2c0 2c4a       ldr      r2, [pc, #0xb0] ; [0x3d374]=0x4a407aeb
0003d2c2 0120       movs     r0, #1
0003d2c4 e7db       blt      #0x3d296
0003d2c6 0500       movs     r5, r0
0003d2c8 3e4a       ldr      r2, [pc, #0xf8] ; [0x3d3c4]=0x4604fca3
0003d2ca 0120       movs     r0, #1
0003d2cc 464a       ldr      r2, [pc, #0x118] ; [0x3d3e8]=0xf04f30aa
0003d2ce 0120       movs     r0, #1
0003d2d0 564a       ldr      r2, [pc, #0x158] ; [0x3d42c]=0x46394a19
0003d2d2 0120       movs     r0, #1
0003d2d4 4e4a       ldr      r2, [pc, #0x138] ; [0x3d410]=0x4631433b
0003d2d6 0120       movs     r0, #1
0003d2d8 52dd       ble      #0x3d380
0003d2da 0500       movs     r5, r0
0003d2dc 00d7       bvc      #0x3d2e0
0003d2de ffff2b68   vtbl.8   d22, {d15}, d27
0003d2e2 1b6c       ldr      r3, [r3, #0x40]
0003d2e4 13b3       cbz      r3, #0x3d32c
0003d2e6 0146       mov      r1, r0
0003d2e8 2022       movs     r2, #0x20
0003d2ea 3046       mov      r0, r6
0003d2ec 07f0d1f9   bl       #0x44692
0003d2f0 0623       movs     r3, #6
0003d2f2 adf8a830   strh.w   r3, [sp, #0xa8]
0003d2f6 2b79       ldrb     r3, [r5, #4]
0003d2f8 8df8aa30   strb.w   r3, [sp, #0xaa]
0003d2fc 4ff01813   mov.w    r3, #0x180018
0003d300 2b93       str      r3, [sp, #0xac]
0003d302 4ff48173   mov.w    r3, #0x102
0003d306 adf8ba30   strh.w   r3, [sp, #0xba]
0003d30a bdf8b430   ldrh.w   r3, [sp, #0xb4]
0003d30e 554a       ldr      r2, [pc, #0x154] ; [0x3d464]=0x20014a66
0003d310 a88a       ldrh     r0, [r5, #0x14]
0003d312 23f42353   bic      r3, r3, #0x28c0
0003d316 23f03f03   bic      r3, r3, #0x3f
0003d31a 1f43       orrs     r7, r3
0003d31c 3146       mov      r1, r6
0003d31e adf8b470   strh.w   r7, [sp, #0xb4]
0003d322 eef71eff   bl       #0x2c162
0003d326 0446       mov      r4, r0
0003d328 0028       cmp      r0, #0
0003d32a 89d1       bne      #0x3d240
0003d32c 4e4a       ldr      r2, [pc, #0x138] ; [0x3d468]=0x5dc0e 'Added App FindMy Char'
0003d32e 0221       movs     r1, #2
0003d330 1c20       movs     r0, #0x1c
0003d332 f9f7fbfb   bl       #0x36b2c
0003d336 4d4a       ldr      r2, [pc, #0x134] ; [0x3d46c]=0x5dc24 'FMNS added'
0003d338 0221       movs     r1, #2
0003d33a 1c20       movs     r0, #0x1c
0003d33c f9f7f6fb   bl       #0x36b2c
0003d340 2b68       ldr      r3, [r5]
0003d342 93f84430   ldrb.w   r3, [r3, #0x44]
0003d346 002b       cmp      r3, #0
0003d348 00f0ac80   beq.w    #0x3d4a4
0003d34c 484b       ldr      r3, [pc, #0x120] ; [0x3d470]=0x5dda6
0003d34e 12ac       add      r4, sp, #0x48
0003d350 03f11007   add.w    r7, r3, #0x10
0003d354 1868       ldr      r0, [r3]
0003d356 5968       ldr      r1, [r3, #4]
0003d358 2246       mov      r2, r4
0003d35a 03c2       stm      r2!, {r0, r1}
0003d35c 0833       adds     r3, #8
0003d35e bb42       cmp      r3, r7
0003d360 1446       mov      r4, r2
0003d362 f7d1       bne      #0x3d354
0003d364 4349       ldr      r1, [pc, #0x10c] ; [0x3d474]=0x20014a33
0003d366 12a8       add      r0, sp, #0x48
0003d368 fff7d0fc   bl       #0x3cd0c
0003d36c 0446       mov      r4, r0
0003d36e 0028       cmp      r0, #0
0003d370 7ff466af   bne.w    #0x3d240
0003d374 eb7a       ldrb     r3, [r5, #0xb]
0003d376 404a       ldr      r2, [pc, #0x100] ; [0x3d478]=0x5dc2f 'VS UUID POSH Service addition index: %d'
0003d378 0221       movs     r1, #2
0003d37a 1c20       movs     r0, #0x1c
0003d37c f9f7d6fb   bl       #0x36b2c
0003d380 eb7a       ldrb     r3, [r5, #0xb]
0003d382 3e4a       ldr      r2, [pc, #0xf8] ; [0x3d47c]=0x20014acc
0003d384 8df83a30   strb.w   r3, [sp, #0x3a]
0003d388 0120       movs     r0, #1
0003d38a 0ea9       add      r1, sp, #0x38
0003d38c adf83800   strh.w   r0, [sp, #0x38]
0003d390 fff7bafc   bl       #0x3cd08
0003d394 0446       mov      r4, r0
0003d396 0028       cmp      r0, #0
0003d398 7ff452af   bne.w    #0x3d240
0003d39c 384a       ldr      r2, [pc, #0xe0] ; [0x3d480]=0x5dc57 'Added App POSH Service'
0003d39e 0221       movs     r1, #2
0003d3a0 1c20       movs     r0, #0x1c
0003d3a2 f9f7c3fb   bl       #0x36b2c
0003d3a6 374b       ldr      r3, [pc, #0xdc] ; [0x3d484]=0x5ddb6
0003d3a8 1aac       add      r4, sp, #0x68
0003d3aa 03f11007   add.w    r7, r3, #0x10
0003d3ae 1868       ldr      r0, [r3]
0003d3b0 5968       ldr      r1, [r3, #4]
0003d3b2 2246       mov      r2, r4
0003d3b4 03c2       stm      r2!, {r0, r1}
0003d3b6 0833       adds     r3, #8
0003d3b8 bb42       cmp      r3, r7
0003d3ba 1446       mov      r4, r2
0003d3bc f7d1       bne      #0x3d3ae
0003d3be 3249       ldr      r1, [pc, #0xc8] ; [0x3d488]=0x20014a34
0003d3c0 1aa8       add      r0, sp, #0x68
0003d3c2 fff7a3fc   bl       #0x3cd0c
0003d3c6 0446       mov      r4, r0
0003d3c8 0028       cmp      r0, #0
0003d3ca 7ff439af   bne.w    #0x3d240
0003d3ce 2b7b       ldrb     r3, [r5, #0xc]
0003d3d0 2e4a       ldr      r2, [pc, #0xb8] ; [0x3d48c]=0x5dc6e 'VS UUID POSH Char addition index: %d'
0003d3d2 0221       movs     r1, #2
0003d3d4 1c20       movs     r0, #0x1c
0003d3d6 f9f7a9fb   bl       #0x36b2c
0003d3da 2146       mov      r1, r4
0003d3dc 2022       movs     r2, #0x20
0003d3de 3046       mov      r0, r6
0003d3e0 07f057f9   bl       #0x44692
0003d3e4 2b7b       ldrb     r3, [r5, #0xc]
0003d3e6 8df8aa30   strb.w   r3, [sp, #0xaa]
0003d3ea 4ff09313   mov.w    r3, #0x930093
0003d3ee 2b93       str      r3, [sp, #0xac]
0003d3f0 40f20113   movw     r3, #0x101
0003d3f4 adf8ba30   strh.w   r3, [sp, #0xba]
0003d3f8 bdf8b430   ldrh.w   r3, [sp, #0xb4]
0003d3fc 244a       ldr      r2, [pc, #0x90] ; [0x3d490]=0x20014ace
0003d3fe b5f8a400   ldrh.w   r0, [r5, #0xa4]
0003d402 23f42353   bic      r3, r3, #0x28c0
0003d406 23f03f03   bic      r3, r3, #0x3f
0003d40a 0127       movs     r7, #1
0003d40c 43f42053   orr      r3, r3, #0x2800
0003d410 3b43       orrs     r3, r7
0003d412 3146       mov      r1, r6
0003d414 adf8a870   strh.w   r7, [sp, #0xa8]
0003d418 adf8b430   strh.w   r3, [sp, #0xb4]
0003d41c eef7a1fe   bl       #0x2c162
0003d420 0446       mov      r4, r0
0003d422 0028       cmp      r0, #0
0003d424 7ff40caf   bne.w    #0x3d240
0003d428 b5f8a630   ldrh.w   r3, [r5, #0xa6]
0003d42c 194a       ldr      r2, [pc, #0x64] ; [0x3d494]=0x5dc93 'POSH char handle %u'
0003d42e 3946       mov      r1, r7
0003d430 1c20       movs     r0, #0x1c
0003d432 f9f77bfb   bl       #0x36b2c
0003d436 184a       ldr      r2, [pc, #0x60] ; [0x3d498]=0x5dca7 'Added App POSH Char'
0003d438 0221       movs     r1, #2
0003d43a 1c20       movs     r0, #0x1c
0003d43c f9f776fb   bl       #0x36b2c
0003d440 164a       ldr      r2, [pc, #0x58] ; [0x3d49c]=0x5dcbb 'POSH added'
0003d442 0221       movs     r1, #2
0003d444 1c20       movs     r0, #0x1c
0003d446 f9f771fb   bl       #0x36b2c
0003d44a 02f073ff   bl       #0x40334
0003d44e 0028       cmp      r0, #0
