00419fc4 f0b5       push     {r4, r5, r6, r7, lr}
00419fc6 03af       add      r7, sp, #0xc
00419fc8 2de9fe0f   push.w   {r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp}
00419fcc 8046       mov      r8, r0
00419fce 9068       ldr      r0, [r2, #8]
00419fd0 1646       mov      r6, r2
00419fd2 8b46       mov      fp, r1
00419fd4 1ffa88fa   uxth.w   sl, r8
00419fd8 0590       str      r0, [sp, #0x14]
00419fda 5046       mov      r0, sl
00419fdc 01f09cfb   bl       #0x41b718
00419fe0 5849       ldr      r1, [pc, #0x160] ; [0x41a144]=0x40002018
00419fe2 8146       mov      sb, r0
00419fe4 0868       ldr      r0, [r1]
00419fe6 4968       ldr      r1, [r1, #4]
00419fe8 594c       ldr      r4, [pc, #0x164] ; [0x41a150]=0x1002a508
00419fea a066       str      r0, [r4, #0x68]
00419fec 5648       ldr      r0, [pc, #0x158] ; [0x41a148]=0x441112a8
00419fee 0268       ldr      r2, [r0]
00419ff0 42f00802   orr      r2, r2, #8
00419ff4 0260       str      r2, [r0]
00419ff6 e166       str      r1, [r4, #0x6c]
00419ff8 2069       ldr      r0, [r4, #0x10]
00419ffa 0028       cmp      r0, #0
00419ffc 40f09880   bne.w    #0x41a130
0041a000 5046       mov      r0, sl
0041a002 01f06ffb   bl       #0x41b6e4
0041a006 0028       cmp      r0, #0
0041a008 7ed0       beq      #0x41a108
0041a00a 5846       mov      r0, fp
0041a00c 5146       mov      r1, sl
0041a00e 19f0b5f8   bl       #0x43317c
0041a012 0028       cmp      r0, #0
0041a014 00f08180   beq.w    #0x41a11a
0041a018 4d46       mov      r5, sb
0041a01a f1f7bffa   bl       #0x40b59c
0041a01e 0690       str      r0, [sp, #0x18]
0041a020 3068       ldr      r0, [r6]
0041a022 7168       ldr      r1, [r6, #4]
0041a024 0022       movs     r2, #0
0041a026 0023       movs     r3, #0
0041a028 4ff00009   mov.w    sb, #0
0041a02c fff7ccfc   bl       #0x4199c8
0041a030 28b1       cbz      r0, #0x41a03e
0041a032 3046       mov      r0, r6
0041a034 fcf742fd   bl       #0x416abc
0041a038 4ff00108   mov.w    r8, #1
0041a03c 48e0       b        #0x41a0d0
0041a03e 0120       movs     r0, #1
0041a040 a4f80880   strh.w   r8, [r4, #8]
0041a044 2661       str      r6, [r4, #0x10]
0041a046 84f80ab0   strb.w   fp, [r4, #0xa]
0041a04a c4f82890   str.w    sb, [r4, #0x28]
0041a04e c4f82490   str.w    sb, [r4, #0x24]
0041a052 a4f82190   strh.w   sb, [r4, #0x21]
0041a056 84f81e90   strb.w   sb, [r4, #0x1e]
0041a05a 6560       str      r5, [r4, #4]
0041a05c 5146       mov      r1, sl
0041a05e 4af67f02   movw     r2, #0xa87f
0041a062 a846       mov      r8, r5
0041a064 2073       strb     r0, [r4, #0xc]
0041a066 2846       mov      r0, r5
0041a068 002d       cmp      r5, #0
0041a06a 18bf       it       ne
0041a06c 0220       movne    r0, #2
0041a06e 2077       strb     r0, [r4, #0x1c]
0041a070 3046       mov      r0, r6
0041a072 fff7eff8   bl       #0x419254
0041a076 059d       ldr      r5, [sp, #0x14]
0041a078 0022       movs     r2, #0
0041a07a 0123       movs     r3, #1
0041a07c 6969       ldr      r1, [r5, #0x14]
0041a07e 41f0e4fa   bl       #0x45b64a
0041a082 3046       mov      r0, r6
0041a084 2946       mov      r1, r5
0041a086 5246       mov      r2, sl
0041a088 5b46       mov      r3, fp
0041a08a fff79ffb   bl       #0x4197cc
0041a08e b069       ldr      r0, [r6, #0x18]
0041a090 0228       cmp      r0, #2
0041a092 28bf       it       hs
0041a094 0220       movhs    r0, #2
0041a096 6968       ldr      r1, [r5, #4]
0041a098 60f3db61   bfi      r1, r0, #0x1b, #1
0041a09c 5046       mov      r0, sl
0041a09e 6960       str      r1, [r5, #4]
0041a0a0 3146       mov      r1, r6
0041a0a2 fff769fa   bl       #0x419578
0041a0a6 b8f1000f   cmp.w    r8, #0
0041a0aa 02d0       beq      #0x41a0b2
0041a0ac 2846       mov      r0, r5
0041a0ae fff75ff9   bl       #0x419370
0041a0b2 2848       ldr      r0, [pc, #0xa0] ; [0x41a154]=0x10005adc
0041a0b4 41f05efc   bl       #0x45b974
0041a0b8 d6f8bc11   ldr.w    r1, [r6, #0x1bc]
0041a0bc 826b       ldr      r2, [r0, #0x38]
0041a0be 287c       ldrb     r0, [r5, #0x10]
0041a0c0 1cf02cfd   bl       #0x436b1c
0041a0c4 5046       mov      r0, sl
0041a0c6 3146       mov      r1, r6
0041a0c8 fdf75cf9   bl       #0x417384
0041a0cc 4ff00008   mov.w    r8, #0
0041a0d0 1c49       ldr      r1, [pc, #0x70] ; [0x41a144]=0x40002018
0041a0d2 41f027fa   bl       #0x45b524
0041a0d6 441a       subs     r4, r0, r1
0041a0d8 101a       subs     r0, r2, r0
0041a0da 4ff4c072   mov.w    r2, #0x180
0041a0de 41f0f2fc   bl       #0x45bac6
0041a0e2 0546       mov      r5, r0
0041a0e4 a4fb0601   umull    r0, r1, r4, r6
0041a0e8 41f0f9fa   bl       #0x45b6de
0041a0ec 0246       mov      r2, r0
0041a0ee 1a48       ldr      r0, [pc, #0x68] ; [0x41a158]=0x10041931
0041a0f0 45ea0103   orr.w    r3, r5, r1
0041a0f4 42f0d8fa   bl       #0x45c6a8
0041a0f8 0698       ldr      r0, [sp, #0x18]
0041a0fa f1f75bfa   bl       #0x40b5b4
0041a0fe 4046       mov      r0, r8
0041a100 07b0       add      sp, #0x1c
0041a102 bde8000f   pop.w    {r8, sb, sl, fp}
0041a106 f0bd       pop      {r4, r5, r6, r7, pc}
0041a108 0020       movs     r0, #0
0041a10a 41f25d31   movw     r1, #0x135d
0041a10e 43f0bff9   bl       #0x45d490
0041a112 1248       ldr      r0, [pc, #0x48] ; [0x41a15c]=0x46d8d5 'hmd.c'
0041a114 134a       ldr      r2, [pc, #0x4c] ; [0x41a164]=0x46e075 'hmd_pkt_valid_uwb(pkt_type)'
0041a116 1df05ffa   bl       #0x4375d8
0041a11a 0020       movs     r0, #0
0041a11c 41f25e31   movw     r1, #0x135e
0041a120 cde902a0   strd     sl, r0, [sp, #8]
0041a124 cde900b0   strd     fp, r0, [sp]
0041a128 0c48       ldr      r0, [pc, #0x30] ; [0x41a15c]=0x46d8d5 'hmd.c'
0041a12a 0f4a       ldr      r2, [pc, #0x3c] ; [0x41a168]=0x46dc5f 'hsi_preamble_valid(preamble, pkt_type)'
0041a12c 1df054fa   bl       #0x4375d8
0041a130 0649       ldr      r1, [pc, #0x18] ; [0x41a14c]=0x44800030
0041a132 0968       ldr      r1, [r1]
0041a134 41f080f9   bl       #0x45b438
0041a138 41f25731   movw     r1, #0x1357
0041a13c 0748       ldr      r0, [pc, #0x1c] ; [0x41a15c]=0x46d8d5 'hmd.c'
0041a13e 084a       ldr      r2, [pc, #0x20] ; [0x41a160]=0x46dc48 '!HMD_TX_STATUS_SW_BUSY'
0041a140 1df04afa   bl       #0x4375d8
0041a144 1820       movs     r0, #0x18
0041a146 0040       ands     r0, r0
0041a148 a812       asrs     r0, r5, #0xa
0041a14a 1144       add      r1, r2
0041a14c 3000       movs     r0, r6
0041a14e 8044       add      r8, r0
0041a150 08a5       adr      r5, #0x20
0041a152 0210       asrs     r2, r0, #0x20
0041a154 dc5a       ldrh     r4, [r3, r3]
0041a156 0010       asrs     r0, r0, #0x20
0041a158 3119       adds     r1, r6, r4
0041a15a 0410       asrs     r4, r0, #0x20
0041a15c d5d8       bhi      #0x41a10a
0041a15e 4600       lsls     r6, r0, #1
0041a160 48dc       bgt      #0x41a1f4
0041a162 4600       lsls     r6, r0, #1
0041a164 75e0       b        #0x41a252
0041a166 4600       lsls     r6, r0, #1
0041a168 5fdc       bgt      #0x41a22a
0041a16a 4600       lsls     r6, r0, #1
0041a16c f0b5       push     {r4, r5, r6, r7, lr}
0041a16e 03af       add      r7, sp, #0xc
0041a170 2de9000f   push.w   {r8, sb, sl, fp}
0041a174 8db0       sub      sp, #0x34
0041a176 85b2       uxth     r5, r0
0041a178 0446       mov      r4, r0
0041a17a d2f808b0   ldr.w    fp, [r2, #8]
0041a17e 9046       mov      r8, r2
0041a180 8a46       mov      sl, r1
0041a182 2846       mov      r0, r5
0041a184 01f0c8fa   bl       #0x41b718
0041a188 8146       mov      sb, r0
0041a18a b8f81460   ldrh.w   r6, [r8, #0x14]
0041a18e 2846       mov      r0, r5
0041a190 01f0dcfb   bl       #0x41b94c
0041a194 8642       cmp      r6, r0
0041a196 c0f0c880   blo.w    #0x41a32a
0041a19a f1f7fff9   bl       #0x40b59c
0041a19e e049       ldr      r1, [pc, #0x380] ; [0x41a520]=0x40002018
0041a1a0 0b90       str      r0, [sp, #0x2c]
0041a1a2 0868       ldr      r0, [r1]
0041a1a4 4968       ldr      r1, [r1, #4]
0041a1a6 df4e       ldr      r6, [pc, #0x37c] ; [0x41a524]=0x1002a508
0041a1a8 b066       str      r0, [r6, #0x68]
0041a1aa df48       ldr      r0, [pc, #0x37c] ; [0x41a528]=0x441112a8
0041a1ac f166       str      r1, [r6, #0x6c]
0041a1ae 42f06efa   bl       #0x45c68e
0041a1b2 2846       mov      r0, r5
0041a1b4 01f096fa   bl       #0x41b6e4
0041a1b8 0028       cmp      r0, #0
0041a1ba 00f0bc80   beq.w    #0x41a336
0041a1be 5046       mov      r0, sl
0041a1c0 2946       mov      r1, r5
0041a1c2 18f0dbff   bl       #0x43317c
0041a1c6 0028       cmp      r0, #0
0041a1c8 00f0be80   beq.w    #0x41a348
0041a1cc 3069       ldr      r0, [r6, #0x10]
0041a1ce 0c95       str      r5, [sp, #0x30]
0041a1d0 0a94       str      r4, [sp, #0x28]
0041a1d2 0028       cmp      r0, #0
0041a1d4 40f0dc81   bne.w    #0x41a590
0041a1d8 41f0bcfd   bl       #0x45bd54
0041a1dc 0022       movs     r2, #0
0041a1de 0023       movs     r3, #0
0041a1e0 4d46       mov      r5, sb
0041a1e2 4ff00009   mov.w    sb, #0
0041a1e6 fff7effb   bl       #0x4199c8
0041a1ea b0b1       cbz      r0, #0x41a21a
0041a1ec 4046       mov      r0, r8
0041a1ee fef72afc   bl       #0x418a46
0041a1f2 cb49       ldr      r1, [pc, #0x32c] ; [0x41a520]=0x40002018
0041a1f4 41f0c9fc   bl       #0x45bb8a
0041a1f8 0a26       movs     r6, #0xa
0041a1fa 41f02cf9   bl       #0x45b456
0041a1fe 41f03cf9   bl       #0x45b47a
0041a202 0246       mov      r2, r0
0041a204 c948       ldr      r0, [pc, #0x324] ; [0x41a52c]=0x10041982
0041a206 41f0d8fb   bl       #0x45b9ba
0041a20a 0b98       ldr      r0, [sp, #0x2c]
0041a20c 0db0       add      sp, #0x34
0041a20e bde8000f   pop.w    {r8, sb, sl, fp}
0041a212 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0041a216 f1f7cdb9   b.w      #0x40b5b4
0041a21a 0220       movs     r0, #2
0041a21c c6f81080   str.w    r8, [r6, #0x10]
0041a220 86f80aa0   strb.w   sl, [r6, #0xa]
0041a224 c6f82890   str.w    sb, [r6, #0x28]
0041a228 c6f82490   str.w    sb, [r6, #0x24]
0041a22c a6f82190   strh.w   sb, [r6, #0x21]
0041a230 86f81e90   strb.w   sb, [r6, #0x1e]
0041a234 7560       str      r5, [r6, #4]
0041a236 4af67f02   movw     r2, #0xa87f
0041a23a a946       mov      sb, r5
0041a23c 3073       strb     r0, [r6, #0xc]
0041a23e 0a98       ldr      r0, [sp, #0x28]
0041a240 002d       cmp      r5, #0
0041a242 3081       strh     r0, [r6, #8]
0041a244 2846       mov      r0, r5
0041a246 18bf       it       ne
0041a248 0220       movne    r0, #2
0041a24a 0c9c       ldr      r4, [sp, #0x30]
0041a24c 3077       strb     r0, [r6, #0x1c]
0041a24e 4046       mov      r0, r8
0041a250 2146       mov      r1, r4
0041a252 fef7ffff   bl       #0x419254
0041a256 dbf81410   ldr.w    r1, [fp, #0x14]
0041a25a 0122       movs     r2, #1
0041a25c 0023       movs     r3, #0
0041a25e 41f0f4f9   bl       #0x45b64a
0041a262 4046       mov      r0, r8
0041a264 5946       mov      r1, fp
0041a266 2246       mov      r2, r4
0041a268 5346       mov      r3, sl
0041a26a fff7affa   bl       #0x4197cc
0041a26e 2046       mov      r0, r4
0041a270 00f0def9   bl       #0x41a630
0041a274 dbf81400   ldr.w    r0, [fp, #0x14]
0041a278 0421       movs     r1, #4
0041a27a 61f30200   bfi      r0, r1, #0, #3
0041a27e cbf8       .byte    0xcb, 0xf8
