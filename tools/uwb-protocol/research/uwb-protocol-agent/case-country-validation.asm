000233b0 06f01f06   and      r6, r6, #0x1f
000233b4 d5f88030   ldr.w    r3, [r5, #0x80]
000233b8 1849       ldr      r1, [pc, #0x60] ; [0x2341c]=0x2001008c
000233ba 3604       lsls     r6, r6, #0x10
000233bc 7a1c       adds     r2, r7, #1
000233be 03f46003   and      r3, r3, #0xe00000
000233c2 46f08046   orr      r6, r6, #0x40000000
000233c6 9200       lsls     r2, r2, #2
000233c8 1e43       orrs     r6, r3
000233ca 02f0fc02   and      r2, r2, #0xfc
000233ce 0420       movs     r0, #4
000233d0 c5f88060   str.w    r6, [r5, #0x80]
000233d4 fff716f8   bl       #0x22404
000233d8 0446       mov      r4, r0
000233da 0028       cmp      r0, #0
000233dc d0d1       bne      #0x23380
000233de 2b78       ldrb     r3, [r5]
000233e0 012b       cmp      r3, #1
000233e2 b8d9       bls      #0x23356
000233e4 044b       ldr      r3, [pc, #0x10] ; [0x233f8]=0x4d956 'RoseTransportReadRegister'
000233e6 0e4a       ldr      r2, [pc, #0x38] ; [0x23420]=0x4d61b '%s:success'
000233e8 0121       movs     r1, #1
000233ea 0720       movs     r0, #7
000233ec 13f09efb   bl       #0x36b2c
000233f0 b1e7       b        #0x23356
000233f2 00bf       nop      
000233f4 c8ff0020   vaddl.u8 q9, d8, d0
000233f8 56d9       bls      #0x234a8
000233fa 0400       movs     r4, r0
000233fc e2d8       bhi      #0x233c4
000233fe 0400       movs     r4, r0
00023400 f8d8       bhi      #0x233f4
00023402 0400       movs     r4, r0
00023404 46d8       bhi      #0x23494
00023406 0400       movs     r4, r0
00023408 88d7       bvc      #0x2331c
0002340a 0400       movs     r4, r0
0002340c 94da       bge      #0x23338
0002340e 0400       movs     r4, r0
00023410 4ed9       bls      #0x234b0
00023412 0400       movs     r4, r0
00023414 19d9       bls      #0x2344a
00023416 0400       movs     r4, r0
00023418 38d9       bls      #0x2348c
0002341a 0400       movs     r4, r0
0002341c 8c00       lsls     r4, r1, #2
0002341e 0120       movs     r0, #1
00023420 1bd6       bvs      #0x2345a
00023422 0400       movs     r4, r0
00023424 08b5       push     {r3, lr}
00023426 431e       subs     r3, r0, #1
00023428 042b       cmp      r3, #4
0002342a 07d9       bls      #0x2343c
0002342c 074a       ldr      r2, [pc, #0x1c] ; [0x2344c]=0x4db20 'invalid band: %u'
0002342e 0346       mov      r3, r0
00023430 0720       movs     r0, #7
00023432 0021       movs     r1, #0
00023434 13f07afb   bl       #0x36b2c
00023438 0020       movs     r0, #0
0002343a 08bd       pop      {r3, pc}
0002343c 0729       cmp      r1, #7
0002343e 02d9       bls      #0x23446
00023440 034a       ldr      r2, [pc, #0xc] ; [0x23450]=0x4db31 'invalid country code: %u'
00023442 0b46       mov      r3, r1
00023444 f4e7       b        #0x23430
00023446 0120       movs     r0, #1
00023448 f7e7       b        #0x2343a
0002344a 00bf       nop      
0002344c 20db       blt      #0x23490
0002344e 0400       movs     r4, r0
00023450 31db       blt      #0x234b6
00023452 0400       movs     r4, r0
00023454 73b5       push     {r0, r1, r4, r5, r6, lr}
00023456 134e       ldr      r6, [pc, #0x4c] ; [0x234a4]=0x20010148
00023458 0192       str      r2, [sp, #4]
0002345a 0446       mov      r4, r0
0002345c 3068       ldr      r0, [r6]
0002345e 0038       subs     r0, #0
00023460 18bf       it       ne
00023462 0120       movne    r0, #1
00023464 0d46       mov      r5, r1
00023466 2a22       movs     r2, #0x2a
00023468 0f49       ldr      r1, [pc, #0x3c] ; [0x234a8]=0x4db4a 'RosePowerTableNB.c'
0002346a 16f0f3fb   bl       #0x39c54
0002346e 2946       mov      r1, r5
00023470 2046       mov      r0, r4
00023472 fff7d7ff   bl       #0x23424
00023476 38b1       cbz      r0, #0x23488
00023478 019b       ldr      r3, [sp, #4]
0002347a 022b       cmp      r3, #2
0002347c 07d9       bls      #0x2348e
0002347e 0b4a       ldr      r2, [pc, #0x2c] ; [0x234ac]=0x4db5d 'invalid packet type: %u'
00023480 0021       movs     r1, #0
00023482 0720       movs     r0, #7
00023484 13f052fb   bl       #0x36b2c
00023488 0020       movs     r0, #0
0002348a 02b0       add      sp, #8
0002348c 70bd       pop      {r4, r5, r6, pc}
0002348e 3268       ldr      r2, [r6]
00023490 1668       ldr      r6, [r2]
00023492 2946       mov      r1, r5
00023494 1a46       mov      r2, r3
00023496 2046       mov      r0, r4
00023498 3346       mov      r3, r6
0002349a 02b0       add      sp, #8
0002349c bde87040   pop.w    {r4, r5, r6, lr}
000234a0 1847       bx       r3
000234a2 00bf       nop      
000234a4 4801       lsls     r0, r1, #5
000234a6 0120       movs     r0, #1
000234a8 4adb       blt      #0x23540
000234aa 0400       movs     r4, r0
000234ac 5ddb       blt      #0x2356a
000234ae 0400       movs     r4, r0
000234b0 70b5       push     {r4, r5, r6, lr}
000234b2 0c4e       ldr      r6, [pc, #0x30] ; [0x234e4]=0x20010148
000234b4 0446       mov      r4, r0
000234b6 3068       ldr      r0, [r6]
000234b8 0038       subs     r0, #0
000234ba 18bf       it       ne
000234bc 0120       movne    r0, #1
000234be 0d46       mov      r5, r1
000234c0 3c22       movs     r2, #0x3c
000234c2 0949       ldr      r1, [pc, #0x24] ; [0x234e8]=0x4db4a 'RosePowerTableNB.c'
000234c4 16f0c6fb   bl       #0x39c54
000234c8 2946       mov      r1, r5
000234ca 2046       mov      r0, r4
000234cc fff7aaff   bl       #0x23424
000234d0 30b1       cbz      r0, #0x234e0
000234d2 3368       ldr      r3, [r6]
000234d4 2946       mov      r1, r5
000234d6 2046       mov      r0, r4
000234d8 5b68       ldr      r3, [r3, #4]
000234da bde87040   pop.w    {r4, r5, r6, lr}
000234de 1847       bx       r3
000234e0 70bd       pop      {r4, r5, r6, pc}
000234e2 00bf       nop      
000234e4 4801       lsls     r0, r1, #5
000234e6 0120       movs     r0, #1
000234e8 4adb       blt      #0x23580
000234ea 0400       movs     r4, r0
000234ec 10b5       push     {r4, lr}
000234ee 0446       mov      r4, r0
000234f0 0038       subs     r0, #0
000234f2 0549       ldr      r1, [pc, #0x14] ; [0x23508]=0x4db4a 'RosePowerTableNB.c'
000234f4 4ff09c02   mov.w    r2, #0x9c
000234f8 18bf       it       ne
000234fa 0120       movne    r0, #1
000234fc 16f0aafb   bl       #0x39c54
00023500 024b       ldr      r3, [pc, #8] ; [0x2350c]=0x20010148
00023502 1c60       str      r4, [r3]
00023504 10bd       pop      {r4, pc}
00023506 00bf       nop      
00023508 4adb       blt      #0x235a0
0002350a 0400       movs     r4, r0
0002350c 4801       lsls     r0, r1, #5
0002350e 0120       movs     r0, #1
00023510 70b5       push     {r4, r5, r6, lr}
00023512 124e       ldr      r6, [pc, #0x48] ; [0x2355c]=0x2001014c
00023514 0446       mov      r4, r0
00023516 3068       ldr      r0, [r6]
00023518 0038       subs     r0, #0
0002351a 18bf       it       ne
0002351c 0120       movne    r0, #1
0002351e 0d46       mov      r5, r1
00023520 2322       movs     r2, #0x23
00023522 0f49       ldr      r1, [pc, #0x3c] ; [0x23560]=0x4db75 'RosePowerTableUWB.c'
00023524 16f096fb   bl       #0x39c54
00023528 072c       cmp      r4, #7
0002352a 08d9       bls      #0x2353e
0002352c 2346       mov      r3, r4
0002352e 0d4a       ldr      r2, [pc, #0x34] ; [0x23564]=0x4db89 'invalid country code: %d'
00023530 0021       movs     r1, #0
00023532 0720       movs     r0, #7
00023534 13f0fafa   bl       #0x36b2c
00023538 0024       movs     r4, #0
0002353a 2046       mov      r0, r4
0002353c 70bd       pop      {r4, r5, r6, pc}
0002353e 3368       ldr      r3, [r6]
00023540 2046       mov      r0, r4
00023542 1b68       ldr      r3, [r3]
00023544 2946       mov      r1, r5
00023546 9847       blx      r3
00023548 0446       mov      r4, r0
0002354a 0028       cmp      r0, #0
0002354c f5d1       bne      #0x2353a
0002354e 0146       mov      r1, r0
00023550 054a       ldr      r2, [pc, #0x14] ; [0x23568]=0x4db5d 'invalid packet type: %u'
00023552 2b46       mov      r3, r5
00023554 0720       movs     r0, #7
00023556 13f0e9fa   bl       #0x36b2c
0002355a eee7       b        #0x2353a
0002355c 4c01       lsls     r4, r1, #5
0002355e 0120       movs     r0, #1
00023560 75db       blt      #0x2364e
00023562 0400       movs     r4, r0
00023564 89db       blt      #0x2347a
00023566 0400       movs     r4, r0
00023568 5ddb       blt      #0x23626
0002356a 0400       movs     r4, r0
0002356c 10b5       push     {r4, lr}
0002356e 0446       mov      r4, r0
