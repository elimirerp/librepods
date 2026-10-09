0003c680 f7b5       push     {r0, r1, r2, r4, r5, r6, r7, lr}
0003c682 0024       movs     r4, #0
0003c684 161f       subs     r6, r2, #4
0003c686 e5b2       uxtb     r5, r4
0003c688 ab42       cmp      r3, r5
0003c68a 08d8       bhi      #0x3c69e
0003c68c 0346       mov      r3, r0
0003c68e 0f4a       ldr      r2, [pc, #0x3c] ; [0x3c6cc]=0x5d879 'Invalid Rx Opcode 0x%x'
0003c690 0920       movs     r0, #9
0003c692 0021       movs     r1, #0
0003c694 faf74afa   bl       #0x36b2c
0003c698 4ff6ff70   movw     r0, #0xffff
0003c69c 12e0       b        #0x3c6c4
0003c69e 02eb8405   add.w    r5, r2, r4, lsl #2
0003c6a2 0134       adds     r4, #1
0003c6a4 36f82470   ldrh.w   r7, [r6, r4, lsl #2]
0003c6a8 8742       cmp      r7, r0
0003c6aa ecd1       bne      #0x3c686
0003c6ac 6b88       ldrh     r3, [r5, #2]
0003c6ae 8b42       cmp      r3, r1
0003c6b0 0ad0       beq      #0x3c6c8
0003c6b2 cde90003   strd     r0, r3, [sp]
0003c6b6 064a       ldr      r2, [pc, #0x18] ; [0x3c6d0]=0x5d846 'Invalid Length %d for Rx Opcode 0x%x. Expected: %d'
0003c6b8 0b46       mov      r3, r1
0003c6ba 0920       movs     r0, #9
0003c6bc 0021       movs     r1, #0
0003c6be faf735fa   bl       #0x36b2c
0003c6c2 0320       movs     r0, #3
0003c6c4 03b0       add      sp, #0xc
0003c6c6 f0bd       pop      {r4, r5, r6, r7, pc}
0003c6c8 0020       movs     r0, #0
0003c6ca fbe7       b        #0x3c6c4
0003c6cc 79d8       bhi      #0x3c7c2
0003c6ce 0500       movs     r5, r0
0003c6d0 46d8       bhi      #0x3c760
0003c6d2 0500       movs     r5, r0
0003c6d4 13b5       push     {r0, r1, r4, lr}
0003c6d6 0124       movs     r4, #1
0003c6d8 0194       str      r4, [sp, #4]
0003c6da bdf81040   ldrh.w   r4, [sp, #0x10]
0003c6de 0094       str      r4, [sp]
0003c6e0 fff712fe   bl       #0x3c308
0003c6e4 02b0       add      sp, #8
0003c6e6 10bd       pop      {r4, pc}
0003c6e8 13b5       push     {r0, r1, r4, lr}
0003c6ea 0024       movs     r4, #0
0003c6ec 0194       str      r4, [sp, #4]
0003c6ee bdf81040   ldrh.w   r4, [sp, #0x10]
0003c6f2 0094       str      r4, [sp]
0003c6f4 fff708fe   bl       #0x3c308
0003c6f8 02b0       add      sp, #8
0003c6fa 10bd       pop      {r4, pc}
0003c6fc 08b5       push     {r3, lr}
0003c6fe 0f4b       ldr      r3, [pc, #0x3c] ; [0x3c73c]=0x2000fbfc
0003c700 4ff6ff72   movw     r2, #0xffff
0003c704 1a80       strh     r2, [r3]
0003c706 0e4a       ldr      r2, [pc, #0x38] ; [0x3c740]=0x20014988
0003c708 1388       ldrh     r3, [r2]
0003c70a 1289       ldrh     r2, [r2, #8]
0003c70c 1343       orrs     r3, r2
0003c70e 9bb2       uxth     r3, r3
0003c710 43b9       cbnz     r3, #0x3c724
0003c712 0c4a       ldr      r2, [pc, #0x30] ; [0x3c744]=0x5d890 'Packet sent'
0003c714 0221       movs     r1, #2
0003c716 0920       movs     r0, #9
0003c718 faf708fa   bl       #0x36b2c
0003c71c bde80840   pop.w    {r3, lr}
0003c720 fff702bd   b.w      #0x3c128
0003c724 084a       ldr      r2, [pc, #0x20] ; [0x3c748]=0x5d89c 'Sending indication (extended)'
0003c726 0221       movs     r1, #2
0003c728 0920       movs     r0, #9
0003c72a faf7fff9   bl       #0x36b2c
0003c72e 0021       movs     r1, #0
0003c730 bde80840   pop.w    {r3, lr}
0003c734 054a       ldr      r2, [pc, #0x14] ; [0x3c74c]=0x3c455
0003c736 0846       mov      r0, r1
0003c738 ebf770bd   b.w      #0x2821c
0003c73c fcfb       .byte    0xfc, 0xfb
0003c73e 0020       movs     r0, #0
0003c740 8849       ldr      r1, [pc, #0x220] ; [0x3c964]=0xf64f8cda
0003c742 0120       movs     r0, #1
0003c744 90d8       bhi      #0x3c668
0003c746 0500       movs     r5, r0
0003c748 9cd8       bhi      #0x3c684
0003c74a 0500       movs     r5, r0
0003c74c 55c4       stm      r4!, {r0, r2, r4, r6}
0003c74e 0300       movs     r3, r0
0003c750 10b5       push     {r4, lr}
0003c752 094c       ldr      r4, [pc, #0x24] ; [0x3c778]=0x2000fbfc
0003c754 2388       ldrh     r3, [r4]
0003c756 8342       cmp      r3, r0
0003c758 0dd1       bne      #0x3c776
0003c75a 084a       ldr      r2, [pc, #0x20] ; [0x3c77c]=0x5d8ba 'Disconn. on indication conn_handle'
0003c75c 0121       movs     r1, #1
0003c75e 0920       movs     r0, #9
0003c760 faf7e4f9   bl       #0x36b2c
0003c764 4ff6ff73   movw     r3, #0xffff
0003c768 2380       strh     r3, [r4]
0003c76a fff7cbfc   bl       #0x3c104
0003c76e bde81040   pop.w    {r4, lr}
0003c772 fff7d9bc   b.w      #0x3c128
0003c776 10bd       pop      {r4, pc}
0003c778 fcfb       .byte    0xfc, 0xfb
0003c77a 0020       movs     r0, #0
0003c77c bad8       bhi      #0x3c6f4
0003c77e 0500       movs     r5, r0
0003c780 10b5       push     {r4, lr}
0003c782 86b0       sub      sp, #0x18
0003c784 0024       movs     r4, #0
0003c786 0df10700   add.w    r0, sp, #7
0003c78a 8df80740   strb.w   r4, [sp, #7]
0003c78e ebf7e7ff   bl       #0x28760
0003c792 144b       ldr      r3, [pc, #0x50] ; [0x3c7e4]=0x20014714
0003c794 1c70       strb     r4, [r3]
0003c796 144b       ldr      r3, [pc, #0x50] ; [0x3c7e8]=0x2000fbfc
0003c798 144c       ldr      r4, [pc, #0x50] ; [0x3c7ec]=0x62228
0003c79a 4ff6ff72   movw     r2, #0xffff
0003c79e 1a80       strh     r2, [r3]
0003c7a0 0022       movs     r2, #0
0003c7a2 02a9       add      r1, sp, #8
0003c7a4 2046       mov      r0, r4
0003c7a6 f2f7c6fc   bl       #0x2f136
0003c7aa 90b1       cbz      r0, #0x3c7d2
0003c7ac 0f48       ldr      r0, [pc, #0x3c] ; [0x3c7ec]=0x62228
0003c7ae 104c       ldr      r4, [pc, #0x40] ; [0x3c7f0]=0x6223c
0003c7b0 f2f793fc   bl       #0x2f0da
0003c7b4 0022       movs     r2, #0
0003c7b6 02a9       add      r1, sp, #8
0003c7b8 2046       mov      r0, r4
0003c7ba f2f7bcfc   bl       #0x2f136
0003c7be 60b1       cbz      r0, #0x3c7da
0003c7c0 0b48       ldr      r0, [pc, #0x2c] ; [0x3c7f0]=0x6223c
0003c7c2 f2f78afc   bl       #0x2f0da
0003c7c6 9df80700   ldrb.w   r0, [sp, #7]
0003c7ca ebf7edff   bl       #0x287a8
0003c7ce 06b0       add      sp, #0x18
0003c7d0 10bd       pop      {r4, pc}
0003c7d2 0298       ldr      r0, [sp, #8]
0003c7d4 07f00aff   bl       #0x445ec
0003c7d8 e2e7       b        #0x3c7a0
0003c7da 0298       ldr      r0, [sp, #8]
0003c7dc 07f006ff   bl       #0x445ec
0003c7e0 e8e7       b        #0x3c7b4
0003c7e2 00bf       nop      
0003c7e4 1447       bxns     r2
0003c7e6 0120       movs     r0, #1
0003c7e8 fcfb       .byte    0xfc, 0xfb
0003c7ea 0020       movs     r0, #0
0003c7ec 2822       movs     r2, #0x28
0003c7ee 0600       movs     r6, r0
0003c7f0 3c22       movs     r2, #0x3c
0003c7f2 0600       movs     r6, r0
0003c7f4 2de9f347   push.w   {r0, r1, r4, r5, r6, r7, r8, sb, sl, lr}
0003c7f8 bdf828a0   ldrh.w   sl, [sp, #0x28]
0003c7fc cdf800a0   str.w    sl, [sp]
0003c800 8046       mov      r8, r0
0003c802 0e46       mov      r6, r1
0003c804 1746       mov      r7, r2
0003c806 0121       movs     r1, #1
0003c808 104a       ldr      r2, [pc, #0x40] ; [0x3c84c]=0x5d8dd 'cmd rsp: opcode 0x%04X, status 0x%X'
0003c80a 0920       movs     r0, #9
0003c80c 9946       mov      sb, r3
0003c80e faf78df9   bl       #0x36b2c
0003c812 0f4b       ldr      r3, [pc, #0x3c] ; [0x3c850]=0x20014824
0003c814 1c78       ldrb     r4, [r3]
0003c816 651c       adds     r5, r4, #1
0003c818 edb2       uxtb     r5, r5
0003c81a 092d       cmp      r5, #9
0003c81c 86bf       itte     hi
0003c81e 0022       movhi    r2, #0
0003c820 1a70       strbhi   r2, [r3]
0003c822 1d70       strbls   r5, [r3]
0003c824 0b4b       ldr      r3, [pc, #0x2c] ; [0x3c854]=0x200146c9
0003c826 03eb8402   add.w    r2, r3, r4, lsl #2
0003c82a 23f82490   strh.w   sb, [r3, r4, lsl #2]
0003c82e a2f802a0   strh.w   sl, [r2, #2]
0003c832 0422       movs     r2, #4
0003c834 0a92       str      r2, [sp, #0x28]
0003c836 03eb8403   add.w    r3, r3, r4, lsl #2
0003c83a 4246       mov      r2, r8
0003c83c 3946       mov      r1, r7
0003c83e 3046       mov      r0, r6
0003c840 02b0       add      sp, #8
0003c842 bde8f047   pop.w    {r4, r5, r6, r7, r8, sb, sl, lr}
0003c846 fff745bf   b.w      #0x3c6d4
0003c84a 00bf       nop      
0003c84c ddd8       bhi      #0x3c80a
0003c84e 0500       movs     r5, r0
0003c850 2448       ldr      r0, [pc, #0x90] ; [0x3c8e4]=0x93008823
0003c852 0120       movs     r0, #1
