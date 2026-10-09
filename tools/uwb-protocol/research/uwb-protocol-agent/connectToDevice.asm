
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

