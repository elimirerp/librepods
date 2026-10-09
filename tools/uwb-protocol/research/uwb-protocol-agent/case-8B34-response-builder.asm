00023dbc 2de9f043   push.w   {r4, r5, r6, r7, r8, sb, lr}
00023dc0 0746       mov      r7, r0
00023dc2 87b0       sub      sp, #0x1c
00023dc4 0420       movs     r0, #4
00023dc6 0e46       mov      r6, r1
00023dc8 17f0bbfa   bl       #0x3b342
00023dcc 4ff6ff73   movw     r3, #0xffff
00023dd0 9842       cmp      r0, r3
00023dd2 8046       mov      r8, r0
00023dd4 70d0       beq      #0x23eb8
00023dd6 0023       movs     r3, #0
00023dd8 0df11700   add.w    r0, sp, #0x17
00023ddc 8df81730   strb.w   r3, [sp, #0x17]
00023de0 04f08cfc   bl       #0x286fc
00023de4 364a       ldr      r2, [pc, #0xd8] ; [0x23ec0]=0x200101ac
00023de6 9df81700   ldrb.w   r0, [sp, #0x17]
00023dea 1478       ldrb     r4, [r2]
00023dec 354d       ldr      r5, [pc, #0xd4] ; [0x23ec4]=0x2001015c
00023dee 631c       adds     r3, r4, #1
00023df0 03f00303   and      r3, r3, #3
00023df4 1370       strb     r3, [r2]
00023df6 04f0a5fc   bl       #0x28744
00023dfa 334a       ldr      r2, [pc, #0xcc] ; [0x23ec8]=0x4dc59 'index into ind buf: %d'
00023dfc 2346       mov      r3, r4
00023dfe 0221       movs     r1, #2
00023e00 0f20       movs     r0, #0xf
00023e02 12f05dfe   bl       #0x36ac0
00023e06 04eb8403   add.w    r3, r4, r4, lsl #2
00023e0a a7f20672   subw     r2, r7, #0x706
00023e0e 9900       lsls     r1, r3, #2
00023e10 05eb8303   add.w    r3, r5, r3, lsl #2
00023e14 0b2a       cmp      r2, #0xb
00023e16 46d8       bhi      #0x23ea6
00023e18 dfe802f0   tbb      [pc, r2] ; [0x23e1c]=0x1d063c37
00023e1c 373c       subs     r4, #0x37
00023e1e 061d       adds     r6, r0, #4
00023e20 3737       adds     r7, #0x37
00023e22 1a45       cmp      r2, r3
00023e24 453c       subs     r4, #0x45
00023e26 4540       eors     r5, r0
00023e28 1422       movs     r2, #0x14
00023e2a 5443       muls     r4, r2, r4
00023e2c 0393       str      r3, [sp, #0xc]
00023e2e 2e51       str      r6, [r5, r4]
00023e30 01f0defd   bl       #0x259f0
00023e34 05eb0409   add.w    sb, r5, r4
00023e38 039b       ldr      r3, [sp, #0xc]
00023e3a 89f80400   strb.w   r0, [sb, #4]
00023e3e 0524       movs     r4, #5
00023e40 224a       ldr      r2, [pc, #0x88] ; [0x23ecc]=0x2000fbfc
00023e42 1268       ldr      r2, [r2]
00023e44 4046       mov      r0, r8
00023e46 d18f       ldrh     r1, [r2, #0x3e]
00023e48 0094       str      r4, [sp]
00023e4a 3a46       mov      r2, r7
00023e4c 18f03cfb   bl       #0x3c4c8
00023e50 07b0       add      sp, #0x1c
00023e52 bde8f083   pop.w    {r4, r5, r6, r7, r8, sb, pc}
00023e56 1e4a       ldr      r2, [pc, #0x78] ; [0x23ed0]=0x200101ad
00023e58 1421       movs     r1, #0x14
00023e5a 4c43       muls     r4, r1, r4
00023e5c 2819       adds     r0, r5, r4
00023e5e 1688       ldrh     r6, [r2]
00023e60 2e53       strh     r6, [r5, r4]
00023e62 d2f80250   ldr.w    r5, [r2, #2]
00023e66 d2f80640   ldr.w    r4, [r2, #6]
00023e6a c0f80250   str.w    r5, [r0, #2]
00023e6e c0f80640   str.w    r4, [r0, #6]
00023e72 d2f80e40   ldr.w    r4, [r2, #0xe]
00023e76 d2f80a50   ldr.w    r5, [r2, #0xa]
00023e7a c0f80a50   str.w    r5, [r0, #0xa]
00023e7e c0f80e40   str.w    r4, [r0, #0xe]
00023e82 528a       ldrh     r2, [r2, #0x12]
00023e84 4282       strh     r2, [r0, #0x12]
00023e86 0c46       mov      r4, r1
00023e88 dae7       b        #0x23e40
00023e8a 1422       movs     r2, #0x14
00023e8c 6243       muls     r2, r4, r2
00023e8e ae50       str      r6, [r5, r2]
00023e90 0424       movs     r4, #4
00023e92 d5e7       b        #0x23e40
00023e94 1422       movs     r2, #0x14
00023e96 5443       muls     r4, r2, r4
00023e98 2e51       str      r6, [r5, r4]
00023e9a f9e7       b        #0x23e90
00023e9c 0d4a       ldr      r2, [pc, #0x34] ; [0x23ed4]=0x20010158
00023e9e 1268       ldr      r2, [r2]
00023ea0 1268       ldr      r2, [r2]
00023ea2 6a50       str      r2, [r5, r1]
00023ea4 f4e7       b        #0x23e90
00023ea6 0c4a       ldr      r2, [pc, #0x30] ; [0x23ed8]=0x4dc70 'indication len unknown. Op: 0x%x'
00023ea8 3b46       mov      r3, r7
00023eaa 0021       movs     r1, #0
00023eac 0f20       movs     r0, #0xf
00023eae 07b0       add      sp, #0x1c
00023eb0 bde8f043   pop.w    {r4, r5, r6, r7, r8, sb, lr}
00023eb4 12f004be   b.w      #0x36ac0
00023eb8 084a       ldr      r2, [pc, #0x20] ; [0x23edc]=0x4dc91 'No conn hdl for sending indication. Op: 0x%x'
00023eba 3b46       mov      r3, r7
00023ebc 0121       movs     r1, #1
00023ebe f5e7       b        #0x23eac
00023ec0 ac01       lsls     r4, r5, #6
00023ec2 0120       movs     r0, #1
00023ec4 5c01       lsls     r4, r3, #5
00023ec6 0120       movs     r0, #1
00023ec8 59dc       bgt      #0x23f7e
00023eca 0400       movs     r4, r0
00023ecc fcfb       .byte    0xfc, 0xfb
00023ece 0020       movs     r0, #0
00023ed0 ad01       lsls     r5, r5, #6
00023ed2 0120       movs     r0, #1
00023ed4 5801       lsls     r0, r3, #5
00023ed6 0120       movs     r0, #1
00023ed8 70dc       bgt      #0x23fbc
00023eda 0400       movs     r4, r0
00023edc 91dc       bgt      #0x23e02
00023ede 0400       movs     r4, r0
