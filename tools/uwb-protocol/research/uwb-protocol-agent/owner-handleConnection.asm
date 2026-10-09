
-[CLDurianDeviceManager handleConnectionForPeripheral:]:
0x1014757d8:  7f 23 03 d5   pacibsp
0x1014757dc:  ff 03 05 d1   sub	sp, sp, #0x140
0x1014757e0:  fa 67 0f a9   stp	x26, x25, [sp, #0xf0]
0x1014757e4:  f8 5f 10 a9   stp	x24, x23, [sp, #0x100]
0x1014757e8:  f6 57 11 a9   stp	x22, x21, [sp, #0x110]
0x1014757ec:  f4 4f 12 a9   stp	x20, x19, [sp, #0x120]
0x1014757f0:  fd 7b 13 a9   stp	fp, lr, [sp, #0x130]
0x1014757f4:  fd c3 04 91   add	fp, sp, #0x130
0x1014757f8:  f3 03 02 aa   mov	x19, x2
0x1014757fc:  f4 03 00 aa   mov	x20, x0
0x101475800:  e8 78 00 b0   adrp	x8, 0x102392000
0x101475804:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101475808:  08 01 40 f9   ldr	x8, [x8]
0x10147580c:  a8 83 1b f8   stur	x8, [fp, #-0x48]
0x101475810:  00 e4 00 6f   movi	v0.2d, #0
0x101475814:  e0 03 00 ad   stp	q0, q0, [sp]
0x101475818:  e0 03 01 ad   stp	q0, q0, [sp, #0x20]
0x10147581c:  00 5c 40 f9   ldr	x0, [x0, #0xb8]
0x101475820:  88 1d 1b 94   bl	j__objc_msgSend(x0, "objectEnumerator")
0x101475824:  f5 03 00 aa   mov	x21, x0
0x101475828:  e2 03 00 91   mov	x2, sp
0x10147582c:  e3 a3 01 91   add	x3, sp, #0x68
0x101475830:  04 02 80 52   mov	w4, #0x10
0x101475834:  b3 af 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101475838:  a0 03 00 b4   cbz	x0, loc_1014758ac ; ⤵ 0x74
0x10147583c:  f6 03 00 aa   mov	x22, x0
0x101475840:  e8 0b 40 f9   ldr	x8, [sp, #0x10]
0x101475844:  18 01 40 f9   ldr	x24, [x8]
0x101475848:  ; loc_101475848
0x101475848:  19 00 80 d2   mov	x25, #0
0x10147584c:  ; loc_10147584c
0x10147584c:  e8 0b 40 f9   ldr	x8, [sp, #0x10]
0x101475850:  08 01 40 f9   ldr	x8, [x8]
0x101475854:  1f 01 18 eb   cmp	x8, x24
0x101475858:  60 00 00 54   b.eq	loc_101475864 ; ⤵ 0xc
0x10147585c:  e0 03 15 aa   mov	x0, x21
0x101475860:  a8 81 1a 94   bl	j__objc_enumerationMutation
0x101475864:  ; loc_101475864
0x101475864:  e8 07 40 f9   ldr	x8, [sp, #0x8]
0x101475868:  17 79 79 f8   ldr	x23, [x8, x25, lsl #0x3]
0x10147586c:  e0 03 17 aa   mov	x0, x23
0x101475870:  5c 91 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101475874:  db 29 1b 94   bl	j__objc_msgSend(x0, "possiblePeripherals")
0x101475878:  e2 03 13 aa   mov	x2, x19
0x10147587c:  19 ad 1a 94   bl	j__objc_msgSend(x0, "containsObject:")
0x101475880:  e0 06 00 37   tbnz	w0, #0, loc_10147595c ; ⤵ 0xdc
0x101475884:  39 07 00 91   add	x25, x25, #0x1
0x101475888:  df 02 19 eb   cmp	x22, x25
0x10147588c:  01 fe ff 54   b.ne	loc_10147584c ; ⤴ -0x40
0x101475890:  e2 03 00 91   mov	x2, sp
0x101475894:  e3 a3 01 91   add	x3, sp, #0x68
0x101475898:  e0 03 15 aa   mov	x0, x21
0x10147589c:  04 02 80 52   mov	w4, #0x10
0x1014758a0:  98 af 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x1014758a4:  f6 03 00 aa   mov	x22, x0
0x1014758a8:  00 fd ff b5   cbnz	x0, loc_101475848 ; ⤴ -0x60
0x1014758ac:  ; loc_1014758ac
0x1014758ac:  80 92 40 f9   ldr	x0, [x20, #0x120]
0x1014758b0:  c4 7f 00 b0   adrp	x4, 0x10246e000
0x1014758b4:  84 c0 3f 91   add	x4, x4, #0xff0 ; "nil"
0x1014758b8:  e2 03 13 aa   mov	x2, x19
0x1014758bc:  23 00 80 52   mov	w3, #0x1
0x1014758c0:  18 bc 1a 94   bl	j__objc_msgSend(x0, "didConnectPeripheral:shouldWatchdog:accessoryTypeName:")
0x1014758c4:  68 88 00 b0   adrp	x8, 0x102582000
0x1014758c8:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014758cc:  1f 05 00 b1   cmn	x8, #0x1
0x1014758d0:  01 08 00 54   b.ne	loc_1014759d0 ; ⤵ 0x100
0x1014758d4:  ; loc_1014758d4
0x1014758d4:  68 88 00 b0   adrp	x8, 0x102582000
0x1014758d8:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014758dc:  e0 03 15 aa   mov	x0, x21
0x1014758e0:  01 00 80 52   mov	w1, #0
0x1014758e4:  83 82 1a 94   bl	j__os_log_type_enabled
0x1014758e8:  20 03 00 34   cbz	w0, loc_10147594c ; ⤵ 0x64
0x1014758ec:  e0 03 13 aa   mov	x0, x19
0x1014758f0:  4c eb 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x1014758f4:  49 8c 00 94   bl	0x101498a18
0x1014758f8:  e8 43 00 f0   adrp	x8, 0x101cf4000
0x1014758fc:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101475900:  e0 43 00 bd   str	s0, [sp, #0x40]
0x101475904:  ff 47 00 b9   str	wzr, [sp, #0x44]
0x101475908:  48 04 81 52   mov	w8, #0x822
0x10147590c:  e8 93 00 79   strh	w8, [sp, #0x48]
0x101475910:  c8 51 00 b0   adrp	x8, 0x101eae000
0x101475914:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101475918:  e8 a3 04 f8   stur	x8, [sp, #0x4a]
0x10147591c:  28 08 81 52   mov	w8, #0x841
0x101475920:  e8 a7 00 79   strh	w8, [sp, #0x52]
0x101475924:  e0 43 05 f8   stur	x0, [sp, #0x54]
0x101475928:  40 5c ff f0   adrp	x0, 0x100000000
0x10147592c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101475930:  43 70 00 d0   adrp	x3, 0x10227f000
0x101475934:  63 44 37 91   add	x3, x3, #0xdd1 ; "{\"msg%{public}.0s\":\"#durian disconnect ghost connection\", \"periph\":%{private, location:escape_only}@}"
0x101475938:  e4 03 01 91   add	x4, sp, #0x40
0x10147593c:  e1 03 15 aa   mov	x1, x21
0x101475940:  02 00 80 52   mov	w2, #0
0x101475944:  85 03 80 52   mov	w5, #0x1c
0x101475948:  2a 7e 1a 94   bl	j___os_log_impl
0x10147594c:  ; loc_10147594c
0x10147594c:  80 6e 40 f9   ldr	x0, [x20, #0xd8]
0x101475950:  e2 03 13 aa   mov	x2, x19
0x101475954:  5b a0 1a 94   bl	j__objc_msgSend(x0, "cancelPeripheralConnection:")
0x101475958:  11 00 00 14   b	loc_10147599c ; ⤵ 0x44
0x10147595c:  ; loc_10147595c
0x10147595c:  e0 03 14 aa   mov	x0, x20
0x101475960:  e2 03 17 aa   mov	x2, x23
0x101475964:  bf 7d 1b 94   bl	j__objc_msgSend(x0, "shouldWatchdogConnectionforDevice:")
0x101475968:  f5 03 00 aa   mov	x21, x0
0x10147596c:  96 92 40 f9   ldr	x22, [x20, #0x120]
0x101475970:  e0 03 17 aa   mov	x0, x23
0x101475974:  53 90 1a 94   bl	j__objc_msgSend(x0, "accessoryTypeName")
0x101475978:  e4 03 00 aa   mov	x4, x0
0x10147597c:  e0 03 16 aa   mov	x0, x22
0x101475980:  e2 03 13 aa   mov	x2, x19
0x101475984:  e3 03 15 aa   mov	x3, x21
0x101475988:  e6 bb 1a 94   bl	j__objc_msgSend(x0, "didConnectPeripheral:shouldWatchdog:accessoryTypeName:")
0x10147598c:  e0 03 14 aa   mov	x0, x20
0x101475990:  e2 03 13 aa   mov	x2, x19
0x101475994:  e3 03 17 aa   mov	x3, x23
0x101475998:  82 e2 1a 94   bl	j__objc_msgSend(x0, "handleConnectedPeripheral:forDevice:")
0x10147599c:  ; loc_10147599c
0x10147599c:  a8 83 5b f8   ldur	x8, [fp, #-0x48]
0x1014759a0:  e9 78 00 b0   adrp	x9, 0x102392000
0x1014759a4:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x1014759a8:  29 01 40 f9   ldr	x9, [x9]
0x1014759ac:  3f 01 08 eb   cmp	x9, x8
0x1014759b0:  41 01 00 54   b.ne	loc_1014759d8 ; ⤵ 0x28
0x1014759b4:  fd 7b 53 a9   ldp	fp, lr, [sp, #0x130]
0x1014759b8:  f4 4f 52 a9   ldp	x20, x19, [sp, #0x120]
0x1014759bc:  f6 57 51 a9   ldp	x22, x21, [sp, #0x110]
0x1014759c0:  f8 5f 50 a9   ldp	x24, x23, [sp, #0x100]
0x1014759c4:  fa 67 4f a9   ldp	x26, x25, [sp, #0xf0]
0x1014759c8:  ff 03 05 91   add	sp, sp, #0x140
0x1014759cc:  ff 0f 5f d6   retab
0x1014759d0:  ; loc_1014759d0
0x1014759d0:  03 6a 1a 94   bl	0x101b101dc
0x1014759d4:  c0 ff ff 17   b	loc_1014758d4 ; ⤴ -0x100
0x1014759d8:  ; loc_1014759d8
0x1014759d8:  da 7d 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager deviceTravelTimeMetricsOnConnection:]:
0x1014759dc:  7f 23 03 d5   pacibsp
0x1014759e0:  ff c3 01 d1   sub	sp, sp, #0x70
0x1014759e4:  e9 23 03 6d   stp	d9, d8, [sp, #0x30]
0x1014759e8:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x1014759ec:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x1014759f0:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x1014759f4:  fd 83 01 91   add	fp, sp, #0x60
0x1014759f8:  f4 03 02 aa   mov	x20, x2
0x1014759fc:  f3 03 00 aa   mov	x19, x0
0x101475a00:  e8 78 00 b0   adrp	x8, 0x102392000
0x101475a04:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101475a08:  08 01 40 f9   ldr	x8, [x8]
0x101475a0c:  e8 17 00 f9   str	x8, [sp, #0x28]
0x101475a10:  70 6f 1a 94   bl	j__CFAbsoluteTimeGetCurrent
0x101475a14:  08 1c a0 4e   mov	v8.16b, v0.16b
0x101475a18:  68 86 40 f9   ldr	x8, [x19, #0x108]
0x101475a1c:  1f 05 00 f1   cmp	x8, #0x1
0x101475a20:  40 03 00 54   b.eq	loc_101475a88 ; ⤵ 0x68
0x101475a24:  68 07 00 b5   cbnz	x8, loc_101475b10 ; ⤵ 0xec
0x101475a28:  68 88 00 b0   adrp	x8, 0x102582000
0x101475a2c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101475a30:  1f 05 00 b1   cmn	x8, #0x1
0x101475a34:  21 1a 00 54   b.ne	loc_101475d78 ; ⤵ 0x344
0x101475a38:  ; loc_101475a38
0x101475a38:  68 88 00 b0   adrp	x8, 0x102582000
0x101475a3c:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101475a40:  e0 03 13 aa   mov	x0, x19
0x101475a44:  41 00 80 52   mov	w1, #0x2
0x101475a48:  2a 82 1a 94   bl	j__os_log_type_enabled
0x101475a4c:  a0 13 00 34   cbz	w0, loc_101475cc0 ; ⤵ 0x274
0x101475a50:  e8 43 00 f0   adrp	x8, 0x101cf4000
0x101475a54:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101475a58:  e0 03 00 bd   str	s0, [sp]
0x101475a5c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101475a60:  48 04 81 52   mov	w8, #0x822
0x101475a64:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101475a68:  c8 51 00 b0   adrp	x8, 0x101eae000
0x101475a6c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101475a70:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101475a74:  40 5c ff f0   adrp	x0, 0x100000000
0x101475a78:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101475a7c:  43 70 00 d0   adrp	x3, 0x10227f000
0x101475a80:  63 dc 38 91   add	x3, x3, #0xe37 ; "{\"msg%{public}.0s\":\"#durian #lwt #metrics dailyTimeTravel visit unset, not submitting\"}"
0x101475a84:  1c 00 00 14   b	loc_101475af4 ; ⤵ 0x70
0x101475a88:  ; loc_101475a88
0x101475a88:  e0 03 14 aa   mov	x0, x20
0x101475a8c:  fd 24 1b 94   bl	j__objc_msgSend(x0, "outsideVisitStartTime")
0x101475a90:  08 20 60 1e   fcmp	d0, #0.00000000
0x101475a94:  c1 03 00 54   b.ne	loc_101475b0c ; ⤵ 0x78
0x101475a98:  68 88 00 b0   adrp	x8, 0x102582000
0x101475a9c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101475aa0:  1f 05 00 b1   cmn	x8, #0x1
0x101475aa4:  e1 16 00 54   b.ne	loc_101475d80 ; ⤵ 0x2dc
0x101475aa8:  ; loc_101475aa8
0x101475aa8:  68 88 00 b0   adrp	x8, 0x102582000
0x101475aac:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101475ab0:  e0 03 13 aa   mov	x0, x19
0x101475ab4:  41 00 80 52   mov	w1, #0x2
0x101475ab8:  0e 82 1a 94   bl	j__os_log_type_enabled
0x101475abc:  20 10 00 34   cbz	w0, loc_101475cc0 ; ⤵ 0x204
0x101475ac0:  e8 43 00 f0   adrp	x8, 0x101cf4000
0x101475ac4:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101475ac8:  e0 03 00 bd   str	s0, [sp]
0x101475acc:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101475ad0:  48 04 81 52   mov	w8, #0x822
0x101475ad4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101475ad8:  c8 51 00 b0   adrp	x8, 0x101eae000
0x101475adc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101475ae0:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101475ae4:  40 5c ff f0   adrp	x0, 0x100000000
0x101475ae8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101475aec:  43 70 00 d0   adrp	x3, 0x10227f000
0x101475af0:  63 3c 3a 91   add	x3, x3, #0xe8f ; "{\"msg%{public}.0s\":\"#durian #lwt #metrics dailyTimeTravel first inside visit, no traveling snapshot, not submitting\"}"
0x101475af4:  ; loc_101475af4
0x101475af4:  e4 03 00 91   mov	x4, sp
0x101475af8:  e1 03 13 aa   mov	x1, x19
0x101475afc:  42 00 80 52   mov	w2, #0x2
0x101475b00:  45 02 80 52   mov	w5, #0x12
0x101475b04:  ; loc_101475b04
0x101475b04:  bb 7d 1a 94   bl	j___os_log_impl
0x101475b08:  6e 00 00 14   b	loc_101475cc0 ; ⤵ 0x1b8
0x101475b0c:  ; loc_101475b0c
0x101475b0c:  68 86 40 f9   ldr	x8, [x19, #0x108]
0x101475b10:  ; loc_101475b10
0x101475b10:  1f 09 00 f1   cmp	x8, #0x2
0x101475b14:  81 05 00 54   b.ne	loc_101475bc4 ; ⤵ 0xb0
0x101475b18:  e0 03 14 aa   mov	x0, x20
0x101475b1c:  d9 24 1b 94   bl	j__objc_msgSend(x0, "outsideVisitStartTime")
0x101475b20:  08 20 60 1e   fcmp	d0, #0.00000000
0x101475b24:  e1 04 00 54   b.ne	loc_101475bc0 ; ⤵ 0x9c
0x101475b28:  e0 03 14 aa   mov	x0, x20
0x101475b2c:  00 1d a8 4e   mov	v0.16b, v8.16b
0x101475b30:  5c 68 1b 94   bl	j__objc_msgSend(x0, "setOutsideVisitStartTime:")
0x101475b34:  68 88 00 b0   adrp	x8, 0x102582000
0x101475b38:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101475b3c:  1f 05 00 b1   cmn	x8, #0x1
0x101475b40:  41 12 00 54   b.ne	loc_101475d88 ; ⤵ 0x248
0x101475b44:  ; loc_101475b44
0x101475b44:  68 88 00 b0   adrp	x8, 0x102582000
0x101475b48:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101475b4c:  e0 03 15 aa   mov	x0, x21
0x101475b50:  41 00 80 52   mov	w1, #0x2
0x101475b54:  e7 81 1a 94   bl	j__os_log_type_enabled
0x101475b58:  00 0b 00 34   cbz	w0, loc_101475cb8 ; ⤵ 0x160
0x101475b5c:  e0 03 14 aa   mov	x0, x20
0x101475b60:  98 a1 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101475b64:  ad 8b 00 94   bl	0x101498a18
0x101475b68:  e8 43 00 f0   adrp	x8, 0x101cf4000
0x101475b6c:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101475b70:  e0 03 00 bd   str	s0, [sp]
0x101475b74:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101475b78:  48 04 81 52   mov	w8, #0x822
0x101475b7c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101475b80:  c8 51 00 b0   adrp	x8, 0x101eae000
0x101475b84:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101475b88:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101475b8c:  28 08 81 52   mov	w8, #0x841
0x101475b90:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101475b94:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101475b98:  40 5c ff f0   adrp	x0, 0x100000000
0x101475b9c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101475ba0:  43 70 00 d0   adrp	x3, 0x10227f000
0x101475ba4:  63 14 3c 91   add	x3, x3, #0xf05 ; "{\"msg%{public}.0s\":\"#durian #lwt #metrics dailyTimeTravel first conn attempt outside visit\", \"item\":%{private, location:escape_only}@}"
0x101475ba8:  e4 03 00 91   mov	x4, sp
0x101475bac:  e1 03 15 aa   mov	x1, x21
0x101475bb0:  42 00 80 52   mov	w2, #0x2
0x101475bb4:  85 03 80 52   mov	w5, #0x1c
0x101475bb8:  8e 7d 1a 94   bl	j___os_log_impl
0x101475bbc:  3f 00 00 14   b	loc_101475cb8 ; ⤵ 0xfc
0x101475bc0:  ; loc_101475bc0
0x101475bc0:  68 86 40 f9   ldr	x8, [x19, #0x108]
0x101475bc4:  ; loc_101475bc4
0x101475bc4:  1f 05 00 f1   cmp	x8, #0x1
0x101475bc8:  81 07 00 54   b.ne	loc_101475cb8 ; ⤵ 0xf0
0x101475bcc:  e0 03 14 aa   mov	x0, x20
0x101475bd0:  ac 24 1b 94   bl	j__objc_msgSend(x0, "outsideVisitStartTime")
0x101475bd4:  08 20 60 1e   fcmp	d0, #0.00000000
0x101475bd8:  00 07 00 54   b.eq	loc_101475cb8 ; ⤵ 0xe0
0x101475bdc:  e0 03 14 aa   mov	x0, x20
0x101475be0:  a8 24 1b 94   bl	j__objc_msgSend(x0, "outsideVisitStartTime")
0x101475be4:  09 39 60 1e   fsub	d9, d8, d0
0x101475be8:  28 21 60 1e   fcmp	d9, #0.00000000
0x101475bec:  24 08 00 54   b.mi	loc_101475cf0 ; ⤵ 0x104
0x101475bf0:  e0 03 14 aa   mov	x0, x20
0x101475bf4:  f3 95 1b 94   bl	j__objc_msgSend(x0, "totalDailyTimeSpentTraveling")
0x101475bf8:  28 29 60 1e   fadd	d8, d9, d0
0x101475bfc:  e0 03 14 aa   mov	x0, x20
0x101475c00:  00 1d a8 4e   mov	v0.16b, v8.16b
0x101475c04:  f7 74 1b 94   bl	j__objc_msgSend(x0, "setTotalDailyTimeSpentTraveling:")
0x101475c08:  68 88 00 b0   adrp	x8, 0x102582000
0x101475c0c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101475c10:  1f 05 00 b1   cmn	x8, #0x1
0x101475c14:  e1 0b 00 54   b.ne	loc_101475d90 ; ⤵ 0x17c
0x101475c18:  ; loc_101475c18
0x101475c18:  68 88 00 b0   adrp	x8, 0x102582000
0x101475c1c:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101475c20:  e0 03 15 aa   mov	x0, x21
0x101475c24:  41 00 80 52   mov	w1, #0x2
0x101475c28:  b2 81 1a 94   bl	j__os_log_type_enabled
0x101475c2c:  00 04 00 34   cbz	w0, loc_101475cac ; ⤵ 0x80
0x101475c30:  e0 03 14 aa   mov	x0, x20
0x101475c34:  63 a1 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101475c38:  78 8b 00 94   bl	0x101498a18
0x101475c3c:  28 01 78 1e   fcvtzs	w8, d9
0x101475c40:  09 01 78 1e   fcvtzs	w9, d8
0x101475c44:  ea 43 00 f0   adrp	x10, 0x101cf4000
0x101475c48:  40 7d 46 fd   ldr	d0, [x10, #0xcf8]
0x101475c4c:  e0 03 00 bd   str	s0, [sp]
0x101475c50:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101475c54:  4a 04 81 52   mov	w10, #0x822
0x101475c58:  ea 13 00 79   strh	w10, [sp, #0x8]
0x101475c5c:  ca 51 00 b0   adrp	x10, 0x101eae000
0x101475c60:  4a e1 02 91   add	x10, x10, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101475c64:  ea a3 00 f8   stur	x10, [sp, #0xa]
0x101475c68:  2a 08 81 52   mov	w10, #0x841
0x101475c6c:  ea 27 00 79   strh	w10, [sp, #0x12]
0x101475c70:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101475c74:  4a 80 80 52   mov	w10, #0x402
0x101475c78:  ea 3b 00 79   strh	w10, [sp, #0x1c]
0x101475c7c:  e8 e3 01 b8   stur	w8, [sp, #0x1e]
0x101475c80:  ea 47 00 79   strh	w10, [sp, #0x22]
0x101475c84:  e9 27 00 b9   str	w9, [sp, #0x24]
0x101475c88:  40 5c ff f0   adrp	x0, 0x100000000
0x101475c8c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101475c90:  43 70 00 f0   adrp	x3, 0x102280000
0x101475c94:  63 58 00 91   add	x3, x3, #0x16 ; "{\"msg%{public}.0s\":\"#durian #lwt #metrics dailyTimeTravel tally time connected+outside, now inside\", \"item\":%{private, location:escape_only}@, \"addedTravelTime\":%{public}d, \"totalTravelTime\":%{public}"...
0x101475c98:  e4 03 00 91   mov	x4, sp
0x101475c9c:  e1 03 15 aa   mov	x1, x21
0x101475ca0:  42 00 80 52   mov	w2, #0x2
0x101475ca4:  05 05 80 52   mov	w5, #0x28
0x101475ca8:  52 7d 1a 94   bl	j___os_log_impl
0x101475cac:  ; loc_101475cac
0x101475cac:  00 e4 00 6f   movi	v0.2d, #0
0x101475cb0:  e0 03 14 aa   mov	x0, x20
0x101475cb4:  fb 67 1b 94   bl	j__objc_msgSend(x0, "setOutsideVisitStartTime:")
0x101475cb8:  ; loc_101475cb8
0x101475cb8:  e0 03 13 aa   mov	x0, x19
0x101475cbc:  51 2b 1b 94   bl	j__objc_msgSend(x0, "processAndSubmitDeviceTravelTimeMetrics")
0x101475cc0:  ; loc_101475cc0
0x101475cc0:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101475cc4:  e9 78 00 b0   adrp	x9, 0x102392000
0x101475cc8:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101475ccc:  29 01 40 f9   ldr	x9, [x9]
0x101475cd0:  3f 01 08 eb   cmp	x9, x8
0x101475cd4:  61 06 00 54   b.ne	loc_101475da0 ; ⤵ 0xcc
0x101475cd8:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101475cdc:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101475ce0:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101475ce4:  e9 23 43 6d   ldp	d9, d8, [sp, #0x30]
0x101475ce8:  ff c3 01 91   add	sp, sp, #0x70
0x101475cec:  ff 0f 5f d6   retab
0x101475cf0:  ; loc_101475cf0
0x101475cf0:  68 88 00 b0   adrp	x8, 0x102582000
0x101475cf4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101475cf8:  1f 05 00 b1   cmn	x8, #0x1
0x101475cfc:  e1 04 00 54   b.ne	loc_101475d98 ; ⤵ 0x9c
0x101475d00:  ; loc_101475d00
0x101475d00:  68 88 00 b0   adrp	x8, 0x102582000
0x101475d04:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101475d08:  e0 03 13 aa   mov	x0, x19
0x101475d0c:  41 00 80 52   mov	w1, #0x2
0x101475d10:  78 81 1a 94   bl	j__os_log_type_enabled
0x101475d14:  60 fd ff 34   cbz	w0, loc_101475cc0 ; ⤴ -0x54
0x101475d18:  e0 03 14 aa   mov	x0, x20
0x101475d1c:  29 a1 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101475d20:  3e 8b 00 94   bl	0x101498a18
0x101475d24:  e8 43 00 f0   adrp	x8, 0x101cf4000
0x101475d28:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101475d2c:  e0 03 00 bd   str	s0, [sp]
0x101475d30:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101475d34:  48 04 81 52   mov	w8, #0x822
0x101475d38:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101475d3c:  c8 51 00 b0   adrp	x8, 0x101eae000
0x101475d40:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101475d44:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101475d48:  28 08 81 52   mov	w8, #0x841
0x101475d4c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101475d50:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101475d54:  40 5c ff f0   adrp	x0, 0x100000000
0x101475d58:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101475d5c:  43 70 00 d0   adrp	x3, 0x10227f000
0x101475d60:  63 30 3e 91   add	x3, x3, #0xf8c ; "{\"msg%{public}.0s\":\"#durian #lwt #metrics dailyTimeTravel negative time travel, exiting early\", \"item\":%{private, location:escape_only}@}"
0x101475d64:  e4 03 00 91   mov	x4, sp
0x101475d68:  e1 03 13 aa   mov	x1, x19
0x101475d6c:  42 00 80 52   mov	w2, #0x2
0x101475d70:  85 03 80 52   mov	w5, #0x1c
0x101475d74:  64 ff ff 17   b	loc_101475b04 ; ⤴ -0x270
0x101475d78:  ; loc_101475d78
0x101475d78:  29 69 1a 94   bl	0x101b1021c
0x101475d7c:  2f ff ff 17   b	loc_101475a38 ; ⤴ -0x344
0x101475d80:  ; loc_101475d80
0x101475d80:  27 69 1a 94   bl	0x101b1021c
0x101475d84:  49 ff ff 17   b	loc_101475aa8 ; ⤴ -0x2dc
0x101475d88:  ; loc_101475d88
0x101475d88:  25 69 1a 94   bl	0x101b1021c
0x101475d8c:  6e ff ff 17   b	loc_101475b44 ; ⤴ -0x248
0x101475d90:  ; loc_101475d90
0x101475d90:  23 69 1a 94   bl	0x101b1021c
0x101475d94:  a1 ff ff 17   b	loc_101475c18 ; ⤴ -0x17c
0x101475d98:  ; loc_101475d98
0x101475d98:  21 69 1a 94   bl	0x101b1021c
0x101475d9c:  d9 ff ff 17   b	loc_101475d00 ; ⤴ -0x9c
0x101475da0:  ; loc_101475da0
0x101475da0:  e8 7c 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager processAndSubmitDeviceTravelTimeMetrics]:
0x101475da4:  7f 23 03 d5   pacibsp
0x101475da8:  ff 83 05 d1   sub	sp, sp, #0x160
0x101475dac:  e9 23 0f 6d   stp	d9, d8, [sp, #0xf0]
0x101475db0:  fc 6f 10 a9   stp	x28, x27, [sp, #0x100]
0x101475db4:  fa 67 11 a9   stp	x26, x25, [sp, #0x110]
0x101475db8:  f8 5f 12 a9   stp	x24, x23, [sp, #0x120]
0x101475dbc:  f6 57 13 a9   stp	x22, x21, [sp, #0x130]
0x101475dc0:  f4 4f 14 a9   stp	x20, x19, [sp, #0x140]
0x101475dc4:  fd 7b 15 a9   stp	fp, lr, [sp, #0x150]
0x101475dc8:  fd 43 05 91   add	fp, sp, #0x150
0x101475dcc:  f3 03 00 aa   mov	x19, x0
0x101475dd0:  e8 78 00 b0   adrp	x8, 0x102392000
0x101475dd4:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101475dd8:  08 01 40 f9   ldr	x8, [x8]
0x101475ddc:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x101475de0:  7c 6e 1a 94   bl	j__CFAbsoluteTimeGetCurrent
0x101475de4:  08 1c a0 4e   mov	v8.16b, v0.16b
0x101475de8:  58 85 00 d0   adrp	x24, 0x10251f000
0x101475dec:  00 43 11 91   add	x0, x24, #0x450 ; CLDurianSettings
0x101475df0:  f4 0b 1b 94   bl	j__objc_msgSend(x0, "lastTravelingWithAccessoriesMetricsSubmission")
0x101475df4:  09 39 60 1e   fsub	d9, d8, d0
0x101475df8:  28 21 60 1e   fcmp	d9, #0.00000000
0x101475dfc:  a5 03 00 54   b.pl	loc_101475e70 ; ⤵ 0x74
0x101475e00:  68 88 00 b0   adrp	x8, 0x102582000
0x101475e04:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101475e08:  1f 05 00 b1   cmn	x8, #0x1
0x101475e0c:  21 10 00 54   b.ne	loc_101476010 ; ⤵ 0x204
0x101475e10:  ; loc_101475e10
0x101475e10:  68 88 00 b0   adrp	x8, 0x102582000
0x101475e14:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101475e18:  e0 03 13 aa   mov	x0, x19
0x101475e1c:  41 00 80 52   mov	w1, #0x2
0x101475e20:  34 81 1a 94   bl	j__os_log_type_enabled
0x101475e24:  80 0d 00 34   cbz	w0, loc_101475fd4 ; ⤵ 0x1b0
0x101475e28:  e8 43 00 f0   adrp	x8, 0x101cf4000
0x101475e2c:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101475e30:  e0 43 00 bd   str	s0, [sp, #0x40]
0x101475e34:  ff 47 00 b9   str	wzr, [sp, #0x44]
0x101475e38:  48 04 81 52   mov	w8, #0x822
0x101475e3c:  e8 93 00 79   strh	w8, [sp, #0x48]
0x101475e40:  c8 51 00 b0   adrp	x8, 0x101eae000
0x101475e44:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101475e48:  e8 a3 04 f8   stur	x8, [sp, #0x4a]
0x101475e4c:  40 5c ff f0   adrp	x0, 0x100000000
0x101475e50:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101475e54:  43 70 00 f0   adrp	x3, 0x102280000
0x101475e58:  63 84 03 91   add	x3, x3, #0xe1 ; "{\"msg%{public}.0s\":\"#durian #lwt #metrics dailyTimeTravel time since last sub negative, not submitting\"}"
0x101475e5c:  e4 03 01 91   add	x4, sp, #0x40
0x101475e60:  e1 03 13 aa   mov	x1, x19
0x101475e64:  42 00 80 52   mov	w2, #0x2
0x101475e68:  45 02 80 52   mov	w5, #0x12
0x101475e6c:  59 00 00 14   b	loc_101475fd0 ; ⤵ 0x164
0x101475e70:  ; loc_101475e70
0x101475e70:  00 43 11 91   add	x0, x24, #0x450
0x101475e74:  53 b3 1a 94   bl	j__objc_msgSend(x0, "dailyTimeTravelWithAccessoriesSubmissionCadence")
0x101475e78:  00 00 62 1e   scvtf	d0, w0
0x101475e7c:  20 21 60 1e   fcmp	d9, d0
0x101475e80:  ab 0a 00 54   b.lt	loc_101475fd4 ; ⤵ 0x154
0x101475e84:  00 e4 00 6f   movi	v0.2d, #0
0x101475e88:  e0 03 01 ad   stp	q0, q0, [sp, #0x20]
0x101475e8c:  e0 03 00 ad   stp	q0, q0, [sp]
0x101475e90:  60 5e 40 f9   ldr	x0, [x19, #0xb8]
0x101475e94:  eb 1b 1b 94   bl	j__objc_msgSend(x0, "objectEnumerator")
0x101475e98:  f4 03 00 aa   mov	x20, x0
0x101475e9c:  e2 03 00 91   mov	x2, sp
0x101475ea0:  e3 a3 01 91   add	x3, sp, #0x68
0x101475ea4:  04 02 80 52   mov	w4, #0x10
0x101475ea8:  16 ae 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101475eac:  80 04 00 b4   cbz	x0, loc_101475f3c ; ⤵ 0x90
0x101475eb0:  f5 03 00 aa   mov	x21, x0
0x101475eb4:  e8 0b 40 f9   ldr	x8, [sp, #0x10]
0x101475eb8:  19 01 40 f9   ldr	x25, [x8]
0x101475ebc:  ; loc_101475ebc
0x101475ebc:  1a 00 80 d2   mov	x26, #0
0x101475ec0:  ; loc_101475ec0
0x101475ec0:  e8 0b 40 f9   ldr	x8, [sp, #0x10]
0x101475ec4:  08 01 40 f9   ldr	x8, [x8]
0x101475ec8:  1f 01 19 eb   cmp	x8, x25
0x101475ecc:  60 00 00 54   b.eq	loc_101475ed8 ; ⤵ 0xc
0x101475ed0:  e0 03 14 aa   mov	x0, x20
0x101475ed4:  0b 80 1a 94   bl	j__objc_enumerationMutation
0x101475ed8:  ; loc_101475ed8
0x101475ed8:  e8 07 40 f9   ldr	x8, [sp, #0x8]
0x101475edc:  16 79 7a f8   ldr	x22, [x8, x26, lsl #0x3]
0x101475ee0:  e0 03 16 aa   mov	x0, x22
0x101475ee4:  37 95 1b 94   bl	j__objc_msgSend(x0, "totalDailyTimeSpentTraveling")
0x101475ee8:  08 20 60 1e   fcmp	d0, #0.00000000
0x101475eec:  04 03 00 54   b.mi	loc_101475f4c ; ⤵ 0x60
0x101475ef0:  77 7a 40 f9   ldr	x23, [x19, #0xf0]
0x101475ef4:  e0 03 16 aa   mov	x0, x22
0x101475ef8:  32 95 1b 94   bl	j__objc_msgSend(x0, "totalDailyTimeSpentTraveling")
0x101475efc:  e0 03 17 aa   mov	x0, x23
0x101475f00:  e2 03 16 aa   mov	x2, x22
0x101475f04:  d7 89 1b 94   bl	j__objc_msgSend(x0, "submitDailyTimeTraveledPerAccessory:forAccessory:")
0x101475f08:  00 e4 00 6f   movi	v0.2d, #0
0x101475f0c:  e0 03 16 aa   mov	x0, x22
0x101475f10:  34 74 1b 94   bl	j__objc_msgSend(x0, "setTotalDailyTimeSpentTraveling:")
0x101475f14:  5a 07 00 91   add	x26, x26, #0x1
0x101475f18:  bf 02 1a eb   cmp	x21, x26
0x101475f1c:  21 fd ff 54   b.ne	loc_101475ec0 ; ⤴ -0x5c
0x101475f20:  e2 03 00 91   mov	x2, sp
0x101475f24:  e3 a3 01 91   add	x3, sp, #0x68
0x101475f28:  e0 03 14 aa   mov	x0, x20
0x101475f2c:  04 02 80 52   mov	w4, #0x10
0x101475f30:  f4 ad 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101475f34:  f5 03 00 aa   mov	x21, x0
0x101475f38:  20 fc ff b5   cbnz	x0, loc_101475ebc ; ⤴ -0x7c
0x101475f3c:  ; loc_101475f3c
0x101475f3c:  00 43 11 91   add	x0, x24, #0x450
0x101475f40:  00 1d a8 4e   mov	v0.16b, v8.16b
0x101475f44:  77 74 1b 94   bl	j__objc_msgSend(x0, "setTravelingWithAccessoriesMetricsSubmission:")
0x101475f48:  23 00 00 14   b	loc_101475fd4 ; ⤵ 0x8c
0x101475f4c:  ; loc_101475f4c
0x101475f4c:  68 88 00 b0   adrp	x8, 0x102582000
0x101475f50:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101475f54:  1f 05 00 b1   cmn	x8, #0x1
0x101475f58:  01 06 00 54   b.ne	loc_101476018 ; ⤵ 0xc0
0x101475f5c:  ; loc_101475f5c
0x101475f5c:  68 88 00 b0   adrp	x8, 0x102582000
0x101475f60:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101475f64:  e0 03 13 aa   mov	x0, x19
0x101475f68:  41 00 80 52   mov	w1, #0x2
0x101475f6c:  e1 80 1a 94   bl	j__os_log_type_enabled
0x101475f70:  20 03 00 34   cbz	w0, loc_101475fd4 ; ⤵ 0x64
0x101475f74:  e0 03 16 aa   mov	x0, x22
0x101475f78:  92 a0 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101475f7c:  a7 8a 00 94   bl	0x101498a18
0x101475f80:  e8 43 00 f0   adrp	x8, 0x101cf4000
0x101475f84:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101475f88:  e0 43 00 bd   str	s0, [sp, #0x40]
0x101475f8c:  ff 47 00 b9   str	wzr, [sp, #0x44]
0x101475f90:  48 04 81 52   mov	w8, #0x822
0x101475f94:  e8 93 00 79   strh	w8, [sp, #0x48]
0x101475f98:  c8 51 00 b0   adrp	x8, 0x101eae000
0x101475f9c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101475fa0:  e8 a3 04 f8   stur	x8, [sp, #0x4a]
0x101475fa4:  28 08 81 52   mov	w8, #0x841
0x101475fa8:  e8 a7 00 79   strh	w8, [sp, #0x52]
0x101475fac:  e0 43 05 f8   stur	x0, [sp, #0x54]
0x101475fb0:  40 5c ff f0   adrp	x0, 0x100000000
0x101475fb4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101475fb8:  43 70 00 f0   adrp	x3, 0x102280000
0x101475fbc:  63 28 05 91   add	x3, x3, #0x14a ; "{\"msg%{public}.0s\":\"#durian #lwt #metrics dailyTimeTravel negative travel time, not submitting\", \"item\":%{private, location:escape_only}@}"
0x101475fc0:  e4 03 01 91   add	x4, sp, #0x40
0x101475fc4:  e1 03 13 aa   mov	x1, x19
0x101475fc8:  42 00 80 52   mov	w2, #0x2
0x101475fcc:  85 03 80 52   mov	w5, #0x1c
0x101475fd0:  ; loc_101475fd0
0x101475fd0:  88 7c 1a 94   bl	j___os_log_impl
0x101475fd4:  ; loc_101475fd4
0x101475fd4:  a8 83 59 f8   ldur	x8, [fp, #-0x68]
0x101475fd8:  e9 78 00 b0   adrp	x9, 0x102392000
0x101475fdc:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101475fe0:  29 01 40 f9   ldr	x9, [x9]
0x101475fe4:  3f 01 08 eb   cmp	x9, x8
0x101475fe8:  c1 01 00 54   b.ne	loc_101476020 ; ⤵ 0x38
0x101475fec:  fd 7b 55 a9   ldp	fp, lr, [sp, #0x150]
0x101475ff0:  f4 4f 54 a9   ldp	x20, x19, [sp, #0x140]
0x101475ff4:  f6 57 53 a9   ldp	x22, x21, [sp, #0x130]
0x101475ff8:  f8 5f 52 a9   ldp	x24, x23, [sp, #0x120]
0x101475ffc:  fa 67 51 a9   ldp	x26, x25, [sp, #0x110]
0x101476000:  fc 6f 50 a9   ldp	x28, x27, [sp, #0x100]
0x101476004:  e9 23 4f 6d   ldp	d9, d8, [sp, #0xf0]
0x101476008:  ff 83 05 91   add	sp, sp, #0x160
0x10147600c:  ff 0f 5f d6   retab
0x101476010:  ; loc_101476010
0x101476010:  83 68 1a 94   bl	0x101b1021c
0x101476014:  7f ff ff 17   b	loc_101475e10 ; ⤴ -0x204
0x101476018:  ; loc_101476018
0x101476018:  71 68 1a 94   bl	0x101b101dc
0x10147601c:  d0 ff ff 17   b	loc_101475f5c ; ⤴ -0xc0
0x101476020:  ; loc_101476020
0x101476020:  48 7c 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager tallyNumberOfSpeakerTamperingBitsForDevice:bit:]:
0x101476024:  7f 23 03 d5   pacibsp
0x101476028:  ff 43 05 d1   sub	sp, sp, #0x150
0x10147602c:  e9 23 0f 6d   stp	d9, d8, [sp, #0xf0]
0x101476030:  fc 6f 10 a9   stp	x28, x27, [sp, #0x100]
0x101476034:  f8 5f 11 a9   stp	x24, x23, [sp, #0x110]
0x101476038:  f6 57 12 a9   stp	x22, x21, [sp, #0x120]
0x10147603c:  f4 4f 13 a9   stp	x20, x19, [sp, #0x130]
0x101476040:  fd 7b 14 a9   stp	fp, lr, [sp, #0x140]
0x101476044:  fd 03 05 91   add	fp, sp, #0x140
0x101476048:  f5 03 03 aa   mov	x21, x3
0x10147604c:  f4 03 02 aa   mov	x20, x2
0x101476050:  f3 03 00 aa   mov	x19, x0
0x101476054:  e8 78 00 90   adrp	x8, 0x102392000
0x101476058:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10147605c:  08 01 40 f9   ldr	x8, [x8]
0x101476060:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x101476064:  e0 03 02 aa   mov	x0, x2
0x101476068:  0e 07 1b 94   bl	j__objc_msgSend(x0, "isSpeakerTamperingMetricSupported")
0x10147606c:  80 06 00 34   cbz	w0, loc_10147613c ; ⤵ 0xd0
0x101476070:  e0 03 14 aa   mov	x0, x20
0x101476074:  cb 23 1b 94   bl	j__objc_msgSend(x0, "ownership")
0x101476078:  1f 04 00 f1   cmp	x0, #0x1
0x10147607c:  01 06 00 54   b.ne	loc_10147613c ; ⤵ 0xc0
0x101476080:  55 05 00 34   cbz	w21, loc_101476128 ; ⤵ 0xa8
0x101476084:  68 88 00 90   adrp	x8, 0x102582000
0x101476088:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10147608c:  1f 05 00 b1   cmn	x8, #0x1
0x101476090:  81 0e 00 54   b.ne	loc_101476260 ; ⤵ 0x1d0
0x101476094:  ; loc_101476094
0x101476094:  68 88 00 90   adrp	x8, 0x102582000
0x101476098:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10147609c:  e0 03 15 aa   mov	x0, x21
0x1014760a0:  41 00 80 52   mov	w1, #0x2
0x1014760a4:  93 80 1a 94   bl	j__os_log_type_enabled
0x1014760a8:  40 03 00 34   cbz	w0, loc_101476110 ; ⤵ 0x68
0x1014760ac:  b6 03 02 d1   sub	x22, fp, #0x80
0x1014760b0:  e0 03 14 aa   mov	x0, x20
0x1014760b4:  43 a0 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x1014760b8:  58 8a 00 94   bl	0x101498a18
0x1014760bc:  e8 43 00 d0   adrp	x8, 0x101cf4000
0x1014760c0:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x1014760c4:  a0 03 18 bc   stur	s0, [fp, #-0x80]
0x1014760c8:  bf 43 18 b8   stur	wzr, [fp, #-0x7c]
0x1014760cc:  48 04 81 52   mov	w8, #0x822
0x1014760d0:  a8 83 18 78   sturh	w8, [fp, #-0x78]
0x1014760d4:  c8 51 00 90   adrp	x8, 0x101eae000
0x1014760d8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014760dc:  c8 a2 00 f8   stur	x8, [x22, #0xa]
0x1014760e0:  28 08 81 52   mov	w8, #0x841
0x1014760e4:  a8 23 19 78   sturh	w8, [fp, #-0x6e]
0x1014760e8:  c0 42 01 f8   stur	x0, [x22, #0x14]
0x1014760ec:  40 5c ff d0   adrp	x0, 0x100000000
0x1014760f0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014760f4:  43 70 00 d0   adrp	x3, 0x102280000
0x1014760f8:  63 54 07 91   add	x3, x3, #0x1d5 ; "{\"msg%{public}.0s\":\"#durian speaker tampering bit set\", \"item\":%{private, location:escape_only}@}"
0x1014760fc:  a4 03 02 d1   sub	x4, fp, #0x80
0x101476100:  e1 03 15 aa   mov	x1, x21
0x101476104:  42 00 80 52   mov	w2, #0x2
0x101476108:  85 03 80 52   mov	w5, #0x1c
0x10147610c:  39 7c 1a 94   bl	j___os_log_impl
0x101476110:  ; loc_101476110
0x101476110:  e0 03 14 aa   mov	x0, x20
0x101476114:  13 7e 1b 94   bl	j__objc_msgSend(x0, "speakerTamperedDailyAdvertisementCount")
0x101476118:  02 04 00 91   add	x2, x0, #0x1
0x10147611c:  e0 03 14 aa   mov	x0, x20
0x101476120:  e8 6f 1b 94   bl	j__objc_msgSend(x0, "setSpeakerTamperedDailyAdvertisementCount:")
0x101476124:  06 00 00 14   b	loc_10147613c ; ⤵ 0x18
0x101476128:  ; loc_101476128
0x101476128:  e0 03 14 aa   mov	x0, x20
0x10147612c:  05 7e 1b 94   bl	j__objc_msgSend(x0, "speakerNotTamperedDailyAdvertisementCount")
0x101476130:  02 04 00 91   add	x2, x0, #0x1
0x101476134:  e0 03 14 aa   mov	x0, x20
0x101476138:  da 6f 1b 94   bl	j__objc_msgSend(x0, "setSpeakerNotTamperedDailyAdvertisementCount:")
0x10147613c:  ; loc_10147613c
0x10147613c:  a5 6d 1a 94   bl	j__CFAbsoluteTimeGetCurrent
0x101476140:  08 1c a0 4e   mov	v8.16b, v0.16b
0x101476144:  60 52 40 fd   ldr	d0, [x19, #0xa0]
0x101476148:  e8 43 00 d0   adrp	x8, 0x101cf4000
0x10147614c:  01 75 47 fd   ldr	d1, [x8, #0xee8]
0x101476150:  01 28 61 1e   fadd	d1, d0, d1
0x101476154:  00 21 60 1e   fcmp	d8, d0
0x101476158:  28 54 68 1e   fccmp	d1, d8, #0x8, pl
0x10147615c:  65 06 00 54   b.pl	loc_101476228 ; ⤵ 0xcc
0x101476160:  00 e4 00 6f   movi	v0.2d, #0
0x101476164:  e0 03 01 ad   stp	q0, q0, [sp, #0x20]
0x101476168:  e0 03 00 ad   stp	q0, q0, [sp]
0x10147616c:  60 5e 40 f9   ldr	x0, [x19, #0xb8]
0x101476170:  34 1b 1b 94   bl	j__objc_msgSend(x0, "objectEnumerator")
0x101476174:  f4 03 00 aa   mov	x20, x0
0x101476178:  e2 03 00 91   mov	x2, sp
0x10147617c:  e3 03 01 91   add	x3, sp, #0x40
0x101476180:  04 02 80 52   mov	w4, #0x10
0x101476184:  5f ad 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101476188:  e0 04 00 b4   cbz	x0, loc_101476224 ; ⤵ 0x9c
0x10147618c:  f5 03 00 aa   mov	x21, x0
0x101476190:  e8 0b 40 f9   ldr	x8, [sp, #0x10]
0x101476194:  17 01 40 f9   ldr	x23, [x8]
0x101476198:  ; loc_101476198
0x101476198:  18 00 80 d2   mov	x24, #0
0x10147619c:  ; loc_10147619c
0x10147619c:  e8 0b 40 f9   ldr	x8, [sp, #0x10]
0x1014761a0:  08 01 40 f9   ldr	x8, [x8]
0x1014761a4:  1f 01 17 eb   cmp	x8, x23
0x1014761a8:  60 00 00 54   b.eq	loc_1014761b4 ; ⤵ 0xc
0x1014761ac:  e0 03 14 aa   mov	x0, x20
0x1014761b0:  54 7f 1a 94   bl	j__objc_enumerationMutation
0x1014761b4:  ; loc_1014761b4
0x1014761b4:  e8 07 40 f9   ldr	x8, [sp, #0x8]
0x1014761b8:  16 79 78 f8   ldr	x22, [x8, x24, lsl #0x3]
0x1014761bc:  e0 03 16 aa   mov	x0, x22
0x1014761c0:  b8 06 1b 94   bl	j__objc_msgSend(x0, "isSpeakerTamperingMetricSupported")
0x1014761c4:  c0 01 00 34   cbz	w0, loc_1014761fc ; ⤵ 0x38
0x1014761c8:  e0 03 16 aa   mov	x0, x22
0x1014761cc:  75 23 1b 94   bl	j__objc_msgSend(x0, "ownership")
0x1014761d0:  1f 04 00 f1   cmp	x0, #0x1
0x1014761d4:  41 01 00 54   b.ne	loc_1014761fc ; ⤵ 0x28
0x1014761d8:  60 7a 40 f9   ldr	x0, [x19, #0xf0]
0x1014761dc:  e2 03 16 aa   mov	x2, x22
0x1014761e0:  10 8a 1b 94   bl	j__objc_msgSend(x0, "submitSpeakerTamperingMetricsForDevice:")
0x1014761e4:  e0 03 16 aa   mov	x0, x22
0x1014761e8:  02 00 80 d2   mov	x2, #0
0x1014761ec:  b5 6f 1b 94   bl	j__objc_msgSend(x0, "setSpeakerTamperedDailyAdvertisementCount:")
0x1014761f0:  e0 03 16 aa   mov	x0, x22
0x1014761f4:  02 00 80 d2   mov	x2, #0
0x1014761f8:  aa 6f 1b 94   bl	j__objc_msgSend(x0, "setSpeakerNotTamperedDailyAdvertisementCount:")
0x1014761fc:  ; loc_1014761fc
0x1014761fc:  18 07 00 91   add	x24, x24, #0x1
0x101476200:  bf 02 18 eb   cmp	x21, x24
0x101476204:  c1 fc ff 54   b.ne	loc_10147619c ; ⤴ -0x68
0x101476208:  e2 03 00 91   mov	x2, sp
0x10147620c:  e3 03 01 91   add	x3, sp, #0x40
0x101476210:  e0 03 14 aa   mov	x0, x20
0x101476214:  04 02 80 52   mov	w4, #0x10
0x101476218:  3a ad 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10147621c:  f5 03 00 aa   mov	x21, x0
0x101476220:  c0 fb ff b5   cbnz	x0, loc_101476198 ; ⤴ -0x88
0x101476224:  ; loc_101476224
0x101476224:  68 52 00 fd   str	d8, [x19, #0xa0]
0x101476228:  ; loc_101476228
0x101476228:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x10147622c:  e9 78 00 90   adrp	x9, 0x102392000
0x101476230:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101476234:  29 01 40 f9   ldr	x9, [x9]
0x101476238:  3f 01 08 eb   cmp	x9, x8
0x10147623c:  61 01 00 54   b.ne	loc_101476268 ; ⤵ 0x2c
0x101476240:  fd 7b 54 a9   ldp	fp, lr, [sp, #0x140]
0x101476244:  f4 4f 53 a9   ldp	x20, x19, [sp, #0x130]
0x101476248:  f6 57 52 a9   ldp	x22, x21, [sp, #0x120]
0x10147624c:  f8 5f 51 a9   ldp	x24, x23, [sp, #0x110]
0x101476250:  fc 6f 50 a9   ldp	x28, x27, [sp, #0x100]
0x101476254:  e9 23 4f 6d   ldp	d9, d8, [sp, #0xf0]
0x101476258:  ff 43 05 91   add	sp, sp, #0x150
0x10147625c:  ff 0f 5f d6   retab
0x101476260:  ; loc_101476260
0x101476260:  ef 67 1a 94   bl	0x101b1021c
0x101476264:  8c ff ff 17   b	loc_101476094 ; ⤴ -0x1d0
0x101476268:  ; loc_101476268
0x101476268:  b6 7b 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager tallyNumberOfVisitsExperiencedForDevice:]:
0x10147626c:  7f 23 03 d5   pacibsp
0x101476270:  ff c3 01 d1   sub	sp, sp, #0x70
0x101476274:  e9 23 03 6d   stp	d9, d8, [sp, #0x30]
0x101476278:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10147627c:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x101476280:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101476284:  fd 83 01 91   add	fp, sp, #0x60
0x101476288:  f3 03 02 aa   mov	x19, x2
0x10147628c:  f4 03 00 aa   mov	x20, x0
0x101476290:  e8 78 00 90   adrp	x8, 0x102392000
0x101476294:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101476298:  08 01 40 f9   ldr	x8, [x8]
0x10147629c:  e8 17 00 f9   str	x8, [sp, #0x28]
0x1014762a0:  00 78 40 f9   ldr	x0, [x0, #0xf0]
0x1014762a4:  27 a1 1b 94   bl	j__objc_msgSend(x0, "visitTransitionTime")
0x1014762a8:  08 20 60 1e   fcmp	d0, #0.00000000
0x1014762ac:  c1 03 00 54   b.ne	loc_101476324 ; ⤵ 0x78
0x1014762b0:  68 88 00 90   adrp	x8, 0x102582000
0x1014762b4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014762b8:  1f 05 00 b1   cmn	x8, #0x1
0x1014762bc:  01 12 00 54   b.ne	loc_1014764fc ; ⤵ 0x240
0x1014762c0:  68 88 00 90   adrp	x8, 0x102582000
0x1014762c4:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014762c8:  e0 03 13 aa   mov	x0, x19
0x1014762cc:  01 00 80 52   mov	w1, #0
0x1014762d0:  08 80 1a 94   bl	j__os_log_type_enabled
0x1014762d4:  c0 0f 00 34   cbz	w0, loc_1014764cc ; ⤵ 0x1f8
0x1014762d8:  e8 43 00 d0   adrp	x8, 0x101cf4000
0x1014762dc:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x1014762e0:  e0 03 00 bd   str	s0, [sp]
0x1014762e4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014762e8:  48 04 81 52   mov	w8, #0x822
0x1014762ec:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014762f0:  c8 51 00 90   adrp	x8, 0x101eae000
0x1014762f4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014762f8:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014762fc:  40 5c ff d0   adrp	x0, 0x100000000
0x101476300:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101476304:  43 70 00 d0   adrp	x3, 0x102280000
0x101476308:  63 dc 08 91   add	x3, x3, #0x237 ; "{\"msg%{public}.0s\":\"#durian #lwt #metrics visit+leash visit not set\"}"
0x10147630c:  e4 03 00 91   mov	x4, sp
0x101476310:  e1 03 13 aa   mov	x1, x19
0x101476314:  02 00 80 52   mov	w2, #0
0x101476318:  45 02 80 52   mov	w5, #0x12
0x10147631c:  b5 7b 1a 94   bl	j___os_log_impl
0x101476320:  6b 00 00 14   b	loc_1014764cc ; ⤵ 0x1ac
0x101476324:  ; loc_101476324
0x101476324:  2b 6d 1a 94   bl	j__CFAbsoluteTimeGetCurrent
0x101476328:  08 1c a0 4e   mov	v8.16b, v0.16b
0x10147632c:  80 7a 40 f9   ldr	x0, [x20, #0xf0]
0x101476330:  04 a1 1b 94   bl	j__objc_msgSend(x0, "visitTransitionTime")
0x101476334:  09 39 60 1e   fsub	d9, d8, d0
0x101476338:  e0 03 13 aa   mov	x0, x19
0x10147633c:  c9 0a 1b 94   bl	j__objc_msgSend(x0, "lastVisitStateTallyTime")
0x101476340:  00 39 60 1e   fsub	d0, d8, d0
0x101476344:  20 21 60 1e   fcmp	d9, d0
0x101476348:  25 0c 00 54   b.pl	loc_1014764cc ; ⤵ 0x184
0x10147634c:  e0 03 13 aa   mov	x0, x19
0x101476350:  00 1d a8 4e   mov	v0.16b, v8.16b
0x101476354:  53 5e 1b 94   bl	j__objc_msgSend(x0, "setLastVisitStateTallyTime:")
0x101476358:  88 86 40 f9   ldr	x8, [x20, #0x108]
0x10147635c:  1f 09 00 f1   cmp	x8, #0x2
0x101476360:  a0 05 00 54   b.eq	loc_101476414 ; ⤵ 0xb4
0x101476364:  1f 05 00 f1   cmp	x8, #0x1
0x101476368:  21 0b 00 54   b.ne	loc_1014764cc ; ⤵ 0x164
0x10147636c:  e0 03 13 aa   mov	x0, x19
0x101476370:  6c 19 1b 94   bl	j__objc_msgSend(x0, "numInsideVisit")
0x101476374:  08 04 00 11   add	w8, w0, #0x1
0x101476378:  02 1d 00 12   and	w2, w8, #0xff
0x10147637c:  e0 03 13 aa   mov	x0, x19
0x101476380:  f0 64 1b 94   bl	j__objc_msgSend(x0, "setNumInsideVisit:")
0x101476384:  68 88 00 90   adrp	x8, 0x102582000
0x101476388:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10147638c:  1f 05 00 b1   cmn	x8, #0x1

