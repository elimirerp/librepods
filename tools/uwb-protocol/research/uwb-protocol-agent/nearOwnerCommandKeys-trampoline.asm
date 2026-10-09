
-[_TtC12searchpartyd23BeaconManagerTrampoline nearOwnerCommandKeysWithCompletion:]:
0x10113a2d4:  23 3d 00 b0   adrp	x3, 0x1018df000
0x10113a2d8:  63 e0 01 91   add	x3, x3, #0x78 ; data_1018df078 (__DATA_CONST.__const)
0x10113a2dc:  70 00 00 90   adrp	x16, 0x101146000
0x10113a2e0:  10 b2 35 91   add	x16, x16, #0xd6c
0x10113a2e4:  71 4e 88 d2   mov	x17, #0x4273
0x10113a2e8:  30 02 c1 da   pacia	x16, x17
0x10113a2ec:  e4 03 10 aa   mov	x4, x16
0x10113a2f0:  10 00 00 90   adrp	x16, 0x10113a000
0x10113a2f4:  10 52 05 91   add	x16, x16, #0x154
0x10113a2f8:  d1 cb 9f d2   mov	x17, #0xfe5e
0x10113a2fc:  30 02 c1 da   pacia	x16, x17
0x10113a300:  e5 03 10 aa   mov	x5, x16
0x10113a304:  88 16 00 14   b	0x10113fd24

-[_TtC12searchpartyd23BeaconManagerTrampoline updateBeaconObservations:completion:]:
0x10113a308:  7f 23 03 d5   pacibsp
0x10113a30c:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x10113a310:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x10113a314:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10113a318:  fd 83 00 91   add	fp, sp, #0x20
0x10113a31c:  f3 03 02 aa   mov	x19, x2
0x10113a320:  f4 03 00 aa   mov	x20, x0
0x10113a324:  e0 03 03 aa   mov	x0, x3
0x10113a328:  12 43 11 94   bl	j___Block_copy
0x10113a32c:  f5 03 00 aa   mov	x21, x0
0x10113a330:  e1 3f 00 b0   adrp	x1, 0x101937000
0x10113a334:  21 e0 04 91   add	x1, x1, #0x138 ; data_101937138 (__DATA.__data)
0x10113a338:  42 3a 00 f0   adrp	x2, 0x101885000
0x10113a33c:  42 a0 0b 91   add	x2, x2, #0x2e8 ; __got._OBJC_CLASS_$_SPBeaconObservation
0x10113a340:  00 00 80 d2   mov	x0, #0
0x10113a344:  1d e5 bf 97   bl	0x1001337b8
0x10113a348:  e1 03 00 aa   mov	x1, x0
0x10113a34c:  e0 03 13 aa   mov	x0, x19
0x10113a350:  44 3b 11 94   bl	j__$sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZ
0x10113a354:  f3 03 00 aa   mov	x19, x0
0x10113a358:  e0 03 15 aa   mov	x0, x21
0x10113a35c:  05 43 11 94   bl	j___Block_copy
0x10113a360:  f8 43 11 94   bl	j__objc_retain_x20
0x10113a364:  f4 03 00 aa   mov	x20, x0
0x10113a368:  e0 03 13 aa   mov	x0, x19
0x10113a36c:  e1 03 14 aa   mov	x1, x20
0x10113a370:  e2 03 15 aa   mov	x2, x21
0x10113a374:  c6 28 00 94   bl	0x10114468c
0x10113a378:  e0 03 15 aa   mov	x0, x21
0x10113a37c:  01 43 11 94   bl	j___Block_release
0x10113a380:  e0 03 15 aa   mov	x0, x21
0x10113a384:  ff 42 11 94   bl	j___Block_release
0x10113a388:  a6 43 11 94   bl	j__objc_release_x20
0x10113a38c:  e0 03 13 aa   mov	x0, x19
0x10113a390:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x10113a394:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x10113a398:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x10113a39c:  ff 23 03 d5   autibsp
0x10113a3a0:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10113a3a4:  50 00 f0 b6   tbz	x16, #0x3e, loc_10113a3ac ; ⤵ 0x8
0x10113a3a8:  20 8e 38 d4   brk	#0xc471
0x10113a3ac:  ; loc_10113a3ac
0x10113a3ac:  ad 44 11 14   b	j__swift_bridgeObjectRelease

-[_TtC12searchpartyd23BeaconManagerTrampoline createDuplicateBeaconsForBeacon:skipGroupIdentifier:count:completion:]:
0x10113a3b0:  7f 23 03 d5   pacibsp
0x10113a3b4:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x10113a3b8:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x10113a3bc:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x10113a3c0:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x10113a3c4:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x10113a3c8:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x10113a3cc:  fd 43 01 91   add	fp, sp, #0x50
0x10113a3d0:  ff 43 00 d1   sub	sp, sp, #0x10
0x10113a3d4:  f9 03 05 aa   mov	x25, x5
0x10113a3d8:  a4 03 1a f8   stur	x4, [fp, #-0x60]
0x10113a3dc:  f4 03 03 aa   mov	x20, x3
0x10113a3e0:  fa 03 02 aa   mov	x26, x2
0x10113a3e4:  f8 03 00 aa   mov	x24, x0
0x10113a3e8:  00 00 80 d2   mov	x0, #0
0x10113a3ec:  11 2d 11 94   bl	j__$s10Foundation4UUIDVMa
0x10113a3f0:  a0 83 1a f8   stur	x0, [fp, #-0x58]
0x10113a3f4:  e9 03 00 aa   mov	x9, x0
0x10113a3f8:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x10113a3fc:  f0 03 08 aa   mov	x16, x8
0x10113a400:  f1 03 09 aa   mov	x17, x9
0x10113a404:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10113a408:  30 1a c1 da   autda	x16, x17
0x10113a40c:  f1 03 10 aa   mov	x17, x16
0x10113a410:  f1 47 c1 da   xpacd	x17
0x10113a414:  1f 02 11 eb   cmp	x16, x17
0x10113a418:  40 00 00 54   b.eq	loc_10113a420 ; ⤵ 0x8
0x10113a41c:  40 8e 38 d4   brk	#0xc472
0x10113a420:  ; loc_10113a420
0x10113a420:  f5 03 10 aa   mov	x21, x16
0x10113a424:  f0 03 08 aa   mov	x16, x8
0x10113a428:  f1 03 09 aa   mov	x17, x9
0x10113a42c:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10113a430:  30 1a c1 da   autda	x16, x17
0x10113a434:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10113a438:  e9 03 08 aa   mov	x9, x8
0x10113a43c:  91 3a 00 90   adrp	x17, 0x10188a000
0x10113a440:  31 02 3c 91   add	x17, x17, #0xf00 ; __got.___chkstk_darwin
0x10113a444:  30 02 40 f9   ldr	x16, [x17]
0x10113a448:  11 0a 3f d7   blraa	x16, x17
0x10113a44c:  e9 03 00 91   mov	x9, sp
0x10113a450:  08 3d 00 91   add	x8, x8, #0xf
0x10113a454:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10113a458:  37 01 08 cb   sub	x23, x9, x8
0x10113a45c:  ff 02 00 91   mov	sp, x23
0x10113a460:  e0 03 19 aa   mov	x0, x25
0x10113a464:  c3 42 11 94   bl	j___Block_copy
0x10113a468:  f9 03 00 aa   mov	x25, x0
0x10113a46c:  e8 03 17 aa   mov	x8, x23
0x10113a470:  e0 03 1a aa   mov	x0, x26
0x10113a474:  df 2c 11 94   bl	j__$s10Foundation4UUIDV36_unconditionallyBridgeFromObjectiveCyACSo6NSUUIDCSgFZ
0x10113a478:  20 3d 00 b0   adrp	x0, 0x1018df000
0x10113a47c:  00 40 01 91   add	x0, x0, #0x50 ; data_1018df050 (__DATA_CONST.__const)
0x10113a480:  01 03 80 52   mov	w1, #0x18
0x10113a484:  e2 00 80 52   mov	w2, #0x7
0x10113a488:  4a 44 11 94   bl	j__swift_allocObject
0x10113a48c:  fa 03 00 aa   mov	x26, x0
0x10113a490:  19 08 00 f9   str	x25, [x0, #0x10]
0x10113a494:  68 40 00 90   adrp	x8, 0x101946000
0x10113a498:  08 59 47 f9   ldr	x8, [x8, #0xeb0]
0x10113a49c:  00 03 08 8b   add	x0, x24, x8
0x10113a4a0:  01 0c 40 f9   ldr	x1, [x0, #0x18]
0x10113a4a4:  23 24 bb 97   bl	0x100003530
0x10113a4a8:  f9 03 00 aa   mov	x25, x0
0x10113a4ac:  9b 3b 00 d0   adrp	x27, 0x1018ac000
0x10113a4b0:  7b 03 30 91   add	x27, x27, #0xc00
0x10113a4b4:  76 cb 40 f9   ldr	x22, [x27, #0x190]
0x10113a4b8:  73 43 06 91   add	x19, x27, #0x190
0x10113a4bc:  00 00 80 d2   mov	x0, #0
0x10113a4c0:  94 55 bb 97   bl	0x10000fb10
0x10113a4c4:  fc 03 00 aa   mov	x28, x0
0x10113a4c8:  ae 43 11 94   bl	j__objc_retain_x24
0x10113a4cc:  f8 03 00 aa   mov	x24, x0
0x10113a4d0:  b0 8a ff d0   adrp	x16, 0x100290000
0x10113a4d4:  10 72 2d 91   add	x16, x16, #0xb5c
0x10113a4d8:  31 35 8d d2   mov	x17, #0x69a9
0x10113a4dc:  30 02 c1 da   pacia	x16, x17
0x10113a4e0:  e3 03 10 aa   mov	x3, x16
0x10113a4e4:  e0 03 17 aa   mov	x0, x23
0x10113a4e8:  e1 03 14 aa   mov	x1, x20
0x10113a4ec:  a2 03 5a f8   ldur	x2, [fp, #-0x60]
0x10113a4f0:  e4 03 1a aa   mov	x4, x26
0x10113a4f4:  f4 03 19 aa   mov	x20, x25
0x10113a4f8:  e5 03 1c aa   mov	x5, x28
0x10113a4fc:  e6 03 1b aa   mov	x6, x27
0x10113a500:  f1 03 13 aa   mov	x17, x19

