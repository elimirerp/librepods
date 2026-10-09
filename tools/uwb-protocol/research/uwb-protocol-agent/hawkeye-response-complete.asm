0x10145c374:  3b 89 00 d0   adrp	x27, 0x102582000
0x10145c378:  68 3b 46 f9   ldr	x8, [x27, #0xc70] ; data_102582c70 (__DATA.__data)
0x10145c37c:  1f 05 00 b1   cmn	x8, #0x1
0x10145c380:  a1 35 00 54   b.ne	loc_10145ca34 ; ⤵ 0x6b4
0x10145c384:  3a 89 00 d0   adrp	x26, 0x102582000
0x10145c388:  56 3f 46 f9   ldr	x22, [x26, #0xc78] ; data_102582c78 (__DATA.__data)
0x10145c38c:  e0 03 16 aa   mov	x0, x22
0x10145c390:  01 00 80 52   mov	w1, #0
0x10145c394:  d7 e7 1a 94   bl	j__os_log_type_enabled
0x10145c398:  e0 05 00 34   cbz	w0, loc_10145c454 ; ⤵ 0xbc
0x10145c39c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c3a0:  9e f1 00 94   bl	0x101498a18
0x10145c3a4:  f8 03 00 aa   mov	x24, x0
0x10145c3a8:  fb 03 1a aa   mov	x27, x26
0x10145c3ac:  9a 3f 00 12   and	w26, w28, #0xffff
0x10145c3b0:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x10145c3b4:  03 fd 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x10145c3b8:  e2 03 00 aa   mov	x2, x0
0x10145c3bc:  e0 03 13 aa   mov	x0, x19
0x10145c3c0:  e0 45 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x10145c3c4:  f9 03 00 aa   mov	x25, x0
0x10145c3c8:  e0 03 14 aa   mov	x0, x20
0x10145c3cc:  35 2f 1b 94   bl	j__objc_msgSend(x0, "expectsResponse")
0x10145c3d0:  c8 39 00 90   adrp	x8, 0x101b94000
0x10145c3d4:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x10145c3d8:  e0 03 00 bd   str	s0, [sp]
0x10145c3dc:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c3e0:  48 04 81 52   mov	w8, #0x822
0x10145c3e4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145c3e8:  88 52 00 d0   adrp	x8, 0x101eae000
0x10145c3ec:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145c3f0:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145c3f4:  28 08 81 52   mov	w8, #0x841
0x10145c3f8:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145c3fc:  f8 43 01 f8   stur	x24, [sp, #0x14]
0x10145c400:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145c404:  f5 e3 01 f8   stur	x21, [sp, #0x1e]
0x10145c408:  48 80 80 52   mov	w8, #0x402
0x10145c40c:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x10145c410:  fa 2b 00 b9   str	w26, [sp, #0x28]
0x10145c414:  fa 03 1b aa   mov	x26, x27
0x10145c418:  3b 89 00 d0   adrp	x27, 0x102582000
0x10145c41c:  49 08 81 52   mov	w9, #0x842
0x10145c420:  e9 5b 00 79   strh	w9, [sp, #0x2c]
0x10145c424:  f9 e3 02 f8   stur	x25, [sp, #0x2e]
0x10145c428:  e8 6f 00 79   strh	w8, [sp, #0x36]
0x10145c42c:  e0 3b 00 b9   str	w0, [sp, #0x38]
0x10145c430:  20 5d ff 90   adrp	x0, 0x100000000
0x10145c434:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145c438:  c3 70 00 b0   adrp	x3, 0x102275000
0x10145c43c:  63 a8 3b 91   add	x3, x3, #0xeea ; "{\"msg%{public}.0s\":\"#durian #hawkeye didReceiveHawkeyeData\", \"item\":%{private, location:escape_only}@, \"value\":%{private, location:escape_only}@, \"opcode\":%{public}d, \"active\":%{public, location:escap"...
0x10145c440:  e4 03 00 91   mov	x4, sp
0x10145c444:  e1 03 16 aa   mov	x1, x22
0x10145c448:  02 00 80 52   mov	w2, #0
0x10145c44c:  85 07 80 52   mov	w5, #0x3c
0x10145c450:  68 e3 1a 94   bl	j___os_log_impl
0x10145c454:  ; loc_10145c454
0x10145c454:  e0 03 13 aa   mov	x0, x19
0x10145c458:  e2 03 15 aa   mov	x2, x21
0x10145c45c:  49 08 1b 94   bl	j__objc_msgSend(x0, "checkHawkeyeDataValidity:")
0x10145c460:  60 c8 ff 34   cbz	w0, loc_10145bd6c ; ⤴ -0x6f4
0x10145c464:  16 00 80 52   mov	w22, #0
0x10145c468:  88 3f 00 12   and	w8, w28, #0xffff
0x10145c46c:  1f 09 14 71   cmp	w8, #0x502
0x10145c470:  0d 01 00 54   b.le	loc_10145c490 ; ⤵ 0x20
0x10145c474:  1f 39 1c 71   cmp	w8, #0x70e
0x10145c478:  ac 01 00 54   b.gt	loc_10145c4ac ; ⤵ 0x34
0x10145c47c:  1f 0d 14 71   cmp	w8, #0x503
0x10145c480:  e0 01 00 54   b.eq	loc_10145c4bc ; ⤵ 0x3c
0x10145c484:  1f 01 1c 71   cmp	w8, #0x700
0x10145c488:  a0 01 00 54   b.eq	loc_10145c4bc ; ⤵ 0x34
0x10145c48c:  73 00 00 14   b	loc_10145c658 ; ⤵ 0x1cc
0x10145c490:  ; loc_10145c490
0x10145c490:  1f 2d 08 71   cmp	w8, #0x20b
0x10145c494:  40 01 00 54   b.eq	loc_10145c4bc ; ⤵ 0x28
0x10145c498:  1f 09 0c 71   cmp	w8, #0x302
0x10145c49c:  00 01 00 54   b.eq	loc_10145c4bc ; ⤵ 0x20
0x10145c4a0:  1f 19 10 71   cmp	w8, #0x406
0x10145c4a4:  c0 00 00 54   b.eq	loc_10145c4bc ; ⤵ 0x18
0x10145c4a8:  6c 00 00 14   b	loc_10145c658 ; ⤵ 0x1b0
0x10145c4ac:  ; loc_10145c4ac
0x10145c4ac:  1f 01 20 71   cmp	w8, #0x800
0x10145c4b0:  60 00 00 54   b.eq	loc_10145c4bc ; ⤵ 0xc
0x10145c4b4:  1f 3d 1c 71   cmp	w8, #0x70f
0x10145c4b8:  01 0d 00 54   b.ne	loc_10145c658 ; ⤵ 0x1a0
0x10145c4bc:  ; loc_10145c4bc
0x10145c4bc:  f6 32 40 78   ldurh	w22, [x23, #0x3]
0x10145c4c0:  f8 52 40 78   ldurh	w24, [x23, #0x5]
0x10145c4c4:  38 08 00 34   cbz	w24, loc_10145c5c8 ; ⤵ 0x104
0x10145c4c8:  15 07 00 11   add	w21, w24, #0x1
0x10145c4cc:  a8 3e 00 12   and	w8, w21, #0xffff
0x10145c4d0:  1f 19 00 71   cmp	w8, #0x6
0x10145c4d4:  f7 27 9f 1a   cset	w23, cc
0x10145c4d8:  1f 0b 00 71   cmp	w24, #0x2
0x10145c4dc:  2d 0e 00 54   b.le	loc_10145c6a0 ; ⤵ 0x1c4
0x10145c4e0:  1f 0f 00 71   cmp	w24, #0x3
0x10145c4e4:  c0 0f 00 54   b.eq	loc_10145c6dc ; ⤵ 0x1f8
0x10145c4e8:  1f 13 00 71   cmp	w24, #0x4
0x10145c4ec:  40 16 00 54   b.eq	loc_10145c7b4 ; ⤵ 0x2c8
0x10145c4f0:  e8 ff 9f 52   mov	w8, #0xffff
0x10145c4f4:  1f 03 08 6b   cmp	w24, w8
0x10145c4f8:  61 17 00 54   b.ne	loc_10145c7e4 ; ⤵ 0x2ec
0x10145c4fc:  df 42 1c 71   cmp	w22, #0x710
0x10145c500:  40 18 00 54   b.eq	loc_10145c808 ; ⤵ 0x308
0x10145c504:  df 9e 08 71   cmp	w22, #0x227
0x10145c508:  c1 1e 00 54   b.ne	loc_10145c8e0 ; ⤵ 0x3d8
0x10145c50c:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10145c510:  1f 05 00 b1   cmn	x8, #0x1
0x10145c514:  a1 2a 00 54   b.ne	loc_10145ca68 ; ⤵ 0x554
0x10145c518:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x10145c51c:  e0 03 14 aa   mov	x0, x20
0x10145c520:  01 00 80 52   mov	w1, #0
0x10145c524:  73 e7 1a 94   bl	j__os_log_type_enabled
0x10145c528:  00 1d 00 34   cbz	w0, loc_10145c8c8 ; ⤵ 0x3a0
0x10145c52c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c530:  3a f1 00 94   bl	0x101498a18
0x10145c534:  f5 03 00 aa   mov	x21, x0
0x10145c538:  e0 03 13 aa   mov	x0, x19
0x10145c53c:  09 47 1b 94   bl	j__objc_msgSend(x0, "groupUuid")
0x10145c540:  36 f1 00 94   bl	0x101498a18
0x10145c544:  f6 03 00 aa   mov	x22, x0
0x10145c548:  e0 03 13 aa   mov	x0, x19
0x10145c54c:  fd 46 1b 94   bl	j__objc_msgSend(x0, "groupPartNumber")
0x10145c550:  c8 44 00 90   adrp	x8, 0x101cf4000
0x10145c554:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10145c558:  e0 03 00 bd   str	s0, [sp]
0x10145c55c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c560:  48 04 81 52   mov	w8, #0x822
0x10145c564:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145c568:  88 52 00 d0   adrp	x8, 0x101eae000
0x10145c56c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145c570:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145c574:  28 08 81 52   mov	w8, #0x841
0x10145c578:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145c57c:  f5 43 01 f8   stur	x21, [sp, #0x14]
0x10145c580:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145c584:  f6 e3 01 f8   stur	x22, [sp, #0x1e]
0x10145c588:  48 80 80 52   mov	w8, #0x402
0x10145c58c:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x10145c590:  e0 2b 00 b9   str	w0, [sp, #0x28]
0x10145c594:  20 5d ff 90   adrp	x0, 0x100000000
0x10145c598:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145c59c:  c3 70 00 b0   adrp	x3, 0x102275000
0x10145c5a0:  63 68 3f 91   add	x3, x3, #0xfda ; "{\"msg%{public}.0s\":\"#durian #hawkeye group status invalid\", \"item\":%{private, location:escape_only}@, \"group\":%{private, location:escape_only}@, \"part\":%{public}d}"
0x10145c5a4:  e4 03 00 91   mov	x4, sp
0x10145c5a8:  e1 03 14 aa   mov	x1, x20
0x10145c5ac:  02 00 80 52   mov	w2, #0
0x10145c5b0:  85 05 80 52   mov	w5, #0x2c
0x10145c5b4:  0f e3 1a 94   bl	j___os_log_impl
0x10145c5b8:  15 00 80 52   mov	w21, #0
0x10145c5bc:  39 00 80 52   mov	w25, #0x1
0x10145c5c0:  f6 44 80 52   mov	w22, #0x227
0x10145c5c4:  bf 00 00 14   b	loc_10145c8c0 ; ⤵ 0x2fc
0x10145c5c8:  ; loc_10145c5c8
0x10145c5c8:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10145c5cc:  1f 05 00 b1   cmn	x8, #0x1
0x10145c5d0:  21 24 00 54   b.ne	loc_10145ca54 ; ⤵ 0x484
0x10145c5d4:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x10145c5d8:  e0 03 14 aa   mov	x0, x20
0x10145c5dc:  01 00 80 52   mov	w1, #0
0x10145c5e0:  44 e7 1a 94   bl	j__os_log_type_enabled
0x10145c5e4:  a0 03 00 34   cbz	w0, loc_10145c658 ; ⤵ 0x74
0x10145c5e8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c5ec:  0b f1 00 94   bl	0x101498a18
0x10145c5f0:  c8 44 00 90   adrp	x8, 0x101cf4000
0x10145c5f4:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10145c5f8:  e0 03 00 bd   str	s0, [sp]
0x10145c5fc:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c600:  48 04 81 52   mov	w8, #0x822
0x10145c604:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145c608:  88 52 00 d0   adrp	x8, 0x101eae000
0x10145c60c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145c610:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145c614:  28 08 81 52   mov	w8, #0x841
0x10145c618:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145c61c:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10145c620:  48 80 80 52   mov	w8, #0x402
0x10145c624:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145c628:  f6 e3 01 b8   stur	w22, [sp, #0x1e]
0x10145c62c:  e8 47 00 79   strh	w8, [sp, #0x22]
0x10145c630:  ff 27 00 b9   str	wzr, [sp, #0x24]
0x10145c634:  20 5d ff 90   adrp	x0, 0x100000000
0x10145c638:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145c63c:  c3 70 00 d0   adrp	x3, 0x102276000
0x10145c640:  63 a0 0b 91   add	x3, x3, #0x2e8 ; "{\"msg%{public}.0s\":\"#durian #hawkeye command response\", \"item\":%{private, location:escape_only}@, \"acked opcode\":%{public}d, \"response\":%{public}d}"
0x10145c644:  e4 03 00 91   mov	x4, sp
0x10145c648:  e1 03 14 aa   mov	x1, x20
0x10145c64c:  02 00 80 52   mov	w2, #0
0x10145c650:  05 05 80 52   mov	w5, #0x28
0x10145c654:  e7 e2 1a 94   bl	j___os_log_impl
0x10145c658:  ; loc_10145c658
0x10145c658:  83 3f 00 12   and	w3, w28, #0xffff
0x10145c65c:  e0 03 13 aa   mov	x0, x19
0x10145c660:  e2 03 15 aa   mov	x2, x21
0x10145c664:  e4 03 16 aa   mov	x4, x22
0x10145c668:  ae 47 1b 94   bl	j__objc_msgSend(x0, "handleDurianData:opcode:ackOpcode:")
0x10145c66c:  c0 fd ff 17   b	loc_10145bd6c ; ⤴ -0x900
0x10145c670:  f6 12 40 78   ldurh	w22, [x23, #0x1]
0x10145c674:  e0 03 13 aa   mov	x0, x19
0x10145c678:  e2 03 16 aa   mov	x2, x22
0x10145c67c:  f1 f1 1b 94   bl	j__objc_msgSend(x0, "supportsFragmentationForOpcode:")
0x10145c680:  c0 01 00 36   tbz	w0, #0, loc_10145c6b8 ; ⤵ 0x38
0x10145c684:  76 42 01 79   strh	w22, [x19, #0xa0]
0x10145c688:  e0 03 15 aa   mov	x0, x21
0x10145c68c:  55 73 1b 94   bl	j__objc_msgSend(x0, "length")
0x10145c690:  03 0c 00 d1   sub	x3, x0, #0x3
0x10145c694:  e0 03 15 aa   mov	x0, x21
0x10145c698:  62 00 80 52   mov	w2, #0x3
0x10145c69c:  55 fe ff 17   b	loc_10145bff0 ; ⤴ -0x6ac
0x10145c6a0:  ; loc_10145c6a0
0x10145c6a0:  1f 07 00 71   cmp	w24, #0x1
0x10145c6a4:  c0 08 00 54   b.eq	loc_10145c7bc ; ⤵ 0x118
0x10145c6a8:  1f 0b 00 71   cmp	w24, #0x2
0x10145c6ac:  c1 09 00 54   b.ne	loc_10145c7e4 ; ⤵ 0x138
0x10145c6b0:  94 03 80 52   mov	w20, #0x1c
0x10145c6b4:  8c 00 00 14   b	loc_10145c8e4 ; ⤵ 0x230
0x10145c6b8:  ; loc_10145c6b8
0x10145c6b8:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x10145c6bc:  a9 79 00 d0   adrp	x9, 0x102392000
0x10145c6c0:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10145c6c4:  29 01 40 f9   ldr	x9, [x9]
0x10145c6c8:  3f 01 08 eb   cmp	x9, x8
0x10145c6cc:  81 1c 00 54   b.ne	loc_10145ca5c ; ⤵ 0x390
0x10145c6d0:  e0 03 13 aa   mov	x0, x19
0x10145c6d4:  02 04 80 52   mov	w2, #0x20
0x10145c6d8:  0f ff ff 17   b	loc_10145c314 ; ⤴ -0x3c4
0x10145c6dc:  ; loc_10145c6dc
0x10145c6dc:  df 42 1c 71   cmp	w22, #0x710
0x10145c6e0:  61 08 00 54   b.ne	loc_10145c7ec ; ⤵ 0x10c
0x10145c6e4:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10145c6e8:  1f 05 00 b1   cmn	x8, #0x1
0x10145c6ec:  a1 1b 00 54   b.ne	loc_10145ca60 ; ⤵ 0x374
0x10145c6f0:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x10145c6f4:  e0 03 14 aa   mov	x0, x20
0x10145c6f8:  01 00 80 52   mov	w1, #0
0x10145c6fc:  fd e6 1a 94   bl	j__os_log_type_enabled
0x10145c700:  39 00 80 52   mov	w25, #0x1
0x10145c704:  00 18 00 34   cbz	w0, loc_10145ca04 ; ⤵ 0x300
0x10145c708:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c70c:  c3 f0 00 94   bl	0x101498a18
0x10145c710:  f5 03 00 aa   mov	x21, x0
0x10145c714:  e0 03 13 aa   mov	x0, x19
0x10145c718:  92 46 1b 94   bl	j__objc_msgSend(x0, "groupUuid")
0x10145c71c:  bf f0 00 94   bl	0x101498a18
0x10145c720:  f6 03 00 aa   mov	x22, x0
0x10145c724:  e0 03 13 aa   mov	x0, x19
0x10145c728:  86 46 1b 94   bl	j__objc_msgSend(x0, "groupPartNumber")
0x10145c72c:  c8 39 00 90   adrp	x8, 0x101b94000
0x10145c730:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x10145c734:  e0 03 00 bd   str	s0, [sp]
0x10145c738:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c73c:  48 04 81 52   mov	w8, #0x822
0x10145c740:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145c744:  88 52 00 d0   adrp	x8, 0x101eae000
0x10145c748:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145c74c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145c750:  28 08 81 52   mov	w8, #0x841
0x10145c754:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145c758:  f5 43 01 f8   stur	x21, [sp, #0x14]
0x10145c75c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145c760:  f6 e3 01 f8   stur	x22, [sp, #0x1e]
0x10145c764:  48 80 80 52   mov	w8, #0x402
0x10145c768:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x10145c76c:  e0 2b 00 b9   str	w0, [sp, #0x28]
0x10145c770:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x10145c774:  ff e3 02 b8   stur	wzr, [sp, #0x2e]
0x10145c778:  e8 67 00 79   strh	w8, [sp, #0x32]
0x10145c77c:  f9 37 00 b9   str	w25, [sp, #0x34]
0x10145c780:  20 5d ff 90   adrp	x0, 0x100000000
0x10145c784:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145c788:  c3 70 00 d0   adrp	x3, 0x102276000
0x10145c78c:  63 c0 04 91   add	x3, x3, #0x130 ; "{\"msg%{public}.0s\":\"#durian #hawkeye fetch finding capabilities invalid length\", \"item\":%{private, location:escape_only}@, \"group\":%{private, location:escape_only}@, \"part\":%{public}d, \"disconnect\":%{"...
0x10145c790:  e4 03 00 91   mov	x4, sp
0x10145c794:  e1 03 14 aa   mov	x1, x20
0x10145c798:  02 00 80 52   mov	w2, #0
0x10145c79c:  05 07 80 52   mov	w5, #0x38
0x10145c7a0:  94 e2 1a 94   bl	j___os_log_impl
0x10145c7a4:  15 00 80 52   mov	w21, #0
0x10145c7a8:  16 e2 80 52   mov	w22, #0x710
0x10145c7ac:  34 00 80 52   mov	w20, #0x1
0x10145c7b0:  61 00 00 14   b	loc_10145c934 ; ⤵ 0x184
0x10145c7b4:  ; loc_10145c7b4
0x10145c7b4:  d4 03 80 52   mov	w20, #0x1e
0x10145c7b8:  4b 00 00 14   b	loc_10145c8e4 ; ⤵ 0x12c
0x10145c7bc:  ; loc_10145c7bc
0x10145c7bc:  c8 7a 17 12   and	w8, w22, #0xfffffeff
0x10145c7c0:  1f 05 08 71   cmp	w8, #0x201
0x10145c7c4:  80 01 00 54   b.eq	loc_10145c7f4 ; ⤵ 0x30
0x10145c7c8:  1f 01 08 71   cmp	w8, #0x200
0x10145c7cc:  61 08 00 54   b.ne	loc_10145c8d8 ; ⤵ 0x10c
0x10145c7d0:  e0 03 14 aa   mov	x0, x20
0x10145c7d4:  02 00 80 52   mov	w2, #0
0x10145c7d8:  12 bb 1b 94   bl	j__objc_msgSend(x0, "setExpectsResponse:")
0x10145c7dc:  f4 02 80 52   mov	w20, #0x17
0x10145c7e0:  41 00 00 14   b	loc_10145c8e4 ; ⤵ 0x104
0x10145c7e4:  ; loc_10145c7e4
0x10145c7e4:  34 00 80 52   mov	w20, #0x1
0x10145c7e8:  3f 00 00 14   b	loc_10145c8e4 ; ⤵ 0xfc
0x10145c7ec:  ; loc_10145c7ec
0x10145c7ec:  b4 03 80 52   mov	w20, #0x1d
0x10145c7f0:  3d 00 00 14   b	loc_10145c8e4 ; ⤵ 0xf4
0x10145c7f4:  ; loc_10145c7f4
0x10145c7f4:  e0 03 14 aa   mov	x0, x20
0x10145c7f8:  02 00 80 52   mov	w2, #0
0x10145c7fc:  09 bb 1b 94   bl	j__objc_msgSend(x0, "setExpectsResponse:")
0x10145c800:  14 03 80 52   mov	w20, #0x18
0x10145c804:  38 00 00 14   b	loc_10145c8e4 ; ⤵ 0xe0
0x10145c808:  ; loc_10145c808
0x10145c808:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10145c80c:  1f 05 00 b1   cmn	x8, #0x1
0x10145c810:  01 13 00 54   b.ne	loc_10145ca70 ; ⤵ 0x260
0x10145c814:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x10145c818:  e0 03 14 aa   mov	x0, x20
0x10145c81c:  01 00 80 52   mov	w1, #0
0x10145c820:  b4 e6 1a 94   bl	j__os_log_type_enabled
0x10145c824:  20 05 00 34   cbz	w0, loc_10145c8c8 ; ⤵ 0xa4
0x10145c828:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c82c:  7b f0 00 94   bl	0x101498a18
0x10145c830:  f5 03 00 aa   mov	x21, x0
0x10145c834:  e0 03 13 aa   mov	x0, x19
0x10145c838:  4a 46 1b 94   bl	j__objc_msgSend(x0, "groupUuid")
0x10145c83c:  77 f0 00 94   bl	0x101498a18
0x10145c840:  f6 03 00 aa   mov	x22, x0
0x10145c844:  e0 03 13 aa   mov	x0, x19
0x10145c848:  3e 46 1b 94   bl	j__objc_msgSend(x0, "groupPartNumber")
0x10145c84c:  c8 44 00 90   adrp	x8, 0x101cf4000
0x10145c850:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10145c854:  e0 03 00 bd   str	s0, [sp]
0x10145c858:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c85c:  48 04 81 52   mov	w8, #0x822
0x10145c860:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145c864:  88 52 00 d0   adrp	x8, 0x101eae000
0x10145c868:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145c86c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145c870:  28 08 81 52   mov	w8, #0x841
0x10145c874:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145c878:  f5 43 01 f8   stur	x21, [sp, #0x14]
0x10145c87c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145c880:  f6 e3 01 f8   stur	x22, [sp, #0x1e]
0x10145c884:  48 80 80 52   mov	w8, #0x402
0x10145c888:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x10145c88c:  e0 2b 00 b9   str	w0, [sp, #0x28]
0x10145c890:  20 5d ff 90   adrp	x0, 0x100000000
0x10145c894:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145c898:  c3 70 00 d0   adrp	x3, 0x102276000
0x10145c89c:  63 f8 01 91   add	x3, x3, #0x7e ; "{\"msg%{public}.0s\":\"#durian #hawkeye fetch finding capabilities invalid\", \"item\":%{private, location:escape_only}@, \"group\":%{private, location:escape_only}@, \"part\":%{public}d}"
0x10145c8a0:  e4 03 00 91   mov	x4, sp
0x10145c8a4:  e1 03 14 aa   mov	x1, x20
0x10145c8a8:  02 00 80 52   mov	w2, #0
0x10145c8ac:  85 05 80 52   mov	w5, #0x2c
0x10145c8b0:  50 e2 1a 94   bl	j___os_log_impl
0x10145c8b4:  15 00 80 52   mov	w21, #0
0x10145c8b8:  39 00 80 52   mov	w25, #0x1
0x10145c8bc:  16 e2 80 52   mov	w22, #0x710
0x10145c8c0:  ; loc_10145c8c0
0x10145c8c0:  f4 03 80 52   mov	w20, #0x1f
0x10145c8c4:  1c 00 00 14   b	loc_10145c934 ; ⤵ 0x70
0x10145c8c8:  ; loc_10145c8c8
0x10145c8c8:  15 00 80 52   mov	w21, #0
0x10145c8cc:  39 00 80 52   mov	w25, #0x1
0x10145c8d0:  f4 03 80 52   mov	w20, #0x1f
0x10145c8d4:  1b 00 00 14   b	loc_10145c940 ; ⤵ 0x6c
0x10145c8d8:  ; loc_10145c8d8
0x10145c8d8:  74 03 80 52   mov	w20, #0x1b
0x10145c8dc:  02 00 00 14   b	loc_10145c8e4 ; ⤵ 0x8
0x10145c8e0:  ; loc_10145c8e0
0x10145c8e0:  f4 03 80 52   mov	w20, #0x1f
0x10145c8e4:  ; loc_10145c8e4
0x10145c8e4:  28 06 80 52   mov	w8, #0x31
0x10145c8e8:  08 25 d5 1a   lsr	w8, w8, w21
0x10145c8ec:  f5 02 08 0a   and	w21, w23, w8
0x10145c8f0:  39 00 80 52   mov	w25, #0x1
0x10145c8f4:  df 0e 08 71   cmp	w22, #0x203
0x10145c8f8:  e1 01 00 54   b.ne	loc_10145c934 ; ⤵ 0x3c
0x10145c8fc:  1f 13 00 71   cmp	w24, #0x4
0x10145c900:  a8 01 00 54   b.hi	loc_10145c934 ; ⤵ 0x34
0x10145c904:  1f 0f 00 71   cmp	w24, #0x3
0x10145c908:  60 01 00 54   b.eq	loc_10145c934 ; ⤵ 0x2c
0x10145c90c:  08 86 00 f0   adrp	x8, 0x10251f000
0x10145c910:  00 c1 27 91   add	x0, x8, #0x9f0 ; CLDurianTask
0x10145c914:  02 c2 81 52   mov	w2, #0xe10
0x10145c918:  03 00 80 52   mov	w3, #0
0x10145c91c:  b1 ca 1b 94   bl	j__objc_msgSend(x0, "setNearbyTimeoutHawkeyeTaskWithTimeout:asHele:")
0x10145c920:  e2 03 00 aa   mov	x2, x0
0x10145c924:  e0 03 13 aa   mov	x0, x19
0x10145c928:  96 2b 1b 94   bl	j__objc_msgSend(x0, "enqueueTask:")
0x10145c92c:  19 00 80 52   mov	w25, #0
0x10145c930:  76 40 80 52   mov	w22, #0x203
0x10145c934:  ; loc_10145c934
0x10145c934:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10145c938:  1f 05 00 b1   cmn	x8, #0x1
0x10145c93c:  81 08 00 54   b.ne	loc_10145ca4c ; ⤵ 0x110
0x10145c940:  ; loc_10145c940
0x10145c940:  57 3f 46 f9   ldr	x23, [x26, #0xc78]
0x10145c944:  e0 03 17 aa   mov	x0, x23
0x10145c948:  01 00 80 52   mov	w1, #0
0x10145c94c:  69 e6 1a 94   bl	j__os_log_type_enabled
0x10145c950:  60 04 00 34   cbz	w0, loc_10145c9dc ; ⤵ 0x8c
0x10145c954:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c958:  30 f0 00 94   bl	0x101498a18
0x10145c95c:  c8 39 00 90   adrp	x8, 0x101b94000
0x10145c960:  00 a1 40 fd   ldr	d0, [x8, #0x140]
0x10145c964:  e0 03 00 bd   str	s0, [sp]
0x10145c968:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c96c:  48 04 81 52   mov	w8, #0x822
0x10145c970:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145c974:  88 52 00 d0   adrp	x8, 0x101eae000
0x10145c978:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145c97c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145c980:  28 08 81 52   mov	w8, #0x841
0x10145c984:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145c988:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10145c98c:  48 80 80 52   mov	w8, #0x402
0x10145c990:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145c994:  f6 e3 01 b8   stur	w22, [sp, #0x1e]
0x10145c998:  e8 47 00 79   strh	w8, [sp, #0x22]
0x10145c99c:  f8 27 00 b9   str	w24, [sp, #0x24]
0x10145c9a0:  e8 53 00 79   strh	w8, [sp, #0x28]
0x10145c9a4:  f4 a3 02 b8   stur	w20, [sp, #0x2a]
0x10145c9a8:  e8 5f 00 79   strh	w8, [sp, #0x2e]
0x10145c9ac:  f9 33 00 b9   str	w25, [sp, #0x30]
0x10145c9b0:  e8 6b 00 79   strh	w8, [sp, #0x34]

