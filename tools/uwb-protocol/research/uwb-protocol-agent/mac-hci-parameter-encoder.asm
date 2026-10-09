
sub_10016b5a8:
0x10016b5a8:  7f 23 03 d5   pacibsp
0x10016b5ac:  ff c3 02 d1   sub	sp, sp, #0xb0
0x10016b5b0:  fc 6f 05 a9   stp	x28, x27, [sp, #0x50]
0x10016b5b4:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x10016b5b8:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x10016b5bc:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x10016b5c0:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x10016b5c4:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x10016b5c8:  fd 83 02 91   add	fp, sp, #0xa0
0x10016b5cc:  e6 13 00 f9   str	x6, [sp, #0x20]
0x10016b5d0:  f8 03 05 aa   mov	x24, x5
0x10016b5d4:  fc 03 04 aa   mov	x28, x4
0x10016b5d8:  fa 03 03 aa   mov	x26, x3
0x10016b5dc:  f4 03 02 aa   mov	x20, x2
0x10016b5e0:  f6 03 01 aa   mov	x22, x1
0x10016b5e4:  28 46 00 f0   adrp	x8, 0x100a32000
0x10016b5e8:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10016b5ec:  08 01 40 f9   ldr	x8, [x8]
0x10016b5f0:  e8 27 00 f9   str	x8, [sp, #0x48]
0x10016b5f4:  e0 17 00 f9   str	x0, [sp, #0x28]
0x10016b5f8:  28 0c 40 79   ldrh	w8, [x1, #0x6]
0x10016b5fc:  15 11 00 91   add	x21, x8, #0x4
0x10016b600:  e0 03 15 aa   mov	x0, x21
0x10016b604:  81 40 8f 52   mov	w1, #0x7a04
0x10016b608:  e1 14 ad 72   movk	w1, #0x68a7, lsl #0x10
0x10016b60c:  90 10 fe 97   bl	0x1000ef84c
0x10016b610:  40 4d 00 b4   cbz	x0, loc_10016bfb8 ; ⤵ 0x9a8
0x10016b614:  f3 03 00 aa   mov	x19, x0
0x10016b618:  9f 3e 00 39   strb	wzr, [x20, #0xf]
0x10016b61c:  80 02 00 f9   str	x0, [x20]
0x10016b620:  95 12 00 79   strh	w21, [x20, #0x8]
0x10016b624:  95 16 00 79   strh	w21, [x20, #0xa]
0x10016b628:  bf 3e 00 72   tst	w21, #0xffff
0x10016b62c:  60 56 00 54   b.eq	loc_10016c0f8 ; ⤵ 0xacc
0x10016b630:  48 00 80 52   mov	w8, #0x2
0x10016b634:  88 3a 00 39   strb	w8, [x20, #0xe]
0x10016b638:  95 16 00 79   strh	w21, [x20, #0xa]
0x10016b63c:  28 00 80 52   mov	w8, #0x1
0x10016b640:  88 1a 00 79   strh	w8, [x20, #0xc]
0x10016b644:  68 02 00 39   strb	w8, [x19]
0x10016b648:  88 3e 40 39   ldrb	w8, [x20, #0xf]
0x10016b64c:  28 56 00 35   cbnz	w8, loc_10016c110 ; ⤵ 0xac4
0x10016b650:  89 16 40 79   ldrh	w9, [x20, #0xa]
0x10016b654:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016b658:  29 01 08 4b   sub	w9, w9, w8
0x10016b65c:  3f 05 00 71   cmp	w9, #0x1
0x10016b660:  4d 56 00 54   b.le	loc_10016c128 ; ⤵ 0xac8
0x10016b664:  89 3a 40 39   ldrb	w9, [x20, #0xe]
0x10016b668:  3f 09 00 71   cmp	w9, #0x2
0x10016b66c:  81 56 00 54   b.ne	loc_10016c13c ; ⤵ 0xad0
0x10016b670:  c9 0a 40 39   ldrb	w9, [x22, #0x2]
0x10016b674:  8a 02 40 f9   ldr	x10, [x20]
0x10016b678:  49 49 28 38   strb	w9, [x10, w8, uxtw]
0x10016b67c:  c8 0e 40 39   ldrb	w8, [x22, #0x3]
0x10016b680:  89 02 40 f9   ldr	x9, [x20]
0x10016b684:  8a 1a 40 79   ldrh	w10, [x20, #0xc]
0x10016b688:  29 01 0a 8b   add	x9, x9, x10
0x10016b68c:  28 05 00 39   strb	w8, [x9, #0x1]
0x10016b690:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016b694:  28 09 00 11   add	w8, w9, #0x2
0x10016b698:  88 1a 00 79   strh	w8, [x20, #0xc]
0x10016b69c:  8a 3e 40 39   ldrb	w10, [x20, #0xf]
0x10016b6a0:  aa 55 00 35   cbnz	w10, loc_10016c154 ; ⤵ 0xab4
0x10016b6a4:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016b6a8:  5f 21 28 6b   cmp	w10, w8, uxth
0x10016b6ac:  09 56 00 54   b.ls	loc_10016c16c ; ⤵ 0xac0
0x10016b6b0:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016b6b4:  5f 09 00 71   cmp	w10, #0x2
0x10016b6b8:  41 56 00 54   b.ne	loc_10016c180 ; ⤵ 0xac8
0x10016b6bc:  ca 1a 40 39   ldrb	w10, [x22, #0x6]
0x10016b6c0:  8b 02 40 f9   ldr	x11, [x20]
0x10016b6c4:  29 0d 00 11   add	w9, w9, #0x3
0x10016b6c8:  89 1a 00 79   strh	w9, [x20, #0xc]
0x10016b6cc:  08 3d 40 92   and	x8, x8, #0xffff
0x10016b6d0:  6a 69 28 38   strb	w10, [x11, x8]
0x10016b6d4:  c8 06 40 f9   ldr	x8, [x22, #0x8]
0x10016b6d8:  48 46 00 b4   cbz	x8, loc_10016bfa0 ; ⤵ 0x8c8
0x10016b6dc:  08 01 40 39   ldrb	w8, [x8]
0x10016b6e0:  08 46 00 34   cbz	w8, loc_10016bfa0 ; ⤵ 0x8c0
0x10016b6e4:  17 00 80 d2   mov	x23, #0
0x10016b6e8:  fa 07 00 f9   str	x26, [sp, #0x8]
0x10016b6ec:  ; loc_10016b6ec
0x10016b6ec:  1f cd 00 71   cmp	w8, #0x33
0x10016b6f0:  ad 05 00 54   b.le	loc_10016b7a4 ; ⤵ 0xb4
0x10016b6f4:  10 85 01 51   sub	w16, w8, #0x61
0x10016b6f8:  1f 66 00 71   cmp	w16, #0x19
0x10016b6fc:  a8 09 00 54   b.hi	loc_10016b830 ; ⤵ 0x134
0x10016b700:  1f 66 00 f1   cmp	x16, #0x19
0x10016b704:  10 92 9f 9a   csel	x16, x16, xzr, ls
0x10016b708:  11 00 00 b0   adrp	x17, 0x10016c000
0x10016b70c:  31 52 1c 91   add	x17, x17, #0x714
0x10016b710:  30 7a b0 b8   ldrsw	x16, [x17, x16, lsl #0x2]
0x10016b714:  11 00 00 10   adr	x17, 0x10016b714
0x10016b718:  30 02 10 8b   add	x16, x17, x16
0x10016b71c:  00 02 1f d6   br	x16
0x10016b720:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016b724:  09 21 00 91   add	x9, x8, #0x8
0x10016b728:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016b72c:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016b730:  c9 78 00 35   cbnz	w9, loc_10016c648 ; ⤵ 0xf18
0x10016b734:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016b738:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016b73c:  4a 01 09 4b   sub	w10, w10, w9
0x10016b740:  5f 15 00 71   cmp	w10, #0x5
0x10016b744:  ed 78 00 54   b.le	loc_10016c660 ; ⤵ 0xf1c
0x10016b748:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016b74c:  5f 09 00 71   cmp	w10, #0x2
0x10016b750:  21 79 00 54   b.ne	loc_10016c674 ; ⤵ 0xf24
0x10016b754:  1b 01 40 f9   ldr	x27, [x8]
0x10016b758:  88 02 40 f9   ldr	x8, [x20]
0x10016b75c:  00 01 09 8b   add	x0, x8, x9
0x10016b760:  e1 03 1b aa   mov	x1, x27
0x10016b764:  c2 00 80 52   mov	w2, #0x6
0x10016b768:  9c 6e 03 94   bl	0x1002471d8
0x10016b76c:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016b770:  08 19 00 11   add	w8, w8, #0x6
0x10016b774:  88 1a 00 79   strh	w8, [x20, #0xc]
0x10016b778:  bc 00 00 b4   cbz	x28, loc_10016b78c ; ⤵ 0x14
0x10016b77c:  68 03 40 b9   ldr	w8, [x27]
0x10016b780:  69 0b 40 79   ldrh	w9, [x27, #0x4]
0x10016b784:  89 0b 00 79   strh	w9, [x28, #0x4]
0x10016b788:  88 03 00 b9   str	w8, [x28]
0x10016b78c:  ; loc_10016b78c
0x10016b78c:  78 3b 00 b4   cbz	x24, loc_10016bef8 ; ⤵ 0x76c
0x10016b790:  68 03 40 b9   ldr	w8, [x27]
0x10016b794:  69 0b 40 79   ldrh	w9, [x27, #0x4]
0x10016b798:  09 53 00 78   sturh	w9, [x24, #0x5]
0x10016b79c:  08 13 00 b8   stur	w8, [x24, #0x1]
0x10016b7a0:  d6 01 00 14   b	loc_10016bef8 ; ⤵ 0x758
0x10016b7a4:  ; loc_10016b7a4
0x10016b7a4:  1f c5 00 71   cmp	w8, #0x31
0x10016b7a8:  80 06 00 54   b.eq	loc_10016b878 ; ⤵ 0xd0
0x10016b7ac:  1f c9 00 71   cmp	w8, #0x32
0x10016b7b0:  80 08 00 54   b.eq	loc_10016b8c0 ; ⤵ 0x110
0x10016b7b4:  1f cd 00 71   cmp	w8, #0x33
0x10016b7b8:  e1 42 00 54   b.ne	loc_10016c014 ; ⤵ 0x85c
0x10016b7bc:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016b7c0:  09 21 00 91   add	x9, x8, #0x8
0x10016b7c4:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016b7c8:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016b7cc:  09 4f 00 35   cbnz	w9, loc_10016c1ac ; ⤵ 0x9e0
0x10016b7d0:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016b7d4:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016b7d8:  4a 01 09 4b   sub	w10, w10, w9
0x10016b7dc:  5f 09 00 71   cmp	w10, #0x2
0x10016b7e0:  2d 4f 00 54   b.le	loc_10016c1c4 ; ⤵ 0x9e4
0x10016b7e4:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016b7e8:  5f 09 00 71   cmp	w10, #0x2
0x10016b7ec:  61 4f 00 54   b.ne	loc_10016c1d8 ; ⤵ 0x9ec
0x10016b7f0:  08 01 40 b9   ldr	w8, [x8]
0x10016b7f4:  8a 02 40 f9   ldr	x10, [x20]
0x10016b7f8:  48 49 29 38   strb	w8, [x10, w9, uxtw]
0x10016b7fc:  09 7d 08 53   lsr	w9, w8, #0x8
0x10016b800:  8a 02 40 f9   ldr	x10, [x20]
0x10016b804:  8b 1a 40 79   ldrh	w11, [x20, #0xc]
0x10016b808:  4a 01 0b 8b   add	x10, x10, x11
0x10016b80c:  49 05 00 39   strb	w9, [x10, #0x1]
0x10016b810:  08 7d 10 53   lsr	w8, w8, #0x10
0x10016b814:  89 02 40 f9   ldr	x9, [x20]
0x10016b818:  8a 1a 40 79   ldrh	w10, [x20, #0xc]
0x10016b81c:  29 01 0a 8b   add	x9, x9, x10
0x10016b820:  28 09 00 39   strb	w8, [x9, #0x2]
0x10016b824:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016b828:  08 0d 00 11   add	w8, w8, #0x3
0x10016b82c:  b2 01 00 14   b	loc_10016bef4 ; ⤵ 0x6c8
0x10016b830:  ; loc_10016b830
0x10016b830:  1f d1 00 71   cmp	w8, #0x34
0x10016b834:  e0 31 00 54   b.eq	loc_10016be70 ; ⤵ 0x63c
0x10016b838:  1f e1 00 71   cmp	w8, #0x38
0x10016b83c:  c1 3e 00 54   b.ne	loc_10016c014 ; ⤵ 0x7d8
0x10016b840:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016b844:  09 21 00 91   add	x9, x8, #0x8
0x10016b848:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016b84c:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016b850:  e9 71 00 35   cbnz	w9, loc_10016c68c ; ⤵ 0xe3c
0x10016b854:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016b858:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016b85c:  4a 01 09 4b   sub	w10, w10, w9
0x10016b860:  5f 1d 00 71   cmp	w10, #0x7
0x10016b864:  0d 72 00 54   b.le	loc_10016c6a4 ; ⤵ 0xe40
0x10016b868:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016b86c:  5f 09 00 71   cmp	w10, #0x2
0x10016b870:  a0 2c 00 54   b.eq	loc_10016be04 ; ⤵ 0x594
0x10016b874:  91 03 00 14   b	loc_10016c6b8 ; ⤵ 0xe44
0x10016b878:  ; loc_10016b878
0x10016b878:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016b87c:  09 21 00 91   add	x9, x8, #0x8
0x10016b880:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016b884:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016b888:  69 4d 00 35   cbnz	w9, loc_10016c234 ; ⤵ 0x9ac
0x10016b88c:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016b890:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016b894:  5f 01 09 6b   cmp	w10, w9
0x10016b898:  a9 4d 00 54   b.ls	loc_10016c24c ; ⤵ 0x9b4
0x10016b89c:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016b8a0:  5f 09 00 71   cmp	w10, #0x2
0x10016b8a4:  a1 47 00 54   b.ne	loc_10016c198 ; ⤵ 0x8f4
0x10016b8a8:  08 01 40 b9   ldr	w8, [x8]
0x10016b8ac:  8a 02 40 f9   ldr	x10, [x20]
0x10016b8b0:  2b 05 00 11   add	w11, w9, #0x1
0x10016b8b4:  8b 1a 00 79   strh	w11, [x20, #0xc]
0x10016b8b8:  48 49 29 38   strb	w8, [x10, w9, uxtw]
0x10016b8bc:  8f 01 00 14   b	loc_10016bef8 ; ⤵ 0x63c
0x10016b8c0:  ; loc_10016b8c0
0x10016b8c0:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016b8c4:  09 21 00 91   add	x9, x8, #0x8
0x10016b8c8:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016b8cc:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016b8d0:  09 49 00 35   cbnz	w9, loc_10016c1f0 ; ⤵ 0x920
0x10016b8d4:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016b8d8:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016b8dc:  4a 01 09 4b   sub	w10, w10, w9
0x10016b8e0:  5f 05 00 71   cmp	w10, #0x1
0x10016b8e4:  2d 49 00 54   b.le	loc_10016c208 ; ⤵ 0x924
0x10016b8e8:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016b8ec:  5f 09 00 71   cmp	w10, #0x2
0x10016b8f0:  61 49 00 54   b.ne	loc_10016c21c ; ⤵ 0x92c
0x10016b8f4:  08 01 40 b9   ldr	w8, [x8]
0x10016b8f8:  8a 02 40 f9   ldr	x10, [x20]
0x10016b8fc:  48 49 29 38   strb	w8, [x10, w9, uxtw]
0x10016b900:  08 7d 08 53   lsr	w8, w8, #0x8
0x10016b904:  89 02 40 f9   ldr	x9, [x20]
0x10016b908:  8a 1a 40 79   ldrh	w10, [x20, #0xc]
0x10016b90c:  29 01 0a 8b   add	x9, x9, x10
0x10016b910:  28 05 00 39   strb	w8, [x9, #0x1]
0x10016b914:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016b918:  08 09 00 11   add	w8, w8, #0x2
0x10016b91c:  76 01 00 14   b	loc_10016bef4 ; ⤵ 0x5d8
0x10016b920:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016b924:  09 21 00 91   add	x9, x8, #0x8
0x10016b928:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016b92c:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016b930:  09 50 00 35   cbnz	w9, loc_10016c330 ; ⤵ 0xa00
0x10016b934:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016b938:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016b93c:  4a 01 09 4b   sub	w10, w10, w9
0x10016b940:  5f 25 00 71   cmp	w10, #0x9
0x10016b944:  2d 50 00 54   b.le	loc_10016c348 ; ⤵ 0xa04
0x10016b948:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016b94c:  5f 09 00 71   cmp	w10, #0x2
0x10016b950:  40 0d 00 54   b.eq	loc_10016baf8 ; ⤵ 0x1a8
0x10016b954:  82 02 00 14   b	loc_10016c35c ; ⤵ 0xa08
0x10016b958:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016b95c:  09 21 00 91   add	x9, x8, #0x8
0x10016b960:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016b964:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016b968:  c9 51 00 35   cbnz	w9, loc_10016c3a0 ; ⤵ 0xa38
0x10016b96c:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016b970:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016b974:  4a 01 09 4b   sub	w10, w10, w9
0x10016b978:  5f 11 00 71   cmp	w10, #0x4
0x10016b97c:  ed 51 00 54   b.le	loc_10016c3b8 ; ⤵ 0xa3c
0x10016b980:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016b984:  5f 09 00 71   cmp	w10, #0x2
0x10016b988:  21 52 00 54   b.ne	loc_10016c3cc ; ⤵ 0xa44
0x10016b98c:  08 01 40 f9   ldr	x8, [x8]
0x10016b990:  8a 02 40 f9   ldr	x10, [x20]
0x10016b994:  49 01 09 8b   add	x9, x10, x9
0x10016b998:  0a 01 40 b9   ldr	w10, [x8]
0x10016b99c:  08 11 40 39   ldrb	w8, [x8, #0x4]
0x10016b9a0:  28 11 00 39   strb	w8, [x9, #0x4]
0x10016b9a4:  2a 01 00 b9   str	w10, [x9]
0x10016b9a8:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016b9ac:  08 15 00 11   add	w8, w8, #0x5
0x10016b9b0:  51 01 00 14   b	loc_10016bef4 ; ⤵ 0x544
0x10016b9b4:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016b9b8:  09 21 00 91   add	x9, x8, #0x8
0x10016b9bc:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016b9c0:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016b9c4:  29 53 00 35   cbnz	w9, loc_10016c428 ; ⤵ 0xa64
0x10016b9c8:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016b9cc:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016b9d0:  4a 01 09 cb   sub	x10, x10, x9
0x10016b9d4:  5f 3d 00 f1   cmp	x10, #0xf
0x10016b9d8:  49 53 00 54   b.ls	loc_10016c440 ; ⤵ 0xa68
0x10016b9dc:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016b9e0:  5f 09 00 71   cmp	w10, #0x2
0x10016b9e4:  60 13 00 54   b.eq	loc_10016bc50 ; ⤵ 0x26c
0x10016b9e8:  9b 02 00 14   b	loc_10016c454 ; ⤵ 0xa6c
0x10016b9ec:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016b9f0:  09 21 00 91   add	x9, x8, #0x8
0x10016b9f4:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016b9f8:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016b9fc:  a9 55 00 35   cbnz	w9, loc_10016c4b0 ; ⤵ 0xab4
0x10016ba00:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016ba04:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016ba08:  4a 01 09 4b   sub	w10, w10, w9
0x10016ba0c:  5f 05 00 71   cmp	w10, #0x1
0x10016ba10:  cd 55 00 54   b.le	loc_10016c4c8 ; ⤵ 0xab8
0x10016ba14:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016ba18:  5f 09 00 71   cmp	w10, #0x2
0x10016ba1c:  01 56 00 54   b.ne	loc_10016c4dc ; ⤵ 0xac0
0x10016ba20:  08 01 40 f9   ldr	x8, [x8]
0x10016ba24:  0a 01 40 39   ldrb	w10, [x8]
0x10016ba28:  8b 02 40 f9   ldr	x11, [x20]
0x10016ba2c:  6a 49 29 38   strb	w10, [x11, w9, uxtw]
0x10016ba30:  09 05 40 39   ldrb	w9, [x8, #0x1]
0x10016ba34:  8a 02 40 f9   ldr	x10, [x20]
0x10016ba38:  8b 1a 40 79   ldrh	w11, [x20, #0xc]
0x10016ba3c:  4a 01 0b 8b   add	x10, x10, x11
0x10016ba40:  49 05 00 39   strb	w9, [x10, #0x1]
0x10016ba44:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016ba48:  29 09 00 11   add	w9, w9, #0x2
0x10016ba4c:  89 1a 00 79   strh	w9, [x20, #0xc]
0x10016ba50:  5a 25 00 b4   cbz	x26, loc_10016bef8 ; ⤵ 0x4a8
0x10016ba54:  48 03 00 f9   str	x8, [x26]
0x10016ba58:  28 01 00 14   b	loc_10016bef8 ; ⤵ 0x4a0
0x10016ba5c:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016ba60:  09 21 00 91   add	x9, x8, #0x8
0x10016ba64:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016ba68:  00 01 40 f9   ldr	x0, [x8]
0x10016ba6c:  e0 0f 00 f9   str	x0, [sp, #0x18]
0x10016ba70:  a4 90 1a 94   bl	j__strlen
0x10016ba74:  fb 03 00 aa   mov	x27, x0
0x10016ba78:  08 3c 40 92   and	x8, x0, #0xffff
0x10016ba7c:  1f e1 03 f1   cmp	x8, #0xf8
0x10016ba80:  08 1f 80 52   mov	w8, #0xf8
0x10016ba84:  1a 81 9b 1a   csel	w26, w8, w27, hi
0x10016ba88:  88 02 40 f9   ldr	x8, [x20]
0x10016ba8c:  e8 0b 00 f9   str	x8, [sp, #0x10]
0x10016ba90:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016ba94:  88 3e 40 39   ldrb	w8, [x20, #0xf]
0x10016ba98:  a8 23 00 34   cbz	w8, loc_10016bf0c ; ⤵ 0x474
0x10016ba9c:  40 3b 00 d0   adrp	x0, 0x1008d5000
0x10016baa0:  00 40 17 91   add	x0, x0, #0x5d0 ; "/AppleInternal/Library/BuildRoots/4~CJ24ugCHWzZFjHPGppmHRiCpRHkU8TOob4WXxOs/Library/Caches/com.apple.xbs/TemporaryDirectory.ag1nPV/Sources/MobileBluetooth/Stack/corestack/hci/hcicmdapi.c"
0x10016baa4:  41 53 81 52   mov	w1, #0xa9a
0x10016baa8:  42 3b 00 d0   adrp	x2, 0x1008d5000
0x10016baac:  42 8c 25 91   add	x2, x2, #0x963 ; "OI_STATUS genericCommandFormatter(va_list, const HCI_COMMAND_DESCRIPTOR *, OI_BYTE_STREAM *, OI_HCI_CONNECTION_HANDLE *, OI_BD_ADDR *, LE_Address *, uint8_t *)"
0x10016bab0:  f9 03 09 aa   mov	x25, x9
0x10016bab4:  9a 61 03 94   bl	0x10024411c
0x10016bab8:  e9 03 19 aa   mov	x9, x25
0x10016babc:  08 00 80 52   mov	w8, #0
0x10016bac0:  15 01 00 14   b	loc_10016bf14 ; ⤵ 0x454
0x10016bac4:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016bac8:  09 21 00 91   add	x9, x8, #0x8
0x10016bacc:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016bad0:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016bad4:  69 57 00 35   cbnz	w9, loc_10016c5c0 ; ⤵ 0xaec
0x10016bad8:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016badc:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016bae0:  4a 01 09 4b   sub	w10, w10, w9
0x10016bae4:  5f 25 00 71   cmp	w10, #0x9
0x10016bae8:  8d 57 00 54   b.le	loc_10016c5d8 ; ⤵ 0xaf0
0x10016baec:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016baf0:  5f 09 00 71   cmp	w10, #0x2
0x10016baf4:  c1 57 00 54   b.ne	loc_10016c5ec ; ⤵ 0xaf8
0x10016baf8:  ; loc_10016baf8
0x10016baf8:  08 01 40 f9   ldr	x8, [x8]
0x10016bafc:  8a 02 40 f9   ldr	x10, [x20]
0x10016bb00:  49 01 09 8b   add	x9, x10, x9
0x10016bb04:  0a 01 40 f9   ldr	x10, [x8]
0x10016bb08:  08 11 40 79   ldrh	w8, [x8, #0x8]
0x10016bb0c:  28 11 00 79   strh	w8, [x9, #0x8]
0x10016bb10:  2a 01 00 f9   str	x10, [x9]
0x10016bb14:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016bb18:  08 29 00 11   add	w8, w8, #0xa
0x10016bb1c:  f6 00 00 14   b	loc_10016bef4 ; ⤵ 0x3d8
0x10016bb20:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016bb24:  09 21 00 91   add	x9, x8, #0x8
0x10016bb28:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016bb2c:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016bb30:  a9 45 00 35   cbnz	w9, loc_10016c3e4 ; ⤵ 0x8b4
0x10016bb34:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016bb38:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016bb3c:  5f 01 09 6b   cmp	w10, w9
0x10016bb40:  e9 45 00 54   b.ls	loc_10016c3fc ; ⤵ 0x8bc
0x10016bb44:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016bb48:  5f 09 00 71   cmp	w10, #0x2
0x10016bb4c:  21 46 00 54   b.ne	loc_10016c410 ; ⤵ 0x8c4
0x10016bb50:  08 01 40 b9   ldr	w8, [x8]
0x10016bb54:  8a 02 40 f9   ldr	x10, [x20]
0x10016bb58:  2b 05 00 11   add	w11, w9, #0x1
0x10016bb5c:  8b 1a 00 79   strh	w11, [x20, #0xc]
0x10016bb60:  48 49 29 38   strb	w8, [x10, w9, uxtw]
0x10016bb64:  09 1d 00 12   and	w9, w8, #0xff
0x10016bb68:  2a 0d 00 11   add	w10, w9, #0x3
0x10016bb6c:  08 09 4a 0b   add	w8, w8, w10, lsr #0x2
0x10016bb70:  0a 05 00 11   add	w10, w8, #0x1
0x10016bb74:  3f 01 2a 6b   cmp	w9, w10, uxtb
0x10016bb78:  09 00 80 12   mov	w9, #0xffffffff
0x10016bb7c:  28 85 88 1a   csinc	w8, w9, w8, hi
0x10016bb80:  29 4b 00 d0   adrp	x9, 0x100ad1000
0x10016bb84:  28 81 12 39   strb	w8, [x9, #0x4a0]
0x10016bb88:  dc 00 00 14   b	loc_10016bef8 ; ⤵ 0x370
0x10016bb8c:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016bb90:  09 21 00 91   add	x9, x8, #0x8
0x10016bb94:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016bb98:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016bb9c:  c9 4a 00 35   cbnz	w9, loc_10016c4f4 ; ⤵ 0x958
0x10016bba0:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016bba4:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016bba8:  5f 01 09 6b   cmp	w10, w9
0x10016bbac:  09 4b 00 54   b.ls	loc_10016c50c ; ⤵ 0x960
0x10016bbb0:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016bbb4:  5f 09 00 71   cmp	w10, #0x2
0x10016bbb8:  41 4b 00 54   b.ne	loc_10016c520 ; ⤵ 0x968
0x10016bbbc:  08 01 40 b9   ldr	w8, [x8]
0x10016bbc0:  8a 02 40 f9   ldr	x10, [x20]
0x10016bbc4:  2b 05 00 11   add	w11, w9, #0x1
0x10016bbc8:  8b 1a 00 79   strh	w11, [x20, #0xc]
0x10016bbcc:  48 49 29 38   strb	w8, [x10, w9, uxtw]
0x10016bbd0:  e9 13 40 f9   ldr	x9, [sp, #0x20]
0x10016bbd4:  29 19 00 b4   cbz	x9, loc_10016bef8 ; ⤵ 0x324
0x10016bbd8:  e9 13 40 f9   ldr	x9, [sp, #0x20]
0x10016bbdc:  28 01 00 39   strb	w8, [x9]
0x10016bbe0:  c6 00 00 14   b	loc_10016bef8 ; ⤵ 0x318
0x10016bbe4:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016bbe8:  09 21 00 91   add	x9, x8, #0x8
0x10016bbec:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016bbf0:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016bbf4:  49 4c 00 35   cbnz	w9, loc_10016c57c ; ⤵ 0x988
0x10016bbf8:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016bbfc:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016bc00:  4a 01 09 4b   sub	w10, w10, w9
0x10016bc04:  5f 3d 00 71   cmp	w10, #0xf
0x10016bc08:  6d 4c 00 54   b.le	loc_10016c594 ; ⤵ 0x98c
0x10016bc0c:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016bc10:  5f 09 00 71   cmp	w10, #0x2
0x10016bc14:  e0 01 00 54   b.eq	loc_10016bc50 ; ⤵ 0x3c
0x10016bc18:  64 02 00 14   b	loc_10016c5a8 ; ⤵ 0x990
0x10016bc1c:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016bc20:  09 21 00 91   add	x9, x8, #0x8
0x10016bc24:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016bc28:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016bc2c:  09 36 00 35   cbnz	w9, loc_10016c2ec ; ⤵ 0x6c0
0x10016bc30:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016bc34:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016bc38:  4a 01 09 cb   sub	x10, x10, x9
0x10016bc3c:  5f 3d 00 f1   cmp	x10, #0xf
0x10016bc40:  29 36 00 54   b.ls	loc_10016c304 ; ⤵ 0x6c4
0x10016bc44:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016bc48:  5f 09 00 71   cmp	w10, #0x2
0x10016bc4c:  61 36 00 54   b.ne	loc_10016c318 ; ⤵ 0x6cc
0x10016bc50:  ; loc_10016bc50
0x10016bc50:  08 01 40 f9   ldr	x8, [x8]
0x10016bc54:  8a 02 40 f9   ldr	x10, [x20]
0x10016bc58:  00 01 c0 3d   ldr	q0, [x8]
0x10016bc5c:  40 69 a9 3c   str	q0, [x10, x9]
0x10016bc60:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016bc64:  08 41 00 11   add	w8, w8, #0x10
0x10016bc68:  a3 00 00 14   b	loc_10016bef4 ; ⤵ 0x28c
0x10016bc6c:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016bc70:  09 21 00 91   add	x9, x8, #0x8
0x10016bc74:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016bc78:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016bc7c:  69 31 00 35   cbnz	w9, loc_10016c2a8 ; ⤵ 0x62c
0x10016bc80:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016bc84:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016bc88:  4a 01 09 4b   sub	w10, w10, w9
0x10016bc8c:  5f 1d 01 71   cmp	w10, #0x47
0x10016bc90:  8d 31 00 54   b.le	loc_10016c2c0 ; ⤵ 0x630
0x10016bc94:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016bc98:  5f 09 00 71   cmp	w10, #0x2
0x10016bc9c:  c1 31 00 54   b.ne	loc_10016c2d4 ; ⤵ 0x638
0x10016bca0:  08 01 40 f9   ldr	x8, [x8]
0x10016bca4:  8a 02 40 f9   ldr	x10, [x20]
0x10016bca8:  49 01 09 8b   add	x9, x10, x9
0x10016bcac:  00 05 40 ad   ldp	q0, q1, [x8]
0x10016bcb0:  02 0d 41 ad   ldp	q2, q3, [x8, #0x20]
0x10016bcb4:  08 21 40 f9   ldr	x8, [x8, #0x40]
0x10016bcb8:  28 21 00 f9   str	x8, [x9, #0x40]
0x10016bcbc:  22 0d 01 ad   stp	q2, q3, [x9, #0x20]
0x10016bcc0:  20 05 00 ad   stp	q0, q1, [x9]
0x10016bcc4:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016bcc8:  08 21 01 11   add	w8, w8, #0x48
0x10016bccc:  8a 00 00 14   b	loc_10016bef4 ; ⤵ 0x228
0x10016bcd0:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016bcd4:  09 21 00 91   add	x9, x8, #0x8
0x10016bcd8:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016bcdc:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016bce0:  29 49 00 35   cbnz	w9, loc_10016c604 ; ⤵ 0x924
0x10016bce4:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016bce8:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016bcec:  4a 01 09 4b   sub	w10, w10, w9
0x10016bcf0:  5f 79 00 71   cmp	w10, #0x1e
0x10016bcf4:  4d 49 00 54   b.le	loc_10016c61c ; ⤵ 0x928
0x10016bcf8:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016bcfc:  5f 09 00 71   cmp	w10, #0x2
0x10016bd00:  81 49 00 54   b.ne	loc_10016c630 ; ⤵ 0x930
0x10016bd04:  08 01 40 f9   ldr	x8, [x8]
0x10016bd08:  8a 02 40 f9   ldr	x10, [x20]
0x10016bd0c:  49 01 09 8b   add	x9, x10, x9
0x10016bd10:  00 01 c0 3d   ldr	q0, [x8]
0x10016bd14:  0a 09 40 f9   ldr	x10, [x8, #0x10]
0x10016bd18:  0b 19 40 b9   ldr	w11, [x8, #0x18]
0x10016bd1c:  0c 39 40 79   ldrh	w12, [x8, #0x1c]
0x10016bd20:  08 79 40 39   ldrb	w8, [x8, #0x1e]
0x10016bd24:  28 79 00 39   strb	w8, [x9, #0x1e]
0x10016bd28:  2c 39 00 79   strh	w12, [x9, #0x1c]
0x10016bd2c:  2b 19 00 b9   str	w11, [x9, #0x18]
0x10016bd30:  2a 09 00 f9   str	x10, [x9, #0x10]
0x10016bd34:  20 01 80 3d   str	q0, [x9]
0x10016bd38:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016bd3c:  08 7d 00 11   add	w8, w8, #0x1f
0x10016bd40:  6d 00 00 14   b	loc_10016bef4 ; ⤵ 0x1b4
0x10016bd44:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016bd48:  09 21 00 91   add	x9, x8, #0x8
0x10016bd4c:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016bd50:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016bd54:  c9 38 00 35   cbnz	w9, loc_10016c46c ; ⤵ 0x718
0x10016bd58:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016bd5c:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016bd60:  4a 01 09 4b   sub	w10, w10, w9
0x10016bd64:  5f bd 03 71   cmp	w10, #0xef
0x10016bd68:  ed 38 00 54   b.le	loc_10016c484 ; ⤵ 0x71c
0x10016bd6c:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016bd70:  5f 09 00 71   cmp	w10, #0x2
0x10016bd74:  21 39 00 54   b.ne	loc_10016c498 ; ⤵ 0x724
0x10016bd78:  08 01 40 f9   ldr	x8, [x8]
0x10016bd7c:  8a 02 40 f9   ldr	x10, [x20]
0x10016bd80:  49 01 09 8b   add	x9, x10, x9
0x10016bd84:  00 05 40 ad   ldp	q0, q1, [x8]
0x10016bd88:  02 0d 41 ad   ldp	q2, q3, [x8, #0x20]
0x10016bd8c:  04 15 42 ad   ldp	q4, q5, [x8, #0x40]
0x10016bd90:  06 1d 43 ad   ldp	q6, q7, [x8, #0x60]
0x10016bd94:  10 45 44 ad   ldp	q16, q17, [x8, #0x80]
0x10016bd98:  12 4d 45 ad   ldp	q18, q19, [x8, #0xa0]
0x10016bd9c:  14 55 46 ad   ldp	q20, q21, [x8, #0xc0]
0x10016bda0:  16 39 c0 3d   ldr	q22, [x8, #0xe0]
0x10016bda4:  35 d9 06 ad   stp	q21, q22, [x9, #0xd0]
0x10016bda8:  33 d1 05 ad   stp	q19, q20, [x9, #0xb0]
0x10016bdac:  31 c9 04 ad   stp	q17, q18, [x9, #0x90]
0x10016bdb0:  27 c1 03 ad   stp	q7, q16, [x9, #0x70]
0x10016bdb4:  25 99 02 ad   stp	q5, q6, [x9, #0x50]
0x10016bdb8:  23 91 01 ad   stp	q3, q4, [x9, #0x30]
0x10016bdbc:  21 89 00 ad   stp	q1, q2, [x9, #0x10]
0x10016bdc0:  20 01 80 3d   str	q0, [x9]
0x10016bdc4:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016bdc8:  08 c1 03 11   add	w8, w8, #0xf0
0x10016bdcc:  4a 00 00 14   b	loc_10016bef4 ; ⤵ 0x128
0x10016bdd0:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016bdd4:  09 21 00 91   add	x9, x8, #0x8
0x10016bdd8:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016bddc:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016bde0:  c9 3a 00 35   cbnz	w9, loc_10016c538 ; ⤵ 0x758
0x10016bde4:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016bde8:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016bdec:  4a 01 09 cb   sub	x10, x10, x9
0x10016bdf0:  5f 1d 00 f1   cmp	x10, #0x7
0x10016bdf4:  e9 3a 00 54   b.ls	loc_10016c550 ; ⤵ 0x75c
0x10016bdf8:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016bdfc:  5f 09 00 71   cmp	w10, #0x2
0x10016be00:  21 3b 00 54   b.ne	loc_10016c564 ; ⤵ 0x764
0x10016be04:  ; loc_10016be04
0x10016be04:  08 01 40 f9   ldr	x8, [x8]
0x10016be08:  8a 02 40 f9   ldr	x10, [x20]
0x10016be0c:  08 01 40 f9   ldr	x8, [x8]
0x10016be10:  48 69 29 f8   str	x8, [x10, x9]
0x10016be14:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016be18:  08 21 00 11   add	w8, w8, #0x8
0x10016be1c:  36 00 00 14   b	loc_10016bef4 ; ⤵ 0xd8
0x10016be20:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016be24:  09 21 00 91   add	x9, x8, #0x8
0x10016be28:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016be2c:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016be30:  a9 21 00 35   cbnz	w9, loc_10016c264 ; ⤵ 0x434
0x10016be34:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016be38:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016be3c:  5f 01 09 6b   cmp	w10, w9
0x10016be40:  e9 21 00 54   b.ls	loc_10016c27c ; ⤵ 0x43c
0x10016be44:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016be48:  5f 09 00 71   cmp	w10, #0x2
0x10016be4c:  21 22 00 54   b.ne	loc_10016c290 ; ⤵ 0x444
0x10016be50:  08 01 40 b9   ldr	w8, [x8]
0x10016be54:  8a 02 40 f9   ldr	x10, [x20]
0x10016be58:  2b 05 00 11   add	w11, w9, #0x1
0x10016be5c:  8b 1a 00 79   strh	w11, [x20, #0xc]
0x10016be60:  48 49 29 38   strb	w8, [x10, w9, uxtw]
0x10016be64:  b8 04 00 b4   cbz	x24, loc_10016bef8 ; ⤵ 0x94
0x10016be68:  08 03 00 39   strb	w8, [x24]
0x10016be6c:  23 00 00 14   b	loc_10016bef8 ; ⤵ 0x8c
0x10016be70:  ; loc_10016be70
0x10016be70:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10016be74:  09 21 00 91   add	x9, x8, #0x8
0x10016be78:  e9 17 00 f9   str	x9, [sp, #0x28]
0x10016be7c:  89 3e 40 39   ldrb	w9, [x20, #0xf]
0x10016be80:  89 42 00 35   cbnz	w9, loc_10016c6d0 ; ⤵ 0x850
0x10016be84:  8a 16 40 79   ldrh	w10, [x20, #0xa]
0x10016be88:  89 1a 40 79   ldrh	w9, [x20, #0xc]
0x10016be8c:  4a 01 09 4b   sub	w10, w10, w9
0x10016be90:  5f 0d 00 71   cmp	w10, #0x3
0x10016be94:  ad 42 00 54   b.le	loc_10016c6e8 ; ⤵ 0x854
0x10016be98:  8a 3a 40 39   ldrb	w10, [x20, #0xe]
0x10016be9c:  5f 09 00 71   cmp	w10, #0x2
0x10016bea0:  e1 42 00 54   b.ne	loc_10016c6fc ; ⤵ 0x85c
0x10016bea4:  08 01 40 b9   ldr	w8, [x8]
0x10016bea8:  8a 02 40 f9   ldr	x10, [x20]
0x10016beac:  48 49 29 38   strb	w8, [x10, w9, uxtw]
0x10016beb0:  09 7d 08 53   lsr	w9, w8, #0x8
0x10016beb4:  8a 02 40 f9   ldr	x10, [x20]
0x10016beb8:  8b 1a 40 79   ldrh	w11, [x20, #0xc]
0x10016bebc:  4a 01 0b 8b   add	x10, x10, x11
0x10016bec0:  49 05 00 39   strb	w9, [x10, #0x1]
0x10016bec4:  09 7d 10 53   lsr	w9, w8, #0x10
0x10016bec8:  8a 02 40 f9   ldr	x10, [x20]
0x10016becc:  8b 1a 40 79   ldrh	w11, [x20, #0xc]
0x10016bed0:  4a 01 0b 8b   add	x10, x10, x11
0x10016bed4:  49 09 00 39   strb	w9, [x10, #0x2]
0x10016bed8:  08 7d 18 53   lsr	w8, w8, #0x18
0x10016bedc:  89 02 40 f9   ldr	x9, [x20]
0x10016bee0:  8a 1a 40 79   ldrh	w10, [x20, #0xc]
0x10016bee4:  29 01 0a 8b   add	x9, x9, x10
0x10016bee8:  28 0d 00 39   strb	w8, [x9, #0x3]
0x10016beec:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016bef0:  08 11 00 11   add	w8, w8, #0x4
0x10016bef4:  ; loc_10016bef4
0x10016bef4:  88 1a 00 79   strh	w8, [x20, #0xc]
0x10016bef8:  ; loc_10016bef8
0x10016bef8:  f7 06 00 91   add	x23, x23, #0x1
0x10016befc:  c8 06 40 f9   ldr	x8, [x22, #0x8]
0x10016bf00:  08 69 77 38   ldrb	w8, [x8, x23]
0x10016bf04:  48 bf ff 35   cbnz	w8, loc_10016b6ec ; ⤴ -0x818
0x10016bf08:  26 00 00 14   b	loc_10016bfa0 ; ⤵ 0x98
0x10016bf0c:  ; loc_10016bf0c
0x10016bf0c:  88 16 40 79   ldrh	w8, [x20, #0xa]
0x10016bf10:  08 01 09 4b   sub	w8, w8, w9
0x10016bf14:  ; loc_10016bf14
0x10016bf14:  1f 21 3a 6b   cmp	w8, w26, uxth
0x10016bf18:  8b 23 00 54   b.lt	loc_10016c388 ; ⤵ 0x470
0x10016bf1c:  88 3a 40 39   ldrb	w8, [x20, #0xe]
0x10016bf20:  1f 09 00 71   cmp	w8, #0x2
0x10016bf24:  81 22 00 54   b.ne	loc_10016c374 ; ⤵ 0x450
0x10016bf28:  59 3f 00 12   and	w25, w26, #0xffff
0x10016bf2c:  e8 07 41 a9   ldp	x8, x1, [sp, #0x10]
0x10016bf30:  00 01 09 8b   add	x0, x8, x9
0x10016bf34:  42 3f 40 92   and	x2, x26, #0xffff
0x10016bf38:  9e 8b 1a 94   bl	j__memmove
0x10016bf3c:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016bf40:  08 01 1a 0b   add	w8, w8, w26
0x10016bf44:  88 1a 00 79   strh	w8, [x20, #0xc]
0x10016bf48:  3f df 03 71   cmp	w25, #0xf7
0x10016bf4c:  fa 07 40 f9   ldr	x26, [sp, #0x8]
0x10016bf50:  48 fd ff 54   b.hi	loc_10016bef8 ; ⤴ -0x58
0x10016bf54:  ; loc_10016bf54
0x10016bf54:  88 3e 40 39   ldrb	w8, [x20, #0xf]
0x10016bf58:  68 0b 00 35   cbnz	w8, loc_10016c0c4 ; ⤵ 0x16c
0x10016bf5c:  89 16 40 79   ldrh	w9, [x20, #0xa]
0x10016bf60:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016bf64:  3f 01 08 6b   cmp	w9, w8
0x10016bf68:  a9 0b 00 54   b.ls	loc_10016c0dc ; ⤵ 0x174
0x10016bf6c:  89 3a 40 39   ldrb	w9, [x20, #0xe]
0x10016bf70:  3f 09 00 71   cmp	w9, #0x2
0x10016bf74:  e1 09 00 54   b.ne	loc_10016c0b0 ; ⤵ 0x13c
0x10016bf78:  89 02 40 f9   ldr	x9, [x20]
0x10016bf7c:  0a 05 00 11   add	w10, w8, #0x1
0x10016bf80:  8a 1a 00 79   strh	w10, [x20, #0xc]
0x10016bf84:  3f 49 28 38   strb	wzr, [x9, w8, uxtw]
0x10016bf88:  68 3f 00 12   and	w8, w27, #0xffff
0x10016bf8c:  69 07 00 11   add	w9, w27, #0x1
0x10016bf90:  fb 03 09 aa   mov	x27, x9
0x10016bf94:  1f dd 03 71   cmp	w8, #0xf7
0x10016bf98:  e3 fd ff 54   b.lo	loc_10016bf54 ; ⤴ -0x44
0x10016bf9c:  d7 ff ff 17   b	loc_10016bef8 ; ⤴ -0xa4
0x10016bfa0:  ; loc_10016bfa0
0x10016bfa0:  88 3a 40 39   ldrb	w8, [x20, #0xe]
0x10016bfa4:  1f 09 00 71   cmp	w8, #0x2
0x10016bfa8:  c1 00 00 54   b.ne	loc_10016bfc0 ; ⤵ 0x18
0x10016bfac:  88 1a 40 79   ldrh	w8, [x20, #0xc]
0x10016bfb0:  88 16 00 79   strh	w8, [x20, #0xa]
0x10016bfb4:  04 00 00 14   b	loc_10016bfc4 ; ⤵ 0x10
0x10016bfb8:  ; loc_10016bfb8
0x10016bfb8:  00 0d 80 52   mov	w0, #0x68
0x10016bfbc:  08 00 00 14   b	loc_10016bfdc ; ⤵ 0x20
0x10016bfc0:  ; loc_10016bfc0
0x10016bfc0:  88 16 40 79   ldrh	w8, [x20, #0xa]
0x10016bfc4:  ; loc_10016bfc4
0x10016bfc4:  e9 01 80 52   mov	w9, #0xf
0x10016bfc8:  89 3a 00 39   strb	w9, [x20, #0xe]
0x10016bfcc:  bf 02 08 6b   cmp	w21, w8
0x10016bfd0:  40 00 00 54   b.eq	loc_10016bfd8 ; ⤵ 0x8
0x10016bfd4:  ce 64 03 94   bl	0x10024530c
0x10016bfd8:  ; loc_10016bfd8
0x10016bfd8:  00 00 80 52   mov	w0, #0
0x10016bfdc:  ; loc_10016bfdc
0x10016bfdc:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x10016bfe0:  29 46 00 f0   adrp	x9, 0x100a32000
0x10016bfe4:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10016bfe8:  29 01 40 f9   ldr	x9, [x9]
0x10016bfec:  3f 01 08 eb   cmp	x9, x8
0x10016bff0:  21 08 00 54   b.ne	loc_10016c0f4 ; ⤵ 0x104
0x10016bff4:  fd 7b 4a a9   ldp	fp, lr, [sp, #0xa0]
0x10016bff8:  f4 4f 49 a9   ldp	x20, x19, [sp, #0x90]
0x10016bffc:  f6 57 48 a9   ldp	x22, x21, [sp, #0x80]
0x10016c000:  f8 5f 47 a9   ldp	x24, x23, [sp, #0x70]
0x10016c004:  fa 67 46 a9   ldp	x26, x25, [sp, #0x60]
0x10016c008:  fc 6f 45 a9   ldp	x28, x27, [sp, #0x50]
0x10016c00c:  ff c3 02 91   add	sp, sp, #0xb0
0x10016c010:  ff 0f 5f d6   retab
0x10016c014:  ; loc_10016c014
0x10016c014:  40 00 80 52   mov	w0, #0x2
0x10016c018:  c1 05 80 52   mov	w1, #0x2e
0x10016c01c:  4a e1 fd 97   bl	0x1000e4544
0x10016c020:  a0 01 00 34   cbz	w0, loc_10016c054 ; ⤵ 0x34
0x10016c024:  c8 06 40 f9   ldr	x8, [x22, #0x8]
0x10016c028:  08 69 77 38   ldrb	w8, [x8, x23]
0x10016c02c:  e8 03 00 f9   str	x8, [sp]
0x10016c030:  40 3b 00 b0   adrp	x0, 0x1008d5000
0x10016c034:  00 a4 2b 91   add	x0, x0, #0xae9 ; "unknown cmd parm type %d"
0x10016c038:  5b 64 03 94   bl	0x1002451a4
0x10016c03c:  c0 05 80 52   mov	w0, #0x2e
0x10016c040:  b6 4e fd 97   bl	0x1000bfb18
0x10016c044:  f4 03 00 aa   mov	x20, x0

