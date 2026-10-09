00026d94 1fb5       push     {r0, r1, r2, r3, r4, lr}
00026d96 334b       ldr      r3, [pc, #0xcc] ; [0x26e64]=0x20011055
00026d98 0168       ldr      r1, [r0]
00026d9a 1a78       ldrb     r2, [r3]
00026d9c 132a       cmp      r2, #0x13
00026d9e 50d8       bhi      #0x26e42
00026da0 dfe802f0   tbb      [pc, r2] ; [0x26da4]=0x5c170a1a
00026da4 1a0a       lsrs     r2, r3, #8
00026da6 175c       ldrb     r7, [r2, r0]
00026da8 1c1e       subs     r4, r3, #0
00026daa 282a       cmp      r2, #0x28
00026dac 2c2e       cmp      r6, #0x2c
00026dae 303d       subs     r5, #0x30
00026db0 3f41       asrs     r7, r7
00026db2 4345       cmp      r3, r8
00026db4 474d       ldr      r5, [pc, #0x11c] ; [0x26ed4]=0x27962603
00026db6 494b       ldr      r3, [pc, #0x124] ; [0x26edc]=0x2801fc9b
00026db8 0391       str      r1, [sp, #0xc]
00026dba fdf7f1ff   bl       #0x24da0
00026dbe 0399       ldr      r1, [sp, #0xc]
00026dc0 0028       cmp      r0, #0
00026dc2 14bf       ite      ne
00026dc4 0420       movne    r0, #4
00026dc6 0520       moveq    r0, #5
00026dc8 05b0       add      sp, #0x14
00026dca 5df804eb   ldr      lr, [sp], #4
00026dce fff79fbe   b.w      #0x26b10
00026dd2 254b       ldr      r3, [pc, #0x94] ; [0x26e68]=0x20011057
00026dd4 0222       movs     r2, #2
00026dd6 1a70       strb     r2, [r3]
00026dd8 1b20       movs     r0, #0x1b
00026dda f5e7       b        #0x26dc8
00026ddc 0820       movs     r0, #8
00026dde f3e7       b        #0x26dc8
00026de0 224b       ldr      r3, [pc, #0x88] ; [0x26e6c]=0x2001105c
00026de2 234a       ldr      r2, [pc, #0x8c] ; [0x26e70]=0x26e79
00026de4 1960       str      r1, [r3]
00026de6 0021       movs     r1, #0
00026de8 0846       mov      r0, r1
00026dea 05b0       add      sp, #0x14
00026dec 5df804eb   ldr      lr, [sp], #4
00026df0 01f014ba   b.w      #0x2821c
00026df4 0d20       movs     r0, #0xd
00026df6 e7e7       b        #0x26dc8
00026df8 0e20       movs     r0, #0xe
00026dfa e5e7       b        #0x26dc8
00026dfc 0f20       movs     r0, #0xf
00026dfe e3e7       b        #0x26dc8
00026e00 1020       movs     r0, #0x10
00026e02 e1e7       b        #0x26dc8
00026e04 0391       str      r1, [sp, #0xc]
00026e06 fdf7cbff   bl       #0x24da0
00026e0a 0399       ldr      r1, [sp, #0xc]
00026e0c 18b9       cbnz     r0, #0x26e16
00026e0e fdf7c1ff   bl       #0x24d94
00026e12 0399       ldr      r1, [sp, #0xc]
00026e14 08b1       cbz      r0, #0x26e1a
00026e16 1320       movs     r0, #0x13
00026e18 d6e7       b        #0x26dc8
00026e1a 1220       movs     r0, #0x12
00026e1c d4e7       b        #0x26dc8
00026e1e 1420       movs     r0, #0x14
00026e20 d2e7       b        #0x26dc8
00026e22 1520       movs     r0, #0x15
00026e24 d0e7       b        #0x26dc8
00026e26 1620       movs     r0, #0x16
00026e28 cee7       b        #0x26dc8
00026e2a 1a20       movs     r0, #0x1a
00026e2c cce7       b        #0x26dc8
00026e2e 0520       movs     r0, #5
00026e30 cae7       b        #0x26dc8
00026e32 0c20       movs     r0, #0xc
00026e34 c8e7       b        #0x26dc8
00026e36 2120       movs     r0, #0x21
00026e38 c6e7       b        #0x26dc8
00026e3a 2220       movs     r0, #0x22
00026e3c c4e7       b        #0x26dc8
00026e3e 1f20       movs     r0, #0x1f
00026e40 c2e7       b        #0x26dc8
00026e42 1b78       ldrb     r3, [r3]
00026e44 0093       str      r3, [sp]
00026e46 0b4a       ldr      r2, [pc, #0x2c] ; [0x26e74]=0x4f4f0 'rose_event_with_status fault - status: %u, state %u'
00026e48 0b46       mov      r3, r1
00026e4a 0720       movs     r0, #7
00026e4c 0021       movs     r1, #0
00026e4e 0ff06dfe   bl       #0x36b2c
00026e52 05b0       add      sp, #0x14
00026e54 5df804eb   ldr      lr, [sp], #4
00026e58 11f01ebe   b.w      #0x38a98
00026e5c 05b0       add      sp, #0x14
00026e5e 5df804fb   ldr      pc, [sp], #4
00026e62 00bf       nop      
00026e64 5510       asrs     r5, r2, #1
00026e66 0120       movs     r0, #1
00026e68 5710       asrs     r7, r2, #1
00026e6a 0120       movs     r0, #1
00026e6c 5c10       asrs     r4, r3, #1
00026e6e 0120       movs     r0, #1
00026e70 796e       ldr      r1, [r7, #0x64]
00026e72 0200       movs     r2, r0
00026e74 f0f4       .byte    0xf0, 0xf4
00026e76 0400       movs     r4, r0
00026e78 024b       ldr      r3, [pc, #8] ; [0x26e84]=0x2001105c
00026e7a 0b20       movs     r0, #0xb
00026e7c 1968       ldr      r1, [r3]
00026e7e fff747be   b.w      #0x26b10
00026e82 00bf       nop      
00026e84 5c10       asrs     r4, r3, #1
00026e86 0120       movs     r0, #1
00026e88 08b5       push     {r3, lr}
00026e8a 0121       movs     r1, #1
00026e8c 0220       movs     r0, #2
00026e8e 044a       ldr      r2, [pc, #0x10] ; [0x26ea0]=0x4f524 'Deinit R1'
00026e90 0ff04cfe   bl       #0x36b2c
