0x100466be0:  1f 05 00 b1   cmn	x8, #0x1
0x100466be4:  61 80 00 54   b.ne	loc_100467bf0 ; ⤵ 0x100c
0x100466be8:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466bec:  00 41 40 f9   ldr	x0, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x100466bf0:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100466bf4:  a8 03 04 d1   sub	x8, fp, #0x100
0x100466bf8:  b3 be 0a 94   bl	0x1007166c4
0x100466bfc:  a8 73 91 38   ldursb	x8, [fp, #-0xe9]
0x100466c00:  a9 83 50 f8   ldur	x9, [fp, #-0xf8]
0x100466c04:  1f 01 00 71   cmp	w8, #0
0x100466c08:  29 b1 88 9a   csel	x9, x9, x8, lt
0x100466c0c:  3f 01 00 f1   cmp	x9, #0
0x100466c10:  f3 07 9f 1a   cset	w19, ne
0x100466c14:  a8 00 f8 b6   tbz	x8, #0x3f, loc_100466c28 ; ⤵ 0x14
0x100466c18:  a0 03 50 f8   ldur	x0, [fp, #-0x100]
0x100466c1c:  4d 9d 0e 94   bl	j___ZdlPv
0x100466c20:  02 00 00 14   b	loc_100466c28 ; ⤵ 0x8
0x100466c24:  13 00 80 52   mov	w19, #0
0x100466c28:  ; loc_100466c28
0x100466c28:  e8 1f c5 39   ldrsb	w8, [sp, #0x147]
0x100466c2c:  68 00 f8 36   tbz	w8, #0x1f, loc_100466c38 ; ⤵ 0xc
0x100466c30:  e0 9b 40 f9   ldr	x0, [sp, #0x130]
0x100466c34:  47 9d 0e 94   bl	j___ZdlPv
0x100466c38:  ; loc_100466c38
0x100466c38:  b3 01 00 34   cbz	w19, loc_100466c6c ; ⤵ 0x34
0x100466c3c:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466c40:  08 cd 40 f9   ldr	x8, [x8, #0x198] ; data_100a99198 (__DATA.__data)
0x100466c44:  1f 05 00 b1   cmn	x8, #0x1
0x100466c48:  01 7e 00 54   b.ne	loc_100467c08 ; ⤵ 0xfc0
0x100466c4c:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466c50:  14 c9 40 f9   ldr	x20, [x8, #0x190] ; data_100a99190 (__DATA.__data)
0x100466c54:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100466c58:  e0 c3 04 91   add	x0, sp, #0x130
0x100466c5c:  8e 3b f9 97   bl	0x1002b5a94
0x100466c60:  e1 c3 04 91   add	x1, sp, #0x130
0x100466c64:  e0 03 14 aa   mov	x0, x20
0x100466c68:  2e c6 09 94   bl	0x1006d8520
0x100466c6c:  ; loc_100466c6c
0x100466c6c:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100466c70:  64 d8 0e 94   bl	j__objc_msgSend(x0, "requiresLowLatency")
0x100466c74:  a0 01 00 34   cbz	w0, loc_100466ca8 ; ⤵ 0x34
0x100466c78:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466c7c:  08 cd 40 f9   ldr	x8, [x8, #0x198] ; data_100a99198 (__DATA.__data)
0x100466c80:  1f 05 00 b1   cmn	x8, #0x1
0x100466c84:  61 7c 00 54   b.ne	loc_100467c10 ; ⤵ 0xf8c
0x100466c88:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466c8c:  14 c9 40 f9   ldr	x20, [x8, #0x190] ; data_100a99190 (__DATA.__data)
0x100466c90:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100466c94:  e0 c3 04 91   add	x0, sp, #0x130
0x100466c98:  7f 3b f9 97   bl	0x1002b5a94
0x100466c9c:  e1 c3 04 91   add	x1, sp, #0x130
0x100466ca0:  e0 03 14 aa   mov	x0, x20
0x100466ca4:  1f c6 09 94   bl	0x1006d8520
0x100466ca8:  ; loc_100466ca8
0x100466ca8:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100466cac:  55 d3 0e 94   bl	j__objc_msgSend(x0, "opportunistic")
0x100466cb0:  c0 07 00 36   tbz	w0, #0, loc_100466da8 ; ⤵ 0xf8
0x100466cb4:  ; loc_100466cb4
0x100466cb4:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100466cb8:  d2 ef 0e 94   bl	j__objc_msgSend(x0, "temporaryLTK")
0x100466cbc:  fd 03 1d aa   mov	fp, fp
0x100466cc0:  b8 a1 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x100466cc4:  f9 03 00 aa   mov	x25, x0
0x100466cc8:  a0 1e 00 b4   cbz	x0, loc_10046709c ; ⤵ 0x3d4
0x100466ccc:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100466cd0:  cc ef 0e 94   bl	j__objc_msgSend(x0, "temporaryLTK")
0x100466cd4:  fd 03 1d aa   mov	fp, fp
0x100466cd8:  b2 a1 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x100466cdc:  f4 03 00 aa   mov	x20, x0
0x100466ce0:  60 ce 0e 94   bl	j__objc_msgSend(x0, "length")
0x100466ce4:  1f 00 00 f1   cmp	x0, #0
0x100466ce8:  f3 17 9f 1a   cset	w19, eq
0x100466cec:  e0 03 14 aa   mov	x0, x20
0x100466cf0:  a0 a1 0e 94   bl	j__objc_release
0x100466cf4:  e0 03 19 aa   mov	x0, x25
0x100466cf8:  9e a1 0e 94   bl	j__objc_release
0x100466cfc:  13 1d 00 37   tbnz	w19, #0, loc_10046709c ; ⤵ 0x3a0
0x100466d00:  b4 02 40 f9   ldr	x20, [x21]
0x100466d04:  e0 03 14 aa   mov	x0, x20
0x100466d08:  01 00 80 52   mov	w1, #0
0x100466d0c:  49 a2 0e 94   bl	j__os_log_type_enabled
0x100466d10:  00 02 00 34   cbz	w0, loc_100466d50 ; ⤵ 0x40
0x100466d14:  e8 87 40 f9   ldr	x8, [sp, #0x108]
0x100466d18:  69 21 00 f0   adrp	x9, 0x100895000
0x100466d1c:  20 55 43 fd   ldr	d0, [x9, #0x6a8]
0x100466d20:  e0 33 01 bd   str	s0, [sp, #0x130]
0x100466d24:  e9 43 04 91   add	x9, sp, #0x110
0x100466d28:  28 41 02 f8   stur	x8, [x9, #0x24]
0x100466d2c:  c0 dc ff d0   adrp	x0, 0x100000000
0x100466d30:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100466d34:  e3 28 00 b0   adrp	x3, 0x100983000
0x100466d38:  63 a0 09 91   add	x3, x3, #0x268 ; "setting up temporary LTK for device %{public}@"
0x100466d3c:  e4 c3 04 91   add	x4, sp, #0x130
0x100466d40:  e1 03 14 aa   mov	x1, x20
0x100466d44:  02 00 80 52   mov	w2, #0
0x100466d48:  85 01 80 52   mov	w5, #0xc
0x100466d4c:  81 9d 0e 94   bl	j___os_log_impl
0x100466d50:  ; loc_100466d50
0x100466d50:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466d54:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x100466d58:  1f 05 00 b1   cmn	x8, #0x1
0x100466d5c:  e1 74 00 54   b.ne	loc_100467bf8 ; ⤵ 0xe9c
0x100466d60:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466d64:  00 41 40 f9   ldr	x0, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x100466d68:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100466d6c:  9d af 0a 94   bl	0x100712be0
0x100466d70:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466d74:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x100466d78:  1f 05 00 b1   cmn	x8, #0x1
0x100466d7c:  60 0a 00 34   cbz	w0, loc_100466ec8 ; ⤵ 0x14c
0x100466d80:  a1 76 00 54   b.ne	loc_100467c54 ; ⤵ 0xed4
0x100466d84:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466d88:  14 41 40 f9   ldr	x20, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x100466d8c:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100466d90:  e0 c3 04 91   add	x0, sp, #0x130
0x100466d94:  40 3b f9 97   bl	0x1002b5a94
0x100466d98:  e1 c3 04 91   add	x1, sp, #0x130
0x100466d9c:  e0 03 14 aa   mov	x0, x20
0x100466da0:  19 c9 0a 94   bl	0x100719204
0x100466da4:  4f 00 00 14   b	loc_100466ee0 ; ⤵ 0x13c
0x100466da8:  ; loc_100466da8
0x100466da8:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466dac:  08 cd 40 f9   ldr	x8, [x8, #0x198] ; data_100a99198 (__DATA.__data)
0x100466db0:  1f 05 00 b1   cmn	x8, #0x1
0x100466db4:  21 73 00 54   b.ne	loc_100467c18 ; ⤵ 0xe64
0x100466db8:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466dbc:  00 c9 40 f9   ldr	x0, [x8, #0x190] ; data_100a99190 (__DATA.__data)
0x100466dc0:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100466dc4:  7e af 09 94   bl	0x1006d2bbc
0x100466dc8:  f9 03 00 aa   mov	x25, x0
0x100466dcc:  1f 24 03 71   cmp	w0, #0xc9
0x100466dd0:  ad 33 00 54   b.le	loc_100467444 ; ⤵ 0x674
0x100466dd4:  3f 2b 03 71   cmp	w25, #0xca
0x100466dd8:  80 39 00 54   b.eq	loc_100467508 ; ⤵ 0x730
0x100466ddc:  3f db 04 71   cmp	w25, #0x136
0x100466de0:  e0 3e 00 54   b.eq	loc_1004675bc ; ⤵ 0x7dc
0x100466de4:  3f df 04 71   cmp	w25, #0x137
0x100466de8:  81 39 00 54   b.ne	loc_100467518 ; ⤵ 0x730
0x100466dec:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466df0:  08 cd 40 f9   ldr	x8, [x8, #0x198] ; data_100a99198 (__DATA.__data)
0x100466df4:  1f 05 00 b1   cmn	x8, #0x1
0x100466df8:  61 75 00 54   b.ne	loc_100467ca4 ; ⤵ 0xeac
0x100466dfc:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466e00:  14 c9 40 f9   ldr	x20, [x8, #0x190] ; data_100a99190 (__DATA.__data)
0x100466e04:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100466e08:  e0 c3 04 91   add	x0, sp, #0x130
0x100466e0c:  22 3b f9 97   bl	0x1002b5a94
0x100466e10:  e1 c3 04 91   add	x1, sp, #0x130
0x100466e14:  e0 03 14 aa   mov	x0, x20
0x100466e18:  e1 c4 09 94   bl	0x1006d819c
0x100466e1c:  20 49 00 34   cbz	w0, loc_100467740 ; ⤵ 0x924
0x100466e20:  e8 6a 45 f9   ldr	x8, [x23, #0xad0]
0x100466e24:  1f 05 00 b1   cmn	x8, #0x1
0x100466e28:  a1 74 00 54   b.ne	loc_100467cbc ; ⤵ 0xe94
0x100466e2c:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466e30:  00 65 45 f9   ldr	x0, [x8, #0xac8] ; data_100a99ac8 (__DATA.__data)
0x100466e34:  e3 87 40 f9   ldr	x3, [sp, #0x108]
0x100466e38:  e1 07 40 f9   ldr	x1, [sp, #0x8]
0x100466e3c:  e2 13 40 f9   ldr	x2, [sp, #0x20]
0x100466e40:  04 00 80 52   mov	w4, #0
0x100466e44:  05 00 80 52   mov	w5, #0
0x100466e48:  bb cc fa 97   bl	0x10031a134
0x100466e4c:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466e50:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x100466e54:  1f 05 00 b1   cmn	x8, #0x1
0x100466e58:  61 73 00 54   b.ne	loc_100467cc4 ; ⤵ 0xe6c
0x100466e5c:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466e60:  14 41 40 f9   ldr	x20, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x100466e64:  f8 87 40 f9   ldr	x24, [sp, #0x108]
0x100466e68:  c1 21 00 d0   adrp	x1, 0x1008a0000
0x100466e6c:  21 8c 2a 91   add	x1, x1, #0xaa3 ; "_CTKD_"
0x100466e70:  e0 e3 00 91   add	x0, sp, #0x38
0x100466e74:  1c 6f ee 97   bl	0x100002ae4
0x100466e78:  e2 e3 00 91   add	x2, sp, #0x38
0x100466e7c:  e0 03 14 aa   mov	x0, x20
0x100466e80:  e1 03 18 aa   mov	x1, x24
0x100466e84:  11 bb 0a 94   bl	0x100715ac8
0x100466e88:  f4 03 00 aa   mov	x20, x0
0x100466e8c:  e8 3f c1 39   ldrsb	w8, [sp, #0x4f]
0x100466e90:  68 00 f8 36   tbz	w8, #0x1f, loc_100466e9c ; ⤵ 0xc
0x100466e94:  e0 1f 40 f9   ldr	x0, [sp, #0x38]
0x100466e98:  ae 9c 0e 94   bl	j___ZdlPv
0x100466e9c:  ; loc_100466e9c
0x100466e9c:  34 45 00 34   cbz	w20, loc_100467740 ; ⤵ 0x8a4
0x100466ea0:  e8 6a 45 f9   ldr	x8, [x23, #0xad0]
0x100466ea4:  1f 05 00 b1   cmn	x8, #0x1
0x100466ea8:  21 71 00 54   b.ne	loc_100467ccc ; ⤵ 0xe24
0x100466eac:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466eb0:  00 65 45 f9   ldr	x0, [x8, #0xac8] ; data_100a99ac8 (__DATA.__data)
0x100466eb4:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100466eb8:  22 00 80 52   mov	w2, #0x1
0x100466ebc:  03 00 80 52   mov	w3, #0
0x100466ec0:  af e2 fa 97   bl	0x10031f97c
0x100466ec4:  1f 02 00 14   b	loc_100467740 ; ⤵ 0x87c
0x100466ec8:  ; loc_100466ec8
0x100466ec8:  a1 6c 00 54   b.ne	loc_100467c5c ; ⤵ 0xd94
0x100466ecc:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466ed0:  00 41 40 f9   ldr	x0, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x100466ed4:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100466ed8:  02 00 80 52   mov	w2, #0
0x100466edc:  ec ae 0a 94   bl	0x100712a8c
0x100466ee0:  ; loc_100466ee0
0x100466ee0:  f9 03 00 aa   mov	x25, x0
0x100466ee4:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466ee8:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x100466eec:  1f 05 00 b1   cmn	x8, #0x1
0x100466ef0:  81 68 00 54   b.ne	loc_100467c00 ; ⤵ 0xd10
0x100466ef4:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466ef8:  00 41 40 f9   ldr	x0, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x100466efc:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100466f00:  e8 c3 04 91   add	x8, sp, #0x130
0x100466f04:  42 00 80 52   mov	w2, #0x2
0x100466f08:  27 e6 0a 94   bl	0x1007207a4
0x100466f0c:  e1 9f 40 f9   ldr	x1, [sp, #0x138]
0x100466f10:  41 01 00 b4   cbz	x1, loc_100466f38 ; ⤵ 0x28
0x100466f14:  e8 03 01 aa   mov	x8, x1
0x100466f18:  ; loc_100466f18
0x100466f18:  09 11 40 f9   ldr	x9, [x8, #0x20]
0x100466f1c:  3f 03 09 eb   cmp	x25, x9
0x100466f20:  83 00 00 54   b.lo	loc_100466f30 ; ⤵ 0x10
0x100466f24:  3f 01 19 eb   cmp	x9, x25
0x100466f28:  42 2a 00 54   b.hs	loc_100467470 ; ⤵ 0x548
0x100466f2c:  08 21 00 91   add	x8, x8, #0x8
0x100466f30:  ; loc_100466f30
0x100466f30:  08 01 40 f9   ldr	x8, [x8]
0x100466f34:  28 ff ff b5   cbnz	x8, loc_100466f18 ; ⤴ -0x1c
0x100466f38:  ; loc_100466f38
0x100466f38:  e0 c3 04 91   add	x0, sp, #0x130
0x100466f3c:  7d fd ef 97   bl	0x100066530
0x100466f40:  b4 02 40 f9   ldr	x20, [x21]
0x100466f44:  e0 03 14 aa   mov	x0, x20
0x100466f48:  01 00 80 52   mov	w1, #0
0x100466f4c:  b9 a1 0e 94   bl	j__os_log_type_enabled
0x100466f50:  00 02 00 34   cbz	w0, loc_100466f90 ; ⤵ 0x40
0x100466f54:  e8 87 40 f9   ldr	x8, [sp, #0x108]
0x100466f58:  49 21 00 f0   adrp	x9, 0x100891000
0x100466f5c:  20 49 46 fd   ldr	d0, [x9, #0xc90]
0x100466f60:  e0 33 01 bd   str	s0, [sp, #0x130]
0x100466f64:  e9 43 04 91   add	x9, sp, #0x110
0x100466f68:  28 41 02 f8   stur	x8, [x9, #0x24]
0x100466f6c:  c0 dc ff d0   adrp	x0, 0x100000000
0x100466f70:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100466f74:  e3 28 00 b0   adrp	x3, 0x100983000
0x100466f78:  63 00 0c 91   add	x3, x3, #0x300 ; "setting up temporary LTK for device %@"
0x100466f7c:  e4 c3 04 91   add	x4, sp, #0x130
0x100466f80:  e1 03 14 aa   mov	x1, x20
0x100466f84:  02 00 80 52   mov	w2, #0
0x100466f88:  85 01 80 52   mov	w5, #0xc
0x100466f8c:  f1 9c 0e 94   bl	j___os_log_impl
0x100466f90:  ; loc_100466f90
0x100466f90:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100466f94:  1b ef 0e 94   bl	j__objc_msgSend(x0, "temporaryLTK")
0x100466f98:  fd 03 1d aa   mov	fp, fp
0x100466f9c:  01 a1 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x100466fa0:  f4 03 00 aa   mov	x20, x0
0x100466fa4:  af cd 0e 94   bl	j__objc_msgSend(x0, "length")
0x100466fa8:  f8 03 00 aa   mov	x24, x0
0x100466fac:  e0 03 14 aa   mov	x0, x20
0x100466fb0:  f0 a0 0e 94   bl	j__objc_release
0x100466fb4:  f8 c3 04 39   strb	w24, [sp, #0x130]
0x100466fb8:  48 00 80 52   mov	w8, #0x2
0x100466fbc:  a8 03 10 38   sturb	w8, [fp, #-0x100]
0x100466fc0:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466fc4:  08 4d 40 f9   ldr	x8, [x8, #0x98] ; data_100a99098 (__DATA.__data)
0x100466fc8:  1f 05 00 b1   cmn	x8, #0x1
0x100466fcc:  a1 62 00 54   b.ne	loc_100467c20 ; ⤵ 0xc54
0x100466fd0:  88 31 00 f0   adrp	x8, 0x100a99000
0x100466fd4:  1b 49 40 f9   ldr	x27, [x8, #0x90] ; data_100a99090 (__DATA.__data)
0x100466fd8:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100466fdc:  09 ef 0e 94   bl	j__objc_msgSend(x0, "temporaryLTK")
0x100466fe0:  fd 03 1d aa   mov	fp, fp
0x100466fe4:  ef a0 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x100466fe8:  fa 03 00 aa   mov	x26, x0
0x100466fec:  e9 a0 0e 94   bl	j__objc_retainAutorelease
0x100466ff0:  e0 03 1a aa   mov	x0, x26
0x100466ff4:  b3 b9 0e 94   bl	j__objc_msgSend(x0, "bytes")
0x100466ff8:  f8 03 00 aa   mov	x24, x0
0x100466ffc:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100467000:  00 ef 0e 94   bl	j__objc_msgSend(x0, "temporaryLTK")
0x100467004:  fd 03 1d aa   mov	fp, fp
0x100467008:  e6 a0 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x10046700c:  fc 03 00 aa   mov	x28, x0
0x100467010:  94 cd 0e 94   bl	j__objc_msgSend(x0, "length")
0x100467014:  04 1c 00 12   and	w4, w0, #0xff
0x100467018:  e0 03 1b aa   mov	x0, x27
0x10046701c:  e1 03 19 aa   mov	x1, x25
0x100467020:  a2 00 80 52   mov	w2, #0x5
0x100467024:  e3 03 18 aa   mov	x3, x24
0x100467028:  3d 65 0c 94   bl	0x10078051c
0x10046702c:  e0 03 1c aa   mov	x0, x28
0x100467030:  d0 a0 0e 94   bl	j__objc_release
0x100467034:  e0 03 1a aa   mov	x0, x26
0x100467038:  ce a0 0e 94   bl	j__objc_release
0x10046703c:  88 31 00 d0   adrp	x8, 0x100a99000
0x100467040:  08 4d 40 f9   ldr	x8, [x8, #0x98] ; data_100a99098 (__DATA.__data)
0x100467044:  1f 05 00 b1   cmn	x8, #0x1
0x100467048:  01 5f 00 54   b.ne	loc_100467c28 ; ⤵ 0xbe0
0x10046704c:  55 33 00 d0   adrp	x21, 0x100ad1000
0x100467050:  b5 e2 32 91   add	x21, x21, #0xcb8
0x100467054:  88 31 00 d0   adrp	x8, 0x100a99000
0x100467058:  00 49 40 f9   ldr	x0, [x8, #0x90] ; data_100a99090 (__DATA.__data)
0x10046705c:  e3 c3 04 91   add	x3, sp, #0x130
0x100467060:  e1 03 19 aa   mov	x1, x25
0x100467064:  c2 00 80 52   mov	w2, #0x6
0x100467068:  24 00 80 52   mov	w4, #0x1
0x10046706c:  2c 65 0c 94   bl	0x10078051c
0x100467070:  88 31 00 d0   adrp	x8, 0x100a99000
0x100467074:  08 4d 40 f9   ldr	x8, [x8, #0x98] ; data_100a99098 (__DATA.__data)
0x100467078:  1f 05 00 b1   cmn	x8, #0x1
0x10046707c:  a1 5d 00 54   b.ne	loc_100467c30 ; ⤵ 0xbb4
0x100467080:  88 31 00 d0   adrp	x8, 0x100a99000
0x100467084:  00 49 40 f9   ldr	x0, [x8, #0x90] ; data_100a99090 (__DATA.__data)
0x100467088:  a3 03 04 d1   sub	x3, fp, #0x100
0x10046708c:  e1 03 19 aa   mov	x1, x25
0x100467090:  e2 00 80 52   mov	w2, #0x7
0x100467094:  24 00 80 52   mov	w4, #0x1
0x100467098:  21 65 0c 94   bl	0x10078051c
0x10046709c:  ; loc_10046709c
0x10046709c:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x1004670a0:  c8 ee 0e 94   bl	j__objc_msgSend(x0, "temporaryIRK")
0x1004670a4:  fd 03 1d aa   mov	fp, fp
0x1004670a8:  be a0 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x1004670ac:  f4 03 00 aa   mov	x20, x0
0x1004670b0:  c0 2d 00 b4   cbz	x0, loc_100467668 ; ⤵ 0x5b8
0x1004670b4:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x1004670b8:  ca ee 0e 94   bl	j__objc_msgSend(x0, "temporaryIdentityAddress")
0x1004670bc:  fd 03 1d aa   mov	fp, fp
0x1004670c0:  b8 a0 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x1004670c4:  1f 00 00 f1   cmp	x0, #0
0x1004670c8:  f3 17 9f 1a   cset	w19, eq
0x1004670cc:  a9 a0 0e 94   bl	j__objc_release
0x1004670d0:  e0 03 14 aa   mov	x0, x20
0x1004670d4:  a7 a0 0e 94   bl	j__objc_release
0x1004670d8:  55 33 00 d0   adrp	x21, 0x100ad1000
0x1004670dc:  b5 e2 32 91   add	x21, x21, #0xcb8
0x1004670e0:  53 2c 00 37   tbnz	w19, #0, loc_100467668 ; ⤵ 0x588
0x1004670e4:  b4 02 40 f9   ldr	x20, [x21]
0x1004670e8:  e0 03 14 aa   mov	x0, x20
0x1004670ec:  01 00 80 52   mov	w1, #0
0x1004670f0:  50 a1 0e 94   bl	j__os_log_type_enabled
0x1004670f4:  00 02 00 34   cbz	w0, loc_100467134 ; ⤵ 0x40
0x1004670f8:  e8 87 40 f9   ldr	x8, [sp, #0x108]
0x1004670fc:  69 21 00 d0   adrp	x9, 0x100895000
0x100467100:  20 55 43 fd   ldr	d0, [x9, #0x6a8]
0x100467104:  e0 33 01 bd   str	s0, [sp, #0x130]
0x100467108:  e9 43 04 91   add	x9, sp, #0x110
0x10046710c:  28 41 02 f8   stur	x8, [x9, #0x24]
0x100467110:  c0 dc ff b0   adrp	x0, 0x100000000
0x100467114:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100467118:  e3 28 00 90   adrp	x3, 0x100983000
0x10046711c:  63 9c 0c 91   add	x3, x3, #0x327 ; "setting up temporary IRK for device %{public}@"
0x100467120:  e4 c3 04 91   add	x4, sp, #0x130
0x100467124:  e1 03 14 aa   mov	x1, x20
0x100467128:  02 00 80 52   mov	w2, #0
0x10046712c:  85 01 80 52   mov	w5, #0xc
0x100467130:  88 9c 0e 94   bl	j___os_log_impl
0x100467134:  ; loc_100467134
0x100467134:  ff b3 06 b8   stur	wzr, [sp, #0x6b]
0x100467138:  ff 6b 00 b9   str	wzr, [sp, #0x68]
0x10046713c:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100467140:  a8 ee 0e 94   bl	j__objc_msgSend(x0, "temporaryIdentityAddress")
0x100467144:  fd 03 1d aa   mov	fp, fp
0x100467148:  96 a0 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x10046714c:  f4 03 00 aa   mov	x20, x0
0x100467150:  bf 78 0a 94   bl	0x10070544c
0x100467154:  f9 03 00 aa   mov	x25, x0
0x100467158:  e0 03 14 aa   mov	x0, x20
0x10046715c:  85 a0 0e 94   bl	j__objc_release
0x100467160:  ff a3 01 39   strb	wzr, [sp, #0x68]
0x100467164:  e0 03 19 aa   mov	x0, x25
0x100467168:  43 a9 f6 97   bl	0x100211674
0x10046716c:  e0 93 06 b8   stur	w0, [sp, #0x69]
0x100467170:  08 fc 60 d3   lsr	x8, x0, #0x20
0x100467174:  e8 d3 06 78   sturh	w8, [sp, #0x6d]
0x100467178:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x10046717c:  91 ee 0e 94   bl	j__objc_msgSend(x0, "temporaryIRK")
0x100467180:  fd 03 1d aa   mov	fp, fp
0x100467184:  87 a0 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x100467188:  f4 03 00 aa   mov	x20, x0
0x10046718c:  35 cd 0e 94   bl	j__objc_msgSend(x0, "length")
0x100467190:  f8 03 00 aa   mov	x24, x0
0x100467194:  e0 03 14 aa   mov	x0, x20
0x100467198:  76 a0 0e 94   bl	j__objc_release
0x10046719c:  1f 43 00 f1   cmp	x24, #0x10
0x1004671a0:  e1 13 00 54   b.ne	loc_10046741c ; ⤵ 0x27c
0x1004671a4:  ff 7f 18 a9   stp	xzr, xzr, [sp, #0x180]
0x1004671a8:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x1004671ac:  85 ee 0e 94   bl	j__objc_msgSend(x0, "temporaryIRK")
0x1004671b0:  fd 03 1d aa   mov	fp, fp
0x1004671b4:  7b a0 0e 94   bl	j__objc_retainAutoreleasedReturnValue
0x1004671b8:  f4 03 00 aa   mov	x20, x0
0x1004671bc:  75 a0 0e 94   bl	j__objc_retainAutorelease
0x1004671c0:  e0 03 14 aa   mov	x0, x20
0x1004671c4:  3f b9 0e 94   bl	j__objc_msgSend(x0, "bytes")
0x1004671c8:  00 00 c0 3d   ldr	q0, [x0]
0x1004671cc:  e8 43 04 91   add	x8, sp, #0x110
0x1004671d0:  00 1d 80 3d   str	q0, [x8, #0x70]
0x1004671d4:  e0 03 14 aa   mov	x0, x20
0x1004671d8:  66 a0 0e 94   bl	j__objc_release
0x1004671dc:  88 31 00 d0   adrp	x8, 0x100a99000
0x1004671e0:  08 4d 40 f9   ldr	x8, [x8, #0x98] ; data_100a99098 (__DATA.__data)
0x1004671e4:  1f 05 00 b1   cmn	x8, #0x1
0x1004671e8:  e1 53 00 54   b.ne	loc_100467c64 ; ⤵ 0xa7c
0x1004671ec:  88 31 00 d0   adrp	x8, 0x100a99000
0x1004671f0:  00 49 40 f9   ldr	x0, [x8, #0x90] ; data_100a99090 (__DATA.__data)
0x1004671f4:  e3 87 40 f9   ldr	x3, [sp, #0x108]
0x1004671f8:  e1 a3 01 91   add	x1, sp, #0x68
0x1004671fc:  e2 03 06 91   add	x2, sp, #0x180
0x100467200:  f2 6f 0c 94   bl	0x1007831c8
0x100467204:  88 31 00 d0   adrp	x8, 0x100a99000
0x100467208:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x10046720c:  1f 05 00 b1   cmn	x8, #0x1
0x100467210:  e1 52 00 54   b.ne	loc_100467c6c ; ⤵ 0xa5c
0x100467214:  f8 03 16 aa   mov	x24, x22
0x100467218:  88 31 00 d0   adrp	x8, 0x100a99000
0x10046721c:  14 41 40 f9   ldr	x20, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x100467220:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100467224:  e0 c3 04 91   add	x0, sp, #0x130
0x100467228:  1b 3a f9 97   bl	0x1002b5a94
0x10046722c:  e1 c3 04 91   add	x1, sp, #0x130
0x100467230:  e0 03 14 aa   mov	x0, x20
0x100467234:  e2 03 19 aa   mov	x2, x25
0x100467238:  03 00 80 52   mov	w3, #0
0x10046723c:  1c c8 0a 94   bl	0x1007192ac
0x100467240:  88 31 00 d0   adrp	x8, 0x100a99000
0x100467244:  08 cd 40 f9   ldr	x8, [x8, #0x198] ; data_100a99198 (__DATA.__data)
0x100467248:  1f 05 00 b1   cmn	x8, #0x1
0x10046724c:  61 51 00 54   b.ne	loc_100467c78 ; ⤵ 0xa2c
0x100467250:  88 31 00 d0   adrp	x8, 0x100a99000
0x100467254:  14 c9 40 f9   ldr	x20, [x8, #0x190] ; data_100a99190 (__DATA.__data)
0x100467258:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x10046725c:  e0 c3 04 91   add	x0, sp, #0x130
0x100467260:  0d 3a f9 97   bl	0x1002b5a94
0x100467264:  e1 c3 04 91   add	x1, sp, #0x130
0x100467268:  e0 03 14 aa   mov	x0, x20
0x10046726c:  66 a5 09 94   bl	0x1006d0804
0x100467270:  c0 1f 00 34   cbz	w0, loc_100467668 ; ⤵ 0x3f8
0x100467274:  88 31 00 d0   adrp	x8, 0x100a99000
0x100467278:  08 cd 40 f9   ldr	x8, [x8, #0x198] ; data_100a99198 (__DATA.__data)
0x10046727c:  1f 05 00 b1   cmn	x8, #0x1
0x100467280:  a1 50 00 54   b.ne	loc_100467c94 ; ⤵ 0xa14
0x100467284:  88 31 00 d0   adrp	x8, 0x100a99000
0x100467288:  00 c9 40 f9   ldr	x0, [x8, #0x190] ; data_100a99190 (__DATA.__data)
0x10046728c:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100467290:  0c 0b 00 94   bl	0x100469ec0
0x100467294:  fa 03 00 aa   mov	x26, x0
0x100467298:  bb 02 40 f9   ldr	x27, [x21]
0x10046729c:  e0 03 1b aa   mov	x0, x27
0x1004672a0:  01 00 80 52   mov	w1, #0
0x1004672a4:  e3 a0 0e 94   bl	j__os_log_type_enabled
0x1004672a8:  80 05 00 34   cbz	w0, loc_100467358 ; ⤵ 0xb0
0x1004672ac:  e8 c3 04 91   add	x8, sp, #0x130
0x1004672b0:  e0 03 1a aa   mov	x0, x26
0x1004672b4:  bc 75 0a 94   bl	0x1007049a4
0x1004672b8:  f5 1f c5 39   ldrsb	w21, [sp, #0x147]
0x1004672bc:  f4 9b 40 f9   ldr	x20, [sp, #0x130]
0x1004672c0:  b3 03 04 d1   sub	x19, fp, #0x100
0x1004672c4:  a8 03 04 d1   sub	x8, fp, #0x100
0x1004672c8:  e0 03 19 aa   mov	x0, x25
0x1004672cc:  b6 75 0a 94   bl	0x1007049a4
0x1004672d0:  bf 02 00 71   cmp	w21, #0
0x1004672d4:  e8 c3 04 91   add	x8, sp, #0x130
0x1004672d8:  88 b2 88 9a   csel	x8, x20, x8, lt
0x1004672dc:  a9 73 d1 38   ldursb	w9, [fp, #-0xe9]
0x1004672e0:  aa 03 50 f8   ldur	x10, [fp, #-0x100]
0x1004672e4:  3f 01 00 71   cmp	w9, #0
0x1004672e8:  49 21 00 d0   adrp	x9, 0x100891000
0x1004672ec:  20 5d 44 fd   ldr	d0, [x9, #0x8b8]
0x1004672f0:  49 b1 93 9a   csel	x9, x10, x19, lt
0x1004672f4:  e0 13 01 bd   str	s0, [sp, #0x110]
0x1004672f8:  ea 43 04 91   add	x10, sp, #0x110
0x1004672fc:  48 41 00 f8   stur	x8, [x10, #0x4]
0x100467300:  48 04 81 52   mov	w8, #0x822
0x100467304:  e8 3b 02 79   strh	w8, [sp, #0x11c]
0x100467308:  49 e1 00 f8   stur	x9, [x10, #0xe]
0x10046730c:  c0 dc ff b0   adrp	x0, 0x100000000
0x100467310:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100467314:  e3 28 00 90   adrp	x3, 0x100983000
0x100467318:  63 bc 0d 91   add	x3, x3, #0x36f ; "Connecting address %{public}s, temp address %{public}s"
0x10046731c:  e4 43 04 91   add	x4, sp, #0x110
0x100467320:  e1 03 1b aa   mov	x1, x27
0x100467324:  02 00 80 52   mov	w2, #0
0x100467328:  c5 02 80 52   mov	w5, #0x16
0x10046732c:  09 9c 0e 94   bl	j___os_log_impl
0x100467330:  a8 73 d1 38   ldursb	w8, [fp, #-0xe9]
0x100467334:  68 00 f8 36   tbz	w8, #0x1f, loc_100467340 ; ⤵ 0xc
0x100467338:  a0 03 50 f8   ldur	x0, [fp, #-0x100]
0x10046733c:  85 9b 0e 94   bl	j___ZdlPv
0x100467340:  ; loc_100467340
0x100467340:  e8 1f c5 39   ldrsb	w8, [sp, #0x147]
0x100467344:  55 33 00 d0   adrp	x21, 0x100ad1000
0x100467348:  b5 e2 32 91   add	x21, x21, #0xcb8
0x10046734c:  68 00 f8 36   tbz	w8, #0x1f, loc_100467358 ; ⤵ 0xc
0x100467350:  e0 9b 40 f9   ldr	x0, [sp, #0x130]
0x100467354:  7f 9b 0e 94   bl	j___ZdlPv
0x100467358:  ; loc_100467358
0x100467358:  bb 02 40 f9   ldr	x27, [x21]
0x10046735c:  da 16 00 b4   cbz	x26, loc_100467634 ; ⤵ 0x2d8
0x100467360:  b9 16 00 b4   cbz	x25, loc_100467634 ; ⤵ 0x2d4
0x100467364:  3f 03 1a eb   cmp	x25, x26
0x100467368:  60 16 00 54   b.eq	loc_100467634 ; ⤵ 0x2cc
0x10046736c:  e0 03 1b aa   mov	x0, x27
0x100467370:  01 00 80 52   mov	w1, #0
0x100467374:  af a0 0e 94   bl	j__os_log_type_enabled
0x100467378:  60 01 00 34   cbz	w0, loc_1004673a4 ; ⤵ 0x2c
0x10046737c:  ff 63 02 79   strh	wzr, [sp, #0x130]
0x100467380:  c0 dc ff b0   adrp	x0, 0x100000000
0x100467384:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100467388:  e3 28 00 90   adrp	x3, 0x100983000
0x10046738c:  63 a0 0f 91   add	x3, x3, #0x3e8 ; "Update connecting address to temp resolved address"
0x100467390:  e4 c3 04 91   add	x4, sp, #0x130
0x100467394:  e1 03 1b aa   mov	x1, x27
0x100467398:  02 00 80 52   mov	w2, #0
0x10046739c:  45 00 80 52   mov	w5, #0x2
0x1004673a0:  ec 9b 0e 94   bl	j___os_log_impl
0x1004673a4:  ; loc_1004673a4
0x1004673a4:  e8 c3 04 91   add	x8, sp, #0x130
0x1004673a8:  08 21 00 91   add	x8, x8, #0x8
0x1004673ac:  ff ff 13 a9   stp	xzr, xzr, [sp, #0x138]
0x1004673b0:  e8 9b 00 f9   str	x8, [sp, #0x130]
0x1004673b4:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x1004673b8:  a0 03 04 d1   sub	x0, fp, #0x100
0x1004673bc:  b6 39 f9 97   bl	0x1002b5a94
0x1004673c0:  e0 c3 04 91   add	x0, sp, #0x130
0x1004673c4:  a1 03 04 d1   sub	x1, fp, #0x100
0x1004673c8:  a2 03 04 d1   sub	x2, fp, #0x100
0x1004673cc:  17 3e 00 94   bl	0x100476c28
0x1004673d0:  88 31 00 d0   adrp	x8, 0x100a99000
0x1004673d4:  08 cd 40 f9   ldr	x8, [x8, #0x198] ; data_100a99198 (__DATA.__data)
0x1004673d8:  1f 05 00 b1   cmn	x8, #0x1
0x1004673dc:  c1 46 00 54   b.ne	loc_100467cb4 ; ⤵ 0x8d8
0x1004673e0:  88 31 00 d0   adrp	x8, 0x100a99000
0x1004673e4:  14 c9 40 f9   ldr	x20, [x8, #0x190] ; data_100a99190 (__DATA.__data)
0x1004673e8:  e0 43 01 91   add	x0, sp, #0x50
0x1004673ec:  e1 c3 04 91   add	x1, sp, #0x130
0x1004673f0:  73 3e 00 94   bl	0x100476dbc
0x1004673f4:  e1 43 01 91   add	x1, sp, #0x50
0x1004673f8:  e0 03 14 aa   mov	x0, x20
0x1004673fc:  6b a4 09 94   bl	0x1006d05a8
0x100467400:  e1 2f 40 f9   ldr	x1, [sp, #0x58]
0x100467404:  e0 43 01 91   add	x0, sp, #0x50
0x100467408:  4a fc ef 97   bl	0x100066530
0x10046740c:  e1 9f 40 f9   ldr	x1, [sp, #0x138]
0x100467410:  e0 c3 04 91   add	x0, sp, #0x130
0x100467414:  47 fc ef 97   bl	0x100066530
0x100467418:  94 00 00 14   b	loc_100467668 ; ⤵ 0x250
0x10046741c:  ; loc_10046741c
0x10046741c:  48 33 00 d0   adrp	x8, 0x100ad1000
0x100467420:  08 e1 32 91   add	x8, x8, #0xcb8
0x100467424:  14 01 40 f9   ldr	x20, [x8]
0x100467428:  e0 03 14 aa   mov	x0, x20
0x10046742c:  01 02 80 52   mov	w1, #0x10
0x100467430:  80 a0 0e 94   bl	j__os_log_type_enabled
0x100467434:  60 2f 00 34   cbz	w0, loc_100467a20 ; ⤵ 0x5ec
0x100467438:  e0 03 14 aa   mov	x0, x20
0x10046743c:  f7 c5 0d 94   bl	0x1007d8c18
0x100467440:  78 01 00 14   b	loc_100467a20 ; ⤵ 0x5e0
0x100467444:  ; loc_100467444
0x100467444:  99 c3 ff 34   cbz	w25, loc_100466cb4 ; ⤴ -0x790
0x100467448:  3f 23 00 71   cmp	w25, #0x8
0x10046744c:  61 06 00 54   b.ne	loc_100467518 ; ⤵ 0xcc
0x100467450:  88 1b 44 f9   ldr	x8, [x28, #0x830]
0x100467454:  1f 05 00 b1   cmn	x8, #0x1
0x100467458:  a1 42 00 54   b.ne	loc_100467cac ; ⤵ 0x854
0x10046745c:  60 17 44 f9   ldr	x0, [x27, #0x828]
0x100467460:  e1 87 40 f9   ldr	x1, [sp, #0x108]
0x100467464:  5c 3a 02 94   bl	0x1004f5dd4
0x100467468:  80 05 00 36   tbz	w0, #0, loc_100467518 ; ⤵ 0xb0
0x10046746c:  b5 00 00 14   b	loc_100467740 ; ⤵ 0x2d4
0x100467470:  ; loc_100467470
0x100467470:  e0 c3 04 91   add	x0, sp, #0x130
0x100467474:  2f fc ef 97   bl	0x100066530
0x100467478:  ba 02 40 f9   ldr	x26, [x21]
0x10046747c:  e0 03 1a aa   mov	x0, x26
0x100467480:  01 00 80 52   mov	w1, #0
0x100467484:  6b a0 0e 94   bl	j__os_log_type_enabled
0x100467488:  a0 e0 ff 34   cbz	w0, loc_10046709c ; ⤴ -0x3ec
0x10046748c:  f3 87 40 f9   ldr	x19, [sp, #0x108]
0x100467490:  f4 c3 04 91   add	x20, sp, #0x130
0x100467494:  e8 c3 04 91   add	x8, sp, #0x130
0x100467498:  e0 03 19 aa   mov	x0, x25
0x10046749c:  42 75 0a 94   bl	0x1007049a4
0x1004674a0:  e8 1f c5 39   ldrsb	w8, [sp, #0x147]
0x1004674a4:  e9 9b 40 f9   ldr	x9, [sp, #0x130]
0x1004674a8:  1f 01 00 71   cmp	w8, #0
0x1004674ac:  28 b1 94 9a   csel	x8, x9, x20, lt
0x1004674b0:  49 21 00 f0   adrp	x9, 0x100892000
0x1004674b4:  20 59 43 fd   ldr	d0, [x9, #0x6b0]
0x1004674b8:  a0 03 10 bc   stur	s0, [fp, #-0x100]
0x1004674bc:  ea 43 04 91   add	x10, sp, #0x110
0x1004674c0:  53 41 08 f8   stur	x19, [x10, #0x84]
0x1004674c4:  09 04 81 52   mov	w9, #0x820
0x1004674c8:  a9 c3 10 78   sturh	w9, [fp, #-0xf4]
0x1004674cc:  48 e1 08 f8   stur	x8, [x10, #0x8e]
0x1004674d0:  c0 dc ff b0   adrp	x0, 0x100000000
0x1004674d4:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1004674d8:  e3 28 00 90   adrp	x3, 0x100983000
0x1004674dc:  63 5c 0a 91   add	x3, x3, #0x297 ; "Ignoring temporary LTK for device %@ with address %s as we already have extra addresses and LTK's set up"
0x1004674e0:  a4 03 04 d1   sub	x4, fp, #0x100
0x1004674e4:  e1 03 1a aa   mov	x1, x26
0x1004674e8:  02 00 80 52   mov	w2, #0
0x1004674ec:  c5 02 80 52   mov	w5, #0x16
0x1004674f0:  98 9b 0e 94   bl	j___os_log_impl
0x1004674f4:  e8 1f c5 39   ldrsb	w8, [sp, #0x147]
0x1004674f8:  28 dd ff 36   tbz	w8, #0x1f, loc_10046709c ; ⤴ -0x45c
0x1004674fc:  e0 9b 40 f9   ldr	x0, [sp, #0x130]
0x100467500:  14 9b 0e 94   bl	j___ZdlPv
0x100467504:  e6 fe ff 17   b	loc_10046709c ; ⤴ -0x468
0x100467508:  ; loc_100467508
0x100467508:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10046750c:  00 8d 40 f9   ldr	x0, [x8, #0x118]
0x100467510:  e2 87 40 f9   ldr	x2, [sp, #0x108]
0x100467514:  5b d5 0e 94   bl	j__objc_msgSend(x0, "removeObject:")
0x100467518:  ; loc_100467518
0x100467518:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x10046751c:  b9 ca 0e 94   bl	j__objc_msgSend(x0, "isLatencyCritical")
0x100467520:  e0 02 00 34   cbz	w0, loc_10046757c ; ⤵ 0x5c
0x100467524:  b4 02 40 f9   ldr	x20, [x21]
0x100467528:  e0 03 14 aa   mov	x0, x20
0x10046752c:  01 00 80 52   mov	w1, #0
0x100467530:  40 a0 0e 94   bl	j__os_log_type_enabled
0x100467534:  00 02 00 34   cbz	w0, loc_100467574 ; ⤵ 0x40
0x100467538:  e8 87 40 f9   ldr	x8, [sp, #0x108]
0x10046753c:  69 21 00 d0   adrp	x9, 0x100895000

