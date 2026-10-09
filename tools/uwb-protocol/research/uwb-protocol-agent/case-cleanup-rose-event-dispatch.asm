00026b10 2de9f347   push.w   {r0, r1, r4, r5, r6, r7, r8, sb, sl, lr}
00026b14 4e4c       ldr      r4, [pc, #0x138] ; [0x26c50]=0x20011055
00026b16 4f4a       ldr      r2, [pc, #0x13c] ; [0x26c54]=0x4f944
00026b18 2378       ldrb     r3, [r4]
00026b1a dff85881   ldr.w    r8, [pc, #0x158] ; [0x26c74]=0x4ff14
00026b1e 52f82090   ldr.w    sb, [r2, r0, lsl #2]
00026b22 58f82330   ldr.w    r3, [r8, r3, lsl #2]
00026b26 4c4a       ldr      r2, [pc, #0x130] ; [0x26c58]=0x4f3a4 'roseSmEventHandler | Current State %s Event %s'
00026b28 cdf80090   str.w    sb, [sp]
00026b2c 0746       mov      r7, r0
00026b2e 8a46       mov      sl, r1
00026b30 0720       movs     r0, #7
00026b32 0121       movs     r1, #1
00026b34 0ff0faff   bl       #0x36b2c
00026b38 484d       ldr      r5, [pc, #0x120] ; [0x26c5c]=0x4fb40
00026b3a 2378       ldrb     r3, [r4]
00026b3c 05ebc303   add.w    r3, r5, r3, lsl #3
00026b40 172f       cmp      r7, #0x17
00026b42 1979       ldrb     r1, [r3, #4]
00026b44 12d0       beq      #0x26b6c
00026b46 a7f11a03   sub.w    r3, r7, #0x1a
00026b4a 5a42       rsbs     r2, r3, #0
00026b4c 5a41       adcs     r2, r3
00026b4e 444b       ldr      r3, [pc, #0x110] ; [0x26c60]=0x20011081
00026b50 1b78       ldrb     r3, [r3]
00026b52 002b       cmp      r3, #0
00026b54 4bd0       beq      #0x26bee
00026b56 002a       cmp      r2, #0
00026b58 77d1       bne      #0x26c4a
00026b5a 424a       ldr      r2, [pc, #0x108] ; [0x26c64]=0x4f3d3 'Shutdown, Event Not Handled:%s'
00026b5c 4b46       mov      r3, sb
00026b5e 0121       movs     r1, #1
00026b60 0720       movs     r0, #7
00026b62 02b0       add      sp, #8
00026b64 bde8f047   pop.w    {r4, r5, r6, r7, r8, sb, sl, lr}
00026b68 0ff0e0bf   b.w      #0x36b2c
00026b6c 0122       movs     r2, #1
00026b6e eee7       b        #0x26b4e
00026b70 2278       ldrb     r2, [r4]
00026b72 55f83220   ldr.w    r2, [r5, r2, lsl #3]
00026b76 02ebc302   add.w    r2, r2, r3, lsl #3
00026b7a de00       lsls     r6, r3, #3
00026b7c 5268       ldr      r2, [r2, #4]
00026b7e 002a       cmp      r2, #0
00026b80 34d0       beq      #0x26bec
00026b82 2278       ldrb     r2, [r4]
00026b84 55f83220   ldr.w    r2, [r5, r2, lsl #3]
00026b88 12f83320   ldrb.w   r2, [r2, r3, lsl #3]
00026b8c ba42       cmp      r2, r7
00026b8e 27d1       bne      #0x26be0
00026b90 2378       ldrb     r3, [r4]
00026b92 55f83330   ldr.w    r3, [r5, r3, lsl #3]
00026b96 3344       add      r3, r6
00026b98 5146       mov      r1, sl
00026b9a 5b68       ldr      r3, [r3, #4]
00026b9c 3846       mov      r0, r7
00026b9e 9847       blx      r3
00026ba0 0028       cmp      r0, #0
00026ba2 32d0       beq      #0x26c0a
00026ba4 2378       ldrb     r3, [r4]
00026ba6 55f83330   ldr.w    r3, [r5, r3, lsl #3]
00026baa 3344       add      r3, r6
00026bac 9b78       ldrb     r3, [r3, #2]
00026bae 142b       cmp      r3, #0x14
00026bb0 48d0       beq      #0x26c44
00026bb2 2278       ldrb     r2, [r4]
00026bb4 2378       ldrb     r3, [r4]
00026bb6 0190       str      r0, [sp, #4]
00026bb8 55f83330   ldr.w    r3, [r5, r3, lsl #3]
00026bbc 3344       add      r3, r6
00026bbe 0121       movs     r1, #1
00026bc0 9b78       ldrb     r3, [r3, #2]
00026bc2 58f82330   ldr.w    r3, [r8, r3, lsl #2]
00026bc6 0093       str      r3, [sp]
00026bc8 0720       movs     r0, #7
00026bca 58f82230   ldr.w    r3, [r8, r2, lsl #2]
00026bce 264a       ldr      r2, [pc, #0x98] ; [0x26c68]=0x4f426 'roseSmEventHandler fail transition old %s new %s err %d'
00026bd0 0ff0acff   bl       #0x36b2c
00026bd4 2378       ldrb     r3, [r4]
00026bd6 55f83330   ldr.w    r3, [r5, r3, lsl #3]
00026bda 1e44       add      r6, r3
00026bdc b378       ldrb     r3, [r6, #2]
00026bde 30e0       b        #0x26c42
00026be0 2278       ldrb     r2, [r4]
00026be2 55f83220   ldr.w    r2, [r5, r2, lsl #3]
00026be6 925d       ldrb     r2, [r2, r6]
00026be8 002a       cmp      r2, #0
00026bea d1d0       beq      #0x26b90
00026bec 0133       adds     r3, #1
00026bee 9ab2       uxth     r2, r3
00026bf0 8a42       cmp      r2, r1
00026bf2 bdd3       blo      #0x26b70
00026bf4 2378       ldrb     r3, [r4]
00026bf6 1d4a       ldr      r2, [pc, #0x74] ; [0x26c6c]=0x4f45e 'roseSmEventHandler | Unhandled Event! Current State %s Event %s'
00026bf8 58f82330   ldr.w    r3, [r8, r3, lsl #2]
00026bfc cdf80090   str.w    sb, [sp]
00026c00 0021       movs     r1, #0
00026c02 0720       movs     r0, #7
00026c04 0ff092ff   bl       #0x36b2c
00026c08 1ce0       b        #0x26c44
00026c0a 2378       ldrb     r3, [r4]
00026c0c 55f83330   ldr.w    r3, [r5, r3, lsl #3]
00026c10 3344       add      r3, r6
00026c12 5b78       ldrb     r3, [r3, #1]
00026c14 142b       cmp      r3, #0x14
00026c16 15d0       beq      #0x26c44
00026c18 2278       ldrb     r2, [r4]
00026c1a 2378       ldrb     r3, [r4]
00026c1c 55f83330   ldr.w    r3, [r5, r3, lsl #3]
00026c20 3344       add      r3, r6
00026c22 0121       movs     r1, #1
00026c24 5b78       ldrb     r3, [r3, #1]
00026c26 58f82330   ldr.w    r3, [r8, r3, lsl #2]
00026c2a 0093       str      r3, [sp]
00026c2c 0720       movs     r0, #7
00026c2e 58f82230   ldr.w    r3, [r8, r2, lsl #2]
00026c32 0f4a       ldr      r2, [pc, #0x3c] ; [0x26c70]=0x4f3f2 'roseSmEventHandler success transition old %s new %s'
00026c34 0ff07aff   bl       #0x36b2c
00026c38 2378       ldrb     r3, [r4]
00026c3a 55f83330   ldr.w    r3, [r5, r3, lsl #3]
00026c3e 1e44       add      r6, r3
00026c40 7378       ldrb     r3, [r6, #1]
00026c42 2370       strb     r3, [r4]
00026c44 02b0       add      sp, #8
00026c46 bde8f087   pop.w    {r4, r5, r6, r7, r8, sb, sl, pc}
00026c4a 0023       movs     r3, #0
00026c4c cfe7       b        #0x26bee
00026c4e 00bf       nop      
00026c50 5510       asrs     r5, r2, #1
00026c52 0120       movs     r0, #1
00026c54 44f90400   vst4.8   {d16, d17, d18, d19}, [r4], r4
00026c58 a4f30400   usat16   r0, #4, r4
00026c5c 40fb0400   smlsd    r0, r0, r4, r0
00026c60 8110       asrs     r1, r0, #2
00026c62 0120       movs     r0, #1
00026c64 d3f3       .byte    0xd3, 0xf3
00026c66 0400       movs     r4, r0
00026c68 26f40400   bic      r0, r6, #0x840000
00026c6c 5ef40400   orrs     r0, lr, #0x840000
00026c70 f2f3       .byte    0xf2, 0xf3
00026c72 0400       movs     r4, r0
00026c74 14ff0400   vhadd.u16 d0, d4, d4
00026c78 37b5       push     {r0, r1, r2, r4, r5, lr}
00026c7a fff7f1fb   bl       #0x26460
00026c7e c8b9       cbnz     r0, #0x26cb4
00026c80 134b       ldr      r3, [pc, #0x4c] ; [0x26cd0]=0x20011050
00026c82 0190       str      r0, [sp, #4]
00026c84 1868       ldr      r0, [r3]
00026c86 13f0fbfa   bl       #0x3a280
00026c8a b0f57a6f   cmp.w    r0, #0xfa0
00026c8e 13d9       bls      #0x26cb8
00026c90 104c       ldr      r4, [pc, #0x40] ; [0x26cd4]=0x20011080
00026c92 0199       ldr      r1, [sp, #4]
00026c94 1720       movs     r0, #0x17
00026c96 fff73bff   bl       #0x26b10
00026c9a 2578       ldrb     r5, [r4]
00026c9c 0199       ldr      r1, [sp, #4]
00026c9e 022d       cmp      r5, #2
00026ca0 06d1       bne      #0x26cb0
00026ca2 0720       movs     r0, #7
00026ca4 0c4a       ldr      r2, [pc, #0x30] ; [0x26cd8]=0x4f49e 'Failed to wake up ST for ranging'
00026ca6 0ff041ff   bl       #0x36b2c
00026caa 2846       mov      r0, r5
00026cac fdf72af9   bl       #0x23f04
00026cb0 0023       movs     r3, #0
00026cb2 2370       strb     r3, [r4]
00026cb4 03b0       add      sp, #0xc
00026cb6 30bd       pop      {r4, r5, pc}
00026cb8 0848       ldr      r0, [pc, #0x20] ; [0x26cdc]=0x20011088
00026cba 6421       movs     r1, #0x64
00026cbc 13f04ffb   bl       #0x3a35e
00026cc0 0028       cmp      r0, #0
00026cc2 f7d0       beq      #0x26cb4
00026cc4 03b0       add      sp, #0xc
00026cc6 bde83040   pop.w    {r4, r5, lr}
00026cca 01f075ba   b.w      #0x281b8
00026cce 00bf       nop      
00026cd0 5010       asrs     r0, r2, #1
00026cd2 0120       movs     r0, #1
00026cd4 8010       asrs     r0, r0, #2
00026cd6 0120       movs     r0, #1
00026cd8 9ef40400   eors     r0, lr, #0x840000
00026cdc 8810       asrs     r0, r1, #2
00026cde 0120       movs     r0, #1
00026ce0 0021       movs     r1, #0
00026ce2 1b20       movs     r0, #0x1b
00026ce4 fff714bf   b.w      #0x26b10
00026ce8 0021       movs     r1, #0
00026cea 0320       movs     r0, #3
00026cec fff710bf   b.w      #0x26b10
00026cf0 08b5       push     {r3, lr}
00026cf2 0020       movs     r0, #0
00026cf4 fef736f8   bl       #0x24d64
00026cf8 bde80840   pop.w    {r3, lr}
00026cfc 0021       movs     r1, #0
00026cfe 0220       movs     r0, #2
00026d00 fff706bf   b.w      #0x26b10
00026d04 fff7f4bf   b.w      #0x26cf0
00026d08 0021       movs     r1, #0
00026d0a 0120       movs     r0, #1
00026d0c fff700bf   b.w      #0x26b10
00026d10 10b5       push     {r4, lr}
00026d12 074c       ldr      r4, [pc, #0x1c] ; [0x26d30]=0x20011080
00026d14 2078       ldrb     r0, [r4]
00026d16 20b1       cbz      r0, #0x26d22
00026d18 0021       movs     r1, #0
00026d1a fff7f9fe   bl       #0x26b10
00026d1e 0023       movs     r3, #0
00026d20 2370       strb     r3, [r4]
00026d22 bde81040   pop.w    {r4, lr}
00026d26 0021       movs     r1, #0
00026d28 1a20       movs     r0, #0x1a
00026d2a 11f06bbd   b.w      #0x38804
00026d2e 00bf       nop      
00026d30 8010       asrs     r0, r0, #2
00026d32 0120       movs     r0, #1
00026d34 0021       movs     r1, #0
00026d36 1820       movs     r0, #0x18
00026d38 fff7eabe   b.w      #0x26b10
00026d3c 08b5       push     {r3, lr}
00026d3e fef76ffd   bl       #0x25820
00026d42 28b1       cbz      r0, #0x26d50
00026d44 bde80840   pop.w    {r3, lr}
00026d48 0121       movs     r1, #1
00026d4a 2120       movs     r0, #0x21
00026d4c fff7e0be   b.w      #0x26b10
00026d50 08bd       pop      {r3, pc}
00026d52 0000       movs     r0, r0
00026d54 10b5       push     {r4, lr}
00026d56 0b4a       ldr      r2, [pc, #0x2c] ; [0x26d84]=0x4f4bf 'rose_booting_evt_boot_failed_sched_event_handler'
00026d58 0b4c       ldr      r4, [pc, #0x2c] ; [0x26d88]=0x20011080
00026d5a 0021       movs     r1, #0
00026d5c 0720       movs     r0, #7
00026d5e 0ff0e5fe   bl       #0x36b2c
00026d62 0021       movs     r1, #0
00026d64 1b20       movs     r0, #0x1b
00026d66 fff7d3fe   bl       #0x26b10
00026d6a 0121       movs     r1, #1
00026d6c 1a20       movs     r0, #0x1a
00026d6e 11f049fd   bl       #0x38804
00026d72 2378       ldrb     r3, [r4]
00026d74 022b       cmp      r3, #2
00026d76 02d1       bne      #0x26d7e
00026d78 0120       movs     r0, #1
00026d7a fdf7c3f8   bl       #0x23f04
00026d7e 0023       movs     r3, #0
00026d80 2370       strb     r3, [r4]
00026d82 10bd       pop      {r4, pc}
00026d84 bff4       .byte    0xbf, 0xf4
00026d86 0400       movs     r4, r0
00026d88 8010       asrs     r0, r0, #2
00026d8a 0120       movs     r0, #1
00026d8c 0021       movs     r1, #0
00026d8e 1120       movs     r0, #0x11
00026d90 fff7bebe   b.w      #0x26b10
