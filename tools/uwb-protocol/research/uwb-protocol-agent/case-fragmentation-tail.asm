0003c21e 2946       mov      r1, r5
0003c220 4046       mov      r0, r8
0003c222 01f0dffe   bl       #0x3dfe4
0003c226 10b3       cbz      r0, #0x3c26e
0003c228 0223       movs     r3, #2
0003c22a 8df81a30   strb.w   r3, [sp, #0x1a]
0003c22e 0df11603   add.w    r3, sp, #0x16
0003c232 0893       str      r3, [sp, #0x20]
0003c234 2f4b       ldr      r3, [pc, #0xbc] ; [0x3c2f4]=0x2000fbfc
0003c236 adf81660   strh.w   r6, [sp, #0x16]
0003c23a 06a9       add      r1, sp, #0x18
0003c23c 0026       movs     r6, #0
0003c23e 4046       mov      r0, r8
0003c240 cdf81b60   str.w    r6, [sp, #0x1b]
0003c244 8df81f60   strb.w   r6, [sp, #0x1f]
0003c248 cdf824a0   str.w    sl, [sp, #0x24]
0003c24c a3f80080   strh.w   r8, [r3]
0003c250 adf818b0   strh.w   fp, [sp, #0x18]
0003c254 fff72eff   bl       #0x3c0b4
0003c258 a8b1       cbz      r0, #0x3c286
0003c25a cde90140   strd     r4, r0, [sp, #4]
0003c25e 264a       ldr      r2, [pc, #0x98] ; [0x3c2f8]=0x5d698 'Send indication fail. opcode 0x%x, conn_handle 0x%x, length:%d, err 0x%x'
0003c260 cdf80080   str.w    r8, [sp]
0003c264 2b46       mov      r3, r5
0003c266 3146       mov      r1, r6
0003c268 0920       movs     r0, #9
0003c26a faf75ffc   bl       #0x36b2c
0003c26e 234a       ldr      r2, [pc, #0x8c] ; [0x3c2fc]=0x5d71c 'No indication sent, try next indication'
0003c270 0121       movs     r1, #1
0003c272 0920       movs     r0, #9
0003c274 faf75afc   bl       #0x36b2c
0003c278 fff744ff   bl       #0x3c104
0003c27c 0bb0       add      sp, #0x2c
0003c27e bde8f04f   pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0003c282 fff751bf   b.w      #0x3c128
0003c286 b5f5c06f   cmp.w    r5, #0x600
0003c28a cde90054   strd     r5, r4, [sp]
0003c28e 03d0       beq      #0x3c298
0003c290 40f20973   movw     r3, #0x709
0003c294 9d42       cmp      r5, r3
0003c296 1ad1       bne      #0x3c2ce
0003c298 194a       ldr      r2, [pc, #0x64] ; [0x3c300]=0x5d6e1 'Sending indication, conn_handle:0x%x opcode:0x%x length:%d'
0003c29a 4346       mov      r3, r8
0003c29c 0221       movs     r1, #2
0003c29e 0920       movs     r0, #9
0003c2a0 faf744fc   bl       #0x36b2c
0003c2a4 0e4b       ldr      r3, [pc, #0x38] ; [0x3c2e0]=0x2000fbfa
0003c2a6 1988       ldrh     r1, [r3]
0003c2a8 e319       adds     r3, r4, r7
0003c2aa 8b42       cmp      r3, r1
0003c2ac 13dd       ble      #0x3c2d6
0003c2ae 0e4b       ldr      r3, [pc, #0x38] ; [0x3c2e8]=0x20014988
0003c2b0 621a       subs     r2, r4, r1
0003c2b2 3a44       add      r2, r7
0003c2b4 c91b       subs     r1, r1, r7
0003c2b6 5868       ldr      r0, [r3, #4]
0003c2b8 1d80       strh     r5, [r3]
0003c2ba 92b2       uxth     r2, r2
0003c2bc 4944       add      r1, sb
0003c2be a3f802b0   strh.w   fp, [r3, #2]
0003c2c2 1a81       strh     r2, [r3, #8]
0003c2c4 0bb0       add      sp, #0x2c
0003c2c6 bde8f04f   pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0003c2ca 08f0c8b9   b.w      #0x4465e
0003c2ce 0c4a       ldr      r2, [pc, #0x30] ; [0x3c300]=0x5d6e1 'Sending indication, conn_handle:0x%x opcode:0x%x length:%d'
0003c2d0 4346       mov      r3, r8
0003c2d2 0121       movs     r1, #1
0003c2d4 e3e7       b        #0x3c29e
0003c2d6 0bb0       add      sp, #0x2c
0003c2d8 bde8f04f   pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, lr}
