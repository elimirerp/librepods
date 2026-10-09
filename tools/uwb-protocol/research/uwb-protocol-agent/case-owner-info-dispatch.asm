0003c9d0 3368       ldr      r3, [r6]
0003c9d2 da8d       ldrh     r2, [r3, #0x2e]
0003c9d4 4ff6ff73   movw     r3, #0xffff
0003c9d8 0093       str      r3, [sp]
0003c9da 2946       mov      r1, r5
0003c9dc 0023       movs     r3, #0
0003c9de 40f20640   movw     r0, #0x406
0003c9e2 7ce7       b        #0x3c8de
0003c9e4 013b       subs     r3, #1
0003c9e6 9ab2       uxth     r2, r3
0003c9e8 04f10d01   add.w    r1, r4, #0xd
0003c9ec 2846       mov      r0, r5
0003c9ee 02b0       add      sp, #8
0003c9f0 bde87040   pop.w    {r4, r5, r6, lr}
0003c9f4 01f0c2bc   b.w      #0x3e37c
0003c9f8 d18f       ldrh     r1, [r2, #0x3e]
0003c9fa 9942       cmp      r1, r3
0003c9fc 13d1       bne      #0x3ca26
0003c9fe 1368       ldr      r3, [r2]
0003ca00 2649       ldr      r1, [pc, #0x98] ; [0x3ca9c]=0x5d744 'gatt.c'
0003ca02 186c       ldr      r0, [r3, #0x40]
0003ca04 0038       subs     r0, #0
0003ca06 18bf       it       ne
0003ca08 0120       movne    r0, #1
0003ca0a 8622       movs     r2, #0x86
0003ca0c fdf722f9   bl       #0x39c54
0003ca10 3368       ldr      r3, [r6]
0003ca12 1b68       ldr      r3, [r3]
0003ca14 2146       mov      r1, r4
0003ca16 1b6c       ldr      r3, [r3, #0x40]
0003ca18 2846       mov      r0, r5
0003ca1a 9847       blx      r3
0003ca1c 0028       cmp      r0, #0
0003ca1e 7ff461af   bne.w    #0x3c8e4
0003ca22 02b0       add      sp, #8
0003ca24 70bd       pop      {r4, r5, r6, pc}
0003ca26 b2f8a610   ldrh.w   r1, [r2, #0xa6]
0003ca2a 9942       cmp      r1, r3
0003ca2c 21d1       bne      #0x3ca72
0003ca2e 1368       ldr      r3, [r2]
0003ca30 1a49       ldr      r1, [pc, #0x68] ; [0x3ca9c]=0x5d744 'gatt.c'
0003ca32 93f84400   ldrb.w   r0, [r3, #0x44]
0003ca36 9222       movs     r2, #0x92
0003ca38 fdf70cf9   bl       #0x39c54
0003ca3c 6389       ldrh     r3, [r4, #0xa]
0003ca3e 194a       ldr      r2, [pc, #0x64] ; [0x3caa4]=0x5d97f 'Posh Write request (%d bytes)'
0003ca40 0221       movs     r1, #2
0003ca42 0d20       movs     r0, #0xd
0003ca44 faf772f8   bl       #0x36b2c
0003ca48 6389       ldrh     r3, [r4, #0xa]
0003ca4a 012b       cmp      r3, #1
0003ca4c 08d8       bhi      #0x3ca60
0003ca4e 114a       ldr      r2, [pc, #0x44] ; [0x3ca94]=0x5d91e 'Incomplete packet - len = %d'
0003ca50 0021       movs     r1, #0
0003ca52 0d20       movs     r0, #0xd
0003ca54 faf76af8   bl       #0x36b2c
0003ca58 3368       ldr      r3, [r6]
0003ca5a b3f8a620   ldrh.w   r2, [r3, #0xa6]
0003ca5e 82e7       b        #0x3c966
0003ca60 1a46       mov      r2, r3
0003ca62 04f10c01   add.w    r1, r4, #0xc
0003ca66 2846       mov      r0, r5
0003ca68 02b0       add      sp, #8
0003ca6a bde87040   pop.w    {r4, r5, r6, lr}
0003ca6e 02f05dbc   b.w      #0x3f32c
0003ca72 0d4a       ldr      r2, [pc, #0x34] ; [0x3caa8]=0x5d99d 'Unhandled write for handle 0x%x'
0003ca74 0021       movs     r1, #0
0003ca76 0920       movs     r0, #9
0003ca78 02b0       add      sp, #8
0003ca7a bde87040   pop.w    {r4, r5, r6, lr}
0003ca7e faf755b8   b.w      #0x36b2c
0003ca82 00bf       nop      
0003ca84 01d9       bls      #0x3ca8a
0003ca86 0500       movs     r5, r0
0003ca88 00fc       .byte    0x00, 0xfc
0003ca8a 0020       movs     r0, #0
0003ca8c 84d9       bls      #0x3c998
0003ca8e 0500       movs     r5, r0
0003ca90 3bd9       bls      #0x3cb0a
0003ca92 0500       movs     r5, r0
0003ca94 1ed9       bls      #0x3cad4
0003ca96 0500       movs     r5, r0
0003ca98 bdd9       bls      #0x3ca16
0003ca9a 0500       movs     r5, r0
0003ca9c 44d7       bvc      #0x3cb28
0003ca9e 0500       movs     r5, r0
0003caa0 5dd9       bls      #0x3cb5e
0003caa2 0500       movs     r5, r0
0003caa4 7fd9       bls      #0x3cba6
0003caa6 0500       movs     r5, r0
0003caa8 9dd9       bls      #0x3c9e6
0003caaa 0500       movs     r5, r0
0003caac 38b5       push     {r3, r4, r5, lr}
0003caae 0e4c       ldr      r4, [pc, #0x38] ; [0x3cae8]=0x20014994
0003cab0 0021       movs     r1, #0
0003cab2 1722       movs     r2, #0x17
0003cab4 0546       mov      r5, r0
0003cab6 0d48       ldr      r0, [pc, #0x34] ; [0x3caec]=0x200149a0
0003cab8 a160       str      r1, [r4, #8]
0003caba c4e90011   strd     r1, r1, [r4]
0003cabe 07f0e8fd   bl       #0x44692
0003cac2 2946       mov      r1, r5
0003cac4 0948       ldr      r0, [pc, #0x24] ; [0x3caec]=0x200149a0
0003cac6 fff703fa   bl       #0x3bed0
0003caca 4c23       movs     r3, #0x4c
0003cacc 0848       ldr      r0, [pc, #0x20] ; [0x3caf0]=0x200149a4
0003cace 2380       strh     r3, [r4]
0003cad0 fff754fa   bl       #0x3bf7c
0003cad4 0028       cmp      r0, #0
0003cad6 14bf       ite      ne
0003cad8 1723       movne    r3, #0x17
0003cada 0423       moveq    r3, #4
0003cadc a380       strh     r3, [r4, #4]
0003cade 034b       ldr      r3, [pc, #0xc] ; [0x3caec]=0x200149a0
0003cae0 a360       str      r3, [r4, #8]
0003cae2 2046       mov      r0, r4
0003cae4 38bd       pop      {r3, r4, r5, pc}
0003cae6 00bf       nop      
0003cae8 9449       ldr      r1, [pc, #0x250] ; [0x3cd3c]=0xe7f673ff
0003caea 0120       movs     r0, #1
0003caec a049       ldr      r1, [pc, #0x280] ; [0x3cd70]=0x71607023
0003caee 0120       movs     r0, #1
0003caf0 a449       ldr      r1, [pc, #0x290] ; [0x3cd84]=0xd0044290
0003caf2 0120       movs     r0, #1
0003caf4 0020       movs     r0, #0
0003caf6 0870       strb     r0, [r1]
0003caf8 7047       bx       lr
0003cafa 0000       movs     r0, r0
0003cafc 13b5       push     {r0, r1, r4, lr}
0003cafe 0446       mov      r4, r0
0003cb00 f1f7dcf9   bl       #0x2debc
0003cb04 2046       mov      r0, r4
0003cb06 f1f7f5f9   bl       #0x2def4
0003cb0a 2046       mov      r0, r4
0003cb0c f1f738f8   bl       #0x2db80
0003cb10 2378       ldrb     r3, [r4]
0003cb12 0c2b       cmp      r3, #0xc
0003cb14 51d8       bhi      #0x3cbba
0003cb16 dfe803f0   tbb      [pc, r3] ; [0x3cb18]=0x5013f003
0003cb1a 1350       str      r3, [r2, r0]
0003cb1c 1b4a       ldr      r2, [pc, #0x6c] ; [0x3cb8c]=0xf003b1ab
0003cb1e 5032       adds     r2, #0x50
0003cb20 5050       str      r0, [r2, r1]
0003cb22 5050       str      r0, [r2, r1]
0003cb24 5050       str      r0, [r2, r1]
0003cb26 0700       movs     r7, r0
0003cb28 254a       ldr      r2, [pc, #0x94] ; [0x3cbc0]=0x5d9dc 'Del prev bonded peers.'
0003cb2a 0221       movs     r1, #2
0003cb2c 0620       movs     r0, #6
0003cb2e f9f7fdff   bl       #0x36b2c
0003cb32 0021       movs     r1, #0
0003cb34 0320       movs     r0, #3
0003cb36 02b0       add      sp, #8
0003cb38 bde81040   pop.w    {r4, lr}
0003cb3c fbf762be   b.w      #0x38804
0003cb40 204a       ldr      r2, [pc, #0x80] ; [0x3cbc4]=0x5d9f3 'Conn to a prev bonded device.'
0003cb42 0221       movs     r1, #2
0003cb44 0620       movs     r0, #6
0003cb46 02b0       add      sp, #8
0003cb48 bde81040   pop.w    {r4, lr}
0003cb4c f9f7eebf   b.w      #0x36b2c
0003cb50 237a       ldrb     r3, [r4, #8]
0003cb52 0093       str      r3, [sp]
0003cb54 1c4a       ldr      r2, [pc, #0x70] ; [0x3cbc8]=0x5da11 'Conn secured: conn_handle: 0x%x, procedure: 0x%x.'
0003cb56 6388       ldrh     r3, [r4, #2]
0003cb58 0221       movs     r1, #2
0003cb5a 0620       movs     r0, #6
0003cb5c f9f7e6ff   bl       #0x36b2c
0003cb60 6088       ldrh     r0, [r4, #2]
0003cb62 0122       movs     r2, #1
0003cb64 0521       movs     r1, #5
0003cb66 fef7cbfd   bl       #0x3b700
0003cb6a 0021       movs     r1, #0
0003cb6c 0220       movs     r0, #2
0003cb6e fbf749fe   bl       #0x38804
0003cb72 6088       ldrh     r0, [r4, #2]
0003cb74 02b0       add      sp, #8
0003cb76 bde81040   pop.w    {r4, lr}
0003cb7a fef711bc   b.w      #0x3b3a0
0003cb7e 6388       ldrh     r3, [r4, #2]
0003cb80 124a       ldr      r2, [pc, #0x48] ; [0x3cbcc]=0x5da43 'Conn sec param req: conn_handle: 0x%x.'
0003cb82 0221       movs     r1, #2
0003cb84 0620       movs     r0, #6
0003cb86 f9f7d1ff   bl       #0x36b2c
0003cb8a a368       ldr      r3, [r4, #8]
0003cb8c abb1       cbz      r3, #0x3cbba
0003cb8e 03f0d1fb   bl       #0x40334
0003cb92 90b1       cbz      r0, #0x3cbba
0003cb94 0e4a       ldr      r2, [pc, #0x38] ; [0x3cbd0]=0x5da6a 'Already paired. Reject request.'
0003cb96 0021       movs     r1, #0
0003cb98 0620       movs     r0, #6
0003cb9a f9f7c7ff   bl       #0x36b2c
0003cb9e e268       ldr      r2, [r4, #0xc]
0003cba0 6088       ldrh     r0, [r4, #2]
0003cba2 0021       movs     r1, #0
0003cba4 02b0       add      sp, #8
0003cba6 bde81040   pop.w    {r4, lr}
0003cbaa f0f717bf   b.w      #0x2d9dc
0003cbae 0120       movs     r0, #1
0003cbb0 02b0       add      sp, #8
0003cbb2 bde81040   pop.w    {r4, lr}
0003cbb6 fcf7e9b9   b.w      #0x38f8c
0003cbba 02b0       add      sp, #8
0003cbbc 10bd       pop      {r4, pc}
0003cbbe 00bf       nop      
0003cbc0 dcd9       bls      #0x3cb7c
0003cbc2 0500       movs     r5, r0
0003cbc4 f3d9       bls      #0x3cbae
0003cbc6 0500       movs     r5, r0
0003cbc8 11da       bge      #0x3cbee
0003cbca 0500       movs     r5, r0
0003cbcc 43da       bge      #0x3cc56
0003cbce 0500       movs     r5, r0
0003cbd0 6ada       bge      #0x3cca8
0003cbd2 0500       movs     r5, r0
0003cbd4 07b5       push     {r0, r1, r2, lr}
0003cbd6 f0f779fe   bl       #0x2d8cc
0003cbda 08b1       cbz      r0, #0x3cbe0
0003cbdc ebf7ecfa   bl       #0x281b8
0003cbe0 3123       movs     r3, #0x31
0003cbe2 8df80030   strb.w   r3, [sp]
0003cbe6 0723       movs     r3, #7
0003cbe8 8df80130   strb.w   r3, [sp, #1]
0003cbec 1023       movs     r3, #0x10
0003cbee 8df80230   strb.w   r3, [sp, #2]
0003cbf2 6846       mov      r0, sp
0003cbf4 0323       movs     r3, #3
0003cbf6 8df80330   strb.w   r3, [sp, #3]
0003cbfa 8df80430   strb.w   r3, [sp, #4]
0003cbfe f0f7d5fe   bl       #0x2d9ac
0003cc02 08b1       cbz      r0, #0x3cc08
0003cc04 ebf7d8fa   bl       #0x281b8
0003cc08 0448       ldr      r0, [pc, #0x10] ; [0x3cc1c]=0x3cafd
0003cc0a f0f7b7fe   bl       #0x2d97c
0003cc0e 08b1       cbz      r0, #0x3cc14
0003cc10 ebf7d2fa   bl       #0x281b8
0003cc14 03b0       add      sp, #0xc
0003cc16 5df804fb   ldr      pc, [sp], #4
0003cc1a 00bf       nop      
0003cc1c fdca       ldm      r2, {r0, r2, r3, r4, r5, r6, r7}
0003cc1e 0300       movs     r3, r0
0003cc20 70b5       push     {r4, r5, r6, lr}
0003cc22 0a4d       ldr      r5, [pc, #0x28] ; [0x3cc4c]=0x200149b7
0003cc24 0a4c       ldr      r4, [pc, #0x28] ; [0x3cc50]=0x200149cc
0003cc26 1326       movs     r6, #0x13
0003cc28 0021       movs     r1, #0
0003cc2a 3246       mov      r2, r6
0003cc2c 2846       mov      r0, r5
0003cc2e c4e90011   strd     r1, r1, [r4]
0003cc32 a160       str      r1, [r4, #8]
0003cc34 07f02dfd   bl       #0x44692
0003cc38 2846       mov      r0, r5
0003cc3a fff79ff9   bl       #0x3bf7c
0003cc3e 20b1       cbz      r0, #0x3cc4a
