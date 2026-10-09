00038f00 ce41       rors     r6, r1
00038f02 0120       movs     r0, #1
00038f04 57bf       itett    pl
00038f06 0500       movs     r5, r0
00038f08 cf41       rormi    r7, r1
00038f0a 0120       movpl    r0, #1
00038f0c 1fb5       pushpl   {r0, r1, r2, r3, r4, lr}
00038f0e 07f009fd   bl       #0x40924
00038f12 1b4c       ldr      r4, [pc, #0x6c] ; [0x38f80]=0x200141d0
00038f14 0390       str      r0, [sp, #0xc]
00038f16 07f0e7fc   bl       #0x408e8
00038f1a 2278       ldrb     r2, [r4]
00038f1c 931e       subs     r3, r2, #2
00038f1e 5a42       rsbs     r2, r3, #0
00038f20 5a41       adcs     r2, r3
00038f22 cde90002   strd     r0, r2, [sp]
00038f26 039b       ldr      r3, [sp, #0xc]
00038f28 164a       ldr      r2, [pc, #0x58] ; [0x38f84]=0x5bf83 'Updating adv payload based on ST Case System Status, R Bud:%d, L Bud:%d, near_owner:%d'
00038f2a 0121       movs     r1, #1
00038f2c 1820       movs     r0, #0x18
00038f2e fdf7fdfd   bl       #0x36b2c
00038f32 2478       ldrb     r4, [r4]
00038f34 022c       cmp      r4, #2
00038f36 04d1       bne      #0x38f42
00038f38 04b0       add      sp, #0x10
00038f3a bde81040   pop.w    {r4, lr}
00038f3e fff7b7bf   b.w      #0x38eb0
00038f42 012c       cmp      r4, #1
00038f44 19d1       bne      #0x38f7a
00038f46 fef705fe   bl       #0x37b54
00038f4a 70b1       cbz      r0, #0x38f6a
00038f4c fef79afe   bl       #0x37c84
00038f50 0446       mov      r4, r0
00038f52 fef7adfe   bl       #0x37cb0
00038f56 0146       mov      r1, r0
00038f58 2046       mov      r0, r4
00038f5a 01f011fd   bl       #0x3a980
00038f5e 0420       movs     r0, #4
00038f60 04b0       add      sp, #0x10
00038f62 bde81040   pop.w    {r4, lr}
00038f66 01f0bfbb   b.w      #0x3a6e8
00038f6a 074a       ldr      r2, [pc, #0x1c] ; [0x38f88]=0x5bad2 'Using recovery key'
00038f6c 2146       mov      r1, r4
00038f6e 1820       movs     r0, #0x18
00038f70 fdf7dcfd   bl       #0x36b2c
00038f74 fef7acfe   bl       #0x37cd0
00038f78 eae7       b        #0x38f50
00038f7a 04b0       add      sp, #0x10
00038f7c 10bd       pop      {r4, pc}
00038f7e 00bf       nop      
00038f80 d041       rors     r0, r2
00038f82 0120       movs     r0, #1
00038f84 83bf       ittte    hi
00038f86 0500       movs     r5, r0
00038f88 d2ba       revshhi  r2, r2
00038f8a 0500       movs     r5, r0
00038f8c 014b       ldrls    r3, [pc, #4] ; [0x38f94]=0x20014330
00038f8e 1870       strb     r0, [r3]
00038f90 7047       bx       lr
00038f92 00bf       nop      
00038f94 3043       orrs     r0, r6
00038f96 0120       movs     r0, #1
00038f98 70b5       push     {r4, r5, r6, lr}
00038f9a 0546       mov      r5, r0
00038f9c f4f744fd   bl       #0x2da28
