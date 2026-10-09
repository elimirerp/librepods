00038390 cffc0020   stc2l    p0, c2, [pc], {0} ; [0x38394]=0xb508bd08
00038394 08bd       pop      {r3, pc}
00038396 08b5       push     {r3, lr}
00038398 04f0f2f9   bl       #0x3c780
0003839c fff7c8fc   bl       #0x37d30
000383a0 0020       movs     r0, #0
000383a2 08bd       pop      {r3, pc}
000383a4 38b5       push     {r3, r4, r5, lr}
000383a6 164c       ldr      r4, [pc, #0x58] ; [0x38400]=0x20014330
000383a8 2378       ldrb     r3, [r4]
000383aa 012b       cmp      r3, #1
000383ac 1cd1       bne      #0x383e8
000383ae 0020       movs     r0, #0
000383b0 02f072fd   bl       #0x3ae98
000383b4 fff7cefb   bl       #0x37b54
000383b8 d0b1       cbz      r0, #0x383f0
000383ba fff763fc   bl       #0x37c84
000383be 0546       mov      r5, r0
000383c0 fff776fc   bl       #0x37cb0
000383c4 0146       mov      r1, r0
000383c6 2846       mov      r0, r5
000383c8 02f0dafa   bl       #0x3a980
000383cc 2378       ldrb     r3, [r4]
000383ce 013b       subs     r3, #1
000383d0 012b       cmp      r3, #1
000383d2 9bbf       ittet    ls
000383d4 0023       movls    r3, #0
000383d6 0320       movls    r0, #3
000383d8 0420       movhi    r0, #4
000383da 2370       strbls   r3, [r4]
000383dc 02f084f9   bl       #0x3a6e8
000383e0 04f0cef9   bl       #0x3c780
000383e4 0020       movs     r0, #0
000383e6 38bd       pop      {r3, r4, r5, pc}
000383e8 022b       cmp      r3, #2
000383ea e3d1       bne      #0x383b4
000383ec 0120       movs     r0, #1
000383ee dfe7       b        #0x383b0
000383f0 044a       ldr      r2, [pc, #0x10] ; [0x38404]=0x5bad2 'Using recovery key'
000383f2 0121       movs     r1, #1
000383f4 1820       movs     r0, #0x18
000383f6 fef799fb   bl       #0x36b2c
000383fa fff769fc   bl       #0x37cd0
000383fe dee7       b        #0x383be
00038400 3043       orrs     r0, r6
00038402 0120       movs     r0, #1
00038404 d2ba       revsh    r2, r2
00038406 0500       movs     r5, r0
00038408 10b5       push     {r4, lr}
0003840a fff7a3fb   bl       #0x37b54
0003840e 68b1       cbz      r0, #0x3842c
00038410 fff738fc   bl       #0x37c84
00038414 0446       mov      r4, r0
00038416 fff74bfc   bl       #0x37cb0
0003841a 0146       mov      r1, r0
0003841c 2046       mov      r0, r4
0003841e 02f0affa   bl       #0x3a980
00038422 0420       movs     r0, #4
00038424 02f060f9   bl       #0x3a6e8
00038428 0020       movs     r0, #0
0003842a 10bd       pop      {r4, pc}
0003842c 034a       ldr      r2, [pc, #0xc] ; [0x3843c]=0x5bad2 'Using recovery key'
0003842e 0121       movs     r1, #1
00038430 1820       movs     r0, #0x18
00038432 fef77bfb   bl       #0x36b2c
00038436 fff74bfc   bl       #0x37cd0
0003843a ebe7       b        #0x38414
0003843c d2ba       revsh    r2, r2
0003843e 0500       movs     r5, r0
00038440 08b5       push     {r3, lr}
00038442 0120       movs     r0, #1
00038444 07f0b8f8   bl       #0x3f5b8
00038448 0020       movs     r0, #0
0003844a 08bd       pop      {r3, pc}
0003844c 0020       movs     r0, #0
0003844e 07f0       .byte    0x07, 0xf0
