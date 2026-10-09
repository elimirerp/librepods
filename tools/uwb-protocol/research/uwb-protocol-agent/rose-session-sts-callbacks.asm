00426480 c9f0       .byte    0xc9, 0xf0
00426482 4600       lsls     r6, r0, #1
00426484 feb5       push     {r1, r2, r3, r4, r5, r6, r7, lr}
00426486 06af       add      r7, sp, #0x18
00426488 c969       ldr      r1, [r1, #0x1c]
0042648a b1f1805f   cmp.w    r1, #0x10000000
0042648e 09d9       bls      #0x4264a4
00426490 36f032f8   bl       #0x45c4f8
00426494 05ab       add      r3, sp, #0x14
00426496 42f20170   movw     r0, #0x2701
0042649a faf793fc   bl       #0x420dc4
0042649e 48b9       cbnz     r0, #0x4264b4
004264a0 06b0       add      sp, #0x18
004264a2 80bd       pop      {r7, pc}
004264a4 36f06afe   bl       #0x45d17c
004264a8 40f2a721   movw     r1, #0x2a7
004264ac 0548       ldr      r0, [pc, #0x14] ; [0x4264c4]=0x46eefe 'ms.c'
004264ae 064a       ldr      r2, [pc, #0x18] ; [0x4264c8]=0x46f0df '(uint32_t)tx->common.ctx_arg > (0x10000000)'
004264b0 11f092f8   bl       #0x4375d8
004264b4 34f0a5ff   bl       #0x45b402
004264b8 40f2b221   movw     r1, #0x2b2
004264bc 0148       ldr      r0, [pc, #4] ; [0x4264c4]=0x46eefe 'ms.c'
004264be 034a       ldr      r2, [pc, #0xc] ; [0x4264cc]=0x46fc24 'status == FSM_OK'
004264c0 11f08af8   bl       #0x4375d8
004264c4 feee4600   cdp      p0, #0xf, c0, c14, c6, #2
004264c8 dff0       .byte    0xdf, 0xf0
004264ca 4600       lsls     r6, r0, #1
004264cc 24fc4600   stc2     p0, c0, [r4], #-0x118
004264d0 feb5       push     {r1, r2, r3, r4, r5, r6, r7, lr}
004264d2 06af       add      r7, sp, #0x18
004264d4 c969       ldr      r1, [r1, #0x1c]
004264d6 b1f1805f   cmp.w    r1, #0x10000000
004264da 09d9       bls      #0x4264f0
004264dc 36f00cf8   bl       #0x45c4f8
004264e0 05ab       add      r3, sp, #0x14
004264e2 42f20270   movw     r0, #0x2702
004264e6 faf76dfc   bl       #0x420dc4
004264ea 48b9       cbnz     r0, #0x426500
004264ec 06b0       add      sp, #0x18
004264ee 80bd       pop      {r7, pc}
004264f0 36f044fe   bl       #0x45d17c
004264f4 40f2bb21   movw     r1, #0x2bb
004264f8 0548       ldr      r0, [pc, #0x14] ; [0x426510]=0x46eefe 'ms.c'
004264fa 064a       ldr      r2, [pc, #0x18] ; [0x426514]=0x46f10b '(uint32_t)rx->common.ctx_arg > (0x10000000)'
004264fc 11f06cf8   bl       #0x4375d8
00426500 34f07fff   bl       #0x45b402
00426504 40f2c921   movw     r1, #0x2c9
00426508 0148       ldr      r0, [pc, #4] ; [0x426510]=0x46eefe 'ms.c'
0042650a 034a       ldr      r2, [pc, #0xc] ; [0x426518]=0x46fc24 'status == FSM_OK'
0042650c 11f064f8   bl       #0x4375d8
00426510 feee4600   cdp      p0, #0xf, c0, c14, c6, #2
00426514 0bf14600   add.w    r0, fp, #0x46
00426518 24fc4600   stc2     p0, c0, [r4], #-0x118
0042651c 80b5       push     {r7, lr}
0042651e 6f46       mov      r7, sp
00426520 a0b1       cbz      r0, #0x42654c
00426522 49b9       cbnz     r1, #0x426538
00426524 0f4b       ldr      r3, [pc, #0x3c] ; [0x426564]=0x10008870
00426526 5b68       ldr      r3, [r3, #4]
00426528 8342       cmp      r3, r0
0042652a 05d0       beq      #0x426538
0042652c 0e48       ldr      r0, [pc, #0x38] ; [0x426568]=0x10008908
0042652e 0168       ldr      r1, [r0]
00426530 09b9       cbnz     r1, #0x426536
00426532 407b       ldrb     r0, [r0, #0xd]
00426534 28b1       cbz      r0, #0x426542
00426536 80bd       pop      {r7, pc}
00426538 836b       ldr      r3, [r0, #0x38]
0042653a 6bb1       cbz      r3, #0x426558
0042653c bde88040   pop.w    {r7, lr}
00426540 1847       bx       r3
00426542 0120       movs     r0, #1
00426544 bde88040   pop.w    {r7, lr}
00426548 0df0f0b8   b.w      #0x43372c
0042654c 0748       ldr      r0, [pc, #0x1c] ; [0x42656c]=0x46eefe 'ms.c'
0042654e 084a       ldr      r2, [pc, #0x20] ; [0x426570]=0x46f4ea 'task'
00426550 40f2e321   movw     r1, #0x2e3
00426554 11f036f8   bl       #0x4375c4
00426558 0448       ldr      r0, [pc, #0x10] ; [0x42656c]=0x46eefe 'ms.c'
0042655a 064a       ldr      r2, [pc, #0x18] ; [0x426574]=0x46f137 'task->os_event_handler'
0042655c 40f2ed21   movw     r1, #0x2ed
00426560 11f030f8   bl       #0x4375c4
00426564 7088       ldrh     r0, [r6, #2]
00426566 0010       asrs     r0, r0, #0x20
00426568 0889       ldrh     r0, [r1, #8]
0042656a 0010       asrs     r0, r0, #0x20
0042656c feee4600   cdp      p0, #0xf, c0, c14, c6, #2
00426570 eaf4       .byte    0xea, 0xf4
00426572 4600       lsls     r6, r0, #1
00426574 37f1       .byte    0x37, 0xf1
00426576 4600       lsls     r6, r0, #1
00426578 f8b5       push     {r3, r4, r5, r6, r7, lr}
0042657a 04af       add      r7, sp, #0x10
0042657c 34f041ff   bl       #0x45b402
00426580 2b21       movs     r1, #0x2b
00426582 0248       ldr      r0, [pc, #8] ; [0x42658c]=0x46f14e 'ms_task.c'
00426584 024a       ldr      r2, [pc, #8] ; [0x426590]=0x4700bb
00426586 11f027f8   bl       #0x4375d8
0042658a 00bf       nop      
0042658c 4ef14600   adc      r0, lr, #0x46
00426590 bb00       lsls     r3, r7, #2
00426592 4700       lsls     r7, r0, #1
00426594 f8b5       push     {r3, r4, r5, r6, r7, lr}
00426596 04af       add      r7, sp, #0x10
00426598 34f033ff   bl       #0x45b402
0042659c 3221       movs     r1, #0x32
0042659e 0248       ldr      r0, [pc, #8] ; [0x4265a8]=0x46f14e 'ms_task.c'
004265a0 024a       ldr      r2, [pc, #8] ; [0x4265ac]=0x4700bb
004265a2 11f019f8   bl       #0x4375d8
004265a6 00bf       nop      
004265a8 4ef14600   adc      r0, lr, #0x46
004265ac bb00       lsls     r3, r7, #2
004265ae 4700       lsls     r7, r0, #1
004265b0 f8b5       push     {r3, r4, r5, r6, r7, lr}
004265b2 04af       add      r7, sp, #0x10
004265b4 34f025ff   bl       #0x45b402
004265b8 3721       movs     r1, #0x37
004265ba 0248       ldr      r0, [pc, #8] ; [0x4265c4]=0x46f14e 'ms_task.c'
004265bc 024a       ldr      r2, [pc, #8] ; [0x4265c8]=0x4700bb
004265be 11f00bf8   bl       #0x4375d8
004265c2 00bf       nop      
004265c4 4ef14600   adc      r0, lr, #0x46
004265c8 bb00       lsls     r3, r7, #2
004265ca 4700       lsls     r7, r0, #1
004265cc f8b5       push     {r3, r4, r5, r6, r7, lr}
004265ce 04af       add      r7, sp, #0x10
004265d0 34f017ff   bl       #0x45b402
004265d4 3c21       movs     r1, #0x3c
004265d6 0248       ldr      r0, [pc, #8] ; [0x4265e0]=0x46f14e 'ms_task.c'
004265d8 024a       ldr      r2, [pc, #8] ; [0x4265e4]=0x4700bb
004265da 10f0fdff   bl       #0x4375d8
004265de 00bf       nop      
004265e0 4ef14600   adc      r0, lr, #0x46
004265e4 bb00       lsls     r3, r7, #2
004265e6 4700       lsls     r7, r0, #1
004265e8 f8b5       push     {r3, r4, r5, r6, r7, lr}
004265ea 04af       add      r7, sp, #0x10
004265ec 34f079ff   bl       #0x45b4e2
004265f0 4121       movs     r1, #0x41
004265f2 0248       ldr      r0, [pc, #8] ; [0x4265fc]=0x46f14e 'ms_task.c'
004265f4 024a       ldr      r2, [pc, #8] ; [0x426600]=0x4700bb
004265f6 10f0efff   bl       #0x4375d8
004265fa 00bf       nop      
004265fc 4ef14600   adc      r0, lr, #0x46
00426600 bb00       lsls     r3, r7, #2
00426602 4700       lsls     r7, r0, #1
00426604 f8b5       push     {r3, r4, r5, r6, r7, lr}
00426606 04af       add      r7, sp, #0x10
00426608 34f06bff   bl       #0x45b4e2
0042660c 4621       movs     r1, #0x46
0042660e 0248       ldr      r0, [pc, #8] ; [0x426618]=0x46f14e 'ms_task.c'
00426610 024a       ldr      r2, [pc, #8] ; [0x42661c]=0x4700bb
00426612 10f0e1ff   bl       #0x4375d8
00426616 00bf       nop      
00426618 4ef14600   adc      r0, lr, #0x46
0042661c bb00       lsls     r3, r7, #2
0042661e 4700       lsls     r7, r0, #1
00426620 f8b5       push     {r3, r4, r5, r6, r7, lr}
00426622 04af       add      r7, sp, #0x10
00426624 34f05dff   bl       #0x45b4e2
00426628 4b21       movs     r1, #0x4b
0042662a 0248       ldr      r0, [pc, #8] ; [0x426634]=0x46f14e 'ms_task.c'
0042662c 024a       ldr      r2, [pc, #8] ; [0x426638]=0x4700bb
0042662e 10f0d3ff   bl       #0x4375d8
00426632 00bf       nop      
00426634 4ef14600   adc      r0, lr, #0x46
00426638 bb00       lsls     r3, r7, #2
0042663a 4700       lsls     r7, r0, #1
