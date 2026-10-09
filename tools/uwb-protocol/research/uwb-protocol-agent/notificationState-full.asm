
-[CLDurianDevice peripheral:didUpdateNotificationStateForCharacteristic:error:]:
0x101465304:  7f 23 03 d5   pacibsp
0x101465308:  ff c3 02 d1   sub	sp, sp, #0xb0
0x10146530c:  fc 6f 05 a9   stp	x28, x27, [sp, #0x50]
0x101465310:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x101465314:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x101465318:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x10146531c:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x101465320:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x101465324:  fd 83 02 91   add	fp, sp, #0xa0
0x101465328:  f3 03 03 aa   mov	x19, x3
0x10146532c:  f4 03 00 aa   mov	x20, x0
0x101465330:  68 79 00 b0   adrp	x8, 0x102392000
0x101465334:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101465338:  08 01 40 f9   ldr	x8, [x8]
0x10146533c:  e8 27 00 f9   str	x8, [sp, #0x48]
0x101465340:  30 d3 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101465344:  f5 03 00 aa   mov	x21, x0
0x101465348:  c8 85 00 d0   adrp	x8, 0x10251f000
0x10146534c:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x101465350:  0c c3 1a 94   bl	j__objc_opt_class
0x101465354:  e1 03 00 aa   mov	x1, x0
0x101465358:  e0 03 15 aa   mov	x0, x21
0x10146535c:  0d c3 1a 94   bl	j__objc_opt_isKindOfClass
0x101465360:  60 01 00 37   tbnz	w0, #0, loc_10146538c ; ⤵ 0x2c
0x101465364:  e0 03 14 aa   mov	x0, x20
0x101465368:  26 d3 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x10146536c:  f5 03 00 aa   mov	x21, x0
0x101465370:  c8 85 00 d0   adrp	x8, 0x10251f000
0x101465374:  00 61 2d 91   add	x0, x8, #0xb58 ; CLDurianGATTWriteTask
0x101465378:  02 c3 1a 94   bl	j__objc_opt_class
0x10146537c:  e1 03 00 aa   mov	x1, x0
0x101465380:  e0 03 15 aa   mov	x0, x21
0x101465384:  03 c3 1a 94   bl	j__objc_opt_isKindOfClass
0x101465388:  00 06 00 36   tbz	w0, #0, loc_101465448 ; ⤵ 0xc0
0x10146538c:  ; loc_10146538c
0x10146538c:  e8 88 00 b0   adrp	x8, 0x102582000
0x101465390:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101465394:  1f 05 00 b1   cmn	x8, #0x1
0x101465398:  21 21 00 54   b.ne	loc_1014657bc ; ⤵ 0x424
0x10146539c:  ; loc_10146539c
0x10146539c:  e8 88 00 b0   adrp	x8, 0x102582000
0x1014653a0:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014653a4:  e0 03 13 aa   mov	x0, x19
0x1014653a8:  01 00 80 52   mov	w1, #0
0x1014653ac:  d1 c3 1a 94   bl	j__os_log_type_enabled
0x1014653b0:  00 03 00 34   cbz	w0, loc_101465410 ; ⤵ 0x60
0x1014653b4:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x1014653b8:  98 cd 00 94   bl	0x101498a18
0x1014653bc:  68 44 00 f0   adrp	x8, 0x101cf4000
0x1014653c0:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x1014653c4:  e0 03 00 bd   str	s0, [sp]
0x1014653c8:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014653cc:  48 04 81 52   mov	w8, #0x822
0x1014653d0:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014653d4:  48 52 00 b0   adrp	x8, 0x101eae000
0x1014653d8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014653dc:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014653e0:  28 08 81 52   mov	w8, #0x841
0x1014653e4:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014653e8:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x1014653ec:  c0 5c ff f0   adrp	x0, 0x100000000
0x1014653f0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014653f4:  a3 70 00 b0   adrp	x3, 0x10227a000
0x1014653f8:  63 24 1e 91   add	x3, x3, #0x789 ; "{\"msg%{public}.0s\":\"#durian #hawkeye #ut didUpdateNotificationState\", \"item\":%{private, location:escape_only}@}"
0x1014653fc:  e4 03 00 91   mov	x4, sp
0x101465400:  e1 03 13 aa   mov	x1, x19
0x101465404:  02 00 80 52   mov	w2, #0
0x101465408:  85 03 80 52   mov	w5, #0x1c
0x10146540c:  ; loc_10146540c
0x10146540c:  79 bf 1a 94   bl	j___os_log_impl
0x101465410:  ; loc_101465410
0x101465410:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x101465414:  69 79 00 b0   adrp	x9, 0x102392000
0x101465418:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10146541c:  29 01 40 f9   ldr	x9, [x9]
0x101465420:  3f 01 08 eb   cmp	x9, x8
0x101465424:  01 1e 00 54   b.ne	loc_1014657e4 ; ⤵ 0x3c0
0x101465428:  fd 7b 4a a9   ldp	fp, lr, [sp, #0xa0]
0x10146542c:  f4 4f 49 a9   ldp	x20, x19, [sp, #0x90]
0x101465430:  f6 57 48 a9   ldp	x22, x21, [sp, #0x80]
0x101465434:  f8 5f 47 a9   ldp	x24, x23, [sp, #0x70]
0x101465438:  fa 67 46 a9   ldp	x26, x25, [sp, #0x60]
0x10146543c:  fc 6f 45 a9   ldp	x28, x27, [sp, #0x50]
0x101465440:  ff c3 02 91   add	sp, sp, #0xb0
0x101465444:  ff 0f 5f d6   retab
0x101465448:  ; loc_101465448
0x101465448:  e0 03 14 aa   mov	x0, x20
0x10146544c:  ed d2 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101465450:  f5 03 00 aa   mov	x21, x0
0x101465454:  c8 85 00 d0   adrp	x8, 0x10251f000
0x101465458:  00 e1 2a 91   add	x0, x8, #0xab8 ; CLDurianGATTReadTask
0x10146545c:  c9 c2 1a 94   bl	j__objc_opt_class
0x101465460:  e1 03 00 aa   mov	x1, x0
0x101465464:  e0 03 15 aa   mov	x0, x21
0x101465468:  ca c2 1a 94   bl	j__objc_opt_isKindOfClass
0x10146546c:  f5 03 00 aa   mov	x21, x0
0x101465470:  e0 03 14 aa   mov	x0, x20
0x101465474:  e3 d2 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101465478:  f6 03 00 aa   mov	x22, x0
0x10146547c:  d5 06 00 36   tbz	w21, #0, loc_101465554 ; ⤵ 0xd8
0x101465480:  e8 88 00 b0   adrp	x8, 0x102582000
0x101465484:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101465488:  1f 05 00 b1   cmn	x8, #0x1
0x10146548c:  c1 19 00 54   b.ne	loc_1014657c4 ; ⤵ 0x338
0x101465490:  ; loc_101465490
0x101465490:  e8 88 00 b0   adrp	x8, 0x102582000
0x101465494:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101465498:  e0 03 15 aa   mov	x0, x21
0x10146549c:  01 00 80 52   mov	w1, #0
0x1014654a0:  94 c3 1a 94   bl	j__os_log_type_enabled
0x1014654a4:  60 fb ff 34   cbz	w0, loc_101465410 ; ⤴ -0x94
0x1014654a8:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x1014654ac:  5b cd 00 94   bl	0x101498a18
0x1014654b0:  f4 03 00 aa   mov	x20, x0
0x1014654b4:  e0 03 16 aa   mov	x0, x22
0x1014654b8:  42 e3 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x1014654bc:  f7 03 00 aa   mov	x23, x0
0x1014654c0:  e0 03 16 aa   mov	x0, x22
0x1014654c4:  3f e3 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x1014654c8:  7f 02 00 eb   cmp	x19, x0
0x1014654cc:  f8 17 9f 1a   cset	w24, eq
0x1014654d0:  e0 03 16 aa   mov	x0, x22
0x1014654d4:  1b ea 1a 94   bl	j__objc_msgSend(x0, "command")
0x1014654d8:  68 39 00 f0   adrp	x8, 0x101b94000
0x1014654dc:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x1014654e0:  e0 03 00 bd   str	s0, [sp]
0x1014654e4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014654e8:  48 04 81 52   mov	w8, #0x822
0x1014654ec:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014654f0:  48 52 00 b0   adrp	x8, 0x101eae000
0x1014654f4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014654f8:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014654fc:  28 08 81 52   mov	w8, #0x841
0x101465500:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465504:  f4 43 01 f8   stur	x20, [sp, #0x14]
0x101465508:  48 08 81 52   mov	w8, #0x842
0x10146550c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101465510:  f3 e3 01 f8   stur	x19, [sp, #0x1e]
0x101465514:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101465518:  f7 17 00 f9   str	x23, [sp, #0x28]
0x10146551c:  49 80 80 52   mov	w9, #0x402
0x101465520:  e9 63 00 79   strh	w9, [sp, #0x30]
0x101465524:  f8 23 03 b8   stur	w24, [sp, #0x32]
0x101465528:  e8 6f 00 79   strh	w8, [sp, #0x36]
0x10146552c:  e0 1f 00 f9   str	x0, [sp, #0x38]
0x101465530:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465534:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465538:  a3 70 00 b0   adrp	x3, 0x10227a000
0x10146553c:  63 e4 1f 91   add	x3, x3, #0x7f9 ; "{\"msg%{public}.0s\":\"#durian #hawkeye #posh didUpdateNotificationState GATTRead\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}@, \"active\":%{public, locatio"...
0x101465540:  ; loc_101465540
0x101465540:  e4 03 00 91   mov	x4, sp
0x101465544:  e1 03 15 aa   mov	x1, x21
0x101465548:  02 00 80 52   mov	w2, #0
0x10146554c:  05 08 80 52   mov	w5, #0x40
0x101465550:  af ff ff 17   b	loc_10146540c ; ⤴ -0x144
0x101465554:  ; loc_101465554
0x101465554:  c8 85 00 d0   adrp	x8, 0x10251f000
0x101465558:  00 21 2c 91   add	x0, x8, #0xb08 ; CLDurianGATTRepeatedReadTask
0x10146555c:  89 c2 1a 94   bl	j__objc_opt_class
0x101465560:  e1 03 00 aa   mov	x1, x0
0x101465564:  e0 03 16 aa   mov	x0, x22
0x101465568:  8a c2 1a 94   bl	j__objc_opt_isKindOfClass
0x10146556c:  00 07 00 36   tbz	w0, #0, loc_10146564c ; ⤵ 0xe0
0x101465570:  e0 03 14 aa   mov	x0, x20
0x101465574:  a3 d2 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101465578:  f6 03 00 aa   mov	x22, x0
0x10146557c:  11 e3 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x101465580:  7f 02 00 eb   cmp	x19, x0
0x101465584:  61 f4 ff 54   b.ne	loc_101465410 ; ⤴ -0x174
0x101465588:  e8 88 00 b0   adrp	x8, 0x102582000
0x10146558c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101465590:  1f 05 00 b1   cmn	x8, #0x1
0x101465594:  41 12 00 54   b.ne	loc_1014657dc ; ⤵ 0x248
0x101465598:  ; loc_101465598
0x101465598:  e8 88 00 b0   adrp	x8, 0x102582000
0x10146559c:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014655a0:  e0 03 15 aa   mov	x0, x21
0x1014655a4:  01 00 80 52   mov	w1, #0
0x1014655a8:  52 c3 1a 94   bl	j__os_log_type_enabled
0x1014655ac:  20 f3 ff 34   cbz	w0, loc_101465410 ; ⤴ -0x19c
0x1014655b0:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x1014655b4:  19 cd 00 94   bl	0x101498a18
0x1014655b8:  f4 03 00 aa   mov	x20, x0
0x1014655bc:  e0 03 16 aa   mov	x0, x22
0x1014655c0:  00 e3 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x1014655c4:  f7 03 00 aa   mov	x23, x0
0x1014655c8:  e0 03 16 aa   mov	x0, x22
0x1014655cc:  fd e2 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x1014655d0:  7f 02 00 eb   cmp	x19, x0
0x1014655d4:  f8 17 9f 1a   cset	w24, eq
0x1014655d8:  e0 03 16 aa   mov	x0, x22
0x1014655dc:  d9 e9 1a 94   bl	j__objc_msgSend(x0, "command")
0x1014655e0:  68 39 00 f0   adrp	x8, 0x101b94000
0x1014655e4:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x1014655e8:  e0 03 00 bd   str	s0, [sp]
0x1014655ec:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014655f0:  48 04 81 52   mov	w8, #0x822
0x1014655f4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014655f8:  48 52 00 b0   adrp	x8, 0x101eae000
0x1014655fc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465600:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101465604:  28 08 81 52   mov	w8, #0x841
0x101465608:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146560c:  f4 43 01 f8   stur	x20, [sp, #0x14]
0x101465610:  48 08 81 52   mov	w8, #0x842
0x101465614:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101465618:  f3 e3 01 f8   stur	x19, [sp, #0x1e]
0x10146561c:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101465620:  f7 17 00 f9   str	x23, [sp, #0x28]
0x101465624:  49 80 80 52   mov	w9, #0x402
0x101465628:  e9 63 00 79   strh	w9, [sp, #0x30]
0x10146562c:  f8 23 03 b8   stur	w24, [sp, #0x32]
0x101465630:  e8 6f 00 79   strh	w8, [sp, #0x36]
0x101465634:  e0 1f 00 f9   str	x0, [sp, #0x38]
0x101465638:  c0 5c ff f0   adrp	x0, 0x100000000
0x10146563c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465640:  a3 70 00 b0   adrp	x3, 0x10227a000
0x101465644:  63 4c 24 91   add	x3, x3, #0x913 ; "{\"msg%{public}.0s\":\"#durian didUpdateNotificationState GATTRepeatedRead\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}@, \"active\":%{public, location:escap"...
0x101465648:  be ff ff 17   b	loc_101465540 ; ⤴ -0x108
0x10146564c:  ; loc_10146564c
0x10146564c:  fa 88 00 b0   adrp	x26, 0x102582000
0x101465650:  48 3b 46 f9   ldr	x8, [x26, #0xc70] ; data_102582c70 (__DATA.__data)
0x101465654:  1f 05 00 b1   cmn	x8, #0x1
0x101465658:  a1 0b 00 54   b.ne	loc_1014657cc ; ⤵ 0x174
0x10146565c:  ; loc_10146565c
0x10146565c:  fb 88 00 b0   adrp	x27, 0x102582000
0x101465660:  75 3f 46 f9   ldr	x21, [x27, #0xc78] ; data_102582c78 (__DATA.__data)
0x101465664:  e0 03 15 aa   mov	x0, x21
0x101465668:  01 02 80 52   mov	w1, #0x10
0x10146566c:  21 c3 1a 94   bl	j__os_log_type_enabled
0x101465670:  79 44 00 f0   adrp	x25, 0x101cf4000
0x101465674:  58 52 00 b0   adrp	x24, 0x101eae000
0x101465678:  18 e3 02 91   add	x24, x24, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146567c:  a0 04 00 34   cbz	w0, loc_101465710 ; ⤵ 0x94
0x101465680:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x101465684:  e5 cc 00 94   bl	0x101498a18
0x101465688:  f6 03 00 aa   mov	x22, x0
0x10146568c:  e0 03 13 aa   mov	x0, x19
0x101465690:  74 c8 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465694:  f7 03 00 aa   mov	x23, x0
0x101465698:  80 6e 41 f9   ldr	x0, [x20, #0x2d8]
0x10146569c:  49 d8 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x1014656a0:  e2 03 00 aa   mov	x2, x0
0x1014656a4:  e0 03 14 aa   mov	x0, x20
0x1014656a8:  26 21 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x1014656ac:  20 7f 46 fd   ldr	d0, [x25, #0xcf8]
0x1014656b0:  e0 03 00 bd   str	s0, [sp]
0x1014656b4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014656b8:  48 04 81 52   mov	w8, #0x822
0x1014656bc:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014656c0:  f8 a3 00 f8   stur	x24, [sp, #0xa]
0x1014656c4:  28 08 81 52   mov	w8, #0x841
0x1014656c8:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014656cc:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x1014656d0:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1014656d4:  f7 e3 01 f8   stur	x23, [sp, #0x1e]
0x1014656d8:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x1014656dc:  e0 17 00 f9   str	x0, [sp, #0x28]
0x1014656e0:  c0 5c ff f0   adrp	x0, 0x100000000
0x1014656e4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014656e8:  a3 70 00 b0   adrp	x3, 0x10227a000
0x1014656ec:  63 98 28 91   add	x3, x3, #0xa26 ; "{\"msg%{public}.0s\":\"#durian received characteristic notification state update, but active task is not a GATTReceiveTask\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location"...
0x1014656f0:  e4 03 00 91   mov	x4, sp
0x1014656f4:  e1 03 15 aa   mov	x1, x21
0x1014656f8:  02 02 80 52   mov	w2, #0x10
0x1014656fc:  05 06 80 52   mov	w5, #0x30
0x101465700:  bc be 1a 94   bl	j___os_log_impl
0x101465704:  48 3b 46 f9   ldr	x8, [x26, #0xc70]
0x101465708:  1f 05 00 b1   cmn	x8, #0x1
0x10146570c:  41 06 00 54   b.ne	loc_1014657d4 ; ⤵ 0xc8
0x101465710:  ; loc_101465710
0x101465710:  75 3f 46 f9   ldr	x21, [x27, #0xc78]
0x101465714:  e0 03 15 aa   mov	x0, x21
0x101465718:  fa c2 1a 94   bl	j__os_signpost_enabled
0x10146571c:  a0 e7 ff 34   cbz	w0, loc_101465410 ; ⤴ -0x30c
0x101465720:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x101465724:  bd cc 00 94   bl	0x101498a18
0x101465728:  f6 03 00 aa   mov	x22, x0
0x10146572c:  e0 03 13 aa   mov	x0, x19
0x101465730:  4c c8 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465734:  f3 03 00 aa   mov	x19, x0
0x101465738:  80 6e 41 f9   ldr	x0, [x20, #0x2d8]
0x10146573c:  21 d8 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101465740:  e2 03 00 aa   mov	x2, x0
0x101465744:  e0 03 14 aa   mov	x0, x20
0x101465748:  fe 20 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x10146574c:  20 7f 46 fd   ldr	d0, [x25, #0xcf8]
0x101465750:  e0 03 00 bd   str	s0, [sp]
0x101465754:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465758:  48 04 81 52   mov	w8, #0x822
0x10146575c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465760:  f8 a3 00 f8   stur	x24, [sp, #0xa]
0x101465764:  28 08 81 52   mov	w8, #0x841
0x101465768:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146576c:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101465770:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101465774:  f3 e3 01 f8   stur	x19, [sp, #0x1e]
0x101465778:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x10146577c:  e0 17 00 f9   str	x0, [sp, #0x28]
0x101465780:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465784:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465788:  a4 70 00 b0   adrp	x4, 0x10227a000
0x10146578c:  84 a0 2c 91   add	x4, x4, #0xb28 ; "#durian received characteristic notification state update, but active task is not a GATTReceiveTask"
0x101465790:  a5 70 00 b0   adrp	x5, 0x10227a000
0x101465794:  a5 98 28 91   add	x5, x5, #0xa26 ; "{\"msg%{public}.0s\":\"#durian received characteristic notification state update, but active task is not a GATTReceiveTask\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location"...
0x101465798:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x10146579c:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x1014657a0:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x1014657a4:  e6 03 00 91   mov	x6, sp
0x1014657a8:  e1 03 15 aa   mov	x1, x21
0x1014657ac:  02 00 80 52   mov	w2, #0
0x1014657b0:  07 06 80 52   mov	w7, #0x30
0x1014657b4:  97 be 1a 94   bl	j___os_signpost_emit_with_name_impl
0x1014657b8:  16 ff ff 17   b	loc_101465410 ; ⤴ -0x3a8
0x1014657bc:  ; loc_1014657bc
0x1014657bc:  11 aa 1a 94   bl	0x101b10000
0x1014657c0:  f7 fe ff 17   b	loc_10146539c ; ⤴ -0x424
0x1014657c4:  ; loc_1014657c4
0x1014657c4:  0f aa 1a 94   bl	0x101b10000
0x1014657c8:  32 ff ff 17   b	loc_101465490 ; ⤴ -0x338
0x1014657cc:  ; loc_1014657cc
0x1014657cc:  0d aa 1a 94   bl	0x101b10000
0x1014657d0:  a3 ff ff 17   b	loc_10146565c ; ⤴ -0x174
0x1014657d4:  ; loc_1014657d4
0x1014657d4:  0c aa 1a 94   bl	0x101b10004
0x1014657d8:  ce ff ff 17   b	loc_101465710 ; ⤴ -0xc8
0x1014657dc:  ; loc_1014657dc
0x1014657dc:  09 aa 1a 94   bl	0x101b10000
0x1014657e0:  6e ff ff 17   b	loc_101465598 ; ⤴ -0x248
0x1014657e4:  ; loc_1014657e4
0x1014657e4:  57 be 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice peripheral:didUpdateValueForCharacteristic:error:]:
0x1014657e8:  7f 23 03 d5   pacibsp
0x1014657ec:  ff c3 02 d1   sub	sp, sp, #0xb0
0x1014657f0:  fc 6f 05 a9   stp	x28, x27, [sp, #0x50]
0x1014657f4:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x1014657f8:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x1014657fc:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x101465800:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x101465804:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x101465808:  fd 83 02 91   add	fp, sp, #0xa0
0x10146580c:  f5 03 04 aa   mov	x21, x4
0x101465810:  f4 03 03 aa   mov	x20, x3
0x101465814:  f3 03 00 aa   mov	x19, x0
0x101465818:  68 79 00 b0   adrp	x8, 0x102392000
0x10146581c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101465820:  08 01 40 f9   ldr	x8, [x8]
0x101465824:  e8 27 00 f9   str	x8, [sp, #0x48]
0x101465828:  fb 88 00 b0   adrp	x27, 0x102582000
0x10146582c:  fa 88 00 b0   adrp	x26, 0x102582000
0x101465830:  24 06 00 b4   cbz	x4, loc_1014658f4 ; ⤵ 0xc4
0x101465834:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465838:  1f 05 00 b1   cmn	x8, #0x1
0x10146583c:  c1 5b 00 54   b.ne	loc_1014663b4 ; ⤵ 0xb78
0x101465840:  ; loc_101465840
0x101465840:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101465844:  e0 03 16 aa   mov	x0, x22
0x101465848:  01 00 80 52   mov	w1, #0
0x10146584c:  a9 c2 1a 94   bl	j__os_log_type_enabled
0x101465850:  20 05 00 34   cbz	w0, loc_1014658f4 ; ⤵ 0xa4
0x101465854:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465858:  70 cc 00 94   bl	0x101498a18
0x10146585c:  f7 03 00 aa   mov	x23, x0
0x101465860:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x101465864:  6f 2b 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x101465868:  6c cc 00 94   bl	0x101498a18
0x10146586c:  f8 03 00 aa   mov	x24, x0
0x101465870:  e0 03 14 aa   mov	x0, x20
0x101465874:  fb c7 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465878:  32 f9 1a 94   bl	j__objc_msgSend(x0, "description")
0x10146587c:  f9 03 00 aa   mov	x25, x0
0x101465880:  e0 03 15 aa   mov	x0, x21
0x101465884:  ef 4f 1b 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x101465888:  68 39 00 d0   adrp	x8, 0x101b93000
0x10146588c:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101465890:  e0 03 00 bd   str	s0, [sp]
0x101465894:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465898:  48 04 81 52   mov	w8, #0x822
0x10146589c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014658a0:  48 52 00 b0   adrp	x8, 0x101eae000
0x1014658a4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014658a8:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014658ac:  28 08 81 52   mov	w8, #0x841
0x1014658b0:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014658b4:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x1014658b8:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1014658bc:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x1014658c0:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x1014658c4:  f9 17 00 f9   str	x25, [sp, #0x28]
0x1014658c8:  e8 63 00 79   strh	w8, [sp, #0x30]
0x1014658cc:  e0 23 03 f8   stur	x0, [sp, #0x32]
0x1014658d0:  c0 5c ff f0   adrp	x0, 0x100000000
0x1014658d4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014658d8:  a3 70 00 b0   adrp	x3, 0x10227a000
0x1014658dc:  63 30 2e 91   add	x3, x3, #0xb8c ; "{\"msg%{public}.0s\":\"#durian error updating value for characteristic\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_"...
0x1014658e0:  e4 03 00 91   mov	x4, sp
0x1014658e4:  e1 03 16 aa   mov	x1, x22
0x1014658e8:  02 00 80 52   mov	w2, #0
0x1014658ec:  45 07 80 52   mov	w5, #0x3a
0x1014658f0:  40 be 1a 94   bl	j___os_log_impl
0x1014658f4:  ; loc_1014658f4
0x1014658f4:  e0 03 13 aa   mov	x0, x19
0x1014658f8:  6a 47 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x1014658fc:  80 0e 00 34   cbz	w0, loc_101465acc ; ⤵ 0x1d0
0x101465900:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465904:  1f 05 00 b1   cmn	x8, #0x1
0x101465908:  a1 55 00 54   b.ne	loc_1014663bc ; ⤵ 0xab4
0x10146590c:  ; loc_10146590c
0x10146590c:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101465910:  e0 03 16 aa   mov	x0, x22
0x101465914:  01 00 80 52   mov	w1, #0
0x101465918:  76 c2 1a 94   bl	j__os_log_type_enabled
0x10146591c:  80 05 00 34   cbz	w0, loc_1014659cc ; ⤵ 0xb0
0x101465920:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465924:  3d cc 00 94   bl	0x101498a18
0x101465928:  f7 03 00 aa   mov	x23, x0
0x10146592c:  e0 03 14 aa   mov	x0, x20
0x101465930:  cc c7 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465934:  f8 03 00 aa   mov	x24, x0
0x101465938:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x10146593c:  a1 d7 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101465940:  e2 03 00 aa   mov	x2, x0
0x101465944:  e0 03 13 aa   mov	x0, x19
0x101465948:  7e 20 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x10146594c:  f9 03 00 aa   mov	x25, x0
0x101465950:  e0 03 14 aa   mov	x0, x20
0x101465954:  5b e2 1b 94   bl	j__objc_msgSend(x0, "value")
0x101465958:  68 39 00 f0   adrp	x8, 0x101b94000
0x10146595c:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x101465960:  e0 03 00 bd   str	s0, [sp]
0x101465964:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465968:  48 04 81 52   mov	w8, #0x822
0x10146596c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465970:  48 52 00 b0   adrp	x8, 0x101eae000
0x101465974:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465978:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10146597c:  28 08 81 52   mov	w8, #0x841
0x101465980:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465984:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x101465988:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10146598c:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x101465990:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101465994:  f9 17 00 f9   str	x25, [sp, #0x28]
0x101465998:  e8 63 00 79   strh	w8, [sp, #0x30]
0x10146599c:  f4 23 03 f8   stur	x20, [sp, #0x32]
0x1014659a0:  e8 77 00 79   strh	w8, [sp, #0x3a]
0x1014659a4:  e0 c3 03 f8   stur	x0, [sp, #0x3c]
0x1014659a8:  c0 5c ff f0   adrp	x0, 0x100000000
0x1014659ac:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014659b0:  a3 70 00 b0   adrp	x3, 0x10227a000
0x1014659b4:  63 1c 32 91   add	x3, x3, #0xc87 ; "{\"msg%{public}.0s\":\"#durian #ut #posh received data for characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"task\":%{private, location:escape"...
0x1014659b8:  e4 03 00 91   mov	x4, sp
0x1014659bc:  e1 03 16 aa   mov	x1, x22
0x1014659c0:  02 00 80 52   mov	w2, #0
0x1014659c4:  85 08 80 52   mov	w5, #0x44
0x1014659c8:  0a be 1a 94   bl	j___os_log_impl
0x1014659cc:  ; loc_1014659cc
0x1014659cc:  e0 03 13 aa   mov	x0, x19
0x1014659d0:  8c d1 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014659d4:  fb e1 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x1014659d8:  9f 02 00 eb   cmp	x20, x0
0x1014659dc:  41 05 00 54   b.ne	loc_101465a84 ; ⤵ 0xa8
0x1014659e0:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x1014659e4:  1f 05 00 b1   cmn	x8, #0x1
0x1014659e8:  21 4f 00 54   b.ne	loc_1014663cc ; ⤵ 0x9e4
0x1014659ec:  ; loc_1014659ec
0x1014659ec:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x1014659f0:  e0 03 16 aa   mov	x0, x22
0x1014659f4:  01 00 80 52   mov	w1, #0
0x1014659f8:  3e c2 1a 94   bl	j__os_log_type_enabled
0x1014659fc:  40 04 00 34   cbz	w0, loc_101465a84 ; ⤵ 0x88
0x101465a00:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465a04:  05 cc 00 94   bl	0x101498a18
0x101465a08:  f7 03 00 aa   mov	x23, x0
0x101465a0c:  e0 03 14 aa   mov	x0, x20
0x101465a10:  94 c7 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465a14:  f8 03 00 aa   mov	x24, x0
0x101465a18:  e0 03 14 aa   mov	x0, x20
0x101465a1c:  29 e2 1b 94   bl	j__objc_msgSend(x0, "value")
0x101465a20:  68 44 00 f0   adrp	x8, 0x101cf4000
0x101465a24:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101465a28:  e0 03 00 bd   str	s0, [sp]
0x101465a2c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465a30:  48 04 81 52   mov	w8, #0x822
0x101465a34:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465a38:  48 52 00 b0   adrp	x8, 0x101eae000
0x101465a3c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465a40:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101465a44:  28 08 81 52   mov	w8, #0x841
0x101465a48:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465a4c:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x101465a50:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101465a54:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x101465a58:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101465a5c:  e0 17 00 f9   str	x0, [sp, #0x28]
0x101465a60:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465a64:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465a68:  a3 70 00 b0   adrp	x3, 0x10227a000
0x101465a6c:  63 dc 36 91   add	x3, x3, #0xdb7 ; "{\"msg%{public}.0s\":\"#durian #posh read characteristic\", \"item\":%{private, location:escape_only}@, \"characteristicUUID\":%{private, location:escape_only}@, \"value\":%{private, location:escape_only}@}"
0x101465a70:  e4 03 00 91   mov	x4, sp
0x101465a74:  e1 03 16 aa   mov	x1, x22
0x101465a78:  02 00 80 52   mov	w2, #0
0x101465a7c:  05 06 80 52   mov	w5, #0x30
0x101465a80:  dc bd 1a 94   bl	j___os_log_impl
0x101465a84:  ; loc_101465a84
0x101465a84:  e0 03 14 aa   mov	x0, x20
0x101465a88:  76 c7 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465a8c:  f6 03 00 aa   mov	x22, x0
0x101465a90:  48 79 00 f0   adrp	x8, 0x102390000
0x101465a94:  00 35 46 f9   ldr	x0, [x8, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101465a98:  82 c9 1a 94   bl	j__objc_msgSend(x0, "_cl_PoshAccessoryNonOwnerCharacteristicUUID")
0x101465a9c:  e2 03 00 aa   mov	x2, x0
0x101465aa0:  e0 03 16 aa   mov	x0, x22
0x101465aa4:  af 43 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101465aa8:  20 01 00 34   cbz	w0, loc_101465acc ; ⤵ 0x24
0x101465aac:  e0 03 14 aa   mov	x0, x20
0x101465ab0:  04 e2 1b 94   bl	j__objc_msgSend(x0, "value")
0x101465ab4:  e2 03 00 aa   mov	x2, x0
0x101465ab8:  e0 03 13 aa   mov	x0, x19
0x101465abc:  e3 03 14 aa   mov	x3, x20
0x101465ac0:  e4 03 15 aa   mov	x4, x21
0x101465ac4:  6f ff 1a 94   bl	j__objc_msgSend(x0, "didReceivePoshData:withCharacteristic:error:")
0x101465ac8:  ec 00 00 14   b	loc_101465e78 ; ⤵ 0x3b0
0x101465acc:  ; loc_101465acc
0x101465acc:  e0 03 13 aa   mov	x0, x19
0x101465ad0:  54 41 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x101465ad4:  80 06 00 34   cbz	w0, loc_101465ba4 ; ⤵ 0xd0
0x101465ad8:  e0 03 14 aa   mov	x0, x20
0x101465adc:  61 c7 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465ae0:  f6 03 00 aa   mov	x22, x0
0x101465ae4:  48 79 00 f0   adrp	x8, 0x102390000
0x101465ae8:  00 35 46 f9   ldr	x0, [x8, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101465aec:  ad c8 1a 94   bl	j__objc_msgSend(x0, "_cl_DurianUARPFirmwareUpdateCharacteristicUUID")
0x101465af0:  e2 03 00 aa   mov	x2, x0
0x101465af4:  e0 03 16 aa   mov	x0, x22
0x101465af8:  9a 43 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101465afc:  40 05 00 34   cbz	w0, loc_101465ba4 ; ⤵ 0xa8
0x101465b00:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465b04:  1f 05 00 b1   cmn	x8, #0x1
0x101465b08:  61 46 00 54   b.ne	loc_1014663d4 ; ⤵ 0x8cc
0x101465b0c:  ; loc_101465b0c
0x101465b0c:  55 3f 46 f9   ldr	x21, [x26, #0xc78]
0x101465b10:  e0 03 15 aa   mov	x0, x21
0x101465b14:  01 00 80 52   mov	w1, #0
0x101465b18:  f6 c1 1a 94   bl	j__os_log_type_enabled
0x101465b1c:  40 03 00 34   cbz	w0, loc_101465b84 ; ⤵ 0x68
0x101465b20:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465b24:  bd cb 00 94   bl	0x101498a18
0x101465b28:  68 44 00 f0   adrp	x8, 0x101cf4000
0x101465b2c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101465b30:  e0 03 00 bd   str	s0, [sp]
0x101465b34:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465b38:  48 04 81 52   mov	w8, #0x822
0x101465b3c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465b40:  48 52 00 b0   adrp	x8, 0x101eae000
0x101465b44:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465b48:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101465b4c:  28 08 81 52   mov	w8, #0x841
0x101465b50:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465b54:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101465b58:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101465b5c:  f4 e3 01 f8   stur	x20, [sp, #0x1e]
0x101465b60:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465b64:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465b68:  a3 70 00 b0   adrp	x3, 0x10227a000
0x101465b6c:  63 f0 39 91   add	x3, x3, #0xe7c ; "{\"msg%{public}.0s\":\"#durian didUpdateValue for firmware update\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@}"
0x101465b70:  e4 03 00 91   mov	x4, sp
0x101465b74:  e1 03 15 aa   mov	x1, x21
0x101465b78:  02 00 80 52   mov	w2, #0
0x101465b7c:  c5 04 80 52   mov	w5, #0x26
0x101465b80:  9c bd 1a 94   bl	j___os_log_impl
0x101465b84:  ; loc_101465b84
0x101465b84:  75 62 41 f9   ldr	x21, [x19, #0x2c0]
0x101465b88:  e0 03 14 aa   mov	x0, x20
0x101465b8c:  cd e1 1b 94   bl	j__objc_msgSend(x0, "value")
0x101465b90:  e2 03 00 aa   mov	x2, x0
0x101465b94:  63 b2 40 f9   ldr	x3, [x19, #0x160]
0x101465b98:  e0 03 15 aa   mov	x0, x21
0x101465b9c:  69 ff 1a 94   bl	j__objc_msgSend(x0, "didReceiveUarpMessageFromAccessory:fromDevice:")
0x101465ba0:  b6 00 00 14   b	loc_101465e78 ; ⤵ 0x2d8
0x101465ba4:  ; loc_101465ba4
0x101465ba4:  e0 03 13 aa   mov	x0, x19
0x101465ba8:  26 44 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101465bac:  c0 0f 00 34   cbz	w0, loc_101465da4 ; ⤵ 0x1f8
0x101465bb0:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465bb4:  1f 05 00 b1   cmn	x8, #0x1
0x101465bb8:  61 40 00 54   b.ne	loc_1014663c4 ; ⤵ 0x80c
0x101465bbc:  ; loc_101465bbc
0x101465bbc:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101465bc0:  e0 03 16 aa   mov	x0, x22
0x101465bc4:  01 00 80 52   mov	w1, #0
0x101465bc8:  ca c1 1a 94   bl	j__os_log_type_enabled
0x101465bcc:  40 03 00 34   cbz	w0, loc_101465c34 ; ⤵ 0x68
0x101465bd0:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465bd4:  91 cb 00 94   bl	0x101498a18
0x101465bd8:  68 44 00 f0   adrp	x8, 0x101cf4000
0x101465bdc:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101465be0:  e0 03 00 bd   str	s0, [sp]
0x101465be4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465be8:  48 04 81 52   mov	w8, #0x822
0x101465bec:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465bf0:  48 52 00 b0   adrp	x8, 0x101eae000
0x101465bf4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465bf8:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101465bfc:  28 08 81 52   mov	w8, #0x841
0x101465c00:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465c04:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101465c08:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101465c0c:  f4 e3 01 f8   stur	x20, [sp, #0x1e]
0x101465c10:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465c14:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465c18:  a3 70 00 b0   adrp	x3, 0x10227a000
0x101465c1c:  63 6c 3c 91   add	x3, x3, #0xf1b ; "{\"msg%{public}.0s\":\"#durian #hawkeye didUpdateValue\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@}"
0x101465c20:  e4 03 00 91   mov	x4, sp
0x101465c24:  e1 03 16 aa   mov	x1, x22
0x101465c28:  02 00 80 52   mov	w2, #0
0x101465c2c:  c5 04 80 52   mov	w5, #0x26
0x101465c30:  70 bd 1a 94   bl	j___os_log_impl
0x101465c34:  ; loc_101465c34
0x101465c34:  e0 03 14 aa   mov	x0, x20
0x101465c38:  0a c7 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465c3c:  f6 03 00 aa   mov	x22, x0
0x101465c40:  57 79 00 f0   adrp	x23, 0x102390000
0x101465c44:  e0 36 46 f9   ldr	x0, [x23, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101465c48:  e6 c8 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeConfigurationCharacteristicUUID")
0x101465c4c:  e2 03 00 aa   mov	x2, x0
0x101465c50:  e0 03 16 aa   mov	x0, x22
0x101465c54:  43 43 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101465c58:  20 10 00 37   tbnz	w0, #0, loc_101465e5c ; ⤵ 0x204
0x101465c5c:  e0 03 14 aa   mov	x0, x20
0x101465c60:  00 c7 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465c64:  f6 03 00 aa   mov	x22, x0
0x101465c68:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101465c6c:  e5 c8 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeDebugCharacteristicUUID")
0x101465c70:  e2 03 00 aa   mov	x2, x0
0x101465c74:  e0 03 16 aa   mov	x0, x22
0x101465c78:  3a 43 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101465c7c:  00 0f 00 37   tbnz	w0, #0, loc_101465e5c ; ⤵ 0x1e0
0x101465c80:  e0 03 14 aa   mov	x0, x20
0x101465c84:  f7 c6 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465c88:  f6 03 00 aa   mov	x22, x0
0x101465c8c:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101465c90:  f4 c8 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePairedOwnerInformationCharacteristicUUID")
0x101465c94:  e2 03 00 aa   mov	x2, x0
0x101465c98:  e0 03 16 aa   mov	x0, x22
0x101465c9c:  31 43 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101465ca0:  e0 0d 00 37   tbnz	w0, #0, loc_101465e5c ; ⤵ 0x1bc
0x101465ca4:  e0 03 14 aa   mov	x0, x20
0x101465ca8:  ee c6 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465cac:  f6 03 00 aa   mov	x22, x0
0x101465cb0:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101465cb4:  e3 c8 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeNonOwnerCharacteristicUUID")
0x101465cb8:  e2 03 00 aa   mov	x2, x0
0x101465cbc:  e0 03 16 aa   mov	x0, x22
0x101465cc0:  28 43 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101465cc4:  c0 0c 00 37   tbnz	w0, #0, loc_101465e5c ; ⤵ 0x198
0x101465cc8:  e0 03 14 aa   mov	x0, x20
0x101465ccc:  e5 c6 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465cd0:  f6 03 00 aa   mov	x22, x0
0x101465cd4:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101465cd8:  ea c8 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePreciseFindingCharacteristicUUID")
0x101465cdc:  e2 03 00 aa   mov	x2, x0
0x101465ce0:  e0 03 16 aa   mov	x0, x22
0x101465ce4:  1f 43 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101465ce8:  a0 0b 00 35   cbnz	w0, loc_101465e5c ; ⤵ 0x174
0x101465cec:  e0 03 14 aa   mov	x0, x20
0x101465cf0:  dc c6 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465cf4:  f6 03 00 aa   mov	x22, x0
0x101465cf8:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101465cfc:  51 c8 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryFirmwareUpdateMsgCharacteristicUUID")
0x101465d00:  e2 03 00 aa   mov	x2, x0
0x101465d04:  e0 03 16 aa   mov	x0, x22
0x101465d08:  16 43 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101465d0c:  c0 04 00 34   cbz	w0, loc_101465da4 ; ⤵ 0x98
0x101465d10:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465d14:  1f 05 00 b1   cmn	x8, #0x1
0x101465d18:  a1 37 00 54   b.ne	loc_10146640c ; ⤵ 0x6f4
0x101465d1c:  ; loc_101465d1c
0x101465d1c:  55 3f 46 f9   ldr	x21, [x26, #0xc78]
0x101465d20:  e0 03 15 aa   mov	x0, x21
0x101465d24:  01 00 80 52   mov	w1, #0
0x101465d28:  72 c1 1a 94   bl	j__os_log_type_enabled
0x101465d2c:  00 03 00 34   cbz	w0, loc_101465d8c ; ⤵ 0x60
0x101465d30:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465d34:  39 cb 00 94   bl	0x101498a18
0x101465d38:  68 44 00 f0   adrp	x8, 0x101cf4000
0x101465d3c:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101465d40:  e0 03 00 bd   str	s0, [sp]
0x101465d44:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465d48:  48 04 81 52   mov	w8, #0x822
0x101465d4c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465d50:  48 52 00 b0   adrp	x8, 0x101eae000
0x101465d54:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465d58:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101465d5c:  28 08 81 52   mov	w8, #0x841
0x101465d60:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465d64:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101465d68:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465d6c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465d70:  a3 70 00 b0   adrp	x3, 0x10227a000
0x101465d74:  63 bc 3e 91   add	x3, x3, #0xfaf ; "{\"msg%{public}.0s\":\"#hawkeye #firmwareUpdate Received UARP fragment\", \"item\":%{private, location:escape_only}@}"
0x101465d78:  e4 03 00 91   mov	x4, sp
0x101465d7c:  e1 03 15 aa   mov	x1, x21
0x101465d80:  02 00 80 52   mov	w2, #0
0x101465d84:  85 03 80 52   mov	w5, #0x1c
0x101465d88:  1a bd 1a 94   bl	j___os_log_impl
0x101465d8c:  ; loc_101465d8c
0x101465d8c:  e0 03 14 aa   mov	x0, x20
0x101465d90:  4c e1 1b 94   bl	j__objc_msgSend(x0, "value")
0x101465d94:  e2 03 00 aa   mov	x2, x0
0x101465d98:  e0 03 13 aa   mov	x0, x19
0x101465d9c:  19 6c 1b 94   bl	j__objc_msgSend(x0, "processUARPMessage:")
0x101465da0:  36 00 00 14   b	loc_101465e78 ; ⤵ 0xd8
0x101465da4:  ; loc_101465da4
0x101465da4:  e0 03 13 aa   mov	x0, x19
0x101465da8:  9e 40 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x101465dac:  20 08 00 34   cbz	w0, loc_101465eb0 ; ⤵ 0x104
0x101465db0:  e0 03 14 aa   mov	x0, x20
0x101465db4:  ab c6 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465db8:  f6 03 00 aa   mov	x22, x0
0x101465dbc:  48 79 00 f0   adrp	x8, 0x102390000
0x101465dc0:  00 35 46 f9   ldr	x0, [x8, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101465dc4:  0f c8 1a 94   bl	j__objc_msgSend(x0, "_cl_DurianUnauthorizedPrecisionFindingCharacteristicUUID")
0x101465dc8:  e2 03 00 aa   mov	x2, x0
0x101465dcc:  e0 03 16 aa   mov	x0, x22
0x101465dd0:  e4 42 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101465dd4:  e0 06 00 34   cbz	w0, loc_101465eb0 ; ⤵ 0xdc
0x101465dd8:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465ddc:  1f 05 00 b1   cmn	x8, #0x1
0x101465de0:  61 30 00 54   b.ne	loc_1014663ec ; ⤵ 0x60c
0x101465de4:  ; loc_101465de4
0x101465de4:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101465de8:  e0 03 16 aa   mov	x0, x22
0x101465dec:  01 00 80 52   mov	w1, #0
0x101465df0:  40 c1 1a 94   bl	j__os_log_type_enabled
0x101465df4:  40 03 00 34   cbz	w0, loc_101465e5c ; ⤵ 0x68
0x101465df8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465dfc:  07 cb 00 94   bl	0x101498a18
0x101465e00:  68 44 00 f0   adrp	x8, 0x101cf4000
0x101465e04:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101465e08:  e0 03 00 bd   str	s0, [sp]
0x101465e0c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465e10:  48 04 81 52   mov	w8, #0x822
0x101465e14:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465e18:  48 52 00 b0   adrp	x8, 0x101eae000
0x101465e1c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465e20:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101465e24:  28 08 81 52   mov	w8, #0x841
0x101465e28:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465e2c:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101465e30:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101465e34:  f4 e3 01 f8   stur	x20, [sp, #0x1e]
0x101465e38:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465e3c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465e40:  a3 70 00 d0   adrp	x3, 0x10227b000
0x101465e44:  63 7c 00 91   add	x3, x3, #0x1f ; "{\"msg%{public}.0s\":\"#durian #ut didUpdateValue\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@}"
0x101465e48:  e4 03 00 91   mov	x4, sp
0x101465e4c:  e1 03 16 aa   mov	x1, x22
0x101465e50:  02 00 80 52   mov	w2, #0
0x101465e54:  c5 04 80 52   mov	w5, #0x26
0x101465e58:  e6 bc 1a 94   bl	j___os_log_impl
0x101465e5c:  ; loc_101465e5c
0x101465e5c:  e0 03 14 aa   mov	x0, x20
0x101465e60:  18 e1 1b 94   bl	j__objc_msgSend(x0, "value")
0x101465e64:  e2 03 00 aa   mov	x2, x0
0x101465e68:  e0 03 13 aa   mov	x0, x19
0x101465e6c:  e3 03 14 aa   mov	x3, x20
0x101465e70:  e4 03 15 aa   mov	x4, x21
0x101465e74:  53 fe 1a 94   bl	j__objc_msgSend(x0, "didReceiveHawkeyeData:withCharacteristic:error:")
0x101465e78:  ; loc_101465e78
0x101465e78:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x101465e7c:  69 79 00 b0   adrp	x9, 0x102392000
0x101465e80:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101465e84:  29 01 40 f9   ldr	x9, [x9]
0x101465e88:  3f 01 08 eb   cmp	x9, x8
0x101465e8c:  81 2c 00 54   b.ne	loc_10146641c ; ⤵ 0x590
0x101465e90:  fd 7b 4a a9   ldp	fp, lr, [sp, #0xa0]
0x101465e94:  f4 4f 49 a9   ldp	x20, x19, [sp, #0x90]
0x101465e98:  f6 57 48 a9   ldp	x22, x21, [sp, #0x80]
0x101465e9c:  f8 5f 47 a9   ldp	x24, x23, [sp, #0x70]
0x101465ea0:  fa 67 46 a9   ldp	x26, x25, [sp, #0x60]
0x101465ea4:  fc 6f 45 a9   ldp	x28, x27, [sp, #0x50]
0x101465ea8:  ff c3 02 91   add	sp, sp, #0xb0
0x101465eac:  ff 0f 5f d6   retab
0x101465eb0:  ; loc_101465eb0
0x101465eb0:  75 6e 41 f9   ldr	x21, [x19, #0x2d8]
0x101465eb4:  c8 85 00 d0   adrp	x8, 0x10251f000
0x101465eb8:  00 a1 29 91   add	x0, x8, #0xa68 ; CLDurianGATTTask
0x101465ebc:  31 c0 1a 94   bl	j__objc_opt_class
0x101465ec0:  e1 03 00 aa   mov	x1, x0
0x101465ec4:  e0 03 15 aa   mov	x0, x21
0x101465ec8:  32 c0 1a 94   bl	j__objc_opt_isKindOfClass
0x101465ecc:  a0 06 00 36   tbz	w0, #0, loc_101465fa0 ; ⤵ 0xd4
0x101465ed0:  e0 03 13 aa   mov	x0, x19
0x101465ed4:  4b d0 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101465ed8:  f5 03 00 aa   mov	x21, x0
0x101465edc:  b9 e0 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x101465ee0:  9f 02 00 eb   cmp	x20, x0
0x101465ee4:  a1 fc ff 54   b.ne	loc_101465e78 ; ⤴ -0x6c
0x101465ee8:  e0 03 15 aa   mov	x0, x21
0x101465eec:  35 d6 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101465ef0:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465ef4:  1f d0 02 71   cmp	w0, #0xb4
0x101465ef8:  c1 0f 00 54   b.ne	loc_1014660f0 ; ⤵ 0x1f8
0x101465efc:  1f 05 00 b1   cmn	x8, #0x1
0x101465f00:  a1 27 00 54   b.ne	loc_1014663f4 ; ⤵ 0x4f4
0x101465f04:  ; loc_101465f04
0x101465f04:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101465f08:  e0 03 16 aa   mov	x0, x22
0x101465f0c:  41 00 80 52   mov	w1, #0x2
0x101465f10:  f8 c0 1a 94   bl	j__os_log_type_enabled
0x101465f14:  e0 13 00 34   cbz	w0, loc_101466190 ; ⤵ 0x27c
0x101465f18:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465f1c:  bf ca 00 94   bl	0x101498a18
0x101465f20:  f7 03 00 aa   mov	x23, x0
0x101465f24:  e0 03 14 aa   mov	x0, x20
0x101465f28:  4e c6 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465f2c:  f8 03 00 aa   mov	x24, x0
0x101465f30:  e0 03 14 aa   mov	x0, x20
0x101465f34:  e3 e0 1b 94   bl	j__objc_msgSend(x0, "value")
0x101465f38:  2a 4d 1b 94   bl	j__objc_msgSend(x0, "length")
0x101465f3c:  68 44 00 f0   adrp	x8, 0x101cf4000
0x101465f40:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101465f44:  e0 03 00 bd   str	s0, [sp]
0x101465f48:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465f4c:  48 04 81 52   mov	w8, #0x822
0x101465f50:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465f54:  48 52 00 b0   adrp	x8, 0x101eae000
0x101465f58:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465f5c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101465f60:  28 08 81 52   mov	w8, #0x841
0x101465f64:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465f68:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x101465f6c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101465f70:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x101465f74:  28 00 81 52   mov	w8, #0x801
0x101465f78:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101465f7c:  e0 17 00 f9   str	x0, [sp, #0x28]
0x101465f80:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465f84:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465f88:  a3 70 00 d0   adrp	x3, 0x10227b000
0x101465f8c:  63 ec 05 91   add	x3, x3, #0x17b ; "{\"msg%{public}.0s\":\"#durian read\", \"item\":%{private, location:escape_only}@, \"charUUID\":%{private, location:escape_only}@, \"length\":%{private}lu}"
0x101465f90:  e4 03 00 91   mov	x4, sp
0x101465f94:  e1 03 16 aa   mov	x1, x22
0x101465f98:  42 00 80 52   mov	w2, #0x2
0x101465f9c:  7b 00 00 14   b	loc_101466188 ; ⤵ 0x1ec
0x101465fa0:  ; loc_101465fa0
0x101465fa0:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465fa4:  1f 05 00 b1   cmn	x8, #0x1
0x101465fa8:  a1 21 00 54   b.ne	loc_1014663dc ; ⤵ 0x434
0x101465fac:  ; loc_101465fac
0x101465fac:  55 3f 46 f9   ldr	x21, [x26, #0xc78]
0x101465fb0:  e0 03 15 aa   mov	x0, x21
0x101465fb4:  01 02 80 52   mov	w1, #0x10
0x101465fb8:  ce c0 1a 94   bl	j__os_log_type_enabled
0x101465fbc:  77 44 00 f0   adrp	x23, 0x101cf4000
0x101465fc0:  60 04 00 34   cbz	w0, loc_10146604c ; ⤵ 0x8c
0x101465fc4:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465fc8:  94 ca 00 94   bl	0x101498a18
0x101465fcc:  f6 03 00 aa   mov	x22, x0
0x101465fd0:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x101465fd4:  5b e7 1a 94   bl	j__objc_msgSend(x0, "command")
0x101465fd8:  c2 62 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x101465fdc:  e0 7e 46 fd   ldr	d0, [x23, #0xcf8]
0x101465fe0:  e0 03 00 bd   str	s0, [sp]
0x101465fe4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465fe8:  48 04 81 52   mov	w8, #0x822
0x101465fec:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465ff0:  48 52 00 b0   adrp	x8, 0x101eae000
0x101465ff4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465ff8:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101465ffc:  28 08 81 52   mov	w8, #0x841
0x101466000:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101466004:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101466008:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10146600c:  f4 e3 01 f8   stur	x20, [sp, #0x1e]
0x101466010:  48 80 80 52   mov	w8, #0x402
0x101466014:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101466018:  e0 2b 00 b9   str	w0, [sp, #0x28]
0x10146601c:  c0 5c ff d0   adrp	x0, 0x100000000
0x101466020:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101466024:  a3 70 00 b0   adrp	x3, 0x10227b000
0x101466028:  63 b8 02 91   add	x3, x3, #0xae ; "{\"msg%{public}.0s\":\"#durian unexpected characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x10146602c:  e4 03 00 91   mov	x4, sp
0x101466030:  e1 03 15 aa   mov	x1, x21
0x101466034:  02 02 80 52   mov	w2, #0x10
0x101466038:  85 05 80 52   mov	w5, #0x2c
0x10146603c:  6d bc 1a 94   bl	j___os_log_impl
0x101466040:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101466044:  1f 05 00 b1   cmn	x8, #0x1
0x101466048:  e1 1c 00 54   b.ne	loc_1014663e4 ; ⤵ 0x39c
0x10146604c:  ; loc_10146604c
0x10146604c:  55 3f 46 f9   ldr	x21, [x26, #0xc78]
0x101466050:  e0 03 15 aa   mov	x0, x21
0x101466054:  ab c0 1a 94   bl	j__os_signpost_enabled
0x101466058:  00 f1 ff 34   cbz	w0, loc_101465e78 ; ⤴ -0x1e0
0x10146605c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101466060:  6e ca 00 94   bl	0x101498a18
0x101466064:  f6 03 00 aa   mov	x22, x0
0x101466068:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x10146606c:  35 e7 1a 94   bl	j__objc_msgSend(x0, "command")
0x101466070:  9c 62 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x101466074:  e0 7e 46 fd   ldr	d0, [x23, #0xcf8]
0x101466078:  e0 03 00 bd   str	s0, [sp]
0x10146607c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101466080:  48 04 81 52   mov	w8, #0x822
0x101466084:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101466088:  48 52 00 90   adrp	x8, 0x101eae000
0x10146608c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101466090:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101466094:  28 08 81 52   mov	w8, #0x841
0x101466098:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146609c:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x1014660a0:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1014660a4:  f4 e3 01 f8   stur	x20, [sp, #0x1e]
0x1014660a8:  48 80 80 52   mov	w8, #0x402
0x1014660ac:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x1014660b0:  e0 2b 00 b9   str	w0, [sp, #0x28]
0x1014660b4:  c0 5c ff d0   adrp	x0, 0x100000000
0x1014660b8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014660bc:  a4 70 00 b0   adrp	x4, 0x10227b000
0x1014660c0:  84 64 05 91   add	x4, x4, #0x159 ; "#durian unexpected characteristic"
0x1014660c4:  a5 70 00 b0   adrp	x5, 0x10227b000
0x1014660c8:  a5 b8 02 91   add	x5, x5, #0xae ; "{\"msg%{public}.0s\":\"#durian unexpected characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x1014660cc:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x1014660d0:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x1014660d4:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x1014660d8:  e6 03 00 91   mov	x6, sp
0x1014660dc:  e1 03 15 aa   mov	x1, x21
0x1014660e0:  02 00 80 52   mov	w2, #0
0x1014660e4:  87 05 80 52   mov	w7, #0x2c
0x1014660e8:  4a bc 1a 94   bl	j___os_signpost_emit_with_name_impl
0x1014660ec:  63 ff ff 17   b	loc_101465e78 ; ⤴ -0x274
0x1014660f0:  ; loc_1014660f0
0x1014660f0:  1f 05 00 b1   cmn	x8, #0x1
0x1014660f4:  41 18 00 54   b.ne	loc_1014663fc ; ⤵ 0x308
0x1014660f8:  ; loc_1014660f8
0x1014660f8:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x1014660fc:  e0 03 16 aa   mov	x0, x22
0x101466100:  01 00 80 52   mov	w1, #0
0x101466104:  7b c0 1a 94   bl	j__os_log_type_enabled
0x101466108:  40 04 00 34   cbz	w0, loc_101466190 ; ⤵ 0x88
0x10146610c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101466110:  42 ca 00 94   bl	0x101498a18
0x101466114:  f7 03 00 aa   mov	x23, x0
0x101466118:  e0 03 14 aa   mov	x0, x20
0x10146611c:  d1 c5 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101466120:  f8 03 00 aa   mov	x24, x0
0x101466124:  e0 03 14 aa   mov	x0, x20
0x101466128:  66 e0 1b 94   bl	j__objc_msgSend(x0, "value")
0x10146612c:  68 44 00 d0   adrp	x8, 0x101cf4000
0x101466130:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101466134:  e0 03 00 bd   str	s0, [sp]
0x101466138:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10146613c:  48 04 81 52   mov	w8, #0x822
0x101466140:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101466144:  48 52 00 90   adrp	x8, 0x101eae000
0x101466148:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146614c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101466150:  28 08 81 52   mov	w8, #0x841
0x101466154:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101466158:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x10146615c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101466160:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x101466164:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101466168:  e0 17 00 f9   str	x0, [sp, #0x28]
0x10146616c:  c0 5c ff d0   adrp	x0, 0x100000000
0x101466170:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101466174:  a3 70 00 b0   adrp	x3, 0x10227b000
0x101466178:  63 34 08 91   add	x3, x3, #0x20d ; "{\"msg%{public}.0s\":\"#durian read\", \"item\":%{private, location:escape_only}@, \"charUUID\":%{private, location:escape_only}@, \"value\":%{private, location:escape_only}@}"
0x10146617c:  e4 03 00 91   mov	x4, sp
0x101466180:  e1 03 16 aa   mov	x1, x22
0x101466184:  02 00 80 52   mov	w2, #0
0x101466188:  ; loc_101466188
0x101466188:  05 06 80 52   mov	w5, #0x30
0x10146618c:  19 bc 1a 94   bl	j___os_log_impl
0x101466190:  ; loc_101466190
0x101466190:  c8 85 00 b0   adrp	x8, 0x10251f000
0x101466194:  00 21 2c 91   add	x0, x8, #0xb08 ; CLDurianGATTRepeatedReadTask
0x101466198:  7a bf 1a 94   bl	j__objc_opt_class
0x10146619c:  e1 03 00 aa   mov	x1, x0
0x1014661a0:  e0 03 15 aa   mov	x0, x21
0x1014661a4:  7b bf 1a 94   bl	j__objc_opt_isKindOfClass
0x1014661a8:  20 02 00 36   tbz	w0, #0, loc_1014661ec ; ⤵ 0x44
0x1014661ac:  e0 03 14 aa   mov	x0, x20
0x1014661b0:  44 e0 1b 94   bl	j__objc_msgSend(x0, "value")
0x1014661b4:  e2 03 00 aa   mov	x2, x0
0x1014661b8:  e0 03 15 aa   mov	x0, x21
0x1014661bc:  e1 d5 1a 94   bl	j__objc_msgSend(x0, "appendRecievedData:")
0x1014661c0:  e0 03 14 aa   mov	x0, x20
0x1014661c4:  3f e0 1b 94   bl	j__objc_msgSend(x0, "value")
0x1014661c8:  86 4c 1b 94   bl	j__objc_msgSend(x0, "length")
0x1014661cc:  60 e5 ff b4   cbz	x0, loc_101465e78 ; ⤴ -0x354
0x1014661d0:  73 0e 40 f9   ldr	x19, [x19, #0x18]
0x1014661d4:  e0 03 15 aa   mov	x0, x21
0x1014661d8:  fa df 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x1014661dc:  e2 03 00 aa   mov	x2, x0
0x1014661e0:  e0 03 13 aa   mov	x0, x19
0x1014661e4:  cf 70 1b 94   bl	j__objc_msgSend(x0, "readValueForCharacteristic:")
0x1014661e8:  24 ff ff 17   b	loc_101465e78 ; ⤴ -0x370
0x1014661ec:  ; loc_1014661ec
0x1014661ec:  c8 85 00 b0   adrp	x8, 0x10251f000
0x1014661f0:  00 e1 2a 91   add	x0, x8, #0xab8 ; CLDurianGATTReadTask
0x1014661f4:  63 bf 1a 94   bl	j__objc_opt_class
0x1014661f8:  e1 03 00 aa   mov	x1, x0
0x1014661fc:  e0 03 15 aa   mov	x0, x21
0x101466200:  64 bf 1a 94   bl	j__objc_opt_isKindOfClass
0x101466204:  a0 e3 07 36   tbz	w0, #0, loc_101465e78 ; ⤴ -0x38c
0x101466208:  e0 03 13 aa   mov	x0, x19
0x10146620c:  8d 42 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101466210:  60 04 00 34   cbz	w0, loc_10146629c ; ⤵ 0x8c
0x101466214:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101466218:  1f 05 00 b1   cmn	x8, #0x1
0x10146621c:  41 0f 00 54   b.ne	loc_101466404 ; ⤵ 0x1e8
0x101466220:  ; loc_101466220
0x101466220:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101466224:  e0 03 16 aa   mov	x0, x22
0x101466228:  01 00 80 52   mov	w1, #0
0x10146622c:  31 c0 1a 94   bl	j__os_log_type_enabled
0x101466230:  80 08 00 34   cbz	w0, loc_101466340 ; ⤵ 0x110
0x101466234:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101466238:  f8 c9 00 94   bl	0x101498a18
0x10146623c:  f7 03 00 aa   mov	x23, x0
0x101466240:  e0 03 14 aa   mov	x0, x20
0x101466244:  1f e0 1b 94   bl	j__objc_msgSend(x0, "value")
0x101466248:  68 44 00 d0   adrp	x8, 0x101cf4000
0x10146624c:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101466250:  e0 03 00 bd   str	s0, [sp]
0x101466254:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101466258:  48 04 81 52   mov	w8, #0x822
0x10146625c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101466260:  48 52 00 90   adrp	x8, 0x101eae000
0x101466264:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101466268:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10146626c:  28 08 81 52   mov	w8, #0x841
0x101466270:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101466274:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x101466278:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10146627c:  f4 e3 01 f8   stur	x20, [sp, #0x1e]
0x101466280:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101466284:  e0 17 00 f9   str	x0, [sp, #0x28]
0x101466288:  c0 5c ff d0   adrp	x0, 0x100000000
0x10146628c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101466290:  a3 70 00 b0   adrp	x3, 0x10227b000
0x101466294:  63 cc 0a 91   add	x3, x3, #0x2b3 ; "{\"msg%{public}.0s\":\"#durian #hawkeye GATTRead\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"value\":%{private, location:escape_only}@}"
0x101466298:  25 00 00 14   b	loc_10146632c ; ⤵ 0x94
0x10146629c:  ; loc_10146629c
0x10146629c:  e0 03 13 aa   mov	x0, x19
0x1014662a0:  00 45 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x1014662a4:  e0 04 00 34   cbz	w0, loc_101466340 ; ⤵ 0x9c
0x1014662a8:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x1014662ac:  1f 05 00 b1   cmn	x8, #0x1
0x1014662b0:  21 0b 00 54   b.ne	loc_101466414 ; ⤵ 0x164
0x1014662b4:  ; loc_1014662b4
0x1014662b4:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x1014662b8:  e0 03 16 aa   mov	x0, x22
0x1014662bc:  01 00 80 52   mov	w1, #0
0x1014662c0:  0c c0 1a 94   bl	j__os_log_type_enabled
0x1014662c4:  e0 03 00 34   cbz	w0, loc_101466340 ; ⤵ 0x7c
0x1014662c8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014662cc:  d3 c9 00 94   bl	0x101498a18
0x1014662d0:  f7 03 00 aa   mov	x23, x0
0x1014662d4:  e0 03 14 aa   mov	x0, x20
0x1014662d8:  fa df 1b 94   bl	j__objc_msgSend(x0, "value")
0x1014662dc:  68 44 00 d0   adrp	x8, 0x101cf4000
0x1014662e0:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x1014662e4:  e0 03 00 bd   str	s0, [sp]
0x1014662e8:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014662ec:  48 04 81 52   mov	w8, #0x822
0x1014662f0:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014662f4:  48 52 00 90   adrp	x8, 0x101eae000
0x1014662f8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014662fc:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101466300:  28 08 81 52   mov	w8, #0x841
0x101466304:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101466308:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x10146630c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101466310:  f4 e3 01 f8   stur	x20, [sp, #0x1e]
0x101466314:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101466318:  e0 17 00 f9   str	x0, [sp, #0x28]
0x10146631c:  c0 5c ff d0   adrp	x0, 0x100000000
0x101466320:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101466324:  a3 70 00 b0   adrp	x3, 0x10227b000
0x101466328:  63 b0 0d 91   add	x3, x3, #0x36c ; "{\"msg%{public}.0s\":\"#durian #posh GATTRead\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"value\":%{private, location:escape_only}@}"
0x10146632c:  ; loc_10146632c
0x10146632c:  e4 03 00 91   mov	x4, sp
0x101466330:  e1 03 16 aa   mov	x1, x22
0x101466334:  02 00 80 52   mov	w2, #0
0x101466338:  05 06 80 52   mov	w5, #0x30
0x10146633c:  ad bb 1a 94   bl	j___os_log_impl
0x101466340:  ; loc_101466340
0x101466340:  e0 03 14 aa   mov	x0, x20
0x101466344:  df df 1b 94   bl	j__objc_msgSend(x0, "value")
0x101466348:  f4 03 00 aa   mov	x20, x0
0x10146634c:  e0 03 13 aa   mov	x0, x19
0x101466350:  6c 27 1b 94   bl	j__objc_msgSend(x0, "hawkeyeTestMode")
0x101466354:  1f 1c 00 71   cmp	w0, #0x7
0x101466358:  61 01 00 54   b.ne	loc_101466384 ; ⤵ 0x2c
0x10146635c:  68 00 80 52   mov	w8, #0x3
0x101466360:  e8 03 00 39   strb	w8, [sp]
0x101466364:  48 79 00 f0   adrp	x8, 0x102391000
0x101466368:  00 21 44 f9   ldr	x0, [x8, #0x840] ; __got._OBJC_CLASS_$_NSData
0x10146636c:  b9 be 1a 94   bl	j__objc_alloc
0x101466370:  e2 03 00 91   mov	x2, sp
0x101466374:  23 00 80 52   mov	w3, #0x1
0x101466378:  12 2e 1b 94   bl	j__objc_msgSend(x0, "initWithBytes:length:")
0x10146637c:  c1 be 1a 94   bl	j__objc_autorelease
0x101466380:  f4 03 00 aa   mov	x20, x0
0x101466384:  ; loc_101466384
0x101466384:  e0 03 15 aa   mov	x0, x21
0x101466388:  e2 03 14 aa   mov	x2, x20
0x10146638c:  8d aa 1b 94   bl	j__objc_msgSend(x0, "setReadData:")
0x101466390:  e0 03 13 aa   mov	x0, x19
0x101466394:  db f4 1a 94   bl	j__objc_msgSend(x0, "delegate")
0x101466398:  e2 03 13 aa   mov	x2, x19
0x10146639c:  e3 03 15 aa   mov	x3, x21
0x1014663a0:  04 00 80 d2   mov	x4, #0
0x1014663a4:  37 f7 1a 94   bl	j__objc_msgSend(x0, "device:didCompleteTask:withCompletionCommand:")
0x1014663a8:  e0 03 13 aa   mov	x0, x19
0x1014663ac:  e5 e6 1a 94   bl	j__objc_msgSend(x0, "completeCurrentTask")
0x1014663b0:  b2 fe ff 17   b	loc_101465e78 ; ⤴ -0x538
0x1014663b4:  ; loc_1014663b4
0x1014663b4:  13 a7 1a 94   bl	0x101b10000
0x1014663b8:  22 fd ff 17   b	loc_101465840 ; ⤴ -0xb78
0x1014663bc:  ; loc_1014663bc
0x1014663bc:  12 a7 1a 94   bl	0x101b10004
0x1014663c0:  53 fd ff 17   b	loc_10146590c ; ⤴ -0xab4
0x1014663c4:  ; loc_1014663c4
0x1014663c4:  10 a7 1a 94   bl	0x101b10004
0x1014663c8:  fd fd ff 17   b	loc_101465bbc ; ⤴ -0x80c
0x1014663cc:  ; loc_1014663cc
0x1014663cc:  0e a7 1a 94   bl	0x101b10004
0x1014663d0:  87 fd ff 17   b	loc_1014659ec ; ⤴ -0x9e4
0x1014663d4:  ; loc_1014663d4
0x1014663d4:  0c a7 1a 94   bl	0x101b10004
0x1014663d8:  cd fd ff 17   b	loc_101465b0c ; ⤴ -0x8cc
0x1014663dc:  ; loc_1014663dc
0x1014663dc:  0a a7 1a 94   bl	0x101b10004
0x1014663e0:  f3 fe ff 17   b	loc_101465fac ; ⤴ -0x434
0x1014663e4:  ; loc_1014663e4
0x1014663e4:  08 a7 1a 94   bl	0x101b10004
0x1014663e8:  19 ff ff 17   b	loc_10146604c ; ⤴ -0x39c
0x1014663ec:  ; loc_1014663ec
0x1014663ec:  06 a7 1a 94   bl	0x101b10004
0x1014663f0:  7d fe ff 17   b	loc_101465de4 ; ⤴ -0x60c
0x1014663f4:  ; loc_1014663f4
0x1014663f4:  04 a7 1a 94   bl	0x101b10004
0x1014663f8:  c3 fe ff 17   b	loc_101465f04 ; ⤴ -0x4f4
0x1014663fc:  ; loc_1014663fc
0x1014663fc:  02 a7 1a 94   bl	0x101b10004
0x101466400:  3e ff ff 17   b	loc_1014660f8 ; ⤴ -0x308
0x101466404:  ; loc_101466404
0x101466404:  00 a7 1a 94   bl	0x101b10004
0x101466408:  86 ff ff 17   b	loc_101466220 ; ⤴ -0x1e8
0x10146640c:  ; loc_10146640c
0x10146640c:  fe a6 1a 94   bl	0x101b10004
0x101466410:  43 fe ff 17   b	loc_101465d1c ; ⤴ -0x6f4
0x101466414:  ; loc_101466414
0x101466414:  fc a6 1a 94   bl	0x101b10004
0x101466418:  a7 ff ff 17   b	loc_1014662b4 ; ⤴ -0x164
0x10146641c:  ; loc_10146641c
0x10146641c:  49 bb 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice didGetPersonalizationInformation:]:
0x101466420:  7f 23 03 d5   pacibsp
0x101466424:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101466428:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10146642c:  fd 43 00 91   add	fp, sp, #0x10
0x101466430:  f3 03 00 aa   mov	x19, x0
0x101466434:  00 60 41 f9   ldr	x0, [x0, #0x2c0]
0x101466438:  e3 03 13 aa   mov	x3, x19
0x10146643c:  04 00 80 d2   mov	x4, #0
0x101466440:  60 fd 1a 94   bl	j__objc_msgSend(x0, "didRetrievePersonalizationInfo:forDevice:error:")
0x101466444:  7f a2 04 39   strb	wzr, [x19, #0x128]
0x101466448:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10146644c:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101466450:  ff 0f 5f d6   retab

-[CLDurianDevice didCompleteFirmwareUpdate:]:
0x101466454:  7f 23 03 d5   pacibsp
0x101466458:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10146645c:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101466460:  fd 43 00 91   add	fp, sp, #0x10
0x101466464:  f3 03 00 aa   mov	x19, x0
0x101466468:  62 01 00 b4   cbz	x2, loc_101466494 ; ⤵ 0x2c
0x10146646c:  e0 03 13 aa   mov	x0, x19
0x101466470:  44 2a 1b 94   bl	j__objc_msgSend(x0, "informFirmwareUpdateFailureToClientWithError:")
0x101466474:  e0 03 13 aa   mov	x0, x19
0x101466478:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10146647c:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101466480:  ff 23 03 d5   autibsp
0x101466484:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101466488:  50 00 f0 b6   tbz	x16, #0x3e, loc_101466490 ; ⤵ 0x8
0x10146648c:  20 8e 38 d4   brk	#0xc471
0x101466490:  ; loc_101466490
0x101466490:  e4 06 1b 14   b	j__objc_msgSend(x0, "exitFirmwareUpdateMode")
0x101466494:  ; loc_101466494
0x101466494:  60 62 41 f9   ldr	x0, [x19, #0x2c0]
0x101466498:  e2 03 13 aa   mov	x2, x19
0x10146649c:  03 00 80 d2   mov	x3, #0
0x1014664a0:  e0 fe 1a 94   bl	j__objc_msgSend(x0, "didUpdateFirmwareForDevice:error:")
0x1014664a4:  68 a6 04 91   add	x8, x19, #0x129
0x1014664a8:  09 20 80 52   mov	w9, #0x100
0x1014664ac:  09 01 00 79   strh	w9, [x8]
0x1014664b0:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014664b4:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1014664b8:  ff 0f 5f d6   retab

-[CLDurianDevice didAbortFirmwareUpdate]:
0x1014664bc:  7f 23 03 d5   pacibsp
0x1014664c0:  ff c3 01 d1   sub	sp, sp, #0x70
0x1014664c4:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x1014664c8:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x1014664cc:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x1014664d0:  fd 83 01 91   add	fp, sp, #0x60
0x1014664d4:  f3 03 00 aa   mov	x19, x0
0x1014664d8:  68 79 00 90   adrp	x8, 0x102392000
0x1014664dc:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014664e0:  08 01 40 f9   ldr	x8, [x8]
0x1014664e4:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x1014664e8:  08 ac 44 39   ldrb	w8, [x0, #0x12b]
0x1014664ec:  c8 07 00 37   tbnz	w8, #0, loc_1014665e4 ; ⤵ 0xf8
0x1014664f0:  e8 88 00 90   adrp	x8, 0x102582000
0x1014664f4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014664f8:  1f 05 00 b1   cmn	x8, #0x1
0x1014664fc:  e1 08 00 54   b.ne	loc_101466618 ; ⤵ 0x11c
0x101466500:  ; loc_101466500
0x101466500:  e8 88 00 90   adrp	x8, 0x102582000
0x101466504:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101466508:  e0 03 14 aa   mov	x0, x20
0x10146650c:  01 00 80 52   mov	w1, #0
0x101466510:  78 bf 1a 94   bl	j__os_log_type_enabled
0x101466514:  00 03 00 34   cbz	w0, loc_101466574 ; ⤵ 0x60
0x101466518:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10146651c:  3f c9 00 94   bl	0x101498a18
0x101466520:  68 44 00 d0   adrp	x8, 0x101cf4000
0x101466524:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101466528:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10146652c:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x101466530:  48 04 81 52   mov	w8, #0x822
0x101466534:  e8 33 00 79   strh	w8, [sp, #0x18]
0x101466538:  48 52 00 90   adrp	x8, 0x101eae000
0x10146653c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101466540:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x101466544:  28 08 81 52   mov	w8, #0x841
0x101466548:  e8 47 00 79   strh	w8, [sp, #0x22]
0x10146654c:  e0 43 02 f8   stur	x0, [sp, #0x24]
0x101466550:  c0 5c ff d0   adrp	x0, 0x100000000
0x101466554:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101466558:  a3 70 00 b0   adrp	x3, 0x10227b000
0x10146655c:  63 88 10 91   add	x3, x3, #0x422 ; "{\"msg%{public}.0s\":\"#durian #multi didAbortFirmwareUpdate\", \"item\":%{private, location:escape_only}@}"
0x101466560:  e4 43 00 91   add	x4, sp, #0x10
0x101466564:  e1 03 14 aa   mov	x1, x20
0x101466568:  02 00 80 52   mov	w2, #0
0x10146656c:  85 03 80 52   mov	w5, #0x1c
0x101466570:  20 bb 1a 94   bl	j___os_log_impl
0x101466574:  ; loc_101466574
0x101466574:  48 79 00 f0   adrp	x8, 0x102391000
0x101466578:  00 65 45 f9   ldr	x0, [x8, #0xac8] ; __got._OBJC_CLASS_$_NSError
0x10146657c:  35 be 1a 94   bl	j__objc_alloc
0x101466580:  f4 03 00 aa   mov	x20, x0
0x101466584:  48 79 00 f0   adrp	x8, 0x102391000
0x101466588:  08 fd 47 f9   ldr	x8, [x8, #0xff8] ; __got._kCLErrorDomainPrivate
0x10146658c:  15 01 40 f9   ldr	x21, [x8]
0x101466590:  48 79 00 f0   adrp	x8, 0x102391000
0x101466594:  08 39 45 f9   ldr	x8, [x8, #0xa70] ; __got._NSLocalizedDescriptionKey
0x101466598:  09 01 40 f9   ldr	x9, [x8]
0x10146659c:  68 81 00 b0   adrp	x8, 0x102493000
0x1014665a0:  08 c1 0e 91   add	x8, x8, #0x3b0 ; "Firmware update aborted by device"
0x1014665a4:  e9 23 00 a9   stp	x9, x8, [sp]
0x1014665a8:  48 79 00 f0   adrp	x8, 0x102391000
0x1014665ac:  00 2d 44 f9   ldr	x0, [x8, #0x858] ; __got._OBJC_CLASS_$_NSDictionary
0x1014665b0:  e2 23 00 91   add	x2, sp, #0x8
0x1014665b4:  e3 03 00 91   mov	x3, sp
0x1014665b8:  24 00 80 52   mov	w4, #0x1
0x1014665bc:  39 f8 1a 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x1014665c0:  e4 03 00 aa   mov	x4, x0
0x1014665c4:  e0 03 14 aa   mov	x0, x20
0x1014665c8:  e2 03 15 aa   mov	x2, x21
0x1014665cc:  e3 01 80 52   mov	w3, #0xf
0x1014665d0:  0c 31 1b 94   bl	j__objc_msgSend(x0, "initWithDomain:code:userInfo:")
0x1014665d4:  2b be 1a 94   bl	j__objc_autorelease
0x1014665d8:  e2 03 00 aa   mov	x2, x0
0x1014665dc:  e0 03 13 aa   mov	x0, x19
0x1014665e0:  e8 29 1b 94   bl	j__objc_msgSend(x0, "informFirmwareUpdateFailureToClientWithError:")
0x1014665e4:  ; loc_1014665e4
0x1014665e4:  e0 03 13 aa   mov	x0, x19
0x1014665e8:  8e 06 1b 94   bl	j__objc_msgSend(x0, "exitFirmwareUpdateMode")
0x1014665ec:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x1014665f0:  69 79 00 90   adrp	x9, 0x102392000
0x1014665f4:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x1014665f8:  29 01 40 f9   ldr	x9, [x9]
0x1014665fc:  3f 01 08 eb   cmp	x9, x8
0x101466600:  01 01 00 54   b.ne	loc_101466620 ; ⤵ 0x20
0x101466604:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101466608:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10146660c:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101466610:  ff c3 01 91   add	sp, sp, #0x70
0x101466614:  ff 0f 5f d6   retab
0x101466618:  ; loc_101466618
0x101466618:  7a a6 1a 94   bl	0x101b10000
0x10146661c:  b9 ff ff 17   b	loc_101466500 ; ⤴ -0x11c
0x101466620:  ; loc_101466620
0x101466620:  c8 ba 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice startEventCounter]:
0x101466624:  7f 23 03 d5   pacibsp
0x101466628:  ff c3 01 d1   sub	sp, sp, #0x70
0x10146662c:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101466630:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x101466634:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101466638:  fd 83 01 91   add	fp, sp, #0x60
0x10146663c:  f3 03 00 aa   mov	x19, x0
0x101466640:  68 79 00 90   adrp	x8, 0x102392000
0x101466644:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101466648:  08 01 40 f9   ldr	x8, [x8]
0x10146664c:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x101466650:  08 c0 40 39   ldrb	w8, [x0, #0x30]
0x101466654:  1f 05 00 71   cmp	w8, #0x1
0x101466658:  41 05 00 54   b.ne	loc_101466700 ; ⤵ 0xa8
0x10146665c:  e8 88 00 90   adrp	x8, 0x102582000
0x101466660:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101466664:  1f 05 00 b1   cmn	x8, #0x1
0x101466668:  a1 12 00 54   b.ne	loc_1014668bc ; ⤵ 0x254
0x10146666c:  ; loc_10146666c
0x10146666c:  e8 88 00 90   adrp	x8, 0x102582000
0x101466670:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101466674:  e0 03 14 aa   mov	x0, x20
0x101466678:  01 00 80 52   mov	w1, #0
0x10146667c:  1d bf 1a 94   bl	j__os_log_type_enabled
0x101466680:  c0 03 00 34   cbz	w0, loc_1014666f8 ; ⤵ 0x78
0x101466684:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101466688:  e4 c8 00 94   bl	0x101498a18
0x10146668c:  f5 03 00 aa   mov	x21, x0
0x101466690:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x101466694:  e3 27 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x101466698:  e0 c8 00 94   bl	0x101498a18
0x10146669c:  68 44 00 d0   adrp	x8, 0x101cf4000
0x1014666a0:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x1014666a4:  e0 13 00 bd   str	s0, [sp, #0x10]
0x1014666a8:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x1014666ac:  48 04 81 52   mov	w8, #0x822
0x1014666b0:  e8 33 00 79   strh	w8, [sp, #0x18]
0x1014666b4:  48 52 00 90   adrp	x8, 0x101eae000
0x1014666b8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014666bc:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x1014666c0:  28 08 81 52   mov	w8, #0x841
0x1014666c4:  e8 47 00 79   strh	w8, [sp, #0x22]
0x1014666c8:  f5 43 02 f8   stur	x21, [sp, #0x24]
0x1014666cc:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x1014666d0:  e0 e3 02 f8   stur	x0, [sp, #0x2e]
0x1014666d4:  c0 5c ff d0   adrp	x0, 0x100000000
0x1014666d8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014666dc:  a3 70 00 b0   adrp	x3, 0x10227b000
0x1014666e0:  63 20 12 91   add	x3, x3, #0x488 ; "{\"msg%{public}.0s\":\"#durian startEventCounter requested but already on\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x1014666e4:  e4 43 00 91   add	x4, sp, #0x10
0x1014666e8:  e1 03 14 aa   mov	x1, x20
0x1014666ec:  02 00 80 52   mov	w2, #0
0x1014666f0:  c5 04 80 52   mov	w5, #0x26
0x1014666f4:  bf ba 1a 94   bl	j___os_log_impl
0x1014666f8:  ; loc_1014666f8
0x1014666f8:  14 00 80 d2   mov	x20, #0
0x1014666fc:  64 00 00 14   b	loc_10146688c ; ⤵ 0x190
0x101466700:  ; loc_101466700
0x101466700:  69 0e 40 f9   ldr	x9, [x19, #0x18]
0x101466704:  e8 88 00 90   adrp	x8, 0x102582000
0x101466708:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146670c:  1f 05 00 b1   cmn	x8, #0x1
0x101466710:  89 05 00 b4   cbz	x9, loc_1014667c0 ; ⤵ 0xb0
0x101466714:  81 0d 00 54   b.ne	loc_1014668c4 ; ⤵ 0x1b0
0x101466718:  ; loc_101466718
0x101466718:  e8 88 00 90   adrp	x8, 0x102582000
0x10146671c:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101466720:  e0 03 14 aa   mov	x0, x20
0x101466724:  01 00 80 52   mov	w1, #0
0x101466728:  f2 be 1a 94   bl	j__os_log_type_enabled
0x10146672c:  c0 03 00 34   cbz	w0, loc_1014667a4 ; ⤵ 0x78
0x101466730:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101466734:  b9 c8 00 94   bl	0x101498a18
0x101466738:  f5 03 00 aa   mov	x21, x0
0x10146673c:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x101466740:  b8 27 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x101466744:  b5 c8 00 94   bl	0x101498a18
0x101466748:  68 44 00 d0   adrp	x8, 0x101cf4000
0x10146674c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101466750:  e0 13 00 bd   str	s0, [sp, #0x10]
0x101466754:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x101466758:  48 04 81 52   mov	w8, #0x822
0x10146675c:  e8 33 00 79   strh	w8, [sp, #0x18]
0x101466760:  48 52 00 90   adrp	x8, 0x101eae000
0x101466764:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101466768:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x10146676c:  28 08 81 52   mov	w8, #0x841
0x101466770:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101466774:  f5 43 02 f8   stur	x21, [sp, #0x24]
0x101466778:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x10146677c:  e0 e3 02 f8   stur	x0, [sp, #0x2e]
0x101466780:  c0 5c ff d0   adrp	x0, 0x100000000
0x101466784:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101466788:  a3 70 00 b0   adrp	x3, 0x10227b000
0x10146678c:  63 c0 15 91   add	x3, x3, #0x570 ; "{\"msg%{public}.0s\":\"#durian startEventCounter\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x101466790:  e4 43 00 91   add	x4, sp, #0x10
0x101466794:  e1 03 14 aa   mov	x1, x20
0x101466798:  02 00 80 52   mov	w2, #0
0x10146679c:  c5 04 80 52   mov	w5, #0x26
0x1014667a0:  94 ba 1a 94   bl	j___os_log_impl
0x1014667a4:  ; loc_1014667a4
0x1014667a4:  60 0a 41 a9   ldp	x0, x2, [x19, #0x10]
0x1014667a8:  6e bd 1b 94   bl	j__objc_msgSend(x0, "startConnectionEventCounterForPeripheral:")
0x1014667ac:  f4 03 00 aa   mov	x20, x0
0x1014667b0:  e0 06 00 b5   cbnz	x0, loc_10146688c ; ⤵ 0xdc
0x1014667b4:  28 00 80 52   mov	w8, #0x1
0x1014667b8:  68 c2 00 39   strb	w8, [x19, #0x30]
0x1014667bc:  34 00 00 14   b	loc_10146688c ; ⤵ 0xd0
0x1014667c0:  ; loc_1014667c0
0x1014667c0:  61 08 00 54   b.ne	loc_1014668cc ; ⤵ 0x10c
0x1014667c4:  ; loc_1014667c4
0x1014667c4:  e8 88 00 90   adrp	x8, 0x102582000
0x1014667c8:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014667cc:  e0 03 13 aa   mov	x0, x19
0x1014667d0:  01 00 80 52   mov	w1, #0
0x1014667d4:  c7 be 1a 94   bl	j__os_log_type_enabled
0x1014667d8:  60 02 00 34   cbz	w0, loc_101466824 ; ⤵ 0x4c
0x1014667dc:  68 44 00 d0   adrp	x8, 0x101cf4000
0x1014667e0:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x1014667e4:  e0 13 00 bd   str	s0, [sp, #0x10]
0x1014667e8:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x1014667ec:  48 04 81 52   mov	w8, #0x822
0x1014667f0:  e8 33 00 79   strh	w8, [sp, #0x18]
0x1014667f4:  48 52 00 90   adrp	x8, 0x101eae000
0x1014667f8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014667fc:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x101466800:  c0 5c ff d0   adrp	x0, 0x100000000
0x101466804:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101466808:  a3 70 00 b0   adrp	x3, 0x10227b000
0x10146680c:  63 9c 14 91   add	x3, x3, #0x527 ; "{\"msg%{public}.0s\":\"#durian startEventCounter active peripheral is nil\"}"
0x101466810:  e4 43 00 91   add	x4, sp, #0x10
0x101466814:  e1 03 13 aa   mov	x1, x19
0x101466818:  02 00 80 52   mov	w2, #0
0x10146681c:  45 02 80 52   mov	w5, #0x12
0x101466820:  74 ba 1a 94   bl	j___os_log_impl
0x101466824:  ; loc_101466824
0x101466824:  48 79 00 f0   adrp	x8, 0x102391000
0x101466828:  00 65 45 f9   ldr	x0, [x8, #0xac8] ; __got._OBJC_CLASS_$_NSError
0x10146682c:  89 bd 1a 94   bl	j__objc_alloc
0x101466830:  f3 03 00 aa   mov	x19, x0
0x101466834:  48 79 00 f0   adrp	x8, 0x102391000
0x101466838:  08 fd 47 f9   ldr	x8, [x8, #0xff8] ; __got._kCLErrorDomainPrivate
0x10146683c:  14 01 40 f9   ldr	x20, [x8]
0x101466840:  48 79 00 f0   adrp	x8, 0x102391000
0x101466844:  08 39 45 f9   ldr	x8, [x8, #0xa70] ; __got._NSLocalizedDescriptionKey
0x101466848:  09 01 40 f9   ldr	x9, [x8]
0x10146684c:  68 81 00 b0   adrp	x8, 0x102493000
0x101466850:  08 41 0f 91   add	x8, x8, #0x3d0 ; "cannot startEventCounter, active peripheral is nil"
0x101466854:  e9 23 00 a9   stp	x9, x8, [sp]
0x101466858:  48 79 00 f0   adrp	x8, 0x102391000
0x10146685c:  00 2d 44 f9   ldr	x0, [x8, #0x858] ; __got._OBJC_CLASS_$_NSDictionary
0x101466860:  e2 23 00 91   add	x2, sp, #0x8
0x101466864:  e3 03 00 91   mov	x3, sp
0x101466868:  24 00 80 52   mov	w4, #0x1
0x10146686c:  8d f7 1a 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x101466870:  e4 03 00 aa   mov	x4, x0
0x101466874:  e0 03 13 aa   mov	x0, x19
0x101466878:  e2 03 14 aa   mov	x2, x20
0x10146687c:  c3 00 80 52   mov	w3, #0x6
0x101466880:  60 30 1b 94   bl	j__objc_msgSend(x0, "initWithDomain:code:userInfo:")
0x101466884:  f4 03 00 aa   mov	x20, x0
0x101466888:  7e bd 1a 94   bl	j__objc_autorelease
0x10146688c:  ; loc_10146688c
0x10146688c:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x101466890:  69 79 00 90   adrp	x9, 0x102392000
0x101466894:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101466898:  29 01 40 f9   ldr	x9, [x9]
0x10146689c:  3f 01 08 eb   cmp	x9, x8
0x1014668a0:  a1 01 00 54   b.ne	loc_1014668d4 ; ⤵ 0x34
0x1014668a4:  e0 03 14 aa   mov	x0, x20
0x1014668a8:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x1014668ac:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x1014668b0:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x1014668b4:  ff c3 01 91   add	sp, sp, #0x70
0x1014668b8:  ff 0f 5f d6   retab
0x1014668bc:  ; loc_1014668bc
0x1014668bc:  d1 a5 1a 94   bl	0x101b10000
0x1014668c0:  6b ff ff 17   b	loc_10146666c ; ⤴ -0x254
0x1014668c4:  ; loc_1014668c4
0x1014668c4:  cf a5 1a 94   bl	0x101b10000
0x1014668c8:  94 ff ff 17   b	loc_101466718 ; ⤴ -0x1b0
0x1014668cc:  ; loc_1014668cc
0x1014668cc:  cd a5 1a 94   bl	0x101b10000
0x1014668d0:  bd ff ff 17   b	loc_1014667c4 ; ⤴ -0x10c
0x1014668d4:  ; loc_1014668d4
0x1014668d4:  1b ba 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice stopEventCounter]:
0x1014668d8:  7f 23 03 d5   pacibsp
0x1014668dc:  ff 83 01 d1   sub	sp, sp, #0x60
0x1014668e0:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x1014668e4:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x1014668e8:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x1014668ec:  fd 43 01 91   add	fp, sp, #0x50
0x1014668f0:  f3 03 00 aa   mov	x19, x0
0x1014668f4:  68 79 00 90   adrp	x8, 0x102392000
0x1014668f8:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014668fc:  08 01 40 f9   ldr	x8, [x8]
0x101466900:  e8 17 00 f9   str	x8, [sp, #0x28]
0x101466904:  08 c0 40 39   ldrb	w8, [x0, #0x30]
0x101466908:  c8 05 00 36   tbz	w8, #0, loc_1014669c0 ; ⤵ 0xb8
0x10146690c:  69 0e 40 f9   ldr	x9, [x19, #0x18]
0x101466910:  e8 88 00 90   adrp	x8, 0x102582000
0x101466914:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101466918:  1f 05 00 b1   cmn	x8, #0x1
0x10146691c:  49 0a 00 b4   cbz	x9, loc_101466a64 ; ⤵ 0x148
0x101466920:  81 0f 00 54   b.ne	loc_101466b10 ; ⤵ 0x1f0
0x101466924:  ; loc_101466924
0x101466924:  e8 88 00 90   adrp	x8, 0x102582000
0x101466928:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146692c:  e0 03 14 aa   mov	x0, x20
0x101466930:  01 00 80 52   mov	w1, #0
0x101466934:  6f be 1a 94   bl	j__os_log_type_enabled
0x101466938:  c0 03 00 34   cbz	w0, loc_1014669b0 ; ⤵ 0x78
0x10146693c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101466940:  36 c8 00 94   bl	0x101498a18
0x101466944:  f5 03 00 aa   mov	x21, x0
0x101466948:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x10146694c:  35 27 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x101466950:  32 c8 00 94   bl	0x101498a18
0x101466954:  68 44 00 d0   adrp	x8, 0x101cf4000
0x101466958:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10146695c:  e0 03 00 bd   str	s0, [sp]
0x101466960:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101466964:  48 04 81 52   mov	w8, #0x822
0x101466968:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10146696c:  48 52 00 90   adrp	x8, 0x101eae000
0x101466970:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101466974:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101466978:  28 08 81 52   mov	w8, #0x841
0x10146697c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101466980:  f5 43 01 f8   stur	x21, [sp, #0x14]
0x101466984:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101466988:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x10146698c:  c0 5c ff d0   adrp	x0, 0x100000000
0x101466990:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101466994:  a3 70 00 b0   adrp	x3, 0x10227b000
0x101466998:  63 cc 1c 91   add	x3, x3, #0x733 ; "{\"msg%{public}.0s\":\"#durian stopEventCounter\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x10146699c:  e4 03 00 91   mov	x4, sp
0x1014669a0:  e1 03 14 aa   mov	x1, x20
0x1014669a4:  02 00 80 52   mov	w2, #0
0x1014669a8:  c5 04 80 52   mov	w5, #0x26
0x1014669ac:  11 ba 1a 94   bl	j___os_log_impl
0x1014669b0:  ; loc_1014669b0
0x1014669b0:  60 0a 41 a9   ldp	x0, x2, [x19, #0x10]
0x1014669b4:  d3 c1 1b 94   bl	j__objc_msgSend(x0, "stopConnectionEventCounterForPeripheral:")
0x1014669b8:  40 09 00 b4   cbz	x0, loc_101466ae0 ; ⤵ 0x128
0x1014669bc:  4a 00 00 14   b	loc_101466ae4 ; ⤵ 0x128
0x1014669c0:  ; loc_1014669c0
0x1014669c0:  e8 88 00 90   adrp	x8, 0x102582000
0x1014669c4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014669c8:  1f 05 00 b1   cmn	x8, #0x1
0x1014669cc:  61 0a 00 54   b.ne	loc_101466b18 ; ⤵ 0x14c
0x1014669d0:  ; loc_1014669d0
0x1014669d0:  e8 88 00 90   adrp	x8, 0x102582000
0x1014669d4:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014669d8:  e0 03 14 aa   mov	x0, x20
0x1014669dc:  01 00 80 52   mov	w1, #0
0x1014669e0:  44 be 1a 94   bl	j__os_log_type_enabled
0x1014669e4:  c0 03 00 34   cbz	w0, loc_101466a5c ; ⤵ 0x78
0x1014669e8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014669ec:  0b c8 00 94   bl	0x101498a18
0x1014669f0:  f5 03 00 aa   mov	x21, x0
0x1014669f4:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x1014669f8:  0a 27 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x1014669fc:  07 c8 00 94   bl	0x101498a18
0x101466a00:  68 44 00 d0   adrp	x8, 0x101cf4000
0x101466a04:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101466a08:  e0 03 00 bd   str	s0, [sp]
0x101466a0c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101466a10:  48 04 81 52   mov	w8, #0x822
0x101466a14:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101466a18:  48 52 00 90   adrp	x8, 0x101eae000
0x101466a1c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101466a20:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101466a24:  28 08 81 52   mov	w8, #0x841
0x101466a28:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101466a2c:  f5 43 01 f8   stur	x21, [sp, #0x14]
0x101466a30:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101466a34:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x101466a38:  c0 5c ff d0   adrp	x0, 0x100000000
0x101466a3c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101466a40:  a3 70 00 b0   adrp	x3, 0x10227b000
0x101466a44:  63 d8 17 91   add	x3, x3, #0x5f6 ; "{\"msg%{public}.0s\":\"#durian stopEventCounter requested but already off\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x101466a48:  e4 03 00 91   mov	x4, sp
0x101466a4c:  e1 03 14 aa   mov	x1, x20
0x101466a50:  02 00 80 52   mov	w2, #0
0x101466a54:  c5 04 80 52   mov	w5, #0x26
0x101466a58:  e6 b9 1a 94   bl	j___os_log_impl
0x101466a5c:  ; loc_101466a5c
0x101466a5c:  00 00 80 d2   mov	x0, #0
0x101466a60:  21 00 00 14   b	loc_101466ae4 ; ⤵ 0x84
0x101466a64:  ; loc_101466a64
0x101466a64:  e1 05 00 54   b.ne	loc_101466b20 ; ⤵ 0xbc
0x101466a68:  ; loc_101466a68
0x101466a68:  e8 88 00 90   adrp	x8, 0x102582000
0x101466a6c:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101466a70:  e0 03 14 aa   mov	x0, x20
0x101466a74:  01 00 80 52   mov	w1, #0
0x101466a78:  1e be 1a 94   bl	j__os_log_type_enabled
0x101466a7c:  00 03 00 34   cbz	w0, loc_101466adc ; ⤵ 0x60
0x101466a80:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101466a84:  e5 c7 00 94   bl	0x101498a18
0x101466a88:  68 44 00 d0   adrp	x8, 0x101cf4000
0x101466a8c:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101466a90:  e0 03 00 bd   str	s0, [sp]
0x101466a94:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101466a98:  48 04 81 52   mov	w8, #0x822
0x101466a9c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101466aa0:  48 52 00 90   adrp	x8, 0x101eae000
0x101466aa4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101466aa8:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101466aac:  28 08 81 52   mov	w8, #0x841
0x101466ab0:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101466ab4:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101466ab8:  c0 5c ff d0   adrp	x0, 0x100000000
0x101466abc:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101466ac0:  a3 70 00 b0   adrp	x3, 0x10227b000
0x101466ac4:  63 54 1a 91   add	x3, x3, #0x695 ; "{\"msg%{public}.0s\":\"#durian stopEventCounter active peripheral is nil, assuming connection event SPMI has stopped\", \"item\":%{private, location:escape_only}@}"
0x101466ac8:  e4 03 00 91   mov	x4, sp
0x101466acc:  e1 03 14 aa   mov	x1, x20
0x101466ad0:  02 00 80 52   mov	w2, #0
0x101466ad4:  85 03 80 52   mov	w5, #0x1c
0x101466ad8:  c6 b9 1a 94   bl	j___os_log_impl
0x101466adc:  ; loc_101466adc
0x101466adc:  00 00 80 d2   mov	x0, #0
0x101466ae0:  ; loc_101466ae0
0x101466ae0:  7f c2 00 39   strb	wzr, [x19, #0x30]
0x101466ae4:  ; loc_101466ae4
0x101466ae4:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101466ae8:  69 79 00 90   adrp	x9, 0x102392000
0x101466aec:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101466af0:  29 01 40 f9   ldr	x9, [x9]
0x101466af4:  3f 01 08 eb   cmp	x9, x8
0x101466af8:  81 01 00 54   b.ne	loc_101466b28 ; ⤵ 0x30
0x101466afc:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x101466b00:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x101466b04:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x101466b08:  ff 83 01 91   add	sp, sp, #0x60
0x101466b0c:  ff 0f 5f d6   retab
0x101466b10:  ; loc_101466b10
0x101466b10:  3c a5 1a 94   bl	0x101b10000
0x101466b14:  84 ff ff 17   b	loc_101466924 ; ⤴ -0x1f0
0x101466b18:  ; loc_101466b18
0x101466b18:  3a a5 1a 94   bl	0x101b10000
0x101466b1c:  ad ff ff 17   b	loc_1014669d0 ; ⤴ -0x14c
0x101466b20:  ; loc_101466b20
0x101466b20:  38 a5 1a 94   bl	0x101b10000
0x101466b24:  d1 ff ff 17   b	loc_101466a68 ; ⤴ -0xbc
0x101466b28:  ; loc_101466b28
0x101466b28:  86 b9 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice setReconnecting:]:
0x101466b2c:  02 20 04 39   strb	w2, [x0, #0x108]
0x101466b30:  c0 03 5f d6   ret

-[CLDurianDevice reconnecting]:
0x101466b34:  00 20 44 39   ldrb	w0, [x0, #0x108]
0x101466b38:  c0 03 5f d6   ret

-[CLDurianDevice getConnectionReason]:
0x101466b3c:  00 40 40 f9   ldr	x0, [x0, #0x80]
0x101466b40:  c0 03 5f d6   ret

-[CLDurianDevice getDisconnectionReason]:
0x101466b44:  00 44 40 f9   ldr	x0, [x0, #0x88]
0x101466b48:  c0 03 5f d6   ret

-[CLDurianDevice setConnectionReason:]:
0x101466b4c:  7f 23 03 d5   pacibsp
0x101466b50:  ff 43 02 d1   sub	sp, sp, #0x90
0x101466b54:  f8 5f 05 a9   stp	x24, x23, [sp, #0x50]
0x101466b58:  f6 57 06 a9   stp	x22, x21, [sp, #0x60]
0x101466b5c:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x101466b60:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x101466b64:  fd 03 02 91   add	fp, sp, #0x80
0x101466b68:  f4 03 02 aa   mov	x20, x2
0x101466b6c:  f3 03 00 aa   mov	x19, x0
0x101466b70:  68 79 00 90   adrp	x8, 0x102392000
0x101466b74:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101466b78:  08 01 40 f9   ldr	x8, [x8]
0x101466b7c:  a8 83 1c f8   stur	x8, [fp, #-0x38]
0x101466b80:  e8 88 00 90   adrp	x8, 0x102582000
0x101466b84:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101466b88:  1f 05 00 b1   cmn	x8, #0x1
0x101466b8c:  21 08 00 54   b.ne	loc_101466c90 ; ⤵ 0x104
0x101466b90:  e8 88 00 90   adrp	x8, 0x102582000
0x101466b94:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101466b98:  e0 03 15 aa   mov	x0, x21
0x101466b9c:  01 00 80 52   mov	w1, #0
0x101466ba0:  d4 bd 1a 94   bl	j__os_log_type_enabled
0x101466ba4:  00 05 00 34   cbz	w0, loc_101466c44 ; ⤵ 0xa0
0x101466ba8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101466bac:  9b c7 00 94   bl	0x101498a18
0x101466bb0:  f6 03 00 aa   mov	x22, x0
0x101466bb4:  77 42 40 f9   ldr	x23, [x19, #0x80]
0x101466bb8:  60 be 40 f9   ldr	x0, [x19, #0x178]
0x101466bbc:  99 54 1b 94   bl	j__objc_msgSend(x0, "name")
0x101466bc0:  68 0e 40 f9   ldr	x8, [x19, #0x18]
0x101466bc4:  1f 01 00 f1   cmp	x8, #0
0x101466bc8:  68 39 00 d0   adrp	x8, 0x101b94000
0x101466bcc:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x101466bd0:  e8 07 9f 1a   cset	w8, ne
0x101466bd4:  e0 03 00 bd   str	s0, [sp]
0x101466bd8:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101466bdc:  49 04 81 52   mov	w9, #0x822
0x101466be0:  e9 13 00 79   strh	w9, [sp, #0x8]
0x101466be4:  49 52 00 90   adrp	x9, 0x101eae000
0x101466be8:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101466bec:  e9 a3 00 f8   stur	x9, [sp, #0xa]
0x101466bf0:  29 08 81 52   mov	w9, #0x841
0x101466bf4:  e9 27 00 79   strh	w9, [sp, #0x12]
0x101466bf8:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101466bfc:  e9 3b 00 79   strh	w9, [sp, #0x1c]
0x101466c00:  f4 e3 01 f8   stur	x20, [sp, #0x1e]

