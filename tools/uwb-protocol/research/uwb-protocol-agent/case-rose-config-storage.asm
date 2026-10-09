000259cc b80d       lsrs     r0, r7, #0x16
000259ce 0120       movs     r0, #1
000259d0 b40d       lsrs     r4, r6, #0x16
000259d2 0120       movs     r0, #1
000259d4 024b       ldr      r3, [pc, #8] ; [0x259e0]=0x20010d08
000259d6 0360       str      r3, [r0]
000259d8 9123       movs     r3, #0x91
000259da 8380       strh     r3, [r0, #4]
000259dc 7047       bx       lr
000259de 00bf       nop      
000259e0 080d       lsrs     r0, r1, #0x14
000259e2 0120       movs     r0, #1
000259e4 94df       svc      #0x94
000259e6 7047       bx       lr
000259e8 95df       svc      #0x95
000259ea 7047       bx       lr
000259ec 96df       svc      #0x96
000259ee 7047       bx       lr
000259f0 014b       ldr      r3, [pc, #4] ; [0x259f8]=0x2000fad4
000259f2 1878       ldrb     r0, [r3]
000259f4 7047       bx       lr
000259f6 00bf       nop      
000259f8 d4fa       .byte    0xd4, 0xfa
000259fa 0020       movs     r0, #0
000259fc 07b5       push     {r0, r1, r2, lr}
000259fe 074a       ldr      r2, [pc, #0x1c] ; [0x25a1c]=0x2000fad4
00025a00 1378       ldrb     r3, [r2]
00025a02 012b       cmp      r3, #1
00025a04 03d1       bne      #0x25a0e
00025a06 1070       strb     r0, [r2]
00025a08 03b0       add      sp, #0xc
00025a0a 5df804fb   ldr      pc, [sp], #4
00025a0e 0090       str      r0, [sp]
00025a10 034a       ldr      r2, [pc, #0xc] ; [0x25a20]=0x4ed3c 'Overloaded end reason: %u %u'
00025a12 0021       movs     r1, #0
00025a14 0720       movs     r0, #7
00025a16 11f089f8   bl       #0x36b2c
00025a1a f5e7       b        #0x25a08
00025a1c d4fa       .byte    0xd4, 0xfa
00025a1e 0020       movs     r0, #0
00025a20 3ced0400   ldc      p0, c0, [ip, #-0x10]!
00025a24 024a       ldr      r2, [pc, #8] ; [0x25a30]=0x20011016
00025a26 0023       movs     r3, #0
00025a28 1380       strh     r3, [r2]
00025a2a 024a       ldr      r2, [pc, #8] ; [0x25a34]=0x20011014
00025a2c 1370       strb     r3, [r2]
00025a2e 7047       bx       lr
00025a30 1610       asrs     r6, r2, #0x20
00025a32 0120       movs     r0, #1
00025a34 1410       asrs     r4, r2, #0x20
00025a36 0120       movs     r0, #1
00025a38 024b       ldr      r3, [pc, #8] ; [0x25a44]=0x20011016
00025a3a 1880       strh     r0, [r3]
00025a3c 024b       ldr      r3, [pc, #8] ; [0x25a48]=0x20011014
00025a3e 0122       movs     r2, #1
00025a40 1a70       strb     r2, [r3]
00025a42 7047       bx       lr
00025a44 1610       asrs     r6, r2, #0x20
00025a46 0120       movs     r0, #1
00025a48 1410       asrs     r4, r2, #0x20
00025a4a 0120       movs     r0, #1
00025a4c 014b       ldr      r3, [pc, #4] ; [0x25a54]=0x2000fad4
00025a4e 0122       movs     r2, #1
00025a50 1a70       strb     r2, [r3]
00025a52 7047       bx       lr
00025a54 d4fa       .byte    0xd4, 0xfa
00025a56 0020       movs     r0, #0
00025a58 034b       ldr      r3, [pc, #0xc] ; [0x25a68]=0x20011008
00025a5a c3e90001   strd     r0, r1, [r3]
00025a5e 034b       ldr      r3, [pc, #0xc] ; [0x25a6c]=0x20011049
00025a60 82f00102   eor      r2, r2, #1
00025a64 1a70       strb     r2, [r3]
00025a66 7047       bx       lr
00025a68 0810       asrs     r0, r1, #0x20
00025a6a 0120       movs     r0, #1
00025a6c 4910       asrs     r1, r1, #1
00025a6e 0120       movs     r0, #1
00025a70 f7b5       push     {r0, r1, r2, r4, r5, r6, r7, lr}
00025a72 41f27070   movw     r0, #0x1770
00025a76 fef7e3ff   bl       #0x24a40
00025a7a 0546       mov      r5, r0
00025a7c 50b1       cbz      r0, #0x25a94
00025a7e 0720       movs     r0, #7
00025a80 204a       ldr      r2, [pc, #0x80] ; [0x25b04]=0x4ed5d 'Failed to start timer'
00025a82 0021       movs     r1, #0
00025a84 11f052f8   bl       #0x36b2c
00025a88 2846       mov      r0, r5
00025a8a 03b0       add      sp, #0xc
00025a8c bde8f040   pop.w    {r4, r5, r6, r7, lr}
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
00025b48 3846       mov      r0, r7
00025b4a 05f091fa   bl       #0x2b070
00025b4e 0446       mov      r4, r0
00025b50 68b1       cbz      r0, #0x25b6e
00025b52 0346       mov      r3, r0
00025b54 1b4a       ldr      r2, [pc, #0x6c] ; [0x25bc4]=0x4ee10 'Range start failure. nrfx_ppi_channel_alloc err %d'
00025b56 0021       movs     r1, #0
00025b58 0720       movs     r0, #7
00025b5a 10f0e7ff   bl       #0x36b2c
00025b5e fef799ff   bl       #0x24a94
00025b62 2046       mov      r0, r4
00025b64 05b0       add      sp, #0x14
00025b66 bde8f040   pop.w    {r4, r5, r6, r7, lr}
00025b6a 01f045ba   b.w      #0x26ff8
00025b6e fcf7cbfb   bl       #0x22308
00025b72 cde90144   strd     r4, r4, [sp, #4]
00025b76 adf80c60   strh.w   r6, [sp, #0xc]
00025b7a 0126       movs     r6, #1
00025b7c adf80e60   strh.w   r6, [sp, #0xe]
00025b80 8068       ldr      r0, [r0, #8]
00025b82 04f0f3ff   bl       #0x2ab6c
00025b86 3b78       ldrb     r3, [r7]
00025b88 0290       str      r0, [sp, #8]
00025b8a 01a9       add      r1, sp, #4
00025b8c 2888       ldrh     r0, [r5]
00025b8e 8df80430   strb.w   r3, [sp, #4]
00025b92 fff729ff   bl       #0x259e8
00025b96 0546       mov      r5, r0
00025b98 60b1       cbz      r0, #0x25bb4
00025b9a 0346       mov      r3, r0
00025b9c 0a4a       ldr      r2, [pc, #0x28] ; [0x25bc8]=0x4ee43 'Range start failure: sd_ble_gap_conn_evt_trigger_start err %d'
00025b9e 2146       mov      r1, r4
00025ba0 0720       movs     r0, #7
00025ba2 10f0c3ff   bl       #0x36b2c
00025ba6 fef775ff   bl       #0x24a94
00025baa 2846       mov      r0, r5
00025bac 01f024fa   bl       #0x26ff8
00025bb0 05b0       add      sp, #0x14
00025bb2 f0bd       pop      {r4, r5, r6, r7, pc}
00025bb4 054b       ldr      r3, [pc, #0x14] ; [0x25bcc]=0x20011010
00025bb6 1e70       strb     r6, [r3]
00025bb8 fae7       b        #0x25bb0
00025bba 00bf       nop      
00025bbc 4810       asrs     r0, r1, #1
00025bbe 0120       movs     r0, #1
00025bc0 e9ed0400   stcl     p0, c0, [sb, #0x10]!
00025bc4 10ee0400   cdp      p0, #1, c0, c0, c4, #0
00025bc8 43ee0400   cdp      p0, #4, c0, c3, c4, #0
00025bcc 1010       asrs     r0, r2, #0x20
00025bce 0120       movs     r0, #1
00025bd0 38b5       push     {r3, r4, r5, lr}
00025bd2 0446       mov      r4, r0
00025bd4 144a       ldr      r2, [pc, #0x50] ; [0x25c28]=0x4ee81 'roseRangingConnectionEventTriggerStop'
00025bd6 0121       movs     r1, #1
00025bd8 0720       movs     r0, #7
00025bda 10f0a7ff   bl       #0x36b2c
00025bde 2088       ldrh     r0, [r4]
00025be0 fff704ff   bl       #0x259ec
00025be4 0446       mov      r4, r0
00025be6 28b1       cbz      r0, #0x25bf4
00025be8 0346       mov      r3, r0
00025bea 104a       ldr      r2, [pc, #0x40] ; [0x25c2c]=0x4eea7 'Range start failure: sd_ble_gap_conn_evt_trigger_stop err %d'
00025bec 0021       movs     r1, #0
00025bee 0720       movs     r0, #7
00025bf0 10f09cff   bl       #0x36b2c
00025bf4 0e4b       ldr      r3, [pc, #0x38] ; [0x25c30]=0x20011048
00025bf6 0f4d       ldr      r5, [pc, #0x3c] ; [0x25c34]=0x20011010
00025bf8 1878       ldrb     r0, [r3]
00025bfa 05f06dfa   bl       #0x2b0d8
00025bfe 0346       mov      r3, r0
00025c00 70b1       cbz      r0, #0x25c20
00025c02 0d4a       ldr      r2, [pc, #0x34] ; [0x25c38]=0x4eee4 'Range start failure. nrfx_ppi_channel_free err %d'
00025c04 0021       movs     r1, #0
00025c06 0720       movs     r0, #7
00025c08 10f090ff   bl       #0x36b2c
00025c0c fef742ff   bl       #0x24a94
00025c10 2b78       ldrb     r3, [r5]
00025c12 13b1       cbz      r3, #0x25c1a
00025c14 0320       movs     r0, #3
00025c16 01f0eff9   bl       #0x26ff8
00025c1a 0023       movs     r3, #0
00025c1c 2b70       strb     r3, [r5]
00025c1e 38bd       pop      {r3, r4, r5, pc}
00025c20 002c       cmp      r4, #0
00025c22 f3d1       bne      #0x25c0c
00025c24 f9e7       b        #0x25c1a
00025c26 00bf       nop      
00025c28 81ee0400   cdp      p0, #8, c0, c1, c4, #0
00025c2c a7ee0400   cdp      p0, #0xa, c0, c7, c4, #0
00025c30 4810       asrs     r0, r1, #1
00025c32 0120       movs     r0, #1
00025c34 1010       asrs     r0, r2, #0x20
00025c36 0120       movs     r0, #1
00025c38 e4ee0400   cdp      p0, #0xe, c0, c4, c4, #0
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
00025dc4 0446       mov      r4, r0
00025dc6 e0b1       cbz      r0, #0x25e02
00025dc8 174b       ldr      r3, [pc, #0x5c] ; [0x25e28]=0x10004
00025dca 9842       cmp      r0, r3
00025dcc 11d1       bne      #0x25df2
00025dce 174c       ldr      r4, [pc, #0x5c] ; [0x25e2c]=0x4f120
00025dd0 4ff47a40   mov.w    r0, #0xfa00
00025dd4 44f00104   orr      r4, r4, #1
00025dd8 a047       blx      r4
00025dda 4ff47a40   mov.w    r0, #0xfa00
00025dde a047       blx      r4
00025de0 134a       ldr      r2, [pc, #0x4c] ; [0x25e30]=0x4efb7 'Retrying Ranging stop after a 2 ms delay'
00025de2 2946       mov      r1, r5
00025de4 0720       movs     r0, #7
00025de6 10f0a1fe   bl       #0x36b2c
00025dea fbf707f8   bl       #0x20dfc
00025dee 0446       mov      r4, r0
00025df0 38b1       cbz      r0, #0x25e02
00025df2 0720       movs     r0, #7
00025df4 0f4a       ldr      r2, [pc, #0x3c] ; [0x25e34]=0x4efe0 'Failed to stop ranging: 0x%x'
00025df6 2346       mov      r3, r4
00025df8 0021       movs     r1, #0
00025dfa 10f097fe   bl       #0x36b2c
00025dfe 2046       mov      r0, r4
00025e00 d9e7       b        #0x25db6
00025e02 0023       movs     r3, #0
00025e04 0093       str      r3, [sp]
00025e06 0422       movs     r2, #4
00025e08 0523       movs     r3, #5
00025e0a 2021       movs     r1, #0x20
00025e0c 0120       movs     r0, #1
00025e0e 0ef0affe   bl       #0x34b70
00025e12 094a       ldr      r2, [pc, #0x24] ; [0x25e38]=0x4effd 'Sent ranging stop'
00025e14 0121       movs     r1, #1
00025e16 0720       movs     r0, #7
00025e18 03b0       add      sp, #0xc
00025e1a bde83040   pop.w    {r4, r5, lr}
00025e1e 10f085be   b.w      #0x36b2c
00025e22 00bf       nop      
00025e24 5ded0400   ldcl     p0, c0, [sp, #-0x10]
00025e28 0400       movs     r4, r0
00025e2a 0100       movs     r1, r0
00025e2c 20f1       .byte    0x20, 0xf1
00025e2e 0400       movs     r4, r0
00025e30 b7ef0400   vext.32  d0, d7, d4, #0
00025e34 e0ef0400   vaddl.s32 q8, d0, d4
00025e38 fdef0400   vext.32  d16, d13, d4, #0
00025e3c 0228       cmp      r0, #2
00025e3e 07b5       push     {r0, r1, r2, lr}
00025e40 0ad1       bne      #0x25e58
00025e42 0720       movs     r0, #7
00025e44 094a       ldr      r2, [pc, #0x24] ; [0x25e6c]=0x4f00f 'Range config complete'
00025e46 0121       movs     r1, #1
00025e48 10f070fe   bl       #0x36b2c
00025e4c 0020       movs     r0, #0
00025e4e 03b0       add      sp, #0xc
00025e50 5df804eb   ldr      lr, [sp], #4
00025e54 01f0d0b8   b.w      #0x26ff8
00025e58 0223       movs     r3, #2
00025e5a 0093       str      r3, [sp]
00025e5c 044a       ldr      r2, [pc, #0x10] ; [0x25e70]=0x4e549 'Invalid response %d - expected %d'
00025e5e 0346       mov      r3, r0
00025e60 0021       movs     r1, #0
00025e62 0720       movs     r0, #7
00025e64 10f062fe   bl       #0x36b2c
00025e68 0120       movs     r0, #1
00025e6a f0e7       b        #0x25e4e
00025e6c 0ff00400   and      r0, pc, #4
00025e70 49e5       b        #0x25906
00025e72 0400       movs     r4, r0
00025e74 30b5       push     {r4, r5, lr}
00025e76 0328       cmp      r0, #3
00025e78 87b0       sub      sp, #0x1c
00025e7a 0c46       mov      r4, r1
00025e7c 0ad1       bne      #0x25e94
00025e7e 414a       ldr      r2, [pc, #0x104] ; [0x25f84]=0x4f025 'Ranging complete'
00025e80 0720       movs     r0, #7
00025e82 0121       movs     r1, #1
00025e84 10f052fe   bl       #0x36b2c
00025e88 0020       movs     r0, #0
00025e8a 07b0       add      sp, #0x1c
00025e8c bde83040   pop.w    {r4, r5, lr}
00025e90 01f0b2b8   b.w      #0x26ff8
00025e94 0528       cmp      r0, #5
00025e96 1ad1       bne      #0x25ece
00025e98 0029       cmp      r1, #0
00025e9a 71d0       beq      #0x25f80
00025e9c 0846       mov      r0, r1
00025e9e fef799f8   bl       #0x23fd4
00025ea2 2288       ldrh     r2, [r4]
00025ea4 384b       ldr      r3, [pc, #0xe0] ; [0x25f88]=0x2001104a
00025ea6 4ab1       cbz      r2, #0x25ebc
00025ea8 1a78       ldrb     r2, [r3]
00025eaa 002a       cmp      r2, #0
00025eac 68d1       bne      #0x25f80
00025eae 0122       movs     r2, #1
00025eb0 1a70       strb     r2, [r3]
00025eb2 07b0       add      sp, #0x1c
00025eb4 bde83040   pop.w    {r4, r5, lr}
00025eb8 fef720bf   b.w      #0x24cfc
00025ebc 1978       ldrb     r1, [r3]
00025ebe 0029       cmp      r1, #0
00025ec0 5ed0       beq      #0x25f80
00025ec2 1a70       strb     r2, [r3]
00025ec4 07b0       add      sp, #0x1c
00025ec6 bde83040   pop.w    {r4, r5, lr}
00025eca fef725bf   b.w      #0x24d18
00025ece 1d28       cmp      r0, #0x1d
00025ed0 3dd1       bne      #0x25f4e
00025ed2 0029       cmp      r1, #0
00025ed4 54d0       beq      #0x25f80
00025ed6 8b89       ldrh     r3, [r1, #0xc]
00025ed8 2c4a       ldr      r2, [pc, #0xb0] ; [0x25f8c]=0x4f036 'RoseNBRangeResult status=%d cycleIdx=%d tofPs=%d soiRssi=%d soiRssi2=%d nbRxStatus|mmsRxStatus=0x%04x'
00025eda 5bba       rev16    r3, r3
00025edc 9bb2       uxth     r3, r3
00025ede 0493       str      r3, [sp, #0x10]
00025ee0 b1f90a30   ldrsh.w  r3, [r1, #0xa]
00025ee4 0393       str      r3, [sp, #0xc]
00025ee6 b1f90830   ldrsh.w  r3, [r1, #8]
00025eea 0293       str      r3, [sp, #8]
00025eec 4b68       ldr      r3, [r1, #4]
00025eee 0193       str      r3, [sp, #4]
00025ef0 4b88       ldrh     r3, [r1, #2]
00025ef2 0093       str      r3, [sp]
00025ef4 0b88       ldrh     r3, [r1]
00025ef6 0720       movs     r0, #7
00025ef8 0221       movs     r1, #2
00025efa 10f017fe   bl       #0x36b2c
00025efe 2388       ldrh     r3, [r4]
00025f00 234c       ldr      r4, [pc, #0x8c] ; [0x25f90]=0x2001103b
00025f02 b3b1       cbz      r3, #0x25f32
00025f04 602b       cmp      r3, #0x60
00025f06 14d0       beq      #0x25f32
00025f08 2378       ldrb     r3, [r4]
00025f0a 002b       cmp      r3, #0
00025f0c 38d1       bne      #0x25f80
00025f0e 214d       ldr      r5, [pc, #0x84] ; [0x25f94]=0x20011028
00025f10 214a       ldr      r2, [pc, #0x84] ; [0x25f98]=0x4f09c 'Start NB timeout timer (%us)'
00025f12 eb79       ldrb     r3, [r5, #7]
00025f14 0221       movs     r1, #2
00025f16 0720       movs     r0, #7
00025f18 10f008fe   bl       #0x36b2c
00025f1c 0123       movs     r3, #1
00025f1e 2370       strb     r3, [r4]
00025f20 eb79       ldrb     r3, [r5, #7]
00025f22 4ff47a70   mov.w    r0, #0x3e8
00025f26 5843       muls     r0, r3, r0
00025f28 07b0       add      sp, #0x1c
00025f2a bde83040   pop.w    {r4, r5, lr}
00025f2e fef7ffbe   b.w      #0x24d30
00025f32 2378       ldrb     r3, [r4]
00025f34 23b3       cbz      r3, #0x25f80
00025f36 194a       ldr      r2, [pc, #0x64] ; [0x25f9c]=0x4f0b9 'Stop NB timeout timer'
00025f38 0221       movs     r1, #2
00025f3a 0720       movs     r0, #7
00025f3c 10f0f6fd   bl       #0x36b2c
00025f40 0023       movs     r3, #0
00025f42 2370       strb     r3, [r4]
00025f44 07b0       add      sp, #0x1c
00025f46 bde83040   pop.w    {r4, r5, lr}
00025f4a fef7ffbe   b.w      #0x24d4c
00025f4e 0428       cmp      r0, #4
00025f50 08d1       bne      #0x25f64
00025f52 0d4b       ldr      r3, [pc, #0x34] ; [0x25f88]=0x2001104a
00025f54 1a78       ldrb     r2, [r3]
00025f56 1ab1       cbz      r2, #0x25f60
00025f58 0022       movs     r2, #0
00025f5a 1a70       strb     r2, [r3]
00025f5c fef7dcfe   bl       #0x24d18
00025f60 0f4a       ldr      r2, [pc, #0x3c] ; [0x25fa0]=0x4f0cf 'Ranging stopped'
00025f62 8de7       b        #0x25e80
00025f64 0523       movs     r3, #5
00025f66 0422       movs     r2, #4
00025f68 cde90132   strd     r3, r2, [sp, #4]
00025f6c 0323       movs     r3, #3
00025f6e 0093       str      r3, [sp]
00025f70 0c4a       ldr      r2, [pc, #0x30] ; [0x25fa4]=0x4f0df 'Invalid response %d - expected %d, %d or  %d'
00025f72 0346       mov      r3, r0
00025f74 0021       movs     r1, #0
00025f76 0720       movs     r0, #7
00025f78 10f0d8fd   bl       #0x36b2c
00025f7c 0120       movs     r0, #1
00025f7e 84e7       b        #0x25e8a
00025f80 07b0       add      sp, #0x1c
00025f82 30bd       pop      {r4, r5, pc}
00025f84 25f00400   bic      r0, r5, #4
00025f88 4a10       asrs     r2, r1, #1
00025f8a 0120       movs     r0, #1
00025f8c 36f00400   bics     r0, r6, #4
00025f90 3b10       asrs     r3, r7, #0x20
00025f92 0120       movs     r0, #1
00025f94 2810       asrs     r0, r5, #0x20
00025f96 0120       movs     r0, #1
00025f98 9cf00400   eors     r0, ip, #4
00025f9c b9f0       .byte    0xb9, 0xf0
00025f9e 0400       movs     r4, r0
00025fa0 cff0       .byte    0xcf, 0xf0
00025fa2 0400       movs     r4, r0
00025fa4 dff0       .byte    0xdf, 0xf0
00025fa6 0400       movs     r4, r0
00025fa8 10b5       push     {r4, lr}
00025faa 0446       mov      r4, r0
00025fac 0038       subs     r0, #0
00025fae 4ff4e472   mov.w    r2, #0x1c8
00025fb2 0849       ldr      r1, [pc, #0x20] ; [0x25fd4]=0x4f10c 'rose_ranging.c'
00025fb4 18bf       it       ne
00025fb6 0120       movne    r0, #1
00025fb8 13f04cfe   bl       #0x39c54
00025fbc 064a       ldr      r2, [pc, #0x18] ; [0x25fd8]=0x2001103c
00025fbe 2368       ldr      r3, [r4]
00025fc0 1360       str      r3, [r2]
00025fc2 6368       ldr      r3, [r4, #4]
00025fc4 5360       str      r3, [r2, #4]
00025fc6 a368       ldr      r3, [r4, #8]
00025fc8 9360       str      r3, [r2, #8]
00025fca 044b       ldr      r3, [pc, #0x10] ; [0x25fdc]=0x2000fad3
00025fcc 0022       movs     r2, #0
00025fce 1a70       strb     r2, [r3]
00025fd0 10bd       pop      {r4, pc}
00025fd2 00bf       nop      
00025fd4 0cf10400   add.w    r0, ip, #4
00025fd8 3c10       asrs     r4, r7, #0x20
00025fda 0120       movs     r0, #1
00025fdc d3fa       .byte    0xd3, 0xfa
00025fde 0020       movs     r0, #0
00025fe0 10b5       push     {r4, lr}
00025fe2 0446       mov      r4, r0
00025fe4 0038       subs     r0, #0
00025fe6 4ff4e872   mov.w    r2, #0x1d0
00025fea 18bf       it       ne
00025fec 0120       movne    r0, #1
00025fee 0a49       ldr      r1, [pc, #0x28] ; [0x26018]=0x4f10c 'rose_ranging.c'
00025ff0 13f030fe   bl       #0x39c54
00025ff4 094b       ldr      r3, [pc, #0x24] ; [0x2601c]=0x20011028
00025ff6 2046       mov      r0, r4
00025ff8 04f11002   add.w    r2, r4, #0x10
00025ffc 50f8041b   ldr      r1, [r0], #4
00026000 43f8041b   str      r1, [r3], #4
00026004 9042       cmp      r0, r2
00026006 f9d1       bne      #0x25ffc
00026008 0288       ldrh     r2, [r0]
0002600a 1a80       strh     r2, [r3]
0002600c 8278       ldrb     r2, [r0, #2]
0002600e 9a70       strb     r2, [r3, #2]
00026010 034b       ldr      r3, [pc, #0xc] ; [0x26020]=0x2000fad3
00026012 0122       movs     r2, #1
00026014 1a70       strb     r2, [r3]
00026016 10bd       pop      {r4, pc}
00026018 0cf10400   add.w    r0, ip, #4
0002601c 2810       asrs     r0, r5, #0x20
0002601e 0120       movs     r0, #1
00026020 d3fa       .byte    0xd3, 0xfa
00026022 0020       movs     r0, #0
00026024 10b5       push     {r4, lr}
00026026 0446       mov      r4, r0
00026028 0038       subs     r0, #0
0002602a 4ff4ec72   mov.w    r2, #0x1d8
0002602e 18bf       it       ne
00026030 0120       movne    r0, #1
00026032 0749       ldr      r1, [pc, #0x1c] ; [0x26050]=0x4f10c 'rose_ranging.c'
00026034 13f00efe   bl       #0x39c54
00026038 064b       ldr      r3, [pc, #0x18] ; [0x26054]=0x20011018
0002603a 2046       mov      r0, r4
0002603c 04f11002   add.w    r2, r4, #0x10
00026040 50f8041b   ldr      r1, [r0], #4
00026044 43f8041b   str      r1, [r3], #4
00026048 9042       cmp      r0, r2
0002604a f9d1       bne      #0x26040
0002604c 10bd       pop      {r4, pc}
0002604e 00bf       nop      
