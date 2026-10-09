0x1014656c0:  f8 a3 00 f8   stur	x24, [sp, #0xa]
0x1014656c4:  28 08 81 52   mov	w8, #0x841
0x1014656c8:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014656cc:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x1014656d0:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1014656d4:  f7 e3 01 f8   stur	x23, [sp, #0x1e]
0x1014656d8:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x1014656dc:  e0 17 00 f9   str	x0, [sp, #0x28]
0x1014656e0:  c0 5c ff f0   adrp	x0, 0x100000000
0x1014656e4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014656e8:  a3 70 00 b0   adrp	x3, 0x10227a000
0x1014656ec:  63 98 28 91   add	x3, x3, #0xa26 ; "{\"msg%{public}.0s\":\"#durian received characteristic notification state update, but active task is not a GATTReceiveTask\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location"...
0x1014656f0:  e4 03 00 91   mov	x4, sp
0x1014656f4:  e1 03 15 aa   mov	x1, x21
0x1014656f8:  02 02 80 52   mov	w2, #0x10
0x1014656fc:  05 06 80 52   mov	w5, #0x30
0x101465700:  bc be 1a 94   bl	j___os_log_impl
0x101465704:  48 3b 46 f9   ldr	x8, [x26, #0xc70]
0x101465708:  1f 05 00 b1   cmn	x8, #0x1
0x10146570c:  41 06 00 54   b.ne	loc_1014657d4 ; ⤵ 0xc8
0x101465710:  ; loc_101465710
0x101465710:  75 3f 46 f9   ldr	x21, [x27, #0xc78]
0x101465714:  e0 03 15 aa   mov	x0, x21
0x101465718:  fa c2 1a 94   bl	j__os_signpost_enabled
0x10146571c:  a0 e7 ff 34   cbz	w0, loc_101465410 ; ⤴ -0x30c
0x101465720:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x101465724:  bd cc 00 94   bl	0x101498a18
0x101465728:  f6 03 00 aa   mov	x22, x0
0x10146572c:  e0 03 13 aa   mov	x0, x19
0x101465730:  4c c8 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465734:  f3 03 00 aa   mov	x19, x0
0x101465738:  80 6e 41 f9   ldr	x0, [x20, #0x2d8]
0x10146573c:  21 d8 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101465740:  e2 03 00 aa   mov	x2, x0
0x101465744:  e0 03 14 aa   mov	x0, x20
0x101465748:  fe 20 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x10146574c:  20 7f 46 fd   ldr	d0, [x25, #0xcf8]
0x101465750:  e0 03 00 bd   str	s0, [sp]
0x101465754:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465758:  48 04 81 52   mov	w8, #0x822
0x10146575c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465760:  f8 a3 00 f8   stur	x24, [sp, #0xa]
0x101465764:  28 08 81 52   mov	w8, #0x841
0x101465768:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10146576c:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101465770:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101465774:  f3 e3 01 f8   stur	x19, [sp, #0x1e]
0x101465778:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x10146577c:  e0 17 00 f9   str	x0, [sp, #0x28]
0x101465780:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465784:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465788:  a4 70 00 b0   adrp	x4, 0x10227a000
0x10146578c:  84 a0 2c 91   add	x4, x4, #0xb28 ; "#durian received characteristic notification state update, but active task is not a GATTReceiveTask"
0x101465790:  a5 70 00 b0   adrp	x5, 0x10227a000
0x101465794:  a5 98 28 91   add	x5, x5, #0xa26 ; "{\"msg%{public}.0s\":\"#durian received characteristic notification state update, but active task is not a GATTReceiveTask\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location"...
0x101465798:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x10146579c:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x1014657a0:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x1014657a4:  e6 03 00 91   mov	x6, sp
0x1014657a8:  e1 03 15 aa   mov	x1, x21
0x1014657ac:  02 00 80 52   mov	w2, #0
0x1014657b0:  07 06 80 52   mov	w7, #0x30
0x1014657b4:  97 be 1a 94   bl	j___os_signpost_emit_with_name_impl
0x1014657b8:  16 ff ff 17   b	loc_101465410 ; ⤴ -0x3a8
0x1014657bc:  11 aa 1a 94   bl	0x101b10000
0x1014657c0:  f7 fe ff 17   b	loc_10146539c ; ⤴ -0x424
0x1014657c4:  0f aa 1a 94   bl	0x101b10000
0x1014657c8:  32 ff ff 17   b	loc_101465490 ; ⤴ -0x338
0x1014657cc:  0d aa 1a 94   bl	0x101b10000
0x1014657d0:  a3 ff ff 17   b	loc_10146565c ; ⤴ -0x174
0x1014657d4:  ; loc_1014657d4
0x1014657d4:  0c aa 1a 94   bl	0x101b10004
0x1014657d8:  ce ff ff 17   b	loc_101465710 ; ⤴ -0xc8
0x1014657dc:  09 aa 1a 94   bl	0x101b10000
0x1014657e0:  6e ff ff 17   b	loc_101465598 ; ⤴ -0x248
0x1014657e4:  57 be 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice peripheral:didUpdateValueForCharacteristic:error:]:
0x1014657e8:  7f 23 03 d5   pacibsp
0x1014657ec:  ff c3 02 d1   sub	sp, sp, #0xb0
0x1014657f0:  fc 6f 05 a9   stp	x28, x27, [sp, #0x50]
0x1014657f4:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x1014657f8:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x1014657fc:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x101465800:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x101465804:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x101465808:  fd 83 02 91   add	fp, sp, #0xa0
0x10146580c:  f5 03 04 aa   mov	x21, x4
0x101465810:  f4 03 03 aa   mov	x20, x3
0x101465814:  f3 03 00 aa   mov	x19, x0
0x101465818:  68 79 00 b0   adrp	x8, 0x102392000
0x10146581c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101465820:  08 01 40 f9   ldr	x8, [x8]
0x101465824:  e8 27 00 f9   str	x8, [sp, #0x48]
0x101465828:  fb 88 00 b0   adrp	x27, 0x102582000
0x10146582c:  fa 88 00 b0   adrp	x26, 0x102582000
0x101465830:  24 06 00 b4   cbz	x4, loc_1014658f4 ; ⤵ 0xc4
0x101465834:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465838:  1f 05 00 b1   cmn	x8, #0x1
0x10146583c:  c1 5b 00 54   b.ne	loc_1014663b4 ; ⤵ 0xb78
0x101465840:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101465844:  e0 03 16 aa   mov	x0, x22
0x101465848:  01 00 80 52   mov	w1, #0
0x10146584c:  a9 c2 1a 94   bl	j__os_log_type_enabled
0x101465850:  20 05 00 34   cbz	w0, loc_1014658f4 ; ⤵ 0xa4
0x101465854:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465858:  70 cc 00 94   bl	0x101498a18
0x10146585c:  f7 03 00 aa   mov	x23, x0
0x101465860:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x101465864:  6f 2b 1b 94   bl	j__objc_msgSend(x0, "identifier")
0x101465868:  6c cc 00 94   bl	0x101498a18
0x10146586c:  f8 03 00 aa   mov	x24, x0
0x101465870:  e0 03 14 aa   mov	x0, x20
0x101465874:  fb c7 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465878:  32 f9 1a 94   bl	j__objc_msgSend(x0, "description")
0x10146587c:  f9 03 00 aa   mov	x25, x0
0x101465880:  e0 03 15 aa   mov	x0, x21
0x101465884:  ef 4f 1b 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x101465888:  68 39 00 d0   adrp	x8, 0x101b93000
0x10146588c:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101465890:  e0 03 00 bd   str	s0, [sp]
0x101465894:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465898:  48 04 81 52   mov	w8, #0x822
0x10146589c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014658a0:  48 52 00 b0   adrp	x8, 0x101eae000
0x1014658a4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014658a8:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014658ac:  28 08 81 52   mov	w8, #0x841
0x1014658b0:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014658b4:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x1014658b8:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1014658bc:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x1014658c0:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x1014658c4:  f9 17 00 f9   str	x25, [sp, #0x28]
0x1014658c8:  e8 63 00 79   strh	w8, [sp, #0x30]
0x1014658cc:  e0 23 03 f8   stur	x0, [sp, #0x32]
0x1014658d0:  c0 5c ff f0   adrp	x0, 0x100000000
0x1014658d4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014658d8:  a3 70 00 b0   adrp	x3, 0x10227a000
0x1014658dc:  63 30 2e 91   add	x3, x3, #0xb8c ; "{\"msg%{public}.0s\":\"#durian error updating value for characteristic\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_"...
0x1014658e0:  e4 03 00 91   mov	x4, sp
0x1014658e4:  e1 03 16 aa   mov	x1, x22
0x1014658e8:  02 00 80 52   mov	w2, #0
0x1014658ec:  45 07 80 52   mov	w5, #0x3a
0x1014658f0:  40 be 1a 94   bl	j___os_log_impl
0x1014658f4:  ; loc_1014658f4
0x1014658f4:  e0 03 13 aa   mov	x0, x19
0x1014658f8:  6a 47 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x1014658fc:  80 0e 00 34   cbz	w0, loc_101465acc ; ⤵ 0x1d0
0x101465900:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101465904:  1f 05 00 b1   cmn	x8, #0x1
0x101465908:  a1 55 00 54   b.ne	loc_1014663bc ; ⤵ 0xab4
0x10146590c:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x101465910:  e0 03 16 aa   mov	x0, x22
0x101465914:  01 00 80 52   mov	w1, #0
0x101465918:  76 c2 1a 94   bl	j__os_log_type_enabled
0x10146591c:  80 05 00 34   cbz	w0, loc_1014659cc ; ⤵ 0xb0
0x101465920:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465924:  3d cc 00 94   bl	0x101498a18
0x101465928:  f7 03 00 aa   mov	x23, x0
0x10146592c:  e0 03 14 aa   mov	x0, x20
0x101465930:  cc c7 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465934:  f8 03 00 aa   mov	x24, x0
0x101465938:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x10146593c:  a1 d7 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101465940:  e2 03 00 aa   mov	x2, x0
0x101465944:  e0 03 13 aa   mov	x0, x19
0x101465948:  7e 20 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x10146594c:  f9 03 00 aa   mov	x25, x0
0x101465950:  e0 03 14 aa   mov	x0, x20
0x101465954:  5b e2 1b 94   bl	j__objc_msgSend(x0, "value")
0x101465958:  68 39 00 f0   adrp	x8, 0x101b94000
0x10146595c:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x101465960:  e0 03 00 bd   str	s0, [sp]
0x101465964:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101465968:  48 04 81 52   mov	w8, #0x822
0x10146596c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101465970:  48 52 00 b0   adrp	x8, 0x101eae000
0x101465974:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101465978:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10146597c:  28 08 81 52   mov	w8, #0x841
0x101465980:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101465984:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x101465988:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10146598c:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x101465990:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101465994:  f9 17 00 f9   str	x25, [sp, #0x28]
0x101465998:  e8 63 00 79   strh	w8, [sp, #0x30]
0x10146599c:  f4 23 03 f8   stur	x20, [sp, #0x32]
0x1014659a0:  e8 77 00 79   strh	w8, [sp, #0x3a]
0x1014659a4:  e0 c3 03 f8   stur	x0, [sp, #0x3c]
0x1014659a8:  c0 5c ff f0   adrp	x0, 0x100000000
0x1014659ac:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014659b0:  a3 70 00 b0   adrp	x3, 0x10227a000
0x1014659b4:  63 1c 32 91   add	x3, x3, #0xc87 ; "{\"msg%{public}.0s\":\"#durian #ut #posh received data for characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"task\":%{private, location:escape"...
0x1014659b8:  e4 03 00 91   mov	x4, sp
0x1014659bc:  e1 03 16 aa   mov	x1, x22
0x1014659c0:  02 00 80 52   mov	w2, #0
0x1014659c4:  85 08 80 52   mov	w5, #0x44
0x1014659c8:  0a be 1a 94   bl	j___os_log_impl
0x1014659cc:  ; loc_1014659cc
0x1014659cc:  e0 03 13 aa   mov	x0, x19
0x1014659d0:  8c d1 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014659d4:  fb e1 1a 94   bl	j__objc_msgSend(x0, "characteristic")
0x1014659d8:  9f 02 00 eb   cmp	x20, x0
0x1014659dc:  41 05 00 54   b.ne	loc_101465a84 ; ⤵ 0xa8
0x1014659e0:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x1014659e4:  1f 05 00 b1   cmn	x8, #0x1
0x1014659e8:  21 4f 00 54   b.ne	loc_1014663cc ; ⤵ 0x9e4
0x1014659ec:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x1014659f0:  e0 03 16 aa   mov	x0, x22
0x1014659f4:  01 00 80 52   mov	w1, #0
0x1014659f8:  3e c2 1a 94   bl	j__os_log_type_enabled
0x1014659fc:  40 04 00 34   cbz	w0, loc_101465a84 ; ⤵ 0x88
0x101465a00:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101465a04:  05 cc 00 94   bl	0x101498a18
0x101465a08:  f7 03 00 aa   mov	x23, x0
0x101465a0c:  e0 03 14 aa   mov	x0, x20
0x101465a10:  94 c7 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101465a14:  f8 03 00 aa   mov	x24, x0
0x101465a18:  e0 03 14 aa   mov	x0, x20
0x101465a1c:  29 e2 1b 94   bl	j__objc_msgSend(x0, "value")
0x101465a20:  68 44 00 f0   adrp	x8, 0x101cf4000
0x101465a24:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101465a28:  e0 03 00 bd   str	s0, [sp]
0x101465a2c:  ff 07 00 b9   str	wzr, [sp, #0x4]

