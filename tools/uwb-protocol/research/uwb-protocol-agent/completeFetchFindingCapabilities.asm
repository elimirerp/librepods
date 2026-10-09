
-[CLDurianService completeFetchFindingCapabilities:client:data:opcode:]:
0x10142b01c:  7f 23 03 d5   pacibsp
0x10142b020:  ff c3 01 d1   sub	sp, sp, #0x70
0x10142b024:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x10142b028:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10142b02c:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10142b030:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10142b034:  fd 83 01 91   add	fp, sp, #0x60
0x10142b038:  f6 03 04 aa   mov	x22, x4
0x10142b03c:  f3 03 03 aa   mov	x19, x3
0x10142b040:  f4 03 00 aa   mov	x20, x0
0x10142b044:  28 7b 00 f0   adrp	x8, 0x102392000
0x10142b048:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10142b04c:  08 01 40 f9   ldr	x8, [x8]
0x10142b050:  e8 17 00 f9   str	x8, [sp, #0x28]
0x10142b054:  00 08 40 f9   ldr	x0, [x0, #0x10]
0x10142b058:  f2 e4 1b 94   bl	j__objc_msgSend(x0, "deviceWithUUID:")
0x10142b05c:  f5 03 00 aa   mov	x21, x0
0x10142b060:  28 7b 00 d0   adrp	x8, 0x102391000
0x10142b064:  00 11 47 f9   ldr	x0, [x8, #0xe20] ; __got._OBJC_CLASS_$_CLFindMyAccessoryFindingCapabilities
0x10142b068:  7a ab 1b 94   bl	j__objc_alloc
0x10142b06c:  e2 03 16 aa   mov	x2, x22
0x10142b070:  e4 1c 1c 94   bl	j__objc_msgSend(x0, "initWithData:")
0x10142b074:  83 ab 1b 94   bl	j__objc_autorelease
0x10142b078:  e2 03 00 aa   mov	x2, x0
0x10142b07c:  e0 03 15 aa   mov	x0, x21
0x10142b080:  b0 82 1c 94   bl	j__objc_msgSend(x0, "setFindingCapabilities:")
0x10142b084:  a8 8a 00 f0   adrp	x8, 0x102582000
0x10142b088:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10142b08c:  1f 05 00 b1   cmn	x8, #0x1
0x10142b090:  c1 07 00 54   b.ne	loc_10142b188 ; ⤵ 0xf8
0x10142b094:  ; loc_10142b094
0x10142b094:  a8 8a 00 f0   adrp	x8, 0x102582000
0x10142b098:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10142b09c:  e0 03 16 aa   mov	x0, x22
0x10142b0a0:  21 00 80 52   mov	w1, #0x1
0x10142b0a4:  93 ac 1b 94   bl	j__os_log_type_enabled
0x10142b0a8:  00 04 00 34   cbz	w0, loc_10142b128 ; ⤵ 0x80
0x10142b0ac:  e0 03 15 aa   mov	x0, x21
0x10142b0b0:  24 00 1c 94   bl	j__objc_msgSend(x0, "findingCapabilities")
0x10142b0b4:  c3 ca 1b 94   bl	j__objc_msgSend(x0, "capabilitiesString")
0x10142b0b8:  f7 03 00 aa   mov	x23, x0
0x10142b0bc:  e0 03 15 aa   mov	x0, x21
0x10142b0c0:  40 cc 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142b0c4:  55 b6 01 94   bl	0x101498a18
0x10142b0c8:  48 46 00 b0   adrp	x8, 0x101cf4000
0x10142b0cc:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10142b0d0:  e0 03 00 bd   str	s0, [sp]
0x10142b0d4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10142b0d8:  48 04 81 52   mov	w8, #0x822
0x10142b0dc:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10142b0e0:  08 54 00 f0   adrp	x8, 0x101eae000
0x10142b0e4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10142b0e8:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10142b0ec:  48 08 81 52   mov	w8, #0x842
0x10142b0f0:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10142b0f4:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x10142b0f8:  28 08 81 52   mov	w8, #0x841
0x10142b0fc:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10142b100:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x10142b104:  a0 5e ff b0   adrp	x0, 0x100000000
0x10142b108:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10142b10c:  e3 71 00 90   adrp	x3, 0x102267000
0x10142b110:  63 9c 1e 91   add	x3, x3, #0x7a7 ; "{\"msg%{public}.0s\":\"#durian CLFindMyAccessoryFindingCapabilities completeFetchFindingCapabilities\", \"capabilities\":%{public, location:escape_only}@, \"item\":%{private, location:escape_only}@}"
0x10142b114:  e4 03 00 91   mov	x4, sp
0x10142b118:  e1 03 16 aa   mov	x1, x22
0x10142b11c:  22 00 80 52   mov	w2, #0x1
0x10142b120:  c5 04 80 52   mov	w5, #0x26
0x10142b124:  33 a8 1b 94   bl	j___os_log_impl
0x10142b128:  ; loc_10142b128
0x10142b128:  94 9a 40 f9   ldr	x20, [x20, #0x130]
0x10142b12c:  e0 03 15 aa   mov	x0, x21
0x10142b130:  24 cc 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142b134:  f6 03 00 aa   mov	x22, x0
0x10142b138:  e0 03 15 aa   mov	x0, x21
0x10142b13c:  01 00 1c 94   bl	j__objc_msgSend(x0, "findingCapabilities")
0x10142b140:  e3 03 00 aa   mov	x3, x0
0x10142b144:  e0 03 14 aa   mov	x0, x20
0x10142b148:  e2 03 16 aa   mov	x2, x22
0x10142b14c:  04 00 80 d2   mov	x4, #0
0x10142b150:  e5 03 13 aa   mov	x5, x19
0x10142b154:  db e7 1b 94   bl	j__objc_msgSend(x0, "didFetchFindingCapabilitesOnTag:withFindingCapabilities:error:forClient:")
0x10142b158:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10142b15c:  29 7b 00 f0   adrp	x9, 0x102392000
0x10142b160:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10142b164:  29 01 40 f9   ldr	x9, [x9]
0x10142b168:  3f 01 08 eb   cmp	x9, x8
0x10142b16c:  21 01 00 54   b.ne	loc_10142b190 ; ⤵ 0x24
0x10142b170:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10142b174:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10142b178:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10142b17c:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x10142b180:  ff c3 01 91   add	sp, sp, #0x70
0x10142b184:  ff 0f 5f d6   retab
0x10142b188:  ; loc_10142b188
0x10142b188:  8b 92 1b 94   bl	0x101b0fbb4
0x10142b18c:  c2 ff ff 17   b	loc_10142b094 ; ⤴ -0xf8
0x10142b190:  ; loc_10142b190
0x10142b190:  ec a7 1b 94   bl	j____stack_chk_fail

-[CLDurianService completeRangingInit:client:data:opcode:]:
0x10142b194:  7f 23 03 d5   pacibsp
0x10142b198:  f8 5f bc a9   stp	x24, x23, [sp, #-0x40]!
0x10142b19c:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x10142b1a0:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x10142b1a4:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10142b1a8:  fd c3 00 91   add	fp, sp, #0x30
0x10142b1ac:  f3 03 05 aa   mov	x19, x5
0x10142b1b0:  f4 03 04 aa   mov	x20, x4
0x10142b1b4:  f5 03 03 aa   mov	x21, x3
0x10142b1b8:  f6 03 00 aa   mov	x22, x0
0x10142b1bc:  00 08 40 f9   ldr	x0, [x0, #0x10]
0x10142b1c0:  98 e4 1b 94   bl	j__objc_msgSend(x0, "deviceWithUUID:")
0x10142b1c4:  f7 03 00 aa   mov	x23, x0
0x10142b1c8:  e2 03 13 aa   mov	x2, x19
0x10142b1cc:  e3 03 14 aa   mov	x3, x20
0x10142b1d0:  e4 08 1c 94   bl	j__objc_msgSend(x0, "getRangingStatusForOpcode:data:")
0x10142b1d4:  f3 03 00 aa   mov	x19, x0
0x10142b1d8:  d4 9a 40 f9   ldr	x20, [x22, #0x130]
0x10142b1dc:  e0 03 17 aa   mov	x0, x23
0x10142b1e0:  f8 cb 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142b1e4:  e2 03 00 aa   mov	x2, x0
0x10142b1e8:  e0 03 14 aa   mov	x0, x20
0x10142b1ec:  e3 03 13 aa   mov	x3, x19
0x10142b1f0:  04 00 80 d2   mov	x4, #0
0x10142b1f4:  e5 03 15 aa   mov	x5, x21
0x10142b1f8:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x10142b1fc:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x10142b200:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x10142b204:  f8 5f c4 a8   ldp	x24, x23, [sp], #0x40
0x10142b208:  ff 23 03 d5   autibsp
0x10142b20c:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10142b210:  50 00 f0 b6   tbz	x16, #0x3e, loc_10142b218 ; ⤵ 0x8
0x10142b214:  20 8e 38 d4   brk	#0xc471
0x10142b218:  ; loc_10142b218
0x10142b218:  02 e9 1b 14   b	j__objc_msgSend(x0, "didInitRangingOnTag:withStatus:error:forClient:")

-[CLDurianService completeRangingConfigure:client:data:opcode:]:
0x10142b21c:  7f 23 03 d5   pacibsp
0x10142b220:  f8 5f bc a9   stp	x24, x23, [sp, #-0x40]!
0x10142b224:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x10142b228:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x10142b22c:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10142b230:  fd c3 00 91   add	fp, sp, #0x30
0x10142b234:  f3 03 05 aa   mov	x19, x5
0x10142b238:  f4 03 04 aa   mov	x20, x4
0x10142b23c:  f5 03 03 aa   mov	x21, x3
0x10142b240:  f6 03 00 aa   mov	x22, x0
0x10142b244:  00 08 40 f9   ldr	x0, [x0, #0x10]
0x10142b248:  76 e4 1b 94   bl	j__objc_msgSend(x0, "deviceWithUUID:")
0x10142b24c:  f7 03 00 aa   mov	x23, x0
0x10142b250:  e2 03 13 aa   mov	x2, x19
0x10142b254:  e3 03 14 aa   mov	x3, x20
0x10142b258:  c2 08 1c 94   bl	j__objc_msgSend(x0, "getRangingStatusForOpcode:data:")
0x10142b25c:  f3 03 00 aa   mov	x19, x0
0x10142b260:  d4 9a 40 f9   ldr	x20, [x22, #0x130]
0x10142b264:  e0 03 17 aa   mov	x0, x23
0x10142b268:  d6 cb 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142b26c:  e2 03 00 aa   mov	x2, x0
0x10142b270:  e0 03 14 aa   mov	x0, x20
0x10142b274:  e3 03 13 aa   mov	x3, x19
0x10142b278:  04 00 80 d2   mov	x4, #0
0x10142b27c:  e5 03 15 aa   mov	x5, x21
0x10142b280:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x10142b284:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x10142b288:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x10142b28c:  f8 5f c4 a8   ldp	x24, x23, [sp], #0x40
0x10142b290:  ff 23 03 d5   autibsp
0x10142b294:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10142b298:  50 00 f0 b6   tbz	x16, #0x3e, loc_10142b2a0 ; ⤵ 0x8
0x10142b29c:  20 8e 38 d4   brk	#0xc471
0x10142b2a0:  ; loc_10142b2a0
0x10142b2a0:  98 e5 1b 14   b	j__objc_msgSend(x0, "didConfigureRangingOnTag:withStatus:error:forClient:")

-[CLDurianService completeRangingStart:client:data:opcode:]:
0x10142b2a4:  7f 23 03 d5   pacibsp
0x10142b2a8:  f8 5f bc a9   stp	x24, x23, [sp, #-0x40]!
0x10142b2ac:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x10142b2b0:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x10142b2b4:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10142b2b8:  fd c3 00 91   add	fp, sp, #0x30
0x10142b2bc:  f3 03 05 aa   mov	x19, x5
0x10142b2c0:  f4 03 04 aa   mov	x20, x4
0x10142b2c4:  f5 03 00 aa   mov	x21, x0
0x10142b2c8:  00 08 40 f9   ldr	x0, [x0, #0x10]
0x10142b2cc:  55 e4 1b 94   bl	j__objc_msgSend(x0, "deviceWithUUID:")
0x10142b2d0:  f6 03 00 aa   mov	x22, x0
0x10142b2d4:  e2 03 13 aa   mov	x2, x19
0x10142b2d8:  e3 03 14 aa   mov	x3, x20
0x10142b2dc:  a1 08 1c 94   bl	j__objc_msgSend(x0, "getRangingStatusForOpcode:data:")
0x10142b2e0:  f7 03 00 aa   mov	x23, x0
0x10142b2e4:  e0 03 16 aa   mov	x0, x22
0x10142b2e8:  e2 03 13 aa   mov	x2, x19
0x10142b2ec:  e3 03 14 aa   mov	x3, x20
0x10142b2f0:  94 08 1c 94   bl	j__objc_msgSend(x0, "getRangeEndReasonForOpcode:data:")
0x10142b2f4:  f3 03 00 aa   mov	x19, x0
0x10142b2f8:  b4 9a 40 f9   ldr	x20, [x21, #0x130]
0x10142b2fc:  e0 03 16 aa   mov	x0, x22
0x10142b300:  b0 cb 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142b304:  e2 03 00 aa   mov	x2, x0
0x10142b308:  a6 2a 40 f9   ldr	x6, [x21, #0x50]
0x10142b30c:  e0 03 14 aa   mov	x0, x20
0x10142b310:  e3 03 17 aa   mov	x3, x23
0x10142b314:  e4 03 13 aa   mov	x4, x19
0x10142b318:  05 00 80 d2   mov	x5, #0
0x10142b31c:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x10142b320:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x10142b324:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x10142b328:  f8 5f c4 a8   ldp	x24, x23, [sp], #0x40
0x10142b32c:  ff 23 03 d5   autibsp
0x10142b330:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10142b334:  50 00 f0 b6   tbz	x16, #0x3e, loc_10142b33c ; ⤵ 0x8
0x10142b338:  20 8e 38 d4   brk	#0xc471
0x10142b33c:  ; loc_10142b33c
0x10142b33c:  59 e5 1b 14   b	j__objc_msgSend(x0, "didCompleteRangingOnTag:withStatus:endReason:error:forClient:")

-[CLDurianService completeRangingDeinit:client:data:opcode:]:
0x10142b340:  7f 23 03 d5   pacibsp
0x10142b344:  ff c3 05 d1   sub	sp, sp, #0x170
0x10142b348:  fc 6f 11 a9   stp	x28, x27, [sp, #0x110]
0x10142b34c:  fa 67 12 a9   stp	x26, x25, [sp, #0x120]
0x10142b350:  f8 5f 13 a9   stp	x24, x23, [sp, #0x130]
0x10142b354:  f6 57 14 a9   stp	x22, x21, [sp, #0x140]
0x10142b358:  f4 4f 15 a9   stp	x20, x19, [sp, #0x150]
0x10142b35c:  fd 7b 16 a9   stp	fp, lr, [sp, #0x160]
0x10142b360:  fd 83 05 91   add	fp, sp, #0x160
0x10142b364:  f8 03 05 aa   mov	x24, x5
0x10142b368:  f7 03 04 aa   mov	x23, x4
0x10142b36c:  f3 03 03 aa   mov	x19, x3
0x10142b370:  f5 03 00 aa   mov	x21, x0
0x10142b374:  28 7b 00 f0   adrp	x8, 0x102392000
0x10142b378:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10142b37c:  08 01 40 f9   ldr	x8, [x8]
0x10142b380:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x10142b384:  00 08 40 f9   ldr	x0, [x0, #0x10]
0x10142b388:  26 e4 1b 94   bl	j__objc_msgSend(x0, "deviceWithUUID:")
0x10142b38c:  f4 03 00 aa   mov	x20, x0
0x10142b390:  b6 8a 00 f0   adrp	x22, 0x102582000
0x10142b394:  c8 3a 46 f9   ldr	x8, [x22, #0xc70] ; data_102582c70 (__DATA.__data)
0x10142b398:  1f 05 00 b1   cmn	x8, #0x1
0x10142b39c:  f8 0f 00 b9   str	w24, [sp, #0xc]
0x10142b3a0:  41 11 00 54   b.ne	loc_10142b5c8 ; ⤵ 0x228
0x10142b3a4:  b9 43 02 d1   sub	x25, fp, #0x90
0x10142b3a8:  a8 8a 00 f0   adrp	x8, 0x102582000
0x10142b3ac:  18 3d 46 f9   ldr	x24, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10142b3b0:  e0 03 18 aa   mov	x0, x24
0x10142b3b4:  21 00 80 52   mov	w1, #0x1
0x10142b3b8:  ce ab 1b 94   bl	j__os_log_type_enabled
0x10142b3bc:  20 03 00 34   cbz	w0, loc_10142b420 ; ⤵ 0x64
0x10142b3c0:  e0 03 14 aa   mov	x0, x20
0x10142b3c4:  7f cb 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142b3c8:  94 b5 01 94   bl	0x101498a18
0x10142b3cc:  48 46 00 b0   adrp	x8, 0x101cf4000
0x10142b3d0:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x10142b3d4:  a0 03 17 bc   stur	s0, [fp, #-0x90]
0x10142b3d8:  bf 43 17 b8   stur	wzr, [fp, #-0x8c]
0x10142b3dc:  48 04 81 52   mov	w8, #0x822
0x10142b3e0:  a8 83 17 78   sturh	w8, [fp, #-0x88]
0x10142b3e4:  08 54 00 f0   adrp	x8, 0x101eae000
0x10142b3e8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10142b3ec:  28 a3 00 f8   stur	x8, [x25, #0xa]
0x10142b3f0:  28 08 81 52   mov	w8, #0x841
0x10142b3f4:  a8 23 18 78   sturh	w8, [fp, #-0x7e]
0x10142b3f8:  20 43 01 f8   stur	x0, [x25, #0x14]
0x10142b3fc:  a0 5e ff b0   adrp	x0, 0x100000000
0x10142b400:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10142b404:  e3 71 00 90   adrp	x3, 0x102267000
0x10142b408:  63 98 21 91   add	x3, x3, #0x866 ; "{\"msg%{public}.0s\":\"#durian #rose ack for rose stop processed\", \"item\":%{private, location:escape_only}@}"
0x10142b40c:  a4 43 02 d1   sub	x4, fp, #0x90
0x10142b410:  e1 03 18 aa   mov	x1, x24
0x10142b414:  22 00 80 52   mov	w2, #0x1
0x10142b418:  85 03 80 52   mov	w5, #0x1c
0x10142b41c:  75 a7 1b 94   bl	j___os_log_impl
0x10142b420:  ; loc_10142b420
0x10142b420:  00 e4 00 6f   movi	v0.2d, #0
0x10142b424:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x10142b428:  e0 83 00 ad   stp	q0, q0, [sp, #0x10]
0x10142b42c:  b8 26 40 f9   ldr	x24, [x21, #0x48]
0x10142b430:  e2 43 00 91   add	x2, sp, #0x10
0x10142b434:  e3 43 01 91   add	x3, sp, #0x50
0x10142b438:  e0 03 18 aa   mov	x0, x24
0x10142b43c:  04 02 80 52   mov	w4, #0x10
0x10142b440:  b0 d8 1b 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10142b444:  20 08 00 b4   cbz	x0, loc_10142b548 ; ⤵ 0x104
0x10142b448:  f9 03 00 aa   mov	x25, x0
0x10142b44c:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10142b450:  1c 01 40 f9   ldr	x28, [x8]
0x10142b454:  ; loc_10142b454
0x10142b454:  1b 00 80 d2   mov	x27, #0
0x10142b458:  ; loc_10142b458
0x10142b458:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10142b45c:  08 01 40 f9   ldr	x8, [x8]
0x10142b460:  1f 01 1c eb   cmp	x8, x28
0x10142b464:  60 00 00 54   b.eq	loc_10142b470 ; ⤵ 0xc
0x10142b468:  e0 03 18 aa   mov	x0, x24
0x10142b46c:  a5 aa 1b 94   bl	j__objc_enumerationMutation
0x10142b470:  ; loc_10142b470
0x10142b470:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x10142b474:  1a 79 7b f8   ldr	x26, [x8, x27, lsl #0x3]
0x10142b478:  e0 03 1a aa   mov	x0, x26
0x10142b47c:  01 d0 1b 94   bl	j__objc_msgSend(x0, "client")
0x10142b480:  1f 00 13 eb   cmp	x0, x19
0x10142b484:  80 01 00 54   b.eq	loc_10142b4b4 ; ⤵ 0x30
0x10142b488:  7b 07 00 91   add	x27, x27, #0x1
0x10142b48c:  3f 03 1b eb   cmp	x25, x27
0x10142b490:  41 fe ff 54   b.ne	loc_10142b458 ; ⤴ -0x38
0x10142b494:  e2 43 00 91   add	x2, sp, #0x10
0x10142b498:  e3 43 01 91   add	x3, sp, #0x50
0x10142b49c:  e0 03 18 aa   mov	x0, x24
0x10142b4a0:  04 02 80 52   mov	w4, #0x10
0x10142b4a4:  97 d8 1b 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10142b4a8:  f9 03 00 aa   mov	x25, x0
0x10142b4ac:  40 fd ff b5   cbnz	x0, loc_10142b454 ; ⤴ -0x58
0x10142b4b0:  26 00 00 14   b	loc_10142b548 ; ⤵ 0x98
0x10142b4b4:  ; loc_10142b4b4
0x10142b4b4:  a0 26 40 f9   ldr	x0, [x21, #0x48]
0x10142b4b8:  e2 03 1a aa   mov	x2, x26
0x10142b4bc:  19 63 1c 94   bl	j__objc_msgSend(x0, "removeObject:")
0x10142b4c0:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x10142b4c4:  1f 05 00 b1   cmn	x8, #0x1
0x10142b4c8:  41 08 00 54   b.ne	loc_10142b5d0 ; ⤵ 0x108

