
-[CLDurianDevice handleDurianData:opcode:ackOpcode:]:
0x10145938c:  7f 23 03 d5   pacibsp
0x101459390:  ff c3 06 d1   sub	sp, sp, #0x1b0
0x101459394:  fc 6f 15 a9   stp	x28, x27, [sp, #0x150]
0x101459398:  fa 67 16 a9   stp	x26, x25, [sp, #0x160]
0x10145939c:  f8 5f 17 a9   stp	x24, x23, [sp, #0x170]
0x1014593a0:  f6 57 18 a9   stp	x22, x21, [sp, #0x180]
0x1014593a4:  f4 4f 19 a9   stp	x20, x19, [sp, #0x190]
0x1014593a8:  fd 7b 1a a9   stp	fp, lr, [sp, #0x1a0]
0x1014593ac:  fd 83 06 91   add	fp, sp, #0x1a0
0x1014593b0:  fb 03 04 aa   mov	x27, x4
0x1014593b4:  f5 03 03 aa   mov	x21, x3
0x1014593b8:  f6 03 02 aa   mov	x22, x2
0x1014593bc:  f3 03 00 aa   mov	x19, x0
0x1014593c0:  c8 79 00 b0   adrp	x8, 0x102392000
0x1014593c4:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014593c8:  08 01 40 f9   ldr	x8, [x8]
0x1014593cc:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x1014593d0:  18 40 42 39   ldrb	w24, [x0, #0x90]
0x1014593d4:  59 89 00 b0   adrp	x25, 0x102582000
0x1014593d8:  28 3b 46 f9   ldr	x8, [x25, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014593dc:  1f 05 00 b1   cmn	x8, #0x1
0x1014593e0:  c1 9f 00 54   b.ne	loc_10145a7d8 ; ⤵ 0x13f8
0x1014593e4:  ba c3 02 d1   sub	x26, fp, #0xb0
0x1014593e8:  5c 89 00 b0   adrp	x28, 0x102582000
0x1014593ec:  97 3f 46 f9   ldr	x23, [x28, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014593f0:  e0 03 17 aa   mov	x0, x23
0x1014593f4:  01 00 80 52   mov	w1, #0
0x1014593f8:  be f3 1a 94   bl	j__os_log_type_enabled
0x1014593fc:  e0 03 00 34   cbz	w0, loc_101459478 ; ⤵ 0x7c
0x101459400:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101459404:  85 fd 00 94   bl	0x101498a18
0x101459408:  c8 39 00 d0   adrp	x8, 0x101b93000
0x10145940c:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101459410:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101459414:  48 04 81 52   mov	w8, #0x822
0x101459418:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x10145941c:  a8 52 00 b0   adrp	x8, 0x101eae000
0x101459420:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101459424:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101459428:  48 a3 00 f8   stur	x8, [x26, #0xa]
0x10145942c:  28 08 81 52   mov	w8, #0x841
0x101459430:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x101459434:  40 43 01 f8   stur	x0, [x26, #0x14]
0x101459438:  49 80 80 52   mov	w9, #0x402
0x10145943c:  a9 c3 16 78   sturh	w9, [fp, #-0x94]
0x101459440:  55 e3 01 b8   stur	w21, [x26, #0x1e]
0x101459444:  a9 23 17 78   sturh	w9, [fp, #-0x8e]
0x101459448:  bb 43 17 b8   stur	w27, [fp, #-0x8c]
0x10145944c:  a8 83 17 78   sturh	w8, [fp, #-0x88]
0x101459450:  56 a3 02 f8   stur	x22, [x26, #0x2a]
0x101459454:  20 5d ff f0   adrp	x0, 0x100000000
0x101459458:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145945c:  c3 70 00 f0   adrp	x3, 0x102274000
0x101459460:  63 c4 1b 91   add	x3, x3, #0x6f1 ; "{\"msg%{public}.0s\":\"#durian received data\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d, \"acked opcode\":%{public}d, \"data\":%{private, location:escape_only}@}"
0x101459464:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101459468:  e1 03 17 aa   mov	x1, x23
0x10145946c:  02 00 80 52   mov	w2, #0
0x101459470:  45 06 80 52   mov	w5, #0x32
0x101459474:  5f ef 1a 94   bl	j___os_log_impl
0x101459478:  ; loc_101459478
0x101459478:  e0 03 13 aa   mov	x0, x19
0x10145947c:  e2 03 15 aa   mov	x2, x21
0x101459480:  c0 77 1b 94   bl	j__objc_msgSend(x0, "isNackTask:")
0x101459484:  c0 0e 00 34   cbz	w0, loc_10145965c ; ⤵ 0x1d8
0x101459488:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x10145948c:  2d 1a 1b 94   bl	j__objc_msgSend(x0, "command")
0x101459490:  94 95 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x101459494:  f5 03 00 aa   mov	x21, x0
0x101459498:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x10145949c:  1f 05 00 b1   cmn	x8, #0x1
0x1014594a0:  01 9a 00 54   b.ne	loc_10145a7e0 ; ⤵ 0x1340
0x1014594a4:  97 3f 46 f9   ldr	x23, [x28, #0xc78]
0x1014594a8:  e0 03 17 aa   mov	x0, x23
0x1014594ac:  01 00 80 52   mov	w1, #0
0x1014594b0:  90 f3 1a 94   bl	j__os_log_type_enabled
0x1014594b4:  a0 06 00 34   cbz	w0, loc_101459588 ; ⤵ 0xd4
0x1014594b8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014594bc:  57 fd 00 94   bl	0x101498a18
0x1014594c0:  f8 03 00 aa   mov	x24, x0
0x1014594c4:  e0 03 13 aa   mov	x0, x19
0x1014594c8:  ce 02 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014594cc:  1d 1a 1b 94   bl	j__objc_msgSend(x0, "command")
0x1014594d0:  84 95 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x1014594d4:  f4 03 1c aa   mov	x20, x28
0x1014594d8:  fc 03 16 aa   mov	x28, x22
0x1014594dc:  b6 c3 02 d1   sub	x22, fp, #0xb0
0x1014594e0:  f9 03 00 aa   mov	x25, x0
0x1014594e4:  28 86 00 d0   adrp	x8, 0x10251f000
0x1014594e8:  1a 81 3a 91   add	x26, x8, #0xea0 ; class_CLDurianVersionNumberUtilities
0x1014594ec:  e0 03 13 aa   mov	x0, x19
0x1014594f0:  64 0f 1b 94   bl	j__objc_msgSend(x0, "buildNumber")
0x1014594f4:  e2 03 00 aa   mov	x2, x0
0x1014594f8:  e0 03 1a aa   mov	x0, x26
0x1014594fc:  41 51 1b 94   bl	j__objc_msgSend(x0, "getStringFromNumber:")
0x101459500:  d0 f8 1a 94   bl	j__objc_msgSend(x0, "UTF8String")
0x101459504:  c8 39 00 f0   adrp	x8, 0x101b94000
0x101459508:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x10145950c:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101459510:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101459514:  48 04 81 52   mov	w8, #0x822
0x101459518:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x10145951c:  a9 52 00 b0   adrp	x9, 0x101eae000
0x101459520:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101459524:  c9 a2 00 f8   stur	x9, [x22, #0xa]
0x101459528:  29 08 81 52   mov	w9, #0x841
0x10145952c:  a9 23 16 78   sturh	w9, [fp, #-0x9e]
0x101459530:  d8 42 01 f8   stur	x24, [x22, #0x14]
0x101459534:  4a 80 80 52   mov	w10, #0x402
0x101459538:  aa c3 16 78   sturh	w10, [fp, #-0x94]
0x10145953c:  db e2 01 b8   stur	w27, [x22, #0x1e]
0x101459540:  aa 23 17 78   sturh	w10, [fp, #-0x8e]
0x101459544:  b9 43 17 b8   stur	w25, [fp, #-0x8c]
0x101459548:  59 89 00 b0   adrp	x25, 0x102582000
0x10145954c:  ba c3 02 d1   sub	x26, fp, #0xb0
0x101459550:  a8 83 17 78   sturh	w8, [fp, #-0x88]
0x101459554:  40 a3 02 f8   stur	x0, [x26, #0x2a]
0x101459558:  a9 23 18 78   sturh	w9, [fp, #-0x7e]
0x10145955c:  5c 43 03 f8   stur	x28, [x26, #0x34]
0x101459560:  fc 03 14 aa   mov	x28, x20
0x101459564:  20 5d ff f0   adrp	x0, 0x100000000
0x101459568:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145956c:  c3 70 00 f0   adrp	x3, 0x102274000
0x101459570:  63 84 1e 91   add	x3, x3, #0x7a1 ; "{\"msg%{public}.0s\":\"#durian received nack\", \"item\":%{private, location:escape_only}@, \"nack opcode\":%{public}d, \"active opcode\":%{public}d, \"version\":%{public, location:escape_only}s, \"data\":%{private"...
0x101459574:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101459578:  e1 03 17 aa   mov	x1, x23
0x10145957c:  02 00 80 52   mov	w2, #0
0x101459580:  85 07 80 52   mov	w5, #0x3c
0x101459584:  1b ef 1a 94   bl	j___os_log_impl
0x101459588:  ; loc_101459588
0x101459588:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x10145958c:  a0 77 00 b4   cbz	x0, loc_10145a480 ; ⤵ 0xef4
0x101459590:  bf 02 1b 6b   cmp	w21, w27
0x101459594:  61 77 00 54   b.ne	loc_10145a480 ; ⤵ 0xeec
0x101459598:  62 77 1b 94   bl	j__objc_msgSend(x0, "isMutexProtectedRangingTask")
0x10145959c:  f4 03 00 aa   mov	x20, x0
0x1014595a0:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x1014595a4:  1f 05 00 b1   cmn	x8, #0x1
0x1014595a8:  01 92 00 54   b.ne	loc_10145a7e8 ; ⤵ 0x1240
0x1014595ac:  96 3f 46 f9   ldr	x22, [x28, #0xc78]
0x1014595b0:  e0 03 16 aa   mov	x0, x22
0x1014595b4:  01 00 80 52   mov	w1, #0
0x1014595b8:  4e f3 1a 94   bl	j__os_log_type_enabled
0x1014595bc:  a0 03 00 34   cbz	w0, loc_101459630 ; ⤵ 0x74
0x1014595c0:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014595c4:  15 fd 00 94   bl	0x101498a18
0x1014595c8:  c8 44 00 f0   adrp	x8, 0x101cf4000
0x1014595cc:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x1014595d0:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x1014595d4:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x1014595d8:  48 04 81 52   mov	w8, #0x822
0x1014595dc:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x1014595e0:  a8 52 00 b0   adrp	x8, 0x101eae000
0x1014595e4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014595e8:  48 a3 00 f8   stur	x8, [x26, #0xa]
0x1014595ec:  28 08 81 52   mov	w8, #0x841
0x1014595f0:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x1014595f4:  40 43 01 f8   stur	x0, [x26, #0x14]
0x1014595f8:  48 80 80 52   mov	w8, #0x402
0x1014595fc:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x101459600:  55 e3 01 b8   stur	w21, [x26, #0x1e]
0x101459604:  a8 23 17 78   sturh	w8, [fp, #-0x8e]
0x101459608:  b4 43 17 b8   stur	w20, [fp, #-0x8c]
0x10145960c:  20 5d ff f0   adrp	x0, 0x100000000
0x101459610:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101459614:  c3 70 00 f0   adrp	x3, 0x102274000
0x101459618:  63 0c 22 91   add	x3, x3, #0x883 ; "{\"msg%{public}.0s\":\"#durian handle nack\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d, \"rangeProtected\":%{public}d}"
0x10145961c:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101459620:  e1 03 16 aa   mov	x1, x22
0x101459624:  02 00 80 52   mov	w2, #0
0x101459628:  05 05 80 52   mov	w5, #0x28
0x10145962c:  f1 ee 1a 94   bl	j___os_log_impl
0x101459630:  ; loc_101459630
0x101459630:  9f 02 00 71   cmp	w20, #0
0x101459634:  88 01 80 52   mov	w8, #0xc
0x101459638:  14 15 9f 9a   csinc	x20, x8, xzr, ne
0x10145963c:  e0 03 13 aa   mov	x0, x19
0x101459640:  30 28 1b 94   bl	j__objc_msgSend(x0, "delegate")
0x101459644:  63 6e 41 f9   ldr	x3, [x19, #0x2d8]
0x101459648:  e2 03 13 aa   mov	x2, x19
0x10145964c:  e4 03 14 aa   mov	x4, x20
0x101459650:  05 00 80 52   mov	w5, #0
0x101459654:  93 2a 1b 94   bl	j__objc_msgSend(x0, "device:didFailToCompleteTask:withError:andDisconnect:")
0x101459658:  88 03 00 14   b	loc_10145a478 ; ⤵ 0xe20
0x10145965c:  ; loc_10145965c
0x10145965c:  e0 03 13 aa   mov	x0, x19
0x101459660:  e2 03 15 aa   mov	x2, x21
0x101459664:  f7 71 1b 94   bl	j__objc_msgSend(x0, "isAckTask:")
0x101459668:  00 0f 00 34   cbz	w0, loc_101459848 ; ⤵ 0x1e0
0x10145966c:  e0 03 13 aa   mov	x0, x19
0x101459670:  e2 03 1b aa   mov	x2, x27
0x101459674:  23 72 1b 94   bl	j__objc_msgSend(x0, "isActiveTaskOpcode:")
0x101459678:  80 0e 00 34   cbz	w0, loc_101459848 ; ⤵ 0x1d0
0x10145967c:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101459680:  1f 05 00 b1   cmn	x8, #0x1
0x101459684:  a1 8b 00 54   b.ne	loc_10145a7f8 ; ⤵ 0x1174
0x101459688:  95 3f 46 f9   ldr	x21, [x28, #0xc78]
0x10145968c:  e0 03 15 aa   mov	x0, x21
0x101459690:  01 00 80 52   mov	w1, #0
0x101459694:  17 f3 1a 94   bl	j__os_log_type_enabled
0x101459698:  60 03 00 34   cbz	w0, loc_101459704 ; ⤵ 0x6c
0x10145969c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014596a0:  de fc 00 94   bl	0x101498a18
0x1014596a4:  c8 44 00 f0   adrp	x8, 0x101cf4000
0x1014596a8:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x1014596ac:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x1014596b0:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x1014596b4:  48 04 81 52   mov	w8, #0x822
0x1014596b8:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x1014596bc:  a8 52 00 b0   adrp	x8, 0x101eae000
0x1014596c0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014596c4:  48 a3 00 f8   stur	x8, [x26, #0xa]
0x1014596c8:  28 08 81 52   mov	w8, #0x841
0x1014596cc:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x1014596d0:  40 43 01 f8   stur	x0, [x26, #0x14]
0x1014596d4:  48 80 80 52   mov	w8, #0x402
0x1014596d8:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x1014596dc:  5b e3 01 b8   stur	w27, [x26, #0x1e]
0x1014596e0:  20 5d ff f0   adrp	x0, 0x100000000
0x1014596e4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014596e8:  c3 70 00 f0   adrp	x3, 0x102274000
0x1014596ec:  63 24 24 91   add	x3, x3, #0x909 ; "{\"msg%{public}.0s\":\"#durian received ack for active task\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x1014596f0:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x1014596f4:  e1 03 15 aa   mov	x1, x21
0x1014596f8:  02 00 80 52   mov	w2, #0
0x1014596fc:  45 04 80 52   mov	w5, #0x22
0x101459700:  bc ee 1a 94   bl	j___os_log_impl
0x101459704:  ; loc_101459704
0x101459704:  e0 03 13 aa   mov	x0, x19
0x101459708:  ae 9c 1b 94   bl	j__objc_msgSend(x0, "processAcknowledgedTask")
0x10145970c:  e0 03 13 aa   mov	x0, x19
0x101459710:  3c 02 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459714:  63 3a 1b 94   bl	j__objc_msgSend(x0, "expectsResponse")
0x101459718:  f5 03 00 aa   mov	x21, x0
0x10145971c:  e0 03 13 aa   mov	x0, x19
0x101459720:  38 02 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459724:  e4 03 00 aa   mov	x4, x0
0x101459728:  e0 03 13 aa   mov	x0, x19
0x10145972c:  35 23 00 34   cbz	w21, loc_101459b90 ; ⤵ 0x464
0x101459730:  c2 00 80 52   mov	w2, #0x6
0x101459734:  83 01 80 52   mov	w3, #0xc
0x101459738:  fa 07 1c 94   bl	j__objc_msgSend(x0, "transitionToState:event:task:")
0x10145973c:  60 1e 40 f9   ldr	x0, [x19, #0x38]
0x101459740:  70 47 1b 94   bl	j__objc_msgSend(x0, "firstObject")
0x101459744:  f5 03 00 aa   mov	x21, x0
0x101459748:  e0 03 13 aa   mov	x0, x19
0x10145974c:  2d 02 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459750:  e2 03 00 aa   mov	x2, x0
0x101459754:  e0 03 15 aa   mov	x0, x21
0x101459758:  9a ed 1b 94   bl	j__objc_msgSend(x0, "shouldPreemptTask:")
0x10145975c:  00 2a 00 34   cbz	w0, loc_101459c9c ; ⤵ 0x540
0x101459760:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101459764:  1f 05 00 b1   cmn	x8, #0x1
0x101459768:  81 86 00 54   b.ne	loc_10145a838 ; ⤵ 0x10d0
0x10145976c:  95 3f 46 f9   ldr	x21, [x28, #0xc78]
0x101459770:  e0 03 15 aa   mov	x0, x21
0x101459774:  01 00 80 52   mov	w1, #0
0x101459778:  de f2 1a 94   bl	j__os_log_type_enabled
0x10145977c:  40 04 00 34   cbz	w0, loc_101459804 ; ⤵ 0x88
0x101459780:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101459784:  a5 fc 00 94   bl	0x101498a18
0x101459788:  f6 03 00 aa   mov	x22, x0
0x10145978c:  60 1e 40 f9   ldr	x0, [x19, #0x38]
0x101459790:  5c 47 1b 94   bl	j__objc_msgSend(x0, "firstObject")
0x101459794:  f7 03 00 aa   mov	x23, x0
0x101459798:  e0 03 13 aa   mov	x0, x19
0x10145979c:  19 02 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014597a0:  c8 44 00 f0   adrp	x8, 0x101cf4000
0x1014597a4:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x1014597a8:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x1014597ac:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x1014597b0:  48 04 81 52   mov	w8, #0x822
0x1014597b4:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x1014597b8:  a8 52 00 b0   adrp	x8, 0x101eae000
0x1014597bc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014597c0:  48 a3 00 f8   stur	x8, [x26, #0xa]
0x1014597c4:  28 08 81 52   mov	w8, #0x841
0x1014597c8:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x1014597cc:  56 43 01 f8   stur	x22, [x26, #0x14]
0x1014597d0:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x1014597d4:  57 e3 01 f8   stur	x23, [x26, #0x1e]
0x1014597d8:  a8 63 17 78   sturh	w8, [fp, #-0x8a]
0x1014597dc:  a0 83 17 f8   stur	x0, [fp, #-0x88]
0x1014597e0:  20 5d ff f0   adrp	x0, 0x100000000
0x1014597e4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014597e8:  c3 70 00 f0   adrp	x3, 0x102274000
0x1014597ec:  63 0c 26 91   add	x3, x3, #0x983 ; "{\"msg%{public}.0s\":\"#durian received data, enqueuing preempted task\", \"item\":%{private, location:escape_only}@, \"pendingTask\":%{private, location:escape_only}@, \"activeTask\":%{private, location:escape"...
0x1014597f0:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x1014597f4:  e1 03 15 aa   mov	x1, x21
0x1014597f8:  02 00 80 52   mov	w2, #0
0x1014597fc:  05 06 80 52   mov	w5, #0x30
0x101459800:  7c ee 1a 94   bl	j___os_log_impl
0x101459804:  ; loc_101459804
0x101459804:  75 22 40 f9   ldr	x21, [x19, #0x40]
0x101459808:  e0 03 13 aa   mov	x0, x19
0x10145980c:  fd 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459810:  e2 03 00 aa   mov	x2, x0
0x101459814:  e0 03 15 aa   mov	x0, x21
0x101459818:  4a 04 1b 94   bl	j__objc_msgSend(x0, "addObject:")
0x10145981c:  e0 03 13 aa   mov	x0, x19
0x101459820:  f8 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459824:  e3 03 00 aa   mov	x3, x0
0x101459828:  e0 03 13 aa   mov	x0, x19
0x10145982c:  42 01 80 52   mov	w2, #0xa
0x101459830:  2c b4 1b 94   bl	j__objc_msgSend(x0, "schedulePreemptedTaskTimeout:forTask:")
0x101459834:  c2 81 00 d0   adrp	x2, 0x102493000
0x101459838:  42 c0 06 91   add	x2, x2, #0x1b0 ; "ackcheck"
0x10145983c:  e0 03 13 aa   mov	x0, x19
0x101459840:  f0 81 1b 94   bl	j__objc_msgSend(x0, "logTaskCounts:")
0x101459844:  e0 00 00 14   b	loc_101459bc4 ; ⤵ 0x380
0x101459848:  ; loc_101459848
0x101459848:  e0 03 13 aa   mov	x0, x19
0x10145984c:  ed 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459850:  14 3a 1b 94   bl	j__objc_msgSend(x0, "expectsResponse")
0x101459854:  e0 0e 00 34   cbz	w0, loc_101459a30 ; ⤵ 0x1dc
0x101459858:  e0 03 13 aa   mov	x0, x19
0x10145985c:  e2 03 15 aa   mov	x2, x21
0x101459860:  a8 71 1b 94   bl	j__objc_msgSend(x0, "isActiveTaskOpcode:")
0x101459864:  a0 00 00 37   tbnz	w0, #0, loc_101459878 ; ⤵ 0x14
0x101459868:  e0 03 13 aa   mov	x0, x19
0x10145986c:  e2 03 15 aa   mov	x2, x21
0x101459870:  24 74 1b 94   bl	j__objc_msgSend(x0, "isEndpointTask:")
0x101459874:  e0 0d 00 34   cbz	w0, loc_101459a30 ; ⤵ 0x1bc
0x101459878:  ; loc_101459878
0x101459878:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x10145987c:  1f 05 00 b1   cmn	x8, #0x1
0x101459880:  81 7b 00 54   b.ne	loc_10145a7f0 ; ⤵ 0xf70
0x101459884:  97 3f 46 f9   ldr	x23, [x28, #0xc78]
0x101459888:  e0 03 17 aa   mov	x0, x23
0x10145988c:  01 00 80 52   mov	w1, #0
0x101459890:  98 f2 1a 94   bl	j__os_log_type_enabled
0x101459894:  60 03 00 34   cbz	w0, loc_101459900 ; ⤵ 0x6c
0x101459898:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145989c:  5f fc 00 94   bl	0x101498a18
0x1014598a0:  c8 44 00 f0   adrp	x8, 0x101cf4000
0x1014598a4:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x1014598a8:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x1014598ac:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x1014598b0:  48 04 81 52   mov	w8, #0x822
0x1014598b4:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x1014598b8:  a8 52 00 b0   adrp	x8, 0x101eae000
0x1014598bc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014598c0:  48 a3 00 f8   stur	x8, [x26, #0xa]
0x1014598c4:  28 08 81 52   mov	w8, #0x841
0x1014598c8:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x1014598cc:  40 43 01 f8   stur	x0, [x26, #0x14]
0x1014598d0:  48 80 80 52   mov	w8, #0x402
0x1014598d4:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x1014598d8:  55 e3 01 b8   stur	w21, [x26, #0x1e]
0x1014598dc:  20 5d ff f0   adrp	x0, 0x100000000
0x1014598e0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014598e4:  c3 70 00 f0   adrp	x3, 0x102274000
0x1014598e8:  63 50 2b 91   add	x3, x3, #0xad4 ; "{\"msg%{public}.0s\":\"#durian received response for active task\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x1014598ec:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x1014598f0:  e1 03 17 aa   mov	x1, x23
0x1014598f4:  02 00 80 52   mov	w2, #0
0x1014598f8:  45 04 80 52   mov	w5, #0x22
0x1014598fc:  3d ee 1a 94   bl	j___os_log_impl
0x101459900:  ; loc_101459900
0x101459900:  e0 03 13 aa   mov	x0, x19
0x101459904:  bf 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459908:  e4 03 00 aa   mov	x4, x0
0x10145990c:  e0 03 13 aa   mov	x0, x19
0x101459910:  82 00 80 52   mov	w2, #0x4
0x101459914:  a3 01 80 52   mov	w3, #0xd
0x101459918:  82 07 1c 94   bl	j__objc_msgSend(x0, "transitionToState:event:task:")
0x10145991c:  28 86 00 d0   adrp	x8, 0x10251f000
0x101459920:  00 81 26 91   add	x0, x8, #0x9a0 ; CLDurianCommand
0x101459924:  4b f1 1a 94   bl	j__objc_alloc
0x101459928:  e2 03 16 aa   mov	x2, x22
0x10145992c:  b5 62 1b 94   bl	j__objc_msgSend(x0, "initWithData:")
0x101459930:  f7 03 00 aa   mov	x23, x0
0x101459934:  e0 03 13 aa   mov	x0, x19
0x101459938:  e2 03 15 aa   mov	x2, x21
0x10145993c:  91 74 1b 94   bl	j__objc_msgSend(x0, "isFragmentedUserStats:")
0x101459940:  a0 01 00 34   cbz	w0, loc_101459974 ; ⤵ 0x34
0x101459944:  e0 03 13 aa   mov	x0, x19
0x101459948:  ae 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x10145994c:  f8 03 00 aa   mov	x24, x0
0x101459950:  e0 03 17 aa   mov	x0, x23
0x101459954:  93 96 1b 94   bl	j__objc_msgSend(x0, "payload")
0x101459958:  e2 03 00 aa   mov	x2, x0
0x10145995c:  e0 03 18 aa   mov	x0, x24
0x101459960:  e3 03 15 aa   mov	x3, x21
0x101459964:  0f 08 1b 94   bl	j__objc_msgSend(x0, "appendUserStatsData:opcode:")
0x101459968:  e0 03 18 aa   mov	x0, x24
0x10145996c:  cd 72 1b 94   bl	j__objc_msgSend(x0, "isComplete")
0x101459970:  20 19 00 34   cbz	w0, loc_101459c94 ; ⤵ 0x324
0x101459974:  ; loc_101459974
0x101459974:  e0 03 13 aa   mov	x0, x19
0x101459978:  e2 03 15 aa   mov	x2, x21
0x10145997c:  61 76 1b 94   bl	j__objc_msgSend(x0, "isMultiStatusResponse:")
0x101459980:  34 86 00 d0   adrp	x20, 0x10251f000
0x101459984:  40 29 00 34   cbz	w0, loc_101459eac ; ⤵ 0x528
0x101459988:  80 42 11 91   add	x0, x20, #0x450
0x10145998c:  dd eb 1b 94   bl	j__objc_msgSend(x0, "sharedInstance")
0x101459990:  ac 88 1b 94   bl	j__objc_msgSend(x0, "multiStatusResponseOverride")
0x101459994:  20 28 00 b4   cbz	x0, loc_101459e98 ; ⤵ 0x504
0x101459998:  f8 03 00 aa   mov	x24, x0
0x10145999c:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x1014599a0:  1f 05 00 b1   cmn	x8, #0x1
0x1014599a4:  21 74 00 54   b.ne	loc_10145a828 ; ⤵ 0xe84
0x1014599a8:  99 3f 46 f9   ldr	x25, [x28, #0xc78]
0x1014599ac:  e0 03 19 aa   mov	x0, x25
0x1014599b0:  01 00 80 52   mov	w1, #0
0x1014599b4:  4f f2 1a 94   bl	j__os_log_type_enabled
0x1014599b8:  80 03 00 34   cbz	w0, loc_101459a28 ; ⤵ 0x70
0x1014599bc:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014599c0:  16 fc 00 94   bl	0x101498a18
0x1014599c4:  c8 44 00 f0   adrp	x8, 0x101cf4000
0x1014599c8:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x1014599cc:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x1014599d0:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x1014599d4:  48 04 81 52   mov	w8, #0x822
0x1014599d8:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x1014599dc:  a8 52 00 b0   adrp	x8, 0x101eae000
0x1014599e0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014599e4:  48 a3 00 f8   stur	x8, [x26, #0xa]
0x1014599e8:  28 08 81 52   mov	w8, #0x841
0x1014599ec:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x1014599f0:  40 43 01 f8   stur	x0, [x26, #0x14]
0x1014599f4:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x1014599f8:  56 e3 01 f8   stur	x22, [x26, #0x1e]
0x1014599fc:  a8 63 17 78   sturh	w8, [fp, #-0x8a]
0x101459a00:  b8 83 17 f8   stur	x24, [fp, #-0x88]
0x101459a04:  20 5d ff f0   adrp	x0, 0x100000000
0x101459a08:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101459a0c:  c3 70 00 f0   adrp	x3, 0x102274000
0x101459a10:  63 4c 2d 91   add	x3, x3, #0xb53 ; "{\"msg%{public}.0s\":\"#durian #multi status override\", \"item\":%{private, location:escape_only}@, \"original\":%{private, location:escape_only}@, \"override\":%{private, location:escape_only}@}"
0x101459a14:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101459a18:  e1 03 19 aa   mov	x1, x25
0x101459a1c:  02 00 80 52   mov	w2, #0
0x101459a20:  05 06 80 52   mov	w5, #0x30
0x101459a24:  f3 ed 1a 94   bl	j___os_log_impl
0x101459a28:  ; loc_101459a28
0x101459a28:  59 89 00 b0   adrp	x25, 0x102582000
0x101459a2c:  1c 01 00 14   b	loc_101459e9c ; ⤵ 0x470
0x101459a30:  ; loc_101459a30
0x101459a30:  e0 03 13 aa   mov	x0, x19
0x101459a34:  e2 03 15 aa   mov	x2, x21
0x101459a38:  82 77 1b 94   bl	j__objc_msgSend(x0, "isRangingSessionTask:")
0x101459a3c:  20 06 00 34   cbz	w0, loc_101459b00 ; ⤵ 0xc4
0x101459a40:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101459a44:  1f 05 00 b1   cmn	x8, #0x1
0x101459a48:  c1 6d 00 54   b.ne	loc_10145a800 ; ⤵ 0xdb8
0x101459a4c:  97 3f 46 f9   ldr	x23, [x28, #0xc78]
0x101459a50:  e0 03 17 aa   mov	x0, x23
0x101459a54:  01 00 80 52   mov	w1, #0
0x101459a58:  26 f2 1a 94   bl	j__os_log_type_enabled
0x101459a5c:  60 03 00 34   cbz	w0, loc_101459ac8 ; ⤵ 0x6c
0x101459a60:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101459a64:  ed fb 00 94   bl	0x101498a18
0x101459a68:  c8 44 00 f0   adrp	x8, 0x101cf4000
0x101459a6c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101459a70:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101459a74:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101459a78:  48 04 81 52   mov	w8, #0x822
0x101459a7c:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x101459a80:  a8 52 00 b0   adrp	x8, 0x101eae000
0x101459a84:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101459a88:  48 a3 00 f8   stur	x8, [x26, #0xa]
0x101459a8c:  28 08 81 52   mov	w8, #0x841
0x101459a90:  a8 23 16 78   sturh	w8, [fp, #-0x9e]

