0x10046a7e0:  17 00 00 14   b	loc_10046a83c ; ⤵ 0x5c
0x10046a7e4:  16 00 00 14   b	loc_10046a83c ; ⤵ 0x58
0x10046a7e8:  f3 03 00 aa   mov	x19, x0
0x10046a7ec:  e8 1f c1 39   ldrsb	w8, [sp, #0x47]
0x10046a7f0:  88 02 f8 36   tbz	w8, #0x1f, loc_10046a840 ; ⤵ 0x50
0x10046a7f4:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x10046a7f8:  56 8e 0e 94   bl	j___ZdlPv
0x10046a7fc:  11 00 00 14   b	loc_10046a840 ; ⤵ 0x44
0x10046a800:  0f 00 00 14   b	loc_10046a83c ; ⤵ 0x3c
0x10046a804:  f3 03 00 aa   mov	x19, x0
0x10046a808:  e8 1f c1 39   ldrsb	w8, [sp, #0x47]
0x10046a80c:  e8 01 f8 36   tbz	w8, #0x1f, loc_10046a848 ; ⤵ 0x3c
0x10046a810:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x10046a814:  4f 8e 0e 94   bl	j___ZdlPv
0x10046a818:  0c 00 00 14   b	loc_10046a848 ; ⤵ 0x30
0x10046a81c:  0f 00 00 14   b	loc_10046a858 ; ⤵ 0x3c
0x10046a820:  05 00 00 14   b	loc_10046a834 ; ⤵ 0x14
0x10046a824:  f3 03 00 aa   mov	x19, x0
0x10046a828:  e0 03 15 aa   mov	x0, x21
0x10046a82c:  d1 92 0e 94   bl	j__objc_release
0x10046a830:  0b 00 00 14   b	loc_10046a85c ; ⤵ 0x2c
0x10046a834:  ; loc_10046a834
0x10046a834:  f3 03 00 aa   mov	x19, x0
0x10046a838:  04 00 00 14   b	loc_10046a848 ; ⤵ 0x10
0x10046a83c:  ; loc_10046a83c
0x10046a83c:  f3 03 00 aa   mov	x19, x0
0x10046a840:  ; loc_10046a840
0x10046a840:  e0 43 01 91   add	x0, sp, #0x50
0x10046a844:  d7 be fa 97   bl	0x10031a3a0
0x10046a848:  ; loc_10046a848
0x10046a848:  e0 03 15 aa   mov	x0, x21
0x10046a84c:  c9 92 0e 94   bl	j__objc_release
0x10046a850:  03 00 00 14   b	loc_10046a85c ; ⤵ 0xc
0x10046a854:  01 00 00 14   b	loc_10046a858 ; ⤵ 0x4
0x10046a858:  ; loc_10046a858
0x10046a858:  f3 03 00 aa   mov	x19, x0
0x10046a85c:  ; loc_10046a85c
0x10046a85c:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x10046a860:  c4 92 0e 94   bl	j__objc_release
0x10046a864:  02 00 00 14   b	loc_10046a86c ; ⤵ 0x8
0x10046a868:  f3 03 00 aa   mov	x19, x0
0x10046a86c:  ; loc_10046a86c
0x10046a86c:  e0 03 13 aa   mov	x0, x19
0x10046a870:  1c 8d 0e 94   bl	j___Unwind_Resume

sub_10046a874:
0x10046a874:  7f 23 03 d5   pacibsp
0x10046a878:  ff 83 02 d1   sub	sp, sp, #0xa0
0x10046a87c:  fc 6f 04 a9   stp	x28, x27, [sp, #0x40]
0x10046a880:  fa 67 05 a9   stp	x26, x25, [sp, #0x50]
0x10046a884:  f8 5f 06 a9   stp	x24, x23, [sp, #0x60]
0x10046a888:  f6 57 07 a9   stp	x22, x21, [sp, #0x70]
0x10046a88c:  f4 4f 08 a9   stp	x20, x19, [sp, #0x80]
0x10046a890:  fd 7b 09 a9   stp	fp, lr, [sp, #0x90]
0x10046a894:  fd 43 02 91   add	fp, sp, #0x90
0x10046a898:  f5 03 01 aa   mov	x21, x1
0x10046a89c:  f4 03 00 aa   mov	x20, x0
0x10046a8a0:  48 2e 00 90   adrp	x8, 0x100a32000
0x10046a8a4:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10046a8a8:  08 01 40 f9   ldr	x8, [x8]
0x10046a8ac:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x10046a8b0:  e0 03 01 aa   mov	x0, x1
0x10046a8b4:  b3 92 0e 94   bl	j__objc_retain
0x10046a8b8:  88 76 40 f9   ldr	x8, [x20, #0xe8]
0x10046a8bc:  c8 0c 00 b4   cbz	x8, loc_10046aa54 ; ⤵ 0x198
0x10046a8c0:  f5 7f 00 a9   stp	x21, xzr, [sp]
0x10046a8c4:  ff 7f 01 a9   stp	xzr, xzr, [sp, #0x10]
0x10046a8c8:  93 6e 40 f9   ldr	x19, [x20, #0xd8]
0x10046a8cc:  96 82 03 91   add	x22, x20, #0xe0
0x10046a8d0:  7f 02 16 eb   cmp	x19, x22
0x10046a8d4:  80 0a 00 54   b.eq	loc_10046aa24 ; ⤵ 0x150
0x10046a8d8:  f7 e7 02 b2   mov	x23, #0xcccccccccccccccc
0x10046a8dc:  97 99 e1 f2   movk	x23, #0xccc, lsl #0x30
0x10046a8e0:  f9 e7 02 b2   mov	x25, #0xcccccccccccccccc
0x10046a8e4:  b9 99 99 f2   movk	x25, #0xcccd
0x10046a8e8:  3a 00 80 d2   mov	x26, #0x1
0x10046a8ec:  fb e7 03 b2   mov	x27, #0x6666666666666666
0x10046a8f0:  db cc e0 f2   movk	x27, #0x666, lsl #0x30
0x10046a8f4:  9c 02 80 52   mov	w28, #0x14
0x10046a8f8:  ; loc_10046a8f8
0x10046a8f8:  60 0a c0 3d   ldr	q0, [x19, #0x20]
0x10046a8fc:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x10046a900:  68 32 40 b9   ldr	w8, [x19, #0x30]
0x10046a904:  e8 33 00 b9   str	w8, [sp, #0x30]
0x10046a908:  75 1e 40 f9   ldr	x21, [x19, #0x38]
0x10046a90c:  e0 03 15 aa   mov	x0, x21
0x10046a910:  9c 92 0e 94   bl	j__objc_retain
0x10046a914:  e8 27 41 a9   ldp	x8, x9, [sp, #0x10]
0x10046a918:  1f 01 09 eb   cmp	x8, x9
0x10046a91c:  e2 00 00 54   b.hs	loc_10046a938 ; ⤵ 0x1c
0x10046a920:  e0 0b c0 3d   ldr	q0, [sp, #0x20]
0x10046a924:  00 01 80 3d   str	q0, [x8]
0x10046a928:  e9 33 40 b9   ldr	w9, [sp, #0x30]
0x10046a92c:  09 11 00 b9   str	w9, [x8, #0x10]
0x10046a930:  18 51 00 91   add	x24, x8, #0x14
0x10046a934:  2b 00 00 14   b	loc_10046a9e0 ; ⤵ 0xac
0x10046a938:  ; loc_10046a938
0x10046a938:  ea 07 40 f9   ldr	x10, [sp, #0x8]
0x10046a93c:  18 01 0a cb   sub	x24, x8, x10
0x10046a940:  08 ff 42 93   asr	x8, x24, #0x2
0x10046a944:  08 69 19 9b   madd	x8, x8, x25, x26
0x10046a948:  1f 01 17 eb   cmp	x8, x23
0x10046a94c:  68 0c 00 54   b.hi	loc_10046aad8 ; ⤵ 0x18c
0x10046a950:  29 01 0a cb   sub	x9, x9, x10
0x10046a954:  29 fd 42 93   asr	x9, x9, #0x2
0x10046a958:  29 7d 19 9b   mul	x9, x9, x25
0x10046a95c:  2a f9 7f d3   lsl	x10, x9, #0x1
0x10046a960:  5f 01 08 eb   cmp	x10, x8
0x10046a964:  48 81 88 9a   csel	x8, x10, x8, hi
0x10046a968:  3f 01 1b eb   cmp	x9, x27
0x10046a96c:  01 31 97 9a   csel	x1, x8, x23, cc
0x10046a970:  e8 23 00 91   add	x8, sp, #0x8
0x10046a974:  00 41 00 91   add	x0, x8, #0x10
0x10046a978:  71 f2 ef 97   bl	0x10006733c
0x10046a97c:  09 00 18 8b   add	x9, x0, x24
0x10046a980:  e0 0b c0 3d   ldr	q0, [sp, #0x20]
0x10046a984:  20 01 80 3d   str	q0, [x9]
0x10046a988:  e8 33 40 b9   ldr	w8, [sp, #0x30]
0x10046a98c:  28 11 00 b9   str	w8, [x9, #0x10]
0x10046a990:  e8 af 40 a9   ldp	x8, x11, [sp, #0x8]
0x10046a994:  0a 01 0b eb   subs	x10, x8, x11
0x10046a998:  2a 01 0a 8b   add	x10, x9, x10
0x10046a99c:  40 01 00 54   b.eq	loc_10046a9c4 ; ⤵ 0x28
0x10046a9a0:  ec 03 0a aa   mov	x12, x10
0x10046a9a4:  ; loc_10046a9a4
0x10046a9a4:  00 01 c0 3d   ldr	q0, [x8]
0x10046a9a8:  0d 11 40 b9   ldr	w13, [x8, #0x10]
0x10046a9ac:  8d 11 00 b9   str	w13, [x12, #0x10]
0x10046a9b0:  80 45 81 3c   str	q0, [x12], #0x14
0x10046a9b4:  08 51 00 91   add	x8, x8, #0x14
0x10046a9b8:  1f 01 0b eb   cmp	x8, x11
0x10046a9bc:  41 ff ff 54   b.ne	loc_10046a9a4 ; ⤴ -0x18
0x10046a9c0:  e8 07 40 f9   ldr	x8, [sp, #0x8]
0x10046a9c4:  ; loc_10046a9c4
0x10046a9c4:  2b 00 1c 9b   madd	x11, x1, x28, x0
0x10046a9c8:  38 51 00 91   add	x24, x9, #0x14
0x10046a9cc:  ea e3 00 a9   stp	x10, x24, [sp, #0x8]
0x10046a9d0:  eb 0f 00 f9   str	x11, [sp, #0x18]
0x10046a9d4:  68 00 00 b4   cbz	x8, loc_10046a9e0 ; ⤵ 0xc
0x10046a9d8:  e0 03 08 aa   mov	x0, x8
0x10046a9dc:  dd 8d 0e 94   bl	j___ZdlPv
0x10046a9e0:  ; loc_10046a9e0
0x10046a9e0:  f8 0b 00 f9   str	x24, [sp, #0x10]
0x10046a9e4:  e0 03 15 aa   mov	x0, x21
0x10046a9e8:  62 92 0e 94   bl	j__objc_release
0x10046a9ec:  69 06 40 f9   ldr	x9, [x19, #0x8]
0x10046a9f0:  a9 00 00 b4   cbz	x9, loc_10046aa04 ; ⤵ 0x14
0x10046a9f4:  ; loc_10046a9f4
0x10046a9f4:  e8 03 09 aa   mov	x8, x9
0x10046a9f8:  29 01 40 f9   ldr	x9, [x9]
0x10046a9fc:  c9 ff ff b5   cbnz	x9, loc_10046a9f4 ; ⤴ -0x8
0x10046aa00:  06 00 00 14   b	loc_10046aa18 ; ⤵ 0x18
0x10046aa04:  ; loc_10046aa04
0x10046aa04:  68 0a 40 f9   ldr	x8, [x19, #0x10]
0x10046aa08:  09 01 40 f9   ldr	x9, [x8]
0x10046aa0c:  7f 02 09 eb   cmp	x19, x9
0x10046aa10:  f3 03 08 aa   mov	x19, x8
0x10046aa14:  81 ff ff 54   b.ne	loc_10046aa04 ; ⤴ -0x10
0x10046aa18:  ; loc_10046aa18
0x10046aa18:  f3 03 08 aa   mov	x19, x8
0x10046aa1c:  1f 01 16 eb   cmp	x8, x22
0x10046aa20:  c1 f6 ff 54   b.ne	loc_10046a8f8 ; ⤴ -0x128
0x10046aa24:  ; loc_10046aa24
0x10046aa24:  93 3e 40 f9   ldr	x19, [x20, #0x78]
0x10046aa28:  68 31 00 f0   adrp	x8, 0x100a99000
0x10046aa2c:  08 dd 40 f9   ldr	x8, [x8, #0x1b8] ; data_100a991b8 (__DATA.__data)
0x10046aa30:  1f 05 00 b1   cmn	x8, #0x1
0x10046aa34:  e1 04 00 54   b.ne	loc_10046aad0 ; ⤵ 0x9c
0x10046aa38:  ; loc_10046aa38
0x10046aa38:  f5 03 40 f9   ldr	x21, [sp]
0x10046aa3c:  68 31 00 f0   adrp	x8, 0x100a99000
0x10046aa40:  00 d9 40 f9   ldr	x0, [x8, #0x1b0] ; data_100a991b0 (__DATA.__data)
0x10046aa44:  d3 00 00 b4   cbz	x19, loc_10046aa5c ; ⤵ 0x18
0x10046aa48:  68 a2 40 39   ldrb	w8, [x19, #0x28]
0x10046aa4c:  64 3a 40 b9   ldr	w4, [x19, #0x38]
0x10046aa50:  05 00 00 14   b	loc_10046aa64 ; ⤵ 0x14
0x10046aa54:  ; loc_10046aa54
0x10046aa54:  14 00 80 52   mov	w20, #0
0x10046aa58:  0d 00 00 14   b	loc_10046aa8c ; ⤵ 0x34
0x10046aa5c:  ; loc_10046aa5c
0x10046aa5c:  08 00 80 52   mov	w8, #0
0x10046aa60:  04 00 80 52   mov	w4, #0
0x10046aa64:  ; loc_10046aa64
0x10046aa64:  e2 23 00 91   add	x2, sp, #0x8
0x10046aa68:  03 01 00 12   and	w3, w8, #0x1
0x10046aa6c:  e1 03 15 aa   mov	x1, x21
0x10046aa70:  25 00 80 52   mov	w5, #0x1
0x10046aa74:  82 7d 08 94   bl	0x10068a07c
0x10046aa78:  f4 03 00 aa   mov	x20, x0
0x10046aa7c:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x10046aa80:  60 00 00 b4   cbz	x0, loc_10046aa8c ; ⤵ 0xc
0x10046aa84:  e0 0b 00 f9   str	x0, [sp, #0x10]
0x10046aa88:  b2 8d 0e 94   bl	j___ZdlPv
0x10046aa8c:  ; loc_10046aa8c
0x10046aa8c:  e0 03 15 aa   mov	x0, x21
0x10046aa90:  38 92 0e 94   bl	j__objc_release
0x10046aa94:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x10046aa98:  49 2e 00 90   adrp	x9, 0x100a32000
0x10046aa9c:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10046aaa0:  29 01 40 f9   ldr	x9, [x9]
0x10046aaa4:  3f 01 08 eb   cmp	x9, x8
0x10046aaa8:  a1 01 00 54   b.ne	loc_10046aadc ; ⤵ 0x34
0x10046aaac:  e0 03 14 aa   mov	x0, x20
0x10046aab0:  fd 7b 49 a9   ldp	fp, lr, [sp, #0x90]
0x10046aab4:  f4 4f 48 a9   ldp	x20, x19, [sp, #0x80]
0x10046aab8:  f6 57 47 a9   ldp	x22, x21, [sp, #0x70]
0x10046aabc:  f8 5f 46 a9   ldp	x24, x23, [sp, #0x60]
0x10046aac0:  fa 67 45 a9   ldp	x26, x25, [sp, #0x50]
0x10046aac4:  fc 6f 44 a9   ldp	x28, x27, [sp, #0x40]
0x10046aac8:  ff 83 02 91   add	sp, sp, #0xa0
0x10046aacc:  ff 0f 5f d6   retab
0x10046aad0:  ; loc_10046aad0
0x10046aad0:  e0 b7 0d 94   bl	0x1007d8a50
0x10046aad4:  d9 ff ff 17   b	loc_10046aa38 ; ⤴ -0x9c
0x10046aad8:  ; loc_10046aad8
0x10046aad8:  2e 6a ee 97   bl	0x100005390
0x10046aadc:  ; loc_10046aadc
0x10046aadc:  ed 8d 0e 94   bl	j____stack_chk_fail
0x10046aae0:  f4 03 00 aa   mov	x20, x0
0x10046aae4:  04 00 00 14   b	loc_10046aaf4 ; ⤵ 0x10
0x10046aae8:  f4 03 00 aa   mov	x20, x0
0x10046aaec:  e0 03 15 aa   mov	x0, x21
0x10046aaf0:  20 92 0e 94   bl	j__objc_release
0x10046aaf4:  ; loc_10046aaf4
0x10046aaf4:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x10046aaf8:  60 00 00 b4   cbz	x0, loc_10046ab04 ; ⤵ 0xc
0x10046aafc:  e0 0b 00 f9   str	x0, [sp, #0x10]
0x10046ab00:  94 8d 0e 94   bl	j___ZdlPv
0x10046ab04:  ; loc_10046ab04
0x10046ab04:  e0 03 40 f9   ldr	x0, [sp]
0x10046ab08:  1a 92 0e 94   bl	j__objc_release
0x10046ab0c:  02 00 00 14   b	loc_10046ab14 ; ⤵ 0x8
0x10046ab10:  f4 03 00 aa   mov	x20, x0
0x10046ab14:  ; loc_10046ab14
0x10046ab14:  e0 03 14 aa   mov	x0, x20
0x10046ab18:  72 8c 0e 94   bl	j___Unwind_Resume

sub_10046ab1c:
0x10046ab1c:  7f 23 03 d5   pacibsp
0x10046ab20:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x10046ab24:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x10046ab28:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x10046ab2c:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x10046ab30:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x10046ab34:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x10046ab38:  fd 43 01 91   add	fp, sp, #0x50
0x10046ab3c:  ff 03 0d d1   sub	sp, sp, #0x340
0x10046ab40:  f4 03 04 aa   mov	x20, x4
0x10046ab44:  e3 07 00 f9   str	x3, [sp, #0x8]
0x10046ab48:  e1 27 00 f9   str	x1, [sp, #0x48]
0x10046ab4c:  f7 03 00 aa   mov	x23, x0
0x10046ab50:  48 2e 00 90   adrp	x8, 0x100a32000
0x10046ab54:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10046ab58:  08 01 40 f9   ldr	x8, [x8]
0x10046ab5c:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x10046ab60:  e2 17 00 f9   str	x2, [sp, #0x28]
0x10046ab64:  e0 03 02 aa   mov	x0, x2
0x10046ab68:  06 92 0e 94   bl	j__objc_retain
0x10046ab6c:  e0 6a 40 f9   ldr	x0, [x23, #0xd0]
0x10046ab70:  4c c7 0e 94   bl	j__objc_msgSend(x0, "removeAllObjects")
0x10046ab74:  f3 03 17 aa   mov	x19, x23
0x10046ab78:  61 0e 4e f8   ldr	x1, [x19, #0xe0]!
0x10046ab7c:  60 22 00 d1   sub	x0, x19, #0x8
0x10046ab80:  e0 0f 00 f9   str	x0, [sp, #0x18]
0x10046ab84:  38 2e 00 94   bl	0x100476464
0x10046ab88:  7f 7e 00 a9   stp	xzr, xzr, [x19]
0x10046ab8c:  73 82 1f f8   stur	x19, [x19, #-0x8]
0x10046ab90:  60 0a 40 f9   ldr	x0, [x19, #0x10]
0x10046ab94:  43 c7 0e 94   bl	j__objc_msgSend(x0, "removeAllObjects")
0x10046ab98:  f4 e6 03 39   strb	w20, [x23, #0xf9]
0x10046ab9c:  48 2e 00 90   adrp	x8, 0x100a32000
0x10046aba0:  00 09 44 f9   ldr	x0, [x8, #0x810] ; __got._OBJC_CLASS_$_NSMutableDictionary
0x10046aba4:  3f b2 0e 94   bl	j__objc_msgSend(x0, "dictionary")
0x10046aba8:  fd 03 1d aa   mov	fp, fp
0x10046abac:  fd 91 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x10046abb0:  e0 0b 00 f9   str	x0, [sp, #0x10]
0x10046abb4:  48 2e 00 90   adrp	x8, 0x100a32000
0x10046abb8:  00 b9 42 f9   ldr	x0, [x8, #0x570] ; __got._OBJC_CLASS_$_NSMutableString
0x10046abbc:  f9 de 0e 94   bl	j__objc_msgSend(x0, "string")
0x10046abc0:  fd 03 1d aa   mov	fp, fp
0x10046abc4:  f7 91 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x10046abc8:  e0 13 00 f9   str	x0, [sp, #0x20]
0x10046abcc:  e8 07 40 f9   ldr	x8, [sp, #0x8]
0x10046abd0:  14 6d 40 a9   ldp	x20, x27, [x8]
0x10046abd4:  9f 02 1b eb   cmp	x20, x27
0x10046abd8:  c0 05 00 54   b.eq	loc_10046ac90 ; ⤵ 0xb8
0x10046abdc:  1a 00 80 52   mov	w26, #0
0x10046abe0:  16 00 80 52   mov	w22, #0
0x10046abe4:  bc 03 02 d1   sub	x28, fp, #0x80
0x10046abe8:  75 30 00 f0   adrp	x21, 0x100a79000
0x10046abec:  b5 22 28 91   add	x21, x21, #0xa08 ; "%@ "
0x10046abf0:  48 2e 00 90   adrp	x8, 0x100a32000
0x10046abf4:  19 dd 42 f9   ldr	x25, [x8, #0x5b8] ; __got._OBJC_CLASS_$_NSString
0x10046abf8:  a8 03 02 d1   sub	x8, fp, #0x80
0x10046abfc:  e0 03 14 aa   mov	x0, x20
0x10046ac00:  98 83 0c 94   bl	0x10078ba60
0x10046ac04:  a8 73 d9 38   ldursb	w8, [fp, #-0x69]
0x10046ac08:  a9 03 58 f8   ldur	x9, [fp, #-0x80]
0x10046ac0c:  1f 01 00 71   cmp	w8, #0
0x10046ac10:  22 b1 9c 9a   csel	x2, x9, x28, lt
0x10046ac14:  e0 03 19 aa   mov	x0, x25
0x10046ac18:  42 df 0e 94   bl	j__objc_msgSend(x0, "stringWithUTF8String:")
0x10046ac1c:  fd 03 1d aa   mov	fp, fp
0x10046ac20:  e0 91 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x10046ac24:  f8 03 00 aa   mov	x24, x0
0x10046ac28:  e0 03 00 f9   str	x0, [sp]

