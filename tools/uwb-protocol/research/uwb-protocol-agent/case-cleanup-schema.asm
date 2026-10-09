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
