
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
0x1014649e4:  ; loc_1014649e4
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
0x101464ae0:  ; loc_101464ae0
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
0x101464c44:  84 38 0f 91   add	x4, x4, #0x3ce ; "#durian error writing value for characteristic"
0x101464c48:  a5 70 00 d0   adrp	x5, 0x10227a000
0x101464c4c:  a5 40 0b 91   add	x5, x5, #0x2d0 ; "{\"msg%{public}.0s\":\"#durian error writing value for characteristic\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"characteristicUUID\":%{private, location:esca"...
0x101464c50:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x101464c54:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x101464c58:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x101464c5c:  e6 03 00 91   mov	x6, sp
0x101464c60:  e1 03 16 aa   mov	x1, x22
0x101464c64:  02 00 80 52   mov	w2, #0
0x101464c68:  47 07 80 52   mov	w7, #0x3a
0x101464c6c:  69 c1 1a 94   bl	j___os_signpost_emit_with_name_impl
0x101464c70:  ; loc_101464c70
0x101464c70:  e0 03 13 aa   mov	x0, x19
0x101464c74:  e3 d4 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101464c78:  32 ec 1a 94   bl	j__objc_msgSend(x0, "command")
0x101464c7c:  99 67 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x101464c80:  e2 03 00 aa   mov	x2, x0
0x101464c84:  e0 03 13 aa   mov	x0, x19
0x101464c88:  fe 49 1b 94   bl	j__objc_msgSend(x0, "isNonOwnerSoundTask:")
0x101464c8c:  1f 00 00 71   cmp	w0, #0
0x101464c90:  48 05 80 52   mov	w8, #0x2a
0x101464c94:  15 05 9f 9a   csinc	x21, x8, xzr, eq
0x101464c98:  e0 03 13 aa   mov	x0, x19
0x101464c9c:  99 fa 1a 94   bl	j__objc_msgSend(x0, "delegate")
0x101464ca0:  f6 03 00 aa   mov	x22, x0
0x101464ca4:  e0 03 13 aa   mov	x0, x19
0x101464ca8:  d6 d4 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101464cac:  e3 03 00 aa   mov	x3, x0
0x101464cb0:  e0 03 16 aa   mov	x0, x22
0x101464cb4:  e2 03 13 aa   mov	x2, x19
0x101464cb8:  e4 03 15 aa   mov	x4, x21
0x101464cbc:  25 00 80 52   mov	w5, #0x1
0x101464cc0:  f8 fc 1a 94   bl	j__objc_msgSend(x0, "device:didFailToCompleteTask:withError:andDisconnect:")
0x101464cc4:  e0 03 13 aa   mov	x0, x19
0x101464cc8:  9e ec 1a 94   bl	j__objc_msgSend(x0, "completeCurrentTask")
0x101464ccc:  29 00 00 14   b	loc_101464d70 ; ⤵ 0xa4
0x101464cd0:  ; loc_101464cd0
0x101464cd0:  c1 2f 00 54   b.ne	loc_1014652c8 ; ⤵ 0x5f8
0x101464cd4:  ; loc_101464cd4
0x101464cd4:  e8 88 00 d0   adrp	x8, 0x102582000
0x101464cd8:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101464cdc:  e0 03 15 aa   mov	x0, x21
0x101464ce0:  01 00 80 52   mov	w1, #0
0x101464ce4:  83 c5 1a 94   bl	j__os_log_type_enabled
0x101464ce8:  40 04 00 34   cbz	w0, loc_101464d70 ; ⤵ 0x88
0x101464cec:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464cf0:  4a cf 00 94   bl	0x101498a18
0x101464cf4:  f6 03 00 aa   mov	x22, x0
0x101464cf8:  e0 03 14 aa   mov	x0, x20
0x101464cfc:  d9 ca 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464d00:  f7 03 00 aa   mov	x23, x0
0x101464d04:  e0 03 14 aa   mov	x0, x20
0x101464d08:  6e e5 1b 94   bl	j__objc_msgSend(x0, "value")
0x101464d0c:  88 44 00 90   adrp	x8, 0x101cf4000
0x101464d10:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101464d14:  e0 03 00 bd   str	s0, [sp]
0x101464d18:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464d1c:  48 04 81 52   mov	w8, #0x822
0x101464d20:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464d24:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464d28:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464d2c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464d30:  28 08 81 52   mov	w8, #0x841
0x101464d34:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464d38:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101464d3c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101464d40:  f7 e3 01 f8   stur	x23, [sp, #0x1e]
0x101464d44:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101464d48:  e0 17 00 f9   str	x0, [sp, #0x28]
0x101464d4c:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464d50:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464d54:  a3 70 00 d0   adrp	x3, 0x10227a000
0x101464d58:  63 f4 0f 91   add	x3, x3, #0x3fd ; "{\"msg%{public}.0s\":\"#durian wrote value for characteristic\", \"item\":%{private, location:escape_only}@, \"characteristicUUID\":%{private, location:escape_only}@, \"value\":%{private, location:escape_only}@"...
0x101464d5c:  e4 03 00 91   mov	x4, sp
0x101464d60:  e1 03 15 aa   mov	x1, x21
0x101464d64:  02 00 80 52   mov	w2, #0
0x101464d68:  05 06 80 52   mov	w5, #0x30
0x101464d6c:  21 c1 1a 94   bl	j___os_log_impl
0x101464d70:  ; loc_101464d70
0x101464d70:  e0 03 13 aa   mov	x0, x19
0x101464d74:  4b 4a 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x101464d78:  20 07 00 34   cbz	w0, loc_101464e5c ; ⤵ 0xe4
0x101464d7c:  e0 03 14 aa   mov	x0, x20
0x101464d80:  b8 ca 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464d84:  f5 03 00 aa   mov	x21, x0
0x101464d88:  68 79 00 90   adrp	x8, 0x102390000
0x101464d8c:  00 35 46 f9   ldr	x0, [x8, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101464d90:  c4 cc 1a 94   bl	j__objc_msgSend(x0, "_cl_PoshAccessoryNonOwnerCharacteristicUUID")
0x101464d94:  e2 03 00 aa   mov	x2, x0
0x101464d98:  e0 03 15 aa   mov	x0, x21
0x101464d9c:  f1 46 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101464da0:  e0 05 00 34   cbz	w0, loc_101464e5c ; ⤵ 0xbc
0x101464da4:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101464da8:  1f 05 00 b1   cmn	x8, #0x1
0x101464dac:  a1 29 00 54   b.ne	loc_1014652e0 ; ⤵ 0x534
0x101464db0:  ; loc_101464db0
0x101464db0:  e8 88 00 d0   adrp	x8, 0x102582000
0x101464db4:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101464db8:  e0 03 15 aa   mov	x0, x21
0x101464dbc:  01 00 80 52   mov	w1, #0
0x101464dc0:  4c c5 1a 94   bl	j__os_log_type_enabled
0x101464dc4:  a0 25 00 34   cbz	w0, loc_101465278 ; ⤵ 0x4b4
0x101464dc8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464dcc:  13 cf 00 94   bl	0x101498a18
0x101464dd0:  f6 03 00 aa   mov	x22, x0
0x101464dd4:  e0 03 14 aa   mov	x0, x20
0x101464dd8:  a2 ca 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464ddc:  f7 03 00 aa   mov	x23, x0
0x101464de0:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x101464de4:  77 da 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101464de8:  e2 03 00 aa   mov	x2, x0
0x101464dec:  e0 03 13 aa   mov	x0, x19
0x101464df0:  54 23 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101464df4:  f3 03 00 aa   mov	x19, x0
0x101464df8:  e0 03 14 aa   mov	x0, x20
0x101464dfc:  31 e5 1b 94   bl	j__objc_msgSend(x0, "value")
0x101464e00:  68 39 00 f0   adrp	x8, 0x101b93000
0x101464e04:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101464e08:  e0 03 00 bd   str	s0, [sp]
0x101464e0c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464e10:  48 04 81 52   mov	w8, #0x822
0x101464e14:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464e18:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464e1c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464e20:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464e24:  28 08 81 52   mov	w8, #0x841
0x101464e28:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464e2c:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101464e30:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101464e34:  f7 e3 01 f8   stur	x23, [sp, #0x1e]
0x101464e38:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101464e3c:  f3 17 00 f9   str	x19, [sp, #0x28]
0x101464e40:  e8 63 00 79   strh	w8, [sp, #0x30]
0x101464e44:  e0 23 03 f8   stur	x0, [sp, #0x32]
0x101464e48:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464e4c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464e50:  a3 70 00 d0   adrp	x3, 0x10227a000
0x101464e54:  63 1c 13 91   add	x3, x3, #0x4c7 ; "{\"msg%{public}.0s\":\"#durian #ut #posh wrote to characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"task\":%{private, location:escape_only}@, "...
0x101464e58:  3b 00 00 14   b	loc_101464f44 ; ⤵ 0xec
0x101464e5c:  ; loc_101464e5c
0x101464e5c:  e0 03 13 aa   mov	x0, x19
0x101464e60:  70 44 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x101464e64:  c0 07 00 34   cbz	w0, loc_101464f5c ; ⤵ 0xf8
0x101464e68:  e0 03 14 aa   mov	x0, x20
0x101464e6c:  7d ca 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464e70:  f5 03 00 aa   mov	x21, x0
0x101464e74:  68 79 00 90   adrp	x8, 0x102390000
0x101464e78:  00 35 46 f9   ldr	x0, [x8, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101464e7c:  e1 cb 1a 94   bl	j__objc_msgSend(x0, "_cl_DurianUnauthorizedPrecisionFindingCharacteristicUUID")
0x101464e80:  e2 03 00 aa   mov	x2, x0
0x101464e84:  e0 03 15 aa   mov	x0, x21
0x101464e88:  b6 46 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101464e8c:  80 06 00 34   cbz	w0, loc_101464f5c ; ⤵ 0xd0
0x101464e90:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101464e94:  1f 05 00 b1   cmn	x8, #0x1
0x101464e98:  c1 22 00 54   b.ne	loc_1014652f0 ; ⤵ 0x458
0x101464e9c:  ; loc_101464e9c
0x101464e9c:  e8 88 00 d0   adrp	x8, 0x102582000
0x101464ea0:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101464ea4:  e0 03 15 aa   mov	x0, x21
0x101464ea8:  01 00 80 52   mov	w1, #0
0x101464eac:  11 c5 1a 94   bl	j__os_log_type_enabled
0x101464eb0:  40 1e 00 34   cbz	w0, loc_101465278 ; ⤵ 0x3c8
0x101464eb4:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464eb8:  d8 ce 00 94   bl	0x101498a18
0x101464ebc:  f6 03 00 aa   mov	x22, x0
0x101464ec0:  e0 03 14 aa   mov	x0, x20
0x101464ec4:  67 ca 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464ec8:  f7 03 00 aa   mov	x23, x0
0x101464ecc:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x101464ed0:  3c da 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101464ed4:  e2 03 00 aa   mov	x2, x0
0x101464ed8:  e0 03 13 aa   mov	x0, x19
0x101464edc:  19 23 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101464ee0:  f3 03 00 aa   mov	x19, x0
0x101464ee4:  e0 03 14 aa   mov	x0, x20
0x101464ee8:  f6 e4 1b 94   bl	j__objc_msgSend(x0, "value")
0x101464eec:  68 39 00 f0   adrp	x8, 0x101b93000
0x101464ef0:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101464ef4:  e0 03 00 bd   str	s0, [sp]
0x101464ef8:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464efc:  48 04 81 52   mov	w8, #0x822
0x101464f00:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464f04:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464f08:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464f0c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464f10:  28 08 81 52   mov	w8, #0x841
0x101464f14:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464f18:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101464f1c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101464f20:  f7 e3 01 f8   stur	x23, [sp, #0x1e]
0x101464f24:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101464f28:  f3 17 00 f9   str	x19, [sp, #0x28]
0x101464f2c:  e8 63 00 79   strh	w8, [sp, #0x30]
0x101464f30:  e0 23 03 f8   stur	x0, [sp, #0x32]
0x101464f34:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464f38:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464f3c:  a3 70 00 d0   adrp	x3, 0x10227a000
0x101464f40:  63 e8 16 91   add	x3, x3, #0x5ba ; "{\"msg%{public}.0s\":\"#durian #ut wrote to characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"task\":%{private, location:escape_only}@, \"value"...
0x101464f44:  ; loc_101464f44
0x101464f44:  e4 03 00 91   mov	x4, sp
0x101464f48:  e1 03 15 aa   mov	x1, x21
0x101464f4c:  02 00 80 52   mov	w2, #0
0x101464f50:  45 07 80 52   mov	w5, #0x3a
0x101464f54:  a7 c0 1a 94   bl	j___os_log_impl
0x101464f58:  c8 00 00 14   b	loc_101465278 ; ⤵ 0x320
0x101464f5c:  ; loc_101464f5c
0x101464f5c:  e0 03 13 aa   mov	x0, x19
0x101464f60:  28 d4 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101464f64:  f4 03 00 aa   mov	x20, x0
0x101464f68:  80 63 2d 91   add	x0, x28, #0xb58
0x101464f6c:  05 c4 1a 94   bl	j__objc_opt_class
0x101464f70:  e1 03 00 aa   mov	x1, x0
0x101464f74:  e0 03 14 aa   mov	x0, x20
0x101464f78:  06 c4 1a 94   bl	j__objc_opt_isKindOfClass
0x101464f7c:  e0 17 00 36   tbz	w0, #0, loc_101465278 ; ⤵ 0x2fc
0x101464f80:  e0 03 13 aa   mov	x0, x19
0x101464f84:  1f d4 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101464f88:  f4 03 00 aa   mov	x20, x0
0x101464f8c:  e0 03 13 aa   mov	x0, x19
0x101464f90:  2c 47 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101464f94:  80 00 00 34   cbz	w0, loc_101464fa4 ; ⤵ 0x10
0x101464f98:  e0 03 14 aa   mov	x0, x20
0x101464f9c:  81 06 1b 94   bl	j__objc_msgSend(x0, "doneSendingPayload")
0x101464fa0:  40 11 00 36   tbz	w0, #0, loc_1014651c8 ; ⤵ 0x228
0x101464fa4:  ; loc_101464fa4
0x101464fa4:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101464fa8:  1f 05 00 b1   cmn	x8, #0x1
0x101464fac:  e1 19 00 54   b.ne	loc_1014652e8 ; ⤵ 0x33c
0x101464fb0:  ; loc_101464fb0
0x101464fb0:  e8 88 00 d0   adrp	x8, 0x102582000
0x101464fb4:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101464fb8:  e0 03 14 aa   mov	x0, x20
0x101464fbc:  01 00 80 52   mov	w1, #0
0x101464fc0:  cc c4 1a 94   bl	j__os_log_type_enabled
0x101464fc4:  00 03 00 34   cbz	w0, loc_101465024 ; ⤵ 0x60
0x101464fc8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464fcc:  93 ce 00 94   bl	0x101498a18
0x101464fd0:  88 44 00 90   adrp	x8, 0x101cf4000
0x101464fd4:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101464fd8:  e0 03 00 bd   str	s0, [sp]
0x101464fdc:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464fe0:  48 04 81 52   mov	w8, #0x822
0x101464fe4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464fe8:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464fec:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464ff0:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464ff4:  28 08 81 52   mov	w8, #0x841
0x101464ff8:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464ffc:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101465000:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465004:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465008:  a3 70 00 b0   adrp	x3, 0x10227a000
0x10146500c:  63 74 1c 91   add	x3, x3, #0x71d ; "{\"msg%{public}.0s\":\"#durian #hawkeye Sent last message fragment\", \"item\":%{private, location:escape_only}@}"
0x101465010:  e4 03 00 91   mov	x4, sp
0x101465014:  e1 03 14 aa   mov	x1, x20
0x101465018:  02 00 80 52   mov	w2, #0
0x10146501c:  85 03 80 52   mov	w5, #0x1c
0x101465020:  74 c0 1a 94   bl	j___os_log_impl
0x101465024:  ; loc_101465024
0x101465024:  e0 03 13 aa   mov	x0, x19
0x101465028:  b6 f9 1a 94   bl	j__objc_msgSend(x0, "delegate")
0x10146502c:  f4 03 00 aa   mov	x20, x0
0x101465030:  e0 03 13 aa   mov	x0, x19
0x101465034:  f3 d3 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101465038:  e3 03 00 aa   mov	x3, x0
0x10146503c:  e0 03 14 aa   mov	x0, x20
0x101465040:  e2 03 13 aa   mov	x2, x19
0x101465044:  04 00 80 d2   mov	x4, #0
0x101465048:  0e fc 1a 94   bl	j__objc_msgSend(x0, "device:didCompleteTask:withCompletionCommand:")
0x10146504c:  e0 03 13 aa   mov	x0, x19
0x101465050:  bc eb 1a 94   bl	j__objc_msgSend(x0, "completeCurrentTask")
0x101465054:  89 00 00 14   b	loc_101465278 ; ⤵ 0x224
0x101465058:  ; loc_101465058
0x101465058:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x10146505c:  fb 03 19 aa   mov	x27, x25
0x101465060:  1f 05 00 b1   cmn	x8, #0x1
0x101465064:  61 13 00 54   b.ne	loc_1014652d0 ; ⤵ 0x26c
0x101465068:  ; loc_101465068
0x101465068:  fa 88 00 b0   adrp	x26, 0x102582000
0x10146506c:  55 3f 46 f9   ldr	x21, [x26, #0xc78] ; data_102582c78 (__DATA.__data)
0x101465070:  e0 03 15 aa   mov	x0, x21
0x101465074:  01 02 80 52   mov	w1, #0x10
0x101465078:  9e c4 1a 94   bl	j__os_log_type_enabled
0x10146507c:  79 44 00 f0   adrp	x25, 0x101cf4000
0x101465080:  58 52 00 b0   adrp	x24, 0x101eae000
0x101465084:  18 e3 02 91   add	x24, x24, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465088:  a0 04 00 34   cbz	w0, loc_10146511c ; ⤵ 0x94
0x10146508c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465090:  62 ce 00 94   bl	0x101498a18
0x101465094:  f6 03 00 aa   mov	x22, x0
0x101465098:  e0 03 14 aa   mov	x0, x20
0x10146509c:  f1 c9 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x1014650a0:  f7 03 00 aa   mov	x23, x0
0x1014650a4:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x1014650a8:  c6 d9 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x1014650ac:  e2 03 00 aa   mov	x2, x0
0x1014650b0:  e0 03 13 aa   mov	x0, x19
0x1014650b4:  a3 22 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x1014650b8:  20 7f 46 fd   ldr	d0, [x25, #0xcf8]
0x1014650bc:  e0 03 00 bd   str	s0, [sp]
0x1014650c0:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014650c4:  48 04 81 52   mov	w8, #0x822
0x1014650c8:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014650cc:  f8 a3 00 f8   stur	x24, [sp, #0xa]
0x1014650d0:  28 08 81 52   mov	w8, #0x841
0x1014650d4:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014650d8:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x1014650dc:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1014650e0:  f7 e3 01 f8   stur	x23, [sp, #0x1e]
0x1014650e4:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x1014650e8:  e0 17 00 f9   str	x0, [sp, #0x28]
0x1014650ec:  c0 5c ff f0   adrp	x0, 0x100000000
0x1014650f0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014650f4:  a3 70 00 b0   adrp	x3, 0x10227a000
0x1014650f8:  63 10 06 91   add	x3, x3, #0x184 ; "{\"msg%{public}.0s\":\"#durian received characteristic write callback, but active task is not a GATTWriteTask\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}"...
0x1014650fc:  e4 03 00 91   mov	x4, sp
0x101465100:  e1 03 15 aa   mov	x1, x21
0x101465104:  02 02 80 52   mov	w2, #0x10
0x101465108:  05 06 80 52   mov	w5, #0x30
0x10146510c:  39 c0 1a 94   bl	j___os_log_impl
0x101465110:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465114:  1f 05 00 b1   cmn	x8, #0x1
0x101465118:  01 0e 00 54   b.ne	loc_1014652d8 ; ⤵ 0x1c0
0x10146511c:  ; loc_10146511c
0x10146511c:  55 3f 46 f9   ldr	x21, [x26, #0xc78]
0x101465120:  e0 03 15 aa   mov	x0, x21
0x101465124:  77 c4 1a 94   bl	j__os_signpost_enabled
0x101465128:  80 0a 00 34   cbz	w0, loc_101465278 ; ⤵ 0x150
0x10146512c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465130:  3a ce 00 94   bl	0x101498a18
0x101465134:  f6 03 00 aa   mov	x22, x0
0x101465138:  e0 03 14 aa   mov	x0, x20
0x10146513c:  c9 c9 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465140:  f4 03 00 aa   mov	x20, x0
0x101465144:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x101465148:  9e d9 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x10146514c:  e2 03 00 aa   mov	x2, x0
0x101465150:  e0 03 13 aa   mov	x0, x19
0x101465154:  7b 22 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101465158:  20 7f 46 fd   ldr	d0, [x25, #0xcf8]
0x10146515c:  e0 03 00 bd   str	s0, [sp]
0x101465160:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465164:  48 04 81 52   mov	w8, #0x822
0x101465168:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10146516c:  f8 a3 00 f8   stur	x24, [sp, #0xa]
0x101465170:  28 08 81 52   mov	w8, #0x841
0x101465174:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465178:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x10146517c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101465180:  f4 e3 01 f8   stur	x20, [sp, #0x1e]
0x101465184:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101465188:  e0 17 00 f9   str	x0, [sp, #0x28]
0x10146518c:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465190:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465194:  a4 70 00 b0   adrp	x4, 0x10227a000
0x101465198:  84 e4 09 91   add	x4, x4, #0x279 ; "#durian received characteristic write callback, but active task is not a GATTWriteTask"
0x10146519c:  a5 70 00 b0   adrp	x5, 0x10227a000
0x1014651a0:  a5 10 06 91   add	x5, x5, #0x184 ; "{\"msg%{public}.0s\":\"#durian received characteristic write callback, but active task is not a GATTWriteTask\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}"...
0x1014651a4:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x1014651a8:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x1014651ac:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x1014651b0:  e6 03 00 91   mov	x6, sp
0x1014651b4:  e1 03 15 aa   mov	x1, x21
0x1014651b8:  02 00 80 52   mov	w2, #0
0x1014651bc:  07 06 80 52   mov	w7, #0x30
0x1014651c0:  14 c0 1a 94   bl	j___os_signpost_emit_with_name_impl
0x1014651c4:  2d 00 00 14   b	loc_101465278 ; ⤵ 0xb4
0x1014651c8:  ; loc_1014651c8
0x1014651c8:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x1014651cc:  1f 05 00 b1   cmn	x8, #0x1
0x1014651d0:  41 09 00 54   b.ne	loc_1014652f8 ; ⤵ 0x128
0x1014651d4:  ; loc_1014651d4
0x1014651d4:  e8 88 00 b0   adrp	x8, 0x102582000
0x1014651d8:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014651dc:  e0 03 15 aa   mov	x0, x21
0x1014651e0:  01 00 80 52   mov	w1, #0
0x1014651e4:  43 c4 1a 94   bl	j__os_log_type_enabled
0x1014651e8:  00 03 00 34   cbz	w0, loc_101465248 ; ⤵ 0x60
0x1014651ec:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014651f0:  0a ce 00 94   bl	0x101498a18
0x1014651f4:  68 44 00 f0   adrp	x8, 0x101cf4000
0x1014651f8:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x1014651fc:  e0 03 00 bd   str	s0, [sp]
0x101465200:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465204:  48 04 81 52   mov	w8, #0x822
0x101465208:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10146520c:  48 52 00 b0   adrp	x8, 0x101eae000
0x101465210:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465214:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101465218:  28 08 81 52   mov	w8, #0x841
0x10146521c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465220:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101465224:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465228:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146522c:  a3 70 00 b0   adrp	x3, 0x10227a000
0x101465230:  63 9c 1a 91   add	x3, x3, #0x6a7 ; "{\"msg%{public}.0s\":\"#durian #hawkeye Sending next fragment of the message\", \"item\":%{private, location:escape_only}@}"
0x101465234:  e4 03 00 91   mov	x4, sp
0x101465238:  e1 03 15 aa   mov	x1, x21
0x10146523c:  02 00 80 52   mov	w2, #0
0x101465240:  85 03 80 52   mov	w5, #0x1c
0x101465244:  eb bf 1a 94   bl	j___os_log_impl
0x101465248:  ; loc_101465248
0x101465248:  62 16 40 f9   ldr	x2, [x19, #0x28]
0x10146524c:  e0 03 14 aa   mov	x0, x20
0x101465250:  2c 5c 1b 94   bl	j__objc_msgSend(x0, "nextPacketOfMaxSize:")
0x101465254:  f5 03 00 aa   mov	x21, x0
0x101465258:  73 0e 40 f9   ldr	x19, [x19, #0x18]
0x10146525c:  e0 03 14 aa   mov	x0, x20
0x101465260:  d8 e3 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x101465264:  e3 03 00 aa   mov	x3, x0
0x101465268:  e0 03 13 aa   mov	x0, x19
0x10146526c:  e2 03 15 aa   mov	x2, x21
0x101465270:  04 00 80 d2   mov	x4, #0
0x101465274:  f3 e8 1b 94   bl	j__objc_msgSend(x0, "writeValue:forCharacteristic:type:")
0x101465278:  ; loc_101465278
0x101465278:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x10146527c:  69 79 00 b0   adrp	x9, 0x102392000
0x101465280:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101465284:  29 01 40 f9   ldr	x9, [x9]
0x101465288:  3f 01 08 eb   cmp	x9, x8
0x10146528c:  a1 03 00 54   b.ne	loc_101465300 ; ⤵ 0x74
0x101465290:  fd 7b 4a a9   ldp	fp, lr, [sp, #0xa0]
0x101465294:  f4 4f 49 a9   ldp	x20, x19, [sp, #0x90]
0x101465298:  f6 57 48 a9   ldp	x22, x21, [sp, #0x80]
0x10146529c:  f8 5f 47 a9   ldp	x24, x23, [sp, #0x70]
0x1014652a0:  fa 67 46 a9   ldp	x26, x25, [sp, #0x60]
0x1014652a4:  fc 6f 45 a9   ldp	x28, x27, [sp, #0x50]
0x1014652a8:  ff c3 02 91   add	sp, sp, #0xb0
0x1014652ac:  ff 0f 5f d6   retab
0x1014652b0:  ; loc_1014652b0
0x1014652b0:  54 ab 1a 94   bl	0x101b10000
0x1014652b4:  cc fd ff 17   b	loc_1014649e4 ; ⤴ -0x8d0
0x1014652b8:  ; loc_1014652b8
0x1014652b8:  53 ab 1a 94   bl	0x101b10004
0x1014652bc:  09 fe ff 17   b	loc_101464ae0 ; ⤴ -0x7dc
0x1014652c0:  ; loc_1014652c0
0x1014652c0:  51 ab 1a 94   bl	0x101b10004
0x1014652c4:  39 fe ff 17   b	loc_101464ba8 ; ⤴ -0x71c
0x1014652c8:  ; loc_1014652c8
0x1014652c8:  4f ab 1a 94   bl	0x101b10004
0x1014652cc:  82 fe ff 17   b	loc_101464cd4 ; ⤴ -0x5f8
0x1014652d0:  ; loc_1014652d0
0x1014652d0:  4d ab 1a 94   bl	0x101b10004
0x1014652d4:  65 ff ff 17   b	loc_101465068 ; ⤴ -0x26c
0x1014652d8:  ; loc_1014652d8
0x1014652d8:  4b ab 1a 94   bl	0x101b10004
0x1014652dc:  90 ff ff 17   b	loc_10146511c ; ⤴ -0x1c0
0x1014652e0:  ; loc_1014652e0
0x1014652e0:  49 ab 1a 94   bl	0x101b10004
0x1014652e4:  b3 fe ff 17   b	loc_101464db0 ; ⤴ -0x534
0x1014652e8:  ; loc_1014652e8
0x1014652e8:  47 ab 1a 94   bl	0x101b10004
0x1014652ec:  31 ff ff 17   b	loc_101464fb0 ; ⤴ -0x33c
0x1014652f0:  ; loc_1014652f0
0x1014652f0:  45 ab 1a 94   bl	0x101b10004
0x1014652f4:  ea fe ff 17   b	loc_101464e9c ; ⤴ -0x458
0x1014652f8:  ; loc_1014652f8
0x1014652f8:  43 ab 1a 94   bl	0x101b10004
0x1014652fc:  b6 ff ff 17   b	loc_1014651d4 ; ⤴ -0x128
0x101465300:  ; loc_101465300
0x101465300:  90 bf 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice peripheral:didUpdateNotificationStateForCharacteristic:error:]:
0x101465304:  7f 23 03 d5   pacibsp
0x101465308:  ff c3 02 d1   sub	sp, sp, #0xb0
0x10146530c:  fc 6f 05 a9   stp	x28, x27, [sp, #0x50]
0x101465310:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x101465314:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x101465318:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x10146531c:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x101465320:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x101465324:  fd 83 02 91   add	fp, sp, #0xa0
0x101465328:  f3 03 03 aa   mov	x19, x3
0x10146532c:  f4 03 00 aa   mov	x20, x0
0x101465330:  68 79 00 b0   adrp	x8, 0x102392000
0x101465334:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101465338:  08 01 40 f9   ldr	x8, [x8]
0x10146533c:  e8 27 00 f9   str	x8, [sp, #0x48]
0x101465340:  30 d3 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101465344:  f5 03 00 aa   mov	x21, x0
0x101465348:  c8 85 00 d0   adrp	x8, 0x10251f000
0x10146534c:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x101465350:  0c c3 1a 94   bl	j__objc_opt_class
0x101465354:  e1 03 00 aa   mov	x1, x0
0x101465358:  e0 03 15 aa   mov	x0, x21
0x10146535c:  0d c3 1a 94   bl	j__objc_opt_isKindOfClass
0x101465360:  60 01 00 37   tbnz	w0, #0, loc_10146538c ; ⤵ 0x2c
0x101465364:  e0 03 14 aa   mov	x0, x20
0x101465368:  26 d3 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x10146536c:  f5 03 00 aa   mov	x21, x0
0x101465370:  c8 85 00 d0   adrp	x8, 0x10251f000
0x101465374:  00 61 2d 91   add	x0, x8, #0xb58 ; CLDurianGATTWriteTask
0x101465378:  02 c3 1a 94   bl	j__objc_opt_class
0x10146537c:  e1 03 00 aa   mov	x1, x0
0x101465380:  e0 03 15 aa   mov	x0, x21
0x101465384:  03 c3 1a 94   bl	j__objc_opt_isKindOfClass
0x101465388:  00 06 00 36   tbz	w0, #0, loc_101465448 ; ⤵ 0xc0
0x10146538c:  ; loc_10146538c
0x10146538c:  e8 88 00 b0   adrp	x8, 0x102582000
0x101465390:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101465394:  1f 05 00 b1   cmn	x8, #0x1
0x101465398:  21 21 00 54   b.ne	loc_1014657bc ; ⤵ 0x424
0x10146539c:  e8 88 00 b0   adrp	x8, 0x102582000
0x1014653a0:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014653a4:  e0 03 13 aa   mov	x0, x19
0x1014653a8:  01 00 80 52   mov	w1, #0
0x1014653ac:  d1 c3 1a 94   bl	j__os_log_type_enabled
0x1014653b0:  00 03 00 34   cbz	w0, loc_101465410 ; ⤵ 0x60
0x1014653b4:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x1014653b8:  98 cd 00 94   bl	0x101498a18
0x1014653bc:  68 44 00 f0   adrp	x8, 0x101cf4000
0x1014653c0:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x1014653c4:  e0 03 00 bd   str	s0, [sp]
0x1014653c8:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014653cc:  48 04 81 52   mov	w8, #0x822
0x1014653d0:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014653d4:  48 52 00 b0   adrp	x8, 0x101eae000
0x1014653d8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014653dc:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014653e0:  28 08 81 52   mov	w8, #0x841
0x1014653e4:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014653e8:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x1014653ec:  c0 5c ff f0   adrp	x0, 0x100000000
0x1014653f0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014653f4:  a3 70 00 b0   adrp	x3, 0x10227a000
0x1014653f8:  63 24 1e 91   add	x3, x3, #0x789 ; "{\"msg%{public}.0s\":\"#durian #hawkeye #ut didUpdateNotificationState\", \"item\":%{private, location:escape_only}@}"
0x1014653fc:  e4 03 00 91   mov	x4, sp

