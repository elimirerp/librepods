
sub_100b75aec:
0x100b75aec:  7f 23 03 d5   pacibsp
0x100b75af0:  ff 83 03 d1   sub	sp, sp, #0xe0
0x100b75af4:  fc 43 00 f9   str	x28, [sp, #0x80]
0x100b75af8:  fb 6b 09 a9   stp	x27, x26, [sp, #0x90]
0x100b75afc:  f9 63 0a a9   stp	x25, x24, [sp, #0xa0]
0x100b75b00:  f7 5b 0b a9   stp	x23, x22, [sp, #0xb0]
0x100b75b04:  f4 4f 0c a9   stp	x20, x19, [sp, #0xc0]
0x100b75b08:  fd 7b 0d a9   stp	fp, lr, [sp, #0xd0]
0x100b75b0c:  fd 43 03 91   add	fp, sp, #0xd0
0x100b75b10:  fb 03 15 aa   mov	x27, x21
0x100b75b14:  f7 03 04 aa   mov	x23, x4
0x100b75b18:  f6 03 03 aa   mov	x22, x3
0x100b75b1c:  f8 03 00 aa   mov	x24, x0
0x100b75b20:  88 68 00 b0   adrp	x8, 0x101886000
0x100b75b24:  08 01 43 f9   ldr	x8, [x8, #0x600] ; __got.___stack_chk_guard
0x100b75b28:  08 01 40 f9   ldr	x8, [x8]
0x100b75b2c:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x100b75b30:  1c 50 40 a9   ldp	x28, x20, [x0]
0x100b75b34:  88 fe 7e d3   lsr	x8, x20, #0x3e
0x100b75b38:  1f 05 00 71   cmp	w8, #0x1
0x100b75b3c:  ec 07 00 54   b.gt	loc_100b75c38 ; ⤵ 0xfc
0x100b75b40:  e2 17 05 a9   stp	x2, x5, [sp, #0x50]
0x100b75b44:  e1 33 00 f9   str	x1, [sp, #0x60]
0x100b75b48:  fb 27 00 f9   str	x27, [sp, #0x48]
0x100b75b4c:  28 0d 00 35   cbnz	w8, loc_100b75cf0 ; ⤵ 0x1a4
0x100b75b50:  93 ff 48 d3   lsr	x19, x28, #0x8
0x100b75b54:  99 ff 50 d3   lsr	x25, x28, #0x10
0x100b75b58:  9a ff 58 d3   lsr	x26, x28, #0x18
0x100b75b5c:  9b ff 60 d3   lsr	x27, x28, #0x20
0x100b75b60:  89 ff 68 d3   lsr	x9, x28, #0x28
0x100b75b64:  88 ff 70 d3   lsr	x8, x28, #0x30
0x100b75b68:  e9 23 00 a9   stp	x9, x8, [sp]
0x100b75b6c:  89 ff 78 d3   lsr	x9, x28, #0x38
0x100b75b70:  88 fe 48 d3   lsr	x8, x20, #0x8
0x100b75b74:  e9 23 01 a9   stp	x9, x8, [sp, #0x10]
0x100b75b78:  89 fe 50 d3   lsr	x9, x20, #0x10
0x100b75b7c:  88 fe 58 d3   lsr	x8, x20, #0x18
0x100b75b80:  e9 23 02 a9   stp	x9, x8, [sp, #0x20]
0x100b75b84:  89 fe 60 d3   lsr	x9, x20, #0x20
0x100b75b88:  88 fe 68 d3   lsr	x8, x20, #0x28
0x100b75b8c:  e9 23 03 a9   stp	x9, x8, [sp, #0x30]
0x100b75b90:  88 fe 70 d3   lsr	x8, x20, #0x30
0x100b75b94:  e8 23 00 f9   str	x8, [sp, #0x40]
0x100b75b98:  e0 03 16 aa   mov	x0, x22
0x100b75b9c:  e1 03 17 aa   mov	x1, x23
0x100b75ba0:  95 8c d2 97   bl	0x100018df4
0x100b75ba4:  e0 03 16 aa   mov	x0, x22
0x100b75ba8:  e1 03 17 aa   mov	x1, x23
0x100b75bac:  92 8c d2 97   bl	0x100018df4
0x100b75bb0:  e0 03 1c aa   mov	x0, x28
0x100b75bb4:  e1 03 14 aa   mov	x1, x20
0x100b75bb8:  fa 84 d2 97   bl	0x100016fa0
0x100b75bbc:  fc a3 01 39   strb	w28, [sp, #0x68]
0x100b75bc0:  f3 a7 01 39   strb	w19, [sp, #0x69]
0x100b75bc4:  f9 ab 01 39   strb	w25, [sp, #0x6a]
0x100b75bc8:  fa af 01 39   strb	w26, [sp, #0x6b]
0x100b75bcc:  fb b3 01 39   strb	w27, [sp, #0x6c]
0x100b75bd0:  e9 23 40 a9   ldp	x9, x8, [sp]
0x100b75bd4:  e9 b7 01 39   strb	w9, [sp, #0x6d]
0x100b75bd8:  e8 bb 01 39   strb	w8, [sp, #0x6e]
0x100b75bdc:  ea 23 41 a9   ldp	x10, x8, [sp, #0x10]
0x100b75be0:  ea bf 01 39   strb	w10, [sp, #0x6f]
0x100b75be4:  f4 c3 01 39   strb	w20, [sp, #0x70]
0x100b75be8:  e8 c7 01 39   strb	w8, [sp, #0x71]
0x100b75bec:  eb 23 42 a9   ldp	x11, x8, [sp, #0x20]
0x100b75bf0:  eb cb 01 39   strb	w11, [sp, #0x72]
0x100b75bf4:  e8 cf 01 39   strb	w8, [sp, #0x73]
0x100b75bf8:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x100b75bfc:  e8 d3 01 39   strb	w8, [sp, #0x74]
0x100b75c00:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x100b75c04:  e8 d7 01 39   strb	w8, [sp, #0x75]
0x100b75c08:  e8 23 40 f9   ldr	x8, [sp, #0x40]
0x100b75c0c:  e8 db 01 39   strb	w8, [sp, #0x76]
0x100b75c10:  e8 fe 7e d3   lsr	x8, x23, #0x3e
0x100b75c14:  f4 33 40 f9   ldr	x20, [sp, #0x60]
0x100b75c18:  80 02 40 f9   ldr	x0, [x20]
0x100b75c1c:  1f 05 00 71   cmp	w8, #0x1
0x100b75c20:  ac 0c 00 54   b.gt	loc_100b75db4 ; ⤵ 0x194
0x100b75c24:  fb 8b 44 a9   ldp	x27, x2, [sp, #0x48]
0x100b75c28:  e5 2f 40 f9   ldr	x5, [sp, #0x58]
0x100b75c2c:  08 0f 00 35   cbnz	w8, loc_100b75e0c ; ⤵ 0x1e0
0x100b75c30:  e3 de 70 d3   ubfx	x3, x23, #0x30, #0x8
0x100b75c34:  88 00 00 14   b	loc_100b75e54 ; ⤵ 0x220
0x100b75c38:  ; loc_100b75c38
0x100b75c38:  1f 09 00 71   cmp	w8, #0x2
0x100b75c3c:  81 0a 00 54   b.ne	loc_100b75d8c ; ⤵ 0x150
0x100b75c40:  e2 17 05 a9   stp	x2, x5, [sp, #0x50]
0x100b75c44:  e1 33 00 f9   str	x1, [sp, #0x60]
0x100b75c48:  93 f6 40 92   and	x19, x20, #0x3fffffffffffffff
0x100b75c4c:  e0 03 16 aa   mov	x0, x22
0x100b75c50:  e1 03 17 aa   mov	x1, x23
0x100b75c54:  68 8c d2 97   bl	0x100018df4
0x100b75c58:  e0 03 16 aa   mov	x0, x22
0x100b75c5c:  e1 03 17 aa   mov	x1, x23
0x100b75c60:  65 8c d2 97   bl	0x100018df4
0x100b75c64:  e0 03 1c aa   mov	x0, x28
0x100b75c68:  e1 03 14 aa   mov	x1, x20
0x100b75c6c:  62 8c d2 97   bl	0x100018df4
0x100b75c70:  e0 03 1c aa   mov	x0, x28
0x100b75c74:  e1 03 14 aa   mov	x1, x20
0x100b75c78:  ca 84 d2 97   bl	0x100016fa0
0x100b75c7c:  fc cf 06 a9   stp	x28, x19, [sp, #0x68]
0x100b75c80:  a8 53 00 f0   adrp	x8, 0x1015ec000
0x100b75c84:  00 bd c3 3d   ldr	q0, [x8, #0xef0]
0x100b75c88:  00 03 80 3d   str	q0, [x24]
0x100b75c8c:  00 00 80 d2   mov	x0, #0
0x100b75c90:  01 00 f8 d2   mov	x1, #0xc000000000000000
0x100b75c94:  c3 84 d2 97   bl	0x100016fa0
0x100b75c98:  f4 a3 01 91   add	x20, sp, #0x68
0x100b75c9c:  e9 3d 28 94   bl	j__$s10Foundation4DataV10LargeSliceV21ensureUniqueReferenceyyF
0x100b75ca0:  fa d3 46 a9   ldp	x26, x20, [sp, #0x68]
0x100b75ca4:  59 0b 40 f9   ldr	x25, [x26, #0x10]
0x100b75ca8:  e0 03 16 aa   mov	x0, x22
0x100b75cac:  e1 03 17 aa   mov	x1, x23
0x100b75cb0:  51 8c d2 97   bl	0x100018df4
0x100b75cb4:  bf 3c 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b75cb8:  80 20 00 b4   cbz	x0, loc_100b760c8 ; ⤵ 0x410
0x100b75cbc:  f3 03 00 aa   mov	x19, x0
0x100b75cc0:  c8 3c 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b75cc4:  39 03 00 eb   subs	x25, x25, x0
0x100b75cc8:  c6 1e 00 54   b.vs	loc_100b760a0 ; ⤵ 0x3d8
0x100b75ccc:  c1 3c 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b75cd0:  e8 33 40 f9   ldr	x8, [sp, #0x60]
0x100b75cd4:  00 01 40 f9   ldr	x0, [x8]
0x100b75cd8:  e8 fe 7e d3   lsr	x8, x23, #0x3e
0x100b75cdc:  1f 05 00 71   cmp	w8, #0x1
0x100b75ce0:  ac 08 00 54   b.gt	loc_100b75df4 ; ⤵ 0x114
0x100b75ce4:  08 0e 00 35   cbnz	w8, loc_100b75ea4 ; ⤵ 0x1c0
0x100b75ce8:  e3 de 70 d3   ubfx	x3, x23, #0x30, #0x8
0x100b75cec:  74 00 00 14   b	loc_100b75ebc ; ⤵ 0x1d0
0x100b75cf0:  ; loc_100b75cf0
0x100b75cf0:  93 f6 40 92   and	x19, x20, #0x3fffffffffffffff
0x100b75cf4:  e0 03 16 aa   mov	x0, x22
0x100b75cf8:  e1 03 17 aa   mov	x1, x23
0x100b75cfc:  3e 8c d2 97   bl	0x100018df4
0x100b75d00:  e0 03 16 aa   mov	x0, x22
0x100b75d04:  e1 03 17 aa   mov	x1, x23
0x100b75d08:  3b 8c d2 97   bl	0x100018df4
0x100b75d0c:  e0 03 1c aa   mov	x0, x28
0x100b75d10:  e1 03 14 aa   mov	x1, x20
0x100b75d14:  38 8c d2 97   bl	0x100018df4
0x100b75d18:  e0 03 1c aa   mov	x0, x28
0x100b75d1c:  e1 03 14 aa   mov	x1, x20
0x100b75d20:  a0 84 d2 97   bl	0x100016fa0
0x100b75d24:  a8 53 00 f0   adrp	x8, 0x1015ec000
0x100b75d28:  00 bd c3 3d   ldr	q0, [x8, #0xef0]
0x100b75d2c:  00 03 80 3d   str	q0, [x24]
0x100b75d30:  00 00 80 d2   mov	x0, #0
0x100b75d34:  01 00 f8 d2   mov	x1, #0xc000000000000000
0x100b75d38:  9a 84 d2 97   bl	0x100016fa0
0x100b75d3c:  e0 03 13 aa   mov	x0, x19
0x100b75d40:  48 57 28 94   bl	j__swift_isUniquelyReferenced_nonNull_native
0x100b75d44:  9a 7f 40 93   sxtw	x26, w28
0x100b75d48:  99 ff 60 93   asr	x25, x28, #0x20
0x100b75d4c:  80 11 00 37   tbnz	w0, #0, loc_100b75f7c ; ⤵ 0x230
0x100b75d50:  28 03 1a eb   subs	x8, x25, x26
0x100b75d54:  e8 23 00 f9   str	x8, [sp, #0x40]
0x100b75d58:  ab 1a 00 54   b.lt	loc_100b760ac ; ⤵ 0x354
0x100b75d5c:  e0 03 13 aa   mov	x0, x19
0x100b75d60:  60 57 28 94   bl	j__swift_retain
0x100b75d64:  f4 03 13 aa   mov	x20, x19
0x100b75d68:  92 3c 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b75d6c:  00 0e 00 b4   cbz	x0, loc_100b75f2c ; ⤵ 0x1c0
0x100b75d70:  fb 03 00 aa   mov	x27, x0
0x100b75d74:  f4 03 13 aa   mov	x20, x19
0x100b75d78:  9a 3c 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b75d7c:  48 03 00 eb   subs	x8, x26, x0
0x100b75d80:  86 19 00 54   b.vs	loc_100b760b0 ; ⤵ 0x330
0x100b75d84:  14 01 1b 8b   add	x20, x8, x27
0x100b75d88:  6a 00 00 14   b	loc_100b75f30 ; ⤵ 0x1a8
0x100b75d8c:  ; loc_100b75d8c
0x100b75d8c:  ff e3 06 f8   stur	xzr, [sp, #0x6e]
0x100b75d90:  ff 37 00 f9   str	xzr, [sp, #0x68]

0x100b75d8c:  ff e3 06 f8   stur	xzr, [sp, #0x6e]
0x100b75d90:  ff 37 00 f9   str	xzr, [sp, #0x68]
0x100b75d94:  20 00 40 f9   ldr	x0, [x1]
0x100b75d98:  e8 fe 7e d3   lsr	x8, x23, #0x3e
0x100b75d9c:  1f 05 00 71   cmp	w8, #0x1
0x100b75da0:  ac 01 00 54   b.gt	loc_100b75dd4 ; ⤵ 0x34
0x100b75da4:  e8 03 00 35   cbnz	w8, loc_100b75e20 ; ⤵ 0x7c
0x100b75da8:  f4 03 01 aa   mov	x20, x1
0x100b75dac:  e3 de 70 d3   ubfx	x3, x23, #0x30, #0x8
0x100b75db0:  21 00 00 14   b	loc_100b75e34 ; ⤵ 0x84
0x100b75db4:  1f 09 00 71   cmp	w8, #0x2
0x100b75db8:  fb 8b 44 a9   ldp	x27, x2, [sp, #0x48]
0x100b75dbc:  e5 2f 40 f9   ldr	x5, [sp, #0x58]
0x100b75dc0:  81 04 00 54   b.ne	loc_100b75e50 ; ⤵ 0x90
0x100b75dc4:  c9 22 41 a9   ldp	x9, x8, [x22, #0x10]
0x100b75dc8:  03 01 09 eb   subs	x3, x8, x9
0x100b75dcc:  47 04 00 54   b.vc	loc_100b75e54 ; ⤵ 0x88
0x100b75dd0:  20 00 20 d4   brk	#0x1
0x100b75dd4:  ; loc_100b75dd4
0x100b75dd4:  f4 03 01 aa   mov	x20, x1
0x100b75dd8:  03 00 80 d2   mov	x3, #0
0x100b75ddc:  1f 09 00 71   cmp	w8, #0x2
0x100b75de0:  a1 02 00 54   b.ne	loc_100b75e34 ; ⤵ 0x54
0x100b75de4:  c9 22 41 a9   ldp	x9, x8, [x22, #0x10]
0x100b75de8:  03 01 09 eb   subs	x3, x8, x9
0x100b75dec:  47 02 00 54   b.vc	loc_100b75e34 ; ⤵ 0x48
0x100b75df0:  20 00 20 d4   brk	#0x1
0x100b75df4:  1f 09 00 71   cmp	w8, #0x2
0x100b75df8:  01 06 00 54   b.ne	loc_100b75eb8 ; ⤵ 0xc0
0x100b75dfc:  c9 22 41 a9   ldp	x9, x8, [x22, #0x10]
0x100b75e00:  03 01 09 eb   subs	x3, x8, x9
0x100b75e04:  c7 05 00 54   b.vc	loc_100b75ebc ; ⤵ 0xb8
0x100b75e08:  20 00 20 d4   brk	#0x1
0x100b75e0c:  c8 fe 60 d3   lsr	x8, x22, #0x20
0x100b75e10:  08 01 16 6b   subs	w8, w8, w22
0x100b75e14:  06 15 00 54   b.vs	loc_100b760b4 ; ⤵ 0x2a0
0x100b75e18:  03 7d 40 93   sxtw	x3, w8
0x100b75e1c:  0e 00 00 14   b	loc_100b75e54 ; ⤵ 0x38
0x100b75e20:  ; loc_100b75e20
0x100b75e20:  c8 fe 60 d3   lsr	x8, x22, #0x20
0x100b75e24:  08 01 16 6b   subs	w8, w8, w22
0x100b75e28:  86 14 00 54   b.vs	loc_100b760b8 ; ⤵ 0x290
0x100b75e2c:  f4 03 01 aa   mov	x20, x1
0x100b75e30:  03 7d 40 93   sxtw	x3, w8
0x100b75e34:  ; loc_100b75e34
0x100b75e34:  e4 a3 01 91   add	x4, sp, #0x68
0x100b75e38:  41 01 80 52   mov	w1, #0xa
0x100b75e3c:  89 53 28 94   bl	j__CCDeriveKey
0x100b75e40:  f3 03 00 aa   mov	x19, x0
0x100b75e44:  80 02 40 f9   ldr	x0, [x20]
0x100b75e48:  a6 53 28 94   bl	j__CCKDFParametersDestroy
0x100b75e4c:  2f 00 00 14   b	loc_100b75f08 ; ⤵ 0xbc
0x100b75e50:  ; loc_100b75e50
0x100b75e50:  03 00 80 d2   mov	x3, #0
0x100b75e54:  ; loc_100b75e54
0x100b75e54:  e4 a3 01 91   add	x4, sp, #0x68
0x100b75e58:  41 01 80 52   mov	w1, #0xa
0x100b75e5c:  81 53 28 94   bl	j__CCDeriveKey
0x100b75e60:  f3 03 00 aa   mov	x19, x0
0x100b75e64:  80 02 40 f9   ldr	x0, [x20]
0x100b75e68:  9e 53 28 94   bl	j__CCKDFParametersDestroy
0x100b75e6c:  f4 37 40 f9   ldr	x20, [sp, #0x68]
0x100b75e70:  e8 db 41 39   ldrb	w8, [sp, #0x76]
0x100b75e74:  e9 eb 40 79   ldrh	w9, [sp, #0x74]
0x100b75e78:  28 41 08 2a   orr	w8, w9, w8, lsl #0x10
0x100b75e7c:  e9 73 40 b9   ldr	w9, [sp, #0x70]
0x100b75e80:  39 81 08 aa   orr	x25, x9, x8, lsl #0x20
0x100b75e84:  e0 03 16 aa   mov	x0, x22
0x100b75e88:  e1 03 17 aa   mov	x1, x23
0x100b75e8c:  45 84 d2 97   bl	0x100016fa0
0x100b75e90:  e0 03 16 aa   mov	x0, x22
0x100b75e94:  e1 03 17 aa   mov	x1, x23
0x100b75e98:  42 84 d2 97   bl	0x100016fa0
0x100b75e9c:  14 67 00 a9   stp	x20, x25, [x24]
0x100b75ea0:  1a 00 00 14   b	loc_100b75f08 ; ⤵ 0x68
0x100b75ea4:  c8 fe 60 d3   lsr	x8, x22, #0x20
0x100b75ea8:  08 01 16 6b   subs	w8, w8, w22
0x100b75eac:  86 10 00 54   b.vs	loc_100b760bc ; ⤵ 0x210
0x100b75eb0:  03 7d 40 93   sxtw	x3, w8
0x100b75eb4:  02 00 00 14   b	loc_100b75ebc ; ⤵ 0x8
0x100b75eb8:  ; loc_100b75eb8
0x100b75eb8:  03 00 80 d2   mov	x3, #0
0x100b75ebc:  ; loc_100b75ebc
0x100b75ebc:  64 02 19 8b   add	x4, x19, x25
0x100b75ec0:  41 01 80 52   mov	w1, #0xa
0x100b75ec4:  e2 17 45 a9   ldp	x2, x5, [sp, #0x50]
0x100b75ec8:  66 53 28 94   bl	j__CCDeriveKey
0x100b75ecc:  f3 03 00 aa   mov	x19, x0
0x100b75ed0:  e8 33 40 f9   ldr	x8, [sp, #0x60]
0x100b75ed4:  00 01 40 f9   ldr	x0, [x8]
0x100b75ed8:  82 53 28 94   bl	j__CCKDFParametersDestroy
0x100b75edc:  e0 03 16 aa   mov	x0, x22
0x100b75ee0:  e1 03 17 aa   mov	x1, x23
0x100b75ee4:  2f 84 d2 97   bl	0x100016fa0
0x100b75ee8:  e0 03 16 aa   mov	x0, x22
0x100b75eec:  e1 03 17 aa   mov	x1, x23
0x100b75ef0:  2c 84 d2 97   bl	0x100016fa0
0x100b75ef4:  e0 03 16 aa   mov	x0, x22
0x100b75ef8:  e1 03 17 aa   mov	x1, x23
0x100b75efc:  29 84 d2 97   bl	0x100016fa0
0x100b75f00:  88 02 41 b2   orr	x8, x20, #0x8000000000000000
0x100b75f04:  1a 23 00 a9   stp	x26, x8, [x24]
0x100b75f08:  ; loc_100b75f08
0x100b75f08:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x100b75f0c:  89 68 00 b0   adrp	x9, 0x101886000
0x100b75f10:  29 01 43 f9   ldr	x9, [x9, #0x600] ; __got.___stack_chk_guard
0x100b75f14:  29 01 40 f9   ldr	x9, [x9]
0x100b75f18:  3f 01 08 eb   cmp	x9, x8
0x100b75f1c:  41 0d 00 54   b.ne	loc_100b760c4 ; ⤵ 0x1a8
0x100b75f20:  e0 03 13 aa   mov	x0, x19
0x100b75f24:  f5 03 1b aa   mov	x21, x27
0x100b75f28:  56 00 00 14   b	loc_100b76080 ; ⤵ 0x158
0x100b75f2c:  14 00 80 d2   mov	x20, #0
0x100b75f30:  00 00 80 d2   mov	x0, #0
0x100b75f34:  33 3c 28 94   bl	j__$s10Foundation13__DataStorageCMa
0x100b75f38:  01 30 40 b9   ldr	w1, [x0, #0x30]
0x100b75f3c:  02 68 40 79   ldrh	w2, [x0, #0x34]
0x100b75f40:  9c 55 28 94   bl	j__swift_allocObject
0x100b75f44:  e6 03 00 aa   mov	x6, x0
0x100b75f48:  e0 03 14 aa   mov	x0, x20
0x100b75f4c:  e1 23 40 f9   ldr	x1, [sp, #0x40]
0x100b75f50:  22 00 80 52   mov	w2, #0x1
0x100b75f54:  03 00 80 d2   mov	x3, #0
0x100b75f58:  04 00 80 d2   mov	x4, #0
0x100b75f5c:  e5 03 1a aa   mov	x5, x26
0x100b75f60:  f4 03 06 aa   mov	x20, x6
0x100b75f64:  0b 3c 28 94   bl	j__$s10Foundation13__DataStorageC5bytes6length4copy11deallocator6offsetACSvSg_SiSbySv_SitcSgSitcfc
0x100b75f68:  f4 03 00 aa   mov	x20, x0
0x100b75f6c:  e0 03 13 aa   mov	x0, x19
0x100b75f70:  41 00 80 52   mov	w1, #0x2
0x100b75f74:  d7 56 28 94   bl	j__swift_release_n
0x100b75f78:  f3 03 14 aa   mov	x19, x20
0x100b75f7c:  3f 03 1a eb   cmp	x25, x26
0x100b75f80:  2b 09 00 54   b.lt	loc_100b760a4 ; ⤵ 0x124
0x100b75f84:  e0 03 16 aa   mov	x0, x22
0x100b75f88:  e1 03 17 aa   mov	x1, x23
0x100b75f8c:  9a 8b d2 97   bl	0x100018df4
0x100b75f90:  e0 03 13 aa   mov	x0, x19
0x100b75f94:  d3 56 28 94   bl	j__swift_retain
0x100b75f98:  f4 03 13 aa   mov	x20, x19
0x100b75f9c:  05 3c 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b75fa0:  60 09 00 b4   cbz	x0, loc_100b760cc ; ⤵ 0x12c
0x100b75fa4:  fb 03 00 aa   mov	x27, x0
0x100b75fa8:  f4 03 13 aa   mov	x20, x19
0x100b75fac:  0d 3c 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b75fb0:  59 03 00 eb   subs	x25, x26, x0
0x100b75fb4:  a6 07 00 54   b.vs	loc_100b760a8 ; ⤵ 0xf4
0x100b75fb8:  f4 03 13 aa   mov	x20, x19
0x100b75fbc:  05 3c 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b75fc0:  fa 33 40 f9   ldr	x26, [sp, #0x60]
0x100b75fc4:  40 03 40 f9   ldr	x0, [x26]
0x100b75fc8:  e8 fe 7e d3   lsr	x8, x23, #0x3e
0x100b75fcc:  1f 05 00 71   cmp	w8, #0x1
0x100b75fd0:  8c 00 00 54   b.gt	loc_100b75fe0 ; ⤵ 0x10
0x100b75fd4:  28 01 00 35   cbnz	w8, loc_100b75ff8 ; ⤵ 0x24
0x100b75fd8:  e3 de 70 d3   ubfx	x3, x23, #0x30, #0x8
0x100b75fdc:  0d 00 00 14   b	loc_100b76010 ; ⤵ 0x34
0x100b75fe0:  ; loc_100b75fe0
0x100b75fe0:  1f 09 00 71   cmp	w8, #0x2
0x100b75fe4:  41 01 00 54   b.ne	loc_100b7600c ; ⤵ 0x28
0x100b75fe8:  c9 22 41 a9   ldp	x9, x8, [x22, #0x10]
0x100b75fec:  03 01 09 eb   subs	x3, x8, x9
0x100b75ff0:  07 01 00 54   b.vc	loc_100b76010 ; ⤵ 0x20
0x100b75ff4:  20 00 20 d4   brk	#0x1
0x100b75ff8:  ; loc_100b75ff8
0x100b75ff8:  c8 fe 60 d3   lsr	x8, x22, #0x20
0x100b75ffc:  08 01 16 6b   subs	w8, w8, w22
0x100b76000:  06 06 00 54   b.vs	loc_100b760c0 ; ⤵ 0xc0
0x100b76004:  03 7d 40 93   sxtw	x3, w8
0x100b76008:  02 00 00 14   b	loc_100b76010 ; ⤵ 0x8
0x100b7600c:  ; loc_100b7600c
0x100b7600c:  03 00 80 d2   mov	x3, #0
0x100b76010:  ; loc_100b76010
0x100b76010:  64 03 19 8b   add	x4, x27, x25
0x100b76014:  41 01 80 52   mov	w1, #0xa
0x100b76018:  e2 17 45 a9   ldp	x2, x5, [sp, #0x50]
0x100b7601c:  11 53 28 94   bl	j__CCDeriveKey
0x100b76020:  f4 03 00 aa   mov	x20, x0
0x100b76024:  40 03 40 f9   ldr	x0, [x26]
0x100b76028:  2e 53 28 94   bl	j__CCKDFParametersDestroy
0x100b7602c:  e0 03 16 aa   mov	x0, x22
0x100b76030:  e1 03 17 aa   mov	x1, x23
0x100b76034:  db 83 d2 97   bl	0x100016fa0
0x100b76038:  e0 03 13 aa   mov	x0, x19
0x100b7603c:  a1 56 28 94   bl	j__swift_release
0x100b76040:  e0 03 16 aa   mov	x0, x22
0x100b76044:  e1 03 17 aa   mov	x1, x23
0x100b76048:  d6 83 d2 97   bl	0x100016fa0
0x100b7604c:  e0 03 16 aa   mov	x0, x22
0x100b76050:  e1 03 17 aa   mov	x1, x23
0x100b76054:  d3 83 d2 97   bl	0x100016fa0
0x100b76058:  68 02 42 b2   orr	x8, x19, #0x4000000000000000
0x100b7605c:  1c 23 00 a9   stp	x28, x8, [x24]
0x100b76060:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x100b76064:  89 68 00 90   adrp	x9, 0x101886000
0x100b76068:  29 01 43 f9   ldr	x9, [x9, #0x600] ; __got.___stack_chk_guard
0x100b7606c:  29 01 40 f9   ldr	x9, [x9]
0x100b76070:  3f 01 08 eb   cmp	x9, x8
0x100b76074:  f5 27 40 f9   ldr	x21, [sp, #0x48]
0x100b76078:  61 02 00 54   b.ne	loc_100b760c4 ; ⤵ 0x4c
0x100b7607c:  e0 03 14 aa   mov	x0, x20
0x100b76080:  ; loc_100b76080
0x100b76080:  fd 7b 4d a9   ldp	fp, lr, [sp, #0xd0]
0x100b76084:  f4 4f 4c a9   ldp	x20, x19, [sp, #0xc0]
0x100b76088:  f7 5b 4b a9   ldp	x23, x22, [sp, #0xb0]
0x100b7608c:  f9 63 4a a9   ldp	x25, x24, [sp, #0xa0]
0x100b76090:  fb 6b 49 a9   ldp	x27, x26, [sp, #0x90]
0x100b76094:  fc 43 40 f9   ldr	x28, [sp, #0x80]
0x100b76098:  ff 83 03 91   add	sp, sp, #0xe0
0x100b7609c:  ff 0f 5f d6   retab
0x100b760a0:  20 00 20 d4   brk	#0x1
0x100b760a4:  ; loc_100b760a4
0x100b760a4:  20 00 20 d4   brk	#0x1
0x100b760a8:  ; loc_100b760a8
0x100b760a8:  20 00 20 d4   brk	#0x1

