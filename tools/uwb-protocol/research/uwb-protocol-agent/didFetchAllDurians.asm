
-[CLDurianDeviceManager didFetchAllDurians:]:
0x10146c498:  7f 23 03 d5   pacibsp
0x10146c49c:  e9 23 b9 6d   stp	d9, d8, [sp, #-0x70]!
0x10146c4a0:  fc 6f 01 a9   stp	x28, x27, [sp, #0x10]
0x10146c4a4:  fa 67 02 a9   stp	x26, x25, [sp, #0x20]
0x10146c4a8:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x10146c4ac:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10146c4b0:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10146c4b4:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10146c4b8:  fd 83 01 91   add	fp, sp, #0x60
0x10146c4bc:  ff c3 0b d1   sub	sp, sp, #0x2f0
0x10146c4c0:  e2 4f 00 f9   str	x2, [sp, #0x98]
0x10146c4c4:  e0 57 00 f9   str	x0, [sp, #0xa8]
0x10146c4c8:  28 79 00 d0   adrp	x8, 0x102392000
0x10146c4cc:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10146c4d0:  08 01 40 f9   ldr	x8, [x8]
0x10146c4d4:  a8 83 18 f8   stur	x8, [fp, #-0x78]
0x10146c4d8:  a8 88 00 d0   adrp	x8, 0x102582000
0x10146c4dc:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146c4e0:  1f 05 00 b1   cmn	x8, #0x1
0x10146c4e4:  a1 5c 00 54   b.ne	loc_10146d078 ; ⤵ 0xb94
0x10146c4e8:  a8 88 00 d0   adrp	x8, 0x102582000
0x10146c4ec:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146c4f0:  e0 03 14 aa   mov	x0, x20
0x10146c4f4:  41 00 80 52   mov	w1, #0x2
0x10146c4f8:  7e a7 1a 94   bl	j__os_log_type_enabled
0x10146c4fc:  20 03 00 34   cbz	w0, loc_10146c560 ; ⤵ 0x64
0x10146c500:  e0 4f 40 f9   ldr	x0, [sp, #0x98]
0x10146c504:  77 d4 1a 94   bl	j__objc_msgSend(x0, "count")
0x10146c508:  48 44 00 90   adrp	x8, 0x101cf4000
0x10146c50c:  00 79 44 fd   ldr	d0, [x8, #0x8f0]
0x10146c510:  e0 03 02 bd   str	s0, [sp, #0x200]
0x10146c514:  ff 07 02 b9   str	wzr, [sp, #0x204]
0x10146c518:  48 04 81 52   mov	w8, #0x822
0x10146c51c:  e8 13 04 79   strh	w8, [sp, #0x208]
0x10146c520:  e8 03 08 91   add	x8, sp, #0x200
0x10146c524:  09 52 00 d0   adrp	x9, 0x101eae000
0x10146c528:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146c52c:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x10146c530:  48 80 80 52   mov	w8, #0x402
0x10146c534:  e8 27 04 79   strh	w8, [sp, #0x212]
0x10146c538:  e0 17 02 b9   str	w0, [sp, #0x214]
0x10146c53c:  a0 5c ff 90   adrp	x0, 0x100000000
0x10146c540:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146c544:  83 70 00 90   adrp	x3, 0x10227c000
0x10146c548:  63 c0 2f 91   add	x3, x3, #0xbf0 ; "{\"msg%{public}.0s\":\"#durian fetchall beacons\", \"count\":%{public}d}"
0x10146c54c:  e4 03 08 91   add	x4, sp, #0x200
0x10146c550:  e1 03 14 aa   mov	x1, x20
0x10146c554:  42 00 80 52   mov	w2, #0x2
0x10146c558:  05 03 80 52   mov	w5, #0x18
0x10146c55c:  25 a3 1a 94   bl	j___os_log_impl
0x10146c560:  ; loc_10146c560
0x10146c560:  00 e4 00 6f   movi	v0.2d, #0
0x10146c564:  e0 03 0b ad   stp	q0, q0, [sp, #0x160]
0x10146c568:  e0 03 0a ad   stp	q0, q0, [sp, #0x140]
0x10146c56c:  e2 03 05 91   add	x2, sp, #0x140
0x10146c570:  a3 e3 03 d1   sub	x3, fp, #0xf8
0x10146c574:  e0 4f 40 f9   ldr	x0, [sp, #0x98]
0x10146c578:  04 02 80 52   mov	w4, #0x10
0x10146c57c:  61 d4 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10146c580:  e0 4b 00 f9   str	x0, [sp, #0x90]
0x10146c584:  e8 4b 40 f9   ldr	x8, [sp, #0x90]
0x10146c588:  48 29 00 b4   cbz	x8, loc_10146cab0 ; ⤵ 0x528
0x10146c58c:  ff 53 00 f9   str	xzr, [sp, #0xa0]
0x10146c590:  ff 2b 00 f9   str	xzr, [sp, #0x50]
0x10146c594:  ff 63 00 b9   str	wzr, [sp, #0x60]
0x10146c598:  ff 8f 00 b9   str	wzr, [sp, #0x8c]
0x10146c59c:  e8 ab 40 f9   ldr	x8, [sp, #0x150]
0x10146c5a0:  29 79 00 90   adrp	x9, 0x102390000
0x10146c5a4:  29 f9 41 f9   ldr	x9, [x9, #0x3f0] ; __got._SPBeaconTypeDurian
0x10146c5a8:  2a 79 00 90   adrp	x10, 0x102390000
0x10146c5ac:  4a f5 41 f9   ldr	x10, [x10, #0x3e8] ; __got._SPBeaconTypeAccessory
0x10146c5b0:  2b 79 00 90   adrp	x11, 0x102390000
0x10146c5b4:  6b fd 41 f9   ldr	x11, [x11, #0x3f8] ; __got._SPBeaconTypeHele
0x10146c5b8:  08 01 40 f9   ldr	x8, [x8]
0x10146c5bc:  e8 43 00 f9   str	x8, [sp, #0x80]
0x10146c5c0:  28 01 40 f9   ldr	x8, [x9]
0x10146c5c4:  e8 3f 00 f9   str	x8, [sp, #0x78]
0x10146c5c8:  48 01 40 f9   ldr	x8, [x10]
0x10146c5cc:  e8 2f 00 f9   str	x8, [sp, #0x58]
0x10146c5d0:  68 01 40 f9   ldr	x8, [x11]
0x10146c5d4:  e8 27 00 f9   str	x8, [sp, #0x48]
0x10146c5d8:  68 3a 00 90   adrp	x8, 0x101bb8000
0x10146c5dc:  00 f1 42 fd   ldr	d0, [x8, #0x5e0]
0x10146c5e0:  e0 07 80 3d   str	q0, [sp, #0x10]
0x10146c5e4:  39 08 81 52   mov	w25, #0x841
0x10146c5e8:  56 08 81 52   mov	w22, #0x842
0x10146c5ec:  48 44 00 90   adrp	x8, 0x101cf4000
0x10146c5f0:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10146c5f4:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x10146c5f8:  48 44 00 90   adrp	x8, 0x101cf4000
0x10146c5fc:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10146c600:  e0 0f 80 3d   str	q0, [sp, #0x30]
0x10146c604:  ; loc_10146c604
0x10146c604:  13 00 80 d2   mov	x19, #0
0x10146c608:  ; loc_10146c608
0x10146c608:  e8 ab 40 f9   ldr	x8, [sp, #0x150]
0x10146c60c:  08 01 40 f9   ldr	x8, [x8]
0x10146c610:  e9 43 40 f9   ldr	x9, [sp, #0x80]
0x10146c614:  1f 01 09 eb   cmp	x8, x9
0x10146c618:  60 00 00 54   b.eq	loc_10146c624 ; ⤵ 0xc
0x10146c61c:  e0 4f 40 f9   ldr	x0, [sp, #0x98]
0x10146c620:  38 a6 1a 94   bl	j__objc_enumerationMutation
0x10146c624:  ; loc_10146c624
0x10146c624:  e8 a7 40 f9   ldr	x8, [sp, #0x148]
0x10146c628:  1c 79 73 f8   ldr	x28, [x8, x19, lsl #0x3]
0x10146c62c:  e0 03 1c aa   mov	x0, x28
0x10146c630:  6c bd 1b 94   bl	j__objc_msgSend(x0, "type")
0x10146c634:  e2 3f 40 f9   ldr	x2, [sp, #0x78]
0x10146c638:  ca 28 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x10146c63c:  a0 00 00 34   cbz	w0, loc_10146c650 ; ⤵ 0x14
0x10146c640:  e8 8f 40 b9   ldr	w8, [sp, #0x8c]
0x10146c644:  08 05 00 11   add	w8, w8, #0x1
0x10146c648:  e8 8f 00 b9   str	w8, [sp, #0x8c]
0x10146c64c:  12 00 00 14   b	loc_10146c694 ; ⤵ 0x48
0x10146c650:  ; loc_10146c650
0x10146c650:  e0 03 1c aa   mov	x0, x28
0x10146c654:  63 bd 1b 94   bl	j__objc_msgSend(x0, "type")
0x10146c658:  e2 2f 40 f9   ldr	x2, [sp, #0x58]
0x10146c65c:  c1 28 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x10146c660:  a0 00 00 34   cbz	w0, loc_10146c674 ; ⤵ 0x14
0x10146c664:  e8 63 40 b9   ldr	w8, [sp, #0x60]
0x10146c668:  08 05 00 11   add	w8, w8, #0x1
0x10146c66c:  e8 63 00 b9   str	w8, [sp, #0x60]
0x10146c670:  09 00 00 14   b	loc_10146c694 ; ⤵ 0x24
0x10146c674:  ; loc_10146c674
0x10146c674:  e0 03 1c aa   mov	x0, x28
0x10146c678:  5a bd 1b 94   bl	j__objc_msgSend(x0, "type")
0x10146c67c:  e2 27 40 f9   ldr	x2, [sp, #0x48]
0x10146c680:  b8 28 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x10146c684:  e0 05 00 34   cbz	w0, loc_10146c740 ; ⤵ 0xbc
0x10146c688:  e8 57 40 b9   ldr	w8, [sp, #0x54]
0x10146c68c:  08 05 00 11   add	w8, w8, #0x1
0x10146c690:  e8 57 00 b9   str	w8, [sp, #0x54]
0x10146c694:  ; loc_10146c694
0x10146c694:  e8 57 40 f9   ldr	x8, [sp, #0xa8]
0x10146c698:  14 5d 40 f9   ldr	x20, [x8, #0xb8]
0x10146c69c:  e0 03 1c aa   mov	x0, x28
0x10146c6a0:  e0 0f 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x10146c6a4:  e2 03 00 aa   mov	x2, x0
0x10146c6a8:  e0 03 14 aa   mov	x0, x20
0x10146c6ac:  f5 41 1b 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10146c6b0:  1f 00 00 f1   cmp	x0, #0
0x10146c6b4:  f4 17 9f 1a   cset	w20, eq
0x10146c6b8:  e8 a7 40 b9   ldr	w8, [sp, #0xa4]
0x10146c6bc:  08 15 88 1a   cinc	w8, w8, eq
0x10146c6c0:  e8 a7 00 b9   str	w8, [sp, #0xa4]
0x10146c6c4:  e0 57 40 f9   ldr	x0, [sp, #0xa8]
0x10146c6c8:  e2 03 1c aa   mov	x2, x28
0x10146c6cc:  85 f7 1a 94   bl	j__objc_msgSend(x0, "fetchOrCreateDeviceWithSimpleBeacon:")
0x10146c6d0:  fb 03 00 aa   mov	x27, x0
0x10146c6d4:  e2 03 1c aa   mov	x2, x28
0x10146c6d8:  fa 71 1b 94   bl	j__objc_msgSend(x0, "setBeacon:")
0x10146c6dc:  b4 00 00 35   cbnz	w20, loc_10146c6f0 ; ⤵ 0x14
0x10146c6e0:  e8 57 40 f9   ldr	x8, [sp, #0xa8]
0x10146c6e4:  08 31 42 39   ldrb	w8, [x8, #0x8c]
0x10146c6e8:  a8 0b 00 36   tbz	w8, #0, loc_10146c85c ; ⤵ 0x174
0x10146c6ec:  63 00 00 14   b	loc_10146c878 ; ⤵ 0x18c
0x10146c6f0:  ; loc_10146c6f0
0x10146c6f0:  e0 03 1b aa   mov	x0, x27
0x10146c6f4:  9b 06 1b 94   bl	j__objc_msgSend(x0, "groupUuid")
0x10146c6f8:  c0 02 00 b4   cbz	x0, loc_10146c750 ; ⤵ 0x58
0x10146c6fc:  28 79 00 b0   adrp	x8, 0x102391000
0x10146c700:  17 c1 45 f9   ldr	x23, [x8, #0xb80] ; __got._OBJC_CLASS_$_NSString
0x10146c704:  e0 03 1b aa   mov	x0, x27
0x10146c708:  96 06 1b 94   bl	j__objc_msgSend(x0, "groupUuid")
0x10146c70c:  8d dd 1a 94   bl	j__objc_msgSend(x0, "description")
0x10146c710:  02 01 80 52   mov	w2, #0x8
0x10146c714:  5b b1 1b 94   bl	j__objc_msgSend(x0, "substringToIndex:")
0x10146c718:  f4 03 00 aa   mov	x20, x0
0x10146c71c:  e0 03 1b aa   mov	x0, x27
0x10146c720:  88 06 1b 94   bl	j__objc_msgSend(x0, "groupPartNumber")
0x10146c724:  f4 03 00 a9   stp	x20, x0, [sp]
0x10146c728:  e0 03 17 aa   mov	x0, x23
0x10146c72c:  a2 80 00 90   adrp	x2, 0x102480000
0x10146c730:  42 c0 1f 91   add	x2, x2, #0x7f0 ; "%@:%d"
0x10146c734:  73 ae 1b 94   bl	j__objc_msgSend(x0, "stringWithFormat:")
0x10146c738:  fa 03 00 aa   mov	x26, x0
0x10146c73c:  07 00 00 14   b	loc_10146c758 ; ⤵ 0x1c
0x10146c740:  ; loc_10146c740
0x10146c740:  e8 53 40 b9   ldr	w8, [sp, #0x50]
0x10146c744:  08 05 00 11   add	w8, w8, #0x1
0x10146c748:  e8 53 00 b9   str	w8, [sp, #0x50]
0x10146c74c:  ba 00 00 14   b	loc_10146ca34 ; ⤵ 0x2e8
0x10146c750:  ; loc_10146c750
0x10146c750:  5a 81 00 f0   adrp	x26, 0x102497000
0x10146c754:  5a 43 0f 91   add	x26, x26, #0x3d0 ; ""
0x10146c758:  ; loc_10146c758
0x10146c758:  a8 88 00 d0   adrp	x8, 0x102582000
0x10146c75c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146c760:  1f 05 00 b1   cmn	x8, #0x1
0x10146c764:  a1 17 00 54   b.ne	loc_10146ca58 ; ⤵ 0x2f4
0x10146c768:  ; loc_10146c768
0x10146c768:  a8 88 00 d0   adrp	x8, 0x102582000
0x10146c76c:  18 3d 46 f9   ldr	x24, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146c770:  e0 03 18 aa   mov	x0, x24
0x10146c774:  01 00 80 52   mov	w1, #0
0x10146c778:  de a6 1a 94   bl	j__os_log_type_enabled
0x10146c77c:  00 07 00 34   cbz	w0, loc_10146c85c ; ⤵ 0xe0
0x10146c780:  e0 03 1c aa   mov	x0, x28
0x10146c784:  a7 0f 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x10146c788:  a4 b0 00 94   bl	0x101498a18
0x10146c78c:  f9 03 00 aa   mov	x25, x0
0x10146c790:  e0 03 1c aa   mov	x0, x28
0x10146c794:  a3 0f 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x10146c798:  f7 03 00 aa   mov	x23, x0
0x10146c79c:  e0 03 1c aa   mov	x0, x28
0x10146c7a0:  a0 3d 1b 94   bl	j__objc_msgSend(x0, "name")
0x10146c7a4:  f4 03 00 aa   mov	x20, x0
0x10146c7a8:  e0 03 1b aa   mov	x0, x27
0x10146c7ac:  a5 4f 1b 94   bl	j__objc_msgSend(x0, "prettyBeaconType")
0x10146c7b0:  f6 03 00 aa   mov	x22, x0
0x10146c7b4:  e0 03 1c aa   mov	x0, x28
0x10146c7b8:  6a b6 1b 94   bl	j__objc_msgSend(x0, "systemVersion")
0x10146c7bc:  f5 03 00 aa   mov	x21, x0
0x10146c7c0:  e0 03 1c aa   mov	x0, x28
0x10146c7c4:  17 d0 1a 94   bl	j__objc_msgSend(x0, "connectableDeviceCount")
0x10146c7c8:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x10146c7cc:  e0 03 02 bd   str	s0, [sp, #0x200]
0x10146c7d0:  ff 07 02 b9   str	wzr, [sp, #0x204]
0x10146c7d4:  48 04 81 52   mov	w8, #0x822
0x10146c7d8:  e8 13 04 79   strh	w8, [sp, #0x208]
0x10146c7dc:  e8 03 08 91   add	x8, sp, #0x200
0x10146c7e0:  09 52 00 d0   adrp	x9, 0x101eae000
0x10146c7e4:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146c7e8:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x10146c7ec:  29 08 81 52   mov	w9, #0x841
0x10146c7f0:  e9 27 04 79   strh	w9, [sp, #0x212]
0x10146c7f4:  19 41 01 f8   stur	x25, [x8, #0x14]
0x10146c7f8:  e9 3b 04 79   strh	w9, [sp, #0x21c]
0x10146c7fc:  17 e1 01 f8   stur	x23, [x8, #0x1e]
0x10146c800:  e9 4f 04 79   strh	w9, [sp, #0x226]
0x10146c804:  f4 17 01 f9   str	x20, [sp, #0x228]
0x10146c808:  39 08 81 52   mov	w25, #0x841
0x10146c80c:  e9 63 04 79   strh	w9, [sp, #0x230]
0x10146c810:  16 21 03 f8   stur	x22, [x8, #0x32]
0x10146c814:  49 08 81 52   mov	w9, #0x842
0x10146c818:  e9 77 04 79   strh	w9, [sp, #0x23a]
0x10146c81c:  15 c1 03 f8   stur	x21, [x8, #0x3c]
0x10146c820:  56 08 81 52   mov	w22, #0x842
0x10146c824:  e9 8b 04 79   strh	w9, [sp, #0x244]
0x10146c828:  1a 61 04 f8   stur	x26, [x8, #0x46]
0x10146c82c:  48 80 80 52   mov	w8, #0x402
0x10146c830:  e8 9f 04 79   strh	w8, [sp, #0x24e]
0x10146c834:  e0 53 02 b9   str	w0, [sp, #0x250]
0x10146c838:  e4 03 08 91   add	x4, sp, #0x200
0x10146c83c:  a0 5c ff 90   adrp	x0, 0x100000000
0x10146c840:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146c844:  e1 03 18 aa   mov	x1, x24
0x10146c848:  02 00 80 52   mov	w2, #0
0x10146c84c:  83 70 00 90   adrp	x3, 0x10227c000
0x10146c850:  63 cc 30 91   add	x3, x3, #0xc33 ; "{\"msg%{public}.0s\":\"#durian fetchall new\", \"item\":%{private, location:escape_only}@, \"full\":%{private, location:escape_only}@, \"name\":%{private, location:escape_only}@, \"type\":%{private, location:esca"...
0x10146c854:  85 0a 80 52   mov	w5, #0x54
0x10146c858:  66 a2 1a 94   bl	j___os_log_impl
0x10146c85c:  ; loc_10146c85c
0x10146c85c:  e0 03 1b aa   mov	x0, x27
0x10146c860:  f0 25 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x10146c864:  a0 00 00 34   cbz	w0, loc_10146c878 ; ⤵ 0x14
0x10146c868:  e8 57 40 f9   ldr	x8, [sp, #0xa8]
0x10146c86c:  00 59 40 f9   ldr	x0, [x8, #0xb0]
0x10146c870:  e2 03 1c aa   mov	x2, x28
0x10146c874:  53 a6 1b 94   bl	j__objc_msgSend(x0, "startMonitoringAirTagForFirmwareUpdate:")
0x10146c878:  ; loc_10146c878
0x10146c878:  e0 03 1b aa   mov	x0, x27
0x10146c87c:  39 06 1b 94   bl	j__objc_msgSend(x0, "groupUuid")
0x10146c880:  1f 00 00 f1   cmp	x0, #0
0x10146c884:  e8 a3 40 b9   ldr	w8, [sp, #0xa0]
0x10146c888:  08 05 88 1a   cinc	w8, w8, ne
0x10146c88c:  e8 a3 00 b9   str	w8, [sp, #0xa0]
0x10146c890:  e0 03 1b aa   mov	x0, x27
0x10146c894:  6b 4b 1b 94   bl	j__objc_msgSend(x0, "pendingDisconnect")
0x10146c898:  00 07 00 34   cbz	w0, loc_10146c978 ; ⤵ 0xe0
0x10146c89c:  e0 03 1b aa   mov	x0, x27
0x10146c8a0:  48 c6 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10146c8a4:  e2 03 00 aa   mov	x2, x0
0x10146c8a8:  e0 57 40 f9   ldr	x0, [sp, #0xa8]
0x10146c8ac:  6d c4 1a 94   bl	j__objc_msgSend(x0, "cancelDisconnectionOnMissingBeaconWithUUID:")
0x10146c8b0:  a8 88 00 d0   adrp	x8, 0x102582000
0x10146c8b4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146c8b8:  1f 05 00 b1   cmn	x8, #0x1
0x10146c8bc:  61 0c 00 54   b.ne	loc_10146ca48 ; ⤵ 0x18c
0x10146c8c0:  ; loc_10146c8c0
0x10146c8c0:  a8 88 00 d0   adrp	x8, 0x102582000
0x10146c8c4:  18 3d 46 f9   ldr	x24, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146c8c8:  e0 03 18 aa   mov	x0, x24
0x10146c8cc:  01 00 80 52   mov	w1, #0
0x10146c8d0:  88 a6 1a 94   bl	j__os_log_type_enabled
0x10146c8d4:  20 05 00 34   cbz	w0, loc_10146c978 ; ⤵ 0xa4
0x10146c8d8:  e0 03 1b aa   mov	x0, x27
0x10146c8dc:  39 c6 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10146c8e0:  4e b0 00 94   bl	0x101498a18
0x10146c8e4:  f4 03 00 aa   mov	x20, x0
0x10146c8e8:  e0 03 1b aa   mov	x0, x27
0x10146c8ec:  1d c0 1a 94   bl	j__objc_msgSend(x0, "beacon")
0x10146c8f0:  4c 3d 1b 94   bl	j__objc_msgSend(x0, "name")
0x10146c8f4:  f5 03 00 aa   mov	x21, x0
0x10146c8f8:  e0 03 1b aa   mov	x0, x27
0x10146c8fc:  01 27 1b 94   bl	j__objc_msgSend(x0, "isConnected")
0x10146c900:  1f 00 00 71   cmp	w0, #0
0x10146c904:  e0 0b c0 3d   ldr	q0, [sp, #0x20]
0x10146c908:  e0 03 02 bd   str	s0, [sp, #0x200]
0x10146c90c:  68 44 00 f0   adrp	x8, 0x101cfb000
0x10146c910:  08 39 10 91   add	x8, x8, #0x40e ; "NO"
0x10146c914:  69 44 00 f0   adrp	x9, 0x101cfb000
0x10146c918:  29 29 10 91   add	x9, x9, #0x40a ; "YES"
0x10146c91c:  28 11 88 9a   csel	x8, x9, x8, ne
0x10146c920:  ff 07 02 b9   str	wzr, [sp, #0x204]
0x10146c924:  4b 04 81 52   mov	w11, #0x822
0x10146c928:  eb 13 04 79   strh	w11, [sp, #0x208]
0x10146c92c:  e9 03 08 91   add	x9, sp, #0x200
0x10146c930:  0a 52 00 d0   adrp	x10, 0x101eae000
0x10146c934:  4a e1 02 91   add	x10, x10, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146c938:  2a a1 00 f8   stur	x10, [x9, #0xa]
0x10146c93c:  f9 27 04 79   strh	w25, [sp, #0x212]
0x10146c940:  34 41 01 f8   stur	x20, [x9, #0x14]
0x10146c944:  f6 3b 04 79   strh	w22, [sp, #0x21c]
0x10146c948:  35 e1 01 f8   stur	x21, [x9, #0x1e]
0x10146c94c:  eb 4f 04 79   strh	w11, [sp, #0x226]
0x10146c950:  e8 17 01 f9   str	x8, [sp, #0x228]
0x10146c954:  e4 03 08 91   add	x4, sp, #0x200
0x10146c958:  a0 5c ff 90   adrp	x0, 0x100000000
0x10146c95c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146c960:  e1 03 18 aa   mov	x1, x24
0x10146c964:  02 00 80 52   mov	w2, #0
0x10146c968:  83 70 00 90   adrp	x3, 0x10227c000
0x10146c96c:  63 c4 35 91   add	x3, x3, #0xd71 ; "{\"msg%{public}.0s\":\"#durian fetchall found\", \"item\":%{private, location:escape_only}@, \"name\":%{public, location:escape_only}@, \"isConnected\":%{public, location:escape_only}s}"
0x10146c970:  05 06 80 52   mov	w5, #0x30
0x10146c974:  1f a2 1a 94   bl	j___os_log_impl
0x10146c978:  ; loc_10146c978
0x10146c978:  e0 03 1b aa   mov	x0, x27
0x10146c97c:  b1 28 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x10146c980:  c0 00 00 34   cbz	w0, loc_10146c998 ; ⤵ 0x18
0x10146c984:  e8 57 40 f9   ldr	x8, [sp, #0xa8]
0x10146c988:  00 59 40 f9   ldr	x0, [x8, #0xb0]
0x10146c98c:  e2 03 1b aa   mov	x2, x27
0x10146c990:  24 a6 1b 94   bl	j__objc_msgSend(x0, "startMonitoringDeviceForFirmwareUpdate:")
0x10146c994:  28 00 00 14   b	loc_10146ca34 ; ⤵ 0xa0
0x10146c998:  ; loc_10146c998
0x10146c998:  a8 88 00 d0   adrp	x8, 0x102582000
0x10146c99c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146c9a0:  1f 05 00 b1   cmn	x8, #0x1
0x10146c9a4:  61 05 00 54   b.ne	loc_10146ca50 ; ⤵ 0xac
0x10146c9a8:  ; loc_10146c9a8
0x10146c9a8:  a8 88 00 d0   adrp	x8, 0x102582000
0x10146c9ac:  17 3d 46 f9   ldr	x23, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146c9b0:  e0 03 17 aa   mov	x0, x23
0x10146c9b4:  41 00 80 52   mov	w1, #0x2
0x10146c9b8:  4e a6 1a 94   bl	j__os_log_type_enabled
0x10146c9bc:  c0 03 00 34   cbz	w0, loc_10146ca34 ; ⤵ 0x78
0x10146c9c0:  e0 03 1b aa   mov	x0, x27
0x10146c9c4:  ff c5 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10146c9c8:  14 b0 00 94   bl	0x101498a18
0x10146c9cc:  f4 03 00 aa   mov	x20, x0
0x10146c9d0:  e0 03 1b aa   mov	x0, x27
0x10146c9d4:  9b 28 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x10146c9d8:  e0 0f c0 3d   ldr	q0, [sp, #0x30]
0x10146c9dc:  e0 03 02 bd   str	s0, [sp, #0x200]
0x10146c9e0:  ff 07 02 b9   str	wzr, [sp, #0x204]
0x10146c9e4:  48 04 81 52   mov	w8, #0x822
0x10146c9e8:  e8 13 04 79   strh	w8, [sp, #0x208]
0x10146c9ec:  e8 03 08 91   add	x8, sp, #0x200
0x10146c9f0:  09 52 00 d0   adrp	x9, 0x101eae000
0x10146c9f4:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146c9f8:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x10146c9fc:  f9 27 04 79   strh	w25, [sp, #0x212]
0x10146ca00:  14 41 01 f8   stur	x20, [x8, #0x14]
0x10146ca04:  29 80 80 52   mov	w9, #0x401
0x10146ca08:  e9 3b 04 79   strh	w9, [sp, #0x21c]
0x10146ca0c:  00 e1 01 b8   stur	w0, [x8, #0x1e]
0x10146ca10:  e4 03 08 91   add	x4, sp, #0x200
0x10146ca14:  a0 5c ff 90   adrp	x0, 0x100000000
0x10146ca18:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146ca1c:  e1 03 17 aa   mov	x1, x23
0x10146ca20:  42 00 80 52   mov	w2, #0x2
0x10146ca24:  83 70 00 90   adrp	x3, 0x10227c000
0x10146ca28:  63 84 38 91   add	x3, x3, #0xe21 ; "{\"msg%{public}.0s\":\"#hawkeye #firmwareUpdate Not going to monitoring device for firmware updates\", \"item\":%{private, location:escape_only}@, \"isHawkeyeAcessory\":%{private}hhd}"
0x10146ca2c:  45 04 80 52   mov	w5, #0x22
0x10146ca30:  f0 a1 1a 94   bl	j___os_log_impl
0x10146ca34:  ; loc_10146ca34
0x10146ca34:  73 06 00 91   add	x19, x19, #0x1
0x10146ca38:  e8 4b 40 f9   ldr	x8, [sp, #0x90]
0x10146ca3c:  1f 01 13 eb   cmp	x8, x19
0x10146ca40:  41 de ff 54   b.ne	loc_10146c608 ; ⤴ -0x438
0x10146ca44:  07 00 00 14   b	loc_10146ca60 ; ⤵ 0x1c
0x10146ca48:  ; loc_10146ca48
0x10146ca48:  e5 8d 1a 94   bl	0x101b101dc
0x10146ca4c:  9d ff ff 17   b	loc_10146c8c0 ; ⤴ -0x18c
0x10146ca50:  ; loc_10146ca50
0x10146ca50:  e3 8d 1a 94   bl	0x101b101dc
0x10146ca54:  d5 ff ff 17   b	loc_10146c9a8 ; ⤴ -0xac
0x10146ca58:  ; loc_10146ca58
0x10146ca58:  e1 8d 1a 94   bl	0x101b101dc
0x10146ca5c:  43 ff ff 17   b	loc_10146c768 ; ⤴ -0x2f4
0x10146ca60:  ; loc_10146ca60
0x10146ca60:  e2 03 05 91   add	x2, sp, #0x140
0x10146ca64:  a3 e3 03 d1   sub	x3, fp, #0xf8
0x10146ca68:  e0 4f 40 f9   ldr	x0, [sp, #0x98]
0x10146ca6c:  04 02 80 52   mov	w4, #0x10
0x10146ca70:  24 d3 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10146ca74:  e0 4b 00 f9   str	x0, [sp, #0x90]
0x10146ca78:  e8 4b 40 f9   ldr	x8, [sp, #0x90]
0x10146ca7c:  48 dc ff b5   cbnz	x8, loc_10146c604 ; ⤴ -0x478
0x10146ca80:  08 48 88 52   mov	w8, #0x4240
0x10146ca84:  e8 01 a0 72   movk	w8, #0xf, lsl #0x10

