
sub_10024d4f8:
0x10024d4f8:  88 b6 00 90   adrp	x8, 0x10191d000
0x10024d4fc:  00 85 43 f9   ldr	x0, [x8, #0x708] ; data_10191d708 (__DATA.__data)
0x10024d500:  40 00 00 b4   cbz	x0, loc_10024d508 ; ⤵ 0x8
0x10024d504:  c0 03 5f d6   ret
0x10024d508:  ; loc_10024d508
0x10024d508:  7f 23 03 d5   pacibsp
0x10024d50c:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10024d510:  fd 03 00 91   mov	fp, sp
0x10024d514:  61 b4 00 90   adrp	x1, 0x1018d9000
0x10024d518:  21 a0 3d 91   add	x1, x1, #0xf68 ; data_1018d9f68 (__DATA_CONST.__const)
0x10024d51c:  30 a0 00 b0   adrp	x16, 0x101652000
0x10024d520:  10 d2 20 91   add	x16, x16, #0x834 ; "\xe5[#"
0x10024d524:  71 dd 98 d2   mov	x17, #0xc6eb
0x10024d528:  30 0a c1 da   pacda	x16, x17
0x10024d52c:  e0 03 10 aa   mov	x0, x16
0x10024d530:  30 f9 4c 94   bl	j__swift_getWitnessTable
0x10024d534:  88 b6 00 90   adrp	x8, 0x10191d000
0x10024d538:  08 21 1c 91   add	x8, x8, #0x708 ; data_10191d708 (__DATA.__data)
0x10024d53c:  00 fd 9f c8   stlr	x0, [x8]
0x10024d540:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10024d544:  ff 23 03 d5   autibsp
0x10024d548:  c0 03 5f d6   ret

sub_10024d54c:
0x10024d54c:  88 b6 00 90   adrp	x8, 0x10191d000
0x10024d550:  00 89 43 f9   ldr	x0, [x8, #0x710] ; data_10191d710 (__DATA.__data)
0x10024d554:  40 00 00 b4   cbz	x0, loc_10024d55c ; ⤵ 0x8
0x10024d558:  c0 03 5f d6   ret
0x10024d55c:  ; loc_10024d55c
0x10024d55c:  7f 23 03 d5   pacibsp
0x10024d560:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10024d564:  fd 03 00 91   mov	fp, sp
0x10024d568:  61 b3 00 90   adrp	x1, 0x1018b9000
0x10024d56c:  21 40 05 91   add	x1, x1, #0x150 ; data_1018b9150 (__DATA_CONST.__const)
0x10024d570:  b0 9e 00 f0   adrp	x16, 0x101624000
0x10024d574:  10 52 11 91   add	x16, x16, #0x454 ; "\xc5?&"
0x10024d578:  71 dd 98 d2   mov	x17, #0xc6eb
0x10024d57c:  30 0a c1 da   pacda	x16, x17
0x10024d580:  e0 03 10 aa   mov	x0, x16
0x10024d584:  1b f9 4c 94   bl	j__swift_getWitnessTable
0x10024d588:  88 b6 00 90   adrp	x8, 0x10191d000
0x10024d58c:  08 41 1c 91   add	x8, x8, #0x710 ; data_10191d710 (__DATA.__data)
0x10024d590:  00 fd 9f c8   stlr	x0, [x8]
0x10024d594:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10024d598:  ff 23 03 d5   autibsp
0x10024d59c:  c0 03 5f d6   ret

sub_10024d5a0:
0x10024d5a0:  7f 23 03 d5   pacibsp
0x10024d5a4:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10024d5a8:  fd 03 00 91   mov	fp, sp
0x10024d5ac:  80 06 41 a9   ldp	x0, x1, [x20, #0x10]
0x10024d5b0:  82 12 40 f9   ldr	x2, [x20, #0x20]
0x10024d5b4:  e2 c9 ff 97   bl	0x10023fd3c
0x10024d5b8:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10024d5bc:  ff 0f 5f d6   retab

sub_10024d5c0:
0x10024d5c0:  88 b6 00 90   adrp	x8, 0x10191d000
0x10024d5c4:  00 8d 43 f9   ldr	x0, [x8, #0x718] ; data_10191d718 (__DATA.__data)
0x10024d5c8:  40 00 00 b4   cbz	x0, loc_10024d5d0 ; ⤵ 0x8
0x10024d5cc:  c0 03 5f d6   ret
0x10024d5d0:  ; loc_10024d5d0
0x10024d5d0:  7f 23 03 d5   pacibsp
0x10024d5d4:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10024d5d8:  fd 03 00 91   mov	fp, sp
0x10024d5dc:  21 b2 00 b0   adrp	x1, 0x101892000
0x10024d5e0:  21 40 0f 91   add	x1, x1, #0x3d0
0x10024d5e4:  30 9d 00 d0   adrp	x16, 0x1015f3000
0x10024d5e8:  10 b2 2f 91   add	x16, x16, #0xbec ; "\xfd6)"
0x10024d5ec:  71 dd 98 d2   mov	x17, #0xc6eb
0x10024d5f0:  30 0a c1 da   pacda	x16, x17
0x10024d5f4:  e0 03 10 aa   mov	x0, x16
0x10024d5f8:  fe f8 4c 94   bl	j__swift_getWitnessTable
0x10024d5fc:  88 b6 00 90   adrp	x8, 0x10191d000
0x10024d600:  08 61 1c 91   add	x8, x8, #0x718 ; data_10191d718 (__DATA.__data)
0x10024d604:  00 fd 9f c8   stlr	x0, [x8]
0x10024d608:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10024d60c:  ff 23 03 d5   autibsp
0x10024d610:  c0 03 5f d6   ret

sub_10024d614:
0x10024d614:  7f 23 03 d5   pacibsp
0x10024d618:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10024d61c:  fd 03 00 91   mov	fp, sp
0x10024d620:  80 06 41 a9   ldp	x0, x1, [x20, #0x10]
0x10024d624:  7e e4 ff 97   bl	0x10024681c
0x10024d628:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10024d62c:  ff 0f 5f d6   retab

sub_10024d630:
0x10024d630:  88 b6 00 90   adrp	x8, 0x10191d000
0x10024d634:  00 a1 43 f9   ldr	x0, [x8, #0x740] ; data_10191d740 (__DATA.__data)
0x10024d638:  40 00 00 b4   cbz	x0, loc_10024d640 ; ⤵ 0x8
0x10024d63c:  c0 03 5f d6   ret
0x10024d640:  ; loc_10024d640
0x10024d640:  7f 23 03 d5   pacibsp
0x10024d644:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10024d648:  fd 03 00 91   mov	fp, sp
0x10024d64c:  c1 b1 00 b0   adrp	x1, 0x101886000
0x10024d650:  21 0c 47 f9   ldr	x1, [x1, #0xe18] ; __got._$ss6UInt32VN
0x10024d654:  b0 b1 00 f0   adrp	x16, 0x101884000
0x10024d658:  10 b2 43 f9   ldr	x16, [x16, #0x760] ; __got._$ss6UInt32V11SwiftSQLite5Value13FindMyStorageMc
0x10024d65c:  71 dd 98 d2   mov	x17, #0xc6eb
0x10024d660:  30 0a c1 da   pacda	x16, x17
0x10024d664:  e0 03 10 aa   mov	x0, x16
0x10024d668:  e2 f8 4c 94   bl	j__swift_getWitnessTable
0x10024d66c:  88 b6 00 90   adrp	x8, 0x10191d000
0x10024d670:  08 01 1d 91   add	x8, x8, #0x740 ; data_10191d740 (__DATA.__data)
0x10024d674:  00 fd 9f c8   stlr	x0, [x8]
0x10024d678:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10024d67c:  ff 23 03 d5   autibsp
0x10024d680:  c0 03 5f d6   ret

sub_10024d684:
0x10024d684:  7f 23 03 d5   pacibsp
0x10024d688:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10024d68c:  fd 03 00 91   mov	fp, sp
0x10024d690:  80 06 41 a9   ldp	x0, x1, [x20, #0x10]
0x10024d694:  e7 9e ff 97   bl	0x100235230
0x10024d698:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10024d69c:  ff 0f 5f d6   retab

sub_10024d6a0:
0x10024d6a0:  7f 23 03 d5   pacibsp
0x10024d6a4:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10024d6a8:  fd 03 00 91   mov	fp, sp
0x10024d6ac:  80 06 41 a9   ldp	x0, x1, [x20, #0x10]
0x10024d6b0:  82 0e 42 a9   ldp	x2, x3, [x20, #0x20]
0x10024d6b4:  1f 6a ff 97   bl	0x100227f30
0x10024d6b8:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10024d6bc:  ff 0f 5f d6   retab

sub_10024d6c0:
0x10024d6c0:  7f 23 03 d5   pacibsp
0x10024d6c4:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10024d6c8:  fd 03 00 91   mov	fp, sp
0x10024d6cc:  80 06 41 a9   ldp	x0, x1, [x20, #0x10]
0x10024d6d0:  82 0e 42 a9   ldp	x2, x3, [x20, #0x20]
0x10024d6d4:  84 16 43 a9   ldp	x4, x5, [x20, #0x30]
0x10024d6d8:  8c 74 ff 97   bl	0x10022a908
0x10024d6dc:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10024d6e0:  ff 0f 5f d6   retab

sub_10024d6e4:
0x10024d6e4:  7f 23 03 d5   pacibsp
0x10024d6e8:  ff c3 00 d1   sub	sp, sp, #0x30
0x10024d6ec:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10024d6f0:  fd 83 00 91   add	fp, sp, #0x20
0x10024d6f4:  80 06 41 a9   ldp	x0, x1, [x20, #0x10]
0x10024d6f8:  82 0e 42 a9   ldp	x2, x3, [x20, #0x20]
0x10024d6fc:  84 16 43 a9   ldp	x4, x5, [x20, #0x30]

