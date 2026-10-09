00025a24 024a       ldr      r2, [pc, #8] ; [0x25a30]=0x20011016
00025a26 0023       movs     r3, #0
00025a28 1380       strh     r3, [r2]
00025a2a 024a       ldr      r2, [pc, #8] ; [0x25a34]=0x20011014
00025a2c 1370       strb     r3, [r2]
00025a2e 7047       bx       lr
00025a30 1610       asrs     r6, r2, #0x20
00025a32 0120       movs     r0, #1
00025a34 1410       asrs     r4, r2, #0x20
00025a36 0120       movs     r0, #1
00025a38 024b       ldr      r3, [pc, #8] ; [0x25a44]=0x20011016
00025a3a 1880       strh     r0, [r3]
00025a3c 024b       ldr      r3, [pc, #8] ; [0x25a48]=0x20011014
00025a3e 0122       movs     r2, #1
00025a40 1a70       strb     r2, [r3]
00025a42 7047       bx       lr
00025a44 1610       asrs     r6, r2, #0x20
00025a46 0120       movs     r0, #1
00025a48 1410       asrs     r4, r2, #0x20
00025a4a 0120       movs     r0, #1
00025a4c 014b       ldr      r3, [pc, #4] ; [0x25a54]=0x2000fad4
00025a4e 0122       movs     r2, #1
00025a50 1a70       strb     r2, [r3]
00025a52 7047       bx       lr
00025a54 d4fa       .byte    0xd4, 0xfa
00025a56 0020       movs     r0, #0
00025a58 034b       ldr      r3, [pc, #0xc] ; [0x25a68]=0x20011008
00025a5a c3e90001   strd     r0, r1, [r3]
00025a5e 034b       ldr      r3, [pc, #0xc] ; [0x25a6c]=0x20011049
00025a60 82f00102   eor      r2, r2, #1
00025a64 1a70       strb     r2, [r3]
00025a66 7047       bx       lr
00025a68 0810       asrs     r0, r1, #0x20
00025a6a 0120       movs     r0, #1
00025a6c 4910       asrs     r1, r1, #1
00025a6e 0120       movs     r0, #1
