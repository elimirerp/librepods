0003c980 02b0       add      sp, #8
0003c982 bde87040   pop.w    {r4, r5, r6, lr}
0003c986 01f05fbb   b.w      #0x3e048
0003c98a d18d       ldrh     r1, [r2, #0x2e]
0003c98c 9942       cmp      r1, r3
0003c98e 33d1       bne      #0x3c9f8
0003c990 6389       ldrh     r3, [r4, #0xa]
0003c992 3e4a       ldr      r2, [pc, #0xf8] ; [0x3ca8c]=0x5d984 'Write request (%d bytes)'
0003c994 0221       movs     r1, #2
0003c996 0c20       movs     r0, #0xc
0003c998 faf7c8f8   bl       #0x36b2c
0003c99c 6389       ldrh     r3, [r4, #0xa]
0003c99e 022b       cmp      r3, #2
0003c9a0 11d9       bls      #0x3c9c6
0003c9a2 227b       ldrb     r2, [r4, #0xc]
0003c9a4 012a       cmp      r2, #1
0003c9a6 1dd0       beq      #0x3c9e4
0003c9a8 3d4a       ldr      r2, [pc, #0xf4] ; [0x3caa0]=0x5d95d 'Command lengths do not exceed mtu'
0003c9aa 0021       movs     r1, #0
0003c9ac 0c20       movs     r0, #0xc
0003c9ae faf7bdf8   bl       #0x36b2c
0003c9b2 3368       ldr      r3, [r6]
0003c9b4 da8d       ldrh     r2, [r3, #0x2e]
0003c9b6 0323       movs     r3, #3
0003c9b8 0093       str      r3, [sp]
0003c9ba 2946       mov      r1, r5
0003c9bc b4f80d30   ldrh.w   r3, [r4, #0xd]
0003c9c0 40f20640   movw     r0, #0x406
0003c9c4 79e7       b        #0x3c8ba
0003c9c6 334a       ldr      r2, [pc, #0xcc] ; [0x3ca94]=0x5d91e 'Incomplete packet - len = %d'
0003c9c8 0021       movs     r1, #0
0003c9ca 0c20       movs     r0, #0xc
0003c9cc faf7aef8   bl       #0x36b2c
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
