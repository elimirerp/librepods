
-[CLDurianDevice isActiveTaskOpcode:]:
0x101452134:  7f 23 03 d5   pacibsp
0x101452138:  ff 83 01 d1   sub	sp, sp, #0x60
0x10145213c:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x101452140:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x101452144:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x101452148:  fd 43 01 91   add	fp, sp, #0x50
0x10145214c:  f3 03 02 aa   mov	x19, x2
0x101452150:  f5 03 00 aa   mov	x21, x0
0x101452154:  08 7a 00 90   adrp	x8, 0x102392000
0x101452158:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10145215c:  08 01 40 f9   ldr	x8, [x8]
0x101452160:  e8 17 00 f9   str	x8, [sp, #0x28]
0x101452164:  b7 92 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101452168:  f6 03 00 aa   mov	x22, x0
0x10145216c:  e0 03 15 aa   mov	x0, x21
0x101452170:  a4 1f 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101452174:  f4 03 00 aa   mov	x20, x0
0x101452178:  f6 06 00 34   cbz	w22, loc_101452254 ; ⤵ 0xdc
0x10145217c:  68 86 00 b0   adrp	x8, 0x10251f000
0x101452180:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x101452184:  7f 0f 1b 94   bl	j__objc_opt_class
0x101452188:  e1 03 00 aa   mov	x1, x0
0x10145218c:  e0 03 14 aa   mov	x0, x20
0x101452190:  80 0f 1b 94   bl	j__objc_opt_isKindOfClass
0x101452194:  c0 06 00 36   tbz	w0, #0, loc_10145226c ; ⤵ 0xd8
0x101452198:  e0 03 15 aa   mov	x0, x21
0x10145219c:  99 1f 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014521a0:  f4 03 00 aa   mov	x20, x0
0x1014521a4:  88 89 00 90   adrp	x8, 0x102582000
0x1014521a8:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014521ac:  1f 05 00 b1   cmn	x8, #0x1
0x1014521b0:  61 07 00 54   b.ne	loc_10145229c ; ⤵ 0xec
0x1014521b4:  ; loc_1014521b4
0x1014521b4:  88 89 00 90   adrp	x8, 0x102582000
0x1014521b8:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014521bc:  e0 03 16 aa   mov	x0, x22
0x1014521c0:  01 00 80 52   mov	w1, #0
0x1014521c4:  4b 10 1b 94   bl	j__os_log_type_enabled
0x1014521c8:  00 04 00 34   cbz	w0, loc_101452248 ; ⤵ 0x80
0x1014521cc:  a0 b2 40 f9   ldr	x0, [x21, #0x160]
0x1014521d0:  12 1a 01 94   bl	0x101498a18
0x1014521d4:  f5 03 00 aa   mov	x21, x0
0x1014521d8:  e0 03 14 aa   mov	x0, x20
0x1014521dc:  b9 77 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x1014521e0:  08 45 00 d0   adrp	x8, 0x101cf4000
0x1014521e4:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x1014521e8:  e0 03 00 bd   str	s0, [sp]
0x1014521ec:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014521f0:  48 04 81 52   mov	w8, #0x822
0x1014521f4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014521f8:  e8 52 00 90   adrp	x8, 0x101eae000
0x1014521fc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101452200:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101452204:  28 08 81 52   mov	w8, #0x841
0x101452208:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145220c:  f5 43 01 f8   stur	x21, [sp, #0x14]
0x101452210:  48 80 80 52   mov	w8, #0x402
0x101452214:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101452218:  e0 e3 01 b8   stur	w0, [sp, #0x1e]
0x10145221c:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101452220:  f3 27 00 b9   str	w19, [sp, #0x24]
0x101452224:  60 5d ff d0   adrp	x0, 0x100000000
0x101452228:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145222c:  e3 70 00 f0   adrp	x3, 0x102271000
0x101452230:  63 3c 39 91   add	x3, x3, #0xe4f ; "{\"msg%{public}.0s\":\"#durian #hawkeye isActiveTaskOpcode\", \"item\":%{private, location:escape_only}@, \"active\":%{public}d, \"param\":%{public}d}"
0x101452234:  e4 03 00 91   mov	x4, sp
0x101452238:  e1 03 16 aa   mov	x1, x22
0x10145223c:  02 00 80 52   mov	w2, #0
0x101452240:  05 05 80 52   mov	w5, #0x28
0x101452244:  eb 0b 1b 94   bl	j___os_log_impl
0x101452248:  ; loc_101452248
0x101452248:  e0 03 14 aa   mov	x0, x20
0x10145224c:  9d 77 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x101452250:  04 00 00 14   b	loc_101452260 ; ⤵ 0x10
0x101452254:  ; loc_101452254
0x101452254:  e0 03 14 aa   mov	x0, x20
0x101452258:  ba 36 1b 94   bl	j__objc_msgSend(x0, "command")
0x10145225c:  21 b2 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x101452260:  ; loc_101452260
0x101452260:  7f 02 00 6b   cmp	w19, w0
0x101452264:  e0 17 9f 1a   cset	w0, eq
0x101452268:  02 00 00 14   b	loc_101452270 ; ⤵ 0x8
0x10145226c:  ; loc_10145226c
0x10145226c:  00 00 80 52   mov	w0, #0
0x101452270:  ; loc_101452270
0x101452270:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101452274:  09 7a 00 90   adrp	x9, 0x102392000
0x101452278:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10145227c:  29 01 40 f9   ldr	x9, [x9]
0x101452280:  3f 01 08 eb   cmp	x9, x8
0x101452284:  01 01 00 54   b.ne	loc_1014522a4 ; ⤵ 0x20
0x101452288:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x10145228c:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x101452290:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x101452294:  ff 83 01 91   add	sp, sp, #0x60
0x101452298:  ff 0f 5f d6   retab
0x10145229c:  ; loc_10145229c
0x10145229c:  59 f7 1a 94   bl	0x101b10000
0x1014522a0:  c5 ff ff 17   b	loc_1014521b4 ; ⤴ -0xec
0x1014522a4:  ; loc_1014522a4
0x1014522a4:  a7 0b 1b 94   bl	j____stack_chk_fail

-[CLDurianDevice isAckTask:]:
0x1014522a8:  7f 23 03 d5   pacibsp
0x1014522ac:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x1014522b0:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x1014522b4:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x1014522b8:  fd 83 00 91   add	fp, sp, #0x20
0x1014522bc:  f3 03 02 aa   mov	x19, x2
0x1014522c0:  f4 03 00 aa   mov	x20, x0
0x1014522c4:  57 8f 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x1014522c8:  a0 01 00 34   cbz	w0, loc_1014522fc ; ⤵ 0x34
0x1014522cc:  e0 03 14 aa   mov	x0, x20
0x1014522d0:  4c 1f 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014522d4:  f5 03 00 aa   mov	x21, x0
0x1014522d8:  68 86 00 b0   adrp	x8, 0x10251f000
0x1014522dc:  00 61 2d 91   add	x0, x8, #0xb58 ; CLDurianGATTWriteTask
0x1014522e0:  28 0f 1b 94   bl	j__objc_opt_class
0x1014522e4:  e1 03 00 aa   mov	x1, x0
0x1014522e8:  e0 03 15 aa   mov	x0, x21
0x1014522ec:  29 0f 1b 94   bl	j__objc_opt_isKindOfClass
0x1014522f0:  60 00 00 36   tbz	w0, #0, loc_1014522fc ; ⤵ 0xc
0x1014522f4:  7f 02 20 71   cmp	w19, #0x800
0x1014522f8:  1c 00 00 14   b	loc_101452368 ; ⤵ 0x70
0x1014522fc:  ; loc_1014522fc
0x1014522fc:  e0 03 14 aa   mov	x0, x20
0x101452300:  50 92 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101452304:  20 01 00 34   cbz	w0, loc_101452328 ; ⤵ 0x24
0x101452308:  20 00 80 52   mov	w0, #0x1
0x10145230c:  7f 0a 14 71   cmp	w19, #0x502
0x101452310:  6c 03 00 54   b.gt	loc_10145237c ; ⤵ 0x6c
0x101452314:  7f 2e 08 71   cmp	w19, #0x20b
0x101452318:  a0 02 00 54   b.eq	loc_10145236c ; ⤵ 0x54
0x10145231c:  7f 0a 0c 71   cmp	w19, #0x302
0x101452320:  60 02 00 54   b.eq	loc_10145236c ; ⤵ 0x4c
0x101452324:  1a 00 00 14   b	loc_10145238c ; ⤵ 0x68
0x101452328:  ; loc_101452328
0x101452328:  e0 03 14 aa   mov	x0, x20
0x10145232c:  dd 94 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x101452330:  a0 01 00 34   cbz	w0, loc_101452364 ; ⤵ 0x34
0x101452334:  e0 03 14 aa   mov	x0, x20
0x101452338:  32 1f 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x10145233c:  f4 03 00 aa   mov	x20, x0
0x101452340:  68 86 00 b0   adrp	x8, 0x10251f000
0x101452344:  00 61 2d 91   add	x0, x8, #0xb58 ; CLDurianGATTWriteTask
0x101452348:  0e 0f 1b 94   bl	j__objc_opt_class
0x10145234c:  e1 03 00 aa   mov	x1, x0
0x101452350:  e0 03 14 aa   mov	x0, x20
0x101452354:  0f 0f 1b 94   bl	j__objc_opt_isKindOfClass
0x101452358:  60 00 00 36   tbz	w0, #0, loc_101452364 ; ⤵ 0xc
0x10145235c:  7f 0a 0c 71   cmp	w19, #0x302
0x101452360:  02 00 00 14   b	loc_101452368 ; ⤵ 0x8
0x101452364:  ; loc_101452364
0x101452364:  7f 02 00 71   cmp	w19, #0
0x101452368:  ; loc_101452368
0x101452368:  e0 17 9f 1a   cset	w0, eq
0x10145236c:  ; loc_10145236c
0x10145236c:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x101452370:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x101452374:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x101452378:  ff 0f 5f d6   retab
0x10145237c:  ; loc_10145237c
0x10145237c:  7f 0e 14 71   cmp	w19, #0x503
0x101452380:  60 ff ff 54   b.eq	loc_10145236c ; ⤴ -0x14
0x101452384:  7f 02 1c 71   cmp	w19, #0x700
0x101452388:  20 ff ff 54   b.eq	loc_10145236c ; ⤴ -0x1c
0x10145238c:  ; loc_10145238c
0x10145238c:  00 00 80 52   mov	w0, #0
0x101452390:  f7 ff ff 17   b	loc_10145236c ; ⤴ -0x24

-[CLDurianDevice isNackTask:]:
0x101452394:  7f 23 03 d5   pacibsp
0x101452398:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x10145239c:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x1014523a0:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x1014523a4:  fd 83 00 91   add	fp, sp, #0x20
0x1014523a8:  f3 03 02 aa   mov	x19, x2
0x1014523ac:  f4 03 00 aa   mov	x20, x0
0x1014523b0:  24 92 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x1014523b4:  f5 5f 80 52   mov	w21, #0x2ff
0x1014523b8:  c0 00 00 37   tbnz	w0, #0, loc_1014523d0 ; ⤵ 0x18
0x1014523bc:  e0 03 14 aa   mov	x0, x20
0x1014523c0:  b8 94 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x1014523c4:  1f 00 00 71   cmp	w0, #0
0x1014523c8:  e8 1f 80 52   mov	w8, #0xff
0x1014523cc:  b5 12 88 1a   csel	w21, w21, w8, ne
0x1014523d0:  ; loc_1014523d0
0x1014523d0:  7f 02 15 6b   cmp	w19, w21
0x1014523d4:  e0 17 9f 1a   cset	w0, eq
0x1014523d8:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x1014523dc:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x1014523e0:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x1014523e4:  ff 0f 5f d6   retab

-[CLDurianDevice isMultiStatusResponse:]:
0x1014523e8:  7f 23 03 d5   pacibsp
0x1014523ec:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1014523f0:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1014523f4:  fd 43 00 91   add	fp, sp, #0x10
0x1014523f8:  f3 03 02 aa   mov	x19, x2
0x1014523fc:  11 92 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101452400:  1f 00 00 71   cmp	w0, #0
0x101452404:  88 01 80 52   mov	w8, #0xc
0x101452408:  89 41 80 52   mov	w9, #0x20c
0x10145240c:  28 11 88 1a   csel	w8, w9, w8, ne
0x101452410:  7f 02 08 6b   cmp	w19, w8
0x101452414:  e0 17 9f 1a   cset	w0, eq
0x101452418:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10145241c:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101452420:  ff 0f 5f d6   retab

-[CLDurianDevice isHardwareFaultStatusResponse:]:
0x101452424:  7f 23 03 d5   pacibsp
0x101452428:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10145242c:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101452430:  fd 43 00 91   add	fp, sp, #0x10
0x101452434:  f3 03 02 aa   mov	x19, x2
0x101452438:  02 92 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x10145243c:  7f c6 00 71   cmp	w19, #0x31
0x101452440:  08 00 00 52   eor	w8, w0, #0x1
0x101452444:  e0 13 88 1a   csel	w0, wzr, w8, ne
0x101452448:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10145244c:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101452450:  ff 0f 5f d6   retab

-[CLDurianDevice isSetMaxConnectionsTask:]:
0x101452454:  7f 23 03 d5   pacibsp
0x101452458:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10145245c:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101452460:  fd 43 00 91   add	fp, sp, #0x10
0x101452464:  f3 03 02 aa   mov	x19, x2
0x101452468:  f6 91 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x10145246c:  1f 00 00 71   cmp	w0, #0
0x101452470:  68 01 80 52   mov	w8, #0xb
0x101452474:  e9 40 80 52   mov	w9, #0x207
0x101452478:  28 11 88 1a   csel	w8, w9, w8, ne
0x10145247c:  7f 02 08 6b   cmp	w19, w8
0x101452480:  e0 17 9f 1a   cset	w0, eq
0x101452484:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101452488:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10145248c:  ff 0f 5f d6   retab

-[CLDurianDevice isMutexTask:]:
0x101452490:  5f 38 00 71   cmp	w2, #0xe
0x101452494:  e0 17 9f 1a   cset	w0, eq
0x101452498:  c0 03 5f d6   ret

-[CLDurianDevice isKeyRollTask:]:
0x10145249c:  7f 23 03 d5   pacibsp
0x1014524a0:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1014524a4:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1014524a8:  fd 43 00 91   add	fp, sp, #0x10
0x1014524ac:  f3 03 02 aa   mov	x19, x2
0x1014524b0:  e4 91 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x1014524b4:  1f 00 00 71   cmp	w0, #0
0x1014524b8:  28 05 80 52   mov	w8, #0x29
0x1014524bc:  49 41 80 52   mov	w9, #0x20a
0x1014524c0:  28 11 88 1a   csel	w8, w9, w8, ne
0x1014524c4:  7f 02 08 6b   cmp	w19, w8
0x1014524c8:  e0 17 9f 1a   cset	w0, eq
0x1014524cc:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014524d0:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1014524d4:  ff 0f 5f d6   retab

-[CLDurianDevice isGroupStatusResponse:]:
0x1014524d8:  7f 23 03 d5   pacibsp
0x1014524dc:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1014524e0:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1014524e4:  fd 43 00 91   add	fp, sp, #0x10
0x1014524e8:  f3 03 02 aa   mov	x19, x2
0x1014524ec:  d5 91 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x1014524f0:  7f a2 08 71   cmp	w19, #0x228
0x1014524f4:  e0 13 80 1a   csel	w0, wzr, w0, ne
0x1014524f8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014524fc:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101452500:  ff 0f 5f d6   retab

-[CLDurianDevice isRangingStartTask:]:
0x101452504:  7f 23 03 d5   pacibsp
0x101452508:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10145250c:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101452510:  fd 43 00 91   add	fp, sp, #0x10
0x101452514:  f3 03 02 aa   mov	x19, x2
0x101452518:  ca 91 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x10145251c:  60 01 00 34   cbz	w0, loc_101452548 ; ⤵ 0x2c
0x101452520:  28 00 80 52   mov	w8, #0x1
0x101452524:  7f 3a 1c 71   cmp	w19, #0x70e
0x101452528:  09 01 9f 1a   csel	w9, w8, wzr, eq
0x10145252c:  7f 0e 1c 71   cmp	w19, #0x703
0x101452530:  09 01 89 1a   csel	w9, w8, w9, eq
0x101452534:  7f 0e 00 71   cmp	w19, #0x3
0x101452538:  00 01 89 1a   csel	w0, w8, w9, eq
0x10145253c:  ; loc_10145253c
0x10145253c:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101452540:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101452544:  ff 0f 5f d6   retab
0x101452548:  ; loc_101452548
0x101452548:  20 00 80 52   mov	w0, #0x1
0x10145254c:  7f 86 0c 71   cmp	w19, #0x321
0x101452550:  0d 01 00 54   b.le	loc_101452570 ; ⤵ 0x20
0x101452554:  7f 8a 0c 71   cmp	w19, #0x322
0x101452558:  20 ff ff 54   b.eq	loc_10145253c ; ⤴ -0x1c
0x10145255c:  7f 9e 0c 71   cmp	w19, #0x327
0x101452560:  e0 fe ff 54   b.eq	loc_10145253c ; ⤴ -0x24
0x101452564:  7f 0e 20 71   cmp	w19, #0x803
0x101452568:  a0 fe ff 54   b.eq	loc_10145253c ; ⤴ -0x2c
0x10145256c:  05 00 00 14   b	loc_101452580 ; ⤵ 0x14
0x101452570:  ; loc_101452570
0x101452570:  7f 0e 00 71   cmp	w19, #0x3
0x101452574:  40 fe ff 54   b.eq	loc_10145253c ; ⤴ -0x38
0x101452578:  7f 16 00 71   cmp	w19, #0x5
0x10145257c:  00 fe ff 54   b.eq	loc_10145253c ; ⤴ -0x40
0x101452580:  ; loc_101452580
0x101452580:  00 00 80 52   mov	w0, #0
0x101452584:  ee ff ff 17   b	loc_10145253c ; ⤴ -0x48

-[CLDurianDevice isRangingCompleteTask:]:
0x101452588:  7f 23 03 d5   pacibsp
0x10145258c:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101452590:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101452594:  fd 43 00 91   add	fp, sp, #0x10
0x101452598:  f3 03 02 aa   mov	x19, x2
0x10145259c:  a9 91 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x1014525a0:  28 00 80 52   mov	w8, #0x1
0x1014525a4:  7f 22 20 71   cmp	w19, #0x808
0x1014525a8:  09 01 9f 1a   csel	w9, w8, wzr, eq
0x1014525ac:  7f 8a 10 71   cmp	w19, #0x422
0x1014525b0:  09 01 89 1a   csel	w9, w8, w9, eq
0x1014525b4:  7f 12 00 71   cmp	w19, #0x4
0x1014525b8:  08 01 89 1a   csel	w8, w8, w9, eq
0x1014525bc:  7f 22 1c 71   cmp	w19, #0x708
0x1014525c0:  64 1a 44 7a   ccmp	w19, #0x4, #0x4, ne
0x1014525c4:  e9 17 9f 1a   cset	w9, eq
0x1014525c8:  1f 00 00 71   cmp	w0, #0
0x1014525cc:  00 01 89 1a   csel	w0, w8, w9, eq
0x1014525d0:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014525d4:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1014525d8:  ff 0f 5f d6   retab

-[CLDurianDevice isFwdlAbortTask:]:
0x1014525dc:  5f 80 00 71   cmp	w2, #0x20
0x1014525e0:  e0 17 9f 1a   cset	w0, eq

