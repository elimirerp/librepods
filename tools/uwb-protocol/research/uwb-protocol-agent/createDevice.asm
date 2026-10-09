
-[CLDurianDeviceManager createDeviceWithUUID:beaconType:isPosh:simpleBeacon:]:
0x10146e4cc:  7f 23 03 d5   pacibsp
0x10146e4d0:  ff 03 02 d1   sub	sp, sp, #0x80
0x10146e4d4:  fa 67 03 a9   stp	x26, x25, [sp, #0x30]
0x10146e4d8:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x10146e4dc:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x10146e4e0:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x10146e4e4:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x10146e4e8:  fd c3 01 91   add	fp, sp, #0x70
0x10146e4ec:  f5 03 05 aa   mov	x21, x5
0x10146e4f0:  f7 03 04 aa   mov	x23, x4
0x10146e4f4:  f6 03 03 aa   mov	x22, x3
0x10146e4f8:  f3 03 02 aa   mov	x19, x2
0x10146e4fc:  f4 03 00 aa   mov	x20, x0
0x10146e500:  28 79 00 90   adrp	x8, 0x102392000
0x10146e504:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10146e508:  08 01 40 f9   ldr	x8, [x8]
0x10146e50c:  e8 17 00 f9   str	x8, [sp, #0x28]
0x10146e510:  88 85 00 d0   adrp	x8, 0x102520000
0x10146e514:  00 01 1f 91   add	x0, x8, #0x7c0 ; class__TtC13DurianSupport36DurianHardwareFaultStatusCoordinator
0x10146e518:  4e 9e 1a 94   bl	j__objc_alloc
0x10146e51c:  82 8a 40 f9   ldr	x2, [x20, #0x110]
0x10146e520:  83 7a 40 f9   ldr	x3, [x20, #0xf0]
0x10146e524:  84 0a 40 f9   ldr	x4, [x20, #0x10]
0x10146e528:  85 4a 40 f9   ldr	x5, [x20, #0x90]
0x10146e52c:  e6 03 15 aa   mov	x6, x21
0x10146e530:  c4 16 1b 94   bl	j__objc_msgSend(x0, "initWithQueue:metricManager:beaconManager:meDeviceMonitor:simpleBeacon:")
0x10146e534:  53 9e 1a 94   bl	j__objc_autorelease
0x10146e538:  f5 03 00 aa   mov	x21, x0
0x10146e53c:  57 05 00 34   cbz	w23, loc_10146e5e4 ; ⤵ 0xa8
0x10146e540:  a8 88 00 90   adrp	x8, 0x102582000
0x10146e544:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146e548:  1f 05 00 b1   cmn	x8, #0x1
0x10146e54c:  e1 20 00 54   b.ne	loc_10146e968 ; ⤵ 0x41c
0x10146e550:  a8 88 00 90   adrp	x8, 0x102582000
0x10146e554:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146e558:  e0 03 16 aa   mov	x0, x22
0x10146e55c:  01 00 80 52   mov	w1, #0
0x10146e560:  64 9f 1a 94   bl	j__os_log_type_enabled
0x10146e564:  a0 03 00 34   cbz	w0, loc_10146e5d8 ; ⤵ 0x74
0x10146e568:  e0 03 13 aa   mov	x0, x19
0x10146e56c:  2b a9 00 94   bl	0x101498a18
0x10146e570:  28 44 00 d0   adrp	x8, 0x101cf4000
0x10146e574:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10146e578:  e0 03 00 bd   str	s0, [sp]
0x10146e57c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10146e580:  48 04 81 52   mov	w8, #0x822
0x10146e584:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10146e588:  08 52 00 90   adrp	x8, 0x101eae000
0x10146e58c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146e590:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10146e594:  28 08 81 52   mov	w8, #0x841
0x10146e598:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146e59c:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10146e5a0:  48 08 81 52   mov	w8, #0x842
0x10146e5a4:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10146e5a8:  28 81 00 90   adrp	x8, 0x102492000
0x10146e5ac:  08 41 3f 91   add	x8, x8, #0xfd0 ; "posh"
0x10146e5b0:  e8 e3 01 f8   stur	x8, [sp, #0x1e]
0x10146e5b4:  80 5c ff d0   adrp	x0, 0x100000000
0x10146e5b8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146e5bc:  63 70 00 f0   adrp	x3, 0x10227d000
0x10146e5c0:  63 20 25 91   add	x3, x3, #0x948 ; "{\"msg%{public}.0s\":\"#durian #posh creating device\", \"uuid\":%{private, location:escape_only}@, \"type\":%{public, location:escape_only}@}"
0x10146e5c4:  e4 03 00 91   mov	x4, sp
0x10146e5c8:  e1 03 16 aa   mov	x1, x22
0x10146e5cc:  02 00 80 52   mov	w2, #0
0x10146e5d0:  c5 04 80 52   mov	w5, #0x26
0x10146e5d4:  07 9b 1a 94   bl	j___os_log_impl
0x10146e5d8:  ; loc_10146e5d8
0x10146e5d8:  88 85 00 d0   adrp	x8, 0x102520000
0x10146e5dc:  00 61 0b 91   add	x0, x8, #0x2d8 ; class_CLPoshDevice
0x10146e5e0:  87 00 00 14   b	loc_10146e7fc ; ⤵ 0x21c
0x10146e5e4:  ; loc_10146e5e4
0x10146e5e4:  08 79 00 d0   adrp	x8, 0x102390000
0x10146e5e8:  08 f9 41 f9   ldr	x8, [x8, #0x3f0] ; __got._SPBeaconTypeDurian
0x10146e5ec:  02 01 40 f9   ldr	x2, [x8]
0x10146e5f0:  e0 03 16 aa   mov	x0, x22
0x10146e5f4:  db 20 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x10146e5f8:  00 05 00 34   cbz	w0, loc_10146e698 ; ⤵ 0xa0
0x10146e5fc:  a8 88 00 90   adrp	x8, 0x102582000
0x10146e600:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146e604:  1f 05 00 b1   cmn	x8, #0x1
0x10146e608:  41 1b 00 54   b.ne	loc_10146e970 ; ⤵ 0x368
0x10146e60c:  a8 88 00 90   adrp	x8, 0x102582000
0x10146e610:  17 3d 46 f9   ldr	x23, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146e614:  e0 03 17 aa   mov	x0, x23
0x10146e618:  01 00 80 52   mov	w1, #0
0x10146e61c:  35 9f 1a 94   bl	j__os_log_type_enabled
0x10146e620:  60 03 00 34   cbz	w0, loc_10146e68c ; ⤵ 0x6c
0x10146e624:  e0 03 13 aa   mov	x0, x19
0x10146e628:  fc a8 00 94   bl	0x101498a18
0x10146e62c:  28 44 00 d0   adrp	x8, 0x101cf4000
0x10146e630:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10146e634:  e0 03 00 bd   str	s0, [sp]
0x10146e638:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10146e63c:  48 04 81 52   mov	w8, #0x822
0x10146e640:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10146e644:  08 52 00 90   adrp	x8, 0x101eae000
0x10146e648:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146e64c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10146e650:  28 08 81 52   mov	w8, #0x841
0x10146e654:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146e658:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10146e65c:  48 08 81 52   mov	w8, #0x842
0x10146e660:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10146e664:  f6 e3 01 f8   stur	x22, [sp, #0x1e]
0x10146e668:  80 5c ff d0   adrp	x0, 0x100000000
0x10146e66c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146e670:  63 70 00 f0   adrp	x3, 0x10227d000
0x10146e674:  63 3c 27 91   add	x3, x3, #0x9cf ; "{\"msg%{public}.0s\":\"#durian creating device\", \"uuid\":%{private, location:escape_only}@, \"type\":%{public, location:escape_only}@}"
0x10146e678:  e4 03 00 91   mov	x4, sp
0x10146e67c:  e1 03 17 aa   mov	x1, x23
0x10146e680:  02 00 80 52   mov	w2, #0
0x10146e684:  c5 04 80 52   mov	w5, #0x26
0x10146e688:  da 9a 1a 94   bl	j___os_log_impl
0x10146e68c:  ; loc_10146e68c
0x10146e68c:  88 85 00 b0   adrp	x8, 0x10251f000
0x10146e690:  00 61 05 91   add	x0, x8, #0x158 ; class_CLAirtagDevice
0x10146e694:  5a 00 00 14   b	loc_10146e7fc ; ⤵ 0x168
0x10146e698:  ; loc_10146e698
0x10146e698:  08 79 00 d0   adrp	x8, 0x102390000
0x10146e69c:  08 fd 41 f9   ldr	x8, [x8, #0x3f8] ; __got._SPBeaconTypeHele
0x10146e6a0:  02 01 40 f9   ldr	x2, [x8]
0x10146e6a4:  e0 03 16 aa   mov	x0, x22
0x10146e6a8:  ae 20 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x10146e6ac:  00 05 00 34   cbz	w0, loc_10146e74c ; ⤵ 0xa0
0x10146e6b0:  a8 88 00 90   adrp	x8, 0x102582000
0x10146e6b4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146e6b8:  1f 05 00 b1   cmn	x8, #0x1
0x10146e6bc:  e1 15 00 54   b.ne	loc_10146e978 ; ⤵ 0x2bc
0x10146e6c0:  a8 88 00 90   adrp	x8, 0x102582000
0x10146e6c4:  17 3d 46 f9   ldr	x23, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146e6c8:  e0 03 17 aa   mov	x0, x23
0x10146e6cc:  01 00 80 52   mov	w1, #0
0x10146e6d0:  08 9f 1a 94   bl	j__os_log_type_enabled
0x10146e6d4:  60 03 00 34   cbz	w0, loc_10146e740 ; ⤵ 0x6c
0x10146e6d8:  e0 03 13 aa   mov	x0, x19
0x10146e6dc:  cf a8 00 94   bl	0x101498a18
0x10146e6e0:  28 44 00 d0   adrp	x8, 0x101cf4000
0x10146e6e4:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10146e6e8:  e0 03 00 bd   str	s0, [sp]
0x10146e6ec:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10146e6f0:  48 04 81 52   mov	w8, #0x822
0x10146e6f4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10146e6f8:  08 52 00 90   adrp	x8, 0x101eae000
0x10146e6fc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146e700:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10146e704:  28 08 81 52   mov	w8, #0x841
0x10146e708:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146e70c:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10146e710:  48 08 81 52   mov	w8, #0x842
0x10146e714:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10146e718:  f6 e3 01 f8   stur	x22, [sp, #0x1e]
0x10146e71c:  80 5c ff d0   adrp	x0, 0x100000000
0x10146e720:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146e724:  63 70 00 f0   adrp	x3, 0x10227d000
0x10146e728:  63 3c 27 91   add	x3, x3, #0x9cf ; "{\"msg%{public}.0s\":\"#durian creating device\", \"uuid\":%{private, location:escape_only}@, \"type\":%{public, location:escape_only}@}"
0x10146e72c:  e4 03 00 91   mov	x4, sp
0x10146e730:  e1 03 17 aa   mov	x1, x23
0x10146e734:  02 00 80 52   mov	w2, #0
0x10146e738:  c5 04 80 52   mov	w5, #0x26
0x10146e73c:  ad 9a 1a 94   bl	j___os_log_impl
0x10146e740:  ; loc_10146e740
0x10146e740:  88 85 00 b0   adrp	x8, 0x10251f000
0x10146e744:  00 e1 20 91   add	x0, x8, #0x838 ; class_CLHeleDevice
0x10146e748:  2d 00 00 14   b	loc_10146e7fc ; ⤵ 0xb4
0x10146e74c:  ; loc_10146e74c
0x10146e74c:  08 79 00 d0   adrp	x8, 0x102390000
0x10146e750:  08 f5 41 f9   ldr	x8, [x8, #0x3e8] ; __got._SPBeaconTypeAccessory
0x10146e754:  02 01 40 f9   ldr	x2, [x8]
0x10146e758:  e0 03 16 aa   mov	x0, x22
0x10146e75c:  81 20 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x10146e760:  b8 88 00 90   adrp	x24, 0x102582000
0x10146e764:  08 3b 46 f9   ldr	x8, [x24, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146e768:  1f 05 00 b1   cmn	x8, #0x1
0x10146e76c:  20 07 00 34   cbz	w0, loc_10146e850 ; ⤵ 0xe4
0x10146e770:  81 10 00 54   b.ne	loc_10146e980 ; ⤵ 0x210
0x10146e774:  a8 88 00 90   adrp	x8, 0x102582000
0x10146e778:  17 3d 46 f9   ldr	x23, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146e77c:  e0 03 17 aa   mov	x0, x23
0x10146e780:  01 00 80 52   mov	w1, #0
0x10146e784:  db 9e 1a 94   bl	j__os_log_type_enabled
0x10146e788:  60 03 00 34   cbz	w0, loc_10146e7f4 ; ⤵ 0x6c
0x10146e78c:  e0 03 13 aa   mov	x0, x19
0x10146e790:  a2 a8 00 94   bl	0x101498a18
0x10146e794:  28 44 00 d0   adrp	x8, 0x101cf4000
0x10146e798:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10146e79c:  e0 03 00 bd   str	s0, [sp]
0x10146e7a0:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10146e7a4:  48 04 81 52   mov	w8, #0x822
0x10146e7a8:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10146e7ac:  08 52 00 90   adrp	x8, 0x101eae000
0x10146e7b0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146e7b4:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10146e7b8:  28 08 81 52   mov	w8, #0x841
0x10146e7bc:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146e7c0:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10146e7c4:  48 08 81 52   mov	w8, #0x842
0x10146e7c8:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10146e7cc:  f6 e3 01 f8   stur	x22, [sp, #0x1e]
0x10146e7d0:  80 5c ff d0   adrp	x0, 0x100000000
0x10146e7d4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146e7d8:  63 70 00 f0   adrp	x3, 0x10227d000
0x10146e7dc:  63 3c 27 91   add	x3, x3, #0x9cf ; "{\"msg%{public}.0s\":\"#durian creating device\", \"uuid\":%{private, location:escape_only}@, \"type\":%{public, location:escape_only}@}"
0x10146e7e0:  e4 03 00 91   mov	x4, sp
0x10146e7e4:  e1 03 17 aa   mov	x1, x23
0x10146e7e8:  02 00 80 52   mov	w2, #0
0x10146e7ec:  c5 04 80 52   mov	w5, #0x26
0x10146e7f0:  80 9a 1a 94   bl	j___os_log_impl
0x10146e7f4:  ; loc_10146e7f4
0x10146e7f4:  88 85 00 d0   adrp	x8, 0x102520000
0x10146e7f8:  00 61 01 91   add	x0, x8, #0x58 ; class_CLHawkeyeDevice
0x10146e7fc:  ; loc_10146e7fc
0x10146e7fc:  95 9d 1a 94   bl	j__objc_alloc
0x10146e800:  83 8a 40 f9   ldr	x3, [x20, #0x110]
0x10146e804:  84 6e 40 f9   ldr	x4, [x20, #0xd8]
0x10146e808:  86 9a 40 f9   ldr	x6, [x20, #0x130]
0x10146e80c:  e2 03 13 aa   mov	x2, x19
0x10146e810:  e5 03 15 aa   mov	x5, x21
0x10146e814:  03 1a 1b 94   bl	j__objc_msgSend(x0, "initWithUUID:queue:centralManager:hardwareFaultStatusCoordinator:systemUtils:")
0x10146e818:  9a 9d 1a 94   bl	j__objc_autorelease
0x10146e81c:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10146e820:  29 79 00 90   adrp	x9, 0x102392000
0x10146e824:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10146e828:  29 01 40 f9   ldr	x9, [x9]
0x10146e82c:  3f 01 08 eb   cmp	x9, x8
0x10146e830:  41 0b 00 54   b.ne	loc_10146e998 ; ⤵ 0x168
0x10146e834:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x10146e838:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x10146e83c:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x10146e840:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x10146e844:  fa 67 43 a9   ldp	x26, x25, [sp, #0x30]
0x10146e848:  ff 03 02 91   add	sp, sp, #0x80
0x10146e84c:  ff 0f 5f d6   retab
0x10146e850:  ; loc_10146e850
0x10146e850:  c1 09 00 54   b.ne	loc_10146e988 ; ⤵ 0x138
0x10146e854:  b9 88 00 90   adrp	x25, 0x102582000
0x10146e858:  34 3f 46 f9   ldr	x20, [x25, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146e85c:  e0 03 14 aa   mov	x0, x20
0x10146e860:  21 02 80 52   mov	w1, #0x11
0x10146e864:  a3 9e 1a 94   bl	j__os_log_type_enabled
0x10146e868:  37 44 00 d0   adrp	x23, 0x101cf4000
0x10146e86c:  15 52 00 90   adrp	x21, 0x101eae000
0x10146e870:  b5 e2 02 91   add	x21, x21, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146e874:  60 03 00 34   cbz	w0, loc_10146e8e0 ; ⤵ 0x6c
0x10146e878:  e0 03 13 aa   mov	x0, x19
0x10146e87c:  67 a8 00 94   bl	0x101498a18
0x10146e880:  e0 3e 44 fd   ldr	d0, [x23, #0x878]
0x10146e884:  e0 03 00 bd   str	s0, [sp]
0x10146e888:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10146e88c:  48 04 81 52   mov	w8, #0x822
0x10146e890:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10146e894:  f5 a3 00 f8   stur	x21, [sp, #0xa]
0x10146e898:  28 08 81 52   mov	w8, #0x841
0x10146e89c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146e8a0:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10146e8a4:  48 08 81 52   mov	w8, #0x842
0x10146e8a8:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10146e8ac:  f6 e3 01 f8   stur	x22, [sp, #0x1e]
0x10146e8b0:  80 5c ff d0   adrp	x0, 0x100000000
0x10146e8b4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146e8b8:  63 70 00 f0   adrp	x3, 0x10227d000
0x10146e8bc:  63 40 29 91   add	x3, x3, #0xa50 ; "{\"msg%{public}.0s\":\"#durian cannot create a durianDevice for missing SPBeacon\", \"uuid\":%{private, location:escape_only}@, \"type\":%{public, location:escape_only}@}"
0x10146e8c0:  e4 03 00 91   mov	x4, sp
0x10146e8c4:  e1 03 14 aa   mov	x1, x20
0x10146e8c8:  22 02 80 52   mov	w2, #0x11
0x10146e8cc:  c5 04 80 52   mov	w5, #0x26
0x10146e8d0:  48 9a 1a 94   bl	j___os_log_impl
0x10146e8d4:  08 3b 46 f9   ldr	x8, [x24, #0xc70]
0x10146e8d8:  1f 05 00 b1   cmn	x8, #0x1
0x10146e8dc:  a1 05 00 54   b.ne	loc_10146e990 ; ⤵ 0xb4
0x10146e8e0:  ; loc_10146e8e0
0x10146e8e0:  34 3f 46 f9   ldr	x20, [x25, #0xc78]
0x10146e8e4:  e0 03 14 aa   mov	x0, x20
0x10146e8e8:  86 9e 1a 94   bl	j__os_signpost_enabled
0x10146e8ec:  a0 03 00 34   cbz	w0, loc_10146e960 ; ⤵ 0x74
0x10146e8f0:  e0 03 13 aa   mov	x0, x19
0x10146e8f4:  49 a8 00 94   bl	0x101498a18
0x10146e8f8:  e0 3e 44 fd   ldr	d0, [x23, #0x878]
0x10146e8fc:  e0 03 00 bd   str	s0, [sp]
0x10146e900:  ff 07 00 b9   str	wzr, [sp, #0x4]

