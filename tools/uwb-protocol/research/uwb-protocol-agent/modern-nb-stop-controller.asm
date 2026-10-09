000248f0 10b5       push     {r4, lr}
000248f2 fbf7edfa   bl       #0x1fed0
000248f6 0446       mov      r4, r0
000248f8 38b1       cbz      r0, #0x2490a
000248fa 0346       mov      r3, r0
000248fc 074a       ldr      r2, [pc, #0x1c] ; [0x2491c]=0x4e641 'Failed to deinit rose: 0x%x\n'
000248fe 0021       movs     r1, #0
00024900 0720       movs     r0, #7
00024902 12f013f9   bl       #0x36b2c
00024906 2046       mov      r0, r4
00024908 10bd       pop      {r4, pc}
0002490a fff763ff   bl       #0x247d4
0002490e 044a       ldr      r2, [pc, #0x10] ; [0x24920]=0x4e65e 'Deinitialized rose'
00024910 0121       movs     r1, #1
00024912 0720       movs     r0, #7
00024914 12f00af9   bl       #0x36b2c
00024918 f5e7       b        #0x24906
0002491a 00bf       nop      
0002491c 41e6       b        #0x245a2
0002491e 0400       movs     r4, r0
00024920 5ee6       b        #0x245e0
00024922 0400       movs     r4, r0
00024924 10b5       push     {r4, lr}
00024926 0a4a       ldr      r2, [pc, #0x28] ; [0x24950]=0x4e671 'Boot failed'
00024928 0021       movs     r1, #0
0002492a 0720       movs     r0, #7
0002492c 12f0fef8   bl       #0x36b2c
00024930 084b       ldr      r3, [pc, #0x20] ; [0x24954]=0x2000fabc
00024932 1c78       ldrb     r4, [r3]
00024934 44b1       cbz      r4, #0x24948
00024936 fff7dbff   bl       #0x248f0
0002493a 074a       ldr      r2, [pc, #0x1c] ; [0x24958]=0x24a31
0002493c 0021       movs     r1, #0
0002493e bde81040   pop.w    {r4, lr}
00024942 0846       mov      r0, r1
00024944 03f06abc   b.w      #0x2821c
00024948 fff744ff   bl       #0x247d4
0002494c 034a       ldr      r2, [pc, #0xc] ; [0x2495c]=0x24461
0002494e f5e7       b        #0x2493c
00024950 71e6       b        #0x24636
00024952 0400       movs     r4, r0
00024954 bcfa       .byte    0xbc, 0xfa
00024956 0020       movs     r0, #0
00024958 314a       ldr      r2, [pc, #0xc4] ; [0x24a20]=0xbf00bd10
0002495a 0200       movs     r2, r0
0002495c 6144       add      r1, ip
0002495e 0200       movs     r2, r0
00024960 10b5       push     {r4, lr}
00024962 194b       ldr      r3, [pc, #0x64] ; [0x249c8]=0x200101dd
00024964 0024       movs     r4, #0
00024966 1c70       strb     r4, [r3]
00024968 184b       ldr      r3, [pc, #0x60] ; [0x249cc]=0x200101dc
0002496a 86b0       sub      sp, #0x18
0002496c 1c70       strb     r4, [r3]
0002496e 184b       ldr      r3, [pc, #0x60] ; [0x249d0]=0x24abd
00024970 0193       str      r3, [sp, #4]
00024972 184b       ldr      r3, [pc, #0x60] ; [0x249d4]=0x2449d
00024974 0293       str      r3, [sp, #8]
00024976 184b       ldr      r3, [pc, #0x60] ; [0x249d8]=0x2000fabb
00024978 8df80040   strb.w   r4, [sp]
0002497c 1b78       ldrb     r3, [r3]
0002497e 8df80c30   strb.w   r3, [sp, #0xc]
00024982 164b       ldr      r3, [pc, #0x58] ; [0x249dc]=0x25b35
00024984 0493       str      r3, [sp, #0x10]
00024986 6846       mov      r0, sp
00024988 154b       ldr      r3, [pc, #0x54] ; [0x249e0]=0x25bd1
0002498a 0593       str      r3, [sp, #0x14]
0002498c fbf7c8fa   bl       #0x1ff20
00024990 0346       mov      r3, r0
00024992 48b1       cbz      r0, #0x249a8
00024994 0720       movs     r0, #7
00024996 134a       ldr      r2, [pc, #0x4c] ; [0x249e4]=0x4e67d 'Failed to initialize rose: %u'
00024998 2146       mov      r1, r4
0002499a 12f0c7f8   bl       #0x36b2c
0002499e 2046       mov      r0, r4
000249a0 fff7c0ff   bl       #0x24924
000249a4 06b0       add      sp, #0x18
000249a6 10bd       pop      {r4, pc}
000249a8 0121       movs     r1, #1
000249aa 0720       movs     r0, #7
000249ac 0e4a       ldr      r2, [pc, #0x38] ; [0x249e8]=0x4e69b 'Initialized rose'
000249ae 12f0bdf8   bl       #0x36b2c
000249b2 fdf73ffc   bl       #0x22234
000249b6 0d48       ldr      r0, [pc, #0x34] ; [0x249ec]=0x200101e0
000249b8 0121       movs     r1, #1
000249ba 15f0d0fc   bl       #0x3a35e
000249be 0028       cmp      r0, #0
000249c0 f0d0       beq      #0x249a4
000249c2 03f0f9fb   bl       #0x281b8
000249c6 ede7       b        #0x249a4
000249c8 dd01       lsls     r5, r3, #7
000249ca 0120       movs     r0, #1
000249cc dc01       lsls     r4, r3, #7
000249ce 0120       movs     r0, #1
000249d0 bd4a       ldr      r2, [pc, #0x2f4] ; [0x24cc8]=0xf0112007
000249d2 0200       movs     r2, r0
000249d4 9d44       add      sp, r3
000249d6 0200       movs     r2, r0
000249d8 bbfa       .byte    0xbb, 0xfa
000249da 0020       movs     r0, #0
000249dc 355b       ldrh     r5, [r6, r4]
000249de 0200       movs     r2, r0
000249e0 d15b       ldrh     r1, [r2, r7]
000249e2 0200       movs     r2, r0
000249e4 7de6       b        #0x246e2
000249e6 0400       movs     r4, r0
000249e8 9be6       b        #0x24722
000249ea 0400       movs     r4, r0
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
00024bd0 01f050b9   b.w      #0x25e74
00024bd4 2046       mov      r0, r4
00024bd6 04b0       add      sp, #0x10
00024bd8 bde87040   pop.w    {r4, r5, r6, lr}
00024bdc 00f058bb   b.w      #0x25290
00024be0 2946       mov      r1, r5
00024be2 2046       mov      r0, r4
00024be4 04b0       add      sp, #0x10
00024be6 bde87040   pop.w    {r4, r5, r6, lr}
00024bea 00f097bb   b.w      #0x2531c
00024bee 2946       mov      r1, r5
00024bf0 2046       mov      r0, r4
00024bf2 04b0       add      sp, #0x10
00024bf4 bde87040   pop.w    {r4, r5, r6, lr}
00024bf8 00f064bc   b.w      #0x254c4
00024bfc 2946       mov      r1, r5
00024bfe 2046       mov      r0, r4
00024c00 04b0       add      sp, #0x10
00024c02 bde87040   pop.w    {r4, r5, r6, lr}
00024c06 00f099bc   b.w      #0x2553c
00024c0a 2946       mov      r1, r5
00024c0c 2046       mov      r0, r4
00024c0e 04b0       add      sp, #0x10
00024c10 bde87040   pop.w    {r4, r5, r6, lr}
00024c14 00f0dabc   b.w      #0x255cc
00024c18 2946       mov      r1, r5
00024c1a 2046       mov      r0, r4
00024c1c 04b0       add      sp, #0x10
00024c1e bde87040   pop.w    {r4, r5, r6, lr}
00024c22 00f0f9bc   b.w      #0x25618
00024c26 2046       mov      r0, r4
00024c28 04b0       add      sp, #0x10
00024c2a bde87040   pop.w    {r4, r5, r6, lr}
00024c2e fff75fbd   b.w      #0x246f0
00024c32 2946       mov      r1, r5
00024c34 2046       mov      r0, r4
00024c36 04b0       add      sp, #0x10
00024c38 bde87040   pop.w    {r4, r5, r6, lr}
00024c3c 00f02cbd   b.w      #0x25698
00024c40 2946       mov      r1, r5
00024c42 2046       mov      r0, r4
00024c44 04b0       add      sp, #0x10
00024c46 bde87040   pop.w    {r4, r5, r6, lr}
00024c4a 00f03bbb   b.w      #0x252c4
00024c4e 2946       mov      r1, r5
00024c50 2046       mov      r0, r4
00024c52 04b0       add      sp, #0x10
00024c54 bde87040   pop.w    {r4, r5, r6, lr}
00024c58 02f0e1b9   b.w      #0x2701e
00024c5c 2b68       ldr      r3, [r5]
00024c5e 0393       str      r3, [sp, #0xc]
00024c60 02f0bef9   bl       #0x26fe0
00024c64 039b       ldr      r3, [sp, #0xc]
00024c66 0090       str      r0, [sp]
00024c68 084a       ldr      r2, [pc, #0x20] ; [0x24c8c]=0x4e743 'No Handler - arg: %u, state %u'
00024c6a 0021       movs     r1, #0
00024c6c 0720       movs     r0, #7
00024c6e 11f05dff   bl       #0x36b2c
00024c72 04b0       add      sp, #0x10
00024c74 bde87040   pop.w    {r4, r5, r6, lr}
00024c78 13f00ebf   b.w      #0x38a98
00024c7c 04b0       add      sp, #0x10
00024c7e 70bd       pop      {r4, r5, r6, pc}
00024c80 05e7       b        #0x24a8e
00024c82 0400       movs     r4, r0
00024c84 4946       mov      r1, sb
00024c86 0200       movs     r2, r0
00024c88 23e7       b        #0x24ad2
00024c8a 0400       movs     r4, r0
00024c8c 43e7       b        #0x24b16
00024c8e 0400       movs     r4, r0
00024c90 13b5       push     {r0, r1, r4, lr}
00024c92 164a       ldr      r2, [pc, #0x58] ; [0x24cec]=0x4f385 'Deinitializing Rose'
00024c94 0720       movs     r0, #7
00024c96 0121       movs     r1, #1
00024c98 11f048ff   bl       #0x36b2c
00024c9c 00f08afd   bl       #0x257b4
00024ca0 4ff47a60   mov.w    r0, #0xfa0
00024ca4 fff7ccfe   bl       #0x24a40
00024ca8 30b1       cbz      r0, #0x24cb8
00024caa 0120       movs     r0, #1
00024cac 02f0a4f9   bl       #0x26ff8
00024cb0 0124       movs     r4, #1
00024cb2 2046       mov      r0, r4
00024cb4 02b0       add      sp, #8
00024cb6 10bd       pop      {r4, pc}
00024cb8 0190       str      r0, [sp, #4]
00024cba fcf7b5fd   bl       #0x21828
00024cbe 0199       ldr      r1, [sp, #4]
00024cc0 0446       mov      r4, r0
00024cc2 60b1       cbz      r0, #0x24cde
00024cc4 0346       mov      r3, r0
00024cc6 0a4a       ldr      r2, [pc, #0x28] ; [0x24cf0]=0x4e762 'Failed to send prepare for halt: 0x%x'
00024cc8 0720       movs     r0, #7
00024cca 11f02fff   bl       #0x36b2c
00024cce fff7e1fe   bl       #0x24a94
00024cd2 0199       ldr      r1, [sp, #4]
00024cd4 074a       ldr      r2, [pc, #0x1c] ; [0x24cf4]=0x24495
00024cd6 0846       mov      r0, r1
00024cd8 03f0a0fa   bl       #0x2821c
00024cdc e8e7       b        #0x24cb0
00024cde 064a       ldr      r2, [pc, #0x18] ; [0x24cf8]=0x4e788 'Sent prepare for halt'
00024ce0 0121       movs     r1, #1
00024ce2 0720       movs     r0, #7
00024ce4 11f022ff   bl       #0x36b2c
00024ce8 e3e7       b        #0x24cb2
00024cea 00bf       nop      
00024cec 85f30400   usat     r0, #4, r5
00024cf0 62e7       b        #0x24bb8
00024cf2 0400       movs     r4, r0
00024cf4 9544       add      sp, r2
00024cf6 0200       movs     r2, r0
00024cf8 88e7       b        #0x24c0c
00024cfa 0400       movs     r4, r0
00024cfc 08b5       push     {r3, lr}
00024cfe 0548       ldr      r0, [pc, #0x14] ; [0x24d14]=0x20010268
00024d00 42f21071   movw     r1, #0x2710
00024d04 15f02bfb   bl       #0x3a35e
00024d08 18b1       cbz      r0, #0x24d12
00024d0a bde80840   pop.w    {r3, lr}
00024d0e 03f053ba   b.w      #0x281b8
00024d12 08bd       pop      {r3, pc}
00024d14 6802       lsls     r0, r5, #9
00024d16 0120       movs     r0, #1
00024d18 08b5       push     {r3, lr}
00024d1a 0448       ldr      r0, [pc, #0x10] ; [0x24d2c]=0x20010268
00024d1c 15f012fb   bl       #0x3a344
00024d20 18b1       cbz      r0, #0x24d2a
00024d22 bde80840   pop.w    {r3, lr}
00024d26 03f047ba   b.w      #0x281b8
00024d2a 08bd       pop      {r3, pc}
00024d2c 6802       lsls     r0, r5, #9
00024d2e 0120       movs     r0, #1
00024d30 08b5       push     {r3, lr}
00024d32 0146       mov      r1, r0
00024d34 0448       ldr      r0, [pc, #0x10] ; [0x24d48]=0x20010220
00024d36 15f012fb   bl       #0x3a35e
00024d3a 18b1       cbz      r0, #0x24d44
00024d3c bde80840   pop.w    {r3, lr}
00024d40 03f03aba   b.w      #0x281b8
00024d44 08bd       pop      {r3, pc}
00024d46 00bf       nop      
00024d48 2002       lsls     r0, r4, #8
00024d4a 0120       movs     r0, #1
00024d4c 08b5       push     {r3, lr}
00024d4e 0448       ldr      r0, [pc, #0x10] ; [0x24d60]=0x20010220
00024d50 15f0f8fa   bl       #0x3a344
00024d54 18b1       cbz      r0, #0x24d5e
00024d56 bde80840   pop.w    {r3, lr}
00024d5a 03f02dba   b.w      #0x281b8
00024d5e 08bd       pop      {r3, pc}
00024d60 2002       lsls     r0, r4, #8
00024d62 0120       movs     r0, #1
00024d64 014b       ldr      r3, [pc, #4] ; [0x24d6c]=0x20010240
00024d66 1870       strb     r0, [r3]
00024d68 7047       bx       lr
00024d6a 00bf       nop      
00024d6c 4002       lsls     r0, r0, #9
00024d6e 0120       movs     r0, #1
00024d70 014b       ldr      r3, [pc, #4] ; [0x24d78]=0x20010240
00024d72 1878       ldrb     r0, [r3]
00024d74 7047       bx       lr
00024d76 00bf       nop      
00024d78 4002       lsls     r0, r0, #9
00024d7a 0120       movs     r0, #1
00024d7c 014b       ldr      r3, [pc, #4] ; [0x24d84]=0x2000faba
00024d7e 1878       ldrb     r0, [r3]
00024d80 7047       bx       lr
00024d82 00bf       nop      
00024d84 bafa       .byte    0xba, 0xfa
00024d86 0020       movs     r0, #0
00024d88 014b       ldr      r3, [pc, #4] ; [0x24d90]=0x2000faba
00024d8a 1870       strb     r0, [r3]
00024d8c 7047       bx       lr
00024d8e 00bf       nop      
00024d90 bafa       .byte    0xba, 0xfa
00024d92 0020       movs     r0, #0
00024d94 014b       ldr      r3, [pc, #4] ; [0x24d9c]=0x200101dc
00024d96 1878       ldrb     r0, [r3]
00024d98 7047       bx       lr
00024d9a 00bf       nop      
00024d9c dc01       lsls     r4, r3, #7
00024d9e 0120       movs     r0, #1
00024da0 014b       ldr      r3, [pc, #4] ; [0x24da8]=0x200101dd
00024da2 1878       ldrb     r0, [r3]
00024da4 7047       bx       lr
00024da6 00bf       nop      
00024da8 dd01       lsls     r5, r3, #7
00024daa 0120       movs     r0, #1
00024dac 024b       ldr      r3, [pc, #8] ; [0x24db8]=0x200101d8
00024dae 1868       ldr      r0, [r3]
00024db0 00b1       cbz      r0, #0x24db4
00024db2 0068       ldr      r0, [r0]
00024db4 7047       bx       lr
00024db6 00bf       nop      
00024db8 d801       lsls     r0, r3, #7
00024dba 0120       movs     r0, #1
00024dbc 10b5       push     {r4, lr}
00024dbe 0446       mov      r4, r0
00024dc0 0038       subs     r0, #0
00024dc2 0549       ldr      r1, [pc, #0x14] ; [0x24dd8]=0x4e79e 'rose_control.c'
00024dc4 4ff42872   mov.w    r2, #0x2a0
00024dc8 18bf       it       ne
00024dca 0120       movne    r0, #1
00024dcc 14f042ff   bl       #0x39c54
