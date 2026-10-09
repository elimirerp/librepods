
-[NIServerItemLocalizerSession _initCompanion:]:
0x10032c1d0:  7f 23 03 d5   pacibsp
0x10032c1d4:  ff 43 01 d1   sub	sp, sp, #0x50
0x10032c1d8:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x10032c1dc:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x10032c1e0:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x10032c1e4:  fd 03 01 91   add	fp, sp, #0x40
0x10032c1e8:  f3 03 02 aa   mov	x19, x2
0x10032c1ec:  f4 03 00 aa   mov	x20, x0
0x10032c1f0:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032c1f4:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x10032c1f8:  08 01 40 f9   ldr	x8, [x8]
0x10032c1fc:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x10032c200:  69 15 07 94   bl	j__objc_retain_x19
0x10032c204:  48 37 00 90   adrp	x8, 0x100a14000
0x10032c208:  08 55 82 b9   ldrsw	x8, [x8, #0x254]
0x10032c20c:  89 6a 68 b8   ldr	w9, [x20, x8]
0x10032c210:  a9 03 00 34   cbz	w9, loc_10032c284 ; ⤵ 0x74
0x10032c214:  e8 37 00 b0   adrp	x8, 0x100a29000
0x10032c218:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x10032c21c:  14 01 40 f9   ldr	x20, [x8]
0x10032c220:  69 15 07 94   bl	j__objc_retain_x20
0x10032c224:  e0 03 14 aa   mov	x0, x20
0x10032c228:  01 00 80 52   mov	w1, #0
0x10032c22c:  b6 15 07 94   bl	j__os_log_type_enabled
0x10032c230:  a0 08 00 34   cbz	w0, loc_10032c344 ; ⤵ 0x114
0x10032c234:  e0 03 13 aa   mov	x0, x19
0x10032c238:  d2 17 07 94   bl	j__objc_msgSend(x0, "UUID")
0x10032c23c:  fd 03 1d aa   mov	fp, fp
0x10032c240:  4d 15 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032c244:  f5 03 00 aa   mov	x21, x0
0x10032c248:  e8 11 00 d0   adrp	x8, 0x10056a000
0x10032c24c:  00 59 42 fd   ldr	d0, [x8, #0x4b0]
0x10032c250:  e0 03 00 bd   str	s0, [sp]
0x10032c254:  e0 43 00 f8   stur	x0, [sp, #0x4]
0x10032c258:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c25c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c260:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c264:  63 28 32 91   add	x3, x3, #0xc8a ; "#ses-item-loc,Skipping init companion. UUID: %@"
0x10032c268:  e4 03 00 91   mov	x4, sp
0x10032c26c:  e1 03 14 aa   mov	x1, x20
0x10032c270:  02 00 80 52   mov	w2, #0
0x10032c274:  85 01 80 52   mov	w5, #0xc
0x10032c278:  d7 12 07 94   bl	j___os_log_impl
0x10032c27c:  0a 15 07 94   bl	j__objc_release_x21
0x10032c280:  31 00 00 14   b	loc_10032c344 ; ⤵ 0xc4
0x10032c284:  ; loc_10032c284
0x10032c284:  29 00 80 52   mov	w9, #0x1
0x10032c288:  89 6a 28 b8   str	w9, [x20, x8]
0x10032c28c:  e8 37 00 b0   adrp	x8, 0x100a29000
0x10032c290:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x10032c294:  15 01 40 f9   ldr	x21, [x8]
0x10032c298:  4f 15 07 94   bl	j__objc_retain_x21
0x10032c29c:  e0 03 15 aa   mov	x0, x21
0x10032c2a0:  01 00 80 52   mov	w1, #0
0x10032c2a4:  98 15 07 94   bl	j__os_log_type_enabled
0x10032c2a8:  80 02 00 34   cbz	w0, loc_10032c2f8 ; ⤵ 0x50
0x10032c2ac:  e0 03 13 aa   mov	x0, x19
0x10032c2b0:  b4 17 07 94   bl	j__objc_msgSend(x0, "UUID")
0x10032c2b4:  fd 03 1d aa   mov	fp, fp
0x10032c2b8:  2f 15 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032c2bc:  f6 03 00 aa   mov	x22, x0
0x10032c2c0:  e8 11 00 d0   adrp	x8, 0x10056a000
0x10032c2c4:  00 59 42 fd   ldr	d0, [x8, #0x4b0]
0x10032c2c8:  e0 03 00 bd   str	s0, [sp]
0x10032c2cc:  e0 43 00 f8   stur	x0, [sp, #0x4]
0x10032c2d0:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c2d4:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c2d8:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c2dc:  63 e8 32 91   add	x3, x3, #0xcba ; "#ses-item-loc,[CL] Init companion. UUID: %@"
0x10032c2e0:  e4 03 00 91   mov	x4, sp
0x10032c2e4:  e1 03 15 aa   mov	x1, x21
0x10032c2e8:  02 00 80 52   mov	w2, #0
0x10032c2ec:  85 01 80 52   mov	w5, #0xc
0x10032c2f0:  b9 12 07 94   bl	j___os_log_impl
0x10032c2f4:  f0 14 07 94   bl	j__objc_release_x22
0x10032c2f8:  ; loc_10032c2f8
0x10032c2f8:  eb 14 07 94   bl	j__objc_release_x21
0x10032c2fc:  48 37 00 90   adrp	x8, 0x100a14000
0x10032c300:  08 a9 82 b9   ldrsw	x8, [x8, #0x2a8]
0x10032c304:  96 6a 68 f8   ldr	x22, [x20, x8]
0x10032c308:  e0 03 13 aa   mov	x0, x19
0x10032c30c:  9d 17 07 94   bl	j__objc_msgSend(x0, "UUID")
0x10032c310:  fd 03 1d aa   mov	fp, fp
0x10032c314:  18 15 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032c318:  f4 03 00 aa   mov	x20, x0
0x10032c31c:  e0 03 13 aa   mov	x0, x19
0x10032c320:  40 52 07 94   bl	j__objc_msgSend(x0, "roseMACAddress")
0x10032c324:  fd 03 1d aa   mov	fp, fp
0x10032c328:  13 15 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032c32c:  f5 03 00 aa   mov	x21, x0
0x10032c330:  e0 03 16 aa   mov	x0, x22
0x10032c334:  e2 03 14 aa   mov	x2, x20
0x10032c338:  e3 03 15 aa   mov	x3, x21
0x10032c33c:  31 3f 07 94   bl	j__objc_msgSend(x0, "initRangingOnDevice:macAddress:")
0x10032c340:  d9 14 07 94   bl	j__objc_release_x21
0x10032c344:  ; loc_10032c344
0x10032c344:  d4 14 07 94   bl	j__objc_release_x20
0x10032c348:  cf 14 07 94   bl	j__objc_release_x19
0x10032c34c:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x10032c350:  49 34 00 b0   adrp	x9, 0x1009b5000
0x10032c354:  29 b5 45 f9   ldr	x9, [x9, #0xb68] ; __got.___stack_chk_guard
0x10032c358:  29 01 40 f9   ldr	x9, [x9]
0x10032c35c:  3f 01 08 eb   cmp	x9, x8
0x10032c360:  c1 00 00 54   b.ne	loc_10032c378 ; ⤵ 0x18
0x10032c364:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x10032c368:  f4 4f 43 a9   ldp	x20, x19, [sp, #0x30]
0x10032c36c:  f6 57 42 a9   ldp	x22, x21, [sp, #0x20]
0x10032c370:  ff 43 01 91   add	sp, sp, #0x50
0x10032c374:  ff 0f 5f d6   retab
0x10032c378:  ; loc_10032c378
0x10032c378:  7b 12 07 94   bl	j____stack_chk_fail
0x10032c37c:  f6 03 00 aa   mov	x22, x0
0x10032c380:  c9 14 07 94   bl	j__objc_release_x21
0x10032c384:  0b 00 00 14   b	loc_10032c3b0 ; ⤵ 0x2c
0x10032c388:  f6 03 00 aa   mov	x22, x0
0x10032c38c:  c2 14 07 94   bl	j__objc_release_x20
0x10032c390:  08 00 00 14   b	loc_10032c3b0 ; ⤵ 0x20
0x10032c394:  f6 03 00 aa   mov	x22, x0
0x10032c398:  c3 14 07 94   bl	j__objc_release_x21
0x10032c39c:  02 00 00 14   b	loc_10032c3a4 ; ⤵ 0x8
0x10032c3a0:  f6 03 00 aa   mov	x22, x0
0x10032c3a4:  ; loc_10032c3a4
0x10032c3a4:  bc 14 07 94   bl	j__objc_release_x20
0x10032c3a8:  02 00 00 14   b	loc_10032c3b0 ; ⤵ 0x8
0x10032c3ac:  f6 03 00 aa   mov	x22, x0
0x10032c3b0:  ; loc_10032c3b0
0x10032c3b0:  b5 14 07 94   bl	j__objc_release_x19
0x10032c3b4:  02 00 00 14   b	loc_10032c3bc ; ⤵ 0x8
0x10032c3b8:  f6 03 00 aa   mov	x22, x0
0x10032c3bc:  ; loc_10032c3bc
0x10032c3bc:  e0 03 16 aa   mov	x0, x22
0x10032c3c0:  05 0f 07 94   bl	j___Unwind_Resume

-[NIServerItemLocalizerSession _deinitCompanion]:
0x10032c3c4:  7f 23 03 d5   pacibsp
0x10032c3c8:  ff 43 01 d1   sub	sp, sp, #0x50
0x10032c3cc:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x10032c3d0:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x10032c3d4:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]

