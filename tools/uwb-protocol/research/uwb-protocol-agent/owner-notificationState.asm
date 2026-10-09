
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

