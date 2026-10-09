
-[CLDurianDeviceManager connectToDevice:withPeripheral:]:
0x101472af0:  7f 23 03 d5   pacibsp
0x101472af4:  ff 83 04 d1   sub	sp, sp, #0x120
0x101472af8:  fc 6f 0c a9   stp	x28, x27, [sp, #0xc0]
0x101472afc:  fa 67 0d a9   stp	x26, x25, [sp, #0xd0]
0x101472b00:  f8 5f 0e a9   stp	x24, x23, [sp, #0xe0]
0x101472b04:  f6 57 0f a9   stp	x22, x21, [sp, #0xf0]
0x101472b08:  f4 4f 10 a9   stp	x20, x19, [sp, #0x100]
0x101472b0c:  fd 7b 11 a9   stp	fp, lr, [sp, #0x110]
0x101472b10:  fd 43 04 91   add	fp, sp, #0x110
0x101472b14:  f3 03 03 aa   mov	x19, x3
0x101472b18:  f4 03 02 aa   mov	x20, x2
0x101472b1c:  f5 03 00 aa   mov	x21, x0
0x101472b20:  08 79 00 90   adrp	x8, 0x102392000
0x101472b24:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101472b28:  08 01 40 f9   ldr	x8, [x8]
0x101472b2c:  a8 03 1a f8   stur	x8, [fp, #-0x60]
0x101472b30:  00 74 40 f9   ldr	x0, [x0, #0xe8]
0x101472b34:  e2 03 03 aa   mov	x2, x3
0x101472b38:  d2 28 1b 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x101472b3c:  40 05 00 b4   cbz	x0, loc_101472be4 ; ⤵ 0xa8
0x101472b40:  88 88 00 90   adrp	x8, 0x102582000
0x101472b44:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101472b48:  1f 05 00 b1   cmn	x8, #0x1
0x101472b4c:  81 3a 00 54   b.ne	loc_10147329c ; ⤵ 0x750
0x101472b50:  ; loc_101472b50
0x101472b50:  88 88 00 90   adrp	x8, 0x102582000
0x101472b54:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101472b58:  e0 03 15 aa   mov	x0, x21
0x101472b5c:  01 00 80 52   mov	w1, #0
0x101472b60:  e4 8d 1a 94   bl	j__os_log_type_enabled
0x101472b64:  00 38 00 34   cbz	w0, loc_101473264 ; ⤵ 0x700
0x101472b68:  e0 03 14 aa   mov	x0, x20
0x101472b6c:  95 ad 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101472b70:  aa 97 00 94   bl	0x101498a18
0x101472b74:  f4 03 00 aa   mov	x20, x0
0x101472b78:  e0 03 13 aa   mov	x0, x19
0x101472b7c:  a9 f6 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101472b80:  a6 97 00 94   bl	0x101498a18
0x101472b84:  08 44 00 d0   adrp	x8, 0x101cf4000
0x101472b88:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101472b8c:  e0 43 00 bd   str	s0, [sp, #0x40]
0x101472b90:  ff 47 00 b9   str	wzr, [sp, #0x44]
0x101472b94:  48 04 81 52   mov	w8, #0x822
0x101472b98:  e8 93 00 79   strh	w8, [sp, #0x48]
0x101472b9c:  e8 51 00 90   adrp	x8, 0x101eae000
0x101472ba0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101472ba4:  e8 a3 04 f8   stur	x8, [sp, #0x4a]
0x101472ba8:  28 08 81 52   mov	w8, #0x841
0x101472bac:  e8 a7 00 79   strh	w8, [sp, #0x52]
0x101472bb0:  f4 43 05 f8   stur	x20, [sp, #0x54]
0x101472bb4:  e8 bb 00 79   strh	w8, [sp, #0x5c]
0x101472bb8:  e0 e3 05 f8   stur	x0, [sp, #0x5e]
0x101472bbc:  60 5c ff d0   adrp	x0, 0x100000000
0x101472bc0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101472bc4:  63 70 00 b0   adrp	x3, 0x10227f000
0x101472bc8:  63 08 06 91   add	x3, x3, #0x182 ; "{\"msg%{public}.0s\":\"#durian #connection defering, peripheral pending\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x101472bcc:  ; loc_101472bcc
0x101472bcc:  e4 03 01 91   add	x4, sp, #0x40
0x101472bd0:  e1 03 15 aa   mov	x1, x21
0x101472bd4:  02 00 80 52   mov	w2, #0
0x101472bd8:  c5 04 80 52   mov	w5, #0x26
0x101472bdc:  85 89 1a 94   bl	j___os_log_impl
0x101472be0:  a1 01 00 14   b	loc_101473264 ; ⤵ 0x684
0x101472be4:  ; loc_101472be4
0x101472be4:  e0 03 14 aa   mov	x0, x20
0x101472be8:  7e 9c 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101472bec:  e2 03 13 aa   mov	x2, x19
0x101472bf0:  94 25 1b 94   bl	j__objc_msgSend(x0, "nextConnectionMaterialForPeripheral:")
0x101472bf4:  20 0f 00 b4   cbz	x0, loc_101472dd8 ; ⤵ 0x1e4
0x101472bf8:  f7 03 00 aa   mov	x23, x0
0x101472bfc:  e8 78 00 f0   adrp	x8, 0x102391000
0x101472c00:  00 49 44 f9   ldr	x0, [x8, #0x890] ; __got._OBJC_CLASS_$_NSMutableDictionary
0x101472c04:  4f c6 1a 94   bl	j__objc_msgSend(x0, "dictionary")
0x101472c08:  fc 03 00 aa   mov	x28, x0
0x101472c0c:  e8 78 00 d0   adrp	x8, 0x102390000
0x101472c10:  08 15 46 f9   ldr	x8, [x8, #0xc28] ; __got._CBConnectPeripheralOptionHideFromBTSettings
0x101472c14:  03 01 40 f9   ldr	x3, [x8]
0x101472c18:  e2 78 00 f0   adrp	x2, 0x102391000
0x101472c1c:  42 7c 44 f9   ldr	x2, [x2, #0x8f8] ; __got.___kCFBooleanTrue
0x101472c20:  50 73 1b 94   bl	j__objc_msgSend(x0, "setObject:forKeyedSubscript:")
0x101472c24:  e8 78 00 d0   adrp	x8, 0x102390000
0x101472c28:  08 11 46 f9   ldr	x8, [x8, #0xc20] ; __got._CBConnectPeripheralOptionConnectionUseCase
0x101472c2c:  19 01 40 f9   ldr	x25, [x8]
0x101472c30:  62 81 00 d0   adrp	x2, 0x1024a0000
0x101472c34:  42 c0 03 91   add	x2, x2, #0xf0 ; _OBJC_CLASS_$_NSConstantIntegerNumber
0x101472c38:  e0 03 1c aa   mov	x0, x28
0x101472c3c:  e3 03 19 aa   mov	x3, x25
0x101472c40:  48 73 1b 94   bl	j__objc_msgSend(x0, "setObject:forKeyedSubscript:")
0x101472c44:  e0 03 17 aa   mov	x0, x23
0x101472c48:  1e 1e 1b 94   bl	j__objc_msgSend(x0, "ltk")
0x101472c4c:  e5 19 1b 94   bl	j__objc_msgSend(x0, "length")
0x101472c50:  1f 40 00 f1   cmp	x0, #0x10
0x101472c54:  83 01 00 54   b.lo	loc_101472c84 ; ⤵ 0x30
0x101472c58:  e0 03 17 aa   mov	x0, x23
0x101472c5c:  19 1e 1b 94   bl	j__objc_msgSend(x0, "ltk")
0x101472c60:  02 00 80 d2   mov	x2, #0
0x101472c64:  03 02 80 52   mov	w3, #0x10
0x101472c68:  7e 95 1b 94   bl	j__objc_msgSend(x0, "subdataWithRange:")
0x101472c6c:  e2 03 00 aa   mov	x2, x0
0x101472c70:  e8 78 00 d0   adrp	x8, 0x102390000
0x101472c74:  08 1d 46 f9   ldr	x8, [x8, #0xc38] ; __got._CBConnectPeripheralOptionUseTempLTK
0x101472c78:  03 01 40 f9   ldr	x3, [x8]
0x101472c7c:  e0 03 1c aa   mov	x0, x28
0x101472c80:  38 73 1b 94   bl	j__objc_msgSend(x0, "setObject:forKeyedSubscript:")
0x101472c84:  ; loc_101472c84
0x101472c84:  e0 03 15 aa   mov	x0, x21
0x101472c88:  e2 03 14 aa   mov	x2, x20
0x101472c8c:  ad 87 1b 94   bl	j__objc_msgSend(x0, "shouldConnectUsingLeashToDevice:")
0x101472c90:  f8 03 00 aa   mov	x24, x0
0x101472c94:  96 88 00 90   adrp	x22, 0x102582000
0x101472c98:  c8 3a 46 f9   ldr	x8, [x22, #0xc70] ; data_102582c70 (__DATA.__data)
0x101472c9c:  1f 05 00 b1   cmn	x8, #0x1
0x101472ca0:  f7 13 00 f9   str	x23, [sp, #0x20]
0x101472ca4:  01 30 00 54   b.ne	loc_1014732a4 ; ⤵ 0x600
0x101472ca8:  ; loc_101472ca8
0x101472ca8:  97 88 00 90   adrp	x23, 0x102582000
0x101472cac:  fa 3e 46 f9   ldr	x26, [x23, #0xc78] ; data_102582c78 (__DATA.__data)
0x101472cb0:  e0 03 1a aa   mov	x0, x26
0x101472cb4:  01 00 80 52   mov	w1, #0
0x101472cb8:  8e 8d 1a 94   bl	j__os_log_type_enabled
0x101472cbc:  fc 1f 00 f9   str	x28, [sp, #0x38]
0x101472cc0:  f8 2f 00 b9   str	w24, [sp, #0x2c]
0x101472cc4:  e0 05 00 34   cbz	w0, loc_101472d80 ; ⤵ 0xbc
0x101472cc8:  e0 03 14 aa   mov	x0, x20
0x101472ccc:  3d ad 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101472cd0:  52 97 00 94   bl	0x101498a18
0x101472cd4:  fb 03 00 aa   mov	x27, x0
0x101472cd8:  e0 03 13 aa   mov	x0, x19
0x101472cdc:  51 f6 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101472ce0:  4e 97 00 94   bl	0x101498a18
0x101472ce4:  fc 03 00 aa   mov	x28, x0
0x101472ce8:  e0 03 14 aa   mov	x0, x20
0x101472cec:  75 b6 1a 94   bl	j__objc_msgSend(x0, "connectCondition")
0x101472cf0:  1f 00 00 f1   cmp	x0, #0
0x101472cf4:  f8 07 9f 1a   cset	w24, ne
0x101472cf8:  e0 03 15 aa   mov	x0, x21
0x101472cfc:  21 19 1b 94   bl	j__objc_msgSend(x0, "leashSlotsInUse")
0x101472d00:  08 39 00 d0   adrp	x8, 0x101b94000
0x101472d04:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x101472d08:  e0 43 00 bd   str	s0, [sp, #0x40]
0x101472d0c:  ff 47 00 b9   str	wzr, [sp, #0x44]
0x101472d10:  48 04 81 52   mov	w8, #0x822
0x101472d14:  e8 93 00 79   strh	w8, [sp, #0x48]
0x101472d18:  e8 51 00 90   adrp	x8, 0x101eae000
0x101472d1c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101472d20:  e8 a3 04 f8   stur	x8, [sp, #0x4a]
0x101472d24:  28 08 81 52   mov	w8, #0x841
0x101472d28:  e8 a7 00 79   strh	w8, [sp, #0x52]
0x101472d2c:  fb 43 05 f8   stur	x27, [sp, #0x54]
0x101472d30:  e8 bb 00 79   strh	w8, [sp, #0x5c]
0x101472d34:  fc e3 05 f8   stur	x28, [sp, #0x5e]
0x101472d38:  fc 1f 40 f9   ldr	x28, [sp, #0x38]
0x101472d3c:  48 80 80 52   mov	w8, #0x402
0x101472d40:  e8 cf 00 79   strh	w8, [sp, #0x66]
0x101472d44:  f8 6b 00 b9   str	w24, [sp, #0x68]
0x101472d48:  f8 2f 40 b9   ldr	w24, [sp, #0x2c]
0x101472d4c:  e8 db 00 79   strh	w8, [sp, #0x6c]
0x101472d50:  f8 e3 06 b8   stur	w24, [sp, #0x6e]
0x101472d54:  e8 e7 00 79   strh	w8, [sp, #0x72]
0x101472d58:  e0 77 00 b9   str	w0, [sp, #0x74]
0x101472d5c:  60 5c ff d0   adrp	x0, 0x100000000
0x101472d60:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101472d64:  63 70 00 b0   adrp	x3, 0x10227f000
0x101472d68:  63 e0 0a 91   add	x3, x3, #0x2b8 ; "{\"msg%{public}.0s\":\"#durian #connection usecase\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"cond\":%{public}hhd, \"shouldLeash\":%{public}hhd, \"slotsInUse\":%{"...
0x101472d6c:  e4 03 01 91   add	x4, sp, #0x40
0x101472d70:  e1 03 1a aa   mov	x1, x26
0x101472d74:  02 00 80 52   mov	w2, #0
0x101472d78:  05 07 80 52   mov	w5, #0x38
0x101472d7c:  1d 89 1a 94   bl	j___os_log_impl
0x101472d80:  ; loc_101472d80
0x101472d80:  38 01 00 34   cbz	w24, loc_101472da4 ; ⤵ 0x24
0x101472d84:  62 81 00 d0   adrp	x2, 0x1024a0000
0x101472d88:  42 20 04 91   add	x2, x2, #0x108 ; _OBJC_CLASS_$_NSConstantIntegerNumber
0x101472d8c:  e0 03 1c aa   mov	x0, x28
0x101472d90:  e3 03 19 aa   mov	x3, x25
0x101472d94:  f3 72 1b 94   bl	j__objc_msgSend(x0, "setObject:forKeyedSubscript:")
0x101472d98:  e0 03 14 aa   mov	x0, x20
0x101472d9c:  42 00 80 52   mov	w2, #0x2
0x101472da0:  28 6c 1b 94   bl	j__objc_msgSend(x0, "setLeashState:")
0x101472da4:  ; loc_101472da4
0x101472da4:  b8 ae 40 b9   ldr	w24, [x21, #0xac]
0x101472da8:  e0 03 14 aa   mov	x0, x20
0x101472dac:  bd 0f 1b 94   bl	j__objc_msgSend(x0, "isHeleAccessory")
0x101472db0:  c0 05 00 34   cbz	w0, loc_101472e68 ; ⤵ 0xb8
0x101472db4:  e0 03 14 aa   mov	x0, x20
0x101472db8:  42 b6 1a 94   bl	j__objc_msgSend(x0, "connectCondition")
0x101472dbc:  80 0a 00 b4   cbz	x0, loc_101472f0c ; ⤵ 0x150
0x101472dc0:  08 81 00 b0   adrp	x8, 0x102493000
0x101472dc4:  08 41 25 91   add	x8, x8, #0x950 ; "bghele"
0x101472dc8:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x101472dcc:  db 00 80 52   mov	w27, #0x6
0x101472dd0:  d8 4e 80 52   mov	w24, #0x276
0x101472dd4:  6a 00 00 14   b	loc_101472f7c ; ⤵ 0x1a8
0x101472dd8:  ; loc_101472dd8
0x101472dd8:  88 88 00 90   adrp	x8, 0x102582000
0x101472ddc:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101472de0:  1f 05 00 b1   cmn	x8, #0x1
0x101472de4:  81 26 00 54   b.ne	loc_1014732b4 ; ⤵ 0x4d0
0x101472de8:  ; loc_101472de8
0x101472de8:  88 88 00 90   adrp	x8, 0x102582000
0x101472dec:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101472df0:  e0 03 15 aa   mov	x0, x21
0x101472df4:  01 00 80 52   mov	w1, #0
0x101472df8:  3e 8d 1a 94   bl	j__os_log_type_enabled
0x101472dfc:  40 23 00 34   cbz	w0, loc_101473264 ; ⤵ 0x468
0x101472e00:  e0 03 14 aa   mov	x0, x20
0x101472e04:  ef ac 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101472e08:  04 97 00 94   bl	0x101498a18
0x101472e0c:  f4 03 00 aa   mov	x20, x0
0x101472e10:  e0 03 13 aa   mov	x0, x19
0x101472e14:  03 f6 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101472e18:  00 97 00 94   bl	0x101498a18
0x101472e1c:  08 44 00 d0   adrp	x8, 0x101cf4000
0x101472e20:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101472e24:  e0 43 00 bd   str	s0, [sp, #0x40]
0x101472e28:  ff 47 00 b9   str	wzr, [sp, #0x44]
0x101472e2c:  48 04 81 52   mov	w8, #0x822
0x101472e30:  e8 93 00 79   strh	w8, [sp, #0x48]
0x101472e34:  e8 51 00 90   adrp	x8, 0x101eae000
0x101472e38:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101472e3c:  e8 a3 04 f8   stur	x8, [sp, #0x4a]
0x101472e40:  28 08 81 52   mov	w8, #0x841
0x101472e44:  e8 a7 00 79   strh	w8, [sp, #0x52]
0x101472e48:  f4 43 05 f8   stur	x20, [sp, #0x54]
0x101472e4c:  e8 bb 00 79   strh	w8, [sp, #0x5c]
0x101472e50:  e0 e3 05 f8   stur	x0, [sp, #0x5e]
0x101472e54:  60 5c ff d0   adrp	x0, 0x100000000
0x101472e58:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101472e5c:  63 70 00 b0   adrp	x3, 0x10227f000
0x101472e60:  63 7c 08 91   add	x3, x3, #0x21f ; "{\"msg%{public}.0s\":\"#durian #connection failed to retrieve token\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x101472e64:  5a ff ff 17   b	loc_101472bcc ; ⤴ -0x298
0x101472e68:  ; loc_101472e68
0x101472e68:  a8 00 80 52   mov	w8, #0x5
0x101472e6c:  18 03 08 0a   and	w24, w24, w8
0x101472e70:  e0 03 14 aa   mov	x0, x20
0x101472e74:  2b 14 1b 94   bl	j__objc_msgSend(x0, "isTAAISDevice")
0x101472e78:  20 02 00 34   cbz	w0, loc_101472ebc ; ⤵ 0x44
0x101472e7c:  78 07 00 34   cbz	w24, loc_101472f68 ; ⤵ 0xec
0x101472e80:  08 81 00 b0   adrp	x8, 0x102493000
0x101472e84:  08 c1 25 91   add	x8, x8, #0x970 ; "AIScoex"
0x101472e88:  c9 00 80 52   mov	w9, #0x6
0x101472e8c:  ca 4e 80 52   mov	w10, #0x276
0x101472e90:  ab b2 42 39   ldrb	w11, [x21, #0xac]
0x101472e94:  0c 81 00 b0   adrp	x12, 0x102493000
0x101472e98:  8c 41 26 91   add	x12, x12, #0x990 ; "AIS2g"
0x101472e9c:  7f 05 00 72   tst	w11, #0x3
0x101472ea0:  8b 00 80 52   mov	w11, #0x4
0x101472ea4:  cd 03 80 52   mov	w13, #0x1e
0x101472ea8:  b8 01 8a 9a   csel	x24, x13, x10, eq
0x101472eac:  88 01 88 9a   csel	x8, x12, x8, eq
0x101472eb0:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x101472eb4:  7b 01 89 9a   csel	x27, x11, x9, eq
0x101472eb8:  31 00 00 14   b	loc_101472f7c ; ⤵ 0xc4
0x101472ebc:  ; loc_101472ebc
0x101472ebc:  e0 03 14 aa   mov	x0, x20
0x101472ec0:  00 b6 1a 94   bl	j__objc_msgSend(x0, "connectCondition")
0x101472ec4:  c0 03 00 b4   cbz	x0, loc_101472f3c ; ⤵ 0x78
0x101472ec8:  b8 03 00 34   cbz	w24, loc_101472f3c ; ⤵ 0x74
0x101472ecc:  a0 2a 40 f9   ldr	x0, [x21, #0x50]
0x101472ed0:  ac 10 1b 94   bl	j__objc_msgSend(x0, "isMaintCoex")
0x101472ed4:  08 81 00 b0   adrp	x8, 0x102493000
0x101472ed8:  08 c1 27 91   add	x8, x8, #0x9f0 ; "maint2g"
0x101472edc:  89 00 80 52   mov	w9, #0x4
0x101472ee0:  ca 03 80 52   mov	w10, #0x1e
0x101472ee4:  0b 81 00 b0   adrp	x11, 0x102493000
0x101472ee8:  6b 41 27 91   add	x11, x11, #0x9d0 ; "maintcoex"
0x101472eec:  cc 00 80 52   mov	w12, #0x6
0x101472ef0:  cd 4e 80 52   mov	w13, #0x276
0x101472ef4:  1f 00 00 72   tst	w0, #0x1
0x101472ef8:  b8 11 8a 9a   csel	x24, x13, x10, ne
0x101472efc:  68 11 88 9a   csel	x8, x11, x8, ne
0x101472f00:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x101472f04:  9b 11 89 9a   csel	x27, x12, x9, ne
0x101472f08:  1d 00 00 14   b	loc_101472f7c ; ⤵ 0x74
0x101472f0c:  ; loc_101472f0c
0x101472f0c:  08 81 00 b0   adrp	x8, 0x102493000
0x101472f10:  08 c1 24 91   add	x8, x8, #0x930 ; "userhelewc"
0x101472f14:  09 81 00 b0   adrp	x9, 0x102493000
0x101472f18:  29 41 24 91   add	x9, x9, #0x910 ; "userhele"
0x101472f1c:  aa ae 40 b9   ldr	w10, [x21, #0xac]
0x101472f20:  5f 01 1f 72   tst	w10, #0x2
0x101472f24:  28 01 88 9a   csel	x8, x9, x8, eq
0x101472f28:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x101472f2c:  68 00 80 52   mov	w8, #0x3
0x101472f30:  1b 15 9f 9a   csinc	x27, x8, xzr, ne
0x101472f34:  d8 08 80 52   mov	w24, #0x46
0x101472f38:  11 00 00 14   b	loc_101472f7c ; ⤵ 0x44
0x101472f3c:  ; loc_101472f3c
0x101472f3c:  08 81 00 b0   adrp	x8, 0x102493000
0x101472f40:  08 41 28 91   add	x8, x8, #0xa10 ; "usercoex"
0x101472f44:  09 81 00 b0   adrp	x9, 0x102493000
0x101472f48:  29 c1 28 91   add	x9, x9, #0xa30 ; "userOr5g"
0x101472f4c:  aa ae 40 b9   ldr	w10, [x21, #0xac]
0x101472f50:  5f 01 1f 72   tst	w10, #0x2
0x101472f54:  28 01 88 9a   csel	x8, x9, x8, eq
0x101472f58:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x101472f5c:  68 00 80 52   mov	w8, #0x3
0x101472f60:  1b 15 9f 9a   csinc	x27, x8, xzr, ne
0x101472f64:  05 00 00 14   b	loc_101472f78 ; ⤵ 0x14
0x101472f68:  ; loc_101472f68
0x101472f68:  08 81 00 b0   adrp	x8, 0x102493000
0x101472f6c:  08 c1 26 91   add	x8, x8, #0x9b0 ; "AIS5g"
0x101472f70:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x101472f74:  3b 00 80 52   mov	w27, #0x1
0x101472f78:  ; loc_101472f78
0x101472f78:  f8 01 80 52   mov	w24, #0xf
0x101472f7c:  ; loc_101472f7c
0x101472f7c:  fa 83 00 32   mov	w26, #0x10001
0x101472f80:  e0 03 14 aa   mov	x0, x20
0x101472f84:  2f e1 1a 94   bl	j__objc_msgSend(x0, "firmwareUpdateReboot")
0x101472f88:  1f 00 00 71   cmp	w0, #0
0x101472f8c:  88 07 80 52   mov	w8, #0x3c
0x101472f90:  08 11 98 9a   csel	x8, x8, x24, ne
0x101472f94:  e8 1b 00 f9   str	x8, [sp, #0x30]
0x101472f98:  f8 78 00 f0   adrp	x24, 0x102391000
0x101472f9c:  00 97 45 f9   ldr	x0, [x24, #0xb28] ; __got._OBJC_CLASS_$_NSNumber
0x101472fa0:  e2 03 1b aa   mov	x2, x27
0x101472fa4:  37 27 1b 94   bl	j__objc_msgSend(x0, "numberWithInteger:")
0x101472fa8:  e2 03 00 aa   mov	x2, x0
0x101472fac:  e8 78 00 d0   adrp	x8, 0x102390000
0x101472fb0:  08 19 46 f9   ldr	x8, [x8, #0xc30] ; __got._CBConnectPeripheralOptionSetConnectScanDutyCycle
0x101472fb4:  03 01 40 f9   ldr	x3, [x8]
0x101472fb8:  e0 03 1c aa   mov	x0, x28
0x101472fbc:  69 72 1b 94   bl	j__objc_msgSend(x0, "setObject:forKeyedSubscript:")
0x101472fc0:  08 7e 00 d0   adrp	x8, 0x102434000
0x101472fc4:  08 81 08 91   add	x8, x8, #0x220
0x101472fc8:  08 0d 1b 8b   add	x8, x8, x27, lsl #0x3
0x101472fcc:  08 81 5f f8   ldur	x8, [x8, #-0x8]
0x101472fd0:  e8 0b 00 f9   str	x8, [sp, #0x10]
0x101472fd4:  e0 03 15 aa   mov	x0, x21
0x101472fd8:  02 87 1b 94   bl	j__objc_msgSend(x0, "shouldEnableExtendedRange")
0x101472fdc:  fb 03 00 aa   mov	x27, x0
0x101472fe0:  e0 03 14 aa   mov	x0, x20
0x101472fe4:  2f 0f 1b 94   bl	j__objc_msgSend(x0, "isHeleAccessory")
0x101472fe8:  fc 03 00 aa   mov	x28, x0
0x101472fec:  e0 03 14 aa   mov	x0, x20
0x101472ff0:  f4 0f 1b 94   bl	j__objc_msgSend(x0, "isLeashSlotInUse")
0x101472ff4:  1c 01 00 36   tbz	w28, #0, loc_101473014 ; ⤵ 0x20
0x101472ff8:  40 02 00 34   cbz	w0, loc_101473040 ; ⤵ 0x48
0x101472ffc:  e0 03 14 aa   mov	x0, x20
0x101473000:  b0 b5 1a 94   bl	j__objc_msgSend(x0, "connectCondition")
0x101473004:  48 0b 00 11   add	w8, w26, #0x2
0x101473008:  1f 00 00 f1   cmp	x0, #0
0x10147300c:  1b 15 9a 1a   csinc	w27, w8, w26, ne
0x101473010:  0a 00 00 14   b	loc_101473038 ; ⤵ 0x28
0x101473014:  ; loc_101473014
0x101473014:  20 02 00 34   cbz	w0, loc_101473058 ; ⤵ 0x44
0x101473018:  e0 03 14 aa   mov	x0, x20
0x10147301c:  a9 b5 1a 94   bl	j__objc_msgSend(x0, "connectCondition")
0x101473020:  48 67 00 11   add	w8, w26, #0x19
0x101473024:  7f 03 00 71   cmp	w27, #0
0x101473028:  29 00 a0 52   mov	w9, #0x10000
0x10147302c:  08 11 89 1a   csel	w8, w8, w9, ne
0x101473030:  1f 00 00 f1   cmp	x0, #0
0x101473034:  1b 01 9a 1a   csel	w27, w8, w26, eq
0x101473038:  ; loc_101473038
0x101473038:  fc 1f 40 f9   ldr	x28, [sp, #0x38]
0x10147303c:  1c 00 00 14   b	loc_1014730ac ; ⤵ 0x70
0x101473040:  ; loc_101473040
0x101473040:  e0 03 14 aa   mov	x0, x20
0x101473044:  b7 13 1b 94   bl	j__objc_msgSend(x0, "isTAAISDevice")
0x101473048:  fc 1f 40 f9   ldr	x28, [sp, #0x38]
0x10147304c:  20 01 00 36   tbz	w0, #0, loc_101473070 ; ⤵ 0x24
0x101473050:  5b 63 00 11   add	w27, w26, #0x18
0x101473054:  16 00 00 14   b	loc_1014730ac ; ⤵ 0x58
0x101473058:  ; loc_101473058
0x101473058:  e0 03 14 aa   mov	x0, x20
0x10147305c:  b1 13 1b 94   bl	j__objc_msgSend(x0, "isTAAISDevice")
0x101473060:  fc 1f 40 f9   ldr	x28, [sp, #0x38]
0x101473064:  00 01 00 36   tbz	w0, #0, loc_101473084 ; ⤵ 0x20
0x101473068:  5b 5f 00 11   add	w27, w26, #0x17
0x10147306c:  10 00 00 14   b	loc_1014730ac ; ⤵ 0x40
0x101473070:  ; loc_101473070
0x101473070:  e0 03 14 aa   mov	x0, x20
0x101473074:  93 b5 1a 94   bl	j__objc_msgSend(x0, "connectCondition")
0x101473078:  48 17 00 11   add	w8, w26, #0x5
0x10147307c:  49 1b 00 11   add	w9, w26, #0x6
0x101473080:  09 00 00 14   b	loc_1014730a4 ; ⤵ 0x24
0x101473084:  ; loc_101473084
0x101473084:  e0 03 14 aa   mov	x0, x20
0x101473088:  8e b5 1a 94   bl	j__objc_msgSend(x0, "connectCondition")
0x10147308c:  7f 03 00 71   cmp	w27, #0
0x101473090:  68 00 80 52   mov	w8, #0x3
0x101473094:  69 03 80 52   mov	w9, #0x1b
0x101473098:  28 11 88 1a   csel	w8, w9, w8, ne
0x10147309c:  48 03 08 0b   add	w8, w26, w8
0x1014730a0:  49 13 00 11   add	w9, w26, #0x4
0x1014730a4:  ; loc_1014730a4
0x1014730a4:  1f 00 00 f1   cmp	x0, #0
0x1014730a8:  1b 01 89 1a   csel	w27, w8, w9, eq
0x1014730ac:  ; loc_1014730ac
0x1014730ac:  00 97 45 f9   ldr	x0, [x24, #0xb28]
0x1014730b0:  e2 03 1b aa   mov	x2, x27
0x1014730b4:  1b 27 1b 94   bl	j__objc_msgSend(x0, "numberWithUnsignedInt:")
0x1014730b8:  e2 03 00 aa   mov	x2, x0
0x1014730bc:  e0 03 1c aa   mov	x0, x28
0x1014730c0:  e3 03 19 aa   mov	x3, x25
0x1014730c4:  27 72 1b 94   bl	j__objc_msgSend(x0, "setObject:forKeyedSubscript:")
0x1014730c8:  e0 03 1b aa   mov	x0, x27
0x1014730cc:  7d 00 00 94   bl	0x1014732c0
0x1014730d0:  f8 03 00 aa   mov	x24, x0
0x1014730d4:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x1014730d8:  1f 05 00 b1   cmn	x8, #0x1
0x1014730dc:  81 0e 00 54   b.ne	loc_1014732ac ; ⤵ 0x1d0
0x1014730e0:  ; loc_1014730e0
0x1014730e0:  f9 3e 46 f9   ldr	x25, [x23, #0xc78]
0x1014730e4:  e0 03 19 aa   mov	x0, x25
0x1014730e8:  01 00 80 52   mov	w1, #0
0x1014730ec:  81 8c 1a 94   bl	j__os_log_type_enabled
0x1014730f0:  e0 08 00 34   cbz	w0, loc_10147320c ; ⤵ 0x11c
0x1014730f4:  e0 03 14 aa   mov	x0, x20
0x1014730f8:  32 ac 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x1014730fc:  47 96 00 94   bl	0x101498a18
0x101473100:  f8 07 00 f9   str	x24, [sp, #0x8]
0x101473104:  f8 03 00 aa   mov	x24, x0
0x101473108:  e0 03 13 aa   mov	x0, x19
0x10147310c:  45 f5 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101473110:  42 96 00 94   bl	0x101498a18
0x101473114:  f7 03 00 aa   mov	x23, x0
0x101473118:  fa 13 40 f9   ldr	x26, [sp, #0x20]
0x10147311c:  e0 03 1a aa   mov	x0, x26
0x101473120:  70 9f 1a 94   bl	j__objc_msgSend(x0, "address")
0x101473124:  27 97 b8 97   bl	0x100298dc0
0x101473128:  f6 03 00 aa   mov	x22, x0
0x10147312c:  e0 03 1a aa   mov	x0, x26
0x101473130:  e4 1c 1b 94   bl	j__objc_msgSend(x0, "ltk")
0x101473134:  30 9b 00 94   bl	0x101499df4
0x101473138:  fa 03 00 aa   mov	x26, x0
0x10147313c:  bc ae 40 b9   ldr	w28, [x21, #0xac]
0x101473140:  e0 03 14 aa   mov	x0, x20
0x101473144:  5f b5 1a 94   bl	j__objc_msgSend(x0, "connectCondition")
0x101473148:  e8 39 00 b0   adrp	x8, 0x101bb0000
0x10147314c:  00 89 42 fd   ldr	d0, [x8, #0x510]
0x101473150:  e0 43 00 bd   str	s0, [sp, #0x40]
0x101473154:  ff 47 00 b9   str	wzr, [sp, #0x44]
0x101473158:  48 04 81 52   mov	w8, #0x822
0x10147315c:  e8 93 00 79   strh	w8, [sp, #0x48]
0x101473160:  c9 51 00 f0   adrp	x9, 0x101eae000
0x101473164:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101473168:  e9 a3 04 f8   stur	x9, [sp, #0x4a]
0x10147316c:  29 08 81 52   mov	w9, #0x841
0x101473170:  e9 a7 00 79   strh	w9, [sp, #0x52]
0x101473174:  f8 43 05 f8   stur	x24, [sp, #0x54]
0x101473178:  e9 bb 00 79   strh	w9, [sp, #0x5c]
0x10147317c:  f7 e3 05 f8   stur	x23, [sp, #0x5e]
0x101473180:  e9 cf 00 79   strh	w9, [sp, #0x66]
0x101473184:  f6 37 00 f9   str	x22, [sp, #0x68]
0x101473188:  e9 e3 00 79   strh	w9, [sp, #0x70]
0x10147318c:  fa 23 07 f8   stur	x26, [sp, #0x72]
0x101473190:  e8 f7 00 79   strh	w8, [sp, #0x7a]
0x101473194:  e8 07 40 f9   ldr	x8, [sp, #0x8]
0x101473198:  e8 c3 07 f8   stur	x8, [sp, #0x7c]
0x10147319c:  48 08 81 52   mov	w8, #0x842
0x1014731a0:  e8 0b 01 79   strh	w8, [sp, #0x84]
0x1014731a4:  e8 0b 40 f9   ldr	x8, [sp, #0x10]
0x1014731a8:  e8 63 08 f8   stur	x8, [sp, #0x86]
0x1014731ac:  48 80 80 52   mov	w8, #0x402
0x1014731b0:  e8 1f 01 79   strh	w8, [sp, #0x8e]
0x1014731b4:  ea 1b 40 f9   ldr	x10, [sp, #0x30]
0x1014731b8:  ea 93 00 b9   str	w10, [sp, #0x90]
0x1014731bc:  e8 2b 01 79   strh	w8, [sp, #0x94]
0x1014731c0:  fc 63 09 b8   stur	w28, [sp, #0x96]
0x1014731c4:  fc 1f 40 f9   ldr	x28, [sp, #0x38]
0x1014731c8:  e8 37 01 79   strh	w8, [sp, #0x9a]
0x1014731cc:  ea 2f 40 b9   ldr	w10, [sp, #0x2c]
0x1014731d0:  ea 9f 00 b9   str	w10, [sp, #0x9c]
0x1014731d4:  e8 43 01 79   strh	w8, [sp, #0xa0]
0x1014731d8:  e0 23 0a b8   stur	w0, [sp, #0xa2]
0x1014731dc:  e9 4f 01 79   strh	w9, [sp, #0xa6]
0x1014731e0:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x1014731e4:  e8 57 00 f9   str	x8, [sp, #0xa8]
0x1014731e8:  60 5c ff b0   adrp	x0, 0x100000000
0x1014731ec:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014731f0:  63 70 00 90   adrp	x3, 0x10227f000
0x1014731f4:  63 28 0e 91   add	x3, x3, #0x38a ; "{\"msg%{public}.0s\":\"#durian #connection create\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"address\":%{private, location:escape_only}@, \"LTK\":%{private, loc"...
0x1014731f8:  e4 03 01 91   add	x4, sp, #0x40
0x1014731fc:  e1 03 19 aa   mov	x1, x25
0x101473200:  02 00 80 52   mov	w2, #0
0x101473204:  05 0e 80 52   mov	w5, #0x70
0x101473208:  fa 87 1a 94   bl	j___os_log_impl
0x10147320c:  ; loc_10147320c
0x10147320c:  e0 03 15 aa   mov	x0, x21
0x101473210:  f7 1b 40 f9   ldr	x23, [sp, #0x30]
0x101473214:  e2 03 17 aa   mov	x2, x23
0x101473218:  e3 03 14 aa   mov	x3, x20
0x10147321c:  e4 03 13 aa   mov	x4, x19
0x101473220:  50 4d 1b 94   bl	j__objc_msgSend(x0, "scheduleConnectionTimeout:toDevice:forPeripeheral:")
0x101473224:  e0 03 14 aa   mov	x0, x20
0x101473228:  ee 9a 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147322c:  f6 03 00 aa   mov	x22, x0
0x101473230:  ac b5 1a 94   bl	j__objc_msgSend(x0, "connectionAttemptCount")
0x101473234:  02 04 00 91   add	x2, x0, #0x1
0x101473238:  e0 03 16 aa   mov	x0, x22
0x10147323c:  89 5a 1b 94   bl	j__objc_msgSend(x0, "setConnectionAttemptCount:")
0x101473240:  e0 03 14 aa   mov	x0, x20
0x101473244:  e7 9a 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101473248:  e2 03 1b aa   mov	x2, x27
0x10147324c:  9d 81 1b 94   bl	j__objc_msgSend(x0, "setUsecase:")
0x101473250:  e0 03 15 aa   mov	x0, x21
0x101473254:  e2 03 13 aa   mov	x2, x19
0x101473258:  e3 03 1c aa   mov	x3, x28
0x10147325c:  e4 03 17 aa   mov	x4, x23
0x101473260:  50 b5 1a 94   bl	j__objc_msgSend(x0, "connectToPeripheral:withOptions:andTimeout:")
0x101473264:  ; loc_101473264
0x101473264:  a8 03 5a f8   ldur	x8, [fp, #-0x60]
0x101473268:  e9 78 00 f0   adrp	x9, 0x102392000
0x10147326c:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101473270:  29 01 40 f9   ldr	x9, [x9]
0x101473274:  3f 01 08 eb   cmp	x9, x8
0x101473278:  21 02 00 54   b.ne	loc_1014732bc ; ⤵ 0x44
0x10147327c:  fd 7b 51 a9   ldp	fp, lr, [sp, #0x110]
0x101473280:  f4 4f 50 a9   ldp	x20, x19, [sp, #0x100]
0x101473284:  f6 57 4f a9   ldp	x22, x21, [sp, #0xf0]
0x101473288:  f8 5f 4e a9   ldp	x24, x23, [sp, #0xe0]
0x10147328c:  fa 67 4d a9   ldp	x26, x25, [sp, #0xd0]
0x101473290:  fc 6f 4c a9   ldp	x28, x27, [sp, #0xc0]
0x101473294:  ff 83 04 91   add	sp, sp, #0x120
0x101473298:  ff 0f 5f d6   retab
0x10147329c:  ; loc_10147329c
0x10147329c:  e0 73 1a 94   bl	0x101b1021c
0x1014732a0:  2c fe ff 17   b	loc_101472b50 ; ⤴ -0x750
0x1014732a4:  ; loc_1014732a4
0x1014732a4:  de 73 1a 94   bl	0x101b1021c
0x1014732a8:  80 fe ff 17   b	loc_101472ca8 ; ⤴ -0x600
0x1014732ac:  ; loc_1014732ac
0x1014732ac:  cc 73 1a 94   bl	0x101b101dc
0x1014732b0:  8c ff ff 17   b	loc_1014730e0 ; ⤴ -0x1d0
0x1014732b4:  ; loc_1014732b4
0x1014732b4:  da 73 1a 94   bl	0x101b1021c
0x1014732b8:  cc fe ff 17   b	loc_101472de8 ; ⤴ -0x4d0
0x1014732bc:  ; loc_1014732bc
0x1014732bc:  a1 87 1a 94   bl	j____stack_chk_fail

sub_1014732c0:
0x1014732c0:  e8 03 00 aa   mov	x8, x0
0x1014732c4:  10 80 40 71   subs	w16, w0, #0x20, lsl #0xc
0x1014732c8:  cb 02 00 54   b.lt	loc_101473320 ; ⤵ 0x58
0x1014732cc:  1f 01 42 71   cmp	w8, #0x80, lsl #0xc
0x1014732d0:  ed 04 00 54   b.le	loc_10147336c ; ⤵ 0x9c
0x1014732d4:  1f 01 44 71   cmp	w8, #0x100, lsl #0xc
0x1014732d8:  ec 07 00 54   b.gt	loc_1014733d4 ; ⤵ 0xfc
0x1014732dc:  1f 81 43 71   cmp	w8, #0xe0, lsl #0xc
0x1014732e0:  8a 0d 00 54   b.ge	loc_101473490 ; ⤵ 0x1b0
0x1014732e4:  1f 81 42 71   cmp	w8, #0xa0, lsl #0xc
0x1014732e8:  0b 12 00 54   b.lt	loc_101473528 ; ⤵ 0x240
0x1014732ec:  1f 01 43 71   cmp	w8, #0xc0, lsl #0xc
0x1014732f0:  6a 1a 00 54   b.ge	loc_10147363c ; ⤵ 0x34c
0x1014732f4:  1f 81 42 71   cmp	w8, #0xa0, lsl #0xc
0x1014732f8:  00 36 00 54   b.eq	loc_1014739b8 ; ⤵ 0x6c0
0x1014732fc:  1f c1 42 71   cmp	w8, #0xb0, lsl #0xc
0x101473300:  00 3b 00 54   b.eq	loc_101473a60 ; ⤵ 0x760
0x101473304:  29 00 80 52   mov	w9, #0x1
0x101473308:  69 01 a0 72   movk	w9, #0xb, lsl #0x10
0x10147330c:  1f 01 09 6b   cmp	w8, w9
0x101473310:  e1 52 00 54   b.ne	loc_101473d6c ; ⤵ 0xa5c
0x101473314:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473318:  00 0c 11 91   add	x0, x0, #0x443 ; "SofrwareUpdateOutboxControllerAuth"
0x10147331c:  c0 03 5f d6   ret
0x101473320:  ; loc_101473320
0x101473320:  10 41 40 51   sub	w16, w8, #0x10, lsl #0xc
0x101473324:  1f 7e 00 71   cmp	w16, #0x1f
0x101473328:  09 04 00 54   b.ls	loc_1014733a8 ; ⤵ 0x80
0x10147332c:  1f 65 00 71   cmp	w8, #0x19
0x101473330:  68 07 00 54   b.hi	loc_10147341c ; ⤵ 0xec
0x101473334:  c0 4e 00 d0   adrp	x0, 0x101e4d000
0x101473338:  00 14 0b 91   add	x0, x0, #0x2c5 ; "Unspecified"
0x10147333c:  f0 03 08 2a   mov	w16, w8
0x101473340:  1f 66 00 f1   cmp	x16, #0x19
0x101473344:  10 92 9f 9a   csel	x16, x16, xzr, ls
0x101473348:  11 79 ff d0   adrp	x17, 0x100395000
0x10147334c:  31 a2 19 91   add	x17, x17, #0x668 ; " \n"
0x101473350:  30 7a b0 b8   ldrsw	x16, [x17, x16, lsl #0x2]
0x101473354:  11 00 00 10   adr	x17, 0x101473354
0x101473358:  30 02 10 8b   add	x16, x17, x16
0x10147335c:  00 02 1f d6   br	x16
0x101473360:  e0 53 00 f0   adrp	x0, 0x101ef2000
0x101473364:  00 48 18 91   add	x0, x0, #0x612 ; "HealthKit"
0x101473368:  c0 03 5f d6   ret
0x10147336c:  ; loc_10147336c
0x10147336c:  1f c1 40 71   cmp	w8, #0x30, lsl #0xc
0x101473370:  2a 07 00 54   b.ge	loc_101473454 ; ⤵ 0xe4
0x101473374:  1f 7e 00 71   cmp	w16, #0x1f
0x101473378:  a8 4f 00 54   b.hi	loc_101473d6c ; ⤵ 0x9f4
0x10147337c:  1f 7e 00 f1   cmp	x16, #0x1f
0x101473380:  10 92 9f 9a   csel	x16, x16, xzr, ls
0x101473384:  11 79 ff d0   adrp	x17, 0x100395000
0x101473388:  31 32 1e 91   add	x17, x17, #0x78c
0x10147338c:  30 7a b0 b8   ldrsw	x16, [x17, x16, lsl #0x2]
0x101473390:  11 00 00 10   adr	x17, 0x101473390
0x101473394:  30 02 10 8b   add	x16, x17, x16
0x101473398:  00 02 1f d6   br	x16
0x10147339c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014733a0:  00 84 02 91   add	x0, x0, #0xa1 ; "SharingDefault"
0x1014733a4:  c0 03 5f d6   ret
0x1014733a8:  ; loc_1014733a8
0x1014733a8:  1f 7e 00 f1   cmp	x16, #0x1f
0x1014733ac:  10 92 9f 9a   csel	x16, x16, xzr, ls
0x1014733b0:  11 79 ff d0   adrp	x17, 0x100395000
0x1014733b4:  31 32 1c 91   add	x17, x17, #0x70c
0x1014733b8:  30 7a b0 b8   ldrsw	x16, [x17, x16, lsl #0x2]
0x1014733bc:  11 00 00 10   adr	x17, 0x1014733bc
0x1014733c0:  30 02 10 8b   add	x16, x17, x16
0x1014733c4:  00 02 1f d6   br	x16
0x1014733c8:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x1014733cc:  00 24 37 91   add	x0, x0, #0xdc9 ; "FindMyAction"
0x1014733d0:  c0 03 5f d6   ret
0x1014733d4:  ; loc_1014733d4
0x1014733d4:  29 00 b0 12   mov	w9, #0x7ffeffff
0x1014733d8:  1f 01 09 6b   cmp	w8, w9
0x1014733dc:  4d 0e 00 54   b.le	loc_1014735a4 ; ⤵ 0x1c8
0x1014733e0:  29 00 b0 52   mov	w9, #0x80010000
0x1014733e4:  10 01 09 0b   add	w16, w8, w9
0x1014733e8:  1f 4a 00 71   cmp	w16, #0x12
0x1014733ec:  08 4c 00 54   b.hi	loc_101473d6c ; ⤵ 0x980
0x1014733f0:  1f 4a 00 f1   cmp	x16, #0x12
0x1014733f4:  10 92 9f 9a   csel	x16, x16, xzr, ls
0x1014733f8:  11 79 ff d0   adrp	x17, 0x100395000
0x1014733fc:  31 32 20 91   add	x17, x17, #0x80c
0x101473400:  30 7a b0 b8   ldrsw	x16, [x17, x16, lsl #0x2]
0x101473404:  11 00 00 10   adr	x17, 0x101473404
0x101473408:  30 02 10 8b   add	x16, x17, x16
0x10147340c:  00 02 1f d6   br	x16
0x101473410:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473414:  00 50 19 91   add	x0, x0, #0x654 ; "InternalTestNoLockScan"
0x101473418:  c0 03 5f d6   ret
0x10147341c:  ; loc_10147341c
0x10147341c:  10 01 04 51   sub	w16, w8, #0x100
0x101473420:  1f 3a 00 71   cmp	w16, #0xe
0x101473424:  48 4a 00 54   b.hi	loc_101473d6c ; ⤵ 0x948
0x101473428:  1f 3a 00 f1   cmp	x16, #0xe
0x10147342c:  10 92 9f 9a   csel	x16, x16, xzr, ls
0x101473430:  11 79 ff d0   adrp	x17, 0x100395000
0x101473434:  31 42 1b 91   add	x17, x17, #0x6d0
0x101473438:  30 7a b0 b8   ldrsw	x16, [x17, x16, lsl #0x2]
0x10147343c:  11 00 00 10   adr	x17, 0x10147343c
0x101473440:  30 02 10 8b   add	x16, x17, x16
0x101473444:  00 02 1f d6   br	x16
0x101473448:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x10147344c:  00 a4 33 91   add	x0, x0, #0xce9 ; "DevicePresenceDetection"
0x101473450:  c0 03 5f d6   ret
0x101473454:  ; loc_101473454
0x101473454:  49 00 80 52   mov	w9, #0x2
0x101473458:  c9 00 a0 72   movk	w9, #0x6, lsl #0x10
0x10147345c:  1f 01 09 6b   cmp	w8, w9
0x101473460:  6c 04 00 54   b.gt	loc_1014734ec ; ⤵ 0x8c
0x101473464:  1f 81 41 71   cmp	w8, #0x60, lsl #0xc
0x101473468:  8a 0b 00 54   b.ge	loc_1014735d8 ; ⤵ 0x170
0x10147346c:  1f c1 40 71   cmp	w8, #0x30, lsl #0xc
0x101473470:  c0 25 00 54   b.eq	loc_101473928 ; ⤵ 0x4b8
0x101473474:  1f 01 41 71   cmp	w8, #0x40, lsl #0xc
0x101473478:  00 24 00 54   b.eq	loc_1014738f8 ; ⤵ 0x480
0x10147347c:  1f 41 41 71   cmp	w8, #0x50, lsl #0xc
0x101473480:  61 47 00 54   b.ne	loc_101473d6c ; ⤵ 0x8ec
0x101473484:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473488:  00 24 0f 91   add	x0, x0, #0x3c9 ; "RapportThirdParty"
0x10147348c:  c0 03 5f d6   ret
0x101473490:  ; loc_101473490
0x101473490:  49 00 80 52   mov	w9, #0x2
0x101473494:  e9 01 a0 72   movk	w9, #0xf, lsl #0x10
0x101473498:  1f 01 09 6b   cmp	w8, w9
0x10147349c:  8d 06 00 54   b.le	loc_10147356c ; ⤵ 0xd0
0x1014734a0:  a9 00 80 52   mov	w9, #0x5
0x1014734a4:  e9 01 a0 72   movk	w9, #0xf, lsl #0x10
0x1014734a8:  1f 01 09 6b   cmp	w8, w9
0x1014734ac:  cc 0d 00 54   b.gt	loc_101473664 ; ⤵ 0x1b8
0x1014734b0:  69 00 80 52   mov	w9, #0x3
0x1014734b4:  e9 01 a0 72   movk	w9, #0xf, lsl #0x10
0x1014734b8:  1f 01 09 6b   cmp	w8, w9
0x1014734bc:  40 28 00 54   b.eq	loc_1014739c4 ; ⤵ 0x508
0x1014734c0:  89 00 80 52   mov	w9, #0x4
0x1014734c4:  e9 01 a0 72   movk	w9, #0xf, lsl #0x10
0x1014734c8:  1f 01 09 6b   cmp	w8, w9
0x1014734cc:  00 2d 00 54   b.eq	loc_101473a6c ; ⤵ 0x5a0
0x1014734d0:  a9 00 80 52   mov	w9, #0x5
0x1014734d4:  e9 01 a0 72   movk	w9, #0xf, lsl #0x10
0x1014734d8:  1f 01 09 6b   cmp	w8, w9
0x1014734dc:  81 44 00 54   b.ne	loc_101473d6c ; ⤵ 0x890
0x1014734e0:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014734e4:  00 3c 17 91   add	x0, x0, #0x5cf ; "SOSBeaconActivateScan"
0x1014734e8:  c0 03 5f d6   ret
0x1014734ec:  ; loc_1014734ec
0x1014734ec:  1f c1 41 71   cmp	w8, #0x70, lsl #0xc
0x1014734f0:  cc 08 00 54   b.gt	loc_101473608 ; ⤵ 0x118
0x1014734f4:  69 00 80 52   mov	w9, #0x3
0x1014734f8:  c9 00 a0 72   movk	w9, #0x6, lsl #0x10
0x1014734fc:  1f 01 09 6b   cmp	w8, w9
0x101473500:  a0 21 00 54   b.eq	loc_101473934 ; ⤵ 0x434
0x101473504:  89 00 80 52   mov	w9, #0x4
0x101473508:  c9 00 a0 72   movk	w9, #0x6, lsl #0x10
0x10147350c:  1f 01 09 6b   cmp	w8, w9
0x101473510:  a0 1f 00 54   b.eq	loc_101473904 ; ⤵ 0x3f4
0x101473514:  1f c1 41 71   cmp	w8, #0x70, lsl #0xc
0x101473518:  a1 42 00 54   b.ne	loc_101473d6c ; ⤵ 0x854
0x10147351c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473520:  00 98 11 91   add	x0, x0, #0x466 ; "PrecisionFindingFinder"
0x101473524:  c0 03 5f d6   ret
0x101473528:  ; loc_101473528
0x101473528:  49 00 80 52   mov	w9, #0x2
0x10147352c:  09 01 a0 72   movk	w9, #0x8, lsl #0x10
0x101473530:  1f 01 09 6b   cmp	w8, w9
0x101473534:  2d 0b 00 54   b.le	loc_101473698 ; ⤵ 0x164
0x101473538:  69 00 80 52   mov	w9, #0x3
0x10147353c:  09 01 a0 72   movk	w9, #0x8, lsl #0x10
0x101473540:  1f 01 09 6b   cmp	w8, w9
0x101473544:  c0 21 00 54   b.eq	loc_10147397c ; ⤵ 0x438
0x101473548:  1f 41 42 71   cmp	w8, #0x90, lsl #0xc
0x10147354c:  60 26 00 54   b.eq	loc_101473a18 ; ⤵ 0x4cc
0x101473550:  29 00 80 52   mov	w9, #0x1
0x101473554:  29 01 a0 72   movk	w9, #0x9, lsl #0x10
0x101473558:  1f 01 09 6b   cmp	w8, w9
0x10147355c:  81 40 00 54   b.ne	loc_101473d6c ; ⤵ 0x810
0x101473560:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473564:  00 58 13 91   add	x0, x0, #0x4d6 ; "FindNearbyPencil"
0x101473568:  c0 03 5f d6   ret
0x10147356c:  ; loc_10147356c
0x10147356c:  1f c1 43 71   cmp	w8, #0xf0, lsl #0xc
0x101473570:  ab 0a 00 54   b.lt	loc_1014736c4 ; ⤵ 0x154
0x101473574:  a0 20 00 54   b.eq	loc_101473988 ; ⤵ 0x414
0x101473578:  29 00 80 52   mov	w9, #0x1
0x10147357c:  e9 01 a0 72   movk	w9, #0xf, lsl #0x10
0x101473580:  1f 01 09 6b   cmp	w8, w9
0x101473584:  00 25 00 54   b.eq	loc_101473a24 ; ⤵ 0x4a0
0x101473588:  49 00 80 52   mov	w9, #0x2
0x10147358c:  e9 01 a0 72   movk	w9, #0xf, lsl #0x10
0x101473590:  1f 01 09 6b   cmp	w8, w9
0x101473594:  c1 3e 00 54   b.ne	loc_101473d6c ; ⤵ 0x7d8
0x101473598:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x10147359c:  00 10 16 91   add	x0, x0, #0x584 ; "SOSBeaconPrecisionFindResponse"
0x1014735a0:  c0 03 5f d6   ret
0x1014735a4:  ; loc_1014735a4
0x1014735a4:  29 00 80 52   mov	w9, #0x1
0x1014735a8:  09 02 a0 72   movk	w9, #0x10, lsl #0x10
0x1014735ac:  1f 01 09 6b   cmp	w8, w9
0x1014735b0:  00 27 00 54   b.eq	loc_101473a90 ; ⤵ 0x4e0
0x1014735b4:  1f 41 44 71   cmp	w8, #0x110, lsl #0xc
0x1014735b8:  e0 27 00 54   b.eq	loc_101473ab4 ; ⤵ 0x4fc
0x1014735bc:  29 00 80 52   mov	w9, #0x1
0x1014735c0:  29 02 a0 72   movk	w9, #0x11, lsl #0x10
0x1014735c4:  1f 01 09 6b   cmp	w8, w9
0x1014735c8:  21 3d 00 54   b.ne	loc_101473d6c ; ⤵ 0x7a4
0x1014735cc:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014735d0:  00 d4 18 91   add	x0, x0, #0x635 ; "ProximityServiceAccessorySetup"
0x1014735d4:  c0 03 5f d6   ret
0x1014735d8:  ; loc_1014735d8
0x1014735d8:  40 1b 00 54   b.eq	loc_101473940 ; ⤵ 0x368
0x1014735dc:  29 00 80 52   mov	w9, #0x1
0x1014735e0:  c9 00 a0 72   movk	w9, #0x6, lsl #0x10
0x1014735e4:  1f 01 09 6b   cmp	w8, w9
0x1014735e8:  40 19 00 54   b.eq	loc_101473910 ; ⤵ 0x328
0x1014735ec:  49 00 80 52   mov	w9, #0x2
0x1014735f0:  c9 00 a0 72   movk	w9, #0x6, lsl #0x10
0x1014735f4:  1f 01 09 6b   cmp	w8, w9
0x1014735f8:  a1 3b 00 54   b.ne	loc_101473d6c ; ⤵ 0x774
0x1014735fc:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473600:  00 04 10 91   add	x0, x0, #0x401 ; "MacSetup"
0x101473604:  c0 03 5f d6   ret
0x101473608:  ; loc_101473608
0x101473608:  29 00 80 52   mov	w9, #0x1
0x10147360c:  e9 00 a0 72   movk	w9, #0x7, lsl #0x10
0x101473610:  1f 01 09 6b   cmp	w8, w9
0x101473614:  c0 19 00 54   b.eq	loc_10147394c ; ⤵ 0x338
0x101473618:  49 00 80 52   mov	w9, #0x2
0x10147361c:  e9 00 a0 72   movk	w9, #0x7, lsl #0x10
0x101473620:  1f 01 09 6b   cmp	w8, w9
0x101473624:  c0 17 00 54   b.eq	loc_10147391c ; ⤵ 0x2f8
0x101473628:  1f 01 42 71   cmp	w8, #0x80, lsl #0xc
0x10147362c:  01 3a 00 54   b.ne	loc_101473d6c ; ⤵ 0x740
0x101473630:  c0 44 00 b0   adrp	x0, 0x101d0c000
0x101473634:  00 bc 25 91   add	x0, x0, #0x96f ; "ADPD"
0x101473638:  c0 03 5f d6   ret
0x10147363c:  ; loc_10147363c
0x10147363c:  a0 1c 00 54   b.eq	loc_1014739d0 ; ⤵ 0x394
0x101473640:  1f 41 43 71   cmp	w8, #0xd0, lsl #0xc
0x101473644:  a0 21 00 54   b.eq	loc_101473a78 ; ⤵ 0x434
0x101473648:  29 00 80 52   mov	w9, #0x1
0x10147364c:  a9 01 a0 72   movk	w9, #0xd, lsl #0x10
0x101473650:  1f 01 09 6b   cmp	w8, w9
0x101473654:  c1 38 00 54   b.ne	loc_101473d6c ; ⤵ 0x718
0x101473658:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x10147365c:  00 a0 14 91   add	x0, x0, #0x528 ; "DCTProtocolDataAndTelephony"
0x101473660:  c0 03 5f d6   ret
0x101473664:  ; loc_101473664
0x101473664:  c9 00 80 52   mov	w9, #0x6
0x101473668:  e9 01 a0 72   movk	w9, #0xf, lsl #0x10
0x10147366c:  1f 01 09 6b   cmp	w8, w9
0x101473670:  60 1b 00 54   b.eq	loc_1014739dc ; ⤵ 0x36c
0x101473674:  e9 00 80 52   mov	w9, #0x7
0x101473678:  e9 01 a0 72   movk	w9, #0xf, lsl #0x10
0x10147367c:  1f 01 09 6b   cmp	w8, w9
0x101473680:  20 20 00 54   b.eq	loc_101473a84 ; ⤵ 0x404
0x101473684:  1f 01 44 71   cmp	w8, #0x100, lsl #0xc
0x101473688:  21 37 00 54   b.ne	loc_101473d6c ; ⤵ 0x6e4
0x10147368c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473690:  00 44 18 91   add	x0, x0, #0x611 ; "DOS"
0x101473694:  c0 03 5f d6   ret
0x101473698:  ; loc_101473698
0x101473698:  29 00 80 52   mov	w9, #0x1
0x10147369c:  09 01 a0 72   movk	w9, #0x8, lsl #0x10
0x1014736a0:  1f 01 09 6b   cmp	w8, w9
0x1014736a4:  80 1a 00 54   b.eq	loc_1014739f4 ; ⤵ 0x350
0x1014736a8:  49 00 80 52   mov	w9, #0x2
0x1014736ac:  09 01 a0 72   movk	w9, #0x8, lsl #0x10
0x1014736b0:  1f 01 09 6b   cmp	w8, w9
0x1014736b4:  c1 35 00 54   b.ne	loc_101473d6c ; ⤵ 0x6b8
0x1014736b8:  e0 47 00 b0   adrp	x0, 0x101d70000
0x1014736bc:  00 94 27 91   add	x0, x0, #0x9e5 ; "MicroLocation"
0x1014736c0:  c0 03 5f d6   ret
0x1014736c4:  ; loc_1014736c4
0x1014736c4:  1f 81 43 71   cmp	w8, #0xe0, lsl #0xc
0x1014736c8:  c0 19 00 54   b.eq	loc_101473a00 ; ⤵ 0x338
0x1014736cc:  29 00 80 52   mov	w9, #0x1
0x1014736d0:  c9 01 a0 72   movk	w9, #0xe, lsl #0x10
0x1014736d4:  1f 01 09 6b   cmp	w8, w9
0x1014736d8:  a1 34 00 54   b.ne	loc_101473d6c ; ⤵ 0x694
0x1014736dc:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014736e0:  00 4c 15 91   add	x0, x0, #0x553 ; "NearbyFaceTimeData"
0x1014736e4:  c0 03 5f d6   ret
0x1014736e8:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x1014736ec:  00 60 36 91   add	x0, x0, #0xd98 ; "TCCBluetooth"
0x1014736f0:  c0 03 5f d6   ret
0x1014736f4:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x1014736f8:  00 38 36 91   add	x0, x0, #0xd8e ; "LECarPlay"
0x1014736fc:  c0 03 5f d6   ret
0x101473700:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x101473704:  00 04 36 91   add	x0, x0, #0xd81 ; "SafetyAlerts"
0x101473708:  c0 03 5f d6   ret
0x10147370c:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x101473710:  00 58 34 91   add	x0, x0, #0xd16 ; "ProximityScreenOnLeechScan"
0x101473714:  c0 03 5f d6   ret
0x101473718:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x10147371c:  00 d0 36 91   add	x0, x0, #0xdb4 ; "HighPriorityScanWiFi"
0x101473720:  c0 03 5f d6   ret
0x101473724:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x101473728:  00 04 34 91   add	x0, x0, #0xd01 ; "AudioBox"
0x10147372c:  c0 03 5f d6   ret
0x101473730:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x101473734:  00 c4 34 91   add	x0, x0, #0xd31 ; "MacMigrate"
0x101473738:  c0 03 5f d6   ret
0x10147373c:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x101473740:  00 f0 34 91   add	x0, x0, #0xd3c ; "HIDUARTService"
0x101473744:  c0 03 5f d6   ret
0x101473748:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x10147374c:  00 28 34 91   add	x0, x0, #0xd0a ; "SIMTransfer"
0x101473750:  c0 03 5f d6   ret
0x101473754:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x101473758:  00 2c 35 91   add	x0, x0, #0xd4b ; "AccessibilitySwitchControlPairing"
0x10147375c:  c0 03 5f d6   ret
0x101473760:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x101473764:  00 b4 35 91   add	x0, x0, #0xd6d ; "BaseBandFastConnect"
0x101473768:  c0 03 5f d6   ret
0x10147376c:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x101473770:  00 94 36 91   add	x0, x0, #0xda5 ; "AOPBufferLeech"
0x101473774:  c0 03 5f d6   ret
0x101473778:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x10147377c:  00 70 0d 91   add	x0, x0, #0x35c ; "SharingVisionProStateChange"
0x101473780:  c0 03 5f d6   ret
0x101473784:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473788:  00 08 0d 91   add	x0, x0, #0x342 ; "SharingVisionProDiscovery"
0x10147378c:  c0 03 5f d6   ret
0x101473790:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473794:  00 40 06 91   add	x0, x0, #0x190 ; "SharingPeopleProximity"
0x101473798:  c0 03 5f d6   ret
0x10147379c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014737a0:  00 a4 07 91   add	x0, x0, #0x1e9 ; "SharingDoubleBoostGenericScan"
0x1014737a4:  c0 03 5f d6   ret
0x1014737a8:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014737ac:  00 e0 05 91   add	x0, x0, #0x178 ; "SharingUniversalControl"
0x1014737b0:  c0 03 5f d6   ret
0x1014737b4:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014737b8:  00 a0 0e 91   add	x0, x0, #0x3a8 ; "SharingHomePodSetup"
0x1014737bc:  c0 03 5f d6   ret
0x1014737c0:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014737c4:  00 e0 0d 91   add	x0, x0, #0x378 ; "SharingContinuityScreen"
0x1014737c8:  c0 03 5f d6   ret
0x1014737cc:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014737d0:  00 60 09 91   add	x0, x0, #0x258 ; "SharingAirDrop"
0x1014737d4:  c0 03 5f d6   ret
0x1014737d8:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014737dc:  00 a0 08 91   add	x0, x0, #0x228 ; "SharingEDTWombatStreamStart"
0x1014737e0:  c0 03 5f d6   ret
0x1014737e4:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014737e8:  00 3c 0c 91   add	x0, x0, #0x30f ; "SharingCountryCodeUpdate"
0x1014737ec:  c0 03 5f d6   ret
0x1014737f0:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014737f4:  00 c4 03 91   add	x0, x0, #0xf1 ; "SharingEDTScreenOn"
0x1014737f8:  c0 03 5f d6   ret
0x1014737fc:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473800:  00 80 05 91   add	x0, x0, #0x160 ; "SharingWombatBackground"
0x101473804:  c0 03 5f d6   ret
0x101473808:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x10147380c:  00 10 04 91   add	x0, x0, #0x104 ; "SharingEDTWiFiDisabled"
0x101473810:  c0 03 5f d6   ret
0x101473814:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473818:  00 28 07 91   add	x0, x0, #0x1ca ; "SharingEDTNearbydMotionStopped"
0x10147381c:  c0 03 5f d6   ret
0x101473820:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473824:  00 0c 0a 91   add	x0, x0, #0x283 ; "SharingNearbyInvitationParticipant"
0x101473828:  c0 03 5f d6   ret
0x10147382c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473830:  00 c0 02 91   add	x0, x0, #0xb0 ; "SharingPhoneAutoUnlock"
0x101473834:  c0 03 5f d6   ret
0x101473838:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x10147383c:  00 70 03 91   add	x0, x0, #0xdc ; "SharingMacAutoUnlock"
0x101473840:  c0 03 5f d6   ret
0x101473844:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473848:  00 1c 03 91   add	x0, x0, #0xc7 ; "SharingSiriWatchAuth"
0x10147384c:  c0 03 5f d6   ret
0x101473850:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473854:  00 1c 08 91   add	x0, x0, #0x207 ; "SharingEDTIncomingAdvertisement "
0x101473858:  c0 03 5f d6   ret
0x10147385c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473860:  00 70 0b 91   add	x0, x0, #0x2dc ; "SharingAirDropNeedsCLink"
0x101473864:  c0 03 5f d6   ret
0x101473868:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x10147386c:  00 9c 06 91   add	x0, x0, #0x1a7 ; "SharingEDTEnsembleOpenDisplayPrefs"
0x101473870:  c0 03 5f d6   ret
0x101473874:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473878:  00 9c 09 91   add	x0, x0, #0x267 ; "SharingNearbyInvitationHost"
0x10147387c:  c0 03 5f d6   ret
0x101473880:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473884:  00 40 0e 91   add	x0, x0, #0x390 ; "SharingEDTRemoteDisplay"
0x101473888:  c0 03 5f d6   ret
0x10147388c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473890:  00 6c 04 91   add	x0, x0, #0x11b ; "SharingEDTWombatEligibleAsDefaultCamera"
0x101473894:  c0 03 5f d6   ret
0x101473898:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x10147389c:  00 10 09 91   add	x0, x0, #0x244 ; "SharingOYAutoUnlock"
0x1014738a0:  c0 03 5f d6   ret
0x1014738a4:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014738a8:  00 a0 0c 91   add	x0, x0, #0x328 ; "SharingMacPhoneAutoUnlock"
0x1014738ac:  c0 03 5f d6   ret
0x1014738b0:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014738b4:  00 0c 05 91   add	x0, x0, #0x143 ; "SharingEDTWombatCameraPicker"
0x1014738b8:  c0 03 5f d6   ret
0x1014738bc:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014738c0:  00 98 0a 91   add	x0, x0, #0x2a6 ; "SharingAirDropAskToAirDrop"
0x1014738c4:  c0 03 5f d6   ret
0x1014738c8:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014738cc:  00 04 0b 91   add	x0, x0, #0x2c1 ; "SharingAirDropTempIdentity"
0x1014738d0:  c0 03 5f d6   ret
0x1014738d4:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014738d8:  00 d4 0b 91   add	x0, x0, #0x2f5 ; "SharingRemoteWidgetUpdate"
0x1014738dc:  c0 03 5f d6   ret
0x1014738e0:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014738e4:  00 54 21 91   add	x0, x0, #0x855 ; "InternalTestAdvWithHigherPowerServiceDataS2"
0x1014738e8:  c0 03 5f d6   ret
0x1014738ec:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014738f0:  00 a0 1f 91   add	x0, x0, #0x7e8 ; "InternalTestAdvWithHigherPowerServiceDataConnectable"
0x1014738f4:  c0 03 5f d6   ret
0x1014738f8:  ; loc_1014738f8
0x1014738f8:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x1014738fc:  00 98 32 91   add	x0, x0, #0xca6 ; "DigitalCarKeyThirdParty"
0x101473900:  c0 03 5f d6   ret
0x101473904:  ; loc_101473904
0x101473904:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473908:  00 60 10 91   add	x0, x0, #0x418 ; "AppleIDSignInSettings"
0x10147390c:  c0 03 5f d6   ret
0x101473910:  ; loc_101473910
0x101473910:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473914:  00 b8 0f 91   add	x0, x0, #0x3ee ; "UseCaseSIMTransfer"
0x101473918:  c0 03 5f d6   ret
0x10147391c:  ; loc_10147391c
0x10147391c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473920:  00 50 12 91   add	x0, x0, #0x494 ; "SpatialHandoffHome"
0x101473924:  c0 03 5f d6   ret
0x101473928:  ; loc_101473928
0x101473928:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x10147392c:  00 f0 0e 91   add	x0, x0, #0x3bc ; "DigitalIDTSA"
0x101473930:  c0 03 5f d6   ret
0x101473934:  ; loc_101473934
0x101473934:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473938:  00 28 10 91   add	x0, x0, #0x40a ; "AppleIDSignIn"
0x10147393c:  c0 03 5f d6   ret
0x101473940:  ; loc_101473940
0x101473940:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473944:  00 6c 0f 91   add	x0, x0, #0x3db ; "CaptiveNetworkJoin"
0x101473948:  c0 03 5f d6   ret
0x10147394c:  ; loc_10147394c
0x10147394c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473950:  00 f4 11 91   add	x0, x0, #0x47d ; "PrecisionFindingFindee"
0x101473954:  c0 03 5f d6   ret
0x101473958:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x10147395c:  00 0c 01 91   add	x0, x0, #0x43 ; "FindMyActionExtendedRangeLE2M"
0x101473960:  c0 03 5f d6   ret
0x101473964:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473968:  00 f0 1d 91   add	x0, x0, #0x77c ; "InternalTestScanLowDutyCycleMCOnly"
0x10147396c:  c0 03 5f d6   ret
0x101473970:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473974:  00 ec 1a 91   add	x0, x0, #0x6bb ; "InternalTestScanFor20Seconds"
0x101473978:  c0 03 5f d6   ret
0x10147397c:  ; loc_10147397c
0x10147397c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473980:  00 c8 12 91   add	x0, x0, #0x4b2 ; "MicroLocationLeech"
0x101473984:  c0 03 5f d6   ret
0x101473988:  ; loc_101473988
0x101473988:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x10147398c:  00 98 15 91   add	x0, x0, #0x566 ; "SOSBeaconPartA"
0x101473990:  c0 03 5f d6   ret
0x101473994:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473998:  00 7c 1e 91   add	x0, x0, #0x79f ; "InternalTestUUIDScanWithMinRSSI"
0x10147399c:  c0 03 5f d6   ret
0x1014739a0:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014739a4:  00 f0 1c 91   add	x0, x0, #0x73c ; "InternalTestDiscoveryScanWithMRC"
0x1014739a8:  c0 03 5f d6   ret
0x1014739ac:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x1014739b0:  00 4c 3d 91   add	x0, x0, #0xf53 ; "FindMyWildTimedScan"
0x1014739b4:  c0 03 5f d6   ret
0x1014739b8:  ; loc_1014739b8
0x1014739b8:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014739bc:  00 9c 13 91   add	x0, x0, #0x4e7 ; "AccessDigitalHomeKey"
0x1014739c0:  c0 03 5f d6   ret
0x1014739c4:  ; loc_1014739c4
0x1014739c4:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014739c8:  00 8c 16 91   add	x0, x0, #0x5a3 ; "SOSBeaconPrecisionFindRequest"
0x1014739cc:  c0 03 5f d6   ret
0x1014739d0:  ; loc_1014739d0
0x1014739d0:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014739d4:  00 f0 13 91   add	x0, x0, #0x4fc ; "ProxControlDeviceClose"
0x1014739d8:  c0 03 5f d6   ret
0x1014739dc:  ; loc_1014739dc
0x1014739dc:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014739e0:  00 94 17 91   add	x0, x0, #0x5e5 ; "SOSBeaconActivateAdvA"
0x1014739e4:  c0 03 5f d6   ret
0x1014739e8:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014739ec:  00 1c 1a 91   add	x0, x0, #0x687 ; "InternalTestScanWithNoDups"
0x1014739f0:  c0 03 5f d6   ret
0x1014739f4:  ; loc_1014739f4
0x1014739f4:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x1014739f8:  00 9c 12 91   add	x0, x0, #0x4a7 ; "ADPDBuffer"
0x1014739fc:  c0 03 5f d6   ret
0x101473a00:  ; loc_101473a00
0x101473a00:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a04:  00 10 15 91   add	x0, x0, #0x544 ; "NearbyFaceTime"
0x101473a08:  c0 03 5f d6   ret
0x101473a0c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a10:  00 74 20 91   add	x0, x0, #0x81d ; "InternalTestAdvWithHigherPowerServiceDataNonConnectable"
0x101473a14:  c0 03 5f d6   ret
0x101473a18:  ; loc_101473a18
0x101473a18:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a1c:  00 14 13 91   add	x0, x0, #0x4c5 ; "FindNearbyRemote"
0x101473a20:  c0 03 5f d6   ret
0x101473a24:  ; loc_101473a24
0x101473a24:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a28:  00 d4 15 91   add	x0, x0, #0x575 ; "SOSBeaconPartB"
0x101473a2c:  c0 03 5f d6   ret
0x101473a30:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a34:  00 88 1a 91   add	x0, x0, #0x6a2 ; "InternalTestScanWithDups"
0x101473a38:  c0 03 5f d6   ret
0x101473a3c:  a0 51 00 d0   adrp	x0, 0x101ea9000
0x101473a40:  00 cc 3c 91   add	x0, x0, #0xf33 ; "FindMyHELE"
0x101473a44:  c0 03 5f d6   ret
0x101473a48:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a4c:  00 10 1c 91   add	x0, x0, #0x704 ; "InternalTestScanFor10ClockSeconds"
0x101473a50:  c0 03 5f d6   ret
0x101473a54:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a58:  00 ac 19 91   add	x0, x0, #0x66b ; "InternalTestNoScreenOffScan"
0x101473a5c:  c0 03 5f d6   ret
0x101473a60:  ; loc_101473a60
0x101473a60:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a64:  00 b8 10 91   add	x0, x0, #0x42e ; "SoftwareUpdateBTWake"
0x101473a68:  c0 03 5f d6   ret
0x101473a6c:  ; loc_101473a6c
0x101473a6c:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a70:  00 04 17 91   add	x0, x0, #0x5c1 ; "SOSBeaconScan"
0x101473a74:  c0 03 5f d6   ret
0x101473a78:  ; loc_101473a78
0x101473a78:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a7c:  00 4c 14 91   add	x0, x0, #0x513 ; "DCTProtocolTelephony"
0x101473a80:  c0 03 5f d6   ret
0x101473a84:  ; loc_101473a84
0x101473a84:  a0 51 00 f0   adrp	x0, 0x101eaa000
0x101473a88:  00 ec 17 91   add	x0, x0, #0x5fb ; "SOSBeaconActivateAdvB"
0x101473a8c:  c0 03 5f d6   ret

