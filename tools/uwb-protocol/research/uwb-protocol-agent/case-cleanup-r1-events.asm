000249ec e001       lsls     r0, r4, #7
000249ee 0120       movs     r0, #1
000249f0 10b5       push     {r4, lr}
000249f2 0121       movs     r1, #1
000249f4 0b4a       ldr      r2, [pc, #0x2c] ; [0x24a24]=0x4e6ac 'Init Rose'
000249f6 0446       mov      r4, r0
000249f8 0720       movs     r0, #7
000249fa 12f097f8   bl       #0x36b2c
000249fe fff7e9fe   bl       #0x247d4
00024a02 094b       ldr      r3, [pc, #0x24] ; [0x24a28]=0x2000fabc
00024a04 0020       movs     r0, #0
00024a06 1c70       strb     r4, [r3]
00024a08 fff7aaff   bl       #0x24960
00024a0c 0748       ldr      r0, [pc, #0x1c] ; [0x24a2c]=0x20010200
00024a0e 40f6b831   movw     r1, #0xbb8
00024a12 15f0a4fc   bl       #0x3a35e
00024a16 18b1       cbz      r0, #0x24a20
00024a18 bde81040   pop.w    {r4, lr}
00024a1c 03f0ccbb   b.w      #0x281b8
00024a20 10bd       pop      {r4, pc}
00024a22 00bf       nop      
00024a24 ace6       b        #0x24780
00024a26 0400       movs     r4, r0
00024a28 bcfa       .byte    0xbc, 0xfa
00024a2a 0020       movs     r0, #0
00024a2c 0002       lsls     r0, r0, #8
00024a2e 0120       movs     r0, #1
00024a30 024b       ldr      r3, [pc, #8] ; [0x24a3c]=0x2000fabc
00024a32 1878       ldrb     r0, [r3]
00024a34 0138       subs     r0, #1
00024a36 c0b2       uxtb     r0, r0
00024a38 fff7dabf   b.w      #0x249f0
00024a3c bcfa       .byte    0xbc, 0xfa
00024a3e 0020       movs     r0, #0
00024a40 08b5       push     {r3, lr}
00024a42 0146       mov      r1, r0
00024a44 0748       ldr      r0, [pc, #0x1c] ; [0x24a64]=0x20010248
00024a46 15f08afc   bl       #0x3a35e
00024a4a 48b1       cbz      r0, #0x24a60
00024a4c 0346       mov      r3, r0
00024a4e 064a       ldr      r2, [pc, #0x18] ; [0x24a68]=0x4e6b6 'Error starting rose timer: %u'
00024a50 0021       movs     r1, #0
00024a52 0720       movs     r0, #7
00024a54 12f06af8   bl       #0x36b2c
00024a58 0120       movs     r0, #1
00024a5a 02f0cdfa   bl       #0x26ff8
00024a5e 0120       movs     r0, #1
00024a60 08bd       pop      {r3, pc}
00024a62 00bf       nop      
00024a64 4802       lsls     r0, r1, #9
00024a66 0120       movs     r0, #1
00024a68 b6e6       b        #0x247d8
00024a6a 0400       movs     r4, r0
00024a6c 08b5       push     {r3, lr}
00024a6e 4ff47a60   mov.w    r0, #0xfa0
00024a72 fff7e5ff   bl       #0x24a40
00024a76 20b1       cbz      r0, #0x24a82
00024a78 bde80840   pop.w    {r3, lr}
00024a7c 0120       movs     r0, #1
00024a7e 02f0bbba   b.w      #0x26ff8
00024a82 bde80840   pop.w    {r3, lr}
00024a86 024a       ldr      r2, [pc, #8] ; [0x24a90]=0x4e6d4 'Sent trigger crash'
00024a88 0121       movs     r1, #1
00024a8a 0720       movs     r0, #7
00024a8c 12f04eb8   b.w      #0x36b2c
00024a90 d4e6       b        #0x2483c
00024a92 0400       movs     r4, r0
00024a94 08b5       push     {r3, lr}
00024a96 0748       ldr      r0, [pc, #0x1c] ; [0x24ab4]=0x20010248
00024a98 15f054fc   bl       #0x3a344
00024a9c 48b1       cbz      r0, #0x24ab2
00024a9e 0346       mov      r3, r0
00024aa0 054a       ldr      r2, [pc, #0x14] ; [0x24ab8]=0x4e6e7 'Error stopping rose timer: %u'
00024aa2 0021       movs     r1, #0
00024aa4 0720       movs     r0, #7
00024aa6 12f041f8   bl       #0x36b2c
00024aaa 0120       movs     r0, #1
00024aac 02f0a4fa   bl       #0x26ff8
00024ab0 0120       movs     r0, #1
00024ab2 08bd       pop      {r3, pc}
00024ab4 4802       lsls     r0, r1, #9
00024ab6 0120       movs     r0, #1
00024ab8 e7e6       b        #0x2488a
00024aba 0400       movs     r4, r0
00024abc 7fb5       push     {r0, r1, r2, r3, r4, r5, r6, lr}
00024abe 00f0fb03   and      r3, r0, #0xfb
00024ac2 012b       cmp      r3, #1
00024ac4 0446       mov      r4, r0
00024ac6 0e46       mov      r6, r1
00024ac8 1546       mov      r5, r2
00024aca 11d1       bne      #0x24af0
00024acc 81b9       cbnz     r1, #0x24af0
00024ace 0091       str      r1, [sp]
00024ad0 0346       mov      r3, r0
00024ad2 6b4a       ldr      r2, [pc, #0x1ac] ; [0x24c80]=0x4e705 'Received op: %u, status: 0x%x'
00024ad4 0221       movs     r1, #2
00024ad6 0720       movs     r0, #7
00024ad8 12f028f8   bl       #0x36b2c
00024adc 012c       cmp      r4, #1
00024ade 10d1       bne      #0x24b02
00024ae0 0021       movs     r1, #0
00024ae2 684a       ldr      r2, [pc, #0x1a0] ; [0x24c84]=0x24649
00024ae4 0846       mov      r0, r1
00024ae6 04b0       add      sp, #0x10
00024ae8 bde87040   pop.w    {r4, r5, r6, lr}
00024aec 03f096bb   b.w      #0x2821c
00024af0 634a       ldr      r2, [pc, #0x18c] ; [0x24c80]=0x4e705 'Received op: %u, status: 0x%x'
00024af2 0096       str      r6, [sp]
00024af4 2346       mov      r3, r4
00024af6 0121       movs     r1, #1
00024af8 0720       movs     r0, #7
00024afa 12f017f8   bl       #0x36b2c
00024afe 002e       cmp      r6, #0
00024b00 ecd0       beq      #0x24adc
00024b02 fff7c7ff   bl       #0x24a94
00024b06 0028       cmp      r0, #0
00024b08 40f0b880   bne.w    #0x24c7c
00024b0c 172c       cmp      r4, #0x17
00024b0e 1dd1       bne      #0x24b4c
00024b10 4ff47a60   mov.w    r0, #0xfa0
00024b14 fff794ff   bl       #0x24a40
00024b18 0446       mov      r4, r0
00024b1a 28b1       cbz      r0, #0x24b28
00024b1c 0120       movs     r0, #1
00024b1e 04b0       add      sp, #0x10
00024b20 bde87040   pop.w    {r4, r5, r6, lr}
00024b24 02f068ba   b.w      #0x26ff8
00024b28 02f05afa   bl       #0x26fe0
00024b2c 0528       cmp      r0, #5
00024b2e 06d1       bne      #0x24b3e
00024b30 3046       mov      r0, r6
00024b32 fff763fa   bl       #0x23ffc
00024b36 2146       mov      r1, r4
00024b38 2120       movs     r0, #0x21
00024b3a 13f063fe   bl       #0x38804
00024b3e 0021       movs     r1, #0
00024b40 1c20       movs     r0, #0x1c
00024b42 04b0       add      sp, #0x10
00024b44 bde87040   pop.w    {r4, r5, r6, lr}
00024b48 01f0e2bf   b.w      #0x26b10
00024b4c 032c       cmp      r4, #3
00024b4e 0ed1       bne      #0x24b6e
00024b50 0e2e       cmp      r6, #0xe
00024b52 0cd1       bne      #0x24b6e
00024b54 02f044fa   bl       #0x26fe0
00024b58 0528       cmp      r0, #5
00024b5a 34d0       beq      #0x24bc6
00024b5c 002d       cmp      r5, #0
00024b5e ddd0       beq      #0x24b1c
00024b60 494a       ldr      r2, [pc, #0x124] ; [0x24c88]=0x4e723 'Rose rx handler error - arg: %u'
00024b62 2b46       mov      r3, r5
00024b64 0021       movs     r1, #0
00024b66 0720       movs     r0, #7
00024b68 11f0e0ff   bl       #0x36b2c
00024b6c d6e7       b        #0x24b1c
00024b6e 002e       cmp      r6, #0
00024b70 f4d1       bne      #0x24b5c
00024b72 02f035fa   bl       #0x26fe0
00024b76 0138       subs     r0, #1
00024b78 1228       cmp      r0, #0x12
00024b7a 6fd8       bhi      #0x24c5c
00024b7c dfe800f0   tbb      [pc, r0] ; [0x24b80]=0x1d6e6e16
00024b80 166e       ldr      r6, [r2, #0x60]
00024b82 6e1d       adds     r6, r5, #5
00024b84 230a       lsrs     r3, r4, #8
00024b86 102a       cmp      r2, #0x10
00024b88 3037       adds     r7, #0x30
00024b8a 3e45       cmp      r6, r7
00024b8c 4c53       strh     r4, [r1, r5]
00024b8e 1659       ldr      r6, [r2, r4]
00024b90 6760       str      r7, [r4, #4]
00024b92 6000       lsls     r0, r4, #1
00024b94 2046       mov      r0, r4
00024b96 04b0       add      sp, #0x10
00024b98 bde87040   pop.w    {r4, r5, r6, lr}
00024b9c 00f02ebb   b.w      #0x251fc
00024ba0 2046       mov      r0, r4
00024ba2 04b0       add      sp, #0x10
00024ba4 bde87040   pop.w    {r4, r5, r6, lr}
00024ba8 00f042bb   b.w      #0x25230
00024bac 2946       mov      r1, r5
00024bae 2046       mov      r0, r4
00024bb0 04b0       add      sp, #0x10
00024bb2 bde87040   pop.w    {r4, r5, r6, lr}
00024bb6 fff729be   b.w      #0x2480c
00024bba 2046       mov      r0, r4
00024bbc 04b0       add      sp, #0x10
00024bbe bde87040   pop.w    {r4, r5, r6, lr}
00024bc2 01f03bb9   b.w      #0x25e3c
00024bc6 2946       mov      r1, r5
00024bc8 2046       mov      r0, r4
00024bca 04b0       add      sp, #0x10
00024bcc bde87040   pop.w    {r4, r5, r6, lr}
