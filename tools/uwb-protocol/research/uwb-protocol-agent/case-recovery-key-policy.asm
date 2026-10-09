00037b54 064a       ldr      r2, [pc, #0x18] ; [0x37b70]=0x2001414c
00037b56 1c23       movs     r3, #0x1c
00037b58 12f8011b   ldrb     r1, [r2], #1
00037b5c 29b9       cbnz     r1, #0x37b6a
00037b5e 013b       subs     r3, #1
00037b60 fad1       bne      #0x37b58
00037b62 0120       movs     r0, #1
00037b64 80f00100   eor      r0, r0, #1
00037b68 7047       bx       lr
00037b6a 0020       movs     r0, #0
00037b6c fae7       b        #0x37b64
00037b6e 00bf       nop      
00037b70 4c41       adcs     r4, r1
00037b72 0120       movs     r0, #1
00037b74 f0b5       push     {r4, r5, r6, r7, lr}
00037b76 374e       ldr      r6, [pc, #0xdc] ; [0x37c54]=0x20014144
00037b78 374d       ldr      r5, [pc, #0xdc] ; [0x37c58]=0x20014000
00037b7a 3468       ldr      r4, [r6]
00037b7c 85b0       sub      sp, #0x14
00037b7e 0746       mov      r7, r0
00037b80 09f068fc   bl       #0x41454
00037b84 0346       mov      r3, r0
00037b86 20b3       cbz      r0, #0x37bd2
00037b88 d5f83220   ldr.w    r2, [r5, #0x32]
00037b8c 0092       str      r2, [sp]
00037b8e 0021       movs     r1, #0
00037b90 324a       ldr      r2, [pc, #0xc8] ; [0x37c5c]=0x5b86a 'could not rotate BA key (%x): index = %d, BA Key: '
00037b92 1f20       movs     r0, #0x1f
00037b94 fef7caff   bl       #0x36b2c
00037b98 09f028fc   bl       #0x413ec
00037b9c 0390       str      r0, [sp, #0xc]
00037b9e 09f03ffc   bl       #0x41420
00037ba2 039b       ldr      r3, [sp, #0xc]
00037ba4 2e4a       ldr      r2, [pc, #0xb8] ; [0x37c60]=0x5b89d 'remaining keys: BA = %d, Recovery = %d'
00037ba6 0090       str      r0, [sp]
00037ba8 0021       movs     r1, #0
00037baa 1f20       movs     r0, #0x1f
00037bac fef7beff   bl       #0x36b2c
