
+[CLDurianTask configureNBRangingHawkeyeTaskWithParameters:]:
0x10144a35c:  7f 23 03 d5   pacibsp
0x10144a360:  ff c3 01 d1   sub	sp, sp, #0x70
0x10144a364:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10144a368:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10144a36c:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10144a370:  fd 83 01 91   add	fp, sp, #0x60
0x10144a374:  e0 03 02 aa   mov	x0, x2
0x10144a378:  48 7a 00 90   adrp	x8, 0x102392000
0x10144a37c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10144a380:  08 01 40 f9   ldr	x8, [x8]
0x10144a384:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x10144a388:  2e 4c 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x10144a38c:  f4 03 00 aa   mov	x20, x0
0x10144a390:  35 7a 00 f0   adrp	x21, 0x102391000
0x10144a394:  a0 22 44 f9   ldr	x0, [x21, #0x840] ; __got._OBJC_CLASS_$_NSData
0x10144a398:  02 00 80 d2   mov	x2, #0
0x10144a39c:  03 00 80 d2   mov	x3, #0
0x10144a3a0:  a8 62 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x10144a3a4:  e2 03 00 aa   mov	x2, x0
0x10144a3a8:  a8 86 00 b0   adrp	x8, 0x10251f000
0x10144a3ac:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x10144a3b0:  54 1c 1c 94   bl	j__objc_msgSend(x0, "setRoseNBRangingParametersTaskWithParameters:")
0x10144a3b4:  f3 03 00 aa   mov	x19, x0
0x10144a3b8:  20 0d 00 b4   cbz	x0, loc_10144a55c ; ⤵ 0x1a4
0x10144a3bc:  36 7a 00 d0   adrp	x22, 0x102390000
0x10144a3c0:  c0 36 46 f9   ldr	x0, [x22, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x10144a3c4:  17 37 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeFindMyNetworkServiceUUID")
0x10144a3c8:  e2 03 00 aa   mov	x2, x0
0x10144a3cc:  e0 03 13 aa   mov	x0, x19
0x10144a3d0:  d4 1d 1c 94   bl	j__objc_msgSend(x0, "setServiceUUID:")
0x10144a3d4:  c0 36 46 f9   ldr	x0, [x22, #0xc68]
0x10144a3d8:  2a 37 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePreciseFindingCharacteristicUUID")
0x10144a3dc:  e2 03 00 aa   mov	x2, x0
0x10144a3e0:  e0 03 13 aa   mov	x0, x19
0x10144a3e4:  9f fc 1b 94   bl	j__objc_msgSend(x0, "setCharacteristicUUID:")
0x10144a3e8:  e0 03 13 aa   mov	x0, x19
0x10144a3ec:  02 00 80 52   mov	w2, #0
0x10144a3f0:  b4 1b 1c 94   bl	j__objc_msgSend(x0, "setRequiresMutex:")
0x10144a3f4:  e0 03 13 aa   mov	x0, x19
0x10144a3f8:  a2 e1 80 52   mov	w2, #0x70d
0x10144a3fc:  79 08 1c 94   bl	j__objc_msgSend(x0, "setHawkeyeOpcode:")
0x10144a400:  28 00 80 52   mov	w8, #0x1
0x10144a404:  e8 8b 00 39   strb	w8, [sp, #0x22]
0x10144a408:  e0 03 13 aa   mov	x0, x19
0x10144a40c:  2d 97 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x10144a410:  e0 8f 00 39   strb	w0, [sp, #0x23]
0x10144a414:  e0 03 13 aa   mov	x0, x19
0x10144a418:  2a 97 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x10144a41c:  08 7c 08 53   lsr	w8, w0, #0x8
0x10144a420:  e8 93 00 39   strb	w8, [sp, #0x24]
0x10144a424:  88 02 40 39   ldrb	w8, [x20]
0x10144a428:  e8 97 00 39   strb	w8, [sp, #0x25]
0x10144a42c:  88 06 40 39   ldrb	w8, [x20, #0x1]
0x10144a430:  e8 9b 00 39   strb	w8, [sp, #0x26]
0x10144a434:  88 0a 40 39   ldrb	w8, [x20, #0x2]
0x10144a438:  e8 9f 00 39   strb	w8, [sp, #0x27]
0x10144a43c:  88 0e 40 39   ldrb	w8, [x20, #0x3]
0x10144a440:  e8 a3 00 39   strb	w8, [sp, #0x28]
0x10144a444:  88 12 40 39   ldrb	w8, [x20, #0x4]
0x10144a448:  e8 a7 00 39   strb	w8, [sp, #0x29]
0x10144a44c:  88 16 40 39   ldrb	w8, [x20, #0x5]
0x10144a450:  e8 ab 00 39   strb	w8, [sp, #0x2a]
0x10144a454:  88 1a 40 39   ldrb	w8, [x20, #0x6]
0x10144a458:  e8 af 00 39   strb	w8, [sp, #0x2b]
0x10144a45c:  88 1e 40 39   ldrb	w8, [x20, #0x7]
0x10144a460:  e8 b3 00 39   strb	w8, [sp, #0x2c]
0x10144a464:  88 22 40 39   ldrb	w8, [x20, #0x8]
0x10144a468:  e8 b7 00 39   strb	w8, [sp, #0x2d]
0x10144a46c:  88 26 40 39   ldrb	w8, [x20, #0x9]
0x10144a470:  e8 bb 00 39   strb	w8, [sp, #0x2e]
0x10144a474:  88 2a 40 39   ldrb	w8, [x20, #0xa]
0x10144a478:  e8 bf 00 39   strb	w8, [sp, #0x2f]
0x10144a47c:  88 2e 40 39   ldrb	w8, [x20, #0xb]
0x10144a480:  e8 c3 00 39   strb	w8, [sp, #0x30]
0x10144a484:  88 32 40 39   ldrb	w8, [x20, #0xc]
0x10144a488:  e8 c7 00 39   strb	w8, [sp, #0x31]
0x10144a48c:  88 36 40 39   ldrb	w8, [x20, #0xd]
0x10144a490:  e8 cb 00 39   strb	w8, [sp, #0x32]
0x10144a494:  88 3a 40 39   ldrb	w8, [x20, #0xe]
0x10144a498:  e8 cf 00 39   strb	w8, [sp, #0x33]
0x10144a49c:  88 3e 40 39   ldrb	w8, [x20, #0xf]
0x10144a4a0:  e8 d3 00 39   strb	w8, [sp, #0x34]
0x10144a4a4:  88 42 40 39   ldrb	w8, [x20, #0x10]
0x10144a4a8:  e8 d7 00 39   strb	w8, [sp, #0x35]
0x10144a4ac:  88 46 40 39   ldrb	w8, [x20, #0x11]
0x10144a4b0:  e8 db 00 39   strb	w8, [sp, #0x36]
0x10144a4b4:  88 4a 40 39   ldrb	w8, [x20, #0x12]
0x10144a4b8:  e8 df 00 39   strb	w8, [sp, #0x37]
0x10144a4bc:  a0 22 44 f9   ldr	x0, [x21, #0x840]
0x10144a4c0:  e2 8b 00 91   add	x2, sp, #0x22
0x10144a4c4:  c3 02 80 52   mov	w3, #0x16
0x10144a4c8:  5e 62 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x10144a4cc:  e2 03 00 aa   mov	x2, x0
0x10144a4d0:  e0 03 13 aa   mov	x0, x19
0x10144a4d4:  53 08 1c 94   bl	j__objc_msgSend(x0, "setHawkeyePayload:")
0x10144a4d8:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a4dc:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10144a4e0:  1f 05 00 b1   cmn	x8, #0x1
0x10144a4e4:  c1 08 00 54   b.ne	loc_10144a5fc ; ⤵ 0x118
0x10144a4e8:  ; loc_10144a4e8
0x10144a4e8:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a4ec:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10144a4f0:  e0 03 14 aa   mov	x0, x20
0x10144a4f4:  01 00 80 52   mov	w1, #0
0x10144a4f8:  7e 2f 1b 94   bl	j__os_log_type_enabled
0x10144a4fc:  80 06 00 34   cbz	w0, loc_10144a5cc ; ⤵ 0xd0
0x10144a500:  e0 03 13 aa   mov	x0, x19
0x10144a504:  f7 96 1b 94   bl	j__objc_msgSend(x0, "hawkeyePayload")
0x10144a508:  48 45 00 d0   adrp	x8, 0x101cf4000
0x10144a50c:  00 79 44 fd   ldr	d0, [x8, #0x8f0]
0x10144a510:  e0 03 00 bd   str	s0, [sp]
0x10144a514:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10144a518:  48 04 81 52   mov	w8, #0x822
0x10144a51c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10144a520:  28 53 00 90   adrp	x8, 0x101eae000
0x10144a524:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10144a528:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10144a52c:  48 08 81 52   mov	w8, #0x842
0x10144a530:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10144a534:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10144a538:  a0 5d ff d0   adrp	x0, 0x100000000
0x10144a53c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10144a540:  23 71 00 d0   adrp	x3, 0x102270000
0x10144a544:  63 4c 0b 91   add	x3, x3, #0x2d3 ; "{\"msg%{public}.0s\":\"#durian #hawkeye #nb nbConfigureRanging\", \"payload\":%{public, location:escape_only}@}"
0x10144a548:  e4 03 00 91   mov	x4, sp
0x10144a54c:  e1 03 14 aa   mov	x1, x20
0x10144a550:  02 00 80 52   mov	w2, #0
0x10144a554:  85 03 80 52   mov	w5, #0x1c
0x10144a558:  1c 00 00 14   b	loc_10144a5c8 ; ⤵ 0x70
0x10144a55c:  ; loc_10144a55c
0x10144a55c:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a560:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10144a564:  1f 05 00 b1   cmn	x8, #0x1
0x10144a568:  e1 04 00 54   b.ne	loc_10144a604 ; ⤵ 0x9c
0x10144a56c:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a570:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10144a574:  e0 03 14 aa   mov	x0, x20
0x10144a578:  01 00 80 52   mov	w1, #0
0x10144a57c:  5d 2f 1b 94   bl	j__os_log_type_enabled
0x10144a580:  60 02 00 34   cbz	w0, loc_10144a5cc ; ⤵ 0x4c
0x10144a584:  48 45 00 d0   adrp	x8, 0x101cf4000
0x10144a588:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10144a58c:  e0 03 00 bd   str	s0, [sp]
0x10144a590:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10144a594:  48 04 81 52   mov	w8, #0x822
0x10144a598:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10144a59c:  28 53 00 90   adrp	x8, 0x101eae000
0x10144a5a0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10144a5a4:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10144a5a8:  a0 5d ff d0   adrp	x0, 0x100000000
0x10144a5ac:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10144a5b0:  23 71 00 d0   adrp	x3, 0x102270000
0x10144a5b4:  63 f4 0c 91   add	x3, x3, #0x33d ; "{\"msg%{public}.0s\":\"#durian #hawkeye #nb nil task, nbConfigureRanging\"}"
0x10144a5b8:  e4 03 00 91   mov	x4, sp
0x10144a5bc:  e1 03 14 aa   mov	x1, x20
0x10144a5c0:  02 00 80 52   mov	w2, #0
0x10144a5c4:  45 02 80 52   mov	w5, #0x12
0x10144a5c8:  ; loc_10144a5c8
0x10144a5c8:  0a 2b 1b 94   bl	j___os_log_impl
0x10144a5cc:  ; loc_10144a5cc
0x10144a5cc:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x10144a5d0:  49 7a 00 90   adrp	x9, 0x102392000
0x10144a5d4:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10144a5d8:  29 01 40 f9   ldr	x9, [x9]
0x10144a5dc:  3f 01 08 eb   cmp	x9, x8
0x10144a5e0:  61 01 00 54   b.ne	loc_10144a60c ; ⤵ 0x2c
0x10144a5e4:  e0 03 13 aa   mov	x0, x19
0x10144a5e8:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10144a5ec:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10144a5f0:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10144a5f4:  ff c3 01 91   add	sp, sp, #0x70
0x10144a5f8:  ff 0f 5f d6   retab
0x10144a5fc:  ; loc_10144a5fc
0x10144a5fc:  34 16 1b 94   bl	0x101b0fecc
0x10144a600:  ba ff ff 17   b	loc_10144a4e8 ; ⤴ -0x118

