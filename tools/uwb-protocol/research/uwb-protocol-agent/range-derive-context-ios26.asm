
sub_10043e144:
0x10043e144:  7f 23 03 d5   pacibsp
0x10043e148:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x10043e14c:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x10043e150:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x10043e154:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x10043e158:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x10043e15c:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x10043e160:  fd 43 01 91   add	fp, sp, #0x50
0x10043e164:  ff 43 05 d1   sub	sp, sp, #0x150
0x10043e168:  f6 03 14 aa   mov	x22, x20
0x10043e16c:  f7 03 00 aa   mov	x23, x0
0x10043e170:  a9 83 00 d1   sub	x9, fp, #0x20
0x10043e174:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10043e178:  00 00 80 d2   mov	x0, #0
0x10043e17c:  ef 30 ef 97   bl	0x10000a538
0x10043e180:  fc 03 00 aa   mov	x28, x0
0x10043e184:  e8 03 00 aa   mov	x8, x0
0x10043e188:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x10043e18c:  f1 03 08 aa   mov	x17, x8
0x10043e190:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10043e194:  30 1a c1 da   autda	x16, x17
0x10043e198:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10043e19c:  e9 03 08 aa   mov	x9, x8
0x10043e1a0:  51 a2 00 d0   adrp	x17, 0x101888000
0x10043e1a4:  31 e2 26 91   add	x17, x17, #0x9b8 ; __got.___chkstk_darwin
0x10043e1a8:  30 02 40 f9   ldr	x16, [x17]
0x10043e1ac:  11 0a 3f d7   blraa	x16, x17
0x10043e1b0:  e9 03 00 91   mov	x9, sp
0x10043e1b4:  08 3d 00 91   add	x8, x8, #0xf
0x10043e1b8:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10043e1bc:  28 01 08 cb   sub	x8, x9, x8
0x10043e1c0:  a9 a3 01 d1   sub	x9, fp, #0x68
0x10043e1c4:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10043e1c8:  1f 01 00 91   mov	sp, x8
0x10043e1cc:  00 00 80 d2   mov	x0, #0
0x10043e1d0:  78 26 45 94   bl	j__$s2os6LoggerVMa
0x10043e1d4:  a8 03 01 d1   sub	x8, fp, #0x40
0x10043e1d8:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10043e1dc:  e9 03 00 aa   mov	x9, x0
0x10043e1e0:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x10043e1e4:  f0 03 08 aa   mov	x16, x8
0x10043e1e8:  f1 03 09 aa   mov	x17, x9
0x10043e1ec:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10043e1f0:  30 1a c1 da   autda	x16, x17
0x10043e1f4:  f1 03 10 aa   mov	x17, x16
0x10043e1f8:  f1 47 c1 da   xpacd	x17
0x10043e1fc:  1f 02 11 eb   cmp	x16, x17
0x10043e200:  40 00 00 54   b.eq	loc_10043e208 ; ⤵ 0x8
0x10043e204:  40 8e 38 d4   brk	#0xc472
0x10043e208:  ; loc_10043e208
0x10043e208:  aa 23 01 d1   sub	x10, fp, #0x48
0x10043e20c:  50 01 10 f8   stur	x16, [x10, #-0x100]
0x10043e210:  f0 03 08 aa   mov	x16, x8
0x10043e214:  f1 03 09 aa   mov	x17, x9
0x10043e218:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10043e21c:  30 1a c1 da   autda	x16, x17
0x10043e220:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10043e224:  e9 03 08 aa   mov	x9, x8
0x10043e228:  51 a2 00 d0   adrp	x17, 0x101888000
0x10043e22c:  31 e2 26 91   add	x17, x17, #0x9b8 ; __got.___chkstk_darwin
0x10043e230:  30 02 40 f9   ldr	x16, [x17]
0x10043e234:  11 0a 3f d7   blraa	x16, x17
0x10043e238:  e9 03 00 91   mov	x9, sp
0x10043e23c:  0a 3d 00 91   add	x10, x8, #0xf
0x10043e240:  4c ed 7c 92   and	x12, x10, #0xfffffffffffffff0
0x10043e244:  29 01 0c cb   sub	x9, x9, x12
0x10043e248:  aa 43 01 d1   sub	x10, fp, #0x50
0x10043e24c:  49 01 10 f8   stur	x9, [x10, #-0x100]
0x10043e250:  3f 01 00 91   mov	sp, x9
0x10043e254:  e9 03 08 aa   mov	x9, x8
0x10043e258:  51 a2 00 d0   adrp	x17, 0x101888000
0x10043e25c:  31 e2 26 91   add	x17, x17, #0x9b8 ; __got.___chkstk_darwin
0x10043e260:  30 02 40 f9   ldr	x16, [x17]
0x10043e264:  11 0a 3f d7   blraa	x16, x17
0x10043e268:  e8 03 00 91   mov	x8, sp
0x10043e26c:  08 01 0c cb   sub	x8, x8, x12
0x10043e270:  a9 63 01 d1   sub	x9, fp, #0x58
0x10043e274:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10043e278:  1f 01 00 91   mov	sp, x8
0x10043e27c:  00 00 80 d2   mov	x0, #0
0x10043e280:  34 1d 45 94   bl	j__$s10Foundation4DateVMa
0x10043e284:  f9 03 00 aa   mov	x25, x0
0x10043e288:  e9 03 00 aa   mov	x9, x0
0x10043e28c:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x10043e290:  f0 03 08 aa   mov	x16, x8
0x10043e294:  f1 03 09 aa   mov	x17, x9
0x10043e298:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10043e29c:  30 1a c1 da   autda	x16, x17
0x10043e2a0:  f1 03 10 aa   mov	x17, x16
0x10043e2a4:  f1 47 c1 da   xpacd	x17
0x10043e2a8:  1f 02 11 eb   cmp	x16, x17
0x10043e2ac:  40 00 00 54   b.eq	loc_10043e2b4 ; ⤵ 0x8
0x10043e2b0:  40 8e 38 d4   brk	#0xc472
0x10043e2b4:  ; loc_10043e2b4
0x10043e2b4:  f8 03 10 aa   mov	x24, x16
0x10043e2b8:  f0 03 08 aa   mov	x16, x8
0x10043e2bc:  f1 03 09 aa   mov	x17, x9
0x10043e2c0:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10043e2c4:  30 1a c1 da   autda	x16, x17
0x10043e2c8:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10043e2cc:  e9 03 08 aa   mov	x9, x8
0x10043e2d0:  51 a2 00 d0   adrp	x17, 0x101888000
0x10043e2d4:  31 e2 26 91   add	x17, x17, #0x9b8 ; __got.___chkstk_darwin
0x10043e2d8:  30 02 40 f9   ldr	x16, [x17]
0x10043e2dc:  11 0a 3f d7   blraa	x16, x17
0x10043e2e0:  e9 03 00 91   mov	x9, sp
0x10043e2e4:  08 3d 00 91   add	x8, x8, #0xf
0x10043e2e8:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10043e2ec:  33 01 08 cb   sub	x19, x9, x8
0x10043e2f0:  7f 02 00 91   mov	sp, x19
0x10043e2f4:  68 a7 00 f0   adrp	x8, 0x10192d000
0x10043e2f8:  08 29 47 f9   ldr	x8, [x8, #0xe50] ; data_10192de50 (__DATA.__data)
0x10043e2fc:  1f 05 00 b1   cmn	x8, #0x1
0x10043e300:  41 59 00 54   b.ne	loc_10043ee28 ; ⤵ 0xb28
0x10043e304:  48 ae 00 90   adrp	x8, 0x101a06000
0x10043e308:  01 e1 47 f9   ldr	x1, [x8, #0xfc0]
0x10043e30c:  34 14 40 f9   ldr	x20, [x1, #0x28]
0x10043e310:  22 a5 00 d0   adrp	x2, 0x1018e4000
0x10043e314:  42 60 2a 91   add	x2, x2, #0xa98 ; data_1018e4a98 (__DATA_CONST.__const)
0x10043e318:  90 e4 ff d0   adrp	x16, 0x1000d0000
0x10043e31c:  10 12 23 91   add	x16, x16, #0x8c4
0x10043e320:  f1 41 8e d2   mov	x17, #0x720f
0x10043e324:  30 02 c1 da   pacia	x16, x17
0x10043e328:  e0 03 10 aa   mov	x0, x16
0x10043e32c:  a8 23 02 d1   sub	x8, fp, #0x88
0x10043e330:  15 00 80 d2   mov	x21, #0
0x10043e334:  f7 2c 45 94   bl	j__$sSo17OS_dispatch_queueC8DispatchE4sync7executexxyKXE_tKlF
0x10043e338:  a8 83 57 f8   ldur	x8, [fp, #-0x88]
0x10043e33c:  a9 63 00 d1   sub	x9, fp, #0x18
0x10043e340:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10043e344:  d4 8a 40 f9   ldr	x20, [x22, #0x110]
0x10043e348:  c8 a7 00 f0   adrp	x8, 0x101939000
0x10043e34c:  1b 8d 41 f9   ldr	x27, [x8, #0x318] ; data_101939318 (__DATA.__data)
0x10043e350:  96 6a 7b f8   ldr	x22, [x20, x27]
0x10043e354:  00 00 80 d2   mov	x0, #0
0x10043e358:  71 8a ef 97   bl	0x100020d1c
0x10043e35c:  e4 03 00 aa   mov	x4, x0
0x10043e360:  49 a2 00 90   adrp	x9, 0x101886000
0x10043e364:  29 69 47 f9   ldr	x9, [x9, #0xed0] ; __got._$sytN
0x10043e368:  70 01 00 d0   adrp	x16, 0x10046c000
0x10043e36c:  10 c2 3d 91   add	x16, x16, #0xf70
0x10043e370:  f1 41 8e d2   mov	x17, #0x720f
0x10043e374:  30 02 c1 da   pacia	x16, x17
0x10043e378:  e0 03 10 aa   mov	x0, x16
0x10043e37c:  a8 23 02 d1   sub	x8, fp, #0x88
0x10043e380:  23 21 00 91   add	x3, x9, #0x8
0x10043e384:  e1 03 14 aa   mov	x1, x20
0x10043e388:  e2 03 16 aa   mov	x2, x22
0x10043e38c:  a9 c3 01 d1   sub	x9, fp, #0x70
0x10043e390:  24 01 10 f8   stur	x4, [x9, #-0x100]
0x10043e394:  e7 25 45 94   bl	j__$s2os21OSAllocatedUnfairLockV10FindMyBaseE14callAsFunctionyqd__qd__yYbKXEKs8SendableRd__lF
0x10043e398:  ba 83 57 f8   ldur	x26, [fp, #-0x88]
0x10043e39c:  e0 03 17 aa   mov	x0, x23
0x10043e3a0:  e1 03 1a aa   mov	x1, x26
0x10043e3a4:  4f 7b 44 94   bl	0x10155d0e0
0x10043e3a8:  f6 03 17 aa   mov	x22, x23
0x10043e3ac:  f7 03 00 aa   mov	x23, x0
0x10043e3b0:  e0 03 1a aa   mov	x0, x26
0x10043e3b4:  c3 35 45 94   bl	j__swift_release
0x10043e3b8:  88 23 80 b9   ldrsw	x8, [x28, #0x20]
0x10043e3bc:  a9 c3 00 d1   sub	x9, fp, #0x30
0x10043e3c0:  38 01 10 f8   stur	x24, [x9, #-0x100]
0x10043e3c4:  09 0f 41 f8   ldr	x9, [x24, #0x10]!
0x10043e3c8:  c1 02 08 8b   add	x1, x22, x8
0x10043e3cc:  a8 23 00 d1   sub	x8, fp, #0x8
0x10043e3d0:  13 01 10 f8   stur	x19, [x8, #-0x100]
0x10043e3d4:  e0 03 13 aa   mov	x0, x19
0x10043e3d8:  e2 03 19 aa   mov	x2, x25
0x10043e3dc:  a8 83 01 d1   sub	x8, fp, #0x60
0x10043e3e0:  09 01 10 f8   stur	x9, [x8, #-0x100]
0x10043e3e4:  f1 03 18 aa   mov	x17, x24
0x10043e3e8:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x10043e3ec:  31 09 3f d7   blraa	x9, x17
0x10043e3f0:  f3 03 1c aa   mov	x19, x28
0x10043e3f4:  88 37 80 b9   ldrsw	x8, [x28, #0x34]
0x10043e3f8:  a9 43 00 d1   sub	x9, fp, #0x10
0x10043e3fc:  36 01 10 f8   stur	x22, [x9, #-0x100]
0x10043e400:  d6 02 08 8b   add	x22, x22, x8
0x10043e404:  c0 72 40 a9   ldp	x0, x28, [x22]
0x10043e408:  fa 03 19 aa   mov	x26, x25
0x10043e40c:  a8 e3 00 d1   sub	x8, fp, #0x38
0x10043e410:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10043e414:  a8 a3 00 d1   sub	x8, fp, #0x28
0x10043e418:  1c 01 10 f8   stur	x28, [x8, #-0x100]
0x10043e41c:  77 11 00 b4   cbz	x23, loc_10043e648 ; ⤵ 0x22c
0x10043e420:  ff 06 00 f1   cmp	x23, #0x1
0x10043e424:  81 22 00 54   b.ne	loc_10043e874 ; ⤵ 0x450
0x10043e428:  a8 43 01 d1   sub	x8, fp, #0x50
0x10043e42c:  17 01 10 f8   stur	x23, [x8, #-0x100]
0x10043e430:  f6 03 13 aa   mov	x22, x19
0x10043e434:  68 26 80 b9   ldrsw	x8, [x19, #0x24]
0x10043e438:  33 01 50 f8   ldur	x19, [x9, #-0x100]
0x10043e43c:  68 02 08 8b   add	x8, x19, x8
0x10043e440:  14 55 40 a9   ldp	x20, x21, [x8]
0x10043e444:  e1 03 1c aa   mov	x1, x28
0x10043e448:  6b 6a ef 97   bl	0x100018df4
0x10043e44c:  e0 03 14 aa   mov	x0, x20
0x10043e450:  e1 03 15 aa   mov	x1, x21
0x10043e454:  68 6a ef 97   bl	0x100018df4
0x10043e458:  ; loc_10043e458
0x10043e458:  a8 63 00 d1   sub	x8, fp, #0x18
0x10043e45c:  19 01 50 f8   ldur	x25, [x8, #-0x100]
0x10043e460:  e0 03 14 aa   mov	x0, x20
0x10043e464:  e1 03 15 aa   mov	x1, x21
0x10043e468:  63 6a ef 97   bl	0x100018df4
0x10043e46c:  e0 03 19 aa   mov	x0, x25
0x10043e470:  bc 16 38 94   bl	0x101243f60
0x10043e474:  a0 4e f8 b7   tbnz	x0, #0x3f, loc_10043ee48 ; ⤵ 0x9d4
0x10043e478:  f7 03 00 aa   mov	x23, x0
0x10043e47c:  fb 03 1a aa   mov	x27, x26
0x10043e480:  e0 03 19 aa   mov	x0, x25
0x10043e484:  be 16 38 94   bl	0x101243f7c
0x10043e488:  fa 03 00 aa   mov	x26, x0
0x10043e48c:  e0 03 19 aa   mov	x0, x25
0x10043e490:  74 34 45 94   bl	j__swift_bridgeObjectRelease
0x10043e494:  da 4d f8 b7   tbnz	x26, #0x3f, loc_10043ee4c ; ⤵ 0x9b8
0x10043e498:  58 77 fc f2   movk	x24, #0xe3ba, lsl #0x30
0x10043e49c:  28 a2 00 f0   adrp	x8, 0x101885000
0x10043e4a0:  00 f9 41 f9   ldr	x0, [x8, #0x3f0] ; __got._OBJC_CLASS_$_SPOfflineAdvertisingConfiguration
0x10043e4a4:  3f 33 45 94   bl	j__objc_allocWithZone
0x10043e4a8:  e2 03 17 aa   mov	x2, x23
0x10043e4ac:  e3 03 1a aa   mov	x3, x26
0x10043e4b0:  c4 40 45 94   bl	j__objc_msgSend(x0, "initWithShortIntervalCount:longIntervalCount:")
0x10043e4b4:  f7 03 00 aa   mov	x23, x0
0x10043e4b8:  d6 16 80 b9   ldrsw	x22, [x22, #0x14]
0x10043e4bc:  00 00 80 d2   mov	x0, #0
0x10043e4c0:  dc 1c 45 94   bl	j__$s10Foundation4UUIDVMa
0x10043e4c4:  e2 03 00 aa   mov	x2, x0
0x10043e4c8:  e8 03 00 aa   mov	x8, x0
0x10043e4cc:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x10043e4d0:  f1 03 08 aa   mov	x17, x8
0x10043e4d4:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10043e4d8:  30 1a c1 da   autda	x16, x17
0x10043e4dc:  08 0e 41 f8   ldr	x8, [x16, #0x10]!
0x10043e4e0:  61 02 16 8b   add	x1, x19, x22
0x10043e4e4:  a9 83 00 d1   sub	x9, fp, #0x20
0x10043e4e8:  36 01 50 f8   ldur	x22, [x9, #-0x100]
0x10043e4ec:  e0 03 16 aa   mov	x0, x22
0x10043e4f0:  50 77 fc f2   movk	x16, #0xe3ba, lsl #0x30
0x10043e4f4:  10 09 3f d7   blraa	x8, x16
0x10043e4f8:  00 00 80 d2   mov	x0, #0
0x10043e4fc:  5c df 21 94   bl	0x100cb626c
0x10043e500:  f3 03 00 aa   mov	x19, x0
0x10043e504:  08 14 80 b9   ldrsw	x8, [x0, #0x14]
0x10043e508:  c0 02 08 8b   add	x0, x22, x8
0x10043e50c:  a8 23 00 d1   sub	x8, fp, #0x8
0x10043e510:  1c 01 50 f8   ldur	x28, [x8, #-0x100]
0x10043e514:  e1 03 1c aa   mov	x1, x28
0x10043e518:  e2 03 1b aa   mov	x2, x27
0x10043e51c:  a8 83 01 d1   sub	x8, fp, #0x60
0x10043e520:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x10043e524:  18 09 3f d7   blraa	x8, x24
0x10043e528:  20 a7 00 b0   adrp	x0, 0x101923000
0x10043e52c:  00 a0 16 91   add	x0, x0, #0x5a8 ; data_1019235a8 (__DATA.__data)
0x10043e530:  21 8e 00 90   adrp	x1, 0x101602000
0x10043e534:  21 40 2c 91   add	x1, x1, #0xb10 ; "\xa4>\f"
0x10043e538:  af e7 f1 97   bl	0x1000b83f4
0x10043e53c:  a1 03 04 d1   sub	x1, fp, #0x100
0x10043e540:  34 35 45 94   bl	j__swift_initStackObject
0x10043e544:  f8 03 00 aa   mov	x24, x0
0x10043e548:  68 8d 00 d0   adrp	x8, 0x1015ec000
0x10043e54c:  00 71 c1 3d   ldr	q0, [x8, #0x5c0]
0x10043e550:  00 04 80 3d   str	q0, [x0, #0x10]
0x10043e554:  48 00 80 52   mov	w8, #0x2
0x10043e558:  f9 03 00 aa   mov	x25, x0
0x10043e55c:  28 0f 02 f8   str	x8, [x25, #0x20]!
0x10043e560:  28 00 80 52   mov	w8, #0x1
0x10043e564:  17 a0 02 a9   stp	x23, x8, [x0, #0x28]
0x10043e568:  17 1c 00 f9   str	x23, [x0, #0x38]
0x10043e56c:  29 14 1f 94   bl	0x100c03610
0x10043e570:  fa 03 00 aa   mov	x26, x0
0x10043e574:  e0 03 18 aa   mov	x0, x24
0x10043e578:  66 35 45 94   bl	j__swift_setDeallocating
0x10043e57c:  7d 33 45 94   bl	j__objc_retain_x23
0x10043e580:  54 33 45 94   bl	j__objc_retain
0x10043e584:  f7 03 00 aa   mov	x23, x0
0x10043e588:  20 a7 00 b0   adrp	x0, 0x101923000
0x10043e58c:  00 c0 16 91   add	x0, x0, #0x5b0 ; data_1019235b0 (__DATA.__data)
0x10043e590:  21 8e 00 90   adrp	x1, 0x101602000
0x10043e594:  21 60 2c 91   add	x1, x1, #0xb18 ; "\xd2>\f"
0x10043e598:  97 e7 f1 97   bl	0x1000b83f4
0x10043e59c:  e2 03 00 aa   mov	x2, x0
0x10043e5a0:  e0 03 19 aa   mov	x0, x25
0x10043e5a4:  41 00 80 52   mov	w1, #0x2
0x10043e5a8:  0a 34 45 94   bl	j__swift_arrayDestroy
0x10043e5ac:  e0 03 14 aa   mov	x0, x20
0x10043e5b0:  e1 03 15 aa   mov	x1, x21
0x10043e5b4:  88 20 ef 97   bl	0x1000067d4
0x10043e5b8:  26 33 45 94   bl	j__objc_release_x23
0x10043e5bc:  a8 c3 00 d1   sub	x8, fp, #0x30
0x10043e5c0:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10043e5c4:  28 8d 40 f8   ldr	x8, [x9, #0x8]!
0x10043e5c8:  e0 03 1c aa   mov	x0, x28
0x10043e5cc:  e1 03 1b aa   mov	x1, x27
0x10043e5d0:  f1 03 09 aa   mov	x17, x9
0x10043e5d4:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10043e5d8:  11 09 3f d7   blraa	x8, x17
0x10043e5dc:  68 1a 80 b9   ldrsw	x8, [x19, #0x18]
0x10043e5e0:  a9 43 01 d1   sub	x9, fp, #0x50
0x10043e5e4:  29 01 50 f8   ldur	x9, [x9, #-0x100]
0x10043e5e8:  c9 6a 28 f8   str	x9, [x22, x8]
0x10043e5ec:  68 1e 80 b9   ldrsw	x8, [x19, #0x1c]
0x10043e5f0:  c8 02 08 8b   add	x8, x22, x8
0x10043e5f4:  a9 e3 00 d1   sub	x9, fp, #0x38
0x10043e5f8:  2a 01 50 f8   ldur	x10, [x9, #-0x100]
0x10043e5fc:  a9 a3 00 d1   sub	x9, fp, #0x28
0x10043e600:  29 01 50 f8   ldur	x9, [x9, #-0x100]
0x10043e604:  0a 25 00 a9   stp	x10, x9, [x8]
0x10043e608:  68 22 80 b9   ldrsw	x8, [x19, #0x20]
0x10043e60c:  c8 02 08 8b   add	x8, x22, x8
0x10043e610:  14 55 00 a9   stp	x20, x21, [x8]
0x10043e614:  68 26 80 b9   ldrsw	x8, [x19, #0x24]
0x10043e618:  da 6a 28 f8   str	x26, [x22, x8]
0x10043e61c:  e8 03 13 aa   mov	x8, x19
0x10043e620:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x10043e624:  f1 03 08 aa   mov	x17, x8
0x10043e628:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10043e62c:  30 1a c1 da   autda	x16, x17
0x10043e630:  08 8e 43 f8   ldr	x8, [x16, #0x38]!
0x10043e634:  e0 03 16 aa   mov	x0, x22
0x10043e638:  01 00 80 52   mov	w1, #0
0x10043e63c:  22 00 80 52   mov	w2, #0x1
0x10043e640:  e3 03 13 aa   mov	x3, x19
0x10043e644:  ce 01 00 14   b	loc_10043ed7c ; ⤵ 0x738
0x10043e648:  ; loc_10043e648
0x10043e648:  e1 03 1c aa   mov	x1, x28
0x10043e64c:  ea 69 ef 97   bl	0x100018df4
0x10043e650:  a8 63 00 d1   sub	x8, fp, #0x18
0x10043e654:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e658:  02 34 45 94   bl	j__swift_bridgeObjectRelease
0x10043e65c:  68 a7 00 b0   adrp	x8, 0x10192b000
0x10043e660:  08 51 47 f9   ldr	x8, [x8, #0xea0] ; data_10192bea0 (__DATA.__data)
0x10043e664:  1f 05 00 b1   cmn	x8, #0x1
0x10043e668:  41 3f 00 54   b.ne	loc_10043ee50 ; ⤵ 0x7e8
0x10043e66c:  41 ae 00 90   adrp	x1, 0x101a06000
0x10043e670:  21 60 33 91   add	x1, x1, #0xcd8
0x10043e674:  a8 03 01 d1   sub	x8, fp, #0x40
0x10043e678:  18 01 50 f8   ldur	x24, [x8, #-0x100]
0x10043e67c:  e0 03 18 aa   mov	x0, x24
0x10043e680:  06 25 ef 97   bl	0x100007a98
0x10043e684:  e1 03 00 aa   mov	x1, x0
0x10043e688:  a8 23 01 d1   sub	x8, fp, #0x48
0x10043e68c:  1b 01 50 f8   ldur	x27, [x8, #-0x100]
0x10043e690:  e8 03 1b aa   mov	x8, x27
0x10043e694:  09 0d 41 f8   ldr	x9, [x8, #0x10]!
0x10043e698:  aa 43 01 d1   sub	x10, fp, #0x50
0x10043e69c:  54 01 50 f8   ldur	x20, [x10, #-0x100]
0x10043e6a0:  e0 03 14 aa   mov	x0, x20
0x10043e6a4:  e2 03 18 aa   mov	x2, x24
0x10043e6a8:  f1 03 08 aa   mov	x17, x8
0x10043e6ac:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x10043e6b0:  31 09 3f d7   blraa	x9, x17
0x10043e6b4:  70 de ff 90   adrp	x16, 0x10000a000
0x10043e6b8:  10 e2 14 91   add	x16, x16, #0x538
0x10043e6bc:  d1 89 8b d2   mov	x17, #0x5c4e
0x10043e6c0:  30 02 c1 da   pacia	x16, x17
0x10043e6c4:  e2 03 10 aa   mov	x2, x16
0x10043e6c8:  a8 43 00 d1   sub	x8, fp, #0x10
0x10043e6cc:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e6d0:  a8 a3 01 d1   sub	x8, fp, #0x68
0x10043e6d4:  19 01 50 f8   ldur	x25, [x8, #-0x100]
0x10043e6d8:  e1 03 19 aa   mov	x1, x25
0x10043e6dc:  7c d5 ef 97   bl	0x100033ccc
0x10043e6e0:  2c 25 45 94   bl	j__$s2os6LoggerV9logObjectSo03OS_a1_C0Cvg
0x10043e6e4:  fc 03 00 aa   mov	x28, x0
0x10043e6e8:  a2 2b 45 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x10043e6ec:  f6 03 00 aa   mov	x22, x0
0x10043e6f0:  01 1c 00 12   and	w1, w0, #0xff
0x10043e6f4:  e0 03 1c aa   mov	x0, x28
0x10043e6f8:  46 33 45 94   bl	j__os_log_type_enabled
0x10043e6fc:  a8 23 00 d1   sub	x8, fp, #0x8
0x10043e700:  17 01 50 f8   ldur	x23, [x8, #-0x100]
0x10043e704:  60 17 00 34   cbz	w0, loc_10043e9f0 ; ⤵ 0x2ec
0x10043e708:  c0 02 80 52   mov	w0, #0x16
0x10043e70c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10043e710:  04 35 45 94   bl	j__swift_slowAlloc
0x10043e714:  f5 03 00 aa   mov	x21, x0
0x10043e718:  00 04 80 52   mov	w0, #0x20
0x10043e71c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10043e720:  00 35 45 94   bl	j__swift_slowAlloc
0x10043e724:  f7 03 00 aa   mov	x23, x0
0x10043e728:  a0 83 17 f8   stur	x0, [fp, #-0x88]
0x10043e72c:  68 8d 00 b0   adrp	x8, 0x1015eb000
0x10043e730:  00 b5 44 fd   ldr	d0, [x8, #0x968]
0x10043e734:  a0 02 00 bd   str	s0, [x21]
0x10043e738:  08 2d 8c 52   mov	w8, #0x6168
0x10043e73c:  68 0e ad 72   movk	w8, #0x6873, lsl #0x10
0x10043e740:  a8 42 00 f8   stur	x8, [x21, #0x4]
0x10043e744:  28 04 81 52   mov	w8, #0x821
0x10043e748:  a8 1a 00 79   strh	w8, [x21, #0xc]
0x10043e74c:  74 16 80 b9   ldrsw	x20, [x19, #0x14]
0x10043e750:  00 00 80 d2   mov	x0, #0
0x10043e754:  37 1c 45 94   bl	j__$s10Foundation4UUIDVMa
0x10043e758:  f3 03 18 aa   mov	x19, x24
0x10043e75c:  f8 03 00 aa   mov	x24, x0
0x10043e760:  e0 a6 00 b0   adrp	x0, 0x10191b000
0x10043e764:  00 00 2e 91   add	x0, x0, #0xb80 ; data_10191bb80 (__DATA.__data)
0x10043e768:  50 a2 00 90   adrp	x16, 0x101886000
0x10043e76c:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got._$s10Foundation4UUIDVMa
0x10043e770:  f1 e4 93 d2   mov	x17, #0x9f27
0x10043e774:  30 02 c1 da   pacia	x16, x17
0x10043e778:  e1 03 10 aa   mov	x1, x16
0x10043e77c:  50 a2 00 90   adrp	x16, 0x101886000
0x10043e780:  10 da 41 f9   ldr	x16, [x16, #0x3b0] ; __got._$s10Foundation4UUIDVs23CustomStringConvertibleAAMc
0x10043e784:  71 dd 98 d2   mov	x17, #0xc6eb
0x10043e788:  30 0a c1 da   pacda	x16, x17
0x10043e78c:  e2 03 10 aa   mov	x2, x16
0x10043e790:  11 7d 00 94   bl	0x10045dbd4
0x10043e794:  e1 03 00 aa   mov	x1, x0
0x10043e798:  34 03 14 8b   add	x20, x25, x20
0x10043e79c:  e0 03 18 aa   mov	x0, x24
0x10043e7a0:  54 2f 45 94   bl	j__$ss23CustomStringConvertibleP11descriptionSSvgTj
0x10043e7a4:  f4 03 01 aa   mov	x20, x1
0x10043e7a8:  a2 23 02 d1   sub	x2, fp, #0x88
0x10043e7ac:  8b 54 ef 97   bl	0x1000139d8
0x10043e7b0:  f8 03 00 aa   mov	x24, x0
0x10043e7b4:  e0 03 14 aa   mov	x0, x20
0x10043e7b8:  aa 33 45 94   bl	j__swift_bridgeObjectRelease
0x10043e7bc:  b8 e2 00 f8   stur	x24, [x21, #0xe]
0x10043e7c0:  70 de ff 90   adrp	x16, 0x10000a000
0x10043e7c4:  10 e2 14 91   add	x16, x16, #0x538
0x10043e7c8:  31 0b 84 d2   mov	x17, #0x2059
0x10043e7cc:  30 02 c1 da   pacia	x16, x17
0x10043e7d0:  e1 03 10 aa   mov	x1, x16
0x10043e7d4:  e0 03 19 aa   mov	x0, x25
0x10043e7d8:  cb b2 00 94   bl	0x10046b304
0x10043e7dc:  00 de ff d0   adrp	x0, 0x100000000
0x10043e7e0:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10043e7e4:  43 92 00 90   adrp	x3, 0x101686000
0x10043e7e8:  63 80 13 91   add	x3, x3, #0x4e0 ; "Unable to get basePrimaryKeyIndex for %{private,mask.hash}s"
0x10043e7ec:  c2 1e 00 12   and	w2, w22, #0xff
0x10043e7f0:  e1 03 1c aa   mov	x1, x28
0x10043e7f4:  e4 03 15 aa   mov	x4, x21
0x10043e7f8:  c5 02 80 52   mov	w5, #0x16
0x10043e7fc:  f5 31 45 94   bl	j___os_log_impl
0x10043e800:  e0 03 17 aa   mov	x0, x23
0x10043e804:  c6 25 ef 97   bl	0x100007f1c
0x10043e808:  e0 03 17 aa   mov	x0, x23
0x10043e80c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10043e810:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x10043e814:  c7 34 45 94   bl	j__swift_slowDealloc
0x10043e818:  e0 03 15 aa   mov	x0, x21
0x10043e81c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10043e820:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x10043e824:  c3 34 45 94   bl	j__swift_slowDealloc
0x10043e828:  a8 e3 00 d1   sub	x8, fp, #0x38
0x10043e82c:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e830:  a8 a3 00 d1   sub	x8, fp, #0x28
0x10043e834:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x10043e838:  da 61 ef 97   bl	0x100016fa0
0x10043e83c:  99 32 45 94   bl	j__objc_release_x28
0x10043e840:  68 8f 40 f8   ldr	x8, [x27, #0x8]!
0x10043e844:  a9 43 01 d1   sub	x9, fp, #0x50
0x10043e848:  20 01 50 f8   ldur	x0, [x9, #-0x100]
0x10043e84c:  e1 03 13 aa   mov	x1, x19
0x10043e850:  f1 03 1b aa   mov	x17, x27
0x10043e854:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10043e858:  11 09 3f d7   blraa	x8, x17
0x10043e85c:  a8 c3 00 d1   sub	x8, fp, #0x30
0x10043e860:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10043e864:  28 8d 40 f8   ldr	x8, [x9, #0x8]!
0x10043e868:  aa 23 00 d1   sub	x10, fp, #0x8
0x10043e86c:  40 01 50 f8   ldur	x0, [x10, #-0x100]
0x10043e870:  77 00 00 14   b	loc_10043ea4c ; ⤵ 0x1dc
0x10043e874:  ; loc_10043e874
0x10043e874:  a8 a3 01 d1   sub	x8, fp, #0x68
0x10043e878:  1a 01 10 f8   stur	x26, [x8, #-0x100]
0x10043e87c:  9a 6a 7b f8   ldr	x26, [x20, x27]
0x10043e880:  e1 03 1c aa   mov	x1, x28
0x10043e884:  5c 69 ef 97   bl	0x100018df4
0x10043e888:  70 01 00 d0   adrp	x16, 0x10046c000
0x10043e88c:  10 c2 3d 91   add	x16, x16, #0xf70
0x10043e890:  f1 41 8e d2   mov	x17, #0x720f
0x10043e894:  30 02 c1 da   pacia	x16, x17
0x10043e898:  e0 03 10 aa   mov	x0, x16
0x10043e89c:  a8 23 02 d1   sub	x8, fp, #0x88
0x10043e8a0:  49 a2 00 90   adrp	x9, 0x101886000
0x10043e8a4:  29 69 47 f9   ldr	x9, [x9, #0xed0] ; __got._$sytN
0x10043e8a8:  23 21 00 91   add	x3, x9, #0x8
0x10043e8ac:  e1 03 14 aa   mov	x1, x20
0x10043e8b0:  e2 03 1a aa   mov	x2, x26
0x10043e8b4:  a9 c3 01 d1   sub	x9, fp, #0x70
0x10043e8b8:  24 01 50 f8   ldur	x4, [x9, #-0x100]
0x10043e8bc:  9d 24 45 94   bl	j__$s2os21OSAllocatedUnfairLockV10FindMyBaseE14callAsFunctionyqd__qd__yYbKXEKs8SendableRd__lF
0x10043e8c0:  a0 83 57 f8   ldur	x0, [fp, #-0x88]
0x10043e8c4:  7f 34 45 94   bl	j__swift_release
0x10043e8c8:  e9 03 13 aa   mov	x9, x19
0x10043e8cc:  68 26 80 b9   ldrsw	x8, [x19, #0x24]
0x10043e8d0:  aa 43 00 d1   sub	x10, fp, #0x10
0x10043e8d4:  4a 01 50 f8   ldur	x10, [x10, #-0x100]
0x10043e8d8:  48 01 08 8b   add	x8, x10, x8
0x10043e8dc:  1c 4d 40 a9   ldp	x28, x19, [x8]
0x10043e8e0:  db 6a 40 a9   ldp	x27, x26, [x22]
0x10043e8e4:  f6 03 09 aa   mov	x22, x9
0x10043e8e8:  28 31 80 b9   ldrsw	x8, [x9, #0x30]
0x10043e8ec:  48 01 08 8b   add	x8, x10, x8
0x10043e8f0:  19 51 40 a9   ldp	x25, x20, [x8]
0x10043e8f4:  e0 03 1c aa   mov	x0, x28
0x10043e8f8:  e1 03 13 aa   mov	x1, x19
0x10043e8fc:  3e 69 ef 97   bl	0x100018df4
0x10043e900:  a8 23 02 d1   sub	x8, fp, #0x88
0x10043e904:  1b 01 10 f8   stur	x27, [x8, #-0x100]
0x10043e908:  e0 03 1b aa   mov	x0, x27
0x10043e90c:  a8 03 02 d1   sub	x8, fp, #0x80
0x10043e910:  1a 01 10 f8   stur	x26, [x8, #-0x100]
0x10043e914:  e1 03 1a aa   mov	x1, x26
0x10043e918:  37 69 ef 97   bl	0x100018df4
0x10043e91c:  a8 e3 01 d1   sub	x8, fp, #0x78
0x10043e920:  19 01 10 f8   stur	x25, [x8, #-0x100]
0x10043e924:  e0 03 19 aa   mov	x0, x25
0x10043e928:  a8 c3 01 d1   sub	x8, fp, #0x70
0x10043e92c:  14 01 10 f8   stur	x20, [x8, #-0x100]
0x10043e930:  e1 03 14 aa   mov	x1, x20
0x10043e934:  30 69 ef 97   bl	0x100018df4
0x10043e938:  28 a8 00 f0   adrp	x8, 0x101945000
0x10043e93c:  08 61 40 f9   ldr	x8, [x8, #0xc0] ; data_1019450c0 (__DATA.__data)
0x10043e940:  1f 05 00 b1   cmn	x8, #0x1
0x10043e944:  61 29 00 54   b.ne	loc_10043ee70 ; ⤵ 0x52c
0x10043e948:  28 a8 00 f0   adrp	x8, 0x101945000
0x10043e94c:  14 41 40 f9   ldr	x20, [x8, #0x80] ; data_101945080 (__DATA.__data)
0x10043e950:  a8 ce 8d d2   mov	x8, #0x6e75
0x10043e954:  88 ac ac f2   movk	x8, #0x6564, lsl #0x10
0x10043e958:  48 8e ca f2   movk	x8, #0x5472, lsl #0x20
0x10043e95c:  a8 6c ee f2   movk	x8, #0x7365, lsl #0x30
0x10043e960:  89 0e 80 d2   mov	x9, #0x74
0x10043e964:  09 20 fd f2   movk	x9, #0xe900, lsl #0x30
0x10043e968:  a8 a7 37 a9   stp	x8, x9, [fp, #-0x88]
0x10043e96c:  43 a2 00 90   adrp	x3, 0x101886000
0x10043e970:  63 ac 45 f9   ldr	x3, [x3, #0xb58] ; __got._$sSbN
0x10043e974:  50 62 00 d0   adrp	x16, 0x101088000
0x10043e978:  10 82 3e 91   add	x16, x16, #0xfa0
0x10043e97c:  f1 41 8e d2   mov	x17, #0x720f
0x10043e980:  30 02 c1 da   pacia	x16, x17
0x10043e984:  e1 03 10 aa   mov	x1, x16
0x10043e988:  a8 83 02 d1   sub	x8, fp, #0xa0
0x10043e98c:  a0 23 02 d1   sub	x0, fp, #0x88
0x10043e990:  02 00 80 d2   mov	x2, #0
0x10043e994:  bb 17 45 94   bl	j__$s10FindMyBase16SynchronousCacheC11cachedValue3key12computeBlockqd__x_qd__yXEts8SendableRd__lF
0x10043e998:  e0 03 1c aa   mov	x0, x28
0x10043e99c:  e1 03 13 aa   mov	x1, x19
0x10043e9a0:  e2 03 17 aa   mov	x2, x23
0x10043e9a4:  4f b4 1c 94   bl	0x100b6bae0
0x10043e9a8:  fb 03 13 aa   mov	x27, x19
0x10043e9ac:  55 05 00 b4   cbz	x21, loc_10043ea54 ; ⤵ 0xa8
0x10043e9b0:  a8 63 00 d1   sub	x8, fp, #0x18
0x10043e9b4:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e9b8:  2a 33 45 94   bl	j__swift_bridgeObjectRelease
0x10043e9bc:  a8 23 02 d1   sub	x8, fp, #0x88
0x10043e9c0:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e9c4:  a8 03 02 d1   sub	x8, fp, #0x80
0x10043e9c8:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x10043e9cc:  75 61 ef 97   bl	0x100016fa0
0x10043e9d0:  a8 e3 01 d1   sub	x8, fp, #0x78
0x10043e9d4:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e9d8:  a8 c3 01 d1   sub	x8, fp, #0x70
0x10043e9dc:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x10043e9e0:  70 61 ef 97   bl	0x100016fa0
0x10043e9e4:  e0 03 1c aa   mov	x0, x28
0x10043e9e8:  e1 03 1b aa   mov	x1, x27
0x10043e9ec:  4f 00 00 14   b	loc_10043eb28 ; ⤵ 0x13c
0x10043e9f0:  ; loc_10043e9f0
0x10043e9f0:  a8 e3 00 d1   sub	x8, fp, #0x38
0x10043e9f4:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043e9f8:  a8 a3 00 d1   sub	x8, fp, #0x28
0x10043e9fc:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x10043ea00:  68 61 ef 97   bl	0x100016fa0
0x10043ea04:  27 32 45 94   bl	j__objc_release_x28
0x10043ea08:  70 de ff 90   adrp	x16, 0x10000a000
0x10043ea0c:  10 e2 14 91   add	x16, x16, #0x538
0x10043ea10:  31 0b 84 d2   mov	x17, #0x2059
0x10043ea14:  30 02 c1 da   pacia	x16, x17
0x10043ea18:  e1 03 10 aa   mov	x1, x16
0x10043ea1c:  e0 03 19 aa   mov	x0, x25
0x10043ea20:  39 b2 00 94   bl	0x10046b304
0x10043ea24:  68 8f 40 f8   ldr	x8, [x27, #0x8]!
0x10043ea28:  e0 03 14 aa   mov	x0, x20
0x10043ea2c:  e1 03 18 aa   mov	x1, x24
0x10043ea30:  f1 03 1b aa   mov	x17, x27
0x10043ea34:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10043ea38:  11 09 3f d7   blraa	x8, x17
0x10043ea3c:  a8 c3 00 d1   sub	x8, fp, #0x30
0x10043ea40:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10043ea44:  28 8d 40 f8   ldr	x8, [x9, #0x8]!
0x10043ea48:  e0 03 17 aa   mov	x0, x23
0x10043ea4c:  ; loc_10043ea4c
0x10043ea4c:  e1 03 1a aa   mov	x1, x26
0x10043ea50:  bb 00 00 14   b	loc_10043ed3c ; ⤵ 0x2ec
0x10043ea54:  ; loc_10043ea54
0x10043ea54:  e8 03 17 aa   mov	x8, x23
0x10043ea58:  f7 03 00 aa   mov	x23, x0
0x10043ea5c:  f4 03 01 aa   mov	x20, x1
0x10043ea60:  a9 43 02 d1   sub	x9, fp, #0x90
0x10043ea64:  3c 01 10 f8   stur	x28, [x9, #-0x100]
0x10043ea68:  a9 43 01 d1   sub	x9, fp, #0x50
0x10043ea6c:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10043ea70:  a0 07 36 a9   stp	x0, x1, [fp, #-0xa0]
0x10043ea74:  4f 31 45 94   bl	j___objc_autoreleasePoolPush
0x10043ea78:  a8 63 02 d1   sub	x8, fp, #0x98
0x10043ea7c:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10043ea80:  e0 03 17 aa   mov	x0, x23
0x10043ea84:  e1 03 14 aa   mov	x1, x20
0x10043ea88:  db 68 ef 97   bl	0x100018df4
0x10043ea8c:  a8 23 02 d1   sub	x8, fp, #0x88
0x10043ea90:  a7 83 02 d1   sub	x7, fp, #0xa0
0x10043ea94:  a9 e3 01 d1   sub	x9, fp, #0x78
0x10043ea98:  20 01 50 f8   ldur	x0, [x9, #-0x100]
0x10043ea9c:  f3 03 00 aa   mov	x19, x0
0x10043eaa0:  a9 c3 01 d1   sub	x9, fp, #0x70
0x10043eaa4:  3c 01 50 f8   ldur	x28, [x9, #-0x100]
0x10043eaa8:  e1 03 1c aa   mov	x1, x28
0x10043eaac:  a9 23 02 d1   sub	x9, fp, #0x88
0x10043eab0:  3a 01 50 f8   ldur	x26, [x9, #-0x100]
0x10043eab4:  e2 03 1a aa   mov	x2, x26
0x10043eab8:  a9 03 02 d1   sub	x9, fp, #0x80
0x10043eabc:  39 01 50 f8   ldur	x25, [x9, #-0x100]
0x10043eac0:  e3 03 19 aa   mov	x3, x25
0x10043eac4:  e4 03 17 aa   mov	x4, x23
0x10043eac8:  e5 03 14 aa   mov	x5, x20
0x10043eacc:  26 00 80 52   mov	w6, #0x1
0x10043ead0:  b1 b7 1c 94   bl	0x100b6c994
0x10043ead4:  95 16 00 b4   cbz	x21, loc_10043eda4 ; ⤵ 0x2d0
0x10043ead8:  e0 03 17 aa   mov	x0, x23
0x10043eadc:  e1 03 14 aa   mov	x1, x20
0x10043eae0:  30 61 ef 97   bl	0x100016fa0
0x10043eae4:  a8 63 02 d1   sub	x8, fp, #0x98
0x10043eae8:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043eaec:  2d 31 45 94   bl	j___objc_autoreleasePoolPop
0x10043eaf0:  a8 63 00 d1   sub	x8, fp, #0x18
0x10043eaf4:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043eaf8:  da 32 45 94   bl	j__swift_bridgeObjectRelease
0x10043eafc:  e0 03 1a aa   mov	x0, x26
0x10043eb00:  e1 03 19 aa   mov	x1, x25
0x10043eb04:  27 61 ef 97   bl	0x100016fa0
0x10043eb08:  e0 03 13 aa   mov	x0, x19
0x10043eb0c:  e1 03 1c aa   mov	x1, x28
0x10043eb10:  24 61 ef 97   bl	0x100016fa0
0x10043eb14:  a8 43 02 d1   sub	x8, fp, #0x90
0x10043eb18:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043eb1c:  e1 03 1b aa   mov	x1, x27
0x10043eb20:  20 61 ef 97   bl	0x100016fa0
0x10043eb24:  a0 07 76 a9   ldp	x0, x1, [fp, #-0xa0]
0x10043eb28:  ; loc_10043eb28
0x10043eb28:  1e 61 ef 97   bl	0x100016fa0
0x10043eb2c:  a8 a3 00 d1   sub	x8, fp, #0x28
0x10043eb30:  1c 01 50 f8   ldur	x28, [x8, #-0x100]
0x10043eb34:  68 a7 00 b0   adrp	x8, 0x10192b000
0x10043eb38:  08 51 47 f9   ldr	x8, [x8, #0xea0] ; data_10192bea0 (__DATA.__data)
0x10043eb3c:  1f 05 00 b1   cmn	x8, #0x1
0x10043eb40:  a8 a3 01 d1   sub	x8, fp, #0x68
0x10043eb44:  1b 01 50 f8   ldur	x27, [x8, #-0x100]
0x10043eb48:  a8 23 00 d1   sub	x8, fp, #0x8
0x10043eb4c:  16 01 50 f8   ldur	x22, [x8, #-0x100]
0x10043eb50:  a8 03 01 d1   sub	x8, fp, #0x40
0x10043eb54:  18 01 50 f8   ldur	x24, [x8, #-0x100]
0x10043eb58:  a8 63 01 d1   sub	x8, fp, #0x58
0x10043eb5c:  14 01 50 f8   ldur	x20, [x8, #-0x100]
0x10043eb60:  81 19 00 54   b.ne	loc_10043ee90 ; ⤵ 0x330
0x10043eb64:  41 ae 00 90   adrp	x1, 0x101a06000
0x10043eb68:  21 60 33 91   add	x1, x1, #0xcd8
0x10043eb6c:  e0 03 18 aa   mov	x0, x24
0x10043eb70:  ca 23 ef 97   bl	0x100007a98
0x10043eb74:  e1 03 00 aa   mov	x1, x0
0x10043eb78:  a8 23 01 d1   sub	x8, fp, #0x48
0x10043eb7c:  1a 01 50 f8   ldur	x26, [x8, #-0x100]
0x10043eb80:  e8 03 1a aa   mov	x8, x26
0x10043eb84:  09 0d 41 f8   ldr	x9, [x8, #0x10]!
0x10043eb88:  e0 03 14 aa   mov	x0, x20
0x10043eb8c:  e2 03 18 aa   mov	x2, x24
0x10043eb90:  f1 03 08 aa   mov	x17, x8
0x10043eb94:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x10043eb98:  31 09 3f d7   blraa	x9, x17
0x10043eb9c:  e0 03 15 aa   mov	x0, x21
0x10043eba0:  34 33 45 94   bl	j__swift_errorRetain
0x10043eba4:  fb 23 45 94   bl	j__$s2os6LoggerV9logObjectSo03OS_a1_C0Cvg
0x10043eba8:  f3 03 00 aa   mov	x19, x0
0x10043ebac:  71 2a 45 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x10043ebb0:  f7 03 00 aa   mov	x23, x0
0x10043ebb4:  01 1c 00 12   and	w1, w0, #0xff
0x10043ebb8:  e0 03 13 aa   mov	x0, x19
0x10043ebbc:  15 32 45 94   bl	j__os_log_type_enabled
0x10043ebc0:  00 09 00 36   tbz	w0, #0, loc_10043ece0 ; ⤵ 0x120
0x10043ebc4:  80 01 80 52   mov	w0, #0xc
0x10043ebc8:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10043ebcc:  d5 33 45 94   bl	j__swift_slowAlloc
0x10043ebd0:  f6 03 00 aa   mov	x22, x0
0x10043ebd4:  00 04 80 52   mov	w0, #0x20
0x10043ebd8:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10043ebdc:  d1 33 45 94   bl	j__swift_slowAlloc
0x10043ebe0:  f8 03 00 aa   mov	x24, x0
0x10043ebe4:  a0 03 16 f8   stur	x0, [fp, #-0xa0]
0x10043ebe8:  68 8d 00 b0   adrp	x8, 0x1015eb000
0x10043ebec:  00 d1 46 fd   ldr	d0, [x8, #0xda0]
0x10043ebf0:  c0 02 00 bd   str	s0, [x22]
0x10043ebf4:  a1 a3 02 d1   sub	x1, fp, #0xa8
0x10043ebf8:  a2 03 03 d1   sub	x2, fp, #0xc0
0x10043ebfc:  e0 03 15 aa   mov	x0, x21
0x10043ec00:  38 33 45 94   bl	j__swift_getErrorValue
0x10043ec04:  b4 03 74 a9   ldp	x20, x0, [fp, #-0xc0]
0x10043ec08:  a1 03 55 f8   ldur	x1, [fp, #-0xb0]
0x10043ec0c:  f5 2e 45 94   bl	j__$ss5ErrorP10FoundationE20localizedDescriptionSSvg
0x10043ec10:  f4 03 01 aa   mov	x20, x1
0x10043ec14:  a2 83 02 d1   sub	x2, fp, #0xa0
0x10043ec18:  70 53 ef 97   bl	0x1000139d8
0x10043ec1c:  f9 03 00 aa   mov	x25, x0
0x10043ec20:  e0 03 14 aa   mov	x0, x20
0x10043ec24:  8f 32 45 94   bl	j__swift_bridgeObjectRelease
0x10043ec28:  d9 42 00 f8   stur	x25, [x22, #0x4]
0x10043ec2c:  e0 03 15 aa   mov	x0, x21
0x10043ec30:  0c 33 45 94   bl	j__swift_errorRelease
0x10043ec34:  00 de ff d0   adrp	x0, 0x100000000
0x10043ec38:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10043ec3c:  43 92 00 90   adrp	x3, 0x101686000
0x10043ec40:  63 80 14 91   add	x3, x3, #0x520 ; "offineFindingInfo error: %s"
0x10043ec44:  e2 1e 00 12   and	w2, w23, #0xff
0x10043ec48:  e1 03 13 aa   mov	x1, x19
0x10043ec4c:  e4 03 16 aa   mov	x4, x22
0x10043ec50:  85 01 80 52   mov	w5, #0xc
0x10043ec54:  df 30 45 94   bl	j___os_log_impl
0x10043ec58:  e0 03 18 aa   mov	x0, x24
0x10043ec5c:  b0 24 ef 97   bl	0x100007f1c
0x10043ec60:  e0 03 18 aa   mov	x0, x24
0x10043ec64:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10043ec68:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x10043ec6c:  b1 33 45 94   bl	j__swift_slowDealloc
0x10043ec70:  e0 03 16 aa   mov	x0, x22
0x10043ec74:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10043ec78:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x10043ec7c:  ad 33 45 94   bl	j__swift_slowDealloc
0x10043ec80:  a8 e3 00 d1   sub	x8, fp, #0x38
0x10043ec84:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043ec88:  e1 03 1c aa   mov	x1, x28
0x10043ec8c:  c5 60 ef 97   bl	0x100016fa0
0x10043ec90:  00 00 80 d2   mov	x0, #0
0x10043ec94:  01 00 fe d2   mov	x1, #0xf000000000000000
0x10043ec98:  cf 1e ef 97   bl	0x1000067d4
0x10043ec9c:  5d 31 45 94   bl	j__objc_release_x19
0x10043eca0:  e0 03 15 aa   mov	x0, x21
0x10043eca4:  ef 32 45 94   bl	j__swift_errorRelease
0x10043eca8:  48 8f 40 f8   ldr	x8, [x26, #0x8]!
0x10043ecac:  a9 63 01 d1   sub	x9, fp, #0x58
0x10043ecb0:  20 01 50 f8   ldur	x0, [x9, #-0x100]
0x10043ecb4:  a9 03 01 d1   sub	x9, fp, #0x40
0x10043ecb8:  21 01 50 f8   ldur	x1, [x9, #-0x100]
0x10043ecbc:  f1 03 1a aa   mov	x17, x26
0x10043ecc0:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10043ecc4:  11 09 3f d7   blraa	x8, x17
0x10043ecc8:  a8 c3 00 d1   sub	x8, fp, #0x30
0x10043eccc:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10043ecd0:  28 8d 40 f8   ldr	x8, [x9, #0x8]!
0x10043ecd4:  aa 23 00 d1   sub	x10, fp, #0x8
0x10043ecd8:  40 01 50 f8   ldur	x0, [x10, #-0x100]
0x10043ecdc:  17 00 00 14   b	loc_10043ed38 ; ⤵ 0x5c
0x10043ece0:  ; loc_10043ece0
0x10043ece0:  a8 e3 00 d1   sub	x8, fp, #0x38
0x10043ece4:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043ece8:  e1 03 1c aa   mov	x1, x28
0x10043ecec:  ad 60 ef 97   bl	0x100016fa0
0x10043ecf0:  00 00 80 d2   mov	x0, #0
0x10043ecf4:  01 00 fe d2   mov	x1, #0xf000000000000000
0x10043ecf8:  b7 1e ef 97   bl	0x1000067d4
0x10043ecfc:  45 31 45 94   bl	j__objc_release_x19
0x10043ed00:  e0 03 15 aa   mov	x0, x21
0x10043ed04:  d7 32 45 94   bl	j__swift_errorRelease
0x10043ed08:  e0 03 15 aa   mov	x0, x21
0x10043ed0c:  d5 32 45 94   bl	j__swift_errorRelease
0x10043ed10:  48 8f 40 f8   ldr	x8, [x26, #0x8]!
0x10043ed14:  e0 03 14 aa   mov	x0, x20
0x10043ed18:  e1 03 18 aa   mov	x1, x24
0x10043ed1c:  f1 03 1a aa   mov	x17, x26
0x10043ed20:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10043ed24:  11 09 3f d7   blraa	x8, x17
0x10043ed28:  a8 c3 00 d1   sub	x8, fp, #0x30
0x10043ed2c:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10043ed30:  28 8d 40 f8   ldr	x8, [x9, #0x8]!
0x10043ed34:  e0 03 16 aa   mov	x0, x22
0x10043ed38:  ; loc_10043ed38
0x10043ed38:  e1 03 1b aa   mov	x1, x27
0x10043ed3c:  ; loc_10043ed3c
0x10043ed3c:  f1 03 09 aa   mov	x17, x9
0x10043ed40:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10043ed44:  11 09 3f d7   blraa	x8, x17
0x10043ed48:  00 00 80 d2   mov	x0, #0
0x10043ed4c:  48 dd 21 94   bl	0x100cb626c
0x10043ed50:  e3 03 00 aa   mov	x3, x0
0x10043ed54:  e8 03 00 aa   mov	x8, x0
0x10043ed58:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x10043ed5c:  f1 03 08 aa   mov	x17, x8
0x10043ed60:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10043ed64:  30 1a c1 da   autda	x16, x17
0x10043ed68:  08 8e 43 f8   ldr	x8, [x16, #0x38]!
0x10043ed6c:  a9 83 00 d1   sub	x9, fp, #0x20
0x10043ed70:  20 01 50 f8   ldur	x0, [x9, #-0x100]
0x10043ed74:  21 00 80 52   mov	w1, #0x1
0x10043ed78:  22 00 80 52   mov	w2, #0x1
0x10043ed7c:  ; loc_10043ed7c
0x10043ed7c:  30 1a f4 f2   movk	x16, #0xa0d1, lsl #0x30
0x10043ed80:  10 09 3f d7   blraa	x8, x16
0x10043ed84:  bf 43 01 d1   sub	sp, fp, #0x50
0x10043ed88:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x10043ed8c:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x10043ed90:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x10043ed94:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x10043ed98:  fa 67 41 a9   ldp	x26, x25, [sp, #0x10]
0x10043ed9c:  fc 6f c6 a8   ldp	x28, x27, [sp], #0x60
0x10043eda0:  ff 0f 5f d6   retab
0x10043eda4:  ; loc_10043eda4
0x10043eda4:  00 00 80 d2   mov	x0, #0
0x10043eda8:  01 00 fe d2   mov	x1, #0xf000000000000000
0x10043edac:  8a 1e ef 97   bl	0x1000067d4
0x10043edb0:  e0 03 17 aa   mov	x0, x23
0x10043edb4:  e1 03 14 aa   mov	x1, x20
0x10043edb8:  7a 60 ef 97   bl	0x100016fa0
0x10043edbc:  a0 23 02 d1   sub	x0, fp, #0x88
0x10043edc0:  4b b0 00 94   bl	0x10046aeec
0x10043edc4:  b4 57 76 a9   ldp	x20, x21, [fp, #-0xa0]
0x10043edc8:  e0 03 14 aa   mov	x0, x20
0x10043edcc:  e1 03 15 aa   mov	x1, x21
0x10043edd0:  09 68 ef 97   bl	0x100018df4
0x10043edd4:  a8 63 02 d1   sub	x8, fp, #0x98
0x10043edd8:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043eddc:  71 30 45 94   bl	j___objc_autoreleasePoolPop
0x10043ede0:  e0 03 1a aa   mov	x0, x26
0x10043ede4:  e1 03 19 aa   mov	x1, x25
0x10043ede8:  6e 60 ef 97   bl	0x100016fa0
0x10043edec:  e0 03 13 aa   mov	x0, x19
0x10043edf0:  e1 03 1c aa   mov	x1, x28
0x10043edf4:  6b 60 ef 97   bl	0x100016fa0
0x10043edf8:  a8 43 02 d1   sub	x8, fp, #0x90
0x10043edfc:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10043ee00:  e1 03 1b aa   mov	x1, x27
0x10043ee04:  67 60 ef 97   bl	0x100016fa0
0x10043ee08:  e0 03 14 aa   mov	x0, x20
0x10043ee0c:  e1 03 15 aa   mov	x1, x21
0x10043ee10:  64 60 ef 97   bl	0x100016fa0
0x10043ee14:  a8 a3 01 d1   sub	x8, fp, #0x68
0x10043ee18:  1a 01 50 f8   ldur	x26, [x8, #-0x100]
0x10043ee1c:  a8 43 00 d1   sub	x8, fp, #0x10
0x10043ee20:  13 01 50 f8   ldur	x19, [x8, #-0x100]
0x10043ee24:  8d fd ff 17   b	loc_10043e458 ; ⤴ -0x9cc
0x10043ee28:  ; loc_10043ee28
0x10043ee28:  60 a7 00 f0   adrp	x0, 0x10192d000
0x10043ee2c:  00 40 39 91   add	x0, x0, #0xe50 ; data_10192de50 (__DATA.__data)
0x10043ee30:  50 22 00 d0   adrp	x16, 0x100888000
0x10043ee34:  10 b2 39 91   add	x16, x16, #0xe6c
0x10043ee38:  f0 23 c1 da   paciza	x16

