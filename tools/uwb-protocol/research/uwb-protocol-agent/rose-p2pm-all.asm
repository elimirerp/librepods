00429bf8 0050       str      r0, [r0, r0]
00429bfa 0044       add      r0, r0
00429bfc 0010       asrs     r0, r0, #0x20
00429bfe 0050       str      r0, [r0, r0]
00429c00 f89c       ldr      r4, [sp, #0x3e0]
00429c02 4600       lsls     r6, r0, #1
00429c04 f0b5       push     {r4, r5, r6, r7, lr}
00429c06 03af       add      r7, sp, #0xc
00429c08 4df804bd   str      fp, [sp, #-0x4]!
00429c0c 0446       mov      r4, r0
00429c0e c0f83c3b   str.w    r3, [r0, #0xb3c]
00429c12 c0f8382b   str.w    r2, [r0, #0xb38]
00429c16 4ff4c070   mov.w    r0, #0x180
00429c1a c4f8f00c   str.w    r0, [r4, #0xcf0]
00429c1e 04f63835   addw     r5, r4, #0xb38
00429c22 3e89       ldrh     r6, [r7, #8]
00429c24 3046       mov      r0, r6
00429c26 edf73dfe   bl       #0x4178a4
00429c2a 50b1       cbz      r0, #0x429c42
00429c2c d5f89409   ldr.w    r0, [r5, #0x994]
00429c30 04f5ac71   add.w    r1, r4, #0x158
00429c34 4ff40062   mov.w    r2, #0x800
00429c38 c4f8440b   str.w    r0, [r4, #0xb44]
00429c3c dcf788fe   bl       #0x406950
00429c40 02e0       b        #0x429c48
00429c42 0020       movs     r0, #0
00429c44 c4f8440b   str.w    r0, [r4, #0xb44]
00429c48 95f8491b   ldrb.w   r1, [r5, #0xb49]
00429c4c 3046       mov      r0, r6
00429c4e 2a46       mov      r2, r5
00429c50 f0f78cfa   bl       #0x41a16c
00429c54 d5f89409   ldr.w    r0, [r5, #0x994]
00429c58 04f16801   add.w    r1, r4, #0x68
00429c5c 5c22       movs     r2, #0x5c
00429c5e 00f50760   add.w    r0, r0, #0x870
00429c62 5df804bb   ldr      fp, [sp], #4
00429c66 bde8f040   pop.w    {r4, r5, r6, r7, lr}
00429c6a dcf771be   b.w      #0x406950
00429c6e 00bf       nop      
00429c70 f0b5       push     {r4, r5, r6, r7, lr}
00429c72 03af       add      r7, sp, #0xc
00429c74 2de9800f   push.w   {r7, r8, sb, sl, fp}
00429c78 41f2d058   movw     r8, #0x15d0
00429c7c 00eb0806   add.w    r6, r0, r8
00429c80 b368       ldr      r3, [r6, #8]
00429c82 b269       ldr      r2, [r6, #0x18]
00429c84 d6f80cc0   ldr.w    ip, [r6, #0xc]
00429c88 d6f81c90   ldr.w    sb, [r6, #0x1c]
00429c8c 3469       ldr      r4, [r6, #0x10]
00429c8e d6f804e0   ldr.w    lr, [r6, #4]
00429c92 a2fb03a5   umull    sl, r5, r2, r3
00429c96 02fb0c55   mla      r5, r2, ip, r5
00429c9a 09fb035b   mla      fp, sb, r3, r5
00429c9e 50f80850   ldr.w    r5, [r0, r8]
00429ca2 d6f81480   ldr.w    r8, [r6, #0x14]
00429ca6 a4fb0501   umull    r0, r1, r4, r5
00429caa 04fb0e11   mla      r1, r4, lr, r1
00429cae b0eb0a00   subs.w   r0, r0, sl
00429cb2 08fb0511   mla      r1, r8, r5, r1
00429cb6 61eb0b01   sbc.w    r1, r1, fp
00429cba 2d19       adds     r5, r5, r4
00429cbc 4eeb080e   adc.w    lr, lr, r8
00429cc0 5b19       adds     r3, r3, r5
00429cc2 4eeb0c05   adc.w    r5, lr, ip
00429cc6 d218       adds     r2, r2, r3
00429cc8 45eb0903   adc.w    r3, r5, sb
00429ccc ddf7e0fa   bl       #0x407290
00429cd0 7162       str      r1, [r6, #0x24]
00429cd2 3062       str      r0, [r6, #0x20]
00429cd4 8021       movs     r1, #0x80
00429cd6 2246       mov      r2, r4
00429cd8 4346       mov      r3, r8
00429cda 0748       ldr      r0, [pc, #0x1c] ; [0x429cf8]=0x10043d5d
00429cdc 0af0c0fa   bl       #0x434260
00429ce0 b269       ldr      r2, [r6, #0x18]
00429ce2 f369       ldr      r3, [r6, #0x1c]
00429ce4 0548       ldr      r0, [pc, #0x14] ; [0x429cfc]=0x10043d6f
00429ce6 8021       movs     r1, #0x80
00429ce8 01b0       add      sp, #4
00429cea bde8000f   pop.w    {r8, sb, sl, fp}
00429cee bde8f040   pop.w    {r4, r5, r6, r7, lr}
00429cf2 0af0b5ba   b.w      #0x434260
00429cf6 00bf       nop      
00429cf8 5d3d       subs     r5, #0x5d
00429cfa 0410       asrs     r4, r0, #0x20
00429cfc 6f3d       subs     r5, #0x6f
00429cfe 0410       asrs     r4, r0, #0x20
00429d00 f0b5       push     {r4, r5, r6, r7, lr}
00429d02 03af       add      r7, sp, #0xc
00429d04 2de9800f   push.w   {r7, r8, sb, sl, fp}
00429d08 0446       mov      r4, r0
00429d0a 8946       mov      sb, r1
00429d0c 006c       ldr      r0, [r0, #0x40]
00429d0e 9046       mov      r8, r2
00429d10 33f022fb   bl       #0x45d358
00429d14 41f2cc40   movw     r0, #0x14cc
00429d18 2618       adds     r6, r4, r0
00429d1a 96f8b401   ldrb.w   r0, [r6, #0x1b4]
00429d1e 0128       cmp      r0, #1
00429d20 0ad1       bne      #0x429d38
00429d22 0020       movs     r0, #0
00429d24 0221       movs     r1, #2
00429d26 86f8b401   strb.w   r0, [r6, #0x1b4]
00429d2a 206c       ldr      r0, [r4, #0x40]
00429d2c 4160       str      r1, [r0, #4]
00429d2e 94f85c00   ldrb.w   r0, [r4, #0x5c]
00429d32 0028       cmp      r0, #0
00429d34 00f04081   beq.w    #0x429fb8
00429d38 b9f1000f   cmp.w    sb, #0
00429d3c 3ed1       bne      #0x429dbc
00429d3e 206c       ldr      r0, [r4, #0x40]
00429d40 b0f8c210   ldrh.w   r1, [r0, #0xc2]
00429d44 8907       lsls     r1, r1, #0x1e
00429d46 0cd5       bpl      #0x429d62
00429d48 32f031ff   bl       #0x45cbae
00429d4c 216e       ldr      r1, [r4, #0x60]
00429d4e d6f86821   ldr.w    r2, [r6, #0x168]
00429d52 012d       cmp      r5, #1
00429d54 89b2       uxth     r1, r1
00429d56 02d1       bne      #0x429d5e
00429d58 01f012ff   bl       #0x42bb80
00429d5c 01e0       b        #0x429d62
00429d5e 01f042ff   bl       #0x42bbe6
00429d62 9948       ldr      r0, [pc, #0x264] ; [0x429fc8]=0x10005b88
00429d64 807e       ldrb     r0, [r0, #0x1a]
00429d66 0228       cmp      r0, #2
00429d68 28d3       blo      #0x429dbc
00429d6a 31f042fb   bl       #0x45b3f2
00429d6e 216c       ldr      r1, [r4, #0x40]
00429d70 31f0fcfe   bl       #0x45bb6c
00429d74 8173       strb     r1, [r0, #0xe]
00429d76 216e       ldr      r1, [r4, #0x60]
00429d78 32f0bffa   bl       #0x45c2fa
00429d7c 06f5ba71   add.w    r1, r6, #0x174
00429d80 4266       str      r2, [r0, #0x64]
00429d82 032d       cmp      r5, #3
00429d84 10d0       beq      #0x429da8
00429d86 226c       ldr      r2, [r4, #0x40]
00429d88 127e       ldrb     r2, [r2, #0x18]
00429d8a ea40       lsrs     r2, r5
00429d8c d207       lsls     r2, r2, #0x1f
00429d8e 08d0       beq      #0x429da2
00429d90 31f8063c   ldrh     r3, [r1, #-0x6]
00429d94 00eb8502   add.w    r2, r0, r5, lsl #2
00429d98 a2f84830   strh.w   r3, [r2, #0x48]
00429d9c 0b88       ldrh     r3, [r1]
00429d9e a2f84a30   strh.w   r3, [r2, #0x4a]
00429da2 0231       adds     r1, #2
00429da4 0135       adds     r5, #1
00429da6 ece7       b        #0x429d82
00429da8 b6f89411   ldrh.w   r1, [r6, #0x194]
00429dac 4ff48072   mov.w    r2, #0x100
00429db0 a0f84410   strh.w   r1, [r0, #0x44]
00429db4 216c       ldr      r1, [r4, #0x40]
00429db6 098a       ldrh     r1, [r1, #0x10]
00429db8 09f0d2f8   bl       #0x432f60
00429dbc 96f8d300   ldrb.w   r0, [r6, #0xd3]
00429dc0 4ff0010a   mov.w    sl, #1
00429dc4 0128       cmp      r0, #1
00429dc6 5dd1       bne      #0x429e84
00429dc8 31f0b8fc   bl       #0x45b73c
00429dcc 4ff0000b   mov.w    fp, #0
00429dd0 09f088f8   bl       #0x432ee4
00429dd4 a0f80c90   strh.w   sb, [r0, #0xc]
00429dd8 0546       mov      r5, r0
00429dda 31f08cfa   bl       #0x45b2f6
00429dde 32f088ff   bl       #0x45ccf2
00429de2 b9f1000f   cmp.w    sb, #0
00429de6 206e       ldr      r0, [r4, #0x60]
00429de8 85f81bb0   strb.w   fp, [r5, #0x1b]
00429dec a5f81900   strh.w   r0, [r5, #0x19]
00429df0 206c       ldr      r0, [r4, #0x40]
00429df2 b0f8aa00   ldrh.w   r0, [r0, #0xaa]
00429df6 a5f85200   strh.w   r0, [r5, #0x52]
00429dfa b6f8dc00   ldrh.w   r0, [r6, #0xdc]
00429dfe a883       strh     r0, [r5, #0x1c]
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
00429ff0 2de90007   push.w   {r8, sb, sl}
00429ff4 0446       mov      r4, r0
00429ff6 90f85d00   ldrb.w   r0, [r0, #0x5d]
00429ffa 0028       cmp      r0, #0
00429ffc 5fd1       bne      #0x42a0be
00429ffe 216c       ldr      r1, [r4, #0x40]
0042a000 b4f86000   ldrh.w   r0, [r4, #0x60]
0042a004 a268       ldr      r2, [r4, #8]
0042a006 04f65815   addw     r5, r4, #0x958
0042a00a 31f030fb   bl       #0x45b66e
0042a00e 3148       ldr      r0, [pc, #0xc4] ; [0x42a0d4]=0x10043db0
0042a010 32f0f6f8   bl       #0x45c200
0042a014 95f8280d   ldrb.w   r0, [r5, #0xd28]
0042a018 9721       movs     r1, #0x97
0042a01a 4ff00008   mov.w    r8, #0
0042a01e 0028       cmp      r0, #0
0042a020 18bf       it       ne
0042a022 9621       movne    r1, #0x96
0042a024 206c       ldr      r0, [r4, #0x40]
0042a026 d4f80890   ldr.w    sb, [r4, #8]
0042a02a a26d       ldr      r2, [r4, #0x58]
0042a02c d4f80ca0   ldr.w    sl, [r4, #0xc]
0042a030 d4f86869   ldr.w    r6, [r4, #0x968]
0042a034 405c       ldrb     r0, [r0, r1]
0042a036 19eb0201   adds.w   r1, sb, r2
0042a03a 4af10002   adc      r2, sl, #0
0042a03e 2165       str      r1, [r4, #0x50]
0042a040 0021       movs     r1, #0
0042a042 92b2       uxth     r2, r2
0042a044 85f8290d   strb.w   r0, [r5, #0xd29]
0042a048 3046       mov      r0, r6
0042a04a 6265       str      r2, [r4, #0x54]
0042a04c 1922       movs     r2, #0x19
0042a04e dcf70ffd   bl       #0x406a70
0042a052 1e49       ldr      r1, [pc, #0x78] ; [0x42a0cc]=0xffffa5a5
0042a054 31f0d3ff   bl       #0x45bffe
0042a058 1d49       ldr      r1, [pc, #0x74] ; [0x42a0d0]=0x3000a5a5
0042a05a 33f0dafa   bl       #0x45d612
0042a05e 1721       movs     r1, #0x17
0042a060 c5f804a0   str.w    sl, [r5, #4]
0042a064 c5f80090   str.w    sb, [r5]
0042a068 d5f8580c   ldr.w    r0, [r5, #0xc58]
0042a06c a4f86e19   strh.w   r1, [r4, #0x96e]
0042a070 d5f85c1c   ldr.w    r1, [r5, #0xc5c]
0042a074 c6f80b00   str.w    r0, [r6, #0xb]
0042a078 95f8440c   ldrb.w   r0, [r5, #0xc44]
0042a07c c6f80f10   str.w    r1, [r6, #0xf]
0042a080 0128       cmp      r0, #1
0042a082 02d1       bne      #0x42a08a
0042a084 c4f86489   str.w    r8, [r4, #0x964]
0042a088 09e0       b        #0x42a09e
0042a08a d5f8740b   ldr.w    r0, [r5, #0xb74]
0042a08e 04f5ac71   add.w    r1, r4, #0x158
0042a092 4ff40062   mov.w    r2, #0x800
0042a096 c4f86409   str.w    r0, [r4, #0x964]
0042a09a dcf759fc   bl       #0x406950
0042a09e 0020       movs     r0, #0
0042a0a0 95f8291d   ldrb.w   r1, [r5, #0xd29]
0042a0a4 2a46       mov      r2, r5
0042a0a6 84f8110b   strb.w   r0, [r4, #0xb11]
0042a0aa b5f84a0c   ldrh.w   r0, [r5, #0xc4a]
0042a0ae eff789ff   bl       #0x419fc4
0042a0b2 0120       movs     r0, #1
0042a0b4 84f85d00   strb.w   r0, [r4, #0x5d]
0042a0b8 bde80007   pop.w    {r8, sb, sl}
0042a0bc f0bd       pop      {r4, r5, r6, r7, pc}
0042a0be 0648       ldr      r0, [pc, #0x18] ; [0x42a0d8]=0x46f2b4 'p2pm_task.c'
0042a0c0 064a       ldr      r2, [pc, #0x18] ; [0x42a0dc]=0x46f2c0 'task->state == P2PM_S_IDLE'
0042a0c2 4ff41e71   mov.w    r1, #0x278
0042a0c6 0df07dfa   bl       #0x4375c4
0042a0ca 00bf       nop      
0042a0cc a5a5       adr      r5, #0x294
0042a0ce ffff       .byte    0xff, 0xff
0042a0d0 a5a5       adr      r5, #0x294
0042a0d2 0030       adds     r0, #0
0042a0d4 b03d       subs     r5, #0xb0
0042a0d6 0410       asrs     r4, r0, #0x20
0042a0d8 b4f2       .byte    0xb4, 0xf2
0042a0da 4600       lsls     r6, r0, #1
0042a0dc c0f24600   movt     r0, #0x46
0042a0e0 006c       ldr      r0, [r0, #0x40]
0042a0e2 0278       ldrb     r2, [r0]
0042a0e4 82f00100   eor      r0, r2, #1
0042a0e8 002a       cmp      r2, #0
0042a0ea 18bf       it       ne
0042a0ec 2622       movne    r2, #0x26
0042a0ee 0a80       strh     r2, [r1]
0042a0f0 7047       bx       lr
0042a0f2 00bf       nop      
0042a0f4 0349       ldr      r1, [pc, #0xc] ; [0x42a104]=0x10008870
0042a0f6 4968       ldr      r1, [r1, #4]
0042a0f8 8142       cmp      r1, r0
0042a0fa 08bf       it       eq
0042a0fc eff76ebd   beq.w    #0x419bdc
0042a100 7047       bx       lr
0042a102 00bf       nop      
0042a104 7088       ldrh     r0, [r6, #2]
0042a106 0010       asrs     r0, r0, #0x20
0042a108 b0b5       push     {r4, r5, r7, lr}
0042a10a 02af       add      r7, sp, #8
0042a10c 0546       mov      r5, r0
0042a10e 0c46       mov      r4, r1
0042a110 b0f86000   ldrh.w   r0, [r0, #0x60]
0042a114 31f0f1f9   bl       #0x45b4fa
0042a118 0948       ldr      r0, [pc, #0x24] ; [0x42a140]=0x10043dd9
0042a11a 32f071f8   bl       #0x45c200
0042a11e 95f85d00   ldrb.w   r0, [r5, #0x5d]
0042a122 10b1       cbz      r0, #0x42a12a
0042a124 2846       mov      r0, r5
0042a126 fff7e5ff   bl       #0x42a0f4
0042a12a a868       ldr      r0, [r5, #8]
0042a12c e968       ldr      r1, [r5, #0xc]
0042a12e 0122       movs     r2, #1
0042a130 e964       str      r1, [r5, #0x4c]
0042a132 a864       str      r0, [r5, #0x48]
0042a134 2846       mov      r0, r5
0042a136 2146       mov      r1, r4
0042a138 bde8b040   pop.w    {r4, r5, r7, lr}
0042a13c fff7e0bd   b.w      #0x429d00
0042a140 d93d       subs     r5, #0xd9
0042a142 0410       asrs     r4, r0, #0x20
0042a144 f0b5       push     {r4, r5, r6, r7, lr}
0042a146 03af       add      r7, sp, #0xc
0042a148 4df804bd   str      fp, [sp, #-0x4]!
0042a14c 84b0       sub      sp, #0x10
0042a14e 0446       mov      r4, r0
0042a150 d0f8282b   ldr.w    r2, [r0, #0xb28]
0042a154 d0f82c3b   ldr.w    r3, [r0, #0xb2c]
0042a158 3548       ldr      r0, [pc, #0xd4] ; [0x42a230]=0x10043e08
0042a15a 32f0a8fa   bl       #0x45c6ae
0042a15e 94f8300b   ldrb.w   r0, [r4, #0xb30]
0042a162 94f85d10   ldrb.w   r1, [r4, #0x5d]
0042a166 04f62835   addw     r5, r4, #0xb28
0042a16a b4f86e29   ldrh.w   r2, [r4, #0x96e]
0042a16e 32f0c1ff   bl       #0x45d0f4
0042a172 95f8591b   ldrb.w   r1, [r5, #0xb59]
0042a176 40ea0163   orr.w    r3, r0, r1, lsl #24
0042a17a 2e48       ldr      r0, [pc, #0xb8] ; [0x42a234]=0x10043e24
0042a17c 32f0fafb   bl       #0x45c974
0042a180 94f85d00   ldrb.w   r0, [r4, #0x5d]
0042a184 0528       cmp      r0, #5
0042a186 3ed0       beq      #0x42a206
0042a188 04f65812   addw     r2, r4, #0x958
0042a18c 0428       cmp      r0, #4
0042a18e 1dd0       beq      #0x42a1cc
0042a190 0128       cmp      r0, #1
0042a192 44d1       bne      #0x42a21e
0042a194 6968       ldr      r1, [r5, #4]
0042a196 2868       ldr      r0, [r5]
0042a198 a66d       ldr      r6, [r4, #0x58]
0042a19a c5f8941a   str.w    r1, [r5, #0xa94]
0042a19e b5f87a1a   ldrh.w   r1, [r5, #0xa7a]
0042a1a2 c5f8900a   str.w    r0, [r5, #0xa90]
0042a1a6 32f0d7fe   bl       #0x45cf58
0042a1aa a26d       ldr      r2, [r4, #0x58]
0042a1ac 2868       ldr      r0, [r5]
0042a1ae 6968       ldr      r1, [r5, #4]
0042a1b0 3244       add      r2, r6
0042a1b2 a064       str      r0, [r4, #0x48]
0042a1b4 e164       str      r1, [r4, #0x4c]
0042a1b6 31f0edf9   bl       #0x45b594
0042a1ba fff709ff   bl       #0x429fd0
0042a1be 00bb       cbnz     r0, #0x42a202
0042a1c0 b5f87a2a   ldrh.w   r2, [r5, #0xa7a]
0042a1c4 31f006fe   bl       #0x45bdd4
0042a1c8 0220       movs     r0, #2
0042a1ca 18e0       b        #0x42a1fe
0042a1cc b5f87a1a   ldrh.w   r1, [r5, #0xa7a]
0042a1d0 a66d       ldr      r6, [r4, #0x58]
0042a1d2 0120       movs     r0, #1
0042a1d4 f7f750fa   bl       #0x421678
0042a1d8 95f8770a   ldrb.w   r0, [r5, #0xa77]
0042a1dc b0b1       cbz      r0, #0x42a20c
0042a1de a26d       ldr      r2, [r4, #0x58]
0042a1e0 06eb4606   add.w    r6, r6, r6, lsl #1
0042a1e4 a06c       ldr      r0, [r4, #0x48]
0042a1e6 e16c       ldr      r1, [r4, #0x4c]
0042a1e8 3244       add      r2, r6
0042a1ea 31f0d3f9   bl       #0x45b594
0042a1ee fff7effe   bl       #0x429fd0
0042a1f2 30b9       cbnz     r0, #0x42a202
0042a1f4 b5f87c2a   ldrh.w   r2, [r5, #0xa7c]
0042a1f8 31f0ecfd   bl       #0x45bdd4
0042a1fc 0620       movs     r0, #6
0042a1fe 84f85d00   strb.w   r0, [r4, #0x5d]
0042a202 31f028bd   b.w      #0x45bc56
0042a206 2046       mov      r0, r4
0042a208 fff732fd   bl       #0x429c70
0042a20c 32f0c8fd   bl       #0x45cda0
0042a210 04b0       add      sp, #0x10
0042a212 5df804bb   ldr      fp, [sp], #4
0042a216 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042a21a fff771bd   b.w      #0x429d00
0042a21e 31f0f0f8   bl       #0x45b402
0042a222 40f2e621   movw     r1, #0x2e6
0042a226 0448       ldr      r0, [pc, #0x10] ; [0x42a238]=0x46f2b4 'p2pm_task.c'
0042a228 044a       ldr      r2, [pc, #0x10] ; [0x42a23c]=0x4700bb
0042a22a 0df0d5f9   bl       #0x4375d8
0042a22e 00bf       nop      
0042a230 083e       subs     r6, #8
0042a232 0410       asrs     r4, r0, #0x20
0042a234 243e       subs     r6, #0x24
0042a236 0410       asrs     r4, r0, #0x20
0042a238 b4f2       .byte    0xb4, 0xf2
0042a23a 4600       lsls     r6, r0, #1
0042a23c bb00       lsls     r3, r7, #2
0042a23e 4700       lsls     r7, r0, #1
0042a240 f0b5       push     {r4, r5, r6, r7, lr}
0042a242 03af       add      r7, sp, #0xc
0042a244 2de9fe0f   push.w   {r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp}
0042a248 0129       cmp      r1, #1
0042a24a 40f0a181   bne.w    #0x42a590
0042a24e 00f65815   addw     r5, r0, #0x958
0042a252 0446       mov      r4, r0
0042a254 8021       movs     r1, #0x80
0042a256 d5f8c023   ldr.w    r2, [r5, #0x3c0]
0042a25a d5f8c433   ldr.w    r3, [r5, #0x3c4]
0042a25e d548       ldr      r0, [pc, #0x354] ; [0x42a5b4]=0x10043e60
0042a260 d54e       ldr      r6, [pc, #0x354] ; [0x42a5b8]=0x434261
0042a262 b047       blx      r6
0042a264 d5f8c823   ldr.w    r2, [r5, #0x3c8]
0042a268 d5f8cc33   ldr.w    r3, [r5, #0x3cc]
0042a26c d348       ldr      r0, [pc, #0x34c] ; [0x42a5bc]=0x10043e87
0042a26e 8021       movs     r1, #0x80
0042a270 b047       blx      r6
0042a272 94f8340d   ldrb.w   r0, [r4, #0xd34]
0042a276 b4f84e1b   ldrh.w   r1, [r4, #0xb4e]
0042a27a d4f8f02c   ldr.w    r2, [r4, #0xcf0]
0042a27e 41ea0040   orr.w    r0, r1, r0, lsl #16
0042a282 d4f8381d   ldr.w    r1, [r4, #0xd38]
0042a286 40ea0163   orr.w    r3, r0, r1, lsl #24
0042a28a cd48       ldr      r0, [pc, #0x334] ; [0x42a5c0]=0x10043eae
0042a28c e821       movs     r1, #0xe8
0042a28e b047       blx      r6
0042a290 94f85d00   ldrb.w   r0, [r4, #0x5d]
0042a294 0628       cmp      r0, #6
0042a296 34d0       beq      #0x42a302
0042a298 0228       cmp      r0, #2
0042a29a 40f07b81   bne.w    #0x42a594
0042a29e c448       ldr      r0, [pc, #0x310] ; [0x42a5b0]=0x40002018
0042a2a0 41f23a63   movw     r3, #0x163a
0042a2a4 04f63838   addw     r8, r4, #0xb38
0042a2a8 0168       ldr      r1, [r0]
0042a2aa 4068       ldr      r0, [r0, #4]
0042a2ac d4f8402d   ldr.w    r2, [r4, #0xd40]
0042a2b0 e250       str      r2, [r4, r3]
0042a2b2 d4f85c2d   ldr.w    r2, [r4, #0xd5c]
0042a2b6 c5f8101d   str.w    r1, [r5, #0xd10]
0042a2ba d5f8c413   ldr.w    r1, [r5, #0x3c4]
0042a2be c5f8140d   str.w    r0, [r5, #0xd14]
0042a2c2 d5f8c003   ldr.w    r0, [r5, #0x3c0]
0042a2c6 c5f8f02c   str.w    r2, [r5, #0xcf0]
0042a2ca e218       adds     r2, r4, r3
0042a2cc b4f8443d   ldrh.w   r3, [r4, #0xd44]
0042a2d0 c5f86c1c   str.w    r1, [r5, #0xc6c]
0042a2d4 d4f8341d   ldr.w    r1, [r4, #0xd34]
0042a2d8 c5f8680c   str.w    r0, [r5, #0xc68]
0042a2dc 9380       strh     r3, [r2, #4]
0042a2de a26c       ldr      r2, [r4, #0x48]
0042a2e0 85f8e01c   strb.w   r1, [r5, #0xce0]
0042a2e4 801a       subs     r0, r0, r2
0042a2e6 0029       cmp      r1, #0
0042a2e8 c5f8dc0c   str.w    r0, [r5, #0xcdc]
0042a2ec 46d0       beq      #0x42a37c
0042a2ee 206c       ldr      r0, [r4, #0x40]
0042a2f0 b5f84a1c   ldrh.w   r1, [r5, #0xc4a]
0042a2f4 4346       mov      r3, r8
0042a2f6 027e       ldrb     r2, [r0, #0x18]
0042a2f8 d5f8740b   ldr.w    r0, [r5, #0xb74]
0042a2fc 31f0c5fc   bl       #0x45bc8a
0042a300 11e0       b        #0x42a326
0042a302 d4f85c2d   ldr.w    r2, [r4, #0xd5c]
0042a306 d4f8401d   ldr.w    r1, [r4, #0xd40]
0042a30a d4f8340d   ldr.w    r0, [r4, #0xd34]
0042a30e 41f24e63   movw     r3, #0x164e
0042a312 e150       str      r1, [r4, r3]
0042a314 c5f8042d   str.w    r2, [r5, #0xd04]
0042a318 e118       adds     r1, r4, r3
0042a31a b4f8442d   ldrh.w   r2, [r4, #0xd44]
0042a31e 85f8f40c   strb.w   r0, [r5, #0xcf4]
0042a322 8a80       strh     r2, [r1, #4]
0042a324 48b1       cbz      r0, #0x42a33a
0042a326 2046       mov      r0, r4
0042a328 0e21       movs     r1, #0xe
0042a32a 0022       movs     r2, #0
0042a32c 07b0       add      sp, #0x1c
0042a32e bde8000f   pop.w    {r8, sb, sl, fp}
0042a332 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042a336 fff7e3bc   b.w      #0x429d00
0042a33a d4f848ab   ldr.w    sl, [r4, #0xb48]
0042a33e 8021       movs     r1, #0x80
0042a340 5646       mov      r6, sl
0042a342 daf80f30   ldr.w    r3, [sl, #0xf]
0042a346 56f80b2f   ldr      r2, [r6, #0xb]!
0042a34a 9e48       ldr      r0, [pc, #0x278] ; [0x42a5c4]=0x10043d92
0042a34c 09f088ff   bl       #0x434260
0042a350 94f86000   ldrb.w   r0, [r4, #0x60]
0042a354 94f84e9b   ldrb.w   sb, [r4, #0xb4e]
0042a358 3321       movs     r1, #0x33
0042a35a 05f65848   addw     r8, r5, #0xc58
0042a35e 0091       str      r1, [sp]
0042a360 4346       mov      r3, r8
0042a362 0130       adds     r0, #1
0042a364 4946       mov      r1, sb
0042a366 c2b2       uxtb     r2, r0
0042a368 5046       mov      r0, sl
0042a36a 01f0dbfa   bl       #0x42b924
0042a36e 0028       cmp      r0, #0
0042a370 6ed1       bne      #0x42a450
0042a372 9af81500   ldrb.w   r0, [sl, #0x15]
0042a376 00b3       cbz      r0, #0x42a3ba
0042a378 f820       movs     r0, #0xf8
0042a37a 69e0       b        #0x42a450
0042a37c 95f8480c   ldrb.w   r0, [r5, #0xc48]
0042a380 0028       cmp      r0, #0
0042a382 40f0f480   bne.w    #0x42a56e
0042a386 94f86000   ldrb.w   r0, [r4, #0x60]
0042a38a 94f84eab   ldrb.w   sl, [r4, #0xb4e]
0042a38e d4f8489b   ldr.w    sb, [r4, #0xb48]
0042a392 3121       movs     r1, #0x31
0042a394 0091       str      r1, [sp]
0042a396 41f2b051   movw     r1, #0x15b0
0042a39a 0130       adds     r0, #1
0042a39c 6318       adds     r3, r4, r1
0042a39e 5146       mov      r1, sl
0042a3a0 c2b2       uxtb     r2, r0
0042a3a2 4846       mov      r0, sb
0042a3a4 01f0befa   bl       #0x42b924
0042a3a8 0646       mov      r6, r0
0042a3aa 0028       cmp      r0, #0
0042a3ac 40f0cb80   bne.w    #0x42a546
0042a3b0 99f81500   ldrb.w   r0, [sb, #0x15]
0042a3b4 40b3       cbz      r0, #0x42a408
0042a3b6 f826       movs     r6, #0xf8
0042a3b8 c5e0       b        #0x42a546
0042a3ba b9f1230f   cmp.w    sb, #0x23
0042a3be 01d2       bhs      #0x42a3c4
0042a3c0 f620       movs     r0, #0xf6
0042a3c2 45e0       b        #0x42a450
0042a3c4 3068       ldr      r0, [r6]
0042a3c6 7168       ldr      r1, [r6, #4]
0042a3c8 31f0ecf9   bl       #0x45b7a4
0042a3cc 21d3       blo      #0x42a412
0042a3ce d5f8502c   ldr.w    r2, [r5, #0xc50]
0042a3d2 d5f8543c   ldr.w    r3, [r5, #0xc54]
0042a3d6 5940       eors     r1, r3
0042a3d8 5040       eors     r0, r2
0042a3da 0843       orrs     r0, r1
0042a3dc 37d1       bne      #0x42a44e
0042a3de daf81700   ldr.w    r0, [sl, #0x17]
0042a3e2 4ff4af51   mov.w    r1, #0x15e0
0042a3e6 6050       str      r0, [r4, r1]
0042a3e8 04f5af50   add.w    r0, r4, #0x15e0
0042a3ec 9af81b10   ldrb.w   r1, [sl, #0x1b]
0042a3f0 0171       strb     r1, [r0, #4]
0042a3f2 41f2e851   movw     r1, #0x15e8
0042a3f6 daf81c00   ldr.w    r0, [sl, #0x1c]
0042a3fa 6050       str      r0, [r4, r1]
0042a3fc 6018       adds     r0, r4, r1
0042a3fe 9af82010   ldrb.w   r1, [sl, #0x20]
0042a402 0171       strb     r1, [r0, #4]
0042a404 0020       movs     r0, #0
0042a406 23e0       b        #0x42a450
0042a408 baf1190f   cmp.w    sl, #0x19
0042a40c 03d2       bhs      #0x42a416
0042a40e f626       movs     r6, #0xf6
0042a410 99e0       b        #0x42a546
0042a412 e120       movs     r0, #0xe1
0042a414 1ce0       b        #0x42a450
0042a416 d9f80be0   ldr.w    lr, [sb, #0xb]
0042a41a d9f80f10   ldr.w    r1, [sb, #0xf]
0042a41e 6ff00200   mvn      r0, #2
0042a422 4ff0ff3c   mov.w    ip, #-1
0042a426 bef10102   subs.w   r2, lr, #1
0042a42a 61f10003   sbc      r3, r1, #0
0042a42e 801a       subs     r0, r0, r2
0042a430 7ceb0300   sbcs.w   r0, ip, r3
0042a434 c0f08680   blo.w    #0x42a544
0042a438 d5f8500c   ldr.w    r0, [r5, #0xc50]
0042a43c d5f8542c   ldr.w    r2, [r5, #0xc54]
0042a440 5140       eors     r1, r2
0042a442 80ea0e00   eor.w    r0, r0, lr
0042a446 0843       orrs     r0, r1
0042a448 18bf       it       ne
0042a44a f526       movne    r6, #0xf5
0042a44c 7be0       b        #0x42a546
0042a44e f520       movs     r0, #0xf5
0042a450 85f8f40c   strb.w   r0, [r5, #0xcf4]
0042a454 c4f8340d   str.w    r0, [r4, #0xd34]
0042a458 28b1       cbz      r0, #0x42a466
0042a45a 0e21       movs     r1, #0xe
0042a45c f528       cmp      r0, #0xf5
0042a45e 08bf       it       eq
0042a460 1621       moveq    r1, #0x16
0042a462 2046       mov      r0, r4
0042a464 61e7       b        #0x42a32a
0042a466 95f8480c   ldrb.w   r0, [r5, #0xc48]
0042a46a 0128       cmp      r0, #1
0042a46c 59d1       bne      #0x42a522
0042a46e a26d       ldr      r2, [r4, #0x58]
0042a470 a06c       ldr      r0, [r4, #0x48]
0042a472 e16c       ldr      r1, [r4, #0x4c]
0042a474 02eb8202   add.w    r2, r2, r2, lsl #2
0042a478 31f08cf8   bl       #0x45b594
0042a47c fff7a8fd   bl       #0x429fd0
0042a480 0028       cmp      r0, #0
0042a482 40f08580   bne.w    #0x42a590
0042a486 d4f86869   ldr.w    r6, [r4, #0x968]
0042a48a d4f848b0   ldr.w    fp, [r4, #0x48]
0042a48e d4f84ca0   ldr.w    sl, [r4, #0x4c]
0042a492 d4f85890   ldr.w    sb, [r4, #0x58]
0042a496 0021       movs     r1, #0
0042a498 2322       movs     r2, #0x23
0042a49a 31f043ff   bl       #0x45c324
0042a49e 4149       ldr      r1, [pc, #0x104] ; [0x42a5a4]=0xffffa5a5
0042a4a0 31f0adfd   bl       #0x45bffe
0042a4a4 4049       ldr      r1, [pc, #0x100] ; [0x42a5a8]=0x3300a5a5
0042a4a6 33f0b4f8   bl       #0x45d612
0042a4aa 31f053fc   bl       #0x45bd54
0042a4ae c6f80b00   str.w    r0, [r6, #0xb]
0042a4b2 c6f80f10   str.w    r1, [r6, #0xf]
0042a4b6 41f2d050   movw     r0, #0x15d0
0042a4ba 2158       ldr      r1, [r4, r0]
0042a4bc 2044       add      r0, r4
0042a4be c6f81710   str.w    r1, [r6, #0x17]
0042a4c2 0079       ldrb     r0, [r0, #4]
0042a4c4 f076       strb     r0, [r6, #0x1b]
0042a4c6 41f2d850   movw     r0, #0x15d8
0042a4ca 2118       adds     r1, r4, r0
0042a4cc 0979       ldrb     r1, [r1, #4]
0042a4ce 86f82010   strb.w   r1, [r6, #0x20]
0042a4d2 0021       movs     r1, #0
0042a4d4 2058       ldr      r0, [r4, r0]
0042a4d6 f061       str      r0, [r6, #0x1c]
0042a4d8 2120       movs     r0, #0x21
0042a4da c4f86419   str.w    r1, [r4, #0x964]
0042a4de a4f86e09   strh.w   r0, [r4, #0x96e]
0042a4e2 1beb8900   adds.w   r0, fp, sb, lsl #2
0042a4e6 2860       str      r0, [r5]
0042a4e8 4af10000   adc      r0, sl, #0
0042a4ec 80b2       uxth     r0, r0
0042a4ee 6860       str      r0, [r5, #4]
0042a4f0 95f8450c   ldrb.w   r0, [r5, #0xc45]
0042a4f4 d8b1       cbz      r0, #0x42a52e
0042a4f6 0120       movs     r0, #1
0042a4f8 a4f8181b   strh.w   r1, [r4, #0xb18]
0042a4fc 0022       movs     r2, #0
0042a4fe 84f8110b   strb.w   r0, [r4, #0xb11]
0042a502 3148       ldr      r0, [pc, #0xc4] ; [0x42a5c8]=0x10005adc
0042a504 31f036fa   bl       #0x45b974
0042a508 a7f12201   sub.w    r1, r7, #0x22
0042a50c c06b       ldr      r0, [r0, #0x3c]
0042a50e c4f8140b   str.w    r0, [r4, #0xb14]
0042a512 2648       ldr      r0, [pc, #0x98] ; [0x42a5ac]=0x20005959
0042a514 33f060f8   bl       #0x45d5d8
0042a518 d4f86009   ldr.w    r0, [r4, #0x960]
0042a51c eff7d6f8   bl       #0x4196cc
0042a520 07e0       b        #0x42a532
0042a522 2046       mov      r0, r4
0042a524 fff7a4fb   bl       #0x429c70
0042a528 2046       mov      r0, r4
0042a52a 0021       movs     r1, #0
0042a52c fde6       b        #0x42a32a
0042a52e 84f8111b   strb.w   r1, [r4, #0xb11]
0042a532 b5f84c0c   ldrh.w   r0, [r5, #0xc4c]
0042a536 95f8291d   ldrb.w   r1, [r5, #0xd29]
0042a53a 2a46       mov      r2, r5
0042a53c eff742fd   bl       #0x419fc4
0042a540 0520       movs     r0, #5
0042a542 23e0       b        #0x42a58c
0042a544 e126       movs     r6, #0xe1
0042a546 85f8e06c   strb.w   r6, [r5, #0xce0]
0042a54a c4f8346d   str.w    r6, [r4, #0xd34]
0042a54e 76b1       cbz      r6, #0x42a56e
0042a550 206c       ldr      r0, [r4, #0x40]
0042a552 b5f84a1c   ldrh.w   r1, [r5, #0xc4a]
0042a556 4346       mov      r3, r8
0042a558 027e       ldrb     r2, [r0, #0x18]
0042a55a d5f8740b   ldr.w    r0, [r5, #0xb74]
0042a55e 31f094fb   bl       #0x45bc8a
0042a562 0e21       movs     r1, #0xe
0042a564 2046       mov      r0, r4
0042a566 f52e       cmp      r6, #0xf5
0042a568 08bf       it       eq
0042a56a 1621       moveq    r1, #0x16
0042a56c dde6       b        #0x42a32a
0042a56e 0120       movs     r0, #1
0042a570 84f85c00   strb.w   r0, [r4, #0x5c]
0042a574 2046       mov      r0, r4
0042a576 fff72bfd   bl       #0x429fd0
0042a57a 48b9       cbnz     r0, #0x42a590
0042a57c 206c       ldr      r0, [r4, #0x40]
0042a57e 0f22       movs     r2, #0xf
0042a580 00f11201   add.w    r1, r0, #0x12
0042a584 2046       mov      r0, r4
0042a586 f9f70bfa   bl       #0x4239a0
0042a58a 0320       movs     r0, #3
0042a58c 84f85d00   strb.w   r0, [r4, #0x5d]
0042a590 31f044ba   b.w      #0x45ba1c
0042a594 30f035ff   bl       #0x45b402
0042a598 40f25131   movw     r1, #0x351
0042a59c 0b48       ldr      r0, [pc, #0x2c] ; [0x42a5cc]=0x46f2b4 'p2pm_task.c'
0042a59e 0c4a       ldr      r2, [pc, #0x30] ; [0x42a5d0]=0x4700bb
0042a5a0 0df01af8   bl       #0x4375d8
0042a5a4 a5a5       adr      r5, #0x294
0042a5a6 ffff       .byte    0xff, 0xff
0042a5a8 a5a5       adr      r5, #0x294
0042a5aa 0033       adds     r3, #0
0042a5ac 5959       ldr      r1, [r3, r5]
0042a5ae 0020       movs     r0, #0
0042a5b0 1820       movs     r0, #0x18
0042a5b2 0040       ands     r0, r0
0042a5b4 603e       subs     r6, #0x60
0042a5b6 0410       asrs     r4, r0, #0x20
0042a5b8 6142       rsbs     r1, r4, #0
0042a5ba 4300       lsls     r3, r0, #1
0042a5bc 873e       subs     r6, #0x87
0042a5be 0410       asrs     r4, r0, #0x20
0042a5c0 ae3e       subs     r6, #0xae
0042a5c2 0410       asrs     r4, r0, #0x20
0042a5c4 923d       subs     r5, #0x92
0042a5c6 0410       asrs     r4, r0, #0x20
0042a5c8 dc5a       ldrh     r4, [r3, r3]
0042a5ca 0010       asrs     r0, r0, #0x20
0042a5cc b4f2       .byte    0xb4, 0xf2
0042a5ce 4600       lsls     r6, r0, #1
0042a5d0 bb00       lsls     r3, r7, #2
0042a5d2 4700       lsls     r7, r0, #1
0042a5d4 f0b5       push     {r4, r5, r6, r7, lr}
0042a5d6 03af       add      r7, sp, #0xc
0042a5d8 2de9fe0f   push.w   {r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp}
0042a5dc 0028       cmp      r0, #0
0042a5de 00f07a81   beq.w    #0x42a8d6
0042a5e2 0029       cmp      r1, #0
0042a5e4 40f07d81   bne.w    #0x42a8e2
0042a5e8 1546       mov      r5, r2
0042a5ea 002a       cmp      r2, #0
0042a5ec 00f07f81   beq.w    #0x42a8ee
0042a5f0 8346       mov      fp, r0
0042a5f2 90f85d00   ldrb.w   r0, [r0, #0x5d]
0042a5f6 0328       cmp      r0, #3
0042a5f8 40f07f81   bne.w    #0x42a8fa
0042a5fc aa46       mov      sl, r5
0042a5fe d5f81330   ldr.w    r3, [r5, #0x13]
0042a602 8021       movs     r1, #0x80
0042a604 0bf65818   addw     r8, fp, #0x958
0042a608 5af80f2f   ldr      r2, [sl, #0xf]!
0042a60c c148       ldr      r0, [pc, #0x304] ; [0x42a914]=0x10043ef3
0042a60e c24c       ldr      r4, [pc, #0x308] ; [0x42a918]=0x434261
0042a610 a047       blx      r4
0042a612 31f088fa   bl       #0x45bb26
0042a616 c148       ldr      r0, [pc, #0x304] ; [0x42a91c]=0x10043f1b
0042a618 a821       movs     r1, #0xa8
0042a61a a047       blx      r4
0042a61c 32f07cfb   bl       #0x45cd18
0042a620 bf48       ldr      r0, [pc, #0x2fc] ; [0x42a920]=0x10043f5a
0042a622 aa21       movs     r1, #0xaa
0042a624 0694       str      r4, [sp, #0x18]
0042a626 a047       blx      r4
0042a628 b8f84a9c   ldrh.w   sb, [r8, #0xc4a]
0042a62c 4846       mov      r0, sb
0042a62e edf739f9   bl       #0x4178a4
0042a632 20b1       cbz      r0, #0x42a63e
0042a634 a87b       ldrb     r0, [r5, #0xe]
0042a636 10b9       cbnz     r0, #0x42a63e
0042a638 f120       movs     r0, #0xf1
0042a63a cbf8340d   str.w    r0, [fp, #0xd34]
0042a63e 41f2f850   movw     r0, #0x15f8
0042a642 5146       mov      r1, sl
0042a644 2522       movs     r2, #0x25
0042a646 32f06eff   bl       #0x45d526
0042a64a 41f21d60   movw     r0, #0x161d
0042a64e 3146       mov      r1, r6
0042a650 1722       movs     r2, #0x17
0042a652 32f068ff   bl       #0x45d526
0042a656 dbf8400d   ldr.w    r0, [fp, #0xd40]
0042a65a 41f23a61   movw     r1, #0x163a
0042a65e 4ff4b252   mov.w    r2, #0x1640
0042a662 0bf63833   addw     r3, fp, #0xb38
0042a666 4bf80100   str.w    r0, [fp, r1]
0042a66a dbf8560d   ldr.w    r0, [fp, #0xd56]
0042a66e 4bf80200   str.w    r0, [fp, r2]
0042a672 0beb0100   add.w    r0, fp, r1
0042a676 bbf8441d   ldrh.w   r1, [fp, #0xd44]
0042a67a 8180       strh     r1, [r0, #4]
0042a67c bbf85a1d   ldrh.w   r1, [fp, #0xd5a]
0042a680 0bf5b250   add.w    r0, fp, #0x1640
0042a684 8180       strh     r1, [r0, #4]
0042a686 4946       mov      r1, sb
0042a688 b5f85300   ldrh.w   r0, [r5, #0x53]
0042a68c a8f8080d   strh.w   r0, [r8, #0xd08]
0042a690 dbf84000   ldr.w    r0, [fp, #0x40]
0042a694 027e       ldrb     r2, [r0, #0x18]
0042a696 d8f8740b   ldr.w    r0, [r8, #0xb74]
0042a69a 31f0f6fa   bl       #0x45bc8a
0042a69e dbf8340d   ldr.w    r0, [fp, #0xd34]
0042a6a2 88f8e00c   strb.w   r0, [r8, #0xce0]
0042a6a6 80b1       cbz      r0, #0x42a6ca
0042a6a8 b8f84a0c   ldrh.w   r0, [r8, #0xc4a]
0042a6ac edf730f9   bl       #0x417910
0042a6b0 0028       cmp      r0, #0
0042a6b2 14bf       ite      ne
0042a6b4 1621       movne    r1, #0x16
0042a6b6 0e21       moveq    r1, #0xe
0042a6b8 5846       mov      r0, fp
0042a6ba 0022       movs     r2, #0
0042a6bc 07b0       add      sp, #0x1c
0042a6be bde8000f   pop.w    {r8, sb, sl, fp}
0042a6c2 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042a6c6 fff71bbb   b.w      #0x429d00
0042a6ca dbf84800   ldr.w    r0, [fp, #0x48]
0042a6ce dbf85820   ldr.w    r2, [fp, #0x58]
0042a6d2 dbf84c10   ldr.w    r1, [fp, #0x4c]
0042a6d6 10eb4204   adds.w   r4, r0, r2, lsl #1
0042a6da 41f10006   adc      r6, r1, #0
0042a6de a018       adds     r0, r4, r2
0042a6e0 cbf85000   str.w    r0, [fp, #0x50]
0042a6e4 46f10000   adc      r0, r6, #0
0042a6e8 80b2       uxth     r0, r0
0042a6ea cbf85400   str.w    r0, [fp, #0x54]
0042a6ee 5846       mov      r0, fp
0042a6f0 fff76efc   bl       #0x429fd0
0042a6f4 08b1       cbz      r0, #0x42a6fa
0042a6f6 31f091b9   b.w      #0x45ba1c
0042a6fa 8349       ldr      r1, [pc, #0x20c] ; [0x42a908]=0x40002018
0042a6fc 4ff00a09   mov.w    sb, #0xa
0042a700 31f0ceff   bl       #0x45c6a0
0042a704 0868       ldr      r0, [r1]
0042a706 4968       ldr      r1, [r1, #4]
0042a708 d8f8105d   ldr.w    r5, [r8, #0xd10]
0042a70c c8f8704c   str.w    r4, [r8, #0xc70]
0042a710 c8f81c1d   str.w    r1, [r8, #0xd1c]
0042a714 b1b2       uxth     r1, r6
0042a716 c8f8180d   str.w    r0, [r8, #0xd18]
0042a71a 401b       subs     r0, r0, r5
0042a71c d8f8686c   ldr.w    r6, [r8, #0xc68]
0042a720 0591       str      r1, [sp, #0x14]
0042a722 c8f8741c   str.w    r1, [r8, #0xc74]
0042a726 a0fb0901   umull    r0, r1, r0, sb
0042a72a ddf77bf8   bl       #0x407824
0042a72e c8f8240d   str.w    r0, [r8, #0xd24]
0042a732 a81b       subs     r0, r5, r6
0042a734 31f0b4ff   bl       #0x45c6a0
0042a738 a0fb0901   umull    r0, r1, r0, sb
0042a73c ddf772f8   bl       #0x407824
0042a740 c8f8200d   str.w    r0, [r8, #0xd20]
0042a744 b8f84a0c   ldrh.w   r0, [r8, #0xc4a]
0042a748 dbf86869   ldr.w    r6, [fp, #0x968]
0042a74c f1f714f9   bl       #0x41b978
0042a750 4ff47a71   mov.w    r1, #0x3e8
0042a754 d8f8ae3c   ldr.w    r3, [r8, #0xcae]
0042a758 d8f8b22c   ldr.w    r2, [r8, #0xcb2]
0042a75c d8f8605c   ldr.w    r5, [r8, #0xc60]
0042a760 d8f8649c   ldr.w    sb, [r8, #0xc64]
0042a764 d8f86cac   ldr.w    sl, [r8, #0xc6c]
0042a768 a0fb010c   umull    r0, ip, r0, r1
0042a76c 191a       subs     r1, r3, r0
0042a76e 0291       str      r1, [sp, #8]
0042a770 62eb0c01   sbc.w    r1, r2, ip
0042a774 0391       str      r1, [sp, #0xc]
0042a776 0494       str      r4, [sp, #0x10]
0042a778 d8f8684c   ldr.w    r4, [r8, #0xc68]
0042a77c 46f29051   movw     r1, #0x6590
0042a780 ddf808e0   ldr.w    lr, [sp, #8]
0042a784 651b       subs     r5, r4, r5
0042a786 a5fb0151   umull    r5, r1, r5, r1
0042a78a 6aeb0909   sbc.w    sb, sl, sb
0042a78e 15eb0e05   adds.w   r5, r5, lr
0042a792 46f2905e   movw     lr, #0x6590
0042a796 c8f8785c   str.w    r5, [r8, #0xc78]
0042a79a 09fb0e11   mla      r1, sb, lr, r1
0042a79e 039d       ldr      r5, [sp, #0xc]
0042a7a0 45eb0109   adc.w    sb, r5, r1
0042a7a4 d8f8705c   ldr.w    r5, [r8, #0xc70]
0042a7a8 c01a       subs     r0, r0, r3
0042a7aa d8f8743c   ldr.w    r3, [r8, #0xc74]
0042a7ae 6ceb0202   sbc.w    r2, ip, r2
0042a7b2 c8f87c9c   str.w    sb, [r8, #0xc7c]
0042a7b6 2d1b       subs     r5, r5, r4
0042a7b8 46f29054   movw     r4, #0x6590
0042a7bc a5fb0e51   umull    r5, r1, r5, lr
0042a7c0 63eb0a03   sbc.w    r3, r3, sl
0042a7c4 4019       adds     r0, r0, r5
0042a7c6 c8f8800c   str.w    r0, [r8, #0xc80]
0042a7ca 03fb0410   mla      r0, r3, r4, r1
0042a7ce 5041       adcs     r0, r2
0042a7d0 0021       movs     r1, #0
0042a7d2 2322       movs     r2, #0x23
0042a7d4 c8f8840c   str.w    r0, [r8, #0xc84]
0042a7d8 31f0a4fd   bl       #0x45c324
0042a7dc 4b49       ldr      r1, [pc, #0x12c] ; [0x42a90c]=0xffffa5a5
0042a7de 9bf86000   ldrb.w   r0, [fp, #0x60]
0042a7e2 08f67845   addw     r5, r8, #0xc78
0042a7e6 08f6185a   addw     sl, r8, #0xd18
0042a7ea 01f52771   add.w    r1, r1, #0x29c
0042a7ee 0130       adds     r0, #1
0042a7f0 3180       strh     r1, [r6]
0042a7f2 b070       strb     r0, [r6, #2]
0042a7f4 d8f8501c   ldr.w    r1, [r8, #0xc50]
0042a7f8 d8f8542c   ldr.w    r2, [r8, #0xc54]
0042a7fc c6f80310   str.w    r1, [r6, #3]
0042a800 4349       ldr      r1, [pc, #0x10c] ; [0x42a910]=0x3200a5a5
0042a802 32f006ff   bl       #0x45d612
0042a806 d8f8580c   ldr.w    r0, [r8, #0xc58]
0042a80a d8f85c1c   ldr.w    r1, [r8, #0xc5c]
0042a80e c6f80b00   str.w    r0, [r6, #0xb]
0042a812 c6f80f10   str.w    r1, [r6, #0xf]
0042a816 d8f8780c   ldr.w    r0, [r8, #0xc78]
0042a81a c6f81700   str.w    r0, [r6, #0x17]
0042a81e 98f87c0c   ldrb.w   r0, [r8, #0xc7c]
0042a822 f076       strb     r0, [r6, #0x1b]
0042a824 98f8840c   ldrb.w   r0, [r8, #0xc84]
0042a828 86f82000   strb.w   r0, [r6, #0x20]
0042a82c d8f8800c   ldr.w    r0, [r8, #0xc80]
0042a830 f061       str      r0, [r6, #0x1c]
0042a832 2120       movs     r0, #0x21
0042a834 08f54866   add.w    r6, r8, #0xc80
0042a838 abf86e09   strh.w   r0, [fp, #0x96e]
0042a83c 0498       ldr      r0, [sp, #0x10]
0042a83e c8f80000   str.w    r0, [r8]
0042a842 0598       ldr      r0, [sp, #0x14]
0042a844 c8f80400   str.w    r0, [r8, #4]
0042a848 98f8440c   ldrb.w   r0, [r8, #0xc44]
0042a84c 0128       cmp      r0, #1
0042a84e 03d1       bne      #0x42a858
0042a850 0020       movs     r0, #0
0042a852 cbf86409   str.w    r0, [fp, #0x964]
0042a856 09e0       b        #0x42a86c
0042a858 d8f8740b   ldr.w    r0, [r8, #0xb74]
0042a85c 0bf5ac71   add.w    r1, fp, #0x158
0042a860 4ff40062   mov.w    r2, #0x800
0042a864 cbf86409   str.w    r0, [fp, #0x964]
0042a868 dcf772f8   bl       #0x406950
0042a86c 0020       movs     r0, #0
0042a86e 98f8291d   ldrb.w   r1, [r8, #0xd29]
0042a872 4246       mov      r2, r8
0042a874 8bf8110b   strb.w   r0, [fp, #0xb11]
0042a878 b8f84a0c   ldrh.w   r0, [r8, #0xc4a]
0042a87c eff7a2fb   bl       #0x419fc4
0042a880 2a68       ldr      r2, [r5]
0042a882 6b68       ldr      r3, [r5, #4]
0042a884 2748       ldr      r0, [pc, #0x9c] ; [0x42a924]=0x10043d39
0042a886 069c       ldr      r4, [sp, #0x18]
0042a888 8021       movs     r1, #0x80
0042a88a a047       blx      r4
0042a88c 3268       ldr      r2, [r6]
0042a88e 7368       ldr      r3, [r6, #4]
0042a890 2548       ldr      r0, [pc, #0x94] ; [0x42a928]=0x10043d4b
0042a892 8021       movs     r1, #0x80
0042a894 a047       blx      r4
0042a896 0420       movs     r0, #4
0042a898 d8f8202d   ldr.w    r2, [r8, #0xd20]
0042a89c d8f8243d   ldr.w    r3, [r8, #0xd24]
0042a8a0 8821       movs     r1, #0x88
0042a8a2 8bf85d00   strb.w   r0, [fp, #0x5d]
0042a8a6 2148       ldr      r0, [pc, #0x84] ; [0x42a92c]=0x10043f92
0042a8a8 a047       blx      r4
0042a8aa 1749       ldr      r1, [pc, #0x5c] ; [0x42a908]=0x40002018
0042a8ac 31f0f8fe   bl       #0x45c6a0
0042a8b0 0868       ldr      r0, [r1]
0042a8b2 4968       ldr      r1, [r1, #4]
0042a8b4 daf80010   ldr.w    r1, [sl]
0042a8b8 401a       subs     r0, r0, r1
0042a8ba 0a21       movs     r1, #0xa
0042a8bc 31f022fc   bl       #0x45c104
0042a8c0 0246       mov      r2, r0
0042a8c2 1b48       ldr      r0, [pc, #0x6c] ; [0x42a930]=0x10043fbd
0042a8c4 0b46       mov      r3, r1
0042a8c6 8021       movs     r1, #0x80
0042a8c8 a446       mov      ip, r4
0042a8ca 07b0       add      sp, #0x1c
0042a8cc bde8000f   pop.w    {r8, sb, sl, fp}
0042a8d0 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042a8d4 6047       bx       ip
0042a8d6 1748       ldr      r0, [pc, #0x5c] ; [0x42a934]=0x46f2b4 'p2pm_task.c'
0042a8d8 174a       ldr      r2, [pc, #0x5c] ; [0x42a938]=0x46f4ea 'task'
0042a8da 40f25a31   movw     r1, #0x35a
0042a8de 0cf071fe   bl       #0x4375c4
0042a8e2 1448       ldr      r0, [pc, #0x50] ; [0x42a934]=0x46f2b4 'p2pm_task.c'
0042a8e4 154a       ldr      r2, [pc, #0x54] ; [0x42a93c]=0x46f4ef 'evt == MS_OS_EVT_FG_DSP_RESULT'
0042a8e6 40f25b31   movw     r1, #0x35b
0042a8ea 0cf06bfe   bl       #0x4375c4
0042a8ee 1148       ldr      r0, [pc, #0x44] ; [0x42a934]=0x46f2b4 'p2pm_task.c'
0042a8f0 134a       ldr      r2, [pc, #0x4c] ; [0x42a940]=0x46f50e 'evt_param'
0042a8f2 4ff45771   mov.w    r1, #0x35c
0042a8f6 0cf065fe   bl       #0x4375c4
0042a8fa 0e48       ldr      r0, [pc, #0x38] ; [0x42a934]=0x46f2b4 'p2pm_task.c'
0042a8fc 114a       ldr      r2, [pc, #0x44] ; [0x42a944]=0x46f2db 'task->state == P2PM_S_W4_DSP_RESULT'
0042a8fe 40f25d31   movw     r1, #0x35d
0042a902 0cf05ffe   bl       #0x4375c4
0042a906 00bf       nop      
0042a908 1820       movs     r0, #0x18
0042a90a 0040       ands     r0, r0
0042a90c a5a5       adr      r5, #0x294
0042a90e ffff       .byte    0xff, 0xff
0042a910 a5a5       adr      r5, #0x294
0042a912 0032       adds     r2, #0
0042a914 f33e       subs     r6, #0xf3
0042a916 0410       asrs     r4, r0, #0x20
0042a918 6142       rsbs     r1, r4, #0
0042a91a 4300       lsls     r3, r0, #1
0042a91c 1b3f       subs     r7, #0x1b
0042a91e 0410       asrs     r4, r0, #0x20
0042a920 5a3f       subs     r7, #0x5a
0042a922 0410       asrs     r4, r0, #0x20
0042a924 393d       subs     r5, #0x39
0042a926 0410       asrs     r4, r0, #0x20
0042a928 4b3d       subs     r5, #0x4b
0042a92a 0410       asrs     r4, r0, #0x20
0042a92c 923f       subs     r7, #0x92
0042a92e 0410       asrs     r4, r0, #0x20
0042a930 bd3f       subs     r7, #0xbd
0042a932 0410       asrs     r4, r0, #0x20
0042a934 b4f2       .byte    0xb4, 0xf2
0042a936 4600       lsls     r6, r0, #1
0042a938 eaf4       .byte    0xea, 0xf4
0042a93a 4600       lsls     r6, r0, #1
0042a93c eff4       .byte    0xef, 0xf4
0042a93e 4600       lsls     r6, r0, #1
0042a940 0ef54600   add.w    r0, lr, #0xc60000
0042a944 dbf2       .byte    0xdb, 0xf2
0042a946 4600       lsls     r6, r0, #1
0042a948 f0b5       push     {r4, r5, r6, r7, lr}
0042a94a 03af       add      r7, sp, #0xc
0042a94c 2de9000b   push.w   {r8, sb, fp}
0042a950 00f53464   add.w    r4, r0, #0xb40
0042a954 0646       mov      r6, r0
0042a956 1d46       mov      r5, r3
0042a958 9146       mov      sb, r2
0042a95a d4f8580b   ldr.w    r0, [r4, #0xb58]
0042a95e 06f17008   add.w    r8, r6, #0x70
0042a962 8179       ldrb     r1, [r0, #6]
0042a964 31f099f9   bl       #0x45bc9a
0042a968 f06d       ldr      r0, [r6, #0x5c]
0042a96a c6f8445b   str.w    r5, [r6, #0xb44]
0042a96e c6f8409b   str.w    sb, [r6, #0xb40]
0042a972 c6f8f80c   str.w    r0, [r6, #0xcf8]
0042a976 d4f8580b   ldr.w    r0, [r4, #0xb58]
0042a97a c11c       adds     r1, r0, #3
0042a97c 8278       ldrb     r2, [r0, #2]
0042a97e 407a       ldrb     r0, [r0, #9]
0042a980 c6f8041d   str.w    r1, [r6, #0xd04]
0042a984 b6f88210   ldrh.w   r1, [r6, #0x82]
0042a988 42ea0141   orr.w    r1, r2, r1, lsl #16
0042a98c 41ea0020   orr.w    r0, r1, r0, lsl #8
0042a990 c6f88000   str.w    r0, [r6, #0x80]
0042a994 3d89       ldrh     r5, [r7, #8]
0042a996 2846       mov      r0, r5
0042a998 ecf784ff   bl       #0x4178a4
0042a99c 50b1       cbz      r0, #0x42a9b4
0042a99e d4f89409   ldr.w    r0, [r4, #0x994]
0042a9a2 06f5b071   add.w    r1, r6, #0x160
0042a9a6 4ff40062   mov.w    r2, #0x800
0042a9aa c6f84c0b   str.w    r0, [r6, #0xb4c]
0042a9ae dbf7cfff   bl       #0x406950
0042a9b2 02e0       b        #0x42a9ba
0042a9b4 0020       movs     r0, #0
0042a9b6 c6f84c0b   str.w    r0, [r6, #0xb4c]
0042a9ba 94f85e1b   ldrb.w   r1, [r4, #0xb5e]
0042a9be 2846       mov      r0, r5
0042a9c0 2246       mov      r2, r4
0042a9c2 eff7d3fb   bl       #0x41a16c
0042a9c6 d4f89409   ldr.w    r0, [r4, #0x994]
0042a9ca 4146       mov      r1, r8
0042a9cc 5c22       movs     r2, #0x5c
0042a9ce 00f50760   add.w    r0, r0, #0x870
0042a9d2 bde8000b   pop.w    {r8, sb, fp}
0042a9d6 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042a9da dbf7b9bf   b.w      #0x406950
0042a9de 00bf       nop      
0042a9e0 f0b5       push     {r4, r5, r6, r7, lr}
0042a9e2 03af       add      r7, sp, #0xc
0042a9e4 2de9800f   push.w   {r7, r8, sb, sl, fp}
0042a9e8 41f2d851   movw     r1, #0x15d8
0042a9ec 4618       adds     r6, r0, r1
0042a9ee 50f80180   ldr.w    r8, [r0, r1]
0042a9f2 b268       ldr      r2, [r6, #8]
0042a9f4 b369       ldr      r3, [r6, #0x18]
0042a9f6 d6f80cc0   ldr.w    ip, [r6, #0xc]
0042a9fa 3469       ldr      r4, [r6, #0x10]
0042a9fc d6f804a0   ldr.w    sl, [r6, #4]
0042aa00 d6f81c90   ldr.w    sb, [r6, #0x1c]
0042aa04 a3fb02e5   umull    lr, r5, r3, r2
0042aa08 a4fb0801   umull    r0, r1, r4, r8
0042aa0c 03fb0c55   mla      r5, r3, ip, r5
0042aa10 04fb0a11   mla      r1, r4, sl, r1
0042aa14 b0eb0e00   subs.w   r0, r0, lr
0042aa18 09fb025b   mla      fp, sb, r2, r5
0042aa1c 7569       ldr      r5, [r6, #0x14]
0042aa1e 05fb0811   mla      r1, r5, r8, r1
0042aa22 61eb0b01   sbc.w    r1, r1, fp
0042aa26 14eb0804   adds.w   r4, r4, r8
0042aa2a 45eb0a05   adc.w    r5, r5, sl
0042aa2e 1219       adds     r2, r2, r4
0042aa30 45eb0c04   adc.w    r4, r5, ip
0042aa34 d218       adds     r2, r2, r3
0042aa36 44eb0903   adc.w    r3, r4, sb
0042aa3a dcf729fc   bl       #0x407290
0042aa3e 7162       str      r1, [r6, #0x24]
0042aa40 3062       str      r0, [r6, #0x20]
0042aa42 8021       movs     r1, #0x80
0042aa44 4246       mov      r2, r8
0042aa46 5346       mov      r3, sl
0042aa48 0648       ldr      r0, [pc, #0x18] ; [0x42aa64]=0x10043fd9
0042aa4a 09f009fc   bl       #0x434260
0042aa4e b268       ldr      r2, [r6, #8]
0042aa50 f368       ldr      r3, [r6, #0xc]
0042aa52 0548       ldr      r0, [pc, #0x14] ; [0x42aa68]=0x10043feb
0042aa54 8021       movs     r1, #0x80
0042aa56 01b0       add      sp, #4
0042aa58 bde8000f   pop.w    {r8, sb, sl, fp}
0042aa5c bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042aa60 09f0febb   b.w      #0x434260
0042aa64 d93f       subs     r7, #0xd9
0042aa66 0410       asrs     r4, r0, #0x20
0042aa68 eb3f       subs     r7, #0xeb
0042aa6a 0410       asrs     r4, r0, #0x20
0042aa6c f0b5       push     {r4, r5, r6, r7, lr}
0042aa6e 03af       add      r7, sp, #0xc
0042aa70 2de9800f   push.w   {r7, r8, sb, sl, fp}
0042aa74 0446       mov      r4, r0
0042aa76 8946       mov      sb, r1
0042aa78 006c       ldr      r0, [r0, #0x40]
0042aa7a 9846       mov      r8, r3
0042aa7c 9246       mov      sl, r2
0042aa7e 32f020fc   bl       #0x45d2c2
0042aa82 41f2d440   movw     r0, #0x14d4
0042aa86 2618       adds     r6, r4, r0
0042aa88 96f8c901   ldrb.w   r0, [r6, #0x1c9]
0042aa8c 0128       cmp      r0, #1
0042aa8e 10d1       bne      #0x42aab2
0042aa90 0020       movs     r0, #0
0042aa92 0221       movs     r1, #2
0042aa94 86f8c901   strb.w   r0, [r6, #0x1c9]
0042aa98 206c       ldr      r0, [r4, #0x40]
0042aa9a b9f1010f   cmp.w    sb, #1
0042aa9e 4160       str      r1, [r0, #4]
0042aaa0 07d1       bne      #0x42aab2
0042aaa2 baf10e0f   cmp.w    sl, #0xe
0042aaa6 08bf       it       eq
0042aaa8 4ff00d0a   moveq.w  sl, #0xd
0042aaac 4ff0000b   mov.w    fp, #0
0042aab0 d1e0       b        #0x42ac56
0042aab2 baf1000f   cmp.w    sl, #0
0042aab6 58d1       bne      #0x42ab6a
0042aab8 206c       ldr      r0, [r4, #0x40]
0042aaba b0f8c210   ldrh.w   r1, [r0, #0xc2]
0042aabe 8907       lsls     r1, r1, #0x1e
0042aac0 0cd5       bpl      #0x42aadc
0042aac2 32f074f8   bl       #0x45cbae
0042aac6 a16e       ldr      r1, [r4, #0x68]
0042aac8 d6f89021   ldr.w    r2, [r6, #0x190]
0042aacc 012d       cmp      r5, #1
0042aace 89b2       uxth     r1, r1
0042aad0 02d1       bne      #0x42aad8
0042aad2 01f055f8   bl       #0x42bb80
0042aad6 01e0       b        #0x42aadc
0042aad8 01f085f8   bl       #0x42bbe6
0042aadc bb48       ldr      r0, [pc, #0x2ec] ; [0x42adcc]=0x10005b88
0042aade 807e       ldrb     r0, [r0, #0x1a]
0042aae0 0228       cmp      r0, #2
0042aae2 42d3       blo      #0x42ab6a
0042aae4 30f085fc   bl       #0x45b3f2
0042aae8 216c       ldr      r1, [r4, #0x40]
0042aaea 31f03ff8   bl       #0x45bb6c
0042aaee 8173       strb     r1, [r0, #0xe]
0042aaf0 a16e       ldr      r1, [r4, #0x68]
0042aaf2 31f002fc   bl       #0x45c2fa
0042aaf6 06f5cb71   add.w    r1, r6, #0x196
0042aafa 4266       str      r2, [r0, #0x64]
0042aafc 032d       cmp      r5, #3
0042aafe 10d0       beq      #0x42ab22
0042ab00 226c       ldr      r2, [r4, #0x40]
0042ab02 92f83220   ldrb.w   r2, [r2, #0x32]
0042ab06 ea40       lsrs     r2, r5
0042ab08 d207       lsls     r2, r2, #0x1f
0042ab0a 07d0       beq      #0x42ab1c
0042ab0c 0b88       ldrh     r3, [r1]
0042ab0e 00eb8502   add.w    r2, r0, r5, lsl #2
0042ab12 a2f84830   strh.w   r3, [r2, #0x48]
0042ab16 cb88       ldrh     r3, [r1, #6]
0042ab18 a2f84a30   strh.w   r3, [r2, #0x4a]
0042ab1c 0231       adds     r1, #2
0042ab1e 0135       adds     r5, #1
0042ab20 ece7       b        #0x42aafc
0042ab22 06f5d571   add.w    r1, r6, #0x1aa
0042ab26 0022       movs     r2, #0
0042ab28 032a       cmp      r2, #3
0042ab2a 10d0       beq      #0x42ab4e
0042ab2c d6f8c431   ldr.w    r3, [r6, #0x1c4]
0042ab30 9b79       ldrb     r3, [r3, #6]
0042ab32 d340       lsrs     r3, r2
0042ab34 db07       lsls     r3, r3, #0x1f
0042ab36 07d0       beq      #0x42ab48
0042ab38 0d88       ldrh     r5, [r1]
0042ab3a 00eb8203   add.w    r3, r0, r2, lsl #2
0042ab3e a3f85450   strh.w   r5, [r3, #0x54]
0042ab42 cd88       ldrh     r5, [r1, #6]
0042ab44 a3f85650   strh.w   r5, [r3, #0x56]
0042ab48 0231       adds     r1, #2
0042ab4a 0132       adds     r2, #1
0042ab4c ece7       b        #0x42ab28
0042ab4e b6f8bc11   ldrh.w   r1, [r6, #0x1bc]
0042ab52 4ff48072   mov.w    r2, #0x100
0042ab56 a0f84410   strh.w   r1, [r0, #0x44]
0042ab5a b6f8be11   ldrh.w   r1, [r6, #0x1be]
0042ab5e a0f84610   strh.w   r1, [r0, #0x46]
0042ab62 216c       ldr      r1, [r4, #0x40]
0042ab64 098a       ldrh     r1, [r1, #0x10]
0042ab66 08f0fbf9   bl       #0x432f60
0042ab6a 96f8d400   ldrb.w   r0, [r6, #0xd4]
0042ab6e 0128       cmp      r0, #1
0042ab70 03d1       bne      #0x42ab7a
0042ab72 96f8d300   ldrb.w   r0, [r6, #0xd3]
0042ab76 0128       cmp      r0, #1
0042ab78 6bd1       bne      #0x42ac52
0042ab7a 30f0dffd   bl       #0x45b73c
0042ab7e 4ff0000b   mov.w    fp, #0
0042ab82 08f0aff9   bl       #0x432ee4
0042ab86 a0f80ca0   strh.w   sl, [r0, #0xc]
0042ab8a 0546       mov      r5, r0
0042ab8c 30f0b3fb   bl       #0x45b2f6
0042ab90 32f0aff8   bl       #0x45ccf2
0042ab94 baf1000f   cmp.w    sl, #0
0042ab98 a06e       ldr      r0, [r4, #0x68]
0042ab9a 85f81bb0   strb.w   fp, [r5, #0x1b]
0042ab9e a5f81900   strh.w   r0, [r5, #0x19]
0042aba2 206c       ldr      r0, [r4, #0x40]
0042aba4 b0f8aa00   ldrh.w   r0, [r0, #0xaa]
0042aba8 a5f85200   strh.w   r0, [r5, #0x52]
0042abac b6f8dc00   ldrh.w   r0, [r6, #0xdc]
0042abb0 a883       strh     r0, [r5, #0x1c]
0042abb2 d6f8dc00   ldr.w    r0, [r6, #0xdc]
0042abb6 d6f8e010   ldr.w    r1, [r6, #0xe0]
0042abba c5f84710   str.w    r1, [r5, #0x47]
0042abbe c5f84300   str.w    r0, [r5, #0x43]
0042abc2 41f26a61   movw     r1, #0x166a
0042abc6 206c       ldr      r0, [r4, #0x40]
0042abc8 90f83300   ldrb.w   r0, [r0, #0x33]
0042abcc 04eb4000   add.w    r0, r4, r0, lsl #1
0042abd0 405a       ldrh     r0, [r0, r1]
0042abd2 41f27061   movw     r1, #0x1670
0042abd6 e884       strh     r0, [r5, #0x26]
0042abd8 206c       ldr      r0, [r4, #0x40]
0042abda 90f83300   ldrb.w   r0, [r0, #0x33]
0042abde 04eb4000   add.w    r0, r4, r0, lsl #1
0042abe2 405a       ldrh     r0, [r0, r1]
0042abe4 2885       strh     r0, [r5, #0x28]
0042abe6 d6f8a401   ldr.w    r0, [r6, #0x1a4]
0042abea c5f82a00   str.w    r0, [r5, #0x2a]
0042abee 96f8c301   ldrb.w   r0, [r6, #0x1c3]
0042abf2 85f84b00   strb.w   r0, [r5, #0x4b]
0042abf6 2ad1       bne      #0x42ac4e
0042abf8 d6f82421   ldr.w    r2, [r6, #0x124]
0042abfc d6f82831   ldr.w    r3, [r6, #0x128]
0042ac00 7348       ldr      r0, [pc, #0x1cc] ; [0x42add0]=0x10043ffd
0042ac02 31f054fd   bl       #0x45c6ae
0042ac06 d6f82401   ldr.w    r0, [r6, #0x124]
0042ac0a 41f27e61   movw     r1, #0x167e
0042ac0e c5f81e00   str.w    r0, [r5, #0x1e]
0042ac12 31f045fa   bl       #0x45c0a0
0042ac16 41f28461   movw     r1, #0x1684
0042ac1a e884       strh     r0, [r5, #0x26]
0042ac1c 31f040fa   bl       #0x45c0a0
0042ac20 2946       mov      r1, r5
0042ac22 2885       strh     r0, [r5, #0x28]
0042ac24 d6f8b801   ldr.w    r0, [r6, #0x1b8]
0042ac28 c5f82a00   str.w    r0, [r5, #0x2a]
0042ac2c d6f89001   ldr.w    r0, [r6, #0x190]
0042ac30 a863       str      r0, [r5, #0x38]
0042ac32 41f22560   movw     r0, #0x1625
0042ac36 30f057fd   bl       #0x45b6e8
0042ac3a 96f8d200   ldrb.w   r0, [r6, #0xd2]
0042ac3e 20b1       cbz      r0, #0x42ac4a
0042ac40 41f24a60   movw     r0, #0x164a
0042ac44 30f085fc   bl       #0x45b552
0042ac48 01e0       b        #0x42ac4e
0042ac4a ff20       movs     r0, #0xff
0042ac4c 2886       strh     r0, [r5, #0x30]
0042ac4e 30f0c9fb   bl       #0x45b3e4
0042ac52 4ff0010b   mov.w    fp, #1
0042ac56 206c       ldr      r0, [r4, #0x40]
0042ac58 b0f8c200   ldrh.w   r0, [r0, #0xc2]
0042ac5c c007       lsls     r0, r0, #0x1f
0042ac5e 76d0       beq      #0x42ad4e
0042ac60 31f038fe   bl       #0x45c8d4
0042ac64 a0f80ca0   strh.w   sl, [r0, #0xc]
0042ac68 0546       mov      r5, r0
0042ac6a 30f099fb   bl       #0x45b3a0
0042ac6e a06e       ldr      r0, [r4, #0x68]
0042ac70 6882       strh     r0, [r5, #0x12]
0042ac72 30f089fe   bl       #0x45b988
0042ac76 a961       str      r1, [r5, #0x18]
0042ac78 6861       str      r0, [r5, #0x14]
0042ac7a 32f0d4fc   bl       #0x45d626
0042ac7e b6f8c001   ldrh.w   r0, [r6, #0x1c0]
0042ac82 31f078fa   bl       #0x45c176
0042ac86 96f89431   ldrb.w   r3, [r6, #0x194]
0042ac8a 90f83320   ldrb.w   r2, [r0, #0x33]
0042ac8e 41f26a60   movw     r0, #0x166a
0042ac92 85f84d30   strb.w   r3, [r5, #0x4d]
0042ac96 2044       add      r0, r4
0042ac98 30f81210   ldrh.w   r1, [r0, r2, lsl #1]
0042ac9c a5f84e10   strh.w   r1, [r5, #0x4e]
0042aca0 41f27061   movw     r1, #0x1670
0042aca4 2144       add      r1, r4
0042aca6 31f81220   ldrh.w   r2, [r1, r2, lsl #1]
0042acaa a5f85020   strh.w   r2, [r5, #0x50]
0042acae d6f8a421   ldr.w    r2, [r6, #0x1a4]
0042acb2 c5f85720   str.w    r2, [r5, #0x57]
0042acb6 96f8c321   ldrb.w   r2, [r6, #0x1c3]
0042acba 85f85b20   strb.w   r2, [r5, #0x5b]
0042acbe dbb9       cbnz     r3, #0x42acf8
0042acc0 96f8c221   ldrb.w   r2, [r6, #0x1c2]
0042acc4 30f81200   ldrh.w   r0, [r0, r2, lsl #1]
0042acc8 a5f84e00   strh.w   r0, [r5, #0x4e]
0042accc 96f8c201   ldrb.w   r0, [r6, #0x1c2]
0042acd0 31f81000   ldrh.w   r0, [r1, r0, lsl #1]
0042acd4 41f27e61   movw     r1, #0x167e
0042acd8 a5f85000   strh.w   r0, [r5, #0x50]
0042acdc 96f8a801   ldrb.w   r0, [r6, #0x1a8]
0042ace0 85f85200   strb.w   r0, [r5, #0x52]
0042ace4 31f0dcf9   bl       #0x45c0a0
0042ace8 41f28461   movw     r1, #0x1684
0042acec a5f85300   strh.w   r0, [r5, #0x53]
0042acf0 31f0d6f9   bl       #0x45c0a0
0042acf4 a5f85500   strh.w   r0, [r5, #0x55]
0042acf8 baf1000f   cmp.w    sl, #0
0042acfc 25d1       bne      #0x42ad4a
0042acfe d6f81401   ldr.w    r0, [r6, #0x114]
0042ad02 d6f81811   ldr.w    r1, [r6, #0x118]
0042ad06 e962       str      r1, [r5, #0x2c]
0042ad08 a862       str      r0, [r5, #0x28]
0042ad0a d6f81c01   ldr.w    r0, [r6, #0x11c]
0042ad0e d6f82011   ldr.w    r1, [r6, #0x120]
0042ad12 6963       str      r1, [r5, #0x34]
0042ad14 2863       str      r0, [r5, #0x30]
0042ad16 d6f89001   ldr.w    r0, [r6, #0x190]
0042ad1a c5f84200   str.w    r0, [r5, #0x42]
0042ad1e b6f86901   ldrh.w   r0, [r6, #0x169]
0042ad22 a5f86200   strh.w   r0, [r5, #0x62]
0042ad26 b6f86b01   ldrh.w   r0, [r6, #0x16b]
0042ad2a a5f86400   strh.w   r0, [r5, #0x64]
0042ad2e b6f86d01   ldrh.w   r0, [r6, #0x16d]
0042ad32 a5f86600   strh.w   r0, [r5, #0x66]
0042ad36 96f8d200   ldrb.w   r0, [r6, #0xd2]
0042ad3a 20b1       cbz      r0, #0x42ad46
0042ad3c 41f24a60   movw     r0, #0x164a
0042ad40 32f0eaf8   bl       #0x45cf18
0042ad44 01e0       b        #0x42ad4a
0042ad46 ff20       movs     r0, #0xff
0042ad48 a887       strh     r0, [r5, #0x3c]
0042ad4a 30f04bfb   bl       #0x45b3e4
0042ad4e bbf1000f   cmp.w    fp, #0
0042ad52 31d0       beq      #0x42adb8
0042ad54 6569       ldr      r5, [r4, #0x14]
0042ad56 1b49       ldr      r1, [pc, #0x6c] ; [0x42adc4]=0x44aa2000
0042ad58 206e       ldr      r0, [r4, #0x60]
0042ad5a 1b4a       ldr      r2, [pc, #0x6c] ; [0x42adc8]=0x249f000
0042ad5c 8d42       cmp      r5, r1
0042ad5e 38bf       it       lo
