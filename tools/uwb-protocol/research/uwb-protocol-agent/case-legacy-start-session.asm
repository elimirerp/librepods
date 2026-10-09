00025c3c 484b       ldr      r3, [pc, #0x120] ; [0x25d60]=0x2001104a
00025c3e 2de9f043   push.w   {r4, r5, r6, r7, r8, sb, lr}
00025c42 0026       movs     r6, #0
00025c44 1e70       strb     r6, [r3]
00025c46 474b       ldr      r3, [pc, #0x11c] ; [0x25d64]=0x2000fad4
00025c48 0124       movs     r4, #1
00025c4a 1c70       strb     r4, [r3]
00025c4c 464b       ldr      r3, [pc, #0x118] ; [0x25d68]=0x2001103c
00025c4e 1889       ldrh     r0, [r3, #8]
00025c50 5b89       ldrh     r3, [r3, #0xa]
00025c52 5843       muls     r0, r3, r0
00025c54 89b0       sub      sp, #0x24
00025c56 00f5fa50   add.w    r0, r0, #0x1f40
00025c5a fef7f1fe   bl       #0x24a40
00025c5e 0546       mov      r5, r0
00025c60 50b1       cbz      r0, #0x25c78
00025c62 0720       movs     r0, #7
00025c64 414a       ldr      r2, [pc, #0x104] ; [0x25d6c]=0x4ed5d 'Failed to start timer'
00025c66 3146       mov      r1, r6
00025c68 10f060ff   bl       #0x36b2c
00025c6c 2846       mov      r0, r5
00025c6e 09b0       add      sp, #0x24
00025c70 bde8f043   pop.w    {r4, r5, r6, r7, r8, sb, lr}
00025c74 01f0c0b9   b.w      #0x26ff8
