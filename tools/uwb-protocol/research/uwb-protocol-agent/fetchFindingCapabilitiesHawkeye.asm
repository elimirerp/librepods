
+[CLDurianTask fetchFindingCapabilitiesHawkeyeTaskWithPayload:]:
0x1014498fc:  7f 23 03 d5   pacibsp
0x101449900:  ff c3 01 d1   sub	sp, sp, #0x70
0x101449904:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101449908:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10144990c:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101449910:  fd 83 01 91   add	fp, sp, #0x60
0x101449914:  f4 03 02 aa   mov	x20, x2
0x101449918:  48 7a 00 b0   adrp	x8, 0x102392000
0x10144991c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101449920:  08 01 40 f9   ldr	x8, [x8]
0x101449924:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x101449928:  a8 86 00 d0   adrp	x8, 0x10251f000
0x10144992c:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x101449930:  7c 7f 1b 94   bl	j__objc_msgSend(x0, "fetchFindingCapabilitiesTaskWithPayload:")
0x101449934:  f3 03 00 aa   mov	x19, x0
0x101449938:  e0 08 00 b4   cbz	x0, loc_101449a54 ; ⤵ 0x11c
0x10144993c:  35 7a 00 f0   adrp	x21, 0x102390000
0x101449940:  a0 36 46 f9   ldr	x0, [x21, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101449944:  b7 39 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeFindMyNetworkServiceUUID")
0x101449948:  e2 03 00 aa   mov	x2, x0
0x10144994c:  e0 03 13 aa   mov	x0, x19
0x101449950:  74 20 1c 94   bl	j__objc_msgSend(x0, "setServiceUUID:")
0x101449954:  a0 36 46 f9   ldr	x0, [x21, #0xc68]
0x101449958:  ca 39 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePreciseFindingCharacteristicUUID")
0x10144995c:  e2 03 00 aa   mov	x2, x0
0x101449960:  e0 03 13 aa   mov	x0, x19
0x101449964:  3f ff 1b 94   bl	j__objc_msgSend(x0, "setCharacteristicUUID:")
0x101449968:  e0 03 13 aa   mov	x0, x19
0x10144996c:  02 e2 80 52   mov	w2, #0x710
0x101449970:  1c 0b 1c 94   bl	j__objc_msgSend(x0, "setHawkeyeOpcode:")
0x101449974:  28 00 80 52   mov	w8, #0x1
0x101449978:  e8 27 00 39   strb	w8, [sp, #0x9]
0x10144997c:  e0 03 13 aa   mov	x0, x19
0x101449980:  d0 99 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x101449984:  e0 2b 00 39   strb	w0, [sp, #0xa]
0x101449988:  e0 03 13 aa   mov	x0, x19
0x10144998c:  cd 99 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x101449990:  08 7c 08 53   lsr	w8, w0, #0x8
0x101449994:  e8 2f 00 39   strb	w8, [sp, #0xb]
0x101449998:  f4 33 00 39   strb	w20, [sp, #0xc]
0x10144999c:  ff d3 00 78   sturh	wzr, [sp, #0xd]
0x1014499a0:  ff 3f 00 39   strb	wzr, [sp, #0xf]
0x1014499a4:  48 7a 00 90   adrp	x8, 0x102391000
0x1014499a8:  00 21 44 f9   ldr	x0, [x8, #0x840] ; __got._OBJC_CLASS_$_NSData
0x1014499ac:  e2 27 00 91   add	x2, sp, #0x9
0x1014499b0:  e3 00 80 52   mov	w3, #0x7
0x1014499b4:  23 65 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x1014499b8:  e2 03 00 aa   mov	x2, x0
0x1014499bc:  e0 03 13 aa   mov	x0, x19
0x1014499c0:  18 0b 1c 94   bl	j__objc_msgSend(x0, "setHawkeyePayload:")
0x1014499c4:  e0 03 13 aa   mov	x0, x19
0x1014499c8:  02 00 80 52   mov	w2, #0
0x1014499cc:  3d 1e 1c 94   bl	j__objc_msgSend(x0, "setRequiresMutex:")
0x1014499d0:  c8 89 00 b0   adrp	x8, 0x102582000
0x1014499d4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014499d8:  1f 05 00 b1   cmn	x8, #0x1
0x1014499dc:  c1 08 00 54   b.ne	loc_101449af4 ; ⤵ 0x118
0x1014499e0:  ; loc_1014499e0
0x1014499e0:  c8 89 00 b0   adrp	x8, 0x102582000
0x1014499e4:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014499e8:  e0 03 14 aa   mov	x0, x20
0x1014499ec:  01 00 80 52   mov	w1, #0
0x1014499f0:  40 32 1b 94   bl	j__os_log_type_enabled
0x1014499f4:  80 06 00 34   cbz	w0, loc_101449ac4 ; ⤵ 0xd0
0x1014499f8:  e0 03 13 aa   mov	x0, x19
0x1014499fc:  b9 99 1b 94   bl	j__objc_msgSend(x0, "hawkeyePayload")
0x101449a00:  48 45 00 f0   adrp	x8, 0x101cf4000
0x101449a04:  00 79 44 fd   ldr	d0, [x8, #0x8f0]
0x101449a08:  e0 13 00 bd   str	s0, [sp, #0x10]
0x101449a0c:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x101449a10:  48 04 81 52   mov	w8, #0x822
0x101449a14:  e8 33 00 79   strh	w8, [sp, #0x18]
0x101449a18:  28 53 00 b0   adrp	x8, 0x101eae000
0x101449a1c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101449a20:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x101449a24:  48 08 81 52   mov	w8, #0x842
0x101449a28:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101449a2c:  e0 43 02 f8   stur	x0, [sp, #0x24]
0x101449a30:  a0 5d ff f0   adrp	x0, 0x100000000
0x101449a34:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101449a38:  23 71 00 f0   adrp	x3, 0x102270000
0x101449a3c:  63 00 01 91   add	x3, x3, #0x40 ; "{\"msg%{public}.0s\":\"#durian #hawkeye fetchFindingCapabilitiesTaskWithPayload\", \"payload\":%{public, location:escape_only}@}"
0x101449a40:  e4 43 00 91   add	x4, sp, #0x10
0x101449a44:  e1 03 14 aa   mov	x1, x20
0x101449a48:  02 00 80 52   mov	w2, #0
0x101449a4c:  85 03 80 52   mov	w5, #0x1c
0x101449a50:  1c 00 00 14   b	loc_101449ac0 ; ⤵ 0x70
0x101449a54:  ; loc_101449a54
0x101449a54:  c8 89 00 b0   adrp	x8, 0x102582000
0x101449a58:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101449a5c:  1f 05 00 b1   cmn	x8, #0x1
0x101449a60:  e1 04 00 54   b.ne	loc_101449afc ; ⤵ 0x9c
0x101449a64:  ; loc_101449a64
0x101449a64:  c8 89 00 b0   adrp	x8, 0x102582000
0x101449a68:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101449a6c:  e0 03 14 aa   mov	x0, x20
0x101449a70:  01 00 80 52   mov	w1, #0
0x101449a74:  1f 32 1b 94   bl	j__os_log_type_enabled
0x101449a78:  60 02 00 34   cbz	w0, loc_101449ac4 ; ⤵ 0x4c
0x101449a7c:  48 45 00 f0   adrp	x8, 0x101cf4000
0x101449a80:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101449a84:  e0 13 00 bd   str	s0, [sp, #0x10]
0x101449a88:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x101449a8c:  48 04 81 52   mov	w8, #0x822
0x101449a90:  e8 33 00 79   strh	w8, [sp, #0x18]
0x101449a94:  28 53 00 b0   adrp	x8, 0x101eae000
0x101449a98:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101449a9c:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x101449aa0:  a0 5d ff f0   adrp	x0, 0x100000000
0x101449aa4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101449aa8:  23 71 00 f0   adrp	x3, 0x102270000
0x101449aac:  63 ec 02 91   add	x3, x3, #0xbb ; "{\"msg%{public}.0s\":\"#durian #hawkeye nil task, fetchFindingCapabilitiesTaskWithPayload\"}"
0x101449ab0:  e4 43 00 91   add	x4, sp, #0x10
0x101449ab4:  e1 03 14 aa   mov	x1, x20
0x101449ab8:  02 00 80 52   mov	w2, #0
0x101449abc:  45 02 80 52   mov	w5, #0x12
0x101449ac0:  ; loc_101449ac0
0x101449ac0:  cc 2d 1b 94   bl	j___os_log_impl
0x101449ac4:  ; loc_101449ac4
0x101449ac4:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x101449ac8:  49 7a 00 b0   adrp	x9, 0x102392000
0x101449acc:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101449ad0:  29 01 40 f9   ldr	x9, [x9]
0x101449ad4:  3f 01 08 eb   cmp	x9, x8
0x101449ad8:  61 01 00 54   b.ne	loc_101449b04 ; ⤵ 0x2c
0x101449adc:  e0 03 13 aa   mov	x0, x19
0x101449ae0:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101449ae4:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101449ae8:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101449aec:  ff c3 01 91   add	sp, sp, #0x70
0x101449af0:  ff 0f 5f d6   retab
0x101449af4:  ; loc_101449af4
0x101449af4:  f6 18 1b 94   bl	0x101b0fecc
0x101449af8:  ba ff ff 17   b	loc_1014499e0 ; ⤴ -0x118
0x101449afc:  ; loc_101449afc
0x101449afc:  f3 18 1b 94   bl	0x101b0fec8
0x101449b00:  d9 ff ff 17   b	loc_101449a64 ; ⤴ -0x9c
0x101449b04:  ; loc_101449b04
0x101449b04:  8f 2d 1b 94   bl	j____stack_chk_fail

+[CLDurianTask initRangingHawkeyeTask]:
0x101449b08:  7f 23 03 d5   pacibsp
0x101449b0c:  ff c3 01 d1   sub	sp, sp, #0x70
0x101449b10:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101449b14:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x101449b18:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101449b1c:  fd 83 01 91   add	fp, sp, #0x60
0x101449b20:  48 7a 00 b0   adrp	x8, 0x102392000
0x101449b24:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101449b28:  08 01 40 f9   ldr	x8, [x8]

