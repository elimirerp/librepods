00025c64 414a       ldr      r2, [pc, #0x104] ; [0x25d6c]=0x4ed5d 'Failed to start timer'
00025c66 3146       mov      r1, r6
00025c68 10f060ff   bl       #0x36b2c
00025c6c 2846       mov      r0, r5
00025c6e 09b0       add      sp, #0x24
00025c70 bde8f043   pop.w    {r4, r5, r6, r7, r8, sb, lr}
00025c74 01f0c0b9   b.w      #0x26ff8
00025c78 3d4b       ldr      r3, [pc, #0xf4] ; [0x25d70]=0x2000fad3
00025c7a 1e78       ldrb     r6, [r3]
00025c7c 3eb1       cbz      r6, #0x25c8e
00025c7e 012e       cmp      r6, #1
00025c80 6ad0       beq      #0x25d58
00025c82 0146       mov      r1, r0
00025c84 3b4a       ldr      r2, [pc, #0xec] ; [0x25d74]=0x4edbe 'Invalid ranging mode'
00025c86 0720       movs     r0, #7
00025c88 10f050ff   bl       #0x36b2c
00025c8c 13e0       b        #0x25cb6
00025c8e 3a4b       ldr      r3, [pc, #0xe8] ; [0x25d78]=0x20011014
00025c90 1a78       ldrb     r2, [r3]
00025c92 002a       cmp      r2, #0
00025c94 5ed0       beq      #0x25d54
00025c96 2046       mov      r0, r4
00025c98 1e70       strb     r6, [r3]
00025c9a 15f058fc   bl       #0x3b54e
00025c9e 374d       ldr      r5, [pc, #0xdc] ; [0x25d7c]=0x20011012
00025ca0 4ff6ff72   movw     r2, #0xffff
00025ca4 9042       cmp      r0, r2
00025ca6 2880       strh     r0, [r5]
00025ca8 0fd1       bne      #0x25cca
00025caa 354a       ldr      r2, [pc, #0xd4] ; [0x25d80]=0x4ef16 'Invalid ranging conn handle. Default to 0'
00025cac 3146       mov      r1, r6
00025cae 0720       movs     r0, #7
00025cb0 10f03cff   bl       #0x36b2c
00025cb4 0824       movs     r4, #8
00025cb6 334a       ldr      r2, [pc, #0xcc] ; [0x25d84]=0x4ef88 'Failed to start ranging: 0x%x'
00025cb8 2346       mov      r3, r4
00025cba 0021       movs     r1, #0
00025cbc 0720       movs     r0, #7
00025cbe 10f035ff   bl       #0x36b2c
00025cc2 fef7e7fe   bl       #0x24a94
00025cc6 2046       mov      r0, r4
00025cc8 d1e7       b        #0x25c6e
00025cca 0df11601   add.w    r1, sp, #0x16
00025cce fff789fe   bl       #0x259e4
00025cd2 2d4e       ldr      r6, [pc, #0xb4] ; [0x25d88]=0x200145c0
00025cd4 2b88       ldrh     r3, [r5]
00025cd6 dff8c090   ldr.w    sb, [pc, #0xc0] ; [0x25d98]=0x20011016
00025cda 4ff06008   mov.w    r8, #0x60
00025cde 08fb0363   mla      r3, r8, r3, r6
00025ce2 0746       mov      r7, r0
00025ce4 d989       ldrh     r1, [r3, #0xe]
00025ce6 06a8       add      r0, sp, #0x18
00025ce8 1cf01cf9   bl       #0x41f24
00025cec 079b       ldr      r3, [sp, #0x1c]
00025cee 0293       str      r3, [sp, #8]
00025cf0 069b       ldr      r3, [sp, #0x18]
00025cf2 0193       str      r3, [sp, #4]
00025cf4 b9f80030   ldrh.w   r3, [sb]
00025cf8 0093       str      r3, [sp]
00025cfa 244a       ldr      r2, [pc, #0x90] ; [0x25d8c]=0x4ef40 'BT TimeSync params. Current EC: %d, Target EC: %d, Conn intv: %u.%02ums'
00025cfc bdf81630   ldrh.w   r3, [sp, #0x16]
00025d00 2146       mov      r1, r4
00025d02 0720       movs     r0, #7
00025d04 10f012ff   bl       #0x36b2c
00025d08 0fb1       cbz      r7, #0x25d0e
00025d0a 0724       movs     r4, #7
00025d0c d3e7       b        #0x25cb6
00025d0e bdf81630   ldrh.w   r3, [sp, #0x16]
00025d12 b9f80010   ldrh.w   r1, [sb]
00025d16 0333       adds     r3, #3
00025d18 8b42       cmp      r3, r1
00025d1a f6da       bge      #0x25d0a
00025d1c 2b88       ldrh     r3, [r5]
00025d1e 08fb0366   mla      r6, r8, r3, r6
00025d22 2846       mov      r0, r5
00025d24 f289       ldrh     r2, [r6, #0xe]
00025d26 faf753fb   bl       #0x203d0
00025d2a 0446       mov      r4, r0
00025d2c 0028       cmp      r0, #0
00025d2e c2d1       bne      #0x25cb6
00025d30 0320       movs     r0, #3
00025d32 19f041fc   bl       #0x3f5b8
00025d36 0423       movs     r3, #4
00025d38 1a46       mov      r2, r3
00025d3a 0094       str      r4, [sp]
00025d3c 2021       movs     r1, #0x20
00025d3e 0120       movs     r0, #1
00025d40 0ef016ff   bl       #0x34b70
00025d44 124a       ldr      r2, [pc, #0x48] ; [0x25d90]=0x4efa6 'Sent range start'
00025d46 0121       movs     r1, #1
00025d48 0720       movs     r0, #7
00025d4a 09b0       add      sp, #0x24
00025d4c bde8f043   pop.w    {r4, r5, r6, r7, r8, sb, lr}
00025d50 10f0ecbe   b.w      #0x36b2c
00025d54 1146       mov      r1, r2
00025d56 e6e7       b        #0x25d26
00025d58 0e48       ldr      r0, [pc, #0x38] ; [0x25d94]=0x20011018
00025d5a faf7d7fb   bl       #0x2050c
00025d5e e4e7       b        #0x25d2a
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
