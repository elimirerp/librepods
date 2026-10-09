0042b924 1929       cmp      r1, #0x19
0042b926 01d2       bhs      #0x42b92c
0042b928 f620       movs     r0, #0xf6
0042b92a 2ae0       b        #0x42b982
0042b92c 10b5       push     {r4, lr}
0042b92e b0f81340   ldrh.w   r4, [r0, #0x13]
0042b932 4af2a551   movw     r1, #0xa5a5
0042b936 8c42       cmp      r4, r1
0042b938 1ad1       bne      #0x42b970
0042b93a 01f52771   add.w    r1, r1, #0x29c
0042b93e 0488       ldrh     r4, [r0]
0042b940 89b2       uxth     r1, r1
0042b942 8c42       cmp      r4, r1
0042b944 16d1       bne      #0x42b974
0042b946 12b1       cbz      r2, #0x42b94e
0042b948 8178       ldrb     r1, [r0, #2]
0042b94a 9142       cmp      r1, r2
0042b94c 16d1       bne      #0x42b97c
0042b94e 1968       ldr      r1, [r3]
0042b950 5a68       ldr      r2, [r3, #4]
0042b952 d0f80330   ldr.w    r3, [r0, #3]
0042b956 d0f80740   ldr.w    r4, [r0, #7]
0042b95a 6240       eors     r2, r4
0042b95c 5940       eors     r1, r3
0042b95e 1143       orrs     r1, r2
0042b960 0ad1       bne      #0x42b978
0042b962 0299       ldr      r1, [sp, #8]
0042b964 807d       ldrb     r0, [r0, #0x16]
0042b966 401a       subs     r0, r0, r1
0042b968 18bf       it       ne
0042b96a 6ff00800   mvnne    r0, #8
0042b96e 06e0       b        #0x42b97e
0042b970 f220       movs     r0, #0xf2
0042b972 04e0       b        #0x42b97e
0042b974 f320       movs     r0, #0xf3
0042b976 02e0       b        #0x42b97e
0042b978 f520       movs     r0, #0xf5
0042b97a 00e0       b        #0x42b97e
0042b97c f420       movs     r0, #0xf4
0042b97e bde81040   pop.w    {r4, lr}
0042b982 c0b2       uxtb     r0, r0
0042b984 7047       bx       lr
0042b986 00bf       nop      
0042b988 f0b5       push     {r4, r5, r6, r7, lr}
0042b98a 03af       add      r7, sp, #0xc
0042b98c 2de9000f   push.w   {r8, sb, sl, fp}
0042b990 89b0       sub      sp, #0x24
0042b992 4cf20123   movw     r3, #0xc201
0042b996 9842       cmp      r0, r3
0042b998 1ad0       beq      #0x42b9d0
0042b99a 4cf20c23   movw     r3, #0xc20c
0042b99e 9842       cmp      r0, r3
0042b9a0 54d1       bne      #0x42ba4c
0042b9a2 4820       movs     r0, #0x48
0042b9a4 4ff05e0a   mov.w    sl, #0x5e
0042b9a8 4ff05c0b   mov.w    fp, #0x5c
0042b9ac 4ff04b09   mov.w    sb, #0x4b
0042b9b0 4924       movs     r4, #0x49
0042b9b2 3a25       movs     r5, #0x3a
0042b9b4 3826       movs     r6, #0x38
0042b9b6 4ff0400c   mov.w    ip, #0x40
0042b9ba 4ff03e0e   mov.w    lr, #0x3e
0042b9be 0890       str      r0, [sp, #0x20]
0042b9c0 4720       movs     r0, #0x47
0042b9c2 0790       str      r0, [sp, #0x1c]
0042b9c4 4620       movs     r0, #0x46
0042b9c6 0690       str      r0, [sp, #0x18]
0042b9c8 6020       movs     r0, #0x60
0042b9ca 0590       str      r0, [sp, #0x14]
0042b9cc 3c20       movs     r0, #0x3c
0042b9ce 15e0       b        #0x42b9fc
0042b9d0 3e20       movs     r0, #0x3e
0042b9d2 4ff04e0a   mov.w    sl, #0x4e
0042b9d6 4ff04c0b   mov.w    fp, #0x4c
0042b9da 4ff04109   mov.w    sb, #0x41
0042b9de 3f24       movs     r4, #0x3f
0042b9e0 2425       movs     r5, #0x24
0042b9e2 2226       movs     r6, #0x22
0042b9e4 4ff0340c   mov.w    ip, #0x34
0042b9e8 4ff0320e   mov.w    lr, #0x32
0042b9ec 0890       str      r0, [sp, #0x20]
0042b9ee 3d20       movs     r0, #0x3d
0042b9f0 0790       str      r0, [sp, #0x1c]
0042b9f2 3c20       movs     r0, #0x3c
0042b9f4 0690       str      r0, [sp, #0x18]
0042b9f6 5020       movs     r0, #0x50
0042b9f8 0590       str      r0, [sp, #0x14]
0042b9fa 3020       movs     r0, #0x30
0042b9fc b2f80280   ldrh.w   r8, [r2, #2]
0042ba00 21f80e80   strh.w   r8, [r1, lr]
0042ba04 1388       ldrh     r3, [r2]
0042ba06 21f80c30   strh.w   r3, [r1, ip]
0042ba0a 9388       ldrh     r3, [r2, #4]
0042ba0c 0b52       strh     r3, [r1, r0]
0042ba0e 059b       ldr      r3, [sp, #0x14]
0042ba10 d088       ldrh     r0, [r2, #6]
0042ba12 8853       strh     r0, [r1, r6]
0042ba14 1089       ldrh     r0, [r2, #8]
0042ba16 4853       strh     r0, [r1, r5]
0042ba18 5089       ldrh     r0, [r2, #0xa]
0042ba1a 0853       strh     r0, [r1, r4]
0042ba1c 9089       ldrh     r0, [r2, #0xc]
0042ba1e 21f80900   strh.w   r0, [r1, sb]
0042ba22 d089       ldrh     r0, [r2, #0xe]
