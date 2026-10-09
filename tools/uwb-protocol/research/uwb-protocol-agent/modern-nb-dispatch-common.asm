00024020 97f90646   ldrsb.w  r4, [r7, #0x606]
00024024 a0b9       cbnz     r0, #0x24050
00024026 694a       ldr      r2, [pc, #0x1a4] ; [0x241cc]=0x4df84 'conn_handle 0x%x not FMNA paired, reject message.'
00024028 2b46       mov      r3, r5
0002402a 3146       mov      r1, r6
0002402c 0f20       movs     r0, #0xf
0002402e 12f07dfd   bl       #0x36b2c
00024032 674b       ldr      r3, [pc, #0x19c] ; [0x241d0]=0x2000fc00
00024034 1b68       ldr      r3, [r3]
00024036 0124       movs     r4, #1
00024038 da8f       ldrh     r2, [r3, #0x3e]
0002403a 0094       str      r4, [sp]
0002403c 4ff4e060   mov.w    r0, #0x700
00024040 3346       mov      r3, r6
00024042 2946       mov      r1, r5
00024044 18f0d6fb   bl       #0x3c7f4
00024048 2046       mov      r0, r4
0002404a 0fb0       add      sp, #0x3c
0002404c bde8f083   pop.w    {r4, r5, r6, r7, r8, sb, pc}
00024050 0521       movs     r1, #5
00024052 2846       mov      r0, r5
00024054 17f072fa   bl       #0x3b53c
00024058 0646       mov      r6, r0
0002405a 10b9       cbnz     r0, #0x24062
0002405c 5d4a       ldr      r2, [pc, #0x174] ; [0x241d4]=0x4dfb6 'conn_handle 0x%x not encrypted, reject.'
0002405e 2b46       mov      r3, r5
00024060 e3e7       b        #0x2402a
00024062 6189       ldrh     r1, [r4, #0xa]
00024064 b4f80d70   ldrh.w   r7, [r4, #0xd]
00024068 5b4a       ldr      r2, [pc, #0x16c] ; [0x241d8]=0x4e2de
0002406a 0139       subs     r1, #1
0002406c 0823       movs     r3, #8
0002406e 89b2       uxth     r1, r1
00024070 3846       mov      r0, r7
00024072 18f005fb   bl       #0x3c680
00024076 0646       mov      r6, r0
00024078 b8b1       cbz      r0, #0x240aa
0002407a 0346       mov      r3, r0
0002407c 574a       ldr      r2, [pc, #0x15c] ; [0x241dc]=0x4dfde 'Rx err 0x%x for op 0x%x, conn_hdl 0x%x'
0002407e cde90075   strd     r7, r5, [sp]
00024082 0021       movs     r1, #0
00024084 0f20       movs     r0, #0xf
00024086 12f051fd   bl       #0x36b2c
0002408a 514b       ldr      r3, [pc, #0x144] ; [0x241d0]=0x2000fc00
0002408c 1b68       ldr      r3, [r3]
0002408e da8f       ldrh     r2, [r3, #0x3e]
00024090 0096       str      r6, [sp]
00024092 4ff6ff73   movw     r3, #0xffff
00024096 9e42       cmp      r6, r3
00024098 14bf       ite      ne
0002409a 3b46       movne    r3, r7
0002409c 0023       moveq    r3, #0
0002409e 2946       mov      r1, r5
000240a0 4ff4e060   mov.w    r0, #0x700
000240a4 18f0a6fb   bl       #0x3c7f4
000240a8 92e1       b        #0x243d0
000240aa 3b46       mov      r3, r7
000240ac 0121       movs     r1, #1
000240ae 4c4a       ldr      r2, [pc, #0x130] ; [0x241e0]=0x4e005 'Rx Opcode: 0x%x conn_hdl 0x%x'
000240b0 0095       str      r5, [sp]
000240b2 0f20       movs     r0, #0xf
000240b4 12f03afd   bl       #0x36b2c
000240b8 6ff4e061   mvn      r1, #0x700
000240bc 7b18       adds     r3, r7, r1
000240be 0f2b       cmp      r3, #0xf
000240c0 00f2aa81   bhi.w    #0x24418
000240c4 dfe813f0   tbh      [pc, r3, lsl #1] ; [0x240c8]=0x2d0010
000240c8 1000       movs     r0, r2
000240ca 2d00       movs     r5, r5
000240cc 3e01       lsls     r6, r7, #4
000240ce 7001       lsls     r0, r6, #5
000240d0 8601       lsls     r6, r0, #6
000240d2 a801       lsls     r0, r5, #6
000240d4 a801       lsls     r0, r5, #6
000240d6 a801       lsls     r0, r5, #6
000240d8 a801       lsls     r0, r5, #6
000240da a801       lsls     r0, r5, #6
000240dc a801       lsls     r0, r5, #6
000240de a801       lsls     r0, r5, #6
000240e0 9400       lsls     r4, r2, #2
000240e2 5901       lsls     r1, r3, #5
000240e4 a801       lsls     r0, r5, #6
000240e6 9101       lsls     r1, r2, #6
000240e8 2b46       mov      r3, r5
000240ea 3e4a       ldr      r2, [pc, #0xf8] ; [0x241e4]=0x4e023 'R1 init. conn_hdl: %d'
000240ec 0121       movs     r1, #1
000240ee 0f20       movs     r0, #0xf
000240f0 12f01cfd   bl       #0x36b2c
000240f4 0420       movs     r0, #4
000240f6 17f02afa   bl       #0x3b54e
000240fa 4ff6ff73   movw     r3, #0xffff
000240fe 9842       cmp      r0, r3
00024100 02d0       beq      #0x24108
00024102 8542       cmp      r5, r0
00024104 40f08f81   bne.w    #0x24426
00024108 0421       movs     r1, #4
0002410a 0122       movs     r2, #1
0002410c 2846       mov      r0, r5
0002410e 17f0f7fa   bl       #0x3b700
00024112 0120       movs     r0, #1
00024114 00f010fb   bl       #0x24738
00024118 0021       movs     r1, #0
0002411a 1b20       movs     r0, #0x1b
0002411c 14f072fb   bl       #0x38804
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
