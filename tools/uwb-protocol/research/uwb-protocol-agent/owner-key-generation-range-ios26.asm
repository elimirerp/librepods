0x1007e9300:  e1 03 13 aa   mov	x1, x19
0x1007e9304:  e4 03 19 aa   mov	x4, x25
0x1007e9308:  c5 02 80 52   mov	w5, #0x16
0x1007e930c:  31 87 36 94   bl	j___os_log_impl
0x1007e9310:  e0 03 1a aa   mov	x0, x26
0x1007e9314:  02 7b e0 97   bl	0x100007f1c
0x1007e9318:  e0 03 1a aa   mov	x0, x26
0x1007e931c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1007e9320:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x1007e9324:  03 8a 36 94   bl	j__swift_slowDealloc
0x1007e9328:  e0 03 19 aa   mov	x0, x25
0x1007e932c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1007e9330:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x1007e9334:  ff 89 36 94   bl	j__swift_slowDealloc
0x1007e9338:  b6 87 36 94   bl	j__objc_release_x19
0x1007e933c:  a9 07 78 a9   ldp	x9, x1, [fp, #-0x80]
0x1007e9340:  28 8d 40 f8   ldr	x8, [x9, #0x8]!
0x1007e9344:  a0 03 59 f8   ldur	x0, [fp, #-0x70]
0x1007e9348:  f1 03 09 aa   mov	x17, x9
0x1007e934c:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x1007e9350:  11 09 3f d7   blraa	x8, x17
0x1007e9354:  1a 03 00 14   b	loc_1007e9fbc ; ⤵ 0xc68
0x1007e9358:  86 80 36 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x1007e935c:  a0 03 19 b8   stur	w0, [fp, #-0x70]
0x1007e9360:  28 8a 00 f0   adrp	x8, 0x101930000
0x1007e9364:  08 c1 45 f9   ldr	x8, [x8, #0xb80] ; data_101930b80 (__DATA.__data)
0x1007e9368:  1f 05 00 b1   cmn	x8, #0x1
0x1007e936c:  01 79 00 54   b.ne	loc_1007ea28c ; ⤵ 0xf20
0x1007e9370:  c8 0e 42 f9   ldr	x8, [x22, #0x418]
0x1007e9374:  a8 03 18 f8   stur	x8, [fp, #-0x80]
0x1007e9378:  db 8a 41 f9   ldr	x27, [x22, #0x310]
0x1007e937c:  c8 82 41 f9   ldr	x8, [x22, #0x300]
0x1007e9380:  dc 7e 41 f9   ldr	x28, [x22, #0x2f8]
0x1007e9384:  d3 42 41 f9   ldr	x19, [x22, #0x280]
0x1007e9388:  c9 e6 52 39   ldrb	w9, [x22, #0x4b9]
0x1007e938c:  e9 73 00 b9   str	w9, [sp, #0x70]
0x1007e9390:  c9 3e 41 f9   ldr	x9, [x22, #0x278]
0x1007e9394:  e9 47 00 f9   str	x9, [sp, #0x88]
0x1007e9398:  c9 3a 41 f9   ldr	x9, [x22, #0x270]
0x1007e939c:  e9 3f 00 f9   str	x9, [sp, #0x78]
0x1007e93a0:  d4 36 41 f9   ldr	x20, [x22, #0x268]
0x1007e93a4:  19 21 00 91   add	x25, x8, #0x8
0x1007e93a8:  e8 90 00 d0   adrp	x8, 0x101a07000
0x1007e93ac:  08 f1 40 f9   ldr	x8, [x8, #0x1e0]
0x1007e93b0:  a8 83 17 f8   stur	x8, [fp, #-0x88]
0x1007e93b4:  80 89 00 f0   adrp	x0, 0x10191c000
0x1007e93b8:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x1007e93bc:  21 70 00 90   adrp	x1, 0x1015ed000
0x1007e93c0:  21 00 19 91   add	x1, x1, #0x640
0x1007e93c4:  0c 3c e3 97   bl	0x1000b83f4
0x1007e93c8:  01 22 80 52   mov	w1, #0x110
0x1007e93cc:  e2 00 80 52   mov	w2, #0x7
0x1007e93d0:  78 88 36 94   bl	j__swift_allocObject
0x1007e93d4:  fa 03 00 aa   mov	x26, x0
0x1007e93d8:  48 70 00 b0   adrp	x8, 0x1015f2000
0x1007e93dc:  00 21 c0 3d   ldr	q0, [x8, #0x80]
0x1007e93e0:  00 04 80 3d   str	q0, [x0, #0x10]
0x1007e93e4:  70 02 40 f9   ldr	x16, [x19]
0x1007e93e8:  f1 03 13 aa   mov	x17, x19
0x1007e93ec:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x1007e93f0:  30 1a c1 da   autda	x16, x17
0x1007e93f4:  f1 03 10 aa   mov	x17, x16
0x1007e93f8:  f1 47 c1 da   xpacd	x17
0x1007e93fc:  1f 02 11 eb   cmp	x16, x17
0x1007e9400:  40 00 00 54   b.eq	loc_1007e9408 ; ⤵ 0x8
0x1007e9404:  40 8e 38 d4   brk	#0xc472
0x1007e9408:  ; loc_1007e9408
0x1007e9408:  d0 1a 01 f9   str	x16, [x22, #0x230]
0x1007e940c:  00 8a 00 90   adrp	x0, 0x101929000
0x1007e9410:  00 00 34 91   add	x0, x0, #0xd00 ; data_101929d00 (__DATA.__data)
0x1007e9414:  61 71 00 90   adrp	x1, 0x101615000
0x1007e9418:  21 a0 17 91   add	x1, x1, #0x5e8 ; "\xdcP\v"
0x1007e941c:  f6 3b e3 97   bl	0x1000b83f4
0x1007e9420:  e1 03 00 aa   mov	x1, x0
0x1007e9424:  c0 c2 08 91   add	x0, x22, #0x230
0x1007e9428:  fe 7d 36 94   bl	j__$sSS10describingSSx_tclufC
0x1007e942c:  f3 03 00 aa   mov	x19, x0
0x1007e9430:  f7 03 01 aa   mov	x23, x1
0x1007e9434:  f8 84 00 b0   adrp	x24, 0x101886000
0x1007e9438:  18 47 45 f9   ldr	x24, [x24, #0xa88] ; __got._$sSSN
0x1007e943c:  58 1f 00 f9   str	x24, [x26, #0x38]
0x1007e9440:  d0 7e e0 97   bl	0x100008f80
0x1007e9444:  f5 03 00 aa   mov	x21, x0
0x1007e9448:  53 5f 02 a9   stp	x19, x23, [x26, #0x20]
0x1007e944c:  a8 6e 00 90   adrp	x8, 0x1015bd000
0x1007e9450:  08 01 24 91   add	x8, x8, #0x900 ; "keys(beacon:startBucket:endBucket:sequence:forceGenerate:useDaemonDirectory:)"
0x1007e9454:  08 81 00 d1   sub	x8, x8, #0x20
0x1007e9458:  08 01 41 b2   orr	x8, x8, #0x8000000000000000
0x1007e945c:  58 03 06 a9   stp	x24, x0, [x26, #0x60]
0x1007e9460:  a9 09 80 d2   mov	x9, #0x4d
0x1007e9464:  09 00 fa f2   movk	x9, #0xd000, lsl #0x30
0x1007e9468:  40 27 04 a9   stp	x0, x9, [x26, #0x40]
0x1007e946c:  48 2b 00 f9   str	x8, [x26, #0x50]
0x1007e9470:  93 de 41 a9   ldp	x19, x23, [x20, #0x18]
0x1007e9474:  e0 03 14 aa   mov	x0, x20
0x1007e9478:  e1 03 13 aa   mov	x1, x19
0x1007e947c:  2d 68 e0 97   bl	0x100003530
0x1007e9480:  e8 06 40 f9   ldr	x8, [x23, #0x8]
0x1007e9484:  01 05 40 f9   ldr	x1, [x8, #0x8]
0x1007e9488:  e9 03 01 aa   mov	x9, x1
0x1007e948c:  2a 0d 42 f8   ldr	x10, [x9, #0x20]!
0x1007e9490:  e8 03 1b aa   mov	x8, x27
0x1007e9494:  f4 03 00 aa   mov	x20, x0
0x1007e9498:  e0 03 13 aa   mov	x0, x19
0x1007e949c:  f1 03 09 aa   mov	x17, x9
0x1007e94a0:  71 e3 f4 f2   movk	x17, #0xa71b, lsl #0x30
0x1007e94a4:  51 09 3f d7   blraa	x10, x17
0x1007e94a8:  f4 03 1b aa   mov	x20, x27
0x1007e94ac:  c1 70 36 94   bl	j__$s10Foundation4UUIDV10uuidStringSSvg
0x1007e94b0:  58 d7 08 a9   stp	x24, x21, [x26, #0x88]
0x1007e94b4:  40 07 07 a9   stp	x0, x1, [x26, #0x70]
0x1007e94b8:  e0 03 1b aa   mov	x0, x27
0x1007e94bc:  e1 03 1c aa   mov	x1, x28
0x1007e94c0:  e8 43 40 f9   ldr	x8, [sp, #0x80]
0x1007e94c4:  f1 03 19 aa   mov	x17, x25
0x1007e94c8:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x1007e94cc:  11 09 3f d7   blraa	x8, x17
0x1007e94d0:  e8 73 40 b9   ldr	w8, [sp, #0x70]
0x1007e94d4:  1f 05 00 71   cmp	w8, #0x1
0x1007e94d8:  c8 05 8e d2   mov	x8, #0x702e
0x1007e94dc:  48 2e ad f2   movk	x8, #0x6972, lsl #0x10
0x1007e94e0:  a8 2d cc f2   movk	x8, #0x616d, lsl #0x20
0x1007e94e4:  48 2e ef f2   movk	x8, #0x7972, lsl #0x30
0x1007e94e8:  c9 65 8e d2   mov	x9, #0x732e
0x1007e94ec:  a9 6c ac f2   movk	x9, #0x6365, lsl #0x10
0x1007e94f0:  e9 cd cd f2   movk	x9, #0x6e6f, lsl #0x20
0x1007e94f4:  89 2c ec f2   movk	x9, #0x6164, lsl #0x30
0x1007e94f8:  28 01 88 9a   csel	x8, x9, x8, eq
0x1007e94fc:  09 00 fd d2   mov	x9, #0xe800000000000000
0x1007e9500:  4a 2e 8f d2   mov	x10, #0x7972
0x1007e9504:  0a 40 fd f2   movk	x10, #0xea00, lsl #0x30
0x1007e9508:  49 01 89 9a   csel	x9, x10, x9, eq
0x1007e950c:  58 57 0b a9   stp	x24, x21, [x26, #0xb0]
0x1007e9510:  48 a7 09 a9   stp	x8, x9, [x26, #0x98]
0x1007e9514:  e8 84 00 b0   adrp	x8, 0x101886000
0x1007e9518:  08 25 47 f9   ldr	x8, [x8, #0xe48] ; __got._$ss6UInt64VN
0x1007e951c:  e9 84 00 b0   adrp	x9, 0x101886000
0x1007e9520:  29 41 47 f9   ldr	x9, [x9, #0xe80] ; __got._$ss6UInt64Vs7CVarArgsWP
0x1007e9524:  48 a7 0d a9   stp	x8, x9, [x26, #0xd8]
0x1007e9528:  ea 3f 40 f9   ldr	x10, [sp, #0x78]
0x1007e952c:  4a 63 00 f9   str	x10, [x26, #0xc0]
0x1007e9530:  48 27 10 a9   stp	x8, x9, [x26, #0x100]
0x1007e9534:  e8 47 40 f9   ldr	x8, [sp, #0x88]
0x1007e9538:  48 77 00 f9   str	x8, [x26, #0xe8]
0x1007e953c:  a1 c0 ff f0   adrp	x1, 0x100000000
0x1007e9540:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x1007e9544:  a3 6e 00 90   adrp	x3, 0x1015bd000
0x1007e9548:  63 80 28 91   add	x3, x3, #0xa20 ; "%@: %@. Unable to obtain keys for beacon %{mask.hash}@, sequence %@, index %llu - %llu"
0x1007e954c:  a0 03 59 b8   ldur	w0, [fp, #-0x70]
0x1007e9550:  a2 83 57 f8   ldur	x2, [fp, #-0x88]
0x1007e9554:  c4 0a 80 52   mov	w4, #0x56
0x1007e9558:  45 00 80 52   mov	w5, #0x2
0x1007e955c:  e6 03 1a aa   mov	x6, x26
0x1007e9560:  48 79 36 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x1007e9564:  e0 03 1a aa   mov	x0, x26
0x1007e9568:  56 89 36 94   bl	j__swift_release
0x1007e956c:  c0 2e 41 f9   ldr	x0, [x22, #0x258]
0x1007e9570:  3c 88 36 94   bl	j__swift_bridgeObjectRelease
0x1007e9574:  a0 03 58 f8   ldur	x0, [fp, #-0x80]
0x1007e9578:  3a 88 36 94   bl	j__swift_bridgeObjectRelease
0x1007e957c:  a0 83 58 f8   ldur	x0, [fp, #-0x78]
0x1007e9580:  38 88 36 94   bl	j__swift_bridgeObjectRelease
0x1007e9584:  e0 4b 40 f9   ldr	x0, [sp, #0x90]
0x1007e9588:  36 88 36 94   bl	j__swift_bridgeObjectRelease
0x1007e958c:  ff 4b 00 f9   str	xzr, [sp, #0x90]
0x1007e9590:  bf 83 18 f8   stur	xzr, [fp, #-0x78]
0x1007e9594:  68 00 80 52   mov	w8, #0x3
0x1007e9598:  81 00 00 14   b	loc_1007e979c ; ⤵ 0x204
0x1007e959c:  18 01 40 f9   ldr	x24, [x8]
0x1007e95a0:  e0 03 18 aa   mov	x0, x24
0x1007e95a4:  e1 03 17 aa   mov	x1, x23
0x1007e95a8:  13 be e0 97   bl	0x100018df4
0x1007e95ac:  c8 fa 41 f9   ldr	x8, [x22, #0x3f0]
0x1007e95b0:  c9 f2 41 f9   ldr	x9, [x22, #0x3e0]
0x1007e95b4:  29 29 46 69   ldpsw	x9, x10, [x9, #0x30]
0x1007e95b8:  0a 01 0a 8b   add	x10, x8, x10
0x1007e95bc:  40 05 40 a9   ldp	x0, x1, [x10]
0x1007e95c0:  08 01 09 8b   add	x8, x8, x9
0x1007e95c4:  13 51 40 a9   ldp	x19, x20, [x8]
0x1007e95c8:  e0 47 00 f9   str	x0, [sp, #0x88]
0x1007e95cc:  a1 83 17 f8   stur	x1, [fp, #-0x88]
0x1007e95d0:  09 be e0 97   bl	0x100018df4
0x1007e95d4:  b3 53 38 a9   stp	x19, x20, [fp, #-0x80]
0x1007e95d8:  e0 03 13 aa   mov	x0, x19
0x1007e95dc:  e1 03 14 aa   mov	x1, x20
0x1007e95e0:  05 be e0 97   bl	0x100018df4
0x1007e95e4:  e8 8a 00 90   adrp	x8, 0x101945000
0x1007e95e8:  08 61 40 f9   ldr	x8, [x8, #0xc0] ; data_1019450c0 (__DATA.__data)
0x1007e95ec:  1f 05 00 b1   cmn	x8, #0x1
0x1007e95f0:  c1 60 00 54   b.ne	loc_1007ea208 ; ⤵ 0xc18
0x1007e95f4:  d3 3a 41 f9   ldr	x19, [x22, #0x270]
0x1007e95f8:  e8 8a 00 90   adrp	x8, 0x101945000
0x1007e95fc:  14 41 40 f9   ldr	x20, [x8, #0x80] ; data_101945080 (__DATA.__data)
0x1007e9600:  a8 ce 8d d2   mov	x8, #0x6e75
0x1007e9604:  88 ac ac f2   movk	x8, #0x6564, lsl #0x10
0x1007e9608:  48 8e ca f2   movk	x8, #0x5472, lsl #0x20
0x1007e960c:  a8 6c ee f2   movk	x8, #0x7365, lsl #0x30
0x1007e9610:  89 0e 80 d2   mov	x9, #0x74
0x1007e9614:  09 20 fd f2   movk	x9, #0xe900, lsl #0x30
0x1007e9618:  c8 26 1e a9   stp	x8, x9, [x22, #0x1e0]
0x1007e961c:  e3 84 00 b0   adrp	x3, 0x101886000
0x1007e9620:  63 ac 45 f9   ldr	x3, [x3, #0xb58] ; __got._$sSbN
0x1007e9624:  f0 44 00 f0   adrp	x16, 0x101088000
0x1007e9628:  10 82 3e 91   add	x16, x16, #0xfa0
0x1007e962c:  f1 41 8e d2   mov	x17, #0x720f
0x1007e9630:  30 02 c1 da   pacia	x16, x17
0x1007e9634:  e1 03 10 aa   mov	x1, x16
0x1007e9638:  c8 e2 12 91   add	x8, x22, #0x4b8
0x1007e963c:  c0 82 07 91   add	x0, x22, #0x1e0
0x1007e9640:  02 00 80 d2   mov	x2, #0
0x1007e9644:  8f 6c 36 94   bl	j__$s10FindMyBase16SynchronousCacheC11cachedValue3key12computeBlockqd__x_qd__yXEts8SendableRd__lF
0x1007e9648:  e0 03 18 aa   mov	x0, x24
0x1007e964c:  e1 03 17 aa   mov	x1, x23
0x1007e9650:  e2 03 13 aa   mov	x2, x19
0x1007e9654:  15 00 80 d2   mov	x21, #0
0x1007e9658:  22 09 0e 94   bl	0x100b6bae0
0x1007e965c:  35 18 00 b4   cbz	x21, loc_1007e9960 ; ⤵ 0x304
0x1007e9660:  f9 03 15 aa   mov	x25, x21
0x1007e9664:  e0 47 40 f9   ldr	x0, [sp, #0x88]
0x1007e9668:  a1 83 57 f8   ldur	x1, [fp, #-0x88]
0x1007e966c:  4d b6 e0 97   bl	0x100016fa0
0x1007e9670:  a0 07 78 a9   ldp	x0, x1, [fp, #-0x80]
0x1007e9674:  4b b6 e0 97   bl	0x100016fa0
0x1007e9678:  e0 03 18 aa   mov	x0, x24
0x1007e967c:  e1 03 17 aa   mov	x1, x23
0x1007e9680:  48 b6 e0 97   bl	0x100016fa0
0x1007e9684:  fc 84 00 b0   adrp	x28, 0x101886000
0x1007e9688:  9c 73 47 f9   ldr	x28, [x28, #0xee0] ; __got.__swiftEmptyArrayStorage
0x1007e968c:  b9 7f 36 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x1007e9690:  f7 03 00 aa   mov	x23, x0
0x1007e9694:  01 1c 00 12   and	w1, w0, #0xff
0x1007e9698:  e0 03 1b aa   mov	x0, x27
0x1007e969c:  5d 87 36 94   bl	j__os_log_type_enabled
0x1007e96a0:  d5 fa 41 f9   ldr	x21, [x22, #0x3f0]
0x1007e96a4:  40 06 00 36   tbz	w0, #0, loc_1007e976c ; ⤵ 0xc8
0x1007e96a8:  e0 03 19 aa   mov	x0, x25
0x1007e96ac:  71 88 36 94   bl	j__swift_errorRetain
0x1007e96b0:  80 01 80 52   mov	w0, #0xc
0x1007e96b4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1007e96b8:  1a 89 36 94   bl	j__swift_slowAlloc
0x1007e96bc:  f8 03 00 aa   mov	x24, x0
0x1007e96c0:  00 04 80 52   mov	w0, #0x20
0x1007e96c4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1007e96c8:  16 89 36 94   bl	j__swift_slowAlloc
0x1007e96cc:  fa 03 00 aa   mov	x26, x0
0x1007e96d0:  a0 83 19 f8   stur	x0, [fp, #-0x68]
0x1007e96d4:  08 70 00 d0   adrp	x8, 0x1015eb000
0x1007e96d8:  00 d1 46 fd   ldr	d0, [x8, #0xda0]
0x1007e96dc:  00 03 00 bd   str	s0, [x24]
0x1007e96e0:  c1 42 09 91   add	x1, x22, #0x250
0x1007e96e4:  c2 c2 06 91   add	x2, x22, #0x1b0
0x1007e96e8:  e0 03 19 aa   mov	x0, x25
0x1007e96ec:  7d 88 36 94   bl	j__swift_getErrorValue
0x1007e96f0:  d4 02 5b a9   ldp	x20, x0, [x22, #0x1b0]
0x1007e96f4:  c1 e2 40 f9   ldr	x1, [x22, #0x1c0]
0x1007e96f8:  3a 84 36 94   bl	j__$ss5ErrorP10FoundationE20localizedDescriptionSSvg
0x1007e96fc:  f4 03 01 aa   mov	x20, x1
0x1007e9700:  a2 a3 01 d1   sub	x2, fp, #0x68
0x1007e9704:  b5 a8 e0 97   bl	0x1000139d8
0x1007e9708:  f3 03 00 aa   mov	x19, x0
0x1007e970c:  e0 03 14 aa   mov	x0, x20
0x1007e9710:  d4 87 36 94   bl	j__swift_bridgeObjectRelease
0x1007e9714:  13 43 00 f8   stur	x19, [x24, #0x4]
0x1007e9718:  e0 03 19 aa   mov	x0, x25
0x1007e971c:  51 88 36 94   bl	j__swift_errorRelease
0x1007e9720:  a0 c0 ff f0   adrp	x0, 0x100000000
0x1007e9724:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1007e9728:  63 75 00 90   adrp	x3, 0x101695000
0x1007e972c:  63 c0 1a 91   add	x3, x3, #0x6b0 ; "Error during forceGenerate: %s"
0x1007e9730:  e2 1e 00 12   and	w2, w23, #0xff
0x1007e9734:  e1 03 1b aa   mov	x1, x27
0x1007e9738:  e4 03 18 aa   mov	x4, x24
0x1007e973c:  85 01 80 52   mov	w5, #0xc
0x1007e9740:  24 86 36 94   bl	j___os_log_impl
0x1007e9744:  e0 03 1a aa   mov	x0, x26
0x1007e9748:  f5 79 e0 97   bl	0x100007f1c
0x1007e974c:  e0 03 1a aa   mov	x0, x26
0x1007e9750:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1007e9754:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x1007e9758:  f6 88 36 94   bl	j__swift_slowDealloc
0x1007e975c:  e0 03 18 aa   mov	x0, x24
0x1007e9760:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1007e9764:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x1007e9768:  f2 88 36 94   bl	j__swift_slowDealloc
0x1007e976c:  ; loc_1007e976c
0x1007e976c:  e0 03 19 aa   mov	x0, x25
0x1007e9770:  3c 88 36 94   bl	j__swift_errorRelease
0x1007e9774:  10 c1 ff b0   adrp	x16, 0x10000a000
0x1007e9778:  10 e2 14 91   add	x16, x16, #0x538
0x1007e977c:  91 36 8a d2   mov	x17, #0x51b4
0x1007e9780:  30 02 c1 da   pacia	x16, x17
0x1007e9784:  e1 03 10 aa   mov	x1, x16
0x1007e9788:  e0 03 15 aa   mov	x0, x21
0x1007e978c:  97 1e 00 94   bl	0x1007f11e8
0x1007e9790:  fc 4b 00 f9   str	x28, [sp, #0x90]
0x1007e9794:  bf 83 18 f8   stur	xzr, [fp, #-0x78]
0x1007e9798:  28 00 80 52   mov	w8, #0x1
0x1007e979c:  ; loc_1007e979c
0x1007e979c:  a8 03 19 b8   stur	w8, [fp, #-0x70]
0x1007e97a0:  c0 fa 41 f9   ldr	x0, [x22, #0x3f0]
0x1007e97a4:  d3 ee 41 f9   ldr	x19, [x22, #0x3d8]
0x1007e97a8:  da ea 41 f9   ldr	x26, [x22, #0x3d0]
0x1007e97ac:  d7 e6 41 f9   ldr	x23, [x22, #0x3c8]
0x1007e97b0:  db e2 41 f9   ldr	x27, [x22, #0x3c0]
0x1007e97b4:  dc d6 41 f9   ldr	x28, [x22, #0x3a8]
0x1007e97b8:  d4 d2 41 f9   ldr	x20, [x22, #0x3a0]
0x1007e97bc:  d5 ce 41 f9   ldr	x21, [x22, #0x398]
0x1007e97c0:  d8 ca 41 f9   ldr	x24, [x22, #0x390]
0x1007e97c4:  d9 be 41 f9   ldr	x25, [x22, #0x378]
0x1007e97c8:  c9 b2 41 f9   ldr	x9, [x22, #0x360]
0x1007e97cc:  c8 ae 41 f9   ldr	x8, [x22, #0x358]
0x1007e97d0:  e9 23 01 a9   stp	x9, x8, [sp, #0x10]
0x1007e97d4:  c9 aa 41 f9   ldr	x9, [x22, #0x350]
0x1007e97d8:  c8 a6 41 f9   ldr	x8, [x22, #0x348]
0x1007e97dc:  e9 23 02 a9   stp	x9, x8, [sp, #0x20]
0x1007e97e0:  c9 a2 41 f9   ldr	x9, [x22, #0x340]
0x1007e97e4:  c8 9e 41 f9   ldr	x8, [x22, #0x338]
0x1007e97e8:  e9 23 03 a9   stp	x9, x8, [sp, #0x30]
0x1007e97ec:  c9 9a 41 f9   ldr	x9, [x22, #0x330]
0x1007e97f0:  c8 96 41 f9   ldr	x8, [x22, #0x328]
0x1007e97f4:  e9 23 04 a9   stp	x9, x8, [sp, #0x40]
0x1007e97f8:  c9 92 41 f9   ldr	x9, [x22, #0x320]
0x1007e97fc:  c8 8e 41 f9   ldr	x8, [x22, #0x318]
0x1007e9800:  e9 23 05 a9   stp	x9, x8, [sp, #0x50]
0x1007e9804:  c9 8a 41 f9   ldr	x9, [x22, #0x310]
0x1007e9808:  c8 7a 41 f9   ldr	x8, [x22, #0x2f0]
0x1007e980c:  e9 23 06 a9   stp	x9, x8, [sp, #0x60]
0x1007e9810:  c9 76 41 f9   ldr	x9, [x22, #0x2e8]
0x1007e9814:  c8 72 41 f9   ldr	x8, [x22, #0x2e0]
0x1007e9818:  e9 23 07 a9   stp	x9, x8, [sp, #0x70]
0x1007e981c:  c9 66 41 f9   ldr	x9, [x22, #0x2c8]
0x1007e9820:  c8 62 41 f9   ldr	x8, [x22, #0x2c0]
0x1007e9824:  e9 23 08 a9   stp	x9, x8, [sp, #0x80]
0x1007e9828:  c9 56 41 f9   ldr	x9, [x22, #0x2a8]
0x1007e982c:  c8 4a 41 f9   ldr	x8, [x22, #0x290]
0x1007e9830:  a9 a3 37 a9   stp	x9, x8, [fp, #-0x88]
0x1007e9834:  db 88 36 94   bl	j__swift_task_dealloc
0x1007e9838:  e0 03 13 aa   mov	x0, x19
0x1007e983c:  d9 88 36 94   bl	j__swift_task_dealloc
0x1007e9840:  e0 03 1a aa   mov	x0, x26
0x1007e9844:  d7 88 36 94   bl	j__swift_task_dealloc
0x1007e9848:  e0 03 17 aa   mov	x0, x23
0x1007e984c:  d5 88 36 94   bl	j__swift_task_dealloc
0x1007e9850:  e0 03 1b aa   mov	x0, x27
0x1007e9854:  d3 88 36 94   bl	j__swift_task_dealloc
0x1007e9858:  e0 03 1c aa   mov	x0, x28
0x1007e985c:  d1 88 36 94   bl	j__swift_task_dealloc
0x1007e9860:  e0 03 14 aa   mov	x0, x20
0x1007e9864:  cf 88 36 94   bl	j__swift_task_dealloc
0x1007e9868:  e0 03 15 aa   mov	x0, x21
0x1007e986c:  cd 88 36 94   bl	j__swift_task_dealloc
0x1007e9870:  e0 03 18 aa   mov	x0, x24
0x1007e9874:  cb 88 36 94   bl	j__swift_task_dealloc
0x1007e9878:  e0 03 19 aa   mov	x0, x25
0x1007e987c:  c9 88 36 94   bl	j__swift_task_dealloc
0x1007e9880:  e0 0b 40 f9   ldr	x0, [sp, #0x10]
0x1007e9884:  c7 88 36 94   bl	j__swift_task_dealloc
0x1007e9888:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x1007e988c:  c5 88 36 94   bl	j__swift_task_dealloc
0x1007e9890:  e0 13 40 f9   ldr	x0, [sp, #0x20]
0x1007e9894:  c3 88 36 94   bl	j__swift_task_dealloc
0x1007e9898:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x1007e989c:  c1 88 36 94   bl	j__swift_task_dealloc
0x1007e98a0:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x1007e98a4:  bf 88 36 94   bl	j__swift_task_dealloc
0x1007e98a8:  e0 1f 40 f9   ldr	x0, [sp, #0x38]
0x1007e98ac:  bd 88 36 94   bl	j__swift_task_dealloc
0x1007e98b0:  e0 23 40 f9   ldr	x0, [sp, #0x40]
0x1007e98b4:  bb 88 36 94   bl	j__swift_task_dealloc
0x1007e98b8:  e0 27 40 f9   ldr	x0, [sp, #0x48]
0x1007e98bc:  b9 88 36 94   bl	j__swift_task_dealloc
0x1007e98c0:  e0 2b 40 f9   ldr	x0, [sp, #0x50]
0x1007e98c4:  b7 88 36 94   bl	j__swift_task_dealloc
0x1007e98c8:  e0 2f 40 f9   ldr	x0, [sp, #0x58]
0x1007e98cc:  b5 88 36 94   bl	j__swift_task_dealloc
0x1007e98d0:  e0 33 40 f9   ldr	x0, [sp, #0x60]
0x1007e98d4:  b3 88 36 94   bl	j__swift_task_dealloc
0x1007e98d8:  e0 37 40 f9   ldr	x0, [sp, #0x68]
0x1007e98dc:  b1 88 36 94   bl	j__swift_task_dealloc
0x1007e98e0:  e0 3b 40 f9   ldr	x0, [sp, #0x70]
0x1007e98e4:  af 88 36 94   bl	j__swift_task_dealloc
0x1007e98e8:  e0 3f 40 f9   ldr	x0, [sp, #0x78]
0x1007e98ec:  ad 88 36 94   bl	j__swift_task_dealloc
0x1007e98f0:  e0 43 40 f9   ldr	x0, [sp, #0x80]
0x1007e98f4:  ab 88 36 94   bl	j__swift_task_dealloc
0x1007e98f8:  e0 47 40 f9   ldr	x0, [sp, #0x88]
0x1007e98fc:  a9 88 36 94   bl	j__swift_task_dealloc
0x1007e9900:  a0 83 57 f8   ldur	x0, [fp, #-0x88]
0x1007e9904:  a7 88 36 94   bl	j__swift_task_dealloc
0x1007e9908:  a0 03 58 f8   ldur	x0, [fp, #-0x80]
0x1007e990c:  a5 88 36 94   bl	j__swift_task_dealloc
0x1007e9910:  e3 03 16 aa   mov	x3, x22
0x1007e9914:  64 8c 40 f8   ldr	x4, [x3, #0x8]!
0x1007e9918:  e0 4b 40 f9   ldr	x0, [sp, #0x90]
0x1007e991c:  a1 83 58 f8   ldur	x1, [fp, #-0x78]
0x1007e9920:  a2 03 59 b8   ldur	w2, [fp, #-0x70]
0x1007e9924:  14 00 80 d2   mov	x20, #0
0x1007e9928:  fd 7b 52 a9   ldp	fp, lr, [sp, #0x120]
0x1007e992c:  f5 cf 50 a9   ldp	x21, x19, [sp, #0x108]
0x1007e9930:  f8 df 4f a9   ldp	x24, x23, [sp, #0xf8]
0x1007e9934:  fa e7 4e a9   ldp	x26, x25, [sp, #0xe8]
0x1007e9938:  fc ef 4d a9   ldp	x28, x27, [sp, #0xd8]
0x1007e993c:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff

