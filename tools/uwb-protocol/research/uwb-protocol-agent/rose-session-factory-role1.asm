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
