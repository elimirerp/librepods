0041ff20 0599       ldr      r1, [sp, #0x14]
0041ff22 29ee000a   vmul.f32 s0, s18, s0
0041ff26 40ea0142   orr.w    r2, r0, r1, lsl #16
0041ff2a aa21       movs     r1, #0xaa
0041ff2c 3cf020f8   bl       #0x45bf70
0041ff30 49ea0043   orr.w    r3, sb, r0, lsl #16
0041ff34 1348       ldr      r0, [pc, #0x4c] ; [0x41ff84]=0x10042716
0041ff36 14f093f9   bl       #0x434260
0041ff3a 0499       ldr      r1, [sp, #0x10]
0041ff3c 3b69       ldr      r3, [r7, #0x10]
0041ff3e 42e7       b        #0x41fdc6
0041ff40 1148       ldr      r0, [pc, #0x44] ; [0x41ff88]=0x46e681 'uwb_pwr_tbl.c'
0041ff42 124a       ldr      r2, [pc, #0x48] ; [0x41ff8c]=0x46e722 'poly_idx <= PWR_TBL_POLYS'
0041ff44 4ff49871   mov.w    r1, #0x130
0041ff48 17f03cfb   bl       #0x4375c4
0041ff4c 00c0       .byte    0x00, 0xc0
0041ff4e f348       ldr      r0, [pc, #0x3cc] ; [0x42031c]=0x1119f240
0041ff50 0000       movs     r0, r0
0041ff52 c842       cmn      r0, r1
0041ff54 0000       movs     r0, r0
0041ff56 003d       subs     r5, #0
0041ff58 a8c4       stm      r4!, {r3, r5, r7}
0041ff5a b7b9       cbnz     r7, #0x41ff8a
0041ff5c f5be       bkpt     #0xf5
0041ff5e 713d       subs     r5, #0x71
0041ff60 4fcc       ldm      r4!, {r0, r1, r2, r3, r6}
0041ff62 223f       subs     r7, #0x22
0041ff64 0000       movs     r0, r0
0041ff66 003c       subs     r4, #0
0041ff68 041d       adds     r4, r0, #4
0041ff6a 2dbd       pop      {r0, r2, r3, r5, pc}
0041ff6c 981d       adds     r0, r3, #6
0041ff6e b939       subs     r1, #0xb9
0041ff70 885b       ldrh     r0, [r1, r6]
0041ff72 0010       asrs     r0, r0, #0x20
0041ff74 bb26       movs     r6, #0xbb
0041ff76 0410       asrs     r4, r0, #0x20
0041ff78 f884       strh     r0, [r7, #0x26]
0041ff7a 4600       lsls     r6, r0, #1
0041ff7c a805       lsls     r0, r5, #0x16
0041ff7e 0310       asrs     r3, r0, #0x20
0041ff80 5833       adds     r3, #0x58
0041ff82 0010       asrs     r0, r0, #0x20
0041ff84 1627       movs     r7, #0x16
0041ff86 0410       asrs     r4, r0, #0x20
0041ff88 81e6       b        #0x41fc8e
0041ff8a 4600       lsls     r6, r0, #1
0041ff8c 22e7       b        #0x41fdd4
0041ff8e 4600       lsls     r6, r0, #1
0041ff90 0248       ldr      r0, [pc, #8] ; [0x41ff9c]=0x1002e2a4
0041ff92 0021       movs     r1, #0
0041ff94 42f20432   movw     r2, #0x2304
0041ff98 e6f76abd   b.w      #0x406a70
0041ff9c a4e2       b        #0x4204e8
0041ff9e 0210       asrs     r2, r0, #0x20
0041ffa0 f0b5       push     {r4, r5, r6, r7, lr}
0041ffa2 03af       add      r7, sp, #0xc
0041ffa4 2de9800f   push.w   {r7, r8, sb, sl, fp}
0041ffa8 8146       mov      sb, r0
0041ffaa 9807       lsls     r0, r3, #0x1e
0041ffac 3cd1       bne      #0x420028
0041ffae d7f808a0   ldr.w    sl, [r7, #8]
0041ffb2 5fea0a70   lsls.w   r0, sl, #0x1c
0041ffb6 3dd1       bne      #0x420034
0041ffb8 ce68       ldr      r6, [r1, #0xc]
0041ffba 2248       ldr      r0, [pc, #0x88] ; [0x420044]=0x10031008
0041ffbc 9046       mov      r8, r2
0041ffbe fd68       ldr      r5, [r7, #0xc]
0041ffc0 1022       movs     r2, #0x10
0041ffc2 1c46       mov      r4, r3
0041ffc4 3df0e1fb   bl       #0x45d78a
0041ffc8 30ba       rev      r0, r6
0041ffca 1d49       ldr      r1, [pc, #0x74] ; [0x420040]=0x44005000
0041ffcc 4ff0b05c   mov.w    ip, #0x16000000
0041ffd0 4ff0185e   mov.w    lr, #0x26000000
0041ffd4 00eb1a10   add.w    r0, r0, sl, lsr #4
0041ffd8 4ff0ff3a   mov.w    sl, #-1
0041ffdc 15b3       cbz      r5, #0x420024
0041ffde 06ba       rev      r6, r0
0041ffe0 b5f5806f   cmp.w    r5, #0x400
0041ffe4 cbf80c60   str.w    r6, [fp, #0xc]
0041ffe8 2e46       mov      r6, r5
0041ffea c1f820c0   str.w    ip, [r1, #0x20]
0041ffee c1f82090   str.w    sb, [r1, #0x20]
0041fff2 28bf       it       hs
0041fff4 4ff48066   movhs.w  r6, #0x400
0041fff8 4eea0623   orr.w    r3, lr, r6, lsl #8
0041fffc 0b62       str      r3, [r1, #0x20]
0041fffe c1f820b0   str.w    fp, [r1, #0x20]
00420002 c1f82080   str.w    r8, [r1, #0x20]
00420006 0c62       str      r4, [r1, #0x20]
00420008 0b68       ldr      r3, [r1]
0042000a 43f00103   orr      r3, r3, #1
0042000e 0b60       str      r3, [r1]
00420010 4b69       ldr      r3, [r1, #0x14]
00420012 db07       lsls     r3, r3, #0x1f
00420014 fcd0       beq      #0x420010
00420016 c1f814a0   str.w    sl, [r1, #0x14]
0042001a 00eb1610   add.w    r0, r0, r6, lsr #4
0042001e 3444       add      r4, r6
00420020 ad1b       subs     r5, r5, r6
00420022 dbe7       b        #0x41ffdc
00420024 3cf0bcb9   b.w      #0x45c3a0
00420028 0748       ldr      r0, [pc, #0x1c] ; [0x420048]=0x46e73c 'uwbsec.c'
0042002a 084a       ldr      r2, [pc, #0x20] ; [0x42004c]=0x46e745 '((uint32_t)sts_output & 0x03) == 0'
0042002c 40f23921   movw     r1, #0x239
00420030 17f0c8fa   bl       #0x4375c4
00420034 0448       ldr      r0, [pc, #0x10] ; [0x420048]=0x46e73c 'uwbsec.c'
00420036 064a       ldr      r2, [pc, #0x18] ; [0x420050]=0x46e768 '(sts_ofs % UWBSEC_BYTES_PER_CTR) == 0'
00420038 40f23a21   movw     r1, #0x23a
0042003c 17f0c2fa   bl       #0x4375c4
00420040 0050       str      r0, [r0, r0]
00420042 0044       add      r0, r0
00420044 0810       asrs     r0, r1, #0x20
00420046 0310       asrs     r3, r0, #0x20
00420048 3ce7       b        #0x41fec4
0042004a 4600       lsls     r6, r0, #1
0042004c 45e7       b        #0x41feda
0042004e 4600       lsls     r6, r0, #1
00420050 68e7       b        #0x41ff24
00420052 4600       lsls     r6, r0, #1
00420054 0648       ldr      r0, [pc, #0x18] ; [0x420070]=0x44005014
00420056 016b       ldr      r1, [r0, #0x30]
00420058 21f00401   bic      r1, r1, #4
0042005c 0163       str      r1, [r0, #0x30]
0042005e c16a       ldr      r1, [r0, #0x2c]
00420060 41f00401   orr      r1, r1, #4
00420064 c162       str      r1, [r0, #0x2c]
00420066 4ff0ff31   mov.w    r1, #-1
0042006a 0160       str      r1, [r0]
0042006c 7047       bx       lr
0042006e 00bf       nop      
00420070 1450       str      r4, [r2, r0]
00420072 0044       add      r0, r0
00420074 f0b5       push     {r4, r5, r6, r7, lr}
00420076 03af       add      r7, sp, #0xc
00420078 4df8       .byte    0x4d, 0xf8
