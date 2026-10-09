000245b0 2046       mov      r0, r4
000245b2 fbf767fc   bl       #0x1fe84
000245b6 f9f731f9   bl       #0x1d81c
000245ba 104b       ldr      r3, [pc, #0x40] ; [0x245fc]=0x2000fab9
000245bc 1870       strb     r0, [r3]
000245be 2046       mov      r0, r4
000245c0 04b0       add      sp, #0x10
000245c2 bde81040   pop.w    {r4, lr}
000245c6 02f0b1bd   b.w      #0x2712c
000245ca 04b0       add      sp, #0x10
000245cc 10bd       pop      {r4, pc}
000245ce 00bf       nop      
000245d0 7de3       b        #0x24cce
000245d2 0400       movs     r4, r0
000245d4 8ce3       b        #0x24cf0
000245d6 0400       movs     r4, r0
000245d8 aae3       b        #0x24d30
000245da 0400       movs     r4, r0
000245dc bbe3       b        #0x24d56
000245de 0400       movs     r4, r0
000245e0 cee3       b        #0x24d80
000245e2 0400       movs     r4, r0
000245e4 e2e3       b        #0x24dac
000245e6 0400       movs     r4, r0
000245e8 f4e3       b        #0x24dd4
000245ea 0400       movs     r4, r0
000245ec dc01       lsls     r4, r3, #7
000245ee 0120       movs     r0, #1
000245f0 f9e3       b        #0x24de6
000245f2 0400       movs     r4, r0
000245f4 10e4       b        #0x23e18
000245f6 0400       movs     r4, r0
000245f8 20e4       b        #0x23e3c
000245fa 0400       movs     r4, r0
000245fc b9fa       .byte    0xb9, 0xfa
000245fe 0020       movs     r0, #0
00024600 08b5       push     {r3, lr}
00024602 0121       movs     r1, #1
00024604 064a       ldr      r2, [pc, #0x18] ; [0x24620]=0x4e439 'NB timeout hit - ending ranging session'
00024606 0720       movs     r0, #7
00024608 12f090fa   bl       #0x36b2c
0002460c 0420       movs     r0, #4
0002460e 01f0f5f9   bl       #0x259fc
00024612 bde80840   pop.w    {r3, lr}
00024616 0021       movs     r1, #0
00024618 0a20       movs     r0, #0xa
0002461a 02f079ba   b.w      #0x26b10
0002461e 00bf       nop      
00024620 39e4       b        #0x23e96
00024622 0400       movs     r4, r0
00024624 08b5       push     {r3, lr}
00024626 0121       movs     r1, #1
00024628 064a       ldr      r2, [pc, #0x18] ; [0x24644]=0x4e461 'UWB regulatory timeout hit - ending ranging session'
0002462a 0720       movs     r0, #7
0002462c 12f07efa   bl       #0x36b2c
00024630 0420       movs     r0, #4
00024632 01f0e3f9   bl       #0x259fc
00024636 bde80840   pop.w    {r3, lr}
0002463a 0021       movs     r1, #0
0002463c 0a20       movs     r0, #0xa
0002463e 02f067ba   b.w      #0x26b10
00024642 00bf       nop      
00024644 61e4       b        #0x23f0a
00024646 0400       movs     r4, r0
00024648 10b5       push     {r4, lr}
0002464a fdf79bf9   bl       #0x21984
0002464e 0446       mov      r4, r0
00024650 50b1       cbz      r0, #0x24668
00024652 0346       mov      r3, r0
00024654 084a       ldr      r2, [pc, #0x20] ; [0x24678]=0x4e495 'Failed to execute rose action: %u'
00024656 0720       movs     r0, #7
00024658 0021       movs     r1, #0
0002465a 12f067fa   bl       #0x36b2c
0002465e 2046       mov      r0, r4
00024660 bde81040   pop.w    {r4, lr}
00024664 02f0c8bc   b.w      #0x26ff8
00024668 bde81040   pop.w    {r4, lr}
0002466c 034a       ldr      r2, [pc, #0xc] ; [0x2467c]=0x4e4b7 'Executed rose action'
0002466e 0221       movs     r1, #2
00024670 0720       movs     r0, #7
00024672 12f05bba   b.w      #0x36b2c
00024676 00bf       nop      
00024678 95e4       b        #0x23fa6
0002467a 0400       movs     r4, r0
0002467c b7e4       b        #0x23fee
0002467e 0400       movs     r4, r0
