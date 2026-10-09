0x1005d9ae0:  08 45 40 f9   ldr	x8, [x8, #0x88]
0x1005d9ae4:  1f 05 00 b1   cmn	x8, #0x1
0x1005d9ae8:  61 61 00 54   b.ne	loc_1005da714 ; ⤵ 0xc2c
0x1005d9aec:  08 26 00 90   adrp	x8, 0x100a99000
0x1005d9af0:  00 41 40 f9   ldr	x0, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x1005d9af4:  18 00 80 d2   mov	x24, #0
0x1005d9af8:  22 1f 00 12   and	w2, w25, #0xff
0x1005d9afc:  e1 03 13 aa   mov	x1, x19
0x1005d9b00:  1e 19 05 94   bl	0x10071ff78
0x1005d9b04:  08 26 00 90   adrp	x8, 0x100a99000
0x1005d9b08:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x1005d9b0c:  1f 05 00 b1   cmn	x8, #0x1
0x1005d9b10:  61 60 00 54   b.ne	loc_1005da71c ; ⤵ 0xc0c
0x1005d9b14:  08 26 00 90   adrp	x8, 0x100a99000
0x1005d9b18:  00 41 40 f9   ldr	x0, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x1005d9b1c:  18 00 80 d2   mov	x24, #0
0x1005d9b20:  42 1f 00 12   and	w2, w26, #0xff
0x1005d9b24:  e1 03 13 aa   mov	x1, x19
0x1005d9b28:  60 19 05 94   bl	0x1007200a8
0x1005d9b2c:  c8 27 00 90   adrp	x8, 0x100ad1000
0x1005d9b30:  08 01 32 91   add	x8, x8, #0xc80
0x1005d9b34:  18 01 40 f9   ldr	x24, [x8]
0x1005d9b38:  e0 03 18 aa   mov	x0, x24
0x1005d9b3c:  21 00 80 52   mov	w1, #0x1
0x1005d9b40:  bc d6 08 94   bl	j__os_log_type_enabled
0x1005d9b44:  a0 04 00 34   cbz	w0, loc_1005d9bd8 ; ⤵ 0x94
0x1005d9b48:  80 42 40 f9   ldr	x0, [x20, #0x80]
0x1005d9b4c:  b7 03 02 d1   sub	x23, fp, #0x80
0x1005d9b50:  a8 03 02 d1   sub	x8, fp, #0x80
0x1005d9b54:  c3 f4 fe 97   bl	0x100596e60
0x1005d9b58:  a8 73 d9 38   ldursb	w8, [fp, #-0x69]
0x1005d9b5c:  a9 03 58 f8   ldur	x9, [fp, #-0x80]
0x1005d9b60:  1f 01 00 71   cmp	w8, #0
0x1005d9b64:  28 b1 97 9a   csel	x8, x9, x23, lt
0x1005d9b68:  29 1f 00 12   and	w9, w25, #0xff
0x1005d9b6c:  4a 1f 00 12   and	w10, w26, #0xff
0x1005d9b70:  cb 15 00 90   adrp	x11, 0x100891000
0x1005d9b74:  60 6d 44 fd   ldr	d0, [x11, #0x8d8]
0x1005d9b78:  a0 03 14 bc   stur	s0, [fp, #-0xc0]
0x1005d9b7c:  ab 03 03 d1   sub	x11, fp, #0xc0
0x1005d9b80:  68 41 00 f8   stur	x8, [x11, #0x4]
0x1005d9b84:  08 80 80 52   mov	w8, #0x400
0x1005d9b88:  a8 c3 14 78   sturh	w8, [fp, #-0xb4]
0x1005d9b8c:  69 e1 00 b8   stur	w9, [x11, #0xe]
0x1005d9b90:  a8 23 15 78   sturh	w8, [fp, #-0xae]
0x1005d9b94:  aa 43 15 b8   stur	w10, [fp, #-0xac]
0x1005d9b98:  08 08 81 52   mov	w8, #0x840
0x1005d9b9c:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x1005d9ba0:  73 a1 01 f8   stur	x19, [x11, #0x1a]
0x1005d9ba4:  20 d1 ff f0   adrp	x0, 0x100000000
0x1005d9ba8:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005d9bac:  c3 1e 00 d0   adrp	x3, 0x1009b3000
0x1005d9bb0:  63 c0 3c 91   add	x3, x3, #0xf30 ; "Session \"%s\" setting up connection scan level of %d (screenOff %d) for device %@"
0x1005d9bb4:  a4 03 03 d1   sub	x4, fp, #0xc0
0x1005d9bb8:  e1 03 18 aa   mov	x1, x24
0x1005d9bbc:  22 00 80 52   mov	w2, #0x1
0x1005d9bc0:  45 04 80 52   mov	w5, #0x22
0x1005d9bc4:  e3 d1 08 94   bl	j___os_log_impl
0x1005d9bc8:  a8 73 d9 38   ldursb	w8, [fp, #-0x69]
0x1005d9bcc:  68 00 f8 36   tbz	w8, #0x1f, loc_1005d9bd8 ; ⤵ 0xc
0x1005d9bd0:  a0 03 58 f8   ldur	x0, [fp, #-0x80]
0x1005d9bd4:  5f d1 08 94   bl	j___ZdlPv
0x1005d9bd8:  ; loc_1005d9bd8
0x1005d9bd8:  e8 9b 41 f9   ldr	x8, [sp, #0x330]
0x1005d9bdc:  08 01 40 b9   ldr	w8, [x8]
0x1005d9be0:  1f 05 00 71   cmp	w8, #0x1
0x1005d9be4:  eb 07 00 54   b.lt	loc_1005d9ce0 ; ⤵ 0xfc
0x1005d9be8:  08 26 00 90   adrp	x8, 0x100a99000
0x1005d9bec:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x1005d9bf0:  1f 05 00 b1   cmn	x8, #0x1
0x1005d9bf4:  81 59 00 54   b.ne	loc_1005da724 ; ⤵ 0xb30
0x1005d9bf8:  08 26 00 90   adrp	x8, 0x100a99000
0x1005d9bfc:  00 41 40 f9   ldr	x0, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x1005d9c00:  18 00 80 d2   mov	x24, #0
0x1005d9c04:  e1 03 13 aa   mov	x1, x19
0x1005d9c08:  99 1b 05 94   bl	0x100720a6c
0x1005d9c0c:  fd 03 1d aa   mov	fp, fp
0x1005d9c10:  e4 d5 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005d9c14:  1f 00 00 f1   cmp	x0, #0
0x1005d9c18:  f7 17 9f 1a   cset	w23, eq
0x1005d9c1c:  d5 d5 08 94   bl	j__objc_release
0x1005d9c20:  d7 0a 00 34   cbz	w23, loc_1005d9d78 ; ⤵ 0x158
0x1005d9c24:  a0 83 53 f8   ldur	x0, [fp, #-0xc8]
0x1005d9c28:  a1 1a 00 f0   adrp	x1, 0x100930000
0x1005d9c2c:  21 a0 07 91   add	x1, x1, #0x1e8 ; "kCBConnectOptionsTemporaryLTK"
0x1005d9c30:  ff e1 f3 97   bl	0x1002d242c
0x1005d9c34:  fd 03 1d aa   mov	fp, fp
0x1005d9c38:  da d5 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005d9c3c:  fa 2f 43 b9   ldr	w26, [sp, #0x32c]
0x1005d9c40:  09 26 00 90   adrp	x9, 0x100a99000
0x1005d9c44:  f8 03 00 aa   mov	x24, x0
0x1005d9c48:  08 26 00 90   adrp	x8, 0x100a99000
0x1005d9c4c:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x1005d9c50:  1f 05 00 b1   cmn	x8, #0x1
0x1005d9c54:  61 58 00 54   b.ne	loc_1005da760 ; ⤵ 0xb0c
0x1005d9c58:  20 41 40 f9   ldr	x0, [x9, #0x80]
0x1005d9c5c:  e1 03 13 aa   mov	x1, x19
0x1005d9c60:  02 00 80 52   mov	w2, #0
0x1005d9c64:  8a e3 04 94   bl	0x100712a8c
0x1005d9c68:  f9 03 00 aa   mov	x25, x0
0x1005d9c6c:  e0 03 18 aa   mov	x0, x24
0x1005d9c70:  7c 02 09 94   bl	j__objc_msgSend(x0, "length")
0x1005d9c74:  c0 07 00 b4   cbz	x0, loc_1005d9d6c ; ⤵ 0xf8
0x1005d9c78:  c8 27 00 90   adrp	x8, 0x100ad1000
0x1005d9c7c:  08 01 32 91   add	x8, x8, #0xc80
0x1005d9c80:  17 01 40 f9   ldr	x23, [x8]
0x1005d9c84:  e0 03 17 aa   mov	x0, x23
0x1005d9c88:  01 00 80 52   mov	w1, #0
0x1005d9c8c:  69 d6 08 94   bl	j__os_log_type_enabled
0x1005d9c90:  e0 01 00 34   cbz	w0, loc_1005d9ccc ; ⤵ 0x3c
0x1005d9c94:  c8 15 00 90   adrp	x8, 0x100891000
0x1005d9c98:  00 49 46 fd   ldr	d0, [x8, #0xc90]
0x1005d9c9c:  a0 03 14 bc   stur	s0, [fp, #-0xc0]
0x1005d9ca0:  a8 03 03 d1   sub	x8, fp, #0xc0
0x1005d9ca4:  13 41 00 f8   stur	x19, [x8, #0x4]
0x1005d9ca8:  20 d1 ff f0   adrp	x0, 0x100000000
0x1005d9cac:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005d9cb0:  c3 1e 00 d0   adrp	x3, 0x1009b3000
0x1005d9cb4:  63 04 3e 91   add	x3, x3, #0xf81 ; "preparing a temporary LTK for device %@"
0x1005d9cb8:  a4 03 03 d1   sub	x4, fp, #0xc0
0x1005d9cbc:  e1 03 17 aa   mov	x1, x23
0x1005d9cc0:  02 00 80 52   mov	w2, #0
0x1005d9cc4:  85 01 80 52   mov	w5, #0xc
0x1005d9cc8:  a2 d1 08 94   bl	j___os_log_impl
0x1005d9ccc:  ; loc_1005d9ccc
0x1005d9ccc:  b9 03 00 b4   cbz	x25, loc_1005d9d40 ; ⤵ 0x74
0x1005d9cd0:  e0 03 16 aa   mov	x0, x22
0x1005d9cd4:  e2 03 18 aa   mov	x2, x24
0x1005d9cd8:  ca 1e 09 94   bl	j__objc_msgSend(x0, "setTemporaryLTK:")
0x1005d9cdc:  24 00 00 14   b	loc_1005d9d6c ; ⤵ 0x90
0x1005d9ce0:  ; loc_1005d9ce0
0x1005d9ce0:  18 00 80 d2   mov	x24, #0
0x1005d9ce4:  11 02 00 14   b	loc_1005da528 ; ⤵ 0x844
0x1005d9ce8:  88 32 40 f9   ldr	x8, [x20, #0x60]
0x1005d9cec:  89 1a 40 f9   ldr	x9, [x20, #0x30]
0x1005d9cf0:  ea 15 00 90   adrp	x10, 0x100895000
0x1005d9cf4:  40 3d 43 fd   ldr	d0, [x10, #0x678]
0x1005d9cf8:  a0 03 14 bc   stur	s0, [fp, #-0xc0]
0x1005d9cfc:  aa 03 03 d1   sub	x10, fp, #0xc0
0x1005d9d00:  48 41 00 f8   stur	x8, [x10, #0x4]
0x1005d9d04:  08 08 81 52   mov	w8, #0x840
0x1005d9d08:  a8 c3 14 78   sturh	w8, [fp, #-0xb4]
0x1005d9d0c:  49 e1 00 f8   stur	x9, [x10, #0xe]
0x1005d9d10:  a8 63 15 78   sturh	w8, [fp, #-0xaa]
0x1005d9d14:  b3 83 15 f8   stur	x19, [fp, #-0xa8]
0x1005d9d18:  20 d1 ff f0   adrp	x0, 0x100000000
0x1005d9d1c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005d9d20:  43 1d 00 d0   adrp	x3, 0x100983000
0x1005d9d24:  63 20 21 91   add	x3, x3, #0x848 ; "App %@ for user %@ is not allowed to access %@"
0x1005d9d28:  a4 03 03 d1   sub	x4, fp, #0xc0
0x1005d9d2c:  e1 03 16 aa   mov	x1, x22
0x1005d9d30:  02 02 80 52   mov	w2, #0x10
0x1005d9d34:  05 04 80 52   mov	w5, #0x20
0x1005d9d38:  7e d1 08 94   bl	j___os_log_error_impl
0x1005d9d3c:  33 fe ff 17   b	loc_1005d9608 ; ⤴ -0x734
0x1005d9d40:  ; loc_1005d9d40
0x1005d9d40:  c8 27 00 90   adrp	x8, 0x100ad1000
0x1005d9d44:  08 01 32 91   add	x8, x8, #0xc80
0x1005d9d48:  17 01 40 f9   ldr	x23, [x8]
0x1005d9d4c:  e0 03 17 aa   mov	x0, x23
0x1005d9d50:  01 02 80 52   mov	w1, #0x10
0x1005d9d54:  37 d6 08 94   bl	j__os_log_type_enabled
0x1005d9d58:  80 00 00 34   cbz	w0, loc_1005d9d68 ; ⤵ 0x10
0x1005d9d5c:  e0 03 13 aa   mov	x0, x19
0x1005d9d60:  e1 03 17 aa   mov	x1, x23
0x1005d9d64:  9f 5a 08 94   bl	0x1007f07e0
0x1005d9d68:  ; loc_1005d9d68
0x1005d9d68:  1a 01 80 52   mov	w26, #0x8
0x1005d9d6c:  ; loc_1005d9d6c
0x1005d9d6c:  fa 2f 03 b9   str	w26, [sp, #0x32c]
0x1005d9d70:  e0 03 18 aa   mov	x0, x24
0x1005d9d74:  7f d5 08 94   bl	j__objc_release
0x1005d9d78:  ; loc_1005d9d78
0x1005d9d78:  e8 1b 42 f9   ldr	x8, [sp, #0x430]
0x1005d9d7c:  a8 05 00 b4   cbz	x8, loc_1005d9e30 ; ⤵ 0xb4
0x1005d9d80:  c8 27 00 90   adrp	x8, 0x100ad1000
0x1005d9d84:  08 01 32 91   add	x8, x8, #0xc80
0x1005d9d88:  18 01 40 f9   ldr	x24, [x8]
0x1005d9d8c:  e0 03 18 aa   mov	x0, x24
0x1005d9d90:  01 00 80 52   mov	w1, #0
0x1005d9d94:  27 d6 08 94   bl	j__os_log_type_enabled
0x1005d9d98:  40 04 00 34   cbz	w0, loc_1005d9e20 ; ⤵ 0x88
0x1005d9d9c:  80 42 40 f9   ldr	x0, [x20, #0x80]
0x1005d9da0:  b7 03 03 d1   sub	x23, fp, #0xc0
0x1005d9da4:  a8 03 03 d1   sub	x8, fp, #0xc0
0x1005d9da8:  2e f4 fe 97   bl	0x100596e60
0x1005d9dac:  a8 73 d5 38   ldursb	w8, [fp, #-0xa9]
0x1005d9db0:  a9 03 54 f8   ldur	x9, [fp, #-0xc0]
0x1005d9db4:  1f 01 00 71   cmp	w8, #0
0x1005d9db8:  28 b1 97 9a   csel	x8, x9, x23, lt
0x1005d9dbc:  c9 15 00 b0   adrp	x9, 0x100892000
0x1005d9dc0:  20 19 41 fd   ldr	d0, [x9, #0x230]
0x1005d9dc4:  a0 03 18 bc   stur	s0, [fp, #-0x80]
0x1005d9dc8:  a9 03 03 d1   sub	x9, fp, #0xc0
0x1005d9dcc:  28 41 04 f8   stur	x8, [x9, #0x44]
0x1005d9dd0:  08 08 81 52   mov	w8, #0x840
0x1005d9dd4:  a8 c3 18 78   sturh	w8, [fp, #-0x74]
0x1005d9dd8:  33 e1 04 f8   stur	x19, [x9, #0x4e]
0x1005d9ddc:  20 d1 ff f0   adrp	x0, 0x100000000
0x1005d9de0:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005d9de4:  c3 1e 00 d0   adrp	x3, 0x1009b3000
0x1005d9de8:  63 14 3f 91   add	x3, x3, #0xfc5 ; "Session \"%s\" is asking to hide %@ from BT Settings menu"
0x1005d9dec:  a4 03 02 d1   sub	x4, fp, #0x80
0x1005d9df0:  e1 03 18 aa   mov	x1, x24
0x1005d9df4:  02 00 80 52   mov	w2, #0
0x1005d9df8:  c5 02 80 52   mov	w5, #0x16
0x1005d9dfc:  55 d1 08 94   bl	j___os_log_impl
0x1005d9e00:  a8 73 d5 38   ldursb	w8, [fp, #-0xa9]
0x1005d9e04:  68 00 f8 36   tbz	w8, #0x1f, loc_1005d9e10 ; ⤵ 0xc
0x1005d9e08:  a0 03 54 f8   ldur	x0, [fp, #-0xc0]
0x1005d9e0c:  d1 d0 08 94   bl	j___ZdlPv
0x1005d9e10:  ; loc_1005d9e10
0x1005d9e10:  e8 1b 42 f9   ldr	x8, [sp, #0x430]
0x1005d9e14:  1f 01 00 f1   cmp	x8, #0
0x1005d9e18:  e2 07 9f 1a   cset	w2, ne
0x1005d9e1c:  02 00 00 14   b	loc_1005d9e24 ; ⤵ 0x8
0x1005d9e20:  ; loc_1005d9e20
0x1005d9e20:  22 00 80 52   mov	w2, #0x1
0x1005d9e24:  ; loc_1005d9e24
0x1005d9e24:  18 00 80 d2   mov	x24, #0
0x1005d9e28:  e0 03 16 aa   mov	x0, x22
0x1005d9e2c:  ad 17 09 94   bl	j__objc_msgSend(x0, "setHideFromBTSettings:")
0x1005d9e30:  ; loc_1005d9e30
0x1005d9e30:  a0 83 53 f8   ldur	x0, [fp, #-0xc8]
0x1005d9e34:  a1 1a 00 f0   adrp	x1, 0x100930000
0x1005d9e38:  21 18 08 91   add	x1, x1, #0x206 ; "kCBConnectOptionClientBundleID"
0x1005d9e3c:  a0 e1 f3 97   bl	0x1002d24bc
0x1005d9e40:  fd 03 1d aa   mov	fp, fp
0x1005d9e44:  57 d5 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005d9e48:  f9 03 00 aa   mov	x25, x0
0x1005d9e4c:  a0 83 53 f8   ldur	x0, [fp, #-0xc8]
0x1005d9e50:  a1 1a 00 f0   adrp	x1, 0x100930000
0x1005d9e54:  21 94 08 91   add	x1, x1, #0x225 ; "kCBConnectOptionClientProcessID"
0x1005d9e58:  99 e1 f3 97   bl	0x1002d24bc
0x1005d9e5c:  fd 03 1d aa   mov	fp, fp
0x1005d9e60:  50 d5 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005d9e64:  fa 03 00 aa   mov	x26, x0
0x1005d9e68:  c8 27 00 90   adrp	x8, 0x100ad1000
0x1005d9e6c:  08 01 32 91   add	x8, x8, #0xc80
0x1005d9e70:  18 01 40 f9   ldr	x24, [x8]
0x1005d9e74:  e0 03 18 aa   mov	x0, x24
0x1005d9e78:  01 00 80 52   mov	w1, #0
0x1005d9e7c:  ed d5 08 94   bl	j__os_log_type_enabled
0x1005d9e80:  80 04 00 34   cbz	w0, loc_1005d9f10 ; ⤵ 0x90
0x1005d9e84:  e8 03 42 f9   ldr	x8, [sp, #0x400]
0x1005d9e88:  09 25 00 f0   adrp	x9, 0x100a7c000
0x1005d9e8c:  29 a1 17 91   add	x9, x9, #0x5e8 ; "NoClientBundleID"
0x1005d9e90:  ea ff 41 f9   ldr	x10, [sp, #0x3f8]
0x1005d9e94:  3f 03 00 f1   cmp	x25, #0
0x1005d9e98:  29 01 99 9a   csel	x9, x9, x25, eq
0x1005d9e9c:  eb ef 41 f9   ldr	x11, [sp, #0x3d8]
0x1005d9ea0:  0c 25 00 f0   adrp	x12, 0x100a7c000
0x1005d9ea4:  8c 21 18 91   add	x12, x12, #0x608 ; "NoClientProcessID"
0x1005d9ea8:  cd 15 00 b0   adrp	x13, 0x100892000
0x1005d9eac:  a0 49 45 fd   ldr	d0, [x13, #0xa90]
0x1005d9eb0:  5f 03 00 f1   cmp	x26, #0
0x1005d9eb4:  8c 01 9a 9a   csel	x12, x12, x26, eq
0x1005d9eb8:  a0 03 14 bc   stur	s0, [fp, #-0xc0]
0x1005d9ebc:  ad 03 03 d1   sub	x13, fp, #0xc0
0x1005d9ec0:  a9 41 00 f8   stur	x9, [x13, #0x4]
0x1005d9ec4:  09 08 81 52   mov	w9, #0x840
0x1005d9ec8:  a9 c3 14 78   sturh	w9, [fp, #-0xb4]
0x1005d9ecc:  ac e1 00 f8   stur	x12, [x13, #0xe]
0x1005d9ed0:  09 00 81 52   mov	w9, #0x800
0x1005d9ed4:  a9 63 15 78   sturh	w9, [fp, #-0xaa]
0x1005d9ed8:  a8 83 15 f8   stur	x8, [fp, #-0xa8]
0x1005d9edc:  a9 03 16 78   sturh	w9, [fp, #-0xa0]
0x1005d9ee0:  aa 21 02 f8   stur	x10, [x13, #0x22]
0x1005d9ee4:  a9 a3 16 78   sturh	w9, [fp, #-0x96]
0x1005d9ee8:  ab c1 02 f8   stur	x11, [x13, #0x2c]
0x1005d9eec:  20 d1 ff f0   adrp	x0, 0x100000000
0x1005d9ef0:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005d9ef4:  c3 1e 00 d0   adrp	x3, 0x1009b3000
0x1005d9ef8:  63 f4 3f 91   add	x3, x3, #0xffd ; "clientBundleID %@ clientProcessID %@ connectionUseCase %lld maxAllowedConnectionDelay %lld isLatencyCritical %lld"
0x1005d9efc:  a4 03 03 d1   sub	x4, fp, #0xc0
0x1005d9f00:  e1 03 18 aa   mov	x1, x24
0x1005d9f04:  02 00 80 52   mov	w2, #0
0x1005d9f08:  85 06 80 52   mov	w5, #0x34
0x1005d9f0c:  11 d1 08 94   bl	j___os_log_impl
0x1005d9f10:  ; loc_1005d9f10
0x1005d9f10:  18 00 80 d2   mov	x24, #0
0x1005d9f14:  e0 03 16 aa   mov	x0, x22
0x1005d9f18:  e2 03 19 aa   mov	x2, x25
0x1005d9f1c:  b1 12 09 94   bl	j__objc_msgSend(x0, "setClientBundleID:")
0x1005d9f20:  18 00 80 d2   mov	x24, #0
0x1005d9f24:  e0 03 16 aa   mov	x0, x22
0x1005d9f28:  e2 03 1a aa   mov	x2, x26
0x1005d9f2c:  bd 12 09 94   bl	j__objc_msgSend(x0, "setClientProcessID:")
0x1005d9f30:  e2 03 42 f9   ldr	x2, [sp, #0x400]
0x1005d9f34:  18 00 80 d2   mov	x24, #0
0x1005d9f38:  e0 03 16 aa   mov	x0, x22
0x1005d9f3c:  89 13 09 94   bl	j__objc_msgSend(x0, "setConnectionUseCase:")
0x1005d9f40:  e2 ff 41 f9   ldr	x2, [sp, #0x3f8]
0x1005d9f44:  18 00 80 d2   mov	x24, #0
0x1005d9f48:  e0 03 16 aa   mov	x0, x22
0x1005d9f4c:  0d 19 09 94   bl	j__objc_msgSend(x0, "setMaxAllowedConnectionDelay:")
0x1005d9f50:  e8 ef 41 f9   ldr	x8, [sp, #0x3d8]
0x1005d9f54:  1f 05 00 f1   cmp	x8, #0x1
0x1005d9f58:  a1 06 00 54   b.ne	loc_1005da02c ; ⤵ 0xd4
0x1005d9f5c:  88 52 41 39   ldrb	w8, [x20, #0x54]
0x1005d9f60:  1f 05 00 71   cmp	w8, #0x1
0x1005d9f64:  41 06 00 54   b.ne	loc_1005da02c ; ⤵ 0xc8
0x1005d9f68:  18 00 80 d2   mov	x24, #0
0x1005d9f6c:  54 f7 f6 97   bl	0x100397cbc
0x1005d9f70:  10 00 40 f9   ldr	x16, [x0]
0x1005d9f74:  f1 03 00 aa   mov	x17, x0
0x1005d9f78:  d1 66 fd f2   movk	x17, #0xeb36, lsl #0x30
0x1005d9f7c:  30 1a c1 da   autda	x16, x17
0x1005d9f80:  11 36 80 d2   mov	x17, #0x1b0
0x1005d9f84:  10 02 11 8b   add	x16, x16, x17
0x1005d9f88:  08 02 40 f9   ldr	x8, [x16]
0x1005d9f8c:  18 00 80 d2   mov	x24, #0
0x1005d9f90:  d0 4d f9 f2   movk	x16, #0xca6e, lsl #0x30
0x1005d9f94:  10 09 3f d7   blraa	x8, x16
0x1005d9f98:  a0 04 00 34   cbz	w0, loc_1005da02c ; ⤵ 0x94
0x1005d9f9c:  c8 27 00 90   adrp	x8, 0x100ad1000
0x1005d9fa0:  08 01 32 91   add	x8, x8, #0xc80
0x1005d9fa4:  17 01 40 f9   ldr	x23, [x8]
0x1005d9fa8:  e0 03 17 aa   mov	x0, x23
0x1005d9fac:  01 00 80 52   mov	w1, #0
0x1005d9fb0:  a0 d5 08 94   bl	j__os_log_type_enabled
0x1005d9fb4:  40 03 00 34   cbz	w0, loc_1005da01c ; ⤵ 0x68
0x1005d9fb8:  08 25 00 f0   adrp	x8, 0x100a7c000
0x1005d9fbc:  08 a1 17 91   add	x8, x8, #0x5e8 ; "NoClientBundleID"
0x1005d9fc0:  3f 03 00 f1   cmp	x25, #0
0x1005d9fc4:  08 01 99 9a   csel	x8, x8, x25, eq
0x1005d9fc8:  c9 15 00 b0   adrp	x9, 0x100892000
0x1005d9fcc:  20 59 43 fd   ldr	d0, [x9, #0x6b0]
0x1005d9fd0:  09 25 00 f0   adrp	x9, 0x100a7c000
0x1005d9fd4:  29 21 18 91   add	x9, x9, #0x608 ; "NoClientProcessID"
0x1005d9fd8:  5f 03 00 f1   cmp	x26, #0
0x1005d9fdc:  29 01 9a 9a   csel	x9, x9, x26, eq
0x1005d9fe0:  a0 03 14 bc   stur	s0, [fp, #-0xc0]
0x1005d9fe4:  aa 03 03 d1   sub	x10, fp, #0xc0
0x1005d9fe8:  48 41 00 f8   stur	x8, [x10, #0x4]
0x1005d9fec:  08 08 81 52   mov	w8, #0x840
0x1005d9ff0:  a8 c3 14 78   sturh	w8, [fp, #-0xb4]
0x1005d9ff4:  49 e1 00 f8   stur	x9, [x10, #0xe]
0x1005d9ff8:  20 d1 ff f0   adrp	x0, 0x100000000
0x1005d9ffc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005da000:  c3 1e 00 d0   adrp	x3, 0x1009b4000
0x1005da004:  63 bc 01 91   add	x3, x3, #0x6f ; "clientBundleID %@ clientProcessID %@ fLatencyCriticalRequest received"
0x1005da008:  a4 03 03 d1   sub	x4, fp, #0xc0
0x1005da00c:  e1 03 17 aa   mov	x1, x23
0x1005da010:  02 00 80 52   mov	w2, #0
0x1005da014:  c5 02 80 52   mov	w5, #0x16
0x1005da018:  ce d0 08 94   bl	j___os_log_impl
0x1005da01c:  ; loc_1005da01c
0x1005da01c:  18 00 80 d2   mov	x24, #0
0x1005da020:  e0 03 16 aa   mov	x0, x22
0x1005da024:  22 00 80 52   mov	w2, #0x1
0x1005da028:  be 17 09 94   bl	j__objc_msgSend(x0, "setIsLatencyCritical:")
0x1005da02c:  ; loc_1005da02c
0x1005da02c:  a0 83 53 f8   ldur	x0, [fp, #-0xc8]
0x1005da030:  18 00 80 d2   mov	x24, #0
0x1005da034:  a1 1a 00 b0   adrp	x1, 0x10092f000
0x1005da038:  21 9c 2e 91   add	x1, x1, #0xba7 ; "kCBOptionUseCaseList"
0x1005da03c:  5c e3 f3 97   bl	0x1002d2dac
0x1005da040:  fd 03 1d aa   mov	fp, fp
0x1005da044:  d7 d4 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005da048:  fb 03 00 aa   mov	x27, x0
0x1005da04c:  00 04 00 b4   cbz	x0, loc_1005da0cc ; ⤵ 0x80
0x1005da050:  f8 03 1b aa   mov	x24, x27
0x1005da054:  e0 03 1b aa   mov	x0, x27
0x1005da058:  42 f1 08 94   bl	j__objc_msgSend(x0, "count")
0x1005da05c:  c0 03 00 b4   cbz	x0, loc_1005da0d4 ; ⤵ 0x78
0x1005da060:  c8 22 00 90   adrp	x8, 0x100a32000
0x1005da064:  00 21 44 f9   ldr	x0, [x8, #0x840] ; __got._OBJC_CLASS_$_NSSet
0x1005da068:  f8 03 1b aa   mov	x24, x27
0x1005da06c:  e2 03 1b aa   mov	x2, x27
0x1005da070:  f4 1e 09 94   bl	j__objc_msgSend(x0, "setWithArray:")
0x1005da074:  fd 03 1d aa   mov	fp, fp
0x1005da078:  ca d4 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005da07c:  f7 03 00 aa   mov	x23, x0
0x1005da080:  20 ea 08 94   bl	j__objc_msgSend(x0, "allObjects")
0x1005da084:  fd 03 1d aa   mov	fp, fp
0x1005da088:  c6 d4 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005da08c:  f8 03 00 aa   mov	x24, x0
0x1005da090:  e0 03 1b aa   mov	x0, x27
0x1005da094:  b7 d4 08 94   bl	j__objc_release
0x1005da098:  e0 03 17 aa   mov	x0, x23
0x1005da09c:  b5 d4 08 94   bl	j__objc_release
0x1005da0a0:  c8 25 00 90   adrp	x8, 0x100a92000
0x1005da0a4:  02 59 45 f9   ldr	x2, [x8, #0xab0] ; sel_compare:
0x1005da0a8:  e0 03 18 aa   mov	x0, x24
0x1005da0ac:  5d 20 09 94   bl	j__objc_msgSend(x0, "sortedArrayUsingSelector:")
0x1005da0b0:  fd 03 1d aa   mov	fp, fp
0x1005da0b4:  bb d4 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005da0b8:  f7 03 00 aa   mov	x23, x0
0x1005da0bc:  e0 03 18 aa   mov	x0, x24
0x1005da0c0:  ac d4 08 94   bl	j__objc_release
0x1005da0c4:  f8 03 17 aa   mov	x24, x23
0x1005da0c8:  04 00 00 14   b	loc_1005da0d8 ; ⤵ 0x10
0x1005da0cc:  ; loc_1005da0cc
0x1005da0cc:  18 00 80 d2   mov	x24, #0
0x1005da0d0:  02 00 00 14   b	loc_1005da0d8 ; ⤵ 0x8
0x1005da0d4:  ; loc_1005da0d4
0x1005da0d4:  f8 03 1b aa   mov	x24, x27
0x1005da0d8:  ; loc_1005da0d8
0x1005da0d8:  e0 03 16 aa   mov	x0, x22
0x1005da0dc:  e2 03 18 aa   mov	x2, x24
0x1005da0e0:  80 1e 09 94   bl	j__objc_msgSend(x0, "setUseCaseList:")
0x1005da0e4:  98 0a 00 b4   cbz	x24, loc_1005da234 ; ⤵ 0x150
0x1005da0e8:  e0 03 18 aa   mov	x0, x24
0x1005da0ec:  1d f1 08 94   bl	j__objc_msgSend(x0, "count")
0x1005da0f0:  20 0a 00 b4   cbz	x0, loc_1005da234 ; ⤵ 0x144
0x1005da0f4:  e0 03 18 aa   mov	x0, x24
0x1005da0f8:  9d 69 00 94   bl	0x1005f476c
0x1005da0fc:  fd 03 1d aa   mov	fp, fp
0x1005da100:  a8 d4 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005da104:  fb 03 00 aa   mov	x27, x0
0x1005da108:  a8 27 00 f0   adrp	x8, 0x100ad1000
0x1005da10c:  08 01 32 91   add	x8, x8, #0xc80
0x1005da110:  1c 01 40 f9   ldr	x28, [x8]
0x1005da114:  e0 03 1c aa   mov	x0, x28
0x1005da118:  01 00 80 52   mov	w1, #0
0x1005da11c:  45 d5 08 94   bl	j__os_log_type_enabled
0x1005da120:  60 03 00 34   cbz	w0, loc_1005da18c ; ⤵ 0x6c
0x1005da124:  22 24 00 d0   adrp	x2, 0x100a60000
0x1005da128:  42 a0 16 91   add	x2, x2, #0x5a8 ; ","
0x1005da12c:  e0 03 1b aa   mov	x0, x27
0x1005da130:  64 ef 08 94   bl	j__objc_msgSend(x0, "componentsJoinedByString:")
0x1005da134:  fd 03 1d aa   mov	fp, fp
0x1005da138:  9a d4 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005da13c:  f7 03 00 aa   mov	x23, x0
0x1005da140:  90 d4 08 94   bl	j__objc_retain
0x1005da144:  a8 15 00 f0   adrp	x8, 0x100891000
0x1005da148:  00 49 46 fd   ldr	d0, [x8, #0xc90]
0x1005da14c:  a0 03 14 bc   stur	s0, [fp, #-0xc0]
0x1005da150:  a8 03 03 d1   sub	x8, fp, #0xc0
0x1005da154:  17 41 00 f8   stur	x23, [x8, #0x4]
0x1005da158:  20 d1 ff d0   adrp	x0, 0x100000000
0x1005da15c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005da160:  c3 1e 00 b0   adrp	x3, 0x1009b3000
0x1005da164:  63 58 30 91   add	x3, x3, #0xc16 ; "connUseCaseList: %@"
0x1005da168:  a4 03 03 d1   sub	x4, fp, #0xc0
0x1005da16c:  e1 03 1c aa   mov	x1, x28
0x1005da170:  02 00 80 52   mov	w2, #0
0x1005da174:  85 01 80 52   mov	w5, #0xc
0x1005da178:  76 d0 08 94   bl	j___os_log_impl
0x1005da17c:  e0 03 17 aa   mov	x0, x23
0x1005da180:  7c d4 08 94   bl	j__objc_release
0x1005da184:  e0 03 17 aa   mov	x0, x23
0x1005da188:  7a d4 08 94   bl	j__objc_release
0x1005da18c:  ; loc_1005da18c
0x1005da18c:  e0 03 16 aa   mov	x0, x22
0x1005da190:  54 f0 08 94   bl	j__objc_msgSend(x0, "connectionUseCase")
0x1005da194:  c0 04 00 b5   cbnz	x0, loc_1005da22c ; ⤵ 0x98
0x1005da198:  e0 03 18 aa   mov	x0, x24
0x1005da19c:  a1 f8 08 94   bl	j__objc_msgSend(x0, "firstObject")
0x1005da1a0:  fd 03 1d aa   mov	fp, fp
0x1005da1a4:  7f d4 08 94   bl	j__objc_retainAutoreleasedReturnValue
0x1005da1a8:  fc 03 00 aa   mov	x28, x0
0x1005da1ac:  c0 03 00 b4   cbz	x0, loc_1005da224 ; ⤵ 0x78
0x1005da1b0:  e0 03 1c aa   mov	x0, x28
0x1005da1b4:  0b 02 09 94   bl	j__objc_msgSend(x0, "longLongValue")
0x1005da1b8:  e2 03 00 aa   mov	x2, x0
0x1005da1bc:  e0 03 16 aa   mov	x0, x22
0x1005da1c0:  e8 12 09 94   bl	j__objc_msgSend(x0, "setConnectionUseCase:")
0x1005da1c4:  a8 27 00 f0   adrp	x8, 0x100ad1000
0x1005da1c8:  08 01 32 91   add	x8, x8, #0xc80
0x1005da1cc:  17 01 40 f9   ldr	x23, [x8]
0x1005da1d0:  e0 03 17 aa   mov	x0, x23
0x1005da1d4:  01 00 80 52   mov	w1, #0
0x1005da1d8:  16 d5 08 94   bl	j__os_log_type_enabled
0x1005da1dc:  40 02 00 34   cbz	w0, loc_1005da224 ; ⤵ 0x48
0x1005da1e0:  e0 03 1c aa   mov	x0, x28
0x1005da1e4:  ff 01 09 94   bl	j__objc_msgSend(x0, "longLongValue")

