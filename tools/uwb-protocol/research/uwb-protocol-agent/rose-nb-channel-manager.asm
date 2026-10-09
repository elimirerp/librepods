004292b0 0598       ldr      r0, [sp, #0x14]
004292b2 07e0       b        #0x4292c4
004292b4 8948       ldr      r0, [pc, #0x224] ; [0x4294dc]=0x10008908
004292b6 416a       ldr      r1, [r0, #0x24]
004292b8 0131       adds     r1, #1
004292ba 4162       str      r1, [r0, #0x24]
004292bc dde90501   ldrd     r0, r1, [sp, #0x14]
004292c0 012d       cmp      r5, #1
004292c2 04d9       bls      #0x4292ce
004292c4 2038       subs     r0, #0x20
004292c6 8549       ldr      r1, [pc, #0x214] ; [0x4294dc]=0x10008908
004292c8 33f03dfd   bl       #0x45cd46
004292cc 71e4       b        #0x428bb2
004292ce 0020       movs     r0, #0
004292d0 81f89900   strb.w   r0, [r1, #0x99]
004292d4 f5e5       b        #0x428ec2
004292d6 2322       movs     r2, #0x23
004292d8 86e6       b        #0x428fe8
004292da f222       movs     r2, #0xf2
004292dc 8de6       b        #0x428ffa
004292de 00bf       nop      
004292e0 653b       subs     r3, #0x65
004292e2 0410       asrs     r4, r0, #0x20
004292e4 1820       movs     r0, #0x18
004292e6 0040       ands     r0, r0
004292e8 103b       subs     r3, #0x10
004292ea 0410       asrs     r4, r0, #0x20
004292ec d63a       subs     r2, #0xd6
004292ee 0410       asrs     r4, r0, #0x20
004292f0 d5f80500   ldr.w    r0, [r5, #5]
004292f4 0d21       movs     r1, #0xd
004292f6 d146       mov      sb, sl
004292f8 4ff0000b   mov.w    fp, #0
004292fc 0023       movs     r3, #0
004292fe b0fbf1f1   udiv     r1, r0, r1
00429302 49f8121f   str      r1, [sb, #0x12]!
00429306 7449       ldr      r1, [pc, #0x1d0] ; [0x4294d8]=0x79e00
00429308 c9f804b0   str.w    fp, [sb, #4]
0042930c b0fbf1f0   udiv     r0, r0, r1
00429310 99f88c10   ldrb.w   r1, [sb, #0x8c]
00429314 c0b2       uxtb     r0, r0
00429316 40ea0122   orr.w    r2, r0, r1, lsl #8
0042931a 7448       ldr      r0, [pc, #0x1d0] ; [0x4294ec]=0x10043715
0042931c ff21       movs     r1, #0xff
0042931e 0af09fff   bl       #0x434260
00429322 6f48       ldr      r0, [pc, #0x1bc] ; [0x4294e0]=0x10008860
00429324 407a       ldrb     r0, [r0, #9]
00429326 0128       cmp      r0, #1
00429328 26d0       beq      #0x429378
0042932a 206d       ldr      r0, [r4, #0x50]
0042932c d9f80020   ldr.w    r2, [sb]
00429330 266c       ldr      r6, [r4, #0x40]
00429332 616d       ldr      r1, [r4, #0x54]
00429334 cdf818a0   str.w    sl, [sp, #0x18]
00429338 8018       adds     r0, r0, r2
0042933a d6f850a0   ldr.w    sl, [r6, #0x50]
0042933e d6f854b0   ldr.w    fp, [r6, #0x54]
00429342 a7f12702   sub.w    r2, r7, #0x27
00429346 3065       str      r0, [r6, #0x50]
00429348 41f10000   adc      r0, r1, #0
0042934c 3146       mov      r1, r6
0042934e 80b2       uxth     r0, r0
00429350 7065       str      r0, [r6, #0x54]
00429352 0120       movs     r0, #1
00429354 07f8270c   strb     r0, [r7, #-0x27]
00429358 6548       ldr      r0, [pc, #0x194] ; [0x4294f0]=0x42975d
0042935a fcf785fc   bl       #0x425c68
0042935e 17f8270c   ldrb     r0, [r7, #-0x27]
00429362 c6f850a0   str.w    sl, [r6, #0x50]
00429366 ddf818a0   ldr.w    sl, [sp, #0x18]
0042936a c6f854b0   str.w    fp, [r6, #0x54]
0042936e 4ff0000b   mov.w    fp, #0
00429372 0028       cmp      r0, #0
00429374 00f08d80   beq.w    #0x429492
00429378 6989       ldrh     r1, [r5, #0xa]
0042937a 687a       ldrb     r0, [r5, #9]
0042937c aa89       ldrh     r2, [r5, #0xc]
0042937e aaf80c10   strh.w   r1, [sl, #0xc]
00429382 8af80700   strb.w   r0, [sl, #7]
00429386 687c       ldrb     r0, [r5, #0x11]
00429388 aaf80020   strh.w   r2, [sl]
0042938c c4f85cb5   str.w    fp, [r4, #0x55c]
00429390 b5f80f60   ldrh.w   r6, [r5, #0xf]
00429394 ab7b       ldrb     r3, [r5, #0xe]
00429396 00f00100   and      r0, r0, #1
0042939a 8af8a400   strb.w   r0, [sl, #0xa4]
0042939e 22f0ff00   bic      r0, r2, #0xff
004293a2 aaf80260   strh.w   r6, [sl, #2]
004293a6 88f80030   strb.w   r3, [r8]
004293aa daf89e20   ldr.w    r2, [sl, #0x9e]
004293ae a0f50060   sub.w    r0, r0, #0x800
004293b2 33f0e9fc   bl       #0x45cd88
004293b6 88f80100   strb.w   r0, [r8, #1]
004293ba a87c       ldrb     r0, [r5, #0x12]
004293bc 8af82200   strb.w   r0, [sl, #0x22]
004293c0 b5f81300   ldrh.w   r0, [r5, #0x13]
004293c4 aaf82300   strh.w   r0, [sl, #0x23]
004293c8 41f60410   movw     r0, #0x1904
004293cc 2044       add      r0, r4
004293ce 00f0a3fa   bl       #0x429918
004293d2 b4f88810   ldrh.w   r1, [r4, #0x88]
004293d6 2046       mov      r0, r4
004293d8 fef720fd   bl       #0x427e1c
004293dc 2046       mov      r0, r4
004293de fff7d1f8   bl       #0x428584
004293e2 d9f80020   ldr.w    r2, [sb]
004293e6 0420       movs     r0, #4
004293e8 616d       ldr      r1, [r4, #0x54]
004293ea c4f88400   str.w    r0, [r4, #0x84]
004293ee 206d       ldr      r0, [r4, #0x50]
004293f0 a2f5c072   sub.w    r2, r2, #0x180
004293f4 8018       adds     r0, r0, r2
004293f6 41f10001   adc      r1, r1, #0
004293fa b0f51640   subs.w   r0, r0, #0x9600
004293fe a060       str      r0, [r4, #8]
00429400 4ff6ff70   movw     r0, #0xffff
00429404 4841       adcs     r0, r1
00429406 33f08eff   bl       #0x45d326
0042940a baf80020   ldrh.w   r2, [sl]
0042940e 3e48       ldr      r0, [pc, #0xf8] ; [0x429508]=0x10043b46
00429410 8021       movs     r1, #0x80
00429412 0023       movs     r3, #0
00429414 13e6       b        #0x42903e
00429416 ff20       movs     r0, #0xff
00429418 a873       strb     r0, [r5, #0xe]
0042941a c2b2       uxtb     r2, r0
0042941c ff21       movs     r1, #0xff
0042941e 0023       movs     r3, #0
00429420 04f5c076   add.w    r6, r4, #0x180
00429424 04f54f69   add.w    sb, r4, #0xcf0
00429428 4ff0000a   mov.w    sl, #0
0042942c 2d48       ldr      r0, [pc, #0xb4] ; [0x4294e4]=0x10043666
0042942e 0af017ff   bl       #0x434260
00429432 0698       ldr      r0, [sp, #0x18]
00429434 90f8a300   ldrb.w   r0, [r0, #0xa3]
00429438 0128       cmp      r0, #1
0042943a 03d1       bne      #0x429444
0042943c 687b       ldrb     r0, [r5, #0xd]
0042943e 40f00100   orr      r0, r0, #1
00429442 6873       strb     r0, [r5, #0xd]
00429444 0598       ldr      r0, [sp, #0x14]
00429446 b4f8f05c   ldrh.w   r5, [r4, #0xcf0]
0042944a a7f12a01   sub.w    r1, r7, #0x2a
0042944e 84f839a3   strb.w   sl, [r4, #0x339]
00429452 c4f884b1   str.w    fp, [r4, #0x184]
00429456 c4f88001   str.w    r0, [r4, #0x180]
0042945a 1120       movs     r0, #0x11
0042945c 33f072ff   bl       #0x45d344
00429460 37f82a1c   ldrh     r1, [r7, #-0x2a]
00429464 40f2fe70   movw     r0, #0x7fe
00429468 0840       ands     r0, r1
0042946a 3228       cmp      r0, #0x32
0042946c 04d3       blo      #0x429478
0042946e 1e48       ldr      r0, [pc, #0x78] ; [0x4294e8]=0x10005b88
00429470 b0f81d01   ldrh.w   r0, [r0, #0x11d]
00429474 a4f84203   strh.w   r0, [r4, #0x342]
00429478 0698       ldr      r0, [sp, #0x18]
0042947a 2946       mov      r1, r5
0042947c 3246       mov      r2, r6
0042947e 4088       ldrh     r0, [r0, #2]
00429480 f1f72efc   bl       #0x41ace0
00429484 c8f80c90   str.w    sb, [r8, #0xc]
00429488 c8f80460   str.w    r6, [r8, #4]
0042948c 0220       movs     r0, #2
0042948e fff796bb   b.w      #0x428bbe
00429492 2122       movs     r2, #0x21
00429494 a8e5       b        #0x428fe8
00429496 1948       ldr      r0, [pc, #0x64] ; [0x4294fc]=0x46f188 'nmir_task.c'
00429498 1a4a       ldr      r2, [pc, #0x68] ; [0x429504]=0x46f22e 'task->mixed_mms'
0042949a 40f24361   movw     r1, #0x643
0042949e 0ef091f8   bl       #0x4375c4
004294a2 1648       ldr      r0, [pc, #0x58] ; [0x4294fc]=0x46f188 'nmir_task.c'
004294a4 1a4a       ldr      r2, [pc, #0x68] ; [0x429510]=0x46f412 'task->mms_rx.status != HMD_RX_STATUS_SUCCESS'
004294a6 4ff4df61   mov.w    r1, #0x6f8
004294aa 0ef08bf8   bl       #0x4375c4
004294ae cde902aa   strd     sl, sl, [sp, #8]
004294b2 cde900aa   strd     sl, sl, [sp]
004294b6 40f24311   movw     r1, #0x143
004294ba 1048       ldr      r0, [pc, #0x40] ; [0x4294fc]=0x46f188 'nmir_task.c'
004294bc 134a       ldr      r2, [pc, #0x4c] ; [0x42950c]=0x46f194 'task->nb_channel_mgr.max_hops'
004294be 0ef08bf8   bl       #0x4375d8
004294c2 32f0b5fb   bl       #0x45bc30
004294c6 40f26c71   movw     r1, #0x76c
004294ca 0c48       ldr      r0, [pc, #0x30] ; [0x4294fc]=0x46f188 'nmir_task.c'
004294cc 0c4a       ldr      r2, [pc, #0x30] ; [0x429500]=0x4700bb
004294ce 0ef083f8   bl       #0x4375d8
004294d2 00bf       nop      
004294d4 da3b       subs     r3, #0xda
004294d6 0410       asrs     r4, r0, #0x20
004294d8 009e       ldr      r6, [sp]
004294da 0700       movs     r7, r0
004294dc 0889       ldrh     r0, [r1, #8]
004294de 0010       asrs     r0, r0, #0x20
004294e0 6088       ldrh     r0, [r4, #2]
004294e2 0010       asrs     r0, r0, #0x20
004294e4 6636       adds     r6, #0x66
004294e6 0410       asrs     r4, r0, #0x20
004294e8 885b       ldrh     r0, [r1, r6]
004294ea 0010       asrs     r0, r0, #0x20
004294ec 1537       adds     r7, #0x15
004294ee 0410       asrs     r4, r0, #0x20
004294f0 5d97       str      r7, [sp, #0x174]
004294f2 4200       lsls     r2, r0, #1
004294f4 844d       ldr      r5, [pc, #0x210] ; [0x429708]=0x1080f8b6
004294f6 0310       asrs     r3, r0, #0x20
004294f8 9f3b       subs     r3, #0x9f
004294fa 0410       asrs     r4, r0, #0x20
004294fc 88f1       .byte    0x88, 0xf1
004294fe 4600       lsls     r6, r0, #1
00429500 bb00       lsls     r3, r7, #2
00429502 4700       lsls     r7, r0, #1
00429504 2ef2       .byte    0x2e, 0xf2
00429506 4600       lsls     r6, r0, #1
00429508 463b       subs     r3, #0x46
0042950a 0410       asrs     r4, r0, #0x20
0042950c 94f1       .byte    0x94, 0xf1
0042950e 4600       lsls     r6, r0, #1
00429510 12f44600   ands     r0, r2, #0xc60000
00429514 f0b5       push     {r4, r5, r6, r7, lr}
00429516 03af       add      r7, sp, #0xc
00429518 2de9f007   push.w   {r4, r5, r6, r7, r8, sb, sl}
0042951c 0028       cmp      r0, #0
0042951e 7ad0       beq      #0x429616
00429520 0446       mov      r4, r0
00429522 0129       cmp      r1, #1
00429524 65d0       beq      #0x4295f2
00429526 0029       cmp      r1, #0
00429528 40f08180   bne.w    #0x42962e
0042952c d4f88400   ldr.w    r0, [r4, #0x84]
00429530 0928       cmp      r0, #9
00429532 76d1       bne      #0x429622
00429534 41f26c10   movw     r0, #0x116c
00429538 9246       mov      sl, r2
0042953a 1546       mov      r5, r2
0042953c 04eb0008   add.w    r8, r4, r0
00429540 42f62e20   movw     r0, #0x2a2e
00429544 04eb0009   add.w    sb, r4, r0
00429548 907b       ldrb     r0, [r2, #0xe]
0042954a 0028       cmp      r0, #0
0042954c 18bf       it       ne
0042954e 0120       movne    r0, #1
00429550 89f89900   strb.w   r0, [sb, #0x99]
00429554 d2f81330   ldr.w    r3, [r2, #0x13]
00429558 5af80f2f   ldr      r2, [sl, #0xf]!
0042955c 3948       ldr      r0, [pc, #0xe4] ; [0x429644]=0x10043789
0042955e 3a4e       ldr      r6, [pc, #0xe8] ; [0x429648]=0x434261
00429560 8021       movs     r1, #0x80
00429562 b047       blx      r6
00429564 32f0dffa   bl       #0x45bb26
00429568 3848       ldr      r0, [pc, #0xe0] ; [0x42964c]=0x100437b1
0042956a a821       movs     r1, #0xa8
0042956c b047       blx      r6
0042956e 99f89320   ldrb.w   r2, [sb, #0x93]
00429572 3748       ldr      r0, [pc, #0xdc] ; [0x429650]=0x100437f0
00429574 8021       movs     r1, #0x80
00429576 0023       movs     r3, #0
00429578 b047       blx      r6
0042957a 32f060fc   bl       #0x45be3e
0042957e 3548       ldr      r0, [pc, #0xd4] ; [0x429654]=0x1004381a
00429580 aa21       movs     r1, #0xaa
00429582 b047       blx      r6
00429584 42f65320   movw     r0, #0x2a53
00429588 5146       mov      r1, sl
0042958a 2522       movs     r2, #0x25
0042958c 33f024f9   bl       #0x45c7d8
00429590 42f67820   movw     r0, #0x2a78
00429594 2946       mov      r1, r5
00429596 1722       movs     r2, #0x17
00429598 33f01ef9   bl       #0x45c7d8
0042959c 98f88107   ldrb.w   r0, [r8, #0x781]
004295a0 0128       cmp      r0, #1
004295a2 07d1       bne      #0x4295b4
004295a4 f0f74efa   bl       #0x419a44
004295a8 0820       movs     r0, #8
004295aa c4f88400   str.w    r0, [r4, #0x84]
004295ae 98f88107   ldrb.w   r0, [r8, #0x781]
004295b2 68b9       cbnz     r0, #0x4295d0
004295b4 98f88007   ldrb.w   r0, [r8, #0x780]
004295b8 2028       cmp      r0, #0x20
004295ba 09d1       bne      #0x4295d0
004295bc d8f89808   ldr.w    r0, [r8, #0x898]
004295c0 32f07efd   bl       #0x45c0c0
004295c4 04f64870   addw     r0, r4, #0xf48
004295c8 f2f72cf8   bl       #0x41b624
004295cc c8f80000   str.w    r0, [r8]
004295d0 d8f89407   ldr.w    r0, [r8, #0x794]
004295d4 d8f89838   ldr.w    r3, [r8, #0x898]
004295d8 b9f80010   ldrh.w   r1, [sb]
004295dc 8279       ldrb     r2, [r0, #6]
004295de 0093       str      r3, [sp]
004295e0 04f64873   addw     r3, r4, #0xf48
004295e4 32f09bfe   bl       #0x45c31e
004295e8 98f88107   ldrb.w   r0, [r8, #0x781]
004295ec 58b1       cbz      r0, #0x429606
004295ee 33f047bc   b.w      #0x45ce80
004295f2 33f0bbfb   bl       #0x45cd6c
004295f6 1848       ldr      r0, [pc, #0x60] ; [0x429658]=0x10043c04
004295f8 04b0       add      sp, #0x10
004295fa bde80007   pop.w    {r8, sb, sl}
004295fe bde8f040   pop.w    {r4, r5, r6, r7, lr}
00429602 0af02dbe   b.w      #0x434260
00429606 2046       mov      r0, r4
00429608 04b0       add      sp, #0x10
0042960a bde80007   pop.w    {r8, sb, sl}
0042960e bde8f040   pop.w    {r4, r5, r6, r7, lr}
00429612 fef75fbf   b.w      #0x4284d4
00429616 1148       ldr      r0, [pc, #0x44] ; [0x42965c]=0x46f188 'nmir_task.c'
00429618 124a       ldr      r2, [pc, #0x48] ; [0x429664]=0x46f4ea 'task'
0042961a 40f27371   movw     r1, #0x773
0042961e 0df0d1ff   bl       #0x4375c4
00429622 0e48       ldr      r0, [pc, #0x38] ; [0x42965c]=0x46f188 'nmir_task.c'
00429624 104a       ldr      r2, [pc, #0x40] ; [0x429668]=0x46f1b2 'task->state == NMIR_S_W4_DSP_RESULT'
00429626 40f27641   movw     r1, #0x476
0042962a 0df0cbff   bl       #0x4375c4
0042962e d4f88400   ldr.w    r0, [r4, #0x84]
00429632 31f0e6fe   bl       #0x45b402
00429636 40f28171   movw     r1, #0x781
0042963a 0848       ldr      r0, [pc, #0x20] ; [0x42965c]=0x46f188 'nmir_task.c'
0042963c 084a       ldr      r2, [pc, #0x20] ; [0x429660]=0x4700bb
0042963e 0df0cbff   bl       #0x4375d8
00429642 00bf       nop      
00429644 8937       adds     r7, #0x89
00429646 0410       asrs     r4, r0, #0x20
00429648 6142       rsbs     r1, r4, #0
0042964a 4300       lsls     r3, r0, #1
0042964c b137       adds     r7, #0xb1
0042964e 0410       asrs     r4, r0, #0x20
00429650 f037       adds     r7, #0xf0
00429652 0410       asrs     r4, r0, #0x20
00429654 1a38       subs     r0, #0x1a
00429656 0410       asrs     r4, r0, #0x20
00429658 043c       subs     r4, #4
0042965a 0410       asrs     r4, r0, #0x20
0042965c 88f1       .byte    0x88, 0xf1
0042965e 4600       lsls     r6, r0, #1
00429660 bb00       lsls     r3, r7, #2
00429662 4700       lsls     r7, r0, #1
00429664 eaf4       .byte    0xea, 0xf4
00429666 4600       lsls     r6, r0, #1
00429668 b2f14600   subs.w   r0, r2, #0x46
0042966c 70b5       push     {r4, r5, r6, lr}
0042966e 069c       ldr      r4, [sp, #0x18]
00429670 dde904ec   ldrd     lr, ip, [sp, #0x10]
00429674 1218       adds     r2, r2, r0
00429676 41f10003   adc      r3, r1, #0
0042967a 14eb0e04   adds.w   r4, r4, lr
0042967e 4cf10005   adc      r5, ip, #0
00429682 beeb0006   subs.w   r6, lr, r0
00429686 7ceb0106   sbcs.w   r6, ip, r1
0042968a 06d3       blo      #0x42969a
0042968c b2eb0e06   subs.w   r6, r2, lr
00429690 73eb0c06   sbcs.w   r6, r3, ip
00429694 24bf       itt      hs
00429696 0120       movhs    r0, #1
00429698 70bd       pophs    {r4, r5, r6, pc}
0042969a 0026       movs     r6, #0
0042969c 121b       subs     r2, r2, r4
0042969e 73eb0502   sbcs.w   r2, r3, r5
004296a2 4ff00002   mov.w    r2, #0
004296a6 28bf       it       hs
004296a8 0122       movhs    r2, #1
004296aa 201a       subs     r0, r4, r0
004296ac 75eb0100   sbcs.w   r0, r5, r1
004296b0 28bf       it       hs
004296b2 0126       movhs    r6, #1
004296b4 06ea0200   and.w    r0, r6, r2
004296b8 70bd       pop      {r4, r5, r6, pc}
004296ba 00bf       nop      
