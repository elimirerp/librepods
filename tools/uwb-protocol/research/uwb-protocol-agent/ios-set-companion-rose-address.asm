
-[NIServerItemLocalizerSession _setCompanionDeviceRoseMacAddress]:
0x10032d234:  7f 23 03 d5   pacibsp
0x10032d238:  ff c3 01 d1   sub	sp, sp, #0x70
0x10032d23c:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x10032d240:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10032d244:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10032d248:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10032d24c:  fd 83 01 91   add	fp, sp, #0x60
0x10032d250:  f3 03 00 aa   mov	x19, x0
0x10032d254:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d258:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x10032d25c:  08 01 40 f9   ldr	x8, [x8]
0x10032d260:  e8 17 00 f9   str	x8, [sp, #0x28]
0x10032d264:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d268:  18 3d 82 b9   ldrsw	x24, [x8, #0x23c]
0x10032d26c:  00 68 78 f8   ldr	x0, [x0, x24]
0x10032d270:  b4 30 07 94   bl	j__objc_msgSend(x0, "debugParameters")
0x10032d274:  fd 03 1d aa   mov	fp, fp
0x10032d278:  3f 11 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d27c:  00 07 00 b4   cbz	x0, loc_10032d35c ; ⤵ 0xe0
0x10032d280:  f4 03 00 aa   mov	x20, x0
0x10032d284:  60 6a 78 f8   ldr	x0, [x19, x24]
0x10032d288:  ae 30 07 94   bl	j__objc_msgSend(x0, "debugParameters")
0x10032d28c:  fd 03 1d aa   mov	fp, fp
0x10032d290:  39 11 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d294:  f6 03 00 aa   mov	x22, x0
0x10032d298:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d29c:  08 a5 45 f9   ldr	x8, [x8, #0xb48] ; __got._PRP2PBaseAddress
0x10032d2a0:  15 01 40 f9   ldr	x21, [x8]
0x10032d2a4:  e2 03 15 aa   mov	x2, x21
0x10032d2a8:  86 46 07 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10032d2ac:  fd 03 1d aa   mov	fp, fp
0x10032d2b0:  31 11 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d2b4:  f7 03 00 aa   mov	x23, x0
0x10032d2b8:  03 11 07 94   bl	j__objc_release_x23
0x10032d2bc:  fe 10 07 94   bl	j__objc_release_x22
0x10032d2c0:  f5 10 07 94   bl	j__objc_release_x20
0x10032d2c4:  d7 04 00 b4   cbz	x23, loc_10032d35c ; ⤵ 0x98
0x10032d2c8:  60 6a 78 f8   ldr	x0, [x19, x24]
0x10032d2cc:  9d 30 07 94   bl	j__objc_msgSend(x0, "debugParameters")
0x10032d2d0:  fd 03 1d aa   mov	fp, fp
0x10032d2d4:  28 11 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d2d8:  f6 03 00 aa   mov	x22, x0
0x10032d2dc:  e2 03 15 aa   mov	x2, x21
0x10032d2e0:  78 46 07 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10032d2e4:  fd 03 1d aa   mov	fp, fp
0x10032d2e8:  23 11 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d2ec:  f4 03 00 aa   mov	x20, x0
0x10032d2f0:  f1 10 07 94   bl	j__objc_release_x22
0x10032d2f4:  e8 37 00 90   adrp	x8, 0x100a29000
0x10032d2f8:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x10032d2fc:  15 01 40 f9   ldr	x21, [x8]
0x10032d300:  e0 03 15 aa   mov	x0, x21
0x10032d304:  01 00 80 52   mov	w1, #0
0x10032d308:  7f 11 07 94   bl	j__os_log_type_enabled
0x10032d30c:  c0 01 00 34   cbz	w0, loc_10032d344 ; ⤵ 0x38
0x10032d310:  e8 11 00 b0   adrp	x8, 0x10056a000
0x10032d314:  00 59 42 fd   ldr	d0, [x8, #0x4b0]
0x10032d318:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10032d31c:  f4 43 01 f8   stur	x20, [sp, #0x14]
0x10032d320:  80 e6 ff f0   adrp	x0, 0x100000000
0x10032d324:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032d328:  23 31 00 90   adrp	x3, 0x100951000
0x10032d32c:  63 f0 3e 91   add	x3, x3, #0xfbc ; "#ses-item-loc,Using client provided roseMACAddress %@"
0x10032d330:  e4 43 00 91   add	x4, sp, #0x10
0x10032d334:  e1 03 15 aa   mov	x1, x21
0x10032d338:  02 00 80 52   mov	w2, #0
0x10032d33c:  85 01 80 52   mov	w5, #0xc
0x10032d340:  a5 0e 07 94   bl	j___os_log_impl
0x10032d344:  ; loc_10032d344
0x10032d344:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d348:  08 91 82 b9   ldrsw	x8, [x8, #0x290]
0x10032d34c:  60 6a 68 f8   ldr	x0, [x19, x8]
0x10032d350:  e2 03 14 aa   mov	x2, x20
0x10032d354:  83 59 07 94   bl	j__objc_msgSend(x0, "setRoseMACAddress:")
0x10032d358:  35 00 00 14   b	loc_10032d42c ; ⤵ 0xd4
0x10032d35c:  ; loc_10032d35c
0x10032d35c:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d360:  00 f1 44 f9   ldr	x0, [x8, #0x9e0] ; __got._OBJC_CLASS_$_NSUUID
0x10032d364:  87 13 07 94   bl	j__objc_msgSend(x0, "UUID")
0x10032d368:  fd 03 1d aa   mov	fp, fp
0x10032d36c:  02 11 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d370:  f4 03 00 aa   mov	x20, x0
0x10032d374:  ff 7f 01 a9   stp	xzr, xzr, [sp, #0x10]
0x10032d378:  f5 43 00 91   add	x21, sp, #0x10
0x10032d37c:  e2 43 00 91   add	x2, sp, #0x10
0x10032d380:  b0 39 07 94   bl	j__objc_msgSend(x0, "getUUIDBytes:")
0x10032d384:  08 00 80 d2   mov	x8, #0
0x10032d388:  29 00 80 52   mov	w9, #0x1
0x10032d38c:  ; loc_10032d38c
0x10032d38c:  aa 6a 68 38   ldrb	w10, [x21, x8]
0x10032d390:  4a 00 00 35   cbnz	w10, loc_10032d398 ; ⤵ 0x8
0x10032d394:  a9 6a 28 38   strb	w9, [x21, x8]
0x10032d398:  ; loc_10032d398
0x10032d398:  08 05 00 91   add	x8, x8, #0x1
0x10032d39c:  1f 21 00 f1   cmp	x8, #0x8
0x10032d3a0:  61 ff ff 54   b.ne	loc_10032d38c ; ⤴ -0x14
0x10032d3a4:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d3a8:  00 ed 47 f9   ldr	x0, [x8, #0xfd8] ; __got._OBJC_CLASS_$_NSData
0x10032d3ac:  e2 43 00 91   add	x2, sp, #0x10
0x10032d3b0:  03 01 80 52   mov	w3, #0x8
0x10032d3b4:  fb 2f 07 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x10032d3b8:  fd 03 1d aa   mov	fp, fp
0x10032d3bc:  ee 10 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d3c0:  f5 03 00 aa   mov	x21, x0
0x10032d3c4:  e8 37 00 90   adrp	x8, 0x100a29000
0x10032d3c8:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x10032d3cc:  16 01 40 f9   ldr	x22, [x8]
0x10032d3d0:  e0 03 16 aa   mov	x0, x22
0x10032d3d4:  01 00 80 52   mov	w1, #0
0x10032d3d8:  4b 11 07 94   bl	j__os_log_type_enabled
0x10032d3dc:  c0 01 00 34   cbz	w0, loc_10032d414 ; ⤵ 0x38
0x10032d3e0:  e8 11 00 b0   adrp	x8, 0x10056a000
0x10032d3e4:  00 59 42 fd   ldr	d0, [x8, #0x4b0]
0x10032d3e8:  e0 03 00 bd   str	s0, [sp]
0x10032d3ec:  f5 43 00 f8   stur	x21, [sp, #0x4]
0x10032d3f0:  80 e6 ff f0   adrp	x0, 0x100000000
0x10032d3f4:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032d3f8:  23 31 00 90   adrp	x3, 0x100951000
0x10032d3fc:  63 c8 3f 91   add	x3, x3, #0xff2 ; "#ses-item-loc,Using randomized UUID generated base mac address %@"
0x10032d400:  e4 03 00 91   mov	x4, sp
0x10032d404:  e1 03 16 aa   mov	x1, x22
0x10032d408:  02 00 80 52   mov	w2, #0
0x10032d40c:  85 01 80 52   mov	w5, #0xc
0x10032d410:  71 0e 07 94   bl	j___os_log_impl
0x10032d414:  ; loc_10032d414
0x10032d414:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d418:  08 91 82 b9   ldrsw	x8, [x8, #0x290]
0x10032d41c:  60 6a 68 f8   ldr	x0, [x19, x8]
0x10032d420:  e2 03 15 aa   mov	x2, x21
0x10032d424:  4f 59 07 94   bl	j__objc_msgSend(x0, "setRoseMACAddress:")
0x10032d428:  9f 10 07 94   bl	j__objc_release_x21
0x10032d42c:  ; loc_10032d42c
0x10032d42c:  9a 10 07 94   bl	j__objc_release_x20
0x10032d430:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10032d434:  49 34 00 90   adrp	x9, 0x1009b5000
0x10032d438:  29 b5 45 f9   ldr	x9, [x9, #0xb68] ; __got.___stack_chk_guard
0x10032d43c:  29 01 40 f9   ldr	x9, [x9]
0x10032d440:  3f 01 08 eb   cmp	x9, x8
0x10032d444:  01 01 00 54   b.ne	loc_10032d464 ; ⤵ 0x20
0x10032d448:  20 00 80 52   mov	w0, #0x1
0x10032d44c:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10032d450:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10032d454:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10032d458:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x10032d45c:  ff c3 01 91   add	sp, sp, #0x70
0x10032d460:  ff 0f 5f d6   retab
0x10032d464:  ; loc_10032d464
0x10032d464:  40 0e 07 94   bl	j____stack_chk_fail
0x10032d468:  f3 03 00 aa   mov	x19, x0
0x10032d46c:  8a 10 07 94   bl	j__objc_release_x20
0x10032d470:  12 00 00 14   b	loc_10032d4b8 ; ⤵ 0x48
0x10032d474:  f3 03 00 aa   mov	x19, x0
0x10032d478:  8f 10 07 94   bl	j__objc_release_x22
0x10032d47c:  0f 00 00 14   b	loc_10032d4b8 ; ⤵ 0x3c
0x10032d480:  f3 03 00 aa   mov	x19, x0
0x10032d484:  88 10 07 94   bl	j__objc_release_x21
0x10032d488:  03 00 00 14   b	loc_10032d494 ; ⤵ 0xc
0x10032d48c:  01 00 00 14   b	loc_10032d490 ; ⤵ 0x4
0x10032d490:  ; loc_10032d490
0x10032d490:  f3 03 00 aa   mov	x19, x0
0x10032d494:  ; loc_10032d494
0x10032d494:  80 10 07 94   bl	j__objc_release_x20
0x10032d498:  08 00 00 14   b	loc_10032d4b8 ; ⤵ 0x20
0x10032d49c:  f3 03 00 aa   mov	x19, x0
0x10032d4a0:  85 10 07 94   bl	j__objc_release_x22
0x10032d4a4:  02 00 00 14   b	loc_10032d4ac ; ⤵ 0x8
0x10032d4a8:  f3 03 00 aa   mov	x19, x0

