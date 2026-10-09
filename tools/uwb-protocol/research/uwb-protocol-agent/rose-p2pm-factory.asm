00424e94 41f28860   movw     r0, #0x1688
00424e98 01f0d0fb   bl       #0x42663c
00424e9c 38f05bfd   bl       #0x45d956
00424ea0 41f2c848   movw     r8, #0x14c8
00424ea4 0124       movs     r4, #1
00424ea6 f648       ldr      r0, [pc, #0x3d8] ; [0x425280]=0x42a5d5
00424ea8 05eb0806   add.w    r6, r5, r8
00424eac a863       str      r0, [r5, #0x38]
00424eae f548       ldr      r0, [pc, #0x3d4] ; [0x425284]=0x42a241
00424eb0 6863       str      r0, [r5, #0x34]
00424eb2 f548       ldr      r0, [pc, #0x3d4] ; [0x425288]=0x42a145
00424eb4 2863       str      r0, [r5, #0x30]
00424eb6 f548       ldr      r0, [pc, #0x3d4] ; [0x42528c]=0x42a109
00424eb8 e862       str      r0, [r5, #0x2c]
00424eba f548       ldr      r0, [pc, #0x3d4] ; [0x425290]=0x42a0f5
00424ebc a862       str      r0, [r5, #0x28]
00424ebe f548       ldr      r0, [pc, #0x3d4] ; [0x425294]=0x42a0e1
00424ec0 6862       str      r0, [r5, #0x24]
00424ec2 f548       ldr      r0, [pc, #0x3d4] ; [0x425298]=0x429fed
00424ec4 2862       str      r0, [r5, #0x20]
00424ec6 1b20       movs     r0, #0x1b
00424ec8 e861       str      r0, [r5, #0x1c]
00424eca d9f80800   ldr.w    r0, [sb, #8]
00424ece d9f80c10   ldr.w    r1, [sb, #0xc]
00424ed2 64f30700   bfi      r0, r4, #0, #8
00424ed6 37f0f7fd   bl       #0x45cac8
00424eda 20f0ff00   bic      r0, r0, #0xff
00424ede c6f8ec10   str.w    r1, [r6, #0xec]
00424ee2 c6f8e800   str.w    r0, [r6, #0xe8]
00424ee6 9af8ac00   ldrb.w   r0, [sl, #0xac]
00424eea 86f8b841   strb.w   r4, [r6, #0x1b8]
00424eee 0028       cmp      r0, #0
00424ef0 18bf       it       ne
00424ef2 0120       movne    r0, #1
00424ef4 86f8d700   strb.w   r0, [r6, #0xd7]
00424ef8 9af81800   ldrb.w   r0, [sl, #0x18]
00424efc 5521       movs     r1, #0x55
00424efe 37f078fc   bl       #0x45c7f2
00424f02 3146       mov      r1, r6
00424f04 37f0c7fe   bl       #0x45cc96
00424f08 86f8d600   strb.w   r0, [r6, #0xd6]
00424f0c baf8aa00   ldrh.w   r0, [sl, #0xaa]
00424f10 f0f786fe   bl       #0x415c20
00424f14 35f80810   ldrh.w   r1, [r5, r8]
00424f18 05f16808   add.w    r8, r5, #0x68
00424f1c 4046       mov      r0, r8
00424f1e f5f743f8   bl       #0x419fa8
00424f22 286c       ldr      r0, [r5, #0x40]
00424f24 017e       ldrb     r1, [r0, #0x18]
00424f26 427e       ldrb     r2, [r0, #0x19]
00424f28 837e       ldrb     r3, [r0, #0x1a]
00424f2a 4046       mov      r0, r8
00424f2c f6f7c0fa   bl       #0x41b4b0
00424f30 286c       ldr      r0, [r5, #0x40]
00424f32 b5f87a10   ldrh.w   r1, [r5, #0x7a]
00424f36 cb46       mov      fp, sb
00424f38 027d       ldrb     r2, [r0, #0x14]
00424f3a c37e       ldrb     r3, [r0, #0x1b]
00424f3c 42ea0141   orr.w    r1, r2, r1, lsl #16
00424f40 41ea0321   orr.w    r1, r1, r3, lsl #8
00424f44 a967       str      r1, [r5, #0x78]
00424f46 0021       movs     r1, #0
00424f48 b0f89820   ldrh.w   r2, [r0, #0x98]
00424f4c a6f8d440   strh.w   r4, [r6, #0xd4]
00424f50 86f8d810   strb.w   r1, [r6, #0xd8]
00424f54 131f       subs     r3, r2, #4
00424f56 022b       cmp      r3, #2
00424f58 c0f0d483   blo.w    #0x425704
00424f5c 032a       cmp      r2, #3
00424f5e 00f06485   beq.w    #0x425a2a
00424f62 002a       cmp      r2, #0
00424f64 40f06685   bne.w    #0x425a34
00424f68 c6f8da10   str.w    r1, [r6, #0xda]
00424f6c 86f8d410   strb.w   r1, [r6, #0xd4]
00424f70 00f060bd   b.w      #0x425a34
00424f74 c949       ldr      r1, [pc, #0x324] ; [0x42529c]=0x40002018
00424f76 ca4a       ldr      r2, [pc, #0x328] ; [0x4252a0]=0x249f000
00424f78 0868       ldr      r0, [r1]
00424f7a 4968       ldr      r1, [r1, #4]
00424f7c 10eb0208   adds.w   r8, r0, r2
00424f80 c848       ldr      r0, [pc, #0x320] ; [0x4252a4]=0x16e36000
00424f82 41f10006   adc      r6, r1, #0
00424f86 a867       str      r0, [r5, #0x78]
00424f88 b8f51640   subs.w   r0, r8, #0x9600
00424f8c a860       str      r0, [r5, #8]
00424f8e 4ff6ff70   movw     r0, #0xffff
00424f92 7041       adcs     r0, r6
00424f94 80b2       uxth     r0, r0
00424f96 e860       str      r0, [r5, #0xc]
00424f98 fbf77afa   bl       #0x420490
00424f9c 0646       mov      r6, r0
00424f9e c9f80809   str.w    r0, [sb, #0x908]
00424fa2 bbf80000   ldrh.w   r0, [fp]
00424fa6 f5f797fb   bl       #0x41a6d8
00424faa d5f8f41c   ldr.w    r1, [r5, #0xcf4]
00424fae 05f1f802   add.w    r2, r5, #0xf8
00424fb2 4ff0000c   mov.w    ip, #0
00424fb6 06f63803   addw     r3, r6, #0x838
00424fba 4ff0020e   mov.w    lr, #2
00424fbe 21f00b01   bic      r1, r1, #0xb
00424fc2 0144       add      r1, r0
00424fc4 60f34101   bfi      r1, r0, #1, #1
00424fc8 0898       ldr      r0, [sp, #0x20]
00424fca 90f83f00   ldrb.w   r0, [r0, #0x3f]
00424fce 00f00100   and      r0, r0, #1
00424fd2 41eac000   orr.w    r0, r1, r0, lsl #3
00424fd6 c5f8f40c   str.w    r0, [r5, #0xcf4]
00424fda 4ff41060   mov.w    r0, #0x900
00424fde b249       ldr      r1, [pc, #0x2c8] ; [0x4252a8]=0x426485
00424fe0 079c       ldr      r4, [sp, #0x1c]
00424fe2 c5f89021   str.w    r2, [r5, #0x190]
00424fe6 c5f88000   str.w    r0, [r5, #0x80]
00424fea c5f820c5   str.w    ip, [r5, #0x520]
00424fee c5f81c35   str.w    r3, [r5, #0x51c]
00424ff2 c5f87023   str.w    r2, [r5, #0x370]
00424ff6 c5f84413   str.w    r1, [r5, #0x344]
00424ffa c5f88841   str.w    r4, [r5, #0x188]
00424ffe c5f86843   str.w    r4, [r5, #0x368]
00425002 aa4a       ldr      r2, [pc, #0x2a8] ; [0x4252ac]=0x4264d1
00425004 d9f80038   ldr.w    r3, [sb, #0x800]
00425008 c5f89c51   str.w    r5, [r5, #0x19c]
0042500c c5f87c53   str.w    r5, [r5, #0x37c]
00425010 13f8034b   ldrb     r4, [r3], #3
00425014 c5f82c25   str.w    r2, [r5, #0x52c]
00425018 85f83843   strb.w   r4, [r5, #0x338]
0042501c 05f6f444   addw     r4, r5, #0xcf4
00425020 c5f82435   str.w    r3, [r5, #0x524]
00425024 c5f88c4d   str.w    r4, [r5, #0xd8c]
00425028 a14b       ldr      r3, [pc, #0x284] ; [0x4252b0]=0x42861d
0042502a 0698       ldr      r0, [sp, #0x18]
0042502c c5f880ed   str.w    lr, [r5, #0xd80]
00425030 c5f8845d   str.w    r5, [r5, #0xd84]
00425034 c5f86c4f   str.w    r4, [r5, #0xf6c]
00425038 c5f82c1f   str.w    r1, [r5, #0xf2c]
0042503c c5f8746d   str.w    r6, [r5, #0xd74]
00425040 c5f860ef   str.w    lr, [r5, #0xf60]
00425044 c5f8645f   str.w    r5, [r5, #0xf64]
00425048 c5f8546f   str.w    r6, [r5, #0xf54]
0042504c c9f81820   str.w    r2, [sb, #0x18]
00425050 c5f884c0   str.w    ip, [r5, #0x84]
00425054 c5f8700d   str.w    r0, [r5, #0xd70]
00425058 c5f8500f   str.w    r0, [r5, #0xf50]
0042505c 06f6cc00   addw     r0, r6, #0x8cc
00425060 c5f81c3f   str.w    r3, [r5, #0xf1c]
00425064 c9f80030   str.w    r3, [sb]
00425068 c9f80c00   str.w    r0, [sb, #0xc]
0042506c 06f50060   add.w    r0, r6, #0x800
00425070 c9f80800   str.w    r0, [sb, #8]
00425074 3fe3       b        #0x4256f6
00425076 8949       ldr      r1, [pc, #0x224] ; [0x42529c]=0x40002018
00425078 894a       ldr      r2, [pc, #0x224] ; [0x4252a0]=0x249f000
0042507a 36f038fd   bl       #0x45baee
0042507e 8948       ldr      r0, [pc, #0x224] ; [0x4252a4]=0x16e36000
00425080 1b21       movs     r1, #0x1b
00425082 c5f840a0   str.w    sl, [r5, #0x40]
00425086 e865       str      r0, [r5, #0x5c]
00425088 0124       movs     r4, #1
0042508a e961       str      r1, [r5, #0x1c]
0042508c d9f80800   ldr.w    r0, [sb, #8]
00425090 d9f80c10   ldr.w    r1, [sb, #0xc]
00425094 20f0ff00   bic      r0, r0, #0xff
00425098 37f016fd   bl       #0x45cac8
0042509c 64f30700   bfi      r0, r4, #0, #8
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
004250ca baf8       .byte    0xba, 0xf8
