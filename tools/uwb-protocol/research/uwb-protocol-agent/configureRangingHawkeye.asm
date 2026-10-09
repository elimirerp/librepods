
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
0x101449d60:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x101449d64:  07 1e 1c 94   bl	j__objc_msgSend(x0, "setRoseRangingParametersTaskWithParameters:")
0x101449d68:  f3 03 00 aa   mov	x19, x0
0x101449d6c:  e0 08 00 b4   cbz	x0, loc_101449e88 ; ⤵ 0x11c
0x101449d70:  36 7a 00 f0   adrp	x22, 0x102390000
0x101449d74:  c0 36 46 f9   ldr	x0, [x22, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101449d78:  aa 38 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeFindMyNetworkServiceUUID")
0x101449d7c:  e2 03 00 aa   mov	x2, x0
0x101449d80:  e0 03 13 aa   mov	x0, x19
0x101449d84:  67 1f 1c 94   bl	j__objc_msgSend(x0, "setServiceUUID:")
0x101449d88:  c0 36 46 f9   ldr	x0, [x22, #0xc68]
0x101449d8c:  bd 38 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePreciseFindingCharacteristicUUID")
0x101449d90:  e2 03 00 aa   mov	x2, x0
0x101449d94:  e0 03 13 aa   mov	x0, x19
0x101449d98:  32 fe 1b 94   bl	j__objc_msgSend(x0, "setCharacteristicUUID:")
0x101449d9c:  e0 03 13 aa   mov	x0, x19
0x101449da0:  02 00 80 52   mov	w2, #0
0x101449da4:  47 1d 1c 94   bl	j__objc_msgSend(x0, "setRequiresMutex:")
0x101449da8:  e0 03 13 aa   mov	x0, x19
0x101449dac:  42 e0 80 52   mov	w2, #0x702
0x101449db0:  0c 0a 1c 94   bl	j__objc_msgSend(x0, "setHawkeyeOpcode:")
0x101449db4:  28 00 80 52   mov	w8, #0x1
0x101449db8:  e8 a7 00 39   strb	w8, [sp, #0x29]
0x101449dbc:  e0 03 13 aa   mov	x0, x19
0x101449dc0:  c0 98 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x101449dc4:  e0 ab 00 39   strb	w0, [sp, #0x2a]
0x101449dc8:  e0 03 13 aa   mov	x0, x19
0x101449dcc:  bd 98 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x101449dd0:  08 7c 08 53   lsr	w8, w0, #0x8
0x101449dd4:  e8 af 00 39   strb	w8, [sp, #0x2b]
0x101449dd8:  80 02 40 fd   ldr	d0, [x20]
0x101449ddc:  e0 c3 02 fc   stur	d0, [sp, #0x2c]
0x101449de0:  88 0a 40 b9   ldr	w8, [x20, #0x8]
0x101449de4:  e8 43 03 b8   stur	w8, [sp, #0x34]
0x101449de8:  a0 22 44 f9   ldr	x0, [x21, #0x840]
0x101449dec:  e2 a7 00 91   add	x2, sp, #0x29
0x101449df0:  e3 01 80 52   mov	w3, #0xf
0x101449df4:  13 64 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x101449df8:  e2 03 00 aa   mov	x2, x0
0x101449dfc:  e0 03 13 aa   mov	x0, x19
0x101449e00:  08 0a 1c 94   bl	j__objc_msgSend(x0, "setHawkeyePayload:")
0x101449e04:  c8 89 00 b0   adrp	x8, 0x102582000
0x101449e08:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101449e0c:  1f 05 00 b1   cmn	x8, #0x1
0x101449e10:  c1 08 00 54   b.ne	loc_101449f28 ; ⤵ 0x118
0x101449e14:  ; loc_101449e14
0x101449e14:  c8 89 00 b0   adrp	x8, 0x102582000
0x101449e18:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101449e1c:  e0 03 14 aa   mov	x0, x20
0x101449e20:  01 00 80 52   mov	w1, #0
0x101449e24:  33 31 1b 94   bl	j__os_log_type_enabled
0x101449e28:  80 06 00 34   cbz	w0, loc_101449ef8 ; ⤵ 0xd0
0x101449e2c:  e0 03 13 aa   mov	x0, x19
0x101449e30:  ac 98 1b 94   bl	j__objc_msgSend(x0, "hawkeyePayload")
0x101449e34:  48 45 00 f0   adrp	x8, 0x101cf4000
0x101449e38:  00 79 44 fd   ldr	d0, [x8, #0x8f0]
0x101449e3c:  e0 03 00 bd   str	s0, [sp]
0x101449e40:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101449e44:  48 04 81 52   mov	w8, #0x822
0x101449e48:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101449e4c:  28 53 00 b0   adrp	x8, 0x101eae000
0x101449e50:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101449e54:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101449e58:  48 08 81 52   mov	w8, #0x842
0x101449e5c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101449e60:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101449e64:  a0 5d ff f0   adrp	x0, 0x100000000
0x101449e68:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101449e6c:  23 71 00 f0   adrp	x3, 0x102270000
0x101449e70:  63 c0 06 91   add	x3, x3, #0x1b0 ; "{\"msg%{public}.0s\":\"#durian #hawkeye configureRanging\", \"payload\":%{public, location:escape_only}@}"
0x101449e74:  e4 03 00 91   mov	x4, sp
0x101449e78:  e1 03 14 aa   mov	x1, x20
0x101449e7c:  02 00 80 52   mov	w2, #0
0x101449e80:  85 03 80 52   mov	w5, #0x1c
0x101449e84:  1c 00 00 14   b	loc_101449ef4 ; ⤵ 0x70
0x101449e88:  ; loc_101449e88
0x101449e88:  c8 89 00 b0   adrp	x8, 0x102582000
0x101449e8c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101449e90:  1f 05 00 b1   cmn	x8, #0x1
0x101449e94:  e1 04 00 54   b.ne	loc_101449f30 ; ⤵ 0x9c
0x101449e98:  ; loc_101449e98
0x101449e98:  c8 89 00 b0   adrp	x8, 0x102582000
0x101449e9c:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101449ea0:  e0 03 14 aa   mov	x0, x20
0x101449ea4:  01 00 80 52   mov	w1, #0
0x101449ea8:  12 31 1b 94   bl	j__os_log_type_enabled
0x101449eac:  60 02 00 34   cbz	w0, loc_101449ef8 ; ⤵ 0x4c
0x101449eb0:  48 45 00 f0   adrp	x8, 0x101cf4000
0x101449eb4:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101449eb8:  e0 03 00 bd   str	s0, [sp]
0x101449ebc:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101449ec0:  48 04 81 52   mov	w8, #0x822
0x101449ec4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101449ec8:  28 53 00 b0   adrp	x8, 0x101eae000
0x101449ecc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101449ed0:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101449ed4:  a0 5d ff f0   adrp	x0, 0x100000000
0x101449ed8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101449edc:  23 71 00 f0   adrp	x3, 0x102270000
0x101449ee0:  63 cc 05 91   add	x3, x3, #0x173 ; "{\"msg%{public}.0s\":\"#durian #hawkeye nil task, initRanging\"}"
0x101449ee4:  e4 03 00 91   mov	x4, sp
0x101449ee8:  e1 03 14 aa   mov	x1, x20
0x101449eec:  02 00 80 52   mov	w2, #0
0x101449ef0:  45 02 80 52   mov	w5, #0x12
0x101449ef4:  ; loc_101449ef4
0x101449ef4:  bf 2c 1b 94   bl	j___os_log_impl
0x101449ef8:  ; loc_101449ef8
0x101449ef8:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x101449efc:  49 7a 00 b0   adrp	x9, 0x102392000
0x101449f00:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101449f04:  29 01 40 f9   ldr	x9, [x9]
0x101449f08:  3f 01 08 eb   cmp	x9, x8
0x101449f0c:  61 01 00 54   b.ne	loc_101449f38 ; ⤵ 0x2c
0x101449f10:  e0 03 13 aa   mov	x0, x19
0x101449f14:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101449f18:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101449f1c:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101449f20:  ff c3 01 91   add	sp, sp, #0x70
0x101449f24:  ff 0f 5f d6   retab
0x101449f28:  ; loc_101449f28
0x101449f28:  e9 17 1b 94   bl	0x101b0fecc
0x101449f2c:  ba ff ff 17   b	loc_101449e14 ; ⤴ -0x118
0x101449f30:  ; loc_101449f30
0x101449f30:  e6 17 1b 94   bl	0x101b0fec8
0x101449f34:  d9 ff ff 17   b	loc_101449e98 ; ⤴ -0x9c
0x101449f38:  ; loc_101449f38
0x101449f38:  82 2c 1b 94   bl	j____stack_chk_fail

+[CLDurianTask startRangingHawkeyeTaskWithTargetEventCounter:]:
0x101449f3c:  7f 23 03 d5   pacibsp
0x101449f40:  ff c3 01 d1   sub	sp, sp, #0x70
0x101449f44:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]

