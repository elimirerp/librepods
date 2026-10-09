
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
0x101449b2c:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x101449b30:  54 7a 00 90   adrp	x20, 0x102391000
0x101449b34:  80 22 44 f9   ldr	x0, [x20, #0x840] ; __got._OBJC_CLASS_$_NSData
0x101449b38:  02 00 80 d2   mov	x2, #0
0x101449b3c:  03 00 80 d2   mov	x3, #0
0x101449b40:  c0 64 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x101449b44:  e2 03 00 aa   mov	x2, x0
0x101449b48:  a8 86 00 d0   adrp	x8, 0x10251f000
0x101449b4c:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x101449b50:  04 9e 1b 94   bl	j__objc_msgSend(x0, "initRoseTaskWithParameters:")
0x101449b54:  f3 03 00 aa   mov	x19, x0
0x101449b58:  60 08 00 b4   cbz	x0, loc_101449c64 ; ⤵ 0x10c
0x101449b5c:  35 7a 00 f0   adrp	x21, 0x102390000
0x101449b60:  a0 36 46 f9   ldr	x0, [x21, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101449b64:  2f 39 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeFindMyNetworkServiceUUID")
0x101449b68:  e2 03 00 aa   mov	x2, x0
0x101449b6c:  e0 03 13 aa   mov	x0, x19
0x101449b70:  ec 1f 1c 94   bl	j__objc_msgSend(x0, "setServiceUUID:")
0x101449b74:  a0 36 46 f9   ldr	x0, [x21, #0xc68]
0x101449b78:  42 39 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePreciseFindingCharacteristicUUID")
0x101449b7c:  e2 03 00 aa   mov	x2, x0
0x101449b80:  e0 03 13 aa   mov	x0, x19
0x101449b84:  b7 fe 1b 94   bl	j__objc_msgSend(x0, "setCharacteristicUUID:")
0x101449b88:  e0 03 13 aa   mov	x0, x19
0x101449b8c:  02 00 80 52   mov	w2, #0
0x101449b90:  cc 1d 1c 94   bl	j__objc_msgSend(x0, "setRequiresMutex:")
0x101449b94:  e0 03 13 aa   mov	x0, x19
0x101449b98:  22 e0 80 52   mov	w2, #0x701
0x101449b9c:  91 0a 1c 94   bl	j__objc_msgSend(x0, "setHawkeyeOpcode:")
0x101449ba0:  28 00 80 52   mov	w8, #0x1
0x101449ba4:  e8 37 00 39   strb	w8, [sp, #0xd]
0x101449ba8:  e0 03 13 aa   mov	x0, x19
0x101449bac:  45 99 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x101449bb0:  e0 3b 00 39   strb	w0, [sp, #0xe]
0x101449bb4:  e0 03 13 aa   mov	x0, x19
0x101449bb8:  42 99 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x101449bbc:  08 7c 08 53   lsr	w8, w0, #0x8
0x101449bc0:  e8 3f 00 39   strb	w8, [sp, #0xf]
0x101449bc4:  80 22 44 f9   ldr	x0, [x20, #0x840]
0x101449bc8:  e2 37 00 91   add	x2, sp, #0xd
0x101449bcc:  63 00 80 52   mov	w3, #0x3
0x101449bd0:  9c 64 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x101449bd4:  e2 03 00 aa   mov	x2, x0
0x101449bd8:  e0 03 13 aa   mov	x0, x19
0x101449bdc:  91 0a 1c 94   bl	j__objc_msgSend(x0, "setHawkeyePayload:")
0x101449be0:  c8 89 00 b0   adrp	x8, 0x102582000
0x101449be4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101449be8:  1f 05 00 b1   cmn	x8, #0x1
0x101449bec:  c1 08 00 54   b.ne	loc_101449d04 ; ⤵ 0x118
0x101449bf0:  ; loc_101449bf0
0x101449bf0:  c8 89 00 b0   adrp	x8, 0x102582000
0x101449bf4:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101449bf8:  e0 03 14 aa   mov	x0, x20
0x101449bfc:  01 00 80 52   mov	w1, #0
0x101449c00:  bc 31 1b 94   bl	j__os_log_type_enabled
0x101449c04:  80 06 00 34   cbz	w0, loc_101449cd4 ; ⤵ 0xd0
0x101449c08:  e0 03 13 aa   mov	x0, x19
0x101449c0c:  35 99 1b 94   bl	j__objc_msgSend(x0, "hawkeyePayload")
0x101449c10:  48 45 00 f0   adrp	x8, 0x101cf4000
0x101449c14:  00 79 44 fd   ldr	d0, [x8, #0x8f0]
0x101449c18:  e0 13 00 bd   str	s0, [sp, #0x10]
0x101449c1c:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x101449c20:  48 04 81 52   mov	w8, #0x822
0x101449c24:  e8 33 00 79   strh	w8, [sp, #0x18]
0x101449c28:  28 53 00 b0   adrp	x8, 0x101eae000
0x101449c2c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101449c30:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x101449c34:  48 08 81 52   mov	w8, #0x842
0x101449c38:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101449c3c:  e0 43 02 f8   stur	x0, [sp, #0x24]
0x101449c40:  a0 5d ff f0   adrp	x0, 0x100000000
0x101449c44:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101449c48:  23 71 00 f0   adrp	x3, 0x102270000
0x101449c4c:  63 50 04 91   add	x3, x3, #0x114 ; "{\"msg%{public}.0s\":\"#durian #hawkeye initRanging\", \"payload\":%{public, location:escape_only}@}"
0x101449c50:  e4 43 00 91   add	x4, sp, #0x10
0x101449c54:  e1 03 14 aa   mov	x1, x20
0x101449c58:  02 00 80 52   mov	w2, #0
0x101449c5c:  85 03 80 52   mov	w5, #0x1c
0x101449c60:  1c 00 00 14   b	loc_101449cd0 ; ⤵ 0x70
0x101449c64:  ; loc_101449c64
0x101449c64:  c8 89 00 b0   adrp	x8, 0x102582000
0x101449c68:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101449c6c:  1f 05 00 b1   cmn	x8, #0x1
0x101449c70:  e1 04 00 54   b.ne	loc_101449d0c ; ⤵ 0x9c
0x101449c74:  ; loc_101449c74
0x101449c74:  c8 89 00 b0   adrp	x8, 0x102582000
0x101449c78:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101449c7c:  e0 03 14 aa   mov	x0, x20
0x101449c80:  01 00 80 52   mov	w1, #0
0x101449c84:  9b 31 1b 94   bl	j__os_log_type_enabled
0x101449c88:  60 02 00 34   cbz	w0, loc_101449cd4 ; ⤵ 0x4c
0x101449c8c:  48 45 00 f0   adrp	x8, 0x101cf4000
0x101449c90:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101449c94:  e0 13 00 bd   str	s0, [sp, #0x10]
0x101449c98:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x101449c9c:  48 04 81 52   mov	w8, #0x822
0x101449ca0:  e8 33 00 79   strh	w8, [sp, #0x18]
0x101449ca4:  28 53 00 b0   adrp	x8, 0x101eae000
0x101449ca8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101449cac:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x101449cb0:  a0 5d ff f0   adrp	x0, 0x100000000
0x101449cb4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101449cb8:  23 71 00 f0   adrp	x3, 0x102270000
0x101449cbc:  63 cc 05 91   add	x3, x3, #0x173 ; "{\"msg%{public}.0s\":\"#durian #hawkeye nil task, initRanging\"}"
0x101449cc0:  e4 43 00 91   add	x4, sp, #0x10
0x101449cc4:  e1 03 14 aa   mov	x1, x20
0x101449cc8:  02 00 80 52   mov	w2, #0
0x101449ccc:  45 02 80 52   mov	w5, #0x12
0x101449cd0:  ; loc_101449cd0
0x101449cd0:  48 2d 1b 94   bl	j___os_log_impl
0x101449cd4:  ; loc_101449cd4
0x101449cd4:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x101449cd8:  49 7a 00 b0   adrp	x9, 0x102392000
0x101449cdc:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101449ce0:  29 01 40 f9   ldr	x9, [x9]
0x101449ce4:  3f 01 08 eb   cmp	x9, x8
0x101449ce8:  61 01 00 54   b.ne	loc_101449d14 ; ⤵ 0x2c
0x101449cec:  e0 03 13 aa   mov	x0, x19
0x101449cf0:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101449cf4:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101449cf8:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101449cfc:  ff c3 01 91   add	sp, sp, #0x70
0x101449d00:  ff 0f 5f d6   retab
0x101449d04:  ; loc_101449d04
0x101449d04:  72 18 1b 94   bl	0x101b0fecc
0x101449d08:  ba ff ff 17   b	loc_101449bf0 ; ⤴ -0x118
0x101449d0c:  ; loc_101449d0c
0x101449d0c:  6f 18 1b 94   bl	0x101b0fec8
0x101449d10:  d9 ff ff 17   b	loc_101449c74 ; ⤴ -0x9c
0x101449d14:  ; loc_101449d14
0x101449d14:  0b 2d 1b 94   bl	j____stack_chk_fail

+[CLDurianTask configureRangingHawkeyeTaskWithPayload:]:
0x101449d18:  7f 23 03 d5   pacibsp
0x101449d1c:  ff c3 01 d1   sub	sp, sp, #0x70
0x101449d20:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101449d24:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x101449d28:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101449d2c:  fd 83 01 91   add	fp, sp, #0x60
0x101449d30:  f4 03 02 aa   mov	x20, x2
0x101449d34:  48 7a 00 b0   adrp	x8, 0x102392000
0x101449d38:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101449d3c:  08 01 40 f9   ldr	x8, [x8]
0x101449d40:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x101449d44:  55 7a 00 90   adrp	x21, 0x102391000
0x101449d48:  a0 22 44 f9   ldr	x0, [x21, #0x840] ; __got._OBJC_CLASS_$_NSData
0x101449d4c:  02 00 80 d2   mov	x2, #0
0x101449d50:  03 00 80 d2   mov	x3, #0
0x101449d54:  3b 64 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x101449d58:  e2 03 00 aa   mov	x2, x0
0x101449d5c:  a8 86 00 d0   adrp	x8, 0x10251f000

