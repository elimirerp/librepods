
-[NIServerItemLocalizerSession _configureRangingSession]:
0x10032d4c0:  7f 23 03 d5   pacibsp
0x10032d4c4:  fc 6f bd a9   stp	x28, x27, [sp, #-0x30]!
0x10032d4c8:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x10032d4cc:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10032d4d0:  fd 83 00 91   add	fp, sp, #0x20
0x10032d4d4:  ff c3 09 d1   sub	sp, sp, #0x270
0x10032d4d8:  f3 03 00 aa   mov	x19, x0
0x10032d4dc:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d4e0:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x10032d4e4:  08 01 40 f9   ldr	x8, [x8]
0x10032d4e8:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x10032d4ec:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d4f0:  08 39 82 b9   ldrsw	x8, [x8, #0x238]
0x10032d4f4:  00 68 68 f8   ldr	x0, [x0, x8]
0x10032d4f8:  b7 0e 07 94   bl	j__dispatch_assert_queue$V2
0x10032d4fc:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d500:  08 d1 82 b9   ldrsw	x8, [x8, #0x2d0]
0x10032d504:  68 6a 68 f8   ldr	x8, [x19, x8]
0x10032d508:  a8 00 00 b5   cbnz	x8, loc_10032d51c ; ⤵ 0x14
0x10032d50c:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d510:  08 d5 82 b9   ldrsw	x8, [x8, #0x2d4]
0x10032d514:  68 6a 68 f8   ldr	x8, [x19, x8]
0x10032d518:  a8 07 00 b4   cbz	x8, loc_10032d60c ; ⤵ 0xf4
0x10032d51c:  ; loc_10032d51c
0x10032d51c:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d520:  08 7d 82 b9   ldrsw	x8, [x8, #0x27c]
0x10032d524:  68 02 08 8b   add	x8, x19, x8
0x10032d528:  08 01 49 39   ldrb	w8, [x8, #0x240]
0x10032d52c:  68 00 00 36   tbz	w8, #0, loc_10032d538 ; ⤵ 0xc
0x10032d530:  14 00 80 d2   mov	x20, #0
0x10032d534:  26 00 00 14   b	loc_10032d5cc ; ⤵ 0x98
0x10032d538:  ; loc_10032d538
0x10032d538:  e8 37 00 90   adrp	x8, 0x100a29000
0x10032d53c:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x10032d540:  13 01 40 f9   ldr	x19, [x8]
0x10032d544:  e0 03 13 aa   mov	x0, x19
0x10032d548:  01 02 80 52   mov	w1, #0x10
0x10032d54c:  ee 10 07 94   bl	j__os_log_type_enabled
0x10032d550:  60 00 00 34   cbz	w0, loc_10032d55c ; ⤵ 0xc
0x10032d554:  e0 03 13 aa   mov	x0, x19
0x10032d558:  46 c1 06 94   bl	0x1004dda70
0x10032d55c:  ; loc_10032d55c
0x10032d55c:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d560:  14 a9 44 f9   ldr	x20, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x10032d564:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d568:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x10032d56c:  09 01 40 f9   ldr	x9, [x8]
0x10032d570:  e8 35 00 f0   adrp	x8, 0x1009ec000
0x10032d574:  08 21 12 91   add	x8, x8, #0x488 ; "Service request unavailable."
0x10032d578:  a9 a3 3c a9   stp	x9, x8, [fp, #-0x38]
0x10032d57c:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d580:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x10032d584:  a2 c3 00 d1   sub	x2, fp, #0x30
0x10032d588:  a3 e3 00 d1   sub	x3, fp, #0x38
0x10032d58c:  24 00 80 52   mov	w4, #0x1
0x10032d590:  74 32 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10032d594:  fd 03 1d aa   mov	fp, fp
0x10032d598:  77 10 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d59c:  f3 03 00 aa   mov	x19, x0
0x10032d5a0:  e8 34 00 b0   adrp	x8, 0x1009ca000
0x10032d5a4:  08 21 23 91   add	x8, x8, #0x8c8
0x10032d5a8:  02 01 40 f9   ldr	x2, [x8]
0x10032d5ac:  e0 03 14 aa   mov	x0, x20
0x10032d5b0:  c3 df 82 92   mov	x3, #0xffffffffffffe901
0x10032d5b4:  e4 03 13 aa   mov	x4, x19
0x10032d5b8:  8a 36 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x10032d5bc:  fd 03 1d aa   mov	fp, fp
0x10032d5c0:  6d 10 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d5c4:  ; loc_10032d5c4
0x10032d5c4:  f4 03 00 aa   mov	x20, x0
0x10032d5c8:  ; loc_10032d5c8
0x10032d5c8:  2f 10 07 94   bl	j__objc_release_x19
0x10032d5cc:  ; loc_10032d5cc
0x10032d5cc:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x10032d5d0:  49 34 00 90   adrp	x9, 0x1009b5000
0x10032d5d4:  29 b5 45 f9   ldr	x9, [x9, #0xb68] ; __got.___stack_chk_guard
0x10032d5d8:  29 01 40 f9   ldr	x9, [x9]
0x10032d5dc:  3f 01 08 eb   cmp	x9, x8
0x10032d5e0:  21 09 00 54   b.ne	loc_10032d704 ; ⤵ 0x124
0x10032d5e4:  e0 03 14 aa   mov	x0, x20
0x10032d5e8:  ff c3 09 91   add	sp, sp, #0x270
0x10032d5ec:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x10032d5f0:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x10032d5f4:  fc 6f c3 a8   ldp	x28, x27, [sp], #0x30
0x10032d5f8:  ff 23 03 d5   autibsp
0x10032d5fc:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10032d600:  50 00 f0 b6   tbz	x16, #0x3e, loc_10032d608 ; ⤵ 0x8
0x10032d604:  20 8e 38 d4   brk	#0xc471
0x10032d608:  ; loc_10032d608
0x10032d608:  d7 0f 07 14   b	j__objc_autoreleaseReturnValue
0x10032d60c:  ; loc_10032d60c
0x10032d60c:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d610:  08 51 82 b9   ldrsw	x8, [x8, #0x250]
0x10032d614:  68 6a 68 b8   ldr	w8, [x19, x8]
0x10032d618:  e8 00 00 34   cbz	w8, loc_10032d634 ; ⤵ 0x1c
0x10032d61c:  1f 05 00 71   cmp	w8, #0x1
0x10032d620:  e1 01 00 54   b.ne	loc_10032d65c ; ⤵ 0x3c
0x10032d624:  e8 43 00 91   add	x8, sp, #0x10
0x10032d628:  e0 03 13 aa   mov	x0, x19
0x10032d62c:  35 1d 07 94   bl	j__objc_msgSend(x0, "_prepareNBAMMSServiceRequest")
0x10032d630:  04 00 00 14   b	loc_10032d640 ; ⤵ 0x10
0x10032d634:  ; loc_10032d634
0x10032d634:  e8 43 00 91   add	x8, sp, #0x10
0x10032d638:  e0 03 13 aa   mov	x0, x19
0x10032d63c:  41 1d 07 94   bl	j__objc_msgSend(x0, "_prepareP2PServiceRequest")
0x10032d640:  ; loc_10032d640
0x10032d640:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d644:  14 7d 82 b9   ldrsw	x20, [x8, #0x27c]
0x10032d648:  60 02 14 8b   add	x0, x19, x20
0x10032d64c:  e1 43 00 91   add	x1, sp, #0x10
0x10032d650:  22 48 80 52   mov	w2, #0x241
0x10032d654:  64 0f 07 94   bl	j__memcpy
0x10032d658:  03 00 00 14   b	loc_10032d664 ; ⤵ 0xc
0x10032d65c:  ; loc_10032d65c
0x10032d65c:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d660:  14 7d 82 b9   ldrsw	x20, [x8, #0x27c]
0x10032d664:  ; loc_10032d664
0x10032d664:  62 02 14 8b   add	x2, x19, x20
0x10032d668:  48 00 49 39   ldrb	w8, [x2, #0x240]
0x10032d66c:  1f 05 00 71   cmp	w8, #0x1
0x10032d670:  41 01 00 54   b.ne	loc_10032d698 ; ⤵ 0x28
0x10032d674:  e0 03 13 aa   mov	x0, x19
0x10032d678:  fa 13 07 94   bl	j__objc_msgSend(x0, "_buildRoseSession:")
0x10032d67c:  fd 03 1d aa   mov	fp, fp
0x10032d680:  3d 10 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d684:  f3 03 00 aa   mov	x19, x0
0x10032d688:  40 00 00 b4   cbz	x0, loc_10032d690 ; ⤵ 0x8
0x10032d68c:  46 10 07 94   bl	j__objc_retain_x19
0x10032d690:  ; loc_10032d690
0x10032d690:  f4 03 13 aa   mov	x20, x19
0x10032d694:  cd ff ff 17   b	loc_10032d5c8 ; ⤴ -0xcc
0x10032d698:  ; loc_10032d698
0x10032d698:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d69c:  14 a9 44 f9   ldr	x20, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x10032d6a0:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d6a4:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x10032d6a8:  09 01 40 f9   ldr	x9, [x8]
0x10032d6ac:  e8 35 00 f0   adrp	x8, 0x1009ec000
0x10032d6b0:  08 a1 12 91   add	x8, x8, #0x4a8 ; "Could not configure ranging session."
0x10032d6b4:  e9 23 00 a9   stp	x9, x8, [sp]
0x10032d6b8:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d6bc:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x10032d6c0:  e2 23 00 91   add	x2, sp, #0x8
0x10032d6c4:  e3 03 00 91   mov	x3, sp
0x10032d6c8:  24 00 80 52   mov	w4, #0x1
0x10032d6cc:  25 32 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10032d6d0:  fd 03 1d aa   mov	fp, fp
0x10032d6d4:  28 10 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d6d8:  f3 03 00 aa   mov	x19, x0
0x10032d6dc:  e8 34 00 b0   adrp	x8, 0x1009ca000
0x10032d6e0:  08 21 23 91   add	x8, x8, #0x8c8
0x10032d6e4:  02 01 40 f9   ldr	x2, [x8]
0x10032d6e8:  e0 03 14 aa   mov	x0, x20
0x10032d6ec:  c3 df 82 92   mov	x3, #0xffffffffffffe901
0x10032d6f0:  e4 03 13 aa   mov	x4, x19
0x10032d6f4:  3b 36 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x10032d6f8:  fd 03 1d aa   mov	fp, fp
0x10032d6fc:  1e 10 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032d700:  b1 ff ff 17   b	loc_10032d5c4 ; ⤴ -0x13c
0x10032d704:  ; loc_10032d704
0x10032d704:  98 0d 07 94   bl	j____stack_chk_fail
0x10032d708:  01 00 00 14   b	loc_10032d70c ; ⤵ 0x4
0x10032d70c:  ; loc_10032d70c
0x10032d70c:  f4 03 00 aa   mov	x20, x0
0x10032d710:  dd 0f 07 94   bl	j__objc_release_x19
0x10032d714:  02 00 00 14   b	loc_10032d71c ; ⤵ 0x8
0x10032d718:  f4 03 00 aa   mov	x20, x0
0x10032d71c:  ; loc_10032d71c
0x10032d71c:  e0 03 14 aa   mov	x0, x20
0x10032d720:  2d 0a 07 94   bl	j___Unwind_Resume

-[NIServerItemLocalizerSession _buildRoseSession:]:
0x10032d724:  7f 23 03 d5   pacibsp
0x10032d728:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x10032d72c:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x10032d730:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x10032d734:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x10032d738:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x10032d73c:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x10032d740:  fd 43 01 91   add	fp, sp, #0x50
0x10032d744:  ff 03 08 d1   sub	sp, sp, #0x200
0x10032d748:  f4 03 02 aa   mov	x20, x2
0x10032d74c:  f3 03 00 aa   mov	x19, x0
0x10032d750:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032d754:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x10032d758:  08 01 40 f9   ldr	x8, [x8]
0x10032d75c:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x10032d760:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d764:  17 39 82 b9   ldrsw	x23, [x8, #0x238]
0x10032d768:  00 68 77 f8   ldr	x0, [x0, x23]
0x10032d76c:  1a 0e 07 94   bl	j__dispatch_assert_queue$V2
0x10032d770:  0d 10 07 94   bl	j__objc_retain_x19
0x10032d774:  0c 10 07 94   bl	j__objc_retain_x19
0x10032d778:  0b 10 07 94   bl	j__objc_retain_x19
0x10032d77c:  0a 10 07 94   bl	j__objc_retain_x19
0x10032d780:  09 10 07 94   bl	j__objc_retain_x19
0x10032d784:  08 10 07 94   bl	j__objc_retain_x19
0x10032d788:  f8 37 00 90   adrp	x24, 0x100a29000
0x10032d78c:  18 43 38 91   add	x24, x24, #0xe10 ; "CreateConfigRTTTypes"
0x10032d790:  15 03 40 f9   ldr	x21, [x24]
0x10032d794:  e0 03 15 aa   mov	x0, x21
0x10032d798:  01 00 80 52   mov	w1, #0
0x10032d79c:  5a 10 07 94   bl	j__os_log_type_enabled
0x10032d7a0:  60 01 00 34   cbz	w0, loc_10032d7cc ; ⤵ 0x2c
0x10032d7a4:  bf 03 18 78   sturh	wzr, [fp, #-0x80]
0x10032d7a8:  80 e6 ff f0   adrp	x0, 0x100000000
0x10032d7ac:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032d7b0:  23 31 00 b0   adrp	x3, 0x100952000
0x10032d7b4:  63 b4 01 91   add	x3, x3, #0x6d ; "#ses-item-loc,Registering for UWB service."
0x10032d7b8:  a4 03 02 d1   sub	x4, fp, #0x80
0x10032d7bc:  e1 03 15 aa   mov	x1, x21
0x10032d7c0:  02 00 80 52   mov	w2, #0
0x10032d7c4:  45 00 80 52   mov	w5, #0x2
0x10032d7c8:  83 0d 07 94   bl	j___os_log_impl
0x10032d7cc:  ; loc_10032d7cc
0x10032d7cc:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d7d0:  19 51 82 b9   ldrsw	x25, [x8, #0x250]
0x10032d7d4:  68 6a 79 b8   ldr	w8, [x19, x25]
0x10032d7d8:  1f 05 00 71   cmp	w8, #0x1
0x10032d7dc:  00 1c 00 54   b.eq	loc_10032db5c ; ⤵ 0x380
0x10032d7e0:  a8 40 00 35   cbnz	w8, loc_10032dff4 ; ⤵ 0x814
0x10032d7e4:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d7e8:  08 41 82 b9   ldrsw	x8, [x8, #0x240]
0x10032d7ec:  60 6a 68 f8   ldr	x0, [x19, x8]
0x10032d7f0:  5c 12 07 94   bl	j__objc_msgSend(x0, "UTF8String")
0x10032d7f4:  e1 03 00 aa   mov	x1, x0
0x10032d7f8:  e0 63 01 91   add	x0, sp, #0x58
0x10032d7fc:  48 b5 f3 97   bl	0x10001ad1c
0x10032d800:  e1 6a 91 d2   mov	x1, #0x8b57
0x10032d804:  e1 ab ac f2   movk	x1, #0x655f, lsl #0x10
0x10032d808:  01 80 c3 f2   movk	x1, #0x1c00, lsl #0x20
0x10032d80c:  01 21 e0 f2   movk	x1, #0x108, lsl #0x30
0x10032d810:  00 c9 80 52   mov	w0, #0x648
0x10032d814:  04 0d 07 94   bl	j___ZnwmSt19__type_descriptor_t
0x10032d818:  f5 03 00 aa   mov	x21, x0
0x10032d81c:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032d820:  08 79 82 b9   ldrsw	x8, [x8, #0x278]
0x10032d824:  79 02 08 8b   add	x25, x19, x8
0x10032d828:  30 35 00 90   adrp	x16, 0x1009d1000
0x10032d82c:  10 82 09 91   add	x16, x16, #0x260 ; data_1009d1260 (__DATA_CONST.__const)
0x10032d830:  10 42 00 91   add	x16, x16, #0x10
0x10032d834:  f1 03 00 aa   mov	x17, x0
0x10032d838:  f1 69 ec f2   movk	x17, #0x634f, lsl #0x30
0x10032d83c:  30 0a c1 da   pacda	x16, x17
0x10032d840:  1f fc 00 a9   stp	xzr, xzr, [x0, #0x8]
0x10032d844:  10 00 00 f9   str	x16, [x0]
0x10032d848:  16 60 00 91   add	x22, x0, #0x18
0x10032d84c:  d6 0f 07 94   bl	j__objc_retain_x19
0x10032d850:  a8 03 02 d1   sub	x8, fp, #0x80
0x10032d854:  30 35 00 90   adrp	x16, 0x1009d1000
0x10032d858:  10 c2 0a 91   add	x16, x16, #0x2b0 ; data_1009d12b0 (__DATA_CONST.__const)
0x10032d85c:  10 42 00 91   add	x16, x16, #0x10
0x10032d860:  f1 03 08 aa   mov	x17, x8
0x10032d864:  11 e5 e7 f2   movk	x17, #0x3f28, lsl #0x30
0x10032d868:  30 0a c1 da   pacda	x16, x17
0x10032d86c:  b0 4f 38 a9   stp	x16, x19, [fp, #-0x80]
0x10032d870:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x10032d874:  cc 0f 07 94   bl	j__objc_retain_x19
0x10032d878:  a8 83 02 d1   sub	x8, fp, #0xa0
0x10032d87c:  30 35 00 90   adrp	x16, 0x1009d1000
0x10032d880:  10 c2 0c 91   add	x16, x16, #0x330 ; __ZTVN10__cxxabiv117__class_type_infoE
0x10032d884:  10 42 00 91   add	x16, x16, #0x10
0x10032d888:  f1 03 08 aa   mov	x17, x8
0x10032d88c:  71 bc e4 f2   movk	x17, #0x25e3, lsl #0x30
0x10032d890:  30 0a c1 da   pacda	x16, x17
0x10032d894:  b0 4f 36 a9   stp	x16, x19, [fp, #-0xa0]
0x10032d898:  a8 83 17 f8   stur	x8, [fp, #-0x88]
0x10032d89c:  c2 0f 07 94   bl	j__objc_retain_x19
0x10032d8a0:  a8 03 03 d1   sub	x8, fp, #0xc0
0x10032d8a4:  30 35 00 90   adrp	x16, 0x1009d1000
0x10032d8a8:  10 c2 0e 91   add	x16, x16, #0x3b0 ; __ZTVN10__cxxabiv117__class_type_infoE
0x10032d8ac:  10 42 00 91   add	x16, x16, #0x10
0x10032d8b0:  f1 03 08 aa   mov	x17, x8
0x10032d8b4:  71 be e3 f2   movk	x17, #0x1df3, lsl #0x30
0x10032d8b8:  30 0a c1 da   pacda	x16, x17
0x10032d8bc:  b0 4f 34 a9   stp	x16, x19, [fp, #-0xc0]
0x10032d8c0:  a8 83 15 f8   stur	x8, [fp, #-0xa8]
0x10032d8c4:  b8 0f 07 94   bl	j__objc_retain_x19
0x10032d8c8:  a8 83 03 d1   sub	x8, fp, #0xe0
0x10032d8cc:  30 35 00 90   adrp	x16, 0x1009d1000
0x10032d8d0:  10 c2 10 91   add	x16, x16, #0x430 ; __ZTVN10__cxxabiv117__class_type_infoE
0x10032d8d4:  10 42 00 91   add	x16, x16, #0x10
0x10032d8d8:  f1 03 08 aa   mov	x17, x8
0x10032d8dc:  71 18 ef f2   movk	x17, #0x78c3, lsl #0x30
0x10032d8e0:  30 0a c1 da   pacda	x16, x17
0x10032d8e4:  b0 4f 32 a9   stp	x16, x19, [fp, #-0xe0]
0x10032d8e8:  a8 83 13 f8   stur	x8, [fp, #-0xc8]
0x10032d8ec:  77 6a 77 f8   ldr	x23, [x19, x23]
0x10032d8f0:  ad 0f 07 94   bl	j__objc_retain_x19
0x10032d8f4:  ba 03 04 d1   sub	x26, fp, #0x100
0x10032d8f8:  30 35 00 90   adrp	x16, 0x1009d1000
0x10032d8fc:  10 c2 12 91   add	x16, x16, #0x4b0 ; __ZTVN10__cxxabiv117__class_type_infoE
0x10032d900:  10 42 00 91   add	x16, x16, #0x10
0x10032d904:  f1 03 1a aa   mov	x17, x26
0x10032d908:  71 bc e4 f2   movk	x17, #0x25e3, lsl #0x30
0x10032d90c:  30 0a c1 da   pacda	x16, x17
0x10032d910:  b0 4f 30 a9   stp	x16, x19, [fp, #-0x100]
0x10032d914:  ba 83 11 f8   stur	x26, [fp, #-0xe8]
0x10032d918:  ff a7 00 f9   str	xzr, [sp, #0x148]
0x10032d91c:  ff 97 00 f9   str	xzr, [sp, #0x128]
0x10032d920:  ff 87 00 f9   str	xzr, [sp, #0x108]
0x10032d924:  ff 77 00 f9   str	xzr, [sp, #0xe8]
0x10032d928:  9f 0f 07 94   bl	j__objc_retain_x19
0x10032d92c:  e8 c3 02 91   add	x8, sp, #0xb0
0x10032d930:  30 35 00 90   adrp	x16, 0x1009d1000
0x10032d934:  10 c2 14 91   add	x16, x16, #0x530 ; __ZTVN10__cxxabiv117__class_type_infoE
0x10032d938:  10 42 00 91   add	x16, x16, #0x10
0x10032d93c:  f1 03 08 aa   mov	x17, x8
0x10032d940:  b1 1a fd f2   movk	x17, #0xe8d5, lsl #0x30
0x10032d944:  30 0a c1 da   pacda	x16, x17
0x10032d948:  f0 4f 0b a9   stp	x16, x19, [sp, #0xb0]
0x10032d94c:  e8 67 00 f9   str	x8, [sp, #0xc8]
0x10032d950:  29 07 40 f9   ldr	x9, [x25, #0x8]
0x10032d954:  20 03 c0 3d   ldr	q0, [x25]
0x10032d958:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x10032d95c:  89 00 00 b4   cbz	x9, loc_10032d96c ; ⤵ 0x10
0x10032d960:  29 21 00 91   add	x9, x9, #0x8
0x10032d964:  2a 00 80 52   mov	w10, #0x1
0x10032d968:  29 01 2a f8   ldadd	x10, x9, [x9]
0x10032d96c:  ; loc_10032d96c
0x10032d96c:  e9 c3 01 91   add	x9, sp, #0x70
0x10032d970:  e8 a7 02 a9   stp	x8, x9, [sp, #0x28]
0x10032d974:  e9 43 03 91   add	x9, sp, #0xd0
0x10032d978:  e9 13 00 f9   str	x9, [sp, #0x20]
0x10032d97c:  e8 c3 03 91   add	x8, sp, #0xf0
0x10032d980:  e9 43 04 91   add	x9, sp, #0x110
0x10032d984:  ea c3 04 91   add	x10, sp, #0x130
0x10032d988:  e9 23 01 a9   stp	x9, x8, [sp, #0x10]
0x10032d98c:  e1 63 01 91   add	x1, sp, #0x58
0x10032d990:  a3 03 02 d1   sub	x3, fp, #0x80
0x10032d994:  a4 83 02 d1   sub	x4, fp, #0xa0
0x10032d998:  a5 03 03 d1   sub	x5, fp, #0xc0
0x10032d99c:  a6 83 03 d1   sub	x6, fp, #0xe0
0x10032d9a0:  fa 2b 00 a9   stp	x26, x10, [sp]
0x10032d9a4:  e0 03 16 aa   mov	x0, x22
0x10032d9a8:  e2 03 14 aa   mov	x2, x20
0x10032d9ac:  e7 03 17 aa   mov	x7, x23
0x10032d9b0:  3c 89 00 94   bl	0x10034fea0
0x10032d9b4:  30 35 00 90   adrp	x16, 0x1009d1000
0x10032d9b8:  10 02 17 91   add	x16, x16, #0x5c0 ; __ZTVN10__cxxabiv117__class_type_infoE
0x10032d9bc:  10 42 00 91   add	x16, x16, #0x10
0x10032d9c0:  f1 03 16 aa   mov	x17, x22
0x10032d9c4:  11 75 f3 f2   movk	x17, #0x9ba8, lsl #0x30
0x10032d9c8:  30 0a c1 da   pacda	x16, x17
0x10032d9cc:  b0 0e 00 f9   str	x16, [x21, #0x18]
0x10032d9d0:  a8 82 00 91   add	x8, x21, #0x20
0x10032d9d4:  30 35 00 90   adrp	x16, 0x1009d1000
0x10032d9d8:  10 02 17 91   add	x16, x16, #0x5c0 ; __ZTVN10__cxxabiv117__class_type_infoE
0x10032d9dc:  10 82 03 91   add	x16, x16, #0xe0
0x10032d9e0:  f1 03 08 aa   mov	x17, x8
0x10032d9e4:  31 45 e3 f2   movk	x17, #0x1a29, lsl #0x30
0x10032d9e8:  30 0a c1 da   pacda	x16, x17
0x10032d9ec:  b0 12 00 f9   str	x16, [x21, #0x20]
0x10032d9f0:  e0 3f 40 f9   ldr	x0, [sp, #0x78]
0x10032d9f4:  40 00 00 b4   cbz	x0, loc_10032d9fc ; ⤵ 0x8
0x10032d9f8:  7d e4 f3 97   bl	0x100026bec
0x10032d9fc:  ; loc_10032d9fc
0x10032d9fc:  e0 c3 02 91   add	x0, sp, #0xb0
0x10032da00:  f2 ec f3 97   bl	0x100028dc8
0x10032da04:  e0 43 03 91   add	x0, sp, #0xd0
0x10032da08:  0c ed f3 97   bl	0x100028e38
0x10032da0c:  e0 c3 03 91   add	x0, sp, #0xf0
0x10032da10:  26 ed f3 97   bl	0x100028ea8
0x10032da14:  e0 43 04 91   add	x0, sp, #0x110
0x10032da18:  40 ed f3 97   bl	0x100028f18
0x10032da1c:  e0 c3 04 91   add	x0, sp, #0x130
0x10032da20:  5a ed f3 97   bl	0x100028f88
0x10032da24:  a0 03 04 d1   sub	x0, fp, #0x100
0x10032da28:  74 ed f3 97   bl	0x100028ff8
0x10032da2c:  a0 83 03 d1   sub	x0, fp, #0xe0
0x10032da30:  8e ed f3 97   bl	0x100029068
0x10032da34:  a0 03 03 d1   sub	x0, fp, #0xc0
0x10032da38:  a8 ed f3 97   bl	0x1000290d8
0x10032da3c:  a0 83 02 d1   sub	x0, fp, #0xa0
0x10032da40:  6e ed f3 97   bl	0x100028ff8
0x10032da44:  a0 03 02 d1   sub	x0, fp, #0x80
0x10032da48:  c0 ed f3 97   bl	0x100029148
0x10032da4c:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10032da50:  e0 03 01 91   add	x0, sp, #0x40
0x10032da54:  a1 a2 00 91   add	x1, x21, #0x28
0x10032da58:  e2 03 16 aa   mov	x2, x22
0x10032da5c:  d7 ed f3 97   bl	0x1000291b8
0x10032da60:  28 37 00 f0   adrp	x8, 0x100a14000
0x10032da64:  08 d1 82 b9   ldrsw	x8, [x8, #0x2d0]
0x10032da68:  74 02 08 8b   add	x20, x19, x8
0x10032da6c:  e0 13 c0 3d   ldr	q0, [sp, #0x40]
0x10032da70:  ff 7f 04 a9   stp	xzr, xzr, [sp, #0x40]
0x10032da74:  80 06 40 f9   ldr	x0, [x20, #0x8]
0x10032da78:  80 02 80 3d   str	q0, [x20]
0x10032da7c:  a0 00 00 b4   cbz	x0, loc_10032da90 ; ⤵ 0x14
0x10032da80:  5b e4 f3 97   bl	0x100026bec
0x10032da84:  e0 27 40 f9   ldr	x0, [sp, #0x48]
0x10032da88:  40 00 00 b4   cbz	x0, loc_10032da90 ; ⤵ 0x8
0x10032da8c:  58 e4 f3 97   bl	0x100026bec
0x10032da90:  ; loc_10032da90
0x10032da90:  80 02 40 f9   ldr	x0, [x20]
0x10032da94:  73 8b 00 94   bl	0x100350860
0x10032da98:  f5 03 00 aa   mov	x21, x0
0x10032da9c:  40 23 00 34   cbz	w0, loc_10032df04 ; ⤵ 0x468
0x10032daa0:  80 06 40 f9   ldr	x0, [x20, #0x8]
0x10032daa4:  9f 7e 00 a9   stp	xzr, xzr, [x20]
0x10032daa8:  40 00 00 b4   cbz	x0, loc_10032dab0 ; ⤵ 0x8
0x10032daac:  50 e4 f3 97   bl	0x100026bec
0x10032dab0:  ; loc_10032dab0
0x10032dab0:  16 03 40 f9   ldr	x22, [x24]
0x10032dab4:  4c 0f 07 94   bl	j__objc_retain_x22
0x10032dab8:  e0 03 16 aa   mov	x0, x22
0x10032dabc:  01 02 80 52   mov	w1, #0x10
0x10032dac0:  91 0f 07 94   bl	j__os_log_type_enabled
0x10032dac4:  00 01 00 34   cbz	w0, loc_10032dae4 ; ⤵ 0x20
0x10032dac8:  a8 03 02 d1   sub	x8, fp, #0x80
0x10032dacc:  e0 03 15 aa   mov	x0, x21
0x10032dad0:  9a a7 00 94   bl	0x100357938
0x10032dad4:  a0 03 02 d1   sub	x0, fp, #0x80
0x10032dad8:  a1 83 02 d1   sub	x1, fp, #0xa0
0x10032dadc:  e2 03 16 aa   mov	x2, x22
0x10032dae0:  04 c0 06 94   bl	0x1004ddaf0
0x10032dae4:  ; loc_10032dae4
0x10032dae4:  f4 0e 07 94   bl	j__objc_release_x22
0x10032dae8:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032daec:  14 a9 44 f9   ldr	x20, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x10032daf0:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032daf4:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x10032daf8:  09 01 40 f9   ldr	x9, [x8]
0x10032dafc:  e8 35 00 f0   adrp	x8, 0x1009ec000
0x10032db00:  08 21 13 91   add	x8, x8, #0x4c8 ; "Unable to init P2P session"
0x10032db04:  e9 23 0a a9   stp	x9, x8, [sp, #0xa0]
0x10032db08:  48 34 00 90   adrp	x8, 0x1009b5000
0x10032db0c:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x10032db10:  e2 a3 02 91   add	x2, sp, #0xa8
0x10032db14:  e3 83 02 91   add	x3, sp, #0xa0
0x10032db18:  24 00 80 52   mov	w4, #0x1
0x10032db1c:  11 31 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10032db20:  fd 03 1d aa   mov	fp, fp
0x10032db24:  14 0f 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032db28:  f6 03 00 aa   mov	x22, x0
0x10032db2c:  e8 34 00 b0   adrp	x8, 0x1009ca000
0x10032db30:  08 21 23 91   add	x8, x8, #0x8c8
0x10032db34:  02 01 40 f9   ldr	x2, [x8]
0x10032db38:  e0 03 14 aa   mov	x0, x20
0x10032db3c:  c3 df 82 92   mov	x3, #0xffffffffffffe901
0x10032db40:  e4 03 16 aa   mov	x4, x22
0x10032db44:  27 35 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x10032db48:  fd 03 1d aa   mov	fp, fp
0x10032db4c:  0a 0f 07 94   bl	j__objc_retainAutoreleasedReturnValue

