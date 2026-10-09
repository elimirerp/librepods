
sub_1009661d4:
0x1009661d4:  7f 23 03 d5   pacibsp
0x1009661d8:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1009661dc:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1009661e0:  fd 43 00 91   add	fp, sp, #0x10
0x1009661e4:  f3 03 01 aa   mov	x19, x1
0x1009661e8:  f4 03 00 aa   mov	x20, x0
0x1009661ec:  00 00 80 d2   mov	x0, #0
0x1009661f0:  52 fc ff 97   bl	0x100965338
0x1009661f4:  e2 03 00 aa   mov	x2, x0
0x1009661f8:  e8 03 00 aa   mov	x8, x0
0x1009661fc:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x100966200:  f1 03 08 aa   mov	x17, x8
0x100966204:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100966208:  30 1a c1 da   autda	x16, x17
0x10096620c:  08 0e 42 f8   ldr	x8, [x16, #0x20]!
0x100966210:  e0 03 13 aa   mov	x0, x19
0x100966214:  e1 03 14 aa   mov	x1, x20
0x100966218:  10 1b e9 f2   movk	x16, #0x48d8, lsl #0x30
0x10096621c:  10 09 3f d7   blraa	x8, x16
0x100966220:  e0 03 13 aa   mov	x0, x19
0x100966224:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x100966228:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10096622c:  ff 0f 5f d6   retab

sub_100966230:
0x100966230:  7f 23 03 d5   pacibsp
0x100966234:  e9 23 bc 6d   stp	d9, d8, [sp, #-0x40]!
0x100966238:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x10096623c:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x100966240:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x100966244:  fd c3 00 91   add	fp, sp, #0x30
0x100966248:  80 1a 40 f9   ldr	x0, [x20, #0x30]
0x10096624c:  60 00 00 b4   cbz	x0, loc_100966258 ; ⤵ 0xc
0x100966250:  f3 03 00 aa   mov	x19, x0
0x100966254:  31 00 00 14   b	loc_100966318 ; ⤵ 0xc4
0x100966258:  ; loc_100966258
0x100966258:  c8 62 00 f0   adrp	x8, 0x1015c1000
0x10096625c:  08 01 00 91   add	x8, x8, #0 ; "WildModeAssociation"
0x100966260:  08 81 00 d1   sub	x8, x8, #0x20
0x100966264:  16 01 41 b2   orr	x22, x8, #0x8000000000000000
0x100966268:  88 a6 41 6d   ldp	d8, d9, [x20, #0x18]
0x10096626c:  80 7a 00 b0   adrp	x0, 0x1018b7000
0x100966270:  00 00 05 91   add	x0, x0, #0x140 ; data_1018b7140 (__DATA_CONST.__const)
0x100966274:  01 03 80 52   mov	w1, #0x18
0x100966278:  e2 00 80 52   mov	w2, #0x7
0x10096627c:  cd 94 30 94   bl	j__swift_allocObject
0x100966280:  f5 03 00 aa   mov	x21, x0
0x100966284:  00 40 00 91   add	x0, x0, #0x10
0x100966288:  e1 03 14 aa   mov	x1, x20
0x10096628c:  a1 96 30 94   bl	j__swift_weakInit
0x100966290:  00 00 80 d2   mov	x0, #0
0x100966294:  03 32 fa 97   bl	0x1007f2aa0
0x100966298:  01 0a 80 52   mov	w1, #0x50
0x10096629c:  e2 00 80 52   mov	w2, #0x7
0x1009662a0:  c4 94 30 94   bl	j__swift_allocObject
0x1009662a4:  f3 03 00 aa   mov	x19, x0
0x1009662a8:  15 7c 04 a9   stp	x21, xzr, [x0, #0x40]
0x1009662ac:  68 02 80 d2   mov	x8, #0x13
0x1009662b0:  08 00 fa f2   movk	x8, #0xd000, lsl #0x30
0x1009662b4:  08 58 01 a9   stp	x8, x22, [x0, #0x10]
0x1009662b8:  08 fe e7 d2   mov	x8, #0x3ff0000000000000
0x1009662bc:  08 10 00 f9   str	x8, [x0, #0x20]
0x1009662c0:  08 a4 02 6d   stp	d8, d9, [x0, #0x28]
0x1009662c4:  10 00 00 b0   adrp	x16, 0x100967000
0x1009662c8:  10 c2 17 91   add	x16, x16, #0x5f0
0x1009662cc:  11 e1 81 d2   mov	x17, #0xf08
0x1009662d0:  30 02 c1 da   pacia	x16, x17
0x1009662d4:  10 1c 00 f9   str	x16, [x0, #0x38]
0x1009662d8:  e0 03 15 aa   mov	x0, x21
0x1009662dc:  41 00 80 52   mov	w1, #0x2
0x1009662e0:  04 96 30 94   bl	j__swift_retain_n
0x1009662e4:  f6 03 14 aa   mov	x22, x20
0x1009662e8:  f4 03 13 aa   mov	x20, x19
0x1009662ec:  73 31 fa 97   bl	0x1007f28b8
0x1009662f0:  e0 03 15 aa   mov	x0, x21
0x1009662f4:  41 00 80 52   mov	w1, #0x2
0x1009662f8:  f6 95 30 94   bl	j__swift_release_n
0x1009662fc:  d4 1a 40 f9   ldr	x20, [x22, #0x30]
0x100966300:  d3 1a 00 f9   str	x19, [x22, #0x30]
0x100966304:  e0 03 13 aa   mov	x0, x19
0x100966308:  f6 95 30 94   bl	j__swift_retain
0x10096630c:  e0 03 14 aa   mov	x0, x20
0x100966310:  ec 95 30 94   bl	j__swift_release
0x100966314:  00 00 80 d2   mov	x0, #0
0x100966318:  ; loc_100966318
0x100966318:  f2 95 30 94   bl	j__swift_retain
0x10096631c:  e0 03 13 aa   mov	x0, x19
0x100966320:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x100966324:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x100966328:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x10096632c:  e9 23 c4 6c   ldp	d9, d8, [sp], #0x40
0x100966330:  ff 0f 5f d6   retab

sub_100966334:
0x100966334:  7f 23 03 d5   pacibsp
0x100966338:  ff 03 01 d1   sub	sp, sp, #0x40
0x10096633c:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x100966340:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x100966344:  fd c3 00 91   add	fp, sp, #0x30
0x100966348:  f3 03 00 aa   mov	x19, x0
0x10096634c:  00 40 00 91   add	x0, x0, #0x10
0x100966350:  e1 23 00 91   add	x1, sp, #0x8
0x100966354:  02 00 80 d2   mov	x2, #0
0x100966358:  03 00 80 d2   mov	x3, #0
0x10096635c:  bd 94 30 94   bl	j__swift_beginAccess
0x100966360:  60 42 00 91   add	x0, x19, #0x10
0x100966364:  6f 96 30 94   bl	j__swift_weakLoadStrong
0x100966368:  a0 00 00 b4   cbz	x0, loc_10096637c ; ⤵ 0x14
0x10096636c:  f4 03 00 aa   mov	x20, x0
0x100966370:  64 00 00 94   bl	0x100966500
0x100966374:  e0 03 14 aa   mov	x0, x20
0x100966378:  d2 95 30 94   bl	j__swift_release
0x10096637c:  ; loc_10096637c
0x10096637c:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x100966380:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x100966384:  ff 03 01 91   add	sp, sp, #0x40
0x100966388:  ff 0f 5f d6   retab

sub_10096638c:
0x10096638c:  7f 23 03 d5   pacibsp
0x100966390:  ff 83 01 d1   sub	sp, sp, #0x60
0x100966394:  e9 23 01 6d   stp	d9, d8, [sp, #0x10]
0x100966398:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x10096639c:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x1009663a0:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x1009663a4:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x1009663a8:  fd 43 01 91   add	fp, sp, #0x50
0x1009663ac:  f3 03 14 aa   mov	x19, x20
0x1009663b0:  f6 03 00 aa   mov	x22, x0
0x1009663b4:  28 7e 00 f0   adrp	x8, 0x10192d000
0x1009663b8:  08 29 47 f9   ldr	x8, [x8, #0xe50] ; data_10192de50 (__DATA.__data)
0x1009663bc:  1f 05 00 b1   cmn	x8, #0x1
0x1009663c0:  01 09 00 54   b.ne	loc_1009664e0 ; ⤵ 0x120
0x1009663c4:  ; loc_1009663c4
0x1009663c4:  08 85 00 90   adrp	x8, 0x101a06000
0x1009663c8:  17 e1 47 f9   ldr	x23, [x8, #0xfc0]
0x1009663cc:  f4 16 40 f9   ldr	x20, [x23, #0x28]
0x1009663d0:  f8 7b 00 d0   adrp	x24, 0x1018e4000
0x1009663d4:  18 63 2a 91   add	x24, x24, #0xa98 ; data_1018e4a98 (__DATA_CONST.__const)
0x1009663d8:  50 b5 ff f0   adrp	x16, 0x100011000
0x1009663dc:  10 02 02 91   add	x16, x16, #0x80
0x1009663e0:  f1 41 8e d2   mov	x17, #0x720f
0x1009663e4:  30 02 c1 da   pacia	x16, x17
0x1009663e8:  e0 03 10 aa   mov	x0, x16
0x1009663ec:  e8 23 00 91   add	x8, sp, #0x8
0x1009663f0:  e1 03 17 aa   mov	x1, x23
0x1009663f4:  e2 03 18 aa   mov	x2, x24
0x1009663f8:  15 00 80 d2   mov	x21, #0
0x1009663fc:  c5 8c 30 94   bl	j__$sSo17OS_dispatch_queueC8DispatchE4sync7executexxyKXE_tKlF
0x100966400:  f4 07 40 f9   ldr	x20, [sp, #0x8]
0x100966404:  e0 03 14 aa   mov	x0, x20
0x100966408:  ef 75 23 94   bl	0x101243bc4
0x10096640c:  08 1c a0 4e   mov	v8.16b, v0.16b
0x100966410:  e0 03 14 aa   mov	x0, x20
0x100966414:  93 94 30 94   bl	j__swift_bridgeObjectRelease
0x100966418:  c8 09 e8 d2   mov	x8, #0x404e000000000000
0x10096641c:  09 01 67 9e   fmov	d9, x8
0x100966420:  00 09 69 1e   fmul	d0, d8, d9
0x100966424:  60 0e 00 fd   str	d0, [x19, #0x18]
0x100966428:  f4 16 40 f9   ldr	x20, [x23, #0x28]
0x10096642c:  50 bb ff d0   adrp	x16, 0x1000d0000
0x100966430:  10 12 23 91   add	x16, x16, #0x8c4
0x100966434:  f1 41 8e d2   mov	x17, #0x720f
0x100966438:  30 02 c1 da   pacia	x16, x17
0x10096643c:  e0 03 10 aa   mov	x0, x16
0x100966440:  e8 23 00 91   add	x8, sp, #0x8
0x100966444:  e1 03 17 aa   mov	x1, x23
0x100966448:  e2 03 18 aa   mov	x2, x24
0x10096644c:  b1 8c 30 94   bl	j__$sSo17OS_dispatch_queueC8DispatchE4sync7executexxyKXE_tKlF
0x100966450:  f4 07 40 f9   ldr	x20, [sp, #0x8]
0x100966454:  e0 03 14 aa   mov	x0, x20
0x100966458:  de 75 23 94   bl	0x101243bd0
0x10096645c:  08 1c a0 4e   mov	v8.16b, v0.16b
0x100966460:  e0 03 14 aa   mov	x0, x20
0x100966464:  7f 94 30 94   bl	j__swift_bridgeObjectRelease
0x100966468:  00 09 69 1e   fmul	d0, d8, d9
0x10096646c:  60 12 00 fd   str	d0, [x19, #0x20]
0x100966470:  f4 16 40 f9   ldr	x20, [x23, #0x28]
0x100966474:  50 bb ff d0   adrp	x16, 0x1000d0000
0x100966478:  10 12 23 91   add	x16, x16, #0x8c4
0x10096647c:  f1 41 8e d2   mov	x17, #0x720f
0x100966480:  30 02 c1 da   pacia	x16, x17
0x100966484:  e0 03 10 aa   mov	x0, x16
0x100966488:  e8 23 00 91   add	x8, sp, #0x8
0x10096648c:  e1 03 17 aa   mov	x1, x23
0x100966490:  e2 03 18 aa   mov	x2, x24
0x100966494:  9f 8c 30 94   bl	j__$sSo17OS_dispatch_queueC8DispatchE4sync7executexxyKXE_tKlF
0x100966498:  f4 07 40 f9   ldr	x20, [sp, #0x8]
0x10096649c:  e0 03 14 aa   mov	x0, x20
0x1009664a0:  cf 75 23 94   bl	0x101243bdc
0x1009664a4:  08 1c a0 4e   mov	v8.16b, v0.16b
0x1009664a8:  e0 03 14 aa   mov	x0, x20
0x1009664ac:  6d 94 30 94   bl	j__swift_bridgeObjectRelease
0x1009664b0:  00 09 69 1e   fmul	d0, d8, d9
0x1009664b4:  60 16 00 fd   str	d0, [x19, #0x28]
0x1009664b8:  7f 1a 00 f9   str	xzr, [x19, #0x30]
0x1009664bc:  76 0a 00 f9   str	x22, [x19, #0x10]
0x1009664c0:  e0 03 13 aa   mov	x0, x19
0x1009664c4:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x1009664c8:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x1009664cc:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x1009664d0:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x1009664d4:  e9 23 41 6d   ldp	d9, d8, [sp, #0x10]
0x1009664d8:  ff 83 01 91   add	sp, sp, #0x60
0x1009664dc:  ff 0f 5f d6   retab
0x1009664e0:  ; loc_1009664e0
0x1009664e0:  20 7e 00 f0   adrp	x0, 0x10192d000
0x1009664e4:  00 40 39 91   add	x0, x0, #0xe50 ; data_10192de50 (__DATA.__data)
0x1009664e8:  10 f9 ff d0   adrp	x16, 0x100888000
0x1009664ec:  10 b2 39 91   add	x16, x16, #0xe6c
0x1009664f0:  f0 23 c1 da   paciza	x16
0x1009664f4:  e1 03 10 aa   mov	x1, x16
0x1009664f8:  66 95 30 94   bl	j__swift_once
0x1009664fc:  b2 ff ff 17   b	loc_1009663c4 ; ⤴ -0x138

sub_100966500:
0x100966500:  7f 23 03 d5   pacibsp
0x100966504:  e9 23 b9 6d   stp	d9, d8, [sp, #-0x70]!
0x100966508:  fc 6f 01 a9   stp	x28, x27, [sp, #0x10]
0x10096650c:  fa 67 02 a9   stp	x26, x25, [sp, #0x20]
0x100966510:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x100966514:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x100966518:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10096651c:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x100966520:  fd 83 01 91   add	fp, sp, #0x60
0x100966524:  ff 83 05 d1   sub	sp, sp, #0x160
0x100966528:  00 00 80 d2   mov	x0, #0
0x10096652c:  87 1e e5 97   bl	0x1002adf48
0x100966530:  a8 c3 00 d1   sub	x8, fp, #0x30
0x100966534:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x100966538:  e8 03 00 aa   mov	x8, x0
0x10096653c:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x100966540:  f1 03 08 aa   mov	x17, x8
0x100966544:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100966548:  30 1a c1 da   autda	x16, x17
0x10096654c:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100966550:  e9 03 08 aa   mov	x9, x8
0x100966554:  11 79 00 f0   adrp	x17, 0x101889000
0x100966558:  31 62 30 91   add	x17, x17, #0xc18 ; __got.___chkstk_darwin
0x10096655c:  30 02 40 f9   ldr	x16, [x17]
0x100966560:  11 0a 3f d7   blraa	x16, x17
0x100966564:  e9 03 00 91   mov	x9, sp
0x100966568:  08 3d 00 91   add	x8, x8, #0xf
0x10096656c:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x100966570:  36 01 08 cb   sub	x22, x9, x8
0x100966574:  df 02 00 91   mov	sp, x22
0x100966578:  00 00 80 d2   mov	x0, #0
0x10096657c:  8d 7b 30 94   bl	j__$s10Foundation3URLVMa
0x100966580:  a8 03 01 d1   sub	x8, fp, #0x40
0x100966584:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x100966588:  e9 03 00 aa   mov	x9, x0
0x10096658c:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x100966590:  f0 03 08 aa   mov	x16, x8

