0002447c bdbd       pop      {r0, r2, r3, r4, r5, r7, pc}
0002447e 00bf       nop      
00024480 2ce3       b        #0x24adc
00024482 0400       movs     r4, r0
00024484 08b5       push     {r3, lr}
00024486 fdf73fff   bl       #0x22308
0002448a bde80840   pop.w    {r3, lr}
0002448e 0068       ldr      r0, [r0]
00024490 06f03abb   b.w      #0x2ab08
00024494 0021       movs     r1, #0
00024496 1a20       movs     r0, #0x1a
00024498 02f03abb   b.w      #0x26b10
0002449c 13b5       push     {r0, r1, r4, lr}
0002449e 0346       mov      r3, r0
000244a0 0e4a       ldr      r2, [pc, #0x38] ; [0x244dc]=0x4e355 'Rose handler error - type: 0x%x arg: %u'
000244a2 0091       str      r1, [sp]
000244a4 0446       mov      r4, r0
000244a6 0021       movs     r1, #0
000244a8 0720       movs     r0, #7
000244aa 12f03ffb   bl       #0x36b2c
000244ae 02f097fd   bl       #0x26fe0
000244b2 0528       cmp      r0, #5
000244b4 02d1       bne      #0x244bc
000244b6 2046       mov      r0, r4
000244b8 fff7a0fd   bl       #0x23ffc
000244bc 02f090fd   bl       #0x26fe0
000244c0 0f28       cmp      r0, #0xf
000244c2 04d0       beq      #0x244ce
000244c4 0021       movs     r1, #0
000244c6 064a       ldr      r2, [pc, #0x18] ; [0x244e0]=0x24a6d
000244c8 0846       mov      r0, r1
000244ca 03f0a7fe   bl       #0x2821c
000244ce 0021       movs     r1, #0
000244d0 1c20       movs     r0, #0x1c
000244d2 02b0       add      sp, #8
000244d4 bde81040   pop.w    {r4, lr}
000244d8 02f01abb   b.w      #0x26b10
000244dc 55e3       b        #0x24b8a
000244de 0400       movs     r4, r0
