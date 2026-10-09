00023dbc 2de9f043   push.w   {r4, r5, r6, r7, r8, sb, lr}
00023dc0 0746       mov      r7, r0
00023dc2 87b0       sub      sp, #0x1c
00023dc4 0420       movs     r0, #4
00023dc6 0e46       mov      r6, r1
00023dc8 17f0c1fb   bl       #0x3b54e
00023dcc 4ff6ff73   movw     r3, #0xffff
00023dd0 9842       cmp      r0, r3
00023dd2 8046       mov      r8, r0
00023dd4 70d0       beq      #0x23eb8
00023dd6 0023       movs     r3, #0
00023dd8 0df11700   add.w    r0, sp, #0x17
00023ddc 8df81730   strb.w   r3, [sp, #0x17]
00023de0 04f0befc   bl       #0x28760
00023de4 364a       ldr      r2, [pc, #0xd8] ; [0x23ec0]=0x200101b4
00023de6 9df81700   ldrb.w   r0, [sp, #0x17]
00023dea 1478       ldrb     r4, [r2]
00023dec 354d       ldr      r5, [pc, #0xd4] ; [0x23ec4]=0x20010164
00023dee 631c       adds     r3, r4, #1
00023df0 03f00303   and      r3, r3, #3
00023df4 1370       strb     r3, [r2]
00023df6 04f0d7fc   bl       #0x287a8
00023dfa 334a       ldr      r2, [pc, #0xcc] ; [0x23ec8]=0x4de99 'index into ind buf: %d'
00023dfc 2346       mov      r3, r4
00023dfe 0221       movs     r1, #2
00023e00 0f20       movs     r0, #0xf
00023e02 12f093fe   bl       #0x36b2c
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
00023e40 224a       ldr      r2, [pc, #0x88] ; [0x23ecc]=0x2000fc00
00023e42 1268       ldr      r2, [r2]
00023e44 4046       mov      r0, r8
00023e46 d18f       ldrh     r1, [r2, #0x3e]
00023e48 0094       str      r4, [sp]
00023e4a 3a46       mov      r2, r7
00023e4c 18f042fc   bl       #0x3c6d4
00023e50 07b0       add      sp, #0x1c
00023e52 bde8f083   pop.w    {r4, r5, r6, r7, r8, sb, pc}
00023e56 1e4a       ldr      r2, [pc, #0x78] ; [0x23ed0]=0x200101b5
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
00023e9c 0d4a       ldr      r2, [pc, #0x34] ; [0x23ed4]=0x20010160
00023e9e 1268       ldr      r2, [r2]
00023ea0 1268       ldr      r2, [r2]
00023ea2 6a50       str      r2, [r5, r1]
00023ea4 f4e7       b        #0x23e90
00023ea6 0c4a       ldr      r2, [pc, #0x30] ; [0x23ed8]=0x4deb0 'indication len unknown. Op: 0x%x'
00023ea8 3b46       mov      r3, r7
00023eaa 0021       movs     r1, #0
00023eac 0f20       movs     r0, #0xf
00023eae 07b0       add      sp, #0x1c
00023eb0 bde8f043   pop.w    {r4, r5, r6, r7, r8, sb, lr}
00023eb4 12f03abe   b.w      #0x36b2c
00023eb8 084a       ldr      r2, [pc, #0x20] ; [0x23edc]=0x4ded1 'No conn hdl for sending indication. Op: 0x%x'
00023eba 3b46       mov      r3, r7
00023ebc 0121       movs     r1, #1
00023ebe f5e7       b        #0x23eac
00023ec0 b401       lsls     r4, r6, #6
00023ec2 0120       movs     r0, #1
00023ec4 6401       lsls     r4, r4, #5
00023ec6 0120       movs     r0, #1
00023ec8 99de       udf      #0x99
00023eca 0400       movs     r4, r0
00023ecc 00fc       .byte    0x00, 0xfc
00023ece 0020       movs     r0, #0
00023ed0 b501       lsls     r5, r6, #6
00023ed2 0120       movs     r0, #1
00023ed4 6001       lsls     r0, r4, #5
00023ed6 0120       movs     r0, #1
00023ed8 b0de       udf      #0xb0
00023eda 0400       movs     r4, r0
00023edc d1de       udf      #0xd1
00023ede 0400       movs     r4, r0
00023ee0 10b5       push     {r4, lr}
00023ee2 0446       mov      r4, r0
00023ee4 0038       subs     r0, #0
00023ee6 0549       ldr      r1, [pc, #0x14] ; [0x23efc]=0x4defe 'precise_control_point.c'
00023ee8 4ff04302   mov.w    r2, #0x43
00023eec 18bf       it       ne
00023eee 0120       movne    r0, #1
00023ef0 15f0b0fe   bl       #0x39c54
00023ef4 024b       ldr      r3, [pc, #8] ; [0x23f00]=0x20010160
00023ef6 1c60       str      r4, [r3]
00023ef8 10bd       pop      {r4, pc}
00023efa 00bf       nop      
00023efc fede       trap     
00023efe 0400       movs     r4, r0
00023f00 6001       lsls     r0, r4, #5
00023f02 0120       movs     r0, #1
00023f04 0146       mov      r1, r0
00023f06 40f20670   movw     r0, #0x706
00023f0a fff757bf   b.w      #0x23dbc
00023f0e 0000       movs     r0, r0
00023f10 10b5       push     {r4, lr}
00023f12 0146       mov      r1, r0
00023f14 40f20b70   movw     r0, #0x70b
00023f18 fff750ff   bl       #0x23dbc
00023f1c 0420       movs     r0, #4
00023f1e 17f016fb   bl       #0x3b54e
00023f22 4ff6ff73   movw     r3, #0xffff
00023f26 9842       cmp      r0, r3
00023f28 0446       mov      r4, r0
00023f2a 0bd0       beq      #0x23f44
00023f2c 0022       movs     r2, #0
00023f2e 0421       movs     r1, #4
00023f30 17f0e6fb   bl       #0x3b700
00023f34 2346       mov      r3, r4
00023f36 074a       ldr      r2, [pc, #0x1c] ; [0x23f54]=0x4df16 'R1 deinit. conn_hdl: %d'
00023f38 bde81040   pop.w    {r4, lr}
00023f3c 0121       movs     r1, #1
00023f3e 0f20       movs     r0, #0xf
00023f40 12f0f4bd   b.w      #0x36b2c
00023f44 bde81040   pop.w    {r4, lr}
00023f48 034a       ldr      r2, [pc, #0xc] ; [0x23f58]=0x4df2e 'Invalid conn handle. Did not clean up status bits'
00023f4a 0021       movs     r1, #0
00023f4c 0f20       movs     r0, #0xf
00023f4e 12f0edbd   b.w      #0x36b2c
00023f52 00bf       nop      
00023f54 16df       svc      #0x16
00023f56 0400       movs     r4, r0
00023f58 2edf       svc      #0x2e
00023f5a 0400       movs     r4, r0
00023f5c 10b5       push     {r4, lr}
00023f5e 0446       mov      r4, r0
00023f60 0120       movs     r0, #1
00023f62 17f0f4fa   bl       #0x3b54e
00023f66 4ff6ff73   movw     r3, #0xffff
00023f6a 9842       cmp      r0, r3
00023f6c 03d0       beq      #0x23f76
00023f6e 0022       movs     r2, #0
00023f70 0121       movs     r1, #1
00023f72 17f0c5fb   bl       #0x3b700
00023f76 2146       mov      r1, r4
00023f78 4ff4e160   mov.w    r0, #0x708
00023f7c bde81040   pop.w    {r4, lr}
00023f80 fff71cbf   b.w      #0x23dbc
00023f84 70b5       push     {r4, r5, r6, lr}
00023f86 0546       mov      r5, r0
00023f88 02f066f8   bl       #0x26058
00023f8c 0128       cmp      r0, #1
00023f8e 0446       mov      r4, r0
00023f90 0e49       ldr      r1, [pc, #0x38] ; [0x23fcc]=0x4defe 'precise_control_point.c'
00023f92 8cbf       ite      hi
00023f94 0020       movhi    r0, #0
00023f96 0120       movls    r0, #1
00023f98 4ff40d72   mov.w    r2, #0x234
00023f9c 15f05afe   bl       #0x39c54
00023fa0 4cb1       cbz      r4, #0x23fb6
00023fa2 012c       cmp      r4, #1
00023fa4 0ed0       beq      #0x23fc4
00023fa6 2346       mov      r3, r4
00023fa8 094a       ldr      r2, [pc, #0x24] ; [0x23fd0]=0x4df60 'Unknown ranging mode: %u'
00023faa bde87040   pop.w    {r4, r5, r6, lr}
00023fae 0021       movs     r1, #0
00023fb0 0f20       movs     r0, #0xf
00023fb2 12f0bbbd   b.w      #0x36b2c
00023fb6 2946       mov      r1, r5
00023fb8 40f20770   movw     r0, #0x707
00023fbc bde87040   pop.w    {r4, r5, r6, lr}
00023fc0 fff7fcbe   b.w      #0x23dbc
00023fc4 2946       mov      r1, r5
00023fc6 40f20f70   movw     r0, #0x70f
00023fca f7e7       b        #0x23fbc
00023fcc fede       trap     
00023fce 0400       movs     r4, r0
00023fd0 60df       svc      #0x60
00023fd2 0400       movs     r4, r0
00023fd4 10b4       push     {r4}
00023fd6 084a       ldr      r2, [pc, #0x20] ; [0x23ff8]=0x200101b5
00023fd8 0346       mov      r3, r0
00023fda 00f12001   add.w    r1, r0, #0x20
00023fde 53f8044b   ldr      r4, [r3], #4
00023fe2 42f8044b   str      r4, [r2], #4
00023fe6 8b42       cmp      r3, r1
00023fe8 f9d1       bne      #0x23fde
00023fea 0188       ldrh     r1, [r0]
00023fec 5df8044b   ldr      r4, [sp], #4
00023ff0 40f20970   movw     r0, #0x709
00023ff4 fff7e2be   b.w      #0x23dbc
00023ff8 b501       lsls     r5, r6, #6
00023ffa 0120       movs     r0, #1
00023ffc 0146       mov      r1, r0
00023ffe 40f20a70   movw     r0, #0x70a
00024002 fff7dbbe   b.w      #0x23dbc
00024006 0000       movs     r0, r0
