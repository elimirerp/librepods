
sub_101094420:
0x101094420:  7f 23 03 d5   pacibsp
0x101094424:  ff 43 02 d1   sub	sp, sp, #0x90
0x101094428:  fa 67 04 a9   stp	x26, x25, [sp, #0x40]
0x10109442c:  f8 5f 05 a9   stp	x24, x23, [sp, #0x50]
0x101094430:  f6 57 06 a9   stp	x22, x21, [sp, #0x60]
0x101094434:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x101094438:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x10109443c:  fd 03 02 91   add	fp, sp, #0x80
0x101094440:  93 4a 40 f9   ldr	x19, [x20, #0x90]
0x101094444:  53 0c 00 b4   cbz	x19, loc_1010945cc ; ⤵ 0x188
0x101094448:  f6 03 14 aa   mov	x22, x20
0x10109444c:  f8 03 00 aa   mov	x24, x0
0x101094450:  77 0a 40 f9   ldr	x23, [x19, #0x10]
0x101094454:  40 42 00 90   adrp	x0, 0x1018dc000
0x101094458:  00 00 22 91   add	x0, x0, #0x880 ; data_1018dc880 (__DATA_CONST.__const)
0x10109445c:  01 04 80 52   mov	w1, #0x20
0x101094460:  e2 00 80 52   mov	w2, #0x7
0x101094464:  53 dc 13 94   bl	j__swift_allocObject
0x101094468:  f4 03 00 aa   mov	x20, x0
0x10109446c:  13 60 01 a9   stp	x19, x24, [x0, #0x10]
0x101094470:  40 42 00 90   adrp	x0, 0x1018dc000
0x101094474:  00 a0 22 91   add	x0, x0, #0x8a8 ; data_1018dc8a8 (__DATA_CONST.__const)
0x101094478:  01 04 80 52   mov	w1, #0x20
0x10109447c:  e2 00 80 52   mov	w2, #0x7
0x101094480:  4c dc 13 94   bl	j__swift_allocObject
0x101094484:  f5 03 00 aa   mov	x21, x0
0x101094488:  10 00 00 b0   adrp	x16, 0x101095000
0x10109448c:  10 e2 27 91   add	x16, x16, #0x9f8
0x101094490:  11 e1 81 d2   mov	x17, #0xf08
0x101094494:  30 02 c1 da   pacia	x16, x17
0x101094498:  10 50 01 a9   stp	x16, x20, [x0, #0x10]
0x10109449c:  f0 81 ff 90   adrp	x16, 0x1000d0000
0x1010944a0:  10 12 1c 91   add	x16, x16, #0x704
0x1010944a4:  11 e1 81 d2   mov	x17, #0xf08
0x1010944a8:  30 02 c1 da   pacia	x16, x17
0x1010944ac:  f0 03 03 a9   stp	x16, x0, [sp, #0x30]
0x1010944b0:  e8 43 00 91   add	x8, sp, #0x10
0x1010944b4:  90 3f 00 d0   adrp	x16, 0x101886000
0x1010944b8:  10 fe 42 f9   ldr	x16, [x16, #0x5f8] ; __got.__NSConcreteStackBlock
0x1010944bc:  f1 03 08 aa   mov	x17, x8
0x1010944c0:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x1010944c4:  30 0a c1 da   pacda	x16, x17
0x1010944c8:  f0 0b 00 f9   str	x16, [sp, #0x10]
0x1010944cc:  a9 2a 00 f0   adrp	x9, 0x1015eb000
0x1010944d0:  20 49 45 fd   ldr	d0, [x9, #0xa90]
0x1010944d4:  e0 0f 00 fd   str	d0, [sp, #0x18]
0x1010944d8:  08 41 00 91   add	x8, x8, #0x10
0x1010944dc:  90 85 ff f0   adrp	x16, 0x100147000
0x1010944e0:  10 f2 3b 91   add	x16, x16, #0xefc
0x1010944e4:  10 01 c1 da   pacia	x16, x8
0x1010944e8:  48 42 00 90   adrp	x8, 0x1018dc000
0x1010944ec:  08 01 23 91   add	x8, x8, #0x8c0 ; data_1018dc8c0 (__DATA_CONST.__const)
0x1010944f0:  f0 23 02 a9   stp	x16, x8, [sp, #0x20]
0x1010944f4:  e0 43 00 91   add	x0, sp, #0x10
0x1010944f8:  9e da 13 94   bl	j___Block_copy
0x1010944fc:  f9 03 00 aa   mov	x25, x0
0x101094500:  fa 1f 40 f9   ldr	x26, [sp, #0x38]
0x101094504:  e0 03 13 aa   mov	x0, x19
0x101094508:  41 00 80 52   mov	w1, #0x2
0x10109450c:  79 dd 13 94   bl	j__swift_retain_n
0x101094510:  9c db 13 94   bl	j__objc_retain_x24
0x101094514:  e0 03 15 aa   mov	x0, x21
0x101094518:  72 dd 13 94   bl	j__swift_retain
0x10109451c:  e0 03 1a aa   mov	x0, x26
0x101094520:  68 dd 13 94   bl	j__swift_release
0x101094524:  e0 03 17 aa   mov	x0, x23
0x101094528:  e1 03 19 aa   mov	x1, x25
0x10109452c:  dd da 13 94   bl	j__dispatch_sync
0x101094530:  e0 03 19 aa   mov	x0, x25
0x101094534:  93 da 13 94   bl	j___Block_release
0x101094538:  c1 28 00 b0   adrp	x1, 0x1015ad000
0x10109453c:  21 80 35 91   add	x1, x1, #0xd60 ; data_1015add60 (__TEXT.__cstring)
0x101094540:  e0 03 15 aa   mov	x0, x21
0x101094544:  a2 15 80 52   mov	w2, #0xad
0x101094548:  23 0b 80 52   mov	w3, #0x59
0x10109454c:  64 03 80 52   mov	w4, #0x1b
0x101094550:  25 00 80 52   mov	w5, #0x1
0x101094554:  37 dd 13 94   bl	j__swift_isEscapingClosureAtFileLocation
0x101094558:  f7 03 00 aa   mov	x23, x0
0x10109455c:  e0 03 14 aa   mov	x0, x20
0x101094560:  58 dd 13 94   bl	j__swift_release
0x101094564:  e0 03 15 aa   mov	x0, x21
0x101094568:  56 dd 13 94   bl	j__swift_release
0x10109456c:  f7 03 00 37   tbnz	w23, #0, loc_1010945e8 ; ⤵ 0x7c
0x101094570:  74 0a 40 f9   ldr	x20, [x19, #0x10]
0x101094574:  82 3f 00 d0   adrp	x2, 0x101886000
0x101094578:  42 ac 45 f9   ldr	x2, [x2, #0xb58] ; __got._$sSbN
0x10109457c:  30 cf ff 90   adrp	x16, 0x100a78000
0x101094580:  10 d2 10 91   add	x16, x16, #0x434
0x101094584:  f1 41 8e d2   mov	x17, #0x720f
0x101094588:  30 02 c1 da   pacia	x16, x17
0x10109458c:  e0 03 10 aa   mov	x0, x16
0x101094590:  e8 43 00 91   add	x8, sp, #0x10
0x101094594:  e1 03 13 aa   mov	x1, x19
0x101094598:  15 00 80 d2   mov	x21, #0
0x10109459c:  5d d4 13 94   bl	j__$sSo17OS_dispatch_queueC8DispatchE4sync7executexxyKXE_tKlF
0x1010945a0:  e8 43 40 39   ldrb	w8, [sp, #0x10]
0x1010945a4:  1f 05 00 71   cmp	w8, #0x1
0x1010945a8:  e1 00 00 54   b.ne	loc_1010945c4 ; ⤵ 0x1c
0x1010945ac:  f4 03 13 aa   mov	x20, x19
0x1010945b0:  3b d4 ea 97   bl	0x100b4969c
0x1010945b4:  e0 03 13 aa   mov	x0, x19
0x1010945b8:  42 dd 13 94   bl	j__swift_release
0x1010945bc:  d3 4a 40 f9   ldr	x19, [x22, #0x90]
0x1010945c0:  df 4a 00 f9   str	xzr, [x22, #0x90]
0x1010945c4:  ; loc_1010945c4
0x1010945c4:  e0 03 13 aa   mov	x0, x19
0x1010945c8:  3e dd 13 94   bl	j__swift_release
0x1010945cc:  ; loc_1010945cc
0x1010945cc:  fd 7b 48 a9   ldp	fp, lr, [sp, #0x80]
0x1010945d0:  f4 4f 47 a9   ldp	x20, x19, [sp, #0x70]
0x1010945d4:  f6 57 46 a9   ldp	x22, x21, [sp, #0x60]
0x1010945d8:  f8 5f 45 a9   ldp	x24, x23, [sp, #0x50]
0x1010945dc:  fa 67 44 a9   ldp	x26, x25, [sp, #0x40]
0x1010945e0:  ff 43 02 91   add	sp, sp, #0x90
0x1010945e4:  ff 0f 5f d6   retab
0x1010945e8:  ; loc_1010945e8
0x1010945e8:  20 00 20 d4   brk	#0x1

sub_1010945ec:
0x1010945ec:  7f 23 03 d5   pacibsp
0x1010945f0:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x1010945f4:  ff 83 00 d1   sub	sp, sp, #0x20
0x1010945f8:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1010945fc:  f0 23 00 91   add	x16, sp, #0x8
0x101094600:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x101094604:  f1 03 16 aa   mov	x17, x22
0x101094608:  11 0e c1 da   pacdb	x17, x16
0x10109460c:  f1 07 00 f9   str	x17, [sp, #0x8]
0x101094610:  fd 43 00 91   add	fp, sp, #0x10
0x101094614:  c0 52 02 a9   stp	x0, x20, [x22, #0x20]
0x101094618:  00 00 80 d2   mov	x0, #0
0x10109461c:  65 cd 13 94   bl	j__$s2os6LoggerVMa
0x101094620:  c0 1a 00 f9   str	x0, [x22, #0x30]
0x101094624:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x101094628:  f0 03 08 aa   mov	x16, x8
0x10109462c:  f1 03 00 aa   mov	x17, x0
0x101094630:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x101094634:  30 1a c1 da   autda	x16, x17
0x101094638:  f1 03 10 aa   mov	x17, x16
0x10109463c:  f1 47 c1 da   xpacd	x17
0x101094640:  1f 02 11 eb   cmp	x16, x17
0x101094644:  40 00 00 54   b.eq	loc_10109464c ; ⤵ 0x8
0x101094648:  40 8e 38 d4   brk	#0xc472
0x10109464c:  ; loc_10109464c
0x10109464c:  d0 1e 00 f9   str	x16, [x22, #0x38]
0x101094650:  f0 03 08 aa   mov	x16, x8
0x101094654:  f1 03 00 aa   mov	x17, x0
0x101094658:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10109465c:  30 1a c1 da   autda	x16, x17
0x101094660:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x101094664:  08 3d 00 91   add	x8, x8, #0xf
0x101094668:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x10109466c:  41 dd 13 94   bl	j__swift_task_alloc
0x101094670:  c0 22 00 f9   str	x0, [x22, #0x40]
0x101094674:  10 00 00 90   adrp	x16, 0x101094000
0x101094678:  10 b2 1a 91   add	x16, x16, #0x6ac
0x10109467c:  f0 23 c1 da   paciza	x16
0x101094680:  e0 03 10 aa   mov	x0, x16
0x101094684:  e1 03 14 aa   mov	x1, x20
0x101094688:  02 00 80 d2   mov	x2, #0
0x10109468c:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101094690:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x101094694:  ff 83 00 91   add	sp, sp, #0x20
0x101094698:  ff 23 03 d5   autibsp
0x10109469c:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1010946a0:  50 00 f0 b6   tbz	x16, #0x3e, loc_1010946a8 ; ⤵ 0x8
0x1010946a4:  20 8e 38 d4   brk	#0xc471
0x1010946a8:  ; loc_1010946a8
0x1010946a8:  4e dd 13 14   b	j__swift_task_switch

sub_1010946ac:
0x1010946ac:  7f 23 03 d5   pacibsp
0x1010946b0:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x1010946b4:  ff 43 01 d1   sub	sp, sp, #0x50
0x1010946b8:  f9 0b 00 f9   str	x25, [sp, #0x10]
0x1010946bc:  f8 df 01 a9   stp	x24, x23, [sp, #0x18]
0x1010946c0:  f5 cf 02 a9   stp	x21, x19, [sp, #0x28]
0x1010946c4:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x1010946c8:  f0 e3 00 91   add	x16, sp, #0x38
0x1010946cc:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x1010946d0:  f1 03 16 aa   mov	x17, x22
0x1010946d4:  11 0e c1 da   pacdb	x17, x16
0x1010946d8:  f1 1f 00 f9   str	x17, [sp, #0x38]
0x1010946dc:  fd 03 01 91   add	fp, sp, #0x40
0x1010946e0:  88 45 00 b0   adrp	x8, 0x101945000
0x1010946e4:  08 01 44 f9   ldr	x8, [x8, #0x800] ; data_101945800 (__DATA.__data)
0x1010946e8:  1f 05 00 b1   cmn	x8, #0x1
0x1010946ec:  a1 0e 00 54   b.ne	loc_1010948c0 ; ⤵ 0x1d4
0x1010946f0:  ; loc_1010946f0
0x1010946f0:  d5 d2 43 a9   ldp	x21, x20, [x22, #0x38]
0x1010946f4:  d3 1a 40 f9   ldr	x19, [x22, #0x30]
0x1010946f8:  81 4b 00 f0   adrp	x1, 0x101a07000
0x1010946fc:  21 00 3d 91   add	x1, x1, #0xf40
0x101094700:  e0 03 13 aa   mov	x0, x19
0x101094704:  e5 cc bd 97   bl	0x100007a98
0x101094708:  e1 03 00 aa   mov	x1, x0
0x10109470c:  a8 0e 41 f8   ldr	x8, [x21, #0x10]!
0x101094710:  e0 03 14 aa   mov	x0, x20
0x101094714:  e2 03 13 aa   mov	x2, x19
0x101094718:  f1 03 15 aa   mov	x17, x21
0x10109471c:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x101094720:  11 09 3f d7   blraa	x8, x17
0x101094724:  1b cd 13 94   bl	j__$s2os6LoggerV9logObjectSo03OS_a1_C0Cvg
0x101094728:  f7 03 00 aa   mov	x23, x0
0x10109472c:  99 d3 13 94   bl	j__$sSo13os_log_type_ta0A0E7defaultABvgZ
0x101094730:  f3 03 00 aa   mov	x19, x0
0x101094734:  01 1c 00 12   and	w1, w0, #0xff
0x101094738:  e0 03 17 aa   mov	x0, x23
0x10109473c:  35 db 13 94   bl	j__os_log_type_enabled
0x101094740:  60 02 00 34   cbz	w0, loc_10109478c ; ⤵ 0x4c
0x101094744:  40 00 80 52   mov	w0, #0x2
0x101094748:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10109474c:  f5 dc 13 94   bl	j__swift_slowAlloc
0x101094750:  f5 03 00 aa   mov	x21, x0
0x101094754:  1f 00 00 79   strh	wzr, [x0]
0x101094758:  60 7b ff 90   adrp	x0, 0x100000000
0x10109475c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x101094760:  e3 30 00 b0   adrp	x3, 0x1016b1000
0x101094764:  63 00 1e 91   add	x3, x3, #0x780 ; "LocalFindableConnectionMaterialService.startCharacteristicsMonitoring"
0x101094768:  62 1e 00 12   and	w2, w19, #0xff
0x10109476c:  e1 03 17 aa   mov	x1, x23
0x101094770:  e4 03 15 aa   mov	x4, x21
0x101094774:  45 00 80 52   mov	w5, #0x2
0x101094778:  16 da 13 94   bl	j___os_log_impl
0x10109477c:  e0 03 15 aa   mov	x0, x21
0x101094780:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x101094784:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x101094788:  ea dc 13 94   bl	j__swift_slowDealloc
0x10109478c:  ; loc_10109478c
0x10109478c:  d9 ce 43 a9   ldp	x25, x19, [x22, #0x38]
0x101094790:  d4 d6 42 a9   ldp	x20, x21, [x22, #0x28]
0x101094794:  d8 12 40 f9   ldr	x24, [x22, #0x20]
0x101094798:  ae da 13 94   bl	j__objc_release_x23
0x10109479c:  28 8f 40 f8   ldr	x8, [x25, #0x8]!
0x1010947a0:  e0 03 13 aa   mov	x0, x19
0x1010947a4:  e1 03 15 aa   mov	x1, x21
0x1010947a8:  f1 03 19 aa   mov	x17, x25
0x1010947ac:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x1010947b0:  11 09 3f d7   blraa	x8, x17
0x1010947b4:  e0 03 18 aa   mov	x0, x24
0x1010947b8:  3a fe ff 97   bl	0x1010940a0
0x1010947bc:  94 4a 40 f9   ldr	x20, [x20, #0x90]
0x1010947c0:  b4 01 00 b4   cbz	x20, loc_1010947f4 ; ⤵ 0x34
0x1010947c4:  d3 22 40 f9   ldr	x19, [x22, #0x40]
0x1010947c8:  e0 03 14 aa   mov	x0, x20
0x1010947cc:  c5 dc 13 94   bl	j__swift_retain
0x1010947d0:  89 cb ea 97   bl	0x100b475f4
0x1010947d4:  e0 03 14 aa   mov	x0, x20
0x1010947d8:  ba dc 13 94   bl	j__swift_release
0x1010947dc:  e0 03 13 aa   mov	x0, x19
0x1010947e0:  f0 dc 13 94   bl	j__swift_task_dealloc
0x1010947e4:  e0 03 16 aa   mov	x0, x22
0x1010947e8:  01 8c 40 f8   ldr	x1, [x0, #0x8]!
0x1010947ec:  14 00 80 d2   mov	x20, #0
0x1010947f0:  27 00 00 14   b	loc_10109488c ; ⤵ 0x9c
0x1010947f4:  ; loc_1010947f4
0x1010947f4:  d3 22 40 f9   ldr	x19, [x22, #0x40]
0x1010947f8:  00 00 80 d2   mov	x0, #0
0x1010947fc:  76 a6 c0 97   bl	0x1000be1d4
0x101094800:  f4 03 00 aa   mov	x20, x0
0x101094804:  28 00 80 52   mov	w8, #0x1
0x101094808:  f5 03 16 aa   mov	x21, x22
0x10109480c:  a8 8e 01 f8   str	x8, [x21, #0x18]!
0x101094810:  80 3f 00 d0   adrp	x0, 0x101886000
0x101094814:  00 70 47 f9   ldr	x0, [x0, #0xee0] ; __got.__swiftEmptyArrayStorage
0x101094818:  16 7e be 97   bl	0x100034070
0x10109481c:  f7 03 00 aa   mov	x23, x0
0x101094820:  20 45 00 90   adrp	x0, 0x101938000
0x101094824:  00 c0 3b 91   add	x0, x0, #0xef0 ; data_101938ef0 (__DATA.__data)
0x101094828:  50 81 ff d0   adrp	x16, 0x1000be000
0x10109482c:  10 52 07 91   add	x16, x16, #0x1d4 ; "\xc1\xc2"
0x101094830:  31 37 96 d2   mov	x17, #0xb1b9
0x101094834:  30 02 c1 da   pacia	x16, x17
0x101094838:  e2 03 10 aa   mov	x2, x16
0x10109483c:  b0 2a 00 d0   adrp	x16, 0x1015ea000
0x101094840:  10 82 19 91   add	x16, x16, #0x660 ; "\xb1\xcc)"
0x101094844:  71 dd 98 d2   mov	x17, #0xc6eb
0x101094848:  30 0a c1 da   pacda	x16, x17
0x10109484c:  e3 03 10 aa   mov	x3, x16
0x101094850:  e1 1f 80 52   mov	w1, #0xff
0x101094854:  6b 04 00 94   bl	0x101095a00
0x101094858:  e3 03 00 aa   mov	x3, x0
0x10109485c:  c8 42 00 91   add	x8, x22, #0x10
0x101094860:  e0 03 15 aa   mov	x0, x21
0x101094864:  e1 03 17 aa   mov	x1, x23
0x101094868:  e2 03 14 aa   mov	x2, x20
0x10109486c:  51 c2 13 94   bl	j__$s10Foundation21_BridgedStoredNSErrorPAAE_8userInfox4CodeQz_SDySSypGtcfC
0x101094870:  d4 0a 40 f9   ldr	x20, [x22, #0x10]
0x101094874:  f5 03 14 aa   mov	x21, x20
0x101094878:  2e dd 13 94   bl	j__swift_willThrow
0x10109487c:  e0 03 13 aa   mov	x0, x19
0x101094880:  c8 dc 13 94   bl	j__swift_task_dealloc
0x101094884:  e0 03 16 aa   mov	x0, x22
0x101094888:  01 8c 40 f8   ldr	x1, [x0, #0x8]!
0x10109488c:  ; loc_10109488c
0x10109488c:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x101094890:  f5 cf 42 a9   ldp	x21, x19, [sp, #0x28]
0x101094894:  f8 df 41 a9   ldp	x24, x23, [sp, #0x18]
0x101094898:  f9 0b 40 f9   ldr	x25, [sp, #0x10]
0x10109489c:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x1010948a0:  ff 43 01 91   add	sp, sp, #0x50
0x1010948a4:  ff 23 03 d5   autibsp
0x1010948a8:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1010948ac:  50 00 f0 b6   tbz	x16, #0x3e, loc_1010948b4 ; ⤵ 0x8
0x1010948b0:  20 8e 38 d4   brk	#0xc471
0x1010948b4:  ; loc_1010948b4
0x1010948b4:  f0 03 00 aa   mov	x16, x0
0x1010948b8:  f0 e0 fa f2   movk	x16, #0xd707, lsl #0x30
0x1010948bc:  30 08 1f d7   braa	x1, x16
0x1010948c0:  ; loc_1010948c0
0x1010948c0:  80 45 00 b0   adrp	x0, 0x101945000
0x1010948c4:  00 00 20 91   add	x0, x0, #0x800 ; data_101945800 (__DATA.__data)
0x1010948c8:  f0 ff ff f0   adrp	x16, 0x101093000
0x1010948cc:  10 f2 1b 91   add	x16, x16, #0x6fc
0x1010948d0:  f0 23 c1 da   paciza	x16
0x1010948d4:  e1 03 10 aa   mov	x1, x16
0x1010948d8:  6e dc 13 94   bl	j__swift_once
0x1010948dc:  85 ff ff 17   b	loc_1010946f0 ; ⤴ -0x1ec

sub_1010948e0:
0x1010948e0:  7f 23 03 d5   pacibsp
0x1010948e4:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x1010948e8:  ff 83 00 d1   sub	sp, sp, #0x20
0x1010948ec:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1010948f0:  f0 23 00 91   add	x16, sp, #0x8
0x1010948f4:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x1010948f8:  f1 03 16 aa   mov	x17, x22
0x1010948fc:  11 0e c1 da   pacdb	x17, x16
0x101094900:  f1 07 00 f9   str	x17, [sp, #0x8]
0x101094904:  fd 43 00 91   add	fp, sp, #0x10
0x101094908:  d4 12 00 f9   str	x20, [x22, #0x20]
0x10109490c:  00 00 80 d2   mov	x0, #0
0x101094910:  a8 cc 13 94   bl	j__$s2os6LoggerVMa
0x101094914:  c0 16 00 f9   str	x0, [x22, #0x28]
0x101094918:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x10109491c:  f0 03 08 aa   mov	x16, x8
0x101094920:  f1 03 00 aa   mov	x17, x0
0x101094924:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x101094928:  30 1a c1 da   autda	x16, x17
0x10109492c:  f1 03 10 aa   mov	x17, x16
0x101094930:  f1 47 c1 da   xpacd	x17
0x101094934:  1f 02 11 eb   cmp	x16, x17
0x101094938:  40 00 00 54   b.eq	loc_101094940 ; ⤵ 0x8
0x10109493c:  40 8e 38 d4   brk	#0xc472
0x101094940:  ; loc_101094940
0x101094940:  d0 1a 00 f9   str	x16, [x22, #0x30]
0x101094944:  f0 03 08 aa   mov	x16, x8
0x101094948:  f1 03 00 aa   mov	x17, x0
0x10109494c:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x101094950:  30 1a c1 da   autda	x16, x17
0x101094954:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x101094958:  08 3d 00 91   add	x8, x8, #0xf
0x10109495c:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x101094960:  84 dc 13 94   bl	j__swift_task_alloc
0x101094964:  c0 1e 00 f9   str	x0, [x22, #0x38]
0x101094968:  10 00 00 90   adrp	x16, 0x101094000
0x10109496c:  10 82 26 91   add	x16, x16, #0x9a0
0x101094970:  f0 23 c1 da   paciza	x16
0x101094974:  e0 03 10 aa   mov	x0, x16
0x101094978:  e1 03 14 aa   mov	x1, x20
0x10109497c:  02 00 80 d2   mov	x2, #0
0x101094980:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101094984:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x101094988:  ff 83 00 91   add	sp, sp, #0x20
0x10109498c:  ff 23 03 d5   autibsp
0x101094990:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101094994:  50 00 f0 b6   tbz	x16, #0x3e, loc_10109499c ; ⤵ 0x8
0x101094998:  20 8e 38 d4   brk	#0xc471
0x10109499c:  ; loc_10109499c
0x10109499c:  91 dc 13 14   b	j__swift_task_switch

sub_1010949a0:
0x1010949a0:  7f 23 03 d5   pacibsp
0x1010949a4:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x1010949a8:  ff 03 01 d1   sub	sp, sp, #0x40
0x1010949ac:  f8 df 00 a9   stp	x24, x23, [sp, #0x8]
0x1010949b0:  f5 cf 01 a9   stp	x21, x19, [sp, #0x18]
0x1010949b4:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x1010949b8:  f0 a3 00 91   add	x16, sp, #0x28
0x1010949bc:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x1010949c0:  f1 03 16 aa   mov	x17, x22
0x1010949c4:  11 0e c1 da   pacdb	x17, x16
0x1010949c8:  f1 17 00 f9   str	x17, [sp, #0x28]
0x1010949cc:  fd c3 00 91   add	fp, sp, #0x30
0x1010949d0:  88 45 00 b0   adrp	x8, 0x101945000
0x1010949d4:  08 01 44 f9   ldr	x8, [x8, #0x800] ; data_101945800 (__DATA.__data)
0x1010949d8:  1f 05 00 b1   cmn	x8, #0x1
0x1010949dc:  21 0e 00 54   b.ne	loc_101094ba0 ; ⤵ 0x1c4
0x1010949e0:  ; loc_1010949e0
0x1010949e0:  d5 52 43 a9   ldp	x21, x20, [x22, #0x30]
0x1010949e4:  d3 16 40 f9   ldr	x19, [x22, #0x28]
0x1010949e8:  81 4b 00 f0   adrp	x1, 0x101a07000
0x1010949ec:  21 00 3d 91   add	x1, x1, #0xf40
0x1010949f0:  e0 03 13 aa   mov	x0, x19
0x1010949f4:  29 cc bd 97   bl	0x100007a98
0x1010949f8:  e1 03 00 aa   mov	x1, x0
0x1010949fc:  a8 0e 41 f8   ldr	x8, [x21, #0x10]!
0x101094a00:  e0 03 14 aa   mov	x0, x20
0x101094a04:  e2 03 13 aa   mov	x2, x19
0x101094a08:  f1 03 15 aa   mov	x17, x21
0x101094a0c:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x101094a10:  11 09 3f d7   blraa	x8, x17
0x101094a14:  5f cc 13 94   bl	j__$s2os6LoggerV9logObjectSo03OS_a1_C0Cvg
0x101094a18:  f4 03 00 aa   mov	x20, x0
0x101094a1c:  dd d2 13 94   bl	j__$sSo13os_log_type_ta0A0E7defaultABvgZ
0x101094a20:  f3 03 00 aa   mov	x19, x0
0x101094a24:  01 1c 00 12   and	w1, w0, #0xff
0x101094a28:  e0 03 14 aa   mov	x0, x20
0x101094a2c:  79 da 13 94   bl	j__os_log_type_enabled
0x101094a30:  60 02 00 34   cbz	w0, loc_101094a7c ; ⤵ 0x4c
0x101094a34:  40 00 80 52   mov	w0, #0x2
0x101094a38:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x101094a3c:  39 dc 13 94   bl	j__swift_slowAlloc
0x101094a40:  f5 03 00 aa   mov	x21, x0
0x101094a44:  1f 00 00 79   strh	wzr, [x0]
0x101094a48:  60 7b ff 90   adrp	x0, 0x100000000
0x101094a4c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x101094a50:  e3 30 00 b0   adrp	x3, 0x1016b1000
0x101094a54:  63 00 1d 91   add	x3, x3, #0x740 ; "AccessoryDiscoveryService.stopCharacteristicsMonitoring"
0x101094a58:  62 1e 00 12   and	w2, w19, #0xff
0x101094a5c:  e1 03 14 aa   mov	x1, x20
0x101094a60:  e4 03 15 aa   mov	x4, x21
0x101094a64:  45 00 80 52   mov	w5, #0x2
0x101094a68:  5a d9 13 94   bl	j___os_log_impl
0x101094a6c:  e0 03 15 aa   mov	x0, x21
0x101094a70:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x101094a74:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x101094a78:  2e dc 13 94   bl	j__swift_slowDealloc
0x101094a7c:  ; loc_101094a7c
0x101094a7c:  d7 4e 43 a9   ldp	x23, x19, [x22, #0x30]
0x101094a80:  d8 56 42 a9   ldp	x24, x21, [x22, #0x20]
0x101094a84:  e7 d9 13 94   bl	j__objc_release_x20
0x101094a88:  e8 8e 40 f8   ldr	x8, [x23, #0x8]!
0x101094a8c:  e0 03 13 aa   mov	x0, x19
0x101094a90:  e1 03 15 aa   mov	x1, x21
0x101094a94:  f1 03 17 aa   mov	x17, x23
0x101094a98:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x101094a9c:  11 09 3f d7   blraa	x8, x17
0x101094aa0:  14 4b 40 f9   ldr	x20, [x24, #0x90]
0x101094aa4:  b4 01 00 b4   cbz	x20, loc_101094ad8 ; ⤵ 0x34
0x101094aa8:  d3 1e 40 f9   ldr	x19, [x22, #0x38]
0x101094aac:  e0 03 14 aa   mov	x0, x20
0x101094ab0:  0c dc 13 94   bl	j__swift_retain
0x101094ab4:  fa d2 ea 97   bl	0x100b4969c
0x101094ab8:  e0 03 14 aa   mov	x0, x20
0x101094abc:  01 dc 13 94   bl	j__swift_release
0x101094ac0:  e0 03 13 aa   mov	x0, x19
0x101094ac4:  37 dc 13 94   bl	j__swift_task_dealloc
0x101094ac8:  e0 03 16 aa   mov	x0, x22
0x101094acc:  01 8c 40 f8   ldr	x1, [x0, #0x8]!
0x101094ad0:  14 00 80 d2   mov	x20, #0
0x101094ad4:  27 00 00 14   b	loc_101094b70 ; ⤵ 0x9c
0x101094ad8:  ; loc_101094ad8
0x101094ad8:  d3 1e 40 f9   ldr	x19, [x22, #0x38]
0x101094adc:  00 00 80 d2   mov	x0, #0
0x101094ae0:  bd a5 c0 97   bl	0x1000be1d4
0x101094ae4:  f4 03 00 aa   mov	x20, x0
0x101094ae8:  28 00 80 52   mov	w8, #0x1
0x101094aec:  f5 03 16 aa   mov	x21, x22
0x101094af0:  a8 8e 01 f8   str	x8, [x21, #0x18]!
0x101094af4:  80 3f 00 d0   adrp	x0, 0x101886000
0x101094af8:  00 70 47 f9   ldr	x0, [x0, #0xee0] ; __got.__swiftEmptyArrayStorage
0x101094afc:  5d 7d be 97   bl	0x100034070
0x101094b00:  f7 03 00 aa   mov	x23, x0
0x101094b04:  20 45 00 90   adrp	x0, 0x101938000
0x101094b08:  00 c0 3b 91   add	x0, x0, #0xef0 ; data_101938ef0 (__DATA.__data)
0x101094b0c:  50 81 ff d0   adrp	x16, 0x1000be000
0x101094b10:  10 52 07 91   add	x16, x16, #0x1d4 ; "\xc1\xc2"
0x101094b14:  31 37 96 d2   mov	x17, #0xb1b9
0x101094b18:  30 02 c1 da   pacia	x16, x17
0x101094b1c:  e2 03 10 aa   mov	x2, x16
0x101094b20:  b0 2a 00 d0   adrp	x16, 0x1015ea000
0x101094b24:  10 82 19 91   add	x16, x16, #0x660 ; "\xb1\xcc)"
0x101094b28:  71 dd 98 d2   mov	x17, #0xc6eb
0x101094b2c:  30 0a c1 da   pacda	x16, x17
0x101094b30:  e3 03 10 aa   mov	x3, x16
0x101094b34:  e1 1f 80 52   mov	w1, #0xff
0x101094b38:  b2 03 00 94   bl	0x101095a00
0x101094b3c:  e3 03 00 aa   mov	x3, x0
0x101094b40:  c8 42 00 91   add	x8, x22, #0x10
0x101094b44:  e0 03 15 aa   mov	x0, x21
0x101094b48:  e1 03 17 aa   mov	x1, x23
0x101094b4c:  e2 03 14 aa   mov	x2, x20
0x101094b50:  98 c1 13 94   bl	j__$s10Foundation21_BridgedStoredNSErrorPAAE_8userInfox4CodeQz_SDySSypGtcfC
0x101094b54:  d4 0a 40 f9   ldr	x20, [x22, #0x10]
0x101094b58:  f5 03 14 aa   mov	x21, x20
0x101094b5c:  75 dc 13 94   bl	j__swift_willThrow
0x101094b60:  e0 03 13 aa   mov	x0, x19
0x101094b64:  0f dc 13 94   bl	j__swift_task_dealloc
0x101094b68:  e0 03 16 aa   mov	x0, x22
0x101094b6c:  01 8c 40 f8   ldr	x1, [x0, #0x8]!
0x101094b70:  ; loc_101094b70
0x101094b70:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x101094b74:  f5 cf 41 a9   ldp	x21, x19, [sp, #0x18]
0x101094b78:  f8 df 40 a9   ldp	x24, x23, [sp, #0x8]
0x101094b7c:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x101094b80:  ff 03 01 91   add	sp, sp, #0x40
0x101094b84:  ff 23 03 d5   autibsp
0x101094b88:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101094b8c:  50 00 f0 b6   tbz	x16, #0x3e, loc_101094b94 ; ⤵ 0x8
0x101094b90:  20 8e 38 d4   brk	#0xc471
0x101094b94:  ; loc_101094b94
0x101094b94:  f0 03 00 aa   mov	x16, x0
0x101094b98:  f0 e0 fa f2   movk	x16, #0xd707, lsl #0x30
0x101094b9c:  30 08 1f d7   braa	x1, x16
0x101094ba0:  ; loc_101094ba0
0x101094ba0:  80 45 00 b0   adrp	x0, 0x101945000
0x101094ba4:  00 00 20 91   add	x0, x0, #0x800 ; data_101945800 (__DATA.__data)
0x101094ba8:  f0 ff ff f0   adrp	x16, 0x101093000
0x101094bac:  10 f2 1b 91   add	x16, x16, #0x6fc
0x101094bb0:  f0 23 c1 da   paciza	x16
0x101094bb4:  e1 03 10 aa   mov	x1, x16
0x101094bb8:  b6 db 13 94   bl	j__swift_once
0x101094bbc:  89 ff ff 17   b	loc_1010949e0 ; ⤴ -0x1dc

sub_101094bc0:
0x101094bc0:  7f 23 03 d5   pacibsp
0x101094bc4:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x101094bc8:  ff 83 00 d1   sub	sp, sp, #0x20
0x101094bcc:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101094bd0:  f0 23 00 91   add	x16, sp, #0x8
0x101094bd4:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x101094bd8:  f1 03 16 aa   mov	x17, x22
0x101094bdc:  11 0e c1 da   pacdb	x17, x16
0x101094be0:  f1 07 00 f9   str	x17, [sp, #0x8]
0x101094be4:  fd 43 00 91   add	fp, sp, #0x10
0x101094be8:  c0 52 02 a9   stp	x0, x20, [x22, #0x20]
0x101094bec:  c0 44 00 d0   adrp	x0, 0x10192e000
0x101094bf0:  00 c0 27 91   add	x0, x0, #0x9f0 ; data_10192e9f0 (__DATA.__data)
0x101094bf4:  41 2c 00 b0   adrp	x1, 0x10161d000
0x101094bf8:  21 40 12 91   add	x1, x1, #0x490 ; "\xe2<\n"
0x101094bfc:  fe 8d c0 97   bl	0x1000b83f4
0x101094c00:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x101094c04:  f1 03 00 aa   mov	x17, x0
0x101094c08:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x101094c0c:  30 1a c1 da   autda	x16, x17
0x101094c10:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x101094c14:  08 3d 00 91   add	x8, x8, #0xf
0x101094c18:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x101094c1c:  d5 db 13 94   bl	j__swift_task_alloc
0x101094c20:  c0 1a 00 f9   str	x0, [x22, #0x30]
0x101094c24:  00 00 80 d2   mov	x0, #0
0x101094c28:  d3 ce bd 97   bl	0x100008774
0x101094c2c:  c0 1e 00 f9   str	x0, [x22, #0x38]
0x101094c30:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x101094c34:  f0 03 08 aa   mov	x16, x8
0x101094c38:  f1 03 00 aa   mov	x17, x0
0x101094c3c:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x101094c40:  30 1a c1 da   autda	x16, x17
0x101094c44:  f1 03 10 aa   mov	x17, x16
0x101094c48:  f1 47 c1 da   xpacd	x17
0x101094c4c:  1f 02 11 eb   cmp	x16, x17
0x101094c50:  40 00 00 54   b.eq	loc_101094c58 ; ⤵ 0x8
0x101094c54:  40 8e 38 d4   brk	#0xc472
0x101094c58:  ; loc_101094c58
0x101094c58:  d0 22 00 f9   str	x16, [x22, #0x40]
0x101094c5c:  f0 03 08 aa   mov	x16, x8
0x101094c60:  f1 03 00 aa   mov	x17, x0
0x101094c64:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x101094c68:  30 1a c1 da   autda	x16, x17
0x101094c6c:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x101094c70:  08 3d 00 91   add	x8, x8, #0xf
0x101094c74:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x101094c78:  be db 13 94   bl	j__swift_task_alloc
0x101094c7c:  c0 26 00 f9   str	x0, [x22, #0x48]
0x101094c80:  88 3f 00 d0   adrp	x8, 0x101886000
0x101094c84:  08 25 41 f9   ldr	x8, [x8, #0x248] ; __got._$s19FindMyDaemonSupport6daemonAA0C0CvgTu
0x101094c88:  00 05 40 b9   ldr	w0, [x8, #0x4]
0x101094c8c:  b9 db 13 94   bl	j__swift_task_alloc
0x101094c90:  f1 03 16 aa   mov	x17, x22
0x101094c94:  c0 2a 00 f9   str	x0, [x22, #0x50]
0x101094c98:  f0 03 00 aa   mov	x16, x0
0x101094c9c:  50 b4 f7 f2   movk	x16, #0xbda2, lsl #0x30
0x101094ca0:  11 0a c1 da   pacda	x17, x16
0x101094ca4:  11 00 00 f9   str	x17, [x0]
0x101094ca8:  08 20 00 91   add	x8, x0, #0x8
0x101094cac:  10 00 00 90   adrp	x16, 0x101094000
0x101094cb0:  10 a2 33 91   add	x16, x16, #0xce8
0x101094cb4:  f1 03 08 aa   mov	x17, x8
0x101094cb8:  f1 e0 fa f2   movk	x17, #0xd707, lsl #0x30
0x101094cbc:  30 02 c1 da   pacia	x16, x17
0x101094cc0:  10 04 00 f9   str	x16, [x0, #0x8]
0x101094cc4:  f6 03 00 aa   mov	x22, x0
0x101094cc8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101094ccc:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x101094cd0:  ff 83 00 91   add	sp, sp, #0x20
0x101094cd4:  ff 23 03 d5   autibsp
0x101094cd8:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101094cdc:  50 00 f0 b6   tbz	x16, #0x3e, loc_101094ce4 ; ⤵ 0x8
0x101094ce0:  20 8e 38 d4   brk	#0xc471
0x101094ce4:  ; loc_101094ce4
0x101094ce4:  e3 ca 13 14   b	j__$s19FindMyDaemonSupport6daemonAA0C0Cvg

sub_101094ce8:
0x101094ce8:  7f 23 03 d5   pacibsp
0x101094cec:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x101094cf0:  ff 03 01 d1   sub	sp, sp, #0x40
0x101094cf4:  f8 df 00 a9   stp	x24, x23, [sp, #0x8]
0x101094cf8:  f5 cf 01 a9   stp	x21, x19, [sp, #0x18]
0x101094cfc:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x101094d00:  f0 a3 00 91   add	x16, sp, #0x28
0x101094d04:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x101094d08:  f1 03 16 aa   mov	x17, x22
0x101094d0c:  11 0e c1 da   pacdb	x17, x16
0x101094d10:  f1 17 00 f9   str	x17, [sp, #0x28]
0x101094d14:  fd c3 00 91   add	fp, sp, #0x30
0x101094d18:  f4 03 00 aa   mov	x20, x0
0x101094d1c:  f1 03 16 aa   mov	x17, x22
0x101094d20:  c8 02 40 f9   ldr	x8, [x22]
0x101094d24:  f0 03 08 aa   mov	x16, x8
0x101094d28:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x101094d2c:  30 1a c1 da   autda	x16, x17
0x101094d30:  f1 03 10 aa   mov	x17, x16
0x101094d34:  f1 47 c1 da   xpacd	x17
0x101094d38:  1f 02 11 eb   cmp	x16, x17
0x101094d3c:  40 00 00 54   b.eq	loc_101094d44 ; ⤵ 0x8
0x101094d40:  40 8e 38 d4   brk	#0xc472
0x101094d44:  ; loc_101094d44
0x101094d44:  f5 03 10 aa   mov	x21, x16
0x101094d48:  a9 23 00 d1   sub	x9, fp, #0x8
0x101094d4c:  b0 23 00 d1   sub	x16, fp, #0x8
0x101094d50:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x101094d54:  f1 03 15 aa   mov	x17, x21
0x101094d58:  11 0a c1 da   pacda	x17, x16
0x101094d5c:  31 01 00 f9   str	x17, [x9]
0x101094d60:  f0 03 08 aa   mov	x16, x8
0x101094d64:  f1 03 16 aa   mov	x17, x22
0x101094d68:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x101094d6c:  30 1a c1 da   autda	x16, x17
0x101094d70:  00 2a 40 f9   ldr	x0, [x16, #0x50]
0x101094d74:  d0 02 40 f9   ldr	x16, [x22]
0x101094d78:  f1 03 16 aa   mov	x17, x22
0x101094d7c:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x101094d80:  30 1a c1 da   autda	x16, x17
0x101094d84:  f1 03 10 aa   mov	x17, x16
0x101094d88:  f1 47 c1 da   xpacd	x17
0x101094d8c:  1f 02 11 eb   cmp	x16, x17
0x101094d90:  40 00 00 54   b.eq	loc_101094d98 ; ⤵ 0x8
0x101094d94:  40 8e 38 d4   brk	#0xc472
0x101094d98:  ; loc_101094d98
0x101094d98:  f6 03 10 aa   mov	x22, x16
0x101094d9c:  b4 2e 00 f9   str	x20, [x21, #0x58]
0x101094da0:  80 db 13 94   bl	j__swift_task_dealloc
0x101094da4:  88 3f 00 d0   adrp	x8, 0x101886000
0x101094da8:  08 89 40 f9   ldr	x8, [x8, #0x110] ; __got._$s19FindMyDaemonSupport012ActorServiceC0PAAE03getF0qd__yYaKAA0eF8ProtocolRd__lFTu
0x101094dac:  00 05 40 b9   ldr	w0, [x8, #0x4]
0x101094db0:  70 db 13 94   bl	j__swift_task_alloc
0x101094db4:  f3 03 00 aa   mov	x19, x0
0x101094db8:  a0 32 00 f9   str	x0, [x21, #0x60]
0x101094dbc:  00 00 80 d2   mov	x0, #0
0x101094dc0:  28 ca 13 94   bl	j__$s19FindMyDaemonSupport0C0CMa
0x101094dc4:  f5 03 00 aa   mov	x21, x0
0x101094dc8:  00 00 80 d2   mov	x0, #0
0x101094dcc:  fa 76 be 97   bl	0x1000329b4

