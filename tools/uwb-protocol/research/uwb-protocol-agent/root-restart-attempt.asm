
-[CLDurianDeviceManager restartConnectionAttemptToDevice:]:
0x1014744b8:  7f 23 03 d5   pacibsp
0x1014744bc:  ff c3 01 d1   sub	sp, sp, #0x70
0x1014744c0:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x1014744c4:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x1014744c8:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x1014744cc:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x1014744d0:  fd 83 01 91   add	fp, sp, #0x60
0x1014744d4:  f3 03 02 aa   mov	x19, x2
0x1014744d8:  f4 03 00 aa   mov	x20, x0
0x1014744dc:  e8 78 00 d0   adrp	x8, 0x102392000
0x1014744e0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014744e4:  08 01 40 f9   ldr	x8, [x8]
0x1014744e8:  e8 17 00 f9   str	x8, [sp, #0x28]
0x1014744ec:  77 88 00 d0   adrp	x23, 0x102582000
0x1014744f0:  e8 3a 46 f9   ldr	x8, [x23, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014744f4:  1f 05 00 b1   cmn	x8, #0x1
0x1014744f8:  21 12 00 54   b.ne	loc_10147473c ; ⤵ 0x244
0x1014744fc:  ; loc_1014744fc
0x1014744fc:  78 88 00 d0   adrp	x24, 0x102582000
0x101474500:  15 3f 46 f9   ldr	x21, [x24, #0xc78] ; data_102582c78 (__DATA.__data)
0x101474504:  e0 03 15 aa   mov	x0, x21
0x101474508:  01 00 80 52   mov	w1, #0
0x10147450c:  79 87 1a 94   bl	j__os_log_type_enabled
0x101474510:  20 04 00 34   cbz	w0, loc_101474594 ; ⤵ 0x84
0x101474514:  e0 03 13 aa   mov	x0, x19
0x101474518:  2a a7 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147451c:  3f 91 00 94   bl	0x101498a18
0x101474520:  f6 03 00 aa   mov	x22, x0
0x101474524:  e0 03 13 aa   mov	x0, x19
0x101474528:  2e 96 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147452c:  ad 2e 1b 94   bl	j__objc_msgSend(x0, "possiblePeripherals")
0x101474530:  6c b4 1a 94   bl	j__objc_msgSend(x0, "count")
0x101474534:  08 44 00 90   adrp	x8, 0x101cf4000
0x101474538:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10147453c:  e0 03 00 bd   str	s0, [sp]
0x101474540:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101474544:  48 04 81 52   mov	w8, #0x822
0x101474548:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10147454c:  c8 51 00 d0   adrp	x8, 0x101eae000
0x101474550:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101474554:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101474558:  28 08 81 52   mov	w8, #0x841
0x10147455c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101474560:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101474564:  48 80 80 52   mov	w8, #0x402
0x101474568:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10147456c:  e0 e3 01 b8   stur	w0, [sp, #0x1e]
0x101474570:  60 5c ff 90   adrp	x0, 0x100000000
0x101474574:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101474578:  43 70 00 f0   adrp	x3, 0x10227f000
0x10147457c:  63 c0 21 91   add	x3, x3, #0x870 ; "{\"msg%{public}.0s\":\"#durian #connection restart, cancelling peripherals\", \"item\":%{private, location:escape_only}@, \"periphs\":%{public}d}"
0x101474580:  e4 03 00 91   mov	x4, sp
0x101474584:  e1 03 15 aa   mov	x1, x21
0x101474588:  02 00 80 52   mov	w2, #0
0x10147458c:  45 04 80 52   mov	w5, #0x22
0x101474590:  18 83 1a 94   bl	j___os_log_impl
0x101474594:  ; loc_101474594
0x101474594:  e0 03 13 aa   mov	x0, x19
0x101474598:  12 96 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147459c:  60 02 00 b4   cbz	x0, loc_1014745e8 ; ⤵ 0x4c
0x1014745a0:  e2 80 00 f0   adrp	x2, 0x102493000
0x1014745a4:  42 c0 2b 91   add	x2, x2, #0xaf0 ; "prerestartattempt"
0x1014745a8:  e0 03 13 aa   mov	x0, x19
0x1014745ac:  e5 15 1b 94   bl	j__objc_msgSend(x0, "logConnectionAttempts:")
0x1014745b0:  e0 03 13 aa   mov	x0, x19
0x1014745b4:  0b 96 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x1014745b8:  a2 f1 1a 94   bl	j__objc_msgSend(x0, "inertCopy")
0x1014745bc:  31 86 1a 94   bl	j__objc_autorelease
0x1014745c0:  e2 03 00 aa   mov	x2, x0
0x1014745c4:  e0 03 13 aa   mov	x0, x19
0x1014745c8:  b6 6e 1b 94   bl	j__objc_msgSend(x0, "setPendingConnectionAttempt:")
0x1014745cc:  80 76 40 f9   ldr	x0, [x20, #0xe8]
0x1014745d0:  44 b4 1a 94   bl	j__objc_msgSend(x0, "count")
0x1014745d4:  e0 08 00 b4   cbz	x0, loc_1014746f0 ; ⤵ 0x11c
0x1014745d8:  e0 03 14 aa   mov	x0, x20
0x1014745dc:  e2 03 13 aa   mov	x2, x19
0x1014745e0:  00 a5 1a 94   bl	j__objc_msgSend(x0, "cancelConnectionAttemptToDevice:")
0x1014745e4:  46 00 00 14   b	loc_1014746fc ; ⤵ 0x118
0x1014745e8:  ; loc_1014745e8
0x1014745e8:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x1014745ec:  1f 05 00 b1   cmn	x8, #0x1
0x1014745f0:  a1 0a 00 54   b.ne	loc_101474744 ; ⤵ 0x154
0x1014745f4:  ; loc_1014745f4
0x1014745f4:  14 3f 46 f9   ldr	x20, [x24, #0xc78]
0x1014745f8:  e0 03 14 aa   mov	x0, x20
0x1014745fc:  01 02 80 52   mov	w1, #0x10
0x101474600:  3c 87 1a 94   bl	j__os_log_type_enabled
0x101474604:  16 44 00 90   adrp	x22, 0x101cf4000
0x101474608:  d5 51 00 d0   adrp	x21, 0x101eae000
0x10147460c:  b5 e2 02 91   add	x21, x21, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101474610:  20 03 00 34   cbz	w0, loc_101474674 ; ⤵ 0x64
0x101474614:  e0 03 13 aa   mov	x0, x19
0x101474618:  ea a6 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147461c:  ff 90 00 94   bl	0x101498a18
0x101474620:  c0 fe 47 fd   ldr	d0, [x22, #0xff8]
0x101474624:  e0 03 00 bd   str	s0, [sp]
0x101474628:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10147462c:  48 04 81 52   mov	w8, #0x822
0x101474630:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101474634:  f5 a3 00 f8   stur	x21, [sp, #0xa]
0x101474638:  28 08 81 52   mov	w8, #0x841
0x10147463c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101474640:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101474644:  60 5c ff 90   adrp	x0, 0x100000000
0x101474648:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147464c:  43 70 00 f0   adrp	x3, 0x10227f000
0x101474650:  63 e8 23 91   add	x3, x3, #0x8fa ; "{\"msg%{public}.0s\":\"#durian #connection tried to restart nil active attempt\", \"item\":%{private, location:escape_only}@}"
0x101474654:  e4 03 00 91   mov	x4, sp
0x101474658:  e1 03 14 aa   mov	x1, x20
0x10147465c:  02 02 80 52   mov	w2, #0x10
0x101474660:  85 03 80 52   mov	w5, #0x1c
0x101474664:  e3 82 1a 94   bl	j___os_log_impl
0x101474668:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x10147466c:  1f 05 00 b1   cmn	x8, #0x1
0x101474670:  e1 06 00 54   b.ne	loc_10147474c ; ⤵ 0xdc
0x101474674:  ; loc_101474674
0x101474674:  14 3f 46 f9   ldr	x20, [x24, #0xc78]
0x101474678:  e0 03 14 aa   mov	x0, x20
0x10147467c:  21 87 1a 94   bl	j__os_signpost_enabled
0x101474680:  60 04 00 34   cbz	w0, loc_10147470c ; ⤵ 0x8c
0x101474684:  e0 03 13 aa   mov	x0, x19
0x101474688:  ce a6 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147468c:  e3 90 00 94   bl	0x101498a18
0x101474690:  c0 fe 47 fd   ldr	d0, [x22, #0xff8]
0x101474694:  e0 03 00 bd   str	s0, [sp]
0x101474698:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10147469c:  48 04 81 52   mov	w8, #0x822
0x1014746a0:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014746a4:  f5 a3 00 f8   stur	x21, [sp, #0xa]
0x1014746a8:  28 08 81 52   mov	w8, #0x841
0x1014746ac:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014746b0:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x1014746b4:  60 5c ff 90   adrp	x0, 0x100000000
0x1014746b8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014746bc:  44 70 00 f0   adrp	x4, 0x10227f000
0x1014746c0:  84 c8 25 91   add	x4, x4, #0x972 ; "#durian #connection tried to restart nil active attempt"
0x1014746c4:  45 70 00 f0   adrp	x5, 0x10227f000
0x1014746c8:  a5 e8 23 91   add	x5, x5, #0x8fa ; "{\"msg%{public}.0s\":\"#durian #connection tried to restart nil active attempt\", \"item\":%{private, location:escape_only}@}"
0x1014746cc:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x1014746d0:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x1014746d4:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x1014746d8:  e6 03 00 91   mov	x6, sp
0x1014746dc:  e1 03 14 aa   mov	x1, x20
0x1014746e0:  02 00 80 52   mov	w2, #0
0x1014746e4:  87 03 80 52   mov	w7, #0x1c
0x1014746e8:  ca 82 1a 94   bl	j___os_signpost_emit_with_name_impl
0x1014746ec:  08 00 00 14   b	loc_10147470c ; ⤵ 0x20
0x1014746f0:  ; loc_1014746f0
0x1014746f0:  e0 03 14 aa   mov	x0, x20
0x1014746f4:  e2 03 13 aa   mov	x2, x19
0x1014746f8:  92 95 1a 94   bl	j__objc_msgSend(x0, "activatePendingConnectionAttemptForDevice:")
0x1014746fc:  ; loc_1014746fc
0x1014746fc:  e2 80 00 f0   adrp	x2, 0x102493000
0x101474700:  42 40 2c 91   add	x2, x2, #0xb10 ; "postrestartattempt"
0x101474704:  e0 03 13 aa   mov	x0, x19
0x101474708:  8e 15 1b 94   bl	j__objc_msgSend(x0, "logConnectionAttempts:")
0x10147470c:  ; loc_10147470c
0x10147470c:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101474710:  e9 78 00 d0   adrp	x9, 0x102392000
0x101474714:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101474718:  29 01 40 f9   ldr	x9, [x9]
0x10147471c:  3f 01 08 eb   cmp	x9, x8
0x101474720:  a1 01 00 54   b.ne	loc_101474754 ; ⤵ 0x34
0x101474724:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101474728:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10147472c:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101474730:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101474734:  ff c3 01 91   add	sp, sp, #0x70
0x101474738:  ff 0f 5f d6   retab
0x10147473c:  ; loc_10147473c
0x10147473c:  b8 6e 1a 94   bl	0x101b1021c
0x101474740:  6f ff ff 17   b	loc_1014744fc ; ⤴ -0x244
0x101474744:  ; loc_101474744
0x101474744:  a6 6e 1a 94   bl	0x101b101dc
0x101474748:  ab ff ff 17   b	loc_1014745f4 ; ⤴ -0x154
0x10147474c:  ; loc_10147474c
0x10147474c:  a4 6e 1a 94   bl	0x101b101dc
0x101474750:  c9 ff ff 17   b	loc_101474674 ; ⤴ -0xdc
0x101474754:  ; loc_101474754
0x101474754:  7b 82 1a 94   bl	j____stack_chk_fail

