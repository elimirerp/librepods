
-[CLDurianDeviceManager deviceWithUUID:]:
0x10146e340:  7f 23 03 d5   pacibsp
0x10146e344:  ff c3 01 d1   sub	sp, sp, #0x70
0x10146e348:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x10146e34c:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10146e350:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10146e354:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10146e358:  fd 83 01 91   add	fp, sp, #0x60
0x10146e35c:  28 79 00 90   adrp	x8, 0x102392000
0x10146e360:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10146e364:  08 01 40 f9   ldr	x8, [x8]
0x10146e368:  e8 17 00 f9   str	x8, [sp, #0x28]
0x10146e36c:  c2 08 00 b4   cbz	x2, loc_10146e484 ; ⤵ 0x118
0x10146e370:  f3 03 02 aa   mov	x19, x2
0x10146e374:  00 5c 40 f9   ldr	x0, [x0, #0xb8]
0x10146e378:  d2 3a 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x10146e37c:  60 08 00 b5   cbnz	x0, loc_10146e488 ; ⤵ 0x10c
0x10146e380:  b7 88 00 90   adrp	x23, 0x102582000
0x10146e384:  e8 3a 46 f9   ldr	x8, [x23, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146e388:  1f 05 00 b1   cmn	x8, #0x1
0x10146e38c:  61 09 00 54   b.ne	loc_10146e4b8 ; ⤵ 0x12c
0x10146e390:  ; loc_10146e390
0x10146e390:  b8 88 00 90   adrp	x24, 0x102582000
0x10146e394:  14 3f 46 f9   ldr	x20, [x24, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146e398:  e0 03 14 aa   mov	x0, x20
0x10146e39c:  21 02 80 52   mov	w1, #0x11
0x10146e3a0:  d4 9f 1a 94   bl	j__os_log_type_enabled
0x10146e3a4:  36 44 00 d0   adrp	x22, 0x101cf4000
0x10146e3a8:  15 52 00 90   adrp	x21, 0x101eae000
0x10146e3ac:  b5 e2 02 91   add	x21, x21, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146e3b0:  00 03 00 34   cbz	w0, loc_10146e410 ; ⤵ 0x60
0x10146e3b4:  e0 03 13 aa   mov	x0, x19
0x10146e3b8:  98 a9 00 94   bl	0x101498a18
0x10146e3bc:  c0 fe 47 fd   ldr	d0, [x22, #0xff8]
0x10146e3c0:  e0 03 00 bd   str	s0, [sp]
0x10146e3c4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10146e3c8:  48 04 81 52   mov	w8, #0x822
0x10146e3cc:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10146e3d0:  f5 a3 00 f8   stur	x21, [sp, #0xa]
0x10146e3d4:  28 08 81 52   mov	w8, #0x841
0x10146e3d8:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146e3dc:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10146e3e0:  80 5c ff d0   adrp	x0, 0x100000000
0x10146e3e4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146e3e8:  63 70 00 f0   adrp	x3, 0x10227d000
0x10146e3ec:  63 50 22 91   add	x3, x3, #0x894 ; "{\"msg%{public}.0s\":\"#durian cannot create a durianDevice for missing SPBeacon\", \"uuid\":%{private, location:escape_only}@}"
0x10146e3f0:  e4 03 00 91   mov	x4, sp
0x10146e3f4:  e1 03 14 aa   mov	x1, x20
0x10146e3f8:  22 02 80 52   mov	w2, #0x11
0x10146e3fc:  85 03 80 52   mov	w5, #0x1c
0x10146e400:  7c 9b 1a 94   bl	j___os_log_impl
0x10146e404:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x10146e408:  1f 05 00 b1   cmn	x8, #0x1
0x10146e40c:  a1 05 00 54   b.ne	loc_10146e4c0 ; ⤵ 0xb4
0x10146e410:  ; loc_10146e410
0x10146e410:  14 3f 46 f9   ldr	x20, [x24, #0xc78]
0x10146e414:  e0 03 14 aa   mov	x0, x20
0x10146e418:  ba 9f 1a 94   bl	j__os_signpost_enabled
0x10146e41c:  40 03 00 34   cbz	w0, loc_10146e484 ; ⤵ 0x68
0x10146e420:  e0 03 13 aa   mov	x0, x19
0x10146e424:  7d a9 00 94   bl	0x101498a18
0x10146e428:  c0 fe 47 fd   ldr	d0, [x22, #0xff8]
0x10146e42c:  e0 03 00 bd   str	s0, [sp]
0x10146e430:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10146e434:  48 04 81 52   mov	w8, #0x822
0x10146e438:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10146e43c:  f5 a3 00 f8   stur	x21, [sp, #0xa]
0x10146e440:  28 08 81 52   mov	w8, #0x841
0x10146e444:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146e448:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10146e44c:  80 5c ff d0   adrp	x0, 0x100000000
0x10146e450:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146e454:  64 70 00 f0   adrp	x4, 0x10227d000
0x10146e458:  84 38 24 91   add	x4, x4, #0x90e ; "#durian cannot create a durianDevice for missing SPBeacon"
0x10146e45c:  65 70 00 f0   adrp	x5, 0x10227d000
0x10146e460:  a5 50 22 91   add	x5, x5, #0x894 ; "{\"msg%{public}.0s\":\"#durian cannot create a durianDevice for missing SPBeacon\", \"uuid\":%{private, location:escape_only}@}"
0x10146e464:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x10146e468:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x10146e46c:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x10146e470:  e6 03 00 91   mov	x6, sp
0x10146e474:  e1 03 14 aa   mov	x1, x20
0x10146e478:  02 00 80 52   mov	w2, #0
0x10146e47c:  87 03 80 52   mov	w7, #0x1c
0x10146e480:  64 9b 1a 94   bl	j___os_signpost_emit_with_name_impl
0x10146e484:  ; loc_10146e484
0x10146e484:  00 00 80 d2   mov	x0, #0
0x10146e488:  ; loc_10146e488
0x10146e488:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10146e48c:  29 79 00 90   adrp	x9, 0x102392000
0x10146e490:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10146e494:  29 01 40 f9   ldr	x9, [x9]
0x10146e498:  3f 01 08 eb   cmp	x9, x8
0x10146e49c:  61 01 00 54   b.ne	loc_10146e4c8 ; ⤵ 0x2c
0x10146e4a0:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10146e4a4:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10146e4a8:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10146e4ac:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x10146e4b0:  ff c3 01 91   add	sp, sp, #0x70
0x10146e4b4:  ff 0f 5f d6   retab
0x10146e4b8:  ; loc_10146e4b8
0x10146e4b8:  59 87 1a 94   bl	0x101b1021c
0x10146e4bc:  b5 ff ff 17   b	loc_10146e390 ; ⤴ -0x12c
0x10146e4c0:  ; loc_10146e4c0
0x10146e4c0:  47 87 1a 94   bl	0x101b101dc
0x10146e4c4:  d3 ff ff 17   b	loc_10146e410 ; ⤴ -0xb4
0x10146e4c8:  ; loc_10146e4c8
0x10146e4c8:  1e 9b 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager createDeviceWithUUID:beaconType:isPosh:simpleBeacon:]:
0x10146e4cc:  7f 23 03 d5   pacibsp
0x10146e4d0:  ff 03 02 d1   sub	sp, sp, #0x80
0x10146e4d4:  fa 67 03 a9   stp	x26, x25, [sp, #0x30]
0x10146e4d8:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x10146e4dc:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x10146e4e0:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x10146e4e4:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x10146e4e8:  fd c3 01 91   add	fp, sp, #0x70
0x10146e4ec:  f5 03 05 aa   mov	x21, x5
0x10146e4f0:  f7 03 04 aa   mov	x23, x4
0x10146e4f4:  f6 03 03 aa   mov	x22, x3

