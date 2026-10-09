0002050c 38b5       push     {r3, r4, r5, lr}
0002050e 30b9       cbnz     r0, #0x2051e
00020510 0146       mov      r1, r0
00020512 294a       ldr      r2, [pc, #0xa4] ; [0x205b8]=0x4c02f 'invalid parameter'
00020514 0720       movs     r0, #7
00020516 16f009fb   bl       #0x36b2c
0002051a 0120       movs     r0, #1
0002051c 38bd       pop      {r3, r4, r5, pc}
0002051e 274c       ldr      r4, [pc, #0x9c] ; [0x205bc]=0x2000fd30
00020520 6378       ldrb     r3, [r4, #1]
00020522 082b       cmp      r3, #8
00020524 08d0       beq      #0x20538
00020526 162b       cmp      r3, #0x16
00020528 06d0       beq      #0x20538
0002052a 254a       ldr      r2, [pc, #0x94] ; [0x205c0]=0x4bfdf 'invalid state for ranging: %u'
0002052c 0021       movs     r1, #0
0002052e 0720       movs     r0, #7
00020530 16f0fcfa   bl       #0x36b2c
00020534 0820       movs     r0, #8
00020536 f1e7       b        #0x2051c
00020538 e378       ldrb     r3, [r4, #3]
0002053a 13f00101   ands     r1, r3, #1
0002053e 01d1       bne      #0x20544
00020540 204a       ldr      r2, [pc, #0x80] ; [0x205c4]=0x4c1ab 'ranging config must be completed before ranging start (state: 0x%x)'
00020542 f4e7       b        #0x2052e
00020544 204b       ldr      r3, [pc, #0x80] ; [0x205c8]=0x2000fd67
00020546 00f11002   add.w    r2, r0, #0x10
0002054a 50f8041b   ldr      r1, [r0], #4
0002054e 43f8041b   str      r1, [r3], #4
00020552 9042       cmp      r0, r2
00020554 f9d1       bne      #0x2054a
00020556 19f06cfe   bl       #0x3a232
0002055a 24f025fa   bl       #0x449a8
0002055e 94f82950   ldrb.w   r5, [r4, #0x29]
00020562 24f04ffa   bl       #0x44a04
00020566 94f82a30   ldrb.w   r3, [r4, #0x2a]
0002056a 0133       adds     r3, #1
0002056c 90fbf3f2   sdiv     r2, r0, r3
00020570 02fb1300   mls      r0, r2, r3, r0
00020574 0823       movs     r3, #8
00020576 2844       add      r0, r5
00020578 a370       strb     r3, [r4, #2]
0002057a 0d23       movs     r3, #0xd
0002057c 6370       strb     r3, [r4, #1]
0002057e 2065       str      r0, [r4, #0x50]
00020580 01f058fe   bl       #0x22234
00020584 1e20       movs     r0, #0x1e
00020586 fcf759fb   bl       #0x1cc3c
0002058a 01f03bfe   bl       #0x22204
0002058e 206d       ldr      r0, [r4, #0x50]
00020590 fbf73cff   bl       #0x1c40c
00020594 0146       mov      r1, r0
00020596 28b9       cbnz     r0, #0x205a4
00020598 0720       movs     r0, #7
0002059a 0c4a       ldr      r2, [pc, #0x30] ; [0x205cc]=0x4c269 'Failed to set acquisition retry timer'
0002059c 16f0c6fa   bl       #0x36b2c
000205a0 1820       movs     r0, #0x18
000205a2 bbe7       b        #0x2051c
000205a4 0025       movs     r5, #0
000205a6 0720       movs     r0, #7
000205a8 094a       ldr      r2, [pc, #0x24] ; [0x205d0]=0x4c28f 'Sent timesync pulse from RoseStartNBRanging'
000205aa a564       str      r5, [r4, #0x48]
000205ac 0221       movs     r1, #2
000205ae 16f0bdfa   bl       #0x36b2c
000205b2 2846       mov      r0, r5
000205b4 b2e7       b        #0x2051c
000205b6 00bf       nop      
000205b8 2fc0       stm      r0!, {r0, r1, r2, r3, r5}
000205ba 0400       movs     r4, r0
000205bc 30fd0020   ldc2     p0, c2, [r0, #-0]!
000205c0 dfbf       itttt    le
000205c2 0400       movs     r4, r0
000205c4 abc1       stmle    r1!, {r0, r1, r3, r5, r7}
000205c6 0400       movs     r4, r0
000205c8 67fd0020   stc2lle  p0, c2, [r7, #-0]!
000205cc 69c2       stm      r2!, {r0, r3, r5, r6}
000205ce 0400       movs     r4, r0
000205d0 8fc2       stm      r2!, {r0, r1, r2, r3, r7}
000205d2 0400       movs     r4, r0
000205d4 07b5       push     {r0, r1, r2, lr}
000205d6 0b46       mov      r3, r1
000205d8 61b9       cbnz     r1, #0x205f4
000205da 0922       movs     r2, #9
000205dc 0270       strb     r2, [r0]
000205de 0278       ldrb     r2, [r0]
000205e0 0092       str      r2, [sp]
000205e2 0720       movs     r0, #7
000205e4 0d4a       ldr      r2, [pc, #0x34] ; [0x2061c]=0x4c2d6 'Valid input preamble value: %u. Decoded val: %u'
000205e6 0221       movs     r1, #2
000205e8 16f0a0fa   bl       #0x36b2c
000205ec 0020       movs     r0, #0
000205ee 03b0       add      sp, #0xc
000205f0 5df804fb   ldr      pc, [sp], #4
000205f4 0129       cmp      r1, #1
000205f6 01d1       bne      #0x205fc
000205f8 0a22       movs     r2, #0xa
000205fa efe7       b        #0x205dc
000205fc 0229       cmp      r1, #2
000205fe 01d1       bne      #0x20604
00020600 0b22       movs     r2, #0xb
00020602 ebe7       b        #0x205dc
00020604 0329       cmp      r1, #3
00020606 01d1       bne      #0x2060c
00020608 0c22       movs     r2, #0xc
0002060a e7e7       b        #0x205dc
0002060c 0720       movs     r0, #7
0002060e 044a       ldr      r2, [pc, #0x10] ; [0x20620]=0x4c2bb 'Invalid preamble value: %u'
00020610 0021       movs     r1, #0
00020612 16f08bfa   bl       #0x36b2c
00020616 0120       movs     r0, #1
00020618 e9e7       b        #0x205ee
0002061a 00bf       nop      
0002061c d6c2       stm      r2!, {r1, r2, r4, r6, r7}
0002061e 0400       movs     r4, r0
00020620 bbc2       stm      r2!, {r0, r1, r3, r4, r5, r7}
00020622 0400       movs     r4, r0
00020624 0000       movs     r0, r0
00020626 0000       movs     r0, r0
00020628 f7b5       push     {r0, r1, r2, r4, r5, r6, r7, lr}
0002062a c14c       ldr      r4, [pc, #0x304] ; [0x20930]=0x2000fd30
0002062c 6378       ldrb     r3, [r4, #1]
0002062e 03f0fd02   and      r2, r3, #0xfd
00020632 0c2a       cmp      r2, #0xc
00020634 07d0       beq      #0x20646
00020636 0720       movs     r0, #7
00020638 be4a       ldr      r2, [pc, #0x2f8] ; [0x20934]=0x4bfdf 'invalid state for ranging: %u'
0002063a 0021       movs     r1, #0
0002063c 16f076fa   bl       #0x36b2c
00020640 0820       movs     r0, #8
00020642 03b0       add      sp, #0xc
00020644 f0bd       pop      {r4, r5, r6, r7, pc}
00020646 d4f81c61   ldr.w    r6, [r4, #0x11c]
0002064a 3eb1       cbz      r6, #0x2065c
0002064c 0720       movs     r0, #7
0002064e ba4a       ldr      r2, [pc, #0x2e8] ; [0x20938]=0x4a5e0 'Unexpected mp tx len: %u. Expected: 0'
00020650 3346       mov      r3, r6
00020652 0021       movs     r1, #0
00020654 16f06afa   bl       #0x36b2c
00020658 1a20       movs     r0, #0x1a
0002065a f2e7       b        #0x20642
0002065c 8822       movs     r2, #0x88
0002065e 3146       mov      r1, r6
00020660 04f17900   add.w    r0, r4, #0x79
00020664 24f015f8   bl       #0x44692
00020668 94f87a30   ldrb.w   r3, [r4, #0x7a]
0002066c 84f8b060   strb.w   r6, [r4, #0xb0]
00020670 0125       movs     r5, #1
00020672 65f38713   bfi      r3, r5, #6, #2
00020676 03f0fc03   and      r3, r3, #0xfc
0002067a 84f87a30   strb.w   r3, [r4, #0x7a]
0002067e 40f20113   movw     r3, #0x101
00020682 a4f88030   strh.w   r3, [r4, #0x80]
00020686 a37e       ldrb     r3, [r4, #0x1a]
00020688 84f88250   strb.w   r5, [r4, #0x82]
0002068c 1022       movs     r2, #0x10
0002068e 84f8       .byte    0x84, 0xf8
