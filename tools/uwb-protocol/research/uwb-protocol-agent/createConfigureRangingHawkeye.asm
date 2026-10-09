
-[CLHawkeyeDevice createConfigureRangingTaskWithMacAddress:countryCode:uwbChannel:acqPreamble:trackingPreamble:interval:]:
0x101488bd8:  7f 23 03 d5   pacibsp
0x101488bdc:  ff 03 03 d1   sub	sp, sp, #0xc0
0x101488be0:  fc 6f 06 a9   stp	x28, x27, [sp, #0x60]
0x101488be4:  fa 67 07 a9   stp	x26, x25, [sp, #0x70]
0x101488be8:  f8 5f 08 a9   stp	x24, x23, [sp, #0x80]
0x101488bec:  f6 57 09 a9   stp	x22, x21, [sp, #0x90]
0x101488bf0:  f4 4f 0a a9   stp	x20, x19, [sp, #0xa0]
0x101488bf4:  fd 7b 0b a9   stp	fp, lr, [sp, #0xb0]
0x101488bf8:  fd c3 02 91   add	fp, sp, #0xb0
0x101488bfc:  f4 03 07 aa   mov	x20, x7
0x101488c00:  f6 03 06 aa   mov	x22, x6
0x101488c04:  f8 03 05 aa   mov	x24, x5
0x101488c08:  f9 03 04 aa   mov	x25, x4
0x101488c0c:  f5 03 03 aa   mov	x21, x3
0x101488c10:  f7 03 02 aa   mov	x23, x2
0x101488c14:  f3 03 00 aa   mov	x19, x0
0x101488c18:  48 78 00 d0   adrp	x8, 0x102392000
0x101488c1c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101488c20:  08 01 40 f9   ldr	x8, [x8]
0x101488c24:  e8 2f 00 f9   str	x8, [sp, #0x58]
0x101488c28:  dc 87 00 d0   adrp	x28, 0x102582000
0x101488c2c:  88 3b 46 f9   ldr	x8, [x28, #0xc70] ; data_102582c70 (__DATA.__data)
0x101488c30:  1f 05 00 b1   cmn	x8, #0x1
0x101488c34:  01 10 00 54   b.ne	loc_101488e34 ; ⤵ 0x200
0x101488c38:  ; loc_101488c38
0x101488c38:  db 87 00 d0   adrp	x27, 0x102582000
0x101488c3c:  7a 3f 46 f9   ldr	x26, [x27, #0xc78] ; data_102582c78 (__DATA.__data)
0x101488c40:  e0 03 1a aa   mov	x0, x26
0x101488c44:  01 00 80 52   mov	w1, #0
0x101488c48:  aa 35 1a 94   bl	j__os_log_type_enabled
0x101488c4c:  60 02 00 34   cbz	w0, loc_101488c98 ; ⤵ 0x4c
0x101488c50:  68 43 00 90   adrp	x8, 0x101cf4000
0x101488c54:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101488c58:  e0 03 00 bd   str	s0, [sp]
0x101488c5c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101488c60:  48 04 81 52   mov	w8, #0x822
0x101488c64:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101488c68:  28 51 00 d0   adrp	x8, 0x101eae000
0x101488c6c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101488c70:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101488c74:  c0 5b ff 90   adrp	x0, 0x100000000
0x101488c78:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101488c7c:  e3 6f 00 f0   adrp	x3, 0x102287000
0x101488c80:  63 78 13 91   add	x3, x3, #0x4de ; "{\"msg%{public}.0s\":\"#durian #hawkeye creating ConfigureRangingTask\"}"
0x101488c84:  e4 03 00 91   mov	x4, sp
0x101488c88:  e1 03 1a aa   mov	x1, x26
0x101488c8c:  02 00 80 52   mov	w2, #0
0x101488c90:  45 02 80 52   mov	w5, #0x12
0x101488c94:  57 31 1a 94   bl	j___os_log_impl
0x101488c98:  ; loc_101488c98
0x101488c98:  28 07 00 12   and	w8, w25, #0x3
0x101488c9c:  08 07 1e 33   bfi	w8, w24, #0x2, #0x2
0x101488ca0:  c8 06 1c 33   bfi	w8, w22, #0x4, #0x2
0x101488ca4:  18 01 19 32   orr	w24, w8, #0x80
0x101488ca8:  e0 03 17 aa   mov	x0, x23
0x101488cac:  e5 51 1a 94   bl	j__objc_msgSend(x0, "bytes")
0x101488cb0:  f6 03 00 aa   mov	x22, x0
0x101488cb4:  f5 33 01 39   strb	w21, [sp, #0x4c]
0x101488cb8:  f8 37 01 39   strb	w24, [sp, #0x4d]
0x101488cbc:  f4 3b 01 39   strb	w20, [sp, #0x4e]
0x101488cc0:  88 7e 08 53   lsr	w8, w20, #0x8
0x101488cc4:  e8 3f 01 39   strb	w8, [sp, #0x4f]
0x101488cc8:  08 00 40 39   ldrb	w8, [x0]
0x101488ccc:  e8 43 01 39   strb	w8, [sp, #0x50]
0x101488cd0:  08 04 40 39   ldrb	w8, [x0, #0x1]
0x101488cd4:  e8 47 01 39   strb	w8, [sp, #0x51]
0x101488cd8:  08 08 40 39   ldrb	w8, [x0, #0x2]
0x101488cdc:  e8 4b 01 39   strb	w8, [sp, #0x52]
0x101488ce0:  08 0c 40 39   ldrb	w8, [x0, #0x3]
0x101488ce4:  e8 4f 01 39   strb	w8, [sp, #0x53]
0x101488ce8:  08 10 40 39   ldrb	w8, [x0, #0x4]
0x101488cec:  e8 53 01 39   strb	w8, [sp, #0x54]
0x101488cf0:  08 14 40 39   ldrb	w8, [x0, #0x5]
0x101488cf4:  e8 57 01 39   strb	w8, [sp, #0x55]
0x101488cf8:  08 18 40 39   ldrb	w8, [x0, #0x6]
0x101488cfc:  e8 5b 01 39   strb	w8, [sp, #0x56]
0x101488d00:  08 1c 40 39   ldrb	w8, [x0, #0x7]
0x101488d04:  e8 5f 01 39   strb	w8, [sp, #0x57]
0x101488d08:  88 3b 46 f9   ldr	x8, [x28, #0xc70]
0x101488d0c:  1f 05 00 b1   cmn	x8, #0x1
0x101488d10:  61 09 00 54   b.ne	loc_101488e3c ; ⤵ 0x12c
0x101488d14:  ; loc_101488d14
0x101488d14:  74 3f 46 f9   ldr	x20, [x27, #0xc78]
0x101488d18:  e0 03 14 aa   mov	x0, x20
0x101488d1c:  01 00 80 52   mov	w1, #0
0x101488d20:  74 35 1a 94   bl	j__os_log_type_enabled
0x101488d24:  40 06 00 34   cbz	w0, loc_101488dec ; ⤵ 0xc8
0x101488d28:  e0 03 13 aa   mov	x0, x19
0x101488d2c:  25 55 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101488d30:  3a 3f 00 94   bl	0x101498a18
0x101488d34:  c8 02 40 39   ldrb	w8, [x22]
0x101488d38:  c9 06 40 39   ldrb	w9, [x22, #0x1]
0x101488d3c:  ca 0a 40 39   ldrb	w10, [x22, #0x2]
0x101488d40:  cb 0e 40 39   ldrb	w11, [x22, #0x3]
0x101488d44:  cc 12 40 39   ldrb	w12, [x22, #0x4]
0x101488d48:  cd 16 40 39   ldrb	w13, [x22, #0x5]
0x101488d4c:  ce 1a 40 39   ldrb	w14, [x22, #0x6]
0x101488d50:  cf 1e 40 39   ldrb	w15, [x22, #0x7]
0x101488d54:  f0 38 00 b0   adrp	x16, 0x101ba5000
0x101488d58:  00 36 45 fd   ldr	d0, [x16, #0xa68]
0x101488d5c:  e0 03 00 bd   str	s0, [sp]
0x101488d60:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101488d64:  50 04 81 52   mov	w16, #0x822
0x101488d68:  f0 13 00 79   strh	w16, [sp, #0x8]
0x101488d6c:  30 51 00 d0   adrp	x16, 0x101eae000
0x101488d70:  10 e2 02 91   add	x16, x16, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101488d74:  f0 a3 00 f8   stur	x16, [sp, #0xa]
0x101488d78:  30 08 81 52   mov	w16, #0x841
0x101488d7c:  f0 27 00 79   strh	w16, [sp, #0x12]
0x101488d80:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101488d84:  50 80 80 52   mov	w16, #0x402
0x101488d88:  f0 3b 00 79   strh	w16, [sp, #0x1c]
0x101488d8c:  e8 e3 01 b8   stur	w8, [sp, #0x1e]
0x101488d90:  f0 47 00 79   strh	w16, [sp, #0x22]
0x101488d94:  e9 27 00 b9   str	w9, [sp, #0x24]
0x101488d98:  f0 53 00 79   strh	w16, [sp, #0x28]
0x101488d9c:  ea a3 02 b8   stur	w10, [sp, #0x2a]
0x101488da0:  f0 5f 00 79   strh	w16, [sp, #0x2e]
0x101488da4:  eb 33 00 b9   str	w11, [sp, #0x30]
0x101488da8:  f0 6b 00 79   strh	w16, [sp, #0x34]
0x101488dac:  ec 63 03 b8   stur	w12, [sp, #0x36]
0x101488db0:  f0 77 00 79   strh	w16, [sp, #0x3a]
0x101488db4:  ed 3f 00 b9   str	w13, [sp, #0x3c]
0x101488db8:  f0 83 00 79   strh	w16, [sp, #0x40]
0x101488dbc:  ee 23 04 b8   stur	w14, [sp, #0x42]
0x101488dc0:  f0 8f 00 79   strh	w16, [sp, #0x46]
0x101488dc4:  ef 4b 00 b9   str	w15, [sp, #0x48]
0x101488dc8:  c0 5b ff 90   adrp	x0, 0x100000000
0x101488dcc:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101488dd0:  e3 6f 00 f0   adrp	x3, 0x102287000
0x101488dd4:  63 8c 14 91   add	x3, x3, #0x523 ; "{\"msg%{public}.0s\":\"#durian macaddress fix2\", \"item\":%{private, location:escape_only}@, \"0\":%{public}d, \"1\":%{public}d, \"2\":%{public}d, \"3\":%{public}d, \"4\":%{public}d, \"5\":%{public}d, \"6\":%{public}d, "...
0x101488dd8:  e4 03 00 91   mov	x4, sp
0x101488ddc:  e1 03 14 aa   mov	x1, x20
0x101488de0:  02 00 80 52   mov	w2, #0
0x101488de4:  85 09 80 52   mov	w5, #0x4c
0x101488de8:  02 31 1a 94   bl	j___os_log_impl
0x101488dec:  ; loc_101488dec
0x101488dec:  a8 84 00 f0   adrp	x8, 0x10251f000
0x101488df0:  00 c1 27 91   add	x0, x8, #0x9f0 ; CLDurianTask
0x101488df4:  e2 33 01 91   add	x2, sp, #0x4c
0x101488df8:  f2 5d 1a 94   bl	j__objc_msgSend(x0, "configureRangingHawkeyeTaskWithPayload:")
0x101488dfc:  e8 2f 40 f9   ldr	x8, [sp, #0x58]
0x101488e00:  49 78 00 d0   adrp	x9, 0x102392000
0x101488e04:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101488e08:  29 01 40 f9   ldr	x9, [x9]
0x101488e0c:  3f 01 08 eb   cmp	x9, x8
0x101488e10:  a1 01 00 54   b.ne	loc_101488e44 ; ⤵ 0x34
0x101488e14:  fd 7b 4b a9   ldp	fp, lr, [sp, #0xb0]
0x101488e18:  f4 4f 4a a9   ldp	x20, x19, [sp, #0xa0]
0x101488e1c:  f6 57 49 a9   ldp	x22, x21, [sp, #0x90]
0x101488e20:  f8 5f 48 a9   ldp	x24, x23, [sp, #0x80]
0x101488e24:  fa 67 47 a9   ldp	x26, x25, [sp, #0x70]
0x101488e28:  fc 6f 46 a9   ldp	x28, x27, [sp, #0x60]
0x101488e2c:  ff 03 03 91   add	sp, sp, #0xc0
0x101488e30:  ff 0f 5f d6   retab
0x101488e34:  ; loc_101488e34
0x101488e34:  0f 1d 1a 94   bl	0x101b10270
0x101488e38:  80 ff ff 17   b	loc_101488c38 ; ⤴ -0x200
0x101488e3c:  ; loc_101488e3c
0x101488e3c:  0e 1d 1a 94   bl	0x101b10274
0x101488e40:  b5 ff ff 17   b	loc_101488d14 ; ⤴ -0x12c
0x101488e44:  ; loc_101488e44
0x101488e44:  bf 30 1a 94   bl	j____stack_chk_fail

-[CLHawkeyeDevice createStartRangingTaskWithTargetEventCounter:]:
0x101488e48:  7f 23 03 d5   pacibsp
0x101488e4c:  ff 03 01 d1   sub	sp, sp, #0x40
0x101488e50:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x101488e54:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]

