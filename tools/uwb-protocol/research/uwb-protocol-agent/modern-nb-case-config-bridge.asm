00025f70 0c4a       ldr      r2, [pc, #0x30] ; [0x25fa4]=0x4f0df 'Invalid response %d - expected %d, %d or  %d'
00025f72 0346       mov      r3, r0
00025f74 0021       movs     r1, #0
00025f76 0720       movs     r0, #7
00025f78 10f0d8fd   bl       #0x36b2c
00025f7c 0120       movs     r0, #1
00025f7e 84e7       b        #0x25e8a
00025f80 07b0       add      sp, #0x1c
00025f82 30bd       pop      {r4, r5, pc}
00025f84 25f00400   bic      r0, r5, #4
00025f88 4a10       asrs     r2, r1, #1
00025f8a 0120       movs     r0, #1
00025f8c 36f00400   bics     r0, r6, #4
00025f90 3b10       asrs     r3, r7, #0x20
00025f92 0120       movs     r0, #1
00025f94 2810       asrs     r0, r5, #0x20
00025f96 0120       movs     r0, #1
00025f98 9cf00400   eors     r0, ip, #4
00025f9c b9f0       .byte    0xb9, 0xf0
00025f9e 0400       movs     r4, r0
00025fa0 cff0       .byte    0xcf, 0xf0
00025fa2 0400       movs     r4, r0
00025fa4 dff0       .byte    0xdf, 0xf0
00025fa6 0400       movs     r4, r0
00025fa8 10b5       push     {r4, lr}
00025faa 0446       mov      r4, r0
00025fac 0038       subs     r0, #0
00025fae 4ff4e472   mov.w    r2, #0x1c8
00025fb2 0849       ldr      r1, [pc, #0x20] ; [0x25fd4]=0x4f10c 'rose_ranging.c'
00025fb4 18bf       it       ne
00025fb6 0120       movne    r0, #1
00025fb8 13f04cfe   bl       #0x39c54
00025fbc 064a       ldr      r2, [pc, #0x18] ; [0x25fd8]=0x2001103c
00025fbe 2368       ldr      r3, [r4]
00025fc0 1360       str      r3, [r2]
00025fc2 6368       ldr      r3, [r4, #4]
00025fc4 5360       str      r3, [r2, #4]
00025fc6 a368       ldr      r3, [r4, #8]
00025fc8 9360       str      r3, [r2, #8]
00025fca 044b       ldr      r3, [pc, #0x10] ; [0x25fdc]=0x2000fad3
00025fcc 0022       movs     r2, #0
00025fce 1a70       strb     r2, [r3]
00025fd0 10bd       pop      {r4, pc}
00025fd2 00bf       nop      
00025fd4 0cf10400   add.w    r0, ip, #4
00025fd8 3c10       asrs     r4, r7, #0x20
00025fda 0120       movs     r0, #1
00025fdc d3fa       .byte    0xd3, 0xfa
00025fde 0020       movs     r0, #0
00025fe0 10b5       push     {r4, lr}
00025fe2 0446       mov      r4, r0
00025fe4 0038       subs     r0, #0
00025fe6 4ff4e872   mov.w    r2, #0x1d0
00025fea 18bf       it       ne
00025fec 0120       movne    r0, #1
00025fee 0a49       ldr      r1, [pc, #0x28] ; [0x26018]=0x4f10c 'rose_ranging.c'
00025ff0 13f030fe   bl       #0x39c54
00025ff4 094b       ldr      r3, [pc, #0x24] ; [0x2601c]=0x20011028
00025ff6 2046       mov      r0, r4
00025ff8 04f11002   add.w    r2, r4, #0x10
00025ffc 50f8041b   ldr      r1, [r0], #4
00026000 43f8041b   str      r1, [r3], #4
00026004 9042       cmp      r0, r2
00026006 f9d1       bne      #0x25ffc
00026008 0288       ldrh     r2, [r0]
0002600a 1a80       strh     r2, [r3]
0002600c 8278       ldrb     r2, [r0, #2]
0002600e 9a70       strb     r2, [r3, #2]
00026010 034b       ldr      r3, [pc, #0xc] ; [0x26020]=0x2000fad3
00026012 0122       movs     r2, #1
00026014 1a70       strb     r2, [r3]
00026016 10bd       pop      {r4, pc}
00026018 0cf10400   add.w    r0, ip, #4
0002601c 2810       asrs     r0, r5, #0x20
0002601e 0120       movs     r0, #1
00026020 d3fa       .byte    0xd3, 0xfa
00026022 0020       movs     r0, #0
00026024 10b5       push     {r4, lr}
00026026 0446       mov      r4, r0
00026028 0038       subs     r0, #0
0002602a 4ff4ec72   mov.w    r2, #0x1d8
0002602e 18bf       it       ne
00026030 0120       movne    r0, #1
00026032 0749       ldr      r1, [pc, #0x1c] ; [0x26050]=0x4f10c 'rose_ranging.c'
00026034 13f00efe   bl       #0x39c54
00026038 064b       ldr      r3, [pc, #0x18] ; [0x26054]=0x20011018
0002603a 2046       mov      r0, r4
0002603c 04f11002   add.w    r2, r4, #0x10
00026040 50f8041b   ldr      r1, [r0], #4
00026044 43f8041b   str      r1, [r3], #4
00026048 9042       cmp      r0, r2
0002604a f9d1       bne      #0x26040
0002604c 10bd       pop      {r4, pc}
0002604e 00bf       nop      
00026050 0cf10400   add.w    r0, ip, #4
00026054 1810       asrs     r0, r3, #0x20
00026056 0120       movs     r0, #1
00026058 014b       ldr      r3, [pc, #4] ; [0x26060]=0x2000fad3
0002605a 1878       ldrb     r0, [r3]
0002605c 7047       bx       lr
0002605e 00bf       nop      
00026060 d3fa       .byte    0xd3, 0xfa
00026062 0020       movs     r0, #0
00026064 0020       movs     r0, #0
00026066 7047       bx       lr
00026068 0029       cmp      r1, #0
0002606a 0cbf       ite      eq
0002606c 0320       moveq    r0, #3
0002606e 0020       movne    r0, #0
00026070 7047       bx       lr
00026072 0000       movs     r0, r0
00026074 024b       ldr      r3, [pc, #8] ; [0x26080]=0x20011059
00026076 0122       movs     r2, #1
00026078 1a70       strb     r2, [r3]
0002607a 0020       movs     r0, #0
0002607c 7047       bx       lr
0002607e 00bf       nop      
00026080 5910       asrs     r1, r3, #1
00026082 0120       movs     r0, #1
00026084 10b5       push     {r4, lr}
00026086 0846       mov      r0, r1
00026088 0c46       mov      r4, r1
0002608a fdf73bff   bl       #0x23f04
0002608e 201e       subs     r0, r4, #0
00026090 18bf       it       ne
00026092 0120       movne    r0, #1
00026094 10bd       pop      {r4, pc}
00026096 0000       movs     r0, r0
00026098 0a4a       ldr      r2, [pc, #0x28] ; [0x260c4]=0x5d35d 'Complete'
0002609a 0b4b       ldr      r3, [pc, #0x2c] ; [0x260c8]=0x601f2 'Failed'
0002609c 10b5       push     {r4, lr}
0002609e 0c1e       subs     r4, r1, #0
000260a0 08bf       it       eq
000260a2 1346       moveq    r3, r2
000260a4 0121       movs     r1, #1
000260a6 094a       ldr      r2, [pc, #0x24] ; [0x260cc]=0x4f126 'Encrypted SN %s'
000260a8 0c20       movs     r0, #0xc
000260aa 10f03ffd   bl       #0x36b2c
000260ae 003c       subs     r4, #0
000260b0 18bf       it       ne
000260b2 0124       movne    r4, #1
000260b4 2146       mov      r1, r4
000260b6 2520       movs     r0, #0x25
000260b8 12f0a4fb   bl       #0x38804
000260bc fef7e8fd   bl       #0x24c90
000260c0 2046       mov      r0, r4
000260c2 10bd       pop      {r4, pc}
000260c4 5dd3       blo      #0x26182
000260c6 0500       movs     r5, r0
000260c8 f201       lsls     r2, r6, #7
000260ca 0600       movs     r6, r0
000260cc 26f1       .byte    0x26, 0xf1
000260ce 0400       movs     r4, r0
000260d0 08b5       push     {r3, lr}
000260d2 0220       movs     r0, #2
000260d4 fef758fe   bl       #0x24d88
000260d8 054a       ldr      r2, [pc, #0x14] ; [0x260f0]=0x4f136 'Deinit Rose w/ ST'
000260da 0121       movs     r1, #1
000260dc 0720       movs     r0, #7
000260de 10f025fd   bl       #0x36b2c
000260e2 fef7d5fd   bl       #0x24c90
000260e6 0038       subs     r0, #0
000260e8 18bf       it       ne
000260ea 0120       movne    r0, #1
000260ec 08bd       pop      {r3, pc}
000260ee 00bf       nop      
000260f0 36f1       .byte    0x36, 0xf1
000260f2 0400       movs     r4, r0
000260f4 08b5       push     {r3, lr}
000260f6 0020       movs     r0, #0
000260f8 fef746fe   bl       #0x24d88
000260fc fef7c8fd   bl       #0x24c90
00026100 0038       subs     r0, #0
00026102 18bf       it       ne
00026104 0120       movne    r0, #1
00026106 08bd       pop      {r3, pc}
00026108 08b5       push     {r3, lr}
0002610a 0120       movs     r0, #1
0002610c fef73cfe   bl       #0x24d88
00026110 054a       ldr      r2, [pc, #0x14] ; [0x26128]=0x4f148 'Deinit Rose w/ HE'
00026112 0121       movs     r1, #1
00026114 0720       movs     r0, #7
00026116 10f009fd   bl       #0x36b2c
0002611a fef7b9fd   bl       #0x24c90
0002611e 0038       subs     r0, #0
00026120 18bf       it       ne
00026122 0120       movne    r0, #1
00026124 08bd       pop      {r3, pc}
00026126 00bf       nop      
00026128 48f10400   adc      r0, r8, #4
0002612c 08b5       push     {r3, lr}
0002612e fef7dffb   bl       #0x248f0
00026132 0021       movs     r1, #0
00026134 024a       ldr      r2, [pc, #8] ; [0x26140]=0x26cf1
00026136 0846       mov      r0, r1
00026138 02f070f8   bl       #0x2821c
0002613c 0020       movs     r0, #0
0002613e 08bd       pop      {r3, pc}
00026140 f16c       ldr      r1, [r6, #0x4c]
00026142 0200       movs     r2, r0
00026144 08b5       push     {r3, lr}
00026146 fef7d3fb   bl       #0x248f0
0002614a 0021       movs     r1, #0
0002614c 024a       ldr      r2, [pc, #8] ; [0x26158]=0x26d09
0002614e 0846       mov      r0, r1
00026150 02f064f8   bl       #0x2821c
00026154 0020       movs     r0, #0
00026156 08bd       pop      {r3, pc}
00026158 096d       ldr      r1, [r1, #0x50]
0002615a 0200       movs     r2, r0
0002615c 13b5       push     {r0, r1, r4, lr}
0002615e 0c46       mov      r4, r1
00026160 31b1       cbz      r1, #0x26170
00026162 fef795fd   bl       #0x24c90
00026166 201e       subs     r0, r4, #0
00026168 18bf       it       ne
0002616a 0120       movne    r0, #1
0002616c 02b0       add      sp, #8
0002616e 10bd       pop      {r4, pc}
00026170 094a       ldr      r2, [pc, #0x24] ; [0x26198]=0x26d11
00026172 0846       mov      r0, r1
00026174 02f052f8   bl       #0x2821c
00026178 084b       ldr      r3, [pc, #0x20] ; [0x2619c]=0x20011056
0002617a 01a9       add      r1, sp, #4
0002617c 1b78       ldrb     r3, [r3]
0002617e 8df80430   strb.w   r3, [sp, #4]
00026182 0122       movs     r2, #1
00026184 40f2aa40   movw     r0, #0x4aa
00026188 0df04cfe   bl       #0x33e24
0002618c 0449       ldr      r1, [pc, #0x10] ; [0x261a0]=0x4f15a 'rose_state_machine.c'
0002618e 40f2       .byte    0x40, 0xf2
