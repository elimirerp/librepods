0x101463600:  e0 03 13 aa   mov	x0, x19
0x101463604:  97 d0 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101463608:  08 c7 c3 39   ldrsb	w8, [x24, #0xf1]
0x10146360c:  89 39 00 90   adrp	x9, 0x101b93000
0x101463610:  20 e9 47 fd   ldr	d0, [x9, #0xfd0]
0x101463614:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463618:  49 04 81 52   mov	w9, #0x822
0x10146361c:  e9 53 06 79   strh	w9, [sp, #0x328]
0x101463620:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463624:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463628:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x10146362c:  eb 83 0c 91   add	x11, sp, #0x320
0x101463630:  69 a1 00 f8   stur	x9, [x11, #0xa]
0x101463634:  29 08 81 52   mov	w9, #0x841
0x101463638:  e9 67 06 79   strh	w9, [sp, #0x332]
0x10146363c:  75 41 01 f8   stur	x21, [x11, #0x14]
0x101463640:  f5 88 00 f0   adrp	x21, 0x102582000
0x101463644:  4a 80 80 52   mov	w10, #0x402
0x101463648:  ea 7b 06 79   strh	w10, [sp, #0x33c]
0x10146364c:  76 e1 01 b8   stur	w22, [x11, #0x1e]
0x101463650:  e9 87 06 79   strh	w9, [sp, #0x342]
0x101463654:  60 41 02 f8   stur	x0, [x11, #0x24]
0x101463658:  ea 9b 06 79   strh	w10, [sp, #0x34c]
0x10146365c:  68 e1 02 b8   stur	w8, [x11, #0x2e]
0x101463660:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463664:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463668:  a3 70 00 d0   adrp	x3, 0x102279000
0x10146366c:  63 30 20 91   add	x3, x3, #0x80c ; "{\"msg%{public}.0s\":\"#durian #hawkeye didDiscoverCharacteristics\", \"item\":%{private, location:escape_only}@, \"count\":%{public}d, \"service\":%{private, location:escape_only}@, \"left\":%{public}d}"
0x101463670:  e4 83 0c 91   add	x4, sp, #0x320
0x101463674:  e1 03 14 aa   mov	x1, x20
0x101463678:  02 00 80 52   mov	w2, #0
0x10146367c:  45 06 80 52   mov	w5, #0x32
0x101463680:  dc c6 1a 94   bl	j___os_log_impl
0x101463684:  00 e4 00 6f   movi	v0.2d, #0
0x101463688:  e0 03 08 ad   stp	q0, q0, [sp, #0x100]
0x10146368c:  e0 03 07 ad   stp	q0, q0, [sp, #0xe0]
0x101463690:  e0 03 13 aa   mov	x0, x19
0x101463694:  e3 ea 1a 94   bl	j__objc_msgSend(x0, "characteristics")
0x101463698:  f6 03 00 aa   mov	x22, x0
0x10146369c:  e2 83 03 91   add	x2, sp, #0xe0
0x1014636a0:  e3 83 08 91   add	x3, sp, #0x220
0x1014636a4:  04 02 80 52   mov	w4, #0x10
0x1014636a8:  16 f8 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x1014636ac:  00 2a 00 b4   cbz	x0, loc_101463bec ; ⤵ 0x540
0x1014636b0:  f7 03 00 aa   mov	x23, x0
0x1014636b4:  7b 79 00 b0   adrp	x27, 0x102390000
0x1014636b8:  e8 7b 40 f9   ldr	x8, [sp, #0xf0] ; __got._CMVO2MaxInputsArray
0x1014636bc:  1a 01 40 f9   ldr	x26, [x8]
0x1014636c0:  88 44 00 b0   adrp	x8, 0x101cf4000
0x1014636c4:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x1014636c8:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x1014636cc:  39 08 81 52   mov	w25, #0x841
0x1014636d0:  88 44 00 b0   adrp	x8, 0x101cf4000
0x1014636d4:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x1014636d8:  e0 1b 80 3d   str	q0, [sp, #0x60]
0x1014636dc:  18 00 80 d2   mov	x24, #0
0x1014636e0:  e8 7b 40 f9   ldr	x8, [sp, #0xf0]
0x1014636e4:  08 01 40 f9   ldr	x8, [x8]
0x1014636e8:  1f 01 1a eb   cmp	x8, x26
0x1014636ec:  60 00 00 54   b.eq	loc_1014636f8 ; ⤵ 0xc
0x1014636f0:  e0 03 16 aa   mov	x0, x22
0x1014636f4:  03 ca 1a 94   bl	j__objc_enumerationMutation
0x1014636f8:  ; loc_1014636f8
0x1014636f8:  e8 77 40 f9   ldr	x8, [sp, #0xe8]
0x1014636fc:  14 79 78 f8   ldr	x20, [x8, x24, lsl #0x3]
0x101463700:  e0 03 14 aa   mov	x0, x20
0x101463704:  57 d0 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101463708:  f5 03 00 aa   mov	x21, x0
0x10146370c:  60 37 46 f9   ldr	x0, [x27, #0xc68]
0x101463710:  34 d2 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeConfigurationCharacteristicUUID")
0x101463714:  e2 03 00 aa   mov	x2, x0
0x101463718:  e0 03 15 aa   mov	x0, x21
0x10146371c:  91 4c 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101463720:  60 05 00 34   cbz	w0, loc_1014637cc ; ⤵ 0xac
0x101463724:  f5 88 00 f0   adrp	x21, 0x102582000
0x101463728:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146372c:  1f 05 00 b1   cmn	x8, #0x1
0x101463730:  81 23 00 54   b.ne	loc_101463ba0 ; ⤵ 0x470
0x101463734:  e8 88 00 f0   adrp	x8, 0x102582000
0x101463738:  1c 3d 46 f9   ldr	x28, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146373c:  e0 03 1c aa   mov	x0, x28
0x101463740:  01 00 80 52   mov	w1, #0
0x101463744:  eb ca 1a 94   bl	j__os_log_type_enabled
0x101463748:  00 03 00 34   cbz	w0, loc_1014637a8 ; ⤵ 0x60
0x10146374c:  e8 4f 40 f9   ldr	x8, [sp, #0x98]
0x101463750:  00 b1 40 f9   ldr	x0, [x8, #0x160]
0x101463754:  b1 d4 00 94   bl	0x101498a18
0x101463758:  e0 1f c0 3d   ldr	q0, [sp, #0x70]
0x10146375c:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463760:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463764:  48 04 81 52   mov	w8, #0x822
0x101463768:  e8 53 06 79   strh	w8, [sp, #0x328]
0x10146376c:  e8 83 0c 91   add	x8, sp, #0x320
0x101463770:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463774:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463778:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x10146377c:  f9 67 06 79   strh	w25, [sp, #0x332]
0x101463780:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101463784:  e4 83 0c 91   add	x4, sp, #0x320
0x101463788:  e0 5c ff b0   adrp	x0, 0x100000000
0x10146378c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"

