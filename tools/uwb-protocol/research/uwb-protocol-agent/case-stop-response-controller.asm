00025dc0 fbf71cf8   bl       #0x20dfc
00025dc4 0446       mov      r4, r0
00025dc6 e0b1       cbz      r0, #0x25e02
00025dc8 174b       ldr      r3, [pc, #0x5c] ; [0x25e28]=0x10004
00025dca 9842       cmp      r0, r3
00025dcc 11d1       bne      #0x25df2
00025dce 174c       ldr      r4, [pc, #0x5c] ; [0x25e2c]=0x4f120
00025dd0 4ff47a40   mov.w    r0, #0xfa00
00025dd4 44f00104   orr      r4, r4, #1
00025dd8 a047       blx      r4
00025dda 4ff47a40   mov.w    r0, #0xfa00
00025dde a047       blx      r4
00025de0 134a       ldr      r2, [pc, #0x4c] ; [0x25e30]=0x4efb7 'Retrying Ranging stop after a 2 ms delay'
00025de2 2946       mov      r1, r5
00025de4 0720       movs     r0, #7
00025de6 10f0a1fe   bl       #0x36b2c
00025dea fbf707f8   bl       #0x20dfc
00025dee 0446       mov      r4, r0
00025df0 38b1       cbz      r0, #0x25e02
00025df2 0720       movs     r0, #7
00025df4 0f4a       ldr      r2, [pc, #0x3c] ; [0x25e34]=0x4efe0 'Failed to stop ranging: 0x%x'
00025df6 2346       mov      r3, r4
00025df8 0021       movs     r1, #0
00025dfa 10f097fe   bl       #0x36b2c
00025dfe 2046       mov      r0, r4
00025e00 d9e7       b        #0x25db6
00025e02 0023       movs     r3, #0
00025e04 0093       str      r3, [sp]
00025e06 0422       movs     r2, #4
00025e08 0523       movs     r3, #5
00025e0a 2021       movs     r1, #0x20
00025e0c 0120       movs     r0, #1
00025e0e 0ef0affe   bl       #0x34b70
00025e12 094a       ldr      r2, [pc, #0x24] ; [0x25e38]=0x4effd 'Sent ranging stop'
00025e14 0121       movs     r1, #1
00025e16 0720       movs     r0, #7
00025e18 03b0       add      sp, #0xc
00025e1a bde83040   pop.w    {r4, r5, lr}
00025e1e 10f085be   b.w      #0x36b2c
00025e22 00bf       nop      
00025e24 5ded0400   ldcl     p0, c0, [sp, #-0x10]
00025e28 0400       movs     r4, r0
00025e2a 0100       movs     r1, r0
00025e2c 20f1       .byte    0x20, 0xf1
00025e2e 0400       movs     r4, r0
00025e30 b7ef0400   vext.32  d0, d7, d4, #0
00025e34 e0ef0400   vaddl.s32 q8, d0, d4
00025e38 fdef0400   vext.32  d16, d13, d4, #0
00025e3c 0228       cmp      r0, #2
00025e3e 07b5       push     {r0, r1, r2, lr}
00025e40 0ad1       bne      #0x25e58
00025e42 0720       movs     r0, #7
00025e44 094a       ldr      r2, [pc, #0x24] ; [0x25e6c]=0x4f00f 'Range config complete'
00025e46 0121       movs     r1, #1
00025e48 10f070fe   bl       #0x36b2c
00025e4c 0020       movs     r0, #0
00025e4e 03b0       add      sp, #0xc
00025e50 5df804eb   ldr      lr, [sp], #4
00025e54 01f0d0b8   b.w      #0x26ff8
00025e58 0223       movs     r3, #2
00025e5a 0093       str      r3, [sp]
00025e5c 044a       ldr      r2, [pc, #0x10] ; [0x25e70]=0x4e549 'Invalid response %d - expected %d'
00025e5e 0346       mov      r3, r0
00025e60 0021       movs     r1, #0
00025e62 0720       movs     r0, #7
00025e64 10f062fe   bl       #0x36b2c
00025e68 0120       movs     r0, #1
00025e6a f0e7       b        #0x25e4e
00025e6c 0ff00400   and      r0, pc, #4
00025e70 49e5       b        #0x25906
00025e72 0400       movs     r4, r0
00025e74 30b5       push     {r4, r5, lr}
00025e76 0328       cmp      r0, #3
00025e78 87b0       sub      sp, #0x1c
00025e7a 0c46       mov      r4, r1
00025e7c 0ad1       bne      #0x25e94
00025e7e 414a       ldr      r2, [pc, #0x104] ; [0x25f84]=0x4f025 'Ranging complete'
00025e80 0720       movs     r0, #7
00025e82 0121       movs     r1, #1
00025e84 10f052fe   bl       #0x36b2c
00025e88 0020       movs     r0, #0
00025e8a 07b0       add      sp, #0x1c
00025e8c bde83040   pop.w    {r4, r5, lr}
00025e90 01f0b2b8   b.w      #0x26ff8
00025e94 0528       cmp      r0, #5
00025e96 1ad1       bne      #0x25ece
00025e98 0029       cmp      r1, #0
00025e9a 71d0       beq      #0x25f80
00025e9c 0846       mov      r0, r1
00025e9e fef799f8   bl       #0x23fd4
00025ea2 2288       ldrh     r2, [r4]
00025ea4 384b       ldr      r3, [pc, #0xe0] ; [0x25f88]=0x2001104a
00025ea6 4ab1       cbz      r2, #0x25ebc
00025ea8 1a78       ldrb     r2, [r3]
00025eaa 002a       cmp      r2, #0
00025eac 68d1       bne      #0x25f80
00025eae 0122       movs     r2, #1
00025eb0 1a70       strb     r2, [r3]
00025eb2 07b0       add      sp, #0x1c
00025eb4 bde83040   pop.w    {r4, r5, lr}
00025eb8 fef720bf   b.w      #0x24cfc
00025ebc 1978       ldrb     r1, [r3]
00025ebe 0029       cmp      r1, #0
00025ec0 5ed0       beq      #0x25f80
00025ec2 1a70       strb     r2, [r3]
00025ec4 07b0       add      sp, #0x1c
00025ec6 bde83040   pop.w    {r4, r5, lr}
00025eca fef725bf   b.w      #0x24d18
00025ece 1d28       cmp      r0, #0x1d
00025ed0 3dd1       bne      #0x25f4e
00025ed2 0029       cmp      r1, #0
00025ed4 54d0       beq      #0x25f80
00025ed6 8b89       ldrh     r3, [r1, #0xc]
00025ed8 2c4a       ldr      r2, [pc, #0xb0] ; [0x25f8c]=0x4f036 'RoseNBRangeResult status=%d cycleIdx=%d tofPs=%d soiRssi=%d soiRssi2=%d nbRxStatus|mmsRxStatus=0x%04x'
00025eda 5bba       rev16    r3, r3
00025edc 9bb2       uxth     r3, r3
00025ede 0493       str      r3, [sp, #0x10]
00025ee0 b1f90a30   ldrsh.w  r3, [r1, #0xa]
00025ee4 0393       str      r3, [sp, #0xc]
00025ee6 b1f90830   ldrsh.w  r3, [r1, #8]
00025eea 0293       str      r3, [sp, #8]
00025eec 4b68       ldr      r3, [r1, #4]
00025eee 0193       str      r3, [sp, #4]
00025ef0 4b88       ldrh     r3, [r1, #2]
00025ef2 0093       str      r3, [sp]
00025ef4 0b88       ldrh     r3, [r1]
00025ef6 0720       movs     r0, #7
00025ef8 0221       movs     r1, #2
00025efa 10f017fe   bl       #0x36b2c
00025efe 2388       ldrh     r3, [r4]
00025f00 234c       ldr      r4, [pc, #0x8c] ; [0x25f90]=0x2001103b
00025f02 b3b1       cbz      r3, #0x25f32
00025f04 602b       cmp      r3, #0x60
00025f06 14d0       beq      #0x25f32
00025f08 2378       ldrb     r3, [r4]
00025f0a 002b       cmp      r3, #0
00025f0c 38d1       bne      #0x25f80
00025f0e 214d       ldr      r5, [pc, #0x84] ; [0x25f94]=0x20011028
00025f10 214a       ldr      r2, [pc, #0x84] ; [0x25f98]=0x4f09c 'Start NB timeout timer (%us)'
00025f12 eb79       ldrb     r3, [r5, #7]
00025f14 0221       movs     r1, #2
00025f16 0720       movs     r0, #7
00025f18 10f008fe   bl       #0x36b2c
00025f1c 0123       movs     r3, #1
00025f1e 2370       strb     r3, [r4]
00025f20 eb79       ldrb     r3, [r5, #7]
00025f22 4ff47a70   mov.w    r0, #0x3e8
00025f26 5843       muls     r0, r3, r0
00025f28 07b0       add      sp, #0x1c
00025f2a bde83040   pop.w    {r4, r5, lr}
00025f2e fef7ffbe   b.w      #0x24d30
00025f32 2378       ldrb     r3, [r4]
00025f34 23b3       cbz      r3, #0x25f80
00025f36 194a       ldr      r2, [pc, #0x64] ; [0x25f9c]=0x4f0b9 'Stop NB timeout timer'
00025f38 0221       movs     r1, #2
00025f3a 0720       movs     r0, #7
00025f3c 10f0f6fd   bl       #0x36b2c
00025f40 0023       movs     r3, #0
00025f42 2370       strb     r3, [r4]
00025f44 07b0       add      sp, #0x1c
00025f46 bde83040   pop.w    {r4, r5, lr}
00025f4a fef7ffbe   b.w      #0x24d4c
00025f4e 0428       cmp      r0, #4
00025f50 08d1       bne      #0x25f64
00025f52 0d4b       ldr      r3, [pc, #0x34] ; [0x25f88]=0x2001104a
00025f54 1a78       ldrb     r2, [r3]
00025f56 1ab1       cbz      r2, #0x25f60
00025f58 0022       movs     r2, #0
00025f5a 1a70       strb     r2, [r3]
00025f5c fef7dcfe   bl       #0x24d18
00025f60 0f4a       ldr      r2, [pc, #0x3c] ; [0x25fa0]=0x4f0cf 'Ranging stopped'
00025f62 8de7       b        #0x25e80
00025f64 0523       movs     r3, #5
00025f66 0422       movs     r2, #4
00025f68 cde90132   strd     r3, r2, [sp, #4]
00025f6c 0323       movs     r3, #3
00025f6e 0093       str      r3, [sp]
00025f70 0c4a       ldr      r2, [pc, #0x30] ; [0x25fa4]=0x4f0df 'Invalid response %d - expected %d, %d or  %d'
00025f72 0346       mov      r3, r0
00025f74 0021       movs     r1, #0
00025f76 0720       movs     r0, #7
00025f78 10f0d8fd   bl       #0x36b2c
00025f7c 0120       movs     r0, #1
00025f7e 84e7       b        #0x25e8a
00025f80 07b0       add      sp, #0x1c
00025f82 30bd       pop      {r4, r5, pc}
