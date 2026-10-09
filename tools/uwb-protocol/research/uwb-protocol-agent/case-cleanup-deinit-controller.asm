00020dfc 10b5       push     {r4, lr}
00020dfe 304c       ldr      r4, [pc, #0xc0] ; [0x20ec0]=0x2000fd30
00020e00 a4b0       sub      sp, #0x90
00020e02 8822       movs     r2, #0x88
00020e04 0021       movs     r1, #0
00020e06 02a8       add      r0, sp, #8
00020e08 23f043fc   bl       #0x44692
00020e0c 2378       ldrb     r3, [r4]
00020e0e 3bb1       cbz      r3, #0x20e20
00020e10 0720       movs     r0, #7
00020e12 2c4a       ldr      r2, [pc, #0xb0] ; [0x20ec4]=0x4c6f0 'stop ranging not permitted in passthrough'
00020e14 0021       movs     r1, #0
00020e16 15f089fe   bl       #0x36b2c
00020e1a 0720       movs     r0, #7
00020e1c 24b0       add      sp, #0x90
00020e1e 10bd       pop      {r4, pc}
00020e20 6378       ldrb     r3, [r4, #1]
00020e22 294a       ldr      r2, [pc, #0xa4] ; [0x20ec8]=0x4c7dc 'state: %u'
00020e24 0121       movs     r1, #1
00020e26 0720       movs     r0, #7
00020e28 15f080fe   bl       #0x36b2c
00020e2c 6378       ldrb     r3, [r4, #1]
00020e2e a3f10a02   sub.w    r2, r3, #0xa
00020e32 0a2a       cmp      r2, #0xa
00020e34 1cd8       bhi      #0x20e70
00020e36 dfe802f0   tbb      [pc, r2] ; [0x20e38]=0x611f002
00020e3a 1106       lsls     r1, r2, #0x18
00020e3c 1111       asrs     r1, r2, #4
00020e3e 1b11       asrs     r3, r3, #4
00020e40 1122       movs     r2, #0x11
00020e42 151b       subs     r5, r2, r4
00020e44 2200       movs     r2, r4
00020e46 6369       ldr      r3, [r4, #0x14]
00020e48 d4f80401   ldr.w    r0, [r4, #0x104]
00020e4c 9847       blx      r3
00020e4e 01f02ffa   bl       #0x222b0
00020e52 1323       movs     r3, #0x13
00020e54 6370       strb     r3, [r4, #1]
00020e56 fbf71bff   bl       #0x1cc90
00020e5a dfe7       b        #0x20e1c
00020e5c 1323       movs     r3, #0x13
00020e5e 6370       strb     r3, [r4, #1]
00020e60 0020       movs     r0, #0
00020e62 dbe7       b        #0x20e1c
00020e64 194a       ldr      r2, [pc, #0x64] ; [0x20ecc]=0x4c71a 'aborting ranging retries'
00020e66 0121       movs     r1, #1
00020e68 0720       movs     r0, #7
00020e6a 15f05ffe   bl       #0x36b2c
00020e6e f0e7       b        #0x20e52
00020e70 174a       ldr      r2, [pc, #0x5c] ; [0x20ed0]=0x4c733 'invalid state to disable ranging: %u'
00020e72 0021       movs     r1, #0
00020e74 0720       movs     r0, #7
00020e76 15f059fe   bl       #0x36b2c
00020e7a 0820       movs     r0, #8
00020e7c cee7       b        #0x20e1c
00020e7e e378       ldrb     r3, [r4, #3]
