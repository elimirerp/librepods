0003c454 07b5       push     {r0, r1, r2, lr}
0003c456 084b       ldr      r3, [pc, #0x20] ; [0x3c478]=0x2000fc00
0003c458 0849       ldr      r1, [pc, #0x20] ; [0x3c47c]=0x20014988
0003c45a 1b68       ldr      r3, [r3]
0003c45c d889       ldrh     r0, [r3, #0xe]
0003c45e 0023       movs     r3, #0
0003c460 0193       str      r3, [sp, #4]
0003c462 0b89       ldrh     r3, [r1, #8]
0003c464 0093       str      r3, [sp]
0003c466 4b68       ldr      r3, [r1, #4]
0003c468 4988       ldrh     r1, [r1, #2]
0003c46a 4ff6ff72   movw     r2, #0xffff
0003c46e fff763fe   bl       #0x3c138
0003c472 03b0       add      sp, #0xc
0003c474 5df804fb   ldr      pc, [sp], #4
0003c478 00fc       .byte    0x00, 0xfc
0003c47a 0020       movs     r0, #0
0003c47c 8849       ldr      r1, [pc, #0x220] ; [0x3c6a0]=0x34010584
0003c47e 0120       movs     r0, #1
0003c480 10b5       push     {r4, lr}
0003c482 2348       ldr      r0, [pc, #0x8c] ; [0x3c510]=0x6223c
0003c484 86b0       sub      sp, #0x18
0003c486 f2f74ffe   bl       #0x2f128
0003c48a a8b1       cbz      r0, #0x3c4b8
0003c48c 2148       ldr      r0, [pc, #0x84] ; [0x3c514]=0x62228
0003c48e f2f74bfe   bl       #0x2f128
0003c492 88b1       cbz      r0, #0x3c4b8
0003c494 0024       movs     r4, #0
0003c496 02a8       add      r0, sp, #8
0003c498 8df80840   strb.w   r4, [sp, #8]
0003c49c ecf760f9   bl       #0x28760
0003c4a0 1d4b       ldr      r3, [pc, #0x74] ; [0x3c518]=0x20014714
0003c4a2 9df80800   ldrb.w   r0, [sp, #8]
0003c4a6 1c70       strb     r4, [r3]
0003c4a8 1c4b       ldr      r3, [pc, #0x70] ; [0x3c51c]=0x2000fbfc
0003c4aa 4ff6ff72   movw     r2, #0xffff
0003c4ae 1a80       strh     r2, [r3]
0003c4b0 ecf77af9   bl       #0x287a8
0003c4b4 06b0       add      sp, #0x18
0003c4b6 10bd       pop      {r4, pc}
0003c4b8 1548       ldr      r0, [pc, #0x54] ; [0x3c510]=0x6223c
0003c4ba f2f735fe   bl       #0x2f128
0003c4be 0446       mov      r4, r0
0003c4c0 e0b9       cbnz     r0, #0x3c4fc
0003c4c2 174a       ldr      r2, [pc, #0x5c] ; [0x3c520]=0x5d77a 'Popping secondary queue'
0003c4c4 0221       movs     r1, #2
0003c4c6 0920       movs     r0, #9
0003c4c8 faf730fb   bl       #0x36b2c
0003c4cc 1048       ldr      r0, [pc, #0x40] ; [0x3c510]=0x6223c
0003c4ce 2246       mov      r2, r4
0003c4d0 02a9       add      r1, sp, #8
0003c4d2 f2f730fe   bl       #0x2f136
0003c4d6 9df81430   ldrb.w   r3, [sp, #0x14]
0003c4da 0193       str      r3, [sp, #4]
0003c4dc bdf80c30   ldrh.w   r3, [sp, #0xc]
0003c4e0 bdf80e00   ldrh.w   r0, [sp, #0xe]
0003c4e4 0093       str      r3, [sp]
0003c4e6 bdf81220   ldrh.w   r2, [sp, #0x12]
0003c4ea 029b       ldr      r3, [sp, #8]
0003c4ec bdf81010   ldrh.w   r1, [sp, #0x10]
0003c4f0 fff722fe   bl       #0x3c138
0003c4f4 0298       ldr      r0, [sp, #8]
0003c4f6 08f079f8   bl       #0x445ec
0003c4fa dbe7       b        #0x3c4b4
0003c4fc 094a       ldr      r2, [pc, #0x24] ; [0x3c524]=0x5d792 'Popping primary queue'
0003c4fe 0221       movs     r1, #2
0003c500 0920       movs     r0, #9
0003c502 faf713fb   bl       #0x36b2c
0003c506 0348       ldr      r0, [pc, #0xc] ; [0x3c514]=0x62228
0003c508 0022       movs     r2, #0
0003c50a 02a9       add      r1, sp, #8
0003c50c e1e7       b        #0x3c4d2
0003c50e 00bf       nop      
0003c510 3c22       movs     r2, #0x3c
0003c512 0600       movs     r6, r0
0003c514 2822       movs     r2, #0x28
0003c516 0600       movs     r6, r0
0003c518 1447       bxns     r2
0003c51a 0120       movs     r0, #1
0003c51c fcfb       .byte    0xfc, 0xfb
0003c51e 0020       movs     r0, #0
0003c520 7ad7       bvc      #0x3c618
0003c522 0500       movs     r5, r0
0003c524 92d7       bvc      #0x3c44c
0003c526 0500       movs     r5, r0
0003c528 73b5       push     {r0, r1, r4, r5, r6, lr}
0003c52a 4b88       ldrh     r3, [r1, #2]
0003c52c 0093       str      r3, [sp]
0003c52e 0b88       ldrh     r3, [r1]
0003c530 324a       ldr      r2, [pc, #0xc8] ; [0x3c5fc]=0x5d7a8 'Auth write handle 0x%x, uuid 0x%x'
0003c532 0c46       mov      r4, r1
0003c534 0646       mov      r6, r0
0003c536 0221       movs     r1, #2
0003c538 0920       movs     r0, #9
0003c53a faf7f7fa   bl       #0x36b2c
0003c53e 304a       ldr      r2, [pc, #0xc0] ; [0x3c600]=0x2000fc00
0003c540 2388       ldrh     r3, [r4]
0003c542 1268       ldr      r2, [r2]
0003c544 d18a       ldrh     r1, [r2, #0x16]
0003c546 9942       cmp      r1, r3
0003c548 31d1       bne      #0x3c5ae
0003c54a 6389       ldrh     r3, [r4, #0xa]
0003c54c 2d4a       ldr      r2, [pc, #0xb4] ; [0x3c604]=0x5d984 'Write request (%d bytes)'
0003c54e 0221       movs     r1, #2
0003c550 0a20       movs     r0, #0xa
0003c552 faf7ebfa   bl       #0x36b2c
0003c556 03f0edfe   bl       #0x40334
0003c55a 90b1       cbz      r0, #0x3c582
0003c55c 2a4a       ldr      r2, [pc, #0xa8] ; [0x3c608]=0x5d7ca 'Already paired - refusing'
0003c55e 0121       movs     r1, #1
0003c560 0a20       movs     r0, #0xa
0003c562 faf7e3fa   bl       #0x36b2c
0003c566 3146       mov      r1, r6
0003c568 0020       movs     r0, #0
0003c56a fff7a7fd   bl       #0x3c0bc
0003c56e 0825       movs     r5, #8
0003c570 2388       ldrh     r3, [r4]
0003c572 0093       str      r3, [sp]
0003c574 254a       ldr      r2, [pc, #0x94] ; [0x3c60c]=0x5d811 'Error %d for auth write handle 0x%x'
0003c576 2b46       mov      r3, r5
0003c578 0021       movs     r1, #0
0003c57a 0920       movs     r0, #9
0003c57c faf7d6fa   bl       #0x36b2c
0003c580 28e0       b        #0x3c5d4
0003c582 3146       mov      r1, r6
0003c584 0120       movs     r0, #1
0003c586 fff799fd   bl       #0x3c0bc
0003c58a 6189       ldrh     r1, [r4, #0xa]
0003c58c 0139       subs     r1, #1
0003c58e 89b2       uxth     r1, r1
0003c590 04f10d00   add.w    r0, r4, #0xd
0003c594 02f094f8   bl       #0x3e6c0
0003c598 0546       mov      r5, r0
0003c59a 0028       cmp      r0, #0
0003c59c e8d1       bne      #0x3c570
0003c59e 237b       ldrb     r3, [r4, #0xc]
