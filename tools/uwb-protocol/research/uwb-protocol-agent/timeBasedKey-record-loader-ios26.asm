
sub_10153269c:
0x10153269c:  7f 23 03 d5   pacibsp
0x1015326a0:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x1015326a4:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x1015326a8:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x1015326ac:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x1015326b0:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x1015326b4:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x1015326b8:  fd 43 01 91   add	fp, sp, #0x50
0x1015326bc:  ff 43 02 d1   sub	sp, sp, #0x90
0x1015326c0:  fc 03 14 aa   mov	x28, x20
0x1015326c4:  f4 03 01 aa   mov	x20, x1
0x1015326c8:  f9 03 00 aa   mov	x25, x0
0x1015326cc:  a8 83 16 f8   stur	x8, [fp, #-0x98]
0x1015326d0:  00 00 80 d2   mov	x0, #0
0x1015326d4:  e7 56 01 94   bl	j__$s8SPShared11CryptoErrorOMa
0x1015326d8:  f7 03 00 aa   mov	x23, x0
0x1015326dc:  e9 03 00 aa   mov	x9, x0
0x1015326e0:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x1015326e4:  f0 03 08 aa   mov	x16, x8
0x1015326e8:  f1 03 09 aa   mov	x17, x9
0x1015326ec:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x1015326f0:  30 1a c1 da   autda	x16, x17
0x1015326f4:  f1 03 10 aa   mov	x17, x16
0x1015326f8:  f1 47 c1 da   xpacd	x17
0x1015326fc:  1f 02 11 eb   cmp	x16, x17
0x101532700:  40 00 00 54   b.eq	loc_101532708 ; ⤵ 0x8
0x101532704:  40 8e 38 d4   brk	#0xc472
0x101532708:  ; loc_101532708
0x101532708:  b0 83 15 f8   stur	x16, [fp, #-0xa8]
0x10153270c:  f0 03 08 aa   mov	x16, x8
0x101532710:  f1 03 09 aa   mov	x17, x9
0x101532714:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x101532718:  30 1a c1 da   autda	x16, x17
0x10153271c:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x101532720:  e9 03 08 aa   mov	x9, x8
0x101532724:  d1 1a 00 b0   adrp	x17, 0x10188b000
0x101532728:  31 22 17 91   add	x17, x17, #0x5c8 ; __got.___chkstk_darwin
0x10153272c:  30 02 40 f9   ldr	x16, [x17]
0x101532730:  11 0a 3f d7   blraa	x16, x17
0x101532734:  e9 03 00 91   mov	x9, sp
0x101532738:  0a 3d 00 91   add	x10, x8, #0xf
0x10153273c:  4c ed 7c 92   and	x12, x10, #0xfffffffffffffff0
0x101532740:  38 01 0c cb   sub	x24, x9, x12
0x101532744:  1f 03 00 91   mov	sp, x24
0x101532748:  e9 03 08 aa   mov	x9, x8
0x10153274c:  d1 1a 00 b0   adrp	x17, 0x10188b000
0x101532750:  31 22 17 91   add	x17, x17, #0x5c8 ; __got.___chkstk_darwin
0x101532754:  30 02 40 f9   ldr	x16, [x17]
0x101532758:  11 0a 3f d7   blraa	x16, x17
0x10153275c:  e9 03 00 91   mov	x9, sp
0x101532760:  3a 01 0c cb   sub	x26, x9, x12
0x101532764:  5f 03 00 91   mov	sp, x26
0x101532768:  e9 03 08 aa   mov	x9, x8
0x10153276c:  d1 1a 00 b0   adrp	x17, 0x10188b000
0x101532770:  31 22 17 91   add	x17, x17, #0x5c8 ; __got.___chkstk_darwin
0x101532774:  30 02 40 f9   ldr	x16, [x17]
0x101532778:  11 0a 3f d7   blraa	x16, x17
0x10153277c:  e8 03 00 91   mov	x8, sp
0x101532780:  13 01 0c cb   sub	x19, x8, x12
0x101532784:  7f 02 00 91   mov	sp, x19
0x101532788:  00 00 80 d2   mov	x0, #0
0x10153278c:  71 a2 ab 97   bl	0x10001b150
0x101532790:  a0 03 16 f8   stur	x0, [fp, #-0xa0]
0x101532794:  08 14 80 b9   ldrsw	x8, [x0, #0x14]
0x101532798:  35 03 08 8b   add	x21, x25, x8
0x10153279c:  b6 ee 41 a9   ldp	x22, x27, [x21, #0x18]
0x1015327a0:  e0 03 15 aa   mov	x0, x21
0x1015327a4:  e1 03 16 aa   mov	x1, x22
0x1015327a8:  62 43 ab 97   bl	0x100003530
0x1015327ac:  e0 03 16 aa   mov	x0, x22
0x1015327b0:  e1 03 1b aa   mov	x1, x27
0x1015327b4:  7c ed ab 97   bl	0x10002dda4
0x1015327b8:  e1 03 00 aa   mov	x1, x0
0x1015327bc:  e0 03 19 aa   mov	x0, x25
0x1015327c0:  e2 03 14 aa   mov	x2, x20
0x1015327c4:  f4 03 1c aa   mov	x20, x28
0x1015327c8:  57 26 00 94   bl	0x10153c124
0x1015327cc:  c8 05 00 d0   adrp	x8, 0x1015ec000
0x1015327d0:  01 75 c1 3d   ldr	q1, [x8, #0x5d0]
0x1015327d4:  02 e4 00 6f   movi	v2.2d, #0
0x1015327d8:  c0 16 00 b4   cbz	x0, loc_101532ab0 ; ⤵ 0x2d8
0x1015327dc:  fb 03 00 aa   mov	x27, x0
0x1015327e0:  a1 03 94 3c   stur	q1, [fp, #-0xc0]
0x1015327e4:  b6 d2 41 a9   ldp	x22, x20, [x21, #0x18]
0x1015327e8:  e0 03 15 aa   mov	x0, x21
0x1015327ec:  e1 03 16 aa   mov	x1, x22
0x1015327f0:  50 43 ab 97   bl	0x100003530
0x1015327f4:  81 1e 40 f9   ldr	x1, [x20, #0x38]
0x1015327f8:  a8 03 02 d1   sub	x8, fp, #0x80
0x1015327fc:  f4 03 00 aa   mov	x20, x0
0x101532800:  e0 03 16 aa   mov	x0, x22
0x101532804:  a3 59 01 94   bl	j__$sSY8rawValue03RawB0QzvgTj
0x101532808:  b5 03 58 f8   ldur	x21, [fp, #-0x80]
0x10153280c:  a8 fe 60 d3   lsr	x8, x21, #0x20
0x101532810:  e8 25 00 b5   cbnz	x8, loc_101532ccc ; ⤵ 0x4bc
0x101532814:  a8 26 00 d0   adrp	x8, 0x101a08000
0x101532818:  08 b5 45 f9   ldr	x8, [x8, #0xb68]
0x10153281c:  94 6b 68 f8   ldr	x20, [x28, x8]
0x101532820:  e0 03 14 aa   mov	x0, x20
0x101532824:  af 64 01 94   bl	j__swift_retain
0x101532828:  e2 61 01 94   bl	j___objc_autoreleasePoolPush
0x10153282c:  f6 03 00 aa   mov	x22, x0
0x101532830:  a8 03 02 d1   sub	x8, fp, #0x80
0x101532834:  a3 23 02 d1   sub	x3, fp, #0x88
0x101532838:  e0 03 15 aa   mov	x0, x21
0x10153283c:  e1 03 1b aa   mov	x1, x27
0x101532840:  e2 03 14 aa   mov	x2, x20
0x101532844:  15 00 80 d2   mov	x21, #0
0x101532848:  65 a5 ed 97   bl	0x10109bddc
0x10153284c:  75 13 00 b4   cbz	x21, loc_101532ab8 ; ⤵ 0x26c
0x101532850:  b5 83 57 f8   ldur	x21, [fp, #-0x88]
0x101532854:  e0 03 16 aa   mov	x0, x22
0x101532858:  d2 61 01 94   bl	j___objc_autoreleasePoolPop
0x10153285c:  e0 03 14 aa   mov	x0, x20
0x101532860:  98 64 01 94   bl	j__swift_release
0x101532864:  b5 03 18 f8   stur	x21, [fp, #-0x80]
0x101532868:  e0 03 15 aa   mov	x0, x21
0x10153286c:  01 64 01 94   bl	j__swift_errorRetain
0x101532870:  40 1f 00 d0   adrp	x0, 0x10191c000
0x101532874:  00 40 0f 91   add	x0, x0, #0x3d0 ; data_10191c3d0 (__DATA.__data)
0x101532878:  c1 05 00 b0   adrp	x1, 0x1015eb000
0x10153287c:  21 80 31 91   add	x1, x1, #0xc60 ; "\xc8A\r"
0x101532880:  dd 16 ae 97   bl	0x1000b83f4
0x101532884:  f4 03 00 aa   mov	x20, x0
0x101532888:  a1 03 02 d1   sub	x1, fp, #0x80
0x10153288c:  e0 03 13 aa   mov	x0, x19
0x101532890:  e2 03 14 aa   mov	x2, x20
0x101532894:  e3 03 17 aa   mov	x3, x23
0x101532898:  04 00 80 d2   mov	x4, #0
0x10153289c:  d9 63 01 94   bl	j__swift_dynamicCast
0x1015328a0:  00 12 00 36   tbz	w0, #0, loc_101532ae0 ; ⤵ 0x240
0x1015328a4:  bb 83 13 f8   stur	x27, [fp, #-0xc8]
0x1015328a8:  e0 03 15 aa   mov	x0, x21
0x1015328ac:  ed 63 01 94   bl	j__swift_errorRelease
0x1015328b0:  bb 83 55 f8   ldur	x27, [fp, #-0xa8]
0x1015328b4:  e8 03 1b aa   mov	x8, x27
0x1015328b8:  09 0d 42 f8   ldr	x9, [x8, #0x20]!
0x1015328bc:  e0 03 1a aa   mov	x0, x26
0x1015328c0:  e1 03 13 aa   mov	x1, x19
0x1015328c4:  e2 03 17 aa   mov	x2, x23
0x1015328c8:  f1 03 08 aa   mov	x17, x8
0x1015328cc:  11 1b e9 f2   movk	x17, #0x48d8, lsl #0x30
0x1015328d0:  31 09 3f d7   blraa	x9, x17
0x1015328d4:  27 5b 01 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x1015328d8:  a0 43 13 b8   stur	w0, [fp, #-0xcc]
0x1015328dc:  e8 1f 00 d0   adrp	x8, 0x101930000
0x1015328e0:  08 c1 45 f9   ldr	x8, [x8, #0xb80] ; data_101930b80 (__DATA.__data)
0x1015328e4:  1f 05 00 b1   cmn	x8, #0x1
0x1015328e8:  41 1f 00 54   b.ne	loc_101532cd0 ; ⤵ 0x3e8
0x1015328ec:  a8 26 00 b0   adrp	x8, 0x101a07000
0x1015328f0:  08 f1 40 f9   ldr	x8, [x8, #0x1e0]
0x1015328f4:  a8 83 12 f8   stur	x8, [fp, #-0xd8]
0x1015328f8:  40 1f 00 d0   adrp	x0, 0x10191c000
0x1015328fc:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x101532900:  c1 05 00 f0   adrp	x1, 0x1015ed000
0x101532904:  21 00 19 91   add	x1, x1, #0x640
0x101532908:  bb 16 ae 97   bl	0x1000b83f4
0x10153290c:  01 0e 80 52   mov	w1, #0x70
0x101532910:  e2 00 80 52   mov	w2, #0x7
0x101532914:  27 63 01 94   bl	j__swift_allocObject
0x101532918:  f3 03 00 aa   mov	x19, x0
0x10153291c:  c8 05 00 d0   adrp	x8, 0x1015ec000
0x101532920:  00 71 c1 3d   ldr	q0, [x8, #0x5c0]
0x101532924:  00 04 80 3d   str	q0, [x0, #0x10]
0x101532928:  60 1f 00 d0   adrp	x0, 0x101920000
0x10153292c:  00 80 26 91   add	x0, x0, #0x9a0 ; data_1019209a0 (__DATA.__data)
0x101532930:  50 57 ff b0   adrp	x16, 0x10001b000
0x101532934:  10 42 05 91   add	x16, x16, #0x150 ; "\xc1\xc9"
0x101532938:  31 d5 99 d2   mov	x17, #0xcea9
0x10153293c:  30 02 c1 da   pacia	x16, x17
0x101532940:  e1 03 10 aa   mov	x1, x16
0x101532944:  30 0a 00 b0   adrp	x16, 0x101677000
0x101532948:  10 42 38 91   add	x16, x16, #0xe10 ; "\xd1\xf5 "
0x10153294c:  71 dd 98 d2   mov	x17, #0xc6eb
0x101532950:  30 0a c1 da   pacda	x16, x17
0x101532954:  e2 03 10 aa   mov	x2, x16
0x101532958:  82 11 ac 97   bl	0x100036f60
0x10153295c:  e1 03 00 aa   mov	x1, x0
0x101532960:  f4 03 19 aa   mov	x20, x25
0x101532964:  a0 03 56 f8   ldur	x0, [fp, #-0xa0]
0x101532968:  e2 5e 01 94   bl	j__$ss23CustomStringConvertibleP11descriptionSSvgTj
0x10153296c:  f4 03 00 aa   mov	x20, x0
0x101532970:  f6 03 01 aa   mov	x22, x1
0x101532974:  b5 1a 00 90   adrp	x21, 0x101886000
0x101532978:  b5 46 45 f9   ldr	x21, [x21, #0xa88] ; __got._$sSSN
0x10153297c:  75 1e 00 f9   str	x21, [x19, #0x38]
0x101532980:  80 59 ab 97   bl	0x100008f80
0x101532984:  f9 03 00 aa   mov	x25, x0
0x101532988:  60 22 00 f9   str	x0, [x19, #0x40]
0x10153298c:  74 5a 02 a9   stp	x20, x22, [x19, #0x20]
0x101532990:  f6 03 1b aa   mov	x22, x27
0x101532994:  c8 0e 41 f8   ldr	x8, [x22, #0x10]!
0x101532998:  e0 03 18 aa   mov	x0, x24
0x10153299c:  e1 03 1a aa   mov	x1, x26
0x1015329a0:  e2 03 17 aa   mov	x2, x23
0x1015329a4:  a8 03 16 f8   stur	x8, [fp, #-0xa0]
0x1015329a8:  f1 03 16 aa   mov	x17, x22
0x1015329ac:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x1015329b0:  11 09 3f d7   blraa	x8, x17
0x1015329b4:  e0 03 18 aa   mov	x0, x24
0x1015329b8:  e1 03 17 aa   mov	x1, x23
0x1015329bc:  99 58 01 94   bl	j__$sSS10describingSSx_tclufC
0x1015329c0:  75 66 06 a9   stp	x21, x25, [x19, #0x60]
0x1015329c4:  60 86 04 a9   stp	x0, x1, [x19, #0x48]
0x1015329c8:  61 56 ff d0   adrp	x1, 0x100000000
0x1015329cc:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x1015329d0:  43 05 00 d0   adrp	x3, 0x1015dc000
0x1015329d4:  63 80 07 91   add	x3, x3, #0x1e0 ; "Error decrypting keys %@. %@"
0x1015329d8:  a0 43 53 b8   ldur	w0, [fp, #-0xcc]
0x1015329dc:  a2 83 52 f8   ldur	x2, [fp, #-0xd8]
0x1015329e0:  84 03 80 52   mov	w4, #0x1c
0x1015329e4:  45 00 80 52   mov	w5, #0x2
0x1015329e8:  e6 03 13 aa   mov	x6, x19
0x1015329ec:  25 54 01 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x1015329f0:  e0 03 13 aa   mov	x0, x19
0x1015329f4:  33 64 01 94   bl	j__swift_release
0x1015329f8:  08 21 00 b0   adrp	x8, 0x101953000
0x1015329fc:  08 4d 40 f9   ldr	x8, [x8, #0x98] ; data_101953098 (__DATA.__data)
0x101532a00:  94 6b 68 f8   ldr	x20, [x28, x8]
0x101532a04:  54 13 00 b4   cbz	x20, loc_101532c6c ; ⤵ 0x268
0x101532a08:  56 77 fc f2   movk	x22, #0xe3ba, lsl #0x30
0x101532a0c:  60 1f 00 d0   adrp	x0, 0x101920000
0x101532a10:  00 80 16 91   add	x0, x0, #0x5a0 ; data_1019205a0 (__DATA.__data)
0x101532a14:  90 1a 00 f0   adrp	x16, 0x101885000
0x101532a18:  10 2a 40 f9   ldr	x16, [x16, #0x50] ; __got._$s8SPShared11CryptoErrorOMa
0x101532a1c:  31 d5 99 d2   mov	x17, #0xcea9
0x101532a20:  30 02 c1 da   pacia	x16, x17
0x101532a24:  e1 03 10 aa   mov	x1, x16
0x101532a28:  90 1a 00 f0   adrp	x16, 0x101885000
0x101532a2c:  10 2e 40 f9   ldr	x16, [x16, #0x58] ; __got._$s8SPShared11CryptoErrorOs0C0AAMc
0x101532a30:  71 dd 98 d2   mov	x17, #0xc6eb
0x101532a34:  30 0a c1 da   pacda	x16, x17
0x101532a38:  e2 03 10 aa   mov	x2, x16
0x101532a3c:  49 11 ac 97   bl	0x100036f60
0x101532a40:  e1 03 00 aa   mov	x1, x0
0x101532a44:  e0 03 17 aa   mov	x0, x23
0x101532a48:  02 00 80 d2   mov	x2, #0
0x101532a4c:  03 00 80 52   mov	w3, #0
0x101532a50:  d4 62 01 94   bl	j__swift_allocError
0x101532a54:  f3 03 00 aa   mov	x19, x0
0x101532a58:  e0 03 01 aa   mov	x0, x1
0x101532a5c:  e1 03 1a aa   mov	x1, x26
0x101532a60:  e2 03 17 aa   mov	x2, x23
0x101532a64:  a8 03 56 f8   ldur	x8, [fp, #-0xa0]
0x101532a68:  16 09 3f d7   blraa	x8, x22
0x101532a6c:  e0 03 14 aa   mov	x0, x20
0x101532a70:  1c 64 01 94   bl	j__swift_retain
0x101532a74:  e0 03 13 aa   mov	x0, x19
0x101532a78:  d4 34 f3 97   bl	0x1011ffdc8
0x101532a7c:  e0 03 14 aa   mov	x0, x20
0x101532a80:  10 64 01 94   bl	j__swift_release

