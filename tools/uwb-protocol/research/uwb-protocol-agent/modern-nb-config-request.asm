00025a90 01f0b2ba   b.w      #0x26ff8
00025a94 1c4f       ldr      r7, [pc, #0x70] ; [0x25b08]=0x2000fad3
00025a96 3e78       ldrb     r6, [r7]
00025a98 46b1       cbz      r6, #0x25aac
00025a9a 012e       cmp      r6, #1
00025a9c 1bd0       beq      #0x25ad6
00025a9e 0146       mov      r1, r0
00025aa0 1a4a       ldr      r2, [pc, #0x68] ; [0x25b0c]=0x4edbe 'Invalid ranging mode'
00025aa2 0720       movs     r0, #7
00025aa4 11f042f8   bl       #0x36b2c
00025aa8 0124       movs     r4, #1
00025aaa 10e0       b        #0x25ace
00025aac 184b       ldr      r3, [pc, #0x60] ; [0x25b10]=0x20011049
00025aae 1948       ldr      r0, [pc, #0x64] ; [0x25b14]=0x2001103c
00025ab0 1b78       ldrb     r3, [r3]
00025ab2 0093       str      r3, [sp]
00025ab4 184b       ldr      r3, [pc, #0x60] ; [0x25b18]=0x20011008
00025ab6 d3e90023   ldrd     r2, r3, [r3]
00025aba faf7bffa   bl       #0x2003c
00025abe 0446       mov      r4, r0
00025ac0 90b1       cbz      r0, #0x25ae8
00025ac2 164a       ldr      r2, [pc, #0x58] ; [0x25b1c]=0x4ed73 'Failed to send ranging config: 0x%x'
00025ac4 0346       mov      r3, r0
00025ac6 3146       mov      r1, r6
00025ac8 0720       movs     r0, #7
00025aca 11f02ff8   bl       #0x36b2c
00025ace fef7e1ff   bl       #0x24a94
00025ad2 2046       mov      r0, r4
00025ad4 d9e7       b        #0x25a8a
00025ad6 1248       ldr      r0, [pc, #0x48] ; [0x25b20]=0x20011028
00025ad8 faf75efb   bl       #0x20198
00025adc 0446       mov      r4, r0
00025ade 18b1       cbz      r0, #0x25ae8
00025ae0 104a       ldr      r2, [pc, #0x40] ; [0x25b24]=0x4ed97 'Failed to send NB ranging config: 0x%x'
00025ae2 0346       mov      r3, r0
00025ae4 2946       mov      r1, r5
00025ae6 efe7       b        #0x25ac8
00025ae8 3978       ldrb     r1, [r7]
00025aea 0f4a       ldr      r2, [pc, #0x3c] ; [0x25b28]=0x4a5bf
00025aec 0f4b       ldr      r3, [pc, #0x3c] ; [0x25b2c]=0x4ed59
00025aee 0129       cmp      r1, #1
00025af0 18bf       it       ne
00025af2 1346       movne    r3, r2
00025af4 0e4a       ldr      r2, [pc, #0x38] ; [0x25b30]=0x4edd3 'Sent ranging %sconfig'
00025af6 0121       movs     r1, #1
00025af8 0720       movs     r0, #7
00025afa 03b0       add      sp, #0xc
00025afc bde8f040   pop.w    {r4, r5, r6, r7, lr}
00025b00 11f014b8   b.w      #0x36b2c
00025b04 5ded0400   ldcl     p0, c0, [sp, #-0x10]
00025b08 d3fa       .byte    0xd3, 0xfa
00025b0a 0020       movs     r0, #0
00025b0c beed0400   ldc      p0, c0, [lr, #0x10]!
00025b10 4910       asrs     r1, r1, #1
00025b12 0120       movs     r0, #1
00025b14 3c10       asrs     r4, r7, #0x20
00025b16 0120       movs     r0, #1
00025b18 0810       asrs     r0, r1, #0x20
00025b1a 0120       movs     r0, #1
00025b1c 73ed0400   ldcl     p0, c0, [r3, #-0x10]!
00025b20 2810       asrs     r0, r5, #0x20
00025b22 0120       movs     r0, #1
00025b24 97ed0400   ldc      p0, c0, [r7, #0x10]
00025b28 bfa5       adr      r5, #0x2fc
00025b2a 0400       movs     r4, r0
00025b2c 59ed0400   ldcl     p0, c0, [sb, #-0x10]
00025b30 d3ed0400   ldcl     p0, c0, [r3, #0x10]
00025b34 f0b5       push     {r4, r5, r6, r7, lr}
00025b36 214f       ldr      r7, [pc, #0x84] ; [0x25bbc]=0x20011048
00025b38 214a       ldr      r2, [pc, #0x84] ; [0x25bc0]=0x4ede9 'roseRangingConnectionEventTriggerStart'
00025b3a 85b0       sub      sp, #0x14
00025b3c 0546       mov      r5, r0
00025b3e 0e46       mov      r6, r1
00025b40 0720       movs     r0, #7
00025b42 0121       movs     r1, #1
00025b44 10f0f2ff   bl       #0x36b2c
