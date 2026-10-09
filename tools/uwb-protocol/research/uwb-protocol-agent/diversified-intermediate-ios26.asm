
sub_100b6c994:
0x100b6c994:  7f 23 03 d5   pacibsp
0x100b6c998:  ff 43 03 d1   sub	sp, sp, #0xd0
0x100b6c99c:  fc 3b 00 f9   str	x28, [sp, #0x70]
0x100b6c9a0:  fb 6b 08 a9   stp	x27, x26, [sp, #0x80]
0x100b6c9a4:  f9 63 09 a9   stp	x25, x24, [sp, #0x90]
0x100b6c9a8:  f7 5b 0a a9   stp	x23, x22, [sp, #0xa0]
0x100b6c9ac:  f4 4f 0b a9   stp	x20, x19, [sp, #0xb0]
0x100b6c9b0:  fd 7b 0c a9   stp	fp, lr, [sp, #0xc0]
0x100b6c9b4:  fd 03 03 91   add	fp, sp, #0xc0
0x100b6c9b8:  f3 03 15 aa   mov	x19, x21
0x100b6c9bc:  e7 03 05 a9   stp	x7, x0, [sp, #0x50]
0x100b6c9c0:  fb 03 06 aa   mov	x27, x6
0x100b6c9c4:  f6 03 05 aa   mov	x22, x5
0x100b6c9c8:  f9 03 04 aa   mov	x25, x4
0x100b6c9cc:  f7 03 03 aa   mov	x23, x3
0x100b6c9d0:  f8 03 02 aa   mov	x24, x2
0x100b6c9d4:  fc 03 01 aa   mov	x28, x1
0x100b6c9d8:  e8 27 00 f9   str	x8, [sp, #0x48]
0x100b6c9dc:  c8 6e 00 b0   adrp	x8, 0x101945000
0x100b6c9e0:  08 61 40 f9   ldr	x8, [x8, #0xc0] ; data_1019450c0 (__DATA.__data)
0x100b6c9e4:  1f 05 00 b1   cmn	x8, #0x1
0x100b6c9e8:  e1 1c 00 54   b.ne	loc_100b6cd84 ; ⤵ 0x39c
0x100b6c9ec:  ; loc_100b6c9ec
0x100b6c9ec:  9a 0e 80 d2   mov	x26, #0x74
0x100b6c9f0:  1a 20 fd f2   movk	x26, #0xe900, lsl #0x30
0x100b6c9f4:  c8 6e 00 b0   adrp	x8, 0x101945000
0x100b6c9f8:  14 41 40 f9   ldr	x20, [x8, #0x80] ; data_101945080 (__DATA.__data)
0x100b6c9fc:  a8 ce 8d d2   mov	x8, #0x6e75
0x100b6ca00:  88 ac ac f2   movk	x8, #0x6564, lsl #0x10
0x100b6ca04:  48 8e ca f2   movk	x8, #0x5472, lsl #0x20
0x100b6ca08:  a8 6c ee f2   movk	x8, #0x7365, lsl #0x30
0x100b6ca0c:  e8 6b 06 a9   stp	x8, x26, [sp, #0x60]
0x100b6ca10:  c3 68 00 d0   adrp	x3, 0x101886000
0x100b6ca14:  63 ac 45 f9   ldr	x3, [x3, #0xb58] ; __got._$sSbN
0x100b6ca18:  f0 28 00 90   adrp	x16, 0x101088000
0x100b6ca1c:  10 82 3e 91   add	x16, x16, #0xfa0
0x100b6ca20:  f1 41 8e d2   mov	x17, #0x720f
0x100b6ca24:  30 02 c1 da   pacia	x16, x17
0x100b6ca28:  e1 03 10 aa   mov	x1, x16
0x100b6ca2c:  a8 07 01 d1   sub	x8, fp, #0x41
0x100b6ca30:  e0 83 01 91   add	x0, sp, #0x60
0x100b6ca34:  02 00 80 d2   mov	x2, #0
0x100b6ca38:  92 5f 28 94   bl	j__$s10FindMyBase16SynchronousCacheC11cachedValue3key12computeBlockqd__x_qd__yXEts8SendableRd__lF
0x100b6ca3c:  1b 02 00 37   tbnz	w27, #0, loc_100b6ca7c ; ⤵ 0x40
0x100b6ca40:  a8 f3 5b 38   ldurb	w8, [fp, #-0x41]
0x100b6ca44:  c8 01 00 35   cbnz	w8, loc_100b6ca7c ; ⤵ 0x38
0x100b6ca48:  c8 68 00 d0   adrp	x8, 0x101886000
0x100b6ca4c:  00 59 40 f9   ldr	x0, [x8, #0xb0] ; __got._OBJC_CLASS_$_FMSystemInfo
0x100b6ca50:  e4 79 28 94   bl	j__objc_opt_self
0x100b6ca54:  53 95 28 94   bl	j__objc_msgSend(x0, "sharedInstance")
0x100b6ca58:  fd 03 1d aa   mov	fp, fp
0x100b6ca5c:  25 7a 28 94   bl	j__objc_retainAutoreleasedReturnValue
0x100b6ca60:  f3 03 00 aa   mov	x19, x0
0x100b6ca64:  5f 88 28 94   bl	j__objc_msgSend(x0, "isInternalBuild")
0x100b6ca68:  f4 03 00 aa   mov	x20, x0
0x100b6ca6c:  e9 79 28 94   bl	j__objc_release_x19
0x100b6ca70:  74 04 00 34   cbz	w20, loc_100b6cafc ; ⤵ 0x8c
0x100b6ca74:  c3 72 28 94   bl	j__$sSo13os_log_type_ta0A0E5faultABvgZ
0x100b6ca78:  22 00 00 14   b	loc_100b6cb00 ; ⤵ 0x88
0x100b6ca7c:  ; loc_100b6ca7c
0x100b6ca7c:  e0 03 19 aa   mov	x0, x25
0x100b6ca80:  e1 03 16 aa   mov	x1, x22
0x100b6ca84:  22 00 80 52   mov	w2, #0x1
0x100b6ca88:  f5 03 13 aa   mov	x21, x19
0x100b6ca8c:  15 fc ff 97   bl	0x100b6bae0
0x100b6ca90:  f3 03 15 aa   mov	x19, x21
0x100b6ca94:  f5 0b 00 b5   cbnz	x21, loc_100b6cc10 ; ⤵ 0x17c
0x100b6ca98:  f6 03 00 aa   mov	x22, x0
0x100b6ca9c:  f4 03 01 aa   mov	x20, x1
0x100b6caa0:  80 2c 8d d2   mov	x0, #0x6964
0x100b6caa4:  c0 ae ac f2   movk	x0, #0x6576, lsl #0x10
0x100b6caa8:  40 6e ce f2   movk	x0, #0x7372, lsl #0x20
0x100b6caac:  20 cd ec f2   movk	x0, #0x6669, lsl #0x30
0x100b6cab0:  41 17 00 91   add	x1, x26, #0x5
0x100b6cab4:  0f 70 28 94   bl	j__$sSS10FindMyBaseE8utf8Data10Foundation0E0Vvg
0x100b6cab8:  fb 03 00 aa   mov	x27, x0
0x100b6cabc:  f9 03 01 aa   mov	x25, x1
0x100b6cac0:  e0 03 16 aa   mov	x0, x22
0x100b6cac4:  e1 03 14 aa   mov	x1, x20
0x100b6cac8:  e2 03 1b aa   mov	x2, x27
0x100b6cacc:  e3 03 19 aa   mov	x3, x25
0x100b6cad0:  04 09 80 52   mov	w4, #0x48
0x100b6cad4:  f5 03 13 aa   mov	x21, x19
0x100b6cad8:  d8 10 00 94   bl	0x100b70e38
0x100b6cadc:  f3 03 15 aa   mov	x19, x21
0x100b6cae0:  95 04 00 b4   cbz	x21, loc_100b6cb70 ; ⤵ 0x90
0x100b6cae4:  e0 03 16 aa   mov	x0, x22
0x100b6cae8:  e1 03 14 aa   mov	x1, x20
0x100b6caec:  2d a9 d2 97   bl	0x100016fa0
0x100b6caf0:  e0 03 1b aa   mov	x0, x27
0x100b6caf4:  e1 03 19 aa   mov	x1, x25
0x100b6caf8:  45 00 00 14   b	loc_100b6cc0c ; ⤵ 0x114
0x100b6cafc:  ; loc_100b6cafc
0x100b6cafc:  9d 72 28 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x100b6cb00:  ; loc_100b6cb00
0x100b6cb00:  68 6e 00 b0   adrp	x8, 0x101939000
0x100b6cb04:  08 d9 40 f9   ldr	x8, [x8, #0x1b0] ; data_1019391b0 (__DATA.__data)
0x100b6cb08:  1f 05 00 b1   cmn	x8, #0x1
0x100b6cb0c:  e1 1f 00 54   b.ne	loc_100b6cf08 ; ⤵ 0x3fc
0x100b6cb10:  ; loc_100b6cb10
0x100b6cb10:  c8 74 00 f0   adrp	x8, 0x101a07000
0x100b6cb14:  02 35 43 f9   ldr	x2, [x8, #0x668]
0x100b6cb18:  a1 a4 ff 90   adrp	x1, 0x100000000
0x100b6cb1c:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x100b6cb20:  e3 52 00 d0   adrp	x3, 0x1015ca000
0x100b6cb24:  63 00 05 91   add	x3, x3, #0x140 ; "`derive` called without entitlement. Please make use of BeaconStore.advertisementKeys()."
0x100b6cb28:  c6 68 00 d0   adrp	x6, 0x101886000
0x100b6cb2c:  c6 70 47 f9   ldr	x6, [x6, #0xee0] ; __got.__swiftEmptyArrayStorage
0x100b6cb30:  04 0b 80 52   mov	w4, #0x58
0x100b6cb34:  45 00 80 52   mov	w5, #0x2
0x100b6cb38:  d2 6b 28 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x100b6cb3c:  c2 7f d9 97   bl	0x1001cca44
0x100b6cb40:  e1 03 00 aa   mov	x1, x0
0x100b6cb44:  c0 6a 00 f0   adrp	x0, 0x1018c7000
0x100b6cb48:  00 60 2b 91   add	x0, x0, #0xad8
0x100b6cb4c:  02 00 80 d2   mov	x2, #0
0x100b6cb50:  03 00 80 52   mov	w3, #0
0x100b6cb54:  93 7a 28 94   bl	j__swift_allocError
0x100b6cb58:  f3 03 00 aa   mov	x19, x0
0x100b6cb5c:  68 00 80 52   mov	w8, #0x3
0x100b6cb60:  28 00 00 39   strb	w8, [x1]
0x100b6cb64:  f5 03 00 aa   mov	x21, x0
0x100b6cb68:  72 7c 28 94   bl	j__swift_willThrow
0x100b6cb6c:  29 00 00 14   b	loc_100b6cc10 ; ⤵ 0xa4
0x100b6cb70:  ; loc_100b6cb70
0x100b6cb70:  e8 83 01 91   add	x8, sp, #0x60
0x100b6cb74:  f5 03 13 aa   mov	x21, x19
0x100b6cb78:  9c b2 e6 97   bl	0x1005195e8
0x100b6cb7c:  f3 03 15 aa   mov	x19, x21
0x100b6cb80:  e0 03 1b aa   mov	x0, x27
0x100b6cb84:  e1 03 19 aa   mov	x1, x25
0x100b6cb88:  d5 03 00 b5   cbnz	x21, loc_100b6cc00 ; ⤵ 0x78
0x100b6cb8c:  05 a9 d2 97   bl	0x100016fa0
0x100b6cb90:  fb 6b 46 a9   ldp	x27, x26, [sp, #0x60]
0x100b6cb94:  88 ff 7c d3   lsr	x8, x28, #0x3c
0x100b6cb98:  1f 39 00 f1   cmp	x8, #0xe
0x100b6cb9c:  c9 04 00 54   b.ls	loc_100b6cc34 ; ⤵ 0x98
0x100b6cba0:  e0 03 1b aa   mov	x0, x27
0x100b6cba4:  e1 03 1a aa   mov	x1, x26
0x100b6cba8:  93 b0 d2 97   bl	0x100018df4
0x100b6cbac:  e0 03 18 aa   mov	x0, x24
0x100b6cbb0:  e1 03 17 aa   mov	x1, x23
0x100b6cbb4:  02 00 80 52   mov	w2, #0
0x100b6cbb8:  03 00 80 52   mov	w3, #0
0x100b6cbbc:  f5 03 13 aa   mov	x21, x19
0x100b6cbc0:  25 14 00 94   bl	0x100b71c54
0x100b6cbc4:  f3 03 15 aa   mov	x19, x21
0x100b6cbc8:  35 01 00 b5   cbnz	x21, loc_100b6cbec ; ⤵ 0x24
0x100b6cbcc:  f8 03 00 aa   mov	x24, x0
0x100b6cbd0:  01 00 80 52   mov	w1, #0
0x100b6cbd4:  e2 03 1b aa   mov	x2, x27
0x100b6cbd8:  e3 03 1a aa   mov	x3, x26
0x100b6cbdc:  f5 03 13 aa   mov	x21, x19
0x100b6cbe0:  97 15 00 94   bl	0x100b7223c
0x100b6cbe4:  f3 03 15 aa   mov	x19, x21
0x100b6cbe8:  b5 06 00 b4   cbz	x21, loc_100b6ccbc ; ⤵ 0xd4
0x100b6cbec:  ; loc_100b6cbec
0x100b6cbec:  e0 03 1b aa   mov	x0, x27
0x100b6cbf0:  e1 03 1a aa   mov	x1, x26
0x100b6cbf4:  eb a8 d2 97   bl	0x100016fa0
0x100b6cbf8:  e0 03 1b aa   mov	x0, x27
0x100b6cbfc:  e1 03 1a aa   mov	x1, x26
0x100b6cc00:  ; loc_100b6cc00
0x100b6cc00:  e8 a8 d2 97   bl	0x100016fa0
0x100b6cc04:  ; loc_100b6cc04
0x100b6cc04:  e0 03 16 aa   mov	x0, x22
0x100b6cc08:  e1 03 14 aa   mov	x1, x20
0x100b6cc0c:  ; loc_100b6cc0c
0x100b6cc0c:  e5 a8 d2 97   bl	0x100016fa0
0x100b6cc10:  ; loc_100b6cc10
0x100b6cc10:  f5 03 13 aa   mov	x21, x19
0x100b6cc14:  fd 7b 4c a9   ldp	fp, lr, [sp, #0xc0]
0x100b6cc18:  f4 4f 4b a9   ldp	x20, x19, [sp, #0xb0]
0x100b6cc1c:  f7 5b 4a a9   ldp	x23, x22, [sp, #0xa0]
0x100b6cc20:  f9 63 49 a9   ldp	x25, x24, [sp, #0x90]
0x100b6cc24:  fb 6b 48 a9   ldp	x27, x26, [sp, #0x80]
0x100b6cc28:  fc 3b 40 f9   ldr	x28, [sp, #0x70]
0x100b6cc2c:  ff 43 03 91   add	sp, sp, #0xd0
0x100b6cc30:  ff 0f 5f d6   retab
0x100b6cc34:  ; loc_100b6cc34
0x100b6cc34:  f9 03 1c aa   mov	x25, x28
0x100b6cc38:  fc 2f 40 f9   ldr	x28, [sp, #0x58]
0x100b6cc3c:  e0 03 1c aa   mov	x0, x28
0x100b6cc40:  e1 03 19 aa   mov	x1, x25
0x100b6cc44:  28 10 d3 97   bl	0x100030ce4
0x100b6cc48:  e0 03 1b aa   mov	x0, x27
0x100b6cc4c:  e1 03 1a aa   mov	x1, x26
0x100b6cc50:  69 b0 d2 97   bl	0x100018df4
0x100b6cc54:  e0 03 1c aa   mov	x0, x28
0x100b6cc58:  e1 03 19 aa   mov	x1, x25
0x100b6cc5c:  02 00 80 52   mov	w2, #0
0x100b6cc60:  23 00 80 52   mov	w3, #0x1
0x100b6cc64:  f5 03 13 aa   mov	x21, x19
0x100b6cc68:  fb 13 00 94   bl	0x100b71c54
0x100b6cc6c:  f3 03 15 aa   mov	x19, x21
0x100b6cc70:  35 01 00 b5   cbnz	x21, loc_100b6cc94 ; ⤵ 0x24
0x100b6cc74:  f8 03 00 aa   mov	x24, x0
0x100b6cc78:  21 00 80 52   mov	w1, #0x1
0x100b6cc7c:  e2 03 1b aa   mov	x2, x27
0x100b6cc80:  e3 03 1a aa   mov	x3, x26
0x100b6cc84:  f5 03 13 aa   mov	x21, x19
0x100b6cc88:  6d 15 00 94   bl	0x100b7223c
0x100b6cc8c:  f3 03 15 aa   mov	x19, x21
0x100b6cc90:  95 04 00 b4   cbz	x21, loc_100b6cd20 ; ⤵ 0x90
0x100b6cc94:  ; loc_100b6cc94
0x100b6cc94:  e0 03 1b aa   mov	x0, x27
0x100b6cc98:  e1 03 1a aa   mov	x1, x26
0x100b6cc9c:  c1 a8 d2 97   bl	0x100016fa0
0x100b6cca0:  e0 03 1b aa   mov	x0, x27
0x100b6cca4:  e1 03 1a aa   mov	x1, x26
0x100b6cca8:  be a8 d2 97   bl	0x100016fa0
0x100b6ccac:  e0 03 1c aa   mov	x0, x28
0x100b6ccb0:  e1 03 19 aa   mov	x1, x25
0x100b6ccb4:  c8 66 d2 97   bl	0x1000067d4
0x100b6ccb8:  d3 ff ff 17   b	loc_100b6cc04 ; ⤴ -0xb4
0x100b6ccbc:  ; loc_100b6ccbc
0x100b6ccbc:  f7 03 00 aa   mov	x23, x0
0x100b6ccc0:  e0 03 18 aa   mov	x0, x24
0x100b6ccc4:  fb 77 28 94   bl	j__CCECCryptorRelease
0x100b6ccc8:  e0 03 1b aa   mov	x0, x27
0x100b6cccc:  e1 03 1a aa   mov	x1, x26
0x100b6ccd0:  b4 a8 d2 97   bl	0x100016fa0
0x100b6ccd4:  e0 03 17 aa   mov	x0, x23
0x100b6ccd8:  01 00 80 52   mov	w1, #0
0x100b6ccdc:  02 00 80 52   mov	w2, #0
0x100b6cce0:  f5 03 13 aa   mov	x21, x19
0x100b6cce4:  a4 06 00 94   bl	0x100b6e774
0x100b6cce8:  f3 03 15 aa   mov	x19, x21
0x100b6ccec:  35 10 00 b5   cbnz	x21, loc_100b6cef0 ; ⤵ 0x204
0x100b6ccf0:  f9 03 00 aa   mov	x25, x0
0x100b6ccf4:  f8 03 01 aa   mov	x24, x1
0x100b6ccf8:  3f b0 d2 97   bl	0x100018df4
0x100b6ccfc:  e0 03 19 aa   mov	x0, x25
0x100b6cd00:  e1 03 18 aa   mov	x1, x24
0x100b6cd04:  f5 03 13 aa   mov	x21, x19
0x100b6cd08:  34 d5 e6 97   bl	0x1005221d8
0x100b6cd0c:  f3 03 15 aa   mov	x19, x21
0x100b6cd10:  b5 04 00 b4   cbz	x21, loc_100b6cda4 ; ⤵ 0x94
0x100b6cd14:  e0 03 19 aa   mov	x0, x25
0x100b6cd18:  e1 03 18 aa   mov	x1, x24
0x100b6cd1c:  51 00 00 14   b	loc_100b6ce60 ; ⤵ 0x144
0x100b6cd20:  ; loc_100b6cd20
0x100b6cd20:  f7 03 00 aa   mov	x23, x0
0x100b6cd24:  e0 03 18 aa   mov	x0, x24
0x100b6cd28:  e2 77 28 94   bl	j__CCECCryptorRelease
0x100b6cd2c:  e0 03 1b aa   mov	x0, x27
0x100b6cd30:  e1 03 1a aa   mov	x1, x26
0x100b6cd34:  9b a8 d2 97   bl	0x100016fa0
0x100b6cd38:  e0 03 17 aa   mov	x0, x23
0x100b6cd3c:  21 00 80 52   mov	w1, #0x1
0x100b6cd40:  02 00 80 52   mov	w2, #0
0x100b6cd44:  f5 03 13 aa   mov	x21, x19
0x100b6cd48:  8b 06 00 94   bl	0x100b6e774
0x100b6cd4c:  f3 03 15 aa   mov	x19, x21
0x100b6cd50:  b5 0c 00 b5   cbnz	x21, loc_100b6cee4 ; ⤵ 0x194
0x100b6cd54:  f8 03 00 aa   mov	x24, x0
0x100b6cd58:  e1 23 00 f9   str	x1, [sp, #0x40]
0x100b6cd5c:  e0 03 17 aa   mov	x0, x23
0x100b6cd60:  01 00 80 52   mov	w1, #0
0x100b6cd64:  02 00 80 52   mov	w2, #0
0x100b6cd68:  f5 03 13 aa   mov	x21, x19
0x100b6cd6c:  82 06 00 94   bl	0x100b6e774
0x100b6cd70:  f3 03 15 aa   mov	x19, x21
0x100b6cd74:  b5 07 00 b4   cbz	x21, loc_100b6ce68 ; ⤵ 0xf4
0x100b6cd78:  e0 03 18 aa   mov	x0, x24
0x100b6cd7c:  e1 23 40 f9   ldr	x1, [sp, #0x40]
0x100b6cd80:  58 00 00 14   b	loc_100b6cee0 ; ⤵ 0x160
0x100b6cd84:  ; loc_100b6cd84
0x100b6cd84:  c0 6e 00 b0   adrp	x0, 0x101945000
0x100b6cd88:  00 00 03 91   add	x0, x0, #0xc0 ; data_1019450c0 (__DATA.__data)
0x100b6cd8c:  f0 28 00 90   adrp	x16, 0x101088000
0x100b6cd90:  10 d2 26 91   add	x16, x16, #0x9b4
0x100b6cd94:  f0 23 c1 da   paciza	x16
0x100b6cd98:  e1 03 10 aa   mov	x1, x16
0x100b6cd9c:  3d 7b 28 94   bl	j__swift_once
0x100b6cda0:  13 ff ff 17   b	loc_100b6c9ec ; ⤴ -0x3b4
0x100b6cda4:  ; loc_100b6cda4
0x100b6cda4:  e0 07 02 a9   stp	x0, x1, [sp, #0x20]
0x100b6cda8:  e0 03 17 aa   mov	x0, x23
0x100b6cdac:  c1 77 28 94   bl	j__CCECCryptorRelease
0x100b6cdb0:  e0 03 19 aa   mov	x0, x25
0x100b6cdb4:  e1 03 18 aa   mov	x1, x24
0x100b6cdb8:  7a a8 d2 97   bl	0x100016fa0
0x100b6cdbc:  f9 2f 40 f9   ldr	x25, [sp, #0x58]
0x100b6cdc0:  ; loc_100b6cdc0
0x100b6cdc0:  e8 2b 40 f9   ldr	x8, [sp, #0x50]
0x100b6cdc4:  17 61 40 a9   ldp	x23, x24, [x8]
0x100b6cdc8:  16 51 00 a9   stp	x22, x20, [x8]
0x100b6cdcc:  e0 03 16 aa   mov	x0, x22
0x100b6cdd0:  e1 03 14 aa   mov	x1, x20
0x100b6cdd4:  08 b0 d2 97   bl	0x100018df4
0x100b6cdd8:  e0 03 17 aa   mov	x0, x23
0x100b6cddc:  e1 03 18 aa   mov	x1, x24
0x100b6cde0:  70 a8 d2 97   bl	0x100016fa0
0x100b6cde4:  20 cd 8d d2   mov	x0, #0x6e69
0x100b6cde8:  80 ae ac f2   movk	x0, #0x6574, lsl #0x10
0x100b6cdec:  40 ae cd f2   movk	x0, #0x6d72, lsl #0x20
0x100b6cdf0:  a0 8c ec f2   movk	x0, #0x6465, lsl #0x30
0x100b6cdf4:  21 2d 8c d2   mov	x1, #0x6169
0x100b6cdf8:  81 ae ac f2   movk	x1, #0x6574, lsl #0x10
0x100b6cdfc:  01 80 fd f2   movk	x1, #0xec00, lsl #0x30
0x100b6ce00:  3c 6f 28 94   bl	j__$sSS10FindMyBaseE8utf8Data10Foundation0E0Vvg
0x100b6ce04:  f8 03 00 aa   mov	x24, x0
0x100b6ce08:  f7 03 01 aa   mov	x23, x1
0x100b6ce0c:  e0 03 16 aa   mov	x0, x22
0x100b6ce10:  e1 03 14 aa   mov	x1, x20
0x100b6ce14:  e2 03 18 aa   mov	x2, x24
0x100b6ce18:  e3 03 17 aa   mov	x3, x23
0x100b6ce1c:  04 04 80 52   mov	w4, #0x20
0x100b6ce20:  f5 03 13 aa   mov	x21, x19
0x100b6ce24:  05 10 00 94   bl	0x100b70e38
0x100b6ce28:  f3 03 15 aa   mov	x19, x21
0x100b6ce2c:  d5 00 00 b5   cbnz	x21, loc_100b6ce44 ; ⤵ 0x18
0x100b6ce30:  e8 83 01 91   add	x8, sp, #0x60
0x100b6ce34:  f5 03 13 aa   mov	x21, x19
0x100b6ce38:  64 f7 e6 97   bl	0x10052abc8
0x100b6ce3c:  f3 03 15 aa   mov	x19, x21
0x100b6ce40:  b5 07 00 b4   cbz	x21, loc_100b6cf34 ; ⤵ 0xf4
0x100b6ce44:  ; loc_100b6ce44
0x100b6ce44:  e0 03 18 aa   mov	x0, x24
0x100b6ce48:  e1 03 17 aa   mov	x1, x23
0x100b6ce4c:  55 a8 d2 97   bl	0x100016fa0
0x100b6ce50:  e0 03 19 aa   mov	x0, x25
0x100b6ce54:  e1 03 1c aa   mov	x1, x28
0x100b6ce58:  5f 66 d2 97   bl	0x1000067d4
0x100b6ce5c:  e0 07 42 a9   ldp	x0, x1, [sp, #0x20]
0x100b6ce60:  ; loc_100b6ce60
0x100b6ce60:  50 a8 d2 97   bl	0x100016fa0
0x100b6ce64:  23 00 00 14   b	loc_100b6cef0 ; ⤵ 0x8c
0x100b6ce68:  ; loc_100b6ce68
0x100b6ce68:  e0 63 03 a9   stp	x0, x24, [sp, #0x30]
0x100b6ce6c:  e1 0f 00 f9   str	x1, [sp, #0x18]
0x100b6ce70:  e0 03 18 aa   mov	x0, x24
0x100b6ce74:  f8 23 40 f9   ldr	x24, [sp, #0x40]
0x100b6ce78:  e1 03 18 aa   mov	x1, x24
0x100b6ce7c:  de af d2 97   bl	0x100018df4
0x100b6ce80:  e0 1f 40 f9   ldr	x0, [sp, #0x38]
0x100b6ce84:  e1 03 18 aa   mov	x1, x24
0x100b6ce88:  f5 03 13 aa   mov	x21, x19
0x100b6ce8c:  02 d4 e6 97   bl	0x100521e94
0x100b6ce90:  e0 87 00 a9   stp	x0, x1, [sp, #0x8]
0x100b6ce94:  f3 03 15 aa   mov	x19, x21
0x100b6ce98:  d5 01 00 b5   cbnz	x21, loc_100b6ced0 ; ⤵ 0x38
0x100b6ce9c:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100b6cea0:  f8 0f 40 f9   ldr	x24, [sp, #0x18]
0x100b6cea4:  e1 03 18 aa   mov	x1, x24
0x100b6cea8:  d3 af d2 97   bl	0x100018df4
0x100b6ceac:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100b6ceb0:  e1 03 18 aa   mov	x1, x24
0x100b6ceb4:  f5 03 13 aa   mov	x21, x19
0x100b6ceb8:  c8 d4 e6 97   bl	0x1005221d8
0x100b6cebc:  e0 07 02 a9   stp	x0, x1, [sp, #0x20]
0x100b6cec0:  f3 03 15 aa   mov	x19, x21
0x100b6cec4:  55 07 00 b4   cbz	x21, loc_100b6cfac ; ⤵ 0xe8
0x100b6cec8:  e0 87 40 a9   ldp	x0, x1, [sp, #0x8]
0x100b6cecc:  35 a8 d2 97   bl	0x100016fa0
0x100b6ced0:  ; loc_100b6ced0
0x100b6ced0:  e0 87 43 a9   ldp	x0, x1, [sp, #0x38]
0x100b6ced4:  33 a8 d2 97   bl	0x100016fa0
0x100b6ced8:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100b6cedc:  e1 0f 40 f9   ldr	x1, [sp, #0x18]
0x100b6cee0:  ; loc_100b6cee0
0x100b6cee0:  30 a8 d2 97   bl	0x100016fa0
0x100b6cee4:  ; loc_100b6cee4
0x100b6cee4:  e0 03 1c aa   mov	x0, x28
0x100b6cee8:  e1 03 19 aa   mov	x1, x25
0x100b6ceec:  3a 66 d2 97   bl	0x1000067d4
0x100b6cef0:  ; loc_100b6cef0
0x100b6cef0:  e0 03 16 aa   mov	x0, x22
0x100b6cef4:  e1 03 14 aa   mov	x1, x20
0x100b6cef8:  2a a8 d2 97   bl	0x100016fa0
0x100b6cefc:  e0 03 1b aa   mov	x0, x27
0x100b6cf00:  e1 03 1a aa   mov	x1, x26
0x100b6cf04:  42 ff ff 17   b	loc_100b6cc0c ; ⤴ -0x2f8
0x100b6cf08:  ; loc_100b6cf08
0x100b6cf08:  68 6e 00 b0   adrp	x8, 0x101939000
0x100b6cf0c:  08 c1 06 91   add	x8, x8, #0x1b0 ; data_1019391b0 (__DATA.__data)
0x100b6cf10:  10 00 00 90   adrp	x16, 0x100b6c000
0x100b6cf14:  10 72 3f 91   add	x16, x16, #0xfdc
0x100b6cf18:  f0 23 c1 da   paciza	x16
0x100b6cf1c:  e1 03 10 aa   mov	x1, x16
0x100b6cf20:  f3 03 00 aa   mov	x19, x0
0x100b6cf24:  e0 03 08 aa   mov	x0, x8
0x100b6cf28:  da 7a 28 94   bl	j__swift_once
0x100b6cf2c:  e0 03 13 aa   mov	x0, x19
0x100b6cf30:  f8 fe ff 17   b	loc_100b6cb10 ; ⤴ -0x420
0x100b6cf34:  ; loc_100b6cf34
0x100b6cf34:  e0 03 18 aa   mov	x0, x24
0x100b6cf38:  e1 03 17 aa   mov	x1, x23
0x100b6cf3c:  19 a8 d2 97   bl	0x100016fa0
0x100b6cf40:  e9 23 46 a9   ldp	x9, x8, [sp, #0x60]
0x100b6cf44:  e8 27 05 a9   stp	x8, x9, [sp, #0x50]
0x100b6cf48:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x100b6cf4c:  e0 03 18 aa   mov	x0, x24
0x100b6cf50:  e1 03 17 aa   mov	x1, x23
0x100b6cf54:  a8 af d2 97   bl	0x100018df4
0x100b6cf58:  e0 03 19 aa   mov	x0, x25
0x100b6cf5c:  e1 03 1c aa   mov	x1, x28
0x100b6cf60:  61 0f d3 97   bl	0x100030ce4
0x100b6cf64:  e0 03 19 aa   mov	x0, x25
0x100b6cf68:  e1 03 1c aa   mov	x1, x28
0x100b6cf6c:  1a 66 d2 97   bl	0x1000067d4
0x100b6cf70:  e0 03 18 aa   mov	x0, x24
0x100b6cf74:  e1 03 17 aa   mov	x1, x23
0x100b6cf78:  0a a8 d2 97   bl	0x100016fa0
0x100b6cf7c:  e0 03 16 aa   mov	x0, x22
0x100b6cf80:  e1 03 14 aa   mov	x1, x20
0x100b6cf84:  07 a8 d2 97   bl	0x100016fa0
0x100b6cf88:  e0 03 1b aa   mov	x0, x27
0x100b6cf8c:  e1 03 1a aa   mov	x1, x26
0x100b6cf90:  04 a8 d2 97   bl	0x100016fa0
0x100b6cf94:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x100b6cf98:  e9 2b 45 a9   ldp	x9, x10, [sp, #0x50]
0x100b6cf9c:  0a 25 00 a9   stp	x10, x9, [x8]
0x100b6cfa0:  18 5d 01 a9   stp	x24, x23, [x8, #0x10]
0x100b6cfa4:  19 71 02 a9   stp	x25, x28, [x8, #0x20]
0x100b6cfa8:  1a ff ff 17   b	loc_100b6cc10 ; ⤴ -0x398
0x100b6cfac:  ; loc_100b6cfac
0x100b6cfac:  e0 03 17 aa   mov	x0, x23
0x100b6cfb0:  40 77 28 94   bl	j__CCECCryptorRelease
0x100b6cfb4:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100b6cfb8:  e1 0f 40 f9   ldr	x1, [sp, #0x18]
0x100b6cfbc:  f9 a7 d2 97   bl	0x100016fa0
0x100b6cfc0:  e0 87 43 a9   ldp	x0, x1, [sp, #0x38]
0x100b6cfc4:  f7 a7 d2 97   bl	0x100016fa0
0x100b6cfc8:  e0 03 1c aa   mov	x0, x28
0x100b6cfcc:  e1 03 19 aa   mov	x1, x25
0x100b6cfd0:  01 66 d2 97   bl	0x1000067d4
0x100b6cfd4:  f9 f3 40 a9   ldp	x25, x28, [sp, #0x8]
0x100b6cfd8:  7a ff ff 17   b	loc_100b6cdc0 ; ⤴ -0x218

