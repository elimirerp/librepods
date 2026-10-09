0x10077a600:  21 c0 3f 91   add	x1, x1, #0xff0
0x10077a604:  c2 73 00 d0   adrp	x2, 0x1015f4000
0x10077a608:  42 40 2a 91   add	x2, x2, #0xa90
0x10077a60c:  d9 44 e2 97   bl	0x10000b970
0x10077a610:  ; loc_10077a610
0x10077a610:  a0 03 02 d1   sub	x0, fp, #0x80
0x10077a614:  42 36 e2 97   bl	0x100007f1c
0x10077a618:  ; loc_10077a618
0x10077a618:  39 07 00 91   add	x25, x25, #0x1
0x10077a61c:  18 a3 00 91   add	x24, x24, #0x28
0x10077a620:  a8 83 52 f8   ldur	x8, [fp, #-0xd8]
0x10077a624:  1f 01 19 eb   cmp	x8, x25
0x10077a628:  00 12 00 54   b.eq	loc_10077a868 ; ⤵ 0x240
0x10077a62c:  48 0b 40 f9   ldr	x8, [x26, #0x10]
0x10077a630:  3f 03 08 eb   cmp	x25, x8
0x10077a634:  a2 63 00 54   b.hs	loc_10077b2a8 ; ⤵ 0xc74
0x10077a638:  a1 03 02 d1   sub	x1, fp, #0x80
0x10077a63c:  e0 03 18 aa   mov	x0, x24
0x10077a640:  f9 98 e2 97   bl	0x100020a24
0x10077a644:  b3 d3 79 a9   ldp	x19, x20, [fp, #-0x68]
0x10077a648:  a0 03 02 d1   sub	x0, fp, #0x80
0x10077a64c:  e1 03 13 aa   mov	x1, x19
0x10077a650:  b8 23 e2 97   bl	0x100003530
0x10077a654:  88 06 40 f9   ldr	x8, [x20, #0x8]
0x10077a658:  01 05 40 f9   ldr	x1, [x8, #0x8]
0x10077a65c:  e9 03 01 aa   mov	x9, x1
0x10077a660:  2a 0d 42 f8   ldr	x10, [x9, #0x20]!
0x10077a664:  a8 03 01 d1   sub	x8, fp, #0x40
0x10077a668:  16 01 50 f8   ldur	x22, [x8, #-0x100]
0x10077a66c:  e8 03 16 aa   mov	x8, x22
0x10077a670:  f4 03 00 aa   mov	x20, x0
0x10077a674:  e0 03 13 aa   mov	x0, x19
0x10077a678:  f1 03 09 aa   mov	x17, x9
0x10077a67c:  71 e3 f4 f2   movk	x17, #0xa71b, lsl #0x30
0x10077a680:  51 09 3f d7   blraa	x10, x17
0x10077a684:  a8 03 02 d1   sub	x8, fp, #0x80
0x10077a688:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x10077a68c:  a9 03 52 f8   ldur	x9, [fp, #-0xe0]
0x10077a690:  14 69 69 f8   ldr	x20, [x8, x9]
0x10077a694:  e0 03 14 aa   mov	x0, x20
0x10077a698:  12 45 38 94   bl	j__swift_retain
0x10077a69c:  e8 03 15 aa   mov	x8, x21
0x10077a6a0:  e0 03 16 aa   mov	x0, x22
0x10077a6a4:  4e 09 14 94   bl	0x100c7cbdc
0x10077a6a8:  e0 03 14 aa   mov	x0, x20
0x10077a6ac:  05 45 38 94   bl	j__swift_release
0x10077a6b0:  a9 83 51 f8   ldur	x9, [fp, #-0xe8]
0x10077a6b4:  28 01 40 f9   ldr	x8, [x9]
0x10077a6b8:  e0 03 16 aa   mov	x0, x22
0x10077a6bc:  aa e3 00 d1   sub	x10, fp, #0x38
0x10077a6c0:  41 01 50 f8   ldur	x1, [x10, #-0x100]
0x10077a6c4:  f1 03 09 aa   mov	x17, x9
0x10077a6c8:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10077a6cc:  11 09 3f d7   blraa	x8, x17
0x10077a6d0:  68 03 40 f9   ldr	x8, [x27]
0x10077a6d4:  e0 03 15 aa   mov	x0, x21
0x10077a6d8:  21 00 80 52   mov	w1, #0x1
0x10077a6dc:  e2 03 17 aa   mov	x2, x23
0x10077a6e0:  f1 03 1b aa   mov	x17, x27
0x10077a6e4:  11 1e ec f2   movk	x17, #0x60f0, lsl #0x30
0x10077a6e8:  11 09 3f d7   blraa	x8, x17
0x10077a6ec:  1f 04 00 71   cmp	w0, #0x1
0x10077a6f0:  40 f8 ff 54   b.eq	loc_10077a5f8 ; ⤴ -0xf8
0x10077a6f4:  50 3f 00 d0   adrp	x16, 0x100f64000
0x10077a6f8:  10 e2 2f 91   add	x16, x16, #0xbf8
0x10077a6fc:  b1 62 82 d2   mov	x17, #0x1315
0x10077a700:  30 02 c1 da   pacia	x16, x17
0x10077a704:  e2 03 10 aa   mov	x2, x16
0x10077a708:  e0 03 15 aa   mov	x0, x21
0x10077a70c:  b4 03 51 f8   ldur	x20, [fp, #-0xf0]
0x10077a710:  e1 03 14 aa   mov	x1, x20
0x10077a714:  aa c8 e2 97   bl	0x10002c9bc
0x10077a718:  e8 1e 80 b9   ldrsw	x8, [x23, #0x1c]
0x10077a71c:  93 6a 68 f8   ldr	x19, [x20, x8]
0x10077a720:  50 3f 00 d0   adrp	x16, 0x100f64000
0x10077a724:  10 e2 2f 91   add	x16, x16, #0xbf8
0x10077a728:  11 06 93 d2   mov	x17, #0x9830
0x10077a72c:  30 02 c1 da   pacia	x16, x17
0x10077a730:  e1 03 10 aa   mov	x1, x16
0x10077a734:  e0 03 14 aa   mov	x0, x20
0x10077a738:  c8 6a 01 94   bl	0x1007d5258
0x10077a73c:  a8 83 50 f8   ldur	x8, [fp, #-0xf8]
0x10077a740:  1f 01 13 eb   cmp	x8, x19
0x10077a744:  6a f6 ff 54   b.ge	loc_10077a610 ; ⤴ -0x134
0x10077a748:  e0 03 1c aa   mov	x0, x28
0x10077a74c:  c5 44 38 94   bl	j__swift_isUniquelyReferenced_nonNull_native
0x10077a750:  bc 83 14 f8   stur	x28, [fp, #-0xb8]
0x10077a754:  00 01 00 37   tbnz	w0, #0, loc_10077a774 ; ⤵ 0x20
0x10077a758:  88 0b 40 f9   ldr	x8, [x28, #0x10]
0x10077a75c:  01 05 00 91   add	x1, x8, #0x1
0x10077a760:  b4 e3 02 d1   sub	x20, fp, #0xb8
0x10077a764:  00 00 80 52   mov	w0, #0
0x10077a768:  22 00 80 52   mov	w2, #0x1
0x10077a76c:  32 b1 e2 97   bl	0x100026c34
0x10077a770:  bc 83 54 f8   ldur	x28, [fp, #-0xb8]
0x10077a774:  ; loc_10077a774
0x10077a774:  93 23 41 a9   ldp	x19, x8, [x28, #0x10]
0x10077a778:  7f 06 48 eb   cmp	x19, x8, lsr #0x1
0x10077a77c:  82 06 00 54   b.hs	loc_10077a84c ; ⤵ 0xd0
0x10077a780:  ; loc_10077a780
0x10077a780:  b4 db 79 a9   ldp	x20, x22, [fp, #-0x68]
0x10077a784:  a0 03 02 d1   sub	x0, fp, #0x80
0x10077a788:  e1 03 14 aa   mov	x1, x20
0x10077a78c:  c3 48 e9 97   bl	0x1001cca98
0x10077a790:  e1 03 00 aa   mov	x1, x0
0x10077a794:  fc 03 00 91   mov	x28, sp
0x10077a798:  e9 03 14 aa   mov	x9, x20
0x10077a79c:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x10077a7a0:  f0 03 08 aa   mov	x16, x8
0x10077a7a4:  f1 03 09 aa   mov	x17, x9
0x10077a7a8:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a7ac:  30 1a c1 da   autda	x16, x17
0x10077a7b0:  f1 03 10 aa   mov	x17, x16
0x10077a7b4:  f1 47 c1 da   xpacd	x17
0x10077a7b8:  1f 02 11 eb   cmp	x16, x17
0x10077a7bc:  40 00 00 54   b.eq	loc_10077a7c4 ; ⤵ 0x8
0x10077a7c0:  40 8e 38 d4   brk	#0xc472
0x10077a7c4:  ; loc_10077a7c4
0x10077a7c4:  ec 03 10 aa   mov	x12, x16
0x10077a7c8:  f0 03 08 aa   mov	x16, x8
0x10077a7cc:  f1 03 09 aa   mov	x17, x9
0x10077a7d0:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a7d4:  30 1a c1 da   autda	x16, x17
0x10077a7d8:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10077a7dc:  e9 03 08 aa   mov	x9, x8
0x10077a7e0:  71 88 00 f0   adrp	x17, 0x101889000
0x10077a7e4:  31 62 1f 91   add	x17, x17, #0x7d8 ; __got.___chkstk_darwin
0x10077a7e8:  30 02 40 f9   ldr	x16, [x17]
0x10077a7ec:  11 0a 3f d7   blraa	x16, x17
0x10077a7f0:  e9 03 00 91   mov	x9, sp
0x10077a7f4:  08 3d 00 91   add	x8, x8, #0xf
0x10077a7f8:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10077a7fc:  37 01 08 cb   sub	x23, x9, x8
0x10077a800:  ff 02 00 91   mov	sp, x23
0x10077a804:  88 0d 41 f8   ldr	x8, [x12, #0x10]!
0x10077a808:  e0 03 17 aa   mov	x0, x23
0x10077a80c:  e2 03 14 aa   mov	x2, x20
0x10077a810:  f1 03 0c aa   mov	x17, x12
0x10077a814:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x10077a818:  11 09 3f d7   blraa	x8, x17
0x10077a81c:  a2 e3 02 d1   sub	x2, fp, #0xb8
0x10077a820:  e0 03 13 aa   mov	x0, x19
0x10077a824:  e1 03 17 aa   mov	x1, x23
0x10077a828:  e3 03 14 aa   mov	x3, x20
0x10077a82c:  e4 03 16 aa   mov	x4, x22
0x10077a830:  ec 08 fd 97   bl	0x1006bcbe0
0x10077a834:  a0 03 02 d1   sub	x0, fp, #0x80
0x10077a838:  b9 35 e2 97   bl	0x100007f1c
0x10077a83c:  9f 03 00 91   mov	sp, x28
0x10077a840:  bc 83 54 f8   ldur	x28, [fp, #-0xb8]
0x10077a844:  b7 03 50 f8   ldur	x23, [fp, #-0x100]
0x10077a848:  74 ff ff 17   b	loc_10077a618 ; ⤴ -0x230
0x10077a84c:  ; loc_10077a84c
0x10077a84c:  1f 05 00 f1   cmp	x8, #0x1
0x10077a850:  e0 97 9f 1a   cset	w0, hi
0x10077a854:  61 06 00 91   add	x1, x19, #0x1
0x10077a858:  b4 e3 02 d1   sub	x20, fp, #0xb8
0x10077a85c:  22 00 80 52   mov	w2, #0x1
0x10077a860:  f5 b0 e2 97   bl	0x100026c34
0x10077a864:  c7 ff ff 17   b	loc_10077a780 ; ⤴ -0xe4
0x10077a868:  ; loc_10077a868
0x10077a868:  e0 03 1a aa   mov	x0, x26
0x10077a86c:  7d 43 38 94   bl	j__swift_bridgeObjectRelease
0x10077a870:  bc 03 18 f8   stur	x28, [fp, #-0x80]
0x10077a874:  a8 23 00 d1   sub	x8, fp, #0x8
0x10077a878:  13 01 50 f8   ldur	x19, [x8, #-0x100]
0x10077a87c:  e0 03 13 aa   mov	x0, x19
0x10077a880:  98 44 38 94   bl	j__swift_retain
0x10077a884:  e0 03 1c aa   mov	x0, x28
0x10077a888:  96 44 38 94   bl	j__swift_retain
0x10077a88c:  a0 03 02 d1   sub	x0, fp, #0x80
0x10077a890:  e1 03 13 aa   mov	x1, x19
0x10077a894:  15 00 80 d2   mov	x21, #0
0x10077a898:  ed 28 01 94   bl	0x1007c4c4c
0x10077a89c:  35 56 00 b5   cbnz	x21, loc_10077b360 ; ⤵ 0xac4
0x10077a8a0:  e0 03 1c aa   mov	x0, x28
0x10077a8a4:  87 44 38 94   bl	j__swift_release
0x10077a8a8:  e0 03 13 aa   mov	x0, x19
0x10077a8ac:  85 44 38 94   bl	j__swift_release
0x10077a8b0:  b3 03 58 f8   ldur	x19, [fp, #-0x80]
0x10077a8b4:  a8 63 00 d1   sub	x8, fp, #0x18
0x10077a8b8:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10077a8bc:  b9 41 38 94   bl	j___objc_autoreleasePoolPop
0x10077a8c0:  68 88 00 90   adrp	x8, 0x101886000
0x10077a8c4:  08 71 47 f9   ldr	x8, [x8, #0xee0] ; __got.__swiftEmptyArrayStorage
0x10077a8c8:  a8 03 17 f8   stur	x8, [fp, #-0x90]
0x10077a8cc:  68 0a 40 f9   ldr	x8, [x19, #0x10]
0x10077a8d0:  a9 e3 02 d1   sub	x9, fp, #0xb8
0x10077a8d4:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10077a8d8:  a9 43 00 d1   sub	x9, fp, #0x10
0x10077a8dc:  29 01 50 f8   ldur	x9, [x9, #-0x100]
0x10077a8e0:  a8 4b 00 b4   cbz	x8, loc_10077b254 ; ⤵ 0x974
0x10077a8e4:  17 00 80 d2   mov	x23, #0
0x10077a8e8:  68 82 00 91   add	x8, x19, #0x20
0x10077a8ec:  aa 23 03 d1   sub	x10, fp, #0xc8
0x10077a8f0:  48 01 10 f8   stur	x8, [x10, #-0x100]
0x10077a8f4:  28 21 00 91   add	x8, x9, #0x8
0x10077a8f8:  a9 23 01 d1   sub	x9, fp, #0x48
0x10077a8fc:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10077a900:  a8 83 00 d1   sub	x8, fp, #0x20
0x10077a904:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x10077a908:  08 21 00 91   add	x8, x8, #0x8
0x10077a90c:  a9 43 03 d1   sub	x9, fp, #0xd0
0x10077a910:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10077a914:  68 73 00 90   adrp	x8, 0x1015e6000
0x10077a918:  00 cd c0 3d   ldr	q0, [x8, #0x330]
0x10077a91c:  a8 83 03 d1   sub	x8, fp, #0xe0
0x10077a920:  00 01 90 3c   stur	q0, [x8, #-0x100]
0x10077a924:  88 73 00 d0   adrp	x8, 0x1015ec000
0x10077a928:  00 71 c1 3d   ldr	q0, [x8, #0x5c0]
0x10077a92c:  a8 c3 01 d1   sub	x8, fp, #0x70
0x10077a930:  00 01 90 3c   stur	q0, [x8, #-0x100]
0x10077a934:  a8 63 01 d1   sub	x8, fp, #0x58
0x10077a938:  1c 01 50 f8   ldur	x28, [x8, #-0x100]
0x10077a93c:  a8 03 03 d1   sub	x8, fp, #0xc0
0x10077a940:  13 01 10 f8   stur	x19, [x8, #-0x100]
0x10077a944:  21 00 00 14   b	loc_10077a9c8 ; ⤵ 0x84
0x10077a948:  ; loc_10077a948
0x10077a948:  a9 e3 01 d1   sub	x9, fp, #0x78
0x10077a94c:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10077a950:  ; loc_10077a950
0x10077a950:  a8 63 02 d1   sub	x8, fp, #0x98
0x10077a954:  17 01 50 f8   ldur	x23, [x8, #-0x100]
0x10077a958:  f7 06 00 91   add	x23, x23, #0x1
0x10077a95c:  a8 83 02 d1   sub	x8, fp, #0xa0
0x10077a960:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10077a964:  3f 43 38 94   bl	j__swift_bridgeObjectRelease
0x10077a968:  b4 43 02 d1   sub	x20, fp, #0x90
0x10077a96c:  a8 e3 01 d1   sub	x8, fp, #0x78
0x10077a970:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10077a974:  b4 ee f1 97   bl	0x1003f6444
0x10077a978:  a8 43 03 d1   sub	x8, fp, #0xd0
0x10077a97c:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10077a980:  28 01 40 f9   ldr	x8, [x9]
0x10077a984:  aa 23 02 d1   sub	x10, fp, #0x88
0x10077a988:  40 01 50 f8   ldur	x0, [x10, #-0x100]
0x10077a98c:  aa c3 02 d1   sub	x10, fp, #0xb0
0x10077a990:  41 01 50 f8   ldur	x1, [x10, #-0x100]
0x10077a994:  f1 03 09 aa   mov	x17, x9
0x10077a998:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10077a99c:  11 09 3f d7   blraa	x8, x17
0x10077a9a0:  a0 e3 02 d1   sub	x0, fp, #0xb8
0x10077a9a4:  5e 35 e2 97   bl	0x100007f1c
0x10077a9a8:  a8 e3 02 d1   sub	x8, fp, #0xb8
0x10077a9ac:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x10077a9b0:  ff 02 08 eb   cmp	x23, x8
0x10077a9b4:  a8 43 02 d1   sub	x8, fp, #0x90
0x10077a9b8:  15 01 50 f8   ldur	x21, [x8, #-0x100]
0x10077a9bc:  a8 03 03 d1   sub	x8, fp, #0xc0
0x10077a9c0:  13 01 50 f8   ldur	x19, [x8, #-0x100]
0x10077a9c4:  00 44 00 54   b.eq	loc_10077b244 ; ⤵ 0x880
0x10077a9c8:  ; loc_10077a9c8
0x10077a9c8:  68 0a 40 f9   ldr	x8, [x19, #0x10]
0x10077a9cc:  ff 02 08 eb   cmp	x23, x8
0x10077a9d0:  e2 46 00 54   b.hs	loc_10077b2ac ; ⤵ 0x8dc
0x10077a9d4:  a8 23 03 d1   sub	x8, fp, #0xc8
0x10077a9d8:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x10077a9dc:  09 05 80 52   mov	w9, #0x28
0x10077a9e0:  e0 22 09 9b   madd	x0, x23, x9, x8
0x10077a9e4:  a1 03 02 d1   sub	x1, fp, #0x80
0x10077a9e8:  0f 98 e2 97   bl	0x100020a24
0x10077a9ec:  a0 03 02 d1   sub	x0, fp, #0x80
0x10077a9f0:  a1 e3 02 d1   sub	x1, fp, #0xb8
0x10077a9f4:  92 40 e2 97   bl	0x10000ac3c
0x10077a9f8:  88 8d 00 f0   adrp	x8, 0x10192d000
0x10077a9fc:  08 29 47 f9   ldr	x8, [x8, #0xe50] ; data_10192de50 (__DATA.__data)
0x10077aa00:  1f 05 00 b1   cmn	x8, #0x1
0x10077aa04:  01 3f 00 54   b.ne	loc_10077b1e4 ; ⤵ 0x7e0
0x10077aa08:  68 94 00 90   adrp	x8, 0x101a06000
0x10077aa0c:  01 e1 47 f9   ldr	x1, [x8, #0xfc0]
0x10077aa10:  34 14 40 f9   ldr	x20, [x1, #0x28]
0x10077aa14:  b0 c4 ff f0   adrp	x16, 0x100011000
0x10077aa18:  10 02 02 91   add	x16, x16, #0x80
0x10077aa1c:  f1 41 8e d2   mov	x17, #0x720f
0x10077aa20:  30 02 c1 da   pacia	x16, x17
0x10077aa24:  e0 03 10 aa   mov	x0, x16
0x10077aa28:  a8 23 03 d1   sub	x8, fp, #0xc8
0x10077aa2c:  42 8b 00 d0   adrp	x2, 0x1018e4000
0x10077aa30:  42 60 2a 91   add	x2, x2, #0xa98 ; data_1018e4a98 (__DATA_CONST.__const)
0x10077aa34:  37 3b 38 94   bl	j__$sSo17OS_dispatch_queueC8DispatchE4sync7executexxyKXE_tKlF
0x10077aa38:  b4 83 53 f8   ldur	x20, [fp, #-0xc8]
0x10077aa3c:  e0 74 00 d0   adrp	x0, 0x101618000
0x10077aa40:  00 e0 22 91   add	x0, x0, #0x8b8 ; "H\xed7"
0x10077aa44:  bf 43 38 94   bl	j__swift_getKeyPath
0x10077aa48:  f3 03 00 aa   mov	x19, x0
0x10077aa4c:  e1 03 14 aa   mov	x1, x20
0x10077aa50:  cf 32 2b 94   bl	0x10124758c
0x10077aa54:  28 1c 00 12   and	w8, w1, #0xff
0x10077aa58:  1f 05 00 71   cmp	w8, #0x1
0x10077aa5c:  a0 42 00 54   b.eq	loc_10077b2b0 ; ⤵ 0x854
0x10077aa60:  f6 03 00 aa   mov	x22, x0
0x10077aa64:  e0 03 14 aa   mov	x0, x20
0x10077aa68:  fe 42 38 94   bl	j__swift_bridgeObjectRelease
0x10077aa6c:  e0 03 13 aa   mov	x0, x19
0x10077aa70:  14 44 38 94   bl	j__swift_release
0x10077aa74:  a8 a3 02 d1   sub	x8, fp, #0xa8
0x10077aa78:  13 01 50 f8   ldur	x19, [x8, #-0x100]
0x10077aa7c:  e8 03 13 aa   mov	x8, x19
0x10077aa80:  a2 31 e3 97   bl	0x100047108
0x10077aa84:  c0 02 62 9e   scvtf	d0, x22
0x10077aa88:  c8 09 e8 d2   mov	x8, #0x404e000000000000
0x10077aa8c:  01 01 67 9e   fmov	d1, x8
0x10077aa90:  00 08 61 1e   fmul	d0, d0, d1
0x10077aa94:  a8 23 02 d1   sub	x8, fp, #0x88
0x10077aa98:  16 01 50 f8   ldur	x22, [x8, #-0x100]
0x10077aa9c:  e8 03 16 aa   mov	x8, x22
0x10077aaa0:  e0 03 13 aa   mov	x0, x19
0x10077aaa4:  bf 28 38 94   bl	j__$s10Foundation12DateIntervalV5start8durationAcA0B0V_SdtcfC
0x10077aaa8:  b3 53 76 a9   ldp	x19, x20, [fp, #-0xa0]
0x10077aaac:  a0 e3 02 d1   sub	x0, fp, #0xb8
0x10077aab0:  e1 03 13 aa   mov	x1, x19
0x10077aab4:  9f 22 e2 97   bl	0x100003530
0x10077aab8:  e1 03 16 aa   mov	x1, x22
0x10077aabc:  02 00 80 52   mov	w2, #0
0x10077aac0:  03 00 80 52   mov	w3, #0
0x10077aac4:  04 00 80 52   mov	w4, #0
0x10077aac8:  a8 03 02 d1   sub	x8, fp, #0x80
0x10077aacc:  05 01 50 f8   ldur	x5, [x8, #-0x100]
0x10077aad0:  e6 03 13 aa   mov	x6, x19
0x10077aad4:  e7 03 14 aa   mov	x7, x20
0x10077aad8:  bf 19 12 94   bl	0x100c011d4
0x10077aadc:  fa 03 00 aa   mov	x26, x0
0x10077aae0:  48 1c 00 12   and	w8, w2, #0xff
0x10077aae4:  1f 05 00 71   cmp	w8, #0x1
0x10077aae8:  a9 43 02 d1   sub	x9, fp, #0x90
0x10077aaec:  35 01 10 f8   stur	x21, [x9, #-0x100]
0x10077aaf0:  a9 63 02 d1   sub	x9, fp, #0x98
0x10077aaf4:  37 01 10 f8   stur	x23, [x9, #-0x100]
0x10077aaf8:  ec 09 00 54   b.gt	loc_10077ac34 ; ⤵ 0x13c
0x10077aafc:  68 09 00 35   cbnz	w8, loc_10077ac28 ; ⤵ 0x12c
0x10077ab00:  f5 03 01 aa   mov	x21, x1
0x10077ab04:  e0 03 1a aa   mov	x0, x26
0x10077ab08:  de 42 38 94   bl	j__swift_bridgeObjectRetain
0x10077ab0c:  a1 3a 38 94   bl	j__$sSo13os_log_type_ta0A0E7defaultABvgZ
0x10077ab10:  f3 03 00 aa   mov	x19, x0
0x10077ab14:  68 8e 00 90   adrp	x8, 0x101946000
0x10077ab18:  08 a1 42 f9   ldr	x8, [x8, #0x540] ; data_101946540 (__DATA.__data)
0x10077ab1c:  1f 05 00 b1   cmn	x8, #0x1
0x10077ab20:  21 38 00 54   b.ne	loc_10077b224 ; ⤵ 0x704
0x10077ab24:  68 94 00 d0   adrp	x8, 0x101a08000
0x10077ab28:  17 25 40 f9   ldr	x23, [x8, #0x48]
0x10077ab2c:  00 8d 00 d0   adrp	x0, 0x10191c000
0x10077ab30:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x10077ab34:  81 73 00 f0   adrp	x1, 0x1015ed000
0x10077ab38:  21 00 19 91   add	x1, x1, #0x640
0x10077ab3c:  2e f6 e4 97   bl	0x1000b83f4
0x10077ab40:  01 09 80 52   mov	w1, #0x48
0x10077ab44:  e2 00 80 52   mov	w2, #0x7
0x10077ab48:  9a 42 38 94   bl	j__swift_allocObject
0x10077ab4c:  f6 03 00 aa   mov	x22, x0
0x10077ab50:  a8 83 03 d1   sub	x8, fp, #0xe0
0x10077ab54:  00 01 d0 3c   ldur	q0, [x8, #-0x100]
0x10077ab58:  00 04 80 3d   str	q0, [x0, #0x10]
0x10077ab5c:  b8 53 76 a9   ldp	x24, x20, [fp, #-0xa0]
0x10077ab60:  a0 e3 02 d1   sub	x0, fp, #0xb8
0x10077ab64:  e1 03 18 aa   mov	x1, x24
0x10077ab68:  72 22 e2 97   bl	0x100003530
0x10077ab6c:  88 06 40 f9   ldr	x8, [x20, #0x8]
0x10077ab70:  01 05 40 f9   ldr	x1, [x8, #0x8]
0x10077ab74:  e9 03 01 aa   mov	x9, x1
0x10077ab78:  2a 0d 42 f8   ldr	x10, [x9, #0x20]!
0x10077ab7c:  a8 03 01 d1   sub	x8, fp, #0x40
0x10077ab80:  19 01 50 f8   ldur	x25, [x8, #-0x100]
0x10077ab84:  e8 03 19 aa   mov	x8, x25
0x10077ab88:  f4 03 00 aa   mov	x20, x0
0x10077ab8c:  e0 03 18 aa   mov	x0, x24
0x10077ab90:  f1 03 09 aa   mov	x17, x9
0x10077ab94:  71 e3 f4 f2   movk	x17, #0xa71b, lsl #0x30
0x10077ab98:  51 09 3f d7   blraa	x10, x17
0x10077ab9c:  f4 03 19 aa   mov	x20, x25
0x10077aba0:  04 2b 38 94   bl	j__$s10Foundation4UUIDV10uuidStringSSvg
0x10077aba4:  f4 03 00 aa   mov	x20, x0
0x10077aba8:  f8 03 01 aa   mov	x24, x1
0x10077abac:  68 88 00 90   adrp	x8, 0x101886000
0x10077abb0:  08 45 45 f9   ldr	x8, [x8, #0xa88] ; __got._$sSSN
0x10077abb4:  c8 1e 00 f9   str	x8, [x22, #0x38]
0x10077abb8:  f2 38 e2 97   bl	0x100008f80
0x10077abbc:  c0 22 00 f9   str	x0, [x22, #0x40]
0x10077abc0:  d4 62 02 a9   stp	x20, x24, [x22, #0x20]
0x10077abc4:  a8 23 01 d1   sub	x8, fp, #0x48
0x10077abc8:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10077abcc:  28 01 40 f9   ldr	x8, [x9]
0x10077abd0:  e0 03 19 aa   mov	x0, x25
0x10077abd4:  aa e3 00 d1   sub	x10, fp, #0x38
0x10077abd8:  41 01 50 f8   ldur	x1, [x10, #-0x100]
0x10077abdc:  f1 03 09 aa   mov	x17, x9
0x10077abe0:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10077abe4:  11 09 3f d7   blraa	x8, x17
0x10077abe8:  e0 03 13 aa   mov	x0, x19
0x10077abec:  21 c4 ff d0   adrp	x1, 0x100000000
0x10077abf0:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x10077abf4:  e2 03 17 aa   mov	x2, x23
0x10077abf8:  03 72 00 d0   adrp	x3, 0x1015bc000
0x10077abfc:  63 80 07 91   add	x3, x3, #0x1e0 ; "Partial keys found in `nearOwnerCommandKeys` %@"
0x10077ac00:  e4 05 80 52   mov	w4, #0x2f
0x10077ac04:  45 00 80 52   mov	w5, #0x2
0x10077ac08:  e6 03 16 aa   mov	x6, x22
0x10077ac0c:  9d 33 38 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x10077ac10:  e0 03 1a aa   mov	x0, x26
0x10077ac14:  e1 03 15 aa   mov	x1, x21
0x10077ac18:  02 00 80 52   mov	w2, #0
0x10077ac1c:  74 c2 f0 97   bl	0x1003ab5ec
0x10077ac20:  e0 03 16 aa   mov	x0, x22
0x10077ac24:  a7 43 38 94   bl	j__swift_release
0x10077ac28:  ; loc_10077ac28
0x10077ac28:  68 88 00 90   adrp	x8, 0x101886000
0x10077ac2c:  08 71 47 f9   ldr	x8, [x8, #0xee0] ; __got.__swiftEmptyArrayStorage
0x10077ac30:  4c 00 00 14   b	loc_10077ad60 ; ⤵ 0x130
0x10077ac34:  ; loc_10077ac34
0x10077ac34:  1f 09 00 71   cmp	w8, #0x2
0x10077ac38:  81 00 00 54   b.ne	loc_10077ac48 ; ⤵ 0x10
0x10077ac3c:  e0 03 1a aa   mov	x0, x26
0x10077ac40:  42 00 80 52   mov	w2, #0x2
0x10077ac44:  6a c2 f0 97   bl	0x1003ab5ec
0x10077ac48:  ; loc_10077ac48
0x10077ac48:  52 3a 38 94   bl	j__$sSo13os_log_type_ta0A0E7defaultABvgZ
0x10077ac4c:  f3 03 00 aa   mov	x19, x0
0x10077ac50:  68 8e 00 90   adrp	x8, 0x101946000
0x10077ac54:  08 a1 42 f9   ldr	x8, [x8, #0x540] ; data_101946540 (__DATA.__data)
0x10077ac58:  1f 05 00 b1   cmn	x8, #0x1
0x10077ac5c:  41 2d 00 54   b.ne	loc_10077b204 ; ⤵ 0x5a8
0x10077ac60:  68 94 00 d0   adrp	x8, 0x101a08000
0x10077ac64:  15 25 40 f9   ldr	x21, [x8, #0x48]
0x10077ac68:  00 8d 00 d0   adrp	x0, 0x10191c000
0x10077ac6c:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x10077ac70:  81 73 00 f0   adrp	x1, 0x1015ed000
0x10077ac74:  21 00 19 91   add	x1, x1, #0x640
0x10077ac78:  df f5 e4 97   bl	0x1000b83f4
0x10077ac7c:  01 09 80 52   mov	w1, #0x48
0x10077ac80:  e2 00 80 52   mov	w2, #0x7
0x10077ac84:  4b 42 38 94   bl	j__swift_allocObject
0x10077ac88:  f6 03 00 aa   mov	x22, x0
0x10077ac8c:  a8 83 03 d1   sub	x8, fp, #0xe0
0x10077ac90:  00 01 d0 3c   ldur	q0, [x8, #-0x100]
0x10077ac94:  00 04 80 3d   str	q0, [x0, #0x10]
0x10077ac98:  b7 53 76 a9   ldp	x23, x20, [fp, #-0xa0]
0x10077ac9c:  a0 e3 02 d1   sub	x0, fp, #0xb8
0x10077aca0:  e1 03 17 aa   mov	x1, x23
0x10077aca4:  23 22 e2 97   bl	0x100003530
0x10077aca8:  88 06 40 f9   ldr	x8, [x20, #0x8]
0x10077acac:  01 05 40 f9   ldr	x1, [x8, #0x8]
0x10077acb0:  e9 03 01 aa   mov	x9, x1
0x10077acb4:  2a 0d 42 f8   ldr	x10, [x9, #0x20]!
0x10077acb8:  a8 03 01 d1   sub	x8, fp, #0x40
0x10077acbc:  18 01 50 f8   ldur	x24, [x8, #-0x100]
0x10077acc0:  e8 03 18 aa   mov	x8, x24
0x10077acc4:  f4 03 00 aa   mov	x20, x0
0x10077acc8:  e0 03 17 aa   mov	x0, x23
0x10077accc:  f1 03 09 aa   mov	x17, x9
0x10077acd0:  71 e3 f4 f2   movk	x17, #0xa71b, lsl #0x30
0x10077acd4:  51 09 3f d7   blraa	x10, x17
0x10077acd8:  f4 03 18 aa   mov	x20, x24
0x10077acdc:  b5 2a 38 94   bl	j__$s10Foundation4UUIDV10uuidStringSSvg
0x10077ace0:  f4 03 00 aa   mov	x20, x0
0x10077ace4:  f7 03 01 aa   mov	x23, x1
0x10077ace8:  68 88 00 90   adrp	x8, 0x101886000
0x10077acec:  08 45 45 f9   ldr	x8, [x8, #0xa88] ; __got._$sSSN
0x10077acf0:  c8 1e 00 f9   str	x8, [x22, #0x38]
0x10077acf4:  a3 38 e2 97   bl	0x100008f80
0x10077acf8:  c0 22 00 f9   str	x0, [x22, #0x40]
0x10077acfc:  d4 5e 02 a9   stp	x20, x23, [x22, #0x20]
0x10077ad00:  a8 23 01 d1   sub	x8, fp, #0x48
0x10077ad04:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10077ad08:  28 01 40 f9   ldr	x8, [x9]
0x10077ad0c:  e0 03 18 aa   mov	x0, x24
0x10077ad10:  aa e3 00 d1   sub	x10, fp, #0x38
0x10077ad14:  41 01 50 f8   ldur	x1, [x10, #-0x100]
0x10077ad18:  f1 03 09 aa   mov	x17, x9
0x10077ad1c:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10077ad20:  11 09 3f d7   blraa	x8, x17
0x10077ad24:  e0 03 13 aa   mov	x0, x19
0x10077ad28:  21 c4 ff d0   adrp	x1, 0x100000000
0x10077ad2c:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x10077ad30:  e2 03 15 aa   mov	x2, x21
0x10077ad34:  03 72 00 d0   adrp	x3, 0x1015bc000
0x10077ad38:  63 c0 05 91   add	x3, x3, #0x170 ; "No keys found in `nearOwnerCommandKeys` %@"
0x10077ad3c:  44 05 80 52   mov	w4, #0x2a
0x10077ad40:  45 00 80 52   mov	w5, #0x2
0x10077ad44:  e6 03 16 aa   mov	x6, x22
0x10077ad48:  4e 33 38 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x10077ad4c:  e0 03 16 aa   mov	x0, x22
0x10077ad50:  5c 43 38 94   bl	j__swift_release
0x10077ad54:  68 88 00 90   adrp	x8, 0x101886000
0x10077ad58:  08 71 47 f9   ldr	x8, [x8, #0xee0] ; __got.__swiftEmptyArrayStorage
0x10077ad5c:  fa 03 08 aa   mov	x26, x8
0x10077ad60:  ; loc_10077ad60
0x10077ad60:  a8 83 13 f8   stur	x8, [fp, #-0xc8]
0x10077ad64:  49 0b 40 f9   ldr	x9, [x26, #0x10]
0x10077ad68:  aa 83 02 d1   sub	x10, fp, #0xa0
0x10077ad6c:  5a 01 10 f8   stur	x26, [x10, #-0x100]
0x10077ad70:  c9 de ff b4   cbz	x9, loc_10077a948 ; ⤴ -0x428
0x10077ad74:  ec 03 09 aa   mov	x12, x9
0x10077ad78:  eb 03 08 aa   mov	x11, x8
0x10077ad7c:  a8 43 01 d1   sub	x8, fp, #0x50
0x10077ad80:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x10077ad84:  08 19 80 b9   ldrsw	x8, [x8, #0x18]
0x10077ad88:  97 03 08 8b   add	x23, x28, x8
0x10077ad8c:  a8 a3 03 d1   sub	x8, fp, #0xe8
0x10077ad90:  0a 01 50 f8   ldur	x10, [x8, #-0x100]
0x10077ad94:  48 41 41 39   ldrb	w8, [x10, #0x50]
0x10077ad98:  09 81 00 91   add	x9, x8, #0x20
0x10077ad9c:  28 01 28 8a   bic	x8, x9, x8
0x10077ada0:  58 03 08 8b   add	x24, x26, x8
0x10077ada4:  48 25 40 f9   ldr	x8, [x10, #0x48]
0x10077ada8:  a8 83 11 f8   stur	x8, [fp, #-0xe8]
0x10077adac:  a8 e3 01 d1   sub	x8, fp, #0x78
0x10077adb0:  0b 01 10 f8   stur	x11, [x8, #-0x100]
0x10077adb4:  fa 03 0c aa   mov	x26, x12
0x10077adb8:  b7 03 12 f8   stur	x23, [fp, #-0xe0]
0x10077adbc:  57 00 00 14   b	loc_10077af18 ; ⤵ 0x15c
0x10077adc0:  ; loc_10077adc0
0x10077adc0:  ec 39 38 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x10077adc4:  f3 03 00 aa   mov	x19, x0
0x10077adc8:  68 8e 00 90   adrp	x8, 0x101946000
0x10077adcc:  08 a1 42 f9   ldr	x8, [x8, #0x540] ; data_101946540 (__DATA.__data)
0x10077add0:  1f 05 00 b1   cmn	x8, #0x1
0x10077add4:  61 1e 00 54   b.ne	loc_10077b1a0 ; ⤵ 0x3cc
0x10077add8:  68 94 00 d0   adrp	x8, 0x101a08000
0x10077addc:  15 25 40 f9   ldr	x21, [x8, #0x48]
0x10077ade0:  00 8d 00 d0   adrp	x0, 0x10191c000
0x10077ade4:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x10077ade8:  81 73 00 f0   adrp	x1, 0x1015ed000
0x10077adec:  21 00 19 91   add	x1, x1, #0x640
0x10077adf0:  81 f5 e4 97   bl	0x1000b83f4
0x10077adf4:  01 0e 80 52   mov	w1, #0x70
0x10077adf8:  e2 00 80 52   mov	w2, #0x7
0x10077adfc:  ed 41 38 94   bl	j__swift_allocObject
0x10077ae00:  f6 03 00 aa   mov	x22, x0
0x10077ae04:  a8 c3 01 d1   sub	x8, fp, #0x70
0x10077ae08:  00 01 d0 3c   ldur	q0, [x8, #-0x100]
0x10077ae0c:  00 04 80 3d   str	q0, [x0, #0x10]
0x10077ae10:  b7 53 76 a9   ldp	x23, x20, [fp, #-0xa0]
0x10077ae14:  a0 e3 02 d1   sub	x0, fp, #0xb8
0x10077ae18:  e1 03 17 aa   mov	x1, x23
0x10077ae1c:  c5 21 e2 97   bl	0x100003530
0x10077ae20:  88 06 40 f9   ldr	x8, [x20, #0x8]
0x10077ae24:  01 05 40 f9   ldr	x1, [x8, #0x8]
0x10077ae28:  e9 03 01 aa   mov	x9, x1
0x10077ae2c:  2a 0d 42 f8   ldr	x10, [x9, #0x20]!
0x10077ae30:  a8 03 01 d1   sub	x8, fp, #0x40
0x10077ae34:  19 01 50 f8   ldur	x25, [x8, #-0x100]
0x10077ae38:  e8 03 19 aa   mov	x8, x25
0x10077ae3c:  f4 03 00 aa   mov	x20, x0
0x10077ae40:  e0 03 17 aa   mov	x0, x23
0x10077ae44:  f1 03 09 aa   mov	x17, x9
0x10077ae48:  71 e3 f4 f2   movk	x17, #0xa71b, lsl #0x30
0x10077ae4c:  51 09 3f d7   blraa	x10, x17
0x10077ae50:  f4 03 19 aa   mov	x20, x25
0x10077ae54:  57 2a 38 94   bl	j__$s10Foundation4UUIDV10uuidStringSSvg
0x10077ae58:  f4 03 00 aa   mov	x20, x0
0x10077ae5c:  f7 03 01 aa   mov	x23, x1
0x10077ae60:  68 88 00 90   adrp	x8, 0x101886000
0x10077ae64:  08 45 45 f9   ldr	x8, [x8, #0xa88] ; __got._$sSSN
0x10077ae68:  c8 1e 00 f9   str	x8, [x22, #0x38]
0x10077ae6c:  45 38 e2 97   bl	0x100008f80
0x10077ae70:  c0 22 00 f9   str	x0, [x22, #0x40]
0x10077ae74:  d4 5e 02 a9   stp	x20, x23, [x22, #0x20]
0x10077ae78:  a8 23 01 d1   sub	x8, fp, #0x48
0x10077ae7c:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10077ae80:  28 01 40 f9   ldr	x8, [x9]
0x10077ae84:  e0 03 19 aa   mov	x0, x25
0x10077ae88:  aa e3 00 d1   sub	x10, fp, #0x38
0x10077ae8c:  41 01 50 f8   ldur	x1, [x10, #-0x100]
0x10077ae90:  f1 03 09 aa   mov	x17, x9
0x10077ae94:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10077ae98:  11 09 3f d7   blraa	x8, x17
0x10077ae9c:  88 03 40 f9   ldr	x8, [x28]
0x10077aea0:  69 88 00 90   adrp	x9, 0x101886000
0x10077aea4:  29 25 47 f9   ldr	x9, [x9, #0xe48] ; __got._$ss6UInt64VN
0x10077aea8:  c9 32 00 f9   str	x9, [x22, #0x60]
0x10077aeac:  69 88 00 90   adrp	x9, 0x101886000
0x10077aeb0:  29 41 47 f9   ldr	x9, [x9, #0xe80] ; __got._$ss6UInt64Vs7CVarArgsWP
0x10077aeb4:  c9 36 00 f9   str	x9, [x22, #0x68]
0x10077aeb8:  c8 26 00 f9   str	x8, [x22, #0x48]
0x10077aebc:  e0 03 13 aa   mov	x0, x19
0x10077aec0:  21 c4 ff d0   adrp	x1, 0x100000000
0x10077aec4:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x10077aec8:  e2 03 15 aa   mov	x2, x21
0x10077aecc:  03 72 00 d0   adrp	x3, 0x1015bc000
0x10077aed0:  63 80 06 91   add	x3, x3, #0x1a0 ; "No intermediate key found in `commandKeys` %@, index: %llu"
0x10077aed4:  44 07 80 52   mov	w4, #0x3a
0x10077aed8:  45 00 80 52   mov	w5, #0x2
0x10077aedc:  e6 03 16 aa   mov	x6, x22
0x10077aee0:  e8 32 38 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x10077aee4:  e0 03 16 aa   mov	x0, x22
0x10077aee8:  f6 42 38 94   bl	j__swift_release
0x10077aeec:  70 4e 00 b0   adrp	x16, 0x101147000
0x10077aef0:  10 82 00 91   add	x16, x16, #0x20
0x10077aef4:  11 06 93 d2   mov	x17, #0x9830
0x10077aef8:  30 02 c1 da   pacia	x16, x17
0x10077aefc:  e1 03 10 aa   mov	x1, x16
0x10077af00:  e0 03 1c aa   mov	x0, x28
0x10077af04:  d5 68 01 94   bl	0x1007d5258
0x10077af08:  a8 df 71 a9   ldp	x8, x23, [fp, #-0xe8]
0x10077af0c:  18 03 08 8b   add	x24, x24, x8
0x10077af10:  5a 07 00 f1   subs	x26, x26, #0x1
0x10077af14:  e0 d1 ff 54   b.eq	loc_10077a950 ; ⤴ -0x5c4
0x10077af18:  ; loc_10077af18
0x10077af18:  70 4e 00 b0   adrp	x16, 0x101147000
0x10077af1c:  10 82 00 91   add	x16, x16, #0x20
0x10077af20:  f1 5c 80 d2   mov	x17, #0x2e7
0x10077af24:  30 02 c1 da   pacia	x16, x17
0x10077af28:  e2 03 10 aa   mov	x2, x16
0x10077af2c:  e0 03 18 aa   mov	x0, x24
0x10077af30:  e1 03 1c aa   mov	x1, x28
0x10077af34:  2d dc e2 97   bl	0x100031fe8
0x10077af38:  fb 06 40 f9   ldr	x27, [x23, #0x8]
0x10077af3c:  68 ff 7c d3   lsr	x8, x27, #0x3c
0x10077af40:  1f 39 00 f1   cmp	x8, #0xe
0x10077af44:  e8 f3 ff 54   b.hi	loc_10077adc0 ; ⤴ -0x184
0x10077af48:  b8 83 10 f8   stur	x24, [fp, #-0xf8]
0x10077af4c:  f8 02 40 f9   ldr	x24, [x23]
0x10077af50:  a8 43 01 d1   sub	x8, fp, #0x50
0x10077af54:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x10077af58:  19 15 80 b9   ldrsw	x25, [x8, #0x14]
0x10077af5c:  f3 52 41 a9   ldp	x19, x20, [x23, #0x10]
0x10077af60:  e0 03 18 aa   mov	x0, x24
0x10077af64:  e1 03 1b aa   mov	x1, x27
0x10077af68:  a3 77 e2 97   bl	0x100018df4
0x10077af6c:  e0 03 13 aa   mov	x0, x19
0x10077af70:  e1 03 14 aa   mov	x1, x20
0x10077af74:  b3 7d f6 97   bl	0x10051a640
0x10077af78:  f3 03 00 aa   mov	x19, x0
0x10077af7c:  f5 03 01 aa   mov	x21, x1
0x10077af80:  48 88 00 f0   adrp	x8, 0x101885000
0x10077af84:  00 8d 41 f9   ldr	x0, [x8, #0x318] ; __got._OBJC_CLASS_$_SPBeaconingKey
0x10077af88:  86 40 38 94   bl	j__objc_allocWithZone
0x10077af8c:  f6 03 00 aa   mov	x22, x0
0x10077af90:  94 03 19 8b   add	x20, x28, x25
0x10077af94:  6b 27 38 94   bl	j__$s10Foundation12DateIntervalV19_bridgeToObjectiveCSo06NSDateC0CyF
0x10077af98:  ba 03 11 f8   stur	x26, [fp, #-0xf0]
0x10077af9c:  fa 03 00 aa   mov	x26, x0
0x10077afa0:  e0 03 13 aa   mov	x0, x19
0x10077afa4:  e1 03 15 aa   mov	x1, x21
0x10077afa8:  5a 29 38 94   bl	j__$s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF
0x10077afac:  fc 03 00 aa   mov	x28, x0
0x10077afb0:  e0 03 16 aa   mov	x0, x22
0x10077afb4:  e2 03 1a aa   mov	x2, x26
0x10077afb8:  e3 03 1c aa   mov	x3, x28
0x10077afbc:  69 4c 38 94   bl	j__objc_msgSend(x0, "initWithDateInterval:key:")
0x10077afc0:  a8 23 00 d1   sub	x8, fp, #0x8
0x10077afc4:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10077afc8:  ae 40 38 94   bl	j__objc_release_x26
0x10077afcc:  b5 40 38 94   bl	j__objc_release_x28
0x10077afd0:  e0 03 13 aa   mov	x0, x19
0x10077afd4:  e1 03 15 aa   mov	x1, x21
0x10077afd8:  f2 6f e2 97   bl	0x100016fa0
0x10077afdc:  f3 03 18 aa   mov	x19, x24
0x10077afe0:  e0 03 18 aa   mov	x0, x24
0x10077afe4:  e1 03 1b aa   mov	x1, x27
0x10077afe8:  33 8a f6 97   bl	0x10051d8b4
0x10077afec:  a0 83 12 f8   stur	x0, [fp, #-0xd8]
0x10077aff0:  fa 03 01 aa   mov	x26, x1
0x10077aff4:  a8 83 00 d1   sub	x8, fp, #0x20
0x10077aff8:  01 01 10 f8   stur	x1, [x8, #-0x100]
0x10077affc:  e0 03 18 aa   mov	x0, x24

