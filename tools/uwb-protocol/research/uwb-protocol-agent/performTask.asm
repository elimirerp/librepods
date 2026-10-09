
-[CLDurianService performTask:forClient:onDevice:]:
0x101426ef4:  7f 23 03 d5   pacibsp
0x101426ef8:  ff c3 02 d1   sub	sp, sp, #0xb0
0x101426efc:  fc 6f 05 a9   stp	x28, x27, [sp, #0x50]
0x101426f00:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x101426f04:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x101426f08:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x101426f0c:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x101426f10:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x101426f14:  fd 83 02 91   add	fp, sp, #0xa0
0x101426f18:  f4 03 04 aa   mov	x20, x4
0x101426f1c:  f6 03 03 aa   mov	x22, x3
0x101426f20:  f3 03 02 aa   mov	x19, x2
0x101426f24:  f5 03 00 aa   mov	x21, x0
0x101426f28:  68 7b 00 90   adrp	x8, 0x102392000
0x101426f2c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101426f30:  08 01 40 f9   ldr	x8, [x8]
0x101426f34:  e8 27 00 f9   str	x8, [sp, #0x48]
0x101426f38:  fb 8a 00 90   adrp	x27, 0x102582000
0x101426f3c:  68 3b 46 f9   ldr	x8, [x27, #0xc70] ; data_102582c70 (__DATA.__data)
0x101426f40:  1f 05 00 b1   cmn	x8, #0x1
0x101426f44:  e1 29 00 54   b.ne	loc_101427480 ; ⤵ 0x53c
0x101426f48:  fa 8a 00 90   adrp	x26, 0x102582000
0x101426f4c:  57 3f 46 f9   ldr	x23, [x26, #0xc78] ; data_102582c78 (__DATA.__data)
0x101426f50:  e0 03 17 aa   mov	x0, x23
0x101426f54:  01 00 80 52   mov	w1, #0
0x101426f58:  e6 bc 1b 94   bl	j__os_log_type_enabled
0x101426f5c:  00 05 00 34   cbz	w0, loc_101426ffc ; ⤵ 0xa0
0x101426f60:  e0 03 14 aa   mov	x0, x20
0x101426f64:  97 dc 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101426f68:  ac c6 01 94   bl	0x101498a18
0x101426f6c:  f8 03 00 aa   mov	x24, x0
0x101426f70:  e0 03 13 aa   mov	x0, x19
0x101426f74:  73 e3 1b 94   bl	j__objc_msgSend(x0, "command")
0x101426f78:  da 5e 1c 94   bl	j__objc_msgSend(x0, "opcode")
0x101426f7c:  f9 03 00 aa   mov	x25, x0
0x101426f80:  e0 03 13 aa   mov	x0, x19
0x101426f84:  0f d2 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101426f88:  e2 03 00 aa   mov	x2, x0
0x101426f8c:  e0 03 14 aa   mov	x0, x20
0x101426f90:  ec 1a 1c 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101426f94:  68 46 00 d0   adrp	x8, 0x101cf4000
0x101426f98:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101426f9c:  e0 13 00 bd   str	s0, [sp, #0x10]
0x101426fa0:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x101426fa4:  48 04 81 52   mov	w8, #0x822
0x101426fa8:  e8 33 00 79   strh	w8, [sp, #0x18]
0x101426fac:  48 54 00 90   adrp	x8, 0x101eae000
0x101426fb0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101426fb4:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x101426fb8:  28 08 81 52   mov	w8, #0x841
0x101426fbc:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101426fc0:  f8 43 02 f8   stur	x24, [sp, #0x24]
0x101426fc4:  49 80 80 52   mov	w9, #0x402
0x101426fc8:  e9 5b 00 79   strh	w9, [sp, #0x2c]
0x101426fcc:  f9 e3 02 b8   stur	w25, [sp, #0x2e]
0x101426fd0:  e8 67 00 79   strh	w8, [sp, #0x32]
0x101426fd4:  e0 43 03 f8   stur	x0, [sp, #0x34]
0x101426fd8:  c0 5e ff d0   adrp	x0, 0x100000000
0x101426fdc:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101426fe0:  03 72 00 90   adrp	x3, 0x102266000
0x101426fe4:  63 0c 3b 91   add	x3, x3, #0xec3 ; "{\"msg%{public}.0s\":\"#durian performing task\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d, \"task\":%{private, location:escape_only}@}"
0x101426fe8:  e4 43 00 91   add	x4, sp, #0x10
0x101426fec:  e1 03 17 aa   mov	x1, x23
0x101426ff0:  02 00 80 52   mov	w2, #0
0x101426ff4:  85 05 80 52   mov	w5, #0x2c
0x101426ff8:  7e b8 1b 94   bl	j___os_log_impl
0x101426ffc:  ; loc_101426ffc
0x101426ffc:  76 01 00 b4   cbz	x22, loc_101427028 ; ⤵ 0x2c
0x101427000:  a0 1a 40 f9   ldr	x0, [x21, #0x30]
0x101427004:  e2 03 16 aa   mov	x2, x22
0x101427008:  4e ce 1b 94   bl	j__objc_msgSend(x0, "addObject:")
0x10142700c:  b7 16 40 f9   ldr	x23, [x21, #0x28]
0x101427010:  e0 03 13 aa   mov	x0, x19
0x101427014:  6b dc 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101427018:  e3 03 00 aa   mov	x3, x0
0x10142701c:  e0 03 17 aa   mov	x0, x23
0x101427020:  e2 03 16 aa   mov	x2, x22
0x101427024:  47 a2 1c 94   bl	j__objc_msgSend(x0, "setObject:forKey:")
0x101427028:  ; loc_101427028
0x101427028:  b6 46 40 f9   ldr	x22, [x21, #0x88]
0x10142702c:  e0 03 13 aa   mov	x0, x19
0x101427030:  64 dc 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101427034:  e3 03 00 aa   mov	x3, x0
0x101427038:  e0 03 16 aa   mov	x0, x22
0x10142703c:  e2 03 13 aa   mov	x2, x19
0x101427040:  40 a2 1c 94   bl	j__objc_msgSend(x0, "setObject:forKey:")
0x101427044:  e0 03 14 aa   mov	x0, x20
0x101427048:  fe 3e 1c 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x10142704c:  40 01 00 34   cbz	w0, loc_101427074 ; ⤵ 0x28
0x101427050:  e0 03 15 aa   mov	x0, x21
0x101427054:  e2 03 14 aa   mov	x2, x20
0x101427058:  d2 f4 1b 94   bl	j__objc_msgSend(x0, "deviceUndergoingFirmwareUpdate:")
0x10142705c:  c0 00 00 34   cbz	w0, loc_101427074 ; ⤵ 0x18
0x101427060:  e0 03 13 aa   mov	x0, x19
0x101427064:  37 e3 1b 94   bl	j__objc_msgSend(x0, "command")
0x101427068:  9e 5e 1c 94   bl	j__objc_msgSend(x0, "opcode")
0x10142706c:  1f 6c 03 71   cmp	w0, #0xdb
0x101427070:  21 19 00 54   b.ne	loc_101427394 ; ⤵ 0x324
0x101427074:  ; loc_101427074
0x101427074:  a0 0a 40 f9   ldr	x0, [x21, #0x10]
0x101427078:  3a 6d 1c 94   bl	j__objc_msgSend(x0, "ready")
0x10142707c:  40 03 00 36   tbz	w0, #0, loc_1014270e4 ; ⤵ 0x68
0x101427080:  48 7b 00 d0   adrp	x8, 0x102391000
0x101427084:  16 c1 45 f9   ldr	x22, [x8, #0xb80] ; __got._OBJC_CLASS_$_NSString
0x101427088:  e0 03 13 aa   mov	x0, x19
0x10142708c:  cd d1 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101427090:  e2 03 00 aa   mov	x2, x0
0x101427094:  e0 03 14 aa   mov	x0, x20
0x101427098:  aa 1a 1c 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x10142709c:  e0 03 00 f9   str	x0, [sp]
0x1014270a0:  22 83 00 f0   adrp	x2, 0x10248e000
0x1014270a4:  42 40 35 91   add	x2, x2, #0xd50 ; "Task:%@"
0x1014270a8:  e0 03 16 aa   mov	x0, x22
0x1014270ac:  15 c4 1c 94   bl	j__objc_msgSend(x0, "stringWithFormat:")
0x1014270b0:  e2 03 00 aa   mov	x2, x0
0x1014270b4:  e0 03 14 aa   mov	x0, x20
0x1014270b8:  fa 8a 1c 94   bl	j__objc_msgSend(x0, "setConnectionReason:")
0x1014270bc:  e0 03 15 aa   mov	x0, x21
0x1014270c0:  e2 03 13 aa   mov	x2, x19
0x1014270c4:  57 3c 1c 94   bl	j__objc_msgSend(x0, "isBackgroundTask:")
0x1014270c8:  e8 03 00 aa   mov	x8, x0
0x1014270cc:  a0 0a 40 f9   ldr	x0, [x21, #0x10]
0x1014270d0:  e2 03 14 aa   mov	x2, x20
0x1014270d4:  48 06 00 34   cbz	w8, loc_10142719c ; ⤵ 0xc8
0x1014270d8:  a3 00 80 52   mov	w3, #0x5
0x1014270dc:  41 d4 1b 94   bl	j__objc_msgSend(x0, "attemptConnectToDevice:onCondition:")
0x1014270e0:  30 00 00 14   b	loc_1014271a0 ; ⤵ 0xc0
0x1014270e4:  ; loc_1014270e4
0x1014270e4:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x1014270e8:  1f 05 00 b1   cmn	x8, #0x1
0x1014270ec:  e1 1c 00 54   b.ne	loc_101427488 ; ⤵ 0x39c
0x1014270f0:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x1014270f4:  e0 03 16 aa   mov	x0, x22
0x1014270f8:  01 00 80 52   mov	w1, #0
0x1014270fc:  7d bc 1b 94   bl	j__os_log_type_enabled
0x101427100:  20 04 00 34   cbz	w0, loc_101427184 ; ⤵ 0x84
0x101427104:  e0 03 14 aa   mov	x0, x20
0x101427108:  2e dc 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142710c:  43 c6 01 94   bl	0x101498a18
0x101427110:  f7 03 00 aa   mov	x23, x0
0x101427114:  e0 03 13 aa   mov	x0, x19
0x101427118:  aa d1 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x10142711c:  e2 03 00 aa   mov	x2, x0
0x101427120:  e0 03 14 aa   mov	x0, x20
0x101427124:  87 1a 1c 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101427128:  68 46 00 b0   adrp	x8, 0x101cf4000
0x10142712c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101427130:  e0 13 00 bd   str	s0, [sp, #0x10]
0x101427134:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x101427138:  48 04 81 52   mov	w8, #0x822
0x10142713c:  e8 33 00 79   strh	w8, [sp, #0x18]
0x101427140:  28 54 00 f0   adrp	x8, 0x101eae000
0x101427144:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101427148:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x10142714c:  28 08 81 52   mov	w8, #0x841
0x101427150:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101427154:  f7 43 02 f8   stur	x23, [sp, #0x24]
0x101427158:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x10142715c:  e0 e3 02 f8   stur	x0, [sp, #0x2e]
0x101427160:  c0 5e ff b0   adrp	x0, 0x100000000
0x101427164:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101427168:  e3 71 00 f0   adrp	x3, 0x102266000
0x10142716c:  63 cc 3f 91   add	x3, x3, #0xff3 ; "{\"msg%{public}.0s\":\"#durian ignoring task, device manager not ready\", \"item\":%{private, location:escape_only}@, \"task\":%{private, location:escape_only}@}"
0x101427170:  e4 43 00 91   add	x4, sp, #0x10
0x101427174:  e1 03 16 aa   mov	x1, x22
0x101427178:  02 00 80 52   mov	w2, #0
0x10142717c:  c5 04 80 52   mov	w5, #0x26
0x101427180:  1c b8 1b 94   bl	j___os_log_impl
0x101427184:  ; loc_101427184
0x101427184:  e0 03 15 aa   mov	x0, x21
0x101427188:  e2 03 14 aa   mov	x2, x20
0x10142718c:  e3 03 13 aa   mov	x3, x19
0x101427190:  64 05 80 52   mov	w4, #0x2b
0x101427194:  25 00 80 52   mov	w5, #0x1
0x101427198:  a4 00 00 14   b	loc_101427428 ; ⤵ 0x290
0x10142719c:  ; loc_10142719c
0x10142719c:  19 d4 1b 94   bl	j__objc_msgSend(x0, "attemptConnectionToDevice:")
0x1014271a0:  ; loc_1014271a0
0x1014271a0:  e0 03 14 aa   mov	x0, x20
0x1014271a4:  e2 03 15 aa   mov	x2, x21
0x1014271a8:  de 8c 1c 94   bl	j__objc_msgSend(x0, "setDelegate:")
0x1014271ac:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x1014271b0:  1f 05 00 b1   cmn	x8, #0x1
0x1014271b4:  e1 16 00 54   b.ne	loc_101427490 ; ⤵ 0x2dc
0x1014271b8:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x1014271bc:  e0 03 16 aa   mov	x0, x22
0x1014271c0:  01 00 80 52   mov	w1, #0
0x1014271c4:  4b bc 1b 94   bl	j__os_log_type_enabled
0x1014271c8:  e0 03 00 34   cbz	w0, loc_101427244 ; ⤵ 0x7c
0x1014271cc:  e0 03 14 aa   mov	x0, x20
0x1014271d0:  fc db 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x1014271d4:  11 c6 01 94   bl	0x101498a18
0x1014271d8:  f7 03 00 aa   mov	x23, x0
0x1014271dc:  e0 03 13 aa   mov	x0, x19
0x1014271e0:  00 77 1c 94   bl	j__objc_msgSend(x0, "requiresMutex")
0x1014271e4:  68 46 00 b0   adrp	x8, 0x101cf4000
0x1014271e8:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x1014271ec:  e0 13 00 bd   str	s0, [sp, #0x10]
0x1014271f0:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x1014271f4:  48 04 81 52   mov	w8, #0x822
0x1014271f8:  e8 33 00 79   strh	w8, [sp, #0x18]
0x1014271fc:  28 54 00 f0   adrp	x8, 0x101eae000
0x101427200:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101427204:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x101427208:  28 08 81 52   mov	w8, #0x841
0x10142720c:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101427210:  f7 43 02 f8   stur	x23, [sp, #0x24]
0x101427214:  48 80 80 52   mov	w8, #0x402
0x101427218:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x10142721c:  e0 e3 02 b8   stur	w0, [sp, #0x2e]
0x101427220:  c0 5e ff b0   adrp	x0, 0x100000000
0x101427224:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101427228:  03 72 00 90   adrp	x3, 0x102267000
0x10142722c:  63 34 02 91   add	x3, x3, #0x8d ; "{\"msg%{public}.0s\":\"#durian #mutex check\", \"item\":%{private, location:escape_only}@, \"required\":%{public}d}"
0x101427230:  e4 43 00 91   add	x4, sp, #0x10
0x101427234:  e1 03 16 aa   mov	x1, x22
0x101427238:  02 00 80 52   mov	w2, #0
0x10142723c:  45 04 80 52   mov	w5, #0x22
0x101427240:  ec b7 1b 94   bl	j___os_log_impl
0x101427244:  ; loc_101427244
0x101427244:  e0 03 13 aa   mov	x0, x19
0x101427248:  e6 76 1c 94   bl	j__objc_msgSend(x0, "requiresMutex")
0x10142724c:  20 01 00 34   cbz	w0, loc_101427270 ; ⤵ 0x24
0x101427250:  e0 03 14 aa   mov	x0, x20
0x101427254:  9b 52 1c 94   bl	j__objc_msgSend(x0, "mutexState")
0x101427258:  1f 10 00 f1   cmp	x0, #0x4
0x10142725c:  a1 0e 00 54   b.ne	loc_101427430 ; ⤵ 0x1d4
0x101427260:  e0 03 14 aa   mov	x0, x20
0x101427264:  e2 03 13 aa   mov	x2, x19
0x101427268:  de 1d 1c 94   bl	j__objc_msgSend(x0, "handleMutexAlreadyHeldOnTask:")
0x10142726c:  77 00 00 14   b	loc_101427448 ; ⤵ 0x1dc
0x101427270:  ; loc_101427270
0x101427270:  e0 03 14 aa   mov	x0, x20
0x101427274:  2b 43 1c 94   bl	j__objc_msgSend(x0, "isTAAISDevice")
0x101427278:  20 0e 00 34   cbz	w0, loc_10142743c ; ⤵ 0x1c4
0x10142727c:  e0 03 14 aa   mov	x0, x20
0x101427280:  40 d3 1c 94   bl	j__objc_msgSend(x0, "unownedBeacon")
0x101427284:  c0 0d 00 b4   cbz	x0, loc_10142743c ; ⤵ 0x1b8
0x101427288:  c8 87 00 90   adrp	x8, 0x10251f000
0x10142728c:  00 41 11 91   add	x0, x8, #0x450 ; CLDurianSettings
0x101427290:  5c 11 1c 94   bl	j__objc_msgSend(x0, "forceEnablePosh")
0x101427294:  f6 03 00 aa   mov	x22, x0
0x101427298:  60 82 00 d0   adrp	x0, 0x102475000
0x10142729c:  00 c0 3b 91   add	x0, x0, #0xef0 ; "isPosh"
0x1014272a0:  98 ad 1b 94   bl	j__NSSelectorFromString
0x1014272a4:  f7 03 00 aa   mov	x23, x0
0x1014272a8:  e0 03 14 aa   mov	x0, x20
0x1014272ac:  35 d3 1c 94   bl	j__objc_msgSend(x0, "unownedBeacon")
0x1014272b0:  e1 03 17 aa   mov	x1, x23
0x1014272b4:  3f bb 1b 94   bl	j__objc_opt_respondsToSelector
0x1014272b8:  e0 00 00 36   tbz	w0, #0, loc_1014272d4 ; ⤵ 0x1c
0x1014272bc:  e0 03 14 aa   mov	x0, x20
0x1014272c0:  30 d3 1c 94   bl	j__objc_msgSend(x0, "unownedBeacon")
0x1014272c4:  e2 03 17 aa   mov	x2, x23
0x1014272c8:  66 61 1c 94   bl	j__objc_msgSend(x0, "performSelector:")
0x1014272cc:  1f 00 00 f1   cmp	x0, #0
0x1014272d0:  f6 07 9f 1a   cset	w22, ne
0x1014272d4:  ; loc_1014272d4
0x1014272d4:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x1014272d8:  1f 05 00 b1   cmn	x8, #0x1
0x1014272dc:  21 0e 00 54   b.ne	loc_1014274a0 ; ⤵ 0x1c4
0x1014272e0:  57 3f 46 f9   ldr	x23, [x26, #0xc78]
0x1014272e4:  e0 03 17 aa   mov	x0, x23
0x1014272e8:  01 00 80 52   mov	w1, #0
0x1014272ec:  01 bc 1b 94   bl	j__os_log_type_enabled
0x1014272f0:  20 04 00 34   cbz	w0, loc_101427374 ; ⤵ 0x84
0x1014272f4:  e0 03 14 aa   mov	x0, x20
0x1014272f8:  b2 db 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x1014272fc:  c7 c5 01 94   bl	0x101498a18
0x101427300:  f8 03 00 aa   mov	x24, x0
0x101427304:  e0 03 14 aa   mov	x0, x20
0x101427308:  ae db 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142730c:  68 46 00 b0   adrp	x8, 0x101cf4000
0x101427310:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101427314:  e0 13 00 bd   str	s0, [sp, #0x10]
0x101427318:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10142731c:  48 04 81 52   mov	w8, #0x822
0x101427320:  e8 33 00 79   strh	w8, [sp, #0x18]
0x101427324:  28 54 00 f0   adrp	x8, 0x101eae000
0x101427328:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10142732c:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x101427330:  28 08 81 52   mov	w8, #0x841
0x101427334:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101427338:  f8 43 02 f8   stur	x24, [sp, #0x24]
0x10142733c:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x101427340:  e0 e3 02 f8   stur	x0, [sp, #0x2e]
0x101427344:  28 80 80 52   mov	w8, #0x401
0x101427348:  e8 6f 00 79   strh	w8, [sp, #0x36]
0x10142734c:  f6 3b 00 b9   str	w22, [sp, #0x38]
0x101427350:  c0 5e ff b0   adrp	x0, 0x100000000
0x101427354:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101427358:  03 72 00 90   adrp	x3, 0x102267000
0x10142735c:  63 e4 03 91   add	x3, x3, #0xf9 ; "{\"msg%{public}.0s\":\"#durian two durian devices associated with the same peripheral  for\", \"item\":%{private, location:escape_only}@, \"full\":%{private, location:escape_only}@, \"posh\":%{private}hhd}"
0x101427360:  e4 43 00 91   add	x4, sp, #0x10
0x101427364:  e1 03 17 aa   mov	x1, x23
0x101427368:  02 00 80 52   mov	w2, #0
0x10142736c:  85 05 80 52   mov	w5, #0x2c
0x101427370:  a0 b7 1b 94   bl	j___os_log_impl
0x101427374:  ; loc_101427374
0x101427374:  b5 0a 40 f9   ldr	x21, [x21, #0x10]
0x101427378:  e0 03 14 aa   mov	x0, x20
0x10142737c:  01 d3 1c 94   bl	j__objc_msgSend(x0, "unownedBeacon")
0x101427380:  e2 03 00 aa   mov	x2, x0
0x101427384:  e0 03 15 aa   mov	x0, x21
0x101427388:  e3 03 16 aa   mov	x3, x22
0x10142738c:  4d 0c 1c 94   bl	j__objc_msgSend(x0, "fetchOrCreateDeviceWithSPUnknownBeacon:isPosh:")
0x101427390:  2c 00 00 14   b	loc_101427440 ; ⤵ 0xb0
0x101427394:  ; loc_101427394
0x101427394:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101427398:  1f 05 00 b1   cmn	x8, #0x1
0x10142739c:  e1 07 00 54   b.ne	loc_101427498 ; ⤵ 0xfc
0x1014273a0:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x1014273a4:  e0 03 16 aa   mov	x0, x22
0x1014273a8:  01 00 80 52   mov	w1, #0
0x1014273ac:  d1 bb 1b 94   bl	j__os_log_type_enabled
0x1014273b0:  20 03 00 34   cbz	w0, loc_101427414 ; ⤵ 0x64
0x1014273b4:  e0 03 14 aa   mov	x0, x20
0x1014273b8:  82 db 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x1014273bc:  97 c5 01 94   bl	0x101498a18
0x1014273c0:  68 46 00 b0   adrp	x8, 0x101cf4000
0x1014273c4:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x1014273c8:  e0 13 00 bd   str	s0, [sp, #0x10]
0x1014273cc:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x1014273d0:  48 04 81 52   mov	w8, #0x822
0x1014273d4:  e8 33 00 79   strh	w8, [sp, #0x18]
0x1014273d8:  28 54 00 f0   adrp	x8, 0x101eae000
0x1014273dc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014273e0:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x1014273e4:  28 08 81 52   mov	w8, #0x841
0x1014273e8:  e8 47 00 79   strh	w8, [sp, #0x22]
0x1014273ec:  e0 43 02 f8   stur	x0, [sp, #0x24]
0x1014273f0:  c0 5e ff b0   adrp	x0, 0x100000000
0x1014273f4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014273f8:  e3 71 00 f0   adrp	x3, 0x102266000
0x1014273fc:  63 68 3d 91   add	x3, x3, #0xf5a ; "{\"msg%{public}.0s\":\"#hawkeye #firmwareUpdate device undergoing firmware update - blocking other interactions\", \"item\":%{private, location:escape_only}@}"
0x101427400:  e4 43 00 91   add	x4, sp, #0x10
0x101427404:  e1 03 16 aa   mov	x1, x22
0x101427408:  02 00 80 52   mov	w2, #0
0x10142740c:  85 03 80 52   mov	w5, #0x1c
0x101427410:  78 b7 1b 94   bl	j___os_log_impl
0x101427414:  ; loc_101427414
0x101427414:  e0 03 15 aa   mov	x0, x21
0x101427418:  e2 03 14 aa   mov	x2, x20
0x10142741c:  e3 03 13 aa   mov	x3, x19
0x101427420:  24 01 80 52   mov	w4, #0x9
0x101427424:  05 00 80 52   mov	w5, #0
0x101427428:  ; loc_101427428
0x101427428:  1e f3 1b 94   bl	j__objc_msgSend(x0, "device:didFailToCompleteTask:withError:andDisconnect:")
0x10142742c:  07 00 00 14   b	loc_101427448 ; ⤵ 0x1c
0x101427430:  ; loc_101427430
0x101427430:  e0 03 14 aa   mov	x0, x20
0x101427434:  e2 03 13 aa   mov	x2, x19
0x101427438:  fa c9 1b 94   bl	j__objc_msgSend(x0, "acquireMutexForTask:")
0x10142743c:  ; loc_10142743c
0x10142743c:  e0 03 14 aa   mov	x0, x20
0x101427440:  ; loc_101427440
0x101427440:  e2 03 13 aa   mov	x2, x19
0x101427444:  cf 00 1c 94   bl	j__objc_msgSend(x0, "enqueueTask:")
0x101427448:  ; loc_101427448
0x101427448:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x10142744c:  49 7b 00 f0   adrp	x9, 0x102392000
0x101427450:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101427454:  29 01 40 f9   ldr	x9, [x9]
0x101427458:  3f 01 08 eb   cmp	x9, x8
0x10142745c:  61 02 00 54   b.ne	loc_1014274a8 ; ⤵ 0x4c
0x101427460:  fd 7b 4a a9   ldp	fp, lr, [sp, #0xa0]
0x101427464:  f4 4f 49 a9   ldp	x20, x19, [sp, #0x90]
0x101427468:  f6 57 48 a9   ldp	x22, x21, [sp, #0x80]

