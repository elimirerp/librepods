
-[CLDurianDeviceManager addPossiblePeripheralsForDevice:usingMaterials:]:
0x10147c274:  7f 23 03 d5   pacibsp
0x10147c278:  ff c3 07 d1   sub	sp, sp, #0x1f0
0x10147c27c:  fc 6f 19 a9   stp	x28, x27, [sp, #0x190]
0x10147c280:  fa 67 1a a9   stp	x26, x25, [sp, #0x1a0]
0x10147c284:  f8 5f 1b a9   stp	x24, x23, [sp, #0x1b0]
0x10147c288:  f6 57 1c a9   stp	x22, x21, [sp, #0x1c0]
0x10147c28c:  f4 4f 1d a9   stp	x20, x19, [sp, #0x1d0]
0x10147c290:  fd 7b 1e a9   stp	fp, lr, [sp, #0x1e0]
0x10147c294:  fd 83 07 91   add	fp, sp, #0x1e0
0x10147c298:  e9 03 03 aa   mov	x9, x3
0x10147c29c:  f4 03 02 aa   mov	x20, x2
0x10147c2a0:  f3 03 00 aa   mov	x19, x0
0x10147c2a4:  a8 78 00 d0   adrp	x8, 0x102392000
0x10147c2a8:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10147c2ac:  08 01 40 f9   ldr	x8, [x8]
0x10147c2b0:  a8 03 1a f8   stur	x8, [fp, #-0x60]
0x10147c2b4:  00 e4 00 6f   movi	v0.2d, #0
0x10147c2b8:  e0 03 03 ad   stp	q0, q0, [sp, #0x60]
0x10147c2bc:  e0 03 04 ad   stp	q0, q0, [sp, #0x80]
0x10147c2c0:  e2 83 01 91   add	x2, sp, #0x60
0x10147c2c4:  a3 83 03 d1   sub	x3, fp, #0xe0
0x10147c2c8:  e9 23 00 f9   str	x9, [sp, #0x40]
0x10147c2cc:  e0 03 09 aa   mov	x0, x9
0x10147c2d0:  04 02 80 52   mov	w4, #0x10
0x10147c2d4:  0b 95 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10147c2d8:  e0 2b 00 f9   str	x0, [sp, #0x50]
0x10147c2dc:  e0 20 00 b4   cbz	x0, loc_10147c6f8 ; ⤵ 0x41c
0x10147c2e0:  36 88 00 d0   adrp	x22, 0x102582000
0x10147c2e4:  35 88 00 d0   adrp	x21, 0x102582000
0x10147c2e8:  e8 3b 40 f9   ldr	x8, [sp, #0x70] ; data_102582000 (__DATA.__data)
0x10147c2ec:  1c 01 40 f9   ldr	x28, [x8]
0x10147c2f0:  c8 43 00 90   adrp	x8, 0x101cf4000
0x10147c2f4:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10147c2f8:  e0 03 80 3d   str	q0, [sp]
0x10147c2fc:  e8 39 00 90   adrp	x8, 0x101bb8000
0x10147c300:  00 f1 42 fd   ldr	d0, [x8, #0x5e0]
0x10147c304:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x10147c308:  c8 43 00 90   adrp	x8, 0x101cf4000
0x10147c30c:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x10147c310:  e0 07 80 3d   str	q0, [sp, #0x10]
0x10147c314:  ; loc_10147c314
0x10147c314:  19 00 80 d2   mov	x25, #0
0x10147c318:  ; loc_10147c318
0x10147c318:  e8 3b 40 f9   ldr	x8, [sp, #0x70]
0x10147c31c:  08 01 40 f9   ldr	x8, [x8]
0x10147c320:  1f 01 1c eb   cmp	x8, x28
0x10147c324:  60 00 00 54   b.eq	loc_10147c330 ; ⤵ 0xc
0x10147c328:  e0 23 40 f9   ldr	x0, [sp, #0x40]
0x10147c32c:  f5 66 1a 94   bl	j__objc_enumerationMutation
0x10147c330:  ; loc_10147c330
0x10147c330:  e8 37 40 f9   ldr	x8, [sp, #0x68]
0x10147c334:  1a 79 79 f8   ldr	x26, [x8, x25, lsl #0x3]
0x10147c338:  e0 03 1a aa   mov	x0, x26
0x10147c33c:  61 f8 1a 94   bl	j__objc_msgSend(x0, "ltk")
0x10147c340:  ad 76 00 94   bl	0x101499df4
0x10147c344:  f8 03 00 aa   mov	x24, x0
0x10147c348:  e0 03 1a aa   mov	x0, x26
0x10147c34c:  e5 7a 1a 94   bl	j__objc_msgSend(x0, "address")
0x10147c350:  9c 72 b8 97   bl	0x100298dc0
0x10147c354:  a0 1a 00 b4   cbz	x0, loc_10147c6a8 ; ⤵ 0x354
0x10147c358:  fb 03 00 aa   mov	x27, x0
0x10147c35c:  e0 03 14 aa   mov	x0, x20
0x10147c360:  d8 90 1a 94   bl	j__objc_msgSend(x0, "connectCondition")
0x10147c364:  08 04 00 d1   sub	x8, x0, #0x1
0x10147c368:  1f 05 00 f1   cmp	x8, #0x1
0x10147c36c:  48 01 00 54   b.hi	loc_10147c394 ; ⤵ 0x28
0x10147c370:  60 2a 40 f9   ldr	x0, [x19, #0x50]
0x10147c374:  e2 03 14 aa   mov	x2, x20
0x10147c378:  42 bf 1a 94   bl	j__objc_msgSend(x0, "getAddressForDevice:")
0x10147c37c:  91 72 b8 97   bl	0x100298dc0
0x10147c380:  f7 03 00 aa   mov	x23, x0
0x10147c384:  e0 03 1b aa   mov	x0, x27
0x10147c388:  e2 03 17 aa   mov	x2, x23
0x10147c38c:  d5 e9 1a 94   bl	j__objc_msgSend(x0, "isEqualToString:")
0x10147c390:  60 14 00 36   tbz	w0, #0, loc_10147c61c ; ⤵ 0x28c
0x10147c394:  ; loc_10147c394
0x10147c394:  e0 03 14 aa   mov	x0, x20
0x10147c398:  ea e9 1a 94   bl	j__objc_msgSend(x0, "isFindMyNetwork")
0x10147c39c:  e3 03 00 aa   mov	x3, x0
0x10147c3a0:  e0 03 13 aa   mov	x0, x19
0x10147c3a4:  e2 03 1a aa   mov	x2, x26
0x10147c3a8:  66 73 1a 94   bl	j__objc_msgSend(x0, "_retrievePeripheralForMaterial:isFindMyNetwork:")
0x10147c3ac:  f7 03 00 aa   mov	x23, x0
0x10147c3b0:  e0 03 1a aa   mov	x0, x26
0x10147c3b4:  f3 29 1b 94   bl	j__objc_msgSend(x0, "secondaryIndex")
0x10147c3b8:  60 00 00 b4   cbz	x0, loc_10147c3c4 ; ⤵ 0xc
0x10147c3bc:  ff 27 00 f9   str	xzr, [sp, #0x48]
0x10147c3c0:  04 00 00 14   b	loc_10147c3d0 ; ⤵ 0x10
0x10147c3c4:  ; loc_10147c3c4
0x10147c3c4:  e0 03 1a aa   mov	x0, x26
0x10147c3c8:  06 11 1b 94   bl	j__objc_msgSend(x0, "primaryIndex")
0x10147c3cc:  e0 27 00 f9   str	x0, [sp, #0x48]
0x10147c3d0:  ; loc_10147c3d0
0x10147c3d0:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x10147c3d4:  1f 05 00 b1   cmn	x8, #0x1
0x10147c3d8:  f7 2f 00 f9   str	x23, [sp, #0x58]
0x10147c3dc:  01 17 00 54   b.ne	loc_10147c6bc ; ⤵ 0x2e0
0x10147c3e0:  ; loc_10147c3e0
0x10147c3e0:  b7 3e 46 f9   ldr	x23, [x21, #0xc78]
0x10147c3e4:  e0 03 17 aa   mov	x0, x23
0x10147c3e8:  01 00 80 52   mov	w1, #0
0x10147c3ec:  c1 67 1a 94   bl	j__os_log_type_enabled
0x10147c3f0:  00 08 00 34   cbz	w0, loc_10147c4f0 ; ⤵ 0x100
0x10147c3f4:  e0 03 14 aa   mov	x0, x20
0x10147c3f8:  72 87 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147c3fc:  87 71 00 94   bl	0x101498a18
0x10147c400:  e0 1f 00 f9   str	x0, [sp, #0x38]
0x10147c404:  e0 03 14 aa   mov	x0, x20
0x10147c408:  76 76 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147c40c:  85 d0 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147c410:  82 71 00 94   bl	0x101498a18
0x10147c414:  e0 1b 00 f9   str	x0, [sp, #0x30]
0x10147c418:  e0 2f 40 f9   ldr	x0, [sp, #0x58]
0x10147c41c:  81 d0 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147c420:  7e 71 00 94   bl	0x101498a18
0x10147c424:  f5 03 16 aa   mov	x21, x22
0x10147c428:  f6 03 00 aa   mov	x22, x0
0x10147c42c:  e0 03 1a aa   mov	x0, x26
0x10147c430:  d4 29 1b 94   bl	j__objc_msgSend(x0, "secondaryIndex")
0x10147c434:  e1 03 18 aa   mov	x1, x24
0x10147c438:  f8 03 1c aa   mov	x24, x28
0x10147c43c:  fc 03 13 aa   mov	x28, x19
0x10147c440:  f3 03 14 aa   mov	x19, x20
0x10147c444:  f4 03 00 aa   mov	x20, x0
0x10147c448:  e0 03 01 aa   mov	x0, x1
0x10147c44c:  fd 6c 1a 94   bl	j__objc_msgSend(x0, "UTF8String")
0x10147c450:  e0 0b c0 3d   ldr	q0, [sp, #0x20]
0x10147c454:  e0 a3 00 bd   str	s0, [sp, #0xa0]
0x10147c458:  ff a7 00 b9   str	wzr, [sp, #0xa4]
0x10147c45c:  48 04 81 52   mov	w8, #0x822
0x10147c460:  e8 53 01 79   strh	w8, [sp, #0xa8]
0x10147c464:  89 51 00 d0   adrp	x9, 0x101eae000
0x10147c468:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147c46c:  e9 a3 0a f8   stur	x9, [sp, #0xaa]
0x10147c470:  29 08 81 52   mov	w9, #0x841
0x10147c474:  e9 67 01 79   strh	w9, [sp, #0xb2]
0x10147c478:  ea 2f 43 a9   ldp	x10, x11, [sp, #0x30]
0x10147c47c:  eb 43 0b f8   stur	x11, [sp, #0xb4]
0x10147c480:  e9 7b 01 79   strh	w9, [sp, #0xbc]
0x10147c484:  ea e3 0b f8   stur	x10, [sp, #0xbe]
0x10147c488:  e9 8f 01 79   strh	w9, [sp, #0xc6]
0x10147c48c:  f6 67 00 f9   str	x22, [sp, #0xc8]
0x10147c490:  f6 03 15 aa   mov	x22, x21
0x10147c494:  35 88 00 d0   adrp	x21, 0x102582000
0x10147c498:  4a 08 81 52   mov	w10, #0x842
0x10147c49c:  ea a3 01 79   strh	w10, [sp, #0xd0]
0x10147c4a0:  eb 27 40 f9   ldr	x11, [sp, #0x48]
0x10147c4a4:  eb 23 0d f8   stur	x11, [sp, #0xd2]
0x10147c4a8:  ea b7 01 79   strh	w10, [sp, #0xda]
0x10147c4ac:  f4 c3 0d f8   stur	x20, [sp, #0xdc]
0x10147c4b0:  f4 03 13 aa   mov	x20, x19
0x10147c4b4:  f3 03 1c aa   mov	x19, x28
0x10147c4b8:  fc 03 18 aa   mov	x28, x24
0x10147c4bc:  e9 cb 01 79   strh	w9, [sp, #0xe4]
0x10147c4c0:  fb 63 0e f8   stur	x27, [sp, #0xe6]
0x10147c4c4:  e8 df 01 79   strh	w8, [sp, #0xee]
0x10147c4c8:  e0 7b 00 f9   str	x0, [sp, #0xf0]
0x10147c4cc:  e4 83 02 91   add	x4, sp, #0xa0
0x10147c4d0:  20 5c ff 90   adrp	x0, 0x100000000
0x10147c4d4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147c4d8:  e1 03 17 aa   mov	x1, x23
0x10147c4dc:  02 00 80 52   mov	w2, #0
0x10147c4e0:  23 70 00 d0   adrp	x3, 0x102282000
0x10147c4e4:  63 60 3a 91   add	x3, x3, #0xe98 ; "{\"msg%{public}.0s\":\"#durian #connectattempt add peripheral\", \"item\":%{private, location:escape_only}@, \"attemptId\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"prima"...
0x10147c4e8:  05 0b 80 52   mov	w5, #0x58
0x10147c4ec:  41 63 1a 94   bl	j___os_log_impl
0x10147c4f0:  ; loc_10147c4f0
0x10147c4f0:  f7 2f 40 f9   ldr	x23, [sp, #0x58]
0x10147c4f4:  f7 00 00 b4   cbz	x23, loc_10147c510 ; ⤵ 0x1c
0x10147c4f8:  e0 03 14 aa   mov	x0, x20
0x10147c4fc:  39 76 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147c500:  e2 03 17 aa   mov	x2, x23
0x10147c504:  e3 03 1a aa   mov	x3, x26
0x10147c508:  7e 79 1a 94   bl	j__objc_msgSend(x0, "addPossiblePeripheral:withConnectionMaterial:")
0x10147c50c:  67 00 00 14   b	loc_10147c6a8 ; ⤵ 0x19c
0x10147c510:  ; loc_10147c510
0x10147c510:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x10147c514:  1f 05 00 b1   cmn	x8, #0x1
0x10147c518:  61 0d 00 54   b.ne	loc_10147c6c4 ; ⤵ 0x1ac
0x10147c51c:  ; loc_10147c51c
0x10147c51c:  b7 3e 46 f9   ldr	x23, [x21, #0xc78]
0x10147c520:  e0 03 17 aa   mov	x0, x23
0x10147c524:  01 02 80 52   mov	w1, #0x10
0x10147c528:  72 67 1a 94   bl	j__os_log_type_enabled
0x10147c52c:  60 03 00 34   cbz	w0, loc_10147c598 ; ⤵ 0x6c
0x10147c530:  e0 03 14 aa   mov	x0, x20
0x10147c534:  23 87 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147c538:  38 71 00 94   bl	0x101498a18
0x10147c53c:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x10147c540:  e0 a3 00 bd   str	s0, [sp, #0xa0]
0x10147c544:  ff a7 00 b9   str	wzr, [sp, #0xa4]
0x10147c548:  48 04 81 52   mov	w8, #0x822
0x10147c54c:  e8 53 01 79   strh	w8, [sp, #0xa8]
0x10147c550:  88 51 00 d0   adrp	x8, 0x101eae000
0x10147c554:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147c558:  e8 a3 0a f8   stur	x8, [sp, #0xaa]
0x10147c55c:  28 08 81 52   mov	w8, #0x841
0x10147c560:  e8 67 01 79   strh	w8, [sp, #0xb2]
0x10147c564:  e0 43 0b f8   stur	x0, [sp, #0xb4]
0x10147c568:  e4 83 02 91   add	x4, sp, #0xa0
0x10147c56c:  20 5c ff 90   adrp	x0, 0x100000000
0x10147c570:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147c574:  e1 03 17 aa   mov	x1, x23
0x10147c578:  02 02 80 52   mov	w2, #0x10
0x10147c57c:  23 70 00 f0   adrp	x3, 0x102283000
0x10147c580:  63 4c 00 91   add	x3, x3, #0x13 ; "{\"msg%{public}.0s\":\"#durian failed to create CBPeripheral\", \"item\":%{private, location:escape_only}@}"
0x10147c584:  85 03 80 52   mov	w5, #0x1c
0x10147c588:  1a 63 1a 94   bl	j___os_log_impl
0x10147c58c:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x10147c590:  1f 05 00 b1   cmn	x8, #0x1
0x10147c594:  c1 09 00 54   b.ne	loc_10147c6cc ; ⤵ 0x138
0x10147c598:  ; loc_10147c598
0x10147c598:  b7 3e 46 f9   ldr	x23, [x21, #0xc78]
0x10147c59c:  e0 03 17 aa   mov	x0, x23
0x10147c5a0:  58 67 1a 94   bl	j__os_signpost_enabled
0x10147c5a4:  20 08 00 34   cbz	w0, loc_10147c6a8 ; ⤵ 0x104
0x10147c5a8:  e0 03 14 aa   mov	x0, x20
0x10147c5ac:  05 87 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147c5b0:  1a 71 00 94   bl	0x101498a18
0x10147c5b4:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x10147c5b8:  e0 a3 00 bd   str	s0, [sp, #0xa0]
0x10147c5bc:  ff a7 00 b9   str	wzr, [sp, #0xa4]
0x10147c5c0:  48 04 81 52   mov	w8, #0x822
0x10147c5c4:  e8 53 01 79   strh	w8, [sp, #0xa8]
0x10147c5c8:  88 51 00 d0   adrp	x8, 0x101eae000
0x10147c5cc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147c5d0:  e8 a3 0a f8   stur	x8, [sp, #0xaa]
0x10147c5d4:  28 08 81 52   mov	w8, #0x841
0x10147c5d8:  e8 67 01 79   strh	w8, [sp, #0xb2]
0x10147c5dc:  e0 43 0b f8   stur	x0, [sp, #0xb4]
0x10147c5e0:  e6 83 02 91   add	x6, sp, #0xa0
0x10147c5e4:  20 5c ff 90   adrp	x0, 0x100000000
0x10147c5e8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147c5ec:  e1 03 17 aa   mov	x1, x23
0x10147c5f0:  02 00 80 52   mov	w2, #0
0x10147c5f4:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x10147c5f8:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x10147c5fc:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x10147c600:  24 70 00 f0   adrp	x4, 0x102283000
0x10147c604:  84 e4 01 91   add	x4, x4, #0x79 ; "#durian failed to create CBPeripheral"
0x10147c608:  25 70 00 f0   adrp	x5, 0x102283000
0x10147c60c:  a5 4c 00 91   add	x5, x5, #0x13 ; "{\"msg%{public}.0s\":\"#durian failed to create CBPeripheral\", \"item\":%{private, location:escape_only}@}"
0x10147c610:  87 03 80 52   mov	w7, #0x1c
0x10147c614:  ff 62 1a 94   bl	j___os_signpost_emit_with_name_impl
0x10147c618:  24 00 00 14   b	loc_10147c6a8 ; ⤵ 0x90
0x10147c61c:  ; loc_10147c61c
0x10147c61c:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x10147c620:  1f 05 00 b1   cmn	x8, #0x1
0x10147c624:  81 05 00 54   b.ne	loc_10147c6d4 ; ⤵ 0xb0
0x10147c628:  ; loc_10147c628
0x10147c628:  b8 3e 46 f9   ldr	x24, [x21, #0xc78]
0x10147c62c:  e0 03 18 aa   mov	x0, x24
0x10147c630:  01 00 80 52   mov	w1, #0
0x10147c634:  2f 67 1a 94   bl	j__os_log_type_enabled
0x10147c638:  80 03 00 34   cbz	w0, loc_10147c6a8 ; ⤵ 0x70
0x10147c63c:  e0 03 14 aa   mov	x0, x20
0x10147c640:  e0 86 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147c644:  f5 70 00 94   bl	0x101498a18
0x10147c648:  e0 03 c0 3d   ldr	q0, [sp]
0x10147c64c:  e0 a3 00 bd   str	s0, [sp, #0xa0]
0x10147c650:  ff a7 00 b9   str	wzr, [sp, #0xa4]
0x10147c654:  48 04 81 52   mov	w8, #0x822
0x10147c658:  e8 53 01 79   strh	w8, [sp, #0xa8]
0x10147c65c:  88 51 00 d0   adrp	x8, 0x101eae000
0x10147c660:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147c664:  e8 a3 0a f8   stur	x8, [sp, #0xaa]
0x10147c668:  28 08 81 52   mov	w8, #0x841
0x10147c66c:  e8 67 01 79   strh	w8, [sp, #0xb2]
0x10147c670:  e0 43 0b f8   stur	x0, [sp, #0xb4]
0x10147c674:  e8 7b 01 79   strh	w8, [sp, #0xbc]
0x10147c678:  fb e3 0b f8   stur	x27, [sp, #0xbe]
0x10147c67c:  e8 8f 01 79   strh	w8, [sp, #0xc6]
0x10147c680:  f7 67 00 f9   str	x23, [sp, #0xc8]
0x10147c684:  e4 83 02 91   add	x4, sp, #0xa0
0x10147c688:  20 5c ff 90   adrp	x0, 0x100000000
0x10147c68c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147c690:  e1 03 18 aa   mov	x1, x24
0x10147c694:  02 00 80 52   mov	w2, #0
0x10147c698:  23 70 00 d0   adrp	x3, 0x102282000
0x10147c69c:  63 6c 37 91   add	x3, x3, #0xddb ; "{\"msg%{public}.0s\":\"#durian #connectattempt skip address\", \"item\":%{private, location:escape_only}@, \"address\":%{private, location:escape_only}@, \"maint\":%{private, location:escape_only}@}"
0x10147c6a0:  05 06 80 52   mov	w5, #0x30
0x10147c6a4:  d3 62 1a 94   bl	j___os_log_impl
0x10147c6a8:  ; loc_10147c6a8
0x10147c6a8:  39 07 00 91   add	x25, x25, #0x1
0x10147c6ac:  e8 2b 40 f9   ldr	x8, [sp, #0x50]
0x10147c6b0:  1f 01 19 eb   cmp	x8, x25
0x10147c6b4:  21 e3 ff 54   b.ne	loc_10147c318 ; ⤴ -0x39c
0x10147c6b8:  09 00 00 14   b	loc_10147c6dc ; ⤵ 0x24
0x10147c6bc:  ; loc_10147c6bc
0x10147c6bc:  c8 4e 1a 94   bl	0x101b101dc
0x10147c6c0:  48 ff ff 17   b	loc_10147c3e0 ; ⤴ -0x2e0
0x10147c6c4:  ; loc_10147c6c4
0x10147c6c4:  c6 4e 1a 94   bl	0x101b101dc
0x10147c6c8:  95 ff ff 17   b	loc_10147c51c ; ⤴ -0x1ac
0x10147c6cc:  ; loc_10147c6cc
0x10147c6cc:  c4 4e 1a 94   bl	0x101b101dc
0x10147c6d0:  b2 ff ff 17   b	loc_10147c598 ; ⤴ -0x138
0x10147c6d4:  ; loc_10147c6d4
0x10147c6d4:  c2 4e 1a 94   bl	0x101b101dc
0x10147c6d8:  d4 ff ff 17   b	loc_10147c628 ; ⤴ -0xb0
0x10147c6dc:  ; loc_10147c6dc
0x10147c6dc:  e2 83 01 91   add	x2, sp, #0x60
0x10147c6e0:  a3 83 03 d1   sub	x3, fp, #0xe0
0x10147c6e4:  e0 23 40 f9   ldr	x0, [sp, #0x40]
0x10147c6e8:  04 02 80 52   mov	w4, #0x10
0x10147c6ec:  05 94 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10147c6f0:  e0 2b 00 f9   str	x0, [sp, #0x50]
0x10147c6f4:  00 e1 ff b5   cbnz	x0, loc_10147c314 ; ⤴ -0x3e0
0x10147c6f8:  ; loc_10147c6f8
0x10147c6f8:  a8 03 5a f8   ldur	x8, [fp, #-0x60]
0x10147c6fc:  a9 78 00 d0   adrp	x9, 0x102392000
0x10147c700:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10147c704:  29 01 40 f9   ldr	x9, [x9]
0x10147c708:  3f 01 08 eb   cmp	x9, x8
0x10147c70c:  21 01 00 54   b.ne	loc_10147c730 ; ⤵ 0x24
0x10147c710:  fd 7b 5e a9   ldp	fp, lr, [sp, #0x1e0]
0x10147c714:  f4 4f 5d a9   ldp	x20, x19, [sp, #0x1d0]
0x10147c718:  f6 57 5c a9   ldp	x22, x21, [sp, #0x1c0]
0x10147c71c:  f8 5f 5b a9   ldp	x24, x23, [sp, #0x1b0]
0x10147c720:  fa 67 5a a9   ldp	x26, x25, [sp, #0x1a0]

