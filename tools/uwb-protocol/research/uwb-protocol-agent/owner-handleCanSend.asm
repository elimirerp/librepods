
-[CLDurianDeviceManager handleCanSendDataToPeripheral:]:
0x101477ee4:  7f 23 03 d5   pacibsp
0x101477ee8:  ff 83 01 d1   sub	sp, sp, #0x60
0x101477eec:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x101477ef0:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x101477ef4:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x101477ef8:  fd 43 01 91   add	fp, sp, #0x50
0x101477efc:  f4 03 02 aa   mov	x20, x2
0x101477f00:  f3 03 00 aa   mov	x19, x0
0x101477f04:  c8 78 00 f0   adrp	x8, 0x102392000
0x101477f08:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101477f0c:  08 01 40 f9   ldr	x8, [x8]
0x101477f10:  e8 17 00 f9   str	x8, [sp, #0x28]
0x101477f14:  2b b1 1a 94   bl	j__objc_msgSend(x0, "deviceWithActivePeripheral:")
0x101477f18:  4a fb 1a 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101477f1c:  c0 03 00 34   cbz	w0, loc_101477f94 ; ⤵ 0x78
0x101477f20:  48 88 00 f0   adrp	x8, 0x102582000
0x101477f24:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101477f28:  1f 05 00 b1   cmn	x8, #0x1
0x101477f2c:  c1 0a 00 54   b.ne	loc_101478084 ; ⤵ 0x158
0x101477f30:  ; loc_101477f30
0x101477f30:  48 88 00 f0   adrp	x8, 0x102582000
0x101477f34:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101477f38:  e0 03 13 aa   mov	x0, x19
0x101477f3c:  01 00 80 52   mov	w1, #0
0x101477f40:  ec 78 1a 94   bl	j__os_log_type_enabled
0x101477f44:  a0 08 00 34   cbz	w0, loc_101478058 ; ⤵ 0x114
0x101477f48:  e8 43 00 b0   adrp	x8, 0x101cf4000
0x101477f4c:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101477f50:  e0 03 00 bd   str	s0, [sp]
0x101477f54:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101477f58:  48 04 81 52   mov	w8, #0x822
0x101477f5c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101477f60:  a8 51 00 f0   adrp	x8, 0x101eae000
0x101477f64:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101477f68:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101477f6c:  40 5c ff b0   adrp	x0, 0x100000000
0x101477f70:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101477f74:  43 70 00 b0   adrp	x3, 0x102280000
0x101477f78:  63 80 34 91   add	x3, x3, #0xd20 ; "{\"msg%{public}.0s\":\"#durian #hawkeye canSendDataToPeripheral, unexpected\"}"
0x101477f7c:  e4 03 00 91   mov	x4, sp
0x101477f80:  e1 03 13 aa   mov	x1, x19
0x101477f84:  02 00 80 52   mov	w2, #0
0x101477f88:  45 02 80 52   mov	w5, #0x12
0x101477f8c:  99 74 1a 94   bl	j___os_log_impl
0x101477f90:  32 00 00 14   b	loc_101478058 ; ⤵ 0xc8
0x101477f94:  ; loc_101477f94
0x101477f94:  e0 03 13 aa   mov	x0, x19
0x101477f98:  e2 03 14 aa   mov	x2, x20
0x101477f9c:  09 b1 1a 94   bl	j__objc_msgSend(x0, "deviceWithActivePeripheral:")
0x101477fa0:  f3 03 00 aa   mov	x19, x0
0x101477fa4:  48 88 00 f0   adrp	x8, 0x102582000
0x101477fa8:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101477fac:  1f 05 00 b1   cmn	x8, #0x1
0x101477fb0:  e1 06 00 54   b.ne	loc_10147808c ; ⤵ 0xdc
0x101477fb4:  ; loc_101477fb4
0x101477fb4:  48 88 00 f0   adrp	x8, 0x102582000
0x101477fb8:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101477fbc:  e0 03 15 aa   mov	x0, x21
0x101477fc0:  01 00 80 52   mov	w1, #0
0x101477fc4:  cb 78 1a 94   bl	j__os_log_type_enabled
0x101477fc8:  e0 03 00 34   cbz	w0, loc_101478044 ; ⤵ 0x7c
0x101477fcc:  e0 03 13 aa   mov	x0, x19
0x101477fd0:  7c 98 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101477fd4:  91 82 00 94   bl	0x101498a18
0x101477fd8:  f6 03 00 aa   mov	x22, x0
0x101477fdc:  e0 03 14 aa   mov	x0, x20
0x101477fe0:  90 e1 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101477fe4:  8d 82 00 94   bl	0x101498a18
0x101477fe8:  e8 43 00 b0   adrp	x8, 0x101cf4000
0x101477fec:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101477ff0:  e0 03 00 bd   str	s0, [sp]
0x101477ff4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101477ff8:  48 04 81 52   mov	w8, #0x822
0x101477ffc:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101478000:  a8 51 00 d0   adrp	x8, 0x101eae000
0x101478004:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101478008:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10147800c:  28 08 81 52   mov	w8, #0x841
0x101478010:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101478014:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101478018:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10147801c:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x101478020:  40 5c ff 90   adrp	x0, 0x100000000
0x101478024:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101478028:  43 70 00 90   adrp	x3, 0x102280000
0x10147802c:  63 ac 35 91   add	x3, x3, #0xd6b ; "{\"msg%{public}.0s\":\"#durian canSendDataToPeripheral\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x101478030:  e4 03 00 91   mov	x4, sp
0x101478034:  e1 03 15 aa   mov	x1, x21
0x101478038:  02 00 80 52   mov	w2, #0
0x10147803c:  c5 04 80 52   mov	w5, #0x26
0x101478040:  6c 74 1a 94   bl	j___os_log_impl
0x101478044:  ; loc_101478044
0x101478044:  e0 03 13 aa   mov	x0, x19
0x101478048:  8e 72 1b 94   bl	j__objc_msgSend(x0, "shouldActivateDevicePostConnection")
0x10147804c:  60 00 00 34   cbz	w0, loc_101478058 ; ⤵ 0xc
0x101478050:  e0 03 13 aa   mov	x0, x19
0x101478054:  2b 87 1a 94   bl	j__objc_msgSend(x0, "activate")
0x101478058:  ; loc_101478058
0x101478058:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10147805c:  c9 78 00 d0   adrp	x9, 0x102392000
0x101478060:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101478064:  29 01 40 f9   ldr	x9, [x9]
0x101478068:  3f 01 08 eb   cmp	x9, x8
0x10147806c:  41 01 00 54   b.ne	loc_101478094 ; ⤵ 0x28
0x101478070:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x101478074:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x101478078:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x10147807c:  ff 83 01 91   add	sp, sp, #0x60
0x101478080:  ff 0f 5f d6   retab
0x101478084:  ; loc_101478084
0x101478084:  66 60 1a 94   bl	0x101b1021c
0x101478088:  aa ff ff 17   b	loc_101477f30 ; ⤴ -0x158
0x10147808c:  ; loc_10147808c
0x10147808c:  64 60 1a 94   bl	0x101b1021c
0x101478090:  c9 ff ff 17   b	loc_101477fb4 ; ⤴ -0xdc
0x101478094:  ; loc_101478094
0x101478094:  2b 74 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager handleConnectionFailureForPeripheral:withError:]:
0x101478098:  7f 23 03 d5   pacibsp
0x10147809c:  ff 83 02 d1   sub	sp, sp, #0xa0
0x1014780a0:  fc 6f 04 a9   stp	x28, x27, [sp, #0x40]
0x1014780a4:  fa 67 05 a9   stp	x26, x25, [sp, #0x50]
0x1014780a8:  f8 5f 06 a9   stp	x24, x23, [sp, #0x60]
0x1014780ac:  f6 57 07 a9   stp	x22, x21, [sp, #0x70]
0x1014780b0:  f4 4f 08 a9   stp	x20, x19, [sp, #0x80]
0x1014780b4:  fd 7b 09 a9   stp	fp, lr, [sp, #0x90]
0x1014780b8:  fd 43 02 91   add	fp, sp, #0x90
0x1014780bc:  f3 03 03 aa   mov	x19, x3
0x1014780c0:  f4 03 02 aa   mov	x20, x2
0x1014780c4:  f5 03 00 aa   mov	x21, x0
0x1014780c8:  c8 78 00 d0   adrp	x8, 0x102392000
0x1014780cc:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014780d0:  08 01 40 f9   ldr	x8, [x8]
0x1014780d4:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x1014780d8:  ba b0 1a 94   bl	j__objc_msgSend(x0, "deviceWithActivePeripheral:")
0x1014780dc:  f7 03 00 aa   mov	x23, x0
0x1014780e0:  5a 88 00 d0   adrp	x26, 0x102582000
0x1014780e4:  48 3b 46 f9   ldr	x8, [x26, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014780e8:  1f 05 00 b1   cmn	x8, #0x1
0x1014780ec:  81 0b 00 54   b.ne	loc_10147825c ; ⤵ 0x170
0x1014780f0:  ; loc_1014780f0
0x1014780f0:  5b 88 00 d0   adrp	x27, 0x102582000
0x1014780f4:  76 3f 46 f9   ldr	x22, [x27, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014780f8:  e0 03 16 aa   mov	x0, x22
0x1014780fc:  01 00 80 52   mov	w1, #0
0x101478100:  7c 78 1a 94   bl	j__os_log_type_enabled
0x101478104:  b9 51 00 d0   adrp	x25, 0x101eae000
0x101478108:  39 e3 02 91   add	x25, x25, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147810c:  40 04 00 34   cbz	w0, loc_101478194 ; ⤵ 0x88
0x101478110:  e0 03 17 aa   mov	x0, x23
0x101478114:  2b 98 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101478118:  40 82 00 94   bl	0x101498a18
0x10147811c:  f7 03 00 aa   mov	x23, x0
0x101478120:  e0 03 14 aa   mov	x0, x20
0x101478124:  3f e1 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101478128:  3c 82 00 94   bl	0x101498a18
0x10147812c:  f8 03 00 aa   mov	x24, x0
0x101478130:  e0 03 13 aa   mov	x0, x19
0x101478134:  c3 05 1b 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x101478138:  e8 43 00 90   adrp	x8, 0x101cf4000
0x10147813c:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101478140:  e0 03 00 bd   str	s0, [sp]
0x101478144:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101478148:  48 04 81 52   mov	w8, #0x822
0x10147814c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101478150:  f9 a3 00 f8   stur	x25, [sp, #0xa]
0x101478154:  28 08 81 52   mov	w8, #0x841
0x101478158:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10147815c:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x101478160:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101478164:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x101478168:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x10147816c:  e0 17 00 f9   str	x0, [sp, #0x28]
0x101478170:  40 5c ff 90   adrp	x0, 0x100000000
0x101478174:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101478178:  43 70 00 90   adrp	x3, 0x102280000
0x10147817c:  63 dc 37 91   add	x3, x3, #0xdf7 ; "{\"msg%{public}.0s\":\"#durian #connection failed\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"error\":%{private, location:escape_only}@}"
0x101478180:  e4 03 00 91   mov	x4, sp
0x101478184:  e1 03 16 aa   mov	x1, x22
0x101478188:  02 00 80 52   mov	w2, #0
0x10147818c:  05 06 80 52   mov	w5, #0x30
0x101478190:  18 74 1a 94   bl	j___os_log_impl
0x101478194:  ; loc_101478194
0x101478194:  e0 03 15 aa   mov	x0, x21
0x101478198:  e2 03 14 aa   mov	x2, x20
0x10147819c:  19 96 1a 94   bl	j__objc_msgSend(x0, "cancelConnectionTimeoutForPeripheral:")
0x1014781a0:  48 3b 46 f9   ldr	x8, [x26, #0xc70]
0x1014781a4:  1f 05 00 b1   cmn	x8, #0x1
0x1014781a8:  e1 05 00 54   b.ne	loc_101478264 ; ⤵ 0xbc
0x1014781ac:  ; loc_1014781ac
0x1014781ac:  76 3f 46 f9   ldr	x22, [x27, #0xc78]
0x1014781b0:  e0 03 16 aa   mov	x0, x22
0x1014781b4:  01 00 80 52   mov	w1, #0
0x1014781b8:  4e 78 1a 94   bl	j__os_log_type_enabled
0x1014781bc:  c0 02 00 34   cbz	w0, loc_101478214 ; ⤵ 0x58
0x1014781c0:  e0 03 14 aa   mov	x0, x20
0x1014781c4:  17 e1 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x1014781c8:  e8 43 00 90   adrp	x8, 0x101cf4000
0x1014781cc:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x1014781d0:  e0 03 00 bd   str	s0, [sp]
0x1014781d4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014781d8:  48 04 81 52   mov	w8, #0x822
0x1014781dc:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014781e0:  f9 a3 00 f8   stur	x25, [sp, #0xa]
0x1014781e4:  28 08 81 52   mov	w8, #0x841
0x1014781e8:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014781ec:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x1014781f0:  40 5c ff 90   adrp	x0, 0x100000000
0x1014781f4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014781f8:  43 70 00 90   adrp	x3, 0x102280000
0x1014781fc:  63 a4 3a 91   add	x3, x3, #0xea9 ; "{\"msg%{public}.0s\":\"#durian #connectattempt #watchdog cancelled connection timeout for peripherals associated with a stalled connection attempt\", \"periphs\":%{private, location:escape_only}@}"
0x101478200:  e4 03 00 91   mov	x4, sp
0x101478204:  e1 03 16 aa   mov	x1, x22
0x101478208:  02 00 80 52   mov	w2, #0
0x10147820c:  85 03 80 52   mov	w5, #0x1c
0x101478210:  f8 73 1a 94   bl	j___os_log_impl
0x101478214:  ; loc_101478214
0x101478214:  e0 03 15 aa   mov	x0, x21
0x101478218:  e2 03 14 aa   mov	x2, x20
0x10147821c:  e3 03 13 aa   mov	x3, x19
0x101478220:  00 c1 1a 94   bl	j__objc_msgSend(x0, "failedToConnectToPossiblePeripheral:withError:")
0x101478224:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x101478228:  c9 78 00 d0   adrp	x9, 0x102392000
0x10147822c:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101478230:  29 01 40 f9   ldr	x9, [x9]
0x101478234:  3f 01 08 eb   cmp	x9, x8
0x101478238:  a1 01 00 54   b.ne	loc_10147826c ; ⤵ 0x34
0x10147823c:  fd 7b 49 a9   ldp	fp, lr, [sp, #0x90]
0x101478240:  f4 4f 48 a9   ldp	x20, x19, [sp, #0x80]
0x101478244:  f6 57 47 a9   ldp	x22, x21, [sp, #0x70]
0x101478248:  f8 5f 46 a9   ldp	x24, x23, [sp, #0x60]
0x10147824c:  fa 67 45 a9   ldp	x26, x25, [sp, #0x50]
0x101478250:  fc 6f 44 a9   ldp	x28, x27, [sp, #0x40]
0x101478254:  ff 83 02 91   add	sp, sp, #0xa0
0x101478258:  ff 0f 5f d6   retab
0x10147825c:  ; loc_10147825c
0x10147825c:  f0 5f 1a 94   bl	0x101b1021c
0x101478260:  a4 ff ff 17   b	loc_1014780f0 ; ⤴ -0x170
0x101478264:  ; loc_101478264
0x101478264:  de 5f 1a 94   bl	0x101b101dc
0x101478268:  d1 ff ff 17   b	loc_1014781ac ; ⤴ -0xbc
0x10147826c:  ; loc_10147826c
0x10147826c:  b5 73 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager leashMetricsProcessingOnDisconnectionFromDevice:wasLeashed:]:
0x101478270:  7f 23 03 d5   pacibsp
0x101478274:  ff 83 01 d1   sub	sp, sp, #0x60
0x101478278:  e9 23 02 6d   stp	d9, d8, [sp, #0x20]
0x10147827c:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x101478280:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x101478284:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x101478288:  fd 43 01 91   add	fp, sp, #0x50
0x10147828c:  f3 03 00 aa   mov	x19, x0
0x101478290:  c8 78 00 d0   adrp	x8, 0x102392000
0x101478294:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101478298:  08 01 40 f9   ldr	x8, [x8]
0x10147829c:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x1014782a0:  83 06 00 34   cbz	w3, loc_101478370 ; ⤵ 0xd0
0x1014782a4:  f4 03 02 aa   mov	x20, x2
0x1014782a8:  4a 65 1a 94   bl	j__CFAbsoluteTimeGetCurrent
0x1014782ac:  08 1c a0 4e   mov	v8.16b, v0.16b
0x1014782b0:  48 88 00 d0   adrp	x8, 0x102582000
0x1014782b4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014782b8:  1f 05 00 b1   cmn	x8, #0x1
0x1014782bc:  61 07 00 54   b.ne	loc_1014783a8 ; ⤵ 0xec
0x1014782c0:  48 88 00 d0   adrp	x8, 0x102582000
0x1014782c4:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014782c8:  e0 03 15 aa   mov	x0, x21
0x1014782cc:  01 00 80 52   mov	w1, #0
0x1014782d0:  08 78 1a 94   bl	j__os_log_type_enabled
0x1014782d4:  60 02 00 34   cbz	w0, loc_101478320 ; ⤵ 0x4c
0x1014782d8:  e8 43 00 90   adrp	x8, 0x101cf4000
0x1014782dc:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x1014782e0:  e0 03 00 bd   str	s0, [sp]
0x1014782e4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014782e8:  48 04 81 52   mov	w8, #0x822
0x1014782ec:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014782f0:  a8 51 00 d0   adrp	x8, 0x101eae000

