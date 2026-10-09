
-[CLDurianDevice peripheral:didDiscoverCharacteristicsForService:error:]:
0x101462958:  7f 23 03 d5   pacibsp
0x10146295c:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x101462960:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x101462964:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x101462968:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x10146296c:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x101462970:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x101462974:  fd 43 01 91   add	fp, sp, #0x50
0x101462978:  ff 43 10 d1   sub	sp, sp, #0x410
0x10146297c:  f6 03 04 aa   mov	x22, x4
0x101462980:  f7 03 03 aa   mov	x23, x3
0x101462984:  e2 43 00 f9   str	x2, [sp, #0x80]
0x101462988:  f8 03 00 aa   mov	x24, x0
0x10146298c:  88 79 00 90   adrp	x8, 0x102392000
0x101462990:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101462994:  08 01 40 f9   ldr	x8, [x8]
0x101462998:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x10146299c:  13 89 00 90   adrp	x19, 0x102582000
0x1014629a0:  1a 89 00 90   adrp	x26, 0x102582000
0x1014629a4:  e0 4f 00 f9   str	x0, [sp, #0x98]
0x1014629a8:  44 08 00 b4   cbz	x4, loc_101462ab0 ; ⤵ 0x108
0x1014629ac:  ; loc_1014629ac
0x1014629ac:  68 3a 46 f9   ldr	x8, [x19, #0xc70]
0x1014629b0:  1f 05 00 b1   cmn	x8, #0x1
0x1014629b4:  81 f9 00 54   b.ne	loc_1014648e4 ; ⤵ 0x1f30
0x1014629b8:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x1014629bc:  e0 03 14 aa   mov	x0, x20
0x1014629c0:  01 00 80 52   mov	w1, #0
0x1014629c4:  4b ce 1a 94   bl	j__os_log_type_enabled
0x1014629c8:  40 06 00 34   cbz	w0, loc_101462a90 ; ⤵ 0xc8
0x1014629cc:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x1014629d0:  12 d8 00 94   bl	0x101498a18
0x1014629d4:  f5 03 00 aa   mov	x21, x0
0x1014629d8:  e0 03 17 aa   mov	x0, x23
0x1014629dc:  a1 d3 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x1014629e0:  f3 03 17 aa   mov	x19, x23
0x1014629e4:  f7 03 00 aa   mov	x23, x0
0x1014629e8:  00 0f 40 f9   ldr	x0, [x24, #0x18]
0x1014629ec:  0d 37 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x1014629f0:  0a d8 00 94   bl	0x101498a18
0x1014629f4:  f8 03 00 aa   mov	x24, x0
0x1014629f8:  e0 03 16 aa   mov	x0, x22
0x1014629fc:  91 5b 1b 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x101462a00:  f6 03 00 aa   mov	x22, x0
0x101462a04:  e0 03 13 aa   mov	x0, x19
0x101462a08:  06 ee 1a 94   bl	j__objc_msgSend(x0, "characteristics")
0x101462a0c:  35 fb 1a 94   bl	j__objc_msgSend(x0, "count")
0x101462a10:  88 39 00 d0   adrp	x8, 0x101b94000
0x101462a14:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x101462a18:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101462a1c:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101462a20:  48 04 81 52   mov	w8, #0x822
0x101462a24:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101462a28:  68 52 00 90   adrp	x8, 0x101eae000
0x101462a2c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101462a30:  e9 83 0c 91   add	x9, sp, #0x320
0x101462a34:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x101462a38:  28 08 81 52   mov	w8, #0x841
0x101462a3c:  e8 67 06 79   strh	w8, [sp, #0x332]
0x101462a40:  35 41 01 f8   stur	x21, [x9, #0x14]
0x101462a44:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101462a48:  37 e1 01 f8   stur	x23, [x9, #0x1e]
0x101462a4c:  e8 8f 06 79   strh	w8, [sp, #0x346]
0x101462a50:  f8 a7 01 f9   str	x24, [sp, #0x348]
0x101462a54:  f8 4f 40 f9   ldr	x24, [sp, #0x98]
0x101462a58:  e8 a3 06 79   strh	w8, [sp, #0x350]
0x101462a5c:  36 21 03 f8   stur	x22, [x9, #0x32]
0x101462a60:  48 80 80 52   mov	w8, #0x402
0x101462a64:  e8 b7 06 79   strh	w8, [sp, #0x35a]
0x101462a68:  e0 5f 03 b9   str	w0, [sp, #0x35c]
0x101462a6c:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462a70:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101462a74:  a3 70 00 d0   adrp	x3, 0x102278000
0x101462a78:  63 80 3e 91   add	x3, x3, #0xfa0 ; "{\"msg%{public}.0s\":\"#durian failed to discover characteristic\", \"item\":%{private, location:escape_only}@, \"service\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"erro"...
0x101462a7c:  e4 83 0c 91   add	x4, sp, #0x320
0x101462a80:  e1 03 14 aa   mov	x1, x20
0x101462a84:  02 00 80 52   mov	w2, #0
0x101462a88:  05 08 80 52   mov	w5, #0x40
0x101462a8c:  d9 c9 1a 94   bl	j___os_log_impl
0x101462a90:  ; loc_101462a90
0x101462a90:  00 1f 40 f9   ldr	x0, [x24, #0x38]
0x101462a94:  13 fb 1a 94   bl	j__objc_msgSend(x0, "count")
0x101462a98:  e0 de 00 b4   cbz	x0, loc_101464674 ; ⤵ 0x1bdc
0x101462a9c:  00 1f 40 f9   ldr	x0, [x24, #0x38]
0x101462aa0:  02 00 80 d2   mov	x2, #0
0x101462aa4:  cf 68 1b 94   bl	j__objc_msgSend(x0, "objectAtIndex:")
0x101462aa8:  f4 03 00 aa   mov	x20, x0
0x101462aac:  f3 06 00 14   b	loc_101464678 ; ⤵ 0x1bcc
0x101462ab0:  ; loc_101462ab0
0x101462ab0:  e0 03 17 aa   mov	x0, x23
0x101462ab4:  db ed 1a 94   bl	j__objc_msgSend(x0, "characteristics")
0x101462ab8:  0a fb 1a 94   bl	j__objc_msgSend(x0, "count")
0x101462abc:  80 f7 ff b4   cbz	x0, loc_1014629ac ; ⤴ -0x110
0x101462ac0:  68 3a 46 f9   ldr	x8, [x19, #0xc70]
0x101462ac4:  1f 05 00 b1   cmn	x8, #0x1
0x101462ac8:  21 f1 00 54   b.ne	loc_1014648ec ; ⤵ 0x1e24
0x101462acc:  f7 07 00 f9   str	x23, [sp, #0x8]
0x101462ad0:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101462ad4:  e0 03 14 aa   mov	x0, x20
0x101462ad8:  01 00 80 52   mov	w1, #0
0x101462adc:  05 ce 1a 94   bl	j__os_log_type_enabled
0x101462ae0:  c0 04 00 34   cbz	w0, loc_101462b78 ; ⤵ 0x98
0x101462ae4:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101462ae8:  cc d7 00 94   bl	0x101498a18
0x101462aec:  f6 03 00 aa   mov	x22, x0
0x101462af0:  f3 07 40 f9   ldr	x19, [sp, #0x8]
0x101462af4:  e0 03 13 aa   mov	x0, x19
0x101462af8:  5a d3 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101462afc:  f7 03 00 aa   mov	x23, x0
0x101462b00:  e0 03 13 aa   mov	x0, x19
0x101462b04:  c7 ed 1a 94   bl	j__objc_msgSend(x0, "characteristics")
0x101462b08:  f6 fa 1a 94   bl	j__objc_msgSend(x0, "count")
0x101462b0c:  88 44 00 d0   adrp	x8, 0x101cf4000
0x101462b10:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101462b14:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101462b18:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101462b1c:  48 04 81 52   mov	w8, #0x822
0x101462b20:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101462b24:  68 52 00 90   adrp	x8, 0x101eae000
0x101462b28:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101462b2c:  e9 83 0c 91   add	x9, sp, #0x320
0x101462b30:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x101462b34:  28 08 81 52   mov	w8, #0x841
0x101462b38:  e8 67 06 79   strh	w8, [sp, #0x332]
0x101462b3c:  36 41 01 f8   stur	x22, [x9, #0x14]
0x101462b40:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101462b44:  37 e1 01 f8   stur	x23, [x9, #0x1e]
0x101462b48:  48 80 80 52   mov	w8, #0x402
0x101462b4c:  e8 8f 06 79   strh	w8, [sp, #0x346]
0x101462b50:  e0 4b 03 b9   str	w0, [sp, #0x348]
0x101462b54:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462b58:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101462b5c:  a3 70 00 f0   adrp	x3, 0x102279000
0x101462b60:  63 88 02 91   add	x3, x3, #0xa2 ; "{\"msg%{public}.0s\":\"#durian discovered characteristics for service \", \"item\":%{private, location:escape_only}@, \"service\":%{private, location:escape_only}@, \"count\":%{public}d}"
0x101462b64:  e4 83 0c 91   add	x4, sp, #0x320
0x101462b68:  e1 03 14 aa   mov	x1, x20
0x101462b6c:  02 00 80 52   mov	w2, #0
0x101462b70:  85 05 80 52   mov	w5, #0x2c
0x101462b74:  9f c9 1a 94   bl	j___os_log_impl
0x101462b78:  ; loc_101462b78
0x101462b78:  e0 03 18 aa   mov	x0, x24
0x101462b7c:  c9 52 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x101462b80:  a0 2c 00 34   cbz	w0, loc_101463114 ; ⤵ 0x594
0x101462b84:  08 cb 43 39   ldrb	w8, [x24, #0xf2]
0x101462b88:  08 05 00 51   sub	w8, w8, #0x1
0x101462b8c:  08 cb 03 39   strb	w8, [x24, #0xf2]
0x101462b90:  15 89 00 90   adrp	x21, 0x102582000
0x101462b94:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x101462b98:  1f 05 00 b1   cmn	x8, #0x1
0x101462b9c:  c1 ea 00 54   b.ne	loc_1014648f4 ; ⤵ 0x1d58
0x101462ba0:  f3 07 40 f9   ldr	x19, [sp, #0x8]
0x101462ba4:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101462ba8:  e0 03 14 aa   mov	x0, x20
0x101462bac:  01 00 80 52   mov	w1, #0
0x101462bb0:  d0 cd 1a 94   bl	j__os_log_type_enabled
0x101462bb4:  20 05 00 34   cbz	w0, loc_101462c58 ; ⤵ 0xa4
0x101462bb8:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101462bbc:  97 d7 00 94   bl	0x101498a18
0x101462bc0:  f6 03 00 aa   mov	x22, x0
0x101462bc4:  e0 03 13 aa   mov	x0, x19
0x101462bc8:  96 ed 1a 94   bl	j__objc_msgSend(x0, "characteristics")
0x101462bcc:  c5 fa 1a 94   bl	j__objc_msgSend(x0, "count")
0x101462bd0:  f7 03 00 aa   mov	x23, x0
0x101462bd4:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x101462bd8:  22 d3 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101462bdc:  08 cb c3 39   ldrsb	w8, [x24, #0xf2]
0x101462be0:  89 39 00 b0   adrp	x9, 0x101b93000
0x101462be4:  20 e9 47 fd   ldr	d0, [x9, #0xfd0]
0x101462be8:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101462bec:  49 04 81 52   mov	w9, #0x822
0x101462bf0:  e9 53 06 79   strh	w9, [sp, #0x328]
0x101462bf4:  69 52 00 90   adrp	x9, 0x101eae000
0x101462bf8:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101462bfc:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101462c00:  eb 83 0c 91   add	x11, sp, #0x320
0x101462c04:  69 a1 00 f8   stur	x9, [x11, #0xa]
0x101462c08:  29 08 81 52   mov	w9, #0x841
0x101462c0c:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101462c10:  76 41 01 f8   stur	x22, [x11, #0x14]
0x101462c14:  4a 80 80 52   mov	w10, #0x402
0x101462c18:  ea 7b 06 79   strh	w10, [sp, #0x33c]
0x101462c1c:  77 e1 01 b8   stur	w23, [x11, #0x1e]
0x101462c20:  f3 07 40 f9   ldr	x19, [sp, #0x8]
0x101462c24:  e9 87 06 79   strh	w9, [sp, #0x342]
0x101462c28:  60 41 02 f8   stur	x0, [x11, #0x24]
0x101462c2c:  ea 9b 06 79   strh	w10, [sp, #0x34c]
0x101462c30:  68 e1 02 b8   stur	w8, [x11, #0x2e]
0x101462c34:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462c38:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101462c3c:  a3 70 00 f0   adrp	x3, 0x102279000
0x101462c40:  63 4c 05 91   add	x3, x3, #0x153 ; "{\"msg%{public}.0s\":\"#durian #posh didDiscoverCharacteristics\", \"item\":%{private, location:escape_only}@, \"count\":%{public}d, \"service\":%{private, location:escape_only}@, \"left\":%{public}d}"
0x101462c44:  e4 83 0c 91   add	x4, sp, #0x320
0x101462c48:  e1 03 14 aa   mov	x1, x20
0x101462c4c:  02 00 80 52   mov	w2, #0
0x101462c50:  45 06 80 52   mov	w5, #0x32
0x101462c54:  67 c9 1a 94   bl	j___os_log_impl
0x101462c58:  ; loc_101462c58
0x101462c58:  08 6f 41 f9   ldr	x8, [x24, #0x2d8]
0x101462c5c:  e8 2f 00 f9   str	x8, [sp, #0x58]
0x101462c60:  00 e4 00 6f   movi	v0.2d, #0
0x101462c64:  e0 03 0b ad   stp	q0, q0, [sp, #0x160]
0x101462c68:  e0 03 0c ad   stp	q0, q0, [sp, #0x180]
0x101462c6c:  e0 03 13 aa   mov	x0, x19
0x101462c70:  6c ed 1a 94   bl	j__objc_msgSend(x0, "characteristics")
0x101462c74:  fb 03 00 aa   mov	x27, x0
0x101462c78:  e2 83 05 91   add	x2, sp, #0x160
0x101462c7c:  a3 a3 03 d1   sub	x3, fp, #0xe8
0x101462c80:  04 02 80 52   mov	w4, #0x10
0x101462c84:  9f fa 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101462c88:  e0 3b 00 f9   str	x0, [sp, #0x70]
0x101462c8c:  60 18 00 b4   cbz	x0, loc_101462f98 ; ⤵ 0x30c
0x101462c90:  e8 bb 40 f9   ldr	x8, [sp, #0x170]
0x101462c94:  16 01 40 f9   ldr	x22, [x8]
0x101462c98:  77 79 00 d0   adrp	x23, 0x102390000
0x101462c9c:  88 44 00 d0   adrp	x8, 0x101cf4000
0x101462ca0:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101462ca4:  e0 1b 80 3d   str	q0, [sp, #0x60]
0x101462ca8:  88 39 00 d0   adrp	x8, 0x101b94000
0x101462cac:  00 a1 40 fd   ldr	d0, [x8, #0x140]
0x101462cb0:  e0 13 80 3d   str	q0, [sp, #0x40]
0x101462cb4:  ; loc_101462cb4
0x101462cb4:  13 00 80 d2   mov	x19, #0
0x101462cb8:  ; loc_101462cb8
0x101462cb8:  e8 bb 40 f9   ldr	x8, [sp, #0x170]
0x101462cbc:  08 01 40 f9   ldr	x8, [x8]
0x101462cc0:  1f 01 16 eb   cmp	x8, x22
0x101462cc4:  60 00 00 54   b.eq	loc_101462cd0 ; ⤵ 0xc
0x101462cc8:  e0 03 1b aa   mov	x0, x27
0x101462ccc:  8d cc 1a 94   bl	j__objc_enumerationMutation
0x101462cd0:  ; loc_101462cd0
0x101462cd0:  e8 b7 40 f9   ldr	x8, [sp, #0x168]
0x101462cd4:  1c 79 73 f8   ldr	x28, [x8, x19, lsl #0x3]
0x101462cd8:  e0 03 1c aa   mov	x0, x28
0x101462cdc:  e1 d2 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101462ce0:  f9 03 00 aa   mov	x25, x0
0x101462ce4:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462ce8:  ee d4 1a 94   bl	j__objc_msgSend(x0, "_cl_PoshAccessoryNonOwnerCharacteristicUUID")
0x101462cec:  e2 03 00 aa   mov	x2, x0
0x101462cf0:  e0 03 19 aa   mov	x0, x25
0x101462cf4:  1b 4f 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101462cf8:  60 0d 00 34   cbz	w0, loc_101462ea4 ; ⤵ 0x1ac
0x101462cfc:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101462d00:  1f 05 00 b1   cmn	x8, #0x1
0x101462d04:  01 13 00 54   b.ne	loc_101462f64 ; ⤵ 0x260
0x101462d08:  ; loc_101462d08
0x101462d08:  59 3f 46 f9   ldr	x25, [x26, #0xc78]
0x101462d0c:  e0 03 19 aa   mov	x0, x25
0x101462d10:  01 00 80 52   mov	w1, #0
0x101462d14:  77 cd 1a 94   bl	j__os_log_type_enabled
0x101462d18:  00 03 00 34   cbz	w0, loc_101462d78 ; ⤵ 0x60
0x101462d1c:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101462d20:  3e d7 00 94   bl	0x101498a18
0x101462d24:  e0 1b c0 3d   ldr	q0, [sp, #0x60]
0x101462d28:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101462d2c:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101462d30:  48 04 81 52   mov	w8, #0x822
0x101462d34:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101462d38:  e8 83 0c 91   add	x8, sp, #0x320
0x101462d3c:  69 52 00 90   adrp	x9, 0x101eae000
0x101462d40:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101462d44:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101462d48:  29 08 81 52   mov	w9, #0x841
0x101462d4c:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101462d50:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101462d54:  e4 83 0c 91   add	x4, sp, #0x320
0x101462d58:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462d5c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101462d60:  e1 03 19 aa   mov	x1, x25
0x101462d64:  02 00 80 52   mov	w2, #0
0x101462d68:  a3 70 00 f0   adrp	x3, 0x102279000
0x101462d6c:  63 40 08 91   add	x3, x3, #0x210 ; "{\"msg%{public}.0s\":\"#durian #ut #posh non-owner Control Point\", \"item\":%{private, location:escape_only}@}"
0x101462d70:  85 03 80 52   mov	w5, #0x1c
0x101462d74:  1f c9 1a 94   bl	j___os_log_impl
0x101462d78:  ; loc_101462d78
0x101462d78:  e0 03 18 aa   mov	x0, x24
0x101462d7c:  e2 03 1c aa   mov	x2, x28
0x101462d80:  e0 b5 1b 94   bl	j__objc_msgSend(x0, "setPoshNonOwnerCharacteristic:")
0x101462d84:  e0 43 40 f9   ldr	x0, [sp, #0x80]
0x101462d88:  22 00 80 52   mov	w2, #0x1
0x101462d8c:  e3 03 1c aa   mov	x3, x28
0x101462d90:  3c b2 1b 94   bl	j__objc_msgSend(x0, "setNotifyValue:forCharacteristic:")
0x101462d94:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101462d98:  1f 05 00 b1   cmn	x8, #0x1
0x101462d9c:  81 0e 00 54   b.ne	loc_101462f6c ; ⤵ 0x1d0
0x101462da0:  ; loc_101462da0
0x101462da0:  59 3f 46 f9   ldr	x25, [x26, #0xc78]
0x101462da4:  e0 03 19 aa   mov	x0, x25
0x101462da8:  01 00 80 52   mov	w1, #0
0x101462dac:  51 cd 1a 94   bl	j__os_log_type_enabled
0x101462db0:  a0 07 00 34   cbz	w0, loc_101462ea4 ; ⤵ 0xf4
0x101462db4:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101462db8:  18 d7 00 94   bl	0x101498a18
0x101462dbc:  fa 03 00 aa   mov	x26, x0
0x101462dc0:  e0 03 1c aa   mov	x0, x28
0x101462dc4:  a7 d2 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101462dc8:  f7 03 16 aa   mov	x23, x22
0x101462dcc:  f6 03 1b aa   mov	x22, x27
0x101462dd0:  fb 03 00 aa   mov	x27, x0
0x101462dd4:  00 6f 41 f9   ldr	x0, [x24, #0x2d8]
0x101462dd8:  7a e2 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101462ddc:  e2 03 00 aa   mov	x2, x0
0x101462de0:  e0 03 18 aa   mov	x0, x24
0x101462de4:  57 2b 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101462de8:  f4 03 00 aa   mov	x20, x0
0x101462dec:  e0 03 1c aa   mov	x0, x28
0x101462df0:  34 ed 1b 94   bl	j__objc_msgSend(x0, "value")
0x101462df4:  f5 03 00 aa   mov	x21, x0
0x101462df8:  e0 2f 40 f9   ldr	x0, [sp, #0x58]
0x101462dfc:  f9 ec 1a 94   bl	j__objc_msgSend(x0, "characteristicPayload")
0x101462e00:  f8 03 00 aa   mov	x24, x0
0x101462e04:  e0 03 1c aa   mov	x0, x28
0x101462e08:  5e 78 1b 94   bl	j__objc_msgSend(x0, "properties")
0x101462e0c:  e0 13 c0 3d   ldr	q0, [sp, #0x40]
0x101462e10:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101462e14:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101462e18:  48 04 81 52   mov	w8, #0x822
0x101462e1c:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101462e20:  e8 83 0c 91   add	x8, sp, #0x320
0x101462e24:  69 52 00 90   adrp	x9, 0x101eae000
0x101462e28:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101462e2c:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101462e30:  29 08 81 52   mov	w9, #0x841
0x101462e34:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101462e38:  1a 41 01 f8   stur	x26, [x8, #0x14]
0x101462e3c:  1a 89 00 90   adrp	x26, 0x102582000
0x101462e40:  e9 7b 06 79   strh	w9, [sp, #0x33c]
0x101462e44:  1b e1 01 f8   stur	x27, [x8, #0x1e]
0x101462e48:  fb 03 16 aa   mov	x27, x22
0x101462e4c:  f6 03 17 aa   mov	x22, x23
0x101462e50:  77 79 00 d0   adrp	x23, 0x102390000
0x101462e54:  e9 8f 06 79   strh	w9, [sp, #0x346]
0x101462e58:  f4 a7 01 f9   str	x20, [sp, #0x348]
0x101462e5c:  e9 a3 06 79   strh	w9, [sp, #0x350]
0x101462e60:  15 21 03 f8   stur	x21, [x8, #0x32]
0x101462e64:  15 89 00 90   adrp	x21, 0x102582000
0x101462e68:  e9 b7 06 79   strh	w9, [sp, #0x35a]
0x101462e6c:  18 c1 03 f8   stur	x24, [x8, #0x3c]
0x101462e70:  f8 4f 40 f9   ldr	x24, [sp, #0x98]
0x101462e74:  49 00 81 52   mov	w9, #0x802
0x101462e78:  e9 cb 06 79   strh	w9, [sp, #0x364]
0x101462e7c:  00 61 04 f8   stur	x0, [x8, #0x46]
0x101462e80:  e4 83 0c 91   add	x4, sp, #0x320
0x101462e84:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462e88:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101462e8c:  e1 03 19 aa   mov	x1, x25
0x101462e90:  02 00 80 52   mov	w2, #0
0x101462e94:  a3 70 00 f0   adrp	x3, 0x102279000
0x101462e98:  63 e8 09 91   add	x3, x3, #0x27a ; "{\"msg%{public}.0s\":\"#durian #ut #posh enabling notifications & indications for characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"task\":%{p"...
0x101462e9c:  c5 09 80 52   mov	w5, #0x4e
0x101462ea0:  d4 c8 1a 94   bl	j___os_log_impl
0x101462ea4:  ; loc_101462ea4
0x101462ea4:  e0 03 1c aa   mov	x0, x28
0x101462ea8:  6e d2 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101462eac:  f4 03 00 aa   mov	x20, x0
0x101462eb0:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462eb4:  7b d3 1a 94   bl	j__objc_msgSend(x0, "_cl_BtTxPowerCharacteristicUUID")
0x101462eb8:  e2 03 00 aa   mov	x2, x0
0x101462ebc:  e0 03 14 aa   mov	x0, x20
0x101462ec0:  a8 4e 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101462ec4:  60 04 00 34   cbz	w0, loc_101462f50 ; ⤵ 0x8c
0x101462ec8:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x101462ecc:  1f 05 00 b1   cmn	x8, #0x1
0x101462ed0:  21 05 00 54   b.ne	loc_101462f74 ; ⤵ 0xa4
0x101462ed4:  ; loc_101462ed4
0x101462ed4:  59 3f 46 f9   ldr	x25, [x26, #0xc78]
0x101462ed8:  e0 03 19 aa   mov	x0, x25
0x101462edc:  01 00 80 52   mov	w1, #0
0x101462ee0:  04 cd 1a 94   bl	j__os_log_type_enabled
0x101462ee4:  00 03 00 34   cbz	w0, loc_101462f44 ; ⤵ 0x60
0x101462ee8:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101462eec:  cb d6 00 94   bl	0x101498a18
0x101462ef0:  e0 1b c0 3d   ldr	q0, [sp, #0x60]
0x101462ef4:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101462ef8:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101462efc:  48 04 81 52   mov	w8, #0x822
0x101462f00:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101462f04:  e8 83 0c 91   add	x8, sp, #0x320
0x101462f08:  69 52 00 90   adrp	x9, 0x101eae000
0x101462f0c:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101462f10:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101462f14:  29 08 81 52   mov	w9, #0x841
0x101462f18:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101462f1c:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101462f20:  e4 83 0c 91   add	x4, sp, #0x320
0x101462f24:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462f28:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101462f2c:  e1 03 19 aa   mov	x1, x25
0x101462f30:  02 00 80 52   mov	w2, #0
0x101462f34:  a3 70 00 f0   adrp	x3, 0x102279000
0x101462f38:  63 8c 0f 91   add	x3, x3, #0x3e3 ; "{\"msg%{public}.0s\":\"#durian #ut #posh bt tx power characteristic\", \"item\":%{private, location:escape_only}@}"
0x101462f3c:  85 03 80 52   mov	w5, #0x1c
0x101462f40:  ac c8 1a 94   bl	j___os_log_impl
0x101462f44:  ; loc_101462f44
0x101462f44:  e0 03 18 aa   mov	x0, x24
0x101462f48:  e2 03 1c aa   mov	x2, x28
0x101462f4c:  65 b5 1b 94   bl	j__objc_msgSend(x0, "setPoshBtTxPowerCharacteristic:")
0x101462f50:  ; loc_101462f50
0x101462f50:  73 06 00 91   add	x19, x19, #0x1
0x101462f54:  e8 3b 40 f9   ldr	x8, [sp, #0x70]
0x101462f58:  1f 01 13 eb   cmp	x8, x19
0x101462f5c:  e1 ea ff 54   b.ne	loc_101462cb8 ; ⤴ -0x2a4
0x101462f60:  07 00 00 14   b	loc_101462f7c ; ⤵ 0x1c
0x101462f64:  ; loc_101462f64
0x101462f64:  28 b4 1a 94   bl	0x101b10004
0x101462f68:  68 ff ff 17   b	loc_101462d08 ; ⤴ -0x260
0x101462f6c:  ; loc_101462f6c
0x101462f6c:  26 b4 1a 94   bl	0x101b10004
0x101462f70:  8c ff ff 17   b	loc_101462da0 ; ⤴ -0x1d0
0x101462f74:  ; loc_101462f74
0x101462f74:  24 b4 1a 94   bl	0x101b10004
0x101462f78:  d7 ff ff 17   b	loc_101462ed4 ; ⤴ -0xa4
0x101462f7c:  ; loc_101462f7c
0x101462f7c:  e2 83 05 91   add	x2, sp, #0x160
0x101462f80:  a3 a3 03 d1   sub	x3, fp, #0xe8
0x101462f84:  e0 03 1b aa   mov	x0, x27
0x101462f88:  04 02 80 52   mov	w4, #0x10
0x101462f8c:  dd f9 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101462f90:  e0 3b 00 f9   str	x0, [sp, #0x70]
0x101462f94:  00 e9 ff b5   cbnz	x0, loc_101462cb4 ; ⤴ -0x2e0
0x101462f98:  ; loc_101462f98
0x101462f98:  08 cb 43 39   ldrb	w8, [x24, #0xf2]
0x101462f9c:  88 0a 00 35   cbnz	w8, loc_1014630ec ; ⤵ 0x150
0x101462fa0:  08 37 41 f9   ldr	x8, [x24, #0x268]
0x101462fa4:  08 0a 00 b5   cbnz	x8, loc_1014630e4 ; ⤵ 0x140
0x101462fa8:  13 89 00 90   adrp	x19, 0x102582000
0x101462fac:  68 3a 46 f9   ldr	x8, [x19, #0xc70] ; data_102582c70 (__DATA.__data)
0x101462fb0:  1f 05 00 b1   cmn	x8, #0x1
0x101462fb4:  41 cb 00 54   b.ne	loc_10146491c ; ⤵ 0x1968
0x101462fb8:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101462fbc:  e0 03 16 aa   mov	x0, x22
0x101462fc0:  01 02 80 52   mov	w1, #0x10
0x101462fc4:  cb cc 1a 94   bl	j__os_log_type_enabled
0x101462fc8:  20 04 00 34   cbz	w0, loc_10146304c ; ⤵ 0x84
0x101462fcc:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101462fd0:  92 d6 00 94   bl	0x101498a18
0x101462fd4:  f4 03 00 aa   mov	x20, x0
0x101462fd8:  e0 2f 40 f9   ldr	x0, [sp, #0x58]
0x101462fdc:  89 ec 1a 94   bl	j__objc_msgSend(x0, "characteristicUUID")
0x101462fe0:  88 44 00 d0   adrp	x8, 0x101cf4000
0x101462fe4:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101462fe8:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101462fec:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101462ff0:  48 04 81 52   mov	w8, #0x822
0x101462ff4:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101462ff8:  68 52 00 90   adrp	x8, 0x101eae000
0x101462ffc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463000:  e9 83 0c 91   add	x9, sp, #0x320
0x101463004:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x101463008:  28 08 81 52   mov	w8, #0x841
0x10146300c:  e8 67 06 79   strh	w8, [sp, #0x332]
0x101463010:  34 41 01 f8   stur	x20, [x9, #0x14]
0x101463014:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101463018:  20 e1 01 f8   stur	x0, [x9, #0x1e]
0x10146301c:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463020:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463024:  a3 70 00 d0   adrp	x3, 0x102279000
0x101463028:  63 40 11 91   add	x3, x3, #0x450 ; "{\"msg%{public}.0s\":\"#durian #posh failed to discover non owner characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@}"
0x10146302c:  e4 83 0c 91   add	x4, sp, #0x320
0x101463030:  e1 03 16 aa   mov	x1, x22
0x101463034:  02 02 80 52   mov	w2, #0x10
0x101463038:  c5 04 80 52   mov	w5, #0x26
0x10146303c:  6d c8 1a 94   bl	j___os_log_impl
0x101463040:  68 3a 46 f9   ldr	x8, [x19, #0xc70]
0x101463044:  1f 05 00 b1   cmn	x8, #0x1
0x101463048:  e1 c6 00 54   b.ne	loc_101464924 ; ⤵ 0x18dc
0x10146304c:  ; loc_10146304c
0x10146304c:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101463050:  e0 03 16 aa   mov	x0, x22
0x101463054:  ab cc 1a 94   bl	j__os_signpost_enabled
0x101463058:  60 04 00 34   cbz	w0, loc_1014630e4 ; ⤵ 0x8c
0x10146305c:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101463060:  6e d6 00 94   bl	0x101498a18
0x101463064:  f4 03 00 aa   mov	x20, x0
0x101463068:  e0 2f 40 f9   ldr	x0, [sp, #0x58]
0x10146306c:  65 ec 1a 94   bl	j__objc_msgSend(x0, "characteristicUUID")
0x101463070:  88 44 00 b0   adrp	x8, 0x101cf4000
0x101463074:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101463078:  e0 23 03 bd   str	s0, [sp, #0x320]
0x10146307c:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463080:  48 04 81 52   mov	w8, #0x822
0x101463084:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463088:  48 52 00 f0   adrp	x8, 0x101eae000
0x10146308c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101463090:  e9 83 0c 91   add	x9, sp, #0x320
0x101463094:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x101463098:  28 08 81 52   mov	w8, #0x841
0x10146309c:  e8 67 06 79   strh	w8, [sp, #0x332]
0x1014630a0:  34 41 01 f8   stur	x20, [x9, #0x14]
0x1014630a4:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x1014630a8:  20 e1 01 f8   stur	x0, [x9, #0x1e]
0x1014630ac:  e0 5c ff b0   adrp	x0, 0x100000000
0x1014630b0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014630b4:  a4 70 00 d0   adrp	x4, 0x102279000
0x1014630b8:  84 f8 13 91   add	x4, x4, #0x4fe ; "#durian #posh failed to discover non owner characteristic"
0x1014630bc:  a5 70 00 d0   adrp	x5, 0x102279000
0x1014630c0:  a5 40 11 91   add	x5, x5, #0x450 ; "{\"msg%{public}.0s\":\"#durian #posh failed to discover non owner characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@}"
0x1014630c4:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x1014630c8:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x1014630cc:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x1014630d0:  e6 83 0c 91   add	x6, sp, #0x320
0x1014630d4:  e1 03 16 aa   mov	x1, x22
0x1014630d8:  02 00 80 52   mov	w2, #0
0x1014630dc:  c7 04 80 52   mov	w7, #0x26
0x1014630e0:  4c c8 1a 94   bl	j___os_signpost_emit_with_name_impl
0x1014630e4:  ; loc_1014630e4
0x1014630e4:  e0 03 18 aa   mov	x0, x24
0x1014630e8:  06 db 1a 94   bl	j__objc_msgSend(x0, "activate")
0x1014630ec:  ; loc_1014630ec
0x1014630ec:  e0 03 18 aa   mov	x0, x24
0x1014630f0:  c4 db 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014630f4:  f4 03 00 aa   mov	x20, x0
0x1014630f8:  e8 85 00 90   adrp	x8, 0x10251f000
0x1014630fc:  00 e1 2a 91   add	x0, x8, #0xab8 ; CLDurianGATTReadTask
0x101463100:  a0 cb 1a 94   bl	j__objc_opt_class
0x101463104:  e1 03 00 aa   mov	x1, x0
0x101463108:  e0 03 14 aa   mov	x0, x20
0x10146310c:  a1 cb 1a 94   bl	j__objc_opt_isKindOfClass
0x101463110:  80 ac 00 36   tbz	w0, #0, loc_1014646a0 ; ⤵ 0x1590
0x101463114:  ; loc_101463114
0x101463114:  e0 03 18 aa   mov	x0, x24
0x101463118:  c2 4b 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x10146311c:  40 24 00 34   cbz	w0, loc_1014635a4 ; ⤵ 0x488
0x101463120:  08 6f 41 f9   ldr	x8, [x24, #0x2d8]
0x101463124:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x101463128:  00 e4 00 6f   movi	v0.2d, #0
0x10146312c:  e0 03 09 ad   stp	q0, q0, [sp, #0x120]
0x101463130:  e0 03 0a ad   stp	q0, q0, [sp, #0x140]
0x101463134:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x101463138:  3a ec 1a 94   bl	j__objc_msgSend(x0, "characteristics")
0x10146313c:  e2 83 04 91   add	x2, sp, #0x120
0x101463140:  e3 83 0a 91   add	x3, sp, #0x2a0
0x101463144:  e0 23 00 f9   str	x0, [sp, #0x40]
0x101463148:  04 02 80 52   mov	w4, #0x10
0x10146314c:  6d f9 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101463150:  a0 22 00 b4   cbz	x0, loc_1014635a4 ; ⤵ 0x454
0x101463154:  f4 03 00 aa   mov	x20, x0
0x101463158:  ff 73 00 b9   str	wzr, [sp, #0x70]
0x10146315c:  e8 9b 40 f9   ldr	x8, [sp, #0x130]
0x101463160:  16 01 40 f9   ldr	x22, [x8]
0x101463164:  3c 00 80 52   mov	w28, #0x1
0x101463168:  77 79 00 b0   adrp	x23, 0x102390000
0x10146316c:  88 44 00 b0   adrp	x8, 0x101cf4000
0x101463170:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101463174:  e0 07 80 3d   str	q0, [sp, #0x10]
0x101463178:  88 39 00 b0   adrp	x8, 0x101b94000
0x10146317c:  00 a1 40 fd   ldr	d0, [x8, #0x140]
0x101463180:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x101463184:  ; loc_101463184
0x101463184:  13 00 80 d2   mov	x19, #0
0x101463188:  ; loc_101463188
0x101463188:  e8 9b 40 f9   ldr	x8, [sp, #0x130]
0x10146318c:  08 01 40 f9   ldr	x8, [x8]
0x101463190:  1f 01 16 eb   cmp	x8, x22
0x101463194:  60 00 00 54   b.eq	loc_1014631a0 ; ⤵ 0xc
0x101463198:  e0 23 40 f9   ldr	x0, [sp, #0x40]
0x10146319c:  59 cb 1a 94   bl	j__objc_enumerationMutation
0x1014631a0:  ; loc_1014631a0
0x1014631a0:  e8 97 40 f9   ldr	x8, [sp, #0x128]
0x1014631a4:  1b 79 73 f8   ldr	x27, [x8, x19, lsl #0x3]
0x1014631a8:  e0 03 1b aa   mov	x0, x27
0x1014631ac:  ad d1 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x1014631b0:  f5 03 00 aa   mov	x21, x0
0x1014631b4:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014631b8:  12 d3 1a 94   bl	j__objc_msgSend(x0, "_cl_DurianUnauthorizedPrecisionFindingCharacteristicUUID")
0x1014631bc:  e2 03 00 aa   mov	x2, x0
0x1014631c0:  e0 03 15 aa   mov	x0, x21
0x1014631c4:  e7 4d 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x1014631c8:  f9 03 1b aa   mov	x25, x27
0x1014631cc:  20 05 00 34   cbz	w0, loc_101463270 ; ⤵ 0xa4
0x1014631d0:  f5 88 00 f0   adrp	x21, 0x102582000
0x1014631d4:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014631d8:  1f 05 00 b1   cmn	x8, #0x1
0x1014631dc:  a1 1c 00 54   b.ne	loc_101463570 ; ⤵ 0x394
0x1014631e0:  ; loc_1014631e0
0x1014631e0:  5b 3f 46 f9   ldr	x27, [x26, #0xc78]
0x1014631e4:  e0 03 1b aa   mov	x0, x27
0x1014631e8:  01 00 80 52   mov	w1, #0
0x1014631ec:  41 cc 1a 94   bl	j__os_log_type_enabled
0x1014631f0:  00 03 00 34   cbz	w0, loc_101463250 ; ⤵ 0x60
0x1014631f4:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x1014631f8:  08 d6 00 94   bl	0x101498a18
0x1014631fc:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x101463200:  e0 23 03 bd   str	s0, [sp, #0x320]
0x101463204:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101463208:  48 04 81 52   mov	w8, #0x822
0x10146320c:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101463210:  e8 83 0c 91   add	x8, sp, #0x320
0x101463214:  49 52 00 f0   adrp	x9, 0x101eae000
0x101463218:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146321c:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101463220:  29 08 81 52   mov	w9, #0x841
0x101463224:  e9 67 06 79   strh	w9, [sp, #0x332]
0x101463228:  00 41 01 f8   stur	x0, [x8, #0x14]
0x10146322c:  e4 83 0c 91   add	x4, sp, #0x320
0x101463230:  e0 5c ff b0   adrp	x0, 0x100000000
0x101463234:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463238:  e1 03 1b aa   mov	x1, x27
0x10146323c:  02 00 80 52   mov	w2, #0
0x101463240:  a3 70 00 d0   adrp	x3, 0x102279000
0x101463244:  63 e0 14 91   add	x3, x3, #0x538 ; "{\"msg%{public}.0s\":\"#durian #ut Precise Finding Control Point\", \"item\":%{private, location:escape_only}@}"
0x101463248:  85 03 80 52   mov	w5, #0x1c
0x10146324c:  e9 c7 1a 94   bl	j___os_log_impl
0x101463250:  ; loc_101463250
0x101463250:  e0 03 18 aa   mov	x0, x24
0x101463254:  fb 03 19 aa   mov	x27, x25
0x101463258:  e2 03 19 aa   mov	x2, x25
0x10146325c:  d9 9e 1b 94   bl	j__objc_msgSend(x0, "setDurianNonOwnerPreciseFindingCharacteristic:")
0x101463260:  28 00 80 52   mov	w8, #0x1
0x101463264:  9c 0d 00 37   tbnz	w28, #0, loc_101463414 ; ⤵ 0x1b0
0x101463268:  e8 73 00 b9   str	w8, [sp, #0x70]
0x10146326c:  3d 00 00 14   b	loc_101463360 ; ⤵ 0xf4
0x101463270:  ; loc_101463270
0x101463270:  e0 03 1b aa   mov	x0, x27
0x101463274:  7b d1 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101463278:  f5 03 00 aa   mov	x21, x0
0x10146327c:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101463280:  c8 d2 1a 94   bl	j__objc_msgSend(x0, "_cl_DurianUARPFirmwareUpdateCharacteristicUUID")
0x101463284:  e2 03 00 aa   mov	x2, x0
0x101463288:  e0 03 15 aa   mov	x0, x21
0x10146328c:  b5 4d 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101463290:  00 06 00 34   cbz	w0, loc_101463350 ; ⤵ 0xc0
0x101463294:  e8 88 00 f0   adrp	x8, 0x102582000
0x101463298:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146329c:  1f 05 00 b1   cmn	x8, #0x1
0x1014632a0:  c1 16 00 54   b.ne	loc_101463578 ; ⤵ 0x2d8
0x1014632a4:  ; loc_1014632a4
0x1014632a4:  5b 3f 46 f9   ldr	x27, [x26, #0xc78]
0x1014632a8:  e0 03 1b aa   mov	x0, x27
0x1014632ac:  01 00 80 52   mov	w1, #0
0x1014632b0:  10 cc 1a 94   bl	j__os_log_type_enabled
0x1014632b4:  00 03 00 34   cbz	w0, loc_101463314 ; ⤵ 0x60
0x1014632b8:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x1014632bc:  d7 d5 00 94   bl	0x101498a18
0x1014632c0:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x1014632c4:  e0 23 03 bd   str	s0, [sp, #0x320]
0x1014632c8:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x1014632cc:  48 04 81 52   mov	w8, #0x822
0x1014632d0:  e8 53 06 79   strh	w8, [sp, #0x328]
0x1014632d4:  e8 83 0c 91   add	x8, sp, #0x320
0x1014632d8:  49 52 00 f0   adrp	x9, 0x101eae000
0x1014632dc:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014632e0:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x1014632e4:  29 08 81 52   mov	w9, #0x841
0x1014632e8:  e9 67 06 79   strh	w9, [sp, #0x332]
0x1014632ec:  00 41 01 f8   stur	x0, [x8, #0x14]
0x1014632f0:  e4 83 0c 91   add	x4, sp, #0x320
0x1014632f4:  e0 5c ff b0   adrp	x0, 0x100000000
0x1014632f8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014632fc:  e1 03 1b aa   mov	x1, x27
0x101463300:  02 00 80 52   mov	w2, #0
0x101463304:  a3 70 00 d0   adrp	x3, 0x102279000
0x101463308:  63 88 16 91   add	x3, x3, #0x5a2 ; "{\"msg%{public}.0s\":\"#durian #FWUpdate UARP Firmware update characteristic\", \"item\":%{private, location:escape_only}@}"
0x10146330c:  85 03 80 52   mov	w5, #0x1c
0x101463310:  b8 c7 1a 94   bl	j___os_log_impl
0x101463314:  ; loc_101463314
0x101463314:  e0 03 18 aa   mov	x0, x24
0x101463318:  e2 03 19 aa   mov	x2, x25
0x10146331c:  b1 9e 1b 94   bl	j__objc_msgSend(x0, "setDurianUarpFirmwareUpdateCharacteristic:")
0x101463320:  15 83 40 f9   ldr	x21, [x24, #0x100]
0x101463324:  e0 03 19 aa   mov	x0, x25
0x101463328:  4e d1 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10146332c:  55 d1 1a 94   bl	j__objc_msgSend(x0, "UUIDString")
0x101463330:  e2 03 00 aa   mov	x2, x0
0x101463334:  e0 03 15 aa   mov	x0, x21
0x101463338:  6a f6 1a 94   bl	j__objc_msgSend(x0, "containsObject:")
0x10146333c:  60 01 00 36   tbz	w0, #0, loc_101463368 ; ⤵ 0x2c
0x101463340:  1c 00 80 52   mov	w28, #0
0x101463344:  28 00 80 52   mov	w8, #0x1
0x101463348:  e8 73 00 b9   str	w8, [sp, #0x70]
0x10146334c:  3b 00 00 14   b	loc_101463438 ; ⤵ 0xec
0x101463350:  ; loc_101463350
0x101463350:  f5 88 00 f0   adrp	x21, 0x102582000
0x101463354:  7c 00 00 36   tbz	w28, #0, loc_101463360 ; ⤵ 0xc
0x101463358:  e8 73 40 b9   ldr	w8, [sp, #0x70]
0x10146335c:  2e 00 00 14   b	loc_101463414 ; ⤵ 0xb8
0x101463360:  ; loc_101463360
0x101463360:  1c 00 80 52   mov	w28, #0
0x101463364:  36 00 00 14   b	loc_10146343c ; ⤵ 0xd8
0x101463368:  ; loc_101463368
0x101463368:  e8 88 00 f0   adrp	x8, 0x102582000
0x10146336c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101463370:  1f 05 00 b1   cmn	x8, #0x1
0x101463374:  61 10 00 54   b.ne	loc_101463580 ; ⤵ 0x20c
0x101463378:  ; loc_101463378
0x101463378:  5b 3f 46 f9   ldr	x27, [x26, #0xc78]
0x10146337c:  e0 03 1b aa   mov	x0, x27
0x101463380:  01 00 80 52   mov	w1, #0
0x101463384:  db cb 1a 94   bl	j__os_log_type_enabled
0x101463388:  00 03 00 34   cbz	w0, loc_1014633e8 ; ⤵ 0x60
0x10146338c:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101463390:  a2 d5 00 94   bl	0x101498a18
0x101463394:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x101463398:  e0 23 03 bd   str	s0, [sp, #0x320]
0x10146339c:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x1014633a0:  48 04 81 52   mov	w8, #0x822
0x1014633a4:  e8 53 06 79   strh	w8, [sp, #0x328]
0x1014633a8:  e8 83 0c 91   add	x8, sp, #0x320
0x1014633ac:  49 52 00 f0   adrp	x9, 0x101eae000
0x1014633b0:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014633b4:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x1014633b8:  29 08 81 52   mov	w9, #0x841
0x1014633bc:  e9 67 06 79   strh	w9, [sp, #0x332]
0x1014633c0:  00 41 01 f8   stur	x0, [x8, #0x14]
0x1014633c4:  e4 83 0c 91   add	x4, sp, #0x320
0x1014633c8:  e0 5c ff b0   adrp	x0, 0x100000000
0x1014633cc:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014633d0:  e1 03 1b aa   mov	x1, x27
0x1014633d4:  02 00 80 52   mov	w2, #0
0x1014633d8:  a3 70 00 d0   adrp	x3, 0x102279000
0x1014633dc:  63 60 18 91   add	x3, x3, #0x618 ; "{\"msg%{public}.0s\":\"#durian #FWUpdate Enabling notification for UARP Firmware update characteristic\", \"item\":%{private, location:escape_only}@}"
0x1014633e0:  85 03 80 52   mov	w5, #0x1c
0x1014633e4:  83 c7 1a 94   bl	j___os_log_impl
0x1014633e8:  ; loc_1014633e8
0x1014633e8:  15 83 40 f9   ldr	x21, [x24, #0x100]
0x1014633ec:  fb 03 19 aa   mov	x27, x25
0x1014633f0:  e0 03 19 aa   mov	x0, x25
0x1014633f4:  1b d1 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x1014633f8:  22 d1 1a 94   bl	j__objc_msgSend(x0, "UUIDString")
0x1014633fc:  e2 03 00 aa   mov	x2, x0
0x101463400:  e0 03 15 aa   mov	x0, x21
0x101463404:  4f dd 1a 94   bl	j__objc_msgSend(x0, "addObject:")
0x101463408:  28 00 80 52   mov	w8, #0x1
0x10146340c:  3c 01 00 36   tbz	w28, #0, loc_101463430 ; ⤵ 0x24
0x101463410:  f5 88 00 f0   adrp	x21, 0x102582000
0x101463414:  ; loc_101463414
0x101463414:  e8 73 00 b9   str	w8, [sp, #0x70]
0x101463418:  02 01 00 12   and	w2, w8, #0x1
0x10146341c:  e0 43 40 f9   ldr	x0, [sp, #0x80]
0x101463420:  e3 03 1b aa   mov	x3, x27
0x101463424:  97 b0 1b 94   bl	j__objc_msgSend(x0, "setNotifyValue:forCharacteristic:")
0x101463428:  3c 00 80 52   mov	w28, #0x1
0x10146342c:  04 00 00 14   b	loc_10146343c ; ⤵ 0x10
0x101463430:  ; loc_101463430
0x101463430:  e8 73 00 b9   str	w8, [sp, #0x70]
0x101463434:  1c 00 80 52   mov	w28, #0
0x101463438:  ; loc_101463438
0x101463438:  f5 88 00 f0   adrp	x21, 0x102582000
0x10146343c:  ; loc_10146343c
0x10146343c:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x101463440:  1f 05 00 b1   cmn	x8, #0x1
0x101463444:  21 09 00 54   b.ne	loc_101463568 ; ⤵ 0x124
0x101463448:  ; loc_101463448
0x101463448:  5b 3f 46 f9   ldr	x27, [x26, #0xc78]
0x10146344c:  e0 03 1b aa   mov	x0, x27
0x101463450:  01 00 80 52   mov	w1, #0
0x101463454:  a7 cb 1a 94   bl	j__os_log_type_enabled
0x101463458:  00 08 00 34   cbz	w0, loc_101463558 ; ⤵ 0x100
0x10146345c:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101463460:  6e d5 00 94   bl	0x101498a18
0x101463464:  e0 33 00 f9   str	x0, [sp, #0x60]
0x101463468:  e0 03 19 aa   mov	x0, x25
0x10146346c:  fd d0 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101463470:  e0 2f 00 f9   str	x0, [sp, #0x58]
0x101463474:  00 6f 41 f9   ldr	x0, [x24, #0x2d8]
0x101463478:  d2 e0 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x10146347c:  e2 03 00 aa   mov	x2, x0
0x101463480:  e0 03 18 aa   mov	x0, x24
0x101463484:  af 29 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101463488:  fa 03 00 aa   mov	x26, x0
0x10146348c:  e0 03 19 aa   mov	x0, x25
0x101463490:  8c eb 1b 94   bl	j__objc_msgSend(x0, "value")
0x101463494:  f5 03 1c aa   mov	x21, x28
0x101463498:  fc 03 17 aa   mov	x28, x23
0x10146349c:  f7 03 14 aa   mov	x23, x20
0x1014634a0:  f4 03 16 aa   mov	x20, x22
0x1014634a4:  f6 03 00 aa   mov	x22, x0
0x1014634a8:  e0 1f 40 f9   ldr	x0, [sp, #0x38]
0x1014634ac:  4d eb 1a 94   bl	j__objc_msgSend(x0, "characteristicPayload")
0x1014634b0:  f8 03 00 aa   mov	x24, x0
0x1014634b4:  e0 03 19 aa   mov	x0, x25
0x1014634b8:  b2 76 1b 94   bl	j__objc_msgSend(x0, "properties")
0x1014634bc:  e0 0b c0 3d   ldr	q0, [sp, #0x20]
0x1014634c0:  e0 23 03 bd   str	s0, [sp, #0x320]
0x1014634c4:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x1014634c8:  48 04 81 52   mov	w8, #0x822
0x1014634cc:  e8 53 06 79   strh	w8, [sp, #0x328]
0x1014634d0:  e8 83 0c 91   add	x8, sp, #0x320
0x1014634d4:  49 52 00 f0   adrp	x9, 0x101eae000
0x1014634d8:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014634dc:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x1014634e0:  29 08 81 52   mov	w9, #0x841
0x1014634e4:  e9 67 06 79   strh	w9, [sp, #0x332]
0x1014634e8:  ea af 45 a9   ldp	x10, x11, [sp, #0x58]
0x1014634ec:  0b 41 01 f8   stur	x11, [x8, #0x14]
0x1014634f0:  e9 7b 06 79   strh	w9, [sp, #0x33c]
0x1014634f4:  0a e1 01 f8   stur	x10, [x8, #0x1e]
0x1014634f8:  e9 8f 06 79   strh	w9, [sp, #0x346]
0x1014634fc:  fa a7 01 f9   str	x26, [sp, #0x348]
0x101463500:  fa 88 00 f0   adrp	x26, 0x102582000
0x101463504:  e9 a3 06 79   strh	w9, [sp, #0x350]
0x101463508:  16 21 03 f8   stur	x22, [x8, #0x32]
0x10146350c:  f6 03 14 aa   mov	x22, x20
0x101463510:  f4 03 17 aa   mov	x20, x23
0x101463514:  f7 03 1c aa   mov	x23, x28
0x101463518:  fc 03 15 aa   mov	x28, x21
0x10146351c:  e9 b7 06 79   strh	w9, [sp, #0x35a]
0x101463520:  18 c1 03 f8   stur	x24, [x8, #0x3c]
0x101463524:  f8 4f 40 f9   ldr	x24, [sp, #0x98]
0x101463528:  29 00 81 52   mov	w9, #0x801
0x10146352c:  e9 cb 06 79   strh	w9, [sp, #0x364]
0x101463530:  00 61 04 f8   stur	x0, [x8, #0x46]
0x101463534:  e4 83 0c 91   add	x4, sp, #0x320
0x101463538:  e0 5c ff b0   adrp	x0, 0x100000000
0x10146353c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101463540:  e1 03 1b aa   mov	x1, x27
0x101463544:  02 00 80 52   mov	w2, #0
0x101463548:  a3 70 00 d0   adrp	x3, 0x102279000
0x10146354c:  63 a0 1a 91   add	x3, x3, #0x6a8 ; "{\"msg%{public}.0s\":\"#durian #ut enabling notifications & indications for characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"task\":%{private"...
0x101463550:  c5 09 80 52   mov	w5, #0x4e
0x101463554:  27 c7 1a 94   bl	j___os_log_impl
0x101463558:  ; loc_101463558
0x101463558:  73 06 00 91   add	x19, x19, #0x1
0x10146355c:  9f 02 13 eb   cmp	x20, x19
0x101463560:  41 e1 ff 54   b.ne	loc_101463188 ; ⤴ -0x3d8
0x101463564:  09 00 00 14   b	loc_101463588 ; ⤵ 0x24
0x101463568:  ; loc_101463568
0x101463568:  a7 b2 1a 94   bl	0x101b10004
0x10146356c:  b7 ff ff 17   b	loc_101463448 ; ⤴ -0x124
0x101463570:  ; loc_101463570
0x101463570:  a5 b2 1a 94   bl	0x101b10004
0x101463574:  1b ff ff 17   b	loc_1014631e0 ; ⤴ -0x394
0x101463578:  ; loc_101463578
0x101463578:  a3 b2 1a 94   bl	0x101b10004
0x10146357c:  4a ff ff 17   b	loc_1014632a4 ; ⤴ -0x2d8
0x101463580:  ; loc_101463580
0x101463580:  a1 b2 1a 94   bl	0x101b10004
0x101463584:  7d ff ff 17   b	loc_101463378 ; ⤴ -0x20c
0x101463588:  ; loc_101463588
0x101463588:  e2 83 04 91   add	x2, sp, #0x120
0x10146358c:  e3 83 0a 91   add	x3, sp, #0x2a0
0x101463590:  e0 23 40 f9   ldr	x0, [sp, #0x40]
0x101463594:  04 02 80 52   mov	w4, #0x10
0x101463598:  5a f8 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10146359c:  f4 03 00 aa   mov	x20, x0
0x1014635a0:  20 df ff b5   cbnz	x0, loc_101463184 ; ⤴ -0x41c
0x1014635a4:  ; loc_1014635a4
0x1014635a4:  e0 03 18 aa   mov	x0, x24
0x1014635a8:  a6 4d 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x1014635ac:  80 64 00 34   cbz	w0, loc_10146423c ; ⤵ 0xc90
0x1014635b0:  08 c7 43 39   ldrb	w8, [x24, #0xf1]
0x1014635b4:  08 05 00 51   sub	w8, w8, #0x1
0x1014635b8:  08 c7 03 39   strb	w8, [x24, #0xf1]
0x1014635bc:  f5 88 00 f0   adrp	x21, 0x102582000
0x1014635c0:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014635c4:  1f 05 00 b1   cmn	x8, #0x1
0x1014635c8:  a1 99 00 54   b.ne	loc_1014648fc ; ⤵ 0x1334
0x1014635cc:  f3 07 40 f9   ldr	x19, [sp, #0x8]
0x1014635d0:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x1014635d4:  e0 03 14 aa   mov	x0, x20
0x1014635d8:  01 00 80 52   mov	w1, #0
0x1014635dc:  45 cb 1a 94   bl	j__os_log_type_enabled
0x1014635e0:  20 05 00 34   cbz	w0, loc_101463684 ; ⤵ 0xa4
0x1014635e4:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x1014635e8:  0c d5 00 94   bl	0x101498a18
0x1014635ec:  f5 03 00 aa   mov	x21, x0
0x1014635f0:  e0 03 13 aa   mov	x0, x19
0x1014635f4:  0b eb 1a 94   bl	j__objc_msgSend(x0, "characteristics")
0x1014635f8:  3a f8 1a 94   bl	j__objc_msgSend(x0, "count")
0x1014635fc:  f6 03 00 aa   mov	x22, x0
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
0x101463684:  ; loc_101463684
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
0x101463790:  e1 03 1c aa   mov	x1, x28
0x101463794:  02 00 80 52   mov	w2, #0
0x101463798:  a3 70 00 d0   adrp	x3, 0x102279000
0x10146379c:  63 30 23 91   add	x3, x3, #0x8cc ; "{\"msg%{public}.0s\":\"#durian #hawkeye Configuration Control Point\", \"item\":%{private, location:escape_only}@}"
0x1014637a0:  85 03 80 52   mov	w5, #0x1c
0x1014637a4:  93 c6 1a 94   bl	j___os_log_impl
0x1014637a8:  ; loc_1014637a8
0x1014637a8:  f3 4f 40 f9   ldr	x19, [sp, #0x98]
0x1014637ac:  e0 03 13 aa   mov	x0, x19
0x1014637b0:  e2 03 14 aa   mov	x2, x20
0x1014637b4:  6b a3 1b 94   bl	j__objc_msgSend(x0, "setHawkeyeConfigurationCharacteristic:")
0x1014637b8:  e0 03 13 aa   mov	x0, x19
0x1014637bc:  f9 6d 1b 94   bl	j__objc_msgSend(x0, "ownership")
0x1014637c0:  1f 04 00 f1   cmp	x0, #0x1
0x1014637c4:  20 17 00 54   b.eq	loc_101463aa8 ; ⤵ 0x2e4
0x1014637c8:  bc 00 00 14   b	loc_101463ab8 ; ⤵ 0x2f0
0x1014637cc:  ; loc_1014637cc
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

