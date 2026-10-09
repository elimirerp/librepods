0042301a 0424       movs     r4, #4
0042301c 3de0       b        #0x42309a
0042301e 0524       movs     r4, #5
00423020 3be0       b        #0x42309a
00423022 98f81510   ldrb.w   r1, [r8, #0x15]
00423026 00e0       b        #0x42302a
00423028 210a       lsrs     r1, r4, #8
0042302a 3822       movs     r2, #0x38
0042302c 0029       cmp      r1, #0
0042302e 4ff0380c   mov.w    ip, #0x38
00423032 2c46       mov      r4, r5
00423034 08bf       it       eq
00423036 0c22       moveq    r2, #0xc
00423038 e97d       ldrb     r1, [r5, #0x17]
0042303a 0029       cmp      r1, #0
0042303c 08bf       it       eq
0042303e 4ff00c0c   moveq.w  ip, #0xc
00423042 0021       movs     r1, #0
00423044 94f82430   ldrb.w   r3, [r4, #0x24]
00423048 13b9       cbnz     r3, #0x423050
0042304a 1346       mov      r3, r2
0042304c 84f82420   strb.w   r2, [r4, #0x24]
00423050 94f82500   ldrb.w   r0, [r4, #0x25]
00423054 10b9       cbnz     r0, #0x42305c
00423056 6046       mov      r0, ip
00423058 84f825c0   strb.w   ip, [r4, #0x25]
0042305c 9342       cmp      r3, r2
0042305e 02d2       bhs      #0x423066
00423060 4ff01a08   mov.w    r8, #0x1a
00423064 15e0       b        #0x423092
00423066 6045       cmp      r0, ip
00423068 02d2       bhs      #0x423070
0042306a 4ff01b08   mov.w    r8, #0x1b
0042306e 10e0       b        #0x423092
00423070 0322       movs     r2, #3
00423072 4ff47a70   mov.w    r0, #0x3e8
00423076 baf1000f   cmp.w    sl, #0
0042307a 18bf       it       ne
0042307c 0422       movne    r2, #4
0042307e 1144       add      r1, r2
00423080 09fb00f0   mul      r0, sb, r0
00423084 5943       muls     r1, r3, r1
00423086 fa22       movs     r2, #0xfa
00423088 5143       muls     r1, r2, r1
0042308a 8142       cmp      r1, r0
0042308c 68d9       bls      #0x423160
0042308e 4ff02108   mov.w    r8, #0x21
00423092 ddf81490   ldr.w    sb, [sp, #0x14]
