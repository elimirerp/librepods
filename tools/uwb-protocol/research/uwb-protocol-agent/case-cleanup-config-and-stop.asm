00026322 08b5       push     {r3, lr}
00026324 fff73afd   bl       #0x25d9c
00026328 0020       movs     r0, #0
0002632a 08bd       pop      {r3, pc}
0002632c 10b5       push     {r4, lr}
0002632e 0846       mov      r0, r1
00026330 0c46       mov      r4, r1
00026332 fdf727fe   bl       #0x23f84
00026336 0cb1       cbz      r4, #0x2633c
00026338 fef7aafc   bl       #0x24c90
0002633c 201e       subs     r0, r4, #0
0002633e 18bf       it       ne
00026340 0120       movne    r0, #1
00026342 10bd       pop      {r4, pc}
00026344 fef7a2be   b.w      #0x2508c
00026348 fef734bf   b.w      #0x251b4
0002634c 08b5       push     {r3, lr}
0002634e 1bf04df8   bl       #0x413ec
00026352 9628       cmp      r0, #0x96
00026354 0bd1       bne      #0x2636e
00026356 0720       movs     r0, #7
00026358 064a       ldr      r2, [pc, #0x18] ; [0x26374]=0x4f1bb 'Generate recovery keys only'
0002635a 0121       movs     r1, #1
0002635c 10f0e6fb   bl       #0x36b2c
00026360 0220       movs     r0, #2
00026362 fff751fa   bl       #0x25808
00026366 bde80840   pop.w    {r3, lr}
0002636a fef7a7bd   b.w      #0x24ebc
0002636e 0120       movs     r0, #1
00026370 f7e7       b        #0x26362
00026372 00bf       nop      
00026374 bbf10400   subs.w   r0, fp, #4
00026378 fff77abb   b.w      #0x25a70
0002637c fff75ebc   b.w      #0x25c3c
