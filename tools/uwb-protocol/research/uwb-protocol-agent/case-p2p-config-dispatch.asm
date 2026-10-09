00024120 56e1       b        #0x243d0
00024122 0421       movs     r1, #4
00024124 2846       mov      r0, r5
00024126 17f009fa   bl       #0x3b53c
0002412a 0028       cmp      r0, #0
0002412c 00f07b81   beq.w    #0x24426
00024130 d4f81300   ldr.w    r0, [r4, #0x13]
00024134 d4f81710   ldr.w    r1, [r4, #0x17]
00024138 0122       movs     r2, #1
0002413a 01f08dfc   bl       #0x25a58
0002413e a37e       ldrb     r3, [r4, #0x1a]
00024140 0693       str      r3, [sp, #0x18]
00024142 637e       ldrb     r3, [r4, #0x19]
00024144 0593       str      r3, [sp, #0x14]
00024146 237e       ldrb     r3, [r4, #0x18]
00024148 0493       str      r3, [sp, #0x10]
0002414a e37d       ldrb     r3, [r4, #0x17]
0002414c 0393       str      r3, [sp, #0xc]
0002414e a37d       ldrb     r3, [r4, #0x16]
00024150 0293       str      r3, [sp, #8]
00024152 637d       ldrb     r3, [r4, #0x15]
00024154 0193       str      r3, [sp, #4]
00024156 237d       ldrb     r3, [r4, #0x14]
00024158 0093       str      r3, [sp]
0002415a e37c       ldrb     r3, [r4, #0x13]
0002415c 224a       ldr      r2, [pc, #0x88] ; [0x241e8]=0x4c0b1 'UWB MAC address: %x:%x:%x:%x:%x:%x:%x:%x'
0002415e 0121       movs     r1, #1
00024160 0f20       movs     r0, #0xf
00024162 12f0e3fc   bl       #0x36b2c
00024166 227c       ldrb     r2, [r4, #0x10]
00024168 e37b       ldrb     r3, [r4, #0xf]
0002416a 02f00301   and      r1, r2, #3
0002416e c2f38100   ubfx     r0, r2, #2, #2
00024172 c2f30116   ubfx     r6, r2, #4, #2
00024176 02f03002   and      r2, r2, #0x30
0002417a 0243       orrs     r2, r0
0002417c 0025       movs     r5, #0
0002417e cde90955   strd     r5, r5, [sp, #0x24]
00024182 8df82b20   strb.w   r2, [sp, #0x2b]
00024186 41f00802   orr      r2, r1, #8
0002418a 8df82520   strb.w   r2, [sp, #0x25]
0002418e 4422       movs     r2, #0x44
00024190 0b95       str      r5, [sp, #0x2c]
00024192 8df82430   strb.w   r3, [sp, #0x24]
00024196 8df82620   strb.w   r2, [sp, #0x26]
0002419a b4f81120   ldrh.w   r2, [r4, #0x11]
0002419e adf82920   strh.w   r2, [sp, #0x29]
000241a2 94b2       uxth     r4, r2
000241a4 0422       movs     r2, #4
000241a6 cde90110   strd     r1, r0, [sp, #4]
000241aa cde90362   strd     r6, r2, [sp, #0xc]
000241ae 0f20       movs     r0, #0xf
000241b0 0e4a       ldr      r2, [pc, #0x38] ; [0x241ec]=0x4e039 'Set Range Params: cc: %d intv=%ums chan=%d, acq_pre: 0x%x, track_pre: 0x%x, packet_type: %d'
000241b2 0094       str      r4, [sp]
000241b4 0121       movs     r1, #1
000241b6 12f0b9fc   bl       #0x36b2c
000241ba 09a8       add      r0, sp, #0x24
000241bc 01f0f4fe   bl       #0x25fa8
000241c0 2946       mov      r1, r5
000241c2 1d20       movs     r0, #0x1d
000241c4 aae7       b        #0x2411c
000241c6 00bf       nop      
000241c8 84d9       bls      #0x240d4
000241ca 0500       movs     r5, r0
000241cc 84df       svc      #0x84
000241ce 0400       movs     r4, r0
000241d0 00fc       .byte    0x00, 0xfc
000241d2 0020       movs     r0, #0
000241d4 b6df       svc      #0xb6
000241d6 0400       movs     r4, r0
000241d8 dee2       b        #0x24798
000241da 0400       movs     r4, r0
000241dc dedf       svc      #0xde
000241de 0400       movs     r4, r0
000241e0 05e0       b        #0x241ee
000241e2 0400       movs     r4, r0
000241e4 23e0       b        #0x2422e
000241e6 0400       movs     r4, r0
000241e8 b1c0       stm      r0!, {r0, r4, r5, r7}
000241ea 0400       movs     r4, r0
000241ec 39e0       b        #0x24262
000241ee 0400       movs     r4, r0
