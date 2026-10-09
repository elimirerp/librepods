
-[CLDurianDevice executeTask:]:
0x10145f78c:  7f 23 03 d5   pacibsp
0x10145f790:  ff 03 03 d1   sub	sp, sp, #0xc0
0x10145f794:  fc 6f 06 a9   stp	x28, x27, [sp, #0x60]
0x10145f798:  fa 67 07 a9   stp	x26, x25, [sp, #0x70]
0x10145f79c:  f8 5f 08 a9   stp	x24, x23, [sp, #0x80]
0x10145f7a0:  f6 57 09 a9   stp	x22, x21, [sp, #0x90]
0x10145f7a4:  f4 4f 0a a9   stp	x20, x19, [sp, #0xa0]
0x10145f7a8:  fd 7b 0b a9   stp	fp, lr, [sp, #0xb0]
0x10145f7ac:  fd c3 02 91   add	fp, sp, #0xb0
0x10145f7b0:  f4 03 02 aa   mov	x20, x2
0x10145f7b4:  f3 03 00 aa   mov	x19, x0
0x10145f7b8:  88 79 00 f0   adrp	x8, 0x102392000
0x10145f7bc:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10145f7c0:  08 01 40 f9   ldr	x8, [x8]
0x10145f7c4:  e8 2f 00 f9   str	x8, [sp, #0x58]
0x10145f7c8:  76 fb 1a 94   bl	j__objc_msgSend(x0, "checkHelloMaintenanceTask:")
0x10145f7cc:  e0 03 13 aa   mov	x0, x19
0x10145f7d0:  e2 03 14 aa   mov	x2, x20
0x10145f7d4:  63 fc 1a 94   bl	j__objc_msgSend(x0, "checkUserActionTask:")
0x10145f7d8:  e0 03 14 aa   mov	x0, x20
0x10145f7dc:  59 01 1b 94   bl	j__objc_msgSend(x0, "command")
0x10145f7e0:  c0 7c 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x10145f7e4:  f6 03 00 aa   mov	x22, x0
0x10145f7e8:  e0 03 14 aa   mov	x0, x20
0x10145f7ec:  f5 ed 1b 94   bl	j__objc_msgSend(x0, "timeoutSeconds")
0x10145f7f0:  f5 03 00 aa   mov	x21, x0
0x10145f7f4:  68 62 40 f9   ldr	x8, [x19, #0xc0]
0x10145f7f8:  1f 19 00 b1   cmn	x8, #0x6
0x10145f7fc:  f8 17 9f 1a   cset	w24, eq
0x10145f800:  e0 03 13 aa   mov	x0, x19
0x10145f804:  d7 ab 1b 94   bl	j__objc_msgSend(x0, "setDesiredConnectionLatency")
0x10145f808:  e0 03 14 aa   mov	x0, x20
0x10145f80c:  45 fd 1b 94   bl	j__objc_msgSend(x0, "willStart")
0x10145f810:  e0 03 14 aa   mov	x0, x20
0x10145f814:  4b 01 1b 94   bl	j__objc_msgSend(x0, "command")
0x10145f818:  0a f7 1a 94   bl	j__objc_msgSend(x0, "bytes")
0x10145f81c:  f7 03 00 aa   mov	x23, x0
0x10145f820:  1b 86 00 90   adrp	x27, 0x10251f000
0x10145f824:  60 63 28 91   add	x0, x27, #0xa18 ; CLHawkeyeTask
0x10145f828:  d6 d9 1a 94   bl	j__objc_opt_class
0x10145f82c:  e1 03 00 aa   mov	x1, x0
0x10145f830:  e0 03 14 aa   mov	x0, x20
0x10145f834:  d7 d9 1a 94   bl	j__objc_opt_isKindOfClass
0x10145f838:  80 00 00 36   tbz	w0, #0, loc_10145f848 ; ⤵ 0x10
0x10145f83c:  e0 03 14 aa   mov	x0, x20
0x10145f840:  28 42 1b 94   bl	j__objc_msgSend(x0, "hawkeyePayload")
0x10145f844:  f7 03 00 aa   mov	x23, x0
0x10145f848:  ; loc_10145f848
0x10145f848:  1a 86 00 90   adrp	x26, 0x10251f000
0x10145f84c:  40 63 2d 91   add	x0, x26, #0xb58 ; CLDurianGATTWriteTask
0x10145f850:  cc d9 1a 94   bl	j__objc_opt_class
0x10145f854:  e1 03 00 aa   mov	x1, x0
0x10145f858:  e0 03 14 aa   mov	x0, x20
0x10145f85c:  cd d9 1a 94   bl	j__objc_opt_isKindOfClass
0x10145f860:  80 00 00 36   tbz	w0, #0, loc_10145f870 ; ⤵ 0x10
0x10145f864:  e0 03 14 aa   mov	x0, x20
0x10145f868:  5e fa 1a 94   bl	j__objc_msgSend(x0, "characteristicPayload")
0x10145f86c:  f7 03 00 aa   mov	x23, x0
0x10145f870:  ; loc_10145f870
0x10145f870:  b9 22 d8 9a   lsl	x25, x21, x24
0x10145f874:  15 89 00 f0   adrp	x21, 0x102582000
0x10145f878:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x10145f87c:  1f 05 00 b1   cmn	x8, #0x1
0x10145f880:  21 82 00 54   b.ne	loc_1014608c4 ; ⤵ 0x1044
0x10145f884:  1c 89 00 f0   adrp	x28, 0x102582000
0x10145f888:  98 3f 46 f9   ldr	x24, [x28, #0xc78] ; data_102582c78 (__DATA.__data)
0x10145f88c:  e0 03 18 aa   mov	x0, x24
0x10145f890:  01 00 80 52   mov	w1, #0
0x10145f894:  97 da 1a 94   bl	j__os_log_type_enabled
0x10145f898:  e0 06 00 34   cbz	w0, loc_10145f974 ; ⤵ 0xdc
0x10145f89c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145f8a0:  5e e4 00 94   bl	0x101498a18
0x10145f8a4:  fb 03 1a aa   mov	x27, x26
0x10145f8a8:  fa 03 15 aa   mov	x26, x21
0x10145f8ac:  f5 03 1c aa   mov	x21, x28
0x10145f8b0:  fc 03 19 aa   mov	x28, x25
0x10145f8b4:  f9 03 00 aa   mov	x25, x0
0x10145f8b8:  e0 03 14 aa   mov	x0, x20
0x10145f8bc:  c1 ef 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x10145f8c0:  e2 03 00 aa   mov	x2, x0
0x10145f8c4:  e0 03 13 aa   mov	x0, x19
0x10145f8c8:  9e 38 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x10145f8cc:  68 36 40 f9   ldr	x8, [x19, #0x68]
0x10145f8d0:  69 62 40 f9   ldr	x9, [x19, #0xc0]
0x10145f8d4:  ca 3a 00 b0   adrp	x10, 0x101bb8000
0x10145f8d8:  40 f1 42 fd   ldr	d0, [x10, #0x5e0]
0x10145f8dc:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10145f8e0:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10145f8e4:  4a 04 81 52   mov	w10, #0x822
0x10145f8e8:  ea 33 00 79   strh	w10, [sp, #0x18]
0x10145f8ec:  6a 52 00 f0   adrp	x10, 0x101eae000
0x10145f8f0:  4a e1 02 91   add	x10, x10, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145f8f4:  ea a3 01 f8   stur	x10, [sp, #0x1a]
0x10145f8f8:  2a 08 81 52   mov	w10, #0x841
0x10145f8fc:  ea 47 00 79   strh	w10, [sp, #0x22]
0x10145f900:  f9 43 02 f8   stur	x25, [sp, #0x24]
0x10145f904:  f9 03 1c aa   mov	x25, x28
0x10145f908:  fc 03 15 aa   mov	x28, x21
0x10145f90c:  f5 03 1a aa   mov	x21, x26
0x10145f910:  fa 03 1b aa   mov	x26, x27
0x10145f914:  1b 86 00 90   adrp	x27, 0x10251f000
0x10145f918:  4b 80 80 52   mov	w11, #0x402
0x10145f91c:  eb 5b 00 79   strh	w11, [sp, #0x2c]
0x10145f920:  f6 e3 02 b8   stur	w22, [sp, #0x2e]
0x10145f924:  ea 67 00 79   strh	w10, [sp, #0x32]
0x10145f928:  e0 43 03 f8   stur	x0, [sp, #0x34]
0x10145f92c:  2c 80 80 52   mov	w12, #0x401
0x10145f930:  ec 7b 00 79   strh	w12, [sp, #0x3c]
0x10145f934:  e8 e3 03 b8   stur	w8, [sp, #0x3e]
0x10145f938:  eb 87 00 79   strh	w11, [sp, #0x42]
0x10145f93c:  e9 47 00 b9   str	w9, [sp, #0x44]
0x10145f940:  eb 93 00 79   strh	w11, [sp, #0x48]
0x10145f944:  f9 a3 04 b8   stur	w25, [sp, #0x4a]
0x10145f948:  ea 9f 00 79   strh	w10, [sp, #0x4e]
0x10145f94c:  f7 2b 00 f9   str	x23, [sp, #0x50]
0x10145f950:  00 5d ff b0   adrp	x0, 0x100000000
0x10145f954:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145f958:  c3 70 00 90   adrp	x3, 0x102277000
0x10145f95c:  63 d8 1d 91   add	x3, x3, #0x776 ; "{\"msg%{public}.0s\":\"#durian executing task\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d, \"task\":%{private, location:escape_only}@, \"condition\":%{private}d, \"latency\":%{public}d, \"ti"...
0x10145f960:  e4 43 00 91   add	x4, sp, #0x10
0x10145f964:  e1 03 18 aa   mov	x1, x24
0x10145f968:  02 00 80 52   mov	w2, #0
0x10145f96c:  05 09 80 52   mov	w5, #0x48
0x10145f970:  20 d6 1a 94   bl	j___os_log_impl
0x10145f974:  ; loc_10145f974
0x10145f974:  17 86 00 90   adrp	x23, 0x10251f000
0x10145f978:  e0 a2 29 91   add	x0, x23, #0xa68 ; CLDurianGATTTask
0x10145f97c:  81 d9 1a 94   bl	j__objc_opt_class
0x10145f980:  e1 03 00 aa   mov	x1, x0
0x10145f984:  e0 03 14 aa   mov	x0, x20
0x10145f988:  82 d9 1a 94   bl	j__objc_opt_isKindOfClass
0x10145f98c:  a0 04 00 36   tbz	w0, #0, loc_10145fa20 ; ⤵ 0x94
0x10145f990:  e0 03 13 aa   mov	x0, x19
0x10145f994:  43 5f 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x10145f998:  40 04 00 34   cbz	w0, loc_10145fa20 ; ⤵ 0x88
0x10145f99c:  df 92 0c 71   cmp	w22, #0x324
0x10145f9a0:  e0 27 00 54   b.eq	loc_10145fe9c ; ⤵ 0x4fc
0x10145f9a4:  df 82 0c 71   cmp	w22, #0x320
0x10145f9a8:  a1 2b 00 54   b.ne	loc_10145ff1c ; ⤵ 0x574
0x10145f9ac:  28 00 80 52   mov	w8, #0x1
0x10145f9b0:  68 c2 04 39   strb	w8, [x19, #0x130]
0x10145f9b4:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x10145f9b8:  1f 05 00 b1   cmn	x8, #0x1
0x10145f9bc:  c1 79 00 54   b.ne	loc_1014608f4 ; ⤵ 0xf38
0x10145f9c0:  96 3f 46 f9   ldr	x22, [x28, #0xc78]
0x10145f9c4:  e0 03 16 aa   mov	x0, x22
0x10145f9c8:  01 00 80 52   mov	w1, #0
0x10145f9cc:  49 da 1a 94   bl	j__os_log_type_enabled
0x10145f9d0:  60 2a 00 34   cbz	w0, loc_10145ff1c ; ⤵ 0x54c
0x10145f9d4:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145f9d8:  10 e4 00 94   bl	0x101498a18
0x10145f9dc:  a8 44 00 b0   adrp	x8, 0x101cf4000
0x10145f9e0:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x10145f9e4:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10145f9e8:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10145f9ec:  48 04 81 52   mov	w8, #0x822
0x10145f9f0:  e8 33 00 79   strh	w8, [sp, #0x18]
0x10145f9f4:  68 52 00 f0   adrp	x8, 0x101eae000
0x10145f9f8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145f9fc:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x10145fa00:  28 08 81 52   mov	w8, #0x841
0x10145fa04:  e8 47 00 79   strh	w8, [sp, #0x22]
0x10145fa08:  e0 43 02 f8   stur	x0, [sp, #0x24]
0x10145fa0c:  00 5d ff b0   adrp	x0, 0x100000000
0x10145fa10:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145fa14:  c3 70 00 90   adrp	x3, 0x102277000
0x10145fa18:  63 f0 21 91   add	x3, x3, #0x87c ; "{\"msg%{public}.0s\":\"#durian #posh #rose initialized\", \"item\":%{private, location:escape_only}@}"
0x10145fa1c:  3b 01 00 14   b	loc_10145ff08 ; ⤵ 0x4ec
0x10145fa20:  ; loc_10145fa20
0x10145fa20:  e0 a2 29 91   add	x0, x23, #0xa68
0x10145fa24:  57 d9 1a 94   bl	j__objc_opt_class
0x10145fa28:  e1 03 00 aa   mov	x1, x0
0x10145fa2c:  e0 03 14 aa   mov	x0, x20
0x10145fa30:  58 d9 1a 94   bl	j__objc_opt_isKindOfClass
0x10145fa34:  20 0b 00 36   tbz	w0, #0, loc_10145fb98 ; ⤵ 0x164
0x10145fa38:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x10145fa3c:  fa 03 19 aa   mov	x26, x25
0x10145fa40:  1f 05 00 b1   cmn	x8, #0x1
0x10145fa44:  41 74 00 54   b.ne	loc_1014608cc ; ⤵ 0xe88
0x10145fa48:  97 3f 46 f9   ldr	x23, [x28, #0xc78]
0x10145fa4c:  e0 03 17 aa   mov	x0, x23
0x10145fa50:  01 00 80 52   mov	w1, #0
0x10145fa54:  27 da 1a 94   bl	j__os_log_type_enabled
0x10145fa58:  99 79 00 d0   adrp	x25, 0x102391000
0x10145fa5c:  40 04 00 34   cbz	w0, loc_10145fae4 ; ⤵ 0x88
0x10145fa60:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145fa64:  ed e3 00 94   bl	0x101498a18
0x10145fa68:  f8 03 00 aa   mov	x24, x0
0x10145fa6c:  e0 03 14 aa   mov	x0, x20
0x10145fa70:  2c a0 1b 94   bl	j__objc_msgSend(x0, "serviceUUID")
0x10145fa74:  e0 07 00 f9   str	x0, [sp, #0x8]
0x10145fa78:  20 1b 44 f9   ldr	x0, [x25, #0x830]
0x10145fa7c:  e2 23 00 91   add	x2, sp, #0x8
0x10145fa80:  23 00 80 52   mov	w3, #0x1
0x10145fa84:  1f f1 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x10145fa88:  a8 44 00 b0   adrp	x8, 0x101cf4000
0x10145fa8c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10145fa90:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10145fa94:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10145fa98:  48 04 81 52   mov	w8, #0x822
0x10145fa9c:  e8 33 00 79   strh	w8, [sp, #0x18]
0x10145faa0:  68 52 00 f0   adrp	x8, 0x101eae000
0x10145faa4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145faa8:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x10145faac:  28 08 81 52   mov	w8, #0x841
0x10145fab0:  e8 47 00 79   strh	w8, [sp, #0x22]
0x10145fab4:  f8 43 02 f8   stur	x24, [sp, #0x24]
0x10145fab8:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x10145fabc:  e0 e3 02 f8   stur	x0, [sp, #0x2e]
0x10145fac0:  00 5d ff b0   adrp	x0, 0x100000000
0x10145fac4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145fac8:  c3 70 00 90   adrp	x3, 0x102277000
0x10145facc:  63 7c 38 91   add	x3, x3, #0xe1f ; "{\"msg%{public}.0s\":\"#durian requesting service-discovery\", \"item\":%{private, location:escape_only}@, \"service\":%{private, location:escape_only}@}"
0x10145fad0:  e4 43 00 91   add	x4, sp, #0x10
0x10145fad4:  e1 03 17 aa   mov	x1, x23
0x10145fad8:  02 00 80 52   mov	w2, #0
0x10145fadc:  c5 04 80 52   mov	w5, #0x26
0x10145fae0:  c4 d5 1a 94   bl	j___os_log_impl
0x10145fae4:  ; loc_10145fae4
0x10145fae4:  77 0e 40 f9   ldr	x23, [x19, #0x18]
0x10145fae8:  e0 03 14 aa   mov	x0, x20
0x10145faec:  0d a0 1b 94   bl	j__objc_msgSend(x0, "serviceUUID")
0x10145faf0:  e0 03 00 f9   str	x0, [sp]
0x10145faf4:  20 1b 44 f9   ldr	x0, [x25, #0x830]
0x10145faf8:  e2 03 00 91   mov	x2, sp
0x10145fafc:  23 00 80 52   mov	w3, #0x1
0x10145fb00:  00 f1 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x10145fb04:  e2 03 00 aa   mov	x2, x0
0x10145fb08:  e0 03 17 aa   mov	x0, x23
0x10145fb0c:  75 1a 1b 94   bl	j__objc_msgSend(x0, "discoverServices:")
0x10145fb10:  df 16 20 71   cmp	w22, #0x805
0x10145fb14:  a0 18 00 54   b.eq	loc_10145fe28 ; ⤵ 0x314
0x10145fb18:  df 06 20 71   cmp	w22, #0x801
0x10145fb1c:  f9 03 1a aa   mov	x25, x26
0x10145fb20:  c1 4b 00 54   b.ne	loc_101460498 ; ⤵ 0x978
0x10145fb24:  28 00 80 52   mov	w8, #0x1
0x10145fb28:  68 c2 04 39   strb	w8, [x19, #0x130]
0x10145fb2c:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x10145fb30:  1f 05 00 b1   cmn	x8, #0x1
0x10145fb34:  41 6d 00 54   b.ne	loc_1014608dc ; ⤵ 0xda8
0x10145fb38:  96 3f 46 f9   ldr	x22, [x28, #0xc78]
0x10145fb3c:  e0 03 16 aa   mov	x0, x22
0x10145fb40:  01 00 80 52   mov	w1, #0
0x10145fb44:  eb d9 1a 94   bl	j__os_log_type_enabled
0x10145fb48:  80 4a 00 34   cbz	w0, loc_101460498 ; ⤵ 0x950
0x10145fb4c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145fb50:  b2 e3 00 94   bl	0x101498a18
0x10145fb54:  a8 44 00 b0   adrp	x8, 0x101cf4000
0x10145fb58:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x10145fb5c:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10145fb60:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10145fb64:  48 04 81 52   mov	w8, #0x822
0x10145fb68:  e8 33 00 79   strh	w8, [sp, #0x18]
0x10145fb6c:  68 52 00 f0   adrp	x8, 0x101eae000
0x10145fb70:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145fb74:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x10145fb78:  28 08 81 52   mov	w8, #0x841
0x10145fb7c:  e8 47 00 79   strh	w8, [sp, #0x22]
0x10145fb80:  e0 43 02 f8   stur	x0, [sp, #0x24]
0x10145fb84:  00 5d ff b0   adrp	x0, 0x100000000
0x10145fb88:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145fb8c:  c3 70 00 90   adrp	x3, 0x102277000
0x10145fb90:  63 c4 3a 91   add	x3, x3, #0xeb1 ; "{\"msg%{public}.0s\":\"#durian #ut #rose initialized\", \"item\":%{private, location:escape_only}@}"
0x10145fb94:  3c 02 00 14   b	loc_101460484 ; ⤵ 0x8f0
0x10145fb98:  ; loc_10145fb98
0x10145fb98:  60 63 28 91   add	x0, x27, #0xa18
0x10145fb9c:  f9 d8 1a 94   bl	j__objc_opt_class
0x10145fba0:  e1 03 00 aa   mov	x1, x0
0x10145fba4:  e0 03 14 aa   mov	x0, x20
0x10145fba8:  fa d8 1a 94   bl	j__objc_opt_isKindOfClass
0x10145fbac:  80 0f 00 36   tbz	w0, #0, loc_10145fd9c ; ⤵ 0x1f0
0x10145fbb0:  e0 03 14 aa   mov	x0, x20
0x10145fbb4:  43 5a 1b 94   bl	j__objc_msgSend(x0, "isConfigurationControlPointTask")
0x10145fbb8:  60 00 00 34   cbz	w0, loc_10145fbc4 ; ⤵ 0xc
0x10145fbbc:  77 46 41 f9   ldr	x23, [x19, #0x288]
0x10145fbc0:  b7 02 00 b5   cbnz	x23, loc_10145fc14 ; ⤵ 0x54
0x10145fbc4:  ; loc_10145fbc4
0x10145fbc4:  e0 03 14 aa   mov	x0, x20
0x10145fbc8:  8e 5e 1b 94   bl	j__objc_msgSend(x0, "isPairedOwnerInformationControlPointTask")
0x10145fbcc:  60 00 00 34   cbz	w0, loc_10145fbd8 ; ⤵ 0xc
0x10145fbd0:  77 4a 41 f9   ldr	x23, [x19, #0x290]
0x10145fbd4:  17 02 00 b5   cbnz	x23, loc_10145fc14 ; ⤵ 0x40
0x10145fbd8:  ; loc_10145fbd8
0x10145fbd8:  e0 03 14 aa   mov	x0, x20
0x10145fbdc:  19 5e 1b 94   bl	j__objc_msgSend(x0, "isNonOwnerControlPointTask")
0x10145fbe0:  60 00 00 34   cbz	w0, loc_10145fbec ; ⤵ 0xc
0x10145fbe4:  77 5a 41 f9   ldr	x23, [x19, #0x2b0]
0x10145fbe8:  77 01 00 b5   cbnz	x23, loc_10145fc14 ; ⤵ 0x2c
0x10145fbec:  ; loc_10145fbec
0x10145fbec:  e0 03 14 aa   mov	x0, x20
0x10145fbf0:  8c 5a 1b 94   bl	j__objc_msgSend(x0, "isDebugControlPointTask")
0x10145fbf4:  60 00 00 34   cbz	w0, loc_10145fc00 ; ⤵ 0xc
0x10145fbf8:  77 4e 41 f9   ldr	x23, [x19, #0x298]
0x10145fbfc:  d7 00 00 b5   cbnz	x23, loc_10145fc14 ; ⤵ 0x18
0x10145fc00:  ; loc_10145fc00
0x10145fc00:  e0 03 14 aa   mov	x0, x20
0x10145fc04:  c7 5e 1b 94   bl	j__objc_msgSend(x0, "isPreciseFindingControlPointTask")
0x10145fc08:  e0 55 00 34   cbz	w0, loc_1014606c4 ; ⤵ 0xabc
0x10145fc0c:  77 52 41 f9   ldr	x23, [x19, #0x2a0]
0x10145fc10:  b7 55 00 b4   cbz	x23, loc_1014606c4 ; ⤵ 0xab4
0x10145fc14:  ; loc_10145fc14
0x10145fc14:  a8 3a 46 f9   ldr	x8, [x21, #0xc70]
0x10145fc18:  1f 05 00 b1   cmn	x8, #0x1
0x10145fc1c:  c1 65 00 54   b.ne	loc_1014608d4 ; ⤵ 0xcb8
0x10145fc20:  98 3f 46 f9   ldr	x24, [x28, #0xc78]
0x10145fc24:  e0 03 18 aa   mov	x0, x24
0x10145fc28:  01 00 80 52   mov	w1, #0
0x10145fc2c:  b1 d9 1a 94   bl	j__os_log_type_enabled
0x10145fc30:  00 06 00 34   cbz	w0, loc_10145fcf0 ; ⤵ 0xc0
0x10145fc34:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145fc38:  78 e3 00 94   bl	0x101498a18
0x10145fc3c:  f5 03 1c aa   mov	x21, x28
0x10145fc40:  fc 03 19 aa   mov	x28, x25
0x10145fc44:  f9 03 00 aa   mov	x25, x0
0x10145fc48:  e0 03 14 aa   mov	x0, x20
0x10145fc4c:  25 41 1b 94   bl	j__objc_msgSend(x0, "hawkeyePayload")
0x10145fc50:  fa 03 00 aa   mov	x26, x0
0x10145fc54:  e0 03 17 aa   mov	x0, x23
0x10145fc58:  02 df 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145fc5c:  fb 03 00 aa   mov	x27, x0
0x10145fc60:  e0 03 14 aa   mov	x0, x20
0x10145fc64:  d7 ee 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x10145fc68:  e2 03 00 aa   mov	x2, x0
0x10145fc6c:  e0 03 13 aa   mov	x0, x19
0x10145fc70:  b4 37 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x10145fc74:  a8 39 00 90   adrp	x8, 0x101b93000
0x10145fc78:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x10145fc7c:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10145fc80:  48 04 81 52   mov	w8, #0x822
0x10145fc84:  e8 33 00 79   strh	w8, [sp, #0x18]
0x10145fc88:  68 52 00 f0   adrp	x8, 0x101eae000
0x10145fc8c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145fc90:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10145fc94:  e8 a3 01 f8   stur	x8, [sp, #0x1a]
0x10145fc98:  28 08 81 52   mov	w8, #0x841
0x10145fc9c:  e8 47 00 79   strh	w8, [sp, #0x22]
0x10145fca0:  f9 43 02 f8   stur	x25, [sp, #0x24]
0x10145fca4:  f9 03 1c aa   mov	x25, x28
0x10145fca8:  fc 03 15 aa   mov	x28, x21
0x10145fcac:  15 89 00 f0   adrp	x21, 0x102582000
0x10145fcb0:  48 08 81 52   mov	w8, #0x842
0x10145fcb4:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x10145fcb8:  fa e3 02 f8   stur	x26, [sp, #0x2e]
0x10145fcbc:  e8 6f 00 79   strh	w8, [sp, #0x36]
0x10145fcc0:  fb 1f 00 f9   str	x27, [sp, #0x38]
0x10145fcc4:  e8 83 00 79   strh	w8, [sp, #0x40]
0x10145fcc8:  e0 23 04 f8   stur	x0, [sp, #0x42]
0x10145fccc:  00 5d ff b0   adrp	x0, 0x100000000
0x10145fcd0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145fcd4:  c3 70 00 b0   adrp	x3, 0x102278000
0x10145fcd8:  63 bc 01 91   add	x3, x3, #0x6f ; "{\"msg%{public}.0s\":\"#durian #hawkeye task\", \"item\":%{private, location:escape_only}@, \"payload\":%{public, location:escape_only}@, \"characteristic\":%{public, location:escape_only}@, \"task\":%{public, lo"...
0x10145fcdc:  e4 43 00 91   add	x4, sp, #0x10
0x10145fce0:  e1 03 18 aa   mov	x1, x24
0x10145fce4:  02 00 80 52   mov	w2, #0
0x10145fce8:  45 07 80 52   mov	w5, #0x3a
0x10145fcec:  41 d5 1a 94   bl	j___os_log_impl
0x10145fcf0:  ; loc_10145fcf0
0x10145fcf0:  78 0e 40 f9   ldr	x24, [x19, #0x18]
0x10145fcf4:  e0 03 14 aa   mov	x0, x20
0x10145fcf8:  fa 40 1b 94   bl	j__objc_msgSend(x0, "hawkeyePayload")
0x10145fcfc:  e2 03 00 aa   mov	x2, x0
0x10145fd00:  e0 03 18 aa   mov	x0, x24

