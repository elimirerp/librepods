00420000 08a0       adr      r0, #0x20
00420002 5fea0a70   lsls.w   r0, sl, #0x1c
00420006 3ed1       bne      #0x420086
00420008 ce68       ldr      r6, [r1, #0xc]
0042000a 2348       ldr      r0, [pc, #0x8c] ; [0x420098]=0x1002e348
0042000c 9046       mov      r8, r2
0042000e fd68       ldr      r5, [r7, #0xc]
00420010 1022       movs     r2, #0x10
00420012 1c46       mov      r4, r3
00420014 8346       mov      fp, r0
00420016 e6f743fc   bl       #0x4068a0
0042001a 30ba       rev      r0, r6
0042001c 1d49       ldr      r1, [pc, #0x74] ; [0x420094]=0x44005000
0042001e 4ff0b05c   mov.w    ip, #0x16000000
00420022 4ff0185e   mov.w    lr, #0x26000000
00420026 00eb1a10   add.w    r0, r0, sl, lsr #4
0042002a 4ff0ff3a   mov.w    sl, #-1
0042002e 15b3       cbz      r5, #0x420076
00420030 06ba       rev      r6, r0
00420032 b5f5806f   cmp.w    r5, #0x400
00420036 cbf80c60   str.w    r6, [fp, #0xc]
0042003a 2e46       mov      r6, r5
0042003c c1f820c0   str.w    ip, [r1, #0x20]
00420040 c1f82090   str.w    sb, [r1, #0x20]
00420044 28bf       it       hs
00420046 4ff48066   movhs.w  r6, #0x400
0042004a 4eea0623   orr.w    r3, lr, r6, lsl #8
0042004e 0b62       str      r3, [r1, #0x20]
00420050 c1f820b0   str.w    fp, [r1, #0x20]
00420054 c1f82080   str.w    r8, [r1, #0x20]
00420058 0c62       str      r4, [r1, #0x20]
0042005a 0b68       ldr      r3, [r1]
0042005c 43f00103   orr      r3, r3, #1
00420060 0b60       str      r3, [r1]
00420062 4b69       ldr      r3, [r1, #0x14]
00420064 db07       lsls     r3, r3, #0x1f
00420066 fcd0       beq      #0x420062
00420068 c1f814a0   str.w    sl, [r1, #0x14]
0042006c 00eb1610   add.w    r0, r0, r6, lsr #4
00420070 3444       add      r4, r6
00420072 ad1b       subs     r5, r5, r6
00420074 dbe7       b        #0x42002e
00420076 3bf08bbb   b.w      #0x45b790
0042007a 0848       ldr      r0, [pc, #0x20] ; [0x42009c]=0x46da69 'uwbsec.c'
0042007c 084a       ldr      r2, [pc, #0x20] ; [0x4200a0]=0x46da72 '((uint32_t)sts_output & 0x03) == 0'
0042007e 40f23921   movw     r1, #0x239
00420082 16f0e5ff   bl       #0x437050
00420086 0548       ldr      r0, [pc, #0x14] ; [0x42009c]=0x46da69 'uwbsec.c'
00420088 064a       ldr      r2, [pc, #0x18] ; [0x4200a4]=0x46da95 '(sts_ofs % UWBSEC_BYTES_PER_CTR) == 0'
0042008a 40f23a21   movw     r1, #0x23a
0042008e 16f0dfff   bl       #0x437050
00420092 00bf       nop      
00420094 0050       str      r0, [r0, r0]
00420096 0044       add      r0, r0
00420098 48e3       b        #0x42072c
0042009a 0210       asrs     r2, r0, #0x20
0042009c 69da       bge      #0x420172
0042009e 4600       lsls     r6, r0, #1
004200a0 72da       bge      #0x420188
004200a2 4600       lsls     r6, r0, #1
004200a4 95da       bge      #0x41ffd2
004200a6 4600       lsls     r6, r0, #1
004200a8 0648       ldr      r0, [pc, #0x18] ; [0x4200c4]=0x44005014
004200aa 016b       ldr      r1, [r0, #0x30]
004200ac 21f00401   bic      r1, r1, #4
004200b0 0163       str      r1, [r0, #0x30]
004200b2 c16a       ldr      r1, [r0, #0x2c]
004200b4 41f00401   orr      r1, r1, #4
004200b8 c162       str      r1, [r0, #0x2c]
004200ba 4ff0ff31   mov.w    r1, #-1
004200be 0160       str      r1, [r0]
004200c0 7047       bx       lr
004200c2 00bf       nop      
004200c4 1450       str      r4, [r2, r0]
004200c6 0044       add      r0, r0
