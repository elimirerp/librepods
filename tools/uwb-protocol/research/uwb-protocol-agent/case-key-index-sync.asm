00038260 164d       ldr      r5, [pc, #0x58] ; [0x382bc]=0x200145c0
00038262 174f       ldr      r7, [pc, #0x5c] ; [0x382c0]=0x5ba41 'Keyroll indication'
00038264 dff85c80   ldr.w    r8, [pc, #0x5c] ; [0x382c4]=0x2000fc00
00038268 85b0       sub      sp, #0x14
0003826a 0024       movs     r4, #0
0003826c 4ff6ff76   movw     r6, #0xffff
00038270 ab89       ldrh     r3, [r5, #0xc]
00038272 b342       cmp      r3, r6
00038274 1ffa84f9   uxth.w   sb, r4
00038278 12d0       beq      #0x382a0
0003827a 3a46       mov      r2, r7
0003827c 0121       movs     r1, #1
0003827e 0b20       movs     r0, #0xb
00038280 fef754fc   bl       #0x36b2c
00038284 fff706fd   bl       #0x37c94
00038288 d8f80030   ldr.w    r3, [r8]
0003828c 0390       str      r0, [sp, #0xc]
0003828e d98b       ldrh     r1, [r3, #0x1e]
00038290 0423       movs     r3, #4
00038292 0093       str      r3, [sp]
00038294 40f20a22   movw     r2, #0x20a
00038298 03ab       add      r3, sp, #0xc
0003829a 4846       mov      r0, sb
0003829c 04f01afa   bl       #0x3c6d4
000382a0 6035       adds     r5, #0x60
000382a2 44b1       cbz      r4, #0x382b6
000382a4 fff7fcfc   bl       #0x37ca0
000382a8 0421       movs     r1, #4
000382aa 02f0cffb   bl       #0x3aa4c
000382ae 0020       movs     r0, #0
000382b0 05b0       add      sp, #0x14
000382b2 bde8f083   pop.w    {r4, r5, r6, r7, r8, sb, pc}
000382b6 0124       movs     r4, #1
000382b8 dae7       b        #0x38270
000382ba 00bf       nop      
000382bc c045       cmp      r8, r8
000382be 0120       movs     r0, #1
000382c0 41ba       rev16    r1, r0
000382c2 0500       movs     r5, r0
000382c4 00fc       .byte    0x00, 0xfc
000382c6 0020       movs     r0, #0
000382c8 08b5       push     {r3, lr}
000382ca f5f79bfb   bl       #0x2da04
000382ce 20b1       cbz      r0, #0x382da
000382d0 044a       ldr      r2, [pc, #0x10] ; [0x382e4]=0x5ba54 'Unexpected peer count'
000382d2 0021       movs     r1, #0
000382d4 1120       movs     r0, #0x11
000382d6 fef729fc   bl       #0x36b2c
000382da fff7c9fe   bl       #0x38070
000382de 0020       movs     r0, #0
000382e0 08bd       pop      {r3, pc}
000382e2 00bf       nop      
000382e4 54ba       rev16    r4, r2
000382e6 0500       movs     r5, r0
000382e8 08b5       push     {r3, lr}
000382ea 04f049fa   bl       #0x3c780
000382ee fff7bffe   bl       #0x38070
000382f2 0020       movs     r0, #0
000382f4 08bd       pop      {r3, pc}
000382f6 0000       movs     r0, r0
000382f8 10b5       push     {r4, lr}
000382fa 1a4b       ldr      r3, [pc, #0x68] ; [0x38364]=0x200141ce
000382fc 1b78       ldrb     r3, [r3]
000382fe 33b1       cbz      r3, #0x3830e
00038300 194a       ldr      r2, [pc, #0x64] ; [0x38368]=0x5ba6a 'BTFinding - Disconnect - try to reconnect'
00038302 0021       movs     r1, #0
00038304 0620       movs     r0, #6
00038306 fef711fc   bl       #0x36b2c
0003830a 02f061fc   bl       #0x3abd0
0003830e fff7c7fc   bl       #0x37ca0
00038312 164b       ldr      r3, [pc, #0x58] ; [0x3836c]=0x200141cf
00038314 164c       ldr      r4, [pc, #0x58] ; [0x38370]=0x200142ec
00038316 1b78       ldrb     r3, [r3]
00038318 002b       cmp      r3, #0
0003831a 14bf       ite      ne
0003831c 0321       movne    r1, #3
0003831e 0421       moveq    r1, #4
00038320 02f094fb   bl       #0x3aa4c
00038324 2378       ldrb     r3, [r4]
00038326 5bb1       cbz      r3, #0x38340
00038328 1249       ldr      r1, [pc, #0x48] ; [0x38374]=0xdbba0
0003832a 1348       ldr      r0, [pc, #0x4c] ; [0x38378]=0x200141d8
0003832c 02f017f8   bl       #0x3a35e
00038330 20b1       cbz      r0, #0x3833c
00038332 124a       ldr      r2, [pc, #0x48] ; [0x3837c]=0x5ba94 'Error starting key rotation timer'
00038334 0021       movs     r1, #0
00038336 0120       movs     r0, #1
00038338 fef7f8fb   bl       #0x36b2c
0003833c 0023       movs     r3, #0
0003833e 2370       strb     r3, [r4]
00038340 08f006f8   bl       #0x40350
00038344 50b1       cbz      r0, #0x3835c
00038346 0e4b       ldr      r3, [pc, #0x38] ; [0x38380]=0x2000fbb8
