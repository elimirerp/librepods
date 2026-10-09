
sub_100689ea4:
0x100689ea4:  7f 23 03 d5   pacibsp
0x100689ea8:  f8 5f bc a9   stp	x24, x23, [sp, #-0x40]!
0x100689eac:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x100689eb0:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x100689eb4:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x100689eb8:  fd c3 00 91   add	fp, sp, #0x30
0x100689ebc:  f3 03 04 aa   mov	x19, x4
0x100689ec0:  f4 03 02 aa   mov	x20, x2
0x100689ec4:  f7 03 01 aa   mov	x23, x1
0x100689ec8:  f5 03 00 aa   mov	x21, x0
0x100689ecc:  e0 03 04 aa   mov	x0, x4
0x100689ed0:  2c 15 06 94   bl	j__objc_retain
0x100689ed4:  a0 22 01 91   add	x0, x21, #0x48
0x100689ed8:  e1 03 17 aa   mov	x1, x23
0x100689edc:  11 60 f7 97   bl	0x100461f20
0x100689ee0:  f6 03 00 aa   mov	x22, x0
0x100689ee4:  a0 82 01 91   add	x0, x21, #0x60
0x100689ee8:  e1 03 17 aa   mov	x1, x23
0x100689eec:  0d 60 f7 97   bl	0x100461f20
0x100689ef0:  f8 03 00 aa   mov	x24, x0
0x100689ef4:  d3 00 00 b4   cbz	x19, loc_100689f0c ; ⤵ 0x18
0x100689ef8:  e0 03 15 aa   mov	x0, x21
0x100689efc:  e1 03 17 aa   mov	x1, x23
0x100689f00:  e2 03 13 aa   mov	x2, x19
0x100689f04:  88 ff ff 97   bl	0x100689d24
0x100689f08:  02 00 00 14   b	loc_100689f10 ; ⤵ 0x8
0x100689f0c:  ; loc_100689f0c
0x100689f0c:  00 00 80 52   mov	w0, #0
0x100689f10:  ; loc_100689f10
0x100689f10:  a8 a2 01 91   add	x8, x21, #0x68
0x100689f14:  a9 42 01 91   add	x9, x21, #0x50
0x100689f18:  3f 01 16 eb   cmp	x9, x22
0x100689f1c:  e9 07 9f 1a   cset	w9, ne
0x100689f20:  ea 03 94 1a   csel	w10, wzr, w20, eq
0x100689f24:  1f 01 18 eb   cmp	x8, x24
0x100689f28:  28 05 9f 1a   csinc	w8, w9, wzr, eq
0x100689f2c:  08 01 00 2a   orr	w8, w8, w0
0x100689f30:  48 01 28 2a   orn	w8, w10, w8
0x100689f34:  89 02 00 0a   and	w9, w20, w0
0x100689f38:  14 01 09 2a   orr	w20, w8, w9
0x100689f3c:  e0 03 13 aa   mov	x0, x19
0x100689f40:  0c 15 06 94   bl	j__objc_release
0x100689f44:  80 02 00 12   and	w0, w20, #0x1
0x100689f48:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x100689f4c:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x100689f50:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x100689f54:  f8 5f c4 a8   ldp	x24, x23, [sp], #0x40
0x100689f58:  ff 0f 5f d6   retab
0x100689f5c:  02 00 00 14   b	loc_100689f64 ; ⤵ 0x8
0x100689f60:  01 00 00 14   b	loc_100689f64 ; ⤵ 0x4
0x100689f64:  ; loc_100689f64
0x100689f64:  f4 03 00 aa   mov	x20, x0
0x100689f68:  e0 03 13 aa   mov	x0, x19
0x100689f6c:  01 15 06 94   bl	j__objc_release
0x100689f70:  e0 03 14 aa   mov	x0, x20
0x100689f74:  5b 0f 06 94   bl	j___Unwind_Resume

sub_100689f78:
0x100689f78:  7f 23 03 d5   pacibsp
0x100689f7c:  ff 83 01 d1   sub	sp, sp, #0x60
0x100689f80:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x100689f84:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x100689f88:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x100689f8c:  fd 43 01 91   add	fp, sp, #0x50
0x100689f90:  f5 03 02 aa   mov	x21, x2
0x100689f94:  f3 03 01 aa   mov	x19, x1
0x100689f98:  f6 03 00 aa   mov	x22, x0
0x100689f9c:  f4 03 08 aa   mov	x20, x8
0x100689fa0:  48 1d 00 b0   adrp	x8, 0x100a32000
0x100689fa4:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100689fa8:  08 01 40 f9   ldr	x8, [x8]
0x100689fac:  e8 17 00 f9   str	x8, [sp, #0x28]
0x100689fb0:  e0 03 01 aa   mov	x0, x1
0x100689fb4:  f3 14 06 94   bl	j__objc_retain
0x100689fb8:  e0 63 00 91   add	x0, sp, #0x18
0x100689fbc:  e1 03 13 aa   mov	x1, x19
0x100689fc0:  b5 ae f0 97   bl	0x1002b5a94
0x100689fc4:  e8 23 00 91   add	x8, sp, #0x8
0x100689fc8:  e1 63 00 91   add	x1, sp, #0x18
0x100689fcc:  e0 03 16 aa   mov	x0, x22
0x100689fd0:  02 00 80 52   mov	w2, #0
0x100689fd4:  54 fc ff 97   bl	0x100689124
0x100689fd8:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x100689fdc:  00 01 00 b4   cbz	x0, loc_100689ffc ; ⤵ 0x20
0x100689fe0:  e8 03 14 aa   mov	x8, x20
0x100689fe4:  e1 03 15 aa   mov	x1, x21
0x100689fe8:  7d 95 fa 97   bl	0x10052f5dc
0x100689fec:  e0 0b 40 f9   ldr	x0, [sp, #0x10]
0x100689ff0:  00 01 00 b4   cbz	x0, loc_10068a010 ; ⤵ 0x20
0x100689ff4:  38 ca e6 97   bl	0x10003c8d4
0x100689ff8:  06 00 00 14   b	loc_10068a010 ; ⤵ 0x18
0x100689ffc:  ; loc_100689ffc
0x100689ffc:  e0 0b 40 f9   ldr	x0, [sp, #0x10]
0x10068a000:  40 00 00 b4   cbz	x0, loc_10068a008 ; ⤵ 0x8
0x10068a004:  34 ca e6 97   bl	0x10003c8d4
0x10068a008:  ; loc_10068a008
0x10068a008:  e0 03 14 aa   mov	x0, x20
0x10068a00c:  2f 06 04 94   bl	0x10078b8c8
0x10068a010:  ; loc_10068a010
0x10068a010:  e0 03 13 aa   mov	x0, x19
0x10068a014:  d7 14 06 94   bl	j__objc_release
0x10068a018:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10068a01c:  49 1d 00 90   adrp	x9, 0x100a32000
0x10068a020:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10068a024:  29 01 40 f9   ldr	x9, [x9]
0x10068a028:  3f 01 08 eb   cmp	x9, x8
0x10068a02c:  c1 00 00 54   b.ne	loc_10068a044 ; ⤵ 0x18
0x10068a030:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x10068a034:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x10068a038:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x10068a03c:  ff 83 01 91   add	sp, sp, #0x60
0x10068a040:  ff 0f 5f d6   retab
0x10068a044:  ; loc_10068a044
0x10068a044:  93 10 06 94   bl	j____stack_chk_fail
0x10068a048:  06 00 00 14   b	loc_10068a060 ; ⤵ 0x18
0x10068a04c:  f4 03 00 aa   mov	x20, x0
0x10068a050:  e0 0b 40 f9   ldr	x0, [sp, #0x10]
0x10068a054:  80 00 00 b4   cbz	x0, loc_10068a064 ; ⤵ 0x10
0x10068a058:  1f ca e6 97   bl	0x10003c8d4
0x10068a05c:  02 00 00 14   b	loc_10068a064 ; ⤵ 0x8
0x10068a060:  ; loc_10068a060
0x10068a060:  f4 03 00 aa   mov	x20, x0
0x10068a064:  ; loc_10068a064
0x10068a064:  e0 03 13 aa   mov	x0, x19
0x10068a068:  c2 14 06 94   bl	j__objc_release
0x10068a06c:  02 00 00 14   b	loc_10068a074 ; ⤵ 0x8
0x10068a070:  f4 03 00 aa   mov	x20, x0
0x10068a074:  ; loc_10068a074
0x10068a074:  e0 03 14 aa   mov	x0, x20
0x10068a078:  1a 0f 06 94   bl	j___Unwind_Resume

sub_10068a07c:
0x10068a07c:  7f 23 03 d5   pacibsp
0x10068a080:  ff 83 03 d1   sub	sp, sp, #0xe0
0x10068a084:  fc 6f 08 a9   stp	x28, x27, [sp, #0x80]
0x10068a088:  fa 67 09 a9   stp	x26, x25, [sp, #0x90]
0x10068a08c:  f8 5f 0a a9   stp	x24, x23, [sp, #0xa0]
0x10068a090:  f6 57 0b a9   stp	x22, x21, [sp, #0xb0]
0x10068a094:  f4 4f 0c a9   stp	x20, x19, [sp, #0xc0]
0x10068a098:  fd 7b 0d a9   stp	fp, lr, [sp, #0xd0]
0x10068a09c:  fd 43 03 91   add	fp, sp, #0xd0
0x10068a0a0:  f5 03 05 aa   mov	x21, x5
0x10068a0a4:  f6 03 03 aa   mov	x22, x3
0x10068a0a8:  f8 03 02 aa   mov	x24, x2
0x10068a0ac:  f3 03 01 aa   mov	x19, x1
0x10068a0b0:  f4 03 00 aa   mov	x20, x0
0x10068a0b4:  48 1d 00 90   adrp	x8, 0x100a32000
0x10068a0b8:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10068a0bc:  08 01 40 f9   ldr	x8, [x8]
0x10068a0c0:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x10068a0c4:  e0 03 01 aa   mov	x0, x1
0x10068a0c8:  ae 14 06 94   bl	j__objc_retain
0x10068a0cc:  ff ff 04 a9   stp	xzr, xzr, [sp, #0x48]
0x10068a0d0:  ff 2f 00 f9   str	xzr, [sp, #0x58]
0x10068a0d4:  17 63 40 a9   ldp	x23, x24, [x24]
0x10068a0d8:  ff 02 18 eb   cmp	x23, x24
0x10068a0dc:  a0 02 00 54   b.eq	loc_10068a130 ; ⤵ 0x54
0x10068a0e0:  79 20 00 f0   adrp	x25, 0x100a99000
0x10068a0e4:  7a 20 00 f0   adrp	x26, 0x100a99000
0x10068a0e8:  ; loc_10068a0e8
0x10068a0e8:  28 df 40 f9   ldr	x8, [x25, #0x1b8]
0x10068a0ec:  1f 05 00 b1   cmn	x8, #0x1
0x10068a0f0:  c1 01 00 54   b.ne	loc_10068a128 ; ⤵ 0x38
0x10068a0f4:  ; loc_10068a0f4
0x10068a0f4:  40 db 40 f9   ldr	x0, [x26, #0x1b0]
0x10068a0f8:  e1 03 17 aa   mov	x1, x23
0x10068a0fc:  e2 03 16 aa   mov	x2, x22
0x10068a100:  e4 03 13 aa   mov	x4, x19
0x10068a104:  68 ff ff 97   bl	0x100689ea4
0x10068a108:  80 00 00 34   cbz	w0, loc_10068a118 ; ⤵ 0x10
0x10068a10c:  e0 23 01 91   add	x0, sp, #0x48
0x10068a110:  e1 03 17 aa   mov	x1, x23
0x10068a114:  0d 58 e7 97   bl	0x100060148
0x10068a118:  ; loc_10068a118
0x10068a118:  f7 52 00 91   add	x23, x23, #0x14
0x10068a11c:  ff 02 18 eb   cmp	x23, x24
0x10068a120:  41 fe ff 54   b.ne	loc_10068a0e8 ; ⤴ -0x38
0x10068a124:  03 00 00 14   b	loc_10068a130 ; ⤵ 0xc
0x10068a128:  ; loc_10068a128
0x10068a128:  ce c9 05 94   bl	0x1007fc860
0x10068a12c:  f2 ff ff 17   b	loc_10068a0f4 ; ⤴ -0x38
0x10068a130:  ; loc_10068a130
0x10068a130:  ff 7f 03 a9   stp	xzr, xzr, [sp, #0x30]
0x10068a134:  ff 23 00 f9   str	xzr, [sp, #0x40]
0x10068a138:  e0 03 13 aa   mov	x0, x19
0x10068a13c:  e1 03 15 aa   mov	x1, x21
0x10068a140:  89 00 00 94   bl	0x10068a364
0x10068a144:  f5 27 40 f9   ldr	x21, [sp, #0x48]
0x10068a148:  60 01 00 34   cbz	w0, loc_10068a174 ; ⤵ 0x2c
0x10068a14c:  e2 2b 40 f9   ldr	x2, [sp, #0x50]
0x10068a150:  48 00 15 cb   sub	x8, x2, x21
0x10068a154:  08 fd 42 93   asr	x8, x8, #0x2
0x10068a158:  e9 e7 02 b2   mov	x9, #0xcccccccccccccccc
0x10068a15c:  a9 99 99 f2   movk	x9, #0xcccd
0x10068a160:  03 7d 09 9b   mul	x3, x8, x9
0x10068a164:  e0 c3 00 91   add	x0, sp, #0x30
0x10068a168:  e1 03 15 aa   mov	x1, x21
0x10068a16c:  32 58 f7 97   bl	0x100460234
0x10068a170:  38 00 00 14   b	loc_10068a250 ; ⤵ 0xe0
0x10068a174:  ; loc_10068a174
0x10068a174:  f9 2b 40 f9   ldr	x25, [sp, #0x50]
0x10068a178:  bf 02 19 eb   cmp	x21, x25
0x10068a17c:  a0 06 00 54   b.eq	loc_10068a250 ; ⤵ 0xd4
0x10068a180:  9a 02 02 91   add	x26, x20, #0x80
0x10068a184:  3b 22 00 f0   adrp	x27, 0x100ad1000
0x10068a188:  7b 03 31 91   add	x27, x27, #0xc40
0x10068a18c:  28 10 00 f0   adrp	x8, 0x100891000
0x10068a190:  00 5d 44 fd   ldr	d0, [x8, #0x8b8]
0x10068a194:  e0 03 80 3d   str	q0, [sp]
0x10068a198:  5c 08 81 52   mov	w28, #0x842
0x10068a19c:  b6 cb ff d0   adrp	x22, 0x100000000
0x10068a1a0:  d6 02 00 91   add	x22, x22, #0 ; __mh_execute_header
0x10068a1a4:  17 1a 00 90   adrp	x23, 0x1009ca000
0x10068a1a8:  f7 1e 08 91   add	x23, x23, #0x207 ; "deviceHasAnyService skipping %{public}s because %{public}@ link is not encrypted"
0x10068a1ac:  ; loc_10068a1ac
0x10068a1ac:  80 e2 01 91   add	x0, x20, #0x78
0x10068a1b0:  e1 03 15 aa   mov	x1, x21
0x10068a1b4:  5b 5f f7 97   bl	0x100461f20
0x10068a1b8:  5f 03 00 eb   cmp	x26, x0
0x10068a1bc:  e0 03 00 54   b.eq	loc_10068a238 ; ⤵ 0x7c
0x10068a1c0:  78 03 40 f9   ldr	x24, [x27]
0x10068a1c4:  e0 03 18 aa   mov	x0, x24
0x10068a1c8:  21 00 80 52   mov	w1, #0x1
0x10068a1cc:  19 15 06 94   bl	j__os_log_type_enabled
0x10068a1d0:  a0 03 00 34   cbz	w0, loc_10068a244 ; ⤵ 0x74
0x10068a1d4:  e8 63 00 91   add	x8, sp, #0x18
0x10068a1d8:  e0 03 15 aa   mov	x0, x21
0x10068a1dc:  21 06 04 94   bl	0x10078ba60
0x10068a1e0:  e8 bf c0 39   ldrsb	w8, [sp, #0x2f]
0x10068a1e4:  e9 0f 40 f9   ldr	x9, [sp, #0x18]
0x10068a1e8:  1f 01 00 71   cmp	w8, #0
0x10068a1ec:  e8 63 00 91   add	x8, sp, #0x18
0x10068a1f0:  28 b1 88 9a   csel	x8, x9, x8, lt
0x10068a1f4:  e0 03 c0 3d   ldr	q0, [sp]
0x10068a1f8:  e0 63 00 bd   str	s0, [sp, #0x60]
0x10068a1fc:  e8 43 06 f8   stur	x8, [sp, #0x64]
0x10068a200:  fc db 00 79   strh	w28, [sp, #0x6c]
0x10068a204:  f3 e3 06 f8   stur	x19, [sp, #0x6e]
0x10068a208:  e4 83 01 91   add	x4, sp, #0x60
0x10068a20c:  e0 03 16 aa   mov	x0, x22
0x10068a210:  e1 03 18 aa   mov	x1, x24
0x10068a214:  22 00 80 52   mov	w2, #0x1
0x10068a218:  e3 03 17 aa   mov	x3, x23
0x10068a21c:  c5 02 80 52   mov	w5, #0x16
0x10068a220:  4c 10 06 94   bl	j___os_log_impl
0x10068a224:  e8 bf c0 39   ldrsb	w8, [sp, #0x2f]
0x10068a228:  e8 00 f8 36   tbz	w8, #0x1f, loc_10068a244 ; ⤵ 0x1c
0x10068a22c:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x10068a230:  c8 0f 06 94   bl	j___ZdlPv
0x10068a234:  04 00 00 14   b	loc_10068a244 ; ⤵ 0x10
0x10068a238:  ; loc_10068a238
0x10068a238:  e0 c3 00 91   add	x0, sp, #0x30
0x10068a23c:  e1 03 15 aa   mov	x1, x21
0x10068a240:  c2 57 e7 97   bl	0x100060148
0x10068a244:  ; loc_10068a244
0x10068a244:  b5 52 00 91   add	x21, x21, #0x14
0x10068a248:  bf 02 19 eb   cmp	x21, x25
0x10068a24c:  01 fb ff 54   b.ne	loc_10068a1ac ; ⤴ -0xa0
0x10068a250:  ; loc_10068a250
0x10068a250:  e0 83 01 91   add	x0, sp, #0x60
0x10068a254:  e1 03 13 aa   mov	x1, x19
0x10068a258:  0f ae f0 97   bl	0x1002b5a94
0x10068a25c:  e8 63 00 91   add	x8, sp, #0x18
0x10068a260:  e1 83 01 91   add	x1, sp, #0x60
0x10068a264:  e0 03 14 aa   mov	x0, x20
0x10068a268:  02 00 80 52   mov	w2, #0
0x10068a26c:  ae fb ff 97   bl	0x100689124
0x10068a270:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x10068a274:  a0 00 00 b4   cbz	x0, loc_10068a288 ; ⤵ 0x14
0x10068a278:  e1 c3 00 91   add	x1, sp, #0x30
0x10068a27c:  6c 87 fa 97   bl	0x10052c02c
0x10068a280:  f4 03 00 aa   mov	x20, x0
0x10068a284:  02 00 00 14   b	loc_10068a28c ; ⤵ 0x8
0x10068a288:  ; loc_10068a288
0x10068a288:  14 00 80 52   mov	w20, #0
0x10068a28c:  ; loc_10068a28c
0x10068a28c:  e0 13 40 f9   ldr	x0, [sp, #0x20]
0x10068a290:  40 00 00 b4   cbz	x0, loc_10068a298 ; ⤵ 0x8
0x10068a294:  90 c9 e6 97   bl	0x10003c8d4
0x10068a298:  ; loc_10068a298
0x10068a298:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x10068a29c:  60 00 00 b4   cbz	x0, loc_10068a2a8 ; ⤵ 0xc
0x10068a2a0:  e0 1f 00 f9   str	x0, [sp, #0x38]
0x10068a2a4:  ab 0f 06 94   bl	j___ZdlPv
0x10068a2a8:  ; loc_10068a2a8
0x10068a2a8:  e0 27 40 f9   ldr	x0, [sp, #0x48]
0x10068a2ac:  60 00 00 b4   cbz	x0, loc_10068a2b8 ; ⤵ 0xc
0x10068a2b0:  e0 2b 00 f9   str	x0, [sp, #0x50]

