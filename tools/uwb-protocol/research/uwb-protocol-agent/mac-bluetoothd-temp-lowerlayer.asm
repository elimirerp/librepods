
sub_10078051c:
0x10078051c:  7f 23 03 d5   pacibsp
0x100780520:  ff c3 01 d1   sub	sp, sp, #0x70
0x100780524:  fa 67 02 a9   stp	x26, x25, [sp, #0x20]
0x100780528:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x10078052c:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x100780530:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x100780534:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x100780538:  fd 83 01 91   add	fp, sp, #0x60
0x10078053c:  f3 03 04 aa   mov	x19, x4
0x100780540:  f4 03 03 aa   mov	x20, x3
0x100780544:  f5 03 02 aa   mov	x21, x2
0x100780548:  f6 03 01 aa   mov	x22, x1
0x10078054c:  f7 03 00 aa   mov	x23, x0
0x100780550:  88 15 00 d0   adrp	x8, 0x100a32000
0x100780554:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100780558:  08 01 40 f9   ldr	x8, [x8]
0x10078055c:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x100780560:  88 1a 00 b0   adrp	x8, 0x100ad1000
0x100780564:  08 e1 30 91   add	x8, x8, #0xc38
0x100780568:  18 01 40 f9   ldr	x24, [x8]
0x10078056c:  e0 03 18 aa   mov	x0, x24
0x100780570:  01 00 80 52   mov	w1, #0
0x100780574:  2f 3c 02 94   bl	j__os_log_type_enabled
0x100780578:  60 03 00 34   cbz	w0, loc_1007805e4 ; ⤵ 0x6c
0x10078057c:  e0 03 16 aa   mov	x0, x22
0x100780580:  e2 10 fe 97   bl	0x100704908
0x100780584:  fd 03 1d aa   mov	fp, fp
0x100780588:  86 3b 02 94   bl	j__objc_retainAutoreleasedReturnValue
0x10078058c:  f9 03 00 aa   mov	x25, x0
0x100780590:  88 08 00 f0   adrp	x8, 0x100893000
0x100780594:  00 81 40 fd   ldr	d0, [x8, #0x100]
0x100780598:  e0 03 00 bd   str	s0, [sp]
0x10078059c:  f5 07 00 b9   str	w21, [sp, #0x4]
0x1007805a0:  08 80 80 52   mov	w8, #0x400
0x1007805a4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1007805a8:  f3 a3 00 b8   stur	w19, [sp, #0xa]
0x1007805ac:  48 08 81 52   mov	w8, #0x842
0x1007805b0:  e8 1f 00 79   strh	w8, [sp, #0xe]
0x1007805b4:  e0 0b 00 f9   str	x0, [sp, #0x10]
0x1007805b8:  00 c4 ff 90   adrp	x0, 0x100000000
0x1007805bc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1007805c0:  63 13 00 90   adrp	x3, 0x1009ec000
0x1007805c4:  63 c8 0d 91   add	x3, x3, #0x372 ; "Adding temporary security keys (type:%d lengh:%d) to device %{public}@"
0x1007805c8:  e4 03 00 91   mov	x4, sp
0x1007805cc:  e1 03 18 aa   mov	x1, x24
0x1007805d0:  02 00 80 52   mov	w2, #0
0x1007805d4:  05 03 80 52   mov	w5, #0x18
0x1007805d8:  5e 37 02 94   bl	j___os_log_impl
0x1007805dc:  e0 03 19 aa   mov	x0, x25
0x1007805e0:  64 3b 02 94   bl	j__objc_release
0x1007805e4:  ; loc_1007805e4
0x1007805e4:  e0 03 17 aa   mov	x0, x23
0x1007805e8:  e1 03 16 aa   mov	x1, x22
0x1007805ec:  e2 03 15 aa   mov	x2, x21
0x1007805f0:  e3 03 14 aa   mov	x3, x20
0x1007805f4:  e4 03 13 aa   mov	x4, x19
0x1007805f8:  25 00 80 52   mov	w5, #0x1
0x1007805fc:  0f 00 00 94   bl	0x100780638
0x100780600:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x100780604:  89 15 00 d0   adrp	x9, 0x100a32000
0x100780608:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10078060c:  29 01 40 f9   ldr	x9, [x9]
0x100780610:  3f 01 08 eb   cmp	x9, x8
0x100780614:  01 01 00 54   b.ne	loc_100780634 ; ⤵ 0x20
0x100780618:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10078061c:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x100780620:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x100780624:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x100780628:  fa 67 42 a9   ldp	x26, x25, [sp, #0x20]
0x10078062c:  ff c3 01 91   add	sp, sp, #0x70
0x100780630:  ff 0f 5f d6   retab
0x100780634:  ; loc_100780634
0x100780634:  17 37 02 94   bl	j____stack_chk_fail

sub_100780638:
0x100780638:  7f 23 03 d5   pacibsp
0x10078063c:  ff 43 04 d1   sub	sp, sp, #0x110
0x100780640:  fc 6f 0b a9   stp	x28, x27, [sp, #0xb0]
0x100780644:  fa 67 0c a9   stp	x26, x25, [sp, #0xc0]
0x100780648:  f8 5f 0d a9   stp	x24, x23, [sp, #0xd0]
0x10078064c:  f6 57 0e a9   stp	x22, x21, [sp, #0xe0]
0x100780650:  f4 4f 0f a9   stp	x20, x19, [sp, #0xf0]
0x100780654:  fd 7b 10 a9   stp	fp, lr, [sp, #0x100]
0x100780658:  fd 03 04 91   add	fp, sp, #0x100
0x10078065c:  f9 03 05 aa   mov	x25, x5
0x100780660:  f5 03 04 aa   mov	x21, x4
0x100780664:  f4 03 03 aa   mov	x20, x3
0x100780668:  f3 03 02 aa   mov	x19, x2
0x10078066c:  f8 03 01 aa   mov	x24, x1
0x100780670:  f6 03 00 aa   mov	x22, x0
0x100780674:  88 15 00 d0   adrp	x8, 0x100a32000
0x100780678:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10078067c:  08 01 40 f9   ldr	x8, [x8]
0x100780680:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x100780684:  ff 7f 02 a9   stp	xzr, xzr, [sp, #0x20]
0x100780688:  e0 83 00 91   add	x0, sp, #0x20
0x10078068c:  c1 c2 00 91   add	x1, x22, #0x30
0x100780690:  9a d9 ec 97   bl	0x1002b6cf8
0x100780694:  e0 03 18 aa   mov	x0, x24
0x100780698:  a6 3a ea 97   bl	0x10020f130
0x10078069c:  e0 1b 00 b9   str	w0, [sp, #0x18]
0x1007806a0:  08 fc 70 d3   lsr	x8, x0, #0x30
0x1007806a4:  e8 7b 00 39   strb	w8, [sp, #0x1e]
0x1007806a8:  08 fc 60 d3   lsr	x8, x0, #0x20
0x1007806ac:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1007806b0:  ff 5f 00 39   strb	wzr, [sp, #0x17]
0x1007806b4:  e0 5f 00 91   add	x0, sp, #0x17
0x1007806b8:  e6 d8 ec 97   bl	0x1002b6a50
0x1007806bc:  e0 63 00 91   add	x0, sp, #0x18
0x1007806c0:  30 c6 e7 97   bl	0x100171f80
0x1007806c4:  f7 03 00 aa   mov	x23, x0
0x1007806c8:  e0 5f 00 91   add	x0, sp, #0x17
0x1007806cc:  ed d8 ec 97   bl	0x1002b6a80
0x1007806d0:  bf ff 39 a9   stp	xzr, xzr, [fp, #-0x68]
0x1007806d4:  a0 a3 01 d1   sub	x0, fp, #0x68
0x1007806d8:  f2 3d 02 94   bl	j__uuid_clear
0x1007806dc:  f7 03 00 b4   cbz	x23, loc_100780758 ; ⤵ 0x7c
0x1007806e0:  c8 18 00 b0   adrp	x8, 0x100a99000
0x1007806e4:  08 cd 40 f9   ldr	x8, [x8, #0x198] ; data_100a99198 (__DATA.__data)
0x1007806e8:  1f 05 00 b1   cmn	x8, #0x1
0x1007806ec:  61 26 00 54   b.ne	loc_100780bb8 ; ⤵ 0x4cc
0x1007806f0:  c8 18 00 b0   adrp	x8, 0x100a99000
0x1007806f4:  00 c9 40 f9   ldr	x0, [x8, #0x190] ; data_100a99190 (__DATA.__data)
0x1007806f8:  a2 a3 01 d1   sub	x2, fp, #0x68
0x1007806fc:  e1 03 17 aa   mov	x1, x23
0x100780700:  ef 42 fd 97   bl	0x1006d12bc
0x100780704:  a0 02 00 37   tbnz	w0, #0, loc_100780758 ; ⤵ 0x54
0x100780708:  a0 a3 01 d1   sub	x0, fp, #0x68
0x10078070c:  f5 3d 02 94   bl	j__uuid_is_null
0x100780710:  e0 01 00 34   cbz	w0, loc_10078074c ; ⤵ 0x3c
0x100780714:  88 1a 00 b0   adrp	x8, 0x100ad1000
0x100780718:  08 e1 30 91   add	x8, x8, #0xc38
0x10078071c:  17 01 40 f9   ldr	x23, [x8]
0x100780720:  e0 03 17 aa   mov	x0, x23
0x100780724:  21 02 80 52   mov	w1, #0x11
0x100780728:  c2 3b 02 94   bl	j__os_log_type_enabled
0x10078072c:  00 01 00 34   cbz	w0, loc_10078074c ; ⤵ 0x20
0x100780730:  e0 03 18 aa   mov	x0, x24
0x100780734:  75 10 fe 97   bl	0x100704908
0x100780738:  fd 03 1d aa   mov	fp, fp
0x10078073c:  19 3b 02 94   bl	j__objc_retainAutoreleasedReturnValue
0x100780740:  e1 03 02 91   add	x1, sp, #0x80
0x100780744:  e2 03 17 aa   mov	x2, x23
0x100780748:  76 26 02 94   bl	0x10080a120
0x10078074c:  ; loc_10078074c
0x10078074c:  a0 a3 01 d1   sub	x0, fp, #0x68
0x100780750:  e4 3d 02 94   bl	j__uuid_is_null
0x100780754:  c0 19 00 35   cbnz	w0, loc_100780a8c ; ⤵ 0x338
0x100780758:  ; loc_100780758
0x100780758:  a0 a3 01 d1   sub	x0, fp, #0x68
0x10078075c:  e1 3d 02 94   bl	j__uuid_is_null
0x100780760:  a0 04 00 34   cbz	w0, loc_1007807f4 ; ⤵ 0x94
0x100780764:  c8 18 00 b0   adrp	x8, 0x100a99000
0x100780768:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x10078076c:  1f 05 00 b1   cmn	x8, #0x1
0x100780770:  81 22 00 54   b.ne	loc_100780bc0 ; ⤵ 0x450
0x100780774:  c8 18 00 b0   adrp	x8, 0x100a99000
0x100780778:  00 41 40 f9   ldr	x0, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x10078077c:  e8 03 01 91   add	x8, sp, #0x40
0x100780780:  e1 03 18 aa   mov	x1, x24
0x100780784:  02 00 80 52   mov	w2, #0
0x100780788:  23 00 80 52   mov	w3, #0x1
0x10078078c:  04 00 80 d2   mov	x4, #0
0x100780790:  05 00 80 d2   mov	x5, #0
0x100780794:  b7 38 fe 97   bl	0x10070ea70
0x100780798:  a0 a3 01 d1   sub	x0, fp, #0x68
0x10078079c:  e1 03 01 91   add	x1, sp, #0x40
0x1007807a0:  c8 3d 02 94   bl	j__uuid_copy
0x1007807a4:  a0 a3 01 d1   sub	x0, fp, #0x68
0x1007807a8:  ce 3d 02 94   bl	j__uuid_is_null
0x1007807ac:  e0 01 00 34   cbz	w0, loc_1007807e8 ; ⤵ 0x3c
0x1007807b0:  88 1a 00 b0   adrp	x8, 0x100ad1000
0x1007807b4:  08 e1 30 91   add	x8, x8, #0xc38
0x1007807b8:  17 01 40 f9   ldr	x23, [x8]
0x1007807bc:  e0 03 17 aa   mov	x0, x23
0x1007807c0:  21 02 80 52   mov	w1, #0x11
0x1007807c4:  9b 3b 02 94   bl	j__os_log_type_enabled
0x1007807c8:  00 01 00 34   cbz	w0, loc_1007807e8 ; ⤵ 0x20
0x1007807cc:  e0 03 18 aa   mov	x0, x24
0x1007807d0:  4e 10 fe 97   bl	0x100704908
0x1007807d4:  fd 03 1d aa   mov	fp, fp
0x1007807d8:  f2 3a 02 94   bl	j__objc_retainAutoreleasedReturnValue
0x1007807dc:  e1 c3 01 91   add	x1, sp, #0x70
0x1007807e0:  e2 03 17 aa   mov	x2, x23
0x1007807e4:  5f 26 02 94   bl	0x10080a160
0x1007807e8:  ; loc_1007807e8
0x1007807e8:  a0 a3 01 d1   sub	x0, fp, #0x68
0x1007807ec:  bd 3d 02 94   bl	j__uuid_is_null
0x1007807f0:  e0 14 00 35   cbnz	w0, loc_100780a8c ; ⤵ 0x29c
0x1007807f4:  ; loc_1007807f4
0x1007807f4:  9b 1a 00 b0   adrp	x27, 0x100ad1000
0x1007807f8:  7b e3 30 91   add	x27, x27, #0xc38
0x1007807fc:  77 03 40 f9   ldr	x23, [x27]
0x100780800:  e0 03 17 aa   mov	x0, x23
0x100780804:  01 00 80 52   mov	w1, #0
0x100780808:  8a 3b 02 94   bl	j__os_log_type_enabled
0x10078080c:  e0 03 00 34   cbz	w0, loc_100780888 ; ⤵ 0x7c
0x100780810:  e0 03 18 aa   mov	x0, x24
0x100780814:  3d 10 fe 97   bl	0x100704908
0x100780818:  fd 03 1d aa   mov	fp, fp
0x10078081c:  e1 3a 02 94   bl	j__objc_retainAutoreleasedReturnValue
0x100780820:  fa 03 00 aa   mov	x26, x0
0x100780824:  88 02 40 39   ldrb	w8, [x20]
0x100780828:  a9 08 00 d0   adrp	x9, 0x100896000
0x10078082c:  20 31 41 fd   ldr	d0, [x9, #0x260]
0x100780830:  e0 43 00 bd   str	s0, [sp, #0x40]
0x100780834:  e0 43 04 f8   stur	x0, [sp, #0x44]
0x100780838:  09 80 80 52   mov	w9, #0x400
0x10078083c:  e9 9b 00 79   strh	w9, [sp, #0x4c]
0x100780840:  f3 e3 04 b8   stur	w19, [sp, #0x4e]
0x100780844:  e9 a7 00 79   strh	w9, [sp, #0x52]
0x100780848:  e8 57 00 b9   str	w8, [sp, #0x54]
0x10078084c:  e9 b3 00 79   strh	w9, [sp, #0x58]
0x100780850:  f5 a3 05 b8   stur	w21, [sp, #0x5a]
0x100780854:  e9 bf 00 79   strh	w9, [sp, #0x5e]
0x100780858:  f9 63 00 b9   str	w25, [sp, #0x60]
0x10078085c:  00 c4 ff 90   adrp	x0, 0x100000000
0x100780860:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100780864:  63 13 00 90   adrp	x3, 0x1009ec000
0x100780868:  63 64 16 91   add	x3, x3, #0x599 ; "Key generated for \"%{public}@\" type=%d value=%d len=%d temporary=%d"
0x10078086c:  e4 03 01 91   add	x4, sp, #0x40
0x100780870:  e1 03 17 aa   mov	x1, x23
0x100780874:  02 00 80 52   mov	w2, #0
0x100780878:  85 04 80 52   mov	w5, #0x24
0x10078087c:  b5 36 02 94   bl	j___os_log_impl
0x100780880:  e0 03 1a aa   mov	x0, x26
0x100780884:  bb 3a 02 94   bl	j__objc_release
0x100780888:  ; loc_100780888
0x100780888:  e8 03 01 91   add	x8, sp, #0x40
0x10078088c:  f0 15 00 b0   adrp	x16, 0x100a3d000
0x100780890:  10 82 02 91   add	x16, x16, #0xa0 ; data_100a3d0a0 (__DATA_CONST.__const)
0x100780894:  10 42 00 91   add	x16, x16, #0x10
0x100780898:  f1 03 08 aa   mov	x17, x8
0x10078089c:  91 07 ef f2   movk	x17, #0x783c, lsl #0x30
0x1007808a0:  30 0a c1 da   pacda	x16, x17
0x1007808a4:  f7 03 10 aa   mov	x23, x16
0x1007808a8:  f0 7f 04 a9   stp	x16, xzr, [sp, #0x40]
0x1007808ac:  99 02 00 36   tbz	w25, #0, loc_1007808fc ; ⤵ 0x50
0x1007808b0:  c0 42 07 91   add	x0, x22, #0x1d0
0x1007808b4:  a1 a3 01 d1   sub	x1, fp, #0x68
0x1007808b8:  ab 68 eb 97   bl	0x10025ab64
0x1007808bc:  c8 62 07 91   add	x8, x22, #0x1d8
0x1007808c0:  1f 01 00 eb   cmp	x8, x0
0x1007808c4:  e0 02 00 54   b.eq	loc_100780920 ; ⤵ 0x5c
0x1007808c8:  76 03 40 f9   ldr	x22, [x27]
0x1007808cc:  e0 03 16 aa   mov	x0, x22
0x1007808d0:  01 02 80 52   mov	w1, #0x10
0x1007808d4:  57 3b 02 94   bl	j__os_log_type_enabled
0x1007808d8:  80 0a 00 34   cbz	w0, loc_100780a28 ; ⤵ 0x150
0x1007808dc:  e0 03 18 aa   mov	x0, x24
0x1007808e0:  0a 10 fe 97   bl	0x100704908
0x1007808e4:  fd 03 1d aa   mov	fp, fp
0x1007808e8:  ae 3a 02 94   bl	j__objc_retainAutoreleasedReturnValue
0x1007808ec:  e1 c3 00 91   add	x1, sp, #0x30
0x1007808f0:  e2 03 16 aa   mov	x2, x22
0x1007808f4:  2b 26 02 94   bl	0x10080a1a0
0x1007808f8:  4c 00 00 14   b	loc_100780a28 ; ⤵ 0x130
0x1007808fc:  ; loc_1007808fc
0x1007808fc:  c0 42 07 91   add	x0, x22, #0x1d0
0x100780900:  a1 a3 01 d1   sub	x1, fp, #0x68
0x100780904:  98 68 eb 97   bl	0x10025ab64
0x100780908:  c8 62 07 91   add	x8, x22, #0x1d8
0x10078090c:  1f 01 00 eb   cmp	x8, x0
0x100780910:  e0 02 00 54   b.eq	loc_10078096c ; ⤵ 0x5c
0x100780914:  01 c0 00 91   add	x1, x0, #0x30
0x100780918:  e0 03 01 91   add	x0, sp, #0x40
0x10078091c:  42 00 00 14   b	loc_100780a24 ; ⤵ 0x108
0x100780920:  ; loc_100780920
0x100780920:  c0 e2 06 91   add	x0, x22, #0x1b8
0x100780924:  a1 a3 01 d1   sub	x1, fp, #0x68
0x100780928:  8f 68 eb 97   bl	0x10025ab64
0x10078092c:  c8 02 07 91   add	x8, x22, #0x1c0
0x100780930:  1f 01 00 eb   cmp	x8, x0
0x100780934:  00 0d 00 54   b.eq	loc_100780ad4 ; ⤵ 0x1a0
0x100780938:  76 03 40 f9   ldr	x22, [x27]
0x10078093c:  e0 03 16 aa   mov	x0, x22
0x100780940:  01 02 80 52   mov	w1, #0x10
0x100780944:  3b 3b 02 94   bl	j__os_log_type_enabled
0x100780948:  00 07 00 34   cbz	w0, loc_100780a28 ; ⤵ 0xe0
0x10078094c:  e0 03 18 aa   mov	x0, x24
0x100780950:  ee 0f fe 97   bl	0x100704908
0x100780954:  fd 03 1d aa   mov	fp, fp
0x100780958:  92 3a 02 94   bl	j__objc_retainAutoreleasedReturnValue
0x10078095c:  e1 c3 00 91   add	x1, sp, #0x30
0x100780960:  e2 03 16 aa   mov	x2, x22
0x100780964:  21 26 02 94   bl	0x10080a1e8
0x100780968:  30 00 00 14   b	loc_100780a28 ; ⤵ 0xc0
0x10078096c:  ; loc_10078096c
0x10078096c:  21 0b 99 d2   mov	x1, #0xc859
0x100780970:  01 7b b8 f2   movk	x1, #0xc3d8, lsl #0x10
0x100780974:  01 88 c3 f2   movk	x1, #0x1c40, lsl #0x20
0x100780978:  41 21 e0 f2   movk	x1, #0x10a, lsl #0x30
0x10078097c:  00 05 80 52   mov	w0, #0x28
0x100780980:  04 36 02 94   bl	j___ZnwmSt19__type_descriptor_t
0x100780984:  28 00 80 52   mov	w8, #0x1
0x100780988:  08 08 00 b9   str	w8, [x0, #0x8]
0x10078098c:  f0 15 00 90   adrp	x16, 0x100a3c000
0x100780990:  10 82 3f 91   add	x16, x16, #0xfe0 ; data_100a3cfe0 (__DATA_CONST.__const)
0x100780994:  10 42 00 91   add	x16, x16, #0x10
0x100780998:  f1 03 00 aa   mov	x17, x0
0x10078099c:  51 fd e9 f2   movk	x17, #0x4fea, lsl #0x30
0x1007809a0:  30 0a c1 da   pacda	x16, x17
0x1007809a4:  10 00 00 f9   str	x16, [x0]
0x1007809a8:  1f 10 00 f9   str	xzr, [x0, #0x20]
0x1007809ac:  e8 03 00 aa   mov	x8, x0
0x1007809b0:  1f 8d 01 f8   str	xzr, [x8, #0x18]!
0x1007809b4:  08 08 00 f9   str	x8, [x0, #0x10]
0x1007809b8:  e8 03 00 91   mov	x8, sp
0x1007809bc:  f0 15 00 b0   adrp	x16, 0x100a3d000
0x1007809c0:  10 82 02 91   add	x16, x16, #0xa0 ; data_100a3d0a0 (__DATA_CONST.__const)
0x1007809c4:  10 42 00 91   add	x16, x16, #0x10
0x1007809c8:  f1 03 08 aa   mov	x17, x8
0x1007809cc:  91 07 ef f2   movk	x17, #0x783c, lsl #0x30
0x1007809d0:  30 0a c1 da   pacda	x16, x17
0x1007809d4:  f8 03 10 aa   mov	x24, x16
0x1007809d8:  f0 03 00 a9   stp	x16, x0, [sp]
0x1007809dc:  e0 03 01 91   add	x0, sp, #0x40
0x1007809e0:  e1 03 00 91   mov	x1, sp
0x1007809e4:  b2 d9 e2 97   bl	0x1000370ac
0x1007809e8:  f8 03 00 f9   str	x24, [sp]
0x1007809ec:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x1007809f0:  40 00 00 b4   cbz	x0, loc_1007809f8 ; ⤵ 0x8
0x1007809f4:  a6 dd ef 97   bl	0x10037808c
0x1007809f8:  ; loc_1007809f8
0x1007809f8:  a8 a3 01 d1   sub	x8, fp, #0x68
0x1007809fc:  e8 03 00 f9   str	x8, [sp]
0x100780a00:  a2 08 00 f0   adrp	x2, 0x100897000
0x100780a04:  42 60 31 91   add	x2, x2, #0xc58
0x100780a08:  c0 42 07 91   add	x0, x22, #0x1d0
0x100780a0c:  a1 a3 01 d1   sub	x1, fp, #0x68
0x100780a10:  e3 03 00 91   mov	x3, sp
0x100780a14:  e4 c3 00 91   add	x4, sp, #0x30
0x100780a18:  20 22 00 94   bl	0x100789298
0x100780a1c:  00 c0 00 91   add	x0, x0, #0x30
0x100780a20:  e1 03 01 91   add	x1, sp, #0x40
0x100780a24:  ; loc_100780a24
0x100780a24:  a2 d9 e2 97   bl	0x1000370ac
0x100780a28:  ; loc_100780a28
0x100780a28:  f6 27 40 f9   ldr	x22, [sp, #0x48]
0x100780a2c:  16 03 00 b4   cbz	x22, loc_100780a8c ; ⤵ 0x60
0x100780a30:  e2 03 15 2a   mov	w2, w21
0x100780a34:  e0 03 00 91   mov	x0, sp
0x100780a38:  e1 03 14 aa   mov	x1, x20
0x100780a3c:  9b 83 fc 97   bl	0x1006a18a8
0x100780a40:  f4 03 00 91   mov	x20, sp
0x100780a44:  e2 03 00 91   mov	x2, sp
0x100780a48:  e0 03 16 aa   mov	x0, x22
0x100780a4c:  e1 03 13 aa   mov	x1, x19
0x100780a50:  97 7a eb 97   bl	0x10025f4ac
0x100780a54:  b0 15 00 90   adrp	x16, 0x100a34000
0x100780a58:  10 62 06 91   add	x16, x16, #0x198 ; data_100a34198 (__DATA_CONST.__const)
0x100780a5c:  10 42 00 91   add	x16, x16, #0x10
0x100780a60:  f1 03 14 aa   mov	x17, x20
0x100780a64:  b1 3d f8 f2   movk	x17, #0xc1ed, lsl #0x30
0x100780a68:  30 0a c1 da   pacda	x16, x17
0x100780a6c:  f0 03 00 f9   str	x16, [sp]
0x100780a70:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x100780a74:  40 00 00 b4   cbz	x0, loc_100780a7c ; ⤵ 0x8
0x100780a78:  85 dd ef 97   bl	0x10037808c
0x100780a7c:  ; loc_100780a7c
0x100780a7c:  e0 27 40 f9   ldr	x0, [sp, #0x48]
0x100780a80:  f7 23 00 f9   str	x23, [sp, #0x40]
0x100780a84:  40 00 00 b4   cbz	x0, loc_100780a8c ; ⤵ 0x8
0x100780a88:  81 dd ef 97   bl	0x10037808c
0x100780a8c:  ; loc_100780a8c
0x100780a8c:  e0 5f 00 91   add	x0, sp, #0x17
0x100780a90:  fe d7 ec 97   bl	0x1002b6a88
0x100780a94:  e0 83 00 91   add	x0, sp, #0x20
0x100780a98:  bb d8 ec 97   bl	0x1002b6d84
0x100780a9c:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x100780aa0:  89 15 00 d0   adrp	x9, 0x100a32000
0x100780aa4:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100780aa8:  29 01 40 f9   ldr	x9, [x9]
0x100780aac:  3f 01 08 eb   cmp	x9, x8
0x100780ab0:  c1 08 00 54   b.ne	loc_100780bc8 ; ⤵ 0x118
0x100780ab4:  fd 7b 50 a9   ldp	fp, lr, [sp, #0x100]
0x100780ab8:  f4 4f 4f a9   ldp	x20, x19, [sp, #0xf0]
0x100780abc:  f6 57 4e a9   ldp	x22, x21, [sp, #0xe0]
0x100780ac0:  f8 5f 4d a9   ldp	x24, x23, [sp, #0xd0]
0x100780ac4:  fa 67 4c a9   ldp	x26, x25, [sp, #0xc0]
0x100780ac8:  fc 6f 4b a9   ldp	x28, x27, [sp, #0xb0]
0x100780acc:  ff 43 04 91   add	sp, sp, #0x110
0x100780ad0:  ff 0f 5f d6   retab
0x100780ad4:  ; loc_100780ad4
0x100780ad4:  c0 a2 07 91   add	x0, x22, #0x1e8
0x100780ad8:  a1 a3 01 d1   sub	x1, fp, #0x68
0x100780adc:  22 68 eb 97   bl	0x10025ab64
0x100780ae0:  c8 c2 07 91   add	x8, x22, #0x1f0
0x100780ae4:  1f 01 00 eb   cmp	x8, x0
0x100780ae8:  80 00 00 54   b.eq	loc_100780af8 ; ⤵ 0x10
0x100780aec:  01 c0 00 91   add	x1, x0, #0x30
0x100780af0:  e0 03 01 91   add	x0, sp, #0x40
0x100780af4:  2f 00 00 14   b	loc_100780bb0 ; ⤵ 0xbc
0x100780af8:  ; loc_100780af8
0x100780af8:  21 0b 99 d2   mov	x1, #0xc859
0x100780afc:  01 7b b8 f2   movk	x1, #0xc3d8, lsl #0x10
0x100780b00:  01 88 c3 f2   movk	x1, #0x1c40, lsl #0x20
0x100780b04:  41 21 e0 f2   movk	x1, #0x10a, lsl #0x30
0x100780b08:  00 05 80 52   mov	w0, #0x28
0x100780b0c:  a1 35 02 94   bl	j___ZnwmSt19__type_descriptor_t
0x100780b10:  28 00 80 52   mov	w8, #0x1
0x100780b14:  08 08 00 b9   str	w8, [x0, #0x8]
0x100780b18:  f0 15 00 90   adrp	x16, 0x100a3c000
0x100780b1c:  10 82 3f 91   add	x16, x16, #0xfe0 ; data_100a3cfe0 (__DATA_CONST.__const)
0x100780b20:  10 42 00 91   add	x16, x16, #0x10
0x100780b24:  f1 03 00 aa   mov	x17, x0
0x100780b28:  51 fd e9 f2   movk	x17, #0x4fea, lsl #0x30
0x100780b2c:  30 0a c1 da   pacda	x16, x17
0x100780b30:  10 00 00 f9   str	x16, [x0]
0x100780b34:  1f 10 00 f9   str	xzr, [x0, #0x20]
0x100780b38:  e8 03 00 aa   mov	x8, x0
0x100780b3c:  1f 8d 01 f8   str	xzr, [x8, #0x18]!
0x100780b40:  08 08 00 f9   str	x8, [x0, #0x10]
0x100780b44:  e8 03 00 91   mov	x8, sp
0x100780b48:  f0 15 00 b0   adrp	x16, 0x100a3d000
0x100780b4c:  10 82 02 91   add	x16, x16, #0xa0 ; data_100a3d0a0 (__DATA_CONST.__const)
0x100780b50:  10 42 00 91   add	x16, x16, #0x10
0x100780b54:  f1 03 08 aa   mov	x17, x8
0x100780b58:  91 07 ef f2   movk	x17, #0x783c, lsl #0x30
0x100780b5c:  30 0a c1 da   pacda	x16, x17
0x100780b60:  f8 03 10 aa   mov	x24, x16
0x100780b64:  f0 03 00 a9   stp	x16, x0, [sp]
0x100780b68:  e0 03 01 91   add	x0, sp, #0x40
0x100780b6c:  e1 03 00 91   mov	x1, sp
0x100780b70:  4f d9 e2 97   bl	0x1000370ac
0x100780b74:  f8 03 00 f9   str	x24, [sp]
0x100780b78:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x100780b7c:  40 00 00 b4   cbz	x0, loc_100780b84 ; ⤵ 0x8
0x100780b80:  43 dd ef 97   bl	0x10037808c
0x100780b84:  ; loc_100780b84
0x100780b84:  a8 a3 01 d1   sub	x8, fp, #0x68
0x100780b88:  e8 03 00 f9   str	x8, [sp]
0x100780b8c:  a2 08 00 f0   adrp	x2, 0x100897000
0x100780b90:  42 60 31 91   add	x2, x2, #0xc58
0x100780b94:  c0 a2 07 91   add	x0, x22, #0x1e8
0x100780b98:  a1 a3 01 d1   sub	x1, fp, #0x68
0x100780b9c:  e3 03 00 91   mov	x3, sp
0x100780ba0:  e4 c3 00 91   add	x4, sp, #0x30
0x100780ba4:  bd 21 00 94   bl	0x100789298
0x100780ba8:  00 c0 00 91   add	x0, x0, #0x30

