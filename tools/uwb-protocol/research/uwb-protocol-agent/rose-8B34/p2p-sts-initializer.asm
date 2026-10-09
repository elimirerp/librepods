0042bec4 f0b5       push     {r4, r5, r6, r7, lr}
0042bec6 03af       add      r7, sp, #0xc
0042bec8 2de90007   push.w   {r8, sb, sl}
0042becc 0d46       mov      r5, r1
0042bece 01f1a106   add.w    r6, r1, #0xa1
0042bed2 1d49       ldr      r1, [pc, #0x74] ; [0x42bf48]=0x469258
0042bed4 9146       mov      sb, r2
0042bed6 8246       mov      sl, r0
0042bed8 1022       movs     r2, #0x10
0042beda 9846       mov      r8, r3
0042bedc 2ff064fd   bl       #0x45b9a8
0042bee0 05f18104   add.w    r4, r5, #0x81
0042bee4 0021       movs     r1, #0
0042bee6 1022       movs     r2, #0x10
0042bee8 2ff0d6fd   bl       #0x45ba98
0042beec 1349       ldr      r1, [pc, #0x4c] ; [0x42bf3c]=0x2056c539
0042beee 1448       ldr      r0, [pc, #0x50] ; [0x42bf40]=0x44005000
0042bef0 4ff0b052   mov.w    r2, #0x16000000
0042bef4 c5f88580   str.w    r8, [r5, #0x85]
0042bef8 c5f88190   str.w    sb, [r5, #0x81]
0042befc c5f8c8a0   str.w    sl, [r5, #0xc8]
0042bf00 c5f8c410   str.w    r1, [r5, #0xc4]
0042bf04 0262       str      r2, [r0, #0x20]
0042bf06 0f4a       ldr      r2, [pc, #0x3c] ; [0x42bf44]=0x26020000
0042bf08 0662       str      r6, [r0, #0x20]
0042bf0a 0262       str      r2, [r0, #0x20]
0042bf0c 0462       str      r4, [r0, #0x20]
0042bf0e 0162       str      r1, [r0, #0x20]
0042bf10 c0f820a0   str.w    sl, [r0, #0x20]
0042bf14 2ff0d1f8   bl       #0x45b0ba
0042bf18 4169       ldr      r1, [r0, #0x14]
0042bf1a c907       lsls     r1, r1, #0x1f
0042bf1c fcd0       beq      #0x42bf18
0042bf1e 4ff0ff31   mov.w    r1, #-1
0042bf22 4161       str      r1, [r0, #0x14]
0042bf24 5fea8a70   lsls.w   r0, sl, #0x1e
0042bf28 04bf       itt      eq
0042bf2a bde80007   popeq.w  {r8, sb, sl}
0042bf2e f0bd       popeq    {r4, r5, r6, r7, pc}
0042bf30 0648       ldr      r0, [pc, #0x18] ; [0x42bf4c]=0x46da69 'uwbsec.c'
0042bf32 074a       ldr      r2, [pc, #0x1c] ; [0x42bf50]=0x46da72 '((uint32_t)sts_output & 0x03) == 0'
0042bf34 4ff40c71   mov.w    r1, #0x230
0042bf38 0bf08af8   bl       #0x437050
0042bf3c 39c5       stm      r5!, {r0, r3, r4, r5}
0042bf3e 5620       movs     r0, #0x56
0042bf40 0050       str      r0, [r0, r0]
0042bf42 0044       add      r0, r0
0042bf44 0000       movs     r0, r0
0042bf46 0226       movs     r6, #2
0042bf48 5892       str      r2, [sp, #0x160]
0042bf4a 4600       lsls     r6, r0, #1
