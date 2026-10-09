0x1015628b0:  28 19 00 90   adrp	x8, 0x101886000
0x1015628b4:  08 45 45 f9   ldr	x8, [x8, #0xa88] ; __got._$sSSN
0x1015628b8:  e8 1e 00 f9   str	x8, [x23, #0x38]
0x1015628bc:  b1 99 aa 97   bl	0x100008f80
0x1015628c0:  e0 22 00 f9   str	x0, [x23, #0x40]
0x1015628c4:  f4 62 02 a9   stp	x20, x24, [x23, #0x20]
0x1015628c8:  e1 54 ff d0   adrp	x1, 0x100000000
0x1015628cc:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x1015628d0:  e3 02 00 d0   adrp	x3, 0x1015c0000
0x1015628d4:  63 e0 32 91   add	x3, x3, #0xcb8 ; "Hole created %@"
0x1015628d8:  e0 03 15 aa   mov	x0, x21
0x1015628dc:  e2 03 16 aa   mov	x2, x22
0x1015628e0:  e4 01 80 52   mov	w4, #0xf
0x1015628e4:  45 00 80 52   mov	w5, #0x2
0x1015628e8:  e6 03 17 aa   mov	x6, x23
0x1015628ec:  65 94 00 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x1015628f0:  e0 03 17 aa   mov	x0, x23
0x1015628f4:  73 a4 00 94   bl	j__swift_release
0x1015628f8:  08 00 00 14   b	loc_101562918 ; ⤵ 0x20
0x1015628fc:  33 19 00 90   adrp	x19, 0x101886000
0x101562900:  73 72 47 f9   ldr	x19, [x19, #0xee0] ; __got.__swiftEmptyArrayStorage
0x101562904:  f8 06 00 b1   adds	x24, x23, #0x1
0x101562908:  03 f5 ff 54   b.lo	loc_1015627a8 ; ⤴ -0x160
0x10156290c:  20 00 20 d4   brk	#0x1
0x101562910:  33 19 00 90   adrp	x19, 0x101886000
0x101562914:  73 72 47 f9   ldr	x19, [x19, #0xee0] ; __got.__swiftEmptyArrayStorage
0x101562918:  ; loc_101562918
0x101562918:  e0 03 13 aa   mov	x0, x19
0x10156291c:  fd 7b 48 a9   ldp	fp, lr, [sp, #0x80]
0x101562920:  f4 4f 47 a9   ldp	x20, x19, [sp, #0x70]
0x101562924:  f6 57 46 a9   ldp	x22, x21, [sp, #0x60]
0x101562928:  f8 5f 45 a9   ldp	x24, x23, [sp, #0x50]
0x10156292c:  fa 67 44 a9   ldp	x26, x25, [sp, #0x40]
0x101562930:  fc 6f 43 a9   ldp	x28, x27, [sp, #0x30]
0x101562934:  ff 43 02 91   add	sp, sp, #0x90
0x101562938:  ff 0f 5f d6   retab
0x10156293c:  20 00 20 d4   brk	#0x1
0x101562940:  20 00 20 d4   brk	#0x1
0x101562944:  20 00 20 d4   brk	#0x1
0x101562948:  1f 05 00 f1   cmp	x8, #0x1
0x10156294c:  e0 97 9f 1a   cset	w0, hi
0x101562950:  e1 03 14 aa   mov	x1, x20
0x101562954:  22 00 80 52   mov	w2, #0x1
0x101562958:  e3 03 13 aa   mov	x3, x19
0x10156295c:  cd bc d7 97   bl	0x100b51c90
0x101562960:  f3 03 00 aa   mov	x19, x0
0x101562964:  46 ff ff 17   b	loc_10156267c ; ⤴ -0x2e8
0x101562968:  20 00 20 d4   brk	#0x1
0x10156296c:  68 0a 40 f9   ldr	x8, [x19, #0x10]
0x101562970:  01 05 00 91   add	x1, x8, #0x1
0x101562974:  00 00 80 52   mov	w0, #0
0x101562978:  22 00 80 52   mov	w2, #0x1
0x10156297c:  e3 03 13 aa   mov	x3, x19
0x101562980:  c4 bc d7 97   bl	0x100b51c90
0x101562984:  f3 03 00 aa   mov	x19, x0
0x101562988:  8f ff ff 17   b	loc_1015627c4 ; ⤴ -0x1c4
0x10156298c:  1f 05 00 f1   cmp	x8, #0x1
0x101562990:  e0 97 9f 1a   cset	w0, hi
0x101562994:  e1 03 14 aa   mov	x1, x20
0x101562998:  22 00 80 52   mov	w2, #0x1
0x10156299c:  e3 03 13 aa   mov	x3, x19
0x1015629a0:  bc bc d7 97   bl	0x100b51c90
0x1015629a4:  f3 03 00 aa   mov	x19, x0
0x1015629a8:  8b ff ff 17   b	loc_1015627d4 ; ⤴ -0x1d4
0x1015629ac:  60 1e 00 d0   adrp	x0, 0x101930000
0x1015629b0:  00 00 2e 91   add	x0, x0, #0xb80 ; data_101930b80 (__DATA.__data)
0x1015629b4:  50 a0 ff d0   adrp	x16, 0x10096c000
0x1015629b8:  10 12 19 91   add	x16, x16, #0x644
0x1015629bc:  f0 23 c1 da   paciza	x16
0x1015629c0:  e1 03 10 aa   mov	x1, x16
0x1015629c4:  33 a4 00 94   bl	j__swift_once
0x1015629c8:  39 ff ff 17   b	loc_1015626ac ; ⤴ -0x31c
0x1015629cc:  60 1e 00 d0   adrp	x0, 0x101930000
0x1015629d0:  00 00 2e 91   add	x0, x0, #0xb80 ; data_101930b80 (__DATA.__data)
0x1015629d4:  50 a0 ff d0   adrp	x16, 0x10096c000
0x1015629d8:  10 12 19 91   add	x16, x16, #0x644
0x1015629dc:  f0 23 c1 da   paciza	x16
0x1015629e0:  e1 03 10 aa   mov	x1, x16
0x1015629e4:  2b a4 00 94   bl	j__swift_once
0x1015629e8:  89 ff ff 17   b	loc_10156280c ; ⤴ -0x1dc

sub_1015629ec:
0x1015629ec:  7f 23 03 d5   pacibsp
0x1015629f0:  ff c3 00 d1   sub	sp, sp, #0x30
0x1015629f4:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x1015629f8:  fd 83 00 91   add	fp, sp, #0x20
0x1015629fc:  82 0e 41 a9   ldp	x2, x3, [x20, #0x10]
0x101562a00:  84 16 42 a9   ldp	x4, x5, [x20, #0x20]
0x101562a04:  86 1e 43 a9   ldp	x6, x7, [x20, #0x30]
0x101562a08:  88 26 44 a9   ldp	x8, x9, [x20, #0x40]
0x101562a0c:  8a 42 41 39   ldrb	w10, [x20, #0x50]
0x101562a10:  8b 2e 40 f9   ldr	x11, [x20, #0x58]
0x101562a14:  eb 0f 00 f9   str	x11, [sp, #0x18]
0x101562a18:  ea 43 00 39   strb	w10, [sp, #0x10]
0x101562a1c:  e8 27 00 a9   stp	x8, x9, [sp]
0x101562a20:  d0 c7 ff 97   bl	0x101554960
0x101562a24:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x101562a28:  ff c3 00 91   add	sp, sp, #0x30
0x101562a2c:  ff 0f 5f d6   retab

sub_101562a30:
0x101562a30:  7f 23 03 d5   pacibsp
0x101562a34:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x101562a38:  fd 03 00 91   mov	fp, sp
0x101562a3c:  82 0e 41 a9   ldp	x2, x3, [x20, #0x10]
0x101562a40:  84 16 42 a9   ldp	x4, x5, [x20, #0x20]
0x101562a44:  68 c8 ff 97   bl	0x101554be4
0x101562a48:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x101562a4c:  ff 0f 5f d6   retab

sub_101562a50:
0x101562a50:  30 19 00 90   adrp	x16, 0x101886000
0x101562a54:  10 5e 41 f9   ldr	x16, [x16, #0x2b8] ; __got._$s10Foundation3URLVMa
0x101562a58:  11 73 86 d2   mov	x17, #0x3398
0x101562a5c:  30 02 c1 da   pacia	x16, x17
0x101562a60:  e0 03 10 aa   mov	x0, x16
0x101562a64:  21 00 80 52   mov	w1, #0x1
0x101562a68:  b9 04 00 14   b	0x101563d4c

sub_101562a6c:
0x101562a6c:  88 1f 00 b0   adrp	x8, 0x101953000
0x101562a70:  00 b9 44 f9   ldr	x0, [x8, #0x970] ; data_101953970 (__DATA.__data)
0x101562a74:  40 00 00 b4   cbz	x0, loc_101562a7c ; ⤵ 0x8
0x101562a78:  c0 03 5f d6   ret
0x101562a7c:  ; loc_101562a7c
0x101562a7c:  7f 23 03 d5   pacibsp
0x101562a80:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x101562a84:  fd 03 00 91   mov	fp, sp
0x101562a88:  61 1a 00 b0   adrp	x1, 0x1018af000
0x101562a8c:  21 80 06 91   add	x1, x1, #0x1a0
0x101562a90:  b0 05 00 f0   adrp	x16, 0x101619000
0x101562a94:  10 32 0c 91   add	x16, x16, #0x30c ; "\xdd\xdf&"
0x101562a98:  71 dd 98 d2   mov	x17, #0xc6eb
0x101562a9c:  30 0a c1 da   pacda	x16, x17
0x101562aa0:  e0 03 10 aa   mov	x0, x16
0x101562aa4:  d3 a3 00 94   bl	j__swift_getWitnessTable
0x101562aa8:  88 1f 00 b0   adrp	x8, 0x101953000
0x101562aac:  08 c1 25 91   add	x8, x8, #0x970 ; data_101953970 (__DATA.__data)
0x101562ab0:  00 fd 9f c8   stlr	x0, [x8]
0x101562ab4:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x101562ab8:  ff 23 03 d5   autibsp
0x101562abc:  c0 03 5f d6   ret

sub_101562ac0:
0x101562ac0:  7f 23 03 d5   pacibsp
0x101562ac4:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101562ac8:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101562acc:  fd 43 00 91   add	fp, sp, #0x10
0x101562ad0:  f3 03 00 aa   mov	x19, x0
0x101562ad4:  81 1c 00 b0   adrp	x1, 0x1018f3000
0x101562ad8:  21 00 14 91   add	x1, x1, #0x500 ; data_1018f3500 (__DATA_CONST.__const)
0x101562adc:  15 a3 00 94   bl	j__swift_cvw_destroy

