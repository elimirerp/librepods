00429b90 f0b5       push     {r4, r5, r6, r7, lr}
00429b92 03af       add      r7, sp, #0xc
00429b94 2de90007   push.w   {r8, sb, sl}
00429b98 8946       mov      sb, r1
00429b9a b968       ldr      r1, [r7, #8]
00429b9c d7f80ca0   ldr.w    sl, [r7, #0xc]
00429ba0 1d46       mov      r5, r3
00429ba2 9046       mov      r8, r2
00429ba4 0446       mov      r4, r0
00429ba6 01b9       cbnz     r1, #0x429baa
00429ba8 1549       ldr      r1, [pc, #0x54] ; [0x429c00]=0x469cf8
00429baa 2046       mov      r0, r4
00429bac 32f04ffc   bl       #0x45c44e
00429bb0 04f11006   add.w    r6, r4, #0x10
00429bb4 0021       movs     r1, #0
00429bb6 1022       movs     r2, #0x10
00429bb8 32f0b4fb   bl       #0x45c324
00429bbc 04f11200   add.w    r0, r4, #0x12
00429bc0 4946       mov      r1, sb
00429bc2 4246       mov      r2, r8
00429bc4 2582       strh     r5, [r4, #0x10]
00429bc6 dcf7c3fe   bl       #0x406950
00429bca 0b48       ldr      r0, [pc, #0x2c] ; [0x429bf8]=0x44005000
00429bcc 4ff08051   mov.w    r1, #0x10000000
00429bd0 c4f820a0   str.w    sl, [r4, #0x20]
00429bd4 0162       str      r1, [r0, #0x20]
00429bd6 0949       ldr      r1, [pc, #0x24] ; [0x429bfc]=0x50001000
00429bd8 0462       str      r4, [r0, #0x20]
00429bda 0162       str      r1, [r0, #0x20]
00429bdc 0662       str      r6, [r0, #0x20]
00429bde c0f820a0   str.w    sl, [r0, #0x20]
00429be2 32f0a9f9   bl       #0x45bf38
00429be6 4169       ldr      r1, [r0, #0x14]
00429be8 c907       lsls     r1, r1, #0x1f
00429bea fcd0       beq      #0x429be6
00429bec 4ff0ff31   mov.w    r1, #-1
00429bf0 4161       str      r1, [r0, #0x14]
00429bf2 bde80007   pop.w    {r8, sb, sl}
00429bf6 f0bd       pop      {r4, r5, r6, r7, pc}
00429bf8 0050       str      r0, [r0, r0]
00429bfa 0044       add      r0, r0
00429bfc 0010       asrs     r0, r0, #0x20
00429bfe 0050       str      r0, [r0, r0]
00429c00 f89c       ldr      r4, [sp, #0x3e0]
00429c02 4600       lsls     r6, r0, #1
