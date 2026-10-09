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
0042ba24 21f80b00   strh.w   r0, [r1, fp]
0042ba28 108a       ldrh     r0, [r2, #0x10]
0042ba2a 21f80a00   strh.w   r0, [r1, sl]
0042ba2e 508a       ldrh     r0, [r2, #0x12]
0042ba30 c852       strh     r0, [r1, r3]
0042ba32 069b       ldr      r3, [sp, #0x18]
0042ba34 107d       ldrb     r0, [r2, #0x14]
0042ba36 c854       strb     r0, [r1, r3]
0042ba38 079b       ldr      r3, [sp, #0x1c]
0042ba3a 507d       ldrb     r0, [r2, #0x15]
0042ba3c c854       strb     r0, [r1, r3]
0042ba3e 907d       ldrb     r0, [r2, #0x16]
0042ba40 089a       ldr      r2, [sp, #0x20]
0042ba42 8854       strb     r0, [r1, r2]
0042ba44 09b0       add      sp, #0x24
0042ba46 bde8000f   pop.w    {r8, sb, sl, fp}
0042ba4a f0bd       pop      {r4, r5, r6, r7, pc}
0042ba4c 2ff049fd   bl       #0x45b4e2
0042ba50 4ff4ac71   mov.w    r1, #0x158
0042ba54 0148       ldr      r0, [pc, #4] ; [0x42ba5c]=0x46f326 'rmac.c'
0042ba56 024a       ldr      r2, [pc, #8] ; [0x42ba60]=0x46f32d
0042ba58 0bf0befd   bl       #0x4375d8
0042ba5c 26f34600   ssat     r0, #7, r6, asr #1
0042ba60 2df34600   ssat     r0, #7, sp, asr #1
0042ba64 4cf20c23   movw     r3, #0xc20c
0042ba68 9842       cmp      r0, r3
0042ba6a 19d0       beq      #0x42baa0
0042ba6c 4cf20123   movw     r3, #0xc201
0042ba70 9842       cmp      r0, r3
0042ba72 1fd1       bne      #0x42bab4
0042ba74 108b       ldrh     r0, [r2, #0x18]
0042ba76 a1f85400   strh.w   r0, [r1, #0x54]
0042ba7a 508b       ldrh     r0, [r2, #0x1a]
0042ba7c a1f85600   strh.w   r0, [r1, #0x56]
0042ba80 908b       ldrh     r0, [r2, #0x1c]
0042ba82 a1f85800   strh.w   r0, [r1, #0x58]
0042ba86 d07f       ldrb     r0, [r2, #0x1f]
0042ba88 81f86100   strb.w   r0, [r1, #0x61]
0042ba8c 108c       ldrh     r0, [r2, #0x20]
0042ba8e a1f86200   strh.w   r0, [r1, #0x62]
0042ba92 508c       ldrh     r0, [r2, #0x22]
0042ba94 a1f86400   strh.w   r0, [r1, #0x64]
0042ba98 92f82400   ldrb.w   r0, [r2, #0x24]
0042ba9c 2e22       movs     r2, #0x2e
0042ba9e 07e0       b        #0x42bab0
0042baa0 108b       ldrh     r0, [r2, #0x18]
0042baa2 a1f86200   strh.w   r0, [r1, #0x62]
0042baa6 508b       ldrh     r0, [r2, #0x1a]
0042baa8 a1f86400   strh.w   r0, [r1, #0x64]
0042baac 908b       ldrh     r0, [r2, #0x1c]
0042baae 6622       movs     r2, #0x66
0042bab0 8852       strh     r0, [r1, r2]
0042bab2 7047       bx       lr
0042bab4 f8b5       push     {r3, r4, r5, r6, r7, lr}
0042bab6 04af       add      r7, sp, #0x10
0042bab8 2ff013fd   bl       #0x45b4e2
0042babc 40f27d11   movw     r1, #0x17d
0042bac0 0148       ldr      r0, [pc, #4] ; [0x42bac8]=0x46f326 'rmac.c'
0042bac2 024a       ldr      r2, [pc, #8] ; [0x42bacc]=0x46f32d
0042bac4 0bf088fd   bl       #0x4375d8
0042bac8 26f34600   ssat     r0, #7, r6, asr #1
0042bacc 2df34600   ssat     r0, #7, sp, asr #1
0042bad0 f0b5       push     {r4, r5, r6, r7, lr}
0042bad2 03af       add      r7, sp, #0xc
0042bad4 4df804bd   str      fp, [sp, #-0x4]!
0042bad8 0c46       mov      r4, r1
0042bada 0546       mov      r5, r0
0042badc 0320       movs     r0, #3
0042bade 0021       movs     r1, #0
0042bae0 40f20322   movw     r2, #0x203
0042bae4 0623       movs     r3, #6
0042bae6 0026       movs     r6, #0
0042bae8 07f0fcf9   bl       #0x432ee4
0042baec 0482       strh     r4, [r0, #0x10]
0042baee c581       strh     r5, [r0, #0xe]
0042baf0 8681       strh     r6, [r0, #0xc]
0042baf2 31f07cf8   bl       #0x45cbee
0042baf6 5df804bb   ldr      fp, [sp], #4
0042bafa bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042bafe 07f02fba   b.w      #0x432f60
0042bb02 00bf       nop      
0042bb04 feb5       push     {r1, r2, r3, r4, r5, r6, r7, lr}
0042bb06 06af       add      r7, sp, #0x18
0042bb08 0590       str      r0, [sp, #0x14]
0042bb0a c0b1       cbz      r0, #0x42bb3e
0042bb0c 8268       ldr      r2, [r0, #8]
0042bb0e e2b1       cbz      r2, #0x42bb4a
0042bb10 b0f84600   ldrh.w   r0, [r0, #0x46]
0042bb14 fff7dcff   bl       #0x42bad0
0042bb18 0420       movs     r0, #4
0042bb1a 4ff48071   mov.w    r1, #0x100
0042bb1e 4ff4e062   mov.w    r2, #0x700
0042bb22 0090       str      r0, [sp]
0042bb24 05ab       add      r3, sp, #0x14
0042bb26 42f20210   movw     r0, #0x2102
0042bb2a f5f74bf9   bl       #0x420dc4
0042bb2e 90b9       cbnz     r0, #0x42bb56
0042bb30 0598       ldr      r0, [sp, #0x14]
0042bb32 0021       movs     r1, #0
0042bb34 8068       ldr      r0, [r0, #8]
0042bb36 c160       str      r1, [r0, #0xc]
0042bb38 8160       str      r1, [r0, #8]
0042bb3a 06b0       add      sp, #0x18
0042bb3c 80bd       pop      {r7, pc}
0042bb3e 0c48       ldr      r0, [pc, #0x30] ; [0x42bb70]=0x46f326 'rmac.c'
0042bb40 0c4a       ldr      r2, [pc, #0x30] ; [0x42bb74]=0x46f330 'ses != ((void*)0)'
0042bb42 40f29511   movw     r1, #0x195
0042bb46 0bf03dfd   bl       #0x4375c4
0042bb4a 0948       ldr      r0, [pc, #0x24] ; [0x42bb70]=0x46f326 'rmac.c'
0042bb4c 0a4a       ldr      r2, [pc, #0x28] ; [0x42bb78]=0x46f342 'ses->task != ((void*)0)'
0042bb4e 4ff4cb71   mov.w    r1, #0x196
0042bb52 0bf037fd   bl       #0x4375c4
0042bb56 0599       ldr      r1, [sp, #0x14]
0042bb58 0022       movs     r2, #0
0042bb5a b1f84610   ldrh.w   r1, [r1, #0x46]
0042bb5e 31f029fe   bl       #0x45d7b4
0042bb62 40f29b11   movw     r1, #0x19b
0042bb66 0248       ldr      r0, [pc, #8] ; [0x42bb70]=0x46f326 'rmac.c'
0042bb68 044a       ldr      r2, [pc, #0x10] ; [0x42bb7c]=0x46f35a 'fsm_err == FSM_OK'
0042bb6a 0bf035fd   bl       #0x4375d8
0042bb6e 00bf       nop      
0042bb70 26f34600   ssat     r0, #7, r6, asr #1
0042bb74 30f3       .byte    0x30, 0xf3
0042bb76 4600       lsls     r6, r0, #1
0042bb78 42f34600   sbfx     r0, r2, #1, #7
0042bb7c 5af3       .byte    0x5a, 0xf3
0042bb7e 4600       lsls     r6, r0, #1
0042bb80 f0b5       push     {r4, r5, r6, r7, lr}
0042bb82 03af       add      r7, sp, #0xc
0042bb84 2de9000b   push.w   {r8, sb, fp}
0042bb88 1c46       mov      r4, r3
0042bb8a 1646       mov      r6, r2
0042bb8c 8846       mov      r8, r1
0042bb8e 8146       mov      sb, r0
0042bb90 0320       movs     r0, #3
0042bb92 0021       movs     r1, #0
0042bb94 40f20e22   movw     r2, #0x20e
0042bb98 6c23       movs     r3, #0x6c
0042bb9a 07f0a3f9   bl       #0x432ee4
0042bb9e 0546       mov      r5, r0
0042bba0 4661       str      r6, [r0, #0x14]
0042bba2 a0f80f80   strh.w   r8, [r0, #0xf]
0042bba6 a0f80d90   strh.w   sb, [r0, #0xd]
0042bbaa 0120       movs     r0, #1
0042bbac 04f12c01   add.w    r1, r4, #0x2c
0042bbb0 2022       movs     r2, #0x20
0042bbb2 2873       strb     r0, [r5, #0xc]
0042bbb4 05f11800   add.w    r0, r5, #0x18
0042bbb8 daf7cafe   bl       #0x406950
0042bbbc 05f13800   add.w    r0, r5, #0x38
0042bbc0 04f14c01   add.w    r1, r4, #0x4c
0042bbc4 30f0bbfa   bl       #0x45c13e
0042bbc8 05f15800   add.w    r0, r5, #0x58
0042bbcc 04f16c01   add.w    r1, r4, #0x6c
0042bbd0 30f0b5fa   bl       #0x45c13e
0042bbd4 2846       mov      r0, r5
0042bbd6 31f00af8   bl       #0x45cbee
0042bbda bde8000b   pop.w    {r8, sb, fp}
0042bbde bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042bbe2 07f0bdb9   b.w      #0x432f60
0042bbe6 f0b5       push     {r4, r5, r6, r7, lr}
0042bbe8 03af       add      r7, sp, #0xc
0042bbea 2de9000b   push.w   {r8, sb, fp}
0042bbee 1c46       mov      r4, r3
0042bbf0 9046       mov      r8, r2
0042bbf2 0e46       mov      r6, r1
0042bbf4 8146       mov      sb, r0
0042bbf6 0320       movs     r0, #3
0042bbf8 0021       movs     r1, #0
0042bbfa 40f20f22   movw     r2, #0x20f
0042bbfe 2c23       movs     r3, #0x2c
0042bc00 07f070f9   bl       #0x432ee4
0042bc04 0546       mov      r5, r0
0042bc06 a0f80f60   strh.w   r6, [r0, #0xf]
0042bc0a a0f80d90   strh.w   sb, [r0, #0xd]
0042bc0e 0120       movs     r0, #1
0042bc10 04f10c01   add.w    r1, r4, #0xc
0042bc14 2022       movs     r2, #0x20
0042bc16 2873       strb     r0, [r5, #0xc]
0042bc18 6068       ldr      r0, [r4, #4]
0042bc1a 6874       strb     r0, [r5, #0x11]
0042bc1c 2089       ldrh     r0, [r4, #8]
0042bc1e c5f81480   str.w    r8, [r5, #0x14]
0042bc22 6882       strh     r0, [r5, #0x12]
0042bc24 05f11800   add.w    r0, r5, #0x18
0042bc28 daf792fe   bl       #0x406950
0042bc2c 2846       mov      r0, r5
0042bc2e 30f0deff   bl       #0x45cbee
0042bc32 bde8000b   pop.w    {r8, sb, fp}
0042bc36 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042bc3a 07f091b9   b.w      #0x432f60
0042bc3e d0b5       push     {r4, r6, r7, lr}
0042bc40 02af       add      r7, sp, #8
0042bc42 1378       ldrb     r3, [r2]
0042bc44 202b       cmp      r3, #0x20
0042bc46 1c46       mov      r4, r3
0042bc48 28bf       it       hs
0042bc4a 2024       movhs    r4, #0x20
0042bc4c 2bb1       cbz      r3, #0x42bc5a
0042bc4e 0b88       ldrh     r3, [r1]
0042bc50 2344       add      r3, r4
0042bc52 0b80       strh     r3, [r1]
0042bc54 511c       adds     r1, r2, #1
0042bc56 30f05cfb   bl       #0x45c312
0042bc5a 2046       mov      r0, r4
0042bc5c d0bd       pop      {r4, r6, r7, pc}
0042bc5e f0b5       push     {r4, r5, r6, r7, lr}
0042bc60 03af       add      r7, sp, #0xc
0042bc62 2de9800f   push.w   {r7, r8, sb, sl, fp}
0042bc66 bc68       ldr      r4, [r7, #8]
0042bc68 8146       mov      sb, r0
0042bc6a 2078       ldrb     r0, [r4]
0042bc6c 90b3       cbz      r0, #0x42bcd4
0042bc6e 9846       mov      r8, r3
0042bc70 1546       mov      r5, r2
0042bc72 8a46       mov      sl, r1
0042bc74 00f12903   add.w    r3, r0, #0x29
0042bc78 d7f80cb0   ldr.w    fp, [r7, #0xc]
0042bc7c 0320       movs     r0, #3
0042bc7e 0021       movs     r1, #0
0042bc80 4ff40572   mov.w    r2, #0x214
0042bc84 07f02ef9   bl       #0x432ee4
0042bc88 0646       mov      r6, r0
0042bc8a a0f812a0   strh.w   sl, [r0, #0x12]
0042bc8e 0020       movs     r0, #0
0042bc90 7074       strb     r0, [r6, #0x11]
0042bc92 86f810b0   strb.w   fp, [r6, #0x10]
0042bc96 a6f80e90   strh.w   sb, [r6, #0xe]
0042bc9a b081       strh     r0, [r6, #0xc]
0042bc9c 2868       ldr      r0, [r5]
0042bc9e 6968       ldr      r1, [r5, #4]
0042bca0 f1f744f8   bl       #0x41cd2c
0042bca4 b161       str      r1, [r6, #0x18]
0042bca6 7061       str      r0, [r6, #0x14]
0042bca8 30f054f8   bl       #0x45bd54
0042bcac f061       str      r0, [r6, #0x1c]
0042bcae 3162       str      r1, [r6, #0x20]
0042bcb0 06f13500   add.w    r0, r6, #0x35
0042bcb4 14f8012b   ldrb     r2, [r4], #1
0042bcb8 2146       mov      r1, r4
0042bcba 86f83420   strb.w   r2, [r6, #0x34]
0042bcbe daf747fe   bl       #0x406950
0042bcc2 3046       mov      r0, r6
0042bcc4 30f093ff   bl       #0x45cbee
0042bcc8 bde8080f   pop.w    {r3, r8, sb, sl, fp}
0042bccc bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042bcd0 07f046b9   b.w      #0x432f60
0042bcd4 30f064bb   b.w      #0x45c3a0
0042bcd8 00eb4103   add.w    r3, r0, r1, lsl #1
0042bcdc 0029       cmp      r1, #0
0042bcde b3f81e32   ldrh.w   r3, [r3, #0x21e]
0042bce2 a2f85b30   strh.w   r3, [r2, #0x5b]
0042bce6 40f21e23   movw     r3, #0x21e
0042bcea 08bf       it       eq
0042bcec 4ff40873   moveq.w  r3, #0x220
0042bcf0 c15a       ldrh     r1, [r0, r3]
0042bcf2 4ff47a73   mov.w    r3, #0x3e8
0042bcf6 a2f86810   strh.w   r1, [r2, #0x68]
0042bcfa d0f82812   ldr.w    r1, [r0, #0x228]
0042bcfe 91fbf3f1   sdiv     r1, r1, r3
0042bd02 a2f86610   strh.w   r1, [r2, #0x66]
0042bd06 90f88409   ldrb.w   r0, [r0, #0x984]
0042bd0a 82f86a00   strb.w   r0, [r2, #0x6a]
0042bd0e 7047       bx       lr
0042bd10 46f65811   movw     r1, #0x6958
0042bd14 0022       movs     r2, #0
0042bd16 0844       add      r0, r1
0042bd18 0021       movs     r1, #0
0042bd1a 0329       cmp      r1, #3
0042bd1c 04bf       itt      eq
0042bd1e d0b2       uxtbeq   r0, r2
0042bd20 7047       bxeq     lr
0042bd22 50f82130   ldr.w    r3, [r0, r1, lsl #2]
0042bd26 022b       cmp      r3, #2
0042bd28 03d2       bhs      #0x42bd32
0042bd2a 8b40       lsls     r3, r1
0042bd2c 0131       adds     r1, #1
0042bd2e 1a43       orrs     r2, r3
0042bd30 f3e7       b        #0x42bd1a
0042bd32 80b5       push     {r7, lr}
0042bd34 6f46       mov      r7, sp
0042bd36 0348       ldr      r0, [pc, #0xc] ; [0x42bd44]=0x46f326 'rmac.c'
0042bd38 034a       ldr      r2, [pc, #0xc] ; [0x42bd48]=0x46f36c 'val_status_ipolicy <= 1u'
0042bd3a 40f2a121   movw     r1, #0x2a1
0042bd3e 0bf041fc   bl       #0x4375c4
0042bd42 00bf       nop      
0042bd44 26f34600   ssat     r0, #7, r6, asr #1
0042bd48 6cf34600   bfi      r0, ip, #1, #6
0042bd4c f0b5       push     {r4, r5, r6, r7, lr}
0042bd4e 03af       add      r7, sp, #0xc
0042bd50 2de90007   push.w   {r8, sb, sl}
0042bd54 0d46       mov      r5, r1
0042bd56 01f1a106   add.w    r6, r1, #0xa1
0042bd5a 1d49       ldr      r1, [pc, #0x74] ; [0x42bdd0]=0x469cf8
0042bd5c 9146       mov      sb, r2
0042bd5e 8246       mov      sl, r0
