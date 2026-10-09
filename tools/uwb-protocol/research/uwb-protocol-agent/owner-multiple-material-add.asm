
-[CLDurianConnectionAttempt addPossiblePeripheral:withConnectionMaterial:]:
0x10140f0d4:  7f 23 03 d5   pacibsp
0x10140f0d8:  ff 83 02 d1   sub	sp, sp, #0xa0
0x10140f0dc:  fa 67 05 a9   stp	x26, x25, [sp, #0x50]
0x10140f0e0:  f8 5f 06 a9   stp	x24, x23, [sp, #0x60]
0x10140f0e4:  f6 57 07 a9   stp	x22, x21, [sp, #0x70]
0x10140f0e8:  f4 4f 08 a9   stp	x20, x19, [sp, #0x80]
0x10140f0ec:  fd 7b 09 a9   stp	fp, lr, [sp, #0x90]
0x10140f0f0:  fd 43 02 91   add	fp, sp, #0x90
0x10140f0f4:  f5 03 03 aa   mov	x21, x3
0x10140f0f8:  f4 03 02 aa   mov	x20, x2
0x10140f0fc:  f3 03 00 aa   mov	x19, x0
0x10140f100:  08 7c 00 f0   adrp	x8, 0x102392000
0x10140f104:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10140f108:  08 01 40 f9   ldr	x8, [x8]
0x10140f10c:  e8 27 00 f9   str	x8, [sp, #0x48]
0x10140f110:  98 8b 00 f0   adrp	x24, 0x102582000
0x10140f114:  08 3b 46 f9   ldr	x8, [x24, #0xc70] ; data_102582c70 (__DATA.__data)
0x10140f118:  1f 05 00 b1   cmn	x8, #0x1
0x10140f11c:  a1 10 00 54   b.ne	loc_10140f330 ; ⤵ 0x214
0x10140f120:  99 8b 00 f0   adrp	x25, 0x102582000
0x10140f124:  36 3f 46 f9   ldr	x22, [x25, #0xc78] ; data_102582c78 (__DATA.__data)
0x10140f128:  e0 03 16 aa   mov	x0, x22
0x10140f12c:  01 00 80 52   mov	w1, #0
0x10140f130:  70 1c 1c 94   bl	j__os_log_type_enabled
0x10140f134:  c0 03 00 34   cbz	w0, loc_10140f1ac ; ⤵ 0x78
0x10140f138:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x10140f13c:  37 26 02 94   bl	0x101498a18
0x10140f140:  f7 03 00 aa   mov	x23, x0
0x10140f144:  e0 03 14 aa   mov	x0, x20
0x10140f148:  36 85 1c 94   bl	j__objc_msgSend(x0, "identifier")
0x10140f14c:  33 26 02 94   bl	0x101498a18
0x10140f150:  28 47 00 b0   adrp	x8, 0x101cf4000
0x10140f154:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10140f158:  e0 03 00 bd   str	s0, [sp]
0x10140f15c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10140f160:  48 04 81 52   mov	w8, #0x822
0x10140f164:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10140f168:  e8 54 00 f0   adrp	x8, 0x101eae000
0x10140f16c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10140f170:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10140f174:  28 08 81 52   mov	w8, #0x841
0x10140f178:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10140f17c:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x10140f180:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10140f184:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x10140f188:  80 5f ff b0   adrp	x0, 0x100000000
0x10140f18c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10140f190:  63 72 00 d0   adrp	x3, 0x10225d000
0x10140f194:  63 8c 2f 91   add	x3, x3, #0xbe3 ; "{\"msg%{public}.0s\":\"#durian add possible peripheral\", \"attemptId\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x10140f198:  e4 03 00 91   mov	x4, sp
0x10140f19c:  e1 03 16 aa   mov	x1, x22
0x10140f1a0:  02 00 80 52   mov	w2, #0
0x10140f1a4:  c5 04 80 52   mov	w5, #0x26
0x10140f1a8:  12 18 1c 94   bl	j___os_log_impl
0x10140f1ac:  ; loc_10140f1ac
0x10140f1ac:  60 22 40 f9   ldr	x0, [x19, #0x40]
0x10140f1b0:  e2 03 14 aa   mov	x2, x20
0x10140f1b4:  33 b7 1c 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10140f1b8:  00 02 00 b5   cbnz	x0, loc_10140f1f8 ; ⤵ 0x40
0x10140f1bc:  76 22 40 f9   ldr	x22, [x19, #0x40]
0x10140f1c0:  17 7c 00 d0   adrp	x23, 0x102391000
0x10140f1c4:  e0 42 44 f9   ldr	x0, [x23, #0x880] ; __got._OBJC_CLASS_$_NSMutableArray
0x10140f1c8:  fe 32 1c 94   bl	j__objc_msgSend(x0, "array")
0x10140f1cc:  e2 03 00 aa   mov	x2, x0
0x10140f1d0:  e0 03 16 aa   mov	x0, x22
0x10140f1d4:  e3 03 14 aa   mov	x3, x20
0x10140f1d8:  da 01 1d 94   bl	j__objc_msgSend(x0, "setObject:forKey:")
0x10140f1dc:  76 1e 40 f9   ldr	x22, [x19, #0x38]
0x10140f1e0:  e0 42 44 f9   ldr	x0, [x23, #0x880]
0x10140f1e4:  f7 32 1c 94   bl	j__objc_msgSend(x0, "array")
0x10140f1e8:  e2 03 00 aa   mov	x2, x0
0x10140f1ec:  e0 03 16 aa   mov	x0, x22
0x10140f1f0:  e3 03 14 aa   mov	x3, x20
0x10140f1f4:  d3 01 1d 94   bl	j__objc_msgSend(x0, "setObject:forKey:")
0x10140f1f8:  ; loc_10140f1f8
0x10140f1f8:  60 22 40 f9   ldr	x0, [x19, #0x40]
0x10140f1fc:  e2 03 14 aa   mov	x2, x20
0x10140f200:  20 b7 1c 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10140f204:  f7 03 00 aa   mov	x23, x0
0x10140f208:  e2 03 15 aa   mov	x2, x21
0x10140f20c:  b5 46 1c 94   bl	j__objc_msgSend(x0, "containsObject:")
0x10140f210:  f6 03 00 aa   mov	x22, x0
0x10140f214:  20 07 00 37   tbnz	w0, #0, loc_10140f2f8 ; ⤵ 0xe4
0x10140f218:  e0 03 17 aa   mov	x0, x23
0x10140f21c:  e2 03 15 aa   mov	x2, x21
0x10140f220:  c8 2d 1c 94   bl	j__objc_msgSend(x0, "addObject:")
0x10140f224:  60 1e 40 f9   ldr	x0, [x19, #0x38]
0x10140f228:  e2 03 14 aa   mov	x2, x20
0x10140f22c:  15 b7 1c 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10140f230:  e2 03 15 aa   mov	x2, x21
0x10140f234:  c3 2d 1c 94   bl	j__objc_msgSend(x0, "addObject:")
0x10140f238:  08 3b 46 f9   ldr	x8, [x24, #0xc70]
0x10140f23c:  1f 05 00 b1   cmn	x8, #0x1
0x10140f240:  c1 07 00 54   b.ne	loc_10140f338 ; ⤵ 0xf8
0x10140f244:  35 3f 46 f9   ldr	x21, [x25, #0xc78]
0x10140f248:  e0 03 15 aa   mov	x0, x21
0x10140f24c:  01 00 80 52   mov	w1, #0
0x10140f250:  28 1c 1c 94   bl	j__os_log_type_enabled
0x10140f254:  20 05 00 34   cbz	w0, loc_10140f2f8 ; ⤵ 0xa4
0x10140f258:  e0 03 14 aa   mov	x0, x20
0x10140f25c:  f1 84 1c 94   bl	j__objc_msgSend(x0, "identifier")
0x10140f260:  ee 25 02 94   bl	0x101498a18
0x10140f264:  f4 03 00 aa   mov	x20, x0
0x10140f268:  60 1e 40 f9   ldr	x0, [x19, #0x38]
0x10140f26c:  1d 49 1c 94   bl	j__objc_msgSend(x0, "count")
0x10140f270:  f7 03 00 aa   mov	x23, x0
0x10140f274:  60 22 40 f9   ldr	x0, [x19, #0x40]
0x10140f278:  1a 49 1c 94   bl	j__objc_msgSend(x0, "count")
0x10140f27c:  68 a6 43 a9   ldp	x8, x9, [x19, #0x38]
0x10140f280:  2a 3c 00 b0   adrp	x10, 0x101b94000
0x10140f284:  40 9d 40 fd   ldr	d0, [x10, #0x138]
0x10140f288:  e0 03 00 bd   str	s0, [sp]
0x10140f28c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10140f290:  4a 04 81 52   mov	w10, #0x822
0x10140f294:  ea 13 00 79   strh	w10, [sp, #0x8]
0x10140f298:  ea 54 00 f0   adrp	x10, 0x101eae000
0x10140f29c:  4a e1 02 91   add	x10, x10, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10140f2a0:  ea a3 00 f8   stur	x10, [sp, #0xa]
0x10140f2a4:  2a 08 81 52   mov	w10, #0x841
0x10140f2a8:  ea 27 00 79   strh	w10, [sp, #0x12]
0x10140f2ac:  f4 43 01 f8   stur	x20, [sp, #0x14]
0x10140f2b0:  4b 80 80 52   mov	w11, #0x402
0x10140f2b4:  eb 3b 00 79   strh	w11, [sp, #0x1c]
0x10140f2b8:  f7 e3 01 b8   stur	w23, [sp, #0x1e]
0x10140f2bc:  eb 47 00 79   strh	w11, [sp, #0x22]
0x10140f2c0:  e0 27 00 b9   str	w0, [sp, #0x24]
0x10140f2c4:  ea 53 00 79   strh	w10, [sp, #0x28]
0x10140f2c8:  e8 a3 02 f8   stur	x8, [sp, #0x2a]
0x10140f2cc:  ea 67 00 79   strh	w10, [sp, #0x32]
0x10140f2d0:  e9 43 03 f8   stur	x9, [sp, #0x34]
0x10140f2d4:  80 5f ff b0   adrp	x0, 0x100000000
0x10140f2d8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10140f2dc:  63 72 00 d0   adrp	x3, 0x10225d000
0x10140f2e0:  63 d0 31 91   add	x3, x3, #0xc74 ; "{\"msg%{public}.0s\":\"#durian add material\", \"periph\":%{private, location:escape_only}@, \"all\":%{public}d, \"pending\":%{public}d, \"allMaterials\":%{private, location:escape_only}@, \"pendingMaterials\":%{pr"...
0x10140f2e4:  e4 03 00 91   mov	x4, sp
0x10140f2e8:  e1 03 15 aa   mov	x1, x21
0x10140f2ec:  02 00 80 52   mov	w2, #0
0x10140f2f0:  85 07 80 52   mov	w5, #0x3c
0x10140f2f4:  bf 17 1c 94   bl	j___os_log_impl
0x10140f2f8:  ; loc_10140f2f8
0x10140f2f8:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x10140f2fc:  09 7c 00 f0   adrp	x9, 0x102392000
0x10140f300:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10140f304:  29 01 40 f9   ldr	x9, [x9]
0x10140f308:  3f 01 08 eb   cmp	x9, x8

