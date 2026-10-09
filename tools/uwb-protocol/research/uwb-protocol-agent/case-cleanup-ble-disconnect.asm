0003ba64 0121       movs     r1, #1
0003ba66 fff769fd   bl       #0x3b53c
0003ba6a 08b1       cbz      r0, #0x3ba70
0003ba6c 03f026fe   bl       #0x3f6bc
0003ba70 a488       ldrh     r4, [r4, #4]
0003ba72 3d4f       ldr      r7, [pc, #0xf4] ; [0x3bb68]=0x200145c0
0003ba74 0021       movs     r1, #0
0003ba76 2046       mov      r0, r4
0003ba78 fff760fd   bl       #0x3b53c
0003ba7c 0721       movs     r1, #7
0003ba7e 0546       mov      r5, r0
0003ba80 2046       mov      r0, r4
0003ba82 fff75bfd   bl       #0x3b53c
0003ba86 012c       cmp      r4, #1
0003ba88 0646       mov      r6, r0
0003ba8a 54d9       bls      #0x3bb36
0003ba8c 3c4a       ldr      r2, [pc, #0xf0] ; [0x3bb80]=0x5d2bb 'Invalid disconnection, conn_handle %d'
0003ba8e 2346       mov      r3, r4
0003ba90 0021       movs     r1, #0
0003ba92 1b20       movs     r0, #0x1b
0003ba94 fbf74af8   bl       #0x36b2c
0003ba98 01f0e2fe   bl       #0x3d860
0003ba9c bc89       ldrh     r4, [r7, #0xc]
0003ba9e b7f86c20   ldrh.w   r2, [r7, #0x6c]
0003baa2 4ff6ff73   movw     r3, #0xffff
0003baa6 e41a       subs     r4, r4, r3
0003baa8 4ff00001   mov.w    r1, #0
0003baac 18bf       it       ne
0003baae 0124       movne    r4, #1
0003bab0 0846       mov      r0, r1
0003bab2 9a42       cmp      r2, r3
0003bab4 334a       ldr      r2, [pc, #0xcc] ; [0x3bb84]=0x3b4c9
0003bab6 18bf       it       ne
0003bab8 0134       addne    r4, #1
0003baba ecf7affb   bl       #0x2821c
0003babe 04f047fc   bl       #0x40350
0003bac2 0028       cmp      r0, #0
0003bac4 3ed0       beq      #0x3bb44
0003bac6 002c       cmp      r4, #0
0003bac8 3cd0       beq      #0x3bb44
0003baca 1eb9       cbnz     r6, #0x3bad4
0003bacc 0720       movs     r0, #7
0003bace fff70afd   bl       #0x3b4e6
0003bad2 50b1       cbz      r0, #0x3baea
0003bad4 2c4a       ldr      r2, [pc, #0xb0] ; [0x3bb88]=0x5d2e1 'BTFinding - Disconnect'
0003bad6 0121       movs     r1, #1
0003bad8 1b20       movs     r0, #0x1b
0003bada fbf727f8   bl       #0x36b2c
0003bade 16b1       cbz      r6, #0x3bae6
0003bae0 0120       movs     r0, #1
0003bae2 fdf737f8   bl       #0x38b54
0003bae6 fff773f8   bl       #0x3abd0
0003baea fcf7d9f8   bl       #0x37ca0
0003baee 002d       cmp      r5, #0
0003baf0 14bf       ite      ne
0003baf2 0321       movne    r1, #3
0003baf4 0421       moveq    r1, #4
0003baf6 fef7a9ff   bl       #0x3aa4c
0003bafa 244b       ldr      r3, [pc, #0x90] ; [0x3bb8c]=0x200145b9
0003bafc 1a78       ldrb     r2, [r3]
0003bafe 002a       cmp      r2, #0
0003bb00 3ff495ae   beq.w    #0x3b82e
0003bb04 022c       cmp      r4, #2
0003bb06 3ff492ae   beq.w    #0x3b82e
0003bb0a 0024       movs     r4, #0
0003bb0c 0520       movs     r0, #5
0003bb0e 1c70       strb     r4, [r3]
0003bb10 fff71dfd   bl       #0x3b54e
0003bb14 4ff6ff73   movw     r3, #0xffff
0003bb18 9842       cmp      r0, r3
0003bb1a 0146       mov      r1, r0
0003bb1c 3ff487ae   beq.w    #0x3b82e
0003bb20 1b4b       ldr      r3, [pc, #0x6c] ; [0x3bb90]=0x2000fc00
0003bb22 1b68       ldr      r3, [r3]
0003bb24 40f20b20   movw     r0, #0x20b
0003bb28 da8b       ldrh     r2, [r3, #0x1e]
0003bb2a 0094       str      r4, [sp]
0003bb2c 40f20723   movw     r3, #0x207
0003bb30 00f060fe   bl       #0x3c7f4
0003bb34 7be6       b        #0x3b82e
0003bb36 6023       movs     r3, #0x60
0003bb38 03fb0474   mla      r4, r3, r4, r7
0003bb3c 4ff6ff73   movw     r3, #0xffff
0003bb40 a381       strh     r3, [r4, #0xc]
0003bb42 a9e7       b        #0x3ba98
0003bb44 002d       cmp      r5, #0
0003bb46 d8d0       beq      #0x3bafa
0003bb48 0120       movs     r0, #1
0003bb4a fcf7d3ff   bl       #0x38af4
0003bb4e d4e7       b        #0x3bafa
0003bb50 f8d2       bhs      #0x3bb44
0003bb52 0500       movs     r5, r0
0003bb54 0cd3       blo      #0x3bb70
0003bb56 0500       movs     r5, r0
0003bb58 e6d3       blo      #0x3bb28
0003bb5a 0500       movs     r5, r0
0003bb5c 06d5       bpl      #0x3bb6c
0003bb5e 0500       movs     r5, r0
0003bb60 f6d3       blo      #0x3bb50
0003bb62 0500       movs     r5, r0
0003bb64 e9d1       bne      #0x3bb3a
0003bb66 0500       movs     r5, r0
0003bb68 c045       cmp      r8, r8
0003bb6a 0120       movs     r0, #1
0003bb6c 27d2       bhs      #0x3bbbe
0003bb6e 0500       movs     r5, r0
0003bb70 6ed2       bhs      #0x3bc50
0003bb72 0500       movs     r5, r0
0003bb74 7fd2       bhs      #0x3bc76
0003bb76 0500       movs     r5, r0
0003bb78 d4d1       bne      #0x3bb24
0003bb7a 0500       movs     r5, r0
0003bb7c 94d2       bhs      #0x3baa8
0003bb7e 0500       movs     r5, r0
0003bb80 bbd2       bhs      #0x3bafa
0003bb82 0500       movs     r5, r0
0003bb84 c9b4       push     {r0, r3, r6, r7}
0003bb86 0300       movs     r3, r0
0003bb88 e1d2       bhs      #0x3bb4e
0003bb8a 0500       movs     r5, r0
0003bb8c b945       cmp      sb, r7
0003bb8e 0120       movs     r0, #1
0003bb90 00fc       .byte    0x00, 0xfc
0003bb92 0020       movs     r0, #0
0003bb94 c488       ldrh     r4, [r0, #6]
0003bb96 254a       ldr      r2, [pc, #0x94] ; [0x3bc2c]=0x5d31e 'GATT Client MTU: %d'
0003bb98 2346       mov      r3, r4
0003bb9a 0121       movs     r1, #1
0003bb9c 1b20       movs     r0, #0x1b
0003bb9e faf7c5ff   bl       #0x36b2c
0003bba2 f72c       cmp      r4, #0xf7
0003bba4 28bf       it       hs
0003bba6 f724       movhs    r4, #0xf7
0003bba8 e01e       subs     r0, r4, #3
0003bbaa 80b2       uxth     r0, r0
0003bbac 09b0       add      sp, #0x24
0003bbae bde8f043   pop.w    {r4, r5, r6, r7, r8, sb, lr}
0003bbb2 00f059bd   b.w      #0x3c668
0003bbb6 0121       movs     r1, #1
0003bbb8 1b20       movs     r0, #0x1b
0003bbba 1d4a       ldr      r2, [pc, #0x74] ; [0x3bc30]=0x5d332 'GATT Server Timeout.'
0003bbbc faf7b6ff   bl       #0x36b2c
0003bbc0 a088       ldrh     r0, [r4, #4]
0003bbc2 1321       movs     r1, #0x13
0003bbc4 fff74cfc   bl       #0x3b460
0003bbc8 0028       cmp      r0, #0
0003bbca 3ff430ae   beq.w    #0x3b82e
0003bbce 09b0       add      sp, #0x24
0003bbd0 bde8f043   pop.w    {r4, r5, r6, r7, r8, sb, lr}
0003bbd4 ecf7f0ba   b.w      #0x281b8
0003bbd8 164a       ldr      r2, [pc, #0x58] ; [0x3bc34]=0x5d347 'GATTS Notification TX Complete'
0003bbda 0121       movs     r1, #1
0003bbdc 1b20       movs     r0, #0x1b
0003bbde 09b0       add      sp, #0x24
0003bbe0 bde8f043   pop.w    {r4, r5, r6, r7, r8, sb, lr}
0003bbe4 faf7a2bf   b.w      #0x36b2c
0003bbe8 134a       ldr      r2, [pc, #0x4c] ; [0x3bc38]=0x5d366 'BLE_GATTS_EVT_SYS_ATTR_MISSING'
0003bbea f6e7       b        #0x3bbda
0003bbec 134a       ldr      r2, [pc, #0x4c] ; [0x3bc3c]=0x5d385 'BLE_GATTS_EVT_RW_AUTHORIZE_REQUEST'
0003bbee 0221       movs     r1, #2
0003bbf0 1b20       movs     r0, #0x1b
0003bbf2 faf79bff   bl       #0x36b2c
0003bbf6 a379       ldrb     r3, [r4, #6]
0003bbf8 022b       cmp      r3, #2
0003bbfa 07d1       bne      #0x3bc0c
0003bbfc a088       ldrh     r0, [r4, #4]
0003bbfe 04f10801   add.w    r1, r4, #8
0003bc02 09b0       add      sp, #0x24
0003bc04 bde8f043   pop.w    {r4, r5, r6, r7, r8, sb, lr}
0003bc08 00f08ebc   b.w      #0x3c528
