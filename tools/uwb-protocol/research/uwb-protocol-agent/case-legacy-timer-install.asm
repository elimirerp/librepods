000247d4 08b5       push     {r3, lr}
000247d6 0848       ldr      r0, [pc, #0x20] ; [0x247f8]=0x20010248
000247d8 15f0b4fd   bl       #0x3a344
000247dc 0748       ldr      r0, [pc, #0x1c] ; [0x247fc]=0x200101e0
000247de 15f0b1fd   bl       #0x3a344
000247e2 0748       ldr      r0, [pc, #0x1c] ; [0x24800]=0x20010200
000247e4 15f0aefd   bl       #0x3a344
000247e8 0648       ldr      r0, [pc, #0x18] ; [0x24804]=0x20010268
000247ea 15f0abfd   bl       #0x3a344
000247ee bde80840   pop.w    {r3, lr}
000247f2 0548       ldr      r0, [pc, #0x14] ; [0x24808]=0x20010220
000247f4 15f0a6bd   b.w      #0x3a344
000247f8 4802       lsls     r0, r1, #9
000247fa 0120       movs     r0, #1
000247fc e001       lsls     r0, r4, #7
000247fe 0120       movs     r0, #1
00024800 0002       lsls     r0, r0, #8
00024802 0120       movs     r0, #1
00024804 6802       lsls     r0, r5, #9
00024806 0120       movs     r0, #1
00024808 2002       lsls     r0, r4, #8
0002480a 0120       movs     r0, #1
0002480c 1528       cmp      r0, #0x15
0002480e 13b5       push     {r0, r1, r4, lr}
00024810 0346       mov      r3, r0
00024812 0c46       mov      r4, r1
00024814 0cd1       bne      #0x24830
00024816 2e4a       ldr      r2, [pc, #0xb8] ; [0x248d0]=0x4e583 'Received boot paused response'
00024818 0121       movs     r1, #1
0002481a 0720       movs     r0, #7
0002481c 12f086f9   bl       #0x36b2c
00024820 fdf7f0fc   bl       #0x22204
00024824 0020       movs     r0, #0
00024826 02b0       add      sp, #8
00024828 bde81040   pop.w    {r4, lr}
0002482c fff73abf   b.w      #0x246a4
00024830 1628       cmp      r0, #0x16
00024832 14d1       bne      #0x2485e
00024834 0720       movs     r0, #7
00024836 274a       ldr      r2, [pc, #0x9c] ; [0x248d4]=0x4e5a1 'Received boot response'
00024838 0121       movs     r1, #1
0002483a 12f077f9   bl       #0x36b2c
0002483e 2648       ldr      r0, [pc, #0x98] ; [0x248d8]=0x20010200
00024840 15f080fd   bl       #0x3a344
00024844 002c       cmp      r4, #0
00024846 40d0       beq      #0x248ca
00024848 2046       mov      r0, r4
0002484a fff74bfe   bl       #0x244e4
0002484e 0121       movs     r1, #1
00024850 0022       movs     r2, #0
00024852 0846       mov      r0, r1
00024854 02b0       add      sp, #8
00024856 bde81040   pop.w    {r4, lr}
0002485a fcf7ebbe   b.w      #0x21634
0002485e 0f28       cmp      r0, #0xf
00024860 0ad1       bne      #0x24878
00024862 1e4a       ldr      r2, [pc, #0x78] ; [0x248dc]=0x4e5b8 'Received sleep response'
00024864 0121       movs     r1, #1
00024866 0720       movs     r0, #7
00024868 12f060f9   bl       #0x36b2c
0002486c 0020       movs     r0, #0
0002486e 02b0       add      sp, #8
00024870 bde81040   pop.w    {r4, lr}
00024874 fff704bf   b.w      #0x24680
00024878 88b9       cbnz     r0, #0x2489e
0002487a 0720       movs     r0, #7
0002487c 184a       ldr      r2, [pc, #0x60] ; [0x248e0]=0x4e5d0 'Received correct ping response'
0002487e 0121       movs     r1, #1
00024880 12f054f9   bl       #0x36b2c
00024884 1448       ldr      r0, [pc, #0x50] ; [0x248d8]=0x20010200
00024886 15f05dfd   bl       #0x3a344
0002488a 14b1       cbz      r4, #0x24892
0002488c 2046       mov      r0, r4
0002488e fff729fe   bl       #0x244e4
00024892 0020       movs     r0, #0
00024894 02b0       add      sp, #8
00024896 bde81040   pop.w    {r4, lr}
0002489a 02f0adbb   b.w      #0x26ff8
0002489e 2128       cmp      r0, #0x21
000248a0 0ad1       bne      #0x248b8
000248a2 104a       ldr      r2, [pc, #0x40] ; [0x248e4]=0x4e5ef 'Received response when R1 in secureROM'
000248a4 0121       movs     r1, #1
000248a6 0720       movs     r0, #7
000248a8 12f040f9   bl       #0x36b2c
000248ac 0e4b       ldr      r3, [pc, #0x38] ; [0x248e8]=0x200101dd
000248ae 0122       movs     r2, #1
000248b0 1a70       strb     r2, [r3]
000248b2 fff78fff   bl       #0x247d4
000248b6 d9e7       b        #0x2486c
000248b8 1622       movs     r2, #0x16
000248ba 0092       str      r2, [sp]
000248bc 0720       movs     r0, #7
000248be 0b4a       ldr      r2, [pc, #0x2c] ; [0x248ec]=0x4e616 'Received invalid response %d - expected %d'
000248c0 0021       movs     r1, #0
000248c2 12f033f9   bl       #0x36b2c
000248c6 0120       movs     r0, #1
000248c8 e4e7       b        #0x24894
000248ca 02b0       add      sp, #8
000248cc 10bd       pop      {r4, pc}
000248ce 00bf       nop      
000248d0 83e5       b        #0x243da
000248d2 0400       movs     r4, r0
000248d4 a1e5       b        #0x2441a
000248d6 0400       movs     r4, r0
000248d8 0002       lsls     r0, r0, #8
000248da 0120       movs     r0, #1
000248dc b8e5       b        #0x24450
000248de 0400       movs     r4, r0
000248e0 d0e5       b        #0x24484
000248e2 0400       movs     r4, r0
000248e4 efe5       b        #0x244c6
000248e6 0400       movs     r4, r0
000248e8 dd01       lsls     r5, r3, #7
000248ea 0120       movs     r0, #1
000248ec 16e6       b        #0x2451c
000248ee 0400       movs     r4, r0
