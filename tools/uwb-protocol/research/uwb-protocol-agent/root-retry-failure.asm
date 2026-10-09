
-[CLDurianDeviceManager failedToConnectToPossiblePeripheral:withError:]:
0x101474ca8:  7f 23 03 d5   pacibsp
0x101474cac:  ff 03 05 d1   sub	sp, sp, #0x140
0x101474cb0:  fc 6f 0e a9   stp	x28, x27, [sp, #0xe0]
0x101474cb4:  fa 67 0f a9   stp	x26, x25, [sp, #0xf0]
0x101474cb8:  f8 5f 10 a9   stp	x24, x23, [sp, #0x100]
0x101474cbc:  f6 57 11 a9   stp	x22, x21, [sp, #0x110]
0x101474cc0:  f4 4f 12 a9   stp	x20, x19, [sp, #0x120]
0x101474cc4:  fd 7b 13 a9   stp	fp, lr, [sp, #0x130]
0x101474cc8:  fd c3 04 91   add	fp, sp, #0x130
0x101474ccc:  f6 03 03 aa   mov	x22, x3
0x101474cd0:  f5 03 02 aa   mov	x21, x2
0x101474cd4:  f7 03 00 aa   mov	x23, x0
0x101474cd8:  e8 78 00 d0   adrp	x8, 0x102392000
0x101474cdc:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101474ce0:  08 01 40 f9   ldr	x8, [x8]
0x101474ce4:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x101474ce8:  c6 bd 1a 94   bl	j__objc_msgSend(x0, "deviceWithPossiblePeripheral:")
0x101474cec:  f3 03 00 aa   mov	x19, x0
0x101474cf0:  e0 03 16 aa   mov	x0, x22
0x101474cf4:  8b ab 1a 94   bl	j__objc_msgSend(x0, "code")
0x101474cf8:  f8 03 00 aa   mov	x24, x0
0x101474cfc:  e0 03 16 aa   mov	x0, x22
0x101474d00:  f8 c6 1a 94   bl	j__objc_msgSend(x0, "domain")
0x101474d04:  e8 78 00 b0   adrp	x8, 0x102391000
0x101474d08:  08 fd 47 f9   ldr	x8, [x8, #0xff8] ; __got._kCLErrorDomainPrivate
0x101474d0c:  02 01 40 f9   ldr	x2, [x8]
0x101474d10:  14 07 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101474d14:  f6 03 00 aa   mov	x22, x0
0x101474d18:  e0 03 13 aa   mov	x0, x19
0x101474d1c:  31 94 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101474d20:  e2 03 18 aa   mov	x2, x24
0x101474d24:  76 00 00 34   cbz	w22, loc_101474d30 ; ⤵ 0xc
0x101474d28:  d6 64 1b 94   bl	j__objc_msgSend(x0, "setLocationPeripheralFailureCode:")
0x101474d2c:  02 00 00 14   b	loc_101474d34 ; ⤵ 0x8
0x101474d30:  ; loc_101474d30
0x101474d30:  ac 50 1b 94   bl	j__objc_msgSend(x0, "setBluetoothPeripheralFailureCode:")
0x101474d34:  ; loc_101474d34
0x101474d34:  7b 88 00 d0   adrp	x27, 0x102582000
0x101474d38:  76 88 00 d0   adrp	x22, 0x102582000
0x101474d3c:  53 01 00 b4   cbz	x19, loc_101474d64 ; ⤵ 0x28
0x101474d40:  e0 03 13 aa   mov	x0, x19
0x101474d44:  27 94 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101474d48:  f9 03 00 aa   mov	x25, x0
0x101474d4c:  e0 03 13 aa   mov	x0, x19
0x101474d50:  34 2a 1b 94   bl	j__objc_msgSend(x0, "pendingConnectionAttempt")
0x101474d54:  60 05 00 b4   cbz	x0, loc_101474e00 ; ⤵ 0xac
0x101474d58:  e0 03 13 aa   mov	x0, x19
0x101474d5c:  31 2a 1b 94   bl	j__objc_msgSend(x0, "pendingConnectionAttempt")
0x101474d60:  2a 00 00 14   b	loc_101474e08 ; ⤵ 0xa8
0x101474d64:  ; loc_101474d64
0x101474d64:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101474d68:  1f 05 00 b1   cmn	x8, #0x1
0x101474d6c:  a1 29 00 54   b.ne	loc_1014752a0 ; ⤵ 0x534
0x101474d70:  ; loc_101474d70
0x101474d70:  d3 3e 46 f9   ldr	x19, [x22, #0xc78]
0x101474d74:  e0 03 13 aa   mov	x0, x19
0x101474d78:  01 00 80 52   mov	w1, #0
0x101474d7c:  5d 85 1a 94   bl	j__os_log_type_enabled
0x101474d80:  00 27 00 34   cbz	w0, loc_101475260 ; ⤵ 0x4e0
0x101474d84:  00 00 80 d2   mov	x0, #0
0x101474d88:  0e a5 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101474d8c:  23 8f 00 94   bl	0x101498a18
0x101474d90:  f4 03 00 aa   mov	x20, x0
0x101474d94:  e0 03 15 aa   mov	x0, x21
0x101474d98:  22 ee 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101474d9c:  1f 8f 00 94   bl	0x101498a18
0x101474da0:  08 44 00 90   adrp	x8, 0x101cf4000
0x101474da4:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101474da8:  e0 63 00 bd   str	s0, [sp, #0x60]
0x101474dac:  ff 67 00 b9   str	wzr, [sp, #0x64]
0x101474db0:  48 04 81 52   mov	w8, #0x822
0x101474db4:  e8 d3 00 79   strh	w8, [sp, #0x68]
0x101474db8:  c8 51 00 d0   adrp	x8, 0x101eae000
0x101474dbc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101474dc0:  e8 a3 06 f8   stur	x8, [sp, #0x6a]
0x101474dc4:  28 08 81 52   mov	w8, #0x841
0x101474dc8:  e8 e7 00 79   strh	w8, [sp, #0x72]
0x101474dcc:  f4 43 07 f8   stur	x20, [sp, #0x74]
0x101474dd0:  e8 fb 00 79   strh	w8, [sp, #0x7c]
0x101474dd4:  e0 e3 07 f8   stur	x0, [sp, #0x7e]
0x101474dd8:  60 5c ff 90   adrp	x0, 0x100000000
0x101474ddc:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101474de0:  43 70 00 f0   adrp	x3, 0x10227f000
0x101474de4:  63 90 2a 91   add	x3, x3, #0xaa4 ; "{\"msg%{public}.0s\":\"#durian #connection failed to connect unrecognized peripheral\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x101474de8:  e4 83 01 91   add	x4, sp, #0x60
0x101474dec:  e1 03 13 aa   mov	x1, x19
0x101474df0:  02 00 80 52   mov	w2, #0
0x101474df4:  c5 04 80 52   mov	w5, #0x26
0x101474df8:  fe 80 1a 94   bl	j___os_log_impl
0x101474dfc:  19 01 00 14   b	loc_101475260 ; ⤵ 0x464
0x101474e00:  ; loc_101474e00
0x101474e00:  e0 03 13 aa   mov	x0, x19
0x101474e04:  f7 93 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101474e08:  ; loc_101474e08
0x101474e08:  76 2c 1b 94   bl	j__objc_msgSend(x0, "possiblePeripherals")
0x101474e0c:  35 b2 1a 94   bl	j__objc_msgSend(x0, "count")
0x101474e10:  e0 0f 00 f9   str	x0, [sp, #0x18]
0x101474e14:  e0 2a 40 f9   ldr	x0, [x23, #0x50]
0x101474e18:  e2 03 13 aa   mov	x2, x19
0x101474e1c:  a9 0b 1b 94   bl	j__objc_msgSend(x0, "isStandardMaintenanceForDevice:")
0x101474e20:  e0 27 00 b9   str	w0, [sp, #0x24]
0x101474e24:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101474e28:  1f 05 00 b1   cmn	x8, #0x1
0x101474e2c:  61 23 00 54   b.ne	loc_101475298 ; ⤵ 0x46c
0x101474e30:  ; loc_101474e30
0x101474e30:  1c 7f 60 d3   lsl	x28, x24, #0x20
0x101474e34:  da 3e 46 f9   ldr	x26, [x22, #0xc78]
0x101474e38:  e0 03 1a aa   mov	x0, x26
0x101474e3c:  01 00 80 52   mov	w1, #0
0x101474e40:  2c 85 1a 94   bl	j__os_log_type_enabled
0x101474e44:  00 0a 00 34   cbz	w0, loc_101474f84 ; ⤵ 0x140
0x101474e48:  c8 01 c0 d2   mov	x8, #0xe00000000
0x101474e4c:  9f 03 08 eb   cmp	x28, x8
0x101474e50:  e8 17 9f 1a   cset	w8, eq
0x101474e54:  e8 0f 00 b9   str	w8, [sp, #0xc]
0x101474e58:  e0 03 13 aa   mov	x0, x19
0x101474e5c:  d9 a4 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101474e60:  ee 8e 00 94   bl	0x101498a18
0x101474e64:  e0 03 00 f9   str	x0, [sp]
0x101474e68:  e0 03 13 aa   mov	x0, x19
0x101474e6c:  dd 93 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101474e70:  ec ed 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101474e74:  e9 8e 00 94   bl	0x101498a18
0x101474e78:  fc 0b 00 f9   str	x28, [sp, #0x10]
0x101474e7c:  fc 03 00 aa   mov	x28, x0
0x101474e80:  e0 03 15 aa   mov	x0, x21
0x101474e84:  e7 ed 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x101474e88:  e4 8e 00 94   bl	0x101498a18
0x101474e8c:  f6 03 00 aa   mov	x22, x0
0x101474e90:  e0 03 13 aa   mov	x0, x19
0x101474e94:  9b 05 1b 94   bl	j__objc_msgSend(x0, "isConnected")
0x101474e98:  fb 03 15 aa   mov	x27, x21
0x101474e9c:  f5 03 17 aa   mov	x21, x23
0x101474ea0:  f7 03 00 aa   mov	x23, x0
0x101474ea4:  e0 03 19 aa   mov	x0, x25
0x101474ea8:  5e 87 1b 94   bl	j__objc_msgSend(x0, "state")
0x101474eac:  f4 03 00 aa   mov	x20, x0
0x101474eb0:  e0 03 13 aa   mov	x0, x19
0x101474eb4:  db 29 1b 94   bl	j__objc_msgSend(x0, "pendingConnectionAttempt")
0x101474eb8:  08 44 00 90   adrp	x8, 0x101cf4000
0x101474ebc:  00 e1 47 fd   ldr	d0, [x8, #0xfc0]
0x101474ec0:  1f 00 00 f1   cmp	x0, #0
0x101474ec4:  e0 63 00 bd   str	s0, [sp, #0x60]
0x101474ec8:  e8 07 9f 1a   cset	w8, ne
0x101474ecc:  49 04 81 52   mov	w9, #0x822
0x101474ed0:  e9 d3 00 79   strh	w9, [sp, #0x68]
0x101474ed4:  c9 51 00 d0   adrp	x9, 0x101eae000
0x101474ed8:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101474edc:  ff 67 00 b9   str	wzr, [sp, #0x64]
0x101474ee0:  e9 a3 06 f8   stur	x9, [sp, #0x6a]
0x101474ee4:  29 08 81 52   mov	w9, #0x841
0x101474ee8:  e9 e7 00 79   strh	w9, [sp, #0x72]
0x101474eec:  ea 03 40 f9   ldr	x10, [sp]
0x101474ef0:  ea 43 07 f8   stur	x10, [sp, #0x74]
0x101474ef4:  e9 fb 00 79   strh	w9, [sp, #0x7c]
0x101474ef8:  fc e3 07 f8   stur	x28, [sp, #0x7e]
0x101474efc:  fc 2b 41 a9   ldp	x28, x10, [sp, #0x10]
0x101474f00:  e9 0f 01 79   strh	w9, [sp, #0x86]
0x101474f04:  f6 47 00 f9   str	x22, [sp, #0x88]
0x101474f08:  76 88 00 d0   adrp	x22, 0x102582000
0x101474f0c:  49 80 80 52   mov	w9, #0x402
0x101474f10:  e9 23 01 79   strh	w9, [sp, #0x90]
0x101474f14:  f7 23 09 b8   stur	w23, [sp, #0x92]
0x101474f18:  f7 03 15 aa   mov	x23, x21
0x101474f1c:  f5 03 1b aa   mov	x21, x27
0x101474f20:  7b 88 00 d0   adrp	x27, 0x102582000
0x101474f24:  e9 2f 01 79   strh	w9, [sp, #0x96]
0x101474f28:  f4 9b 00 b9   str	w20, [sp, #0x98]
0x101474f2c:  e9 3b 01 79   strh	w9, [sp, #0x9c]
0x101474f30:  ea e3 09 b8   stur	w10, [sp, #0x9e]
0x101474f34:  e9 47 01 79   strh	w9, [sp, #0xa2]
0x101474f38:  e8 a7 00 b9   str	w8, [sp, #0xa4]
0x101474f3c:  e9 53 01 79   strh	w9, [sp, #0xa8]
0x101474f40:  ea 83 01 91   add	x10, sp, #0x60
0x101474f44:  e8 0f 40 b9   ldr	w8, [sp, #0xc]
0x101474f48:  48 a1 04 b8   stur	w8, [x10, #0x4a]
0x101474f4c:  e9 5f 01 79   strh	w9, [sp, #0xae]
0x101474f50:  e8 27 40 b9   ldr	w8, [sp, #0x24]
0x101474f54:  e8 b3 00 b9   str	w8, [sp, #0xb0]
0x101474f58:  e9 6b 01 79   strh	w9, [sp, #0xb4]
0x101474f5c:  58 61 05 b8   stur	w24, [x10, #0x56]
0x101474f60:  60 5c ff 90   adrp	x0, 0x100000000
0x101474f64:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101474f68:  43 70 00 f0   adrp	x3, 0x10227f000
0x101474f6c:  63 38 2d 91   add	x3, x3, #0xb4e ; "{\"msg%{public}.0s\":\"#durian #connectattempt periph failure\", \"item\":%{private, location:escape_only}@, \"attemptId\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"conne"...
0x101474f70:  e4 83 01 91   add	x4, sp, #0x60
0x101474f74:  e1 03 1a aa   mov	x1, x26
0x101474f78:  02 00 80 52   mov	w2, #0
0x101474f7c:  45 0b 80 52   mov	w5, #0x5a
0x101474f80:  9c 80 1a 94   bl	j___os_log_impl
0x101474f84:  ; loc_101474f84
0x101474f84:  f4 80 00 f0   adrp	x20, 0x102493000
0x101474f88:  94 c2 2d 91   add	x20, x20, #0xb70 ; "periphfailure"
0x101474f8c:  e0 03 13 aa   mov	x0, x19
0x101474f90:  e2 03 14 aa   mov	x2, x20
0x101474f94:  1b 14 1b 94   bl	j__objc_msgSend(x0, "logTaskCounts:")
0x101474f98:  e0 03 13 aa   mov	x0, x19
0x101474f9c:  e2 03 14 aa   mov	x2, x20
0x101474fa0:  68 13 1b 94   bl	j__objc_msgSend(x0, "logConnectionAttempts:")
0x101474fa4:  e0 03 13 aa   mov	x0, x19
0x101474fa8:  9e 29 1b 94   bl	j__objc_msgSend(x0, "pendingConnectionAttempt")
0x101474fac:  1f 00 00 f1   cmp	x0, #0
0x101474fb0:  c8 01 c0 d2   mov	x8, #0xe00000000
0x101474fb4:  80 03 48 fa   ccmp	x28, x8, #0, eq
0x101474fb8:  e8 17 9f 1a   cset	w8, eq
0x101474fbc:  e9 27 40 b9   ldr	w9, [sp, #0x24]
0x101474fc0:  08 01 09 0a   and	w8, w8, w9
0x101474fc4:  1f 05 00 71   cmp	w8, #0x1
0x101474fc8:  01 01 00 54   b.ne	loc_101474fe8 ; ⤵ 0x20
0x101474fcc:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x101474fd0:  1f 05 00 f1   cmp	x8, #0x1
0x101474fd4:  a1 00 00 54   b.ne	loc_101474fe8 ; ⤵ 0x14
0x101474fd8:  e0 03 17 aa   mov	x0, x23
0x101474fdc:  e2 03 13 aa   mov	x2, x19
0x101474fe0:  18 7f 1b 94   bl	j__objc_msgSend(x0, "shouldEvictForDevice:")
0x101474fe4:  e0 13 00 37   tbnz	w0, #0, loc_101475260 ; ⤵ 0x27c
0x101474fe8:  ; loc_101474fe8
0x101474fe8:  e0 03 13 aa   mov	x0, x19
0x101474fec:  8d 29 1b 94   bl	j__objc_msgSend(x0, "pendingConnectionAttempt")
0x101474ff0:  a0 00 00 b4   cbz	x0, loc_101475004 ; ⤵ 0x14
0x101474ff4:  e0 03 13 aa   mov	x0, x19
0x101474ff8:  e2 03 15 aa   mov	x2, x21
0x101474ffc:  a9 3c 1b 94   bl	j__objc_msgSend(x0, "removePossiblePeripheral:")
0x101475000:  04 00 00 14   b	loc_101475010 ; ⤵ 0x10
0x101475004:  ; loc_101475004
0x101475004:  e0 03 19 aa   mov	x0, x25
0x101475008:  e2 03 15 aa   mov	x2, x21
0x10147500c:  c5 2b 1b 94   bl	j__objc_msgSend(x0, "popConnectionMaterialForPeripheral:")
0x101475010:  ; loc_101475010
0x101475010:  e0 03 13 aa   mov	x0, x19
0x101475014:  3b 05 1b 94   bl	j__objc_msgSend(x0, "isConnected")
0x101475018:  a0 00 00 37   tbnz	w0, #0, loc_10147502c ; ⤵ 0x14
0x10147501c:  e0 03 19 aa   mov	x0, x25
0x101475020:  00 87 1b 94   bl	j__objc_msgSend(x0, "state")
0x101475024:  1f 0c 00 f1   cmp	x0, #0x3
0x101475028:  41 02 00 54   b.ne	loc_101475070 ; ⤵ 0x48
0x10147502c:  ; loc_10147502c
0x10147502c:  e0 03 13 aa   mov	x0, x19
0x101475030:  02 00 80 52   mov	w2, #0
0x101475034:  bb 6f 1b 94   bl	j__objc_msgSend(x0, "setReconnecting:")
0x101475038:  e0 03 13 aa   mov	x0, x19
0x10147503c:  31 05 1b 94   bl	j__objc_msgSend(x0, "isConnected")
0x101475040:  00 11 00 37   tbnz	w0, #0, loc_101475260 ; ⤵ 0x220
0x101475044:  e0 03 19 aa   mov	x0, x25
0x101475048:  f6 86 1b 94   bl	j__objc_msgSend(x0, "state")
0x10147504c:  1f 0c 00 f1   cmp	x0, #0x3
0x101475050:  81 10 00 54   b.ne	loc_101475260 ; ⤵ 0x210
0x101475054:  e0 03 13 aa   mov	x0, x19
0x101475058:  72 29 1b 94   bl	j__objc_msgSend(x0, "pendingConnectionAttempt")
0x10147505c:  e0 07 00 b4   cbz	x0, loc_101475158 ; ⤵ 0xfc
0x101475060:  e0 03 17 aa   mov	x0, x23
0x101475064:  e2 03 13 aa   mov	x2, x19
0x101475068:  36 93 1a 94   bl	j__objc_msgSend(x0, "activatePendingConnectionAttemptForDevice:")
0x10147506c:  7d 00 00 14   b	loc_101475260 ; ⤵ 0x1f4
0x101475070:  ; loc_101475070
0x101475070:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x101475074:  1f 05 00 b1   cmn	x8, #0x1
0x101475078:  81 11 00 54   b.ne	loc_1014752a8 ; ⤵ 0x230
0x10147507c:  ; loc_10147507c
0x10147507c:  d6 3e 46 f9   ldr	x22, [x22, #0xc78]
0x101475080:  e0 03 16 aa   mov	x0, x22
0x101475084:  01 00 80 52   mov	w1, #0
0x101475088:  9a 84 1a 94   bl	j__os_log_type_enabled
0x10147508c:  60 02 00 34   cbz	w0, loc_1014750d8 ; ⤵ 0x4c
0x101475090:  e8 43 00 f0   adrp	x8, 0x101cf4000
0x101475094:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101475098:  e0 63 00 bd   str	s0, [sp, #0x60]
0x10147509c:  ff 67 00 b9   str	wzr, [sp, #0x64]
0x1014750a0:  48 04 81 52   mov	w8, #0x822
0x1014750a4:  e8 d3 00 79   strh	w8, [sp, #0x68]
0x1014750a8:  c8 51 00 b0   adrp	x8, 0x101eae000
0x1014750ac:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014750b0:  e8 a3 06 f8   stur	x8, [sp, #0x6a]
0x1014750b4:  40 5c ff f0   adrp	x0, 0x100000000
0x1014750b8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014750bc:  43 70 00 d0   adrp	x3, 0x10227f000
0x1014750c0:  63 b4 32 91   add	x3, x3, #0xcad ; "{\"msg%{public}.0s\":\"#durian #connection continuing attempt to connect to a peripheral having same address but multiple LTKs serially\"}"
0x1014750c4:  e4 83 01 91   add	x4, sp, #0x60
0x1014750c8:  e1 03 16 aa   mov	x1, x22
0x1014750cc:  02 00 80 52   mov	w2, #0
0x1014750d0:  45 02 80 52   mov	w5, #0x12
0x1014750d4:  47 80 1a 94   bl	j___os_log_impl
0x1014750d8:  ; loc_1014750d8
0x1014750d8:  e0 03 17 aa   mov	x0, x23
0x1014750dc:  19 94 1b 94   bl	j__objc_msgSend(x0, "systemUtils")
0x1014750e0:  f4 03 00 aa   mov	x20, x0
0x1014750e4:  00 00 80 d2   mov	x0, #0
0x1014750e8:  01 90 8f 52   mov	w1, #0x7c80
0x1014750ec:  21 50 a9 72   movk	w1, #0x4a81, lsl #0x10
0x1014750f0:  dc 81 1a 94   bl	j__dispatch_time
0x1014750f4:  e2 03 00 aa   mov	x2, x0
0x1014750f8:  e3 8a 40 f9   ldr	x3, [x23, #0x110]
0x1014750fc:  e8 a3 00 91   add	x8, sp, #0x28
0x101475100:  f0 78 00 b0   adrp	x16, 0x102392000
0x101475104:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got.__NSConcreteStackBlock
0x101475108:  f1 03 08 aa   mov	x17, x8
0x10147510c:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x101475110:  30 0a c1 da   pacda	x16, x17
0x101475114:  f0 17 00 f9   str	x16, [sp, #0x28]
0x101475118:  e9 43 00 f0   adrp	x9, 0x101cf4000
0x10147511c:  20 45 44 fd   ldr	d0, [x9, #0x888]
0x101475120:  e0 1b 00 fd   str	d0, [sp, #0x30]
0x101475124:  08 41 00 91   add	x8, x8, #0x10
0x101475128:  10 00 00 90   adrp	x16, 0x101475000
0x10147512c:  10 d2 0a 91   add	x16, x16, #0x2b4
0x101475130:  10 01 c1 da   pacia	x16, x8
0x101475134:  e8 7e 00 90   adrp	x8, 0x102451000
0x101475138:  08 41 01 91   add	x8, x8, #0x50 ; data_102451050 (__DATA_CONST.__const)
0x10147513c:  f0 a3 03 a9   stp	x16, x8, [sp, #0x38]
0x101475140:  f7 cf 04 a9   stp	x23, x19, [sp, #0x48]
0x101475144:  f5 2f 00 f9   str	x21, [sp, #0x58]
0x101475148:  e4 a3 00 91   add	x4, sp, #0x28
0x10147514c:  e0 03 14 aa   mov	x0, x20
0x101475150:  fc c4 1a 94   bl	j__objc_msgSend(x0, "dispatchAfter:queue:block:")
0x101475154:  43 00 00 14   b	loc_101475260 ; ⤵ 0x10c
0x101475158:  ; loc_101475158
0x101475158:  e0 03 17 aa   mov	x0, x23
0x10147515c:  e2 03 13 aa   mov	x2, x19
0x101475160:  63 00 80 52   mov	w3, #0x3
0x101475164:  04 00 80 52   mov	w4, #0
0x101475168:  f6 48 1b 94   bl	j__objc_msgSend(x0, "sendObservationForDevice:type:includeLocation:")
0x10147516c:  e8 27 40 b9   ldr	w8, [sp, #0x24]
0x101475170:  c8 01 00 34   cbz	w8, loc_1014751a8 ; ⤵ 0x38
0x101475174:  c8 01 c0 d2   mov	x8, #0xe00000000
0x101475178:  9f 03 08 eb   cmp	x28, x8
0x10147517c:  e1 01 00 54   b.ne	loc_1014751b8 ; ⤵ 0x3c
0x101475180:  e0 2a 40 f9   ldr	x0, [x23, #0x50]
0x101475184:  e3 80 00 d0   adrp	x3, 0x102493000
0x101475188:  63 40 2e 91   add	x3, x3, #0xb90 ; "skip:capped"
0x10147518c:  e2 03 13 aa   mov	x2, x19
0x101475190:  04 00 80 d2   mov	x4, #0
0x101475194:  23 d8 1a 94   bl	j__objc_msgSend(x0, "finishMaintainingDevice:withReason:andCategory:")
0x101475198:  e0 03 17 aa   mov	x0, x23
0x10147519c:  e2 03 13 aa   mov	x2, x19
0x1014751a0:  43 02 80 52   mov	w3, #0x12
0x1014751a4:  2e 00 00 14   b	loc_10147525c ; ⤵ 0xb8
0x1014751a8:  ; loc_1014751a8
0x1014751a8:  e8 05 c0 d2   mov	x8, #0x2f00000000
0x1014751ac:  9f 03 08 eb   cmp	x28, x8
0x1014751b0:  c0 01 00 54   b.eq	loc_1014751e8 ; ⤵ 0x38
0x1014751b4:  27 00 00 14   b	loc_101475250 ; ⤵ 0x9c
0x1014751b8:  ; loc_1014751b8
0x1014751b8:  a8 0c c0 d2   mov	x8, #0x6500000000
0x1014751bc:  9f 03 08 eb   cmp	x28, x8
0x1014751c0:  c0 01 00 54   b.eq	loc_1014751f8 ; ⤵ 0x38
0x1014751c4:  e8 05 c0 d2   mov	x8, #0x2f00000000
0x1014751c8:  9f 03 08 eb   cmp	x28, x8
0x1014751cc:  e1 01 00 54   b.ne	loc_101475208 ; ⤵ 0x3c
0x1014751d0:  e0 2a 40 f9   ldr	x0, [x23, #0x50]
0x1014751d4:  e3 80 00 d0   adrp	x3, 0x102493000
0x1014751d8:  63 c0 2e 91   add	x3, x3, #0xbb0 ; "limitExceeded"
0x1014751dc:  e2 03 13 aa   mov	x2, x19
0x1014751e0:  24 00 80 52   mov	w4, #0x1
0x1014751e4:  0f d8 1a 94   bl	j__objc_msgSend(x0, "finishMaintainingDevice:withReason:andCategory:")
0x1014751e8:  ; loc_1014751e8
0x1014751e8:  e0 03 17 aa   mov	x0, x23
0x1014751ec:  e2 03 13 aa   mov	x2, x19
0x1014751f0:  e3 05 80 52   mov	w3, #0x2f
0x1014751f4:  1a 00 00 14   b	loc_10147525c ; ⤵ 0x68
0x1014751f8:  ; loc_1014751f8
0x1014751f8:  e0 2a 40 f9   ldr	x0, [x23, #0x50]
0x1014751fc:  e3 80 00 d0   adrp	x3, 0x102493000
0x101475200:  63 40 2f 91   add	x3, x3, #0xbd0 ; "error:watchdog"
0x101475204:  10 00 00 14   b	loc_101475244 ; ⤵ 0x40
0x101475208:  ; loc_101475208
0x101475208:  e0 03 13 aa   mov	x0, x19
0x10147520c:  a5 06 1b 94   bl	j__objc_msgSend(x0, "isHeleAccessory")
0x101475210:  80 00 00 36   tbz	w0, #0, loc_101475220 ; ⤵ 0x10
0x101475214:  e3 80 00 d0   adrp	x3, 0x102493000
0x101475218:  63 c0 2f 91   add	x3, x3, #0xbf0 ; "cantconnect:hele"
0x10147521c:  09 00 00 14   b	loc_101475240 ; ⤵ 0x24
0x101475220:  ; loc_101475220
0x101475220:  e0 03 13 aa   mov	x0, x19
0x101475224:  6f 05 1b 94   bl	j__objc_msgSend(x0, "isEarbud")
0x101475228:  e8 80 00 d0   adrp	x8, 0x102493000
0x10147522c:  08 c1 30 91   add	x8, x8, #0xc30 ; "cantconnect"
0x101475230:  e9 80 00 d0   adrp	x9, 0x102493000
0x101475234:  29 41 30 91   add	x9, x9, #0xc10 ; "cantconnect:bud"
0x101475238:  1f 00 00 71   cmp	w0, #0
0x10147523c:  23 11 88 9a   csel	x3, x9, x8, ne
0x101475240:  ; loc_101475240
0x101475240:  e0 2a 40 f9   ldr	x0, [x23, #0x50]
0x101475244:  ; loc_101475244
0x101475244:  e2 03 13 aa   mov	x2, x19
0x101475248:  24 00 80 52   mov	w4, #0x1
0x10147524c:  f5 d7 1a 94   bl	j__objc_msgSend(x0, "finishMaintainingDevice:withReason:andCategory:")
0x101475250:  ; loc_101475250
0x101475250:  e0 03 17 aa   mov	x0, x23
0x101475254:  e2 03 13 aa   mov	x2, x19
0x101475258:  63 00 80 52   mov	w3, #0x3
0x10147525c:  ; loc_10147525c
0x10147525c:  21 ad 1a 94   bl	j__objc_msgSend(x0, "connectFailedToDevice:withError:")
0x101475260:  ; loc_101475260
0x101475260:  a8 83 59 f8   ldur	x8, [fp, #-0x68]
0x101475264:  e9 78 00 b0   adrp	x9, 0x102392000
0x101475268:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10147526c:  29 01 40 f9   ldr	x9, [x9]
0x101475270:  3f 01 08 eb   cmp	x9, x8
0x101475274:  e1 01 00 54   b.ne	loc_1014752b0 ; ⤵ 0x3c
0x101475278:  fd 7b 53 a9   ldp	fp, lr, [sp, #0x130]
0x10147527c:  f4 4f 52 a9   ldp	x20, x19, [sp, #0x120]
0x101475280:  f6 57 51 a9   ldp	x22, x21, [sp, #0x110]
0x101475284:  f8 5f 50 a9   ldp	x24, x23, [sp, #0x100]
0x101475288:  fa 67 4f a9   ldp	x26, x25, [sp, #0xf0]
0x10147528c:  fc 6f 4e a9   ldp	x28, x27, [sp, #0xe0]
0x101475290:  ff 03 05 91   add	sp, sp, #0x140
0x101475294:  ff 0f 5f d6   retab
0x101475298:  ; loc_101475298
0x101475298:  e1 6b 1a 94   bl	0x101b1021c
0x10147529c:  e5 fe ff 17   b	loc_101474e30 ; ⤴ -0x46c
0x1014752a0:  ; loc_1014752a0
0x1014752a0:  df 6b 1a 94   bl	0x101b1021c
0x1014752a4:  b3 fe ff 17   b	loc_101474d70 ; ⤴ -0x534
0x1014752a8:  ; loc_1014752a8
0x1014752a8:  cd 6b 1a 94   bl	0x101b101dc
0x1014752ac:  74 ff ff 17   b	loc_10147507c ; ⤴ -0x230
0x1014752b0:  ; loc_1014752b0
0x1014752b0:  a4 7f 1a 94   bl	j____stack_chk_fail

sub_1014752b4:
0x1014752b4:  08 08 42 a9   ldp	x8, x2, [x0, #0x20]
0x1014752b8:  03 18 40 f9   ldr	x3, [x0, #0x30]
0x1014752bc:  e0 03 08 aa   mov	x0, x8
0x1014752c0:  18 ad 1a 14   b	j__objc_msgSend(x0, "connectToDevice:withPeripheral:")

