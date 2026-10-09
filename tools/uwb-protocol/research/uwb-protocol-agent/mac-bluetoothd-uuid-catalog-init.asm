0x100687330:  f8 03 00 aa   mov	x24, x0
0x100687334:  e0 03 19 aa   mov	x0, x25
0x100687338:  e2 03 18 aa   mov	x2, x24
0x10068733c:  19 25 06 94   bl	j__objc_msgSend(x0, "UUIDWithData:")
0x100687340:  fd 03 1d aa   mov	fp, fp
0x100687344:  17 20 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100687348:  f7 03 00 aa   mov	x23, x0
0x10068734c:  e0 03 18 aa   mov	x0, x24
0x100687350:  08 20 06 94   bl	j__objc_release
0x100687354:  48 1d 00 f0   adrp	x8, 0x100a32000
0x100687358:  18 dd 42 f9   ldr	x24, [x8, #0x5b8] ; __got._OBJC_CLASS_$_NSString
0x10068735c:  68 47 40 f9   ldr	x8, [x27, #0x88]
0x100687360:  1f 05 00 b1   cmn	x8, #0x1
0x100687364:  a1 0d 00 54   b.ne	loc_100687518 ; ⤵ 0x1b4
0x100687368:  ; loc_100687368
0x100687368:  80 43 40 f9   ldr	x0, [x28, #0x80]
0x10068736c:  f9 c3 00 91   add	x25, sp, #0x30
0x100687370:  e8 c3 00 91   add	x8, sp, #0x30
0x100687374:  e1 03 13 aa   mov	x1, x19
0x100687378:  91 2d 02 94   bl	0x1007129bc
0x10068737c:  e8 1f c1 39   ldrsb	w8, [sp, #0x47]
0x100687380:  e9 1b 40 f9   ldr	x9, [sp, #0x30]
0x100687384:  1f 01 00 71   cmp	w8, #0
0x100687388:  22 b1 99 9a   csel	x2, x9, x25, lt
0x10068738c:  e0 03 18 aa   mov	x0, x24
0x100687390:  64 6d 06 94   bl	j__objc_msgSend(x0, "stringWithUTF8String:")
0x100687394:  fd 03 1d aa   mov	fp, fp
0x100687398:  02 20 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x10068739c:  f8 03 00 aa   mov	x24, x0
0x1006873a0:  e8 1f c1 39   ldrsb	w8, [sp, #0x47]
0x1006873a4:  68 00 f8 36   tbz	w8, #0x1f, loc_1006873b0 ; ⤵ 0xc
0x1006873a8:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x1006873ac:  69 1b 06 94   bl	j___ZdlPv
0x1006873b0:  ; loc_1006873b0
0x1006873b0:  59 03 40 f9   ldr	x25, [x26]
0x1006873b4:  e0 03 19 aa   mov	x0, x25
0x1006873b8:  01 00 80 52   mov	w1, #0
0x1006873bc:  9d 20 06 94   bl	j__os_log_type_enabled
0x1006873c0:  20 02 00 34   cbz	w0, loc_100687404 ; ⤵ 0x44
0x1006873c4:  48 10 00 f0   adrp	x8, 0x100892000
0x1006873c8:  00 59 43 fd   ldr	d0, [x8, #0x6b0]
0x1006873cc:  e0 33 00 bd   str	s0, [sp, #0x30]
0x1006873d0:  f7 43 03 f8   stur	x23, [sp, #0x34]
0x1006873d4:  08 08 81 52   mov	w8, #0x840
0x1006873d8:  e8 7b 00 79   strh	w8, [sp, #0x3c]
0x1006873dc:  f8 e3 03 f8   stur	x24, [sp, #0x3e]
0x1006873e0:  c0 cb ff b0   adrp	x0, 0x100000000
0x1006873e4:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1006873e8:  03 1a 00 f0   adrp	x3, 0x1009ca000
0x1006873ec:  63 10 27 91   add	x3, x3, #0x9c4 ; "MIDI: Starting MIDI service %@ on paired device \"%@\""
0x1006873f0:  e4 c3 00 91   add	x4, sp, #0x30
0x1006873f4:  e1 03 19 aa   mov	x1, x25
0x1006873f8:  02 00 80 52   mov	w2, #0
0x1006873fc:  c5 02 80 52   mov	w5, #0x16
0x100687400:  d4 1b 06 94   bl	j___os_log_impl
0x100687404:  ; loc_100687404
0x100687404:  d7 45 f4 97   bl	0x100398b60
0x100687408:  10 00 40 f9   ldr	x16, [x0]
0x10068740c:  f1 03 00 aa   mov	x17, x0
0x100687410:  91 4b e2 f2   movk	x17, #0x125c, lsl #0x30
0x100687414:  30 1a c1 da   autda	x16, x17
0x100687418:  08 8e 41 f8   ldr	x8, [x16, #0x18]!
0x10068741c:  e1 03 13 aa   mov	x1, x19
0x100687420:  70 35 eb f2   movk	x16, #0x59ab, lsl #0x30
0x100687424:  10 09 3f d7   blraa	x8, x16
0x100687428:  48 1d 00 f0   adrp	x8, 0x100a32000
0x10068742c:  08 61 41 f9   ldr	x8, [x8, #0x2c0] ; __got._gCBDaemonServer
0x100687430:  1a 01 40 f9   ldr	x26, [x8]
0x100687434:  48 1d 00 f0   adrp	x8, 0x100a32000
0x100687438:  00 e5 43 f9   ldr	x0, [x8, #0x7c8] ; __got._OBJC_CLASS_$_NSArray
0x10068743c:  e2 03 17 aa   mov	x2, x23
0x100687440:  f8 35 06 94   bl	j__objc_msgSend(x0, "arrayWithObject:")
0x100687444:  fd 03 1d aa   mov	fp, fp
0x100687448:  d6 1f 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x10068744c:  f9 03 00 aa   mov	x25, x0
0x100687450:  e0 03 1a aa   mov	x0, x26
0x100687454:  e2 03 13 aa   mov	x2, x19
0x100687458:  e3 03 18 aa   mov	x3, x24
0x10068745c:  e4 03 19 aa   mov	x4, x25
0x100687460:  50 50 06 94   bl	j__objc_msgSend(x0, "notifyConnectedDeviceUUID:name:servicesUUIDs:")
0x100687464:  e0 03 19 aa   mov	x0, x25
0x100687468:  c2 1f 06 94   bl	j__objc_release
0x10068746c:  61 10 00 b0   adrp	x1, 0x100894000
0x100687470:  21 c0 31 91   add	x1, x1, #0xc70
0x100687474:  e0 03 15 aa   mov	x0, x21
0x100687478:  e2 03 14 aa   mov	x2, x20
0x10068747c:  e2 15 00 94   bl	0x10068cc04
0x100687480:  e0 03 18 aa   mov	x0, x24
0x100687484:  bb 1f 06 94   bl	j__objc_release
0x100687488:  e0 03 17 aa   mov	x0, x23
0x10068748c:  b9 1f 06 94   bl	j__objc_release
0x100687490:  13 00 00 14   b	loc_1006874dc ; ⤵ 0x4c
0x100687494:  54 03 40 f9   ldr	x20, [x26]
0x100687498:  e0 03 14 aa   mov	x0, x20
0x10068749c:  01 00 80 52   mov	w1, #0
0x1006874a0:  64 20 06 94   bl	j__os_log_type_enabled
0x1006874a4:  c0 01 00 34   cbz	w0, loc_1006874dc ; ⤵ 0x38
0x1006874a8:  48 10 00 d0   adrp	x8, 0x100891000
0x1006874ac:  00 49 46 fd   ldr	d0, [x8, #0xc90]
0x1006874b0:  e0 33 00 bd   str	s0, [sp, #0x30]
0x1006874b4:  f3 43 03 f8   stur	x19, [sp, #0x34]
0x1006874b8:  c0 cb ff b0   adrp	x0, 0x100000000
0x1006874bc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1006874c0:  03 1a 00 f0   adrp	x3, 0x1009ca000
0x1006874c4:  63 e4 27 91   add	x3, x3, #0x9f9 ; "MIDI: %@ is not paired - No AutoConnect"
0x1006874c8:  e4 c3 00 91   add	x4, sp, #0x30
0x1006874cc:  e1 03 14 aa   mov	x1, x20
0x1006874d0:  02 00 80 52   mov	w2, #0
0x1006874d4:  85 01 80 52   mov	w5, #0xc
0x1006874d8:  9e 1b 06 94   bl	j___os_log_impl
0x1006874dc:  ; loc_1006874dc
0x1006874dc:  e0 03 16 aa   mov	x0, x22
0x1006874e0:  a4 1f 06 94   bl	j__objc_release
0x1006874e4:  11 ff ff 17   b	loc_100687128 ; ⤴ -0x3bc
0x1006874e8:  e9 d3 05 94   bl	0x1007fc48c
0x1006874ec:  cb fe ff 17   b	loc_100687018 ; ⤴ -0x4d4
0x1006874f0:  ee d3 05 94   bl	0x1007fc4a8
0x1006874f4:  d2 fe ff 17   b	loc_10068703c ; ⤴ -0x4b8
0x1006874f8:  e5 d3 05 94   bl	0x1007fc48c
0x1006874fc:  21 ff ff 17   b	loc_100687180 ; ⤴ -0x37c
0x100687500:  e3 d3 05 94   bl	0x1007fc48c
0x100687504:  5d ff ff 17   b	loc_100687278 ; ⤴ -0x28c
0x100687508:  a5 d3 05 94   bl	0x1007fc39c
0x10068750c:  6b ff ff 17   b	loc_1006872b8 ; ⤴ -0x254
0x100687510:  df d3 05 94   bl	0x1007fc48c
0x100687514:  71 ff ff 17   b	loc_1006872d8 ; ⤴ -0x23c
0x100687518:  ; loc_100687518
0x100687518:  dd d3 05 94   bl	0x1007fc48c
0x10068751c:  93 ff ff 17   b	loc_100687368 ; ⤴ -0x1b4
0x100687520:  5c 1b 06 94   bl	j____stack_chk_fail
0x100687524:  f4 03 00 aa   mov	x20, x0
0x100687528:  e0 03 19 aa   mov	x0, x25
0x10068752c:  91 1f 06 94   bl	j__objc_release
0x100687530:  19 00 00 14   b	loc_100687594 ; ⤵ 0x64
0x100687534:  f4 03 00 aa   mov	x20, x0
0x100687538:  e8 1f c1 39   ldrsb	w8, [sp, #0x47]
0x10068753c:  08 03 f8 36   tbz	w8, #0x1f, loc_10068759c ; ⤵ 0x60
0x100687540:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100687544:  03 1b 06 94   bl	j___ZdlPv
0x100687548:  15 00 00 14   b	loc_10068759c ; ⤵ 0x54
0x10068754c:  f4 03 00 aa   mov	x20, x0
0x100687550:  13 00 00 14   b	loc_10068759c ; ⤵ 0x4c
0x100687554:  f4 03 00 aa   mov	x20, x0
0x100687558:  e0 03 18 aa   mov	x0, x24
0x10068755c:  85 1f 06 94   bl	j__objc_release
0x100687560:  14 00 00 14   b	loc_1006875b0 ; ⤵ 0x50
0x100687564:  12 00 00 14   b	loc_1006875ac ; ⤵ 0x48
0x100687568:  f4 03 00 aa   mov	x20, x0
0x10068756c:  e8 7f c0 39   ldrsb	w8, [sp, #0x1f]
0x100687570:  08 02 f8 36   tbz	w8, #0x1f, loc_1006875b0 ; ⤵ 0x40
0x100687574:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x100687578:  f6 1a 06 94   bl	j___ZdlPv
0x10068757c:  0d 00 00 14   b	loc_1006875b0 ; ⤵ 0x34
0x100687580:  f4 03 00 aa   mov	x20, x0
0x100687584:  e0 03 18 aa   mov	x0, x24
0x100687588:  7a 1f 06 94   bl	j__objc_release
0x10068758c:  09 00 00 14   b	loc_1006875b0 ; ⤵ 0x24
0x100687590:  f4 03 00 aa   mov	x20, x0
0x100687594:  ; loc_100687594
0x100687594:  e0 03 18 aa   mov	x0, x24
0x100687598:  76 1f 06 94   bl	j__objc_release
0x10068759c:  ; loc_10068759c
0x10068759c:  e0 03 17 aa   mov	x0, x23
0x1006875a0:  74 1f 06 94   bl	j__objc_release
0x1006875a4:  03 00 00 14   b	loc_1006875b0 ; ⤵ 0xc
0x1006875a8:  0b 00 00 14   b	loc_1006875d4 ; ⤵ 0x2c
0x1006875ac:  ; loc_1006875ac
0x1006875ac:  f4 03 00 aa   mov	x20, x0
0x1006875b0:  ; loc_1006875b0
0x1006875b0:  e0 03 16 aa   mov	x0, x22
0x1006875b4:  6f 1f 06 94   bl	j__objc_release
0x1006875b8:  08 00 00 14   b	loc_1006875d8 ; ⤵ 0x20
0x1006875bc:  06 00 00 14   b	loc_1006875d4 ; ⤵ 0x18
0x1006875c0:  05 00 00 14   b	loc_1006875d4 ; ⤵ 0x14
0x1006875c4:  04 00 00 14   b	loc_1006875d4 ; ⤵ 0x10
0x1006875c8:  03 00 00 14   b	loc_1006875d4 ; ⤵ 0xc
0x1006875cc:  02 00 00 14   b	loc_1006875d4 ; ⤵ 0x8
0x1006875d0:  01 00 00 14   b	loc_1006875d4 ; ⤵ 0x4
0x1006875d4:  ; loc_1006875d4
0x1006875d4:  f4 03 00 aa   mov	x20, x0
0x1006875d8:  ; loc_1006875d8
0x1006875d8:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x1006875dc:  80 00 00 b4   cbz	x0, loc_1006875ec ; ⤵ 0x10
0x1006875e0:  bd d4 e6 97   bl	0x10003c8d4
0x1006875e4:  02 00 00 14   b	loc_1006875ec ; ⤵ 0x8
0x1006875e8:  f4 03 00 aa   mov	x20, x0
0x1006875ec:  ; loc_1006875ec
0x1006875ec:  e0 03 13 aa   mov	x0, x19
0x1006875f0:  60 1f 06 94   bl	j__objc_release
0x1006875f4:  02 00 00 14   b	loc_1006875fc ; ⤵ 0x8
0x1006875f8:  f4 03 00 aa   mov	x20, x0
0x1006875fc:  ; loc_1006875fc
0x1006875fc:  e0 03 14 aa   mov	x0, x20
0x100687600:  b8 19 06 94   bl	j___Unwind_Resume

sub_100687604:
0x100687604:  00 80 00 d1   sub	x0, x0, #0x20
0x100687608:  d4 f8 ff 17   b	0x100685958

sub_10068760c:
0x10068760c:  7f 23 03 d5   pacibsp
0x100687610:  ff c3 01 d1   sub	sp, sp, #0x70
0x100687614:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x100687618:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10068761c:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x100687620:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x100687624:  fd 83 01 91   add	fp, sp, #0x60
0x100687628:  f4 03 02 aa   mov	x20, x2
0x10068762c:  f3 03 01 aa   mov	x19, x1
0x100687630:  f5 03 00 aa   mov	x21, x0
0x100687634:  48 1d 00 f0   adrp	x8, 0x100a32000
0x100687638:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10068763c:  08 01 40 f9   ldr	x8, [x8]
0x100687640:  e8 17 00 f9   str	x8, [sp, #0x28]
0x100687644:  e0 03 01 aa   mov	x0, x1
0x100687648:  4e 1f 06 94   bl	j__objc_retain
0x10068764c:  48 22 00 d0   adrp	x8, 0x100ad1000
0x100687650:  08 01 31 91   add	x8, x8, #0xc40
0x100687654:  16 01 40 f9   ldr	x22, [x8]
0x100687658:  e0 03 16 aa   mov	x0, x22
0x10068765c:  01 00 80 52   mov	w1, #0
0x100687660:  f4 1f 06 94   bl	j__os_log_type_enabled
0x100687664:  20 02 00 34   cbz	w0, loc_1006876a8 ; ⤵ 0x44
0x100687668:  68 10 00 d0   adrp	x8, 0x100895000
0x10068766c:  00 c1 43 fd   ldr	d0, [x8, #0x780]
0x100687670:  e0 13 00 bd   str	s0, [sp, #0x10]
0x100687674:  f3 43 01 f8   stur	x19, [sp, #0x14]
0x100687678:  08 80 80 52   mov	w8, #0x400
0x10068767c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x100687680:  f4 e3 01 b8   stur	w20, [sp, #0x1e]
0x100687684:  c0 cb ff b0   adrp	x0, 0x100000000
0x100687688:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10068768c:  03 1a 00 d0   adrp	x3, 0x1009c9000
0x100687690:  63 00 3c 91   add	x3, x3, #0xf00 ; "GattGateway init on device \"%{public}@\" with mtu %d"
0x100687694:  e4 43 00 91   add	x4, sp, #0x10
0x100687698:  e1 03 16 aa   mov	x1, x22
0x10068769c:  02 00 80 52   mov	w2, #0
0x1006876a0:  45 02 80 52   mov	w5, #0x12
0x1006876a4:  2b 1b 06 94   bl	j___os_log_impl
0x1006876a8:  ; loc_1006876a8
0x1006876a8:  ff 0f 00 b9   str	wzr, [sp, #0xc]
0x1006876ac:  88 20 00 d0   adrp	x8, 0x100a99000
0x1006876b0:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x1006876b4:  1f 05 00 b1   cmn	x8, #0x1
0x1006876b8:  01 04 00 54   b.ne	loc_100687738 ; ⤵ 0x80
0x1006876bc:  ; loc_1006876bc
0x1006876bc:  88 20 00 d0   adrp	x8, 0x100a99000
0x1006876c0:  00 41 40 f9   ldr	x0, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x1006876c4:  e2 33 00 91   add	x2, sp, #0xc
0x1006876c8:  e1 03 13 aa   mov	x1, x19
0x1006876cc:  dd 48 02 94   bl	0x100719a40
0x1006876d0:  f6 03 00 aa   mov	x22, x0
0x1006876d4:  f7 0f 40 b9   ldr	w23, [sp, #0xc]
0x1006876d8:  e0 43 00 91   add	x0, sp, #0x10
0x1006876dc:  e1 03 13 aa   mov	x1, x19
0x1006876e0:  ed b8 f0 97   bl	0x1002b5a94
0x1006876e4:  ff 0a 00 71   cmp	w23, #0x2
0x1006876e8:  c8 02 00 52   eor	w8, w22, #0x1
0x1006876ec:  03 05 9f 1a   csinc	w3, w8, wzr, eq
0x1006876f0:  e1 43 00 91   add	x1, sp, #0x10
0x1006876f4:  e0 03 15 aa   mov	x0, x21
0x1006876f8:  e2 03 14 aa   mov	x2, x20
0x1006876fc:  1a 00 00 94   bl	0x100687764
0x100687700:  e0 03 13 aa   mov	x0, x19
0x100687704:  1b 1f 06 94   bl	j__objc_release
0x100687708:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10068770c:  49 1d 00 f0   adrp	x9, 0x100a32000
0x100687710:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100687714:  29 01 40 f9   ldr	x9, [x9]
0x100687718:  3f 01 08 eb   cmp	x9, x8
0x10068771c:  21 01 00 54   b.ne	loc_100687740 ; ⤵ 0x24
0x100687720:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x100687724:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x100687728:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10068772c:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x100687730:  ff c3 01 91   add	sp, sp, #0x70
0x100687734:  ff 0f 5f d6   retab
0x100687738:  ; loc_100687738
0x100687738:  55 d3 05 94   bl	0x1007fc48c
0x10068773c:  e0 ff ff 17   b	loc_1006876bc ; ⤴ -0x80
0x100687740:  ; loc_100687740
0x100687740:  d4 1a 06 94   bl	j____stack_chk_fail
0x100687744:  01 00 00 14   b	loc_100687748 ; ⤵ 0x4
0x100687748:  ; loc_100687748
0x100687748:  f4 03 00 aa   mov	x20, x0
0x10068774c:  e0 03 13 aa   mov	x0, x19
0x100687750:  08 1f 06 94   bl	j__objc_release
0x100687754:  02 00 00 14   b	loc_10068775c ; ⤵ 0x8
0x100687758:  f4 03 00 aa   mov	x20, x0
0x10068775c:  ; loc_10068775c
0x10068775c:  e0 03 14 aa   mov	x0, x20
0x100687760:  60 19 06 94   bl	j___Unwind_Resume

sub_100687764:
0x100687764:  7f 23 03 d5   pacibsp
0x100687768:  ff 83 02 d1   sub	sp, sp, #0xa0
0x10068776c:  f8 5f 06 a9   stp	x24, x23, [sp, #0x60]
0x100687770:  f6 57 07 a9   stp	x22, x21, [sp, #0x70]
0x100687774:  f4 4f 08 a9   stp	x20, x19, [sp, #0x80]
0x100687778:  fd 7b 09 a9   stp	fp, lr, [sp, #0x90]
0x10068777c:  fd 43 02 91   add	fp, sp, #0x90
0x100687780:  f5 03 03 aa   mov	x21, x3
0x100687784:  f6 03 02 aa   mov	x22, x2
0x100687788:  f3 03 01 aa   mov	x19, x1
0x10068778c:  f4 03 00 aa   mov	x20, x0
0x100687790:  48 1d 00 f0   adrp	x8, 0x100a32000
0x100687794:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100687798:  08 01 40 f9   ldr	x8, [x8]
0x10068779c:  a8 83 1c f8   stur	x8, [fp, #-0x38]
0x1006877a0:  48 22 00 d0   adrp	x8, 0x100ad1000
0x1006877a4:  08 01 31 91   add	x8, x8, #0xc40
0x1006877a8:  17 01 40 f9   ldr	x23, [x8]
0x1006877ac:  e0 03 17 aa   mov	x0, x23
0x1006877b0:  01 00 80 52   mov	w1, #0
0x1006877b4:  9f 1f 06 94   bl	j__os_log_type_enabled
0x1006877b8:  00 04 00 34   cbz	w0, loc_100687838 ; ⤵ 0x80
0x1006877bc:  ff d3 04 f8   stur	xzr, [sp, #0x4d]
0x1006877c0:  00 e4 00 6f   movi	v0.2d, #0
0x1006877c4:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x1006877c8:  e1 c3 00 91   add	x1, sp, #0x30
0x1006877cc:  e0 03 13 aa   mov	x0, x19
0x1006877d0:  cc 21 06 94   bl	j__uuid_unparse_upper
0x1006877d4:  f8 63 00 91   add	x24, sp, #0x18
0x1006877d8:  e0 63 00 91   add	x0, sp, #0x18
0x1006877dc:  e1 c3 00 91   add	x1, sp, #0x30
0x1006877e0:  c1 ec e5 97   bl	0x100002ae4
0x1006877e4:  e8 bf c0 39   ldrsb	w8, [sp, #0x2f]
0x1006877e8:  e9 0f 40 f9   ldr	x9, [sp, #0x18]
0x1006877ec:  1f 01 00 71   cmp	w8, #0
0x1006877f0:  28 b1 98 9a   csel	x8, x9, x24, lt
0x1006877f4:  49 10 00 d0   adrp	x9, 0x100891000
0x1006877f8:  20 65 44 fd   ldr	d0, [x9, #0x8c8]
0x1006877fc:  e0 33 00 bd   str	s0, [sp, #0x30]
0x100687800:  e8 43 03 f8   stur	x8, [sp, #0x34]
0x100687804:  c0 cb ff b0   adrp	x0, 0x100000000
0x100687808:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10068780c:  03 1a 00 f0   adrp	x3, 0x1009ca000
0x100687810:  63 18 17 91   add	x3, x3, #0x5c6 ; "Beginning init sequence for device \"%{public}s\""
0x100687814:  e4 c3 00 91   add	x4, sp, #0x30
0x100687818:  e1 03 17 aa   mov	x1, x23
0x10068781c:  02 00 80 52   mov	w2, #0
0x100687820:  85 01 80 52   mov	w5, #0xc
0x100687824:  cb 1a 06 94   bl	j___os_log_impl
0x100687828:  e8 bf c0 39   ldrsb	w8, [sp, #0x2f]
0x10068782c:  68 00 f8 36   tbz	w8, #0x1f, loc_100687838 ; ⤵ 0xc
0x100687830:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x100687834:  47 1a 06 94   bl	j___ZdlPv
0x100687838:  ; loc_100687838
0x100687838:  ff 1b 00 f9   str	xzr, [sp, #0x30]
0x10068783c:  61 1c 8b d2   mov	x1, #0x58e3
0x100687840:  c1 40 a1 f2   movk	x1, #0xa06, lsl #0x10
0x100687844:  01 88 c1 f2   movk	x1, #0xc40, lsl #0x20
0x100687848:  41 01 e0 f2   movk	x1, #0xa, lsl #0x30
0x10068784c:  00 04 80 52   mov	w0, #0x20
0x100687850:  50 1a 06 94   bl	j___ZnwmSt19__type_descriptor_t
0x100687854:  00 e4 00 6f   movi	v0.2d, #0
0x100687858:  00 00 00 ad   stp	q0, q0, [x0]
0x10068785c:  e0 1b 00 f9   str	x0, [sp, #0x30]
0x100687860:  a1 55 87 d2   mov	x1, #0x3aad
0x100687864:  e1 94 b8 f2   movk	x1, #0xc4a7, lsl #0x10
0x100687868:  01 88 c3 f2   movk	x1, #0x1c40, lsl #0x20
0x10068786c:  41 21 e0 f2   movk	x1, #0x10a, lsl #0x30
0x100687870:  00 09 80 52   mov	w0, #0x48
0x100687874:  47 1a 06 94   bl	j___ZnwmSt19__type_descriptor_t
0x100687878:  f8 03 00 aa   mov	x24, x0
0x10068787c:  88 22 00 91   add	x8, x20, #0x8
0x100687880:  9f 02 00 f1   cmp	x20, #0
0x100687884:  f7 03 88 9a   csel	x23, xzr, x8, eq
0x100687888:  e1 03 17 aa   mov	x1, x23
0x10068788c:  c0 59 ff 97   bl	0x10065df8c
0x100687890:  08 c3 00 91   add	x8, x24, #0x30
0x100687894:  90 1e 00 f0   adrp	x16, 0x100a5a000
0x100687898:  10 c2 3b 91   add	x16, x16, #0xef0 ; data_100a5aef0 (__DATA_CONST.__const)
0x10068789c:  10 42 00 91   add	x16, x16, #0x10
0x1006878a0:  f1 03 18 aa   mov	x17, x24
0x1006878a4:  b1 2a fd f2   movk	x17, #0xe955, lsl #0x30
0x1006878a8:  30 0a c1 da   pacda	x16, x17
0x1006878ac:  10 03 00 f9   str	x16, [x24]
0x1006878b0:  90 1e 00 f0   adrp	x16, 0x100a5a000
0x1006878b4:  10 c2 3b 91   add	x16, x16, #0xef0 ; data_100a5aef0 (__DATA_CONST.__const)
0x1006878b8:  10 22 01 91   add	x16, x16, #0x48
0x1006878bc:  f1 03 08 aa   mov	x17, x8
0x1006878c0:  f1 54 e7 f2   movk	x17, #0x3aa7, lsl #0x30
0x1006878c4:  30 0a c1 da   pacda	x16, x17
0x1006878c8:  10 1b 00 f9   str	x16, [x24, #0x30]
0x1006878cc:  16 73 00 79   strh	w22, [x24, #0x38]
0x1006878d0:  15 eb 00 39   strb	w21, [x24, #0x3a]
0x1006878d4:  1f 3f 00 b9   str	wzr, [x24, #0x3c]
0x1006878d8:  1f 23 00 f9   str	xzr, [x24, #0x40]
0x1006878dc:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x1006878e0:  00 0d 40 f9   ldr	x0, [x8, #0x18]
0x1006878e4:  18 0d 00 f9   str	x24, [x8, #0x18]
0x1006878e8:  20 01 00 b4   cbz	x0, loc_10068790c ; ⤵ 0x24
0x1006878ec:  10 00 40 f9   ldr	x16, [x0]
0x1006878f0:  f1 03 00 aa   mov	x17, x0
0x1006878f4:  b1 2a fd f2   movk	x17, #0xe955, lsl #0x30
0x1006878f8:  30 1a c1 da   autda	x16, x17
0x1006878fc:  08 8e 40 f8   ldr	x8, [x16, #0x8]!
0x100687900:  90 68 fe f2   movk	x16, #0xf344, lsl #0x30
0x100687904:  10 09 3f d7   blraa	x8, x16
0x100687908:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x10068790c:  ; loc_10068790c
0x10068790c:  ff 1b 00 f9   str	xzr, [sp, #0x30]
0x100687910:  e8 0b 00 f9   str	x8, [sp, #0x10]
0x100687914:  e2 43 00 91   add	x2, sp, #0x10
0x100687918:  e0 03 14 aa   mov	x0, x20
0x10068791c:  e1 03 13 aa   mov	x1, x19
0x100687920:  23 00 80 52   mov	w3, #0x1
0x100687924:  df 07 00 94   bl	0x1006898a0
0x100687928:  e1 0b 40 f9   ldr	x1, [sp, #0x10]
0x10068792c:  ff 0b 00 f9   str	xzr, [sp, #0x10]
0x100687930:  61 00 00 b4   cbz	x1, loc_10068793c ; ⤵ 0xc
0x100687934:  e0 43 00 91   add	x0, sp, #0x10
0x100687938:  ce 26 00 94   bl	0x100691470
0x10068793c:  ; loc_10068793c
0x10068793c:  35 08 00 37   tbnz	w21, #0, loc_100687a40 ; ⤵ 0x104
0x100687940:  61 1c 8b d2   mov	x1, #0x58e3
0x100687944:  c1 40 a1 f2   movk	x1, #0xa06, lsl #0x10
0x100687948:  01 88 c1 f2   movk	x1, #0xc40, lsl #0x20
0x10068794c:  41 01 e0 f2   movk	x1, #0xa, lsl #0x30
0x100687950:  00 04 80 52   mov	w0, #0x20
0x100687954:  0f 1a 06 94   bl	j___ZnwmSt19__type_descriptor_t
0x100687958:  00 e4 00 6f   movi	v0.2d, #0
0x10068795c:  00 00 00 ad   stp	q0, q0, [x0]
0x100687960:  e1 1b 40 f9   ldr	x1, [sp, #0x30]
0x100687964:  e0 1b 00 f9   str	x0, [sp, #0x30]
0x100687968:  61 00 00 b4   cbz	x1, loc_100687974 ; ⤵ 0xc
0x10068796c:  e0 c3 00 91   add	x0, sp, #0x30
0x100687970:  c0 26 00 94   bl	0x100691470
0x100687974:  ; loc_100687974
0x100687974:  41 87 90 d2   mov	x1, #0x843a
0x100687978:  61 ef b0 f2   movk	x1, #0x877b, lsl #0x10
0x10068797c:  01 88 c7 f2   movk	x1, #0x3c40, lsl #0x20
0x100687980:  61 21 e0 f2   movk	x1, #0x10b, lsl #0x30
0x100687984:  00 0d 80 52   mov	w0, #0x68
0x100687988:  02 1a 06 94   bl	j___ZnwmSt19__type_descriptor_t
0x10068798c:  f5 03 00 aa   mov	x21, x0
0x100687990:  e1 03 17 aa   mov	x1, x23
0x100687994:  7e 59 ff 97   bl	0x10065df8c
0x100687998:  a8 c2 00 91   add	x8, x21, #0x30
0x10068799c:  90 1e 00 f0   adrp	x16, 0x100a5a000
0x1006879a0:  10 42 34 91   add	x16, x16, #0xd10 ; data_100a5ad10 (__DATA_CONST.__const)
0x1006879a4:  10 42 00 91   add	x16, x16, #0x10
0x1006879a8:  f1 03 15 aa   mov	x17, x21
0x1006879ac:  b1 2a fd f2   movk	x17, #0xe955, lsl #0x30
0x1006879b0:  30 0a c1 da   pacda	x16, x17
0x1006879b4:  b0 02 00 f9   str	x16, [x21]
0x1006879b8:  90 1e 00 f0   adrp	x16, 0x100a5a000
0x1006879bc:  10 42 34 91   add	x16, x16, #0xd10 ; data_100a5ad10 (__DATA_CONST.__const)
0x1006879c0:  10 22 01 91   add	x16, x16, #0x48
0x1006879c4:  f1 03 08 aa   mov	x17, x8
0x1006879c8:  f1 54 e7 f2   movk	x17, #0x3aa7, lsl #0x30
0x1006879cc:  30 0a c1 da   pacda	x16, x17
0x1006879d0:  bf fe 05 a9   stp	xzr, xzr, [x21, #0x58]
0x1006879d4:  bf 2a 00 f9   str	xzr, [x21, #0x50]
0x1006879d8:  bf fe 03 a9   stp	xzr, xzr, [x21, #0x38]
0x1006879dc:  b0 1a 00 f9   str	x16, [x21, #0x30]
0x1006879e0:  bf 92 00 79   strh	wzr, [x21, #0x48]
0x1006879e4:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x1006879e8:  00 0d 40 f9   ldr	x0, [x8, #0x18]
0x1006879ec:  15 0d 00 f9   str	x21, [x8, #0x18]
0x1006879f0:  20 01 00 b4   cbz	x0, loc_100687a14 ; ⤵ 0x24
0x1006879f4:  10 00 40 f9   ldr	x16, [x0]
0x1006879f8:  f1 03 00 aa   mov	x17, x0
0x1006879fc:  b1 2a fd f2   movk	x17, #0xe955, lsl #0x30
0x100687a00:  30 1a c1 da   autda	x16, x17
0x100687a04:  08 8e 40 f8   ldr	x8, [x16, #0x8]!
0x100687a08:  90 68 fe f2   movk	x16, #0xf344, lsl #0x30
0x100687a0c:  10 09 3f d7   blraa	x8, x16
0x100687a10:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x100687a14:  ; loc_100687a14
0x100687a14:  ff 1b 00 f9   str	xzr, [sp, #0x30]
0x100687a18:  e8 07 00 f9   str	x8, [sp, #0x8]
0x100687a1c:  e2 23 00 91   add	x2, sp, #0x8
0x100687a20:  e0 03 14 aa   mov	x0, x20
0x100687a24:  e1 03 13 aa   mov	x1, x19
0x100687a28:  66 13 00 94   bl	0x10068c7c0
0x100687a2c:  e1 07 40 f9   ldr	x1, [sp, #0x8]
0x100687a30:  ff 07 00 f9   str	xzr, [sp, #0x8]
0x100687a34:  61 00 00 b4   cbz	x1, loc_100687a40 ; ⤵ 0xc
0x100687a38:  e0 23 00 91   add	x0, sp, #0x8
0x100687a3c:  8d 26 00 94   bl	0x100691470
0x100687a40:  ; loc_100687a40
0x100687a40:  e1 1b 40 f9   ldr	x1, [sp, #0x30]
0x100687a44:  ff 1b 00 f9   str	xzr, [sp, #0x30]
0x100687a48:  61 00 00 b4   cbz	x1, loc_100687a54 ; ⤵ 0xc
0x100687a4c:  e0 c3 00 91   add	x0, sp, #0x30
0x100687a50:  88 26 00 94   bl	0x100691470
0x100687a54:  ; loc_100687a54
0x100687a54:  a8 83 5c f8   ldur	x8, [fp, #-0x38]
0x100687a58:  49 1d 00 f0   adrp	x9, 0x100a32000
0x100687a5c:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100687a60:  29 01 40 f9   ldr	x9, [x9]
0x100687a64:  3f 01 08 eb   cmp	x9, x8
0x100687a68:  e1 00 00 54   b.ne	loc_100687a84 ; ⤵ 0x1c
0x100687a6c:  fd 7b 49 a9   ldp	fp, lr, [sp, #0x90]
0x100687a70:  f4 4f 48 a9   ldp	x20, x19, [sp, #0x80]
0x100687a74:  f6 57 47 a9   ldp	x22, x21, [sp, #0x70]
0x100687a78:  f8 5f 46 a9   ldp	x24, x23, [sp, #0x60]
0x100687a7c:  ff 83 02 91   add	sp, sp, #0xa0
0x100687a80:  ff 0f 5f d6   retab
0x100687a84:  ; loc_100687a84
0x100687a84:  03 1a 06 94   bl	j____stack_chk_fail
0x100687a88:  f3 03 00 aa   mov	x19, x0
0x100687a8c:  e1 07 40 f9   ldr	x1, [sp, #0x8]
0x100687a90:  ff 07 00 f9   str	xzr, [sp, #0x8]
0x100687a94:  81 03 00 b4   cbz	x1, loc_100687b04 ; ⤵ 0x70
0x100687a98:  e0 23 00 91   add	x0, sp, #0x8
0x100687a9c:  0f 00 00 14   b	loc_100687ad8 ; ⤵ 0x3c
0x100687aa0:  f3 03 00 aa   mov	x19, x0
0x100687aa4:  41 87 90 d2   mov	x1, #0x843a
0x100687aa8:  61 ef b0 f2   movk	x1, #0x877b, lsl #0x10
0x100687aac:  01 88 c7 f2   movk	x1, #0x3c40, lsl #0x20
0x100687ab0:  61 21 e0 f2   movk	x1, #0x10b, lsl #0x30
0x100687ab4:  e0 03 15 aa   mov	x0, x21
0x100687ab8:  10 00 00 14   b	loc_100687af8 ; ⤵ 0x40
0x100687abc:  11 00 00 14   b	loc_100687b00 ; ⤵ 0x44
0x100687ac0:  10 00 00 14   b	loc_100687b00 ; ⤵ 0x40
0x100687ac4:  f3 03 00 aa   mov	x19, x0
0x100687ac8:  e1 0b 40 f9   ldr	x1, [sp, #0x10]
0x100687acc:  ff 0b 00 f9   str	xzr, [sp, #0x10]
0x100687ad0:  a1 01 00 b4   cbz	x1, loc_100687b04 ; ⤵ 0x34
0x100687ad4:  e0 43 00 91   add	x0, sp, #0x10
0x100687ad8:  ; loc_100687ad8
0x100687ad8:  66 26 00 94   bl	0x100691470
0x100687adc:  0a 00 00 14   b	loc_100687b04 ; ⤵ 0x28
0x100687ae0:  f3 03 00 aa   mov	x19, x0
0x100687ae4:  a1 55 87 d2   mov	x1, #0x3aad
0x100687ae8:  e1 94 b8 f2   movk	x1, #0xc4a7, lsl #0x10
0x100687aec:  01 88 c3 f2   movk	x1, #0x1c40, lsl #0x20
0x100687af0:  41 21 e0 f2   movk	x1, #0x10a, lsl #0x30
0x100687af4:  e0 03 18 aa   mov	x0, x24
0x100687af8:  ; loc_100687af8
0x100687af8:  9a 19 06 94   bl	j___ZdlPvSt19__type_descriptor_t
0x100687afc:  02 00 00 14   b	loc_100687b04 ; ⤵ 0x8
0x100687b00:  ; loc_100687b00
0x100687b00:  f3 03 00 aa   mov	x19, x0
0x100687b04:  ; loc_100687b04
0x100687b04:  e1 1b 40 f9   ldr	x1, [sp, #0x30]
0x100687b08:  ff 1b 00 f9   str	xzr, [sp, #0x30]
0x100687b0c:  a1 00 00 b4   cbz	x1, loc_100687b20 ; ⤵ 0x14
0x100687b10:  e0 c3 00 91   add	x0, sp, #0x30
0x100687b14:  57 26 00 94   bl	0x100691470
0x100687b18:  02 00 00 14   b	loc_100687b20 ; ⤵ 0x8
0x100687b1c:  f3 03 00 aa   mov	x19, x0
0x100687b20:  ; loc_100687b20
0x100687b20:  e0 03 13 aa   mov	x0, x19
0x100687b24:  6f 18 06 94   bl	j___Unwind_Resume

sub_100687b28:
0x100687b28:  7f 23 03 d5   pacibsp
0x100687b2c:  ff 03 06 d1   sub	sp, sp, #0x180
0x100687b30:  fc 6f 13 a9   stp	x28, x27, [sp, #0x130]
0x100687b34:  f8 5f 14 a9   stp	x24, x23, [sp, #0x140]
0x100687b38:  f6 57 15 a9   stp	x22, x21, [sp, #0x150]
0x100687b3c:  f4 4f 16 a9   stp	x20, x19, [sp, #0x160]
0x100687b40:  fd 7b 17 a9   stp	fp, lr, [sp, #0x170]
0x100687b44:  fd c3 05 91   add	fp, sp, #0x170
0x100687b48:  f3 03 01 aa   mov	x19, x1
0x100687b4c:  f4 03 00 aa   mov	x20, x0
0x100687b50:  48 1d 00 f0   adrp	x8, 0x100a32000
0x100687b54:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100687b58:  08 01 40 f9   ldr	x8, [x8]
0x100687b5c:  a8 83 1b f8   stur	x8, [fp, #-0x48]
0x100687b60:  e0 03 01 aa   mov	x0, x1
0x100687b64:  07 1e 06 94   bl	j__objc_retain
0x100687b68:  e0 43 02 91   add	x0, sp, #0x90
0x100687b6c:  e1 03 13 aa   mov	x1, x19
0x100687b70:  c9 b7 f0 97   bl	0x1002b5a94
0x100687b74:  80 02 03 91   add	x0, x20, #0xc0
0x100687b78:  e1 43 02 91   add	x1, sp, #0x90
0x100687b7c:  fa 4b ef 97   bl	0x10025ab64
0x100687b80:  f6 43 02 91   add	x22, sp, #0x90
0x100687b84:  88 22 03 91   add	x8, x20, #0xc8
0x100687b88:  57 22 00 d0   adrp	x23, 0x100ad1000
0x100687b8c:  f7 02 31 91   add	x23, x23, #0xc40
0x100687b90:  f5 02 40 f9   ldr	x21, [x23]
0x100687b94:  1f 01 00 eb   cmp	x8, x0
0x100687b98:  a0 00 00 54   b.eq	loc_100687bac ; ⤵ 0x14
0x100687b9c:  e0 03 15 aa   mov	x0, x21
0x100687ba0:  21 02 80 52   mov	w1, #0x11
0x100687ba4:  a3 1e 06 94   bl	j__os_log_type_enabled
0x100687ba8:  e0 0c 00 35   cbnz	w0, loc_100687d44 ; ⤵ 0x19c
0x100687bac:  ; loc_100687bac
0x100687bac:  e0 03 15 aa   mov	x0, x21
0x100687bb0:  01 00 80 52   mov	w1, #0
0x100687bb4:  9f 1e 06 94   bl	j__os_log_type_enabled
0x100687bb8:  c0 01 00 34   cbz	w0, loc_100687bf0 ; ⤵ 0x38
0x100687bbc:  68 10 00 d0   adrp	x8, 0x100895000
0x100687bc0:  00 55 43 fd   ldr	d0, [x8, #0x6a8]
0x100687bc4:  e0 93 00 bd   str	s0, [sp, #0x90]
0x100687bc8:  d3 42 00 f8   stur	x19, [x22, #0x4]
0x100687bcc:  c0 cb ff b0   adrp	x0, 0x100000000
0x100687bd0:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100687bd4:  03 1a 00 d0   adrp	x3, 0x1009c9000
0x100687bd8:  63 d0 3c 91   add	x3, x3, #0xf34 ; "GattGateway device \"%{public}@\" is connected"
0x100687bdc:  e4 43 02 91   add	x4, sp, #0x90
0x100687be0:  e1 03 15 aa   mov	x1, x21
0x100687be4:  02 00 80 52   mov	w2, #0
0x100687be8:  85 01 80 52   mov	w5, #0xc
0x100687bec:  d9 19 06 94   bl	j___os_log_impl
0x100687bf0:  ; loc_100687bf0
0x100687bf0:  ff 13 00 79   strh	wzr, [sp, #0x8]
0x100687bf4:  f5 23 00 91   add	x21, sp, #0x8
0x100687bf8:  b8 e2 01 91   add	x24, x21, #0x78
0x100687bfc:  ff 7f 08 a9   stp	xzr, xzr, [sp, #0x80]
0x100687c00:  00 e4 00 6f   movi	v0.2d, #0
0x100687c04:  e0 83 00 ad   stp	q0, q0, [sp, #0x10]
0x100687c08:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x100687c0c:  e0 83 02 ad   stp	q0, q0, [sp, #0x50]
0x100687c10:  ff f3 06 b8   stur	wzr, [sp, #0x6f]
0x100687c14:  f8 3f 00 f9   str	x24, [sp, #0x78]
0x100687c18:  f7 43 02 91   add	x23, sp, #0x90
0x100687c1c:  e0 43 02 91   add	x0, sp, #0x90
0x100687c20:  e1 03 13 aa   mov	x1, x19
0x100687c24:  9c b7 f0 97   bl	0x1002b5a94
0x100687c28:  e8 13 40 79   ldrh	w8, [sp, #0x8]
0x100687c2c:  e8 43 01 79   strh	w8, [sp, #0xa0]
0x100687c30:  e1 83 40 ad   ldp	q1, q0, [sp, #0x10]
0x100687c34:  c1 82 81 3c   stur	q1, [x22, #0x18]
0x100687c38:  c0 82 82 3c   stur	q0, [x22, #0x28]
0x100687c3c:  01 e4 00 6f   movi	v1.2d, #0
0x100687c40:  a1 82 81 3c   stur	q1, [x21, #0x18]
0x100687c44:  a1 82 80 3c   stur	q1, [x21, #0x8]
0x100687c48:  e2 83 41 ad   ldp	q2, q0, [sp, #0x30]
0x100687c4c:  c2 82 83 3c   stur	q2, [x22, #0x38]
0x100687c50:  ff 7f 03 a9   stp	xzr, xzr, [sp, #0x30]
0x100687c54:  c0 82 84 3c   stur	q0, [x22, #0x48]
0x100687c58:  e2 83 42 ad   ldp	q2, q0, [sp, #0x50]
0x100687c5c:  c2 82 85 3c   stur	q2, [x22, #0x58]
0x100687c60:  e1 07 02 ad   stp	q1, q1, [sp, #0x40]
0x100687c64:  c0 82 86 3c   stur	q0, [x22, #0x68]
0x100687c68:  ff 7f 06 a9   stp	xzr, xzr, [sp, #0x60]
0x100687c6c:  e8 e3 40 79   ldrh	w8, [sp, #0x70]
0x100687c70:  e9 cb 41 39   ldrb	w9, [sp, #0x72]
0x100687c74:  e9 2b 04 39   strb	w9, [sp, #0x10a]
0x100687c78:  e8 13 02 79   strh	w8, [sp, #0x108]
0x100687c7c:  e8 22 02 91   add	x8, x23, #0x88
0x100687c80:  ea a7 47 a9   ldp	x10, x9, [sp, #0x78]
0x100687c84:  ea 27 11 a9   stp	x10, x9, [sp, #0x110]
0x100687c88:  ea 47 40 f9   ldr	x10, [sp, #0x88]
0x100687c8c:  ea 93 00 f9   str	x10, [sp, #0x120]
0x100687c90:  aa 00 00 b4   cbz	x10, loc_100687ca4 ; ⤵ 0x14
0x100687c94:  28 09 00 f9   str	x8, [x9, #0x10]
0x100687c98:  f8 3f 00 f9   str	x24, [sp, #0x78]
0x100687c9c:  1f 7f 00 a9   stp	xzr, xzr, [x24]
0x100687ca0:  02 00 00 14   b	loc_100687ca8 ; ⤵ 0x8
0x100687ca4:  ; loc_100687ca4
0x100687ca4:  e8 8b 00 f9   str	x8, [sp, #0x110]
0x100687ca8:  ; loc_100687ca8
0x100687ca8:  80 02 03 91   add	x0, x20, #0xc0
0x100687cac:  e1 43 02 91   add	x1, sp, #0x90
0x100687cb0:  0b 25 00 94   bl	0x1006910dc
0x100687cb4:  e1 8f 40 f9   ldr	x1, [sp, #0x118]
0x100687cb8:  e0 02 02 91   add	x0, x23, #0x80
0x100687cbc:  7f 05 f1 97   bl	0x1002c92b8
0x100687cc0:  e0 22 01 91   add	x0, x23, #0x48
0x100687cc4:  c3 22 00 94   bl	0x1006907d0
0x100687cc8:  e0 62 00 91   add	x0, x23, #0x18
0x100687ccc:  c1 22 00 94   bl	0x1006907d0
0x100687cd0:  e1 43 40 f9   ldr	x1, [sp, #0x80]
0x100687cd4:  a0 c2 01 91   add	x0, x21, #0x70
0x100687cd8:  78 05 f1 97   bl	0x1002c92b8
0x100687cdc:  a0 e2 00 91   add	x0, x21, #0x38
0x100687ce0:  bc 22 00 94   bl	0x1006907d0
0x100687ce4:  a0 22 00 91   add	x0, x21, #0x8
0x100687ce8:  ba 22 00 94   bl	0x1006907d0
0x100687cec:  ff 7f 09 a9   stp	xzr, xzr, [sp, #0x90]
0x100687cf0:  e0 43 02 91   add	x0, sp, #0x90
0x100687cf4:  e1 03 13 aa   mov	x1, x19
0x100687cf8:  67 b7 f0 97   bl	0x1002b5a94
0x100687cfc:  80 e2 03 91   add	x0, x20, #0xf8
0x100687d00:  e1 43 02 91   add	x1, sp, #0x90
0x100687d04:  8a 25 00 94   bl	0x10069132c
0x100687d08:  e0 03 13 aa   mov	x0, x19
0x100687d0c:  99 1d 06 94   bl	j__objc_release
0x100687d10:  a8 83 5b f8   ldur	x8, [fp, #-0x48]
0x100687d14:  49 1d 00 f0   adrp	x9, 0x100a32000
0x100687d18:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100687d1c:  29 01 40 f9   ldr	x9, [x9]
0x100687d20:  3f 01 08 eb   cmp	x9, x8
0x100687d24:  21 03 00 54   b.ne	loc_100687d88 ; ⤵ 0x64
0x100687d28:  fd 7b 57 a9   ldp	fp, lr, [sp, #0x170]
0x100687d2c:  f4 4f 56 a9   ldp	x20, x19, [sp, #0x160]
0x100687d30:  f6 57 55 a9   ldp	x22, x21, [sp, #0x150]
0x100687d34:  f8 5f 54 a9   ldp	x24, x23, [sp, #0x140]
0x100687d38:  fc 6f 53 a9   ldp	x28, x27, [sp, #0x130]
0x100687d3c:  ff 03 06 91   add	sp, sp, #0x180
0x100687d40:  ff 0f 5f d6   retab
0x100687d44:  ; loc_100687d44
0x100687d44:  48 10 00 d0   adrp	x8, 0x100891000
0x100687d48:  00 65 44 fd   ldr	d0, [x8, #0x8c8]
0x100687d4c:  e0 93 00 bd   str	s0, [sp, #0x90]
0x100687d50:  88 15 00 b0   adrp	x8, 0x100938000
0x100687d54:  08 a9 01 91   add	x8, x8, #0x6a ; "fCommandSchedulerMap.find(device) == fCommandSchedulerMap.end()"

