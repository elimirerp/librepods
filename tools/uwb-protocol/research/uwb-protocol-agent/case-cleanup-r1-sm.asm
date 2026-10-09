000264d0 a9fc40f2   stc2     p2, c15, [sb], #0x100
000264d4 9222       movs     r2, #0x92
000264d6 e9e7       b        #0x264ac
000264d8 8810       asrs     r0, r1, #2
000264da 0120       movs     r0, #1
000264dc 6af2       .byte    0x6a, 0xf2
000264de 0400       movs     r4, r0
000264e0 5af10400   adcs     r0, sl, #4
000264e4 7ef2       .byte    0x7e, 0xf2
000264e6 0400       movs     r4, r0
000264e8 37b5       push     {r0, r1, r2, r4, r5, lr}
000264ea 1b4b       ldr      r3, [pc, #0x6c] ; [0x26558]=0x20011081
000264ec 1d78       ldrb     r5, [r3]
000264ee 0446       mov      r4, r0
000264f0 bdb9       cbnz     r5, #0x26522
000264f2 b0f5956f   cmp.w    r0, #0x4a8
000264f6 16d0       beq      #0x26526
000264f8 40f2aa43   movw     r3, #0x4aa
000264fc 9842       cmp      r0, r3
000264fe 21d1       bne      #0x26544
00026500 164a       ldr      r2, [pc, #0x58] ; [0x2655c]=0x4f293 'Ack rose off'
00026502 0221       movs     r1, #2
00026504 0720       movs     r0, #7
00026506 10f011fb   bl       #0x36b2c
0002650a 0122       movs     r2, #1
0002650c 01a9       add      r1, sp, #4
0002650e 2046       mov      r0, r4
00026510 8df80450   strb.w   r5, [sp, #4]
00026514 0df086fc   bl       #0x33e24
00026518 40f21622   movw     r2, #0x216
0002651c 1049       ldr      r1, [pc, #0x40] ; [0x26560]=0x4f15a 'rose_state_machine.c'
0002651e 13f099fb   bl       #0x39c54
00026522 03b0       add      sp, #0xc
00026524 30bd       pop      {r4, r5, pc}
00026526 0f4a       ldr      r2, [pc, #0x3c] ; [0x26564]=0x4f2a0 'Req rose off'
00026528 0221       movs     r1, #2
0002652a 0720       movs     r0, #7
0002652c 10f0fefa   bl       #0x36b2c
00026530 0122       movs     r2, #1
00026532 01a9       add      r1, sp, #4
00026534 2046       mov      r0, r4
00026536 8df80450   strb.w   r5, [sp, #4]
0002653a 0df073fc   bl       #0x33e24
0002653e 40f21e22   movw     r2, #0x21e
00026542 ebe7       b        #0x2651c
00026544 084a       ldr      r2, [pc, #0x20] ; [0x26568]=0x4f2ad 'Unexpected power off opcode 0x%x'
00026546 0346       mov      r3, r0
00026548 2946       mov      r1, r5
0002654a 0720       movs     r0, #7
0002654c 03b0       add      sp, #0xc
0002654e bde83040   pop.w    {r4, r5, lr}
00026552 10f0ebba   b.w      #0x36b2c
00026556 00bf       nop      
00026558 8110       asrs     r1, r0, #2
0002655a 0120       movs     r0, #1
0002655c 93f2       .byte    0x93, 0xf2
0002655e 0400       movs     r4, r0
00026560 5af10400   adcs     r0, sl, #4
00026564 a0f20400   subw     r0, r0, #4
00026568 adf20400   subw     r0, sp, #4
0002656c 08b5       push     {r3, lr}
0002656e 40f2aa40   movw     r0, #0x4aa
00026572 fff7b9ff   bl       #0x264e8
00026576 0020       movs     r0, #0
00026578 08bd       pop      {r3, pc}
0002657a 0000       movs     r0, r0
0002657c 70b5       push     {r4, r5, r6, lr}
0002657e fef7b7f9   bl       #0x248f0
00026582 0546       mov      r5, r0
00026584 fef7fafb   bl       #0x24d7c
00026588 0228       cmp      r0, #2
0002658a 0446       mov      r4, r0
0002658c 11d0       beq      #0x265b2
0002658e 0328       cmp      r0, #3
00026590 3ad0       beq      #0x26608
00026592 0128       cmp      r0, #1
00026594 04d1       bne      #0x265a0
00026596 224a       ldr      r2, [pc, #0x88] ; [0x26620]=0x4f2ce 'rose deinit reason:HE'
00026598 0146       mov      r1, r0
0002659a 0720       movs     r0, #7
0002659c 10f0c6fa   bl       #0x36b2c
000265a0 1af0ecf9   bl       #0x4097c
000265a4 0d28       cmp      r0, #0xd
000265a6 40f2aa46   movw     r6, #0x4aa
000265aa 08bf       it       eq
000265ac 4ff49566   moveq.w  r6, #0x4a8
000265b0 06e0       b        #0x265c0
000265b2 1c4a       ldr      r2, [pc, #0x70] ; [0x26624]=0x4f2e4 'rose deinit reason:ST'
000265b4 0121       movs     r1, #1
000265b6 0720       movs     r0, #7
000265b8 10f0b8fa   bl       #0x36b2c
000265bc 40f2aa46   movw     r6, #0x4aa
000265c0 fef7f4fb   bl       #0x24dac
000265c4 18b3       cbz      r0, #0x2660e
000265c6 fef7f1fb   bl       #0x24dac
000265ca 3246       mov      r2, r6
000265cc 0146       mov      r1, r0
000265ce 1648       ldr      r0, [pc, #0x58] ; [0x26628]=0x20011060
000265d0 13f004ff   bl       #0x3a3dc
000265d4 012c       cmp      r4, #1
000265d6 03d1       bne      #0x265e0
000265d8 144b       ldr      r3, [pc, #0x50] ; [0x2662c]=0x2001104b
000265da 1c70       strb     r4, [r3]
000265dc 144b       ldr      r3, [pc, #0x50] ; [0x26630]=0x2001104c
000265de 1d60       str      r5, [r3]
000265e0 0320       movs     r0, #3
000265e2 fef7d1fb   bl       #0x24d88
000265e6 134b       ldr      r3, [pc, #0x4c] ; [0x26634]=0x20011057
000265e8 1b78       ldrb     r3, [r3]
000265ea 23b1       cbz      r3, #0x265f6
000265ec 0021       movs     r1, #0
000265ee 124a       ldr      r2, [pc, #0x48] ; [0x26638]=0x26ce1
000265f0 0846       mov      r0, r1
000265f2 01f013fe   bl       #0x2821c
000265f6 0021       movs     r1, #0
000265f8 104a       ldr      r2, [pc, #0x40] ; [0x2663c]=0x262c9
000265fa 0846       mov      r0, r1
000265fc 01f00efe   bl       #0x2821c
00026600 281e       subs     r0, r5, #0
00026602 18bf       it       ne
00026604 0120       movne    r0, #1
00026606 70bd       pop      {r4, r5, r6, pc}
00026608 0d4a       ldr      r2, [pc, #0x34] ; [0x26640]=0x4f2fa 'Unknown rose deinit reason'
0002660a 0021       movs     r1, #0
0002660c c5e7       b        #0x2659a
0002660e 3046       mov      r0, r6
00026610 fff76aff   bl       #0x264e8
00026614 012c       cmp      r4, #1
00026616 e3d1       bne      #0x265e0
00026618 2846       mov      r0, r5
0002661a fdf779fc   bl       #0x23f10
0002661e dfe7       b        #0x265e0
00026620 cef20400   movt     r0, #0xe004
00026624 e4f2       .byte    0xe4, 0xf2
00026626 0400       movs     r4, r0
00026628 6010       asrs     r0, r4, #1
0002662a 0120       movs     r0, #1
0002662c 4b10       asrs     r3, r1, #1
0002662e 0120       movs     r0, #1
00026630 4c10       asrs     r4, r1, #1
00026632 0120       movs     r0, #1
00026634 5710       asrs     r7, r2, #1
00026636 0120       movs     r0, #1
00026638 e16c       ldr      r1, [r4, #0x4c]
0002663a 0200       movs     r2, r0
0002663c c962       str      r1, [r1, #0x2c]
0002663e 0200       movs     r2, r0
00026640 faf2       .byte    0xfa, 0xf2
00026642 0400       movs     r4, r0
00026644 07b5       push     {r0, r1, r2, lr}
00026646 144b       ldr      r3, [pc, #0x50] ; [0x26698]=0x20011055
00026648 1a78       ldrb     r2, [r3]
0002664a 012a       cmp      r2, #1
0002664c 08d1       bne      #0x26660
0002664e fff707ff   bl       #0x26460
00026652 124a       ldr      r2, [pc, #0x48] ; [0x2669c]=0x200110a8
00026654 1378       ldrb     r3, [r2]
00026656 0133       adds     r3, #1
00026658 1370       strb     r3, [r2]
0002665a 03b0       add      sp, #0xc
0002665c 5df804fb   ldr      pc, [sp], #4
00026660 1a78       ldrb     r2, [r3]
00026662 62b9       cbnz     r2, #0x2667e
00026664 0e4a       ldr      r2, [pc, #0x38] ; [0x266a0]=0x20011081
00026666 1278       ldrb     r2, [r2]
00026668 4ab9       cbnz     r2, #0x2667e
0002666a 4ff49560   mov.w    r0, #0x4a8
0002666e fff73bff   bl       #0x264e8
00026672 0c4a       ldr      r2, [pc, #0x30] ; [0x266a4]=0x4f315 'Retry R1 off'
00026674 0121       movs     r1, #1
00026676 0720       movs     r0, #7
00026678 10f058fa   bl       #0x36b2c
0002667c e9e7       b        #0x26652
0002667e 1a78       ldrb     r2, [r3]
00026680 094b       ldr      r3, [pc, #0x24] ; [0x266a8]=0x4f923 'setR1StatusRetryTimeoutHandler'
00026682 0093       str      r3, [sp]
00026684 094b       ldr      r3, [pc, #0x24] ; [0x266ac]=0x4ff14
00026686 0021       movs     r1, #0
00026688 53f82230   ldr.w    r3, [r3, r2, lsl #2]
0002668c 084a       ldr      r2, [pc, #0x20] ; [0x266b0]=0x4f322 'Unexpected state: %s in %s'
0002668e 0720       movs     r0, #7
00026690 10f04cfa   bl       #0x36b2c
00026694 e1e7       b        #0x2665a
00026696 00bf       nop      
00026698 5510       asrs     r5, r2, #1
0002669a 0120       movs     r0, #1
0002669c a810       asrs     r0, r5, #2
0002669e 0120       movs     r0, #1
000266a0 8110       asrs     r1, r0, #2
000266a2 0120       movs     r0, #1
000266a4 15f3       .byte    0x15, 0xf3
000266a6 0400       movs     r4, r0
000266a8 23f90400   vld4.8   {d0, d1, d2, d3}, [r3], r4
000266ac 14ff0400   vhadd.u16 d0, d4, d4
000266b0 22f30400   ssat16   r0, #5, r2
000266b4 0346       mov      r3, r0
000266b6 10b5       push     {r4, lr}
000266b8 0a4a       ldr      r2, [pc, #0x28] ; [0x266e4]=0x4f33d 'Power off delay complete (0x%0x)'
000266ba 0446       mov      r4, r0
000266bc 0121       movs     r1, #1
000266be 0720       movs     r0, #7
000266c0 10f034fa   bl       #0x36b2c
000266c4 2046       mov      r0, r4
000266c6 fff70fff   bl       #0x264e8
000266ca 074b       ldr      r3, [pc, #0x1c] ; [0x266e8]=0x2001104b
000266cc 1a78       ldrb     r2, [r3]
000266ce 3ab1       cbz      r2, #0x266e0
000266d0 0022       movs     r2, #0
000266d2 1a70       strb     r2, [r3]
000266d4 054b       ldr      r3, [pc, #0x14] ; [0x266ec]=0x2001104c
000266d6 bde81040   pop.w    {r4, lr}
000266da 1868       ldr      r0, [r3]
000266dc fdf718bc   b.w      #0x23f10
000266e0 10bd       pop      {r4, pc}
000266e2 00bf       nop      
000266e4 3df3       .byte    0x3d, 0xf3
000266e6 0400       movs     r4, r0
000266e8 4b10       asrs     r3, r1, #1
000266ea 0120       movs     r0, #1
000266ec 4c10       asrs     r4, r1, #1
000266ee 0120       movs     r0, #1
000266f0 10b5       push     {r4, lr}
000266f2 0c46       mov      r4, r1
000266f4 39b1       cbz      r1, #0x26706
000266f6 fef7cbfa   bl       #0x24c90
000266fa 2520       movs     r0, #0x25
000266fc 2146       mov      r1, r4
000266fe 12f081f8   bl       #0x38804
00026702 0120       movs     r0, #1
00026704 10bd       pop      {r4, pc}
00026706 0846       mov      r0, r1
00026708 fce7       b        #0x26704
0002670a 0000       movs     r0, r0
0002670c 13b5       push     {r0, r1, r4, lr}
0002670e 0c46       mov      r4, r1
00026710 89b9       cbnz     r1, #0x26736
00026712 0b4b       ldr      r3, [pc, #0x2c] ; [0x26740]=0x20011056
00026714 0122       movs     r2, #1
00026716 1b78       ldrb     r3, [r3]
00026718 8df80430   strb.w   r3, [sp, #4]
0002671c 01a9       add      r1, sp, #4
0002671e 40f2aa40   movw     r0, #0x4aa
00026722 0df07ffb   bl       #0x33e24
00026726 0749       ldr      r1, [pc, #0x1c] ; [0x26744]=0x4f15a 'rose_state_machine.c'
00026728 40f2ec42   movw     r2, #0x4ec
0002672c 13f092fa   bl       #0x39c54
00026730 2046       mov      r0, r4
00026732 02b0       add      sp, #8
00026734 10bd       pop      {r4, pc}
00026736 fef7abfa   bl       #0x24c90
0002673a 0120       movs     r0, #1
0002673c f9e7       b        #0x26732
0002673e 00bf       nop      
00026740 5610       asrs     r6, r2, #1
00026742 0120       movs     r0, #1
00026744 5af10400   adcs     r0, sl, #4
00026748 10b5       push     {r4, lr}
0002674a 0b4b       ldr      r3, [pc, #0x2c] ; [0x26778]=0x20011054
0002674c 1a78       ldrb     r2, [r3]
0002674e 3ab1       cbz      r2, #0x26760
