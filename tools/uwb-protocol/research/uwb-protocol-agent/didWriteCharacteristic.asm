
-[CLDurianDevice peripheral:didWriteValueForCharacteristic:error:]:
0x101464988:  7f 23 03 d5   pacibsp
0x10146498c:  ff c3 02 d1   sub	sp, sp, #0xb0
0x101464990:  fc 6f 05 a9   stp	x28, x27, [sp, #0x50]
0x101464994:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x101464998:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x10146499c:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x1014649a0:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x1014649a4:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x1014649a8:  fd 83 02 91   add	fp, sp, #0xa0
0x1014649ac:  f5 03 04 aa   mov	x21, x4
0x1014649b0:  f4 03 03 aa   mov	x20, x3
0x1014649b4:  f7 03 02 aa   mov	x23, x2
0x1014649b8:  f3 03 00 aa   mov	x19, x0
0x1014649bc:  68 79 00 d0   adrp	x8, 0x102392000
0x1014649c0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014649c4:  08 01 40 f9   ldr	x8, [x8]
0x1014649c8:  e8 27 00 f9   str	x8, [sp, #0x48]
0x1014649cc:  9d 48 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x1014649d0:  f9 88 00 d0   adrp	x25, 0x102582000
0x1014649d4:  60 05 00 34   cbz	w0, loc_101464a80 ; ⤵ 0xac
0x1014649d8:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x1014649dc:  1f 05 00 b1   cmn	x8, #0x1
0x1014649e0:  81 46 00 54   b.ne	loc_1014652b0 ; ⤵ 0x8d0
0x1014649e4:  e8 88 00 d0   adrp	x8, 0x102582000
0x1014649e8:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014649ec:  e0 03 16 aa   mov	x0, x22
0x1014649f0:  01 00 80 52   mov	w1, #0
0x1014649f4:  3f c6 1a 94   bl	j__os_log_type_enabled
0x1014649f8:  40 04 00 34   cbz	w0, loc_101464a80 ; ⤵ 0x88
0x1014649fc:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464a00:  06 d0 00 94   bl	0x101498a18
0x101464a04:  f8 03 00 aa   mov	x24, x0
0x101464a08:  e0 03 17 aa   mov	x0, x23
0x101464a0c:  05 2f 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x101464a10:  02 d0 00 94   bl	0x101498a18
0x101464a14:  68 39 00 f0   adrp	x8, 0x101b93000
0x101464a18:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101464a1c:  e0 03 00 bd   str	s0, [sp]
0x101464a20:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464a24:  48 04 81 52   mov	w8, #0x822
0x101464a28:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464a2c:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464a30:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464a34:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464a38:  28 08 81 52   mov	w8, #0x841
0x101464a3c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464a40:  f8 43 01 f8   stur	x24, [sp, #0x14]
0x101464a44:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101464a48:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x101464a4c:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101464a50:  f4 17 00 f9   str	x20, [sp, #0x28]
0x101464a54:  e8 63 00 79   strh	w8, [sp, #0x30]
0x101464a58:  f5 23 03 f8   stur	x21, [sp, #0x32]
0x101464a5c:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464a60:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464a64:  a3 70 00 d0   adrp	x3, 0x10227a000
0x101464a68:  63 24 02 91   add	x3, x3, #0x89 ; "{\"msg%{public}.0s\":\"#durian #hawkeye didWriteValueForCharacteristic\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_"...
0x101464a6c:  e4 03 00 91   mov	x4, sp
0x101464a70:  e1 03 16 aa   mov	x1, x22
0x101464a74:  02 00 80 52   mov	w2, #0
0x101464a78:  45 07 80 52   mov	w5, #0x3a
0x101464a7c:  dd c1 1a 94   bl	j___os_log_impl
0x101464a80:  ; loc_101464a80
0x101464a80:  e0 03 13 aa   mov	x0, x19
0x101464a84:  5f d5 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101464a88:  f6 03 00 aa   mov	x22, x0
0x101464a8c:  dc 85 00 f0   adrp	x28, 0x10251f000
0x101464a90:  80 63 2d 91   add	x0, x28, #0xb58 ; CLDurianGATTWriteTask
0x101464a94:  3b c5 1a 94   bl	j__objc_opt_class
0x101464a98:  e1 03 00 aa   mov	x1, x0
0x101464a9c:  e0 03 16 aa   mov	x0, x22
0x101464aa0:  3c c5 1a 94   bl	j__objc_opt_isKindOfClass
0x101464aa4:  60 01 00 37   tbnz	w0, #0, loc_101464ad0 ; ⤵ 0x2c
0x101464aa8:  e0 03 13 aa   mov	x0, x19
0x101464aac:  55 d5 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101464ab0:  f6 03 00 aa   mov	x22, x0
0x101464ab4:  c8 85 00 f0   adrp	x8, 0x10251f000
0x101464ab8:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x101464abc:  31 c5 1a 94   bl	j__objc_opt_class
0x101464ac0:  e1 03 00 aa   mov	x1, x0
0x101464ac4:  e0 03 16 aa   mov	x0, x22
0x101464ac8:  32 c5 1a 94   bl	j__objc_opt_isKindOfClass
0x101464acc:  60 2c 00 36   tbz	w0, #0, loc_101465058 ; ⤵ 0x58c
0x101464ad0:  ; loc_101464ad0
0x101464ad0:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101464ad4:  1f 05 00 b1   cmn	x8, #0x1
0x101464ad8:  d5 0f 00 b4   cbz	x21, loc_101464cd0 ; ⤵ 0x1f8
0x101464adc:  e1 3e 00 54   b.ne	loc_1014652b8 ; ⤵ 0x7dc
0x101464ae0:  fa 88 00 d0   adrp	x26, 0x102582000
0x101464ae4:  56 3f 46 f9   ldr	x22, [x26, #0xc78] ; data_102582c78 (__DATA.__data)
0x101464ae8:  e0 03 16 aa   mov	x0, x22
0x101464aec:  01 02 80 52   mov	w1, #0x10
0x101464af0:  00 c6 1a 94   bl	j__os_log_type_enabled
0x101464af4:  a0 05 00 34   cbz	w0, loc_101464ba8 ; ⤵ 0xb4
0x101464af8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464afc:  c7 cf 00 94   bl	0x101498a18
0x101464b00:  f7 03 00 aa   mov	x23, x0
0x101464b04:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x101464b08:  c6 2e 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x101464b0c:  c3 cf 00 94   bl	0x101498a18
0x101464b10:  f8 03 00 aa   mov	x24, x0
0x101464b14:  e0 03 14 aa   mov	x0, x20
0x101464b18:  52 cb 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464b1c:  fb 03 19 aa   mov	x27, x25
0x101464b20:  f9 03 00 aa   mov	x25, x0
0x101464b24:  e0 03 15 aa   mov	x0, x21
0x101464b28:  46 53 1b 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x101464b2c:  68 39 00 f0   adrp	x8, 0x101b93000
0x101464b30:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101464b34:  e0 03 00 bd   str	s0, [sp]
0x101464b38:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464b3c:  48 04 81 52   mov	w8, #0x822
0x101464b40:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464b44:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464b48:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464b4c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464b50:  28 08 81 52   mov	w8, #0x841
0x101464b54:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464b58:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x101464b5c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101464b60:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x101464b64:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101464b68:  f9 17 00 f9   str	x25, [sp, #0x28]
0x101464b6c:  f9 03 1b aa   mov	x25, x27
0x101464b70:  e8 63 00 79   strh	w8, [sp, #0x30]
0x101464b74:  e0 23 03 f8   stur	x0, [sp, #0x32]
0x101464b78:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464b7c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464b80:  a3 70 00 d0   adrp	x3, 0x10227a000
0x101464b84:  63 40 0b 91   add	x3, x3, #0x2d0 ; "{\"msg%{public}.0s\":\"#durian error writing value for characteristic\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"characteristicUUID\":%{private, location:esca"...
0x101464b88:  e4 03 00 91   mov	x4, sp
0x101464b8c:  e1 03 16 aa   mov	x1, x22
0x101464b90:  02 02 80 52   mov	w2, #0x10
0x101464b94:  45 07 80 52   mov	w5, #0x3a
0x101464b98:  96 c1 1a 94   bl	j___os_log_impl
0x101464b9c:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101464ba0:  1f 05 00 b1   cmn	x8, #0x1
0x101464ba4:  e1 38 00 54   b.ne	loc_1014652c0 ; ⤵ 0x71c
0x101464ba8:  ; loc_101464ba8
0x101464ba8:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101464bac:  e0 03 16 aa   mov	x0, x22
0x101464bb0:  d4 c5 1a 94   bl	j__os_signpost_enabled
0x101464bb4:  e0 05 00 34   cbz	w0, loc_101464c70 ; ⤵ 0xbc
0x101464bb8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464bbc:  97 cf 00 94   bl	0x101498a18
0x101464bc0:  f7 03 00 aa   mov	x23, x0
0x101464bc4:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x101464bc8:  96 2e 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x101464bcc:  93 cf 00 94   bl	0x101498a18
0x101464bd0:  f8 03 00 aa   mov	x24, x0
0x101464bd4:  e0 03 14 aa   mov	x0, x20
0x101464bd8:  22 cb 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464bdc:  fa 03 19 aa   mov	x26, x25
0x101464be0:  f9 03 00 aa   mov	x25, x0
0x101464be4:  e0 03 15 aa   mov	x0, x21
0x101464be8:  16 53 1b 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x101464bec:  68 39 00 f0   adrp	x8, 0x101b93000
0x101464bf0:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101464bf4:  e0 03 00 bd   str	s0, [sp]
0x101464bf8:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464bfc:  48 04 81 52   mov	w8, #0x822
0x101464c00:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464c04:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464c08:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464c0c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464c10:  28 08 81 52   mov	w8, #0x841
0x101464c14:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464c18:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x101464c1c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101464c20:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x101464c24:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101464c28:  f9 17 00 f9   str	x25, [sp, #0x28]
0x101464c2c:  f9 03 1a aa   mov	x25, x26
0x101464c30:  e8 63 00 79   strh	w8, [sp, #0x30]
0x101464c34:  e0 23 03 f8   stur	x0, [sp, #0x32]
0x101464c38:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464c3c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464c40:  a4 70 00 d0   adrp	x4, 0x10227a000

