
-[NIServerItemLocalizerSession findMyAccessoryManager:didConnectDevice:error:]:
0x100332224:  7f 23 03 d5   pacibsp
0x100332228:  ff 03 02 d1   sub	sp, sp, #0x80
0x10033222c:  fa 67 03 a9   stp	x26, x25, [sp, #0x30]
0x100332230:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x100332234:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x100332238:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x10033223c:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x100332240:  fd c3 01 91   add	fp, sp, #0x70
0x100332244:  f5 03 04 aa   mov	x21, x4
0x100332248:  f4 03 03 aa   mov	x20, x3
0x10033224c:  f3 03 02 aa   mov	x19, x2
0x100332250:  f6 03 00 aa   mov	x22, x0
0x100332254:  08 34 00 f0   adrp	x8, 0x1009b5000
0x100332258:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x10033225c:  08 01 40 f9   ldr	x8, [x8]
0x100332260:  e8 17 00 f9   str	x8, [sp, #0x28]
0x100332264:  50 fd 06 94   bl	j__objc_retain_x19
0x100332268:  57 fd 06 94   bl	j__objc_retain_x20
0x10033226c:  5a fd 06 94   bl	j__objc_retain_x21
0x100332270:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332274:  08 3d 82 b9   ldrsw	x8, [x8, #0x23c]
0x100332278:  c8 6a 68 f8   ldr	x8, [x22, x8]
0x10033227c:  68 08 00 b4   cbz	x8, loc_100332388 ; ⤵ 0x10c
0x100332280:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332284:  08 a9 82 b9   ldrsw	x8, [x8, #0x2a8]
0x100332288:  c8 6a 68 f8   ldr	x8, [x22, x8]
0x10033228c:  1f 01 13 eb   cmp	x8, x19
0x100332290:  e1 08 00 54   b.ne	loc_1003323ac ; ⤵ 0x11c
0x100332294:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332298:  19 91 82 b9   ldrsw	x25, [x8, #0x290]
0x10033229c:  c0 6a 79 f8   ldr	x0, [x22, x25]
0x1003322a0:  b8 ff 06 94   bl	j__objc_msgSend(x0, "UUID")
0x1003322a4:  fd 03 1d aa   mov	fp, fp
0x1003322a8:  33 fd 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003322ac:  f7 03 00 aa   mov	x23, x0
0x1003322b0:  e0 03 14 aa   mov	x0, x20
0x1003322b4:  e2 03 17 aa   mov	x2, x23
0x1003322b8:  fa 2c 07 94   bl	j__objc_msgSend(x0, "isEqual:")
0x1003322bc:  f8 03 00 aa   mov	x24, x0
0x1003322c0:  01 fd 06 94   bl	j__objc_release_x23
0x1003322c4:  58 07 00 36   tbz	w24, #0, loc_1003323ac ; ⤵ 0xe8
0x1003322c8:  35 09 00 b4   cbz	x21, loc_1003323ec ; ⤵ 0x124
0x1003322cc:  08 37 00 d0   adrp	x8, 0x100a14000
0x1003322d0:  08 59 82 b9   ldrsw	x8, [x8, #0x258]
0x1003322d4:  df 6a 28 b8   str	wzr, [x22, x8]
0x1003322d8:  08 34 00 f0   adrp	x8, 0x1009b5000
0x1003322dc:  17 a9 44 f9   ldr	x23, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x1003322e0:  08 34 00 f0   adrp	x8, 0x1009b5000
0x1003322e4:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x1003322e8:  09 01 40 f9   ldr	x9, [x8]
0x1003322ec:  c8 35 00 d0   adrp	x8, 0x1009ec000
0x1003322f0:  08 21 18 91   add	x8, x8, #0x608 ; "Error connecting to peer."
0x1003322f4:  e9 23 00 a9   stp	x9, x8, [sp]
0x1003322f8:  08 34 00 f0   adrp	x8, 0x1009b5000
0x1003322fc:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x100332300:  e2 23 00 91   add	x2, sp, #0x8
0x100332304:  e3 03 00 91   mov	x3, sp
0x100332308:  24 00 80 52   mov	w4, #0x1
0x10033230c:  15 1f 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x100332310:  fd 03 1d aa   mov	fp, fp
0x100332314:  18 fd 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100332318:  f8 03 00 aa   mov	x24, x0
0x10033231c:  c8 34 00 90   adrp	x8, 0x1009ca000
0x100332320:  08 21 23 91   add	x8, x8, #0x8c8
0x100332324:  02 01 40 f9   ldr	x2, [x8]
0x100332328:  e0 03 17 aa   mov	x0, x23
0x10033232c:  a3 25 80 52   mov	w3, #0x12d
0x100332330:  e4 03 18 aa   mov	x4, x24
0x100332334:  2b 23 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x100332338:  fd 03 1d aa   mov	fp, fp
0x10033233c:  0e fd 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100332340:  f7 03 00 aa   mov	x23, x0
0x100332344:  e4 fc 06 94   bl	j__objc_release_x24
0x100332348:  a8 37 00 f0   adrp	x8, 0x100a29000
0x10033234c:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x100332350:  18 01 40 f9   ldr	x24, [x8]
0x100332354:  e0 03 18 aa   mov	x0, x24
0x100332358:  01 02 80 52   mov	w1, #0x10
0x10033235c:  6a fd 06 94   bl	j__os_log_type_enabled
0x100332360:  a0 00 00 34   cbz	w0, loc_100332374 ; ⤵ 0x14
0x100332364:  e0 03 14 aa   mov	x0, x20
0x100332368:  e1 03 15 aa   mov	x1, x21
0x10033236c:  e2 03 18 aa   mov	x2, x24
0x100332370:  ed ae 06 94   bl	0x1004ddf24
0x100332374:  ; loc_100332374
0x100332374:  e0 03 16 aa   mov	x0, x22
0x100332378:  e2 03 17 aa   mov	x2, x23
0x10033237c:  b9 05 07 94   bl	j__objc_msgSend(x0, "_handleError:")
0x100332380:  d1 fc 06 94   bl	j__objc_release_x23
0x100332384:  0a 00 00 14   b	loc_1003323ac ; ⤵ 0x28
0x100332388:  ; loc_100332388
0x100332388:  a8 37 00 f0   adrp	x8, 0x100a29000
0x10033238c:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x100332390:  16 01 40 f9   ldr	x22, [x8]
0x100332394:  e0 03 16 aa   mov	x0, x22
0x100332398:  01 02 80 52   mov	w1, #0x10
0x10033239c:  5a fd 06 94   bl	j__os_log_type_enabled
0x1003323a0:  60 00 00 34   cbz	w0, loc_1003323ac ; ⤵ 0xc
0x1003323a4:  e0 03 16 aa   mov	x0, x22
0x1003323a8:  f2 ae 06 94   bl	0x1004ddf70
0x1003323ac:  ; loc_1003323ac
0x1003323ac:  be fc 06 94   bl	j__objc_release_x21
0x1003323b0:  b9 fc 06 94   bl	j__objc_release_x20
0x1003323b4:  b4 fc 06 94   bl	j__objc_release_x19
0x1003323b8:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x1003323bc:  09 34 00 f0   adrp	x9, 0x1009b5000
0x1003323c0:  29 b5 45 f9   ldr	x9, [x9, #0xb68] ; __got.___stack_chk_guard
0x1003323c4:  29 01 40 f9   ldr	x9, [x9]
0x1003323c8:  3f 01 08 eb   cmp	x9, x8
0x1003323cc:  c1 05 00 54   b.ne	loc_100332484 ; ⤵ 0xb8
0x1003323d0:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x1003323d4:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x1003323d8:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x1003323dc:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x1003323e0:  fa 67 43 a9   ldp	x26, x25, [sp, #0x30]
0x1003323e4:  ff 03 02 91   add	sp, sp, #0x80
0x1003323e8:  ff 0f 5f d6   retab
0x1003323ec:  ; loc_1003323ec
0x1003323ec:  a8 37 00 f0   adrp	x8, 0x100a29000
0x1003323f0:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x1003323f4:  17 01 40 f9   ldr	x23, [x8]
0x1003323f8:  e0 03 17 aa   mov	x0, x23
0x1003323fc:  01 00 80 52   mov	w1, #0
0x100332400:  41 fd 06 94   bl	j__os_log_type_enabled
0x100332404:  c0 01 00 34   cbz	w0, loc_10033243c ; ⤵ 0x38
0x100332408:  c8 11 00 90   adrp	x8, 0x10056a000
0x10033240c:  00 59 42 fd   ldr	d0, [x8, #0x4b0]
0x100332410:  e0 13 00 bd   str	s0, [sp, #0x10]
0x100332414:  f4 43 01 f8   stur	x20, [sp, #0x14]
0x100332418:  60 e6 ff d0   adrp	x0, 0x100000000
0x10033241c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100332420:  03 31 00 90   adrp	x3, 0x100952000
0x100332424:  63 40 3b 91   add	x3, x3, #0xed0 ; "#ses-item-loc,[CL cb] New Connection: %@"
0x100332428:  e4 43 00 91   add	x4, sp, #0x10
0x10033242c:  e1 03 17 aa   mov	x1, x23
0x100332430:  02 00 80 52   mov	w2, #0
0x100332434:  85 01 80 52   mov	w5, #0xc
0x100332438:  67 fa 06 94   bl	j___os_log_impl
0x10033243c:  ; loc_10033243c
0x10033243c:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332440:  08 b5 82 b9   ldrsw	x8, [x8, #0x2b4]
0x100332444:  d7 6a 68 f8   ldr	x23, [x22, x8]
0x100332448:  97 00 00 b4   cbz	x23, loc_100332458 ; ⤵ 0x10
0x10033244c:  e3 4e f3 97   bl	0x100005fd8
0x100332450:  e0 03 17 aa   mov	x0, x23
0x100332454:  c3 3c 07 94   bl	j__objc_msgSend(x0, "sessionConnectedToAccessoryWithTimestamp:")
0x100332458:  ; loc_100332458
0x100332458:  08 37 00 d0   adrp	x8, 0x100a14000
0x10033245c:  08 59 82 b9   ldrsw	x8, [x8, #0x258]
0x100332460:  c9 6a 68 b8   ldr	w9, [x22, x8]
0x100332464:  6a 00 80 52   mov	w10, #0x3
0x100332468:  ca 6a 28 b8   str	w10, [x22, x8]
0x10033246c:  3f 09 00 71   cmp	w9, #0x2
0x100332470:  e1 f9 ff 54   b.ne	loc_1003323ac ; ⤴ -0xc4
0x100332474:  c2 6a 79 f8   ldr	x2, [x22, x25]
0x100332478:  e0 03 16 aa   mov	x0, x22
0x10033247c:  81 06 07 94   bl	j__objc_msgSend(x0, "_initCompanion:")
0x100332480:  cb ff ff 17   b	loc_1003323ac ; ⤴ -0xd4
0x100332484:  ; loc_100332484
0x100332484:  38 fa 06 94   bl	j____stack_chk_fail
0x100332488:  f6 03 00 aa   mov	x22, x0
0x10033248c:  8e fc 06 94   bl	j__objc_release_x23
0x100332490:  09 00 00 14   b	loc_1003324b4 ; ⤵ 0x24
0x100332494:  f6 03 00 aa   mov	x22, x0
0x100332498:  8f fc 06 94   bl	j__objc_release_x24
0x10033249c:  06 00 00 14   b	loc_1003324b4 ; ⤵ 0x18
0x1003324a0:  04 00 00 14   b	loc_1003324b0 ; ⤵ 0x10
0x1003324a4:  f6 03 00 aa   mov	x22, x0
0x1003324a8:  87 fc 06 94   bl	j__objc_release_x23
0x1003324ac:  02 00 00 14   b	loc_1003324b4 ; ⤵ 0x8
0x1003324b0:  ; loc_1003324b0
0x1003324b0:  f6 03 00 aa   mov	x22, x0
0x1003324b4:  ; loc_1003324b4
0x1003324b4:  7c fc 06 94   bl	j__objc_release_x21
0x1003324b8:  77 fc 06 94   bl	j__objc_release_x20
0x1003324bc:  72 fc 06 94   bl	j__objc_release_x19
0x1003324c0:  02 00 00 14   b	loc_1003324c8 ; ⤵ 0x8
0x1003324c4:  f6 03 00 aa   mov	x22, x0
0x1003324c8:  ; loc_1003324c8
0x1003324c8:  e0 03 16 aa   mov	x0, x22
0x1003324cc:  c2 f6 06 94   bl	j___Unwind_Resume

-[NIServerItemLocalizerSession findMyAccessoryManager:didDisconnectDevice:]:
0x1003324d0:  7f 23 03 d5   pacibsp
0x1003324d4:  ff 83 02 d1   sub	sp, sp, #0xa0
0x1003324d8:  fc 6f 04 a9   stp	x28, x27, [sp, #0x40]
0x1003324dc:  fa 67 05 a9   stp	x26, x25, [sp, #0x50]
0x1003324e0:  f8 5f 06 a9   stp	x24, x23, [sp, #0x60]
0x1003324e4:  f6 57 07 a9   stp	x22, x21, [sp, #0x70]
0x1003324e8:  f4 4f 08 a9   stp	x20, x19, [sp, #0x80]
0x1003324ec:  fd 7b 09 a9   stp	fp, lr, [sp, #0x90]
0x1003324f0:  fd 43 02 91   add	fp, sp, #0x90
0x1003324f4:  f4 03 03 aa   mov	x20, x3
0x1003324f8:  f3 03 02 aa   mov	x19, x2
0x1003324fc:  f5 03 00 aa   mov	x21, x0
0x100332500:  08 34 00 f0   adrp	x8, 0x1009b5000
0x100332504:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x100332508:  08 01 40 f9   ldr	x8, [x8]
0x10033250c:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x100332510:  a5 fc 06 94   bl	j__objc_retain_x19
0x100332514:  ac fc 06 94   bl	j__objc_retain_x20
0x100332518:  08 37 00 d0   adrp	x8, 0x100a14000
0x10033251c:  08 3d 82 b9   ldrsw	x8, [x8, #0x23c]
0x100332520:  a8 6a 68 f8   ldr	x8, [x21, x8]
0x100332524:  e8 08 00 b4   cbz	x8, loc_100332640 ; ⤵ 0x11c
0x100332528:  08 37 00 d0   adrp	x8, 0x100a14000
0x10033252c:  08 a9 82 b9   ldrsw	x8, [x8, #0x2a8]
0x100332530:  a8 6a 68 f8   ldr	x8, [x21, x8]
0x100332534:  1f 01 13 eb   cmp	x8, x19
0x100332538:  81 12 00 54   b.ne	loc_100332788 ; ⤵ 0x250
0x10033253c:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332540:  19 91 82 b9   ldrsw	x25, [x8, #0x290]
0x100332544:  a0 6a 79 f8   ldr	x0, [x21, x25]
0x100332548:  0e ff 06 94   bl	j__objc_msgSend(x0, "UUID")
0x10033254c:  fd 03 1d aa   mov	fp, fp
0x100332550:  89 fc 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100332554:  f6 03 00 aa   mov	x22, x0
0x100332558:  e0 03 14 aa   mov	x0, x20
0x10033255c:  e2 03 16 aa   mov	x2, x22
0x100332560:  50 2c 07 94   bl	j__objc_msgSend(x0, "isEqual:")
0x100332564:  f7 03 00 aa   mov	x23, x0
0x100332568:  53 fc 06 94   bl	j__objc_release_x22
0x10033256c:  f7 10 00 36   tbz	w23, #0, loc_100332788 ; ⤵ 0x21c
0x100332570:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332574:  08 55 82 b9   ldrsw	x8, [x8, #0x254]
0x100332578:  b7 6a 68 b8   ldr	w23, [x21, x8]
0x10033257c:  09 37 00 d0   adrp	x9, 0x100a14000
0x100332580:  3b 59 82 b9   ldrsw	x27, [x9, #0x258]
0x100332584:  ba 6a 7b b8   ldr	w26, [x21, x27]
0x100332588:  bf 6a 28 b8   str	wzr, [x21, x8]
0x10033258c:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332590:  08 5d 82 b9   ldrsw	x8, [x8, #0x25c]
0x100332594:  bf 6a 28 b8   str	wzr, [x21, x8]
0x100332598:  28 00 80 52   mov	w8, #0x1
0x10033259c:  a8 6a 3b b8   str	w8, [x21, x27]
0x1003325a0:  b8 37 00 f0   adrp	x24, 0x100a29000
0x1003325a4:  18 43 38 91   add	x24, x24, #0xe10 ; "CreateConfigRTTTypes"
0x1003325a8:  16 03 40 f9   ldr	x22, [x24]
0x1003325ac:  e0 03 16 aa   mov	x0, x22
0x1003325b0:  01 00 80 52   mov	w1, #0
0x1003325b4:  d4 fc 06 94   bl	j__os_log_type_enabled
0x1003325b8:  e0 01 00 34   cbz	w0, loc_1003325f4 ; ⤵ 0x3c

