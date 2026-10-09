
-[CLDurianDevice peripheral:didDiscoverServices:]:
0x101461a04:  7f 23 03 d5   pacibsp
0x101461a08:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x101461a0c:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x101461a10:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x101461a14:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x101461a18:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x101461a1c:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x101461a20:  fd 43 01 91   add	fp, sp, #0x50
0x101461a24:  ff 03 0e d1   sub	sp, sp, #0x380
0x101461a28:  f6 03 03 aa   mov	x22, x3
0x101461a2c:  e2 17 00 f9   str	x2, [sp, #0x28]
0x101461a30:  f3 03 00 aa   mov	x19, x0
0x101461a34:  88 79 00 b0   adrp	x8, 0x102392000
0x101461a38:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101461a3c:  08 01 40 f9   ldr	x8, [x8]
0x101461a40:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x101461a44:  14 89 00 b0   adrp	x20, 0x102582000
0x101461a48:  23 08 00 b4   cbz	x3, loc_101461b4c ; ⤵ 0x104
0x101461a4c:  ; loc_101461a4c
0x101461a4c:  88 3a 46 f9   ldr	x8, [x20, #0xc70]
0x101461a50:  1f 05 00 b1   cmn	x8, #0x1
0x101461a54:  01 76 00 54   b.ne	loc_101462914 ; ⤵ 0xec0
0x101461a58:  08 89 00 b0   adrp	x8, 0x102582000
0x101461a5c:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101461a60:  e0 03 15 aa   mov	x0, x21
0x101461a64:  01 00 80 52   mov	w1, #0
0x101461a68:  22 d2 1a 94   bl	j__os_log_type_enabled
0x101461a6c:  00 06 00 34   cbz	w0, loc_101461b2c ; ⤵ 0xc0
0x101461a70:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101461a74:  e9 db 00 94   bl	0x101498a18
0x101461a78:  f7 03 00 aa   mov	x23, x0
0x101461a7c:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x101461a80:  e8 3a 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x101461a84:  e5 db 00 94   bl	0x101498a18
0x101461a88:  f8 03 00 aa   mov	x24, x0
0x101461a8c:  e0 03 16 aa   mov	x0, x22
0x101461a90:  6c 5f 1b 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x101461a94:  f6 03 00 aa   mov	x22, x0
0x101461a98:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101461a9c:  31 98 1b 94   bl	j__objc_msgSend(x0, "services")
0x101461aa0:  10 ff 1a 94   bl	j__objc_msgSend(x0, "count")
0x101461aa4:  f4 03 00 aa   mov	x20, x0
0x101461aa8:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x101461aac:  45 e7 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101461ab0:  88 39 00 f0   adrp	x8, 0x101b94000
0x101461ab4:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x101461ab8:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101461abc:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101461ac0:  48 04 81 52   mov	w8, #0x822
0x101461ac4:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x101461ac8:  68 52 00 b0   adrp	x8, 0x101eae000
0x101461acc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101461ad0:  a9 c3 02 d1   sub	x9, fp, #0xb0
0x101461ad4:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x101461ad8:  28 08 81 52   mov	w8, #0x841
0x101461adc:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x101461ae0:  37 41 01 f8   stur	x23, [x9, #0x14]
0x101461ae4:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x101461ae8:  38 e1 01 f8   stur	x24, [x9, #0x1e]
0x101461aec:  a8 63 17 78   sturh	w8, [fp, #-0x8a]
0x101461af0:  b6 83 17 f8   stur	x22, [fp, #-0x88]
0x101461af4:  48 80 80 52   mov	w8, #0x402
0x101461af8:  a8 03 18 78   sturh	w8, [fp, #-0x80]
0x101461afc:  34 21 03 b8   stur	w20, [x9, #0x32]
0x101461b00:  a8 63 18 78   sturh	w8, [fp, #-0x7a]
0x101461b04:  a0 83 18 b8   stur	w0, [fp, #-0x78]
0x101461b08:  e0 5c ff f0   adrp	x0, 0x100000000
0x101461b0c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101461b10:  a3 70 00 f0   adrp	x3, 0x102278000
0x101461b14:  63 00 23 91   add	x3, x3, #0x8c0 ; "{\"msg%{public}.0s\":\"#durian failed to discover services\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"error\":%{private, location:escape_only}@, \"count\":%{pub"...
0x101461b18:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101461b1c:  e1 03 15 aa   mov	x1, x21
0x101461b20:  02 00 80 52   mov	w2, #0
0x101461b24:  85 07 80 52   mov	w5, #0x3c
0x101461b28:  b2 cd 1a 94   bl	j___os_log_impl
0x101461b2c:  ; loc_101461b2c
0x101461b2c:  63 6e 41 f9   ldr	x3, [x19, #0x2d8]
0x101461b30:  63 13 00 b4   cbz	x3, loc_101461d9c ; ⤵ 0x26c
0x101461b34:  60 62 41 f9   ldr	x0, [x19, #0x2c0]
0x101461b38:  e2 03 13 aa   mov	x2, x19
0x101461b3c:  24 04 80 52   mov	w4, #0x21
0x101461b40:  25 00 80 52   mov	w5, #0x1
0x101461b44:  57 09 1b 94   bl	j__objc_msgSend(x0, "device:didFailToCompleteTask:withError:andDisconnect:")
0x101461b48:  99 00 00 14   b	loc_101461dac ; ⤵ 0x264
0x101461b4c:  ; loc_101461b4c
0x101461b4c:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101461b50:  04 98 1b 94   bl	j__objc_msgSend(x0, "services")
0x101461b54:  e3 fe 1a 94   bl	j__objc_msgSend(x0, "count")
0x101461b58:  a0 f7 ff b4   cbz	x0, loc_101461a4c ; ⤴ -0x10c
0x101461b5c:  88 3a 46 f9   ldr	x8, [x20, #0xc70]
0x101461b60:  1f 05 00 b1   cmn	x8, #0x1
0x101461b64:  c1 6d 00 54   b.ne	loc_10146291c ; ⤵ 0xdb8
0x101461b68:  08 89 00 b0   adrp	x8, 0x102582000
0x101461b6c:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101461b70:  e0 03 15 aa   mov	x0, x21
0x101461b74:  01 00 80 52   mov	w1, #0
0x101461b78:  de d1 1a 94   bl	j__os_log_type_enabled
0x101461b7c:  c0 03 00 34   cbz	w0, loc_101461bf4 ; ⤵ 0x78
0x101461b80:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101461b84:  a5 db 00 94   bl	0x101498a18
0x101461b88:  f6 03 00 aa   mov	x22, x0
0x101461b8c:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101461b90:  f4 97 1b 94   bl	j__objc_msgSend(x0, "services")
0x101461b94:  88 44 00 f0   adrp	x8, 0x101cf4000
0x101461b98:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101461b9c:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101461ba0:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101461ba4:  48 04 81 52   mov	w8, #0x822
0x101461ba8:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x101461bac:  68 52 00 b0   adrp	x8, 0x101eae000
0x101461bb0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101461bb4:  a9 c3 02 d1   sub	x9, fp, #0xb0
0x101461bb8:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x101461bbc:  28 08 81 52   mov	w8, #0x841
0x101461bc0:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x101461bc4:  36 41 01 f8   stur	x22, [x9, #0x14]
0x101461bc8:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x101461bcc:  20 e1 01 f8   stur	x0, [x9, #0x1e]
0x101461bd0:  e0 5c ff f0   adrp	x0, 0x100000000
0x101461bd4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101461bd8:  a3 70 00 f0   adrp	x3, 0x102278000
0x101461bdc:  63 a8 26 91   add	x3, x3, #0x9aa ; "{\"msg%{public}.0s\":\"#durian discovered services\", \"item\":%{private, location:escape_only}@, \"service\":%{private, location:escape_only}@}"
0x101461be0:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101461be4:  e1 03 15 aa   mov	x1, x21
0x101461be8:  02 00 80 52   mov	w2, #0
0x101461bec:  c5 04 80 52   mov	w5, #0x26
0x101461bf0:  80 cd 1a 94   bl	j___os_log_impl
0x101461bf4:  ; loc_101461bf4
0x101461bf4:  68 b6 44 39   ldrb	w8, [x19, #0x12d]
0x101461bf8:  68 0f 00 36   tbz	w8, #0, loc_101461de4 ; ⤵ 0x1ec
0x101461bfc:  ; loc_101461bfc
0x101461bfc:  e0 03 13 aa   mov	x0, x19
0x101461c00:  00 e1 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101461c04:  f5 03 00 aa   mov	x21, x0
0x101461c08:  e8 85 00 d0   adrp	x8, 0x10251f000
0x101461c0c:  00 a1 29 91   add	x0, x8, #0xa68 ; CLDurianGATTTask
0x101461c10:  dc d0 1a 94   bl	j__objc_opt_class
0x101461c14:  e1 03 00 aa   mov	x1, x0
0x101461c18:  e0 03 15 aa   mov	x0, x21
0x101461c1c:  dd d0 1a 94   bl	j__objc_opt_isKindOfClass
0x101461c20:  c0 22 00 36   tbz	w0, #0, loc_101462078 ; ⤵ 0x458
0x101461c24:  fb 03 14 aa   mov	x27, x20
0x101461c28:  fa 03 13 aa   mov	x26, x19
0x101461c2c:  e0 03 13 aa   mov	x0, x19
0x101461c30:  f4 e0 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101461c34:  f5 03 00 aa   mov	x21, x0
0x101461c38:  00 e4 00 6f   movi	v0.2d, #0
0x101461c3c:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x101461c40:  e0 83 02 ad   stp	q0, q0, [sp, #0x50]
0x101461c44:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101461c48:  c6 97 1b 94   bl	j__objc_msgSend(x0, "services")
0x101461c4c:  f7 03 00 aa   mov	x23, x0
0x101461c50:  e2 c3 00 91   add	x2, sp, #0x30
0x101461c54:  e3 23 04 91   add	x3, sp, #0x108
0x101461c58:  04 02 80 52   mov	w4, #0x10
0x101461c5c:  a9 fe 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101461c60:  00 04 00 b4   cbz	x0, loc_101461ce0 ; ⤵ 0x80
0x101461c64:  f8 03 00 aa   mov	x24, x0
0x101461c68:  e8 23 40 f9   ldr	x8, [sp, #0x40]
0x101461c6c:  13 01 40 f9   ldr	x19, [x8]
0x101461c70:  ; loc_101461c70
0x101461c70:  14 00 80 d2   mov	x20, #0
0x101461c74:  ; loc_101461c74
0x101461c74:  e8 23 40 f9   ldr	x8, [sp, #0x40]
0x101461c78:  08 01 40 f9   ldr	x8, [x8]
0x101461c7c:  1f 01 13 eb   cmp	x8, x19
0x101461c80:  60 00 00 54   b.eq	loc_101461c8c ; ⤵ 0xc
0x101461c84:  e0 03 17 aa   mov	x0, x23
0x101461c88:  9e d0 1a 94   bl	j__objc_enumerationMutation
0x101461c8c:  ; loc_101461c8c
0x101461c8c:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x101461c90:  16 79 74 f8   ldr	x22, [x8, x20, lsl #0x3]
0x101461c94:  e0 03 16 aa   mov	x0, x22
0x101461c98:  f2 d6 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101461c9c:  f9 03 00 aa   mov	x25, x0
0x101461ca0:  e0 03 15 aa   mov	x0, x21
0x101461ca4:  9f 97 1b 94   bl	j__objc_msgSend(x0, "serviceUUID")
0x101461ca8:  e2 03 00 aa   mov	x2, x0
0x101461cac:  e0 03 19 aa   mov	x0, x25
0x101461cb0:  2c 53 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101461cb4:  00 51 00 35   cbnz	w0, loc_1014626d4 ; ⤵ 0xa20
0x101461cb8:  94 06 00 91   add	x20, x20, #0x1
0x101461cbc:  1f 03 14 eb   cmp	x24, x20
0x101461cc0:  a1 fd ff 54   b.ne	loc_101461c74 ; ⤴ -0x4c
0x101461cc4:  e2 c3 00 91   add	x2, sp, #0x30
0x101461cc8:  e3 23 04 91   add	x3, sp, #0x108
0x101461ccc:  e0 03 17 aa   mov	x0, x23
0x101461cd0:  04 02 80 52   mov	w4, #0x10
0x101461cd4:  8b fe 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101461cd8:  f8 03 00 aa   mov	x24, x0
0x101461cdc:  a0 fc ff b5   cbnz	x0, loc_101461c70 ; ⤴ -0x6c
0x101461ce0:  ; loc_101461ce0
0x101461ce0:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101461ce4:  1f 05 00 b1   cmn	x8, #0x1
0x101461ce8:  e1 62 00 54   b.ne	loc_101462944 ; ⤵ 0xc5c
0x101461cec:  08 89 00 b0   adrp	x8, 0x102582000
0x101461cf0:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101461cf4:  e0 03 14 aa   mov	x0, x20
0x101461cf8:  01 00 80 52   mov	w1, #0
0x101461cfc:  7d d1 1a 94   bl	j__os_log_type_enabled
0x101461d00:  60 05 00 34   cbz	w0, loc_101461dac ; ⤵ 0xac
0x101461d04:  40 b3 40 f9   ldr	x0, [x26, #0x160]
0x101461d08:  44 db 00 94   bl	0x101498a18
0x101461d0c:  f5 03 00 aa   mov	x21, x0
0x101461d10:  40 0f 40 f9   ldr	x0, [x26, #0x18]
0x101461d14:  43 3a 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x101461d18:  40 db 00 94   bl	0x101498a18
0x101461d1c:  f6 03 00 aa   mov	x22, x0
0x101461d20:  40 6f 41 f9   ldr	x0, [x26, #0x2d8]
0x101461d24:  a7 e6 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101461d28:  e2 03 00 aa   mov	x2, x0
0x101461d2c:  e0 03 1a aa   mov	x0, x26
0x101461d30:  84 2f 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101461d34:  88 44 00 f0   adrp	x8, 0x101cf4000
0x101461d38:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101461d3c:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101461d40:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101461d44:  48 04 81 52   mov	w8, #0x822
0x101461d48:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x101461d4c:  68 52 00 b0   adrp	x8, 0x101eae000
0x101461d50:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101461d54:  a9 c3 02 d1   sub	x9, fp, #0xb0
0x101461d58:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x101461d5c:  28 08 81 52   mov	w8, #0x841
0x101461d60:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x101461d64:  35 41 01 f8   stur	x21, [x9, #0x14]
0x101461d68:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x101461d6c:  36 e1 01 f8   stur	x22, [x9, #0x1e]
0x101461d70:  a8 63 17 78   sturh	w8, [fp, #-0x8a]
0x101461d74:  a0 83 17 f8   stur	x0, [fp, #-0x88]
0x101461d78:  e0 5c ff f0   adrp	x0, 0x100000000
0x101461d7c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101461d80:  a3 70 00 f0   adrp	x3, 0x102278000
0x101461d84:  63 78 3b 91   add	x3, x3, #0xede ; "{\"msg%{public}.0s\":\"#durian failed to discover service for task\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"task\":%{private, location:escape_only}@}"
0x101461d88:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101461d8c:  e1 03 14 aa   mov	x1, x20
0x101461d90:  02 00 80 52   mov	w2, #0
0x101461d94:  05 06 80 52   mov	w5, #0x30
0x101461d98:  b5 02 00 14   b	loc_10146286c ; ⤵ 0xad4
0x101461d9c:  ; loc_101461d9c
0x101461d9c:  82 81 00 d0   adrp	x2, 0x102493000
0x101461da0:  42 40 0e 91   add	x2, x2, #0x390 ; "MissingServiceCharacteristic"
0x101461da4:  e0 03 13 aa   mov	x0, x19
0x101461da8:  56 8a 1b 94   bl	j__objc_msgSend(x0, "requestDisconnection:")
0x101461dac:  ; loc_101461dac
0x101461dac:  a8 83 59 f8   ldur	x8, [fp, #-0x68]
0x101461db0:  89 79 00 b0   adrp	x9, 0x102392000
0x101461db4:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101461db8:  29 01 40 f9   ldr	x9, [x9]
0x101461dbc:  3f 01 08 eb   cmp	x9, x8
0x101461dc0:  a1 5c 00 54   b.ne	loc_101462954 ; ⤵ 0xb94
0x101461dc4:  ff 03 0e 91   add	sp, sp, #0x380
0x101461dc8:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x101461dcc:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x101461dd0:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x101461dd4:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x101461dd8:  fa 67 41 a9   ldp	x26, x25, [sp, #0x10]
0x101461ddc:  fc 6f c6 a8   ldp	x28, x27, [sp], #0x60
0x101461de0:  ff 0f 5f d6   retab
0x101461de4:  ; loc_101461de4
0x101461de4:  e0 03 13 aa   mov	x0, x19
0x101461de8:  2e 56 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x101461dec:  60 1f 00 34   cbz	w0, loc_1014621d8 ; ⤵ 0x3ec
0x101461df0:  f3 13 00 f9   str	x19, [sp, #0x20]
0x101461df4:  00 e4 00 6f   movi	v0.2d, #0
0x101461df8:  e0 83 06 ad   stp	q0, q0, [sp, #0xd0]
0x101461dfc:  e0 83 05 ad   stp	q0, q0, [sp, #0xb0]
0x101461e00:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101461e04:  57 97 1b 94   bl	j__objc_msgSend(x0, "services")
0x101461e08:  e2 c3 02 91   add	x2, sp, #0xb0
0x101461e0c:  e3 83 0a 91   add	x3, sp, #0x2a0
0x101461e10:  f7 03 00 aa   mov	x23, x0
0x101461e14:  04 02 80 52   mov	w4, #0x10
0x101461e18:  3a fe 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101461e1c:  e0 4c 00 b4   cbz	x0, loc_1014627b8 ; ⤵ 0x99c
0x101461e20:  f6 03 00 aa   mov	x22, x0
0x101461e24:  18 00 80 52   mov	w24, #0
0x101461e28:  e8 63 40 f9   ldr	x8, [sp, #0xc0]
0x101461e2c:  19 01 40 f9   ldr	x25, [x8]
0x101461e30:  73 79 00 f0   adrp	x19, 0x102390000
0x101461e34:  88 44 00 f0   adrp	x8, 0x101cf4000
0x101461e38:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101461e3c:  e0 07 80 3d   str	q0, [sp, #0x10]
0x101461e40:  34 08 81 52   mov	w20, #0x841
0x101461e44:  ; loc_101461e44
0x101461e44:  15 00 80 d2   mov	x21, #0
0x101461e48:  ; loc_101461e48
0x101461e48:  e8 63 40 f9   ldr	x8, [sp, #0xc0]
0x101461e4c:  08 01 40 f9   ldr	x8, [x8]
0x101461e50:  1f 01 19 eb   cmp	x8, x25
0x101461e54:  60 00 00 54   b.eq	loc_101461e60 ; ⤵ 0xc
0x101461e58:  e0 03 17 aa   mov	x0, x23
0x101461e5c:  29 d0 1a 94   bl	j__objc_enumerationMutation
0x101461e60:  ; loc_101461e60
0x101461e60:  e8 5f 40 f9   ldr	x8, [sp, #0xb8]
0x101461e64:  1a 79 75 f8   ldr	x26, [x8, x21, lsl #0x3]
0x101461e68:  e0 03 1a aa   mov	x0, x26
0x101461e6c:  7d d6 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101461e70:  fb 03 00 aa   mov	x27, x0
0x101461e74:  60 36 46 f9   ldr	x0, [x19, #0xc68]
0x101461e78:  92 d8 1a 94   bl	j__objc_msgSend(x0, "_cl_PoshAccessoryNonOwnerServiceUUID")
0x101461e7c:  e2 03 00 aa   mov	x2, x0
0x101461e80:  e0 03 1b aa   mov	x0, x27
0x101461e84:  b7 52 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101461e88:  40 06 00 34   cbz	w0, loc_101461f50 ; ⤵ 0xc8
0x101461e8c:  60 36 46 f9   ldr	x0, [x19, #0xc68]
0x101461e90:  84 d8 1a 94   bl	j__objc_msgSend(x0, "_cl_PoshAccessoryNonOwnerCharacteristicUUID")
0x101461e94:  e0 4f 01 f9   str	x0, [sp, #0x298]
0x101461e98:  88 79 00 90   adrp	x8, 0x102391000
0x101461e9c:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x101461ea0:  e2 63 0a 91   add	x2, sp, #0x298
0x101461ea4:  23 00 80 52   mov	w3, #0x1
0x101461ea8:  16 e8 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x101461eac:  fb 03 00 aa   mov	x27, x0
0x101461eb0:  08 89 00 b0   adrp	x8, 0x102582000
0x101461eb4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101461eb8:  1f 05 00 b1   cmn	x8, #0x1
0x101461ebc:  61 0c 00 54   b.ne	loc_101462048 ; ⤵ 0x18c
0x101461ec0:  ; loc_101461ec0
0x101461ec0:  08 89 00 b0   adrp	x8, 0x102582000
0x101461ec4:  1c 3d 46 f9   ldr	x28, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101461ec8:  e0 03 1c aa   mov	x0, x28
0x101461ecc:  01 00 80 52   mov	w1, #0
0x101461ed0:  08 d1 1a 94   bl	j__os_log_type_enabled
0x101461ed4:  40 03 00 34   cbz	w0, loc_101461f3c ; ⤵ 0x68
0x101461ed8:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x101461edc:  00 b1 40 f9   ldr	x0, [x8, #0x160]
0x101461ee0:  ce da 00 94   bl	0x101498a18
0x101461ee4:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x101461ee8:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101461eec:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101461ef0:  48 04 81 52   mov	w8, #0x822
0x101461ef4:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x101461ef8:  a8 c3 02 d1   sub	x8, fp, #0xb0
0x101461efc:  69 52 00 b0   adrp	x9, 0x101eae000
0x101461f00:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101461f04:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101461f08:  b4 23 16 78   sturh	w20, [fp, #-0x9e]
0x101461f0c:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101461f10:  b4 c3 16 78   sturh	w20, [fp, #-0x94]
0x101461f14:  1b e1 01 f8   stur	x27, [x8, #0x1e]
0x101461f18:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101461f1c:  e0 5c ff f0   adrp	x0, 0x100000000
0x101461f20:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101461f24:  e1 03 1c aa   mov	x1, x28
0x101461f28:  02 00 80 52   mov	w2, #0
0x101461f2c:  a3 70 00 f0   adrp	x3, 0x102278000
0x101461f30:  63 cc 28 91   add	x3, x3, #0xa33 ; "{\"msg%{public}.0s\":\"#durian #posh requesting characteristic-discovery\", \"item\":%{private, location:escape_only}@, \"characteristics\":%{private, location:escape_only}@}"
0x101461f34:  c5 04 80 52   mov	w5, #0x26
0x101461f38:  ae cc 1a 94   bl	j___os_log_impl
0x101461f3c:  ; loc_101461f3c
0x101461f3c:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101461f40:  e2 03 1b aa   mov	x2, x27
0x101461f44:  e3 03 1a aa   mov	x3, x26
0x101461f48:  4e 11 1b 94   bl	j__objc_msgSend(x0, "discoverCharacteristics:forService:")
0x101461f4c:  18 07 00 11   add	w24, w24, #0x1
0x101461f50:  ; loc_101461f50
0x101461f50:  e0 03 1a aa   mov	x0, x26
0x101461f54:  43 d6 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101461f58:  fb 03 00 aa   mov	x27, x0
0x101461f5c:  60 36 46 f9   ldr	x0, [x19, #0xc68]
0x101461f60:  58 d7 1a 94   bl	j__objc_msgSend(x0, "_cl_BtTxPowerServiceUUID")
0x101461f64:  e2 03 00 aa   mov	x2, x0
0x101461f68:  e0 03 1b aa   mov	x0, x27
0x101461f6c:  7d 52 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101461f70:  40 06 00 34   cbz	w0, loc_101462038 ; ⤵ 0xc8
0x101461f74:  60 36 46 f9   ldr	x0, [x19, #0xc68]
0x101461f78:  4a d7 1a 94   bl	j__objc_msgSend(x0, "_cl_BtTxPowerCharacteristicUUID")
0x101461f7c:  e0 4b 01 f9   str	x0, [sp, #0x290]
0x101461f80:  88 79 00 90   adrp	x8, 0x102391000
0x101461f84:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x101461f88:  e2 43 0a 91   add	x2, sp, #0x290
0x101461f8c:  23 00 80 52   mov	w3, #0x1
0x101461f90:  dc e7 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x101461f94:  fb 03 00 aa   mov	x27, x0
0x101461f98:  08 89 00 b0   adrp	x8, 0x102582000
0x101461f9c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101461fa0:  1f 05 00 b1   cmn	x8, #0x1
0x101461fa4:  61 05 00 54   b.ne	loc_101462050 ; ⤵ 0xac
0x101461fa8:  ; loc_101461fa8
0x101461fa8:  08 89 00 b0   adrp	x8, 0x102582000
0x101461fac:  1c 3d 46 f9   ldr	x28, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101461fb0:  e0 03 1c aa   mov	x0, x28
0x101461fb4:  01 00 80 52   mov	w1, #0
0x101461fb8:  ce d0 1a 94   bl	j__os_log_type_enabled
0x101461fbc:  40 03 00 34   cbz	w0, loc_101462024 ; ⤵ 0x68
0x101461fc0:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x101461fc4:  00 b1 40 f9   ldr	x0, [x8, #0x160]
0x101461fc8:  94 da 00 94   bl	0x101498a18
0x101461fcc:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x101461fd0:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101461fd4:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101461fd8:  48 04 81 52   mov	w8, #0x822
0x101461fdc:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x101461fe0:  a8 c3 02 d1   sub	x8, fp, #0xb0
0x101461fe4:  69 52 00 b0   adrp	x9, 0x101eae000
0x101461fe8:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101461fec:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101461ff0:  b4 23 16 78   sturh	w20, [fp, #-0x9e]
0x101461ff4:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101461ff8:  b4 c3 16 78   sturh	w20, [fp, #-0x94]
0x101461ffc:  1b e1 01 f8   stur	x27, [x8, #0x1e]
0x101462000:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101462004:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462008:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146200c:  e1 03 1c aa   mov	x1, x28
0x101462010:  02 00 80 52   mov	w2, #0
0x101462014:  a3 70 00 d0   adrp	x3, 0x102278000
0x101462018:  63 68 2b 91   add	x3, x3, #0xada ; "{\"msg%{public}.0s\":\"#durian #posh requesting characteristic-discovery for tx power\", \"item\":%{private, location:escape_only}@, \"characteristics\":%{private, location:escape_only}@}"
0x10146201c:  c5 04 80 52   mov	w5, #0x26
0x101462020:  74 cc 1a 94   bl	j___os_log_impl
0x101462024:  ; loc_101462024
0x101462024:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101462028:  e2 03 1b aa   mov	x2, x27
0x10146202c:  e3 03 1a aa   mov	x3, x26
0x101462030:  14 11 1b 94   bl	j__objc_msgSend(x0, "discoverCharacteristics:forService:")
0x101462034:  18 2b 00 11   add	w24, w24, #0xa
0x101462038:  ; loc_101462038
0x101462038:  b5 06 00 91   add	x21, x21, #0x1
0x10146203c:  df 02 15 eb   cmp	x22, x21
0x101462040:  41 f0 ff 54   b.ne	loc_101461e48 ; ⤴ -0x1f8
0x101462044:  05 00 00 14   b	loc_101462058 ; ⤵ 0x14
0x101462048:  ; loc_101462048
0x101462048:  ef b7 1a 94   bl	0x101b10004
0x10146204c:  9d ff ff 17   b	loc_101461ec0 ; ⤴ -0x18c
0x101462050:  ; loc_101462050
0x101462050:  ed b7 1a 94   bl	0x101b10004
0x101462054:  d5 ff ff 17   b	loc_101461fa8 ; ⤴ -0xac
0x101462058:  ; loc_101462058
0x101462058:  e2 c3 02 91   add	x2, sp, #0xb0
0x10146205c:  e3 83 0a 91   add	x3, sp, #0x2a0
0x101462060:  e0 03 17 aa   mov	x0, x23
0x101462064:  04 02 80 52   mov	w4, #0x10
0x101462068:  a6 fd 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10146206c:  f6 03 00 aa   mov	x22, x0
0x101462070:  a0 ee ff b5   cbnz	x0, loc_101461e44 ; ⤴ -0x22c
0x101462074:  d2 01 00 14   b	loc_1014627bc ; ⤵ 0x748
0x101462078:  ; loc_101462078
0x101462078:  88 3a 46 f9   ldr	x8, [x20, #0xc70]
0x10146207c:  f6 03 14 aa   mov	x22, x20
0x101462080:  1f 05 00 b1   cmn	x8, #0x1
0x101462084:  01 45 00 54   b.ne	loc_101462924 ; ⤵ 0x8a0
0x101462088:  08 89 00 90   adrp	x8, 0x102582000
0x10146208c:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101462090:  e0 03 14 aa   mov	x0, x20
0x101462094:  01 02 80 52   mov	w1, #0x10
0x101462098:  96 d0 1a 94   bl	j__os_log_type_enabled
0x10146209c:  80 04 00 34   cbz	w0, loc_10146212c ; ⤵ 0x90
0x1014620a0:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014620a4:  5d da 00 94   bl	0x101498a18
0x1014620a8:  f5 03 00 aa   mov	x21, x0
0x1014620ac:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x1014620b0:  c4 e5 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x1014620b4:  e2 03 00 aa   mov	x2, x0
0x1014620b8:  e0 03 13 aa   mov	x0, x19
0x1014620bc:  a1 2e 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x1014620c0:  88 44 00 d0   adrp	x8, 0x101cf4000
0x1014620c4:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x1014620c8:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x1014620cc:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x1014620d0:  48 04 81 52   mov	w8, #0x822
0x1014620d4:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x1014620d8:  68 52 00 90   adrp	x8, 0x101eae000
0x1014620dc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014620e0:  a9 c3 02 d1   sub	x9, fp, #0xb0
0x1014620e4:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x1014620e8:  28 08 81 52   mov	w8, #0x841
0x1014620ec:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x1014620f0:  35 41 01 f8   stur	x21, [x9, #0x14]
0x1014620f4:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x1014620f8:  20 e1 01 f8   stur	x0, [x9, #0x1e]
0x1014620fc:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462100:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101462104:  a3 70 00 d0   adrp	x3, 0x102278000
0x101462108:  63 4c 35 91   add	x3, x3, #0xd53 ; "{\"msg%{public}.0s\":\"#durian discovered services, but active task is not a GATT task\", \"item\":%{private, location:escape_only}@, \"task\":%{private, location:escape_only}@}"
0x10146210c:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101462110:  e1 03 14 aa   mov	x1, x20
0x101462114:  02 02 80 52   mov	w2, #0x10
0x101462118:  c5 04 80 52   mov	w5, #0x26
0x10146211c:  35 cc 1a 94   bl	j___os_log_impl
0x101462120:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x101462124:  1f 05 00 b1   cmn	x8, #0x1
0x101462128:  21 40 00 54   b.ne	loc_10146292c ; ⤵ 0x804
0x10146212c:  ; loc_10146212c
0x10146212c:  08 89 00 90   adrp	x8, 0x102582000
0x101462130:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101462134:  e0 03 14 aa   mov	x0, x20
0x101462138:  72 d0 1a 94   bl	j__os_signpost_enabled
0x10146213c:  80 e3 ff 34   cbz	w0, loc_101461dac ; ⤴ -0x390
0x101462140:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101462144:  35 da 00 94   bl	0x101498a18
0x101462148:  f5 03 00 aa   mov	x21, x0
0x10146214c:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x101462150:  9c e5 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101462154:  e2 03 00 aa   mov	x2, x0
0x101462158:  e0 03 13 aa   mov	x0, x19
0x10146215c:  79 2e 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101462160:  88 44 00 d0   adrp	x8, 0x101cf4000
0x101462164:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101462168:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x10146216c:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101462170:  48 04 81 52   mov	w8, #0x822
0x101462174:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x101462178:  68 52 00 90   adrp	x8, 0x101eae000
0x10146217c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101462180:  a9 c3 02 d1   sub	x9, fp, #0xb0
0x101462184:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x101462188:  28 08 81 52   mov	w8, #0x841
0x10146218c:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x101462190:  35 41 01 f8   stur	x21, [x9, #0x14]
0x101462194:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x101462198:  20 e1 01 f8   stur	x0, [x9, #0x1e]
0x10146219c:  e0 5c ff d0   adrp	x0, 0x100000000
0x1014621a0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014621a4:  a4 70 00 d0   adrp	x4, 0x102278000
0x1014621a8:  84 f4 37 91   add	x4, x4, #0xdfd ; "#durian discovered services, but active task is not a GATT task"
0x1014621ac:  a5 70 00 d0   adrp	x5, 0x102278000
0x1014621b0:  a5 4c 35 91   add	x5, x5, #0xd53 ; "{\"msg%{public}.0s\":\"#durian discovered services, but active task is not a GATT task\", \"item\":%{private, location:escape_only}@, \"task\":%{private, location:escape_only}@}"
0x1014621b4:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x1014621b8:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x1014621bc:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x1014621c0:  a6 c3 02 d1   sub	x6, fp, #0xb0
0x1014621c4:  e1 03 14 aa   mov	x1, x20
0x1014621c8:  02 00 80 52   mov	w2, #0
0x1014621cc:  c7 04 80 52   mov	w7, #0x26
0x1014621d0:  10 cc 1a 94   bl	j___os_signpost_emit_with_name_impl
0x1014621d4:  f6 fe ff 17   b	loc_101461dac ; ⤴ -0x428
0x1014621d8:  ; loc_1014621d8
0x1014621d8:  68 b6 44 39   ldrb	w8, [x19, #0x12d]
0x1014621dc:  08 d1 07 37   tbnz	w8, #0, loc_101461bfc ; ⤴ -0x5e0
0x1014621e0:  e0 03 13 aa   mov	x0, x19
0x1014621e4:  97 52 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x1014621e8:  a0 d0 ff 34   cbz	w0, loc_101461bfc ; ⤴ -0x5ec
0x1014621ec:  00 e4 00 6f   movi	v0.2d, #0
0x1014621f0:  e0 83 04 ad   stp	q0, q0, [sp, #0x90]
0x1014621f4:  e0 83 03 ad   stp	q0, q0, [sp, #0x70]
0x1014621f8:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x1014621fc:  59 96 1b 94   bl	j__objc_msgSend(x0, "services")
0x101462200:  e2 c3 01 91   add	x2, sp, #0x70
0x101462204:  e3 43 08 91   add	x3, sp, #0x210
0x101462208:  e0 07 00 f9   str	x0, [sp, #0x8]
0x10146220c:  04 02 80 52   mov	w4, #0x10
0x101462210:  3c fd 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101462214:  00 33 00 b4   cbz	x0, loc_101462874 ; ⤵ 0x660
0x101462218:  f6 03 00 aa   mov	x22, x0
0x10146221c:  1a 00 80 52   mov	w26, #0
0x101462220:  e8 43 40 f9   ldr	x8, [sp, #0x80]
0x101462224:  08 01 40 f9   ldr	x8, [x8]
0x101462228:  e8 13 00 f9   str	x8, [sp, #0x20]
0x10146222c:  77 79 00 d0   adrp	x23, 0x102390000
0x101462230:  88 44 00 d0   adrp	x8, 0x101cf4000
0x101462234:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101462238:  e0 07 80 3d   str	q0, [sp, #0x10]
0x10146223c:  3b 08 81 52   mov	w27, #0x841
0x101462240:  ; loc_101462240
0x101462240:  15 00 80 d2   mov	x21, #0
0x101462244:  ; loc_101462244
0x101462244:  e8 43 40 f9   ldr	x8, [sp, #0x80]
0x101462248:  08 01 40 f9   ldr	x8, [x8]
0x10146224c:  e9 13 40 f9   ldr	x9, [sp, #0x20]
0x101462250:  1f 01 09 eb   cmp	x8, x9
0x101462254:  60 00 00 54   b.eq	loc_101462260 ; ⤵ 0xc
0x101462258:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x10146225c:  29 cf 1a 94   bl	j__objc_enumerationMutation
0x101462260:  ; loc_101462260
0x101462260:  e8 3f 40 f9   ldr	x8, [sp, #0x78]
0x101462264:  1c 79 75 f8   ldr	x28, [x8, x21, lsl #0x3]
0x101462268:  e0 03 1c aa   mov	x0, x28
0x10146226c:  7d d5 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101462270:  f8 03 00 aa   mov	x24, x0
0x101462274:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462278:  92 d6 1a 94   bl	j__objc_msgSend(x0, "_cl_BtTxPowerServiceUUID")
0x10146227c:  e2 03 00 aa   mov	x2, x0
0x101462280:  e0 03 18 aa   mov	x0, x24
0x101462284:  b7 51 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101462288:  00 06 00 34   cbz	w0, loc_101462348 ; ⤵ 0xc0
0x10146228c:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462290:  84 d6 1a 94   bl	j__objc_msgSend(x0, "_cl_BtTxPowerCharacteristicUUID")
0x101462294:  e0 07 01 f9   str	x0, [sp, #0x208]
0x101462298:  68 79 00 f0   adrp	x8, 0x102391000
0x10146229c:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x1014622a0:  e2 23 08 91   add	x2, sp, #0x208
0x1014622a4:  23 00 80 52   mov	w3, #0x1
0x1014622a8:  16 e7 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x1014622ac:  f8 03 00 aa   mov	x24, x0
0x1014622b0:  88 3a 46 f9   ldr	x8, [x20, #0xc70]
0x1014622b4:  1f 05 00 b1   cmn	x8, #0x1
0x1014622b8:  e1 1e 00 54   b.ne	loc_101462694 ; ⤵ 0x3dc
0x1014622bc:  ; loc_1014622bc
0x1014622bc:  08 89 00 90   adrp	x8, 0x102582000
0x1014622c0:  19 3d 46 f9   ldr	x25, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014622c4:  e0 03 19 aa   mov	x0, x25
0x1014622c8:  01 00 80 52   mov	w1, #0
0x1014622cc:  09 d0 1a 94   bl	j__os_log_type_enabled
0x1014622d0:  20 03 00 34   cbz	w0, loc_101462334 ; ⤵ 0x64
0x1014622d4:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014622d8:  d0 d9 00 94   bl	0x101498a18
0x1014622dc:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x1014622e0:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x1014622e4:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x1014622e8:  48 04 81 52   mov	w8, #0x822
0x1014622ec:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x1014622f0:  a8 c3 02 d1   sub	x8, fp, #0xb0
0x1014622f4:  69 52 00 90   adrp	x9, 0x101eae000
0x1014622f8:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014622fc:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101462300:  bb 23 16 78   sturh	w27, [fp, #-0x9e]
0x101462304:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101462308:  bb c3 16 78   sturh	w27, [fp, #-0x94]
0x10146230c:  18 e1 01 f8   stur	x24, [x8, #0x1e]
0x101462310:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101462314:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462318:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146231c:  e1 03 19 aa   mov	x1, x25
0x101462320:  02 00 80 52   mov	w2, #0
0x101462324:  a3 70 00 d0   adrp	x3, 0x102278000
0x101462328:  63 68 30 91   add	x3, x3, #0xc1a ; "{\"msg%{public}.0s\":\"#durian #hawkeye requesting characteristic-discovery\", \"item\":%{private, location:escape_only}@, \"characteristics\":%{private, location:escape_only}@}"
0x10146232c:  c5 04 80 52   mov	w5, #0x26
0x101462330:  b0 cb 1a 94   bl	j___os_log_impl
0x101462334:  ; loc_101462334
0x101462334:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101462338:  e2 03 18 aa   mov	x2, x24
0x10146233c:  e3 03 1c aa   mov	x3, x28
0x101462340:  50 10 1b 94   bl	j__objc_msgSend(x0, "discoverCharacteristics:forService:")
0x101462344:  5a 07 00 11   add	w26, w26, #0x1
0x101462348:  ; loc_101462348
0x101462348:  e0 03 1c aa   mov	x0, x28
0x10146234c:  45 d5 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101462350:  f8 03 00 aa   mov	x24, x0
0x101462354:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462358:  32 d7 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeFindMyNetworkServiceUUID")
0x10146235c:  e2 03 00 aa   mov	x2, x0
0x101462360:  e0 03 18 aa   mov	x0, x24
0x101462364:  7f 51 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101462368:  80 07 00 34   cbz	w0, loc_101462458 ; ⤵ 0xf0
0x10146236c:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462370:  1c d7 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeConfigurationCharacteristicUUID")
0x101462374:  e0 f3 00 f9   str	x0, [sp, #0x1e0]
0x101462378:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x10146237c:  31 d7 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeNonOwnerCharacteristicUUID")
0x101462380:  e0 f7 00 f9   str	x0, [sp, #0x1e8]
0x101462384:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462388:  36 d7 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePairedOwnerInformationCharacteristicUUID")
0x10146238c:  e0 fb 00 f9   str	x0, [sp, #0x1f0]
0x101462390:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462394:  1b d7 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeDebugCharacteristicUUID")
0x101462398:  e0 ff 00 f9   str	x0, [sp, #0x1f8]
0x10146239c:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014623a0:  38 d7 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePreciseFindingCharacteristicUUID")
0x1014623a4:  e0 03 01 f9   str	x0, [sp, #0x200]
0x1014623a8:  68 79 00 f0   adrp	x8, 0x102391000
0x1014623ac:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x1014623b0:  e2 83 07 91   add	x2, sp, #0x1e0
0x1014623b4:  a3 00 80 52   mov	w3, #0x5
0x1014623b8:  d2 e6 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x1014623bc:  f8 03 00 aa   mov	x24, x0
0x1014623c0:  88 3a 46 f9   ldr	x8, [x20, #0xc70]
0x1014623c4:  1f 05 00 b1   cmn	x8, #0x1
0x1014623c8:  a1 16 00 54   b.ne	loc_10146269c ; ⤵ 0x2d4
0x1014623cc:  ; loc_1014623cc
0x1014623cc:  08 89 00 90   adrp	x8, 0x102582000
0x1014623d0:  19 3d 46 f9   ldr	x25, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014623d4:  e0 03 19 aa   mov	x0, x25
0x1014623d8:  01 00 80 52   mov	w1, #0
0x1014623dc:  c5 cf 1a 94   bl	j__os_log_type_enabled
0x1014623e0:  20 03 00 34   cbz	w0, loc_101462444 ; ⤵ 0x64
0x1014623e4:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014623e8:  8c d9 00 94   bl	0x101498a18
0x1014623ec:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x1014623f0:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x1014623f4:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x1014623f8:  48 04 81 52   mov	w8, #0x822
0x1014623fc:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x101462400:  a8 c3 02 d1   sub	x8, fp, #0xb0
0x101462404:  69 52 00 90   adrp	x9, 0x101eae000
0x101462408:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146240c:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x101462410:  bb 23 16 78   sturh	w27, [fp, #-0x9e]
0x101462414:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101462418:  bb c3 16 78   sturh	w27, [fp, #-0x94]
0x10146241c:  18 e1 01 f8   stur	x24, [x8, #0x1e]
0x101462420:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101462424:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462428:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146242c:  e1 03 19 aa   mov	x1, x25
0x101462430:  02 00 80 52   mov	w2, #0
0x101462434:  a3 70 00 d0   adrp	x3, 0x102278000
0x101462438:  63 68 30 91   add	x3, x3, #0xc1a ; "{\"msg%{public}.0s\":\"#durian #hawkeye requesting characteristic-discovery\", \"item\":%{private, location:escape_only}@, \"characteristics\":%{private, location:escape_only}@}"
0x10146243c:  c5 04 80 52   mov	w5, #0x26
0x101462440:  6c cb 1a 94   bl	j___os_log_impl
0x101462444:  ; loc_101462444
0x101462444:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101462448:  e2 03 18 aa   mov	x2, x24
0x10146244c:  e3 03 1c aa   mov	x3, x28
0x101462450:  0c 10 1b 94   bl	j__objc_msgSend(x0, "discoverCharacteristics:forService:")
0x101462454:  5a 2b 00 11   add	w26, w26, #0xa
0x101462458:  ; loc_101462458
0x101462458:  e0 03 1c aa   mov	x0, x28
0x10146245c:  01 d5 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101462460:  f8 03 00 aa   mov	x24, x0
0x101462464:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462468:  d6 d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceUUID")
0x10146246c:  e2 03 00 aa   mov	x2, x0
0x101462470:  e0 03 18 aa   mov	x0, x24
0x101462474:  3b 51 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101462478:  60 09 00 34   cbz	w0, loc_1014625a4 ; ⤵ 0x12c
0x10146247c:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462480:  c8 d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceProductDataCharacteristicUUID")
0x101462484:  e0 cb 00 f9   str	x0, [sp, #0x190]
0x101462488:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x10146248c:  ad d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceManufacturerNameCharacteristicUUID")
0x101462490:  e0 cf 00 f9   str	x0, [sp, #0x198]
0x101462494:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x101462498:  ba d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceModelNameCharacteristicUUID")
0x10146249c:  e0 d3 00 f9   str	x0, [sp, #0x1a0]
0x1014624a0:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014624a4:  af d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceModelColorCodeCharacteristicUUID")
0x1014624a8:  e0 d7 00 f9   str	x0, [sp, #0x1a8]
0x1014624ac:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014624b0:  7c d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceAccessoryCategoryCharacteristicUUID")
0x1014624b4:  e0 db 00 f9   str	x0, [sp, #0x1b0]
0x1014624b8:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014624bc:  71 d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceAccessoryCapabilitiesCharacteristicUUID")
0x1014624c0:  e0 df 00 f9   str	x0, [sp, #0x1b8]
0x1014624c4:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014624c8:  96 d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceFirmwareVersionCharacteristicUUID")
0x1014624cc:  e0 e3 00 f9   str	x0, [sp, #0x1c0]
0x1014624d0:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014624d4:  8b d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceFindMyVersionCharacteristicUUID")
0x1014624d8:  e0 e7 00 f9   str	x0, [sp, #0x1c8]
0x1014624dc:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014624e0:  80 d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceBatteryTypeCharacteristicUUID")
0x1014624e4:  e0 eb 00 f9   str	x0, [sp, #0x1d0]
0x1014624e8:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014624ec:  75 d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceBatteryLevelCharacteristicUUID")
0x1014624f0:  e0 ef 00 f9   str	x0, [sp, #0x1d8]
0x1014624f4:  68 79 00 f0   adrp	x8, 0x102391000
0x1014624f8:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x1014624fc:  e2 43 06 91   add	x2, sp, #0x190
0x101462500:  43 01 80 52   mov	w3, #0xa
0x101462504:  7f e6 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x101462508:  f8 03 00 aa   mov	x24, x0
0x10146250c:  88 3a 46 f9   ldr	x8, [x20, #0xc70]
0x101462510:  1f 05 00 b1   cmn	x8, #0x1
0x101462514:  81 0c 00 54   b.ne	loc_1014626a4 ; ⤵ 0x190
0x101462518:  ; loc_101462518
0x101462518:  08 89 00 90   adrp	x8, 0x102582000
0x10146251c:  19 3d 46 f9   ldr	x25, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101462520:  e0 03 19 aa   mov	x0, x25
0x101462524:  01 00 80 52   mov	w1, #0
0x101462528:  72 cf 1a 94   bl	j__os_log_type_enabled
0x10146252c:  20 03 00 34   cbz	w0, loc_101462590 ; ⤵ 0x64
0x101462530:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101462534:  39 d9 00 94   bl	0x101498a18
0x101462538:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x10146253c:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101462540:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101462544:  48 04 81 52   mov	w8, #0x822
0x101462548:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x10146254c:  a8 c3 02 d1   sub	x8, fp, #0xb0
0x101462550:  69 52 00 90   adrp	x9, 0x101eae000
0x101462554:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101462558:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x10146255c:  bb 23 16 78   sturh	w27, [fp, #-0x9e]
0x101462560:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101462564:  bb c3 16 78   sturh	w27, [fp, #-0x94]
0x101462568:  18 e1 01 f8   stur	x24, [x8, #0x1e]
0x10146256c:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101462570:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462574:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101462578:  e1 03 19 aa   mov	x1, x25
0x10146257c:  02 00 80 52   mov	w2, #0
0x101462580:  a3 70 00 d0   adrp	x3, 0x102278000
0x101462584:  63 68 30 91   add	x3, x3, #0xc1a ; "{\"msg%{public}.0s\":\"#durian #hawkeye requesting characteristic-discovery\", \"item\":%{private, location:escape_only}@, \"characteristics\":%{private, location:escape_only}@}"
0x101462588:  c5 04 80 52   mov	w5, #0x26
0x10146258c:  19 cb 1a 94   bl	j___os_log_impl
0x101462590:  ; loc_101462590
0x101462590:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101462594:  e2 03 18 aa   mov	x2, x24
0x101462598:  e3 03 1c aa   mov	x3, x28
0x10146259c:  b9 0f 1b 94   bl	j__objc_msgSend(x0, "discoverCharacteristics:forService:")
0x1014625a0:  5a 93 01 11   add	w26, w26, #0x64
0x1014625a4:  ; loc_1014625a4
0x1014625a4:  e0 03 1c aa   mov	x0, x28
0x1014625a8:  ae d4 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x1014625ac:  f8 03 00 aa   mov	x24, x0
0x1014625b0:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014625b4:  2b d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryFirmwareUpdateServiceUUID")
0x1014625b8:  e2 03 00 aa   mov	x2, x0
0x1014625bc:  e0 03 18 aa   mov	x0, x24
0x1014625c0:  e8 50 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x1014625c4:  00 06 00 34   cbz	w0, loc_101462684 ; ⤵ 0xc0
0x1014625c8:  e0 36 46 f9   ldr	x0, [x23, #0xc68]
0x1014625cc:  1d d6 1a 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryFirmwareUpdateMsgCharacteristicUUID")
0x1014625d0:  e0 c7 00 f9   str	x0, [sp, #0x188]
0x1014625d4:  68 79 00 f0   adrp	x8, 0x102391000
0x1014625d8:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x1014625dc:  e2 23 06 91   add	x2, sp, #0x188
0x1014625e0:  23 00 80 52   mov	w3, #0x1
0x1014625e4:  47 e6 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x1014625e8:  f8 03 00 aa   mov	x24, x0
0x1014625ec:  88 3a 46 f9   ldr	x8, [x20, #0xc70]
0x1014625f0:  1f 05 00 b1   cmn	x8, #0x1
0x1014625f4:  c1 05 00 54   b.ne	loc_1014626ac ; ⤵ 0xb8
0x1014625f8:  ; loc_1014625f8
0x1014625f8:  08 89 00 90   adrp	x8, 0x102582000
0x1014625fc:  19 3d 46 f9   ldr	x25, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101462600:  e0 03 19 aa   mov	x0, x25
0x101462604:  01 00 80 52   mov	w1, #0
0x101462608:  3a cf 1a 94   bl	j__os_log_type_enabled
0x10146260c:  20 03 00 34   cbz	w0, loc_101462670 ; ⤵ 0x64
0x101462610:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101462614:  01 d9 00 94   bl	0x101498a18
0x101462618:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x10146261c:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101462620:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101462624:  48 04 81 52   mov	w8, #0x822
0x101462628:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x10146262c:  a8 c3 02 d1   sub	x8, fp, #0xb0
0x101462630:  69 52 00 90   adrp	x9, 0x101eae000
0x101462634:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101462638:  09 a1 00 f8   stur	x9, [x8, #0xa]
0x10146263c:  bb 23 16 78   sturh	w27, [fp, #-0x9e]
0x101462640:  00 41 01 f8   stur	x0, [x8, #0x14]
0x101462644:  bb c3 16 78   sturh	w27, [fp, #-0x94]
0x101462648:  18 e1 01 f8   stur	x24, [x8, #0x1e]
0x10146264c:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101462650:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462654:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101462658:  e1 03 19 aa   mov	x1, x25
0x10146265c:  02 00 80 52   mov	w2, #0
0x101462660:  a3 70 00 d0   adrp	x3, 0x102278000
0x101462664:  63 68 30 91   add	x3, x3, #0xc1a ; "{\"msg%{public}.0s\":\"#durian #hawkeye requesting characteristic-discovery\", \"item\":%{private, location:escape_only}@, \"characteristics\":%{private, location:escape_only}@}"
0x101462668:  c5 04 80 52   mov	w5, #0x26
0x10146266c:  e1 ca 1a 94   bl	j___os_log_impl
0x101462670:  ; loc_101462670
0x101462670:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x101462674:  e2 03 18 aa   mov	x2, x24
0x101462678:  e3 03 1c aa   mov	x3, x28
0x10146267c:  81 0f 1b 94   bl	j__objc_msgSend(x0, "discoverCharacteristics:forService:")
0x101462680:  5a a3 0f 11   add	w26, w26, #0x3e8
0x101462684:  ; loc_101462684
0x101462684:  b5 06 00 91   add	x21, x21, #0x1
0x101462688:  df 02 15 eb   cmp	x22, x21
0x10146268c:  c1 dd ff 54   b.ne	loc_101462244 ; ⤴ -0x448
0x101462690:  09 00 00 14   b	loc_1014626b4 ; ⤵ 0x24
0x101462694:  ; loc_101462694
0x101462694:  5c b6 1a 94   bl	0x101b10004
0x101462698:  09 ff ff 17   b	loc_1014622bc ; ⤴ -0x3dc
0x10146269c:  ; loc_10146269c
0x10146269c:  5a b6 1a 94   bl	0x101b10004
0x1014626a0:  4b ff ff 17   b	loc_1014623cc ; ⤴ -0x2d4
0x1014626a4:  ; loc_1014626a4
0x1014626a4:  58 b6 1a 94   bl	0x101b10004
0x1014626a8:  9c ff ff 17   b	loc_101462518 ; ⤴ -0x190
0x1014626ac:  ; loc_1014626ac
0x1014626ac:  56 b6 1a 94   bl	0x101b10004
0x1014626b0:  d2 ff ff 17   b	loc_1014625f8 ; ⤴ -0xb8
0x1014626b4:  ; loc_1014626b4
0x1014626b4:  e2 c3 01 91   add	x2, sp, #0x70
0x1014626b8:  e3 43 08 91   add	x3, sp, #0x210
0x1014626bc:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x1014626c0:  04 02 80 52   mov	w4, #0x10
0x1014626c4:  0f fc 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x1014626c8:  f6 03 00 aa   mov	x22, x0
0x1014626cc:  a0 db ff b5   cbnz	x0, loc_101462240 ; ⤴ -0x48c
0x1014626d0:  6a 00 00 14   b	loc_101462878 ; ⤵ 0x1a8
0x1014626d4:  ; loc_1014626d4
0x1014626d4:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x1014626d8:  1f 05 00 b1   cmn	x8, #0x1
0x1014626dc:  01 13 00 54   b.ne	loc_10146293c ; ⤵ 0x260
0x1014626e0:  08 89 00 90   adrp	x8, 0x102582000
0x1014626e4:  17 3d 46 f9   ldr	x23, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014626e8:  e0 03 17 aa   mov	x0, x23
0x1014626ec:  01 00 80 52   mov	w1, #0
0x1014626f0:  00 cf 1a 94   bl	j__os_log_type_enabled
0x1014626f4:  80 04 00 34   cbz	w0, loc_101462784 ; ⤵ 0x90
0x1014626f8:  40 b3 40 f9   ldr	x0, [x26, #0x160]
0x1014626fc:  c7 d8 00 94   bl	0x101498a18
0x101462700:  f8 03 00 aa   mov	x24, x0
0x101462704:  e0 03 15 aa   mov	x0, x21
0x101462708:  be ee 1a 94   bl	j__objc_msgSend(x0, "characteristicUUID")
0x10146270c:  e0 83 00 f9   str	x0, [sp, #0x100]
0x101462710:  68 79 00 f0   adrp	x8, 0x102391000
0x101462714:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x101462718:  e2 03 04 91   add	x2, sp, #0x100
0x10146271c:  23 00 80 52   mov	w3, #0x1
0x101462720:  f8 e5 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x101462724:  88 44 00 d0   adrp	x8, 0x101cf4000
0x101462728:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10146272c:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101462730:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101462734:  48 04 81 52   mov	w8, #0x822
0x101462738:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x10146273c:  68 52 00 90   adrp	x8, 0x101eae000
0x101462740:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101462744:  a9 c3 02 d1   sub	x9, fp, #0xb0
0x101462748:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x10146274c:  28 08 81 52   mov	w8, #0x841
0x101462750:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x101462754:  38 41 01 f8   stur	x24, [x9, #0x14]
0x101462758:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x10146275c:  20 e1 01 f8   stur	x0, [x9, #0x1e]
0x101462760:  e0 5c ff d0   adrp	x0, 0x100000000
0x101462764:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101462768:  a3 70 00 d0   adrp	x3, 0x102278000
0x10146276c:  63 f4 38 91   add	x3, x3, #0xe3d ; "{\"msg%{public}.0s\":\"#durian requesting characteristic-discovery\", \"item\":%{private, location:escape_only}@, \"characteristics\":%{private, location:escape_only}@}"
0x101462770:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101462774:  e1 03 17 aa   mov	x1, x23
0x101462778:  02 00 80 52   mov	w2, #0
0x10146277c:  c5 04 80 52   mov	w5, #0x26
0x101462780:  9c ca 1a 94   bl	j___os_log_impl
0x101462784:  ; loc_101462784
0x101462784:  e0 03 15 aa   mov	x0, x21
0x101462788:  9e ee 1a 94   bl	j__objc_msgSend(x0, "characteristicUUID")
0x10146278c:  e0 7f 00 f9   str	x0, [sp, #0xf8]
0x101462790:  68 79 00 f0   adrp	x8, 0x102391000
0x101462794:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x101462798:  e2 e3 03 91   add	x2, sp, #0xf8
0x10146279c:  23 00 80 52   mov	w3, #0x1
0x1014627a0:  d8 e5 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x1014627a4:  e2 03 00 aa   mov	x2, x0
0x1014627a8:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x1014627ac:  e3 03 16 aa   mov	x3, x22
0x1014627b0:  34 0f 1b 94   bl	j__objc_msgSend(x0, "discoverCharacteristics:forService:")
0x1014627b4:  7e fd ff 17   b	loc_101461dac ; ⤴ -0xa08
0x1014627b8:  ; loc_1014627b8
0x1014627b8:  18 00 80 52   mov	w24, #0
0x1014627bc:  ; loc_1014627bc
0x1014627bc:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x1014627c0:  e8 94 1b 94   bl	j__objc_msgSend(x0, "services")
0x1014627c4:  c7 fb 1a 94   bl	j__objc_msgSend(x0, "count")
0x1014627c8:  f3 13 40 f9   ldr	x19, [sp, #0x20]
0x1014627cc:  60 ca 03 39   strb	w0, [x19, #0xf2]
0x1014627d0:  08 89 00 90   adrp	x8, 0x102582000
0x1014627d4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014627d8:  1f 05 00 b1   cmn	x8, #0x1
0x1014627dc:  c1 0a 00 54   b.ne	loc_101462934 ; ⤵ 0x158
0x1014627e0:  08 89 00 90   adrp	x8, 0x102582000
0x1014627e4:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014627e8:  e0 03 14 aa   mov	x0, x20
0x1014627ec:  01 00 80 52   mov	w1, #0
0x1014627f0:  c0 ce 1a 94   bl	j__os_log_type_enabled
0x1014627f4:  c0 ad ff 34   cbz	w0, loc_101461dac ; ⤴ -0xa48
0x1014627f8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x1014627fc:  87 d8 00 94   bl	0x101498a18
0x101462800:  68 ca c3 39   ldrsb	w8, [x19, #0xf2]
0x101462804:  89 44 00 d0   adrp	x9, 0x101cf4000
0x101462808:  20 7d 46 fd   ldr	d0, [x9, #0xcf8]
0x10146280c:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101462810:  bf 43 15 b8   stur	wzr, [fp, #-0xac]

