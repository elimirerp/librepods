
+[CLDurianTask startRangingHawkeyeTaskWithTargetEventCounter:]:
0x101449f3c:  7f 23 03 d5   pacibsp
0x101449f40:  ff c3 01 d1   sub	sp, sp, #0x70
0x101449f44:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101449f48:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x101449f4c:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101449f50:  fd 83 01 91   add	fp, sp, #0x60
0x101449f54:  f4 03 02 aa   mov	x20, x2
0x101449f58:  48 7a 00 b0   adrp	x8, 0x102392000
0x101449f5c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101449f60:  08 01 40 f9   ldr	x8, [x8]
0x101449f64:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x101449f68:  55 7a 00 90   adrp	x21, 0x102391000
0x101449f6c:  a0 22 44 f9   ldr	x0, [x21, #0x840] ; __got._OBJC_CLASS_$_NSData
0x101449f70:  02 00 80 d2   mov	x2, #0
0x101449f74:  03 00 80 d2   mov	x3, #0
0x101449f78:  b2 63 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x101449f7c:  e2 03 00 aa   mov	x2, x0
0x101449f80:  a8 86 00 d0   adrp	x8, 0x10251f000
0x101449f84:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x101449f88:  ee 31 1c 94   bl	j__objc_msgSend(x0, "startRoseRangingTaskWithParameters:")
0x101449f8c:  f3 03 00 aa   mov	x19, x0
0x101449f90:  c0 08 00 b4   cbz	x0, loc_10144a0a8 ; ⤵ 0x118
0x101449f94:  36 7a 00 f0   adrp	x22, 0x102390000
0x101449f98:  c0 36 46 f9   ldr	x0, [x22, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101449f9c:  21 38 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeFindMyNetworkServiceUUID")
0x101449fa0:  e2 03 00 aa   mov	x2, x0
0x101449fa4:  e0 03 13 aa   mov	x0, x19
0x101449fa8:  de 1e 1c 94   bl	j__objc_msgSend(x0, "setServiceUUID:")
0x101449fac:  c0 36 46 f9   ldr	x0, [x22, #0xc68]
0x101449fb0:  34 38 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePreciseFindingCharacteristicUUID")
0x101449fb4:  e2 03 00 aa   mov	x2, x0
0x101449fb8:  e0 03 13 aa   mov	x0, x19
0x101449fbc:  a9 fd 1b 94   bl	j__objc_msgSend(x0, "setCharacteristicUUID:")
0x101449fc0:  e0 03 13 aa   mov	x0, x19
0x101449fc4:  02 00 80 52   mov	w2, #0
0x101449fc8:  be 1c 1c 94   bl	j__objc_msgSend(x0, "setRequiresMutex:")
0x101449fcc:  e0 03 13 aa   mov	x0, x19
0x101449fd0:  62 e0 80 52   mov	w2, #0x703
0x101449fd4:  83 09 1c 94   bl	j__objc_msgSend(x0, "setHawkeyeOpcode:")
0x101449fd8:  28 00 80 52   mov	w8, #0x1
0x101449fdc:  e8 2f 00 39   strb	w8, [sp, #0xb]
0x101449fe0:  e0 03 13 aa   mov	x0, x19
0x101449fe4:  37 98 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x101449fe8:  e0 33 00 39   strb	w0, [sp, #0xc]
0x101449fec:  e0 03 13 aa   mov	x0, x19
0x101449ff0:  34 98 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x101449ff4:  08 7c 08 53   lsr	w8, w0, #0x8
0x101449ff8:  e8 37 00 39   strb	w8, [sp, #0xd]
0x101449ffc:  f4 3b 00 39   strb	w20, [sp, #0xe]
0x10144a000:  88 7e 08 53   lsr	w8, w20, #0x8
0x10144a004:  e8 3f 00 39   strb	w8, [sp, #0xf]
0x10144a008:  a0 22 44 f9   ldr	x0, [x21, #0x840]
0x10144a00c:  e2 2f 00 91   add	x2, sp, #0xb
0x10144a010:  a3 00 80 52   mov	w3, #0x5
0x10144a014:  8b 63 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x10144a018:  e2 03 00 aa   mov	x2, x0
0x10144a01c:  e0 03 13 aa   mov	x0, x19
0x10144a020:  80 09 1c 94   bl	j__objc_msgSend(x0, "setHawkeyePayload:")
0x10144a024:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a028:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10144a02c:  1f 05 00 b1   cmn	x8, #0x1
0x10144a030:  c1 08 00 54   b.ne	loc_10144a148 ; ⤵ 0x118
0x10144a034:  ; loc_10144a034
0x10144a034:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a038:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10144a03c:  e0 03 14 aa   mov	x0, x20
0x10144a040:  01 00 80 52   mov	w1, #0
0x10144a044:  ab 30 1b 94   bl	j__os_log_type_enabled
0x10144a048:  80 06 00 34   cbz	w0, loc_10144a118 ; ⤵ 0xd0
0x10144a04c:  e0 03 13 aa   mov	x0, x19
0x10144a050:  24 98 1b 94   bl	j__objc_msgSend(x0, "hawkeyePayload")
0x10144a054:  48 45 00 d0   adrp	x8, 0x101cf4000
0x10144a058:  00 79 44 fd   ldr	d0, [x8, #0x8f0]
0x10144a05c:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10144a060:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10144a064:  48 04 81 52   mov	w8, #0x822
0x10144a068:  e8 33 00 79   strh	w8, [sp, #0x18]
0x10144a06c:  28 53 00 90   adrp	x8, 0x101eae000
0x10144a070:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10144a074:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x10144a078:  48 08 81 52   mov	w8, #0x842
0x10144a07c:  e8 47 00 79   strh	w8, [sp, #0x22]
0x10144a080:  e0 43 02 f8   stur	x0, [sp, #0x24]
0x10144a084:  a0 5d ff d0   adrp	x0, 0x100000000
0x10144a088:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10144a08c:  23 71 00 d0   adrp	x3, 0x102270000
0x10144a090:  63 50 08 91   add	x3, x3, #0x214 ; "{\"msg%{public}.0s\":\"#durian #hawkeye startRanging\", \"payload\":%{public, location:escape_only}@}"
0x10144a094:  e4 43 00 91   add	x4, sp, #0x10
0x10144a098:  e1 03 14 aa   mov	x1, x20
0x10144a09c:  02 00 80 52   mov	w2, #0
0x10144a0a0:  85 03 80 52   mov	w5, #0x1c
0x10144a0a4:  1c 00 00 14   b	loc_10144a114 ; ⤵ 0x70
0x10144a0a8:  ; loc_10144a0a8
0x10144a0a8:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a0ac:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10144a0b0:  1f 05 00 b1   cmn	x8, #0x1
0x10144a0b4:  e1 04 00 54   b.ne	loc_10144a150 ; ⤵ 0x9c
0x10144a0b8:  ; loc_10144a0b8
0x10144a0b8:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a0bc:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10144a0c0:  e0 03 14 aa   mov	x0, x20
0x10144a0c4:  01 00 80 52   mov	w1, #0
0x10144a0c8:  8a 30 1b 94   bl	j__os_log_type_enabled
0x10144a0cc:  60 02 00 34   cbz	w0, loc_10144a118 ; ⤵ 0x4c
0x10144a0d0:  48 45 00 d0   adrp	x8, 0x101cf4000
0x10144a0d4:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10144a0d8:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10144a0dc:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10144a0e0:  48 04 81 52   mov	w8, #0x822
0x10144a0e4:  e8 33 00 79   strh	w8, [sp, #0x18]
0x10144a0e8:  28 53 00 90   adrp	x8, 0x101eae000
0x10144a0ec:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10144a0f0:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x10144a0f4:  a0 5d ff d0   adrp	x0, 0x100000000
0x10144a0f8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10144a0fc:  23 71 00 d0   adrp	x3, 0x102270000
0x10144a100:  63 cc 05 91   add	x3, x3, #0x173 ; "{\"msg%{public}.0s\":\"#durian #hawkeye nil task, initRanging\"}"
0x10144a104:  e4 43 00 91   add	x4, sp, #0x10
0x10144a108:  e1 03 14 aa   mov	x1, x20
0x10144a10c:  02 00 80 52   mov	w2, #0
0x10144a110:  45 02 80 52   mov	w5, #0x12
0x10144a114:  ; loc_10144a114
0x10144a114:  37 2c 1b 94   bl	j___os_log_impl
0x10144a118:  ; loc_10144a118
0x10144a118:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x10144a11c:  49 7a 00 90   adrp	x9, 0x102392000
0x10144a120:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10144a124:  29 01 40 f9   ldr	x9, [x9]
0x10144a128:  3f 01 08 eb   cmp	x9, x8
0x10144a12c:  61 01 00 54   b.ne	loc_10144a158 ; ⤵ 0x2c
0x10144a130:  e0 03 13 aa   mov	x0, x19
0x10144a134:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10144a138:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10144a13c:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10144a140:  ff c3 01 91   add	sp, sp, #0x70
0x10144a144:  ff 0f 5f d6   retab
0x10144a148:  ; loc_10144a148
0x10144a148:  61 17 1b 94   bl	0x101b0fecc
0x10144a14c:  ba ff ff 17   b	loc_10144a034 ; ⤴ -0x118
0x10144a150:  ; loc_10144a150
0x10144a150:  5e 17 1b 94   bl	0x101b0fec8
0x10144a154:  d9 ff ff 17   b	loc_10144a0b8 ; ⤴ -0x9c
0x10144a158:  ; loc_10144a158
0x10144a158:  fa 2b 1b 94   bl	j____stack_chk_fail

+[CLDurianTask stopRangingHawkeyeTask]:
0x10144a15c:  7f 23 03 d5   pacibsp
0x10144a160:  ff 83 01 d1   sub	sp, sp, #0x60
0x10144a164:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x10144a168:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]

