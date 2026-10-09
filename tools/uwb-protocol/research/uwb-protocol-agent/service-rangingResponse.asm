
-[CLDurianService device:didReceiveRangingResponse:withOpcode:]:
0x101425cfc:  7f 23 03 d5   pacibsp
0x101425d00:  ff c3 01 d1   sub	sp, sp, #0x70
0x101425d04:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x101425d08:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101425d0c:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x101425d10:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101425d14:  fd 83 01 91   add	fp, sp, #0x60
0x101425d18:  f5 03 04 aa   mov	x21, x4
0x101425d1c:  f6 03 03 aa   mov	x22, x3
0x101425d20:  f4 03 02 aa   mov	x20, x2
0x101425d24:  f3 03 00 aa   mov	x19, x0
0x101425d28:  17 00 80 d2   mov	x23, #0
0x101425d2c:  68 7b 00 b0   adrp	x8, 0x102392000
0x101425d30:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101425d34:  08 01 40 f9   ldr	x8, [x8]
0x101425d38:  e8 17 00 f9   str	x8, [sp, #0x28]
0x101425d3c:  9f 50 00 71   cmp	w4, #0x14
0x101425d40:  a0 01 00 54   b.eq	loc_101425d74 ; ⤵ 0x34
0x101425d44:  bf 9a 10 71   cmp	w21, #0x426
0x101425d48:  60 01 00 54   b.eq	loc_101425d74 ; ⤵ 0x2c
0x101425d4c:  bf 32 20 71   cmp	w21, #0x80c
0x101425d50:  20 01 00 54   b.eq	loc_101425d74 ; ⤵ 0x24
0x101425d54:  e0 03 16 aa   mov	x0, x22
0x101425d58:  92 65 1c 94   bl	j__objc_msgSend(x0, "payload")
0x101425d5c:  a1 4d 1c 94   bl	j__objc_msgSend(x0, "length")
0x101425d60:  20 0d 00 b4   cbz	x0, loc_101425f04 ; ⤵ 0x1a4
0x101425d64:  e0 03 16 aa   mov	x0, x22
0x101425d68:  8e 65 1c 94   bl	j__objc_msgSend(x0, "payload")
0x101425d6c:  b5 dd 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x101425d70:  f7 03 00 aa   mov	x23, x0
0x101425d74:  ; loc_101425d74
0x101425d74:  e0 03 16 aa   mov	x0, x22
0x101425d78:  8a 65 1c 94   bl	j__objc_msgSend(x0, "payload")
0x101425d7c:  99 4d 1c 94   bl	j__objc_msgSend(x0, "length")
0x101425d80:  bf 22 1c 71   cmp	w21, #0x708
0x101425d84:  8c 01 00 54   b.gt	loc_101425db4 ; ⤵ 0x30
0x101425d88:  bf 8a 10 71   cmp	w21, #0x422
0x101425d8c:  6c 02 00 54   b.gt	loc_101425dd8 ; ⤵ 0x4c
0x101425d90:  bf 52 00 71   cmp	w21, #0x14
0x101425d94:  c0 03 00 54   b.eq	loc_101425e0c ; ⤵ 0x78
0x101425d98:  bf 8a 00 71   cmp	w21, #0x22
0x101425d9c:  40 06 00 54   b.eq	loc_101425e64 ; ⤵ 0xc8
0x101425da0:  bf 92 00 71   cmp	w21, #0x24
0x101425da4:  a1 0f 00 54   b.ne	loc_101425f98 ; ⤵ 0x1f4
0x101425da8:  e0 03 16 aa   mov	x0, x22
0x101425dac:  7d 65 1c 94   bl	j__objc_msgSend(x0, "payload")
0x101425db0:  8c 00 00 14   b	loc_101425fe0 ; ⤵ 0x230
0x101425db4:  ; loc_101425db4
0x101425db4:  bf 22 20 71   cmp	w21, #0x808
0x101425db8:  ec 01 00 54   b.gt	loc_101425df4 ; ⤵ 0x3c
0x101425dbc:  bf 26 1c 71   cmp	w21, #0x709
0x101425dc0:  a0 08 00 54   b.eq	loc_101425ed4 ; ⤵ 0x114
0x101425dc4:  bf 2a 1c 71   cmp	w21, #0x70a
0x101425dc8:  e0 04 00 54   b.eq	loc_101425e64 ; ⤵ 0x9c
0x101425dcc:  bf 32 1c 71   cmp	w21, #0x70c
0x101425dd0:  e0 01 00 54   b.eq	loc_101425e0c ; ⤵ 0x3c
0x101425dd4:  71 00 00 14   b	loc_101425f98 ; ⤵ 0x1c4
0x101425dd8:  ; loc_101425dd8
0x101425dd8:  bf 8e 10 71   cmp	w21, #0x423
0x101425ddc:  60 0f 00 54   b.eq	loc_101425fc8 ; ⤵ 0x1ec
0x101425de0:  bf 92 10 71   cmp	w21, #0x424
0x101425de4:  00 04 00 54   b.eq	loc_101425e64 ; ⤵ 0x80
0x101425de8:  bf 9a 10 71   cmp	w21, #0x426
0x101425dec:  00 01 00 54   b.eq	loc_101425e0c ; ⤵ 0x20
0x101425df0:  6a 00 00 14   b	loc_101425f98 ; ⤵ 0x1a8
0x101425df4:  ; loc_101425df4
0x101425df4:  bf 26 20 71   cmp	w21, #0x809
0x101425df8:  e0 06 00 54   b.eq	loc_101425ed4 ; ⤵ 0xdc
0x101425dfc:  bf 2a 20 71   cmp	w21, #0x80a
0x101425e00:  20 03 00 54   b.eq	loc_101425e64 ; ⤵ 0x64
0x101425e04:  bf 32 20 71   cmp	w21, #0x80c
0x101425e08:  81 0c 00 54   b.ne	loc_101425f98 ; ⤵ 0x190
0x101425e0c:  ; loc_101425e0c
0x101425e0c:  75 9a 40 f9   ldr	x21, [x19, #0x130]
0x101425e10:  e0 03 14 aa   mov	x0, x20
0x101425e14:  eb e0 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101425e18:  63 2a 40 f9   ldr	x3, [x19, #0x50]
0x101425e1c:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101425e20:  69 7b 00 b0   adrp	x9, 0x102392000
0x101425e24:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101425e28:  29 01 40 f9   ldr	x9, [x9]
0x101425e2c:  3f 01 08 eb   cmp	x9, x8
0x101425e30:  41 11 00 54   b.ne	loc_101426058 ; ⤵ 0x228
0x101425e34:  e2 03 00 aa   mov	x2, x0
0x101425e38:  e0 03 15 aa   mov	x0, x21
0x101425e3c:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101425e40:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101425e44:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101425e48:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101425e4c:  ff c3 01 91   add	sp, sp, #0x70
0x101425e50:  ff 23 03 d5   autibsp
0x101425e54:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101425e58:  50 00 f0 b6   tbz	x16, #0x3e, loc_101425e60 ; ⤵ 0x8
0x101425e5c:  20 8e 38 d4   brk	#0xc471
0x101425e60:  ; loc_101425e60
0x101425e60:  e0 fd 1b 14   b	j__objc_msgSend(x0, "didHaveRangingMovementOnTag:forClient:")
0x101425e64:  ; loc_101425e64
0x101425e64:  e0 03 14 aa   mov	x0, x20
0x101425e68:  e2 03 15 aa   mov	x2, x21
0x101425e6c:  e3 03 17 aa   mov	x3, x23
0x101425e70:  bc 1d 1c 94   bl	j__objc_msgSend(x0, "getRangingStatusForOpcode:data:")
0x101425e74:  f5 03 00 aa   mov	x21, x0
0x101425e78:  76 9a 40 f9   ldr	x22, [x19, #0x130]
0x101425e7c:  e0 03 14 aa   mov	x0, x20
0x101425e80:  d0 e0 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101425e84:  64 2a 40 f9   ldr	x4, [x19, #0x50]
0x101425e88:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101425e8c:  69 7b 00 b0   adrp	x9, 0x102392000
0x101425e90:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101425e94:  29 01 40 f9   ldr	x9, [x9]
0x101425e98:  3f 01 08 eb   cmp	x9, x8
0x101425e9c:  e1 0d 00 54   b.ne	loc_101426058 ; ⤵ 0x1bc
0x101425ea0:  e2 03 00 aa   mov	x2, x0
0x101425ea4:  e0 03 16 aa   mov	x0, x22
0x101425ea8:  e3 03 15 aa   mov	x3, x21
0x101425eac:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101425eb0:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101425eb4:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101425eb8:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101425ebc:  ff c3 01 91   add	sp, sp, #0x70
0x101425ec0:  ff 23 03 d5   autibsp
0x101425ec4:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101425ec8:  50 00 f0 b6   tbz	x16, #0x3e, loc_101425ed0 ; ⤵ 0x8
0x101425ecc:  20 8e 38 d4   brk	#0xc471
0x101425ed0:  ; loc_101425ed0
0x101425ed0:  7c fe 1b 14   b	j__objc_msgSend(x0, "didReceiveRangingErrorFromTag:withStatus:forClient:")
0x101425ed4:  ; loc_101425ed4
0x101425ed4:  e0 03 16 aa   mov	x0, x22
0x101425ed8:  32 65 1c 94   bl	j__objc_msgSend(x0, "payload")
0x101425edc:  59 dd 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x101425ee0:  f6 03 00 aa   mov	x22, x0
0x101425ee4:  75 9a 40 f9   ldr	x21, [x19, #0x130]
0x101425ee8:  e0 03 14 aa   mov	x0, x20
0x101425eec:  b5 e0 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101425ef0:  c3 06 40 79   ldrh	w3, [x22, #0x2]
0x101425ef4:  c4 42 40 f8   ldur	x4, [x22, #0x4]
0x101425ef8:  c5 c2 40 f8   ldur	x5, [x22, #0xc]
0x101425efc:  c6 2a 40 79   ldrh	w6, [x22, #0x14]
0x101425f00:  41 00 00 14   b	loc_101426004 ; ⤵ 0x104
0x101425f04:  ; loc_101425f04
0x101425f04:  e8 8a 00 b0   adrp	x8, 0x102582000
0x101425f08:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101425f0c:  1f 05 00 b1   cmn	x8, #0x1
0x101425f10:  01 0a 00 54   b.ne	loc_101426050 ; ⤵ 0x140
0x101425f14:  ; loc_101425f14
0x101425f14:  e8 8a 00 b0   adrp	x8, 0x102582000
0x101425f18:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101425f1c:  e0 03 13 aa   mov	x0, x19
0x101425f20:  01 00 80 52   mov	w1, #0
0x101425f24:  f3 c0 1b 94   bl	j__os_log_type_enabled
0x101425f28:  80 03 00 34   cbz	w0, loc_101425f98 ; ⤵ 0x70
0x101425f2c:  e0 03 14 aa   mov	x0, x20
0x101425f30:  a4 e0 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101425f34:  b9 ca 01 94   bl	0x101498a18
0x101425f38:  68 46 00 f0   adrp	x8, 0x101cf4000
0x101425f3c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x101425f40:  e0 03 00 bd   str	s0, [sp]
0x101425f44:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101425f48:  48 04 81 52   mov	w8, #0x822
0x101425f4c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101425f50:  48 54 00 b0   adrp	x8, 0x101eae000
0x101425f54:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101425f58:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101425f5c:  28 08 81 52   mov	w8, #0x841
0x101425f60:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101425f64:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101425f68:  48 80 80 52   mov	w8, #0x402
0x101425f6c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101425f70:  f5 e3 01 b8   stur	w21, [sp, #0x1e]
0x101425f74:  c0 5e ff f0   adrp	x0, 0x100000000
0x101425f78:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101425f7c:  03 72 00 b0   adrp	x3, 0x102266000
0x101425f80:  63 48 15 91   add	x3, x3, #0x552 ; "{\"msg%{public}.0s\":\"#durian payload is empty\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x101425f84:  e4 03 00 91   mov	x4, sp
0x101425f88:  e1 03 13 aa   mov	x1, x19
0x101425f8c:  02 00 80 52   mov	w2, #0
0x101425f90:  45 04 80 52   mov	w5, #0x22
0x101425f94:  97 bc 1b 94   bl	j___os_log_impl
0x101425f98:  ; loc_101425f98
0x101425f98:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101425f9c:  69 7b 00 b0   adrp	x9, 0x102392000
0x101425fa0:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101425fa4:  29 01 40 f9   ldr	x9, [x9]
0x101425fa8:  3f 01 08 eb   cmp	x9, x8
0x101425fac:  61 05 00 54   b.ne	loc_101426058 ; ⤵ 0xac
0x101425fb0:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101425fb4:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101425fb8:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101425fbc:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101425fc0:  ff c3 01 91   add	sp, sp, #0x70
0x101425fc4:  ff 0f 5f d6   retab
0x101425fc8:  ; loc_101425fc8
0x101425fc8:  15 04 00 d1   sub	x21, x0, #0x1
0x101425fcc:  e0 03 16 aa   mov	x0, x22
0x101425fd0:  f4 64 1c 94   bl	j__objc_msgSend(x0, "payload")
0x101425fd4:  22 00 80 52   mov	w2, #0x1
0x101425fd8:  e3 03 15 aa   mov	x3, x21
0x101425fdc:  a1 c8 1c 94   bl	j__objc_msgSend(x0, "subdataWithRange:")
0x101425fe0:  ; loc_101425fe0
0x101425fe0:  18 dd 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x101425fe4:  f6 03 00 aa   mov	x22, x0
0x101425fe8:  75 9a 40 f9   ldr	x21, [x19, #0x130]
0x101425fec:  e0 03 14 aa   mov	x0, x20
0x101425ff0:  74 e0 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101425ff4:  c3 02 40 79   ldrh	w3, [x22]
0x101425ff8:  c4 22 40 f8   ldur	x4, [x22, #0x2]
0x101425ffc:  c5 a2 40 f8   ldur	x5, [x22, #0xa]
0x101426000:  c6 26 40 79   ldrh	w6, [x22, #0x12]
0x101426004:  ; loc_101426004
0x101426004:  67 2a 40 f9   ldr	x7, [x19, #0x50]
0x101426008:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10142600c:  69 7b 00 90   adrp	x9, 0x102392000
0x101426010:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101426014:  29 01 40 f9   ldr	x9, [x9]
0x101426018:  3f 01 08 eb   cmp	x9, x8
0x10142601c:  e1 01 00 54   b.ne	loc_101426058 ; ⤵ 0x3c
0x101426020:  e2 03 00 aa   mov	x2, x0
0x101426024:  e0 03 15 aa   mov	x0, x21
0x101426028:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10142602c:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101426030:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101426034:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101426038:  ff c3 01 91   add	sp, sp, #0x70
0x10142603c:  ff 23 03 d5   autibsp
0x101426040:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101426044:  50 00 f0 b6   tbz	x16, #0x3e, loc_10142604c ; ⤵ 0x8
0x101426048:  20 8e 38 d4   brk	#0xc471
0x10142604c:  ; loc_10142604c
0x10142604c:  2d fe 1b 14   b	j__objc_msgSend(x0, "didReceiveRangingTimestampsFromTag:eventStatus:rtt:tat:cycleIndex:forClient:")
0x101426050:  ; loc_101426050
0x101426050:  d9 a6 1b 94   bl	0x101b0fbb4
0x101426054:  b0 ff ff 17   b	loc_101425f14 ; ⤴ -0x140
0x101426058:  ; loc_101426058
0x101426058:  3a bc 1b 94   bl	j____stack_chk_fail

-[CLDurianService requestDisconnectionForDevice:]:
0x10142605c:  00 08 40 f9   ldr	x0, [x0, #0x10]
0x101426060:  b0 79 1c 14   b	j__objc_msgSend(x0, "requestDisconnectionForDevice:")

-[CLDurianService cancelConnectionTimeoutForPeripheral:]:
0x101426064:  00 08 40 f9   ldr	x0, [x0, #0x10]
0x101426068:  66 de 1b 14   b	j__objc_msgSend(x0, "cancelConnectionTimeoutForPeripheral:")

-[CLDurianService didRetrievePersonalizationInfo:forDevice:error:]:
0x10142606c:  7f 23 03 d5   pacibsp
0x101426070:  ff 83 02 d1   sub	sp, sp, #0xa0
0x101426074:  fa 67 05 a9   stp	x26, x25, [sp, #0x50]
0x101426078:  f8 5f 06 a9   stp	x24, x23, [sp, #0x60]
0x10142607c:  f6 57 07 a9   stp	x22, x21, [sp, #0x70]
0x101426080:  f4 4f 08 a9   stp	x20, x19, [sp, #0x80]
0x101426084:  fd 7b 09 a9   stp	fp, lr, [sp, #0x90]
0x101426088:  fd 43 02 91   add	fp, sp, #0x90
0x10142608c:  f5 03 04 aa   mov	x21, x4
0x101426090:  f3 03 03 aa   mov	x19, x3
0x101426094:  f6 03 02 aa   mov	x22, x2
0x101426098:  f4 03 00 aa   mov	x20, x0
0x10142609c:  68 7b 00 90   adrp	x8, 0x102392000
0x1014260a0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014260a4:  08 01 40 f9   ldr	x8, [x8]
0x1014260a8:  e8 27 00 f9   str	x8, [sp, #0x48]
0x1014260ac:  e8 8a 00 90   adrp	x8, 0x102582000
0x1014260b0:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014260b4:  1f 05 00 b1   cmn	x8, #0x1
0x1014260b8:  01 0a 00 54   b.ne	loc_1014261f8 ; ⤵ 0x140
0x1014260bc:  ; loc_1014260bc
0x1014260bc:  e8 8a 00 90   adrp	x8, 0x102582000
0x1014260c0:  17 3d 46 f9   ldr	x23, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014260c4:  e0 03 17 aa   mov	x0, x23
0x1014260c8:  01 00 80 52   mov	w1, #0
0x1014260cc:  89 c0 1b 94   bl	j__os_log_type_enabled
0x1014260d0:  80 04 00 34   cbz	w0, loc_101426160 ; ⤵ 0x90
0x1014260d4:  e0 03 13 aa   mov	x0, x19
0x1014260d8:  3a e0 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x1014260dc:  4f ca 01 94   bl	0x101498a18
0x1014260e0:  f8 03 00 aa   mov	x24, x0
0x1014260e4:  e0 03 13 aa   mov	x0, x19
0x1014260e8:  8e cf 1b 94   bl	j__objc_msgSend(x0, "activePeripheral")
0x1014260ec:  4d 29 1c 94   bl	j__objc_msgSend(x0, "identifier")
0x1014260f0:  4a ca 01 94   bl	0x101498a18
0x1014260f4:  68 3b 00 b0   adrp	x8, 0x101b93000
0x1014260f8:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x1014260fc:  e0 03 00 bd   str	s0, [sp]
0x101426100:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101426104:  48 04 81 52   mov	w8, #0x822
0x101426108:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10142610c:  48 54 00 90   adrp	x8, 0x101eae000
0x101426110:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101426114:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101426118:  28 08 81 52   mov	w8, #0x841
0x10142611c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101426120:  f8 43 01 f8   stur	x24, [sp, #0x14]
0x101426124:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101426128:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x10142612c:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101426130:  f6 17 00 f9   str	x22, [sp, #0x28]
0x101426134:  e8 63 00 79   strh	w8, [sp, #0x30]
0x101426138:  f5 23 03 f8   stur	x21, [sp, #0x32]
0x10142613c:  c0 5e ff d0   adrp	x0, 0x100000000
0x101426140:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101426144:  03 72 00 90   adrp	x3, 0x102266000
0x101426148:  63 00 17 91   add	x3, x3, #0x5c0 ; "{\"msg%{public}.0s\":\"#durian Durian Service, notify client - didRetrievePersonalizationInfo\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"info\":%{private, loc"...
0x10142614c:  e4 03 00 91   mov	x4, sp
0x101426150:  e1 03 17 aa   mov	x1, x23
0x101426154:  02 00 80 52   mov	w2, #0
0x101426158:  45 07 80 52   mov	w5, #0x3a
0x10142615c:  25 bc 1b 94   bl	j___os_log_impl
0x101426160:  ; loc_101426160
0x101426160:  97 9a 40 f9   ldr	x23, [x20, #0x130]
0x101426164:  e0 03 13 aa   mov	x0, x19
0x101426168:  16 e0 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142616c:  f8 03 00 aa   mov	x24, x0
0x101426170:  99 2e 40 f9   ldr	x25, [x20, #0x58]
0x101426174:  e0 03 13 aa   mov	x0, x19
0x101426178:  12 e0 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142617c:  e2 03 00 aa   mov	x2, x0
0x101426180:  e0 03 19 aa   mov	x0, x25
0x101426184:  4f 5b 1c 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101426188:  e5 03 00 aa   mov	x5, x0
0x10142618c:  e0 03 17 aa   mov	x0, x23
0x101426190:  e2 03 16 aa   mov	x2, x22
0x101426194:  e3 03 18 aa   mov	x3, x24
0x101426198:  e4 03 15 aa   mov	x4, x21
0x10142619c:  19 fe 1b 94   bl	j__objc_msgSend(x0, "didRetrievePersonalizationInformation:forTag:error:forClient:")
0x1014261a0:  35 01 00 b4   cbz	x21, loc_1014261c4 ; ⤵ 0x24
0x1014261a4:  e0 03 13 aa   mov	x0, x19
0x1014261a8:  5e cf 1b 94   bl	j__objc_msgSend(x0, "activePeripheral")
0x1014261ac:  c0 00 00 b4   cbz	x0, loc_1014261c4 ; ⤵ 0x18
0x1014261b0:  80 0a 40 f9   ldr	x0, [x20, #0x10]
0x1014261b4:  43 83 00 90   adrp	x3, 0x10248e000
0x1014261b8:  63 c0 33 91   add	x3, x3, #0xcf0 ; "fwuperror"
0x1014261bc:  e2 03 13 aa   mov	x2, x19
0x1014261c0:  80 81 1c 94   bl	j__objc_msgSend(x0, "scheduleDebounceForDevice:reason:")
0x1014261c4:  ; loc_1014261c4
0x1014261c4:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x1014261c8:  69 7b 00 90   adrp	x9, 0x102392000
0x1014261cc:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x1014261d0:  29 01 40 f9   ldr	x9, [x9]
0x1014261d4:  3f 01 08 eb   cmp	x9, x8
0x1014261d8:  41 01 00 54   b.ne	loc_101426200 ; ⤵ 0x28
0x1014261dc:  fd 7b 49 a9   ldp	fp, lr, [sp, #0x90]
0x1014261e0:  f4 4f 48 a9   ldp	x20, x19, [sp, #0x80]
0x1014261e4:  f6 57 47 a9   ldp	x22, x21, [sp, #0x70]
0x1014261e8:  f8 5f 46 a9   ldp	x24, x23, [sp, #0x60]
0x1014261ec:  fa 67 45 a9   ldp	x26, x25, [sp, #0x50]
0x1014261f0:  ff 83 02 91   add	sp, sp, #0xa0
0x1014261f4:  ff 0f 5f d6   retab
0x1014261f8:  ; loc_1014261f8
0x1014261f8:  6f a6 1b 94   bl	0x101b0fbb4
0x1014261fc:  b0 ff ff 17   b	loc_1014260bc ; ⤴ -0x140
0x101426200:  ; loc_101426200
0x101426200:  d0 bb 1b 94   bl	j____stack_chk_fail

-[CLDurianService didUpdateFirmwareForDevice:error:]:
0x101426204:  7f 23 03 d5   pacibsp
0x101426208:  ff 43 02 d1   sub	sp, sp, #0x90
0x10142620c:  fa 67 04 a9   stp	x26, x25, [sp, #0x40]
0x101426210:  f8 5f 05 a9   stp	x24, x23, [sp, #0x50]
0x101426214:  f6 57 06 a9   stp	x22, x21, [sp, #0x60]
0x101426218:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x10142621c:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x101426220:  fd 03 02 91   add	fp, sp, #0x80
0x101426224:  f5 03 03 aa   mov	x21, x3
0x101426228:  f3 03 02 aa   mov	x19, x2
0x10142622c:  f4 03 00 aa   mov	x20, x0
0x101426230:  68 7b 00 90   adrp	x8, 0x102392000
0x101426234:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101426238:  08 01 40 f9   ldr	x8, [x8]
0x10142623c:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x101426240:  f8 8a 00 90   adrp	x24, 0x102582000
0x101426244:  08 3b 46 f9   ldr	x8, [x24, #0xc70] ; data_102582c70 (__DATA.__data)
0x101426248:  1f 05 00 b1   cmn	x8, #0x1
0x10142624c:  c1 0f 00 54   b.ne	loc_101426444 ; ⤵ 0x1f8
0x101426250:  f9 8a 00 90   adrp	x25, 0x102582000
0x101426254:  36 3f 46 f9   ldr	x22, [x25, #0xc78] ; data_102582c78 (__DATA.__data)
0x101426258:  e0 03 16 aa   mov	x0, x22
0x10142625c:  01 00 80 52   mov	w1, #0
0x101426260:  24 c0 1b 94   bl	j__os_log_type_enabled
0x101426264:  40 04 00 34   cbz	w0, loc_1014262ec ; ⤵ 0x88
0x101426268:  e0 03 13 aa   mov	x0, x19
0x10142626c:  d5 df 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101426270:  ea c9 01 94   bl	0x101498a18
0x101426274:  f7 03 00 aa   mov	x23, x0
0x101426278:  e0 03 13 aa   mov	x0, x19
0x10142627c:  29 cf 1b 94   bl	j__objc_msgSend(x0, "activePeripheral")
0x101426280:  e8 28 1c 94   bl	j__objc_msgSend(x0, "identifier")
0x101426284:  e5 c9 01 94   bl	0x101498a18
0x101426288:  68 46 00 d0   adrp	x8, 0x101cf4000
0x10142628c:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101426290:  e0 03 00 bd   str	s0, [sp]
0x101426294:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101426298:  48 04 81 52   mov	w8, #0x822
0x10142629c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014262a0:  48 54 00 90   adrp	x8, 0x101eae000
0x1014262a4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014262a8:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014262ac:  28 08 81 52   mov	w8, #0x841
0x1014262b0:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014262b4:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x1014262b8:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1014262bc:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x1014262c0:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x1014262c4:  f5 17 00 f9   str	x21, [sp, #0x28]
0x1014262c8:  c0 5e ff d0   adrp	x0, 0x100000000
0x1014262cc:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014262d0:  03 72 00 90   adrp	x3, 0x102266000
0x1014262d4:  63 20 1b 91   add	x3, x3, #0x6c8 ; "{\"msg%{public}.0s\":\"#durian #hawkeye #firmwareUpdate Durian Service, notify client - didUpdateFirmwareForDevice\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, "...
0x1014262d8:  e4 03 00 91   mov	x4, sp
0x1014262dc:  e1 03 16 aa   mov	x1, x22
0x1014262e0:  02 00 80 52   mov	w2, #0
0x1014262e4:  05 06 80 52   mov	w5, #0x30
0x1014262e8:  c2 bb 1b 94   bl	j___os_log_impl
0x1014262ec:  ; loc_1014262ec
0x1014262ec:  c8 87 00 b0   adrp	x8, 0x10251f000
0x1014262f0:  00 41 11 91   add	x0, x8, #0x450 ; CLDurianSettings
0x1014262f4:  63 d6 1c 94   bl	j__objc_msgSend(x0, "uarpPacketCaptureEnabled")
0x1014262f8:  60 04 00 34   cbz	w0, loc_101426384 ; ⤵ 0x8c
0x1014262fc:  08 3b 46 f9   ldr	x8, [x24, #0xc70]
0x101426300:  1f 05 00 b1   cmn	x8, #0x1
0x101426304:  41 0a 00 54   b.ne	loc_10142644c ; ⤵ 0x148
0x101426308:  36 3f 46 f9   ldr	x22, [x25, #0xc78]
0x10142630c:  e0 03 16 aa   mov	x0, x22
0x101426310:  01 00 80 52   mov	w1, #0
0x101426314:  f7 bf 1b 94   bl	j__os_log_type_enabled
0x101426318:  20 03 00 34   cbz	w0, loc_10142637c ; ⤵ 0x64
0x10142631c:  e0 03 13 aa   mov	x0, x19
0x101426320:  a8 df 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101426324:  bd c9 01 94   bl	0x101498a18
0x101426328:  68 46 00 d0   adrp	x8, 0x101cf4000
0x10142632c:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101426330:  e0 03 00 bd   str	s0, [sp]
0x101426334:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101426338:  48 04 81 52   mov	w8, #0x822

