0x100686240:  09 15 40 b9   ldr	w9, [x8, #0x14]
0x100686244:  00 41 c0 3c   ldur	q0, [x8, #0x4]
0x100686248:  a0 03 92 3c   stur	q0, [fp, #-0xe0]
0x10068624c:  a9 03 13 b8   stur	w9, [fp, #-0xd0]
0x100686250:  a0 03 03 d1   sub	x0, fp, #0xc0
0x100686254:  a1 83 03 d1   sub	x1, fp, #0xe0
0x100686258:  9e 15 04 94   bl	0x10078b8d0
0x10068625c:  88 10 00 f0   adrp	x8, 0x100899000
0x100686260:  08 91 0f 91   add	x8, x8, #0x3e4
0x100686264:  00 01 c0 3d   ldr	q0, [x8]
0x100686268:  a0 03 92 3c   stur	q0, [fp, #-0xe0]
0x10068626c:  bf 03 13 b8   stur	wzr, [fp, #-0xd0]
0x100686270:  a1 83 03 d1   sub	x1, fp, #0xe0
0x100686274:  9b 2c ee 97   bl	0x1002114e0
0x100686278:  20 04 00 34   cbz	w0, loc_1006862fc ; ⤵ 0x84
0x10068627c:  76 03 40 f9   ldr	x22, [x27]
0x100686280:  e0 03 16 aa   mov	x0, x22
0x100686284:  01 00 80 52   mov	w1, #0
0x100686288:  ea 24 06 94   bl	j__os_log_type_enabled
0x10068628c:  c0 01 00 34   cbz	w0, loc_1006862c4 ; ⤵ 0x38
0x100686290:  48 10 00 f0   adrp	x8, 0x100891000
0x100686294:  00 49 46 fd   ldr	d0, [x8, #0xc90]
0x100686298:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x10068629c:  93 43 00 f8   stur	x19, [x28, #0x4]
0x1006862a0:  c0 cb ff d0   adrp	x0, 0x100000000
0x1006862a4:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1006862a8:  23 1a 00 90   adrp	x3, 0x1009ca000
0x1006862ac:  63 14 1c 91   add	x3, x3, #0x705 ; "The device \"%@\" supports DOAP"
0x1006862b0:  a4 83 03 d1   sub	x4, fp, #0xe0
0x1006862b4:  e1 03 16 aa   mov	x1, x22
0x1006862b8:  02 00 80 52   mov	w2, #0
0x1006862bc:  85 01 80 52   mov	w5, #0xc
0x1006862c0:  24 20 06 94   bl	j___os_log_impl
0x1006862c4:  ; loc_1006862c4
0x1006862c4:  27 4a f4 97   bl	0x100398b60
0x1006862c8:  10 00 40 f9   ldr	x16, [x0]
0x1006862cc:  f1 03 00 aa   mov	x17, x0
0x1006862d0:  91 4b e2 f2   movk	x17, #0x125c, lsl #0x30
0x1006862d4:  30 1a c1 da   autda	x16, x17
0x1006862d8:  08 8e 43 f8   ldr	x8, [x16, #0x38]!
0x1006862dc:  e1 03 13 aa   mov	x1, x19
0x1006862e0:  10 9d ff f2   movk	x16, #0xfce8, lsl #0x30
0x1006862e4:  10 09 3f d7   blraa	x8, x16
0x1006862e8:  61 10 00 d0   adrp	x1, 0x100894000
0x1006862ec:  21 c0 30 91   add	x1, x1, #0xc30
0x1006862f0:  e0 03 15 aa   mov	x0, x21
0x1006862f4:  e2 03 14 aa   mov	x2, x20
0x1006862f8:  43 1a 00 94   bl	0x10068cc04
0x1006862fc:  ; loc_1006862fc
0x1006862fc:  76 10 00 d0   adrp	x22, 0x100894000
0x100686300:  d6 12 31 91   add	x22, x22, #0xc44
0x100686304:  e0 03 15 aa   mov	x0, x21
0x100686308:  e1 03 16 aa   mov	x1, x22
0x10068630c:  e2 03 14 aa   mov	x2, x20
0x100686310:  b2 19 00 94   bl	0x10068c9d8
0x100686314:  80 0a 00 34   cbz	w0, loc_100686464 ; ⤵ 0x150
0x100686318:  77 0a 00 b4   cbz	x23, loc_100686464 ; ⤵ 0x14c
0x10068631c:  e8 06 40 f9   ldr	x8, [x23, #0x8]
0x100686320:  09 15 40 b9   ldr	w9, [x8, #0x14]
0x100686324:  00 41 c0 3c   ldur	q0, [x8, #0x4]
0x100686328:  a0 03 92 3c   stur	q0, [fp, #-0xe0]
0x10068632c:  a9 03 13 b8   stur	w9, [fp, #-0xd0]
0x100686330:  a0 03 03 d1   sub	x0, fp, #0xc0
0x100686334:  a1 83 03 d1   sub	x1, fp, #0xe0
0x100686338:  66 15 04 94   bl	0x10078b8d0
0x10068633c:  88 10 00 f0   adrp	x8, 0x100899000
0x100686340:  08 91 0f 91   add	x8, x8, #0x3e4
0x100686344:  00 01 c0 3d   ldr	q0, [x8]
0x100686348:  a0 03 92 3c   stur	q0, [fp, #-0xe0]
0x10068634c:  bf 03 13 b8   stur	wzr, [fp, #-0xd0]
0x100686350:  a1 83 03 d1   sub	x1, fp, #0xe0
0x100686354:  63 2c ee 97   bl	0x1002114e0
0x100686358:  60 08 00 34   cbz	w0, loc_100686464 ; ⤵ 0x10c
0x10068635c:  c0 02 c0 3d   ldr	q0, [x22]
0x100686360:  a0 03 92 3c   stur	q0, [fp, #-0xe0]
0x100686364:  c8 12 40 b9   ldr	w8, [x22, #0x10]
0x100686368:  a8 03 13 b8   stur	w8, [fp, #-0xd0]
0x10068636c:  a0 83 02 d1   sub	x0, fp, #0xa0
0x100686370:  a1 83 03 d1   sub	x1, fp, #0xe0
0x100686374:  57 15 04 94   bl	0x10078b8d0
0x100686378:  a0 e2 01 91   add	x0, x21, #0x78
0x10068637c:  a1 83 02 d1   sub	x1, fp, #0xa0
0x100686380:  e8 6e f7 97   bl	0x100461f20
0x100686384:  a8 02 02 91   add	x8, x21, #0x80
0x100686388:  1f 01 00 eb   cmp	x8, x0
0x10068638c:  e1 07 9f 1a   cset	w1, ne
0x100686390:  e0 03 13 aa   mov	x0, x19
0x100686394:  f4 0f 00 94   bl	0x10068a364
0x100686398:  60 06 00 34   cbz	w0, loc_100686464 ; ⤵ 0xcc
0x10068639c:  76 03 40 f9   ldr	x22, [x27]
0x1006863a0:  e0 03 16 aa   mov	x0, x22
0x1006863a4:  01 00 80 52   mov	w1, #0
0x1006863a8:  a2 24 06 94   bl	j__os_log_type_enabled
0x1006863ac:  c0 01 00 34   cbz	w0, loc_1006863e4 ; ⤵ 0x38
0x1006863b0:  48 10 00 f0   adrp	x8, 0x100891000
0x1006863b4:  00 49 46 fd   ldr	d0, [x8, #0xc90]
0x1006863b8:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x1006863bc:  93 43 00 f8   stur	x19, [x28, #0x4]
0x1006863c0:  c0 cb ff d0   adrp	x0, 0x100000000
0x1006863c4:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1006863c8:  23 1a 00 90   adrp	x3, 0x1009ca000
0x1006863cc:  63 8c 1c 91   add	x3, x3, #0x723 ; "The device \"%@\" supports UARP"
0x1006863d0:  a4 83 03 d1   sub	x4, fp, #0xe0
0x1006863d4:  e1 03 16 aa   mov	x1, x22
0x1006863d8:  02 00 80 52   mov	w2, #0
0x1006863dc:  85 01 80 52   mov	w5, #0xc
0x1006863e0:  dc 1f 06 94   bl	j___os_log_impl
0x1006863e4:  ; loc_1006863e4
0x1006863e4:  88 20 00 f0   adrp	x8, 0x100a99000
0x1006863e8:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x1006863ec:  1f 05 00 b1   cmn	x8, #0x1
0x1006863f0:  61 45 00 54   b.ne	loc_100686c9c ; ⤵ 0x8ac
0x1006863f4:  88 20 00 f0   adrp	x8, 0x100a99000
0x1006863f8:  16 41 40 f9   ldr	x22, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x1006863fc:  81 15 00 d0   adrp	x1, 0x100938000
0x100686400:  21 60 03 91   add	x1, x1, #0xd8 ; "_UARP_"
0x100686404:  e0 43 03 91   add	x0, sp, #0xd0
0x100686408:  b7 f1 e5 97   bl	0x100002ae4
0x10068640c:  e2 43 03 91   add	x2, sp, #0xd0
0x100686410:  e0 03 16 aa   mov	x0, x22
0x100686414:  e1 03 13 aa   mov	x1, x19
0x100686418:  9b 37 02 94   bl	0x100714284
0x10068641c:  e8 9f c3 39   ldrsb	w8, [sp, #0xe7]
0x100686420:  68 00 f8 36   tbz	w8, #0x1f, loc_10068642c ; ⤵ 0xc
0x100686424:  e0 6b 40 f9   ldr	x0, [sp, #0xd0]
0x100686428:  4a 1f 06 94   bl	j___ZdlPv
0x10068642c:  ; loc_10068642c
0x10068642c:  cd 49 f4 97   bl	0x100398b60
0x100686430:  10 00 40 f9   ldr	x16, [x0]
0x100686434:  f1 03 00 aa   mov	x17, x0
0x100686438:  91 4b e2 f2   movk	x17, #0x125c, lsl #0x30
0x10068643c:  30 1a c1 da   autda	x16, x17
0x100686440:  08 0e 44 f8   ldr	x8, [x16, #0x40]!
0x100686444:  e1 03 13 aa   mov	x1, x19
0x100686448:  30 6d e2 f2   movk	x16, #0x1369, lsl #0x30
0x10068644c:  10 09 3f d7   blraa	x8, x16
0x100686450:  61 10 00 d0   adrp	x1, 0x100894000
0x100686454:  21 10 31 91   add	x1, x1, #0xc44
0x100686458:  e0 03 15 aa   mov	x0, x21
0x10068645c:  e2 03 14 aa   mov	x2, x20
0x100686460:  e9 19 00 94   bl	0x10068cc04
0x100686464:  ; loc_100686464
0x100686464:  61 10 00 d0   adrp	x1, 0x100894000
0x100686468:  21 10 32 91   add	x1, x1, #0xc84
0x10068646c:  e0 03 15 aa   mov	x0, x21
0x100686470:  e2 03 14 aa   mov	x2, x20
0x100686474:  59 19 00 94   bl	0x10068c9d8
0x100686478:  e0 0a 00 34   cbz	w0, loc_1006865d4 ; ⤵ 0x15c
0x10068647c:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x100686480:  a8 0a 00 b4   cbz	x8, loc_1006865d4 ; ⤵ 0x154
0x100686484:  08 05 40 f9   ldr	x8, [x8, #0x8]
0x100686488:  09 15 40 b9   ldr	w9, [x8, #0x14]
0x10068648c:  00 41 c0 3c   ldur	q0, [x8, #0x4]
0x100686490:  a0 03 92 3c   stur	q0, [fp, #-0xe0]
0x100686494:  a9 03 13 b8   stur	w9, [fp, #-0xd0]
0x100686498:  a0 03 03 d1   sub	x0, fp, #0xc0
0x10068649c:  a1 83 03 d1   sub	x1, fp, #0xe0
0x1006864a0:  0c 15 04 94   bl	0x10078b8d0
0x1006864a4:  88 10 00 f0   adrp	x8, 0x100899000
0x1006864a8:  08 91 0f 91   add	x8, x8, #0x3e4
0x1006864ac:  00 01 c0 3d   ldr	q0, [x8]
0x1006864b0:  a0 03 92 3c   stur	q0, [fp, #-0xe0]
0x1006864b4:  bf 03 13 b8   stur	wzr, [fp, #-0xd0]
0x1006864b8:  a1 83 03 d1   sub	x1, fp, #0xe0
0x1006864bc:  09 2c ee 97   bl	0x1002114e0
0x1006864c0:  a0 08 00 34   cbz	w0, loc_1006865d4 ; ⤵ 0x114
0x1006864c4:  76 03 40 f9   ldr	x22, [x27]
0x1006864c8:  e0 03 16 aa   mov	x0, x22
0x1006864cc:  01 00 80 52   mov	w1, #0
0x1006864d0:  58 24 06 94   bl	j__os_log_type_enabled
0x1006864d4:  c0 01 00 34   cbz	w0, loc_10068650c ; ⤵ 0x38
0x1006864d8:  48 10 00 f0   adrp	x8, 0x100891000
0x1006864dc:  00 49 46 fd   ldr	d0, [x8, #0xc90]
0x1006864e0:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x1006864e4:  93 43 00 f8   stur	x19, [x28, #0x4]
0x1006864e8:  c0 cb ff d0   adrp	x0, 0x100000000
0x1006864ec:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1006864f0:  23 1a 00 90   adrp	x3, 0x1009ca000
0x1006864f4:  63 04 1d 91   add	x3, x3, #0x741 ; "The device \"%@\" supports MFi"
0x1006864f8:  a4 83 03 d1   sub	x4, fp, #0xe0
0x1006864fc:  e1 03 16 aa   mov	x1, x22
0x100686500:  02 00 80 52   mov	w2, #0
0x100686504:  85 01 80 52   mov	w5, #0xc
0x100686508:  92 1f 06 94   bl	j___os_log_impl
0x10068650c:  ; loc_10068650c
0x10068650c:  88 20 00 f0   adrp	x8, 0x100a99000
0x100686510:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x100686514:  1f 05 00 b1   cmn	x8, #0x1
0x100686518:  21 3b 00 54   b.ne	loc_100686c7c ; ⤵ 0x764
0x10068651c:  88 20 00 f0   adrp	x8, 0x100a99000
0x100686520:  16 41 40 f9   ldr	x22, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x100686524:  81 15 00 d0   adrp	x1, 0x100938000
0x100686528:  21 7c 03 91   add	x1, x1, #0xdf ; "needsMFiAuthentication4.0"
0x10068652c:  e0 e3 02 91   add	x0, sp, #0xb8
0x100686530:  6d f1 e5 97   bl	0x100002ae4
0x100686534:  e2 e3 02 91   add	x2, sp, #0xb8
0x100686538:  e0 03 16 aa   mov	x0, x22
0x10068653c:  e1 03 13 aa   mov	x1, x19
0x100686540:  51 37 02 94   bl	0x100714284
0x100686544:  e8 3f c3 39   ldrsb	w8, [sp, #0xcf]
0x100686548:  68 00 f8 36   tbz	w8, #0x1f, loc_100686554 ; ⤵ 0xc
0x10068654c:  e0 5f 40 f9   ldr	x0, [sp, #0xb8]
0x100686550:  00 1f 06 94   bl	j___ZdlPv
0x100686554:  ; loc_100686554
0x100686554:  88 20 00 f0   adrp	x8, 0x100a99000
0x100686558:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x10068655c:  1f 05 00 b1   cmn	x8, #0x1
0x100686560:  21 39 00 54   b.ne	loc_100686c84 ; ⤵ 0x724
0x100686564:  88 20 00 f0   adrp	x8, 0x100a99000
0x100686568:  16 41 40 f9   ldr	x22, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x10068656c:  81 15 00 d0   adrp	x1, 0x100938000
0x100686570:  21 e4 03 91   add	x1, x1, #0xf9 ; "MFi-Generic"
0x100686574:  e0 83 02 91   add	x0, sp, #0xa0
0x100686578:  5b f1 e5 97   bl	0x100002ae4
0x10068657c:  e2 83 02 91   add	x2, sp, #0xa0
0x100686580:  e0 03 16 aa   mov	x0, x22
0x100686584:  e1 03 13 aa   mov	x1, x19
0x100686588:  3f 37 02 94   bl	0x100714284
0x10068658c:  e8 df c2 39   ldrsb	w8, [sp, #0xb7]
0x100686590:  68 00 f8 36   tbz	w8, #0x1f, loc_10068659c ; ⤵ 0xc
0x100686594:  e0 53 40 f9   ldr	x0, [sp, #0xa0]
0x100686598:  ee 1e 06 94   bl	j___ZdlPv
0x10068659c:  ; loc_10068659c
0x10068659c:  71 49 f4 97   bl	0x100398b60
0x1006865a0:  10 00 40 f9   ldr	x16, [x0]
0x1006865a4:  f1 03 00 aa   mov	x17, x0
0x1006865a8:  91 4b e2 f2   movk	x17, #0x125c, lsl #0x30
0x1006865ac:  30 1a c1 da   autda	x16, x17
0x1006865b0:  08 0e 45 f8   ldr	x8, [x16, #0x50]!
0x1006865b4:  e1 03 13 aa   mov	x1, x19
0x1006865b8:  30 35 e3 f2   movk	x16, #0x19a9, lsl #0x30
0x1006865bc:  10 09 3f d7   blraa	x8, x16
0x1006865c0:  61 10 00 d0   adrp	x1, 0x100894000
0x1006865c4:  21 10 32 91   add	x1, x1, #0xc84
0x1006865c8:  e0 03 15 aa   mov	x0, x21
0x1006865cc:  e2 03 14 aa   mov	x2, x20
0x1006865d0:  8d 19 00 94   bl	0x10068cc04
0x1006865d4:  ; loc_1006865d4
0x1006865d4:  a0 10 00 90   adrp	x0, 0x10089a000
0x1006865d8:  00 cc 10 91   add	x0, x0, #0x433 ; "BluetoothFeatures"
0x1006865dc:  a1 10 00 90   adrp	x1, 0x10089a000
0x1006865e0:  21 14 11 91   add	x1, x1, #0x445 ; "BAS"
0x1006865e4:  4b 1f 06 94   bl	j___os_feature_enabled_impl
0x1006865e8:  40 08 00 34   cbz	w0, loc_1006866f0 ; ⤵ 0x108
0x1006865ec:  61 10 00 d0   adrp	x1, 0x100894000
0x1006865f0:  21 10 2c 91   add	x1, x1, #0xb04
0x1006865f4:  e0 03 15 aa   mov	x0, x21
0x1006865f8:  e2 03 14 aa   mov	x2, x20
0x1006865fc:  f7 18 00 94   bl	0x10068c9d8
0x100686600:  80 07 00 34   cbz	w0, loc_1006866f0 ; ⤵ 0xf0
0x100686604:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x100686608:  48 07 00 b4   cbz	x8, loc_1006866f0 ; ⤵ 0xe8
0x10068660c:  08 05 40 f9   ldr	x8, [x8, #0x8]
0x100686610:  09 15 40 b9   ldr	w9, [x8, #0x14]
0x100686614:  00 41 c0 3c   ldur	q0, [x8, #0x4]
0x100686618:  a0 03 92 3c   stur	q0, [fp, #-0xe0]
0x10068661c:  a9 03 13 b8   stur	w9, [fp, #-0xd0]
0x100686620:  a0 03 03 d1   sub	x0, fp, #0xc0
0x100686624:  a1 83 03 d1   sub	x1, fp, #0xe0
0x100686628:  aa 14 04 94   bl	0x10078b8d0
0x10068662c:  88 10 00 f0   adrp	x8, 0x100899000
0x100686630:  08 91 0f 91   add	x8, x8, #0x3e4
0x100686634:  00 01 c0 3d   ldr	q0, [x8]
0x100686638:  a0 03 92 3c   stur	q0, [fp, #-0xe0]
0x10068663c:  bf 03 13 b8   stur	wzr, [fp, #-0xd0]
0x100686640:  a1 83 03 d1   sub	x1, fp, #0xe0
0x100686644:  a7 2b ee 97   bl	0x1002114e0
0x100686648:  40 05 00 34   cbz	w0, loc_1006866f0 ; ⤵ 0xa8
0x10068664c:  76 03 40 f9   ldr	x22, [x27]
0x100686650:  e0 03 16 aa   mov	x0, x22
0x100686654:  01 00 80 52   mov	w1, #0
0x100686658:  f6 23 06 94   bl	j__os_log_type_enabled
0x10068665c:  c0 01 00 34   cbz	w0, loc_100686694 ; ⤵ 0x38
0x100686660:  48 10 00 f0   adrp	x8, 0x100891000
0x100686664:  00 49 46 fd   ldr	d0, [x8, #0xc90]
0x100686668:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x10068666c:  93 43 00 f8   stur	x19, [x28, #0x4]
0x100686670:  c0 cb ff d0   adrp	x0, 0x100000000
0x100686674:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100686678:  23 1a 00 90   adrp	x3, 0x1009ca000
0x10068667c:  63 78 1d 91   add	x3, x3, #0x75e ; "The device \"%@\" supports CATT Battery Service"
0x100686680:  a4 83 03 d1   sub	x4, fp, #0xe0
0x100686684:  e1 03 16 aa   mov	x1, x22
0x100686688:  02 00 80 52   mov	w2, #0
0x10068668c:  85 01 80 52   mov	w5, #0xc
0x100686690:  30 1f 06 94   bl	j___os_log_impl
0x100686694:  ; loc_100686694
0x100686694:  e8 07 40 f9   ldr	x8, [sp, #0x8]
0x100686698:  1f 01 00 f1   cmp	x8, #0
0x10068669c:  e8 07 40 b9   ldr	w8, [sp, #0x4]

