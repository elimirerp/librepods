0001c994 2de9f043   push.w   {r4, r5, r6, r7, r8, sb, lr}
0001c998 87b0       sub      sp, #0x1c
0001c99a 8046       mov      r8, r0
0001c99c 8c4a       ldr      r2, [pc, #0x230] ; [0x1cbd0]=0x4a47d '---------------------------------------------------'
0001c99e dff89892   ldr.w    sb, [pc, #0x298] ; [0x1cc38]=0x2000fd30
0001c9a2 0720       movs     r0, #7
0001c9a4 0d46       mov      r5, r1
0001c9a6 0026       movs     r6, #0
0001c9a8 0221       movs     r1, #2
0001c9aa 0596       str      r6, [sp, #0x14]
0001c9ac 1af0bef8   bl       #0x36b2c
0001c9b0 884a       ldr      r2, [pc, #0x220] ; [0x1cbd4]=0x4a4b1 'SET CONFIG ARGS BEGIN'
0001c9b2 0221       movs     r1, #2
0001c9b4 0720       movs     r0, #7
0001c9b6 1af0b9f8   bl       #0x36b2c
0001c9ba 98f80030   ldrb.w   r3, [r8]
0001c9be 864a       ldr      r2, [pc, #0x218] ; [0x1cbd8]=0x4a4c7 'CC UWB: %u'
0001c9c0 0221       movs     r1, #2
0001c9c2 0720       movs     r0, #7
0001c9c4 1af0b2f8   bl       #0x36b2c
0001c9c8 b8f80130   ldrh.w   r3, [r8, #1]
0001c9cc 834a       ldr      r2, [pc, #0x20c] ; [0x1cbdc]=0x4a4d2 'Packet Type UWB: 0x%x'
0001c9ce 0221       movs     r1, #2
0001c9d0 0720       movs     r0, #7
0001c9d2 1af0abf8   bl       #0x36b2c
0001c9d6 98f80330   ldrb.w   r3, [r8, #3]
0001c9da 814a       ldr      r2, [pc, #0x204] ; [0x1cbe0]=0x4a4e8 'CC NB: %u'
0001c9dc 0221       movs     r1, #2
0001c9de 0720       movs     r0, #7
0001c9e0 1af0a4f8   bl       #0x36b2c
0001c9e4 98f80430   ldrb.w   r3, [r8, #4]
0001c9e8 7e4a       ldr      r2, [pc, #0x1f8] ; [0x1cbe4]=0x4a4f2 'CC NB SAR: %u'
0001c9ea 0221       movs     r1, #2
0001c9ec 0720       movs     r0, #7
0001c9ee 1af09df8   bl       #0x36b2c
0001c9f2 98f80530   ldrb.w   r3, [r8, #5]
0001c9f6 7c4a       ldr      r2, [pc, #0x1f0] ; [0x1cbe8]=0x4a500 'NB Band: 0x%x'
0001c9f8 0221       movs     r1, #2
0001c9fa 0720       movs     r0, #7
0001c9fc 1af096f8   bl       #0x36b2c
0001ca00 b8f80630   ldrh.w   r3, [r8, #6]
0001ca04 794a       ldr      r2, [pc, #0x1e4] ; [0x1cbec]=0x4a50e 'NB Packet Type Idx: %u'
0001ca06 0221       movs     r1, #2
0001ca08 0720       movs     r0, #7
0001ca0a 1af08ff8   bl       #0x36b2c
0001ca0e b8f90e30   ldrsh.w  r3, [r8, #0xe]
0001ca12 0293       str      r3, [sp, #8]
0001ca14 b8f90c30   ldrsh.w  r3, [r8, #0xc]
0001ca18 0193       str      r3, [sp, #4]
0001ca1a b8f90a30   ldrsh.w  r3, [r8, #0xa]
0001ca1e 744a       ldr      r2, [pc, #0x1d0] ; [0x1cbf0]=0x4a525 'CCA UNII3 - Ant0: %d, Ant1: %d, Ant2: %d, Ant3: %d'
0001ca20 0093       str      r3, [sp]
0001ca22 0221       movs     r1, #2
0001ca24 b8f90830   ldrsh.w  r3, [r8, #8]
0001ca28 0720       movs     r0, #7
0001ca2a 1af07ff8   bl       #0x36b2c
0001ca2e b8f91630   ldrsh.w  r3, [r8, #0x16]
0001ca32 0293       str      r3, [sp, #8]
0001ca34 b8f91430   ldrsh.w  r3, [r8, #0x14]
0001ca38 0193       str      r3, [sp, #4]
0001ca3a b8f91230   ldrsh.w  r3, [r8, #0x12]
0001ca3e 6d4a       ldr      r2, [pc, #0x1b4] ; [0x1cbf4]=0x4a558 'CCA UNII5 - Ant0: %d, Ant1: %d, Ant2: %d, Ant3: %d'
0001ca40 0093       str      r3, [sp]
0001ca42 0221       movs     r1, #2
0001ca44 b8f91030   ldrsh.w  r3, [r8, #0x10]
0001ca48 0720       movs     r0, #7
0001ca4a 1af06ff8   bl       #0x36b2c
0001ca4e 6a4a       ldr      r2, [pc, #0x1a8] ; [0x1cbf8]=0x4a58b '---------------------------------------------------\n'
0001ca50 0221       movs     r1, #2
0001ca52 0720       movs     r0, #7
0001ca54 1af06af8   bl       #0x36b2c
0001ca58 99f80140   ldrb.w   r4, [sb, #1]
0001ca5c 082c       cmp      r4, #8
0001ca5e 0ad0       beq      #0x1ca76
0001ca60 2346       mov      r3, r4
0001ca62 664a       ldr      r2, [pc, #0x198] ; [0x1cbfc]=0x4a5c0 'invalid state for setConfig: %u'
0001ca64 3146       mov      r1, r6
0001ca66 0720       movs     r0, #7
0001ca68 1af060f8   bl       #0x36b2c
0001ca6c 0824       movs     r4, #8
0001ca6e 2046       mov      r0, r4
0001ca70 07b0       add      sp, #0x1c
0001ca72 bde8f083   pop.w    {r4, r5, r6, r7, r8, sb, pc}
0001ca76 d9f81c71   ldr.w    r7, [sb, #0x11c]
0001ca7a 3fb1       cbz      r7, #0x1ca8c
0001ca7c 604a       ldr      r2, [pc, #0x180] ; [0x1cc00]=0x4a5e0 'Unexpected mp tx len: %u. Expected: 0'
0001ca7e 3b46       mov      r3, r7
0001ca80 3146       mov      r1, r6
0001ca82 0720       movs     r0, #7
0001ca84 1af052f8   bl       #0x36b2c
0001ca88 1a24       movs     r4, #0x1a
0001ca8a f0e7       b        #0x1ca6e
0001ca8c 8822       movs     r2, #0x88
0001ca8e 3946       mov      r1, r7
0001ca90 09f17900   add.w    r0, sb, #0x79
0001ca94 27f0fdfd   bl       #0x44692
0001ca98 0523       movs     r3, #5
0001ca9a 89f87930   strb.w   r3, [sb, #0x79]
0001ca9e 99f87a30   ldrb.w   r3, [sb, #0x7a]
0001caa2 0122       movs     r2, #1
0001caa4 03f0fc03   and      r3, r3, #0xfc
0001caa8 62f38713   bfi      r3, r2, #6, #2
0001caac 092d       cmp      r5, #9
0001caae 89f87a30   strb.w   r3, [sb, #0x7a]
0001cab2 3bd1       bne      #0x1cb2c
0001cab4 4246       mov      r2, r8
0001cab6 05a9       add      r1, sp, #0x14
0001cab8 1a20       movs     r0, #0x1a
0001caba fff77dfe   bl       #0x1c7b8
0001cabe 0446       mov      r4, r0
0001cac0 50b1       cbz      r0, #0x1cad8
0001cac2 504a       ldr      r2, [pc, #0x140] ; [0x1cc04]=0x4a606 'Failed to add IO config'
0001cac4 3946       mov      r1, r7
0001cac6 0720       movs     r0, #7
0001cac8 1af030f8   bl       #0x36b2c
0001cacc 4e4a       ldr      r2, [pc, #0x138] ; [0x1cc08]=0x4a727 'Failed to build ranging config'
0001cace 0021       movs     r1, #0
0001cad0 0720       movs     r0, #7
0001cad2 1af02bf8   bl       #0x36b2c
0001cad6 cae7       b        #0x1ca6e
0001cad8 4246       mov      r2, r8
0001cada 05a9       add      r1, sp, #0x14
0001cadc 2820       movs     r0, #0x28
0001cade fff76bfe   bl       #0x1c7b8
0001cae2 0446       mov      r4, r0
0001cae4 08b1       cbz      r0, #0x1caea
0001cae6 494a       ldr      r2, [pc, #0x124] ; [0x1cc0c]=0x4a61e 'Failed to add low power rx config'
0001cae8 ece7       b        #0x1cac4
0001caea 4246       mov      r2, r8
0001caec 05a9       add      r1, sp, #0x14
0001caee 2920       movs     r0, #0x29
0001caf0 fff762fe   bl       #0x1c7b8
0001caf4 0446       mov      r4, r0
0001caf6 10b1       cbz      r0, #0x1cafe
0001caf8 454a       ldr      r2, [pc, #0x114] ; [0x1cc10]=0x4a640 'Failed to add UWB power table config'
0001cafa 3146       mov      r1, r6
0001cafc e3e7       b        #0x1cac6
0001cafe 99f87830   ldrb.w   r3, [sb, #0x78]
0001cb02 012b       cmp      r3, #1
0001cb04 4ad1       bne      #0x1cb9c
0001cb06 4246       mov      r2, r8
0001cb08 05a9       add      r1, sp, #0x14
0001cb0a 2e20       movs     r0, #0x2e
0001cb06 4246       mov      r2, r8
0001cb08 05a9       add      r1, sp, #0x14
0001cb0a 2e20       movs     r0, #0x2e
0001cb0c fff754fe   bl       #0x1c7b8
0001cb10 0446       mov      r4, r0
0001cb12 08b1       cbz      r0, #0x1cb18
0001cb14 3f4a       ldr      r2, [pc, #0xfc] ; [0x1cc14]=0x4a665 'Failed to add NB power table config'
0001cb16 d5e7       b        #0x1cac4
0001cb18 4246       mov      r2, r8
0001cb1a 05a9       add      r1, sp, #0x14
0001cb1c 2f20       movs     r0, #0x2f
0001cb1e fff74bfe   bl       #0x1c7b8
0001cb22 0446       mov      r4, r0
0001cb24 0028       cmp      r0, #0
0001cb26 39d0       beq      #0x1cb9c
0001cb28 3b4a       ldr      r2, [pc, #0xec] ; [0x1cc18]=0x4a689 'Failed to add NB SAR power table config'
0001cb2a e6e7       b        #0x1cafa
0001cb2c 4a2d       cmp      r5, #0x4a
0001cb2e 08d0       beq      #0x1cb42
0001cb30 4c2d       cmp      r5, #0x4c
0001cb32 14d0       beq      #0x1cb5e
0001cb34 394a       ldr      r2, [pc, #0xe4] ; [0x1cc1c]=0x4a6ec 'Unsupported next state: %u'
0001cb36 2b46       mov      r3, r5
0001cb38 3946       mov      r1, r7
0001cb3a 0720       movs     r0, #7
0001cb3c 19f0f6ff   bl       #0x36b2c
0001cb40 95e7       b        #0x1ca6e
0001cb42 4246       mov      r2, r8
0001cb44 05a9       add      r1, sp, #0x14
0001cb46 2920       movs     r0, #0x29
0001cb48 fff736fe   bl       #0x1c7b8
0001cb4c 0446       mov      r4, r0
0001cb4e 28b3       cbz      r0, #0x1cb9c
0001cb50 2f4a       ldr      r2, [pc, #0xbc] ; [0x1cc10]=0x4a640 'Failed to add UWB power table config'
0001cb52 3946       mov      r1, r7
0001cb54 0720       movs     r0, #7
0001cb56 19f0e9ff   bl       #0x36b2c
0001cb5a 314a       ldr      r2, [pc, #0xc4] ; [0x1cc20]=0x4a6cd 'Failed to build test tx config'
0001cb5c b7e7       b        #0x1cace
0001cb5e 4246       mov      r2, r8
0001cb60 05a9       add      r1, sp, #0x14
0001cb62 2e20       movs     r0, #0x2e
0001cb64 fff728fe   bl       #0x1c7b8
0001cb68 0446       mov      r4, r0
0001cb6a 08b1       cbz      r0, #0x1cb70
0001cb6c 294a       ldr      r2, [pc, #0xa4] ; [0x1cc14]=0x4a665 'Failed to add NB power table config'
0001cb6e f0e7       b        #0x1cb52
0001cb70 4246       mov      r2, r8
0001cb72 05a9       add      r1, sp, #0x14
0001cb74 2f20       movs     r0, #0x2f
0001cb76 fff71ffe   bl       #0x1c7b8
0001cb7a 0446       mov      r4, r0
0001cb7c 08b1       cbz      r0, #0x1cb82
0001cb7e 264a       ldr      r2, [pc, #0x98] ; [0x1cc18]=0x4a689 'Failed to add NB SAR power table config'
0001cb80 e7e7       b        #0x1cb52
0001cb82 98f81830   ldrb.w   r3, [r8, #0x18]
0001cb86 4bb1       cbz      r3, #0x1cb9c
0001cb88 4246       mov      r2, r8
0001cb8a 05a9       add      r1, sp, #0x14
0001cb8c 3a20       movs     r0, #0x3a
0001cb8e fff713fe   bl       #0x1c7b8
0001cb92 0446       mov      r4, r0
0001cb94 10b1       cbz      r0, #0x1cb9c
0001cb96 234a       ldr      r2, [pc, #0x8c] ; [0x1cc24]=0x4a6b1 'Failed to add NB CCA config'
0001cb98 3146       mov      r1, r6
0001cb9a dbe7       b        #0x1cb54
0001cb9c 224a       ldr      r2, [pc, #0x88] ; [0x1cc28]=0x4a707 'Contents of set config command:'
0001cb9e 0221       movs     r1, #2
0001cba0 0720       movs     r0, #7
0001cba2 19f0c3ff   bl       #0x36b2c
0001cba6 214b       ldr      r3, [pc, #0x84] ; [0x1cc2c]=0x2000fab0
0001cba8 1b78       ldrb     r3, [r3]
0001cbaa 012b       cmp      r3, #1
0001cbac 04d9       bls      #0x1cbb8
0001cbae 204a       ldr      r2, [pc, #0x80] ; [0x1cc30]=0x4a5be
0001cbb0 0121       movs     r1, #1
0001cbb2 0020       movs     r0, #0
0001cbb4 19f0baff   bl       #0x36b2c
0001cbb8 059a       ldr      r2, [sp, #0x14]
0001cbba 1e49       ldr      r1, [pc, #0x78] ; [0x1cc34]=0x2000fda9
0001cbbc 0123       movs     r3, #1
0001cbbe cde90053   strd     r5, r3, [sp]
0001cbc2 0532       adds     r2, #5
0001cbc4 0020       movs     r0, #0
0001cbc6 fff73ffc   bl       #0x1c448
0001cbca 0446       mov      r4, r0
0001cbcc 4fe7       b        #0x1ca6e
0001cbce 00bf       nop      
0001cbd0 7da4       adr      r4, #0x1f4
0001cbd2 0400       movs     r4, r0
0001cbd4 b1a4       adr      r4, #0x2c4
0001cbd6 0400       movs     r4, r0
0001cbd8 c7a4       adr      r4, #0x31c
0001cbda 0400       movs     r4, r0
0001cbdc d2a4       adr      r4, #0x348
0001cbde 0400       movs     r4, r0
0001cbe0 e8a4       adr      r4, #0x3a0
0001cbe2 0400       movs     r4, r0
0001cbe4 f2a4       adr      r4, #0x3c8
0001cbe6 0400       movs     r4, r0
0001cbe8 00a5       adr      r5, #0
0001cbea 0400       movs     r4, r0
0001cbec 0ea5       adr      r5, #0x38
0001cbee 0400       movs     r4, r0
0001cbf0 25a5       adr      r5, #0x94
0001cbf2 0400       movs     r4, r0
0001cbf4 58a5       adr      r5, #0x160
0001cbf6 0400       movs     r4, r0
0001cbf8 8ba5       adr      r5, #0x22c
0001cbfa 0400       movs     r4, r0
0001cbfc c0a5       adr      r5, #0x300
0001cbfe 0400       movs     r4, r0
0001cc00 e0a5       adr      r5, #0x380
0001cc02 0400       movs     r4, r0
0001cc04 06a6       adr      r6, #0x18
0001cc06 0400       movs     r4, r0
0001cc08 27a7       adr      r7, #0x9c
0001cc0a 0400       movs     r4, r0
0001cc0c 1ea6       adr      r6, #0x78
0001cc0e 0400       movs     r4, r0
0001cc10 40a6       adr      r6, #0x100
0001cc12 0400       movs     r4, r0
0001cc14 65a6       adr      r6, #0x194
0001cc16 0400       movs     r4, r0
0001cc18 89a6       adr      r6, #0x224
0001cc1a 0400       movs     r4, r0
0001cc1c eca6       adr      r6, #0x3b0
0001cc1e 0400       movs     r4, r0
0001cc20 cda6       adr      r6, #0x334
0001cc22 0400       movs     r4, r0
0001cc24 b1a6       adr      r6, #0x2c4
0001cc26 0400       movs     r4, r0
0001cc28 07a7       adr      r7, #0x1c
0001cc2a 0400       movs     r4, r0
0001cc2c b0fa       .byte    0xb0, 0xfa
0001cc2e 0020       movs     r0, #0
0001cc30 bea5       adr      r5, #0x2f8
0001cc32 0400       movs     r4, r0
0001cc34 a9fd0020   stc2     p0, c2, [sb, #0]!
