
-[CLDurianDevice isEndpointTask:]:
0x101452614:  7f 23 03 d5   pacibsp
0x101452618:  ff 83 01 d1   sub	sp, sp, #0x60
0x10145261c:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x101452620:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x101452624:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x101452628:  fd 43 01 91   add	fp, sp, #0x50
0x10145262c:  f3 03 02 aa   mov	x19, x2
0x101452630:  f4 03 00 aa   mov	x20, x0
0x101452634:  08 7a 00 90   adrp	x8, 0x102392000
0x101452638:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10145263c:  08 01 40 f9   ldr	x8, [x8]
0x101452640:  e8 17 00 f9   str	x8, [sp, #0x28]
0x101452644:  17 94 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x101452648:  a0 10 00 34   cbz	w0, loc_10145285c ; ⤵ 0x214
0x10145264c:  e0 03 14 aa   mov	x0, x20
0x101452650:  6c 1e 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101452654:  f5 03 00 aa   mov	x21, x0
0x101452658:  68 86 00 b0   adrp	x8, 0x10251f000
0x10145265c:  00 61 2d 91   add	x0, x8, #0xb58 ; CLDurianGATTWriteTask
0x101452660:  48 0e 1b 94   bl	j__objc_opt_class
0x101452664:  e1 03 00 aa   mov	x1, x0
0x101452668:  e0 03 15 aa   mov	x0, x21
0x10145266c:  49 0e 1b 94   bl	j__objc_opt_isKindOfClass
0x101452670:  60 0f 00 36   tbz	w0, #0, loc_10145285c ; ⤵ 0x1ec
0x101452674:  e0 03 14 aa   mov	x0, x20
0x101452678:  62 1e 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x10145267c:  b1 35 1b 94   bl	j__objc_msgSend(x0, "command")
0x101452680:  18 b1 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x101452684:  f5 03 00 aa   mov	x21, x0
0x101452688:  88 89 00 90   adrp	x8, 0x102582000
0x10145268c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101452690:  1f 05 00 b1   cmn	x8, #0x1
0x101452694:  c1 31 00 54   b.ne	loc_101452ccc ; ⤵ 0x638
0x101452698:  88 89 00 90   adrp	x8, 0x102582000
0x10145269c:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014526a0:  e0 03 16 aa   mov	x0, x22
0x1014526a4:  01 00 80 52   mov	w1, #0
0x1014526a8:  12 0f 1b 94   bl	j__os_log_type_enabled
0x1014526ac:  a0 03 00 34   cbz	w0, loc_101452720 ; ⤵ 0x74
0x1014526b0:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x1014526b4:  d9 18 01 94   bl	0x101498a18
0x1014526b8:  08 45 00 d0   adrp	x8, 0x101cf4000
0x1014526bc:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x1014526c0:  e0 03 00 bd   str	s0, [sp]
0x1014526c4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014526c8:  48 04 81 52   mov	w8, #0x822
0x1014526cc:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014526d0:  e8 52 00 90   adrp	x8, 0x101eae000
0x1014526d4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014526d8:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014526dc:  28 08 81 52   mov	w8, #0x841
0x1014526e0:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014526e4:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x1014526e8:  48 80 80 52   mov	w8, #0x402
0x1014526ec:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1014526f0:  f5 e3 01 b8   stur	w21, [sp, #0x1e]
0x1014526f4:  e8 47 00 79   strh	w8, [sp, #0x22]
0x1014526f8:  f3 27 00 b9   str	w19, [sp, #0x24]
0x1014526fc:  60 5d ff d0   adrp	x0, 0x100000000
0x101452700:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101452704:  e3 70 00 f0   adrp	x3, 0x102271000
0x101452708:  63 70 3b 91   add	x3, x3, #0xedc ; "{\"msg%{public}.0s\":\"#durian #posh #ut endpoint check\", \"item\":%{private, location:escape_only}@, \"active\":%{public}d, \"param\":%{public}d}"
0x10145270c:  e4 03 00 91   mov	x4, sp
0x101452710:  e1 03 16 aa   mov	x1, x22
0x101452714:  02 00 80 52   mov	w2, #0
0x101452718:  05 05 80 52   mov	w5, #0x28
0x10145271c:  b5 0a 1b 94   bl	j___os_log_impl
0x101452720:  ; loc_101452720
0x101452720:  7f 0e 0c 71   cmp	w19, #0x303
0x101452724:  e0 2a 00 54   b.eq	loc_101452c80 ; ⤵ 0x55c
0x101452728:  7f 16 10 71   cmp	w19, #0x405
0x10145272c:  61 00 00 54   b.ne	loc_101452738 ; ⤵ 0xc
0x101452730:  bf 12 10 71   cmp	w21, #0x404
0x101452734:  60 2a 00 54   b.eq	loc_101452c80 ; ⤵ 0x54c
0x101452738:  ; loc_101452738
0x101452738:  7f 0e 20 71   cmp	w19, #0x803
0x10145273c:  61 00 00 54   b.ne	loc_101452748 ; ⤵ 0xc
0x101452740:  bf 0e 00 71   cmp	w21, #0x3
0x101452744:  e0 29 00 54   b.eq	loc_101452c80 ; ⤵ 0x53c
0x101452748:  ; loc_101452748
0x101452748:  7f 12 20 71   cmp	w19, #0x804
0x10145274c:  61 00 00 54   b.ne	loc_101452758 ; ⤵ 0xc
0x101452750:  bf 12 00 71   cmp	w21, #0x4
0x101452754:  60 29 00 54   b.eq	loc_101452c80 ; ⤵ 0x52c
0x101452758:  ; loc_101452758
0x101452758:  7f 16 20 71   cmp	w19, #0x805
0x10145275c:  61 00 00 54   b.ne	loc_101452768 ; ⤵ 0xc
0x101452760:  bf 16 00 71   cmp	w21, #0x5
0x101452764:  e0 28 00 54   b.eq	loc_101452c80 ; ⤵ 0x51c
0x101452768:  ; loc_101452768
0x101452768:  7f 1a 20 71   cmp	w19, #0x806
0x10145276c:  61 00 00 54   b.ne	loc_101452778 ; ⤵ 0xc
0x101452770:  bf 1a 00 71   cmp	w21, #0x6
0x101452774:  60 28 00 54   b.eq	loc_101452c80 ; ⤵ 0x50c
0x101452778:  ; loc_101452778
0x101452778:  7f 1e 20 71   cmp	w19, #0x807
0x10145277c:  61 00 00 54   b.ne	loc_101452788 ; ⤵ 0xc
0x101452780:  bf 1e 00 71   cmp	w21, #0x7
0x101452784:  e0 27 00 54   b.eq	loc_101452c80 ; ⤵ 0x4fc
0x101452788:  ; loc_101452788
0x101452788:  7f 22 20 71   cmp	w19, #0x808
0x10145278c:  61 00 00 54   b.ne	loc_101452798 ; ⤵ 0xc
0x101452790:  bf 22 00 71   cmp	w21, #0x8
0x101452794:  60 27 00 54   b.eq	loc_101452c80 ; ⤵ 0x4ec
0x101452798:  ; loc_101452798
0x101452798:  7f 26 20 71   cmp	w19, #0x809
0x10145279c:  61 00 00 54   b.ne	loc_1014527a8 ; ⤵ 0xc
0x1014527a0:  bf 26 00 71   cmp	w21, #0x9
0x1014527a4:  e0 26 00 54   b.eq	loc_101452c80 ; ⤵ 0x4dc
0x1014527a8:  ; loc_1014527a8
0x1014527a8:  7f 2a 20 71   cmp	w19, #0x80a
0x1014527ac:  61 00 00 54   b.ne	loc_1014527b8 ; ⤵ 0xc
0x1014527b0:  bf 2a 00 71   cmp	w21, #0xa
0x1014527b4:  60 26 00 54   b.eq	loc_101452c80 ; ⤵ 0x4cc
0x1014527b8:  ; loc_1014527b8
0x1014527b8:  7f 2e 20 71   cmp	w19, #0x80b
0x1014527bc:  61 00 00 54   b.ne	loc_1014527c8 ; ⤵ 0xc
0x1014527c0:  bf 2e 00 71   cmp	w21, #0xb
0x1014527c4:  e0 25 00 54   b.eq	loc_101452c80 ; ⤵ 0x4bc
0x1014527c8:  ; loc_1014527c8
0x1014527c8:  7f 32 20 71   cmp	w19, #0x80c
0x1014527cc:  61 00 00 54   b.ne	loc_1014527d8 ; ⤵ 0xc
0x1014527d0:  bf 32 00 71   cmp	w21, #0xc
0x1014527d4:  60 25 00 54   b.eq	loc_101452c80 ; ⤵ 0x4ac
0x1014527d8:  ; loc_1014527d8
0x1014527d8:  7f 9e 10 71   cmp	w19, #0x427
0x1014527dc:  61 00 00 54   b.ne	loc_1014527e8 ; ⤵ 0xc
0x1014527e0:  bf 96 0c 71   cmp	w21, #0x325
0x1014527e4:  e0 24 00 54   b.eq	loc_101452c80 ; ⤵ 0x49c
0x1014527e8:  ; loc_1014527e8
0x1014527e8:  7f 82 10 71   cmp	w19, #0x420
0x1014527ec:  61 00 00 54   b.ne	loc_1014527f8 ; ⤵ 0xc
0x1014527f0:  bf 82 0c 71   cmp	w21, #0x320
0x1014527f4:  60 24 00 54   b.eq	loc_101452c80 ; ⤵ 0x48c
0x1014527f8:  ; loc_1014527f8
0x1014527f8:  7f 86 10 71   cmp	w19, #0x421
0x1014527fc:  61 00 00 54   b.ne	loc_101452808 ; ⤵ 0xc
0x101452800:  bf 86 0c 71   cmp	w21, #0x321
0x101452804:  e0 23 00 54   b.eq	loc_101452c80 ; ⤵ 0x47c
0x101452808:  ; loc_101452808
0x101452808:  7f 8a 10 71   cmp	w19, #0x422
0x10145280c:  61 00 00 54   b.ne	loc_101452818 ; ⤵ 0xc
0x101452810:  bf 8a 0c 71   cmp	w21, #0x322
0x101452814:  60 23 00 54   b.eq	loc_101452c80 ; ⤵ 0x46c
0x101452818:  ; loc_101452818
0x101452818:  7f 8a 10 71   cmp	w19, #0x422
0x10145281c:  e8 17 9f 1a   cset	w8, eq
0x101452820:  bf 9e 0c 71   cmp	w21, #0x327
0x101452824:  e9 13 88 1a   csel	w9, wzr, w8, ne
0x101452828:  bf 8e 0c 71   cmp	w21, #0x323
0x10145282c:  e8 13 88 1a   csel	w8, wzr, w8, ne
0x101452830:  bf 9a 0c 71   cmp	w21, #0x326
0x101452834:  0a 85 80 52   mov	w10, #0x428
0x101452838:  60 02 4a 7a   ccmp	w19, w10, #0, eq
0x10145283c:  20 00 80 52   mov	w0, #0x1
0x101452840:  20 22 00 54   b.eq	loc_101452c84 ; ⤵ 0x444
0x101452844:  09 22 00 37   tbnz	w9, #0, loc_101452c84 ; ⤵ 0x440
0x101452848:  e8 21 00 37   tbnz	w8, #0, loc_101452c84 ; ⤵ 0x43c
0x10145284c:  7f 96 10 71   cmp	w19, #0x425
0x101452850:  61 00 00 54   b.ne	loc_10145285c ; ⤵ 0xc
0x101452854:  bf 92 0c 71   cmp	w21, #0x324
0x101452858:  60 21 00 54   b.eq	loc_101452c84 ; ⤵ 0x42c
0x10145285c:  ; loc_10145285c
0x10145285c:  e0 03 14 aa   mov	x0, x20
0x101452860:  f0 8d 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x101452864:  60 09 00 34   cbz	w0, loc_101452990 ; ⤵ 0x12c
0x101452868:  e0 03 14 aa   mov	x0, x20
0x10145286c:  e5 1d 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101452870:  f5 03 00 aa   mov	x21, x0
0x101452874:  68 86 00 b0   adrp	x8, 0x10251f000
0x101452878:  00 61 2d 91   add	x0, x8, #0xb58 ; CLDurianGATTWriteTask
0x10145287c:  c1 0d 1b 94   bl	j__objc_opt_class
0x101452880:  e1 03 00 aa   mov	x1, x0
0x101452884:  e0 03 15 aa   mov	x0, x21
0x101452888:  c2 0d 1b 94   bl	j__objc_opt_isKindOfClass
0x10145288c:  20 08 00 36   tbz	w0, #0, loc_101452990 ; ⤵ 0x104
0x101452890:  e0 03 14 aa   mov	x0, x20
0x101452894:  db 1d 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101452898:  2a 35 1b 94   bl	j__objc_msgSend(x0, "command")
0x10145289c:  91 b0 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x1014528a0:  f5 03 00 aa   mov	x21, x0
0x1014528a4:  88 89 00 90   adrp	x8, 0x102582000
0x1014528a8:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014528ac:  1f 05 00 b1   cmn	x8, #0x1
0x1014528b0:  21 21 00 54   b.ne	loc_101452cd4 ; ⤵ 0x424
0x1014528b4:  88 89 00 90   adrp	x8, 0x102582000
0x1014528b8:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014528bc:  e0 03 16 aa   mov	x0, x22
0x1014528c0:  01 00 80 52   mov	w1, #0
0x1014528c4:  8b 0e 1b 94   bl	j__os_log_type_enabled
0x1014528c8:  a0 03 00 34   cbz	w0, loc_10145293c ; ⤵ 0x74
0x1014528cc:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x1014528d0:  52 18 01 94   bl	0x101498a18
0x1014528d4:  08 45 00 d0   adrp	x8, 0x101cf4000
0x1014528d8:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x1014528dc:  e0 03 00 bd   str	s0, [sp]
0x1014528e0:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014528e4:  48 04 81 52   mov	w8, #0x822
0x1014528e8:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014528ec:  e8 52 00 90   adrp	x8, 0x101eae000
0x1014528f0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014528f4:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014528f8:  28 08 81 52   mov	w8, #0x841
0x1014528fc:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101452900:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101452904:  48 80 80 52   mov	w8, #0x402
0x101452908:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145290c:  f5 e3 01 b8   stur	w21, [sp, #0x1e]
0x101452910:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101452914:  f3 27 00 b9   str	w19, [sp, #0x24]
0x101452918:  60 5d ff d0   adrp	x0, 0x100000000
0x10145291c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101452920:  e3 70 00 f0   adrp	x3, 0x102271000
0x101452924:  63 98 3d 91   add	x3, x3, #0xf66 ; "{\"msg%{public}.0s\":\"#durian #ut endpoint check\", \"item\":%{private, location:escape_only}@, \"active\":%{public}d, \"param\":%{public}d}"
0x101452928:  e4 03 00 91   mov	x4, sp
0x10145292c:  e1 03 16 aa   mov	x1, x22
0x101452930:  02 00 80 52   mov	w2, #0
0x101452934:  05 05 80 52   mov	w5, #0x28
0x101452938:  2e 0a 1b 94   bl	j___os_log_impl
0x10145293c:  ; loc_10145293c
0x10145293c:  7f 1a 20 71   cmp	w19, #0x806
0x101452940:  61 00 00 54   b.ne	loc_10145294c ; ⤵ 0xc
0x101452944:  bf 06 20 71   cmp	w21, #0x801
0x101452948:  c0 19 00 54   b.eq	loc_101452c80 ; ⤵ 0x338
0x10145294c:  ; loc_10145294c
0x10145294c:  7f 1e 20 71   cmp	w19, #0x807
0x101452950:  61 00 00 54   b.ne	loc_10145295c ; ⤵ 0xc
0x101452954:  bf 0a 20 71   cmp	w21, #0x802
0x101452958:  40 19 00 54   b.eq	loc_101452c80 ; ⤵ 0x328
0x10145295c:  ; loc_10145295c
0x10145295c:  7f 22 20 71   cmp	w19, #0x808
0x101452960:  81 00 00 54   b.ne	loc_101452970 ; ⤵ 0x10
0x101452964:  a8 0e 20 51   sub	w8, w21, #0x803
0x101452968:  1f 09 00 71   cmp	w8, #0x2
0x10145296c:  a3 18 00 54   b.lo	loc_101452c80 ; ⤵ 0x314
0x101452970:  ; loc_101452970
0x101452970:  7f 2e 20 71   cmp	w19, #0x80b
0x101452974:  a8 00 81 52   mov	w8, #0x805
0x101452978:  a0 02 48 7a   ccmp	w21, w8, #0, eq
0x10145297c:  e8 07 9f 1a   cset	w8, ne
0x101452980:  20 00 80 52   mov	w0, #0x1
0x101452984:  7f 3a 20 71   cmp	w19, #0x80e
0x101452988:  e0 17 00 54   b.eq	loc_101452c84 ; ⤵ 0x2fc
0x10145298c:  c8 17 00 34   cbz	w8, loc_101452c84 ; ⤵ 0x2f8
0x101452990:  ; loc_101452990
0x101452990:  e0 03 14 aa   mov	x0, x20
0x101452994:  ab 90 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101452998:  f6 03 00 aa   mov	x22, x0
0x10145299c:  e0 03 14 aa   mov	x0, x20
0x1014529a0:  98 1d 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014529a4:  f5 03 00 aa   mov	x21, x0
0x1014529a8:  96 13 00 34   cbz	w22, loc_101452c18 ; ⤵ 0x270
0x1014529ac:  68 86 00 b0   adrp	x8, 0x10251f000
0x1014529b0:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x1014529b4:  73 0d 1b 94   bl	j__objc_opt_class
0x1014529b8:  e1 03 00 aa   mov	x1, x0
0x1014529bc:  e0 03 15 aa   mov	x0, x21
0x1014529c0:  74 0d 1b 94   bl	j__objc_opt_isKindOfClass
0x1014529c4:  60 17 00 36   tbz	w0, #0, loc_101452cb0 ; ⤵ 0x2ec
0x1014529c8:  e0 03 14 aa   mov	x0, x20
0x1014529cc:  8d 1d 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014529d0:  bc 75 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x1014529d4:  f5 03 00 aa   mov	x21, x0
0x1014529d8:  88 89 00 90   adrp	x8, 0x102582000
0x1014529dc:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014529e0:  1f 05 00 b1   cmn	x8, #0x1
0x1014529e4:  c1 17 00 54   b.ne	loc_101452cdc ; ⤵ 0x2f8
0x1014529e8:  88 89 00 90   adrp	x8, 0x102582000
0x1014529ec:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014529f0:  e0 03 16 aa   mov	x0, x22
0x1014529f4:  01 00 80 52   mov	w1, #0
0x1014529f8:  3e 0e 1b 94   bl	j__os_log_type_enabled
0x1014529fc:  a0 03 00 34   cbz	w0, loc_101452a70 ; ⤵ 0x74
0x101452a00:  80 b2 40 f9   ldr	x0, [x20, #0x160]
0x101452a04:  05 18 01 94   bl	0x101498a18
0x101452a08:  08 45 00 d0   adrp	x8, 0x101cf4000
0x101452a0c:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101452a10:  e0 03 00 bd   str	s0, [sp]
0x101452a14:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101452a18:  48 04 81 52   mov	w8, #0x822
0x101452a1c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101452a20:  e8 52 00 90   adrp	x8, 0x101eae000
0x101452a24:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101452a28:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101452a2c:  28 08 81 52   mov	w8, #0x841
0x101452a30:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101452a34:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101452a38:  48 80 80 52   mov	w8, #0x402
0x101452a3c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101452a40:  f5 e3 01 b8   stur	w21, [sp, #0x1e]
0x101452a44:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101452a48:  f3 27 00 b9   str	w19, [sp, #0x24]
0x101452a4c:  60 5d ff d0   adrp	x0, 0x100000000
0x101452a50:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101452a54:  e3 70 00 f0   adrp	x3, 0x102271000
0x101452a58:  63 a8 3f 91   add	x3, x3, #0xfea ; "{\"msg%{public}.0s\":\"#durian #hawkeye endpoint check\", \"item\":%{private, location:escape_only}@, \"active\":%{public}d, \"param\":%{public}d}"
0x101452a5c:  e4 03 00 91   mov	x4, sp
0x101452a60:  e1 03 16 aa   mov	x1, x22
0x101452a64:  02 00 80 52   mov	w2, #0
0x101452a68:  05 05 80 52   mov	w5, #0x28
0x101452a6c:  e1 09 1b 94   bl	j___os_log_impl
0x101452a70:  ; loc_101452a70
0x101452a70:  7f 32 08 71   cmp	w19, #0x20c
0x101452a74:  61 00 00 54   b.ne	loc_101452a80 ; ⤵ 0xc
0x101452a78:  bf 26 08 71   cmp	w21, #0x209
0x101452a7c:  20 10 00 54   b.eq	loc_101452c80 ; ⤵ 0x204
0x101452a80:  ; loc_101452a80
0x101452a80:  7f 3a 08 71   cmp	w19, #0x20e
0x101452a84:  61 00 00 54   b.ne	loc_101452a90 ; ⤵ 0xc
0x101452a88:  bf 1a 08 71   cmp	w21, #0x206
0x101452a8c:  a0 0f 00 54   b.eq	loc_101452c80 ; ⤵ 0x1f4
0x101452a90:  ; loc_101452a90
0x101452a90:  20 00 80 52   mov	w0, #0x1
0x101452a94:  7f 36 08 71   cmp	w19, #0x20d
0x101452a98:  60 0f 00 54   b.eq	loc_101452c84 ; ⤵ 0x1ec
0x101452a9c:  7f 52 08 71   cmp	w19, #0x214
0x101452aa0:  20 0f 00 54   b.eq	loc_101452c84 ; ⤵ 0x1e4
0x101452aa4:  7f 0a 14 71   cmp	w19, #0x502
0x101452aa8:  e0 0e 00 54   b.eq	loc_101452c84 ; ⤵ 0x1dc
0x101452aac:  7f 4a 08 71   cmp	w19, #0x212
0x101452ab0:  61 00 00 54   b.ne	loc_101452abc ; ⤵ 0xc
0x101452ab4:  bf 46 08 71   cmp	w21, #0x211
0x101452ab8:  60 0e 00 54   b.eq	loc_101452c84 ; ⤵ 0x1cc
0x101452abc:  ; loc_101452abc
0x101452abc:  7f 8a 08 71   cmp	w19, #0x222
0x101452ac0:  61 00 00 54   b.ne	loc_101452acc ; ⤵ 0xc
0x101452ac4:  bf 66 08 71   cmp	w21, #0x219
0x101452ac8:  e0 0d 00 54   b.eq	loc_101452c84 ; ⤵ 0x1bc
0x101452acc:  ; loc_101452acc
0x101452acc:  7f 8e 08 71   cmp	w19, #0x223
0x101452ad0:  61 00 00 54   b.ne	loc_101452adc ; ⤵ 0xc
0x101452ad4:  bf 6a 08 71   cmp	w21, #0x21a
0x101452ad8:  60 0d 00 54   b.eq	loc_101452c84 ; ⤵ 0x1ac
0x101452adc:  ; loc_101452adc
0x101452adc:  7f 9a 08 71   cmp	w19, #0x226
0x101452ae0:  61 00 00 54   b.ne	loc_101452aec ; ⤵ 0xc
0x101452ae4:  bf 76 08 71   cmp	w21, #0x21d
0x101452ae8:  e0 0c 00 54   b.eq	loc_101452c84 ; ⤵ 0x19c
0x101452aec:  ; loc_101452aec
0x101452aec:  7f a2 08 71   cmp	w19, #0x228
0x101452af0:  e8 44 80 52   mov	w8, #0x227
0x101452af4:  a0 02 48 7a   ccmp	w21, w8, #0, eq
0x101452af8:  e8 17 9f 1a   cset	w8, eq
0x101452afc:  7f 0e 0c 71   cmp	w19, #0x303
0x101452b00:  20 0c 00 54   b.eq	loc_101452c84 ; ⤵ 0x184
0x101452b04:  08 0c 00 37   tbnz	w8, #0, loc_101452c84 ; ⤵ 0x180
0x101452b08:  7f 42 0c 71   cmp	w19, #0x310
0x101452b0c:  61 00 00 54   b.ne	loc_101452b18 ; ⤵ 0xc
0x101452b10:  bf 16 0c 71   cmp	w21, #0x305
0x101452b14:  80 0b 00 54   b.eq	loc_101452c84 ; ⤵ 0x170
0x101452b18:  ; loc_101452b18
0x101452b18:  7f 46 0c 71   cmp	w19, #0x311
0x101452b1c:  61 00 00 54   b.ne	loc_101452b28 ; ⤵ 0xc
0x101452b20:  bf 1a 0c 71   cmp	w21, #0x306
0x101452b24:  00 0b 00 54   b.eq	loc_101452c84 ; ⤵ 0x160
0x101452b28:  ; loc_101452b28
0x101452b28:  7f 4a 0c 71   cmp	w19, #0x312
0x101452b2c:  61 00 00 54   b.ne	loc_101452b38 ; ⤵ 0xc
0x101452b30:  bf 1e 0c 71   cmp	w21, #0x307
0x101452b34:  80 0a 00 54   b.eq	loc_101452c84 ; ⤵ 0x150
0x101452b38:  ; loc_101452b38
0x101452b38:  7f 4e 0c 71   cmp	w19, #0x313
0x101452b3c:  61 00 00 54   b.ne	loc_101452b48 ; ⤵ 0xc
0x101452b40:  bf 22 0c 71   cmp	w21, #0x308
0x101452b44:  00 0a 00 54   b.eq	loc_101452c84 ; ⤵ 0x140
0x101452b48:  ; loc_101452b48
0x101452b48:  7f 52 0c 71   cmp	w19, #0x314
0x101452b4c:  61 00 00 54   b.ne	loc_101452b58 ; ⤵ 0xc
0x101452b50:  bf 26 0c 71   cmp	w21, #0x309
0x101452b54:  80 09 00 54   b.eq	loc_101452c84 ; ⤵ 0x130
0x101452b58:  ; loc_101452b58
0x101452b58:  7f 5a 0c 71   cmp	w19, #0x316
0x101452b5c:  61 00 00 54   b.ne	loc_101452b68 ; ⤵ 0xc
0x101452b60:  bf 2e 0c 71   cmp	w21, #0x30b
0x101452b64:  00 09 00 54   b.eq	loc_101452c84 ; ⤵ 0x120
0x101452b68:  ; loc_101452b68
0x101452b68:  7f 5e 0c 71   cmp	w19, #0x317
0x101452b6c:  61 00 00 54   b.ne	loc_101452b78 ; ⤵ 0xc
0x101452b70:  bf 32 0c 71   cmp	w21, #0x30c
0x101452b74:  80 08 00 54   b.eq	loc_101452c84 ; ⤵ 0x110
0x101452b78:  ; loc_101452b78
0x101452b78:  7f 62 0c 71   cmp	w19, #0x318
0x101452b7c:  61 00 00 54   b.ne	loc_101452b88 ; ⤵ 0xc
0x101452b80:  bf 36 0c 71   cmp	w21, #0x30d
0x101452b84:  00 08 00 54   b.eq	loc_101452c84 ; ⤵ 0x100
0x101452b88:  ; loc_101452b88
0x101452b88:  7f 66 0c 71   cmp	w19, #0x319
0x101452b8c:  61 00 00 54   b.ne	loc_101452b98 ; ⤵ 0xc
0x101452b90:  bf 3a 0c 71   cmp	w21, #0x30e
0x101452b94:  80 07 00 54   b.eq	loc_101452c84 ; ⤵ 0xf0
0x101452b98:  ; loc_101452b98
0x101452b98:  68 0a 10 51   sub	w8, w19, #0x402
0x101452b9c:  1f 0d 00 71   cmp	w8, #0x3
0x101452ba0:  68 00 00 54   b.hi	loc_101452bac ; ⤵ 0xc
0x101452ba4:  1f 09 00 71   cmp	w8, #0x2
0x101452ba8:  e1 06 00 54   b.ne	loc_101452c84 ; ⤵ 0xdc
0x101452bac:  ; loc_101452bac
0x101452bac:  7f 46 1c 71   cmp	w19, #0x711
0x101452bb0:  61 00 00 54   b.ne	loc_101452bbc ; ⤵ 0xc

