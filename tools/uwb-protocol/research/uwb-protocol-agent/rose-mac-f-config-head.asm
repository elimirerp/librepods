00423b00 6f46       mov      r7, sp
00423b02 0209       lsrs     r2, r0, #4
00423b04 0248       ldr      r0, [pc, #8] ; [0x423b10]=0x10042dfb
00423b06 38f0cffd   bl       #0x45c6a8
00423b0a 0120       movs     r0, #1
00423b0c 80bd       pop      {r7, pc}
00423b0e 00bf       nop      
00423b10 fb2d       cmp      r5, #0xfb
00423b12 0410       asrs     r4, r0, #0x20
00423b14 7047       bx       lr
00423b16 0246       mov      r2, r0
00423b18 0020       movs     r0, #0
00423b1a 0129       cmp      r1, #1
00423b1c 03d1       bne      #0x423b26
00423b1e 1178       ldrb     r1, [r2]
00423b20 0429       cmp      r1, #4
00423b22 38bf       it       lo
00423b24 0120       movlo    r0, #1
00423b26 7047       bx       lr
00423b28 7047       bx       lr
00423b2a 00bf       nop      
00423b2c f0b5       push     {r4, r5, r6, r7, lr}
00423b2e 03af       add      r7, sp, #0xc
00423b30 2de9000f   push.w   {r8, sb, sl, fp}
00423b34 8fb0       sub      sp, #0x3c
00423b36 8146       mov      sb, r0
00423b38 848e       ldrh     r4, [r0, #0x34]
00423b3a 408d       ldrh     r0, [r0, #0x2a]
00423b3c 99f83d10   ldrb.w   r1, [sb, #0x3d]
00423b40 f7f746fe   bl       #0x41b7d0
00423b44 0b90       str      r0, [sp, #0x2c]
00423b46 e54e       ldr      r6, [pc, #0x394] ; [0x423edc]=0x10039fa8
00423b48 3068       ldr      r0, [r6]
00423b4a 37f0c3fd   bl       #0x45b6d4
00423b4e b0f5807f   cmp.w    r0, #0x100
00423b52 33d1       bne      #0x423bbc
00423b54 4846       mov      r0, sb
00423b56 0021       movs     r1, #0
00423b58 00f06efa   bl       #0x424038
00423b5c 3068       ldr      r0, [r6]
00423b5e 40f20311   movw     r1, #0x103
00423b62 0c96       str      r6, [sp, #0x30]
00423b64 38f0eefd   bl       #0x45c744
00423b68 fdf720f8   bl       #0x420bac
00423b6c b9f83e60   ldrh.w   r6, [sb, #0x3e]
00423b70 b9f82c50   ldrh.w   r5, [sb, #0x2c]
00423b74 4ff47a70   mov.w    r0, #0x3e8
00423b78 7107       lsls     r1, r6, #0x1d
00423b7a 58bf       it       pl
00423b7c 4543       mulpl    r5, r0, r5
00423b7e b5fbf0f8   udiv     r8, r5, r0
00423b82 4ff4c070   mov.w    r0, #0x180
00423b86 a5fb0001   umull    r0, r1, r5, r0
00423b8a 0a22       movs     r2, #0xa
00423b8c 38f0b2fb   bl       #0x45c2f4
00423b90 cde90510   strd     r1, r0, [sp, #0x14]
00423b94 c6f30020   ubfx     r0, r6, #8, #1
00423b98 16f4807f   tst.w    r6, #0x100
00423b9c 0790       str      r0, [sp, #0x1c]
00423b9e d048       ldr      r0, [pc, #0x340] ; [0x423ee0]=0x7a120
00423ba0 25d0       beq      #0x423bee
00423ba2 8246       mov      sl, r0
00423ba4 8542       cmp      r5, r0
00423ba6 23d2       bhs      #0x423bf0
00423ba8 ce48       ldr      r0, [pc, #0x338] ; [0x423ee4]=0x10042e26
00423baa 8821       movs     r1, #0x88
00423bac 4246       mov      r2, r8
00423bae 4ff4fa73   mov.w    r3, #0x1f4
00423bb2 10f055fb   bl       #0x434260
00423bb6 0020       movs     r0, #0
00423bb8 0790       str      r0, [sp, #0x1c]
00423bba 19e0       b        #0x423bf0
00423bbc 0dad       add      r5, sp, #0x34
00423bbe 4ff48a71   mov.w    r1, #0x114
00423bc2 38f000fa   bl       #0x45bfc6
00423bc6 c848       ldr      r0, [pc, #0x320] ; [0x423ee8]=0x10040134
00423bc8 c84a       ldr      r2, [pc, #0x320] ; [0x423eec]=0x100427b3
00423bca 37f0f3fc   bl       #0x45b5b4
00423bce 4846       mov      r0, sb
00423bd0 44f20d01   movw     r1, #0x400d
00423bd4 00f030fa   bl       #0x424038
00423bd8 3068       ldr      r0, [r6]
00423bda 37f07bfd   bl       #0x45b6d4
00423bde 40f20311   movw     r1, #0x103
00423be2 8842       cmp      r0, r1
00423be4 00f0f181   beq.w    #0x423fca
00423be8 0fb0       add      sp, #0x3c
00423bea 38f016ba   b.w      #0x45c01a
00423bee 8246       mov      sl, r0
00423bf0 fcf74efc   bl       #0x420490
00423bf4 0c9d       ldr      r5, [sp, #0x30]
00423bf6 42f6cc41   movw     r1, #0x2ccc
00423bfa 6850       str      r0, [r5, r1]
00423bfc 0b98       ldr      r0, [sp, #0x2c]
00423bfe b9f80010   ldrh.w   r1, [sb]
00423c02 18b1       cbz      r0, #0x423c0c
00423c04 281d       adds     r0, r5, #4
00423c06 f7f745fc   bl       #0x41b494
00423c0a 02e0       b        #0x423c12
00423c0c 281d       adds     r0, r5, #4
00423c0e f6f7cbf9   bl       #0x419fa8
00423c12 b9f83400   ldrh.w   r0, [sb, #0x34]
00423c16 b0f5806f   cmp.w    r0, #0x400
00423c1a 04d3       blo      #0x423c26
00423c1c e869       ldr      r0, [r5, #0x1c]
00423c1e 0221       movs     r1, #2
00423c20 61f3c810   bfi      r0, r1, #7, #2
00423c24 e861       str      r0, [r5, #0x1c]
00423c26 38f072fc   bl       #0x45c50e
00423c2a b149       ldr      r1, [pc, #0x2c4] ; [0x423ef0]=0x42409d
00423c2c 42f21430   movw     r0, #0x2314
00423c30 0122       movs     r2, #1
00423c32 39f098fc   bl       #0x45d566
00423c36 281d       adds     r0, r5, #4
00423c38 42f25811   movw     r1, #0x2158
00423c3c 6850       str      r0, [r5, r1]
00423c3e 42f20931   movw     r1, #0x2309
00423c42 6a54       strb     r2, [r5, r1]
00423c44 42f6cc41   movw     r1, #0x2ccc
00423c48 42f25c12   movw     r2, #0x215c
00423c4c 6958       ldr      r1, [r5, r1]
00423c4e a950       str      r1, [r5, r2]
00423c50 42f20c32   movw     r2, #0x230c
00423c54 d9f81010   ldr.w    r1, [sb, #0x10]
00423c58 a950       str      r1, [r5, r2]
00423c5a 42f21032   movw     r2, #0x2310
00423c5e b9f81410   ldrh.w   r1, [sb, #0x14]
00423c62 a952       strh     r1, [r5, r2]
00423c64 09f10401   add.w    r1, sb, #4
00423c68 09f10a02   add.w    r2, sb, #0xa
00423c6c f5f72efd   bl       #0x4196cc
00423c70 99f81e00   ldrb.w   r0, [sb, #0x1e]
00423c74 99f83d60   ldrb.w   r6, [sb, #0x3d]
00423c78 a882       strh     r0, [r5, #0x14]
00423c7a b9f82a50   ldrh.w   r5, [sb, #0x2a]
00423c7e 2846       mov      r0, r5
00423c80 f7f730fd   bl       #0x41b6e4
00423c84 30b9       cbnz     r0, #0x423c94
00423c86 2846       mov      r0, r5
00423c88 3146       mov      r1, r6
00423c8a f7f7a1fd   bl       #0x41b7d0
00423c8e 0028       cmp      r0, #0
00423c90 00f0a781   beq.w    #0x423fe2
00423c94 2846       mov      r0, r5
00423c96 f3f705fe   bl       #0x4178a4
00423c9a d0b1       cbz      r0, #0x423cd2
00423c9c 2846       mov      r0, r5
00423c9e 39f0aafe   bl       #0x45d9f6
00423ca2 e8b2       uxtb     r0, r5
00423ca4 17d0       beq      #0x423cd6
00423ca6 d749       ldr      r1, [pc, #0x35c] ; [0x424004]=0x10000fb8
00423ca8 d74b       ldr      r3, [pc, #0x35c] ; [0x424008]=0x100013fc
00423caa 9c22       movs     r2, #0x9c
00423cac 25f0ff05   bic      r5, r5, #0xff
00423cb0 b5f5e06f   cmp.w    r5, #0x700
00423cb4 10fb0233   smlabb   r3, r0, r2, r3
00423cb8 08bf       it       eq
00423cba 10fb0213   smlabbeq r3, r0, r2, r1
00423cbe 5869       ldr      r0, [r3, #0x14]
00423cc0 c008       lsrs     r0, r0, #3
00423cc2 b6f11001   subs.w   r1, r6, #0x10
00423cc6 98bf       it       ls
00423cc8 7108       lsrls    r1, r6, #1
00423cca c9b2       uxtb     r1, r1
00423ccc 4843       muls     r0, r1, r0
00423cce 80b2       uxth     r0, r0
00423cd0 0ce0       b        #0x423cec
00423cd2 0020       movs     r0, #0
00423cd4 0ae0       b        #0x423cec
00423cd6 cd4a       ldr      r2, [pc, #0x334] ; [0x42400c]=0x4684f8
00423cd8 290a       lsrs     r1, r5, #8
00423cda c0ebc000   rsb      r0, r0, r0, lsl #3
00423cde 52f82110   ldr.w    r1, [r2, r1, lsl #2]
00423ce2 01ebc000   add.w    r0, r1, r0, lsl #3
00423ce6 c069       ldr      r0, [r0, #0x1c]
00423ce8 c0f3cf00   ubfx     r0, r0, #3, #0x10
00423cec 0c9e       ldr      r6, [sp, #0x30]
00423cee 0028       cmp      r0, #0
00423cf0 a6f84001   strh.w   r0, [r6, #0x140]
00423cf4 18bf       it       ne
00423cf6 0120       movne    r0, #1
00423cf8 0b99       ldr      r1, [sp, #0x2c]
00423cfa 0840       ands     r0, r1
00423cfc 86f84201   strb.w   r0, [r6, #0x142]
00423d00 99f83900   ldrb.w   r0, [sb, #0x39]
00423d04 08b1       cbz      r0, #0x423d0a
00423d06 0120       movs     r0, #1
00423d08 01e0       b        #0x423d0e
00423d0a 99f83800   ldrb.w   r0, [sb, #0x38]
00423d0e c04a       ldr      r2, [pc, #0x300] ; [0x424010]=0x4240d5
00423d10 42f20431   movw     r1, #0x2304
00423d14 00f00100   and      r0, r0, #1
00423d18 86f84301   strb.w   r0, [r6, #0x143]
00423d1c 7250       str      r2, [r6, r1]
00423d1e b9f82a00   ldrh.w   r0, [sb, #0x2a]
00423d22 f3f7f5fd   bl       #0x417910
00423d26 0028       cmp      r0, #0
00423d28 18bf       it       ne
00423d2a 0024       movne    r4, #0
00423d2c 1cb9       cbnz     r4, #0x423d36
00423d2e 42f26810   movw     r0, #0x2168
00423d32 0221       movs     r1, #2
00423d34 3150       str      r1, [r6, r0]
00423d36 42f26610   movw     r0, #0x2166
00423d3a 3452       strh     r4, [r6, r0]
00423d3c 4ff47a70   mov.w    r0, #0x3e8
00423d40 08fb00a0   mla      r0, r8, r0, sl
00423d44 4ff00008   mov.w    r8, #0
00423d48 0a90       str      r0, [sp, #0x28]
00423d4a 09f14000   add.w    r0, sb, #0x40
00423d4e 0490       str      r0, [sp, #0x10]
00423d50 b9f82e00   ldrh.w   r0, [sb, #0x2e]
00423d54 8045       cmp      r8, r0
00423d56 02d3       blo      #0x423d5e
00423d58 0028       cmp      r0, #0
00423d5a 40f01b81   bne.w    #0x423f94
00423d5e d9f85430   ldr.w    r3, [sb, #0x54]
00423d62 13b1       cbz      r3, #0x423d6a
00423d64 b9f85840   ldrh.w   r4, [sb, #0x58]
00423d68 0cb9       cbnz     r4, #0x423d6e
00423d6a 049b       ldr      r3, [sp, #0x10]
00423d6c 1424       movs     r4, #0x14
00423d6e 99f83a50   ldrb.w   r5, [sb, #0x3a]
00423d72 d9f83020   ldr.w    r2, [sb, #0x30]
00423d76 99f83810   ldrb.w   r1, [sb, #0x38]
00423d7a 99f83900   ldrb.w   r0, [sb, #0x39]
00423d7e 0294       str      r4, [sp, #8]
00423d80 cde90053   strd     r5, r3, [sp]
00423d84 4346       mov      r3, r8
00423d86 00f0e1f9   bl       #0x42414c
00423d8a 99f83a00   ldrb.w   r0, [sb, #0x3a]
00423d8e 0128       cmp      r0, #1
00423d90 14d1       bne      #0x423dbc
00423d92 b8f1000f   cmp.w    r8, #0
00423d96 11d0       beq      #0x423dbc
00423d98 99f83b00   ldrb.w   r0, [sb, #0x3b]
00423d9c c007       lsls     r0, r0, #0x1f
00423d9e 0dd0       beq      #0x423dbc
00423da0 42f26610   movw     r0, #0x2166
00423da4 315a       ldrh     r1, [r6, r0]
00423da6 99f83c00   ldrb.w   r0, [sb, #0x3c]
00423daa 421c       adds     r2, r0, #1
00423dac 8a42       cmp      r2, r1
00423dae 05d2       bhs      #0x423dbc
00423db0 3044       add      r0, r6
00423db2 b0f84411   ldrh.w   r1, [r0, #0x144]
00423db6 0131       adds     r1, #1
00423db8 a0f84411   strh.w   r1, [r0, #0x144]
00423dbc e7f7eefb   bl       #0x40b59c
00423dc0 8346       mov      fp, r0
00423dc2 b8f1000f   cmp.w    r8, #0
00423dc6 2ad0       beq      #0x423e1e
00423dc8 4ff43352   mov.w    r2, #0x2cc0
00423dcc 0699       ldr      r1, [sp, #0x18]
00423dce 06f5335a   add.w    sl, r6, #0x2cc0
00423dd2 b058       ldr      r0, [r6, r2]
00423dd4 4518       adds     r5, r0, r1
00423dd6 daf80400   ldr.w    r0, [sl, #4]
00423dda 0599       ldr      r1, [sp, #0x14]
00423ddc b550       str      r5, [r6, r2]
00423dde 4841       adcs     r0, r1
00423de0 84b2       uxth     r4, r0
00423de2 0798       ldr      r0, [sp, #0x1c]
00423de4 caf80440   str.w    r4, [sl, #4]
00423de8 38b3       cbz      r0, #0x423e3a
00423dea 8a4e       ldr      r6, [pc, #0x228] ; [0x424014]=0x1003fc6c
00423dec 4bf68f41   movw     r1, #0xbc8f
00423df0 6ff00042   mvn      r2, #0x80000000
00423df4 0023       movs     r3, #0
00423df6 706b       ldr      r0, [r6, #0x34]
00423df8 a0fb0101   umull    r0, r1, r0, r1
00423dfc e3f70dfe   bl       #0x407a1a
00423e00 7d4a       ldr      r2, [pc, #0x1f4] ; [0x423ff8]=0x3a9801
00423e02 7063       str      r0, [r6, #0x34]
00423e04 b0fbf2f1   udiv     r1, r0, r2
00423e08 01fb1200   mls      r0, r1, r2, r0
00423e0c 7b49       ldr      r1, [pc, #0x1ec] ; [0x423ffc]=0xffe2b400
00423e0e 4318       adds     r3, r0, r1
00423e10 7749       ldr      r1, [pc, #0x1dc] ; [0x423ff0]=0x1d4bff
00423e12 8842       cmp      r0, r1
00423e14 13d9       bls      #0x423e3e
00423e16 e818       adds     r0, r5, r3
00423e18 44f10001   adc      r1, r4, #0
00423e1c 14e0       b        #0x423e48
00423e1e 7549       ldr      r1, [pc, #0x1d4] ; [0x423ff4]=0x40002018
00423e20 0868       ldr      r0, [r1]
00423e22 4968       ldr      r1, [r1, #4]
00423e24 10f57055   adds.w   r5, r0, #0x3c00
00423e28 4ff43350   mov.w    r0, #0x2cc0
00423e2c 3550       str      r5, [r6, r0]
00423e2e 41f10004   adc      r4, r1, #0
00423e32 06f53350   add.w    r0, r6, #0x2cc0
00423e36 4460       str      r4, [r0, #4]
00423e38 15e0       b        #0x423e66
00423e3a 0c9e       ldr      r6, [sp, #0x30]
00423e3c 13e0       b        #0x423e66
00423e3e 081a       subs     r0, r1, r0
00423e40 0130       adds     r0, #1
00423e42 281a       subs     r0, r5, r0
00423e44 64f10001   sbc      r1, r4, #0
00423e48 0c9e       ldr      r6, [sp, #0x30]
00423e4a 4ff43354   mov.w    r4, #0x2cc0
00423e4e 4246       mov      r2, r8
00423e50 3051       str      r0, [r6, r4]
00423e52 88b2       uxth     r0, r1
00423e54 8821       movs     r1, #0x88
00423e56 caf80400   str.w    r0, [sl, #4]
00423e5a 6f48       ldr      r0, [pc, #0x1bc] ; [0x424018]=0x10042e4f
00423e5c 10f000fa   bl       #0x434260
00423e60 3559       ldr      r5, [r6, r4]
00423e62 daf80440   ldr.w    r4, [sl, #4]
00423e66 42f25011   movw     r1, #0x2150
00423e6a 42f20832   movw     r2, #0x2308
00423e6e 7550       str      r5, [r6, r1]
00423e70 99f81c00   ldrb.w   r0, [sb, #0x1c]
00423e74 b054       strb     r0, [r6, r2]
00423e76 7218       adds     r2, r6, r1
00423e78 0b99       ldr      r1, [sp, #0x2c]
00423e7a 5460       str      r4, [r2, #4]
00423e7c b9f82a00   ldrh.w   r0, [sb, #0x2a]
00423e80 99b1       cbz      r1, #0x423eaa
00423e82 099b       ldr      r3, [sp, #0x24]
00423e84 4ff6ff71   movw     r1, #0xffff
00423e88 23ea0101   bic.w    r1, r3, r1
00423e8c 0844       add      r0, r1
00423e8e 99f83d10   ldrb.w   r1, [sb, #0x3d]
00423e92 0990       str      r0, [sp, #0x24]
00423e94 f6f72efc   bl       #0x41a6f4
00423e98 60b3       cbz      r0, #0x423ef4
00423e9a 0dac       add      r4, sp, #0x34
00423e9c 40f29711   movw     r1, #0x197
00423ea0 38f047f8   bl       #0x45bf32
00423ea4 5648       ldr      r0, [pc, #0x158] ; [0x424000]=0x10040134
00423ea6 5d4a       ldr      r2, [pc, #0x174] ; [0x42401c]=0x100427b3
00423ea8 12e0       b        #0x423ed0
00423eaa 089b       ldr      r3, [sp, #0x20]
00423eac 4ff6ff71   movw     r1, #0xffff
00423eb0 23ea0101   bic.w    r1, r3, r1
00423eb4 0844       add      r0, r1
00423eb6 99f80210   ldrb.w   r1, [sb, #2]
00423eba 0890       str      r0, [sp, #0x20]
00423ebc f6f782f8   bl       #0x419fc4
00423ec0 c0b1       cbz      r0, #0x423ef4
00423ec2 0dac       add      r4, sp, #0x34
00423ec4 40f29b11   movw     r1, #0x19b
00423ec8 38f033f8   bl       #0x45bf32
00423ecc 4c48       ldr      r0, [pc, #0x130] ; [0x424000]=0x10040134
00423ece 544a       ldr      r2, [pc, #0x150] ; [0x424020]=0x100427b3
00423ed0 37f05cfb   bl       #0x45b58c
00423ed4 44f2190a   movw     sl, #0x4019
00423ed8 0024       movs     r4, #0
00423eda 0ee0       b        #0x423efa
00423edc a89f       ldr      r7, [sp, #0x2a0]
00423ede 0310       asrs     r3, r0, #0x20
00423ee0 20a1       adr      r1, #0x80
00423ee2 0700       movs     r7, r0
00423ee4 262e       cmp      r6, #0x26
00423ee6 0410       asrs     r4, r0, #0x20
00423ee8 3401       lsls     r4, r6, #4
00423eea 0410       asrs     r4, r0, #0x20
00423eec b327       movs     r7, #0xb3
00423eee 0410       asrs     r4, r0, #0x20
