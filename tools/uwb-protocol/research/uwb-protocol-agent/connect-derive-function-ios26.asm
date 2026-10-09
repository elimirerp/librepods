0x10051b370:  e2 03 15 aa   mov	x2, x21
0x10051b374:  f1 03 08 aa   mov	x17, x8
0x10051b378:  11 1e ec f2   movk	x17, #0x60f0, lsl #0x30
0x10051b37c:  31 09 3f d7   blraa	x9, x17
0x10051b380:  1f 04 00 71   cmp	w0, #0x1
0x10051b384:  a0 01 00 54   b.eq	loc_10051b3b8 ; ⤵ 0x34
0x10051b388:  c8 0e 42 f8   ldr	x8, [x22, #0x20]!
0x10051b38c:  e0 03 13 aa   mov	x0, x19
0x10051b390:  e1 03 14 aa   mov	x1, x20
0x10051b394:  e2 03 15 aa   mov	x2, x21
0x10051b398:  f1 03 16 aa   mov	x17, x22
0x10051b39c:  11 1b e9 f2   movk	x17, #0x48d8, lsl #0x30
0x10051b3a0:  11 09 3f d7   blraa	x8, x17
0x10051b3a4:  bf 83 00 d1   sub	sp, fp, #0x20
0x10051b3a8:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x10051b3ac:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x10051b3b0:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x10051b3b4:  ff 0f 5f d6   retab
0x10051b3b8:  ; loc_10051b3b8
0x10051b3b8:  20 00 20 d4   brk	#0x1

sub_10051b3bc:
0x10051b3bc:  60 87 00 90   adrp	x0, 0x101607000
0x10051b3c0:  00 40 29 91   add	x0, x0, #0xa50
0x10051b3c4:  c0 03 5f d6   ret

sub_10051b3c8:
0x10051b3c8:  60 87 00 90   adrp	x0, 0x101607000
0x10051b3cc:  00 60 29 91   add	x0, x0, #0xa58
0x10051b3d0:  c0 03 5f d6   ret

sub_10051b3d4:
0x10051b3d4:  60 87 00 90   adrp	x0, 0x101607000
0x10051b3d8:  00 80 29 91   add	x0, x0, #0xa60
0x10051b3dc:  c0 03 5f d6   ret

sub_10051b3e0:
0x10051b3e0:  60 87 00 90   adrp	x0, 0x101607000
0x10051b3e4:  00 e0 29 91   add	x0, x0, #0xa78
0x10051b3e8:  c0 03 5f d6   ret

sub_10051b3ec:
0x10051b3ec:  7f 23 03 d5   pacibsp
0x10051b3f0:  ff 83 01 d1   sub	sp, sp, #0x60
0x10051b3f4:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x10051b3f8:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x10051b3fc:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x10051b400:  fd 43 01 91   add	fp, sp, #0x50
0x10051b404:  f5 03 01 aa   mov	x21, x1
0x10051b408:  f6 03 00 aa   mov	x22, x0
0x10051b40c:  60 ec 8d d2   mov	x0, #0x6f63
0x10051b410:  c0 cd ad f2   movk	x0, #0x6e6e, lsl #0x10
0x10051b414:  a0 6c cc f2   movk	x0, #0x6365, lsl #0x20
0x10051b418:  80 0e e0 f2   movk	x0, #0x74, lsl #0x30
0x10051b41c:  01 e0 fc d2   mov	x1, #0xe700000000000000
0x10051b420:  b4 b5 41 94   bl	j__$sSS10FindMyBaseE8utf8Data10Foundation0E0Vvg
0x10051b424:  f4 03 00 aa   mov	x20, x0
0x10051b428:  f3 03 01 aa   mov	x19, x1
0x10051b42c:  e0 03 16 aa   mov	x0, x22
0x10051b430:  e1 03 15 aa   mov	x1, x21
0x10051b434:  e2 03 14 aa   mov	x2, x20
0x10051b438:  e3 03 13 aa   mov	x3, x19
0x10051b43c:  04 04 80 52   mov	w4, #0x20
0x10051b440:  15 00 80 d2   mov	x21, #0
0x10051b444:  7d 56 19 94   bl	0x100b70e38
0x10051b448:  b5 01 00 b5   cbnz	x21, loc_10051b47c ; ⤵ 0x34
0x10051b44c:  e8 83 00 91   add	x8, sp, #0x20
0x10051b450:  0a fa ff 97   bl	0x100519c78
0x10051b454:  e0 03 14 aa   mov	x0, x20
0x10051b458:  e1 03 13 aa   mov	x1, x19
0x10051b45c:  d1 ee eb 97   bl	0x100016fa0
0x10051b460:  55 01 00 b5   cbnz	x21, loc_10051b488 ; ⤵ 0x28
0x10051b464:  e0 07 42 a9   ldp	x0, x1, [sp, #0x20]
0x10051b468:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x10051b46c:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x10051b470:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x10051b474:  ff 83 01 91   add	sp, sp, #0x60
0x10051b478:  ff 0f 5f d6   retab
0x10051b47c:  ; loc_10051b47c
0x10051b47c:  e0 03 14 aa   mov	x0, x20
0x10051b480:  e1 03 13 aa   mov	x1, x19
0x10051b484:  c7 ee eb 97   bl	0x100016fa0
0x10051b488:  ; loc_10051b488
0x10051b488:  08 00 fc d2   mov	x8, #0xe000000000000000
0x10051b48c:  ff 23 02 a9   stp	xzr, x8, [sp, #0x20]
0x10051b490:  e0 03 15 aa   mov	x0, x21
0x10051b494:  f7 c0 41 94   bl	j__swift_errorRetain
0x10051b498:  f4 83 00 91   add	x20, sp, #0x20
0x10051b49c:  60 04 80 52   mov	w0, #0x23
0x10051b4a0:  1c ba 41 94   bl	j__$ss11_StringGutsV4growyySiF
0x10051b4a4:  e8 27 42 a9   ldp	x8, x9, [sp, #0x20]
0x10051b4a8:  e8 27 02 a9   stp	x8, x9, [sp, #0x20]
0x10051b4ac:  c8 84 00 d0   adrp	x8, 0x1015b5000
0x10051b4b0:  08 c1 1c 91   add	x8, x8, #0x730 ; "Unable to derive connectionKey!: "
0x10051b4b4:  08 81 00 d1   sub	x8, x8, #0x20
0x10051b4b8:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x10051b4bc:  f4 83 00 91   add	x20, sp, #0x20
0x10051b4c0:  20 04 80 d2   mov	x0, #0x21
0x10051b4c4:  00 00 fa f2   movk	x0, #0xd000, lsl #0x30
0x10051b4c8:  02 b6 41 94   bl	j__$sSS6appendyySSF
0x10051b4cc:  f5 0b 00 f9   str	x21, [sp, #0x10]
0x10051b4d0:  00 a0 00 b0   adrp	x0, 0x10191c000
0x10051b4d4:  00 40 0f 91   add	x0, x0, #0x3d0 ; data_10191c3d0 (__DATA.__data)
0x10051b4d8:  81 86 00 90   adrp	x1, 0x1015eb000
0x10051b4dc:  21 80 31 91   add	x1, x1, #0xc60 ; "\xc8A\r"
0x10051b4e0:  c5 73 ee 97   bl	0x1000b83f4
0x10051b4e4:  e2 03 00 aa   mov	x2, x0
0x10051b4e8:  43 9b 00 f0   adrp	x3, 0x101886000
0x10051b4ec:  63 6c 46 f9   ldr	x3, [x3, #0xcd8] ; __got._$ss26DefaultStringInterpolationVN
0x10051b4f0:  44 9b 00 f0   adrp	x4, 0x101886000
0x10051b4f4:  84 70 46 f9   ldr	x4, [x4, #0xce0] ; __got._$ss26DefaultStringInterpolationVs16TextOutputStreamsWP
0x10051b4f8:  e0 43 00 91   add	x0, sp, #0x10
0x10051b4fc:  e1 83 00 91   add	x1, sp, #0x20

