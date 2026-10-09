
sub_1007987ec:
0x1007987ec:  7f 23 03 d5   pacibsp
0x1007987f0:  ff 03 03 d1   sub	sp, sp, #0xc0
0x1007987f4:  fa 67 07 a9   stp	x26, x25, [sp, #0x70]
0x1007987f8:  f8 5f 08 a9   stp	x24, x23, [sp, #0x80]
0x1007987fc:  f6 57 09 a9   stp	x22, x21, [sp, #0x90]
0x100798800:  f4 4f 0a a9   stp	x20, x19, [sp, #0xa0]
0x100798804:  fd 7b 0b a9   stp	fp, lr, [sp, #0xb0]
0x100798808:  fd c3 02 91   add	fp, sp, #0xb0
0x10079880c:  c8 14 00 d0   adrp	x8, 0x100a32000
0x100798810:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100798814:  08 01 40 f9   ldr	x8, [x8]
0x100798818:  a8 83 1b f8   stur	x8, [fp, #-0x48]
0x10079881c:  ff ff 01 a9   stp	xzr, xzr, [sp, #0x18]
0x100798820:  ff 17 00 f9   str	xzr, [sp, #0x28]
0x100798824:  08 18 00 b0   adrp	x8, 0x100a99000
0x100798828:  08 11 44 f9   ldr	x8, [x8, #0x820] ; data_100a99820 (__DATA.__data)
0x10079882c:  1f 05 00 b1   cmn	x8, #0x1
0x100798830:  a1 13 00 54   b.ne	loc_100798aa4 ; ⤵ 0x274
0x100798834:  ; loc_100798834
0x100798834:  08 18 00 b0   adrp	x8, 0x100a99000
0x100798838:  00 0d 44 f9   ldr	x0, [x8, #0x818] ; data_100a99818 (__DATA.__data)
0x10079883c:  e1 63 00 91   add	x1, sp, #0x18
0x100798840:  b1 1b f4 97   bl	0x10049f704
0x100798844:  ff 7f 00 a9   stp	xzr, xzr, [sp]
0x100798848:  ff 0b 00 f9   str	xzr, [sp, #0x10]
0x10079884c:  e8 07 00 90   adrp	x8, 0x100894000
0x100798850:  08 c1 30 91   add	x8, x8, #0xc30
0x100798854:  00 01 c0 3d   ldr	q0, [x8]
0x100798858:  e0 0f 80 3d   str	q0, [sp, #0x30]
0x10079885c:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x100798860:  e8 43 00 b9   str	w8, [sp, #0x40]
0x100798864:  e0 43 01 91   add	x0, sp, #0x50
0x100798868:  e1 c3 00 91   add	x1, sp, #0x30
0x10079886c:  19 cc ff 97   bl	0x10078b8d0
0x100798870:  ea a7 40 a9   ldp	x10, x9, [sp, #0x8]
0x100798874:  5f 01 09 eb   cmp	x10, x9
0x100798878:  e2 00 00 54   b.hs	loc_100798894 ; ⤵ 0x1c
0x10079887c:  e0 17 c0 3d   ldr	q0, [sp, #0x50]
0x100798880:  e8 63 40 b9   ldr	w8, [sp, #0x60]
0x100798884:  48 11 00 b9   str	w8, [x10, #0x10]
0x100798888:  40 01 80 3d   str	q0, [x10]
0x10079888c:  53 51 00 91   add	x19, x10, #0x14
0x100798890:  32 00 00 14   b	loc_100798958 ; ⤵ 0xc8
0x100798894:  ; loc_100798894
0x100798894:  e8 e7 02 b2   mov	x8, #0xcccccccccccccccc
0x100798898:  88 99 e1 f2   movk	x8, #0xccc, lsl #0x30
0x10079889c:  eb 03 40 f9   ldr	x11, [sp]
0x1007988a0:  53 01 0b cb   sub	x19, x10, x11
0x1007988a4:  6a fe 42 93   asr	x10, x19, #0x2
0x1007988a8:  ec e7 02 b2   mov	x12, #0xcccccccccccccccc
0x1007988ac:  ac 99 99 f2   movk	x12, #0xcccd
0x1007988b0:  2d 00 80 d2   mov	x13, #0x1
0x1007988b4:  4a 35 0c 9b   madd	x10, x10, x12, x13
0x1007988b8:  5f 01 08 eb   cmp	x10, x8
0x1007988bc:  a8 0f 00 54   b.hi	loc_100798ab0 ; ⤵ 0x1f4
0x1007988c0:  ed 03 00 91   mov	x13, sp
0x1007988c4:  29 01 0b cb   sub	x9, x9, x11
0x1007988c8:  29 fd 42 93   asr	x9, x9, #0x2
0x1007988cc:  29 7d 0c 9b   mul	x9, x9, x12
0x1007988d0:  2b f9 7f d3   lsl	x11, x9, #0x1
0x1007988d4:  7f 01 0a eb   cmp	x11, x10
0x1007988d8:  6a 81 8a 9a   csel	x10, x11, x10, hi
0x1007988dc:  eb e7 03 b2   mov	x11, #0x6666666666666666
0x1007988e0:  cb cc e0 f2   movk	x11, #0x666, lsl #0x30
0x1007988e4:  3f 01 0b eb   cmp	x9, x11
0x1007988e8:  41 31 88 9a   csel	x1, x10, x8, cc
0x1007988ec:  a0 41 00 91   add	x0, x13, #0x10
0x1007988f0:  93 3a e3 97   bl	0x10006733c
0x1007988f4:  09 00 13 8b   add	x9, x0, x19
0x1007988f8:  88 02 80 52   mov	w8, #0x14
0x1007988fc:  28 00 08 9b   madd	x8, x1, x8, x0
0x100798900:  e0 17 c0 3d   ldr	q0, [sp, #0x50]
0x100798904:  ea 63 40 b9   ldr	w10, [sp, #0x60]
0x100798908:  2a 11 00 b9   str	w10, [x9, #0x10]
0x10079890c:  20 01 80 3d   str	q0, [x9]
0x100798910:  33 51 00 91   add	x19, x9, #0x14
0x100798914:  e0 2b 40 a9   ldp	x0, x10, [sp]
0x100798918:  0b 00 0a eb   subs	x11, x0, x10
0x10079891c:  29 01 0b 8b   add	x9, x9, x11
0x100798920:  40 01 00 54   b.eq	loc_100798948 ; ⤵ 0x28
0x100798924:  eb 03 09 aa   mov	x11, x9
0x100798928:  ; loc_100798928
0x100798928:  00 00 c0 3d   ldr	q0, [x0]
0x10079892c:  0c 10 40 b9   ldr	w12, [x0, #0x10]
0x100798930:  6c 11 00 b9   str	w12, [x11, #0x10]
0x100798934:  60 45 81 3c   str	q0, [x11], #0x14
0x100798938:  00 50 00 91   add	x0, x0, #0x14
0x10079893c:  1f 00 0a eb   cmp	x0, x10
0x100798940:  41 ff ff 54   b.ne	loc_100798928 ; ⤴ -0x18
0x100798944:  e0 03 40 f9   ldr	x0, [sp]
0x100798948:  ; loc_100798948
0x100798948:  e9 4f 00 a9   stp	x9, x19, [sp]
0x10079894c:  e8 0b 00 f9   str	x8, [sp, #0x10]
0x100798950:  40 00 00 b4   cbz	x0, loc_100798958 ; ⤵ 0x8
0x100798954:  ff d5 01 94   bl	j___ZdlPv
0x100798958:  ; loc_100798958
0x100798958:  f3 07 00 f9   str	x19, [sp, #0x8]
0x10079895c:  f5 a3 41 a9   ldp	x21, x8, [sp, #0x18]
0x100798960:  bf 02 08 eb   cmp	x21, x8
0x100798964:  e0 05 00 54   b.eq	loc_100798a20 ; ⤵ 0xbc
0x100798968:  16 18 00 b0   adrp	x22, 0x100a99000
0x10079896c:  17 18 00 b0   adrp	x23, 0x100a99000
0x100798970:  18 18 00 b0   adrp	x24, 0x100a99000
0x100798974:  19 18 00 b0   adrp	x25, 0x100a99000
0x100798978:  ; loc_100798978
0x100798978:  b3 02 40 f9   ldr	x19, [x21]
0x10079897c:  e0 03 13 aa   mov	x0, x19
0x100798980:  c1 02 80 52   mov	w1, #0x16
0x100798984:  38 3e f4 97   bl	0x1004a8264
0x100798988:  a0 03 00 34   cbz	w0, loc_1007989fc ; ⤵ 0x74
0x10079898c:  ff 7f 05 a9   stp	xzr, xzr, [sp, #0x50]
0x100798990:  c8 46 40 f9   ldr	x8, [x22, #0x88]
0x100798994:  1f 05 00 b1   cmn	x8, #0x1
0x100798998:  c1 03 00 54   b.ne	loc_100798a10 ; ⤵ 0x78
0x10079899c:  ; loc_10079899c
0x10079899c:  e0 42 40 f9   ldr	x0, [x23, #0x80]
0x1007989a0:  e8 43 01 91   add	x8, sp, #0x50
0x1007989a4:  61 02 02 91   add	x1, x19, #0x80
0x1007989a8:  0a ff fd 97   bl	0x1007185d0
0x1007989ac:  08 df 40 f9   ldr	x8, [x24, #0x1b8]
0x1007989b0:  1f 05 00 b1   cmn	x8, #0x1
0x1007989b4:  21 03 00 54   b.ne	loc_100798a18 ; ⤵ 0x64
0x1007989b8:  ; loc_1007989b8
0x1007989b8:  34 db 40 f9   ldr	x20, [x25, #0x1b0]
0x1007989bc:  e0 43 01 91   add	x0, sp, #0x50
0x1007989c0:  36 74 ec 97   bl	0x1002b5a98
0x1007989c4:  fd 03 1d aa   mov	fp, fp
0x1007989c8:  76 da 01 94   bl	j__objc_retainAutoreleasedReturnValue
0x1007989cc:  f3 03 00 aa   mov	x19, x0
0x1007989d0:  e2 03 00 91   mov	x2, sp
0x1007989d4:  e0 03 14 aa   mov	x0, x20
0x1007989d8:  e1 03 13 aa   mov	x1, x19
0x1007989dc:  23 00 80 52   mov	w3, #0x1
0x1007989e0:  04 00 80 52   mov	w4, #0
0x1007989e4:  05 00 80 52   mov	w5, #0
0x1007989e8:  a5 c5 fb 97   bl	0x10068a07c
0x1007989ec:  f4 03 00 aa   mov	x20, x0
0x1007989f0:  e0 03 13 aa   mov	x0, x19
0x1007989f4:  5f da 01 94   bl	j__objc_release
0x1007989f8:  94 01 00 37   tbnz	w20, #0, loc_100798a28 ; ⤵ 0x30
0x1007989fc:  ; loc_1007989fc
0x1007989fc:  b5 22 00 91   add	x21, x21, #0x8
0x100798a00:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x100798a04:  bf 02 08 eb   cmp	x21, x8
0x100798a08:  81 fb ff 54   b.ne	loc_100798978 ; ⤴ -0x90
0x100798a0c:  05 00 00 14   b	loc_100798a20 ; ⤵ 0x14
0x100798a10:  ; loc_100798a10
0x100798a10:  1b c9 01 94   bl	0x10080ae7c
0x100798a14:  e2 ff ff 17   b	loc_10079899c ; ⤴ -0x78
0x100798a18:  ; loc_100798a18
0x100798a18:  b1 ca 01 94   bl	0x10080b4dc
0x100798a1c:  e7 ff ff 17   b	loc_1007989b8 ; ⤴ -0x64
0x100798a20:  ; loc_100798a20
0x100798a20:  13 00 80 d2   mov	x19, #0
0x100798a24:  06 00 00 14   b	loc_100798a3c ; ⤵ 0x18
0x100798a28:  ; loc_100798a28
0x100798a28:  e0 43 01 91   add	x0, sp, #0x50
0x100798a2c:  1b 74 ec 97   bl	0x1002b5a98
0x100798a30:  fd 03 1d aa   mov	fp, fp
0x100798a34:  5b da 01 94   bl	j__objc_retainAutoreleasedReturnValue
0x100798a38:  f3 03 00 aa   mov	x19, x0
0x100798a3c:  ; loc_100798a3c
0x100798a3c:  e0 03 40 f9   ldr	x0, [sp]
0x100798a40:  60 00 00 b4   cbz	x0, loc_100798a4c ; ⤵ 0xc
0x100798a44:  e0 07 00 f9   str	x0, [sp, #0x8]
0x100798a48:  c2 d5 01 94   bl	j___ZdlPv
0x100798a4c:  ; loc_100798a4c
0x100798a4c:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x100798a50:  60 00 00 b4   cbz	x0, loc_100798a5c ; ⤵ 0xc
0x100798a54:  e0 13 00 f9   str	x0, [sp, #0x20]
0x100798a58:  be d5 01 94   bl	j___ZdlPv
0x100798a5c:  ; loc_100798a5c
0x100798a5c:  a8 83 5b f8   ldur	x8, [fp, #-0x48]
0x100798a60:  c9 14 00 d0   adrp	x9, 0x100a32000
0x100798a64:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100798a68:  29 01 40 f9   ldr	x9, [x9]
0x100798a6c:  3f 01 08 eb   cmp	x9, x8
0x100798a70:  e1 01 00 54   b.ne	loc_100798aac ; ⤵ 0x3c
0x100798a74:  e0 03 13 aa   mov	x0, x19
0x100798a78:  fd 7b 4b a9   ldp	fp, lr, [sp, #0xb0]
0x100798a7c:  f4 4f 4a a9   ldp	x20, x19, [sp, #0xa0]
0x100798a80:  f6 57 49 a9   ldp	x22, x21, [sp, #0x90]
0x100798a84:  f8 5f 48 a9   ldp	x24, x23, [sp, #0x80]
0x100798a88:  fa 67 47 a9   ldp	x26, x25, [sp, #0x70]
0x100798a8c:  ff 03 03 91   add	sp, sp, #0xc0
0x100798a90:  ff 23 03 d5   autibsp
0x100798a94:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100798a98:  50 00 f0 b6   tbz	x16, #0x3e, loc_100798aa0 ; ⤵ 0x8
0x100798a9c:  20 8e 38 d4   brk	#0xc471
0x100798aa0:  ; loc_100798aa0
0x100798aa0:  fc d9 01 14   b	j__objc_autoreleaseReturnValue
0x100798aa4:  ; loc_100798aa4
0x100798aa4:  8d ca 01 94   bl	0x10080b4d8
0x100798aa8:  63 ff ff 17   b	loc_100798834 ; ⤴ -0x274
0x100798aac:  ; loc_100798aac
0x100798aac:  f9 d5 01 94   bl	j____stack_chk_fail
0x100798ab0:  ; loc_100798ab0
0x100798ab0:  38 b2 e1 97   bl	0x100005390
0x100798ab4:  0c 00 00 14   b	loc_100798ae4 ; ⤵ 0x30
0x100798ab8:  f3 03 00 aa   mov	x19, x0
0x100798abc:  0f 00 00 14   b	loc_100798af8 ; ⤵ 0x3c
0x100798ac0:  09 00 00 14   b	loc_100798ae4 ; ⤵ 0x24
0x100798ac4:  e1 03 13 aa   mov	x1, x19
0x100798ac8:  f3 03 00 aa   mov	x19, x0
0x100798acc:  e0 03 01 aa   mov	x0, x1
0x100798ad0:  28 da 01 94   bl	j__objc_release
0x100798ad4:  05 00 00 14   b	loc_100798ae8 ; ⤵ 0x14
0x100798ad8:  f3 03 00 aa   mov	x19, x0
0x100798adc:  0b 00 00 14   b	loc_100798b08 ; ⤵ 0x2c
0x100798ae0:  01 00 00 14   b	loc_100798ae4 ; ⤵ 0x4
0x100798ae4:  ; loc_100798ae4
0x100798ae4:  f3 03 00 aa   mov	x19, x0
0x100798ae8:  ; loc_100798ae8
0x100798ae8:  e0 03 40 f9   ldr	x0, [sp]
0x100798aec:  60 00 00 b4   cbz	x0, loc_100798af8 ; ⤵ 0xc
0x100798af0:  e0 07 00 f9   str	x0, [sp, #0x8]
0x100798af4:  97 d5 01 94   bl	j___ZdlPv
0x100798af8:  ; loc_100798af8
0x100798af8:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x100798afc:  60 00 00 b4   cbz	x0, loc_100798b08 ; ⤵ 0xc
0x100798b00:  e0 13 00 f9   str	x0, [sp, #0x20]
0x100798b04:  93 d5 01 94   bl	j___ZdlPv
0x100798b08:  ; loc_100798b08
0x100798b08:  e0 03 13 aa   mov	x0, x19
0x100798b0c:  75 d4 01 94   bl	j___Unwind_Resume

sub_100798b10:
0x100798b10:  7f 23 03 d5   pacibsp
0x100798b14:  ff 43 03 d1   sub	sp, sp, #0xd0
0x100798b18:  fc 6f 07 a9   stp	x28, x27, [sp, #0x70]
0x100798b1c:  fa 67 08 a9   stp	x26, x25, [sp, #0x80]
0x100798b20:  f8 5f 09 a9   stp	x24, x23, [sp, #0x90]
0x100798b24:  f6 57 0a a9   stp	x22, x21, [sp, #0xa0]
0x100798b28:  f4 4f 0b a9   stp	x20, x19, [sp, #0xb0]
0x100798b2c:  fd 7b 0c a9   stp	fp, lr, [sp, #0xc0]
0x100798b30:  fd 03 03 91   add	fp, sp, #0xc0
0x100798b34:  c8 14 00 d0   adrp	x8, 0x100a32000
0x100798b38:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100798b3c:  08 01 40 f9   ldr	x8, [x8]
0x100798b40:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x100798b44:  ff ff 01 a9   stp	xzr, xzr, [sp, #0x18]
0x100798b48:  ff 17 00 f9   str	xzr, [sp, #0x28]
0x100798b4c:  08 18 00 b0   adrp	x8, 0x100a99000
0x100798b50:  08 11 44 f9   ldr	x8, [x8, #0x820] ; data_100a99820 (__DATA.__data)
0x100798b54:  1f 05 00 b1   cmn	x8, #0x1
0x100798b58:  c1 0e 00 54   b.ne	loc_100798d30 ; ⤵ 0x1d8
0x100798b5c:  ; loc_100798b5c
0x100798b5c:  08 18 00 b0   adrp	x8, 0x100a99000
0x100798b60:  00 0d 44 f9   ldr	x0, [x8, #0x818] ; data_100a99818 (__DATA.__data)
0x100798b64:  e1 63 00 91   add	x1, sp, #0x18
0x100798b68:  e7 1a f4 97   bl	0x10049f704
0x100798b6c:  f3 e3 41 a9   ldp	x19, x24, [sp, #0x18]
0x100798b70:  7f 02 18 eb   cmp	x19, x24
0x100798b74:  80 0d 00 54   b.eq	loc_100798d24 ; ⤵ 0x1b0
0x100798b78:  1a 18 00 b0   adrp	x26, 0x100a99000
0x100798b7c:  fb 07 00 90   adrp	x27, 0x100894000
0x100798b80:  7b 13 31 91   add	x27, x27, #0xc44
0x100798b84:  75 84 90 d2   mov	x21, #0x8423
0x100798b88:  d5 90 b6 f2   movk	x21, #0xb486, lsl #0x10
0x100798b8c:  15 80 c1 f2   movk	x21, #0xc00, lsl #0x20
0x100798b90:  15 20 e0 f2   movk	x21, #0x100, lsl #0x30
0x100798b94:  1c 18 00 b0   adrp	x28, 0x100a99000
0x100798b98:  19 18 00 b0   adrp	x25, 0x100a99000
0x100798b9c:  ; loc_100798b9c
0x100798b9c:  60 02 40 f9   ldr	x0, [x19]
0x100798ba0:  e1 02 80 52   mov	w1, #0x17
0x100798ba4:  b0 3d f4 97   bl	0x1004a8264
0x100798ba8:  c0 07 00 34   cbz	w0, loc_100798ca0 ; ⤵ 0xf8
0x100798bac:  ff ff 05 a9   stp	xzr, xzr, [sp, #0x58]
0x100798bb0:  08 18 00 b0   adrp	x8, 0x100a99000
0x100798bb4:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x100798bb8:  1f 05 00 b1   cmn	x8, #0x1
0x100798bbc:  a1 07 00 54   b.ne	loc_100798cb0 ; ⤵ 0xf4
0x100798bc0:  ; loc_100798bc0
0x100798bc0:  40 43 40 f9   ldr	x0, [x26, #0x80]
0x100798bc4:  69 02 40 f9   ldr	x9, [x19]
0x100798bc8:  e8 63 01 91   add	x8, sp, #0x58
0x100798bcc:  21 01 02 91   add	x1, x9, #0x80
0x100798bd0:  80 fe fd 97   bl	0x1007185d0
0x100798bd4:  ff 7f 00 a9   stp	xzr, xzr, [sp]
0x100798bd8:  ff 0b 00 f9   str	xzr, [sp, #0x10]
0x100798bdc:  60 03 c0 3d   ldr	q0, [x27]
0x100798be0:  e0 0f 80 3d   str	q0, [sp, #0x30]
0x100798be4:  68 13 40 b9   ldr	w8, [x27, #0x10]
0x100798be8:  e8 43 00 b9   str	w8, [sp, #0x40]
0x100798bec:  e0 13 01 91   add	x0, sp, #0x44
0x100798bf0:  e1 c3 00 91   add	x1, sp, #0x30
0x100798bf4:  37 cb ff 97   bl	0x10078b8d0
0x100798bf8:  ff ff 00 a9   stp	xzr, xzr, [sp, #0x8]
0x100798bfc:  ff 03 00 f9   str	xzr, [sp]
0x100798c00:  80 02 80 52   mov	w0, #0x14
0x100798c04:  e1 03 15 aa   mov	x1, x21
0x100798c08:  62 d5 01 94   bl	j___ZnwmSt19__type_descriptor_t
0x100798c0c:  08 50 00 91   add	x8, x0, #0x14
0x100798c10:  e8 a3 00 a9   stp	x8, x8, [sp, #0x8]
0x100798c14:  e0 43 c4 3c   ldur	q0, [sp, #0x44]
0x100798c18:  00 00 80 3d   str	q0, [x0]
0x100798c1c:  e9 57 40 b9   ldr	w9, [sp, #0x54]
0x100798c20:  09 10 00 b9   str	w9, [x0, #0x10]
0x100798c24:  e0 03 00 f9   str	x0, [sp]
0x100798c28:  88 df 40 f9   ldr	x8, [x28, #0x1b8]
0x100798c2c:  1f 05 00 b1   cmn	x8, #0x1
0x100798c30:  41 04 00 54   b.ne	loc_100798cb8 ; ⤵ 0x88
0x100798c34:  ; loc_100798c34
0x100798c34:  36 db 40 f9   ldr	x22, [x25, #0x1b0]
0x100798c38:  e0 63 01 91   add	x0, sp, #0x58
0x100798c3c:  97 73 ec 97   bl	0x1002b5a98
0x100798c40:  fd 03 1d aa   mov	fp, fp
0x100798c44:  d7 d9 01 94   bl	j__objc_retainAutoreleasedReturnValue
0x100798c48:  f7 03 00 aa   mov	x23, x0
0x100798c4c:  e2 03 00 91   mov	x2, sp
0x100798c50:  e0 03 16 aa   mov	x0, x22
0x100798c54:  e1 03 17 aa   mov	x1, x23
0x100798c58:  23 00 80 52   mov	w3, #0x1
0x100798c5c:  04 00 80 52   mov	w4, #0
0x100798c60:  25 00 80 52   mov	w5, #0x1
0x100798c64:  06 c5 fb 97   bl	0x10068a07c
0x100798c68:  f6 03 00 aa   mov	x22, x0
0x100798c6c:  e0 03 17 aa   mov	x0, x23
0x100798c70:  c0 d9 01 94   bl	j__objc_release
0x100798c74:  d6 00 00 34   cbz	w22, loc_100798c8c ; ⤵ 0x18
0x100798c78:  e0 63 01 91   add	x0, sp, #0x58
0x100798c7c:  87 73 ec 97   bl	0x1002b5a98
0x100798c80:  fd 03 1d aa   mov	fp, fp
0x100798c84:  c7 d9 01 94   bl	j__objc_retainAutoreleasedReturnValue
0x100798c88:  f4 03 00 aa   mov	x20, x0
0x100798c8c:  ; loc_100798c8c
0x100798c8c:  e0 03 40 f9   ldr	x0, [sp]
0x100798c90:  60 00 00 b4   cbz	x0, loc_100798c9c ; ⤵ 0xc
0x100798c94:  e0 07 00 f9   str	x0, [sp, #0x8]
0x100798c98:  2e d5 01 94   bl	j___ZdlPv
0x100798c9c:  ; loc_100798c9c
0x100798c9c:  56 01 00 37   tbnz	w22, #0, loc_100798cc4 ; ⤵ 0x28
0x100798ca0:  ; loc_100798ca0
0x100798ca0:  73 22 00 91   add	x19, x19, #0x8
0x100798ca4:  7f 02 18 eb   cmp	x19, x24
0x100798ca8:  a1 f7 ff 54   b.ne	loc_100798b9c ; ⤴ -0x10c
0x100798cac:  05 00 00 14   b	loc_100798cc0 ; ⤵ 0x14
0x100798cb0:  ; loc_100798cb0
0x100798cb0:  73 c8 01 94   bl	0x10080ae7c
0x100798cb4:  c3 ff ff 17   b	loc_100798bc0 ; ⤴ -0xf4
0x100798cb8:  ; loc_100798cb8
0x100798cb8:  09 ca 01 94   bl	0x10080b4dc
0x100798cbc:  de ff ff 17   b	loc_100798c34 ; ⤴ -0x88
0x100798cc0:  ; loc_100798cc0
0x100798cc0:  14 00 80 d2   mov	x20, #0
0x100798cc4:  ; loc_100798cc4
0x100798cc4:  f3 0f 40 f9   ldr	x19, [sp, #0x18]
0x100798cc8:  93 00 00 b4   cbz	x19, loc_100798cd8 ; ⤵ 0x10
0x100798ccc:  ; loc_100798ccc
0x100798ccc:  f3 13 00 f9   str	x19, [sp, #0x20]
0x100798cd0:  e0 03 13 aa   mov	x0, x19
0x100798cd4:  1f d5 01 94   bl	j___ZdlPv
0x100798cd8:  ; loc_100798cd8
0x100798cd8:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x100798cdc:  c9 14 00 d0   adrp	x9, 0x100a32000
0x100798ce0:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100798ce4:  29 01 40 f9   ldr	x9, [x9]
0x100798ce8:  3f 01 08 eb   cmp	x9, x8
0x100798cec:  61 02 00 54   b.ne	loc_100798d38 ; ⤵ 0x4c
0x100798cf0:  e0 03 14 aa   mov	x0, x20
0x100798cf4:  fd 7b 4c a9   ldp	fp, lr, [sp, #0xc0]
0x100798cf8:  f4 4f 4b a9   ldp	x20, x19, [sp, #0xb0]
0x100798cfc:  f6 57 4a a9   ldp	x22, x21, [sp, #0xa0]
0x100798d00:  f8 5f 49 a9   ldp	x24, x23, [sp, #0x90]
0x100798d04:  fa 67 48 a9   ldp	x26, x25, [sp, #0x80]
0x100798d08:  fc 6f 47 a9   ldp	x28, x27, [sp, #0x70]
0x100798d0c:  ff 43 03 91   add	sp, sp, #0xd0
0x100798d10:  ff 23 03 d5   autibsp
0x100798d14:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100798d18:  50 00 f0 b6   tbz	x16, #0x3e, loc_100798d20 ; ⤵ 0x8
0x100798d1c:  20 8e 38 d4   brk	#0xc471
0x100798d20:  ; loc_100798d20
0x100798d20:  5c d9 01 14   b	j__objc_autoreleaseReturnValue
0x100798d24:  ; loc_100798d24
0x100798d24:  14 00 80 d2   mov	x20, #0
0x100798d28:  33 fd ff b5   cbnz	x19, loc_100798ccc ; ⤴ -0x5c
0x100798d2c:  eb ff ff 17   b	loc_100798cd8 ; ⤴ -0x54
0x100798d30:  ; loc_100798d30
0x100798d30:  ea c9 01 94   bl	0x10080b4d8
0x100798d34:  8a ff ff 17   b	loc_100798b5c ; ⤴ -0x1d8
0x100798d38:  ; loc_100798d38
0x100798d38:  56 d5 01 94   bl	j____stack_chk_fail
0x100798d3c:  0f 00 00 14   b	loc_100798d78 ; ⤵ 0x3c
0x100798d40:  0e 00 00 14   b	loc_100798d78 ; ⤵ 0x38
0x100798d44:  f3 03 00 aa   mov	x19, x0
0x100798d48:  e0 03 17 aa   mov	x0, x23
0x100798d4c:  89 d9 01 94   bl	j__objc_release
0x100798d50:  02 00 00 14   b	loc_100798d58 ; ⤵ 0x8
0x100798d54:  f3 03 00 aa   mov	x19, x0
0x100798d58:  ; loc_100798d58
0x100798d58:  e0 03 40 f9   ldr	x0, [sp]
0x100798d5c:  00 01 00 b4   cbz	x0, loc_100798d7c ; ⤵ 0x20
0x100798d60:  e0 07 00 f9   str	x0, [sp, #0x8]
0x100798d64:  fb d4 01 94   bl	j___ZdlPv
0x100798d68:  05 00 00 14   b	loc_100798d7c ; ⤵ 0x14
0x100798d6c:  f3 03 00 aa   mov	x19, x0
0x100798d70:  07 00 00 14   b	loc_100798d8c ; ⤵ 0x1c
0x100798d74:  01 00 00 14   b	loc_100798d78 ; ⤵ 0x4
0x100798d78:  ; loc_100798d78
0x100798d78:  f3 03 00 aa   mov	x19, x0
0x100798d7c:  ; loc_100798d7c
0x100798d7c:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x100798d80:  60 00 00 b4   cbz	x0, loc_100798d8c ; ⤵ 0xc
0x100798d84:  e0 13 00 f9   str	x0, [sp, #0x20]
0x100798d88:  f2 d4 01 94   bl	j___ZdlPv
0x100798d8c:  ; loc_100798d8c
0x100798d8c:  e0 03 13 aa   mov	x0, x19
0x100798d90:  d4 d3 01 94   bl	j___Unwind_Resume

sub_100798d94:
0x100798d94:  7f 23 03 d5   pacibsp
0x100798d98:  ff 43 03 d1   sub	sp, sp, #0xd0
0x100798d9c:  fc 6f 07 a9   stp	x28, x27, [sp, #0x70]
0x100798da0:  fa 67 08 a9   stp	x26, x25, [sp, #0x80]
0x100798da4:  f8 5f 09 a9   stp	x24, x23, [sp, #0x90]
0x100798da8:  f6 57 0a a9   stp	x22, x21, [sp, #0xa0]
0x100798dac:  f4 4f 0b a9   stp	x20, x19, [sp, #0xb0]
0x100798db0:  fd 7b 0c a9   stp	fp, lr, [sp, #0xc0]
0x100798db4:  fd 03 03 91   add	fp, sp, #0xc0
0x100798db8:  c8 14 00 d0   adrp	x8, 0x100a32000
0x100798dbc:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100798dc0:  08 01 40 f9   ldr	x8, [x8]
0x100798dc4:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x100798dc8:  ff ff 01 a9   stp	xzr, xzr, [sp, #0x18]
0x100798dcc:  ff 17 00 f9   str	xzr, [sp, #0x28]
0x100798dd0:  08 18 00 b0   adrp	x8, 0x100a99000
0x100798dd4:  08 11 44 f9   ldr	x8, [x8, #0x820] ; data_100a99820 (__DATA.__data)
0x100798dd8:  1f 05 00 b1   cmn	x8, #0x1
0x100798ddc:  01 0f 00 54   b.ne	loc_100798fbc ; ⤵ 0x1e0
0x100798de0:  08 18 00 b0   adrp	x8, 0x100a99000
0x100798de4:  00 0d 44 f9   ldr	x0, [x8, #0x818] ; data_100a99818 (__DATA.__data)
0x100798de8:  e1 63 00 91   add	x1, sp, #0x18
0x100798dec:  46 1a f4 97   bl	0x10049f704
0x100798df0:  f3 e3 41 a9   ldp	x19, x24, [sp, #0x18]
0x100798df4:  7f 02 18 eb   cmp	x19, x24
0x100798df8:  c0 0d 00 54   b.eq	loc_100798fb0 ; ⤵ 0x1b8
0x100798dfc:  1a 18 00 b0   adrp	x26, 0x100a99000
0x100798e00:  fb 07 00 90   adrp	x27, 0x100894000
0x100798e04:  7b 13 2c 91   add	x27, x27, #0xb04
0x100798e08:  75 84 90 d2   mov	x21, #0x8423
0x100798e0c:  d5 90 b6 f2   movk	x21, #0xb486, lsl #0x10
0x100798e10:  15 80 c1 f2   movk	x21, #0xc00, lsl #0x20
0x100798e14:  15 20 e0 f2   movk	x21, #0x100, lsl #0x30
0x100798e18:  1c 18 00 b0   adrp	x28, 0x100a99000
0x100798e1c:  19 18 00 b0   adrp	x25, 0x100a99000
0x100798e20:  ; loc_100798e20
0x100798e20:  60 02 40 f9   ldr	x0, [x19]
0x100798e24:  8b 3b f4 97   bl	0x1004a7c50
0x100798e28:  20 08 00 34   cbz	w0, loc_100798f2c ; ⤵ 0x104
0x100798e2c:  60 02 40 f9   ldr	x0, [x19]
0x100798e30:  d7 5b f4 97   bl	0x1004afd8c
0x100798e34:  c0 07 00 37   tbnz	w0, #0, loc_100798f2c ; ⤵ 0xf8
0x100798e38:  ff ff 05 a9   stp	xzr, xzr, [sp, #0x58]
0x100798e3c:  08 18 00 b0   adrp	x8, 0x100a99000
0x100798e40:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x100798e44:  1f 05 00 b1   cmn	x8, #0x1
0x100798e48:  a1 07 00 54   b.ne	loc_100798f3c ; ⤵ 0xf4
0x100798e4c:  ; loc_100798e4c
0x100798e4c:  40 43 40 f9   ldr	x0, [x26, #0x80]
0x100798e50:  69 02 40 f9   ldr	x9, [x19]
0x100798e54:  e8 63 01 91   add	x8, sp, #0x58
0x100798e58:  21 01 02 91   add	x1, x9, #0x80
0x100798e5c:  dd fd fd 97   bl	0x1007185d0
0x100798e60:  ff 7f 00 a9   stp	xzr, xzr, [sp]
0x100798e64:  ff 0b 00 f9   str	xzr, [sp, #0x10]
0x100798e68:  60 03 c0 3d   ldr	q0, [x27]
0x100798e6c:  e0 0f 80 3d   str	q0, [sp, #0x30]
0x100798e70:  68 13 40 b9   ldr	w8, [x27, #0x10]
0x100798e74:  e8 43 00 b9   str	w8, [sp, #0x40]
0x100798e78:  e0 13 01 91   add	x0, sp, #0x44
0x100798e7c:  e1 c3 00 91   add	x1, sp, #0x30
0x100798e80:  94 ca ff 97   bl	0x10078b8d0
0x100798e84:  ff ff 00 a9   stp	xzr, xzr, [sp, #0x8]
0x100798e88:  ff 03 00 f9   str	xzr, [sp]
0x100798e8c:  80 02 80 52   mov	w0, #0x14
0x100798e90:  e1 03 15 aa   mov	x1, x21
0x100798e94:  bf d4 01 94   bl	j___ZnwmSt19__type_descriptor_t
0x100798e98:  08 50 00 91   add	x8, x0, #0x14
0x100798e9c:  e8 a3 00 a9   stp	x8, x8, [sp, #0x8]
0x100798ea0:  e0 43 c4 3c   ldur	q0, [sp, #0x44]
0x100798ea4:  00 00 80 3d   str	q0, [x0]
0x100798ea8:  e9 57 40 b9   ldr	w9, [sp, #0x54]
0x100798eac:  09 10 00 b9   str	w9, [x0, #0x10]
0x100798eb0:  e0 03 00 f9   str	x0, [sp]
0x100798eb4:  88 df 40 f9   ldr	x8, [x28, #0x1b8]
0x100798eb8:  1f 05 00 b1   cmn	x8, #0x1
0x100798ebc:  41 04 00 54   b.ne	loc_100798f44 ; ⤵ 0x88
0x100798ec0:  ; loc_100798ec0
0x100798ec0:  36 db 40 f9   ldr	x22, [x25, #0x1b0]
0x100798ec4:  e0 63 01 91   add	x0, sp, #0x58
0x100798ec8:  f4 72 ec 97   bl	0x1002b5a98
0x100798ecc:  fd 03 1d aa   mov	fp, fp
0x100798ed0:  34 d9 01 94   bl	j__objc_retainAutoreleasedReturnValue
0x100798ed4:  f7 03 00 aa   mov	x23, x0
0x100798ed8:  e2 03 00 91   mov	x2, sp
0x100798edc:  e0 03 16 aa   mov	x0, x22
0x100798ee0:  e1 03 17 aa   mov	x1, x23
0x100798ee4:  23 00 80 52   mov	w3, #0x1
0x100798ee8:  04 00 80 52   mov	w4, #0
0x100798eec:  25 00 80 52   mov	w5, #0x1
0x100798ef0:  63 c4 fb 97   bl	0x10068a07c
0x100798ef4:  f6 03 00 aa   mov	x22, x0
0x100798ef8:  e0 03 17 aa   mov	x0, x23
0x100798efc:  1d d9 01 94   bl	j__objc_release
0x100798f00:  d6 00 00 34   cbz	w22, loc_100798f18 ; ⤵ 0x18
0x100798f04:  e0 63 01 91   add	x0, sp, #0x58
0x100798f08:  e4 72 ec 97   bl	0x1002b5a98
0x100798f0c:  fd 03 1d aa   mov	fp, fp
0x100798f10:  24 d9 01 94   bl	j__objc_retainAutoreleasedReturnValue
0x100798f14:  f4 03 00 aa   mov	x20, x0
0x100798f18:  ; loc_100798f18
0x100798f18:  e0 03 40 f9   ldr	x0, [sp]
0x100798f1c:  60 00 00 b4   cbz	x0, loc_100798f28 ; ⤵ 0xc
0x100798f20:  e0 07 00 f9   str	x0, [sp, #0x8]
0x100798f24:  8b d4 01 94   bl	j___ZdlPv
0x100798f28:  ; loc_100798f28
0x100798f28:  56 01 00 37   tbnz	w22, #0, loc_100798f50 ; ⤵ 0x28
0x100798f2c:  ; loc_100798f2c
0x100798f2c:  73 22 00 91   add	x19, x19, #0x8
0x100798f30:  7f 02 18 eb   cmp	x19, x24
0x100798f34:  61 f7 ff 54   b.ne	loc_100798e20 ; ⤴ -0x114
0x100798f38:  05 00 00 14   b	loc_100798f4c ; ⤵ 0x14
0x100798f3c:  ; loc_100798f3c
0x100798f3c:  d0 c7 01 94   bl	0x10080ae7c
0x100798f40:  c3 ff ff 17   b	loc_100798e4c ; ⤴ -0xf4
0x100798f44:  ; loc_100798f44
0x100798f44:  66 c9 01 94   bl	0x10080b4dc
0x100798f48:  de ff ff 17   b	loc_100798ec0 ; ⤴ -0x88
0x100798f4c:  ; loc_100798f4c
0x100798f4c:  14 00 80 d2   mov	x20, #0
0x100798f50:  ; loc_100798f50
0x100798f50:  f3 0f 40 f9   ldr	x19, [sp, #0x18]
0x100798f54:  93 00 00 b4   cbz	x19, loc_100798f64 ; ⤵ 0x10
0x100798f58:  ; loc_100798f58
0x100798f58:  f3 13 00 f9   str	x19, [sp, #0x20]
0x100798f5c:  e0 03 13 aa   mov	x0, x19
0x100798f60:  7c d4 01 94   bl	j___ZdlPv
0x100798f64:  ; loc_100798f64
0x100798f64:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x100798f68:  c9 14 00 d0   adrp	x9, 0x100a32000
0x100798f6c:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100798f70:  29 01 40 f9   ldr	x9, [x9]
0x100798f74:  3f 01 08 eb   cmp	x9, x8
0x100798f78:  61 02 00 54   b.ne	loc_100798fc4 ; ⤵ 0x4c
0x100798f7c:  e0 03 14 aa   mov	x0, x20
0x100798f80:  fd 7b 4c a9   ldp	fp, lr, [sp, #0xc0]
0x100798f84:  f4 4f 4b a9   ldp	x20, x19, [sp, #0xb0]
0x100798f88:  f6 57 4a a9   ldp	x22, x21, [sp, #0xa0]
0x100798f8c:  f8 5f 49 a9   ldp	x24, x23, [sp, #0x90]
0x100798f90:  fa 67 48 a9   ldp	x26, x25, [sp, #0x80]
0x100798f94:  fc 6f 47 a9   ldp	x28, x27, [sp, #0x70]
0x100798f98:  ff 43 03 91   add	sp, sp, #0xd0
0x100798f9c:  ff 23 03 d5   autibsp
0x100798fa0:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100798fa4:  50 00 f0 b6   tbz	x16, #0x3e, loc_100798fac ; ⤵ 0x8
0x100798fa8:  20 8e 38 d4   brk	#0xc471
0x100798fac:  ; loc_100798fac
0x100798fac:  b9 d8 01 14   b	j__objc_autoreleaseReturnValue
0x100798fb0:  ; loc_100798fb0
0x100798fb0:  14 00 80 d2   mov	x20, #0
0x100798fb4:  33 fd ff b5   cbnz	x19, loc_100798f58 ; ⤴ -0x5c
0x100798fb8:  eb ff ff 17   b	loc_100798f64 ; ⤴ -0x54

