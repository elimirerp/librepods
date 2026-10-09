
-[_TtC12searchpartyd41LocalFindableConnectionMaterialTrampoline peripheralConnectionMaterialForAccessoryIdentifier:completion:]:
0x100b69c30:  7f 23 03 d5   pacibsp
0x100b69c34:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x100b69c38:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x100b69c3c:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x100b69c40:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x100b69c44:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x100b69c48:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x100b69c4c:  fd 43 01 91   add	fp, sp, #0x50
0x100b69c50:  fb 03 03 aa   mov	x27, x3
0x100b69c54:  f8 03 02 aa   mov	x24, x2
0x100b69c58:  f5 03 00 aa   mov	x21, x0
0x100b69c5c:  80 6d 00 f0   adrp	x0, 0x10191c000
0x100b69c60:  00 c0 11 91   add	x0, x0, #0x470 ; data_10191c470 (__DATA.__data)
0x100b69c64:  01 54 00 d0   adrp	x1, 0x1015eb000
0x100b69c68:  21 80 3e 91   add	x1, x1, #0xfa0 ; "\xbc@\r"
0x100b69c6c:  e2 39 d5 97   bl	0x1000b83f4
0x100b69c70:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x100b69c74:  f1 03 00 aa   mov	x17, x0
0x100b69c78:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b69c7c:  30 1a c1 da   autda	x16, x17
0x100b69c80:  09 22 40 f9   ldr	x9, [x16, #0x40]
0x100b69c84:  28 3d 00 91   add	x8, x9, #0xf
0x100b69c88:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x100b69c8c:  11 69 00 b0   adrp	x17, 0x10188a000
0x100b69c90:  31 c2 12 91   add	x17, x17, #0x4b0 ; __got.___chkstk_darwin
0x100b69c94:  30 02 40 f9   ldr	x16, [x17]
0x100b69c98:  11 0a 3f d7   blraa	x16, x17
0x100b69c9c:  e9 03 00 91   mov	x9, sp
0x100b69ca0:  36 01 08 cb   sub	x22, x9, x8
0x100b69ca4:  df 02 00 91   mov	sp, x22
0x100b69ca8:  00 00 80 d2   mov	x0, #0
0x100b69cac:  e1 6e 28 94   bl	j__$s10Foundation4UUIDVMa
0x100b69cb0:  f3 03 00 aa   mov	x19, x0
0x100b69cb4:  e9 03 00 aa   mov	x9, x0
0x100b69cb8:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x100b69cbc:  f0 03 08 aa   mov	x16, x8
0x100b69cc0:  f1 03 09 aa   mov	x17, x9
0x100b69cc4:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b69cc8:  30 1a c1 da   autda	x16, x17
0x100b69ccc:  f1 03 10 aa   mov	x17, x16
0x100b69cd0:  f1 47 c1 da   xpacd	x17
0x100b69cd4:  1f 02 11 eb   cmp	x16, x17
0x100b69cd8:  40 00 00 54   b.eq	loc_100b69ce0 ; ⤵ 0x8
0x100b69cdc:  40 8e 38 d4   brk	#0xc472
0x100b69ce0:  ; loc_100b69ce0
0x100b69ce0:  f4 03 10 aa   mov	x20, x16
0x100b69ce4:  f0 03 08 aa   mov	x16, x8
0x100b69ce8:  f1 03 09 aa   mov	x17, x9
0x100b69cec:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b69cf0:  30 1a c1 da   autda	x16, x17
0x100b69cf4:  1a 22 40 f9   ldr	x26, [x16, #0x40]
0x100b69cf8:  e9 03 1a aa   mov	x9, x26
0x100b69cfc:  11 69 00 b0   adrp	x17, 0x10188a000
0x100b69d00:  31 c2 12 91   add	x17, x17, #0x4b0 ; __got.___chkstk_darwin
0x100b69d04:  30 02 40 f9   ldr	x16, [x17]
0x100b69d08:  11 0a 3f d7   blraa	x16, x17
0x100b69d0c:  e8 03 00 91   mov	x8, sp
0x100b69d10:  49 3f 00 91   add	x9, x26, #0xf
0x100b69d14:  2c ed 7c 92   and	x12, x9, #0xfffffffffffffff0
0x100b69d18:  19 01 0c cb   sub	x25, x8, x12
0x100b69d1c:  3f 03 00 91   mov	sp, x25
0x100b69d20:  e9 03 1a aa   mov	x9, x26
0x100b69d24:  11 69 00 b0   adrp	x17, 0x10188a000
0x100b69d28:  31 c2 12 91   add	x17, x17, #0x4b0 ; __got.___chkstk_darwin
0x100b69d2c:  30 02 40 f9   ldr	x16, [x17]
0x100b69d30:  11 0a 3f d7   blraa	x16, x17
0x100b69d34:  e8 03 00 91   mov	x8, sp
0x100b69d38:  17 01 0c cb   sub	x23, x8, x12
0x100b69d3c:  ff 02 00 91   mov	sp, x23
0x100b69d40:  e0 03 1b aa   mov	x0, x27
0x100b69d44:  8b 84 28 94   bl	j___Block_copy
0x100b69d48:  fb 03 00 aa   mov	x27, x0
0x100b69d4c:  e8 03 17 aa   mov	x8, x23
0x100b69d50:  e0 03 18 aa   mov	x0, x24
0x100b69d54:  a7 6e 28 94   bl	j__$s10Foundation4UUIDV36_unconditionallyBridgeFromObjectiveCyACSo6NSUUIDCSgFZ
0x100b69d58:  e0 6a 00 d0   adrp	x0, 0x1018c7000
0x100b69d5c:  00 60 14 91   add	x0, x0, #0x518 ; data_1018c7518 (__DATA_CONST.__const)
0x100b69d60:  01 03 80 52   mov	w1, #0x18
0x100b69d64:  e2 00 80 52   mov	w2, #0x7
0x100b69d68:  12 86 28 94   bl	j__swift_allocObject
0x100b69d6c:  f8 03 00 aa   mov	x24, x0
0x100b69d70:  1b 08 00 f9   str	x27, [x0, #0x10]
0x100b69d74:  00 00 80 d2   mov	x0, #0
0x100b69d78:  22 7d 28 94   bl	j__$sScPMa
0x100b69d7c:  e3 03 00 aa   mov	x3, x0
0x100b69d80:  e8 03 00 aa   mov	x8, x0
0x100b69d84:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x100b69d88:  f1 03 08 aa   mov	x17, x8
0x100b69d8c:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b69d90:  30 1a c1 da   autda	x16, x17
0x100b69d94:  08 8e 43 f8   ldr	x8, [x16, #0x38]!
0x100b69d98:  e0 03 16 aa   mov	x0, x22
0x100b69d9c:  21 00 80 52   mov	w1, #0x1
0x100b69da0:  22 00 80 52   mov	w2, #0x1
0x100b69da4:  30 1a f4 f2   movk	x16, #0xa0d1, lsl #0x30
0x100b69da8:  10 09 3f d7   blraa	x8, x16
0x100b69dac:  e8 03 14 aa   mov	x8, x20
0x100b69db0:  09 0d 41 f8   ldr	x9, [x8, #0x10]!
0x100b69db4:  e0 03 19 aa   mov	x0, x25
0x100b69db8:  e1 03 17 aa   mov	x1, x23
0x100b69dbc:  e2 03 13 aa   mov	x2, x19
0x100b69dc0:  f1 03 08 aa   mov	x17, x8
0x100b69dc4:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x100b69dc8:  31 09 3f d7   blraa	x9, x17
0x100b69dcc:  88 42 41 39   ldrb	w8, [x20, #0x50]
0x100b69dd0:  09 a1 00 91   add	x9, x8, #0x28
0x100b69dd4:  3b 01 28 8a   bic	x27, x9, x8
0x100b69dd8:  49 03 1b 8b   add	x9, x26, x27
0x100b69ddc:  29 1d 00 91   add	x9, x9, #0x7
0x100b69de0:  3c f1 7d 92   and	x28, x9, #0xfffffffffffffff8
0x100b69de4:  e0 6a 00 d0   adrp	x0, 0x1018c7000
0x100b69de8:  00 00 15 91   add	x0, x0, #0x540 ; data_1018c7540 (__DATA_CONST.__const)
0x100b69dec:  81 43 00 91   add	x1, x28, #0x10
0x100b69df0:  02 09 40 b2   orr	x2, x8, #0x7
0x100b69df4:  ef 85 28 94   bl	j__swift_allocObject
0x100b69df8:  fa 03 00 aa   mov	x26, x0
0x100b69dfc:  1f 7c 01 a9   stp	xzr, xzr, [x0, #0x10]
0x100b69e00:  15 10 00 f9   str	x21, [x0, #0x20]
0x100b69e04:  e8 03 14 aa   mov	x8, x20
0x100b69e08:  09 0d 42 f8   ldr	x9, [x8, #0x20]!
0x100b69e0c:  00 00 1b 8b   add	x0, x0, x27
0x100b69e10:  e1 03 19 aa   mov	x1, x25
0x100b69e14:  e2 03 13 aa   mov	x2, x19
0x100b69e18:  f1 03 08 aa   mov	x17, x8
0x100b69e1c:  11 1b e9 f2   movk	x17, #0x48d8, lsl #0x30
0x100b69e20:  31 09 3f d7   blraa	x9, x17
0x100b69e24:  48 03 1c 8b   add	x8, x26, x28
0x100b69e28:  30 b3 ff 90   adrp	x16, 0x1001cd000
0x100b69e2c:  10 f2 31 91   add	x16, x16, #0xc7c
0x100b69e30:  71 06 94 d2   mov	x17, #0xa033
0x100b69e34:  30 02 c1 da   pacia	x16, x17
0x100b69e38:  10 61 00 a9   stp	x16, x24, [x8]
0x100b69e3c:  45 85 28 94   bl	j__objc_retain_x21
0x100b69e40:  24 85 28 94   bl	j__objc_retain
0x100b69e44:  f5 03 00 aa   mov	x21, x0
0x100b69e48:  e0 03 18 aa   mov	x0, x24
0x100b69e4c:  25 87 28 94   bl	j__swift_retain
0x100b69e50:  70 56 00 d0   adrp	x16, 0x101637000
0x100b69e54:  10 c2 13 91   add	x16, x16, #0x4f0 ; "p*S\xff "
0x100b69e58:  f1 41 8e d2   mov	x17, #0x720f
0x100b69e5c:  30 0a c1 da   pacda	x16, x17
0x100b69e60:  e3 03 10 aa   mov	x3, x16
0x100b69e64:  00 00 80 d2   mov	x0, #0
0x100b69e68:  01 00 80 d2   mov	x1, #0
0x100b69e6c:  e2 03 16 aa   mov	x2, x22
0x100b69e70:  e4 03 1a aa   mov	x4, x26
0x100b69e74:  8e 63 f7 97   bl	0x100942cac
0x100b69e78:  f6 03 00 aa   mov	x22, x0
0x100b69e7c:  e0 03 18 aa   mov	x0, x24
0x100b69e80:  10 87 28 94   bl	j__swift_release
0x100b69e84:  eb 84 28 94   bl	j__objc_release_x21
0x100b69e88:  e0 03 16 aa   mov	x0, x22
0x100b69e8c:  0d 87 28 94   bl	j__swift_release
0x100b69e90:  88 8e 40 f8   ldr	x8, [x20, #0x8]!
0x100b69e94:  e0 03 17 aa   mov	x0, x23
0x100b69e98:  e1 03 13 aa   mov	x1, x19
0x100b69e9c:  f1 03 14 aa   mov	x17, x20
0x100b69ea0:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x100b69ea4:  11 09 3f d7   blraa	x8, x17
0x100b69ea8:  bf 43 01 d1   sub	sp, fp, #0x50
0x100b69eac:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]

