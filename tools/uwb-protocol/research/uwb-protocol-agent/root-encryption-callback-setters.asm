
sub_10021b350:
0x10021b350:  7f 23 03 d5   pacibsp
0x10021b354:  ff 03 01 d1   sub	sp, sp, #0x40
0x10021b358:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x10021b35c:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10021b360:  fd c3 00 91   add	fp, sp, #0x30
0x10021b364:  28 00 80 52   mov	w8, #0x1
0x10021b368:  09 41 00 b0   adrp	x9, 0x100a3c000
0x10021b36c:  29 01 01 91   add	x9, x9, #0x40 ; "\x94\xb4!"
0x10021b370:  20 05 40 ad   ldp	q0, q1, [x9]
0x10021b374:  e0 07 00 ad   stp	q0, q1, [sp]
0x10021b378:  a9 45 00 d0   adrp	x9, 0x100ad1000
0x10021b37c:  29 41 16 91   add	x9, x9, #0x590
0x10021b380:  28 0d 01 b9   str	w8, [x9, #0x10c]
0x10021b384:  a8 45 00 d0   adrp	x8, 0x100ad1000
0x10021b388:  08 c1 0c 91   add	x8, x8, #0x330
0x10021b38c:  08 a5 41 39   ldrb	w8, [x8, #0x69]
0x10021b390:  08 03 00 36   tbz	w8, #0, loc_10021b3f0 ; ⤵ 0x60
0x10021b394:  e8 44 00 90   adrp	x8, 0x100ab7000
0x10021b398:  08 41 28 91   add	x8, x8, #0xa10 ; "/C"
0x10021b39c:  09 29 40 a9   ldp	x9, x10, [x8]
0x10021b3a0:  0b 09 40 f9   ldr	x11, [x8, #0x10]
0x10021b3a4:  3f 01 00 f1   cmp	x9, #0
0x10021b3a8:  40 09 40 fa   ccmp	x10, #0, #0, eq
0x10021b3ac:  60 09 40 fa   ccmp	x11, #0, #0, eq
0x10021b3b0:  e0 03 00 54   b.eq	loc_10021b42c ; ⤵ 0x7c
0x10021b3b4:  40 00 80 52   mov	w0, #0x2
0x10021b3b8:  61 08 80 52   mov	w1, #0x43
0x10021b3bc:  62 24 fb 97   bl	0x1000e4544
0x10021b3c0:  40 01 00 34   cbz	w0, loc_10021b3e8 ; ⤵ 0x28
0x10021b3c4:  c0 36 00 f0   adrp	x0, 0x1008f6000
0x10021b3c8:  00 28 0a 91   add	x0, x0, #0x28a ; "Someone is already listening for LE security events."
0x10021b3cc:  76 a7 00 94   bl	0x1002451a4
0x10021b3d0:  60 08 80 52   mov	w0, #0x43
0x10021b3d4:  d1 91 fa 97   bl	0x1000bfb18
0x10021b3d8:  f3 03 00 aa   mov	x19, x0
0x10021b3dc:  01 02 80 52   mov	w1, #0x10
0x10021b3e0:  94 d0 17 94   bl	j__os_log_type_enabled
0x10021b3e4:  20 05 00 35   cbnz	w0, loc_10021b488 ; ⤵ 0xa4
0x10021b3e8:  ; loc_10021b3e8
0x10021b3e8:  e0 0e 80 52   mov	w0, #0x77
0x10021b3ec:  20 00 00 14   b	loc_10021b46c ; ⤵ 0x80
0x10021b3f0:  ; loc_10021b3f0
0x10021b3f0:  40 00 80 52   mov	w0, #0x2
0x10021b3f4:  61 08 80 52   mov	w1, #0x43
0x10021b3f8:  53 24 fb 97   bl	0x1000e4544
0x10021b3fc:  40 01 00 34   cbz	w0, loc_10021b424 ; ⤵ 0x28
0x10021b400:  c0 36 00 f0   adrp	x0, 0x1008f6000
0x10021b404:  00 90 09 91   add	x0, x0, #0x264 ; "LE not supported, can't register SMP."
0x10021b408:  67 a7 00 94   bl	0x1002451a4
0x10021b40c:  60 08 80 52   mov	w0, #0x43
0x10021b410:  c2 91 fa 97   bl	0x1000bfb18
0x10021b414:  f3 03 00 aa   mov	x19, x0
0x10021b418:  01 02 80 52   mov	w1, #0x10
0x10021b41c:  85 d0 17 94   bl	j__os_log_type_enabled
0x10021b420:  e0 02 00 35   cbnz	w0, loc_10021b47c ; ⤵ 0x5c
0x10021b424:  ; loc_10021b424
0x10021b424:  60 12 80 52   mov	w0, #0x93
0x10021b428:  11 00 00 14   b	loc_10021b46c ; ⤵ 0x44
0x10021b42c:  ; loc_10021b42c
0x10021b42c:  e6 03 04 aa   mov	x6, x4
0x10021b430:  e5 03 03 aa   mov	x5, x3
0x10021b434:  e4 03 02 aa   mov	x4, x2
0x10021b438:  e3 03 01 aa   mov	x3, x1
0x10021b43c:  00 04 40 ad   ldp	q0, q1, [x0]
0x10021b440:  00 05 00 ad   stp	q0, q1, [x8]
0x10021b444:  10 00 00 90   adrp	x16, 0x10021b000
0x10021b448:  10 a2 13 91   add	x16, x16, #0x4e8 ; "\xe8D"
0x10021b44c:  f0 23 c1 da   paciza	x16
0x10021b450:  e0 03 10 aa   mov	x0, x16
0x10021b454:  10 00 00 90   adrp	x16, 0x10021b000
0x10021b458:  10 12 14 91   add	x16, x16, #0x504
0x10021b45c:  f0 23 c1 da   paciza	x16
0x10021b460:  e2 03 10 aa   mov	x2, x16
0x10021b464:  e1 03 00 91   mov	x1, sp
0x10021b468:  24 30 00 94   bl	0x1002274f8
0x10021b46c:  ; loc_10021b46c
0x10021b46c:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x10021b470:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x10021b474:  ff 03 01 91   add	sp, sp, #0x40
0x10021b478:  ff 0f 5f d6   retab
0x10021b47c:  ; loc_10021b47c
0x10021b47c:  e0 03 13 aa   mov	x0, x19
0x10021b480:  8d 73 16 94   bl	0x1007b82b4
0x10021b484:  e8 ff ff 17   b	loc_10021b424 ; ⤴ -0x60
0x10021b488:  ; loc_10021b488
0x10021b488:  e0 03 13 aa   mov	x0, x19
0x10021b48c:  8a 73 16 94   bl	0x1007b82b4
0x10021b490:  d6 ff ff 17   b	loc_10021b3e8 ; ⤴ -0xa8

sub_10021b494:
0x10021b494:  e8 44 00 90   adrp	x8, 0x100ab7000
0x10021b498:  03 19 45 f9   ldr	x3, [x8, #0xa30] ; "\x82C"
0x10021b49c:  83 00 00 b4   cbz	x3, loc_10021b4ac ; ⤵ 0x10
0x10021b4a0:  e8 44 00 90   adrp	x8, 0x100ab7000
0x10021b4a4:  02 25 45 f9   ldr	x2, [x8, #0xa48] ; data_100ab7a48 (__DATA.__bss)
0x10021b4a8:  7f 08 1f d6   braaz	x3
0x10021b4ac:  ; loc_10021b4ac
0x10021b4ac:  c0 03 5f d6   ret

sub_10021b4b0:
0x10021b4b0:  e8 44 00 90   adrp	x8, 0x100ab7000
0x10021b4b4:  02 1d 45 f9   ldr	x2, [x8, #0xa38] ; data_100ab7a38 (__DATA.__bss)
0x10021b4b8:  82 00 00 b4   cbz	x2, loc_10021b4c8 ; ⤵ 0x10
0x10021b4bc:  e8 44 00 90   adrp	x8, 0x100ab7000
0x10021b4c0:  01 25 45 f9   ldr	x1, [x8, #0xa48] ; data_100ab7a48 (__DATA.__bss)
0x10021b4c4:  5f 08 1f d6   braaz	x2
0x10021b4c8:  ; loc_10021b4c8
0x10021b4c8:  c0 03 5f d6   ret

sub_10021b4cc:
0x10021b4cc:  e8 44 00 90   adrp	x8, 0x100ab7000
0x10021b4d0:  04 21 45 f9   ldr	x4, [x8, #0xa40] ; "\xa9C"
0x10021b4d4:  84 00 00 b4   cbz	x4, loc_10021b4e4 ; ⤵ 0x10
0x10021b4d8:  e8 44 00 90   adrp	x8, 0x100ab7000
0x10021b4dc:  03 25 45 f9   ldr	x3, [x8, #0xa48] ; data_100ab7a48 (__DATA.__bss)
0x10021b4e0:  9f 08 1f d6   braaz	x4
0x10021b4e4:  ; loc_10021b4e4
0x10021b4e4:  6a 11 00 14   b	0x10021fa8c

sub_10021b4e8:
0x10021b4e8:  e8 44 00 90   adrp	x8, 0x100ab7000
0x10021b4ec:  05 11 45 f9   ldr	x5, [x8, #0xa20] ; "PC"
0x10021b4f0:  85 00 00 b4   cbz	x5, loc_10021b500 ; ⤵ 0x10
0x10021b4f4:  e8 44 00 90   adrp	x8, 0x100ab7000
0x10021b4f8:  04 15 45 f9   ldr	x4, [x8, #0xa28] ; data_100ab7a28 (__DATA.__bss)
0x10021b4fc:  bf 08 1f d6   braaz	x5
0x10021b500:  ; loc_10021b500
0x10021b500:  c0 03 5f d6   ret

sub_10021b504:
0x10021b504:  7f 23 03 d5   pacibsp
0x10021b508:  fa 67 bb a9   stp	x26, x25, [sp, #-0x50]!
0x10021b50c:  f8 5f 01 a9   stp	x24, x23, [sp, #0x10]
0x10021b510:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x10021b514:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x10021b518:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x10021b51c:  fd 03 01 91   add	fp, sp, #0x40
0x10021b520:  f7 44 00 90   adrp	x23, 0x100ab7000
0x10021b524:  e8 a2 d4 79   ldrsh	w8, [x23, #0xa50]
0x10021b528:  1f 05 00 71   cmp	w8, #0x1
0x10021b52c:  ab 02 00 54   b.lt	loc_10021b580 ; ⤵ 0x54
0x10021b530:  f3 03 04 aa   mov	x19, x4
0x10021b534:  f4 03 02 aa   mov	x20, x2
0x10021b538:  f5 03 01 aa   mov	x21, x1
0x10021b53c:  f6 03 00 aa   mov	x22, x0
0x10021b540:  18 00 80 d2   mov	x24, #0
0x10021b544:  f9 44 00 90   adrp	x25, 0x100ab7000
0x10021b548:  39 a3 29 91   add	x25, x25, #0xa68 ; data_100ab7a68 (__DATA.__bss)
0x10021b54c:  ; loc_10021b54c
0x10021b54c:  29 83 5f f8   ldur	x9, [x25, #-0x8]
0x10021b550:  09 01 00 b4   cbz	x9, loc_10021b570 ; ⤵ 0x20
0x10021b554:  23 03 40 f9   ldr	x3, [x25]
0x10021b558:  e0 03 16 aa   mov	x0, x22
0x10021b55c:  e1 03 15 aa   mov	x1, x21
0x10021b560:  e2 03 14 aa   mov	x2, x20
0x10021b564:  e4 03 13 aa   mov	x4, x19
0x10021b568:  3f 09 3f d6   blraaz	x9
0x10021b56c:  e8 a2 54 79   ldrh	w8, [x23, #0xa50]
0x10021b570:  ; loc_10021b570
0x10021b570:  18 07 00 91   add	x24, x24, #0x1
0x10021b574:  39 63 00 91   add	x25, x25, #0x18
0x10021b578:  1f a3 28 eb   cmp	x24, w8, sxth
0x10021b57c:  8b fe ff 54   b.lt	loc_10021b54c ; ⤴ -0x30
0x10021b580:  ; loc_10021b580
0x10021b580:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x10021b584:  f4 4f 43 a9   ldp	x20, x19, [sp, #0x30]
0x10021b588:  f6 57 42 a9   ldp	x22, x21, [sp, #0x20]
0x10021b58c:  f8 5f 41 a9   ldp	x24, x23, [sp, #0x10]
0x10021b590:  fa 67 c5 a8   ldp	x26, x25, [sp], #0x50
0x10021b594:  ff 0f 5f d6   retab

