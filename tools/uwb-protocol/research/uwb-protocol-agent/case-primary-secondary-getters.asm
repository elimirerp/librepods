00037c84 0048       ldr      r0, [pc, #0] ; [0x37c88]=0x2001414c
00037c86 7047       bx       lr
00037c88 4c41       adcs     r4, r1
00037c8a 0120       movs     r0, #1
00037c8c 0048       ldr      r0, [pc, #0] ; [0x37c90]=0x20014000
00037c8e 7047       bx       lr
00037c90 0040       ands     r0, r0
00037c92 0120       movs     r0, #1
00037c94 014b       ldr      r3, [pc, #4] ; [0x37c9c]=0x20014000
00037c96 d3f83200   ldr.w    r0, [r3, #0x32]
00037c9a 7047       bx       lr
00037c9c 0040       ands     r0, r0
00037c9e 0120       movs     r0, #1
00037ca0 0048       ldr      r0, [pc, #0] ; [0x37ca4]=0x20014000
00037ca2 7047       bx       lr
00037ca4 0040       ands     r0, r0
00037ca6 0120       movs     r0, #1
00037ca8 0048       ldr      r0, [pc, #0] ; [0x37cac]=0x2001401c
00037caa 7047       bx       lr
00037cac 1c40       ands     r4, r3
00037cae 0120       movs     r0, #1
00037cb0 014b       ldr      r3, [pc, #4] ; [0x37cb8]=0x20014000
00037cb2 5879       ldrb     r0, [r3, #5]
00037cb4 7047       bx       lr
00037cb6 00bf       nop      
00037cb8 0040       ands     r0, r0
00037cba 0120       movs     r0, #1
00037cbc 0048       ldr      r0, [pc, #0] ; [0x37cc0]=0x20014054
00037cbe 7047       bx       lr
00037cc0 5440       eors     r4, r2
00037cc2 0120       movs     r0, #1
00037cc4 014b       ldr      r3, [pc, #4] ; [0x37ccc]=0x20014054
00037cc6 d869       ldr      r0, [r3, #0x1c]
00037cc8 7047       bx       lr
00037cca 00bf       nop      
00037ccc 5440       eors     r4, r2
00037cce 0120       movs     r0, #1
00037cd0 0048       ldr      r0, [pc, #0] ; [0x37cd4]=0x20014054
00037cd2 7047       bx       lr
00037cd4 5440       eors     r4, r2
00037cd6 0120       movs     r0, #1
00037cd8 0048       ldr      r0, [pc, #0] ; [0x37cdc]=0x200140b4
00037cda 7047       bx       lr
00037cdc b440       lsls     r4, r6
00037cde 0120       movs     r0, #1
00037ce0 0048       ldr      r0, [pc, #0] ; [0x37ce4]=0x20014074
00037ce2 7047       bx       lr
00037ce4 7440       eors     r4, r6
00037ce6 0120       movs     r0, #1
00037ce8 10b5       push     {r4, lr}
00037cea 0d4c       ldr      r4, [pc, #0x34] ; [0x37d20]=0x20013ffc
00037cec 0d49       ldr      r1, [pc, #0x34] ; [0x37d24]=0x5b8fc 'find_my_crypto.c'
00037cee 2068       ldr      r0, [r4]
00037cf0 0038       subs     r0, #0
00037cf2 18bf       it       ne
00037cf4 0120       movne    r0, #1
00037cf6 40f20712   movw     r2, #0x107
00037cfa 01f0abff   bl       #0x39c54
00037cfe 5422       movs     r2, #0x54
00037d00 0021       movs     r1, #0
00037d02 0948       ldr      r0, [pc, #0x24] ; [0x37d28]=0x20014000
00037d04 0cf0c5fc   bl       #0x44692
00037d08 0848       ldr      r0, [pc, #0x20] ; [0x37d2c]=0x2001414c
00037d0a 5422       movs     r2, #0x54
00037d0c 0021       movs     r1, #0
00037d0e 0cf0c0fc   bl       #0x44692
00037d12 2368       ldr      r3, [r4]
00037d14 1b69       ldr      r3, [r3, #0x10]
00037d16 13b1       cbz      r3, #0x37d1e
00037d18 bde81040   pop.w    {r4, lr}
00037d1c 1847       bx       r3
00037d1e 10bd       pop      {r4, pc}
00037d20 fc3f       subs     r7, #0xfc
00037d22 0120       movs     r0, #1
00037d24 fcb8       .byte    0xfc, 0xb8
00037d26 0500       movs     r5, r0
00037d28 0040       ands     r0, r0
00037d2a 0120       movs     r0, #1
00037d2c 4c41       adcs     r4, r1
00037d2e 0120       movs     r0, #1
