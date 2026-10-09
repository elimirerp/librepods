00020198 2de9f041   push.w   {r4, r5, r6, r7, r8, lr}
0002019c dff82882   ldr.w    r8, [pc, #0x228] ; [0x203c8]=0x2000fd30
000201a0 8ab0       sub      sp, #0x28
000201a2 1922       movs     r2, #0x19
000201a4 0021       movs     r1, #0
000201a6 0446       mov      r4, r0
000201a8 03a8       add      r0, sp, #0xc
000201aa 24f072fa   bl       #0x44692
000201ae 98f80130   ldrb.w   r3, [r8, #1]
000201b2 7d4a       ldr      r2, [pc, #0x1f4] ; [0x203a8]=0x4bfcd 'current state: %u'
000201b4 0221       movs     r1, #2
000201b6 0720       movs     r0, #7
000201b8 16f0b8fc   bl       #0x36b2c
000201bc 98f80130   ldrb.w   r3, [r8, #1]
000201c0 082b       cmp      r3, #8
000201c2 08d0       beq      #0x201d6
000201c4 0720       movs     r0, #7
000201c6 794a       ldr      r2, [pc, #0x1e4] ; [0x203ac]=0x4bfdf 'invalid state for ranging: %u'
000201c8 0021       movs     r1, #0
000201ca 16f0affc   bl       #0x36b2c
000201ce 0820       movs     r0, #8
000201d0 0ab0       add      sp, #0x28
000201d2 bde8f081   pop.w    {r4, r5, r6, r7, r8, pc}
000201d6 98f80010   ldrb.w   r1, [r8]
000201da 31b1       cbz      r1, #0x201ea
000201dc 0720       movs     r0, #7
000201de 744a       ldr      r2, [pc, #0x1d0] ; [0x203b0]=0x4c115 'RoseConfigurenBRanging not permitted in passthrough'
000201e0 0021       movs     r1, #0
000201e2 16f0a3fc   bl       #0x36b2c
000201e6 0720       movs     r0, #7
000201e8 f2e7       b        #0x201d0
000201ea 6378       ldrb     r3, [r4, #1]
000201ec c3f34202   ubfx     r2, r3, #1, #3
000201f0 13f0100f   tst.w    r3, #0x10
000201f4 8df80c20   strb.w   r2, [sp, #0xc]
000201f8 40f20472   movw     r2, #0x704
000201fc 40f60703   movw     r3, #0x807
00020200 4ff00105   mov.w    r5, #1
00020204 08bf       it       eq
00020206 1346       moveq    r3, r2
00020208 adf81250   strh.w   r5, [sp, #0x12]
0002020c adf80d30   strh.w   r3, [sp, #0xd]
00020210 2389       ldrh     r3, [r4, #8]
00020212 da0a       lsrs     r2, r3, #0xb
00020214 062a       cmp      r2, #6
00020216 8df81120   strb.w   r2, [sp, #0x11]
0002021a 05d1       bne      #0x20228
0002021c c3f30a03   ubfx     r3, r3, #0, #0xb
00020220 312b       cmp      r3, #0x31
00020222 32d8       bhi      #0x2028a
00020224 8df81150   strb.w   r5, [sp, #0x11]
00020228 9df81130   ldrb.w   r3, [sp, #0x11]
0002022c 012b       cmp      r3, #1
0002022e 00f09580   beq.w    #0x2035c
00020232 9a1e       subs     r2, r3, #2
00020234 032a       cmp      r2, #3
00020236 00f29a80   bhi.w    #0x2036e
0002023a a378       ldrb     r3, [r4, #2]
0002023c c3f30313   ubfx     r3, r3, #4, #4
00020240 8df80f30   strb.w   r3, [sp, #0xf]
00020244 e378       ldrb     r3, [r4, #3]
00020246 c3f30313   ubfx     r3, r3, #4, #4
0002024a 8df81030   strb.w   r3, [sp, #0x10]
0002024e 98f80330   ldrb.w   r3, [r8, #3]
00020252 584a       ldr      r2, [pc, #0x160] ; [0x203b4]=0x2000fd54
00020254 23f00103   bic      r3, r3, #1
00020258 88f80330   strb.w   r3, [r8, #3]
0002025c 04f11005   add.w    r5, r4, #0x10
00020260 2346       mov      r3, r4
00020262 1868       ldr      r0, [r3]
00020264 5968       ldr      r1, [r3, #4]
00020266 1446       mov      r4, r2
00020268 03c4       stm      r4!, {r0, r1}
0002026a 0833       adds     r3, #8
0002026c ab42       cmp      r3, r5
0002026e 2246       mov      r2, r4
00020270 f7d1       bne      #0x20262
00020272 1988       ldrh     r1, [r3]
00020274 9b78       ldrb     r3, [r3, #2]
00020276 a370       strb     r3, [r4, #2]
00020278 2180       strh     r1, [r4]
0002027a 0123       movs     r3, #1
0002027c 0921       movs     r1, #9
0002027e 03a8       add      r0, sp, #0xc
00020280 88f87830   strb.w   r3, [r8, #0x78]
00020284 fcf786fb   bl       #0x1c994
00020288 a2e7       b        #0x201d0
0002028a a3f13200   sub.w    r0, r3, #0x32
0002028e 82b2       uxth     r2, r0
00020290 c72a       cmp      r2, #0xc7
00020292 5dd8       bhi      #0x20350
00020294 29f00cfa   bl       #0x496b0
00020298 474b       ldr      r3, [pc, #0x11c] ; [0x203b8]=0x40040000
0002029a 0022       movs     r2, #0
0002029c 29f072fa   bl       #0x49784
000202a0 35a3       adr      r3, #0xd4
000202a2 d3e90023   ldrd     r2, r3, [r3]
000202a6 29f0b7f8   bl       #0x49418
000202aa 35a3       adr      r3, #0xd4
000202ac d3e90023   ldrd     r2, r3, [r3]
000202b0 0646       mov      r6, r0
000202b2 0f46       mov      r7, r1
000202b4 29f0ecfc   bl       #0x49c90
000202b8 58b1       cbz      r0, #0x202d2
000202ba 33a3       adr      r3, #0xcc
000202bc d3e90023   ldrd     r2, r3, [r3]
000202c0 3046       mov      r0, r6
000202c2 3946       mov      r1, r7
000202c4 29f0d0fc   bl       #0x49c68
000202c8 18b1       cbz      r0, #0x202d2
000202ca 0223       movs     r3, #2
000202cc 8df81130   strb.w   r3, [sp, #0x11]
000202d0 aae7       b        #0x20228
000202d2 2da3       adr      r3, #0xb4
000202d4 d3e90023   ldrd     r2, r3, [r3]
000202d8 3046       mov      r0, r6
000202da 3946       mov      r1, r7
000202dc 29f0d8fc   bl       #0x49c90
000202e0 48b1       cbz      r0, #0x202f6
000202e2 2ba3       adr      r3, #0xac
000202e4 d3e90023   ldrd     r2, r3, [r3]
000202e8 3046       mov      r0, r6
000202ea 3946       mov      r1, r7
000202ec 29f0bcfc   bl       #0x49c68
000202f0 08b1       cbz      r0, #0x202f6
000202f2 0323       movs     r3, #3
000202f4 eae7       b        #0x202cc
000202f6 26a3       adr      r3, #0x98
000202f8 d3e90023   ldrd     r2, r3, [r3]
000202fc 3046       mov      r0, r6
000202fe 3946       mov      r1, r7
00020300 29f0c6fc   bl       #0x49c90
00020304 48b1       cbz      r0, #0x2031a
00020306 24a3       adr      r3, #0x90
00020308 d3e90023   ldrd     r2, r3, [r3]
0002030c 3046       mov      r0, r6
0002030e 3946       mov      r1, r7
00020310 29f0aafc   bl       #0x49c68
00020314 08b1       cbz      r0, #0x2031a
00020316 0423       movs     r3, #4
00020318 d8e7       b        #0x202cc
0002031a 1fa3       adr      r3, #0x7c
0002031c d3e90023   ldrd     r2, r3, [r3]
00020320 3046       mov      r0, r6
00020322 3946       mov      r1, r7
00020324 29f0b4fc   bl       #0x49c90
00020328 48b1       cbz      r0, #0x2033e
0002032a 1da3       adr      r3, #0x74
0002032c d3e90023   ldrd     r2, r3, [r3]
00020330 3046       mov      r0, r6
00020332 3946       mov      r1, r7
00020334 29f098fc   bl       #0x49c68
00020338 08b1       cbz      r0, #0x2033e
0002033a 0523       movs     r3, #5
0002033c c6e7       b        #0x202cc
0002033e 0720       movs     r0, #7
00020340 cde90067   strd     r6, r7, [sp]
00020344 1d4a       ldr      r2, [pc, #0x74] ; [0x203bc]=0x4c149 'Calculated frequency outside of UNII-5 range. Freq: %f'
00020346 0021       movs     r1, #0
00020348 16f0f0fb   bl       #0x36b2c
0002034c 0920       movs     r0, #9
0002034e 3fe7       b        #0x201d0
00020350 1b4a       ldr      r2, [pc, #0x6c] ; [0x203c0]=0x4c180 'Invalid channel value: %u'
00020352 0720       movs     r0, #7
00020354 16f0eafb   bl       #0x36b2c
00020358 0120       movs     r0, #1
0002035a 39e7       b        #0x201d0
0002035c a378       ldrb     r3, [r4, #2]
0002035e c3f30303   ubfx     r3, r3, #0, #4
00020362 8df80f30   strb.w   r3, [sp, #0xf]
00020366 e378       ldrb     r3, [r4, #3]
00020368 c3f30303   ubfx     r3, r3, #0, #4
0002036c 6de7       b        #0x2024a
0002036e 154a       ldr      r2, [pc, #0x54] ; [0x203c4]=0x4c19a 'Invalid Band: %u'
00020370 0021       movs     r1, #0
00020372 eee7       b        #0x20352
00020374 aff30080   nop.w    
00020378 0000       movs     r0, r0
0002037a 0000       movs     r0, r0
0002037c 4026       movs     r6, #0x40
0002037e b740       lsls     r7, r6
00020380 0000       movs     r0, r0
00020382 0000       movs     r0, r0
00020384 0025       movs     r5, #0
00020386 b740       lsls     r7, r6
00020388 0000       movs     r0, r0
0002038a 0000       movs     r0, r0
0002038c 00a5       adr      r5, #0
0002038e b740       lsls     r7, r6
00020390 0000       movs     r0, r0
00020392 0000       movs     r0, r0
00020394 0025       movs     r5, #0
00020396 b840       lsls     r0, r7
00020398 0000       movs     r0, r0
0002039a 0000       movs     r0, r0
0002039c 00a5       adr      r5, #0
0002039e b840       lsls     r0, r7
000203a0 0000       movs     r0, r0
000203a2 0000       movs     r0, r0
000203a4 0024       movs     r4, #0
000203a6 b940       lsls     r1, r7
000203a8 cdbf       iteet    gt
000203aa 0400       movs     r4, r0
000203ac dfbf       itttt    le
000203ae 0400       movs     r4, r0
000203b0 15c1       stmle    r1!, {r0, r2, r4}
000203b2 0400       movs     r4, r0
000203b4 54fd0020   ldc2l    p0, c2, [r4, #-0]
000203b8 0000       movs     r0, r0
000203ba 0440       ands     r4, r0
000203bc 49c1       stm      r1!, {r0, r3, r6}
000203be 0400       movs     r4, r0
000203c0 80c1       stm      r1!, {r7}
000203c2 0400       movs     r4, r0
000203c4 9ac1       stm      r1!, {r1, r3, r4, r7}
000203c6 0400       movs     r4, r0
000203c8 30fd0020   ldc2     p0, c2, [r0, #-0]!
000203cc 0000       movs     r0, r0
000203ce 0000       movs     r0, r0
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
