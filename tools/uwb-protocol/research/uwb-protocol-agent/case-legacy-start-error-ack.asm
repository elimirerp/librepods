00024418 0d4a       ldr      r2, [pc, #0x34] ; [0x24450]=0x4e2c2 'Error - Unknown opcode 0x%x'
0002441a 3b46       mov      r3, r7
0002441c 0021       movs     r1, #0
0002441e 0f20       movs     r0, #0xf
00024420 12f084fb   bl       #0x36b2c
00024424 d4e7       b        #0x243d0
00024426 0126       movs     r6, #1
00024428 a1e7       b        #0x2436e
0002442a 4ff6ff76   movw     r6, #0xffff
0002442e 9ee7       b        #0x2436e
00024430 6001       lsls     r0, r4, #5
00024432 0120       movs     r0, #1
00024434 95e0       b        #0x24562
00024436 0400       movs     r4, r0
00024438 59e1       b        #0x246ee
0002443a 0400       movs     r4, r0
0002443c ede1       b        #0x2481a
0002443e 0400       movs     r4, r0
00024440 00fc       .byte    0x00, 0xfc
00024442 0020       movs     r0, #0
