000259d4 024b       ldr      r3, [pc, #8] ; [0x259e0]=0x20010d08
000259d6 0360       str      r3, [r0]
000259d8 9123       movs     r3, #0x91
000259da 8380       strh     r3, [r0, #4]
000259dc 7047       bx       lr
000259de 00bf       nop      
000259e0 080d       lsrs     r0, r1, #0x14
000259e2 0120       movs     r0, #1
000259e4 94df       svc      #0x94
000259e6 7047       bx       lr
000259e8 95df       svc      #0x95
000259ea 7047       bx       lr
000259ec 96df       svc      #0x96
000259ee 7047       bx       lr
000259f0 014b       ldr      r3, [pc, #4] ; [0x259f8]=0x2000fad4
000259f2 1878       ldrb     r0, [r3]
000259f4 7047       bx       lr
000259f6 00bf       nop      
000259f8 d4fa       .byte    0xd4, 0xfa
000259fa 0020       movs     r0, #0
000259fc 07b5       push     {r0, r1, r2, lr}
000259fe 074a       ldr      r2, [pc, #0x1c] ; [0x25a1c]=0x2000fad4
00025a00 1378       ldrb     r3, [r2]
00025a02 012b       cmp      r3, #1
00025a04 03d1       bne      #0x25a0e
00025a06 1070       strb     r0, [r2]
00025a08 03b0       add      sp, #0xc
00025a0a 5df804fb   ldr      pc, [sp], #4
00025a0e 0090       str      r0, [sp]
00025a10 034a       ldr      r2, [pc, #0xc] ; [0x25a20]=0x4ed3c 'Overloaded end reason: %u %u'
00025a12 0021       movs     r1, #0
00025a14 0720       movs     r0, #7
00025a16 11f089f8   bl       #0x36b2c
00025a1a f5e7       b        #0x25a08
00025a1c d4fa       .byte    0xd4, 0xfa
00025a1e 0020       movs     r0, #0
00025a20 3ced0400   ldc      p0, c0, [ip, #-0x10]!
00025a24 024a       ldr      r2, [pc, #8] ; [0x25a30]=0x20011016
00025a26 0023       movs     r3, #0
