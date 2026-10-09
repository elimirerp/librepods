
-[CLDurianService fetchFindingCapabilitiesOnTag:forClient:]:
0x1014297e0:  7f 23 03 d5   pacibsp
0x1014297e4:  ff 03 02 d1   sub	sp, sp, #0x80
0x1014297e8:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x1014297ec:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x1014297f0:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x1014297f4:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x1014297f8:  fd c3 01 91   add	fp, sp, #0x70
0x1014297fc:  f3 03 03 aa   mov	x19, x3
0x101429800:  f6 03 02 aa   mov	x22, x2
0x101429804:  f4 03 00 aa   mov	x20, x0
0x101429808:  48 7b 00 b0   adrp	x8, 0x102392000
0x10142980c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101429810:  08 01 40 f9   ldr	x8, [x8]
0x101429814:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x101429818:  00 08 40 f9   ldr	x0, [x0, #0x10]
0x10142981c:  01 eb 1b 94   bl	j__objc_msgSend(x0, "deviceWithUUID:")
0x101429820:  80 03 00 b4   cbz	x0, loc_101429890 ; ⤵ 0x70
0x101429824:  f5 03 00 aa   mov	x21, x0
0x101429828:  66 e1 1b 94   bl	j__objc_msgSend(x0, "createFetchFindingCapabilitiesTask")
0x10142982c:  a0 06 00 b4   cbz	x0, loc_101429900 ; ⤵ 0xd4
0x101429830:  f6 03 00 aa   mov	x22, x0
0x101429834:  e0 03 14 aa   mov	x0, x20
0x101429838:  e2 03 15 aa   mov	x2, x21
0x10142983c:  c9 ac 1c 94   bl	j__objc_msgSend(x0, "shouldDisconnectReconnectForDevice:")
0x101429840:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x101429844:  49 7b 00 b0   adrp	x9, 0x102392000
0x101429848:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10142984c:  29 01 40 f9   ldr	x9, [x9]
0x101429850:  3f 01 08 eb   cmp	x9, x8
0x101429854:  41 0d 00 54   b.ne	loc_1014299fc ; ⤵ 0x1a8
0x101429858:  e0 03 14 aa   mov	x0, x20
0x10142985c:  e2 03 16 aa   mov	x2, x22
0x101429860:  e3 03 13 aa   mov	x3, x19
0x101429864:  e4 03 15 aa   mov	x4, x21
0x101429868:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x10142986c:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x101429870:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x101429874:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x101429878:  ff 03 02 91   add	sp, sp, #0x80
0x10142987c:  ff 23 03 d5   autibsp
0x101429880:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101429884:  50 00 f0 b6   tbz	x16, #0x3e, loc_10142988c ; ⤵ 0x8
0x101429888:  20 8e 38 d4   brk	#0xc471
0x10142988c:  ; loc_10142988c
0x10142988c:  15 58 1c 14   b	j__objc_msgSend(x0, "performTask:forClient:onDevice:")
0x101429890:  ; loc_101429890
0x101429890:  48 7b 00 90   adrp	x8, 0x102391000
0x101429894:  49 7b 00 90   adrp	x9, 0x102391000
0x101429898:  29 fd 47 f9   ldr	x9, [x9, #0xff8] ; __got._kCLErrorDomainPrivate
0x10142989c:  15 65 45 f9   ldr	x21, [x8, #0xac8]
0x1014298a0:  37 01 40 f9   ldr	x23, [x9]
0x1014298a4:  48 7b 00 90   adrp	x8, 0x102391000
0x1014298a8:  08 39 45 f9   ldr	x8, [x8, #0xa70] ; __got._NSLocalizedDescriptionKey
0x1014298ac:  08 01 40 f9   ldr	x8, [x8]
0x1014298b0:  e8 17 00 f9   str	x8, [sp, #0x28]
0x1014298b4:  00 06 80 52   mov	w0, #0x30
0x1014298b8:  76 c1 01 94   bl	0x101499e90
0x1014298bc:  e0 1b 00 f9   str	x0, [sp, #0x30]
0x1014298c0:  48 7b 00 90   adrp	x8, 0x102391000
0x1014298c4:  00 2d 44 f9   ldr	x0, [x8, #0x858] ; __got._OBJC_CLASS_$_NSDictionary
0x1014298c8:  e2 c3 00 91   add	x2, sp, #0x30
0x1014298cc:  e3 a3 00 91   add	x3, sp, #0x28
0x1014298d0:  24 00 80 52   mov	w4, #0x1
0x1014298d4:  73 eb 1b 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x1014298d8:  e4 03 00 aa   mov	x4, x0
0x1014298dc:  e0 03 15 aa   mov	x0, x21
0x1014298e0:  e2 03 17 aa   mov	x2, x23
0x1014298e4:  03 06 80 52   mov	w3, #0x30
0x1014298e8:  7e f8 1b 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x1014298ec:  e4 03 00 aa   mov	x4, x0
0x1014298f0:  80 9a 40 f9   ldr	x0, [x20, #0x130]
0x1014298f4:  e2 03 16 aa   mov	x2, x22
0x1014298f8:  03 00 80 d2   mov	x3, #0
0x1014298fc:  30 00 00 14   b	loc_1014299bc ; ⤵ 0xc0
0x101429900:  ; loc_101429900
0x101429900:  c8 8a 00 b0   adrp	x8, 0x102582000
0x101429904:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101429908:  1f 05 00 b1   cmn	x8, #0x1
0x10142990c:  41 07 00 54   b.ne	loc_1014299f4 ; ⤵ 0xe8
0x101429910:  ; loc_101429910
0x101429910:  c8 8a 00 b0   adrp	x8, 0x102582000
0x101429914:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101429918:  e0 03 16 aa   mov	x0, x22
0x10142991c:  01 00 80 52   mov	w1, #0
0x101429920:  74 b2 1b 94   bl	j__os_log_type_enabled
0x101429924:  60 03 00 34   cbz	w0, loc_101429990 ; ⤵ 0x6c
0x101429928:  e0 03 15 aa   mov	x0, x21
0x10142992c:  25 d2 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101429930:  3a bc 01 94   bl	0x101498a18
0x101429934:  48 46 00 f0   adrp	x8, 0x101cf4000
0x101429938:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10142993c:  e0 03 00 bd   str	s0, [sp]
0x101429940:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101429944:  48 04 81 52   mov	w8, #0x822
0x101429948:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10142994c:  28 54 00 b0   adrp	x8, 0x101eae000
0x101429950:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101429954:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101429958:  28 08 81 52   mov	w8, #0x841
0x10142995c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101429960:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101429964:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101429968:  f3 e3 01 f8   stur	x19, [sp, #0x1e]
0x10142996c:  a0 5e ff f0   adrp	x0, 0x100000000
0x101429970:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101429974:  e3 71 00 d0   adrp	x3, 0x102267000
0x101429978:  63 84 12 91   add	x3, x3, #0x4a1 ; "{\"msg%{public}.0s\":\"#durian fetchFindingCapabilitiesOnTag:forClient: not supported\", \"item\":%{private, location:escape_only}@, \"client\":%{private, location:escape_only}@}"
0x10142997c:  e4 03 00 91   mov	x4, sp
0x101429980:  e1 03 16 aa   mov	x1, x22
0x101429984:  02 00 80 52   mov	w2, #0
0x101429988:  c5 04 80 52   mov	w5, #0x26
0x10142998c:  19 ae 1b 94   bl	j___os_log_impl
0x101429990:  ; loc_101429990
0x101429990:  48 7b 00 90   adrp	x8, 0x102391000
0x101429994:  00 65 45 f9   ldr	x0, [x8, #0xac8] ; __got._OBJC_CLASS_$_NSError
0x101429998:  e2 b8 1b 94   bl	j__objc_msgSend(x0, "_cl_DurianFeatureNotSupportedError")
0x10142999c:  f6 03 00 aa   mov	x22, x0
0x1014299a0:  94 9a 40 f9   ldr	x20, [x20, #0x130]
0x1014299a4:  e0 03 15 aa   mov	x0, x21
0x1014299a8:  06 d2 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x1014299ac:  e2 03 00 aa   mov	x2, x0
0x1014299b0:  e0 03 14 aa   mov	x0, x20
0x1014299b4:  03 00 80 d2   mov	x3, #0
0x1014299b8:  e4 03 16 aa   mov	x4, x22
0x1014299bc:  ; loc_1014299bc
0x1014299bc:  e5 03 13 aa   mov	x5, x19
0x1014299c0:  c0 ed 1b 94   bl	j__objc_msgSend(x0, "didFetchFindingCapabilitesOnTag:withFindingCapabilities:error:forClient:")
0x1014299c4:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x1014299c8:  49 7b 00 b0   adrp	x9, 0x102392000
0x1014299cc:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x1014299d0:  29 01 40 f9   ldr	x9, [x9]
0x1014299d4:  3f 01 08 eb   cmp	x9, x8
0x1014299d8:  21 01 00 54   b.ne	loc_1014299fc ; ⤵ 0x24
0x1014299dc:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x1014299e0:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x1014299e4:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x1014299e8:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x1014299ec:  ff 03 02 91   add	sp, sp, #0x80
0x1014299f0:  ff 0f 5f d6   retab
0x1014299f4:  ; loc_1014299f4
0x1014299f4:  70 98 1b 94   bl	0x101b0fbb4
0x1014299f8:  c6 ff ff 17   b	loc_101429910 ; ⤴ -0xe8
0x1014299fc:  ; loc_1014299fc
0x1014299fc:  d1 ad 1b 94   bl	j____stack_chk_fail

-[CLDurianService initRangingWithMacAddress:onTag:forClient:]:
0x101429a00:  7f 23 03 d5   pacibsp
0x101429a04:  ff 83 05 d1   sub	sp, sp, #0x160
0x101429a08:  fc 6f 10 a9   stp	x28, x27, [sp, #0x100]
0x101429a0c:  fa 67 11 a9   stp	x26, x25, [sp, #0x110]

