0x101464cd0:  c1 2f 00 54   b.ne	loc_1014652c8 ; ⤵ 0x5f8
0x101464cd4:  e8 88 00 d0   adrp	x8, 0x102582000
0x101464cd8:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101464cdc:  e0 03 15 aa   mov	x0, x21
0x101464ce0:  01 00 80 52   mov	w1, #0
0x101464ce4:  83 c5 1a 94   bl	j__os_log_type_enabled
0x101464ce8:  40 04 00 34   cbz	w0, loc_101464d70 ; ⤵ 0x88
0x101464cec:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464cf0:  4a cf 00 94   bl	0x101498a18
0x101464cf4:  f6 03 00 aa   mov	x22, x0
0x101464cf8:  e0 03 14 aa   mov	x0, x20
0x101464cfc:  d9 ca 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464d00:  f7 03 00 aa   mov	x23, x0
0x101464d04:  e0 03 14 aa   mov	x0, x20
0x101464d08:  6e e5 1b 94   bl	j__objc_msgSend(x0, "value")
0x101464d0c:  88 44 00 90   adrp	x8, 0x101cf4000
0x101464d10:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101464d14:  e0 03 00 bd   str	s0, [sp]
0x101464d18:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464d1c:  48 04 81 52   mov	w8, #0x822
0x101464d20:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464d24:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464d28:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464d2c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464d30:  28 08 81 52   mov	w8, #0x841
0x101464d34:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464d38:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101464d3c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101464d40:  f7 e3 01 f8   stur	x23, [sp, #0x1e]
0x101464d44:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101464d48:  e0 17 00 f9   str	x0, [sp, #0x28]
0x101464d4c:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464d50:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464d54:  a3 70 00 d0   adrp	x3, 0x10227a000
0x101464d58:  63 f4 0f 91   add	x3, x3, #0x3fd ; "{\"msg%{public}.0s\":\"#durian wrote value for characteristic\", \"item\":%{private, location:escape_only}@, \"characteristicUUID\":%{private, location:escape_only}@, \"value\":%{private, location:escape_only}@"...
0x101464d5c:  e4 03 00 91   mov	x4, sp
0x101464d60:  e1 03 15 aa   mov	x1, x21
0x101464d64:  02 00 80 52   mov	w2, #0
0x101464d68:  05 06 80 52   mov	w5, #0x30
0x101464d6c:  21 c1 1a 94   bl	j___os_log_impl
0x101464d70:  ; loc_101464d70
0x101464d70:  e0 03 13 aa   mov	x0, x19
0x101464d74:  4b 4a 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x101464d78:  20 07 00 34   cbz	w0, loc_101464e5c ; ⤵ 0xe4
0x101464d7c:  e0 03 14 aa   mov	x0, x20
0x101464d80:  b8 ca 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464d84:  f5 03 00 aa   mov	x21, x0
0x101464d88:  68 79 00 90   adrp	x8, 0x102390000
0x101464d8c:  00 35 46 f9   ldr	x0, [x8, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101464d90:  c4 cc 1a 94   bl	j__objc_msgSend(x0, "_cl_PoshAccessoryNonOwnerCharacteristicUUID")
0x101464d94:  e2 03 00 aa   mov	x2, x0
0x101464d98:  e0 03 15 aa   mov	x0, x21
0x101464d9c:  f1 46 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101464da0:  e0 05 00 34   cbz	w0, loc_101464e5c ; ⤵ 0xbc
0x101464da4:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101464da8:  1f 05 00 b1   cmn	x8, #0x1
0x101464dac:  a1 29 00 54   b.ne	loc_1014652e0 ; ⤵ 0x534
0x101464db0:  e8 88 00 d0   adrp	x8, 0x102582000
0x101464db4:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101464db8:  e0 03 15 aa   mov	x0, x21
0x101464dbc:  01 00 80 52   mov	w1, #0
0x101464dc0:  4c c5 1a 94   bl	j__os_log_type_enabled
0x101464dc4:  a0 25 00 34   cbz	w0, loc_101465278 ; ⤵ 0x4b4
0x101464dc8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464dcc:  13 cf 00 94   bl	0x101498a18
0x101464dd0:  f6 03 00 aa   mov	x22, x0
0x101464dd4:  e0 03 14 aa   mov	x0, x20
0x101464dd8:  a2 ca 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464ddc:  f7 03 00 aa   mov	x23, x0
0x101464de0:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x101464de4:  77 da 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101464de8:  e2 03 00 aa   mov	x2, x0
0x101464dec:  e0 03 13 aa   mov	x0, x19
0x101464df0:  54 23 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101464df4:  f3 03 00 aa   mov	x19, x0
0x101464df8:  e0 03 14 aa   mov	x0, x20
0x101464dfc:  31 e5 1b 94   bl	j__objc_msgSend(x0, "value")
0x101464e00:  68 39 00 f0   adrp	x8, 0x101b93000
0x101464e04:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101464e08:  e0 03 00 bd   str	s0, [sp]
0x101464e0c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464e10:  48 04 81 52   mov	w8, #0x822
0x101464e14:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464e18:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464e1c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464e20:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464e24:  28 08 81 52   mov	w8, #0x841
0x101464e28:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464e2c:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101464e30:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101464e34:  f7 e3 01 f8   stur	x23, [sp, #0x1e]
0x101464e38:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101464e3c:  f3 17 00 f9   str	x19, [sp, #0x28]
0x101464e40:  e8 63 00 79   strh	w8, [sp, #0x30]
0x101464e44:  e0 23 03 f8   stur	x0, [sp, #0x32]
0x101464e48:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464e4c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464e50:  a3 70 00 d0   adrp	x3, 0x10227a000
0x101464e54:  63 1c 13 91   add	x3, x3, #0x4c7 ; "{\"msg%{public}.0s\":\"#durian #ut #posh wrote to characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"task\":%{private, location:escape_only}@, "...
0x101464e58:  3b 00 00 14   b	loc_101464f44 ; ⤵ 0xec
0x101464e5c:  ; loc_101464e5c
0x101464e5c:  e0 03 13 aa   mov	x0, x19
0x101464e60:  70 44 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x101464e64:  c0 07 00 34   cbz	w0, loc_101464f5c ; ⤵ 0xf8
0x101464e68:  e0 03 14 aa   mov	x0, x20
0x101464e6c:  7d ca 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464e70:  f5 03 00 aa   mov	x21, x0
0x101464e74:  68 79 00 90   adrp	x8, 0x102390000
0x101464e78:  00 35 46 f9   ldr	x0, [x8, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101464e7c:  e1 cb 1a 94   bl	j__objc_msgSend(x0, "_cl_DurianUnauthorizedPrecisionFindingCharacteristicUUID")
0x101464e80:  e2 03 00 aa   mov	x2, x0
0x101464e84:  e0 03 15 aa   mov	x0, x21
0x101464e88:  b6 46 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x101464e8c:  80 06 00 34   cbz	w0, loc_101464f5c ; ⤵ 0xd0
0x101464e90:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101464e94:  1f 05 00 b1   cmn	x8, #0x1
0x101464e98:  c1 22 00 54   b.ne	loc_1014652f0 ; ⤵ 0x458
0x101464e9c:  e8 88 00 d0   adrp	x8, 0x102582000
0x101464ea0:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101464ea4:  e0 03 15 aa   mov	x0, x21
0x101464ea8:  01 00 80 52   mov	w1, #0
0x101464eac:  11 c5 1a 94   bl	j__os_log_type_enabled
0x101464eb0:  40 1e 00 34   cbz	w0, loc_101465278 ; ⤵ 0x3c8
0x101464eb4:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464eb8:  d8 ce 00 94   bl	0x101498a18
0x101464ebc:  f6 03 00 aa   mov	x22, x0
0x101464ec0:  e0 03 14 aa   mov	x0, x20
0x101464ec4:  67 ca 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x101464ec8:  f7 03 00 aa   mov	x23, x0
0x101464ecc:  60 6e 41 f9   ldr	x0, [x19, #0x2d8]
0x101464ed0:  3c da 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101464ed4:  e2 03 00 aa   mov	x2, x0
0x101464ed8:  e0 03 13 aa   mov	x0, x19
0x101464edc:  19 23 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101464ee0:  f3 03 00 aa   mov	x19, x0
0x101464ee4:  e0 03 14 aa   mov	x0, x20
0x101464ee8:  f6 e4 1b 94   bl	j__objc_msgSend(x0, "value")
0x101464eec:  68 39 00 f0   adrp	x8, 0x101b93000
0x101464ef0:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101464ef4:  e0 03 00 bd   str	s0, [sp]
0x101464ef8:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464efc:  48 04 81 52   mov	w8, #0x822
0x101464f00:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464f04:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464f08:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464f0c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464f10:  28 08 81 52   mov	w8, #0x841
0x101464f14:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464f18:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101464f1c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101464f20:  f7 e3 01 f8   stur	x23, [sp, #0x1e]
0x101464f24:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x101464f28:  f3 17 00 f9   str	x19, [sp, #0x28]
0x101464f2c:  e8 63 00 79   strh	w8, [sp, #0x30]
0x101464f30:  e0 23 03 f8   stur	x0, [sp, #0x32]
0x101464f34:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464f38:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464f3c:  a3 70 00 d0   adrp	x3, 0x10227a000
0x101464f40:  63 e8 16 91   add	x3, x3, #0x5ba ; "{\"msg%{public}.0s\":\"#durian #ut wrote to characteristic\", \"item\":%{private, location:escape_only}@, \"characteristic\":%{private, location:escape_only}@, \"task\":%{private, location:escape_only}@, \"value"...
0x101464f44:  ; loc_101464f44
0x101464f44:  e4 03 00 91   mov	x4, sp
0x101464f48:  e1 03 15 aa   mov	x1, x21
0x101464f4c:  02 00 80 52   mov	w2, #0
0x101464f50:  45 07 80 52   mov	w5, #0x3a
0x101464f54:  a7 c0 1a 94   bl	j___os_log_impl
0x101464f58:  c8 00 00 14   b	loc_101465278 ; ⤵ 0x320
0x101464f5c:  ; loc_101464f5c
0x101464f5c:  e0 03 13 aa   mov	x0, x19
0x101464f60:  28 d4 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101464f64:  f4 03 00 aa   mov	x20, x0
0x101464f68:  80 63 2d 91   add	x0, x28, #0xb58
0x101464f6c:  05 c4 1a 94   bl	j__objc_opt_class
0x101464f70:  e1 03 00 aa   mov	x1, x0
0x101464f74:  e0 03 14 aa   mov	x0, x20
0x101464f78:  06 c4 1a 94   bl	j__objc_opt_isKindOfClass
0x101464f7c:  e0 17 00 36   tbz	w0, #0, loc_101465278 ; ⤵ 0x2fc
0x101464f80:  e0 03 13 aa   mov	x0, x19
0x101464f84:  1f d4 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x101464f88:  f4 03 00 aa   mov	x20, x0
0x101464f8c:  e0 03 13 aa   mov	x0, x19
0x101464f90:  2c 47 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101464f94:  80 00 00 34   cbz	w0, loc_101464fa4 ; ⤵ 0x10
0x101464f98:  e0 03 14 aa   mov	x0, x20
0x101464f9c:  81 06 1b 94   bl	j__objc_msgSend(x0, "doneSendingPayload")
0x101464fa0:  40 11 00 36   tbz	w0, #0, loc_1014651c8 ; ⤵ 0x228
0x101464fa4:  ; loc_101464fa4
0x101464fa4:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101464fa8:  1f 05 00 b1   cmn	x8, #0x1
0x101464fac:  e1 19 00 54   b.ne	loc_1014652e8 ; ⤵ 0x33c
0x101464fb0:  e8 88 00 d0   adrp	x8, 0x102582000
0x101464fb4:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101464fb8:  e0 03 14 aa   mov	x0, x20
0x101464fbc:  01 00 80 52   mov	w1, #0
0x101464fc0:  cc c4 1a 94   bl	j__os_log_type_enabled
0x101464fc4:  00 03 00 34   cbz	w0, loc_101465024 ; ⤵ 0x60
0x101464fc8:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101464fcc:  93 ce 00 94   bl	0x101498a18
0x101464fd0:  88 44 00 90   adrp	x8, 0x101cf4000
0x101464fd4:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101464fd8:  e0 03 00 bd   str	s0, [sp]
0x101464fdc:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101464fe0:  48 04 81 52   mov	w8, #0x822
0x101464fe4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101464fe8:  48 52 00 d0   adrp	x8, 0x101eae000
0x101464fec:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464ff0:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101464ff4:  28 08 81 52   mov	w8, #0x841
0x101464ff8:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101464ffc:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101465000:  c0 5c ff f0   adrp	x0, 0x100000000
0x101465004:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101465008:  a3 70 00 b0   adrp	x3, 0x10227a000
0x10146500c:  63 74 1c 91   add	x3, x3, #0x71d ; "{\"msg%{public}.0s\":\"#durian #hawkeye Sent last message fragment\", \"item\":%{private, location:escape_only}@}"
0x101465010:  e4 03 00 91   mov	x4, sp
0x101465014:  e1 03 14 aa   mov	x1, x20

