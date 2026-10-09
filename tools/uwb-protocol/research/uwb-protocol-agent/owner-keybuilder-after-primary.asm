0x100766440:  80 03 00 f9   str	x0, [x28]
0x100766444:  8b ff ff 17   b	loc_100766270 ; ⤴ -0x1d4
0x100766448:  1f 05 00 f1   cmp	x8, #0x1
0x10076644c:  e0 97 9f 1a   cset	w0, hi
0x100766450:  e1 03 14 aa   mov	x1, x20
0x100766454:  22 00 80 52   mov	w2, #0x1
0x100766458:  e3 03 13 aa   mov	x3, x19
0x10076645c:  18 b6 0f 94   bl	0x100b53cbc
0x100766460:  f3 03 00 aa   mov	x19, x0
0x100766464:  80 03 00 f9   str	x0, [x28]
0x100766468:  86 ff ff 17   b	loc_100766280 ; ⤴ -0x1e8

sub_10076646c:
0x10076646c:  c2 8e 02 a9   stp	x2, x3, [x22, #0x28]
0x100766470:  c0 86 01 a9   stp	x0, x1, [x22, #0x18]
0x100766474:  10 00 00 90   adrp	x16, 0x100766000
0x100766478:  10 42 12 91   add	x16, x16, #0x490
0x10076647c:  f0 23 c1 da   paciza	x16
0x100766480:  e0 03 10 aa   mov	x0, x16
0x100766484:  01 00 80 d2   mov	x1, #0
0x100766488:  02 00 80 d2   mov	x2, #0
0x10076648c:  d5 95 38 14   b	j__swift_task_switch

sub_100766490:
0x100766490:  7f 23 03 d5   pacibsp
0x100766494:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x100766498:  ff c3 00 d1   sub	sp, sp, #0x30
0x10076649c:  f5 cf 00 a9   stp	x21, x19, [sp, #0x8]
0x1007664a0:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x1007664a4:  f0 63 00 91   add	x16, sp, #0x18
0x1007664a8:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x1007664ac:  f1 03 16 aa   mov	x17, x22
0x1007664b0:  11 0e c1 da   pacdb	x17, x16
0x1007664b4:  f1 0f 00 f9   str	x17, [sp, #0x18]
0x1007664b8:  fd 83 00 91   add	fp, sp, #0x20
0x1007664bc:  c8 12 40 f9   ldr	x8, [x22, #0x20]
0x1007664c0:  14 89 40 f9   ldr	x20, [x8, #0x110]
0x1007664c4:  88 8e 00 f0   adrp	x8, 0x101939000
0x1007664c8:  08 8d 41 f9   ldr	x8, [x8, #0x318] ; data_101939318 (__DATA.__data)
0x1007664cc:  93 6a 68 f8   ldr	x19, [x20, x8]
0x1007664d0:  00 00 80 d2   mov	x0, #0
0x1007664d4:  12 ea e2 97   bl	0x100020d1c
0x1007664d8:  e4 03 00 aa   mov	x4, x0
0x1007664dc:  09 89 00 90   adrp	x9, 0x101886000
0x1007664e0:  29 69 47 f9   ldr	x9, [x9, #0xed0] ; __got._$sytN
0x1007664e4:  30 e8 ff d0   adrp	x16, 0x10046c000
0x1007664e8:  10 c2 3d 91   add	x16, x16, #0xf70
0x1007664ec:  f1 41 8e d2   mov	x17, #0x720f
0x1007664f0:  30 02 c1 da   pacia	x16, x17
0x1007664f4:  e0 03 10 aa   mov	x0, x16
0x1007664f8:  c8 42 00 91   add	x8, x22, #0x10
0x1007664fc:  23 21 00 91   add	x3, x9, #0x8
0x100766500:  e1 03 14 aa   mov	x1, x20
0x100766504:  e2 03 13 aa   mov	x2, x19
0x100766508:  15 00 80 d2   mov	x21, #0
0x10076650c:  89 85 38 94   bl	j__$s2os21OSAllocatedUnfairLockV10FindMyBaseE14callAsFunctionyqd__qd__yYbKXEKs8SendableRd__lF
0x100766510:  d4 0a 40 f9   ldr	x20, [x22, #0x10]
0x100766514:  d4 1e 00 f9   str	x20, [x22, #0x38]
0x100766518:  88 75 00 f0   adrp	x8, 0x101619000
0x10076651c:  00 45 41 b9   ldr	w0, [x8, #0x144]
0x100766520:  94 95 38 94   bl	j__swift_task_alloc
0x100766524:  f1 03 16 aa   mov	x17, x22
0x100766528:  c0 22 00 f9   str	x0, [x22, #0x40]
0x10076652c:  f0 03 00 aa   mov	x16, x0
0x100766530:  50 b4 f7 f2   movk	x16, #0xbda2, lsl #0x30
0x100766534:  11 0a c1 da   pacda	x17, x16
0x100766538:  11 00 00 f9   str	x17, [x0]
0x10076653c:  08 20 00 91   add	x8, x0, #0x8
0x100766540:  10 00 00 90   adrp	x16, 0x100766000
0x100766544:  10 62 16 91   add	x16, x16, #0x598
0x100766548:  f1 03 08 aa   mov	x17, x8
0x10076654c:  f1 e0 fa f2   movk	x17, #0xd707, lsl #0x30
0x100766550:  30 02 c1 da   pacia	x16, x17
0x100766554:  10 04 00 f9   str	x16, [x0, #0x8]
0x100766558:  c8 86 42 a9   ldp	x8, x1, [x22, #0x28]
0x10076655c:  f6 03 00 aa   mov	x22, x0
0x100766560:  e0 03 08 aa   mov	x0, x8
0x100766564:  e2 03 01 aa   mov	x2, x1
0x100766568:  23 00 80 52   mov	w3, #0x1
0x10076656c:  04 00 80 52   mov	w4, #0
0x100766570:  05 00 80 52   mov	w5, #0
0x100766574:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x100766578:  f5 cf 40 a9   ldp	x21, x19, [sp, #0x8]
0x10076657c:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x100766580:  ff c3 00 91   add	sp, sp, #0x30
0x100766584:  ff 23 03 d5   autibsp
0x100766588:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10076658c:  50 00 f0 b6   tbz	x16, #0x3e, loc_100766594 ; ⤵ 0x8
0x100766590:  20 8e 38 d4   brk	#0xc471
0x100766594:  ; loc_100766594
0x100766594:  a8 06 02 14   b	0x1007e8034

sub_100766598:
0x100766598:  7f 23 03 d5   pacibsp
0x10076659c:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x1007665a0:  ff 43 01 d1   sub	sp, sp, #0x50
0x1007665a4:  fa e7 00 a9   stp	x26, x25, [sp, #0x8]
0x1007665a8:  f8 df 01 a9   stp	x24, x23, [sp, #0x18]
0x1007665ac:  f5 cf 02 a9   stp	x21, x19, [sp, #0x28]
0x1007665b0:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x1007665b4:  f0 e3 00 91   add	x16, sp, #0x38
0x1007665b8:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x1007665bc:  f1 03 16 aa   mov	x17, x22
0x1007665c0:  11 0e c1 da   pacdb	x17, x16
0x1007665c4:  f1 1f 00 f9   str	x17, [sp, #0x38]
0x1007665c8:  fd 03 01 91   add	fp, sp, #0x40
0x1007665cc:  f5 03 02 aa   mov	x21, x2
0x1007665d0:  f3 03 01 aa   mov	x19, x1
0x1007665d4:  f8 03 00 aa   mov	x24, x0
0x1007665d8:  f1 03 16 aa   mov	x17, x22
0x1007665dc:  c8 02 40 f9   ldr	x8, [x22]
0x1007665e0:  f0 03 08 aa   mov	x16, x8
0x1007665e4:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x1007665e8:  30 1a c1 da   autda	x16, x17
0x1007665ec:  f1 03 10 aa   mov	x17, x16
0x1007665f0:  f1 47 c1 da   xpacd	x17
0x1007665f4:  1f 02 11 eb   cmp	x16, x17
0x1007665f8:  40 00 00 54   b.eq	loc_100766600 ; ⤵ 0x8
0x1007665fc:  40 8e 38 d4   brk	#0xc472
0x100766600:  ; loc_100766600
0x100766600:  f9 03 10 aa   mov	x25, x16
0x100766604:  a9 23 00 d1   sub	x9, fp, #0x8
0x100766608:  b0 23 00 d1   sub	x16, fp, #0x8
0x10076660c:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x100766610:  f1 03 19 aa   mov	x17, x25
0x100766614:  11 0a c1 da   pacda	x17, x16
0x100766618:  31 01 00 f9   str	x17, [x9]
0x10076661c:  f0 03 08 aa   mov	x16, x8
0x100766620:  f1 03 16 aa   mov	x17, x22
0x100766624:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x100766628:  30 1a c1 da   autda	x16, x17
0x10076662c:  00 22 40 f9   ldr	x0, [x16, #0x40]
0x100766630:  f0 03 08 aa   mov	x16, x8
0x100766634:  f1 03 16 aa   mov	x17, x22
0x100766638:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x10076663c:  30 1a c1 da   autda	x16, x17
0x100766640:  1a 1e 40 f9   ldr	x26, [x16, #0x38]
0x100766644:  d0 02 40 f9   ldr	x16, [x22]
0x100766648:  f1 03 16 aa   mov	x17, x22
0x10076664c:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x100766650:  30 1a c1 da   autda	x16, x17
0x100766654:  f1 03 10 aa   mov	x17, x16
0x100766658:  f1 47 c1 da   xpacd	x17
0x10076665c:  1f 02 11 eb   cmp	x16, x17
0x100766660:  40 00 00 54   b.eq	loc_100766668 ; ⤵ 0x8
0x100766664:  40 8e 38 d4   brk	#0xc472
0x100766668:  ; loc_100766668
0x100766668:  f7 03 10 aa   mov	x23, x16
0x10076666c:  34 27 00 f9   str	x20, [x25, #0x48]
0x100766670:  4c 95 38 94   bl	j__swift_task_dealloc
0x100766674:  e0 03 1a aa   mov	x0, x26
0x100766678:  12 95 38 94   bl	j__swift_release
0x10076667c:  b4 00 00 b4   cbz	x20, loc_100766690 ; ⤵ 0x14
0x100766680:  10 00 00 90   adrp	x16, 0x100766000
0x100766684:  10 32 1c 91   add	x16, x16, #0x70c
0x100766688:  f0 23 c1 da   paciza	x16
0x10076668c:  06 00 00 14   b	loc_1007666a4 ; ⤵ 0x18
0x100766690:  ; loc_100766690
0x100766690:  35 83 01 39   strb	w21, [x25, #0x60]
0x100766694:  33 63 05 a9   stp	x19, x24, [x25, #0x50]
0x100766698:  10 00 00 90   adrp	x16, 0x100766000
0x10076669c:  10 82 1b 91   add	x16, x16, #0x6e0
0x1007666a0:  f0 23 c1 da   paciza	x16
0x1007666a4:  ; loc_1007666a4
0x1007666a4:  e0 03 10 aa   mov	x0, x16
0x1007666a8:  f6 03 17 aa   mov	x22, x23
0x1007666ac:  01 00 80 d2   mov	x1, #0
0x1007666b0:  02 00 80 d2   mov	x2, #0
0x1007666b4:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x1007666b8:  f5 cf 42 a9   ldp	x21, x19, [sp, #0x28]
0x1007666bc:  f8 df 41 a9   ldp	x24, x23, [sp, #0x18]
0x1007666c0:  fa e7 40 a9   ldp	x26, x25, [sp, #0x8]
0x1007666c4:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x1007666c8:  ff 43 01 91   add	sp, sp, #0x50
0x1007666cc:  ff 23 03 d5   autibsp
0x1007666d0:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1007666d4:  50 00 f0 b6   tbz	x16, #0x3e, loc_1007666dc ; ⤵ 0x8
0x1007666d8:  20 8e 38 d4   brk	#0xc471
0x1007666dc:  ; loc_1007666dc
0x1007666dc:  41 95 38 14   b	j__swift_task_switch

sub_1007666e0:
0x1007666e0:  c8 82 41 39   ldrb	w8, [x22, #0x60]
0x1007666e4:  c9 0e 40 f9   ldr	x9, [x22, #0x18]
0x1007666e8:  c0 16 c0 3d   ldr	q0, [x22, #0x50]
0x1007666ec:  00 40 00 6e   ext	v0.16b, v0.16b, v0.16b, #0x8
0x1007666f0:  20 01 80 3d   str	q0, [x9]
0x1007666f4:  28 41 00 39   strb	w8, [x9, #0x10]
0x1007666f8:  e0 03 16 aa   mov	x0, x22
0x1007666fc:  01 8c 40 f8   ldr	x1, [x0, #0x8]!
0x100766700:  f0 03 00 aa   mov	x16, x0
0x100766704:  f0 e0 fa f2   movk	x16, #0xd707, lsl #0x30
0x100766708:  30 08 1f d7   braa	x1, x16

sub_10076670c:
0x10076670c:  7f 23 03 d5   pacibsp

