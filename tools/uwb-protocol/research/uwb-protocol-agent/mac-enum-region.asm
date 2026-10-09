0x100926200:  f4 03 00 aa   mov	x20, x0
0x100926204:  a1 00 00 94   bl	0x100926488
0x100926208:  e2 03 00 aa   mov	x2, x0
0x10092620c:  20 67 00 d0   adrp	x0, 0x10160c000
0x100926210:  00 80 07 91   add	x0, x0, #0x1e0
0x100926214:  e8 03 17 aa   mov	x8, x23
0x100926218:  e1 03 00 aa   mov	x1, x0
0x10092621c:  e3 03 1a aa   mov	x3, x26
0x100926220:  e4 03 1b aa   mov	x4, x27
0x100926224:  c2 37 28 94   bl	j__$ss7EncoderP9container7keyedBys22KeyedEncodingContainerVyqd__Gqd__m_ts9CodingKeyRd__lFTj
0x100926228:  bf 83 19 38   sturb	wzr, [fp, #-0x68]
0x10092622c:  00 00 80 d2   mov	x0, #0
0x100926230:  ff 23 28 94   bl	j__$s10Foundation4UUIDVMa
0x100926234:  f4 03 00 aa   mov	x20, x0
0x100926238:  e0 69 00 d0   adrp	x0, 0x101664000
0x10092623c:  00 40 0b 91   add	x0, x0, #0x2d0 ; data_1016642d0 (__DATA.__data)
0x100926240:  b0 65 00 d0   adrp	x16, 0x1015dc000
0x100926244:  10 56 47 f9   ldr	x16, [x16, #0xea8] ; __got._$s10Foundation4UUIDVMa
0x100926248:  51 8e 91 d2   mov	x17, #0x8c72
0x10092624c:  30 02 c1 da   pacia	x16, x17
0x100926250:  e1 03 10 aa   mov	x1, x16
0x100926254:  b0 65 00 d0   adrp	x16, 0x1015dc000
0x100926258:  10 5a 47 f9   ldr	x16, [x16, #0xeb0] ; __got._$s10Foundation4UUIDVSEAAMc
0x10092625c:  71 dd 98 d2   mov	x17, #0xc6eb
0x100926260:  30 0a c1 da   pacda	x16, x17
0x100926264:  e2 03 10 aa   mov	x2, x16
0x100926268:  8c 01 00 94   bl	0x100926898
0x10092626c:  e4 03 00 aa   mov	x4, x0
0x100926270:  a1 a3 01 d1   sub	x1, fp, #0x68
0x100926274:  e0 03 18 aa   mov	x0, x24
0x100926278:  e2 03 13 aa   mov	x2, x19
0x10092627c:  e3 03 14 aa   mov	x3, x20
0x100926280:  f4 03 17 aa   mov	x20, x23
0x100926284:  f5 03 19 aa   mov	x21, x25
0x100926288:  1d 36 28 94   bl	j__$ss22KeyedEncodingContainerV6encode_6forKeyyqd___xtKSERd__lF
0x10092628c:  f9 03 15 aa   mov	x25, x21
0x100926290:  55 09 00 b5   cbnz	x21, loc_1009263b8 ; ⤵ 0x128
0x100926294:  00 00 80 d2   mov	x0, #0
0x100926298:  64 00 00 94   bl	0x100926428
0x10092629c:  fa 03 00 aa   mov	x26, x0
0x1009262a0:  14 14 80 b9   ldrsw	x20, [x0, #0x14]
0x1009262a4:  28 00 80 52   mov	w8, #0x1
0x1009262a8:  a8 83 19 38   sturb	w8, [fp, #-0x68]
0x1009262ac:  e2 00 00 94   bl	0x100926634
0x1009262b0:  e4 03 00 aa   mov	x4, x0
0x1009262b4:  23 67 00 d0   adrp	x3, 0x10160c000
0x1009262b8:  63 c0 09 91   add	x3, x3, #0x270
0x1009262bc:  00 03 14 8b   add	x0, x24, x20
0x1009262c0:  a1 a3 01 d1   sub	x1, fp, #0x68
0x1009262c4:  e2 03 13 aa   mov	x2, x19
0x1009262c8:  f4 03 17 aa   mov	x20, x23
0x1009262cc:  f5 03 19 aa   mov	x21, x25
0x1009262d0:  0b 36 28 94   bl	j__$ss22KeyedEncodingContainerV6encode_6forKeyyqd___xtKSERd__lF
0x1009262d4:  f9 03 15 aa   mov	x25, x21
0x1009262d8:  15 07 00 b5   cbnz	x21, loc_1009263b8 ; ⤵ 0xe0
0x1009262dc:  48 1b 80 b9   ldrsw	x8, [x26, #0x18]
0x1009262e0:  00 03 08 8b   add	x0, x24, x8
0x1009262e4:  a1 a3 01 d1   sub	x1, fp, #0x68
0x1009262e8:  2b e0 db 97   bl	0x10001e394
0x1009262ec:  a0 a3 01 d1   sub	x0, fp, #0x68
0x1009262f0:  f5 03 19 aa   mov	x21, x25
0x1009262f4:  e5 00 00 94   bl	0x100926688
0x1009262f8:  f9 03 15 aa   mov	x25, x21
0x1009262fc:  f5 05 00 b5   cbnz	x21, loc_1009263b8 ; ⤵ 0xbc
0x100926300:  a0 83 19 f8   stur	x0, [fp, #-0x68]
0x100926304:  a1 03 1a 38   sturb	w1, [fp, #-0x60]
0x100926308:  28 20 08 53   ubfx	w8, w1, #0x8, #0x1
0x10092630c:  a8 13 1a 38   sturb	w8, [fp, #-0x5f]
0x100926310:  48 00 80 52   mov	w8, #0x2
0x100926314:  a8 73 19 38   sturb	w8, [fp, #-0x69]
0x100926318:  4b 01 00 94   bl	0x100926844
0x10092631c:  e4 03 00 aa   mov	x4, x0
0x100926320:  23 67 00 d0   adrp	x3, 0x10160c000
0x100926324:  63 00 05 91   add	x3, x3, #0x140 ; data_10160c140 (__DATA_CONST.__const)
0x100926328:  a0 a3 01 d1   sub	x0, fp, #0x68
0x10092632c:  a1 a7 01 d1   sub	x1, fp, #0x69
0x100926330:  e2 03 13 aa   mov	x2, x19
0x100926334:  f4 03 17 aa   mov	x20, x23
0x100926338:  f5 03 19 aa   mov	x21, x25
0x10092633c:  f0 35 28 94   bl	j__$ss22KeyedEncodingContainerV6encode_6forKeyyqd___xtKSERd__lF
0x100926340:  f9 03 15 aa   mov	x25, x21
0x100926344:  b5 03 00 b5   cbnz	x21, loc_1009263b8 ; ⤵ 0x74
0x100926348:  5a 1f 80 b9   ldrsw	x26, [x26, #0x1c]
0x10092634c:  68 00 80 52   mov	w8, #0x3
0x100926350:  a8 83 19 38   sturb	w8, [fp, #-0x68]
0x100926354:  00 00 80 d2   mov	x0, #0
0x100926358:  7d 23 28 94   bl	j__$s10Foundation4DateVMa
0x10092635c:  f4 03 00 aa   mov	x20, x0
0x100926360:  e0 69 00 d0   adrp	x0, 0x101664000
0x100926364:  00 80 0b 91   add	x0, x0, #0x2e0 ; data_1016642e0 (__DATA.__data)
0x100926368:  b0 65 00 d0   adrp	x16, 0x1015dc000
0x10092636c:  10 36 47 f9   ldr	x16, [x16, #0xe68] ; __got._$s10Foundation4DateVMa
0x100926370:  51 8e 91 d2   mov	x17, #0x8c72
0x100926374:  30 02 c1 da   pacia	x16, x17
0x100926378:  e1 03 10 aa   mov	x1, x16
0x10092637c:  b0 65 00 d0   adrp	x16, 0x1015dc000
0x100926380:  10 3a 47 f9   ldr	x16, [x16, #0xe70] ; __got._$s10Foundation4DateVSEAAMc
0x100926384:  71 dd 98 d2   mov	x17, #0xc6eb
0x100926388:  30 0a c1 da   pacda	x16, x17
0x10092638c:  e2 03 10 aa   mov	x2, x16
0x100926390:  42 01 00 94   bl	0x100926898
0x100926394:  e4 03 00 aa   mov	x4, x0
0x100926398:  00 03 1a 8b   add	x0, x24, x26
0x10092639c:  a1 a3 01 d1   sub	x1, fp, #0x68
0x1009263a0:  e2 03 13 aa   mov	x2, x19
0x1009263a4:  e3 03 14 aa   mov	x3, x20
0x1009263a8:  f4 03 17 aa   mov	x20, x23
0x1009263ac:  f5 03 19 aa   mov	x21, x25
0x1009263b0:  d3 35 28 94   bl	j__$ss22KeyedEncodingContainerV6encode_6forKeyyqd___xtKSERd__lF
0x1009263b4:  f9 03 15 aa   mov	x25, x21
0x1009263b8:  ; loc_1009263b8
0x1009263b8:  c8 8e 40 f8   ldr	x8, [x22, #0x8]!
0x1009263bc:  e0 03 17 aa   mov	x0, x23
0x1009263c0:  e1 03 13 aa   mov	x1, x19
0x1009263c4:  f1 03 16 aa   mov	x17, x22
0x1009263c8:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x1009263cc:  11 09 3f d7   blraa	x8, x17
0x1009263d0:  f5 03 19 aa   mov	x21, x25
0x1009263d4:  bf 03 01 d1   sub	sp, fp, #0x40
0x1009263d8:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x1009263dc:  f4 4f 43 a9   ldp	x20, x19, [sp, #0x30]
0x1009263e0:  f7 5b 42 a9   ldp	x23, x22, [sp, #0x20]
0x1009263e4:  f9 63 41 a9   ldp	x25, x24, [sp, #0x10]
0x1009263e8:  fb 6b c5 a8   ldp	x27, x26, [sp], #0x50
0x1009263ec:  ff 0f 5f d6   retab

sub_1009263f0:
0x1009263f0:  7f 23 03 d5   pacibsp
0x1009263f4:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x1009263f8:  fd 03 00 91   mov	fp, sp
0x1009263fc:  e6 fd ff 97   bl	0x100925b94
0x100926400:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x100926404:  ff 0f 5f d6   retab

sub_100926408:
0x100926408:  7f 23 03 d5   pacibsp
0x10092640c:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x100926410:  fd 03 00 91   mov	fp, sp
0x100926414:  4c ff ff 97   bl	0x100926144
0x100926418:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10092641c:  ff 0f 5f d6   retab

sub_100926420:
0x100926420:  80 02 40 39   ldrb	w0, [x20]
0x100926424:  16 fb ff 17   b	0x10092507c

sub_100926428:
0x100926428:  e8 03 00 aa   mov	x8, x0
0x10092642c:  a9 6a 00 f0   adrp	x9, 0x10167d000
0x100926430:  20 91 42 f9   ldr	x0, [x9, #0x520] ; data_10167d520 (__DATA.__data)
0x100926434:  60 00 00 b4   cbz	x0, loc_100926440 ; ⤵ 0xc
0x100926438:  01 00 80 d2   mov	x1, #0
0x10092643c:  c0 03 5f d6   ret
0x100926440:  ; loc_100926440
0x100926440:  7f 23 03 d5   pacibsp
0x100926444:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x100926448:  fd 03 00 91   mov	fp, sp
0x10092644c:  90 5a 00 b0   adrp	x16, 0x101477000
0x100926450:  10 12 01 91   add	x16, x16, #0x44 ; nominal type descriptor for KeySyncMetadata : _$ss23CustomStringConvertibleMp
0x100926454:  d1 d0 95 d2   mov	x17, #0xae86

