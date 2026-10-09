00026f70 51fc0128   mrrc2    p8, #0, r2, r1, c1
00026f74 0446       mov      r4, r0
00026f76 03d0       beq      #0x26f80
00026f78 0228       cmp      r0, #2
00026f7a 11d0       beq      #0x26fa0
00026f7c 0120       movs     r0, #1
00026f7e 0ae0       b        #0x26f96
00026f80 fef7ccfb   bl       #0x2571c
00026f84 0d4b       ldr      r3, [pc, #0x34] ; [0x26fbc]=0x26fc1
00026f86 0093       str      r3, [sp]
00026f88 0146       mov      r1, r0
00026f8a 2346       mov      r3, r4
00026f8c 2422       movs     r2, #0x24
00026f8e 1120       movs     r0, #0x11
00026f90 1af036f9   bl       #0x41200
00026f94 68b1       cbz      r0, #0x26fb2
00026f96 02b0       add      sp, #8
00026f98 bde81040   pop.w    {r4, lr}
00026f9c 01f00cb9   b.w      #0x281b8
00026fa0 fef7bcfb   bl       #0x2571c
00026fa4 054b       ldr      r3, [pc, #0x14] ; [0x26fbc]=0x26fc1
00026fa6 0093       str      r3, [sp]
00026fa8 0146       mov      r1, r0
00026faa 0123       movs     r3, #1
00026fac 2422       movs     r2, #0x24
00026fae 1620       movs     r0, #0x16
00026fb0 eee7       b        #0x26f90
00026fb2 02b0       add      sp, #8
00026fb4 10bd       pop      {r4, pc}
00026fb6 00bf       nop      
00026fb8 2ef5       .byte    0x2e, 0xf5
00026fba 0400       movs     r4, r0
00026fbc c16f       ldr      r1, [r0, #0x7c]
00026fbe 0200       movs     r2, r0
00026fc0 10b5       push     {r4, lr}
00026fc2 0446       mov      r4, r0
00026fc4 28b1       cbz      r0, #0x26fd2
00026fc6 0346       mov      r3, r0
00026fc8 044a       ldr      r2, [pc, #0x10] ; [0x26fdc]=0x4f544 'SK write failure: %x'
00026fca 0021       movs     r1, #0
00026fcc 0720       movs     r0, #7
00026fce 0ff0adfd   bl       #0x36b2c
00026fd2 2046       mov      r0, r4
00026fd4 bde81040   pop.w    {r4, lr}
00026fd8 fff78cbf   b.w      #0x26ef4
00026fdc 44f50400   adc      r0, r4, #0x840000
00026fe0 014b       ldr      r3, [pc, #4] ; [0x26fe8]=0x20011055
00026fe2 1878       ldrb     r0, [r3]
00026fe4 7047       bx       lr
00026fe6 00bf       nop      
00026fe8 5510       asrs     r5, r2, #1
00026fea 0120       movs     r0, #1
00026fec 014b       ldr      r3, [pc, #4] ; [0x26ff4]=0x20011059
00026fee 0022       movs     r2, #0
00026ff0 1a70       strb     r2, [r3]
00026ff2 7047       bx       lr
00026ff4 5910       asrs     r1, r3, #1
00026ff6 0120       movs     r0, #1
00026ff8 07b5       push     {r0, r1, r2, lr}
00026ffa 0421       movs     r1, #4
00026ffc 0190       str      r0, [sp, #4]
00026ffe 054a       ldr      r2, [pc, #0x14] ; [0x27014]=0x26d95
00027000 0deb0100   add.w    r0, sp, r1
00027004 01f00af9   bl       #0x2821c
00027008 08b1       cbz      r0, #0x2700e
0002700a 01f0d5f8   bl       #0x281b8
0002700e 03b0       add      sp, #0xc
00027010 5df804fb   ldr      pc, [sp], #4
00027014 956d       ldr      r5, [r2, #0x58]
00027016 0200       movs     r2, r0
00027018 0020       movs     r0, #0
0002701a fff7edbf   b.w      #0x26ff8
0002701e 0020       movs     r0, #0
00027020 fff7eabf   b.w      #0x26ff8
00027024 014b       ldr      r3, [pc, #4] ; [0x2702c]=0x200110a8
00027026 0022       movs     r2, #0
00027028 1a70       strb     r2, [r3]
0002702a 7047       bx       lr
0002702c a810       asrs     r0, r5, #2
0002702e 0120       movs     r0, #1
00027030 10b5       push     {r4, lr}
00027032 144c       ldr      r4, [pc, #0x50] ; [0x27084]=0x200110a8
00027034 2378       ldrb     r3, [r4]
00027036 042b       cmp      r3, #4
00027038 15d8       bhi      #0x27066
0002703a 1348       ldr      r0, [pc, #0x4c] ; [0x27088]=0x200110b0
0002703c 13f082f9   bl       #0x3a344
00027040 08b1       cbz      r0, #0x27046
00027042 01f0b9f8   bl       #0x281b8
00027046 1048       ldr      r0, [pc, #0x40] ; [0x27088]=0x200110b0
00027048 4ff47a71   mov.w    r1, #0x3e8
0002704c 13f087f9   bl       #0x3a35e
00027050 08b1       cbz      r0, #0x27056
00027052 01f0b1f8   bl       #0x281b8
00027056 2378       ldrb     r3, [r4]
00027058 0c4a       ldr      r2, [pc, #0x30] ; [0x2708c]=0x4f559 'Set R1 status retry %d'
0002705a bde81040   pop.w    {r4, lr}
0002705e 0221       movs     r1, #2
00027060 0720       movs     r0, #7
00027062 0ff063bd   b.w      #0x36b2c
00027066 0a4a       ldr      r2, [pc, #0x28] ; [0x27090]=0x4f570 'Failed to set R1 status. De-init state machine'
00027068 0021       movs     r1, #0
0002706a 0720       movs     r0, #7
0002706c 0ff05efd   bl       #0x36b2c
00027070 0021       movs     r1, #0
00027072 084a       ldr      r2, [pc, #0x20] ; [0x27094]=0x26e89
00027074 0846       mov      r0, r1
00027076 01f0d1f8   bl       #0x2821c
0002707a 074a       ldr      r2, [pc, #0x1c] ; [0x27098]=0x20011054
0002707c 0023       movs     r3, #0
0002707e 1370       strb     r3, [r2]
00027080 2370       strb     r3, [r4]
00027082 10bd       pop      {r4, pc}
00027084 a810       asrs     r0, r5, #2
00027086 0120       movs     r0, #1
00027088 b010       asrs     r0, r6, #2
0002708a 0120       movs     r0, #1
0002708c 59f50400   adcs     r0, sb, #0x840000
00027090 70f50400   sbcs     r0, r0, #0x840000
00027094 896e       ldr      r1, [r1, #0x68]
00027096 0200       movs     r2, r0
00027098 5410       asrs     r4, r2, #1
0002709a 0120       movs     r0, #1
0002709c 10b5       push     {r4, lr}
0002709e 0346       mov      r3, r0
000270a0 0446       mov      r4, r0
000270a2 134a       ldr      r2, [pc, #0x4c] ; [0x270f0]=0x4f59f 'R1 request %d'
000270a4 0121       movs     r1, #1
000270a6 0720       movs     r0, #7
000270a8 0ff040fd   bl       #0x36b2c
000270ac 114b       ldr      r3, [pc, #0x44] ; [0x270f4]=0x20011056
000270ae 1c70       strb     r4, [r3]
000270b0 fdf75efe   bl       #0x24d70
000270b4 104b       ldr      r3, [pc, #0x40] ; [0x270f8]=0x20011058
000270b6 042c       cmp      r4, #4
000270b8 1870       strb     r0, [r3]
000270ba 09d8       bhi      #0x270d0
000270bc 022c       cmp      r4, #2
000270be 09d8       bhi      #0x270d4
000270c0 7cb1       cbz      r4, #0x270e2
000270c2 bde81040   pop.w    {r4, lr}
000270c6 0d4a       ldr      r2, [pc, #0x34] ; [0x270fc]=0x4f5ad 'Unhandled rose state'
000270c8 0021       movs     r1, #0
000270ca 0720       movs     r0, #7
000270cc 0ff02ebd   b.w      #0x36b2c
000270d0 062c       cmp      r4, #6
000270d2 f6d1       bne      #0x270c2
000270d4 201f       subs     r0, r4, #4
000270d6 18bf       it       ne
000270d8 0120       movne    r0, #1
000270da fdf743fe   bl       #0x24d64
000270de 084a       ldr      r2, [pc, #0x20] ; [0x27100]=0x26ce9
000270e0 00e0       b        #0x270e4
000270e2 084a       ldr      r2, [pc, #0x20] ; [0x27104]=0x26ea5
000270e4 0021       movs     r1, #0
000270e6 bde81040   pop.w    {r4, lr}
000270ea 0846       mov      r0, r1
000270ec 01f096b8   b.w      #0x2821c
000270f0 9ff5       .byte    0x9f, 0xf5
000270f2 0400       movs     r4, r0
000270f4 5610       asrs     r6, r2, #1
000270f6 0120       movs     r0, #1
000270f8 5810       asrs     r0, r3, #1
000270fa 0120       movs     r0, #1
000270fc adf50400   sub.w    r0, sp, #0x840000
00027100 e96c       ldr      r1, [r5, #0x4c]
00027102 0200       movs     r2, r0
00027104 a56e       ldr      r5, [r4, #0x68]
00027106 0200       movs     r2, r0
00027108 054b       ldr      r3, [pc, #0x14] ; [0x27120]=0x20011081
0002710a 1870       strb     r0, [r3]
0002710c 054b       ldr      r3, [pc, #0x14] ; [0x27124]=0x20011055
0002710e 1b78       ldrb     r3, [r3]
00027110 23b1       cbz      r3, #0x2711c
00027112 0021       movs     r1, #0
00027114 044a       ldr      r2, [pc, #0x10] ; [0x27128]=0x26e89
00027116 0846       mov      r0, r1
00027118 01f080b8   b.w      #0x2821c
0002711c 7047       bx       lr
0002711e 00bf       nop      
00027120 8110       asrs     r1, r0, #2
00027122 0120       movs     r0, #1
00027124 5510       asrs     r5, r2, #1
00027126 0120       movs     r0, #1
00027128 896e       ldr      r1, [r1, #0x68]
0002712a 0200       movs     r2, r0
0002712c f7b5       push     {r0, r1, r2, r4, r5, r6, r7, lr}
0002712e 0546       mov      r5, r0
00027130 f8f764fe   bl       #0x1fdfc
00027134 0646       mov      r6, r0
00027136 431e       subs     r3, r0, #1
00027138 0020       movs     r0, #0
0002713a 0446       mov      r4, r0
0002713c 13f8012f   ldrb     r2, [r3, #1]!
00027140 0134       adds     r4, #1
00027142 3a2a       cmp      r2, #0x3a
00027144 e4b2       uxtb     r4, r4
00027146 2fd0       beq      #0x271a8
00027148 7e2a       cmp      r2, #0x7e
0002714a 2ed1       bne      #0x271aa
0002714c 1949       ldr      r1, [pc, #0x64] ; [0x271b4]=0x4ff6c
0002714e 3044       add      r0, r6
00027150 1df05afd   bl       #0x44c08
00027154 1849       ldr      r1, [pc, #0x60] ; [0x271b8]=0x4ff8f
00027156 0746       mov      r7, r0
00027158 3019       adds     r0, r6, r4
0002715a 1df055fd   bl       #0x44c08
0002715e 0446       mov      r4, r0
00027160 3846       mov      r0, r7
00027162 1df0f7f9   bl       #0x44554
00027166 0646       mov      r6, r0
00027168 2046       mov      r0, r4
0002716a 1df0f3f9   bl       #0x44554
0002716e 134c       ldr      r4, [pc, #0x4c] ; [0x271bc]=0x200110d0
00027170 6080       strh     r0, [r4, #2]
00027172 2846       mov      r0, r5
00027174 2680       strh     r6, [r4]
00027176 f8f74ffe   bl       #0x1fe18
0002717a 2081       strh     r0, [r4, #8]
0002717c 2846       mov      r0, r5
0002717e f8f759fe   bl       #0x1fe34
00027182 a080       strh     r0, [r4, #4]
00027184 2846       mov      r0, r5
00027186 f8f761fe   bl       #0x1fe4c
0002718a e080       strh     r0, [r4, #6]
0002718c 2846       mov      r0, r5
0002718e f8f779fe   bl       #0x1fe84
00027192 6388       ldrh     r3, [r4, #2]
00027194 6081       strh     r0, [r4, #0xa]
00027196 0093       str      r3, [sp]
00027198 2388       ldrh     r3, [r4]
0002719a 094a       ldr      r2, [pc, #0x24] ; [0x271c0]=0x4ff6e 'RTKIT MAJOR : %d ---- MINOR : %d'
0002719c 0121       movs     r1, #1
0002719e 1720       movs     r0, #0x17
000271a0 0ff0c4fc   bl       #0x36b2c
000271a4 03b0       add      sp, #0xc
000271a6 f0bd       pop      {r4, r5, r6, r7, pc}
000271a8 2046       mov      r0, r4
000271aa 202c       cmp      r4, #0x20
000271ac c6d1       bne      #0x2713c
000271ae 0024       movs     r4, #0
