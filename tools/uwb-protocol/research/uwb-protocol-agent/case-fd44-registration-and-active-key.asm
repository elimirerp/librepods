
0x3cd08
0003cd08 svc       #0xa8
0003cd0a bx        lr
0003cd0c svc       #0x62
0003cd0e bx        lr
0003cd10 b.w       #0x281b8
0003cd14 push      {r4, r5, r6, lr}
0003cd16 mov       r4, r0
0003cd18 mov       r5, r1
0003cd1a cbz       r1, #0x3cd30
0003cd1c cbz       r0, #0x3cd30
0003cd1e ldrh      r3, [r0]
0003cd20 cmp       r3, #0x11
0003cd22 beq       #0x3cd32
0003cd24 cmp       r3, #0x50
0003cd26 beq       #0x3cd40
0003cd28 cmp       r3, #0x10
0003cd2a bne       #0x3cd30
0003cd2c ldrh      r3, [r0, #4]
0003cd2e strh      r3, [r5, #0xe]
0003cd30 pop       {r4, r5, r6, pc}
0003cd32 ldrh      r2, [r0, #4]
0003cd34 ldrh      r3, [r1, #0xe]
0003cd36 cmp       r2, r3
0003cd38 bne       #0x3cd30
0003cd3a movw      r3, #0xffff
0003cd3e b         #0x3cd2e
0003cd40 ldrh      r6, [r0, #4]
0003cd42 mov       r0, r6
0003cd44 bl        #0x3b508
0003cd48 cmp       r0, #0
0003cd4a beq       #0x3cd30
0003cd4c ldr       r3, [r5, #0x10]
0003cd4e cmp       r3, #0
0003cd50 beq       #0x3cd30
0003cd52 adds      r1, r4, #6
0003cd54 mov       r0, r6
0003cd56 pop.w     {r4, r5, r6, lr}
0003cd5a bx        r3
0003cd5c push      {r4, lr}
0003cd5e mov       r4, r0
0003cd60 bl        #0x407b0
0003cd64 movs      r3, #0
0003cd66 str       r3, [r4, #4]
0003cd68 str       r3, [r4]
0003cd6a strb      r0, [r4, #4]

0x3d122
0003d122 ldr       r2, [pc, #0x194]
0003d124 add       r1, sp, #0x48
0003d126 movs      r0, #1
0003d128 bl        #0x3cd08
0003d12c mov       r4, r0
0003d12e cmp       r0, #0
0003d130 bne.w     #0x3d240
0003d134 ldr       r2, [pc, #0x184]
0003d136 movs      r1, #2
0003d138 movs      r0, #0x1c
0003d13a bl        #0x36b2c
0003d13e add       r4, sp, #0x68

0x3d2e0
0003d2e0 ldr       r3, [r5]
0003d2e2 ldr       r3, [r3, #0x40]
0003d2e4 cbz       r3, #0x3d32c
0003d2e6 mov       r1, r0
0003d2e8 movs      r2, #0x20
0003d2ea mov       r0, r6
0003d2ec bl        #0x44692
0003d2f0 movs      r3, #6
0003d2f2 strh.w    r3, [sp, #0xa8]
0003d2f6 ldrb      r3, [r5, #4]
0003d2f8 strb.w    r3, [sp, #0xaa]
0003d2fc mov.w     r3, #0x180018
0003d300 str       r3, [sp, #0xac]
0003d302 mov.w     r3, #0x102
0003d306 strh.w    r3, [sp, #0xba]
0003d30a ldrh.w    r3, [sp, #0xb4]
0003d30e ldr       r2, [pc, #0x154]
0003d310 ldrh      r0, [r5, #0x14]
0003d312 bic       r3, r3, #0x28c0
0003d316 bic       r3, r3, #0x3f
0003d31a orrs      r7, r3
0003d31c mov       r1, r6
0003d31e strh.w    r7, [sp, #0xb4]
0003d322 bl        #0x2c162
0003d326 mov       r4, r0
0003d328 cmp       r0, #0
0003d32a bne       #0x3d240
0003d32c ldr       r2, [pc, #0x138]
0003d32e movs      r1, #2
0003d330 movs      r0, #0x1c
0003d332 bl        #0x36b2c
0003d336 ldr       r2, [pc, #0x134]

0x37bd2
00037bd2 str       r0, [sp]
00037bd4 movs      r2, #0x54
00037bd6 mov       r1, r5
00037bd8 bl        #0x41200
00037bdc cbz       r0, #0x37be2
00037bde bl        #0x281b8
00037be2 ldr.w     r3, [r5, #0x32]
00037be6 ldr       r2, [pc, #0x7c]
00037be8 movs      r1, #1
00037bea movs      r0, #0x1f
00037bec bl        #0x36b2c
00037bf0 ldr.w     r2, [r5, #0x32]
00037bf4 ldr       r3, [r6]
00037bf6 cmp       r2, r3
00037bf8 bne       #0x37c30
00037bfa cbnz      r7, #0x37c00
00037bfc bl        #0x37b30
00037c00 bl        #0x379a4
00037c04 ldr       r3, [pc, #0x60]
00037c06 ldr       r2, [pc, #0x64]
00037c08 ldr       r3, [r3, #0x1c]
00037c0a movs      r1, #1
00037c0c movs      r0, #0x1f
00037c0e bl        #0x36b2c
00037c12 ldrh      r2, [r6, #4]
00037c14 ldr       r3, [r6]
00037c16 ldr       r1, [pc, #0x3c]
00037c18 add       r3, r2
00037c1a str       r3, [r6]
00037c1c movs      r3, #0
00037c1e str       r3, [sp]
00037c20 movs      r2, #8
00037c22 movs      r3, #1
00037c24 movs      r0, #0x14
00037c26 bl        #0x41200
00037c2a cbz       r0, #0x37c30
00037c2c bl        #0x281b8
00037c30 cmp       r4, #0x12
00037c32 it        lo
00037c34 movlo     r4, #0x12
00037c36 ldr.w     r3, [r5, #0x32]
00037c3a subs      r4, #0x12
00037c3c cmp       r3, r4
00037c3e bne       #0x37c50
00037c40 bl        #0x3524c
00037c44 cbz       r0, #0x37c50
00037c46 add       sp, #0x14
00037c48 pop.w     {r4, r5, r6, r7, lr}
00037c4c b.w       #0x34d20
00037c50 add       sp, #0x14
00037c52 pop       {r4, r5, r6, r7, pc}
00037c54 adcs      r4, r0
00037c56 movs      r0, #1
00037c58 ands      r0, r0
00037c5a movs      r0, #1

0x37ca8
00037ca8 ldr       r0, [pc, #0]
00037caa bx        lr
00037cac ands      r4, r3
00037cae movs      r0, #1
00037cb0 ldr       r3, [pc, #4]
00037cb2 ldrb      r0, [r3, #5]
00037cb4 bx        lr
00037cb6 nop       
00037cb8 ands      r0, r0
00037cba movs      r0, #1
00037cbc ldr       r0, [pc, #0]
