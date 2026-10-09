
-[CLDurianDevice addressFromUnknownBeacon]:
0x1014616a0:  7f 23 03 d5   pacibsp
0x1014616a4:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1014616a8:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1014616ac:  fd 43 00 91   add	fp, sp, #0x10
0x1014616b0:  f3 03 00 aa   mov	x19, x0
0x1014616b4:  33 ea 1b 94   bl	j__objc_msgSend(x0, "unownedBeacon")
0x1014616b8:  60 02 00 b4   cbz	x0, loc_101461704 ; ⤵ 0x4c
0x1014616bc:  e0 03 13 aa   mov	x0, x19
0x1014616c0:  30 ea 1b 94   bl	j__objc_msgSend(x0, "unownedBeacon")
0x1014616c4:  4f e6 1a 94   bl	j__objc_msgSend(x0, "advertisement")
0x1014616c8:  46 5f 1b 94   bl	j__objc_msgSend(x0, "length")
0x1014616cc:  1f 18 00 f1   cmp	x0, #0x6
0x1014616d0:  a3 01 00 54   b.lo	loc_101461704 ; ⤵ 0x34
0x1014616d4:  e0 03 13 aa   mov	x0, x19
0x1014616d8:  2a ea 1b 94   bl	j__objc_msgSend(x0, "unownedBeacon")
0x1014616dc:  49 e6 1a 94   bl	j__objc_msgSend(x0, "advertisement")
0x1014616e0:  02 00 80 d2   mov	x2, #0
0x1014616e4:  c3 00 80 52   mov	w3, #0x6
0x1014616e8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014616ec:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1014616f0:  ff 23 03 d5   autibsp
0x1014616f4:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1014616f8:  50 00 f0 b6   tbz	x16, #0x3e, loc_101461700 ; ⤵ 0x8
0x1014616fc:  20 8e 38 d4   brk	#0xc471
0x101461700:  ; loc_101461700
0x101461700:  d8 da 1b 14   b	j__objc_msgSend(x0, "subdataWithRange:")
0x101461704:  ; loc_101461704
0x101461704:  e0 03 13 aa   mov	x0, x19
0x101461708:  b6 e2 1b 94   bl	j__objc_msgSend(x0, "taUnknownBeacon")
0x10146170c:  00 02 00 b4   cbz	x0, loc_10146174c ; ⤵ 0x40
0x101461710:  e0 03 13 aa   mov	x0, x19
0x101461714:  b3 e2 1b 94   bl	j__objc_msgSend(x0, "taUnknownBeacon")
0x101461718:  f2 e5 1a 94   bl	j__objc_msgSend(x0, "address")
0x10146171c:  31 5f 1b 94   bl	j__objc_msgSend(x0, "length")
0x101461720:  1f 18 00 f1   cmp	x0, #0x6
0x101461724:  41 01 00 54   b.ne	loc_10146174c ; ⤵ 0x28
0x101461728:  e0 03 13 aa   mov	x0, x19
0x10146172c:  ad e2 1b 94   bl	j__objc_msgSend(x0, "taUnknownBeacon")
0x101461730:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101461734:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101461738:  ff 23 03 d5   autibsp
0x10146173c:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101461740:  50 00 f0 b6   tbz	x16, #0x3e, loc_101461748 ; ⤵ 0x8
0x101461744:  20 8e 38 d4   brk	#0xc471
0x101461748:  ; loc_101461748
0x101461748:  e6 e5 1a 14   b	j__objc_msgSend(x0, "address")
0x10146174c:  ; loc_10146174c
0x10146174c:  88 79 00 90   adrp	x8, 0x102391000
0x101461750:  00 21 44 f9   ldr	x0, [x8, #0x840] ; __got._OBJC_CLASS_$_NSData
0x101461754:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101461758:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10146175c:  ff 23 03 d5   autibsp
0x101461760:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101461764:  50 00 f0 b6   tbz	x16, #0x3e, loc_10146176c ; ⤵ 0x8
0x101461768:  20 8e 38 d4   brk	#0xc471
0x10146176c:  ; loc_10146176c
0x10146176c:  1d 05 1b 14   b	j__objc_msgSend(x0, "data")

-[CLDurianDevice isFindMyNetwork]:
0x101461770:  7f 23 03 d5   pacibsp
0x101461774:  ff 83 01 d1   sub	sp, sp, #0x60
0x101461778:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x10146177c:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x101461780:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x101461784:  fd 43 01 91   add	fp, sp, #0x50
0x101461788:  f4 03 00 aa   mov	x20, x0
0x10146178c:  88 79 00 b0   adrp	x8, 0x102392000
0x101461790:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101461794:  08 01 40 f9   ldr	x8, [x8]
0x101461798:  e8 17 00 f9   str	x8, [sp, #0x28]
0x10146179c:  c1 57 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x1014617a0:  a0 10 00 34   cbz	w0, loc_1014619b4 ; ⤵ 0x214
0x1014617a4:  80 81 00 d0   adrp	x0, 0x102493000
0x1014617a8:  00 c0 0d 91   add	x0, x0, #0x370 ; "isFindMyNetwork"
0x1014617ac:  55 c4 1a 94   bl	j__NSSelectorFromString
0x1014617b0:  f3 03 00 aa   mov	x19, x0
0x1014617b4:  80 3e 41 f9   ldr	x0, [x20, #0x278]
0x1014617b8:  80 05 00 b4   cbz	x0, loc_101461868 ; ⤵ 0xb0
0x1014617bc:  e1 03 13 aa   mov	x1, x19
0x1014617c0:  fc d1 1a 94   bl	j__objc_opt_respondsToSelector
0x1014617c4:  20 05 00 36   tbz	w0, #0, loc_101461868 ; ⤵ 0xa4
0x1014617c8:  80 3e 41 f9   ldr	x0, [x20, #0x278]
0x1014617cc:  e2 03 13 aa   mov	x2, x19
0x1014617d0:  24 78 1b 94   bl	j__objc_msgSend(x0, "performSelector:")
0x1014617d4:  f6 03 00 aa   mov	x22, x0
0x1014617d8:  1f 00 00 f1   cmp	x0, #0
0x1014617dc:  f3 07 9f 1a   cset	w19, ne
0x1014617e0:  08 89 00 b0   adrp	x8, 0x102582000
0x1014617e4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014617e8:  1f 05 00 b1   cmn	x8, #0x1
0x1014617ec:  21 10 00 54   b.ne	loc_1014619f0 ; ⤵ 0x204
0x1014617f0:  08 89 00 b0   adrp	x8, 0x102582000
0x1014617f4:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014617f8:  e0 03 15 aa   mov	x0, x21
0x1014617fc:  01 00 80 52   mov	w1, #0
0x101461800:  bc d2 1a 94   bl	j__os_log_type_enabled
0x101461804:  a0 0d 00 34   cbz	w0, loc_1014619b8 ; ⤵ 0x1b4
0x101461808:  df 02 00 f1   cmp	x22, #0
0x10146180c:  f6 07 9f 1a   cset	w22, ne
0x101461810:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x101461814:  81 dc 00 94   bl	0x101498a18
0x101461818:  88 44 00 f0   adrp	x8, 0x101cf4000
0x10146181c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101461820:  e0 03 00 bd   str	s0, [sp]
0x101461824:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101461828:  48 04 81 52   mov	w8, #0x822
0x10146182c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101461830:  68 52 00 b0   adrp	x8, 0x101eae000
0x101461834:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101461838:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10146183c:  28 08 81 52   mov	w8, #0x841
0x101461840:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101461844:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101461848:  48 80 80 52   mov	w8, #0x402
0x10146184c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101461850:  f6 e3 01 b8   stur	w22, [sp, #0x1e]
0x101461854:  e0 5c ff f0   adrp	x0, 0x100000000
0x101461858:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146185c:  a3 70 00 f0   adrp	x3, 0x102278000
0x101461860:  63 a8 1c 91   add	x3, x3, #0x72a ; "{\"msg%{public}.0s\":\"#durian #posh TAUnknownBeacon responds to isFindMyNetwork selector\", \"item\":%{private, location:escape_only}@, \"isApple\":%{public}hhd}"
0x101461864:  2d 00 00 14   b	loc_101461918 ; ⤵ 0xb4
0x101461868:  ; loc_101461868
0x101461868:  80 c2 40 f9   ldr	x0, [x20, #0x180]
0x10146186c:  20 06 00 b4   cbz	x0, loc_101461930 ; ⤵ 0xc4
0x101461870:  e1 03 13 aa   mov	x1, x19
0x101461874:  cf d1 1a 94   bl	j__objc_opt_respondsToSelector
0x101461878:  c0 05 00 36   tbz	w0, #0, loc_101461930 ; ⤵ 0xb8
0x10146187c:  80 c2 40 f9   ldr	x0, [x20, #0x180]

