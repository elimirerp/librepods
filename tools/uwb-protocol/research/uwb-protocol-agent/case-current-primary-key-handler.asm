0003e37c f0b5       push     {r4, r5, r6, r7, lr}
0003e37e 0b46       mov      r3, r1
0003e380 85b0       sub      sp, #0x14
0003e382 1d88       ldrh     r5, [r3]
0003e384 1146       mov      r1, r2
0003e386 0446       mov      r4, r0
0003e388 644a       ldr      r2, [pc, #0x190] ; [0x3e51c]=0x5e6e6
0003e38a 0423       movs     r3, #4
0003e38c 2846       mov      r0, r5
0003e38e fef777f9   bl       #0x3c680
0003e392 0646       mov      r6, r0
0003e394 b8b1       cbz      r0, #0x3e3c6
0003e396 0346       mov      r3, r0
0003e398 614a       ldr      r2, [pc, #0x184] ; [0x3e520]=0x5df4a 'Rx error 0x%x for opcode 0x%x, conn_handle 0x%x'
0003e39a cde90054   strd     r5, r4, [sp]
0003e39e 0121       movs     r1, #1
0003e3a0 0c20       movs     r0, #0xc
0003e3a2 f8f7c3fb   bl       #0x36b2c
0003e3a6 5f4b       ldr      r3, [pc, #0x17c] ; [0x3e524]=0x2000fc00
0003e3a8 1b68       ldr      r3, [r3]
0003e3aa da8d       ldrh     r2, [r3, #0x2e]
0003e3ac 0096       str      r6, [sp]
0003e3ae 4ff6ff73   movw     r3, #0xffff
0003e3b2 9e42       cmp      r6, r3
0003e3b4 14bf       ite      ne
0003e3b6 2b46       movne    r3, r5
0003e3b8 0023       moveq    r3, #0
0003e3ba 2146       mov      r1, r4
0003e3bc 40f20640   movw     r0, #0x406
0003e3c0 fef718fa   bl       #0x3c7f4
0003e3c4 29e0       b        #0x3e41a
0003e3c6 2b46       mov      r3, r5
0003e3c8 574a       ldr      r2, [pc, #0x15c] ; [0x3e528]=0x5e511 'Paired owner rx: opcode = 0x%x'
0003e3ca 0121       movs     r1, #1
0003e3cc 0c20       movs     r0, #0xc
0003e3ce a5f58065   sub.w    r5, r5, #0x400
0003e3d2 f8f7abfb   bl       #0x36b2c
0003e3d6 0b2d       cmp      r5, #0xb
0003e3d8 00f29780   bhi.w    #0x3e50a
0003e3dc dfe805f0   tbb      [pc, r5] ; [0x3e3e0]=0x95952506
0003e3e0 0625       movs     r5, #6
0003e3e2 9595       str      r5, [sp, #0x254]
0003e3e4 4695       str      r5, [sp, #0x118]
0003e3e6 9595       str      r5, [sp, #0x254]
0003e3e8 9595       str      r5, [sp, #0x254]
0003e3ea 957c       ldrb     r5, [r2, #0x12]
0003e3ec 0121       movs     r1, #1
0003e3ee 4f4a       ldr      r2, [pc, #0x13c] ; [0x3e52c]=0x5e530 'Paired Owner get current primary key command received'
0003e3f0 0c20       movs     r0, #0xc
0003e3f2 f8f79bfb   bl       #0x36b2c
0003e3f6 01f0abff   bl       #0x40350
0003e3fa 4a4b       ldr      r3, [pc, #0x128] ; [0x3e524]=0x2000fc00
0003e3fc 1b68       ldr      r3, [r3]
0003e3fe d98d       ldrh     r1, [r3, #0x2e]
0003e400 68b1       cbz      r0, #0x3e41e
0003e402 0391       str      r1, [sp, #0xc]
0003e404 f9f74cfc   bl       #0x37ca0
0003e408 1c22       movs     r2, #0x1c
0003e40a 0399       ldr      r1, [sp, #0xc]
0003e40c 0092       str      r2, [sp]
0003e40e 0346       mov      r3, r0
0003e410 40f20242   movw     r2, #0x402
0003e414 2046       mov      r0, r4
0003e416 fef75df9   bl       #0x3c6d4
0003e41a 05b0       add      sp, #0x14
0003e41c f0bd       pop      {r4, r5, r6, r7, pc}
0003e41e 1c23       movs     r3, #0x1c
0003e420 0093       str      r3, [sp]
0003e422 40f20242   movw     r2, #0x402
0003e426 424b       ldr      r3, [pc, #0x108] ; [0x3e530]=0x5e6c9
0003e428 f4e7       b        #0x3e414
0003e42a 424a       ldr      r2, [pc, #0x108] ; [0x3e534]=0x5e566 'Paired Owner get iCloud identifier command received'
0003e42c 3d4d       ldr      r5, [pc, #0xf4] ; [0x3e524]=0x2000fc00
0003e42e 0121       movs     r1, #1
0003e430 0c20       movs     r0, #0xc
0003e432 f8f77bfb   bl       #0x36b2c
0003e436 01f08bff   bl       #0x40350
0003e43a 88b1       cbz      r0, #0x3e460
0003e43c 0023       movs     r3, #0
0003e43e 3e49       ldr      r1, [pc, #0xf8] ; [0x3e538]=0x20014b01
0003e440 0093       str      r3, [sp]
0003e442 3c22       movs     r2, #0x3c
0003e444 0320       movs     r0, #3
0003e446 02f0dbfe   bl       #0x41200
0003e44a 08b1       cbz      r0, #0x3e450
0003e44c e9f7b4fe   bl       #0x281b8
0003e450 2b68       ldr      r3, [r5]
0003e452 d98d       ldrh     r1, [r3, #0x2e]
0003e454 3c23       movs     r3, #0x3c
0003e456 0093       str      r3, [sp]
0003e458 374b       ldr      r3, [pc, #0xdc] ; [0x3e538]=0x20014b01
0003e45a 40f20342   movw     r2, #0x403
0003e45e d9e7       b        #0x3e414
0003e460 2b68       ldr      r3, [r5]
0003e462 d98d       ldrh     r1, [r3, #0x2e]
0003e464 3c23       movs     r3, #0x3c
0003e466 0093       str      r3, [sp]
0003e468 344b       ldr      r3, [pc, #0xd0] ; [0x3e53c]=0x5e68d
0003e46a f6e7       b        #0x3e45a
0003e46c 01f070ff   bl       #0x40350
0003e470 10b3       cbz      r0, #0x3e4b8
0003e472 faf7f7fc   bl       #0x38e64
0003e476 80f00100   eor      r0, r0, #1
0003e47a c5b2       uxtb     r5, r0
0003e47c fdf714fe   bl       #0x3c0a8
0003e480 0646       mov      r6, r0
0003e482 fdf761f9   bl       #0x3b748
0003e486 2e4a       ldr      r2, [pc, #0xb8] ; [0x3e540]=0x5e59a 'Paired Owner get serial number command received. SN_allowed: %u, paired_wild: %u, sn_lookup_already_in_progress: %u'
0003e488 cde90050   strd     r5, r0, [sp]
0003e48c 0746       mov      r7, r0
0003e48e 3346       mov      r3, r6
0003e490 0121       movs     r1, #1
0003e492 0c20       movs     r0, #0xc
0003e494 f8f74afb   bl       #0x36b2c
0003e498 b5b1       cbz      r5, #0x3e4c8
0003e49a 7eb1       cbz      r6, #0x3e4bc
0003e49c a7b9       cbnz     r7, #0x3e4c8
0003e49e 0122       movs     r2, #1
0003e4a0 0821       movs     r1, #8
0003e4a2 2046       mov      r0, r4
0003e4a4 fdf72cf9   bl       #0x3b700
0003e4a8 264a       ldr      r2, [pc, #0x98] ; [0x3e544]=0x3e225
0003e4aa 3946       mov      r1, r7
0003e4ac 0846       mov      r0, r1
0003e4ae 05b0       add      sp, #0x14
0003e4b0 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0003e4b4 e9f7b2be   b.w      #0x2821c
0003e4b8 0546       mov      r5, r0
0003e4ba dfe7       b        #0x3e47c
0003e4bc 3246       mov      r2, r6
0003e4be 3146       mov      r1, r6
0003e4c0 40f2fe40   movw     r0, #0x4fe
0003e4c4 f5f7aefc   bl       #0x33e24
0003e4c8 164b       ldr      r3, [pc, #0x58] ; [0x3e524]=0x2000fc00
0003e4ca 1b68       ldr      r3, [r3]
0003e4cc da8d       ldrh     r2, [r3, #0x2e]
0003e4ce 0123       movs     r3, #1
0003e4d0 0093       str      r3, [sp]
0003e4d2 40f20443   movw     r3, #0x404
0003e4d6 70e7       b        #0x3e3ba
0003e4d8 1b4a       ldr      r2, [pc, #0x6c] ; [0x3e548]=0x5e60e 'Paired Owner get serial number for identity resolution command received'
0003e4da 0121       movs     r1, #1
0003e4dc 0c20       movs     r0, #0xc
0003e4de f8f725fb   bl       #0x36b2c
0003e4e2 fdf731f9   bl       #0x3b748
0003e4e6 0546       mov      r5, r0
0003e4e8 38b1       cbz      r0, #0x3e4fa
0003e4ea 0e4b       ldr      r3, [pc, #0x38] ; [0x3e524]=0x2000fc00
0003e4ec 1b68       ldr      r3, [r3]
0003e4ee da8d       ldrh     r2, [r3, #0x2e]
0003e4f0 0123       movs     r3, #1
0003e4f2 0093       str      r3, [sp]
0003e4f4 40f20b43   movw     r3, #0x40b
0003e4f8 5fe7       b        #0x3e3ba
0003e4fa 0122       movs     r2, #1
0003e4fc 0821       movs     r1, #8
0003e4fe 2046       mov      r0, r4
0003e500 fdf7fef8   bl       #0x3b700
0003e504 114a       ldr      r2, [pc, #0x44] ; [0x3e54c]=0x3e20d
0003e506 2946       mov      r1, r5
0003e508 d0e7       b        #0x3e4ac
0003e50a 114a       ldr      r2, [pc, #0x44] ; [0x3e550]=0x5e656 'Invalid opcode for paired owner control point received'
0003e50c 0121       movs     r1, #1
0003e50e 0c20       movs     r0, #0xc
0003e510 05b0       add      sp, #0x14
0003e512 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0003e516 f8f709bb   b.w      #0x36b2c
0003e51a 00bf       nop      
0003e51c e6e6       b        #0x3e2ec
0003e51e 0500       movs     r5, r0
0003e520 4adf       svc      #0x4a
0003e522 0500       movs     r5, r0
0003e524 00fc       .byte    0x00, 0xfc
0003e526 0020       movs     r0, #0
0003e528 11e5       b        #0x3df4e
0003e52a 0500       movs     r5, r0
0003e52c 30e5       b        #0x3df90
0003e52e 0500       movs     r5, r0
0003e530 c9e6       b        #0x3e2c6
0003e532 0500       movs     r5, r0
0003e534 66e5       b        #0x3e004
0003e536 0500       movs     r5, r0
0003e538 014b       ldr      r3, [pc, #4] ; [0x3e540]=0x5e59a 'Paired Owner get serial number command received. SN_allowed: %u, paired_wild: %u, sn_lookup_already_in_progress: %u'
0003e53a 0120       movs     r0, #1
0003e53c 8de6       b        #0x3e25a
0003e53e 0500       movs     r5, r0
0003e540 9ae5       b        #0x3e078
0003e542 0500       movs     r5, r0
0003e544 25e2       b        #0x3e992
0003e546 0300       movs     r3, r0
0003e548 0ee6       b        #0x3e168
0003e54a 0500       movs     r5, r0
0003e54c 0de2       b        #0x3e96a
0003e54e 0300       movs     r3, r0
0003e550 56e6       b        #0x3e200
0003e552 0500       movs     r5, r0
0003e554 10b5       push     {r4, lr}
0003e556 074c       ldr      r4, [pc, #0x1c] ; [0x3e574]=0x20014b44
0003e558 0749       ldr      r1, [pc, #0x1c] ; [0x3e578]=0x5e6f6 'pairing_control_point.c'
0003e55a 2068       ldr      r0, [r4]
0003e55c 0038       subs     r0, #0
0003e55e 4ff02e02   mov.w    r2, #0x2e
0003e562 18bf       it       ne
0003e564 0120       movne    r0, #1
0003e566 fbf775fb   bl       #0x39c54
0003e56a 2368       ldr      r3, [r4]
0003e56c 0022       movs     r2, #0
0003e56e da80       strh     r2, [r3, #6]
0003e570 10bd       pop      {r4, pc}
0003e572 00bf       nop      
0003e574 444b       ldr      r3, [pc, #0x110] ; [0x3e688]=0x22006823
0003e576 0120       movs     r0, #1
0003e578 f6e6       b        #0x3e368
0003e57a 0500       movs     r5, r0
0003e57c 10b5       push     {r4, lr}
0003e57e 0446       mov      r4, r0
0003e580 0846       mov      r0, r1
0003e582 431e       subs     r3, r0, #1
0003e584 5842       rsbs     r0, r3, #0
0003e586 0549       ldr      r1, [pc, #0x14] ; [0x3e59c]=0x5e6f6 'pairing_control_point.c'
0003e588 5841       adcs     r0, r3
0003e58a 5422       movs     r2, #0x54
0003e58c fbf762fb   bl       #0x39c54
0003e590 2078       ldrb     r0, [r4]
0003e592 0021       movs     r1, #0
0003e594 bde81040   pop.w    {r4, lr}
0003e598 faf734b9   b.w      #0x38804
0003e59c f6e6       b        #0x3e38c
0003e59e 0500       movs     r5, r0
0003e5a0 70b5       push     {r4, r5, r6, lr}
0003e5a2 0446       mov      r4, r0
0003e5a4 90b0       sub      sp, #0x40
0003e5a6 0e46       mov      r6, r1
0003e5a8 1546       mov      r5, r2
0003e5aa 1c49       ldr      r1, [pc, #0x70] ; [0x3e61c]=0x5e6f6 'pairing_control_point.c'
0003e5ac b922       movs     r2, #0xb9
0003e5ae 0120       movs     r0, #1
0003e5b0 fbf750fb   bl       #0x39c54
0003e5b4 1949       ldr      r1, [pc, #0x64] ; [0x3e61c]=0x5e6f6 'pairing_control_point.c'
0003e5b6 ba22       movs     r2, #0xba
0003e5b8 0120       movs     r0, #1
0003e5ba fbf74bfb   bl       #0x39c54
0003e5be 1749       ldr      r1, [pc, #0x5c] ; [0x3e61c]=0x5e6f6 'pairing_control_point.c'
0003e5c0 bb22       movs     r2, #0xbb
0003e5c2 0120       movs     r0, #1
0003e5c4 fbf746fb   bl       #0x39c54
0003e5c8 2146       mov      r1, r4
0003e5ca 1322       movs     r2, #0x13
0003e5cc 01a8       add      r0, sp, #4
0003e5ce 06f0f1fa   bl       #0x44bb4
0003e5d2 0024       movs     r4, #0
0003e5d4 3146       mov      r1, r6
0003e5d6 1322       movs     r2, #0x13
0003e5d8 06a8       add      r0, sp, #0x18
0003e5da 8df81740   strb.w   r4, [sp, #0x17]
0003e5de 06f0e9fa   bl       #0x44bb4
0003e5e2 2946       mov      r1, r5
0003e5e4 1322       movs     r2, #0x13
0003e5e6 0ba8       add      r0, sp, #0x2c
0003e5e8 8df82b40   strb.w   r4, [sp, #0x2b]
0003e5ec 06f0e2fa   bl       #0x44bb4
0003e5f0 01ab       add      r3, sp, #4
0003e5f2 0b4a       ldr      r2, [pc, #0x2c] ; [0x3e620]=0x5e70e 'Case SN: %s'
0003e5f4 8df83f40   strb.w   r4, [sp, #0x3f]
0003e5f8 0121       movs     r1, #1
0003e5fa 0a20       movs     r0, #0xa
0003e5fc f8f796fa   bl       #0x36b2c
0003e600 06ab       add      r3, sp, #0x18
0003e602 084a       ldr      r2, [pc, #0x20] ; [0x3e624]=0x5e71a 'L SN: %s'
0003e604 0121       movs     r1, #1
0003e606 0a20       movs     r0, #0xa
0003e608 f8f790fa   bl       #0x36b2c
0003e60c 064a       ldr      r2, [pc, #0x18] ; [0x3e628]=0x5e723 'R SN: %s'
0003e60e 0bab       add      r3, sp, #0x2c
0003e610 0121       movs     r1, #1
0003e612 0a20       movs     r0, #0xa
0003e614 f8f78afa   bl       #0x36b2c
0003e618 10b0       add      sp, #0x40
0003e61a 70bd       pop      {r4, r5, r6, pc}
0003e61c f6e6       b        #0x3e40c
0003e61e 0500       movs     r5, r0
0003e620 0ee7       b        #0x3e440
0003e622 0500       movs     r5, r0
0003e624 1ae7       b        #0x3e45c
0003e626 0500       movs     r5, r0
0003e628 23e7       b        #0x3e472
0003e62a 0500       movs     r5, r0
0003e62c 37b5       push     {r0, r1, r2, r4, r5, lr}
0003e62e 0228       cmp      r0, #2
0003e630 0446       mov      r4, r0
0003e632 1d49       ldr      r1, [pc, #0x74] ; [0x3e6a8]=0x5e6f6 'pairing_control_point.c'
0003e634 8cbf       ite      hi
0003e636 0020       movhi    r0, #0
0003e638 0120       movls    r0, #1
0003e63a 4c22       movs     r2, #0x4c
0003e63c fbf70afb   bl       #0x39c54
0003e640 1a4b       ldr      r3, [pc, #0x68] ; [0x3e6ac]=0x5e828
0003e642 1b4a       ldr      r2, [pc, #0x6c] ; [0x3e6b0]=0x5e72c '%s reason: %s'
0003e644 53f82430   ldr.w    r3, [r3, r4, lsl #2]
0003e648 1a4c       ldr      r4, [pc, #0x68] ; [0x3e6b4]=0x20014b40
0003e64a 0093       str      r3, [sp]
