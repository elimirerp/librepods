000243ea 114b       ldr      r3, [pc, #0x44] ; [0x24430]=0x20010158
000243ec 1b68       ldr      r3, [r3]
000243ee e3b1       cbz      r3, #0x2442a
000243f0 e37b       ldrb     r3, [r4, #0xf]
000243f2 144a       ldr      r2, [pc, #0x50] ; [0x24444]=0x4dd39 'TRUE'
000243f4 13f0010f   tst.w    r3, #1
000243f8 4ff00201   mov.w    r1, #2
000243fc 124b       ldr      r3, [pc, #0x48] ; [0x24448]=0x4dd3e 'FALSE'
000243fe 4ff00f00   mov.w    r0, #0xf
00024402 18bf       it       ne
00024404 1346       movne    r3, r2
00024406 114a       ldr      r2, [pc, #0x44] ; [0x2444c]=0x4e039 'source finding capability, simultaneous ranging and sound supported = %s'
00024408 12f05afb   bl       #0x36ac0
0002440c 0021       movs     r1, #0
0002440e 40f21170   movw     r0, #0x711
00024412 fff7d3fc   bl       #0x23dbc
00024416 dbe7       b        #0x243d0
00024418 0d4a       ldr      r2, [pc, #0x34] ; [0x24450]=0x4e082 'Error - Unknown opcode 0x%x'
0002441a 3b46       mov      r3, r7
0002441c 0021       movs     r1, #0
0002441e 0f20       movs     r0, #0xf
00024420 12f04efb   bl       #0x36ac0
00024424 d4e7       b        #0x243d0
00024426 0126       movs     r6, #1
00024428 a1e7       b        #0x2436e
0002442a 4ff6ff76   movw     r6, #0xffff
0002442e 9ee7       b        #0x2436e
