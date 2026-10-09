00026c90 104c       ldr      r4, [pc, #0x40] ; [0x26cd4]=0x20011080
00026c92 0199       ldr      r1, [sp, #4]
00026c94 1720       movs     r0, #0x17
00026c96 fff73bff   bl       #0x26b10
00026c9a 2578       ldrb     r5, [r4]
00026c9c 0199       ldr      r1, [sp, #4]
00026c9e 022d       cmp      r5, #2
00026ca0 06d1       bne      #0x26cb0
00026ca2 0720       movs     r0, #7
00026ca4 0c4a       ldr      r2, [pc, #0x30] ; [0x26cd8]=0x4f49e 'Failed to wake up ST for ranging'
00026ca6 0ff041ff   bl       #0x36b2c
00026caa 2846       mov      r0, r5
00026cac fdf72af9   bl       #0x23f04
00026cb0 0023       movs     r3, #0
00026cb2 2370       strb     r3, [r4]
00026cb4 03b0       add      sp, #0xc
00026cb6 30bd       pop      {r4, r5, pc}
00026cb8 0848       ldr      r0, [pc, #0x20] ; [0x26cdc]=0x20011088
00026cba 6421       movs     r1, #0x64
00026cbc 13f04ffb   bl       #0x3a35e
00026cc0 0028       cmp      r0, #0
00026cc2 f7d0       beq      #0x26cb4
00026cc4 03b0       add      sp, #0xc
00026cc6 bde83040   pop.w    {r4, r5, lr}
00026cca 01f075ba   b.w      #0x281b8
00026cce 00bf       nop      
00026cd0 5010       asrs     r0, r2, #1
00026cd2 0120       movs     r0, #1
00026cd4 8010       asrs     r0, r0, #2
00026cd6 0120       movs     r0, #1
00026cd8 9ef40400   eors     r0, lr, #0x840000
00026cdc 8810       asrs     r0, r1, #2
00026cde 0120       movs     r0, #1
00026ce0 0021       movs     r1, #0
00026ce2 1b20       movs     r0, #0x1b
00026ce4 fff714bf   b.w      #0x26b10
00026ce8 0021       movs     r1, #0
00026cea 0320       movs     r0, #3
00026cec fff710bf   b.w      #0x26b10
