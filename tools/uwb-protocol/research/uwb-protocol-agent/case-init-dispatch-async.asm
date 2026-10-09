000246e0 03b0       add      sp, #0xc
000246e2 30bd       pop      {r4, r5, pc}
000246e4 4002       lsls     r0, r0, #9
000246e6 0120       movs     r0, #1
000246e8 dfe4       b        #0x240aa
000246ea 0400       movs     r4, r0
000246ec 0ae5       b        #0x24104
000246ee 0400       movs     r4, r0
000246f0 1a28       cmp      r0, #0x1a
000246f2 1fb5       push     {r0, r1, r2, r3, r4, lr}
000246f4 0346       mov      r3, r0
000246f6 0dd1       bne      #0x24714
000246f8 0390       str      r0, [sp, #0xc]
000246fa 0d4a       ldr      r2, [pc, #0x34] ; [0x24730]=0x4e53b 'halt complete'
000246fc 0121       movs     r1, #1
000246fe 0720       movs     r0, #7
00024700 12f014fa   bl       #0x36b2c
00024704 039b       ldr      r3, [sp, #0xc]
00024706 0021       movs     r1, #0
00024708 1846       mov      r0, r3
0002470a 05b0       add      sp, #0x14
0002470c 5df804eb   ldr      lr, [sp], #4
00024710 02f0feb9   b.w      #0x26b10
00024714 1a22       movs     r2, #0x1a
00024716 0092       str      r2, [sp]
00024718 0021       movs     r1, #0
0002471a 064a       ldr      r2, [pc, #0x18] ; [0x24734]=0x4e549 'Invalid response %d - expected %d'
0002471c 0720       movs     r0, #7
0002471e 12f005fa   bl       #0x36b2c
00024722 0120       movs     r0, #1
00024724 05b0       add      sp, #0x14
00024726 5df804eb   ldr      lr, [sp], #4
0002472a 02f065bc   b.w      #0x26ff8
0002472e 00bf       nop      
00024730 3be5       b        #0x241aa
00024732 0400       movs     r4, r0
00024734 49e5       b        #0x241ca
00024736 0400       movs     r4, r0
00024738 0328       cmp      r0, #3
0002473a 9cbf       itt      ls
0002473c 014b       ldrls    r3, [pc, #4] ; [0x24744]=0x2000fabb
0002473e 1870       strbls   r0, [r3]
00024740 7047       bx       lr
00024742 00bf       nop      
00024744 bbfa       .byte    0xbb, 0xfa
00024746 0020       movs     r0, #0
00024748 08b5       push     {r3, lr}
0002474a 174a       ldr      r2, [pc, #0x5c] ; [0x247a8]=0x24469
0002474c 1748       ldr      r0, [pc, #0x5c] ; [0x247ac]=0x4e7bc
0002474e 0021       movs     r1, #0
00024750 03f0cafe   bl       #0x284e8
00024754 08b1       cbz      r0, #0x2475a
00024756 03f02ffd   bl       #0x281b8
0002475a 154a       ldr      r2, [pc, #0x54] ; [0x247b0]=0x24485
0002475c 1548       ldr      r0, [pc, #0x54] ; [0x247b4]=0x4e7b0
0002475e 0021       movs     r1, #0
00024760 03f0c2fe   bl       #0x284e8
00024764 08b1       cbz      r0, #0x2476a
00024766 03f027fd   bl       #0x281b8
0002476a 134a       ldr      r2, [pc, #0x4c] ; [0x247b8]=0x24925
0002476c 1348       ldr      r0, [pc, #0x4c] ; [0x247bc]=0x4e7b4
0002476e 0021       movs     r1, #0
00024770 03f0bafe   bl       #0x284e8
00024774 08b1       cbz      r0, #0x2477a
00024776 03f01ffd   bl       #0x281b8
0002477a 114a       ldr      r2, [pc, #0x44] ; [0x247c0]=0x24625
0002477c 1148       ldr      r0, [pc, #0x44] ; [0x247c4]=0x4e7c0
0002477e 0021       movs     r1, #0
00024780 03f0b2fe   bl       #0x284e8
00024784 08b1       cbz      r0, #0x2478a
00024786 03f017fd   bl       #0x281b8
0002478a 0f4a       ldr      r2, [pc, #0x3c] ; [0x247c8]=0x24601
0002478c 0f48       ldr      r0, [pc, #0x3c] ; [0x247cc]=0x4e7b8
0002478e 0021       movs     r1, #0
00024790 03f0aafe   bl       #0x284e8
00024794 08b1       cbz      r0, #0x2479a
00024796 03f00ffd   bl       #0x281b8
0002479a bde80840   pop.w    {r3, lr}
0002479e 0c4a       ldr      r2, [pc, #0x30] ; [0x247d0]=0x4e56b 'Initialized rose timers'
000247a0 0221       movs     r1, #2
000247a2 0720       movs     r0, #7
000247a4 12f0c2b9   b.w      #0x36b2c
000247a8 6944       add      r1, sp, r1
000247aa 0200       movs     r2, r0
000247ac bce7       b        #0x24728
000247ae 0400       movs     r4, r0
000247b0 8544       add      sp, r0
000247b2 0200       movs     r2, r0
000247b4 b0e7       b        #0x24718
000247b6 0400       movs     r4, r0
000247b8 2549       ldr      r1, [pc, #0x94] ; [0x24850]=0x46082200
000247ba 0200       movs     r2, r0
000247bc b4e7       b        #0x24728
000247be 0400       movs     r4, r0
000247c0 2546       mov      r5, r4
000247c2 0200       movs     r2, r0
000247c4 c0e7       b        #0x24748
000247c6 0400       movs     r4, r0
000247c8 0146       mov      r1, r0
000247ca 0200       movs     r2, r0
000247cc b8e7       b        #0x24740
000247ce 0400       movs     r4, r0
000247d0 6be5       b        #0x242aa
000247d2 0400       movs     r4, r0
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
