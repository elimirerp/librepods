00429a00 41ea0020   orr.w    r0, r1, r0, lsl #8
00429a04 0599       ldr      r1, [sp, #0x14]
00429a06 40ea0140   orr.w    r0, r0, r1, lsl #16
00429a0a ff21       movs     r1, #0xff
00429a0c 40ea0b62   orr.w    r2, r0, fp, lsl #24
00429a10 1c48       ldr      r0, [pc, #0x70] ; [0x429a84]=0x10043c39
00429a12 0af025fc   bl       #0x434260
00429a16 7019       adds     r0, r6, r5
00429a18 89f8fe00   strb.w   r0, [sb, #0xfe]
00429a1c 0006       lsls     r0, r0, #0x18
00429a1e 25d0       beq      #0x429a6c
00429a20 0020       movs     r0, #0
00429a22 a7f14e01   sub.w    r1, r7, #0x4e
00429a26 8542       cmp      r5, r0
00429a28 05d0       beq      #0x429a36
00429a2a 0b5c       ldrb     r3, [r1, r0]
00429a2c 09eb0002   add.w    r2, sb, r0
00429a30 0130       adds     r0, #1
00429a32 9370       strb     r3, [r2, #2]
00429a34 f7e7       b        #0x429a26
00429a36 09eb0500   add.w    r0, sb, r5
00429a3a 0021       movs     r1, #0
00429a3c 0df12202   add.w    r2, sp, #0x22
00429a40 99f8fe40   ldrb.w   r4, [sb, #0xfe]
00429a44 6b18       adds     r3, r5, r1
00429a46 a342       cmp      r3, r4
00429a48 04d2       bhs      #0x429a54
00429a4a 545c       ldrb     r4, [r2, r1]
00429a4c 4318       adds     r3, r0, r1
00429a4e 0131       adds     r1, #1
00429a50 9c70       strb     r4, [r3, #2]
00429a52 f5e7       b        #0x429a40
00429a54 0020       movs     r0, #0
00429a56 89f8fc00   strb.w   r0, [sb, #0xfc]
00429a5a 99f80200   ldrb.w   r0, [sb, #2]
00429a5e 89f8fd00   strb.w   r0, [sb, #0xfd]
00429a62 89f80000   strb.w   r0, [sb]
00429a66 47b0       add      sp, #0x11c
00429a68 32f0d7ba   b.w      #0x45c01a
00429a6c cde90244   strd     r4, r4, [sp, #8]
00429a70 cde90044   strd     r4, r4, [sp]
00429a74 40f24911   movw     r1, #0x149
00429a78 0348       ldr      r0, [pc, #0xc] ; [0x429a88]=0x46f23e 'nmmac.c'
00429a7a 044a       ldr      r2, [pc, #0x10] ; [0x429a8c]=0x46f29e 'channel_mgr->max_hops'
00429a7c 0df0acfd   bl       #0x4375d8
00429a80 223c       subs     r4, #0x22
00429a82 0410       asrs     r4, r0, #0x20
00429a84 393c       subs     r4, #0x39
00429a86 0410       asrs     r4, r0, #0x20
00429a88 3ef2       .byte    0x3e, 0xf2
00429a8a 4600       lsls     r6, r0, #1
00429a8c 9ef2       .byte    0x9e, 0xf2
00429a8e 4600       lsls     r6, r0, #1
00429a90 00f47841   and      r1, r0, #0xf800
00429a94 b1f5405f   cmp.w    r1, #0x3000
00429a98 1cbf       itt      ne
00429a9a 0020       movne    r0, #0
00429a9c 7047       bxne     lr
00429a9e 43f2ff71   movw     r1, #0x37ff
00429aa2 0840       ands     r0, r1
00429aa4 ecf770b8   b.w      #0x415b88
00429aa8 d0b5       push     {r4, r6, r7, lr}
00429aaa 02af       add      r7, sp, #8
00429aac 84b2       uxth     r4, r0
00429aae 2046       mov      r0, r4
00429ab0 fff7eeff   bl       #0x429a90
00429ab4 0146       mov      r1, r0
00429ab6 0020       movs     r0, #0
00429ab8 39b1       cbz      r1, #0x429aca
00429aba b4f5405f   cmp.w    r4, #0x3000
00429abe 04d3       blo      #0x429aca
00429ac0 43f23201   movw     r1, #0x3032
00429ac4 8c42       cmp      r4, r1
00429ac6 38bf       it       lo
00429ac8 0120       movlo    r0, #1
00429aca d0bd       pop      {r4, r6, r7, pc}
00429acc 0378       ldrb     r3, [r0]
00429ace 8b42       cmp      r3, r1
00429ad0 0dd1       bne      #0x429aee
00429ad2 80b5       push     {r7, lr}
00429ad4 6f46       mov      r7, sp
00429ad6 1146       mov      r1, r2
00429ad8 0130       adds     r0, #1
00429ada 0322       movs     r2, #3
00429adc dcf7a2fe   bl       #0x406824
00429ae0 0028       cmp      r0, #0
00429ae2 18bf       it       ne
00429ae4 6ff00a00   mvnne    r0, #0xa
00429ae8 bde88040   pop.w    {r7, lr}
00429aec 00e0       b        #0x429af0
00429aee f720       movs     r0, #0xf7
00429af0 c0b2       uxtb     r0, r0
00429af2 7047       bx       lr
00429af4 f0b5       push     {r4, r5, r6, r7, lr}
00429af6 03af       add      r7, sp, #0xc
00429af8 2de9c007   push.w   {r6, r7, r8, sb, sl}
00429afc 8846       mov      r8, r1
00429afe 0146       mov      r1, r0
00429b00 0020       movs     r0, #0
00429b02 1646       mov      r6, r2
00429b04 6a46       mov      r2, sp
00429b06 9946       mov      sb, r3
00429b08 cde90000   strd     r0, r0, [sp]
00429b0c 1348       ldr      r0, [pc, #0x4c] ; [0x429b5c]=0x4296bd
00429b0e fcf7abf8   bl       #0x425c68
00429b12 dde900a4   ldrd     sl, r4, [sp]
00429b16 1248       ldr      r0, [pc, #0x48] ; [0x429b60]=0x10043c93
00429b18 124d       ldr      r5, [pc, #0x48] ; [0x429b64]=0x434261
00429b1a 8021       movs     r1, #0x80
00429b1c 3246       mov      r2, r6
00429b1e 4b46       mov      r3, sb
00429b20 a847       blx      r5
00429b22 dde90023   ldrd     r2, r3, [sp]
00429b26 1048       ldr      r0, [pc, #0x40] ; [0x429b68]=0x10043cb1
00429b28 8021       movs     r1, #0x80
00429b2a a847       blx      r5
00429b2c baeb0606   subs.w   r6, sl, r6
00429b30 08eb4801   add.w    r1, r8, r8, lsl #1
00429b34 084a       ldr      r2, [pc, #0x20] ; [0x429b58]=0x17700
00429b36 64eb0900   sbc.w    r0, r4, sb
00429b3a 54ea0a04   orrs.w   r4, r4, sl
00429b3e 0cbf       ite      eq
00429b40 8e18       addeq    r6, r1, r2
00429b42 0446       movne    r4, r0
00429b44 0948       ldr      r0, [pc, #0x24] ; [0x429b6c]=0x10043cd3
00429b46 8021       movs     r1, #0x80
00429b48 3246       mov      r2, r6
00429b4a 2346       mov      r3, r4
00429b4c a847       blx      r5
00429b4e 3046       mov      r0, r6
00429b50 2146       mov      r1, r4
00429b52 bde80c07   pop.w    {r2, r3, r8, sb, sl}
00429b56 f0bd       pop      {r4, r5, r6, r7, pc}
00429b58 0077       strb     r0, [r0, #0x1c]
00429b5a 0100       movs     r1, r0
00429b5c bd96       str      r6, [sp, #0x2f4]
00429b5e 4200       lsls     r2, r0, #1
00429b60 933c       subs     r4, #0x93
00429b62 0410       asrs     r4, r0, #0x20
00429b64 6142       rsbs     r1, r4, #0
00429b66 4300       lsls     r3, r0, #1
00429b68 b13c       subs     r4, #0xb1
00429b6a 0410       asrs     r4, r0, #0x20
00429b6c d33c       subs     r4, #0xd3
00429b6e 0410       asrs     r4, r0, #0x20
00429b70 90f8c710   ldrb.w   r1, [r0, #0xc7]
00429b74 0907       lsls     r1, r1, #0x1c
00429b76 44bf       itt      mi
00429b78 0220       movmi    r0, #2
00429b7a 7047       bxmi     lr
00429b7c 80b5       push     {r7, lr}
00429b7e 6f46       mov      r7, sp
00429b80 b0f89300   ldrh.w   r0, [r0, #0x93]
00429b84 fff790ff   bl       #0x429aa8
00429b88 80f00100   eor      r0, r0, #1
00429b8c 80bd       pop      {r7, pc}
00429b8e 00bf       nop      
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
