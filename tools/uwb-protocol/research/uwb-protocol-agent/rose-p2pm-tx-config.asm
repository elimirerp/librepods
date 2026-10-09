00429e00 d6f8dc00   ldr.w    r0, [r6, #0xdc]
00429e04 d6f8e010   ldr.w    r1, [r6, #0xe0]
00429e08 c5f84710   str.w    r1, [r5, #0x47]
00429e0c c5f84300   str.w    r0, [r5, #0x43]
00429e10 206c       ldr      r0, [r4, #0x40]
00429e12 807c       ldrb     r0, [r0, #0x12]
00429e14 0afa00f0   lsl.w    r0, sl, r0
00429e18 85f84b00   strb.w   r0, [r5, #0x4b]
00429e1c 30d1       bne      #0x429e80
00429e1e d6f82421   ldr.w    r2, [r6, #0x124]
00429e22 d6f82831   ldr.w    r3, [r6, #0x128]
00429e26 6948       ldr      r0, [pc, #0x1a4] ; [0x429fcc]=0x10043d81
00429e28 32f041fc   bl       #0x45c6ae
00429e2c d6f82401   ldr.w    r0, [r6, #0x124]
00429e30 41f23a61   movw     r1, #0x163a
00429e34 c5f81e00   str.w    r0, [r5, #0x1e]
00429e38 206c       ldr      r0, [r4, #0x40]
00429e3a 407e       ldrb     r0, [r0, #0x19]
00429e3c 04eb4000   add.w    r0, r4, r0, lsl #1
00429e40 405a       ldrh     r0, [r0, r1]
00429e42 4ff4b251   mov.w    r1, #0x1640
00429e46 e884       strh     r0, [r5, #0x26]
00429e48 206c       ldr      r0, [r4, #0x40]
00429e4a 407e       ldrb     r0, [r0, #0x19]
00429e4c 04eb4000   add.w    r0, r4, r0, lsl #1
00429e50 405a       ldrh     r0, [r0, r1]
00429e52 2946       mov      r1, r5
00429e54 2885       strh     r0, [r5, #0x28]
00429e56 d6f87c01   ldr.w    r0, [r6, #0x17c]
00429e5a c5f82a00   str.w    r0, [r5, #0x2a]
00429e5e d6f86801   ldr.w    r0, [r6, #0x168]
00429e62 a863       str      r0, [r5, #0x38]
00429e64 41f2f850   movw     r0, #0x15f8
00429e68 31f03efc   bl       #0x45b6e8
00429e6c 96f8d200   ldrb.w   r0, [r6, #0xd2]
00429e70 20b1       cbz      r0, #0x429e7c
00429e72 41f21d60   movw     r0, #0x161d
00429e76 31f06cfb   bl       #0x45b552
00429e7a 01e0       b        #0x429e80
00429e7c ff20       movs     r0, #0xff
00429e7e 2886       strh     r0, [r5, #0x30]
00429e80 31f0b0fa   bl       #0x45b3e4
00429e84 206c       ldr      r0, [r4, #0x40]
00429e86 b0f8c200   ldrh.w   r0, [r0, #0xc2]
00429e8a c007       lsls     r0, r0, #0x1f
00429e8c 6dd0       beq      #0x429f6a
00429e8e 32f021fd   bl       #0x45c8d4
00429e92 a0f80c90   strh.w   sb, [r0, #0xc]
00429e96 0546       mov      r5, r0
00429e98 31f082fa   bl       #0x45b3a0
00429e9c 206e       ldr      r0, [r4, #0x60]
00429e9e 6882       strh     r0, [r5, #0x12]
00429ea0 31f072fd   bl       #0x45b988
00429ea4 a961       str      r1, [r5, #0x18]
00429ea6 6861       str      r0, [r5, #0x14]
00429ea8 41f23a62   movw     r2, #0x163a
00429eac 0123       movs     r3, #1
00429eae 33f0bafb   bl       #0x45d626
00429eb2 b6f89601   ldrh.w   r0, [r6, #0x196]
00429eb6 32f05ef9   bl       #0x45c176
00429eba 96f86c11   ldrb.w   r1, [r6, #0x16c]
00429ebe 407e       ldrb     r0, [r0, #0x19]
00429ec0 85f84d10   strb.w   r1, [r5, #0x4d]
00429ec4 04eb4000   add.w    r0, r4, r0, lsl #1
00429ec8 825a       ldrh     r2, [r0, r2]
00429eca a5f84e20   strh.w   r2, [r5, #0x4e]
00429ece 4ff4b252   mov.w    r2, #0x1640
00429ed2 825a       ldrh     r2, [r0, r2]
00429ed4 a5f85020   strh.w   r2, [r5, #0x50]
00429ed8 d6f87c21   ldr.w    r2, [r6, #0x17c]
00429edc c5f85720   str.w    r2, [r5, #0x57]
00429ee0 226c       ldr      r2, [r4, #0x40]
00429ee2 927c       ldrb     r2, [r2, #0x12]
00429ee4 03fa02f2   lsl.w    r2, r3, r2
00429ee8 85f85b20   strb.w   r2, [r5, #0x5b]
00429eec 96f8d320   ldrb.w   r2, [r6, #0xd3]
00429ef0 012a       cmp      r2, #1
00429ef2 08bf       it       eq
00429ef4 0029       cmpeq    r1, #0
00429ef6 0dd1       bne      #0x429f14
00429ef8 96f88011   ldrb.w   r1, [r6, #0x180]
00429efc 85f85210   strb.w   r1, [r5, #0x52]
00429f00 41f24e61   movw     r1, #0x164e
00429f04 415a       ldrh     r1, [r0, r1]
00429f06 a5f85310   strh.w   r1, [r5, #0x53]
00429f0a 41f25461   movw     r1, #0x1654
00429f0e 405a       ldrh     r0, [r0, r1]
00429f10 a5f85500   strh.w   r0, [r5, #0x55]
00429f14 b9f1000f   cmp.w    sb, #0
00429f18 25d1       bne      #0x429f66
00429f1a d6f80401   ldr.w    r0, [r6, #0x104]
00429f1e d6f80811   ldr.w    r1, [r6, #0x108]
00429f22 e962       str      r1, [r5, #0x2c]
00429f24 a862       str      r0, [r5, #0x28]
00429f26 d6f80c01   ldr.w    r0, [r6, #0x10c]
00429f2a d6f81011   ldr.w    r1, [r6, #0x110]
00429f2e 6963       str      r1, [r5, #0x34]
00429f30 2863       str      r0, [r5, #0x30]
00429f32 d6f86801   ldr.w    r0, [r6, #0x168]
00429f36 c5f84200   str.w    r0, [r5, #0x42]
00429f3a b6f84401   ldrh.w   r0, [r6, #0x144]
00429f3e a5f86200   strh.w   r0, [r5, #0x62]
00429f42 b6f84601   ldrh.w   r0, [r6, #0x146]
00429f46 a5f86400   strh.w   r0, [r5, #0x64]
00429f4a b6f84801   ldrh.w   r0, [r6, #0x148]
00429f4e a5f86600   strh.w   r0, [r5, #0x66]
00429f52 96f8d200   ldrb.w   r0, [r6, #0xd2]
00429f56 20b1       cbz      r0, #0x429f62
00429f58 41f21d60   movw     r0, #0x161d
00429f5c 32f0dcff   bl       #0x45cf18
00429f60 01e0       b        #0x429f66
00429f62 ff20       movs     r0, #0xff
00429f64 a887       strh     r0, [r5, #0x3c]
00429f66 31f03dfa   bl       #0x45b3e4
00429f6a baf1000f   cmp.w    sl, #0
00429f6e 1ed0       beq      #0x429fae
00429f70 6069       ldr      r0, [r4, #0x14]
00429f72 a16c       ldr      r1, [r4, #0x48]
00429f74 e26c       ldr      r2, [r4, #0x4c]
00429f76 31f049fb   bl       #0x45b60c
00429f7a 0020       movs     r0, #0
00429f7c a4f85c00   strh.w   r0, [r4, #0x5c]
00429f80 1a20       movs     r0, #0x1a
00429f82 b9f1000f   cmp.w    sb, #0
00429f86 08bf       it       eq
00429f88 1920       moveq    r0, #0x19
00429f8a b9f1260f   cmp.w    sb, #0x26
00429f8e 08bf       it       eq
00429f90 1920       moveq    r0, #0x19
00429f92 e061       str      r0, [r4, #0x1c]
00429f94 b8f1000f   cmp.w    r8, #0
00429f98 1cbf       itt      ne
00429f9a bde8080f   popne.w  {r3, r8, sb, sl, fp}
00429f9e f0bd       popne    {r4, r5, r6, r7, pc}
00429fa0 2046       mov      r0, r4
00429fa2 bde8080f   pop.w    {r3, r8, sb, sl, fp}
00429fa6 bde8f040   pop.w    {r4, r5, r6, r7, lr}
00429faa fcf741ba   b.w      #0x426430
00429fae 206c       ldr      r0, [r4, #0x40]
00429fb0 4946       mov      r1, sb
00429fb2 01f0a7fd   bl       #0x42bb04
00429fb6 e0e7       b        #0x429f7a
00429fb8 b9f10e0f   cmp.w    sb, #0xe
00429fbc 08bf       it       eq
00429fbe 4ff00d09   moveq.w  sb, #0xd
00429fc2 4ff0000a   mov.w    sl, #0
00429fc6 5de7       b        #0x429e84
00429fc8 885b       ldrh     r0, [r1, r6]
00429fca 0010       asrs     r0, r0, #0x20
00429fcc 813d       subs     r5, #0x81
00429fce 0410       asrs     r4, r0, #0x20
00429fd0 b0b5       push     {r4, r5, r7, lr}
00429fd2 02af       add      r7, sp, #8
00429fd4 33f070f9   bl       #0x45d2b8
00429fd8 0546       mov      r5, r0
00429fda 20b1       cbz      r0, #0x429fe6
00429fdc 2046       mov      r0, r4
00429fde 1421       movs     r1, #0x14
00429fe0 0022       movs     r2, #0
00429fe2 fff78dfe   bl       #0x429d00
00429fe6 2846       mov      r0, r5
00429fe8 b0bd       pop      {r4, r5, r7, pc}
00429fea 00bf       nop      
00429fec f0b5       push     {r4, r5, r6, r7, lr}
00429fee 03af       add      r7, sp, #0xc
