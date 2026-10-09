
-[NIServerItemLocalizerSession findMyAccessoryManager:didFetchAccessoryInformationForDevice:ownershipType:communicationProtocol:accessoryTypeName:error:]:
0x100334bb0:  7f 23 03 d5   pacibsp
0x100334bb4:  ff 43 02 d1   sub	sp, sp, #0x90
0x100334bb8:  fc 6f 03 a9   stp	x28, x27, [sp, #0x30]
0x100334bbc:  fa 67 04 a9   stp	x26, x25, [sp, #0x40]
0x100334bc0:  f8 5f 05 a9   stp	x24, x23, [sp, #0x50]
0x100334bc4:  f6 57 06 a9   stp	x22, x21, [sp, #0x60]
0x100334bc8:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x100334bcc:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x100334bd0:  fd 03 02 91   add	fp, sp, #0x80
0x100334bd4:  f6 03 07 aa   mov	x22, x7
0x100334bd8:  f5 03 06 aa   mov	x21, x6
0x100334bdc:  f8 03 05 aa   mov	x24, x5
0x100334be0:  f9 03 04 aa   mov	x25, x4
0x100334be4:  f4 03 03 aa   mov	x20, x3
0x100334be8:  f3 03 02 aa   mov	x19, x2
0x100334bec:  f7 03 00 aa   mov	x23, x0
0x100334bf0:  08 34 00 b0   adrp	x8, 0x1009b5000
0x100334bf4:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x100334bf8:  08 01 40 f9   ldr	x8, [x8]
0x100334bfc:  e8 17 00 f9   str	x8, [sp, #0x28]
0x100334c00:  e9 f2 06 94   bl	j__objc_retain_x19
0x100334c04:  f0 f2 06 94   bl	j__objc_retain_x20
0x100334c08:  f3 f2 06 94   bl	j__objc_retain_x21
0x100334c0c:  f6 f2 06 94   bl	j__objc_retain_x22
0x100334c10:  08 37 00 90   adrp	x8, 0x100a14000
0x100334c14:  08 3d 82 b9   ldrsw	x8, [x8, #0x23c]
0x100334c18:  e8 6a 68 f8   ldr	x8, [x23, x8]
0x100334c1c:  88 04 00 b4   cbz	x8, loc_100334cac ; ⤵ 0x90
0x100334c20:  08 37 00 90   adrp	x8, 0x100a14000
0x100334c24:  08 a9 82 b9   ldrsw	x8, [x8, #0x2a8]
0x100334c28:  e8 6a 68 f8   ldr	x8, [x23, x8]
0x100334c2c:  1f 01 13 eb   cmp	x8, x19
0x100334c30:  01 05 00 54   b.ne	loc_100334cd0 ; ⤵ 0xa0
0x100334c34:  08 37 00 90   adrp	x8, 0x100a14000
0x100334c38:  08 91 82 b9   ldrsw	x8, [x8, #0x290]
0x100334c3c:  e0 6a 68 f8   ldr	x0, [x23, x8]
0x100334c40:  50 f5 06 94   bl	j__objc_msgSend(x0, "UUID")
0x100334c44:  fd 03 1d aa   mov	fp, fp
0x100334c48:  cb f2 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100334c4c:  fa 03 00 aa   mov	x26, x0
0x100334c50:  e0 03 14 aa   mov	x0, x20
0x100334c54:  e2 03 1a aa   mov	x2, x26
0x100334c58:  92 22 07 94   bl	j__objc_msgSend(x0, "isEqual:")
0x100334c5c:  fb 03 00 aa   mov	x27, x0
0x100334c60:  a5 f2 06 94   bl	j__objc_release_x26
0x100334c64:  7b 03 00 36   tbz	w27, #0, loc_100334cd0 ; ⤵ 0x6c
0x100334c68:  08 37 00 90   adrp	x8, 0x100a14000
0x100334c6c:  08 85 82 b9   ldrsw	x8, [x8, #0x284]
0x100334c70:  56 05 00 b4   cbz	x22, loc_100334d18 ; ⤵ 0xa8
0x100334c74:  ff 6a 28 b8   str	wzr, [x23, x8]
0x100334c78:  a8 37 00 b0   adrp	x8, 0x100a29000
0x100334c7c:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x100334c80:  18 01 40 f9   ldr	x24, [x8]
0x100334c84:  e0 03 18 aa   mov	x0, x24
0x100334c88:  01 02 80 52   mov	w1, #0x10
0x100334c8c:  1e f3 06 94   bl	j__os_log_type_enabled
0x100334c90:  60 00 00 34   cbz	w0, loc_100334c9c ; ⤵ 0xc
0x100334c94:  e0 03 18 aa   mov	x0, x24
0x100334c98:  1b a6 06 94   bl	0x1004de504
0x100334c9c:  ; loc_100334c9c
0x100334c9c:  e0 03 17 aa   mov	x0, x23
0x100334ca0:  e2 03 16 aa   mov	x2, x22
0x100334ca4:  6f fb 06 94   bl	j__objc_msgSend(x0, "_handleError:")
0x100334ca8:  0a 00 00 14   b	loc_100334cd0 ; ⤵ 0x28
0x100334cac:  ; loc_100334cac
0x100334cac:  a8 37 00 b0   adrp	x8, 0x100a29000
0x100334cb0:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x100334cb4:  17 01 40 f9   ldr	x23, [x8]
0x100334cb8:  e0 03 17 aa   mov	x0, x23
0x100334cbc:  01 02 80 52   mov	w1, #0x10
0x100334cc0:  11 f3 06 94   bl	j__os_log_type_enabled
0x100334cc4:  60 00 00 34   cbz	w0, loc_100334cd0 ; ⤵ 0xc
0x100334cc8:  e0 03 17 aa   mov	x0, x23
0x100334ccc:  19 a6 06 94   bl	0x1004de530
0x100334cd0:  ; loc_100334cd0
0x100334cd0:  79 f2 06 94   bl	j__objc_release_x22
0x100334cd4:  74 f2 06 94   bl	j__objc_release_x21
0x100334cd8:  6f f2 06 94   bl	j__objc_release_x20
0x100334cdc:  6a f2 06 94   bl	j__objc_release_x19
0x100334ce0:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x100334ce4:  09 34 00 b0   adrp	x9, 0x1009b5000
0x100334ce8:  29 b5 45 f9   ldr	x9, [x9, #0xb68] ; __got.___stack_chk_guard
0x100334cec:  29 01 40 f9   ldr	x9, [x9]
0x100334cf0:  3f 01 08 eb   cmp	x9, x8
0x100334cf4:  a1 0a 00 54   b.ne	loc_100334e48 ; ⤵ 0x154
0x100334cf8:  fd 7b 48 a9   ldp	fp, lr, [sp, #0x80]
0x100334cfc:  f4 4f 47 a9   ldp	x20, x19, [sp, #0x70]
0x100334d00:  f6 57 46 a9   ldp	x22, x21, [sp, #0x60]
0x100334d04:  f8 5f 45 a9   ldp	x24, x23, [sp, #0x50]
0x100334d08:  fa 67 44 a9   ldp	x26, x25, [sp, #0x40]
0x100334d0c:  fc 6f 43 a9   ldp	x28, x27, [sp, #0x30]
0x100334d10:  ff 43 02 91   add	sp, sp, #0x90
0x100334d14:  ff 0f 5f d6   retab
0x100334d18:  ; loc_100334d18
0x100334d18:  49 00 80 52   mov	w9, #0x2
0x100334d1c:  e9 6a 28 b8   str	w9, [x23, x8]
0x100334d20:  a8 37 00 b0   adrp	x8, 0x100a29000
0x100334d24:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x100334d28:  1a 01 40 f9   ldr	x26, [x8]
0x100334d2c:  be f2 06 94   bl	j__objc_retain_x26
0x100334d30:  e0 03 1a aa   mov	x0, x26
0x100334d34:  01 00 80 52   mov	w1, #0
0x100334d38:  f3 f2 06 94   bl	j__os_log_type_enabled
0x100334d3c:  00 05 00 34   cbz	w0, loc_100334ddc ; ⤵ 0xa0
0x100334d40:  e0 03 15 aa   mov	x0, x21
0x100334d44:  84 f2 06 94   bl	j__objc_retainAutorelease
0x100334d48:  06 f5 06 94   bl	j__objc_msgSend(x0, "UTF8String")
0x100334d4c:  68 2c 00 90   adrp	x8, 0x1008c0000
0x100334d50:  08 4d 10 91   add	x8, x8, #0x413 ; "Unknown"
0x100334d54:  e9 2c 00 d0   adrp	x9, 0x1008d2000
0x100334d58:  29 e9 2a 91   add	x9, x9, #0xaba ; "CL"
0x100334d5c:  1f 07 00 f1   cmp	x24, #0x1
0x100334d60:  29 01 88 9a   csel	x9, x9, x8, eq
0x100334d64:  ea 2c 00 d0   adrp	x10, 0x1008d2000
0x100334d68:  4a f5 2a 91   add	x10, x10, #0xabd ; "GATT"
0x100334d6c:  1f 0b 00 f1   cmp	x24, #0x2
0x100334d70:  49 01 89 9a   csel	x9, x10, x9, eq
0x100334d74:  ea 2c 00 d0   adrp	x10, 0x1008d2000
0x100334d78:  4a ad 2a 91   add	x10, x10, #0xaab ; "Owner"
0x100334d7c:  3f 07 00 f1   cmp	x25, #0x1
0x100334d80:  48 01 88 9a   csel	x8, x10, x8, eq
0x100334d84:  aa 11 00 f0   adrp	x10, 0x10056b000
0x100334d88:  40 ad 41 fd   ldr	d0, [x10, #0x358]
0x100334d8c:  ea 2c 00 d0   adrp	x10, 0x1008d2000
0x100334d90:  4a c5 2a 91   add	x10, x10, #0xab1 ; "NonOwner"
0x100334d94:  e0 03 00 bd   str	s0, [sp]
0x100334d98:  3f 0b 00 f1   cmp	x25, #0x2
0x100334d9c:  48 01 88 9a   csel	x8, x10, x8, eq
0x100334da0:  e8 43 00 f8   stur	x8, [sp, #0x4]
0x100334da4:  08 04 81 52   mov	w8, #0x820
0x100334da8:  e8 1b 00 79   strh	w8, [sp, #0xc]
0x100334dac:  e9 e3 00 f8   stur	x9, [sp, #0xe]
0x100334db0:  e8 2f 00 79   strh	w8, [sp, #0x16]
0x100334db4:  e0 0f 00 f9   str	x0, [sp, #0x18]
0x100334db8:  60 e6 ff 90   adrp	x0, 0x100000000
0x100334dbc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100334dc0:  e3 30 00 f0   adrp	x3, 0x100953000
0x100334dc4:  63 2c 2e 91   add	x3, x3, #0xb8b ; "#ses-item-loc,[CL cb] didFetchAccessoryInformationForDevice, ownership: %s, communicationProtocol: %s, accessoryTypeName: %s"
0x100334dc8:  e4 03 00 91   mov	x4, sp
0x100334dcc:  e1 03 1a aa   mov	x1, x26
0x100334dd0:  02 00 80 52   mov	w2, #0
0x100334dd4:  05 04 80 52   mov	w5, #0x20
0x100334dd8:  ff ef 06 94   bl	j___os_log_impl
0x100334ddc:  ; loc_100334ddc
0x100334ddc:  46 f2 06 94   bl	j__objc_release_x26
0x100334de0:  08 37 00 90   adrp	x8, 0x100a14000
0x100334de4:  1a 89 82 b9   ldrsw	x26, [x8, #0x288]
0x100334de8:  f9 6a 3a f8   str	x25, [x23, x26]
0x100334dec:  08 37 00 90   adrp	x8, 0x100a14000
0x100334df0:  08 8d 82 b9   ldrsw	x8, [x8, #0x28c]
0x100334df4:  f8 6a 28 f8   str	x24, [x23, x8]
0x100334df8:  08 37 00 90   adrp	x8, 0x100a14000
0x100334dfc:  18 ed 82 b9   ldrsw	x24, [x8, #0x2ec]
0x100334e00:  75 f2 06 94   bl	j__objc_retain_x21
0x100334e04:  e8 6a 78 f8   ldr	x8, [x23, x24]
0x100334e08:  f5 6a 38 f8   str	x21, [x23, x24]
0x100334e0c:  46 f2 06 94   bl	j__objc_release_x8
0x100334e10:  08 37 00 90   adrp	x8, 0x100a14000
0x100334e14:  08 b5 82 b9   ldrsw	x8, [x8, #0x2b4]
0x100334e18:  e0 6a 68 f8   ldr	x0, [x23, x8]
0x100334e1c:  c0 00 00 b4   cbz	x0, loc_100334e34 ; ⤵ 0x18
0x100334e20:  e8 6a 7a f8   ldr	x8, [x23, x26]
0x100334e24:  1f 05 00 f1   cmp	x8, #0x1
0x100334e28:  e2 17 9f 1a   cset	w2, eq
0x100334e2c:  e3 6a 78 f8   ldr	x3, [x23, x24]
0x100334e30:  2c 45 07 94   bl	j__objc_msgSend(x0, "updateWithOwnership:accessoryTypeName:")
0x100334e34:  ; loc_100334e34
0x100334e34:  e0 03 17 aa   mov	x0, x23
0x100334e38:  da 0e 07 94   bl	j__objc_msgSend(x0, "configure")
0x100334e3c:  fd 03 1d aa   mov	fp, fp
0x100334e40:  a9 f2 06 94   bl	j__objc_unsafeClaimAutoreleasedReturnValue
0x100334e44:  a3 ff ff 17   b	loc_100334cd0 ; ⤴ -0x174
0x100334e48:  ; loc_100334e48
0x100334e48:  c7 ef 06 94   bl	j____stack_chk_fail
0x100334e4c:  01 00 00 14   b	loc_100334e50 ; ⤵ 0x4
0x100334e50:  ; loc_100334e50
0x100334e50:  f7 03 00 aa   mov	x23, x0
0x100334e54:  28 f2 06 94   bl	j__objc_release_x26
0x100334e58:  02 00 00 14   b	loc_100334e60 ; ⤵ 0x8
0x100334e5c:  f7 03 00 aa   mov	x23, x0
0x100334e60:  ; loc_100334e60
0x100334e60:  15 f2 06 94   bl	j__objc_release_x22
0x100334e64:  10 f2 06 94   bl	j__objc_release_x21
0x100334e68:  0b f2 06 94   bl	j__objc_release_x20
0x100334e6c:  06 f2 06 94   bl	j__objc_release_x19
0x100334e70:  02 00 00 14   b	loc_100334e78 ; ⤵ 0x8
0x100334e74:  f7 03 00 aa   mov	x23, x0
0x100334e78:  ; loc_100334e78
0x100334e78:  e0 03 17 aa   mov	x0, x23
0x100334e7c:  56 ec 06 94   bl	j___Unwind_Resume

