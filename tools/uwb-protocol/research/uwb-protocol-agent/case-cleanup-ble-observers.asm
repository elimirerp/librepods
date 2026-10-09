0003b4b0 9868       ldr      r0, [r3, #8]
0003b4b2 0020       movs     r0, #0
0003b4b4 9142       cmp      r1, r2
0003b4b6 1cbf       itt      ne
0003b4b8 9b6e       ldrne    r3, [r3, #0x68]
0003b4ba 1843       orrne    r0, r3
0003b4bc 7047       bx       lr
0003b4be 00bf       nop      
0003b4c0 c045       cmp      r8, r8
0003b4c2 0120       movs     r0, #1
0003b4c4 ecf778be   b.w      #0x281b8
0003b4c8 08b5       push     {r3, lr}
0003b4ca 04f033ff   bl       #0x40334
0003b4ce 20b1       cbz      r0, #0x3b4da
0003b4d0 01f06efc   bl       #0x3cdb0
0003b4d4 08b1       cbz      r0, #0x3b4da
0003b4d6 ecf76ffe   bl       #0x281b8
0003b4da bde80840   pop.w    {r3, lr}
0003b4de 0021       movs     r1, #0
0003b4e0 0520       movs     r0, #5
0003b4e2 fdf78fb9   b.w      #0x38804
0003b4e6 07b5       push     {r0, r1, r2, lr}
0003b4e8 0146       mov      r1, r0
0003b4ea 0190       str      r0, [sp, #4]
0003b4ec 0020       movs     r0, #0
0003b4ee fff7c1ff   bl       #0x3b474
0003b4f2 30b9       cbnz     r0, #0x3b502
0003b4f4 0199       ldr      r1, [sp, #4]
0003b4f6 0120       movs     r0, #1
0003b4f8 03b0       add      sp, #0xc
0003b4fa 5df804eb   ldr      lr, [sp], #4
0003b4fe fff7b9bf   b.w      #0x3b474
0003b502 03b0       add      sp, #0xc
0003b504 5df804fb   ldr      pc, [sp], #4
0003b508 0128       cmp      r0, #1
0003b50a 08b5       push     {r3, lr}
0003b50c 08d8       bhi      #0x3b520
0003b50e 094b       ldr      r3, [pc, #0x24] ; [0x3b534]=0x200145c0
0003b510 6022       movs     r2, #0x60
0003b512 02fb0033   mla      r3, r2, r0, r3
0003b516 9a89       ldrh     r2, [r3, #0xc]
0003b518 4ff6ff73   movw     r3, #0xffff
0003b51c 9a42       cmp      r2, r3
0003b51e 07d1       bne      #0x3b530
0003b520 0346       mov      r3, r0
0003b522 054a       ldr      r2, [pc, #0x14] ; [0x3b538]=0x5d176 'Invalid conn_handle %d'
0003b524 1b20       movs     r0, #0x1b
0003b526 0021       movs     r1, #0
0003b528 fbf700fb   bl       #0x36b2c
0003b52c 0020       movs     r0, #0
0003b52e 08bd       pop      {r3, pc}
