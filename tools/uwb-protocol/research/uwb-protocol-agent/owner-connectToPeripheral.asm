
-[CLDurianDeviceManager connectToPeripheral:withOptions:andTimeout:]:
0x101473d78:  00 6c 40 f9   ldr	x0, [x0, #0xd8]
0x101473d7c:  61 b2 1a 14   b	j__objc_msgSend(x0, "connectPeripheral:options:")

-[CLDurianDeviceManager cancelPeripheralConnection:forUUID:]:
0x101473d80:  7f 23 03 d5   pacibsp
0x101473d84:  ff 83 01 d1   sub	sp, sp, #0x60
0x101473d88:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x101473d8c:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x101473d90:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x101473d94:  fd 43 01 91   add	fp, sp, #0x50
0x101473d98:  f6 03 03 aa   mov	x22, x3
0x101473d9c:  f3 03 02 aa   mov	x19, x2
0x101473da0:  f4 03 00 aa   mov	x20, x0
0x101473da4:  e8 78 00 f0   adrp	x8, 0x102392000
0x101473da8:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101473dac:  08 01 40 f9   ldr	x8, [x8]
0x101473db0:  e8 17 00 f9   str	x8, [sp, #0x28]
0x101473db4:  68 88 00 f0   adrp	x8, 0x102582000
0x101473db8:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101473dbc:  1f 05 00 b1   cmn	x8, #0x1
0x101473dc0:  41 06 00 54   b.ne	loc_101473e88 ; ⤵ 0xc8
0x101473dc4:  ; loc_101473dc4
0x101473dc4:  68 88 00 f0   adrp	x8, 0x102582000
0x101473dc8:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101473dcc:  e0 03 15 aa   mov	x0, x21
0x101473dd0:  01 00 80 52   mov	w1, #0
0x101473dd4:  47 89 1a 94   bl	j__os_log_type_enabled
0x101473dd8:  c0 03 00 34   cbz	w0, loc_101473e50 ; ⤵ 0x78
0x101473ddc:  e0 03 16 aa   mov	x0, x22
0x101473de0:  0e 93 00 94   bl	0x101498a18
0x101473de4:  f6 03 00 aa   mov	x22, x0
0x101473de8:  e0 03 13 aa   mov	x0, x19
0x101473dec:  0d f2 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101473df0:  0a 93 00 94   bl	0x101498a18
0x101473df4:  08 44 00 b0   adrp	x8, 0x101cf4000
0x101473df8:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101473dfc:  e0 03 00 bd   str	s0, [sp]
0x101473e00:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101473e04:  48 04 81 52   mov	w8, #0x822
0x101473e08:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101473e0c:  c8 51 00 f0   adrp	x8, 0x101eae000
0x101473e10:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101473e14:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101473e18:  28 08 81 52   mov	w8, #0x841
0x101473e1c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101473e20:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101473e24:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101473e28:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x101473e2c:  60 5c ff b0   adrp	x0, 0x100000000
0x101473e30:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101473e34:  63 70 00 90   adrp	x3, 0x10227f000
0x101473e38:  63 0c 15 91   add	x3, x3, #0x543 ; "{\"msg%{public}.0s\":\"#durian #connection cancelling peripheral\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x101473e3c:  e4 03 00 91   mov	x4, sp
0x101473e40:  e1 03 15 aa   mov	x1, x21
0x101473e44:  02 00 80 52   mov	w2, #0
0x101473e48:  c5 04 80 52   mov	w5, #0x26
0x101473e4c:  e9 84 1a 94   bl	j___os_log_impl
0x101473e50:  ; loc_101473e50
0x101473e50:  80 6e 40 f9   ldr	x0, [x20, #0xd8]
0x101473e54:  e2 03 13 aa   mov	x2, x19
0x101473e58:  1a a7 1a 94   bl	j__objc_msgSend(x0, "cancelPeripheralConnection:")
0x101473e5c:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101473e60:  e9 78 00 f0   adrp	x9, 0x102392000
0x101473e64:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101473e68:  29 01 40 f9   ldr	x9, [x9]
0x101473e6c:  3f 01 08 eb   cmp	x9, x8
0x101473e70:  01 01 00 54   b.ne	loc_101473e90 ; ⤵ 0x20
0x101473e74:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x101473e78:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x101473e7c:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x101473e80:  ff 83 01 91   add	sp, sp, #0x60
0x101473e84:  ff 0f 5f d6   retab
0x101473e88:  ; loc_101473e88
0x101473e88:  e5 70 1a 94   bl	0x101b1021c
0x101473e8c:  ce ff ff 17   b	loc_101473dc4 ; ⤴ -0xc8
0x101473e90:  ; loc_101473e90
0x101473e90:  ac 84 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager cancelConnectionAttemptToDevice:]:
0x101473e94:  7f 23 03 d5   pacibsp
0x101473e98:  ff 03 06 d1   sub	sp, sp, #0x180
0x101473e9c:  fc 6f 12 a9   stp	x28, x27, [sp, #0x120]
0x101473ea0:  fa 67 13 a9   stp	x26, x25, [sp, #0x130]
0x101473ea4:  f8 5f 14 a9   stp	x24, x23, [sp, #0x140]
0x101473ea8:  f6 57 15 a9   stp	x22, x21, [sp, #0x150]
0x101473eac:  f4 4f 16 a9   stp	x20, x19, [sp, #0x160]
0x101473eb0:  fd 7b 17 a9   stp	fp, lr, [sp, #0x170]
0x101473eb4:  fd c3 05 91   add	fp, sp, #0x170
0x101473eb8:  f4 03 02 aa   mov	x20, x2
0x101473ebc:  f3 03 00 aa   mov	x19, x0
0x101473ec0:  e8 78 00 f0   adrp	x8, 0x102392000
0x101473ec4:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101473ec8:  08 01 40 f9   ldr	x8, [x8]
0x101473ecc:  a8 03 1a f8   stur	x8, [fp, #-0x60]
0x101473ed0:  00 e4 00 6f   movi	v0.2d, #0
0x101473ed4:  e0 03 01 ad   stp	q0, q0, [sp, #0x20]
0x101473ed8:  e0 03 02 ad   stp	q0, q0, [sp, #0x40]
0x101473edc:  e0 03 02 aa   mov	x0, x2
0x101473ee0:  c0 97 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101473ee4:  3f 30 1b 94   bl	j__objc_msgSend(x0, "possiblePeripherals")
0x101473ee8:  e2 83 00 91   add	x2, sp, #0x20
0x101473eec:  e3 43 02 91   add	x3, sp, #0x90
0x101473ef0:  e0 0f 00 f9   str	x0, [sp, #0x18]
0x101473ef4:  04 02 80 52   mov	w4, #0x10
0x101473ef8:  02 b6 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101473efc:  c0 0b 00 b4   cbz	x0, loc_101474074 ; ⤵ 0x178
0x101473f00:  f6 03 00 aa   mov	x22, x0
0x101473f04:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x101473f08:  17 01 40 f9   ldr	x23, [x8]
0x101473f0c:  7b 88 00 f0   adrp	x27, 0x102582000
0x101473f10:  78 88 00 f0   adrp	x24, 0x102582000
0x101473f14:  08 44 00 b0   adrp	x8, 0x101cf4000
0x101473f18:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101473f1c:  e0 03 80 3d   str	q0, [sp]
0x101473f20:  f3 0b 00 f9   str	x19, [sp, #0x10]
0x101473f24:  ; loc_101473f24
0x101473f24:  15 00 80 d2   mov	x21, #0
0x101473f28:  ; loc_101473f28
0x101473f28:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x101473f2c:  08 01 40 f9   ldr	x8, [x8]
0x101473f30:  1f 01 17 eb   cmp	x8, x23
0x101473f34:  60 00 00 54   b.eq	loc_101473f40 ; ⤵ 0xc
0x101473f38:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x101473f3c:  f1 87 1a 94   bl	j__objc_enumerationMutation
0x101473f40:  ; loc_101473f40
0x101473f40:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101473f44:  19 79 75 f8   ldr	x25, [x8, x21, lsl #0x3]
0x101473f48:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101473f4c:  1f 05 00 b1   cmn	x8, #0x1
0x101473f50:  01 08 00 54   b.ne	loc_101474050 ; ⤵ 0x100
0x101473f54:  ; loc_101473f54
0x101473f54:  1a 3f 46 f9   ldr	x26, [x24, #0xc78]
0x101473f58:  e0 03 1a aa   mov	x0, x26
0x101473f5c:  01 00 80 52   mov	w1, #0
0x101473f60:  e4 88 1a 94   bl	j__os_log_type_enabled
0x101473f64:  c0 05 00 34   cbz	w0, loc_10147401c ; ⤵ 0xb8
0x101473f68:  e0 03 14 aa   mov	x0, x20
0x101473f6c:  95 a8 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101473f70:  aa 92 00 94   bl	0x101498a18
0x101473f74:  f3 03 16 aa   mov	x19, x22
0x101473f78:  f6 03 17 aa   mov	x22, x23
0x101473f7c:  f7 03 18 aa   mov	x23, x24
0x101473f80:  f8 03 1b aa   mov	x24, x27
0x101473f84:  fb 03 00 aa   mov	x27, x0
0x101473f88:  e0 03 14 aa   mov	x0, x20
0x101473f8c:  95 97 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101473f90:  a4 f1 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101473f94:  a1 92 00 94   bl	0x101498a18
0x101473f98:  fc 03 00 aa   mov	x28, x0
0x101473f9c:  e0 03 19 aa   mov	x0, x25
0x101473fa0:  a0 f1 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101473fa4:  9d 92 00 94   bl	0x101498a18
0x101473fa8:  e0 03 c0 3d   ldr	q0, [sp]
0x101473fac:  e0 63 00 bd   str	s0, [sp, #0x60]
0x101473fb0:  ff 67 00 b9   str	wzr, [sp, #0x64]
0x101473fb4:  48 04 81 52   mov	w8, #0x822
0x101473fb8:  e8 d3 00 79   strh	w8, [sp, #0x68]
0x101473fbc:  c8 51 00 f0   adrp	x8, 0x101eae000
0x101473fc0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101473fc4:  e8 a3 06 f8   stur	x8, [sp, #0x6a]
0x101473fc8:  28 08 81 52   mov	w8, #0x841
0x101473fcc:  e8 e7 00 79   strh	w8, [sp, #0x72]
0x101473fd0:  fb 43 07 f8   stur	x27, [sp, #0x74]
0x101473fd4:  fb 03 18 aa   mov	x27, x24
0x101473fd8:  f8 03 17 aa   mov	x24, x23
0x101473fdc:  f7 03 16 aa   mov	x23, x22
0x101473fe0:  f6 03 13 aa   mov	x22, x19
0x101473fe4:  f3 0b 40 f9   ldr	x19, [sp, #0x10]
0x101473fe8:  e8 fb 00 79   strh	w8, [sp, #0x7c]
0x101473fec:  fc e3 07 f8   stur	x28, [sp, #0x7e]
0x101473ff0:  e8 0f 01 79   strh	w8, [sp, #0x86]
0x101473ff4:  e0 47 00 f9   str	x0, [sp, #0x88]
0x101473ff8:  e4 83 01 91   add	x4, sp, #0x60
0x101473ffc:  60 5c ff b0   adrp	x0, 0x100000000
0x101474000:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101474004:  e1 03 1a aa   mov	x1, x26
0x101474008:  02 00 80 52   mov	w2, #0
0x10147400c:  43 70 00 f0   adrp	x3, 0x10227f000
0x101474010:  63 64 17 91   add	x3, x3, #0x5d9 ; "{\"msg%{public}.0s\":\"#durian #connectattempt periph cancelall\", \"item\":%{private, location:escape_only}@, \"attemptId\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x101474014:  05 06 80 52   mov	w5, #0x30
0x101474018:  76 84 1a 94   bl	j___os_log_impl
0x10147401c:  ; loc_10147401c
0x10147401c:  e0 03 14 aa   mov	x0, x20
0x101474020:  68 a8 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101474024:  e3 03 00 aa   mov	x3, x0
0x101474028:  e0 03 13 aa   mov	x0, x19
0x10147402c:  e2 03 19 aa   mov	x2, x25
0x101474030:  ac a6 1a 94   bl	j__objc_msgSend(x0, "cancelPeripheralConnection:forUUID:")
0x101474034:  e0 03 13 aa   mov	x0, x19
0x101474038:  e2 03 19 aa   mov	x2, x25
0x10147403c:  71 a6 1a 94   bl	j__objc_msgSend(x0, "cancelConnectionTimeoutForPeripheral:")
0x101474040:  b5 06 00 91   add	x21, x21, #0x1
0x101474044:  df 02 15 eb   cmp	x22, x21
0x101474048:  01 f7 ff 54   b.ne	loc_101473f28 ; ⤴ -0x120
0x10147404c:  03 00 00 14   b	loc_101474058 ; ⤵ 0xc
0x101474050:  ; loc_101474050
0x101474050:  63 70 1a 94   bl	0x101b101dc
0x101474054:  c0 ff ff 17   b	loc_101473f54 ; ⤴ -0x100
0x101474058:  ; loc_101474058
0x101474058:  e2 83 00 91   add	x2, sp, #0x20
0x10147405c:  e3 43 02 91   add	x3, sp, #0x90
0x101474060:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x101474064:  04 02 80 52   mov	w4, #0x10
0x101474068:  a6 b5 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10147406c:  f6 03 00 aa   mov	x22, x0
0x101474070:  a0 f5 ff b5   cbnz	x0, loc_101473f24 ; ⤴ -0x14c
0x101474074:  ; loc_101474074
0x101474074:  a8 03 5a f8   ldur	x8, [fp, #-0x60]
0x101474078:  e9 78 00 d0   adrp	x9, 0x102392000
0x10147407c:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101474080:  29 01 40 f9   ldr	x9, [x9]
0x101474084:  3f 01 08 eb   cmp	x9, x8
0x101474088:  21 01 00 54   b.ne	loc_1014740ac ; ⤵ 0x24
0x10147408c:  fd 7b 57 a9   ldp	fp, lr, [sp, #0x170]
0x101474090:  f4 4f 56 a9   ldp	x20, x19, [sp, #0x160]
0x101474094:  f6 57 55 a9   ldp	x22, x21, [sp, #0x150]
0x101474098:  f8 5f 54 a9   ldp	x24, x23, [sp, #0x140]
0x10147409c:  fa 67 53 a9   ldp	x26, x25, [sp, #0x130]
0x1014740a0:  fc 6f 52 a9   ldp	x28, x27, [sp, #0x120]
0x1014740a4:  ff 03 06 91   add	sp, sp, #0x180
0x1014740a8:  ff 0f 5f d6   retab
0x1014740ac:  ; loc_1014740ac
0x1014740ac:  25 84 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager cancelActiveConnectionAttemptsExcludingHele:]:
0x1014740b0:  7f 23 03 d5   pacibsp
0x1014740b4:  ff 83 05 d1   sub	sp, sp, #0x160
0x1014740b8:  fc 6f 10 a9   stp	x28, x27, [sp, #0x100]
0x1014740bc:  fa 67 11 a9   stp	x26, x25, [sp, #0x110]
0x1014740c0:  f8 5f 12 a9   stp	x24, x23, [sp, #0x120]
0x1014740c4:  f6 57 13 a9   stp	x22, x21, [sp, #0x130]
0x1014740c8:  f4 4f 14 a9   stp	x20, x19, [sp, #0x140]
0x1014740cc:  fd 7b 15 a9   stp	fp, lr, [sp, #0x150]
0x1014740d0:  fd 43 05 91   add	fp, sp, #0x150
0x1014740d4:  f3 03 02 aa   mov	x19, x2
0x1014740d8:  f4 03 00 aa   mov	x20, x0
0x1014740dc:  e8 78 00 d0   adrp	x8, 0x102392000
0x1014740e0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014740e4:  08 01 40 f9   ldr	x8, [x8]
0x1014740e8:  a8 03 1a f8   stur	x8, [fp, #-0x60]
0x1014740ec:  7c 88 00 d0   adrp	x28, 0x102582000
0x1014740f0:  88 3b 46 f9   ldr	x8, [x28, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014740f4:  1f 05 00 b1   cmn	x8, #0x1
0x1014740f8:  a1 13 00 54   b.ne	loc_10147436c ; ⤵ 0x274
0x1014740fc:  78 88 00 d0   adrp	x24, 0x102582000
0x101474100:  15 3f 46 f9   ldr	x21, [x24, #0xc78] ; data_102582c78 (__DATA.__data)
0x101474104:  e0 03 15 aa   mov	x0, x21
0x101474108:  01 00 80 52   mov	w1, #0
0x10147410c:  79 88 1a 94   bl	j__os_log_type_enabled
0x101474110:  c0 02 00 34   cbz	w0, loc_101474168 ; ⤵ 0x58
0x101474114:  08 44 00 90   adrp	x8, 0x101cf4000
0x101474118:  00 79 44 fd   ldr	d0, [x8, #0x8f0]
0x10147411c:  e0 53 00 bd   str	s0, [sp, #0x50]
0x101474120:  ff 57 00 b9   str	wzr, [sp, #0x54]
0x101474124:  48 04 81 52   mov	w8, #0x822
0x101474128:  e8 b3 00 79   strh	w8, [sp, #0x58]
0x10147412c:  c8 51 00 d0   adrp	x8, 0x101eae000
0x101474130:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101474134:  e8 a3 05 f8   stur	x8, [sp, #0x5a]

