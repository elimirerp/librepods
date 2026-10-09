0x100bd419c:  1f 14 00 f1   cmp	x0, #0x5
0x100bd41a0:  a8 23 01 d1   sub	x8, fp, #0x48
0x100bd41a4:  14 01 10 f8   stur	x20, [x8, #-0x100]
0x100bd41a8:  08 01 00 54   b.hi	loc_100bd41c8 ; ⤵ 0x20
0x100bd41ac:  f4 03 17 aa   mov	x20, x23
0x100bd41b0:  5f 0b 00 71   cmp	w26, #0x2
0x100bd41b4:  80 01 00 54   b.eq	loc_100bd41e4 ; ⤵ 0x30
0x100bd41b8:  5f 07 00 71   cmp	w26, #0x1
0x100bd41bc:  81 01 00 54   b.ne	loc_100bd41ec ; ⤵ 0x30
0x100bd41c0:  01 ff 60 93   asr	x1, x24, #0x20
0x100bd41c4:  1b 00 00 14   b	loc_100bd4230 ; ⤵ 0x6c
0x100bd41c8:  ; loc_100bd41c8
0x100bd41c8:  c1 1a 00 b1   adds	x1, x22, #0x6
0x100bd41cc:  86 28 01 54   b.vs	loc_100bd66dc ; ⤵ 0x2510
0x100bd41d0:  5a 01 00 34   cbz	w26, loc_100bd41f8 ; ⤵ 0x28
0x100bd41d4:  5f 0b 00 71   cmp	w26, #0x2
0x100bd41d8:  61 01 00 54   b.ne	loc_100bd4204 ; ⤵ 0x2c
0x100bd41dc:  08 27 41 a9   ldp	x8, x9, [x24, #0x10]
0x100bd41e0:  0b 00 00 14   b	loc_100bd420c ; ⤵ 0x2c
0x100bd41e4:  ; loc_100bd41e4
0x100bd41e4:  01 0f 40 f9   ldr	x1, [x24, #0x18]
0x100bd41e8:  16 00 00 14   b	loc_100bd4240 ; ⤵ 0x58
0x100bd41ec:  ; loc_100bd41ec
0x100bd41ec:  00 00 80 d2   mov	x0, #0
0x100bd41f0:  61 df 70 d3   ubfx	x1, x27, #0x30, #0x8
0x100bd41f4:  16 00 00 14   b	loc_100bd424c ; ⤵ 0x58
0x100bd41f8:  ; loc_100bd41f8
0x100bd41f8:  08 00 80 d2   mov	x8, #0
0x100bd41fc:  69 df 70 d3   ubfx	x9, x27, #0x30, #0x8
0x100bd4200:  03 00 00 14   b	loc_100bd420c ; ⤵ 0xc
0x100bd4204:  ; loc_100bd4204
0x100bd4204:  08 7f 40 93   sxtw	x8, w24
0x100bd4208:  09 ff 60 93   asr	x9, x24, #0x20
0x100bd420c:  ; loc_100bd420c
0x100bd420c:  3f 01 01 eb   cmp	x9, x1
0x100bd4210:  ab 26 01 54   b.lt	loc_100bd66e4 ; ⤵ 0x24d4
0x100bd4214:  3f 00 08 eb   cmp	x1, x8
0x100bd4218:  6b 26 01 54   b.lt	loc_100bd66e4 ; ⤵ 0x24cc
0x100bd421c:  f4 03 17 aa   mov	x20, x23
0x100bd4220:  00 00 80 d2   mov	x0, #0
0x100bd4224:  5f 07 00 71   cmp	w26, #0x1
0x100bd4228:  8c 00 00 54   b.gt	loc_100bd4238 ; ⤵ 0x10
0x100bd422c:  da 00 00 34   cbz	w26, loc_100bd4244 ; ⤵ 0x18
0x100bd4230:  ; loc_100bd4230
0x100bd4230:  00 7f 40 93   sxtw	x0, w24
0x100bd4234:  04 00 00 14   b	loc_100bd4244 ; ⤵ 0x10
0x100bd4238:  ; loc_100bd4238
0x100bd4238:  5f 0f 00 71   cmp	w26, #0x3
0x100bd423c:  40 00 00 54   b.eq	loc_100bd4244 ; ⤵ 0x8
0x100bd4240:  ; loc_100bd4240
0x100bd4240:  00 0b 40 f9   ldr	x0, [x24, #0x10]
0x100bd4244:  ; loc_100bd4244
0x100bd4244:  3f 00 00 eb   cmp	x1, x0
0x100bd4248:  6b 24 01 54   b.lt	loc_100bd66d4 ; ⤵ 0x248c
0x100bd424c:  ; loc_100bd424c
0x100bd424c:  e2 03 18 aa   mov	x2, x24
0x100bd4250:  e3 03 1b aa   mov	x3, x27
0x100bd4254:  9f c4 26 94   bl	j__$s10Foundation4DataV15_RepresentationOyACSnySiGcig
0x100bd4258:  f6 03 00 aa   mov	x22, x0
0x100bd425c:  f9 03 01 aa   mov	x25, x1
0x100bd4260:  e0 03 18 aa   mov	x0, x24
0x100bd4264:  e1 03 1b aa   mov	x1, x27
0x100bd4268:  4e 0b d1 97   bl	0x100016fa0
0x100bd426c:  e0 03 18 aa   mov	x0, x24
0x100bd4270:  e1 03 1b aa   mov	x1, x27
0x100bd4274:  4b 0b d1 97   bl	0x100016fa0
0x100bd4278:  90 2b 00 f0   adrp	x16, 0x101147000
0x100bd427c:  10 82 00 91   add	x16, x16, #0x20
0x100bd4280:  d1 9a 87 d2   mov	x17, #0x3cd6
0x100bd4284:  30 02 c1 da   pacia	x16, x17
0x100bd4288:  fa 03 10 aa   mov	x26, x16
0x100bd428c:  a8 43 00 d1   sub	x8, fp, #0x10
0x100bd4290:  18 01 50 f8   ldur	x24, [x8, #-0x100]
0x100bd4294:  e0 03 18 aa   mov	x0, x24
0x100bd4298:  e1 03 10 aa   mov	x1, x16
0x100bd429c:  37 43 d1 97   bl	0x100024f78
0x100bd42a0:  a8 df 70 a9   ldp	x8, x23, [fp, #-0xf8]
0x100bd42a4:  fc 03 08 aa   mov	x28, x8
0x100bd42a8:  08 15 80 b9   ldrsw	x8, [x8, #0x14]
0x100bd42ac:  bb 03 56 f8   ldur	x27, [fp, #-0xa0]
0x100bd42b0:  69 1f 80 b9   ldrsw	x9, [x27, #0x1c]
0x100bd42b4:  aa 03 01 d1   sub	x10, fp, #0x40
0x100bd42b8:  4b 01 50 f8   ldur	x11, [x10, #-0x100]
0x100bd42bc:  6a 01 40 f9   ldr	x10, [x11]
0x100bd42c0:  ac 83 00 d1   sub	x12, fp, #0x20
0x100bd42c4:  93 01 50 f8   ldur	x19, [x12, #-0x100]
0x100bd42c8:  60 02 09 8b   add	x0, x19, x9
0x100bd42cc:  e1 02 08 8b   add	x1, x23, x8
0x100bd42d0:  a8 23 00 d1   sub	x8, fp, #0x8
0x100bd42d4:  02 01 50 f8   ldur	x2, [x8, #-0x100]
0x100bd42d8:  f1 03 0b aa   mov	x17, x11
0x100bd42dc:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x100bd42e0:  51 09 3f d7   blraa	x10, x17
0x100bd42e4:  76 66 00 a9   stp	x22, x25, [x19]
0x100bd42e8:  a8 23 01 d1   sub	x8, fp, #0x48
0x100bd42ec:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x100bd42f0:  68 52 01 a9   stp	x8, x20, [x19, #0x10]
0x100bd42f4:  e0 03 17 aa   mov	x0, x23
0x100bd42f8:  e1 03 1a aa   mov	x1, x26
0x100bd42fc:  1f 43 d1 97   bl	0x100024f78
0x100bd4300:  f0 e0 ff 90   adrp	x16, 0x1007f0000
0x100bd4304:  10 f2 18 91   add	x16, x16, #0x63c
0x100bd4308:  11 03 84 d2   mov	x17, #0x2018
0x100bd430c:  30 02 c1 da   pacia	x16, x17
0x100bd4310:  e2 03 10 aa   mov	x2, x16
0x100bd4314:  b4 83 55 f8   ldur	x20, [fp, #-0xa8]
0x100bd4318:  b6 83 51 f8   ldur	x22, [fp, #-0xe8]
0x100bd431c:  81 02 16 8b   add	x1, x20, x22
0x100bd4320:  e0 03 13 aa   mov	x0, x19
0x100bd4324:  d3 5b d1 97   bl	0x10002b270
0x100bd4328:  01 00 80 52   mov	w1, #0
0x100bd432c:  a8 63 00 d1   sub	x8, fp, #0x18
0x100bd4330:  1a 01 50 f8   ldur	x26, [x8, #-0x100]
0x100bd4334:  a9 03 54 f8   ldur	x9, [fp, #-0xc0]
0x100bd4338:  28 01 40 f9   ldr	x8, [x9]
0x100bd433c:  80 02 16 8b   add	x0, x20, x22
0x100bd4340:  22 00 80 52   mov	w2, #0x1
0x100bd4344:  e3 03 1b aa   mov	x3, x27
0x100bd4348:  f1 03 09 aa   mov	x17, x9
0x100bd434c:  31 1a f4 f2   movk	x17, #0xa0d1, lsl #0x30
0x100bd4350:  11 09 3f d7   blraa	x8, x17
0x100bd4354:  b4 83 5b f8   ldur	x20, [fp, #-0x48]
0x100bd4358:  e0 03 14 aa   mov	x0, x20
0x100bd435c:  c1 dd 26 94   bl	j__swift_isUniquelyReferenced_nonNull_native
0x100bd4360:  00 01 00 37   tbnz	w0, #0, loc_100bd4380 ; ⤵ 0x20
0x100bd4364:  88 0a 40 f9   ldr	x8, [x20, #0x10]
0x100bd4368:  01 05 00 91   add	x1, x8, #0x1
0x100bd436c:  b4 23 01 d1   sub	x20, fp, #0x48
0x100bd4370:  00 00 80 52   mov	w0, #0
0x100bd4374:  22 00 80 52   mov	w2, #0x1
0x100bd4378:  df d3 1d 94   bl	0x1013492f4
0x100bd437c:  b4 83 5b f8   ldur	x20, [fp, #-0x48]
0x100bd4380:  ; loc_100bd4380
0x100bd4380:  fb 03 1c aa   mov	x27, x28
0x100bd4384:  93 22 41 a9   ldp	x19, x8, [x20, #0x10]
0x100bd4388:  76 06 00 91   add	x22, x19, #0x1
0x100bd438c:  7f 06 48 eb   cmp	x19, x8, lsr #0x1
0x100bd4390:  bc 03 52 f8   ldur	x28, [fp, #-0xe0]
0x100bd4394:  c2 02 00 54   b.hs	loc_100bd43ec ; ⤵ 0x58
0x100bd4398:  ; loc_100bd4398
0x100bd4398:  9c 07 00 91   add	x28, x28, #0x1
0x100bd439c:  96 0a 00 f9   str	x22, [x20, #0x10]
0x100bd43a0:  aa 83 56 f8   ldur	x10, [fp, #-0x98]
0x100bd43a4:  48 41 41 39   ldrb	w8, [x10, #0x50]
0x100bd43a8:  09 81 00 91   add	x9, x8, #0x20
0x100bd43ac:  28 01 28 8a   bic	x8, x9, x8
0x100bd43b0:  88 02 08 8b   add	x8, x20, x8
0x100bd43b4:  49 25 40 f9   ldr	x9, [x10, #0x48]
0x100bd43b8:  21 21 13 9b   madd	x1, x9, x19, x8
0x100bd43bc:  a0 83 55 f8   ldur	x0, [fp, #-0xa8]
0x100bd43c0:  22 6b 00 90   adrp	x2, 0x101938000
0x100bd43c4:  42 80 18 91   add	x2, x2, #0x620 ; data_101938620 (__DATA.__data)
0x100bd43c8:  23 53 00 90   adrp	x3, 0x101638000
0x100bd43cc:  63 00 37 91   add	x3, x3, #0xdc0 ; "ا\t"
0x100bd43d0:  a5 ef d3 97   bl	0x1000d0264
0x100bd43d4:  a8 e3 00 d1   sub	x8, fp, #0x38
0x100bd43d8:  16 01 50 f8   ldur	x22, [x8, #-0x100]
0x100bd43dc:  df 02 1c eb   cmp	x22, x28
0x100bd43e0:  b3 83 52 f8   ldur	x19, [fp, #-0xd8]
0x100bd43e4:  61 d9 ff 54   b.ne	loc_100bd3f10 ; ⤴ -0x4d4
0x100bd43e8:  b8 01 00 14   b	loc_100bd4ac8 ; ⤵ 0x6e0
0x100bd43ec:  ; loc_100bd43ec
0x100bd43ec:  1f 05 00 f1   cmp	x8, #0x1
0x100bd43f0:  e0 97 9f 1a   cset	w0, hi
0x100bd43f4:  b4 23 01 d1   sub	x20, fp, #0x48
0x100bd43f8:  e1 03 16 aa   mov	x1, x22
0x100bd43fc:  22 00 80 52   mov	w2, #0x1
0x100bd4400:  bd d3 1d 94   bl	0x1013492f4
0x100bd4404:  b4 83 5b f8   ldur	x20, [fp, #-0x48]
0x100bd4408:  e4 ff ff 17   b	loc_100bd4398 ; ⤴ -0x70
0x100bd440c:  3f 09 00 71   cmp	w9, #0x2
0x100bd4410:  c1 cb ff 54   b.ne	loc_100bd3d88 ; ⤴ -0x688
0x100bd4414:  aa e3 01 d1   sub	x10, fp, #0x78
0x100bd4418:  49 01 10 b8   stur	w9, [x10, #-0x100]
0x100bd441c:  a9 c3 01 d1   sub	x9, fp, #0x70
0x100bd4420:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x100bd4424:  76 0a 40 f9   ldr	x22, [x19, #0x10]
0x100bd4428:  b6 35 00 b4   cbz	x22, loc_100bd4adc ; ⤵ 0x6b4
0x100bd442c:  88 65 00 d0   adrp	x8, 0x101886000
0x100bd4430:  08 71 47 f9   ldr	x8, [x8, #0xee0] ; __got.__swiftEmptyArrayStorage
0x100bd4434:  a8 03 18 f8   stur	x8, [fp, #-0x80]
0x100bd4438:  b4 03 02 d1   sub	x20, fp, #0x80
0x100bd443c:  e0 03 16 aa   mov	x0, x22
0x100bd4440:  9c e7 1a 94   bl	0x10128e2b0
0x100bd4444:  a8 e3 02 d1   sub	x8, fp, #0xb8
0x100bd4448:  0a 01 50 f8   ldur	x10, [x8, #-0x100]
0x100bd444c:  48 41 41 39   ldrb	w8, [x10, #0x50]
0x100bd4450:  09 81 00 91   add	x9, x8, #0x20
0x100bd4454:  28 01 28 8a   bic	x8, x9, x8
0x100bd4458:  77 02 08 8b   add	x23, x19, x8
0x100bd445c:  53 25 40 f9   ldr	x19, [x10, #0x48]
0x100bd4460:  b4 03 58 f8   ldur	x20, [fp, #-0x80]
0x100bd4464:  ; loc_100bd4464
0x100bd4464:  a8 03 57 f8   ldur	x8, [fp, #-0x90]
0x100bd4468:  18 31 80 b9   ldrsw	x24, [x8, #0x30]
0x100bd446c:  f0 e0 ff 90   adrp	x16, 0x1007f0000
0x100bd4470:  10 f2 18 91   add	x16, x16, #0x63c
0x100bd4474:  f1 9d 90 d2   mov	x17, #0x84ef
0x100bd4478:  30 02 c1 da   pacia	x16, x17
0x100bd447c:  e2 03 10 aa   mov	x2, x16
0x100bd4480:  81 03 18 8b   add	x1, x28, x24
0x100bd4484:  e0 03 17 aa   mov	x0, x23
0x100bd4488:  48 42 d1 97   bl	0x100024da8
0x100bd448c:  a9 83 54 f8   ldur	x9, [fp, #-0xb8]
0x100bd4490:  28 01 40 f9   ldr	x8, [x9]
0x100bd4494:  e0 03 1c aa   mov	x0, x28
0x100bd4498:  21 00 80 52   mov	w1, #0x1
0x100bd449c:  22 00 80 52   mov	w2, #0x1
0x100bd44a0:  e3 03 1b aa   mov	x3, x27
0x100bd44a4:  f1 03 09 aa   mov	x17, x9
0x100bd44a8:  31 1a f4 f2   movk	x17, #0xa0d1, lsl #0x30
0x100bd44ac:  11 09 3f d7   blraa	x8, x17
0x100bd44b0:  a9 03 54 f8   ldur	x9, [fp, #-0xc0]
0x100bd44b4:  28 01 40 f9   ldr	x8, [x9]
0x100bd44b8:  80 03 18 8b   add	x0, x28, x24
0x100bd44bc:  01 00 80 52   mov	w1, #0
0x100bd44c0:  22 00 80 52   mov	w2, #0x1
0x100bd44c4:  a3 03 56 f8   ldur	x3, [fp, #-0xa0]
0x100bd44c8:  f1 03 09 aa   mov	x17, x9
0x100bd44cc:  31 1a f4 f2   movk	x17, #0xa0d1, lsl #0x30
0x100bd44d0:  11 09 3f d7   blraa	x8, x17
0x100bd44d4:  e0 03 14 aa   mov	x0, x20
0x100bd44d8:  62 dd 26 94   bl	j__swift_isUniquelyReferenced_nonNull_native
0x100bd44dc:  00 01 00 37   tbnz	w0, #0, loc_100bd44fc ; ⤵ 0x20
0x100bd44e0:  88 0a 40 f9   ldr	x8, [x20, #0x10]
0x100bd44e4:  01 05 00 91   add	x1, x8, #0x1
0x100bd44e8:  b4 03 02 d1   sub	x20, fp, #0x80
0x100bd44ec:  00 00 80 52   mov	w0, #0
0x100bd44f0:  22 00 80 52   mov	w2, #0x1
0x100bd44f4:  80 d3 1d 94   bl	0x1013492f4
0x100bd44f8:  b4 03 58 f8   ldur	x20, [fp, #-0x80]
0x100bd44fc:  ; loc_100bd44fc
0x100bd44fc:  99 22 41 a9   ldp	x25, x8, [x20, #0x10]
0x100bd4500:  38 07 00 91   add	x24, x25, #0x1
0x100bd4504:  3f 07 48 eb   cmp	x25, x8, lsr #0x1
0x100bd4508:  62 02 00 54   b.hs	loc_100bd4554 ; ⤵ 0x4c
0x100bd450c:  ; loc_100bd450c
0x100bd450c:  98 0a 00 f9   str	x24, [x20, #0x10]
0x100bd4510:  aa 83 56 f8   ldur	x10, [fp, #-0x98]
0x100bd4514:  48 41 41 39   ldrb	w8, [x10, #0x50]
0x100bd4518:  09 81 00 91   add	x9, x8, #0x20
0x100bd451c:  28 01 28 8a   bic	x8, x9, x8
0x100bd4520:  88 02 08 8b   add	x8, x20, x8
0x100bd4524:  49 25 40 f9   ldr	x9, [x10, #0x48]
0x100bd4528:  21 21 19 9b   madd	x1, x9, x25, x8
0x100bd452c:  e0 03 1c aa   mov	x0, x28
0x100bd4530:  22 6b 00 90   adrp	x2, 0x101938000
0x100bd4534:  42 80 18 91   add	x2, x2, #0x620 ; data_101938620 (__DATA.__data)
0x100bd4538:  23 53 00 90   adrp	x3, 0x101638000
0x100bd453c:  63 00 37 91   add	x3, x3, #0xdc0 ; "ا\t"
0x100bd4540:  49 ef d3 97   bl	0x1000d0264
0x100bd4544:  f7 02 13 8b   add	x23, x23, x19
0x100bd4548:  d6 06 00 f1   subs	x22, x22, #0x1
0x100bd454c:  c1 f8 ff 54   b.ne	loc_100bd4464 ; ⤴ -0xe8
0x100bd4550:  68 01 00 14   b	loc_100bd4af0 ; ⤵ 0x5a0
0x100bd4554:  ; loc_100bd4554
0x100bd4554:  1f 05 00 f1   cmp	x8, #0x1
0x100bd4558:  e0 97 9f 1a   cset	w0, hi
0x100bd455c:  b4 03 02 d1   sub	x20, fp, #0x80
0x100bd4560:  e1 03 18 aa   mov	x1, x24
0x100bd4564:  22 00 80 52   mov	w2, #0x1
0x100bd4568:  63 d3 1d 94   bl	0x1013492f4
0x100bd456c:  b4 03 58 f8   ldur	x20, [fp, #-0x80]
0x100bd4570:  e7 ff ff 17   b	loc_100bd450c ; ⤴ -0x64
0x100bd4574:  76 0a 40 f9   ldr	x22, [x19, #0x10]
0x100bd4578:  36 2b 00 b4   cbz	x22, loc_100bd4adc ; ⤵ 0x564
0x100bd457c:  88 65 00 d0   adrp	x8, 0x101886000
0x100bd4580:  08 71 47 f9   ldr	x8, [x8, #0xee0] ; __got.__swiftEmptyArrayStorage
0x100bd4584:  a8 83 1b f8   stur	x8, [fp, #-0x48]
0x100bd4588:  b4 23 01 d1   sub	x20, fp, #0x48
0x100bd458c:  e0 03 16 aa   mov	x0, x22
0x100bd4590:  48 e7 1a 94   bl	0x10128e2b0
0x100bd4594:  1c 00 80 d2   mov	x28, #0
0x100bd4598:  a8 03 53 f8   ldur	x8, [fp, #-0xd0]
0x100bd459c:  08 41 41 39   ldrb	w8, [x8, #0x50]
0x100bd45a0:  09 81 00 91   add	x9, x8, #0x20
0x100bd45a4:  28 01 28 8a   bic	x8, x9, x8
0x100bd45a8:  68 02 08 8b   add	x8, x19, x8
0x100bd45ac:  a8 83 11 f8   stur	x8, [fp, #-0xe8]
0x100bd45b0:  a8 c3 00 d1   sub	x8, fp, #0x30
0x100bd45b4:  16 01 10 f8   stur	x22, [x8, #-0x100]
0x100bd45b8:  68 0a 40 f9   ldr	x8, [x19, #0x10]
0x100bd45bc:  9f 03 08 eb   cmp	x28, x8
0x100bd45c0:  62 08 01 54   b.hs	loc_100bd66cc ; ⤵ 0x210c
0x100bd45c4:  b6 03 53 f8   ldur	x22, [fp, #-0xd0]
0x100bd45c8:  c8 26 40 f9   ldr	x8, [x22, #0x48]
0x100bd45cc:  a9 83 51 f8   ldur	x9, [fp, #-0xe8]
0x100bd45d0:  00 25 1c 9b   madd	x0, x8, x28, x9
0x100bd45d4:  90 2b 00 f0   adrp	x16, 0x101147000
0x100bd45d8:  10 82 00 91   add	x16, x16, #0x20
0x100bd45dc:  f1 9d 90 d2   mov	x17, #0x84ef
0x100bd45e0:  30 02 c1 da   pacia	x16, x17
0x100bd45e4:  f4 03 10 aa   mov	x20, x16
0x100bd45e8:  b3 03 50 f8   ldur	x19, [fp, #-0x100]
0x100bd45ec:  e1 03 13 aa   mov	x1, x19
0x100bd45f0:  e2 03 10 aa   mov	x2, x16
0x100bd45f4:  ed 41 d1 97   bl	0x100024da8
0x100bd45f8:  a8 03 57 f8   ldur	x8, [fp, #-0x90]
0x100bd45fc:  08 31 80 b9   ldrsw	x8, [x8, #0x30]
0x100bd4600:  a8 03 12 f8   stur	x8, [fp, #-0xe0]
0x100bd4604:  e0 03 13 aa   mov	x0, x19
0x100bd4608:  b9 03 55 f8   ldur	x25, [fp, #-0xb0]
0x100bd460c:  e1 03 19 aa   mov	x1, x25
0x100bd4610:  e2 03 14 aa   mov	x2, x20
0x100bd4614:  e5 41 d1 97   bl	0x100024da8
0x100bd4618:  c8 1e 40 f9   ldr	x8, [x22, #0x38]
0x100bd461c:  e0 03 19 aa   mov	x0, x25
0x100bd4620:  01 00 80 52   mov	w1, #0
0x100bd4624:  22 00 80 52   mov	w2, #0x1
0x100bd4628:  e3 03 1b aa   mov	x3, x27
0x100bd462c:  a9 83 54 f8   ldur	x9, [fp, #-0xb8]
0x100bd4630:  f1 03 09 aa   mov	x17, x9
0x100bd4634:  31 1a f4 f2   movk	x17, #0xa0d1, lsl #0x30
0x100bd4638:  11 09 3f d7   blraa	x8, x17
0x100bd463c:  e0 03 13 aa   mov	x0, x19
0x100bd4640:  e1 03 1a aa   mov	x1, x26
0x100bd4644:  e2 03 14 aa   mov	x2, x20
0x100bd4648:  d8 41 d1 97   bl	0x100024da8
0x100bd464c:  68 1b 80 b9   ldrsw	x8, [x27, #0x18]
0x100bd4650:  59 03 08 8b   add	x25, x26, x8
0x100bd4654:  34 07 40 f9   ldr	x20, [x25, #0x8]
0x100bd4658:  88 fe 7c d3   lsr	x8, x20, #0x3c
0x100bd465c:  1f 3d 00 f1   cmp	x8, #0xf
0x100bd4660:  43 02 00 54   b.lo	loc_100bd46a8 ; ⤵ 0x48
0x100bd4664:  90 2b 00 f0   adrp	x16, 0x101147000
0x100bd4668:  10 82 00 91   add	x16, x16, #0x20
0x100bd466c:  d1 9a 87 d2   mov	x17, #0x3cd6
0x100bd4670:  30 02 c1 da   pacia	x16, x17
0x100bd4674:  f4 03 10 aa   mov	x20, x16
0x100bd4678:  e0 03 13 aa   mov	x0, x19
0x100bd467c:  e1 03 10 aa   mov	x1, x16
0x100bd4680:  3e 42 d1 97   bl	0x100024f78
0x100bd4684:  f6 03 1a aa   mov	x22, x26
0x100bd4688:  e0 03 1a aa   mov	x0, x26
0x100bd468c:  e1 03 14 aa   mov	x1, x20
0x100bd4690:  3a 42 d1 97   bl	0x100024f78
0x100bd4694:  21 00 80 52   mov	w1, #0x1
0x100bd4698:  b4 03 55 f8   ldur	x20, [fp, #-0xb0]
0x100bd469c:  ba 03 56 f8   ldur	x26, [fp, #-0xa0]
0x100bd46a0:  b9 03 52 f8   ldur	x25, [fp, #-0xe0]
0x100bd46a4:  d4 00 00 14   b	loc_100bd49f4 ; ⤵ 0x350
0x100bd46a8:  ; loc_100bd46a8
0x100bd46a8:  36 03 40 f9   ldr	x22, [x25]
0x100bd46ac:  60 ec 8d d2   mov	x0, #0x6f63
0x100bd46b0:  c0 cd ad f2   movk	x0, #0x6e6e, lsl #0x10
0x100bd46b4:  a0 6c cc f2   movk	x0, #0x6365, lsl #0x20
0x100bd46b8:  80 0e e0 f2   movk	x0, #0x74, lsl #0x30
0x100bd46bc:  01 e0 fc d2   mov	x1, #0xe700000000000000
0x100bd46c0:  0c d1 26 94   bl	j__$sSS10FindMyBaseE8utf8Data10Foundation0E0Vvg
0x100bd46c4:  fb 03 00 aa   mov	x27, x0
0x100bd46c8:  f8 03 01 aa   mov	x24, x1
0x100bd46cc:  e0 03 16 aa   mov	x0, x22
0x100bd46d0:  e1 03 14 aa   mov	x1, x20
0x100bd46d4:  e2 03 1b aa   mov	x2, x27
0x100bd46d8:  e3 03 18 aa   mov	x3, x24
0x100bd46dc:  04 04 80 52   mov	w4, #0x20
0x100bd46e0:  b5 83 53 f8   ldur	x21, [fp, #-0xc8]
0x100bd46e4:  d5 71 fe 97   bl	0x100b70e38
0x100bd46e8:  f6 03 15 aa   mov	x22, x21
0x100bd46ec:  35 2f 01 b5   cbnz	x21, loc_100bd6cd0 ; ⤵ 0x25e4
0x100bd46f0:  f7 03 00 aa   mov	x23, x0
0x100bd46f4:  f4 03 01 aa   mov	x20, x1
0x100bd46f8:  28 fc 7e d3   lsr	x8, x1, #0x3e
0x100bd46fc:  1f 05 00 71   cmp	w8, #0x1
0x100bd4700:  a9 a3 00 d1   sub	x9, fp, #0x28
0x100bd4704:  33 01 50 f8   ldur	x19, [x9, #-0x100]
0x100bd4708:  8c 00 00 54   b.gt	loc_100bd4718 ; ⤵ 0x10
0x100bd470c:  28 01 00 35   cbnz	w8, loc_100bd4730 ; ⤵ 0x24
0x100bd4710:  89 de 70 d3   ubfx	x9, x20, #0x30, #0x8
0x100bd4714:  0b 00 00 14   b	loc_100bd4740 ; ⤵ 0x2c
0x100bd4718:  ; loc_100bd4718
0x100bd4718:  1f 09 00 71   cmp	w8, #0x2
0x100bd471c:  61 29 01 54   b.ne	loc_100bd6c48 ; ⤵ 0x252c
0x100bd4720:  ea 26 41 a9   ldp	x10, x9, [x23, #0x10]
0x100bd4724:  29 01 0a eb   subs	x9, x9, x10
0x100bd4728:  c7 00 00 54   b.vc	loc_100bd4740 ; ⤵ 0x18
0x100bd472c:  f0 07 00 14   b	loc_100bd66ec ; ⤵ 0x1fc0
0x100bd4730:  ; loc_100bd4730
0x100bd4730:  e9 fe 60 d3   lsr	x9, x23, #0x20
0x100bd4734:  29 01 17 6b   subs	w9, w9, w23
0x100bd4738:  06 fe 00 54   b.vs	loc_100bd66f8 ; ⤵ 0x1fc0
0x100bd473c:  29 7d 40 93   sxtw	x9, w9
0x100bd4740:  ; loc_100bd4740
0x100bd4740:  3f 81 00 f1   cmp	x9, #0x20
0x100bd4744:  c1 06 01 54   b.ne	loc_100bd681c ; ⤵ 0x20d8
0x100bd4748:  e0 03 1b aa   mov	x0, x27
0x100bd474c:  e1 03 18 aa   mov	x1, x24
0x100bd4750:  14 0a d1 97   bl	0x100016fa0
0x100bd4754:  58 03 40 f9   ldr	x24, [x26]
0x100bd4758:  a8 68 00 d0   adrp	x8, 0x1018ea000
0x100bd475c:  08 81 2b 91   add	x8, x8, #0xae0 ; data_1018eaae0 (__DATA_CONST.__const)
0x100bd4760:  68 1e 00 f9   str	x8, [x19, #0x38]
0x100bd4764:  3f 5f d1 97   bl	0x10002c460
0x100bd4768:  60 22 00 f9   str	x0, [x19, #0x40]
0x100bd476c:  78 12 00 f9   str	x24, [x19, #0x20]
0x100bd4770:  20 07 41 a9   ldp	x0, x1, [x25, #0x10]
0x100bd4774:  02 00 80 52   mov	w2, #0
0x100bd4778:  03 00 80 52   mov	w3, #0
0x100bd477c:  f5 03 16 aa   mov	x21, x22
0x100bd4780:  35 75 fe 97   bl	0x100b71c54
0x100bd4784:  75 16 01 b5   cbnz	x21, loc_100bd6a50 ; ⤵ 0x22cc
0x100bd4788:  f6 03 00 aa   mov	x22, x0
0x100bd478c:  01 00 80 52   mov	w1, #0
0x100bd4790:  42 00 80 52   mov	w2, #0x2
0x100bd4794:  f8 67 fe 97   bl	0x100b6e774
0x100bd4798:  b5 83 13 f8   stur	x21, [fp, #-0xc8]
0x100bd479c:  d5 15 01 b5   cbnz	x21, loc_100bd6a54 ; ⤵ 0x22b8
0x100bd47a0:  f8 03 00 aa   mov	x24, x0
0x100bd47a4:  fb 03 01 aa   mov	x27, x1
0x100bd47a8:  e0 03 16 aa   mov	x0, x22
0x100bd47ac:  41 d9 26 94   bl	j__CCECCryptorRelease
0x100bd47b0:  7a ff 7e d3   lsr	x26, x27, #0x3e
0x100bd47b4:  5f 07 00 71   cmp	w26, #0x1
0x100bd47b8:  8c 00 00 54   b.gt	loc_100bd47c8 ; ⤵ 0x10
0x100bd47bc:  3a 01 00 35   cbnz	w26, loc_100bd47e0 ; ⤵ 0x24
0x100bd47c0:  68 df 70 d3   ubfx	x8, x27, #0x30, #0x8
0x100bd47c4:  0b 00 00 14   b	loc_100bd47f0 ; ⤵ 0x2c
0x100bd47c8:  ; loc_100bd47c8
0x100bd47c8:  5f 0b 00 71   cmp	w26, #0x2
0x100bd47cc:  a1 21 01 54   b.ne	loc_100bd6c00 ; ⤵ 0x2434
0x100bd47d0:  09 23 41 a9   ldp	x9, x8, [x24, #0x10]
0x100bd47d4:  08 01 09 eb   subs	x8, x8, x9
0x100bd47d8:  c7 00 00 54   b.vc	loc_100bd47f0 ; ⤵ 0x18

