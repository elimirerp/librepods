0x10048b420:  75 36 ee 97   bl	0x100018df4
0x10048b424:  e0 03 1b aa   mov	x0, x27
0x10048b428:  e1 03 13 aa   mov	x1, x19
0x10048b42c:  6b 5b 02 94   bl	0x1005221d8
0x10048b430:  a0 87 36 a9   stp	x0, x1, [fp, #-0x98]
0x10048b434:  95 80 00 b5   cbnz	x21, loc_10048c444 ; ⤵ 0x1010
0x10048b438:  e0 03 18 aa   mov	x0, x24
0x10048b43c:  1d fe 43 94   bl	j__CCECCryptorRelease
0x10048b440:  e0 03 1b aa   mov	x0, x27
0x10048b444:  e1 03 13 aa   mov	x1, x19
0x10048b448:  d6 2e ee 97   bl	0x100016fa0
0x10048b44c:  e0 03 19 aa   mov	x0, x25
0x10048b450:  e1 03 1c aa   mov	x1, x28
0x10048b454:  d3 2e ee 97   bl	0x100016fa0
0x10048b458:  e0 87 4a a9   ldp	x0, x1, [sp, #0xa8]
0x10048b45c:  de ec ed 97   bl	0x1000067d4
0x10048b460:  fc 2b 40 f9   ldr	x28, [sp, #0x50]
0x10048b464:  bb 83 55 f8   ldur	x27, [fp, #-0xa8]
0x10048b468:  68 07 00 b1   adds	x8, x27, #0x1
0x10048b46c:  42 92 00 54   b.hs	loc_10048c6b4 ; ⤵ 0x1248
0x10048b470:  f9 03 1a aa   mov	x25, x26
0x10048b474:  d3 56 49 a9   ldp	x19, x21, [x22, #0x90]
0x10048b478:  c8 de 08 a9   stp	x8, x23, [x22, #0x88]
0x10048b47c:  d4 4e 00 f9   str	x20, [x22, #0x98]
0x10048b480:  e0 03 17 aa   mov	x0, x23
0x10048b484:  e1 03 14 aa   mov	x1, x20
0x10048b488:  5b 36 ee 97   bl	0x100018df4
0x10048b48c:  e0 03 13 aa   mov	x0, x19
0x10048b490:  e1 03 15 aa   mov	x1, x21
0x10048b494:  c3 2e ee 97   bl	0x100016fa0
0x10048b498:  20 cd 8d d2   mov	x0, #0x6e69
0x10048b49c:  80 ae ac f2   movk	x0, #0x6574, lsl #0x10
0x10048b4a0:  40 ae cd f2   movk	x0, #0x6d72, lsl #0x20
0x10048b4a4:  a0 8c ec f2   movk	x0, #0x6465, lsl #0x30
0x10048b4a8:  21 2d 8c d2   mov	x1, #0x6169
0x10048b4ac:  81 ae ac f2   movk	x1, #0x6574, lsl #0x10
0x10048b4b0:  01 80 fd f2   movk	x1, #0xec00, lsl #0x30
0x10048b4b4:  8f f5 43 94   bl	j__$sSS10FindMyBaseE8utf8Data10Foundation0E0Vvg
0x10048b4b8:  f8 03 00 aa   mov	x24, x0
0x10048b4bc:  f3 03 01 aa   mov	x19, x1
0x10048b4c0:  e0 03 17 aa   mov	x0, x23
0x10048b4c4:  e1 03 14 aa   mov	x1, x20
0x10048b4c8:  e2 03 18 aa   mov	x2, x24
0x10048b4cc:  e3 03 13 aa   mov	x3, x19
0x10048b4d0:  04 04 80 52   mov	w4, #0x20
0x10048b4d4:  15 00 80 d2   mov	x21, #0
0x10048b4d8:  58 96 1b 94   bl	0x100b70e38
0x10048b4dc:  95 35 00 b5   cbnz	x21, loc_10048bb8c ; ⤵ 0x6b0
0x10048b4e0:  a8 a3 01 d1   sub	x8, fp, #0x68
0x10048b4e4:  b9 7d 02 94   bl	0x10052abc8
0x10048b4e8:  e0 03 18 aa   mov	x0, x24
0x10048b4ec:  e1 03 13 aa   mov	x1, x19
0x10048b4f0:  ac 2e ee 97   bl	0x100016fa0
0x10048b4f4:  35 35 00 b5   cbnz	x21, loc_10048bb98 ; ⤵ 0x6a4
0x10048b4f8:  a9 a3 79 a9   ldp	x9, x8, [fp, #-0x68]
0x10048b4fc:  e9 a3 0a a9   stp	x9, x8, [sp, #0xa8]
0x10048b500:  fa 03 1c aa   mov	x26, x28
0x10048b504:  bc 83 56 f8   ldur	x28, [fp, #-0x98]
0x10048b508:  e0 03 1c aa   mov	x0, x28
0x10048b50c:  fb 03 19 aa   mov	x27, x25
0x10048b510:  b9 03 57 f8   ldur	x25, [fp, #-0x90]
0x10048b514:  e1 03 19 aa   mov	x1, x25
0x10048b518:  37 36 ee 97   bl	0x100018df4
0x10048b51c:  f8 4f 48 a9   ldp	x24, x19, [sp, #0x80]
0x10048b520:  e0 03 18 aa   mov	x0, x24
0x10048b524:  e1 03 13 aa   mov	x1, x19
0x10048b528:  ef 95 ee 97   bl	0x100030ce4
0x10048b52c:  e0 03 18 aa   mov	x0, x24
0x10048b530:  e1 03 13 aa   mov	x1, x19
0x10048b534:  a8 ec ed 97   bl	0x1000067d4
0x10048b538:  e0 03 1c aa   mov	x0, x28
0x10048b53c:  fc 03 1a aa   mov	x28, x26
0x10048b540:  e1 03 19 aa   mov	x1, x25
0x10048b544:  97 2e ee 97   bl	0x100016fa0
0x10048b548:  e0 03 17 aa   mov	x0, x23
0x10048b54c:  e1 03 14 aa   mov	x1, x20
0x10048b550:  94 2e ee 97   bl	0x100016fa0
0x10048b554:  e0 03 1b aa   mov	x0, x27
0x10048b558:  bb 83 55 f8   ldur	x27, [fp, #-0xa8]
0x10048b55c:  a1 83 57 f8   ldur	x1, [fp, #-0x88]
0x10048b560:  90 2e ee 97   bl	0x100016fa0
0x10048b564:  e0 03 1a aa   mov	x0, x26
0x10048b568:  39 07 00 94   bl	0x10048d24c
0x10048b56c:  e0 87 46 a9   ldp	x0, x1, [sp, #0x68]
0x10048b570:  8c 2e ee 97   bl	0x100016fa0
0x10048b574:  a8 03 56 f8   ldur	x8, [fp, #-0xa0]
0x10048b578:  7f 03 08 eb   cmp	x27, x8
0x10048b57c:  02 32 00 54   b.hs	loc_10048bbbc ; ⤵ 0x640
0x10048b580:  e8 2f 40 f9   ldr	x8, [sp, #0x58]
0x10048b584:  68 03 08 eb   subs	x8, x27, x8
0x10048b588:  83 8a 00 54   b.lo	loc_10048c6d8 ; ⤵ 0x1150
0x10048b58c:  c9 26 41 f9   ldr	x9, [x22, #0x248]
0x10048b590:  3f 01 08 eb   cmp	x9, x8
0x10048b594:  02 09 00 54   b.hs	loc_10048b6b4 ; ⤵ 0x120
0x10048b598:  d4 22 41 f9   ldr	x20, [x22, #0x240]
0x10048b59c:  c0 a4 00 90   adrp	x0, 0x101923000
0x10048b5a0:  00 e0 37 91   add	x0, x0, #0xdf8 ; data_101923df8 (__DATA.__data)
0x10048b5a4:  a1 8c 00 d0   adrp	x1, 0x101621000
0x10048b5a8:  21 00 28 91   add	x1, x1, #0xa00 ; "\xf8S\n"
0x10048b5ac:  92 b3 f0 97   bl	0x1000b83f4
0x10048b5b0:  c1 e2 05 91   add	x1, x22, #0x178
0x10048b5b4:  17 01 44 94   bl	j__swift_initStackObject
0x10048b5b8:  f7 03 00 aa   mov	x23, x0
0x10048b5bc:  e0 13 c0 3d   ldr	q0, [sp, #0x40]
0x10048b5c0:  00 04 80 3d   str	q0, [x0, #0x10]
0x10048b5c4:  f3 03 00 aa   mov	x19, x0
0x10048b5c8:  7b 0e 02 f8   str	x27, [x19, #0x20]!
0x10048b5cc:  e0 87 49 a9   ldp	x0, x1, [sp, #0x98]
0x10048b5d0:  e0 86 02 a9   stp	x0, x1, [x23, #0x28]
0x10048b5d4:  08 36 ee 97   bl	0x100018df4
0x10048b5d8:  9f 79 ee 97   bl	0x100029c54
0x10048b5dc:  00 76 00 b4   cbz	x0, loc_10048c49c ; ⤵ 0xec0
0x10048b5e0:  f9 03 00 aa   mov	x25, x0
0x10048b5e4:  d4 5a 41 f9   ldr	x20, [x22, #0x2b0]
0x10048b5e8:  c8 52 41 f9   ldr	x8, [x22, #0x2a0]
0x10048b5ec:  a8 83 17 f8   stur	x8, [fp, #-0x88]
0x10048b5f0:  dc 22 41 f9   ldr	x28, [x22, #0x240]
0x10048b5f4:  d8 a6 4b 39   ldrb	w24, [x22, #0x2e9]
0x10048b5f8:  db 16 41 f9   ldr	x27, [x22, #0x228]
0x10048b5fc:  00 08 80 52   mov	w0, #0x40
0x10048b600:  5c 01 44 94   bl	j__swift_task_alloc
0x10048b604:  fa 03 00 aa   mov	x26, x0
0x10048b608:  17 70 01 a9   stp	x23, x28, [x0, #0x10]
0x10048b60c:  1b 10 00 f9   str	x27, [x0, #0x20]
0x10048b610:  18 a0 00 39   strb	w24, [x0, #0x28]
0x10048b614:  19 18 00 f9   str	x25, [x0, #0x30]
0x10048b618:  e9 17 40 f9   ldr	x9, [sp, #0x28]
0x10048b61c:  28 01 40 f9   ldr	x8, [x9]
0x10048b620:  e0 03 14 aa   mov	x0, x20
0x10048b624:  e1 37 40 b9   ldr	w1, [sp, #0x34]
0x10048b628:  a2 83 57 f8   ldur	x2, [fp, #-0x88]
0x10048b62c:  f1 03 09 aa   mov	x17, x9
0x10048b630:  91 5c f6 f2   movk	x17, #0xb2e4, lsl #0x30
0x10048b634:  11 09 3f d7   blraa	x8, x17
0x10048b638:  10 00 00 d0   adrp	x16, 0x10048d000
0x10048b63c:  10 b2 0c 91   add	x16, x16, #0x32c
0x10048b640:  11 e1 81 d2   mov	x17, #0xf08
0x10048b644:  30 02 c1 da   pacia	x16, x17
0x10048b648:  e1 03 10 aa   mov	x1, x16
0x10048b64c:  e0 03 14 aa   mov	x0, x20
0x10048b650:  e2 03 1a aa   mov	x2, x26
0x10048b654:  f4 03 19 aa   mov	x20, x25
0x10048b658:  de e8 43 94   bl	j__$s11SwiftSQLite10ConnectionC11transaction_5blockyAC15TransactionModeO_yyKXEtKF
0x10048b65c:  c0 5a 41 f9   ldr	x0, [x22, #0x2b0]
0x10048b660:  c1 52 41 f9   ldr	x1, [x22, #0x2a0]
0x10048b664:  75 76 00 b5   cbnz	x21, loc_10048c530 ; ⤵ 0xecc
0x10048b668:  e9 1f 40 f9   ldr	x9, [sp, #0x38]
0x10048b66c:  28 01 40 f9   ldr	x8, [x9]
0x10048b670:  f1 03 09 aa   mov	x17, x9
0x10048b674:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10048b678:  11 09 3f d7   blraa	x8, x17
0x10048b67c:  e0 03 17 aa   mov	x0, x23
0x10048b680:  24 01 44 94   bl	j__swift_setDeallocating
0x10048b684:  e1 0a 40 f9   ldr	x1, [x23, #0x10]
0x10048b688:  e0 03 13 aa   mov	x0, x19
0x10048b68c:  e2 a1 00 90   adrp	x2, 0x1018c7000
0x10048b690:  42 00 29 91   add	x2, x2, #0xa40 ; data_1018c7a40 (__DATA_CONST.__const)
0x10048b694:  cf ff 43 94   bl	j__swift_arrayDestroy
0x10048b698:  e0 03 19 aa   mov	x0, x25
0x10048b69c:  09 01 44 94   bl	j__swift_release
0x10048b6a0:  e0 03 1a aa   mov	x0, x26
0x10048b6a4:  3f 01 44 94   bl	j__swift_task_dealloc
0x10048b6a8:  bb 83 55 f8   ldur	x27, [fp, #-0xa8]
0x10048b6ac:  fb 2f 00 f9   str	x27, [sp, #0x58]
0x10048b6b0:  fc 2b 40 f9   ldr	x28, [sp, #0x50]
0x10048b6b4:  ; loc_10048b6b4
0x10048b6b4:  a0 87 76 a9   ldp	x0, x1, [fp, #-0x98]
0x10048b6b8:  02 00 80 52   mov	w2, #0
0x10048b6bc:  03 00 80 52   mov	w3, #0
0x10048b6c0:  15 00 80 d2   mov	x21, #0
0x10048b6c4:  64 99 1b 94   bl	0x100b71c54
0x10048b6c8:  35 13 00 b5   cbnz	x21, loc_10048b92c ; ⤵ 0x264
0x10048b6cc:  f4 03 00 aa   mov	x20, x0
0x10048b6d0:  01 00 80 52   mov	w1, #0
0x10048b6d4:  42 00 80 52   mov	w2, #0x2
0x10048b6d8:  27 8c 1b 94   bl	0x100b6e774
0x10048b6dc:  95 12 00 b5   cbnz	x21, loc_10048b92c ; ⤵ 0x250
0x10048b6e0:  f3 03 00 aa   mov	x19, x0
0x10048b6e4:  f7 03 01 aa   mov	x23, x1
0x10048b6e8:  e0 03 14 aa   mov	x0, x20
0x10048b6ec:  71 fd 43 94   bl	j__CCECCryptorRelease
0x10048b6f0:  a8 a3 01 d1   sub	x8, fp, #0x68
0x10048b6f4:  e0 03 13 aa   mov	x0, x19
0x10048b6f8:  e1 03 17 aa   mov	x1, x23
0x10048b6fc:  19 36 ee 97   bl	0x100018f60
0x10048b700:  b5 19 00 b5   cbnz	x21, loc_10048ba34 ; ⤵ 0x334
0x10048b704:  d8 aa 4b 39   ldrb	w24, [x22, #0x2ea]
0x10048b708:  b4 cf 79 a9   ldp	x20, x19, [fp, #-0x68]
0x10048b70c:  e0 03 14 aa   mov	x0, x20
0x10048b710:  e1 03 13 aa   mov	x1, x19
0x10048b714:  b8 35 ee 97   bl	0x100018df4
0x10048b718:  e6 e2 43 94   bl	j__$s10FindMyBase10MACAddressV6lengthSivgZ
0x10048b71c:  a8 a3 01 d1   sub	x8, fp, #0x68
0x10048b720:  e1 03 14 aa   mov	x1, x20
0x10048b724:  e2 03 13 aa   mov	x2, x19
0x10048b728:  b1 95 ee 97   bl	0x100030dec
0x10048b72c:  b7 e7 79 a9   ldp	x23, x25, [fp, #-0x68]
0x10048b730:  a0 00 80 52   mov	w0, #0x5
0x10048b734:  e1 03 17 aa   mov	x1, x23
0x10048b738:  e2 03 19 aa   mov	x2, x25
0x10048b73c:  69 e7 43 94   bl	j__$s10Foundation4DataV15_RepresentationOys5UInt8VSicig

