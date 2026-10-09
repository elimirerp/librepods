0x101463780:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101463784:  e4 83 0c 91   add	x4, sp, #0x320
0x101463788:  e0 5c ff b0   adrp	x0, 0x100000000
0x10146378c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463790:  e1 03 1c aa   mov	x1, x28
0x101463794:  02 00 80 52   mov	w2, #0
0x101463798:  a3 70 00 d0   adrp	x3, 0x102279000
0x10146379c:  63 30 23 91   add	x3, x3, #0x8cc ; "{\"msg%{public}.0s\":\"#durian #hawkeye Configuration Control Point\", \"item\":%{private, location:escape_only}@}"
0x1014637a0:  85 03 80 52   mov	w5, #0x1c
0x1014637a4:  93 c6 1a 94   bl	j___os_log_impl
0x1014637a8:  f3 4f 40 f9   ldr	x19, [sp, #0x98]
0x1014637ac:  e0 03 13 aa   mov	x0, x19
0x1014637b0:  e2 03 14 aa   mov	x2, x20
0x1014637b4:  6b a3 1b 94   bl	j__objc_msgSend(x0, "setHawkeyeConfigurationCharacteristic:")
0x1014637b8:  ; loc_1014637b8
0x1014637b8:  e0 03 13 aa   mov	x0, x19
0x1014637bc:  f9 6d 1b 94   bl	j__objc_msgSend(x0, "ownership")
0x1014637c0:  1f 04 00 f1   cmp	x0, #0x1
0x1014637c4:  20 17 00 54   b.eq	loc_101463aa8 ; ⤵ 0x2e4
0x1014637c8:  bc 00 00 14   b	loc_101463ab8 ; ⤵ 0x2f0
0x1014637cc:  e0 03 14 aa   mov	x0, x20
0x1014637d0:  24 d0 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x1014637d4:  f5 03 00 aa   mov	x21, x0
0x1014637d8:  60 37 46 f9   ldr	x0, [x27, #0xc68]
0x1014637dc:  19 d2 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeNonOwnerCharacteristicUUID")
0x1014637e0:  e2 03 00 aa   mov	x2, x0
0x1014637e4:  e0 03 15 aa   mov	x0, x21
0x1014637e8:  5e 4c 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x1014637ec:  c0 04 00 34   cbz	w0, loc_101463884 ; ⤵ 0x98
0x1014637f0:  f5 88 00 f0   adrp	x21, 0x102582000
0x1014637f4:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014637f8:  1f 05 00 b1   cmn	x8, #0x1
0x1014637fc:  61 1d 00 54   b.ne	loc_101463ba8 ; ⤵ 0x3ac
0x101463800:  ; loc_101463800
0x101463800:  e8 88 00 f0   adrp	x8, 0x102582000
0x101463804:  1c 3d 46 f9   ldr	x28, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101463808:  e0 03 1c aa   mov	x0, x28
0x10146380c:  01 00 80 52   mov	w1, #0
0x101463810:  b8 ca 1a 94   bl	j__os_log_type_enabled
0x101463814:  00 03 00 34   cbz	w0, loc_101463874 ; ⤵ 0x60
0x101463818:  e8 4f 40 f9   ldr	x8, [sp, #0x98]
0x10146381c:  00 b1 40 f9   ldr	x0, [x8, #0x160]
0x101463820:  7e d4 00 94   bl	0x101498a18
0x101463824:  e0 1f c0 3d   ldr	q0, [sp, #0x70]
0x101463828:  e0 23 03 bd   str	s0, [sp, #0x320]
0x10146382c:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463830:  48 04 81 52   mov	w8, #0x822
0x101463834:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463838:  e8 83 0c 91   add	x8, sp, #0x320
0x10146383c:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463840:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463844:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101463848:  f9 67 06 79   strh	w25, [sp, #0x332]
0x10146384c:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101463850:  e4 83 0c 91   add	x4, sp, #0x320
0x101463854:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463858:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146385c:  e1 03 1c aa   mov	x1, x28
0x101463860:  02 00 80 52   mov	w2, #0
0x101463864:  a3 70 00 d0   adrp	x3, 0x102279000
0x101463868:  63 e4 24 91   add	x3, x3, #0x939 ; "{\"msg%{public}.0s\":\"#durian #hawkeye Non-Owner Control Point\", \"item\":%{private, location:escape_only}@}"
0x10146386c:  85 03 80 52   mov	w5, #0x1c
0x101463870:  60 c6 1a 94   bl	j___os_log_impl
0x101463874:  ; loc_101463874
0x101463874:  e0 4f 40 f9   ldr	x0, [sp, #0x98]
0x101463878:  e2 03 14 aa   mov	x2, x20
0x10146387c:  51 a3 1b 94   bl	j__objc_msgSend(x0, "setHawkeyeNonOwnerCharacteristic:")
0x101463880:  8a 00 00 14   b	loc_101463aa8 ; ⤵ 0x228
0x101463884:  ; loc_101463884
0x101463884:  e0 03 14 aa   mov	x0, x20
0x101463888:  f6 cf 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10146388c:  f5 03 00 aa   mov	x21, x0
0x101463890:  60 37 46 f9   ldr	x0, [x27, #0xc68]
0x101463894:  f3 d1 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePairedOwnerInformationCharacteristicUUID")
0x101463898:  e2 03 00 aa   mov	x2, x0
0x10146389c:  e0 03 15 aa   mov	x0, x21
0x1014638a0:  30 4c 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x1014638a4:  c0 04 00 34   cbz	w0, loc_10146393c ; ⤵ 0x98
0x1014638a8:  f5 88 00 f0   adrp	x21, 0x102582000
0x1014638ac:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014638b0:  1f 05 00 b1   cmn	x8, #0x1
0x1014638b4:  e1 17 00 54   b.ne	loc_101463bb0 ; ⤵ 0x2fc
0x1014638b8:  ; loc_1014638b8
0x1014638b8:  e8 88 00 f0   adrp	x8, 0x102582000
0x1014638bc:  1c 3d 46 f9   ldr	x28, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014638c0:  e0 03 1c aa   mov	x0, x28
0x1014638c4:  01 00 80 52   mov	w1, #0
0x1014638c8:  8a ca 1a 94   bl	j__os_log_type_enabled
0x1014638cc:  00 03 00 34   cbz	w0, loc_10146392c ; ⤵ 0x60
0x1014638d0:  e8 4f 40 f9   ldr	x8, [sp, #0x98]
0x1014638d4:  00 b1 40 f9   ldr	x0, [x8, #0x160]
0x1014638d8:  50 d4 00 94   bl	0x101498a18
0x1014638dc:  e0 1f c0 3d   ldr	q0, [sp, #0x70]
0x1014638e0:  e0 23 03 bd   str	s0, [sp, #0x320]
0x1014638e4:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x1014638e8:  48 04 81 52   mov	w8, #0x822
0x1014638ec:  e8 53 06 79   strh	w8, [sp, #0x328]
0x1014638f0:  e8 83 0c 91   add	x8, sp, #0x320
0x1014638f4:  49 52 00 f0   adrp	x9, 0x101eae000
0x1014638f8:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014638fc:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101463900:  f9 67 06 79   strh	w25, [sp, #0x332]
0x101463904:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101463908:  e4 83 0c 91   add	x4, sp, #0x320
0x10146390c:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463910:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463914:  e1 03 1c aa   mov	x1, x28
0x101463918:  02 00 80 52   mov	w2, #0
0x10146391c:  a3 70 00 d0   adrp	x3, 0x102279000
0x101463920:  63 88 26 91   add	x3, x3, #0x9a2 ; "{\"msg%{public}.0s\":\"#durian #hawkeye Paired Owner Information Control Point\", \"item\":%{private, location:escape_only}@}"
0x101463924:  85 03 80 52   mov	w5, #0x1c
0x101463928:  32 c6 1a 94   bl	j___os_log_impl
0x10146392c:  ; loc_10146392c
0x10146392c:  e0 4f 40 f9   ldr	x0, [sp, #0x98]
0x101463930:  e2 03 14 aa   mov	x2, x20
0x101463934:  33 a3 1b 94   bl	j__objc_msgSend(x0, "setHawkeyePairedOwnerInformationCharacteristic:")
0x101463938:  5c 00 00 14   b	loc_101463aa8 ; ⤵ 0x170
0x10146393c:  ; loc_10146393c
0x10146393c:  e0 03 14 aa   mov	x0, x20
0x101463940:  c8 cf 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101463944:  f5 03 00 aa   mov	x21, x0
0x101463948:  60 37 46 f9   ldr	x0, [x27, #0xc68]
0x10146394c:  ad d1 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeDebugCharacteristicUUID")
0x101463950:  e2 03 00 aa   mov	x2, x0
0x101463954:  e0 03 15 aa   mov	x0, x21
0x101463958:  02 4c 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x10146395c:  c0 04 00 34   cbz	w0, loc_1014639f4 ; ⤵ 0x98
0x101463960:  f5 88 00 f0   adrp	x21, 0x102582000
0x101463964:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x101463968:  1f 05 00 b1   cmn	x8, #0x1
0x10146396c:  61 12 00 54   b.ne	loc_101463bb8 ; ⤵ 0x24c
0x101463970:  ; loc_101463970
0x101463970:  e8 88 00 f0   adrp	x8, 0x102582000
0x101463974:  1c 3d 46 f9   ldr	x28, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101463978:  e0 03 1c aa   mov	x0, x28
0x10146397c:  01 00 80 52   mov	w1, #0
0x101463980:  5c ca 1a 94   bl	j__os_log_type_enabled
0x101463984:  00 03 00 34   cbz	w0, loc_1014639e4 ; ⤵ 0x60
0x101463988:  e8 4f 40 f9   ldr	x8, [sp, #0x98]
0x10146398c:  00 b1 40 f9   ldr	x0, [x8, #0x160]
0x101463990:  22 d4 00 94   bl	0x101498a18
0x101463994:  e0 1f c0 3d   ldr	q0, [sp, #0x70]
0x101463998:  e0 23 03 bd   str	s0, [sp, #0x320]
0x10146399c:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x1014639a0:  48 04 81 52   mov	w8, #0x822
0x1014639a4:  e8 53 06 79   strh	w8, [sp, #0x328]
0x1014639a8:  e8 83 0c 91   add	x8, sp, #0x320
0x1014639ac:  49 52 00 f0   adrp	x9, 0x101eae000
0x1014639b0:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014639b4:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x1014639b8:  f9 67 06 79   strh	w25, [sp, #0x332]
0x1014639bc:  00 41 01 f8   stur	x0, [x8, #0x14]
0x1014639c0:  e4 83 0c 91   add	x4, sp, #0x320
0x1014639c4:  e0 5c ff b0   adrp	x0, 0x100000000
0x1014639c8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014639cc:  e1 03 1c aa   mov	x1, x28
0x1014639d0:  02 00 80 52   mov	w2, #0
0x1014639d4:  a3 70 00 d0   adrp	x3, 0x102279000
0x1014639d8:  63 68 28 91   add	x3, x3, #0xa1a ; "{\"msg%{public}.0s\":\"#durian #hawkeye Debug Control Point\", \"item\":%{private, location:escape_only}@}"
0x1014639dc:  85 03 80 52   mov	w5, #0x1c
0x1014639e0:  04 c6 1a 94   bl	j___os_log_impl
0x1014639e4:  ; loc_1014639e4
0x1014639e4:  e0 4f 40 f9   ldr	x0, [sp, #0x98]
0x1014639e8:  e2 03 14 aa   mov	x2, x20
0x1014639ec:  e5 a2 1b 94   bl	j__objc_msgSend(x0, "setHawkeyeDebugCharacteristic:")
0x1014639f0:  2e 00 00 14   b	loc_101463aa8 ; ⤵ 0xb8
0x1014639f4:  ; loc_1014639f4
0x1014639f4:  e0 03 14 aa   mov	x0, x20
0x1014639f8:  9a cf 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x1014639fc:  f5 03 00 aa   mov	x21, x0
0x101463a00:  60 37 46 f9   ldr	x0, [x27, #0xc68]
0x101463a04:  9f d1 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePreciseFindingCharacteristicUUID")
0x101463a08:  e2 03 00 aa   mov	x2, x0
0x101463a0c:  e0 03 15 aa   mov	x0, x21
0x101463a10:  d4 4b 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101463a14:  a0 05 00 34   cbz	w0, loc_101463ac8 ; ⤵ 0xb4
0x101463a18:  f5 88 00 f0   adrp	x21, 0x102582000
0x101463a1c:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x101463a20:  1f 05 00 b1   cmn	x8, #0x1
0x101463a24:  e1 0c 00 54   b.ne	loc_101463bc0 ; ⤵ 0x19c
0x101463a28:  ; loc_101463a28
0x101463a28:  e8 88 00 f0   adrp	x8, 0x102582000
0x101463a2c:  1c 3d 46 f9   ldr	x28, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101463a30:  e0 03 1c aa   mov	x0, x28
0x101463a34:  01 00 80 52   mov	w1, #0
0x101463a38:  2e ca 1a 94   bl	j__os_log_type_enabled
0x101463a3c:  00 03 00 34   cbz	w0, loc_101463a9c ; ⤵ 0x60
0x101463a40:  e8 4f 40 f9   ldr	x8, [sp, #0x98]
0x101463a44:  00 b1 40 f9   ldr	x0, [x8, #0x160]
0x101463a48:  f4 d3 00 94   bl	0x101498a18
0x101463a4c:  e0 1f c0 3d   ldr	q0, [sp, #0x70]
0x101463a50:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463a54:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463a58:  48 04 81 52   mov	w8, #0x822
0x101463a5c:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463a60:  e8 83 0c 91   add	x8, sp, #0x320
0x101463a64:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463a68:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463a6c:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101463a70:  f9 67 06 79   strh	w25, [sp, #0x332]
0x101463a74:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101463a78:  e4 83 0c 91   add	x4, sp, #0x320
0x101463a7c:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463a80:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463a84:  e1 03 1c aa   mov	x1, x28
0x101463a88:  02 00 80 52   mov	w2, #0
0x101463a8c:  a3 70 00 d0   adrp	x3, 0x102279000
0x101463a90:  63 fc 29 91   add	x3, x3, #0xa7f ; "{\"msg%{public}.0s\":\"#durian #hawkeye Precise Finding Control Point\", \"item\":%{private, location:escape_only}@}"
0x101463a94:  85 03 80 52   mov	w5, #0x1c
0x101463a98:  d6 c5 1a 94   bl	j___os_log_impl
0x101463a9c:  ; loc_101463a9c
0x101463a9c:  e0 4f 40 f9   ldr	x0, [sp, #0x98]
0x101463aa0:  e2 03 14 aa   mov	x2, x20
0x101463aa4:  e7 a2 1b 94   bl	j__objc_msgSend(x0, "setHawkeyePreciseFindingCharacteristic:")
0x101463aa8:  ; loc_101463aa8
0x101463aa8:  e0 43 40 f9   ldr	x0, [sp, #0x80]
0x101463aac:  22 00 80 52   mov	w2, #0x1
0x101463ab0:  e3 03 14 aa   mov	x3, x20
0x101463ab4:  f3 ae 1b 94   bl	j__objc_msgSend(x0, "setNotifyValue:forCharacteristic:")
0x101463ab8:  ; loc_101463ab8
0x101463ab8:  18 07 00 91   add	x24, x24, #0x1
0x101463abc:  ff 02 18 eb   cmp	x23, x24
0x101463ac0:  01 e1 ff 54   b.ne	loc_1014636e0 ; ⤴ -0x3e0
0x101463ac4:  43 00 00 14   b	loc_101463bd0 ; ⤵ 0x10c
0x101463ac8:  ; loc_101463ac8
0x101463ac8:  e0 03 14 aa   mov	x0, x20
0x101463acc:  65 cf 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101463ad0:  f5 03 00 aa   mov	x21, x0
0x101463ad4:  60 37 46 f9   ldr	x0, [x27, #0xc68]
0x101463ad8:  da d0 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryFirmwareUpdateMsgCharacteristicUUID")
0x101463adc:  e2 03 00 aa   mov	x2, x0
0x101463ae0:  e0 03 15 aa   mov	x0, x21
0x101463ae4:  9f 4b 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101463ae8:  f5 88 00 f0   adrp	x21, 0x102582000
0x101463aec:  60 fe ff 34   cbz	w0, loc_101463ab8 ; ⤴ -0x34
0x101463af0:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101463af4:  1f 05 00 b1   cmn	x8, #0x1
0x101463af8:  81 06 00 54   b.ne	loc_101463bc8 ; ⤵ 0xd0
0x101463afc:  ; loc_101463afc
0x101463afc:  e8 88 00 f0   adrp	x8, 0x102582000
0x101463b00:  1c 3d 46 f9   ldr	x28, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101463b04:  e0 03 1c aa   mov	x0, x28
0x101463b08:  01 00 80 52   mov	w1, #0
0x101463b0c:  f9 c9 1a 94   bl	j__os_log_type_enabled
0x101463b10:  e0 03 00 34   cbz	w0, loc_101463b8c ; ⤵ 0x7c
0x101463b14:  e8 4f 40 f9   ldr	x8, [sp, #0x98]
0x101463b18:  00 b1 40 f9   ldr	x0, [x8, #0x160]
0x101463b1c:  bf d3 00 94   bl	0x101498a18
0x101463b20:  f5 03 00 aa   mov	x21, x0
0x101463b24:  e0 03 14 aa   mov	x0, x20
0x101463b28:  4e cf 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101463b2c:  e0 1b c0 3d   ldr	q0, [sp, #0x60]
0x101463b30:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463b34:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463b38:  48 04 81 52   mov	w8, #0x822
0x101463b3c:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463b40:  e8 83 0c 91   add	x8, sp, #0x320
0x101463b44:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463b48:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463b4c:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101463b50:  f9 67 06 79   strh	w25, [sp, #0x332]
0x101463b54:  15 41 01 f8   stur	x21, [x8, #0x14]
0x101463b58:  f5 88 00 f0   adrp	x21, 0x102582000
0x101463b5c:  49 08 81 52   mov	w9, #0x842
0x101463b60:  e9 7b 06 79   strh	w9, [sp, #0x33c]
0x101463b64:  00 e1 01 f8   stur	x0, [x8, #0x1e]
0x101463b68:  e4 83 0c 91   add	x4, sp, #0x320
0x101463b6c:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463b70:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463b74:  e1 03 1c aa   mov	x1, x28
0x101463b78:  02 00 80 52   mov	w2, #0
0x101463b7c:  a3 70 00 d0   adrp	x3, 0x102279000
0x101463b80:  63 b8 2b 91   add	x3, x3, #0xaee ; "{\"msg%{public}.0s\":\"#durian #hawkeye #firmwareUpdate Discovered Firmware Update\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}@}"
0x101463b84:  c5 04 80 52   mov	w5, #0x26
0x101463b88:  9a c5 1a 94   bl	j___os_log_impl
0x101463b8c:  ; loc_101463b8c
0x101463b8c:  f3 4f 40 f9   ldr	x19, [sp, #0x98]
0x101463b90:  e0 03 13 aa   mov	x0, x19
0x101463b94:  e2 03 14 aa   mov	x2, x20
0x101463b98:  82 a2 1b 94   bl	j__objc_msgSend(x0, "setHawkeyeFirmwareUpdateCharacteristic:")
0x101463b9c:  07 ff ff 17   b	loc_1014637b8 ; ⤴ -0x3e4
0x101463ba0:  19 b1 1a 94   bl	0x101b10004
0x101463ba4:  e4 fe ff 17   b	loc_101463734 ; ⤴ -0x470
0x101463ba8:  ; loc_101463ba8
0x101463ba8:  17 b1 1a 94   bl	0x101b10004
0x101463bac:  15 ff ff 17   b	loc_101463800 ; ⤴ -0x3ac
0x101463bb0:  ; loc_101463bb0
0x101463bb0:  15 b1 1a 94   bl	0x101b10004
0x101463bb4:  41 ff ff 17   b	loc_1014638b8 ; ⤴ -0x2fc
0x101463bb8:  ; loc_101463bb8
0x101463bb8:  13 b1 1a 94   bl	0x101b10004
0x101463bbc:  6d ff ff 17   b	loc_101463970 ; ⤴ -0x24c
0x101463bc0:  ; loc_101463bc0
0x101463bc0:  11 b1 1a 94   bl	0x101b10004
0x101463bc4:  99 ff ff 17   b	loc_101463a28 ; ⤴ -0x19c
0x101463bc8:  ; loc_101463bc8
0x101463bc8:  0f b1 1a 94   bl	0x101b10004
0x101463bcc:  cc ff ff 17   b	loc_101463afc ; ⤴ -0xd0
0x101463bd0:  ; loc_101463bd0
0x101463bd0:  e2 83 03 91   add	x2, sp, #0xe0
0x101463bd4:  e3 83 08 91   add	x3, sp, #0x220
0x101463bd8:  e0 03 16 aa   mov	x0, x22
0x101463bdc:  04 02 80 52   mov	w4, #0x10
0x101463be0:  c8 f6 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101463be4:  f7 03 00 aa   mov	x23, x0
0x101463be8:  a0 d7 ff b5   cbnz	x0, loc_1014636dc ; ⤴ -0x50c
0x101463bec:  f8 4f 40 f9   ldr	x24, [sp, #0x98]
0x101463bf0:  08 c7 43 39   ldrb	w8, [x24, #0xf1]
0x101463bf4:  fa 88 00 f0   adrp	x26, 0x102582000
0x101463bf8:  e8 30 00 35   cbnz	w8, loc_101464214 ; ⤵ 0x61c
0x101463bfc:  08 47 41 f9   ldr	x8, [x24, #0x288]
0x101463c00:  a8 09 00 b5   cbnz	x8, loc_101463d34 ; ⤵ 0x134
0x101463c04:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101463c08:  1f 05 00 b1   cmn	x8, #0x1
0x101463c0c:  01 69 00 54   b.ne	loc_10146492c ; ⤵ 0xd20
0x101463c10:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101463c14:  e0 03 14 aa   mov	x0, x20
0x101463c18:  01 02 80 52   mov	w1, #0x10
0x101463c1c:  b5 c9 1a 94   bl	j__os_log_type_enabled
0x101463c20:  00 04 00 34   cbz	w0, loc_101463ca0 ; ⤵ 0x80
0x101463c24:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101463c28:  7c d3 00 94   bl	0x101498a18
0x101463c2c:  88 44 00 b0   adrp	x8, 0x101cf4000
0x101463c30:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101463c34:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463c38:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463c3c:  48 04 81 52   mov	w8, #0x822
0x101463c40:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463c44:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463c48:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463c4c:  ea 83 0c 91   add	x10, sp, #0x320
0x101463c50:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x101463c54:  29 08 81 52   mov	w9, #0x841
0x101463c58:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101463c5c:  40 41 01 f8   stur	x0, [x10, #0x14]
0x101463c60:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101463c64:  c8 46 00 f0   adrp	x8, 0x101d3e000
0x101463c68:  08 39 22 91   add	x8, x8, #0x88e ; "config"
0x101463c6c:  48 e1 01 f8   stur	x8, [x10, #0x1e]
0x101463c70:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463c74:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463c78:  a3 70 00 d0   adrp	x3, 0x102279000
0x101463c7c:  63 74 2e 91   add	x3, x3, #0xb9d ; "{\"msg%{public}.0s\":\"#durian #hawkeye failed to discover\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}s}"
0x101463c80:  e4 83 0c 91   add	x4, sp, #0x320
0x101463c84:  e1 03 14 aa   mov	x1, x20
0x101463c88:  02 02 80 52   mov	w2, #0x10
0x101463c8c:  c5 04 80 52   mov	w5, #0x26
0x101463c90:  58 c5 1a 94   bl	j___os_log_impl
0x101463c94:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101463c98:  1f 05 00 b1   cmn	x8, #0x1
0x101463c9c:  c1 64 00 54   b.ne	loc_101464934 ; ⤵ 0xc98
0x101463ca0:  ; loc_101463ca0
0x101463ca0:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101463ca4:  e0 03 14 aa   mov	x0, x20
0x101463ca8:  96 c9 1a 94   bl	j__os_signpost_enabled
0x101463cac:  40 04 00 34   cbz	w0, loc_101463d34 ; ⤵ 0x88
0x101463cb0:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101463cb4:  59 d3 00 94   bl	0x101498a18
0x101463cb8:  88 44 00 b0   adrp	x8, 0x101cf4000
0x101463cbc:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101463cc0:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463cc4:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463cc8:  48 04 81 52   mov	w8, #0x822
0x101463ccc:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463cd0:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463cd4:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463cd8:  ea 83 0c 91   add	x10, sp, #0x320
0x101463cdc:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x101463ce0:  29 08 81 52   mov	w9, #0x841
0x101463ce4:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101463ce8:  40 41 01 f8   stur	x0, [x10, #0x14]
0x101463cec:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101463cf0:  c8 46 00 f0   adrp	x8, 0x101d3e000
0x101463cf4:  08 39 22 91   add	x8, x8, #0x88e ; "config"
0x101463cf8:  48 e1 01 f8   stur	x8, [x10, #0x1e]
0x101463cfc:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463d00:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463d04:  a4 70 00 d0   adrp	x4, 0x102279000
0x101463d08:  84 d0 30 91   add	x4, x4, #0xc34 ; "#durian #hawkeye failed to discover"
0x101463d0c:  a5 70 00 d0   adrp	x5, 0x102279000
0x101463d10:  a5 74 2e 91   add	x5, x5, #0xb9d ; "{\"msg%{public}.0s\":\"#durian #hawkeye failed to discover\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}s}"
0x101463d14:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x101463d18:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x101463d1c:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x101463d20:  e6 83 0c 91   add	x6, sp, #0x320
0x101463d24:  e1 03 14 aa   mov	x1, x20
0x101463d28:  02 00 80 52   mov	w2, #0
0x101463d2c:  c7 04 80 52   mov	w7, #0x26
0x101463d30:  38 c5 1a 94   bl	j___os_signpost_emit_with_name_impl
0x101463d34:  ; loc_101463d34
0x101463d34:  08 5b 41 f9   ldr	x8, [x24, #0x2b0]
0x101463d38:  a8 09 00 b5   cbnz	x8, loc_101463e6c ; ⤵ 0x134
0x101463d3c:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101463d40:  1f 05 00 b1   cmn	x8, #0x1
0x101463d44:  c1 5f 00 54   b.ne	loc_10146493c ; ⤵ 0xbf8
0x101463d48:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101463d4c:  e0 03 14 aa   mov	x0, x20
0x101463d50:  01 02 80 52   mov	w1, #0x10
0x101463d54:  67 c9 1a 94   bl	j__os_log_type_enabled
0x101463d58:  00 04 00 34   cbz	w0, loc_101463dd8 ; ⤵ 0x80
0x101463d5c:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101463d60:  2e d3 00 94   bl	0x101498a18
0x101463d64:  88 44 00 b0   adrp	x8, 0x101cf4000
0x101463d68:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101463d6c:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463d70:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463d74:  48 04 81 52   mov	w8, #0x822
0x101463d78:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463d7c:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463d80:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463d84:  ea 83 0c 91   add	x10, sp, #0x320
0x101463d88:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x101463d8c:  29 08 81 52   mov	w9, #0x841
0x101463d90:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101463d94:  40 41 01 f8   stur	x0, [x10, #0x14]
0x101463d98:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101463d9c:  48 52 00 b0   adrp	x8, 0x101eac000
0x101463da0:  08 29 1e 91   add	x8, x8, #0x78a ; "nonowner"
0x101463da4:  48 e1 01 f8   stur	x8, [x10, #0x1e]
0x101463da8:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463dac:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463db0:  a3 70 00 d0   adrp	x3, 0x102279000
0x101463db4:  63 74 2e 91   add	x3, x3, #0xb9d ; "{\"msg%{public}.0s\":\"#durian #hawkeye failed to discover\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}s}"
0x101463db8:  e4 83 0c 91   add	x4, sp, #0x320
0x101463dbc:  e1 03 14 aa   mov	x1, x20
0x101463dc0:  02 02 80 52   mov	w2, #0x10
0x101463dc4:  c5 04 80 52   mov	w5, #0x26
0x101463dc8:  0a c5 1a 94   bl	j___os_log_impl
0x101463dcc:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101463dd0:  1f 05 00 b1   cmn	x8, #0x1
0x101463dd4:  81 5b 00 54   b.ne	loc_101464944 ; ⤵ 0xb70
0x101463dd8:  ; loc_101463dd8
0x101463dd8:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101463ddc:  e0 03 14 aa   mov	x0, x20
0x101463de0:  48 c9 1a 94   bl	j__os_signpost_enabled
0x101463de4:  40 04 00 34   cbz	w0, loc_101463e6c ; ⤵ 0x88
0x101463de8:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101463dec:  0b d3 00 94   bl	0x101498a18
0x101463df0:  88 44 00 b0   adrp	x8, 0x101cf4000
0x101463df4:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101463df8:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463dfc:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463e00:  48 04 81 52   mov	w8, #0x822
0x101463e04:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463e08:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463e0c:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463e10:  ea 83 0c 91   add	x10, sp, #0x320
0x101463e14:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x101463e18:  29 08 81 52   mov	w9, #0x841
0x101463e1c:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101463e20:  40 41 01 f8   stur	x0, [x10, #0x14]
0x101463e24:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101463e28:  48 52 00 b0   adrp	x8, 0x101eac000
0x101463e2c:  08 29 1e 91   add	x8, x8, #0x78a ; "nonowner"
0x101463e30:  48 e1 01 f8   stur	x8, [x10, #0x1e]
0x101463e34:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463e38:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463e3c:  a4 70 00 d0   adrp	x4, 0x102279000
0x101463e40:  84 d0 30 91   add	x4, x4, #0xc34 ; "#durian #hawkeye failed to discover"
0x101463e44:  a5 70 00 d0   adrp	x5, 0x102279000
0x101463e48:  a5 74 2e 91   add	x5, x5, #0xb9d ; "{\"msg%{public}.0s\":\"#durian #hawkeye failed to discover\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}s}"
0x101463e4c:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x101463e50:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x101463e54:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x101463e58:  e6 83 0c 91   add	x6, sp, #0x320
0x101463e5c:  e1 03 14 aa   mov	x1, x20
0x101463e60:  02 00 80 52   mov	w2, #0
0x101463e64:  c7 04 80 52   mov	w7, #0x26
0x101463e68:  ea c4 1a 94   bl	j___os_signpost_emit_with_name_impl
0x101463e6c:  ; loc_101463e6c
0x101463e6c:  08 4b 41 f9   ldr	x8, [x24, #0x290]
0x101463e70:  a8 09 00 b5   cbnz	x8, loc_101463fa4 ; ⤵ 0x134
0x101463e74:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101463e78:  1f 05 00 b1   cmn	x8, #0x1
0x101463e7c:  81 56 00 54   b.ne	loc_10146494c ; ⤵ 0xad0
0x101463e80:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101463e84:  e0 03 14 aa   mov	x0, x20
0x101463e88:  01 02 80 52   mov	w1, #0x10
0x101463e8c:  19 c9 1a 94   bl	j__os_log_type_enabled
0x101463e90:  00 04 00 34   cbz	w0, loc_101463f10 ; ⤵ 0x80
0x101463e94:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101463e98:  e0 d2 00 94   bl	0x101498a18
0x101463e9c:  88 44 00 b0   adrp	x8, 0x101cf4000
0x101463ea0:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101463ea4:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463ea8:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463eac:  48 04 81 52   mov	w8, #0x822
0x101463eb0:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463eb4:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463eb8:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463ebc:  ea 83 0c 91   add	x10, sp, #0x320
0x101463ec0:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x101463ec4:  29 08 81 52   mov	w9, #0x841
0x101463ec8:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101463ecc:  40 41 01 f8   stur	x0, [x10, #0x14]
0x101463ed0:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101463ed4:  48 52 00 b0   adrp	x8, 0x101eac000
0x101463ed8:  08 4d 1e 91   add	x8, x8, #0x793 ; "pairedowner"
0x101463edc:  48 e1 01 f8   stur	x8, [x10, #0x1e]
0x101463ee0:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463ee4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463ee8:  a3 70 00 d0   adrp	x3, 0x102279000
0x101463eec:  63 74 2e 91   add	x3, x3, #0xb9d ; "{\"msg%{public}.0s\":\"#durian #hawkeye failed to discover\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}s}"
0x101463ef0:  e4 83 0c 91   add	x4, sp, #0x320
0x101463ef4:  e1 03 14 aa   mov	x1, x20
0x101463ef8:  02 02 80 52   mov	w2, #0x10
0x101463efc:  c5 04 80 52   mov	w5, #0x26
0x101463f00:  bc c4 1a 94   bl	j___os_log_impl
0x101463f04:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101463f08:  1f 05 00 b1   cmn	x8, #0x1
0x101463f0c:  41 52 00 54   b.ne	loc_101464954 ; ⤵ 0xa48
0x101463f10:  ; loc_101463f10
0x101463f10:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101463f14:  e0 03 14 aa   mov	x0, x20
0x101463f18:  fa c8 1a 94   bl	j__os_signpost_enabled
0x101463f1c:  40 04 00 34   cbz	w0, loc_101463fa4 ; ⤵ 0x88
0x101463f20:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101463f24:  bd d2 00 94   bl	0x101498a18
0x101463f28:  88 44 00 b0   adrp	x8, 0x101cf4000
0x101463f2c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101463f30:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463f34:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463f38:  48 04 81 52   mov	w8, #0x822
0x101463f3c:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463f40:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463f44:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463f48:  ea 83 0c 91   add	x10, sp, #0x320
0x101463f4c:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x101463f50:  29 08 81 52   mov	w9, #0x841
0x101463f54:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101463f58:  40 41 01 f8   stur	x0, [x10, #0x14]
0x101463f5c:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101463f60:  48 52 00 b0   adrp	x8, 0x101eac000
0x101463f64:  08 4d 1e 91   add	x8, x8, #0x793 ; "pairedowner"
0x101463f68:  48 e1 01 f8   stur	x8, [x10, #0x1e]
0x101463f6c:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463f70:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463f74:  a4 70 00 d0   adrp	x4, 0x102279000
0x101463f78:  84 d0 30 91   add	x4, x4, #0xc34 ; "#durian #hawkeye failed to discover"
0x101463f7c:  a5 70 00 d0   adrp	x5, 0x102279000
0x101463f80:  a5 74 2e 91   add	x5, x5, #0xb9d ; "{\"msg%{public}.0s\":\"#durian #hawkeye failed to discover\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}s}"
0x101463f84:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x101463f88:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x101463f8c:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x101463f90:  e6 83 0c 91   add	x6, sp, #0x320
0x101463f94:  e1 03 14 aa   mov	x1, x20
0x101463f98:  02 00 80 52   mov	w2, #0
0x101463f9c:  c7 04 80 52   mov	w7, #0x26
0x101463fa0:  9c c4 1a 94   bl	j___os_signpost_emit_with_name_impl
0x101463fa4:  ; loc_101463fa4
0x101463fa4:  08 4f 41 f9   ldr	x8, [x24, #0x298]
0x101463fa8:  a8 04 00 b5   cbnz	x8, loc_10146403c ; ⤵ 0x94
0x101463fac:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101463fb0:  1f 05 00 b1   cmn	x8, #0x1
0x101463fb4:  41 4d 00 54   b.ne	loc_10146495c ; ⤵ 0x9a8
0x101463fb8:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101463fbc:  e0 03 14 aa   mov	x0, x20
0x101463fc0:  01 00 80 52   mov	w1, #0
0x101463fc4:  cb c8 1a 94   bl	j__os_log_type_enabled
0x101463fc8:  a0 03 00 34   cbz	w0, loc_10146403c ; ⤵ 0x74
0x101463fcc:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101463fd0:  92 d2 00 94   bl	0x101498a18
0x101463fd4:  88 44 00 b0   adrp	x8, 0x101cf4000
0x101463fd8:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101463fdc:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463fe0:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463fe4:  48 04 81 52   mov	w8, #0x822
0x101463fe8:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463fec:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463ff0:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463ff4:  ea 83 0c 91   add	x10, sp, #0x320
0x101463ff8:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x101463ffc:  29 08 81 52   mov	w9, #0x841
0x101464000:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101464004:  40 41 01 f8   stur	x0, [x10, #0x14]
0x101464008:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x10146400c:  48 52 00 90   adrp	x8, 0x101eac000
0x101464010:  08 7d 1e 91   add	x8, x8, #0x79f ; "debug"
0x101464014:  48 e1 01 f8   stur	x8, [x10, #0x1e]
0x101464018:  e0 5c ff 90   adrp	x0, 0x100000000
0x10146401c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464020:  a3 70 00 b0   adrp	x3, 0x102279000
0x101464024:  63 74 2e 91   add	x3, x3, #0xb9d ; "{\"msg%{public}.0s\":\"#durian #hawkeye failed to discover\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}s}"
0x101464028:  e4 83 0c 91   add	x4, sp, #0x320
0x10146402c:  e1 03 14 aa   mov	x1, x20
0x101464030:  02 00 80 52   mov	w2, #0
0x101464034:  c5 04 80 52   mov	w5, #0x26
0x101464038:  6e c4 1a 94   bl	j___os_log_impl
0x10146403c:  ; loc_10146403c
0x10146403c:  08 53 41 f9   ldr	x8, [x24, #0x2a0]
0x101464040:  a8 09 00 b5   cbnz	x8, loc_101464174 ; ⤵ 0x134
0x101464044:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101464048:  1f 05 00 b1   cmn	x8, #0x1
0x10146404c:  c1 48 00 54   b.ne	loc_101464964 ; ⤵ 0x918
0x101464050:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101464054:  e0 03 14 aa   mov	x0, x20
0x101464058:  01 02 80 52   mov	w1, #0x10
0x10146405c:  a5 c8 1a 94   bl	j__os_log_type_enabled
0x101464060:  00 04 00 34   cbz	w0, loc_1014640e0 ; ⤵ 0x80
0x101464064:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101464068:  6c d2 00 94   bl	0x101498a18
0x10146406c:  88 44 00 90   adrp	x8, 0x101cf4000
0x101464070:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101464074:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101464078:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x10146407c:  48 04 81 52   mov	w8, #0x822
0x101464080:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101464084:  49 52 00 d0   adrp	x9, 0x101eae000
0x101464088:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146408c:  ea 83 0c 91   add	x10, sp, #0x320
0x101464090:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x101464094:  29 08 81 52   mov	w9, #0x841
0x101464098:  e9 67 06 79   strh	w9, [sp, #0x332]
0x10146409c:  40 41 01 f8   stur	x0, [x10, #0x14]
0x1014640a0:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x1014640a4:  48 52 00 90   adrp	x8, 0x101eac000
0x1014640a8:  08 95 1e 91   add	x8, x8, #0x7a5 ; "r1finding"
0x1014640ac:  48 e1 01 f8   stur	x8, [x10, #0x1e]
0x1014640b0:  e0 5c ff 90   adrp	x0, 0x100000000
0x1014640b4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014640b8:  a3 70 00 b0   adrp	x3, 0x102279000
0x1014640bc:  63 74 2e 91   add	x3, x3, #0xb9d ; "{\"msg%{public}.0s\":\"#durian #hawkeye failed to discover\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}s}"
0x1014640c0:  e4 83 0c 91   add	x4, sp, #0x320
0x1014640c4:  e1 03 14 aa   mov	x1, x20
0x1014640c8:  02 02 80 52   mov	w2, #0x10
0x1014640cc:  c5 04 80 52   mov	w5, #0x26
0x1014640d0:  48 c4 1a 94   bl	j___os_log_impl
0x1014640d4:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x1014640d8:  1f 05 00 b1   cmn	x8, #0x1
0x1014640dc:  81 44 00 54   b.ne	loc_10146496c ; ⤵ 0x890
0x1014640e0:  ; loc_1014640e0
0x1014640e0:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x1014640e4:  e0 03 14 aa   mov	x0, x20
0x1014640e8:  86 c8 1a 94   bl	j__os_signpost_enabled
0x1014640ec:  40 04 00 34   cbz	w0, loc_101464174 ; ⤵ 0x88
0x1014640f0:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x1014640f4:  49 d2 00 94   bl	0x101498a18
0x1014640f8:  88 44 00 90   adrp	x8, 0x101cf4000
0x1014640fc:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101464100:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101464104:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101464108:  48 04 81 52   mov	w8, #0x822
0x10146410c:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101464110:  49 52 00 d0   adrp	x9, 0x101eae000
0x101464114:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464118:  ea 83 0c 91   add	x10, sp, #0x320
0x10146411c:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x101464120:  29 08 81 52   mov	w9, #0x841
0x101464124:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101464128:  40 41 01 f8   stur	x0, [x10, #0x14]
0x10146412c:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101464130:  48 52 00 90   adrp	x8, 0x101eac000
0x101464134:  08 95 1e 91   add	x8, x8, #0x7a5 ; "r1finding"
0x101464138:  48 e1 01 f8   stur	x8, [x10, #0x1e]
0x10146413c:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464140:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464144:  a4 70 00 b0   adrp	x4, 0x102279000
0x101464148:  84 d0 30 91   add	x4, x4, #0xc34 ; "#durian #hawkeye failed to discover"
0x10146414c:  a5 70 00 b0   adrp	x5, 0x102279000
0x101464150:  a5 74 2e 91   add	x5, x5, #0xb9d ; "{\"msg%{public}.0s\":\"#durian #hawkeye failed to discover\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}s}"
0x101464154:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x101464158:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x10146415c:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x101464160:  e6 83 0c 91   add	x6, sp, #0x320
0x101464164:  e1 03 14 aa   mov	x1, x20
0x101464168:  02 00 80 52   mov	w2, #0
0x10146416c:  c7 04 80 52   mov	w7, #0x26
0x101464170:  28 c4 1a 94   bl	j___os_signpost_emit_with_name_impl
0x101464174:  ; loc_101464174
0x101464174:  08 57 41 f9   ldr	x8, [x24, #0x2a8]
0x101464178:  a8 04 00 b5   cbnz	x8, loc_10146420c ; ⤵ 0x94
0x10146417c:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101464180:  1f 05 00 b1   cmn	x8, #0x1
0x101464184:  81 3f 00 54   b.ne	loc_101464974 ; ⤵ 0x7f0
0x101464188:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x10146418c:  e0 03 14 aa   mov	x0, x20
0x101464190:  01 00 80 52   mov	w1, #0
0x101464194:  57 c8 1a 94   bl	j__os_log_type_enabled
0x101464198:  a0 03 00 34   cbz	w0, loc_10146420c ; ⤵ 0x74
0x10146419c:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x1014641a0:  1e d2 00 94   bl	0x101498a18
0x1014641a4:  88 44 00 90   adrp	x8, 0x101cf4000
0x1014641a8:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x1014641ac:  e0 23 03 bd   str	s0, [sp, #0x320]
0x1014641b0:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x1014641b4:  48 04 81 52   mov	w8, #0x822
0x1014641b8:  e8 53 06 79   strh	w8, [sp, #0x328]
0x1014641bc:  49 52 00 d0   adrp	x9, 0x101eae000
0x1014641c0:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014641c4:  ea 83 0c 91   add	x10, sp, #0x320
0x1014641c8:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x1014641cc:  29 08 81 52   mov	w9, #0x841
0x1014641d0:  e9 67 06 79   strh	w9, [sp, #0x332]
0x1014641d4:  40 41 01 f8   stur	x0, [x10, #0x14]
0x1014641d8:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x1014641dc:  48 52 00 90   adrp	x8, 0x101eac000
0x1014641e0:  08 bd 1e 91   add	x8, x8, #0x7af ; "fwupdate"
0x1014641e4:  48 e1 01 f8   stur	x8, [x10, #0x1e]
0x1014641e8:  e0 5c ff 90   adrp	x0, 0x100000000
0x1014641ec:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014641f0:  a3 70 00 b0   adrp	x3, 0x102279000
0x1014641f4:  63 74 2e 91   add	x3, x3, #0xb9d ; "{\"msg%{public}.0s\":\"#durian #hawkeye failed to discover\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{public, location:escape_only}s}"
0x1014641f8:  e4 83 0c 91   add	x4, sp, #0x320
0x1014641fc:  e1 03 14 aa   mov	x1, x20
0x101464200:  02 00 80 52   mov	w2, #0
0x101464204:  c5 04 80 52   mov	w5, #0x26
0x101464208:  fa c3 1a 94   bl	j___os_log_impl
0x10146420c:  ; loc_10146420c
0x10146420c:  e0 03 18 aa   mov	x0, x24
0x101464210:  bc d6 1a 94   bl	j__objc_msgSend(x0, "activate")
0x101464214:  ; loc_101464214
0x101464214:  e0 03 18 aa   mov	x0, x24
0x101464218:  7a d7 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x10146421c:  f4 03 00 aa   mov	x20, x0
0x101464220:  c8 85 00 f0   adrp	x8, 0x10251f000
0x101464224:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x101464228:  56 c7 1a 94   bl	j__objc_opt_class
0x10146422c:  e1 03 00 aa   mov	x1, x0
0x101464230:  e0 03 14 aa   mov	x0, x20
0x101464234:  57 c7 1a 94   bl	j__objc_opt_isKindOfClass
0x101464238:  40 23 00 37   tbnz	w0, #0, loc_1014646a0 ; ⤵ 0x468
0x10146423c:  e0 03 18 aa   mov	x0, x24
0x101464240:  70 d7 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101464244:  f4 03 00 aa   mov	x20, x0
0x101464248:  c8 85 00 f0   adrp	x8, 0x10251f000
0x10146424c:  00 a1 29 91   add	x0, x8, #0xa68 ; CLDurianGATTTask
0x101464250:  4c c7 1a 94   bl	j__objc_opt_class
0x101464254:  e1 03 00 aa   mov	x1, x0
0x101464258:  e0 03 14 aa   mov	x0, x20
0x10146425c:  4d c7 1a 94   bl	j__objc_opt_isKindOfClass
0x101464260:  c0 23 00 36   tbz	w0, #0, loc_1014646d8 ; ⤵ 0x478
0x101464264:  e0 03 18 aa   mov	x0, x24
0x101464268:  66 d7 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x10146426c:  f4 03 00 aa   mov	x20, x0
0x101464270:  00 e4 00 6f   movi	v0.2d, #0
0x101464274:  e0 03 05 ad   stp	q0, q0, [sp, #0xa0]
0x101464278:  e0 03 06 ad   stp	q0, q0, [sp, #0xc0]
0x10146427c:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x101464280:  e8 e7 1a 94   bl	j__objc_msgSend(x0, "characteristics")
0x101464284:  f5 03 00 aa   mov	x21, x0
0x101464288:  e2 83 02 91   add	x2, sp, #0xa0
0x10146428c:  e3 83 06 91   add	x3, sp, #0x1a0
0x101464290:  04 02 80 52   mov	w4, #0x10
0x101464294:  1b f5 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101464298:  40 19 00 b4   cbz	x0, loc_1014645c0 ; ⤵ 0x328
0x10146429c:  f6 03 00 aa   mov	x22, x0
0x1014642a0:  e8 5b 40 f9   ldr	x8, [sp, #0xb0]
0x1014642a4:  13 01 40 f9   ldr	x19, [x8]
0x1014642a8:  d9 85 00 f0   adrp	x25, 0x10251f000
0x1014642ac:  dc 85 00 f0   adrp	x28, 0x10251f000
0x1014642b0:  88 44 00 90   adrp	x8, 0x101cf4000
0x1014642b4:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x1014642b8:  e0 23 80 3d   str	q0, [sp, #0x80]
0x1014642bc:  68 39 00 f0   adrp	x8, 0x101b93000
0x1014642c0:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x1014642c4:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x1014642c8:  17 00 80 d2   mov	x23, #0
0x1014642cc:  e8 5b 40 f9   ldr	x8, [sp, #0xb0]
0x1014642d0:  08 01 40 f9   ldr	x8, [x8]
0x1014642d4:  1f 01 13 eb   cmp	x8, x19
0x1014642d8:  60 00 00 54   b.eq	loc_1014642e4 ; ⤵ 0xc
0x1014642dc:  e0 03 15 aa   mov	x0, x21
0x1014642e0:  08 c7 1a 94   bl	j__objc_enumerationMutation
0x1014642e4:  ; loc_1014642e4
0x1014642e4:  e8 57 40 f9   ldr	x8, [sp, #0xa8]
0x1014642e8:  1a 79 77 f8   ldr	x26, [x8, x23, lsl #0x3]
0x1014642ec:  e0 03 1a aa   mov	x0, x26
0x1014642f0:  5c cd 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x1014642f4:  fb 03 00 aa   mov	x27, x0
0x1014642f8:  e0 03 14 aa   mov	x0, x20
0x1014642fc:  c1 e7 1a 94   bl	j__objc_msgSend(x0, "characteristicUUID")
0x101464300:  e2 03 00 aa   mov	x2, x0
0x101464304:  e0 03 1b aa   mov	x0, x27
0x101464308:  96 49 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x10146430c:  c0 13 00 34   cbz	w0, loc_101464584 ; ⤵ 0x278
0x101464310:  e0 03 14 aa   mov	x0, x20
0x101464314:  e2 03 1a aa   mov	x2, x26
0x101464318:  c2 94 1b 94   bl	j__objc_msgSend(x0, "setCharacteristic:")
0x10146431c:  20 23 2c 91   add	x0, x25, #0xb08
0x101464320:  18 c7 1a 94   bl	j__objc_opt_class
0x101464324:  e1 03 00 aa   mov	x1, x0
0x101464328:  e0 03 14 aa   mov	x0, x20
0x10146432c:  19 c7 1a 94   bl	j__objc_opt_isKindOfClass
0x101464330:  60 01 00 36   tbz	w0, #0, loc_10146435c ; ⤵ 0x2c
0x101464334:  f8 4f 40 f9   ldr	x24, [sp, #0x98]
0x101464338:  1a 0b 40 f9   ldr	x26, [x24, #0x10]
0x10146433c:  e0 03 14 aa   mov	x0, x20
0x101464340:  80 ee 1a 94   bl	j__objc_msgSend(x0, "command")
0x101464344:  3f e4 1a 94   bl	j__objc_msgSend(x0, "bytes")
0x101464348:  e2 03 00 aa   mov	x2, x0
0x10146434c:  03 0f 40 f9   ldr	x3, [x24, #0x18]
0x101464350:  e0 03 1a aa   mov	x0, x26
0x101464354:  33 8b 1b 94   bl	j__objc_msgSend(x0, "sendData:toPeripheral:")
0x101464358:  8b 00 00 14   b	loc_101464584 ; ⤵ 0x22c
0x10146435c:  ; loc_10146435c
0x10146435c:  80 e3 2a 91   add	x0, x28, #0xab8
0x101464360:  08 c7 1a 94   bl	j__objc_opt_class
0x101464364:  e1 03 00 aa   mov	x1, x0
0x101464368:  e0 03 14 aa   mov	x0, x20
0x10146436c:  09 c7 1a 94   bl	j__objc_opt_isKindOfClass
0x101464370:  80 07 00 36   tbz	w0, #0, loc_101464460 ; ⤵ 0xf0
0x101464374:  f8 4f 40 f9   ldr	x24, [sp, #0x98]
0x101464378:  e0 03 18 aa   mov	x0, x24
0x10146437c:  31 4a 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101464380:  c0 05 00 34   cbz	w0, loc_101464438 ; ⤵ 0xb8
0x101464384:  e8 88 00 d0   adrp	x8, 0x102582000
0x101464388:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146438c:  1f 05 00 b1   cmn	x8, #0x1
0x101464390:  21 10 00 54   b.ne	loc_101464594 ; ⤵ 0x204
0x101464394:  e8 88 00 d0   adrp	x8, 0x102582000
0x101464398:  1a 3d 46 f9   ldr	x26, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146439c:  e0 03 1a aa   mov	x0, x26
0x1014643a0:  01 00 80 52   mov	w1, #0
0x1014643a4:  d3 c7 1a 94   bl	j__os_log_type_enabled
0x1014643a8:  f8 4f 40 f9   ldr	x24, [sp, #0x98]
0x1014643ac:  60 04 00 34   cbz	w0, loc_101464438 ; ⤵ 0x8c
0x1014643b0:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x1014643b4:  99 d1 00 94   bl	0x101498a18
0x1014643b8:  fb 03 00 aa   mov	x27, x0
0x1014643bc:  e0 03 14 aa   mov	x0, x20
0x1014643c0:  80 e7 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x1014643c4:  fc 03 00 aa   mov	x28, x0
0x1014643c8:  e0 03 14 aa   mov	x0, x20
0x1014643cc:  85 e7 1a 94   bl	j__objc_msgSend(x0, "characteristicPayload")
0x1014643d0:  e0 23 c0 3d   ldr	q0, [sp, #0x80]
0x1014643d4:  e0 23 03 bd   str	s0, [sp, #0x320]
0x1014643d8:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x1014643dc:  48 04 81 52   mov	w8, #0x822
0x1014643e0:  e8 53 06 79   strh	w8, [sp, #0x328]
0x1014643e4:  e8 83 0c 91   add	x8, sp, #0x320
0x1014643e8:  49 52 00 d0   adrp	x9, 0x101eae000
0x1014643ec:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014643f0:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x1014643f4:  29 08 81 52   mov	w9, #0x841
0x1014643f8:  e9 67 06 79   strh	w9, [sp, #0x332]
0x1014643fc:  1b 41 01 f8   stur	x27, [x8, #0x14]
0x101464400:  e9 7b 06 79   strh	w9, [sp, #0x33c]
0x101464404:  1c e1 01 f8   stur	x28, [x8, #0x1e]
0x101464408:  dc 85 00 f0   adrp	x28, 0x10251f000
0x10146440c:  e9 8f 06 79   strh	w9, [sp, #0x346]
0x101464410:  e0 a7 01 f9   str	x0, [sp, #0x348]
0x101464414:  e4 83 0c 91   add	x4, sp, #0x320
0x101464418:  e0 5c ff 90   adrp	x0, 0x100000000
0x10146441c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464420:  e1 03 1a aa   mov	x1, x26
0x101464424:  02 00 80 52   mov	w2, #0
0x101464428:  a3 70 00 b0   adrp	x3, 0x102279000
0x10146442c:  63 40 35 91   add	x3, x3, #0xd50 ; "{\"msg%{public}.0s\":\"#durian #hawkeye ReadTask\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"payload\":%{private, location:escape_only}@}"
0x101464430:  05 06 80 52   mov	w5, #0x30
0x101464434:  6f c3 1a 94   bl	j___os_log_impl
0x101464438:  ; loc_101464438
0x101464438:  e0 03 18 aa   mov	x0, x24
0x10146443c:  99 4c 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x101464440:  80 1f 00 35   cbnz	w0, loc_101464830 ; ⤵ 0x3f0
0x101464444:  1a 0f 40 f9   ldr	x26, [x24, #0x18]
0x101464448:  e0 03 14 aa   mov	x0, x20
0x10146444c:  5d e7 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x101464450:  e2 03 00 aa   mov	x2, x0
0x101464454:  e0 03 1a aa   mov	x0, x26
0x101464458:  32 78 1b 94   bl	j__objc_msgSend(x0, "readValueForCharacteristic:")
0x10146445c:  4a 00 00 14   b	loc_101464584 ; ⤵ 0x128
0x101464460:  ; loc_101464460
0x101464460:  c8 85 00 f0   adrp	x8, 0x10251f000
0x101464464:  00 61 2d 91   add	x0, x8, #0xb58 ; CLDurianGATTWriteTask
0x101464468:  c6 c6 1a 94   bl	j__objc_opt_class
0x10146446c:  e1 03 00 aa   mov	x1, x0
0x101464470:  e0 03 14 aa   mov	x0, x20
0x101464474:  c7 c6 1a 94   bl	j__objc_opt_isKindOfClass
0x101464478:  60 08 00 36   tbz	w0, #0, loc_101464584 ; ⤵ 0x10c
0x10146447c:  e0 03 14 aa   mov	x0, x20
0x101464480:  58 e7 1a 94   bl	j__objc_msgSend(x0, "characteristicPayload")
0x101464484:  fa 03 00 aa   mov	x26, x0
0x101464488:  f8 4f 40 f9   ldr	x24, [sp, #0x98]
0x10146448c:  e0 03 18 aa   mov	x0, x24
0x101464490:  ec 49 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101464494:  a0 00 00 34   cbz	w0, loc_1014644a8 ; ⤵ 0x14
0x101464498:  02 17 40 f9   ldr	x2, [x24, #0x28]
0x10146449c:  e0 03 14 aa   mov	x0, x20
0x1014644a0:  98 5f 1b 94   bl	j__objc_msgSend(x0, "nextPacketOfMaxSize:")
0x1014644a4:  fa 03 00 aa   mov	x26, x0
0x1014644a8:  ; loc_1014644a8
0x1014644a8:  e8 88 00 d0   adrp	x8, 0x102582000
0x1014644ac:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014644b0:  1f 05 00 b1   cmn	x8, #0x1
0x1014644b4:  41 07 00 54   b.ne	loc_10146459c ; ⤵ 0xe8
0x1014644b8:  e8 88 00 d0   adrp	x8, 0x102582000
0x1014644bc:  1b 3d 46 f9   ldr	x27, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014644c0:  e0 03 1b aa   mov	x0, x27
0x1014644c4:  01 00 80 52   mov	w1, #0

