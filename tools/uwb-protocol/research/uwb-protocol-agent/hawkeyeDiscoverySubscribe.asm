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
0x10146392c:  e0 4f 40 f9   ldr	x0, [sp, #0x98]
0x101463930:  e2 03 14 aa   mov	x2, x20
0x101463934:  33 a3 1b 94   bl	j__objc_msgSend(x0, "setHawkeyePairedOwnerInformationCharacteristic:")
0x101463938:  5c 00 00 14   b	loc_101463aa8 ; ⤵ 0x170
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

