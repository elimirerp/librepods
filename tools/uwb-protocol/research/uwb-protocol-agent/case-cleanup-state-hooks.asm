00025d60 4a10       asrs     r2, r1, #1
00025d62 0120       movs     r0, #1
00025d64 d4fa       .byte    0xd4, 0xfa
00025d66 0020       movs     r0, #0
00025d68 3c10       asrs     r4, r7, #0x20
00025d6a 0120       movs     r0, #1
00025d6c 5ded0400   ldcl     p0, c0, [sp, #-0x10]
00025d70 d3fa       .byte    0xd3, 0xfa
00025d72 0020       movs     r0, #0
00025d74 beed0400   ldc      p0, c0, [lr, #0x10]!
00025d78 1410       asrs     r4, r2, #0x20
00025d7a 0120       movs     r0, #1
00025d7c 1210       asrs     r2, r2, #0x20
00025d7e 0120       movs     r0, #1
00025d80 16ef0400   vhadd.s16 d0, d6, d4
00025d84 88ef0400   vaddl.s8 q0, d8, d4
00025d88 c045       cmp      r8, r8
00025d8a 0120       movs     r0, #1
00025d8c 40ef0400   vhadd.s8 d16, d0, d4
00025d90 a6ef0400   vaddl.s32 q0, d6, d4
00025d94 1810       asrs     r0, r3, #0x20
00025d96 0120       movs     r0, #1
00025d98 1610       asrs     r6, r2, #0x20
00025d9a 0120       movs     r0, #1
00025d9c 37b5       push     {r0, r1, r2, r4, r5, lr}
00025d9e 4ff4fa60   mov.w    r0, #0x7d0
00025da2 fef74dfe   bl       #0x24a40
00025da6 0546       mov      r5, r0
00025da8 50b1       cbz      r0, #0x25dc0
00025daa 0720       movs     r0, #7
00025dac 1d4a       ldr      r2, [pc, #0x74] ; [0x25e24]=0x4ed5d 'Failed to start timer'
00025dae 0021       movs     r1, #0
00025db0 10f0bcfe   bl       #0x36b2c
00025db4 2846       mov      r0, r5
00025db6 03b0       add      sp, #0xc
00025db8 bde83040   pop.w    {r4, r5, lr}
00025dbc 01f01cb9   b.w      #0x26ff8
00025dc0 fbf71cf8   bl       #0x20dfc
