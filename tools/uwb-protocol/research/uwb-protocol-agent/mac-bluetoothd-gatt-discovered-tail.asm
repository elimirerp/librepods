0x100322274:  68 16 40 f9   ldr	x8, [x19, #0x28]
0x100322278:  00 69 40 f9   ldr	x0, [x8, #0xd0]
0x10032227c:  b9 d0 13 94   bl	j__objc_msgSend(x0, "count")
0x100322280:  e0 1f 00 b4   cbz	x0, loc_10032267c ; ⤵ 0x3fc
0x100322284:  7c 6e 42 a9   ldp	x28, x27, [x19, #0x20]
0x100322288:  ff 7f 06 a9   stp	xzr, xzr, [sp, #0x60]
0x10032228c:  ff 3b 00 f9   str	xzr, [sp, #0x70]
0x100322290:  ff db 00 f9   str	xzr, [sp, #0x1b0]
0x100322294:  00 e4 00 6f   movi	v0.2d, #0
0x100322298:  e0 02 07 ad   stp	q0, q0, [x23, #0xe0]
0x10032229c:  e0 02 06 ad   stp	q0, q0, [x23, #0xc0]
0x1003222a0:  e0 02 05 ad   stp	q0, q0, [x23, #0xa0]
0x1003222a4:  e0 02 04 ad   stp	q0, q0, [x23, #0x80]
0x1003222a8:  e0 02 03 ad   stp	q0, q0, [x23, #0x60]
0x1003222ac:  e0 02 02 ad   stp	q0, q0, [x23, #0x40]
0x1003222b0:  e0 02 01 ad   stp	q0, q0, [x23, #0x20]
0x1003222b4:  e0 83 05 ad   stp	q0, q0, [sp, #0xb0]
0x1003222b8:  e0 c3 02 91   add	x0, sp, #0xb0
0x1003222bc:  3b 65 fd 97   bl	0x10027b7a8
0x1003222c0:  98 02 40 f9   ldr	x24, [x20]
0x1003222c4:  ; loc_1003222c4
0x1003222c4:  88 06 40 f9   ldr	x8, [x20, #0x8]
0x1003222c8:  1f 03 08 eb   cmp	x24, x8
0x1003222cc:  80 0c 00 54   b.eq	loc_10032245c ; ⤵ 0x190
0x1003222d0:  ff ff 07 a9   stp	xzr, xzr, [sp, #0x78]
0x1003222d4:  e1 e3 01 91   add	x1, sp, #0x78
0x1003222d8:  e0 03 18 aa   mov	x0, x24
0x1003222dc:  c1 a5 11 94   bl	0x10078b9e0
0x1003222e0:  a8 a2 3d 91   add	x8, x21, #0xf68
0x1003222e4:  e3 03 00 2a   mov	w3, w0
0x1003222e8:  e2 e3 01 91   add	x2, sp, #0x78
0x1003222ec:  e0 03 08 aa   mov	x0, x8
0x1003222f0:  24 b9 13 94   bl	j__objc_msgSend(x0, "UUIDWithBytes:length:")
0x1003222f4:  fd 03 1d aa   mov	fp, fp
0x1003222f8:  2a b4 13 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003222fc:  f9 03 00 aa   mov	x25, x0
0x100322300:  60 6b 40 f9   ldr	x0, [x27, #0xd0]
0x100322304:  e2 03 19 aa   mov	x2, x25
0x100322308:  06 d0 13 94   bl	j__objc_msgSend(x0, "containsObject:")
0x10032230c:  00 0a 00 34   cbz	w0, loc_10032244c ; ⤵ 0x140
0x100322310:  e8 a7 46 a9   ldp	x8, x9, [sp, #0x68]
0x100322314:  1f 01 09 eb   cmp	x8, x9
0x100322318:  e2 00 00 54   b.hs	loc_100322334 ; ⤵ 0x1c
0x10032231c:  00 03 c0 3d   ldr	q0, [x24]
0x100322320:  09 13 40 b9   ldr	w9, [x24, #0x10]
0x100322324:  09 11 00 b9   str	w9, [x8, #0x10]
0x100322328:  00 01 80 3d   str	q0, [x8]
0x10032232c:  16 51 00 91   add	x22, x8, #0x14
0x100322330:  33 00 00 14   b	loc_1003223fc ; ⤵ 0xcc
0x100322334:  ; loc_100322334
0x100322334:  ea 33 40 f9   ldr	x10, [sp, #0x60]
0x100322338:  16 01 0a cb   sub	x22, x8, x10
0x10032233c:  c8 fe 42 93   asr	x8, x22, #0x2
0x100322340:  ec e7 02 b2   mov	x12, #0xcccccccccccccccc
0x100322344:  ac 99 99 f2   movk	x12, #0xcccd
0x100322348:  2b 00 80 d2   mov	x11, #0x1
0x10032234c:  08 2d 0c 9b   madd	x8, x8, x12, x11
0x100322350:  eb e7 02 b2   mov	x11, #0xcccccccccccccccc
0x100322354:  8b 99 e1 f2   movk	x11, #0xccc, lsl #0x30
0x100322358:  1f 01 0b eb   cmp	x8, x11
0x10032235c:  e8 1c 00 54   b.hi	loc_1003226f8 ; ⤵ 0x39c
0x100322360:  29 01 0a cb   sub	x9, x9, x10
0x100322364:  29 fd 42 93   asr	x9, x9, #0x2
0x100322368:  29 7d 0c 9b   mul	x9, x9, x12
0x10032236c:  2a f9 7f d3   lsl	x10, x9, #0x1
0x100322370:  5f 01 08 eb   cmp	x10, x8
0x100322374:  48 81 88 9a   csel	x8, x10, x8, hi
0x100322378:  ea e7 03 b2   mov	x10, #0x6666666666666666
0x10032237c:  ca cc e0 f2   movk	x10, #0x666, lsl #0x30
0x100322380:  3f 01 0a eb   cmp	x9, x10
0x100322384:  01 31 8b 9a   csel	x1, x8, x11, cc
0x100322388:  e8 83 01 91   add	x8, sp, #0x60
0x10032238c:  00 41 00 91   add	x0, x8, #0x10
0x100322390:  eb 13 f5 97   bl	0x10006733c
0x100322394:  09 00 16 8b   add	x9, x0, x22
0x100322398:  00 03 c0 3d   ldr	q0, [x24]
0x10032239c:  08 13 40 b9   ldr	w8, [x24, #0x10]
0x1003223a0:  28 11 00 b9   str	w8, [x9, #0x10]
0x1003223a4:  20 01 80 3d   str	q0, [x9]
0x1003223a8:  e8 2f 46 a9   ldp	x8, x11, [sp, #0x60]
0x1003223ac:  0a 01 0b eb   subs	x10, x8, x11
0x1003223b0:  2a 01 0a 8b   add	x10, x9, x10
0x1003223b4:  40 01 00 54   b.eq	loc_1003223dc ; ⤵ 0x28
0x1003223b8:  ec 03 0a aa   mov	x12, x10
0x1003223bc:  ; loc_1003223bc
0x1003223bc:  00 01 c0 3d   ldr	q0, [x8]
0x1003223c0:  0d 11 40 b9   ldr	w13, [x8, #0x10]
0x1003223c4:  8d 11 00 b9   str	w13, [x12, #0x10]
0x1003223c8:  80 45 81 3c   str	q0, [x12], #0x14
0x1003223cc:  08 51 00 91   add	x8, x8, #0x14
0x1003223d0:  1f 01 0b eb   cmp	x8, x11
0x1003223d4:  41 ff ff 54   b.ne	loc_1003223bc ; ⤴ -0x18
0x1003223d8:  e8 33 40 f9   ldr	x8, [sp, #0x60]
0x1003223dc:  ; loc_1003223dc
0x1003223dc:  8b 02 80 52   mov	w11, #0x14
0x1003223e0:  2b 00 0b 9b   madd	x11, x1, x11, x0
0x1003223e4:  36 51 00 91   add	x22, x9, #0x14
0x1003223e8:  ea 5b 06 a9   stp	x10, x22, [sp, #0x60]
0x1003223ec:  eb 3b 00 f9   str	x11, [sp, #0x70]
0x1003223f0:  68 00 00 b4   cbz	x8, loc_1003223fc ; ⤵ 0xc
0x1003223f4:  e0 03 08 aa   mov	x0, x8
0x1003223f8:  56 af 13 94   bl	j___ZdlPv
0x1003223fc:  ; loc_1003223fc
0x1003223fc:  f6 37 00 f9   str	x22, [sp, #0x68]
0x100322400:  e8 43 02 91   add	x8, sp, #0x90
0x100322404:  e0 03 18 aa   mov	x0, x24
0x100322408:  96 a5 11 94   bl	0x10078ba60
0x10032240c:  e8 9f 42 39   ldrb	w8, [sp, #0xa7]
0x100322410:  09 1d 00 13   sxtb	w9, w8
0x100322414:  ea 2f 49 a9   ldp	x10, x11, [sp, #0x90]
0x100322418:  3f 01 00 71   cmp	w9, #0
0x10032241c:  e9 43 02 91   add	x9, sp, #0x90
0x100322420:  41 b1 89 9a   csel	x1, x10, x9, lt
0x100322424:  62 b1 88 9a   csel	x2, x11, x8, lt
0x100322428:  e0 c3 02 91   add	x0, sp, #0xb0
0x10032242c:  72 de fc 97   bl	0x100259df4
0x100322430:  e1 03 1a aa   mov	x1, x26
0x100322434:  22 00 80 52   mov	w2, #0x1
0x100322438:  6f de fc 97   bl	0x100259df4
0x10032243c:  e8 9f c2 39   ldrsb	w8, [sp, #0xa7]
0x100322440:  68 00 f8 36   tbz	w8, #0x1f, loc_10032244c ; ⤵ 0xc
0x100322444:  e0 4b 40 f9   ldr	x0, [sp, #0x90]
0x100322448:  42 af 13 94   bl	j___ZdlPv
0x10032244c:  ; loc_10032244c
0x10032244c:  e0 03 19 aa   mov	x0, x25
0x100322450:  c8 b3 13 94   bl	j__objc_release
0x100322454:  18 53 00 91   add	x24, x24, #0x14
0x100322458:  9b ff ff 17   b	loc_1003222c4 ; ⤴ -0x194
0x10032245c:  ; loc_10032245c
0x10032245c:  e9 23 46 a9   ldp	x9, x8, [sp, #0x60]
0x100322460:  1f 01 09 eb   cmp	x8, x9
0x100322464:  a0 08 00 54   b.eq	loc_100322578 ; ⤵ 0x114
0x100322468:  68 3f 40 f9   ldr	x8, [x27, #0x78]
0x10032246c:  68 08 00 b4   cbz	x8, loc_100322578 ; ⤵ 0x10c
0x100322470:  68 3d 00 f0   adrp	x8, 0x100ad1000
0x100322474:  08 e1 32 91   add	x8, x8, #0xcb8
0x100322478:  18 01 40 f9   ldr	x24, [x8]
0x10032247c:  e0 03 18 aa   mov	x0, x24
0x100322480:  21 00 80 52   mov	w1, #0x1
0x100322484:  6b b4 13 94   bl	j__os_log_type_enabled
0x100322488:  80 05 00 34   cbz	w0, loc_100322538 ; ⤵ 0xb0
0x10032248c:  e8 e3 01 91   add	x8, sp, #0x78
0x100322490:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100322494:  23 ae 13 94   bl	j___ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv
0x100322498:  f6 3f c2 39   ldrsb	w22, [sp, #0x8f]
0x10032249c:  f9 3f 40 f9   ldr	x25, [sp, #0x78]
0x1003224a0:  e8 23 01 91   add	x8, sp, #0x48
0x1003224a4:  e0 03 1c aa   mov	x0, x28
0x1003224a8:  6e d2 09 94   bl	0x100596e60
0x1003224ac:  df 02 00 71   cmp	w22, #0
0x1003224b0:  e8 e3 01 91   add	x8, sp, #0x78
0x1003224b4:  28 b3 88 9a   csel	x8, x25, x8, lt
0x1003224b8:  e9 7f c1 39   ldrsb	w9, [sp, #0x5f]
0x1003224bc:  ea 27 40 f9   ldr	x10, [sp, #0x48]
0x1003224c0:  3f 01 00 71   cmp	w9, #0
0x1003224c4:  e9 23 01 91   add	x9, sp, #0x48
0x1003224c8:  49 b1 89 9a   csel	x9, x10, x9, lt
0x1003224cc:  e0 03 c0 3d   ldr	q0, [sp]
0x1003224d0:  e0 93 00 bd   str	s0, [sp, #0x90]
0x1003224d4:  e8 43 09 f8   stur	x8, [sp, #0x94]
0x1003224d8:  48 08 81 52   mov	w8, #0x842
0x1003224dc:  e8 3b 01 79   strh	w8, [sp, #0x9c]
0x1003224e0:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x1003224e4:  e8 e3 09 f8   stur	x8, [sp, #0x9e]
0x1003224e8:  48 04 81 52   mov	w8, #0x822
0x1003224ec:  e8 4f 01 79   strh	w8, [sp, #0xa6]
0x1003224f0:  e9 57 00 f9   str	x9, [sp, #0xa8]
0x1003224f4:  e4 43 02 91   add	x4, sp, #0x90
0x1003224f8:  e0 e6 ff d0   adrp	x0, 0x100000000
0x1003224fc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100322500:  e1 03 18 aa   mov	x1, x24
0x100322504:  22 00 80 52   mov	w2, #0x1
0x100322508:  03 32 00 90   adrp	x3, 0x100962000
0x10032250c:  63 28 0c 91   add	x3, x3, #0x30a ; "Dispatching solicited services update [%{public}s] for device \"%{public}@\" to session \"%{public}s\""
0x100322510:  05 04 80 52   mov	w5, #0x20
0x100322514:  8f af 13 94   bl	j___os_log_impl
0x100322518:  e8 7f c1 39   ldrsb	w8, [sp, #0x5f]
0x10032251c:  68 00 f8 36   tbz	w8, #0x1f, loc_100322528 ; ⤵ 0xc
0x100322520:  e0 27 40 f9   ldr	x0, [sp, #0x48]
0x100322524:  0b af 13 94   bl	j___ZdlPv
0x100322528:  ; loc_100322528
0x100322528:  e8 3f c2 39   ldrsb	w8, [sp, #0x8f]
0x10032252c:  68 00 f8 36   tbz	w8, #0x1f, loc_100322538 ; ⤵ 0xc
0x100322530:  e0 3f 40 f9   ldr	x0, [sp, #0x78]
0x100322534:  07 af 13 94   bl	j___ZdlPv
0x100322538:  ; loc_100322538
0x100322538:  e1 03 1b aa   mov	x1, x27
0x10032253c:  e2 03 1c aa   mov	x2, x28
0x100322540:  43 01 80 52   mov	w3, #0xa
0x100322544:  04 00 80 52   mov	w4, #0
0x100322548:  3c bb ff 97   bl	0x100311238
0x10032254c:  60 3f 40 f9   ldr	x0, [x27, #0x78]
0x100322550:  10 00 40 f9   ldr	x16, [x0]
0x100322554:  f1 03 00 aa   mov	x17, x0
0x100322558:  d1 4c eb f2   movk	x17, #0x5a66, lsl #0x30
0x10032255c:  30 1a c1 da   autda	x16, x17
0x100322560:  08 0e 4c f8   ldr	x8, [x16, #0xc0]!
0x100322564:  e3 83 01 91   add	x3, sp, #0x60
0x100322568:  01 00 80 d2   mov	x1, #0
0x10032256c:  e2 1f 40 f9   ldr	x2, [sp, #0x38]
0x100322570:  b0 85 fc f2   movk	x16, #0xe42d, lsl #0x30
0x100322574:  10 09 3f d7   blraa	x8, x16
0x100322578:  ; loc_100322578
0x100322578:  f0 17 40 f9   ldr	x16, [sp, #0x28]
0x10032257c:  f0 3b c1 da   autdza	x16
0x100322580:  f1 03 10 aa   mov	x17, x16
0x100322584:  f1 47 c1 da   xpacd	x17
0x100322588:  1f 02 11 eb   cmp	x16, x17
0x10032258c:  40 00 00 54   b.eq	loc_100322594 ; ⤵ 0x8
0x100322590:  40 8e 38 d4   brk	#0xc472
0x100322594:  ; loc_100322594
0x100322594:  f1 03 10 aa   mov	x17, x16
0x100322598:  f0 0f 40 f9   ldr	x16, [sp, #0x18]
0x10032259c:  11 0a c1 da   pacda	x17, x16
0x1003225a0:  e8 03 11 aa   mov	x8, x17
0x1003225a4:  f0 13 40 f9   ldr	x16, [sp, #0x20]
0x1003225a8:  f1 5b 00 f9   str	x17, [sp, #0xb0]
0x1003225ac:  f0 3b c1 da   autdza	x16
0x1003225b0:  f1 03 10 aa   mov	x17, x16
0x1003225b4:  f1 47 c1 da   xpacd	x17
0x1003225b8:  1f 02 11 eb   cmp	x16, x17
0x1003225bc:  40 00 00 54   b.eq	loc_1003225c4 ; ⤵ 0x8
0x1003225c0:  40 8e 38 d4   brk	#0xc472
0x1003225c4:  ; loc_1003225c4
0x1003225c4:  e0 03 10 aa   mov	x0, x16
0x1003225c8:  f0 03 08 aa   mov	x16, x8
0x1003225cc:  e8 c3 02 91   add	x8, sp, #0xb0
0x1003225d0:  f1 03 08 aa   mov	x17, x8
0x1003225d4:  91 11 fa f2   movk	x17, #0xd08c, lsl #0x30
0x1003225d8:  30 1a c1 da   autda	x16, x17
0x1003225dc:  08 82 5e f8   ldur	x8, [x16, #-0x18]
0x1003225e0:  f1 03 00 aa   mov	x17, x0
0x1003225e4:  e9 c3 02 91   add	x9, sp, #0xb0
0x1003225e8:  28 01 08 8b   add	x8, x9, x8
0x1003225ec:  f0 03 08 aa   mov	x16, x8
0x1003225f0:  30 72 e9 f2   movk	x16, #0x4b91, lsl #0x30
0x1003225f4:  11 0a c1 da   pacda	x17, x16
0x1003225f8:  11 01 00 f9   str	x17, [x8]
0x1003225fc:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x100322600:  90 38 00 90   adrp	x16, 0x100a32000
0x100322604:  10 16 43 f9   ldr	x16, [x16, #0x628] ; __got.__ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
0x100322608:  10 42 00 91   add	x16, x16, #0x10
0x10032260c:  f1 03 08 aa   mov	x17, x8
0x100322610:  11 7d e3 f2   movk	x17, #0x1be8, lsl #0x30
0x100322614:  30 0a c1 da   pacda	x16, x17
0x100322618:  f0 5f 00 f9   str	x16, [sp, #0xb8]
0x10032261c:  e8 3f c4 39   ldrsb	w8, [sp, #0x10f]
0x100322620:  68 00 f8 36   tbz	w8, #0x1f, loc_10032262c ; ⤵ 0xc
0x100322624:  e0 7f 40 f9   ldr	x0, [sp, #0xf8]
0x100322628:  ca ae 13 94   bl	j___ZdlPv
0x10032262c:  ; loc_10032262c
0x10032262c:  88 38 00 90   adrp	x8, 0x100a32000
0x100322630:  08 11 43 f9   ldr	x8, [x8, #0x620] ; __got.__ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE
0x100322634:  11 41 00 91   add	x17, x8, #0x10
0x100322638:  f0 0b 40 f9   ldr	x16, [sp, #0x10]
0x10032263c:  11 0a c1 da   pacda	x17, x16
0x100322640:  f1 5f 00 f9   str	x17, [sp, #0xb8]
0x100322644:  f6 c3 02 91   add	x22, sp, #0xb0
0x100322648:  c0 42 00 91   add	x0, x22, #0x10
0x10032264c:  95 ae 13 94   bl	j___ZNSt3__16localeD1Ev
0x100322650:  e0 c3 02 91   add	x0, sp, #0xb0
0x100322654:  88 38 00 90   adrp	x8, 0x100a32000
0x100322658:  08 09 43 f9   ldr	x8, [x8, #0x610] ; __got.__ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
0x10032265c:  01 21 00 91   add	x1, x8, #0x8
0x100322660:  28 ae 13 94   bl	j___ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
0x100322664:  c0 c2 01 91   add	x0, x22, #0x70
0x100322668:  9e ae 13 94   bl	j___ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
0x10032266c:  e0 33 40 f9   ldr	x0, [sp, #0x60]
0x100322670:  60 00 00 b4   cbz	x0, loc_10032267c ; ⤵ 0xc
0x100322674:  e0 37 00 f9   str	x0, [sp, #0x68]
0x100322678:  b6 ae 13 94   bl	j___ZdlPv
0x10032267c:  ; loc_10032267c
0x10032267c:  69 06 40 f9   ldr	x9, [x19, #0x8]
0x100322680:  a9 00 00 b4   cbz	x9, loc_100322694 ; ⤵ 0x14
0x100322684:  ; loc_100322684
0x100322684:  e8 03 09 aa   mov	x8, x9
0x100322688:  29 01 40 f9   ldr	x9, [x9]
0x10032268c:  c9 ff ff b5   cbnz	x9, loc_100322684 ; ⤴ -0x8
0x100322690:  06 00 00 14   b	loc_1003226a8 ; ⤵ 0x18
0x100322694:  ; loc_100322694
0x100322694:  68 0a 40 f9   ldr	x8, [x19, #0x10]
0x100322698:  09 01 40 f9   ldr	x9, [x8]
0x10032269c:  7f 02 09 eb   cmp	x19, x9
0x1003226a0:  f3 03 08 aa   mov	x19, x8
0x1003226a4:  81 ff ff 54   b.ne	loc_100322694 ; ⤴ -0x10
0x1003226a8:  ; loc_1003226a8
0x1003226a8:  f3 03 08 aa   mov	x19, x8

