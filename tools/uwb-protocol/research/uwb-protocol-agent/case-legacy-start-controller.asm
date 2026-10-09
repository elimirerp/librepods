000203d0 f8b5       push     {r3, r4, r5, r6, r7, lr}
000203d2 454d       ldr      r5, [pc, #0x114] ; [0x204e8]=0x2000fd30
000203d4 6b78       ldrb     r3, [r5, #1]
000203d6 082b       cmp      r3, #8
000203d8 2ded028b   vpush    {d8}
000203dc 0446       mov      r4, r0
000203de 0e46       mov      r6, r1
000203e0 1746       mov      r7, r2
000203e2 0bd0       beq      #0x203fc
000203e4 122b       cmp      r3, #0x12
000203e6 09d0       beq      #0x203fc
000203e8 404a       ldr      r2, [pc, #0x100] ; [0x204ec]=0x4bfdf 'invalid state for ranging: %u'
000203ea 0021       movs     r1, #0
000203ec 0720       movs     r0, #7
000203ee 16f09dfb   bl       #0x36b2c
000203f2 0824       movs     r4, #8
000203f4 bdec028b   vpop     {d8}
000203f8 2046       mov      r0, r4
000203fa f8bd       pop      {r3, r4, r5, r6, r7, pc}
000203fc ea78       ldrb     r2, [r5, #3]
000203fe 12f00101   ands     r1, r2, #1
00020402 02d1       bne      #0x2040a
00020404 1346       mov      r3, r2
00020406 3a4a       ldr      r2, [pc, #0xe8] ; [0x204f0]=0x4c1ab 'ranging config must be completed before ranging start (state: 0x%x)'
00020408 f0e7       b        #0x203ec
0002040a 122b       cmp      r3, #0x12
0002040c 1cbf       itt      ne
0002040e 2b8c       ldrhne   r3, [r5, #0x20]
00020410 a5f87030   strhne.w r3, [r5, #0x70]
00020414 002c       cmp      r4, #0
00020416 51d0       beq      #0x204bc
00020418 0b23       movs     r3, #0xb
0002041a 6b70       strb     r3, [r5, #1]
0002041c c5f80441   str.w    r4, [r5, #0x104]
00020420 01f020ff   bl       #0x22264
00020424 30f00804   bics     r4, r0, #8
00020428 0346       mov      r3, r0
0002042a 06d0       beq      #0x2043a
0002042c 314a       ldr      r2, [pc, #0xc4] ; [0x204f4]=0x4c1ef 'Error initializing timesync GPIO: 0x%x'
0002042e 0021       movs     r1, #0
00020430 0720       movs     r0, #7
00020432 16f07bfb   bl       #0x36b2c
00020436 1924       movs     r4, #0x19
00020438 dce7       b        #0x203f4
0002043a 3846       mov      r0, r7
0002043c 29f028f9   bl       #0x49690
00020440 2d4b       ldr      r3, [pc, #0xb4] ; [0x204f8]=0x3ff40000
00020442 0022       movs     r2, #0
00020444 29f09ef9   bl       #0x49784
00020448 29f06cfc   bl       #0x49d24
0002044c dfed2b7a   vldr     s15, [pc, #0xac] ; [0x204fc]=0x42b40000
00020450 08ee100a   vmov     s16, r0
00020454 c7ee887a   vdiv.f32 s15, s15, s16
00020458 17ee900a   vmov     r0, s15
0002045c 29f03af9   bl       #0x496d4
00020460 41ec100b   vmov     d0, r0, r1
00020464 28f050f8   bl       #0x48508
00020468 51ec100b   vmov     r0, r1, d0
0002046c 29f03afc   bl       #0x49ce4
00020470 234a       ldr      r2, [pc, #0x8c] ; [0x20500]=0x4c216 'ECs to subtract from target EC: %u'
00020472 0746       mov      r7, r0
00020474 0346       mov      r3, r0
00020476 2146       mov      r1, r4
00020478 0720       movs     r0, #7
0002047a 16f057fb   bl       #0x36b2c
0002047e 7b1e       subs     r3, r7, #1
00020480 07ee903a   vmov     s15, r3
00020484 f8ee677a   vcvt.f32.u32 s15, s15
00020488 67ee887a   vmul.f32 s15, s15, s16
0002048c 17ee900a   vmov     r0, s15
00020490 29f020f9   bl       #0x496d4
00020494 12a3       adr      r3, #0x48
00020496 d3e90023   ldrd     r2, r3, [r3]
0002049a 29f073f9   bl       #0x49784
0002049e 194b       ldr      r3, [pc, #0x64] ; [0x20504]=0x408f4000
000204a0 0022       movs     r2, #0
000204a2 29f06ff9   bl       #0x49784
000204a6 29f0a5fc   bl       #0x49df4
000204aa c5e91801   strd     r0, r1, [r5, #0x60]
000204ae f11b       subs     r1, r6, r7
000204b0 2b69       ldr      r3, [r5, #0x10]
000204b2 d5f80401   ldr.w    r0, [r5, #0x104]
000204b6 89b2       uxth     r1, r1
000204b8 9847       blx      r3
000204ba 9be7       b        #0x203f4
000204bc 0d23       movs     r3, #0xd
000204be 6b70       strb     r3, [r5, #1]
000204c0 01f0b8fe   bl       #0x22234
000204c4 1e20       movs     r0, #0x1e
000204c6 fcf7b9fb   bl       #0x1cc3c
000204ca 01f09bfe   bl       #0x22204
000204ce 0e4a       ldr      r2, [pc, #0x38] ; [0x20508]=0x4c239 'Sent diags timesync pulse from RoseStartRanging'
000204d0 0221       movs     r1, #2
000204d2 0720       movs     r0, #7
000204d4 16f02afb   bl       #0x36b2c
000204d8 8ce7       b        #0x203f4
000204da 00bf       nop      
000204dc aff30080   nop.w    
000204e0 3333       adds     r3, #0x33
000204e2 3333       adds     r3, #0x33
000204e4 3333       adds     r3, #0x33
000204e6 4340       eors     r3, r0
000204e8 30fd0020   ldc2     p0, c2, [r0, #-0]!
000204ec dfbf       itttt    le
000204ee 0400       movs     r4, r0
000204f0 abc1       stmle    r1!, {r0, r1, r3, r5, r7}
000204f2 0400       movs     r4, r0
000204f4 efc1       stmle    r1!, {r0, r1, r2, r3, r5, r6, r7}
000204f6 0400       movs     r4, r0
000204f8 0000       movs     r0, r0
000204fa f43f       subs     r7, #0xf4
000204fc 0000       movs     r0, r0
000204fe b442       cmp      r4, r6
00020500 16c2       stm      r2!, {r1, r2, r4}
00020502 0400       movs     r4, r0
00020504 0040       ands     r0, r0
00020506 8f40       lsls     r7, r1
00020508 39c2       stm      r2!, {r0, r3, r4, r5}
0002050a 0400       movs     r4, r0
