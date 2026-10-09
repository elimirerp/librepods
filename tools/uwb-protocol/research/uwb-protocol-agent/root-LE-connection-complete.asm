
sub_100209e60:
0x100209e60:  7f 23 03 d5   pacibsp
0x100209e64:  ff 43 03 d1   sub	sp, sp, #0xd0
0x100209e68:  fa 67 08 a9   stp	x26, x25, [sp, #0x80]
0x100209e6c:  f8 5f 09 a9   stp	x24, x23, [sp, #0x90]
0x100209e70:  f6 57 0a a9   stp	x22, x21, [sp, #0xa0]
0x100209e74:  f4 4f 0b a9   stp	x20, x19, [sp, #0xb0]
0x100209e78:  fd 7b 0c a9   stp	fp, lr, [sp, #0xc0]
0x100209e7c:  fd 03 03 91   add	fp, sp, #0xc0
0x100209e80:  f4 03 03 aa   mov	x20, x3
0x100209e84:  f5 03 02 aa   mov	x21, x2
0x100209e88:  f3 03 01 aa   mov	x19, x1
0x100209e8c:  f6 03 00 aa   mov	x22, x0
0x100209e90:  48 41 00 b0   adrp	x8, 0x100a32000
0x100209e94:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100209e98:  08 01 40 f9   ldr	x8, [x8]
0x100209e9c:  a8 83 1b f8   stur	x8, [fp, #-0x48]
0x100209ea0:  28 45 00 f0   adrp	x8, 0x100ab0000
0x100209ea4:  08 c1 4a 39   ldrb	w8, [x8, #0x2b0]
0x100209ea8:  1f 05 00 71   cmp	w8, #0x1
0x100209eac:  a1 03 00 54   b.ne	loc_100209f20 ; ⤵ 0x74
0x100209eb0:  00 00 80 52   mov	w0, #0
0x100209eb4:  41 08 80 52   mov	w1, #0x42
0x100209eb8:  a3 69 fb 97   bl	0x1000e4544
0x100209ebc:  00 03 00 34   cbz	w0, loc_100209f1c ; ⤵ 0x60
0x100209ec0:  40 37 00 b0   adrp	x0, 0x1008f2000
0x100209ec4:  00 d4 0e 91   add	x0, x0, #0x3b5 ; "Connection complete, we need to update our own address now"
0x100209ec8:  b7 ec 00 94   bl	0x1002451a4
0x100209ecc:  40 08 80 52   mov	w0, #0x42
0x100209ed0:  12 d7 fa 97   bl	0x1000bfb18
0x100209ed4:  f7 03 00 aa   mov	x23, x0
0x100209ed8:  01 00 80 52   mov	w1, #0
0x100209edc:  d5 15 18 94   bl	j__os_log_type_enabled
0x100209ee0:  e0 01 00 34   cbz	w0, loc_100209f1c ; ⤵ 0x3c
0x100209ee4:  ce eb 00 94   bl	0x100244e1c
0x100209ee8:  48 34 00 90   adrp	x8, 0x100891000
0x100209eec:  00 65 44 fd   ldr	d0, [x8, #0x8c8]
0x100209ef0:  e0 13 00 bd   str	s0, [sp, #0x10]
0x100209ef4:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x100209ef8:  a0 ef ff f0   adrp	x0, 0x100000000
0x100209efc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100209f00:  e3 39 00 d0   adrp	x3, 0x100947000
0x100209f04:  63 90 35 91   add	x3, x3, #0xd64 ; " %{public}s"
0x100209f08:  e4 43 00 91   add	x4, sp, #0x10
0x100209f0c:  e1 03 17 aa   mov	x1, x23
0x100209f10:  02 00 80 52   mov	w2, #0
0x100209f14:  85 01 80 52   mov	w5, #0xc
0x100209f18:  0e 11 18 94   bl	j___os_log_impl
0x100209f1c:  ; loc_100209f1c
0x100209f1c:  1d 01 00 94   bl	0x10020a390
0x100209f20:  ; loc_100209f20
0x100209f20:  33 0b 00 b4   cbz	x19, loc_10020a084 ; ⤵ 0x164
0x100209f24:  68 de 40 39   ldrb	w8, [x19, #0x37]
0x100209f28:  79 e2 00 91   add	x25, x19, #0x38
0x100209f2c:  1f 01 00 71   cmp	w8, #0
0x100209f30:  28 13 96 9a   csel	x8, x25, x22, ne
0x100209f34:  09 05 40 39   ldrb	w9, [x8, #0x1]
0x100209f38:  29 5d 58 d3   lsl	x9, x9, #0x28
0x100209f3c:  0a 09 40 39   ldrb	w10, [x8, #0x2]
0x100209f40:  29 81 0a aa   orr	x9, x9, x10, lsl #0x20
0x100209f44:  0a 0d 40 39   ldrb	w10, [x8, #0x3]
0x100209f48:  29 61 0a aa   orr	x9, x9, x10, lsl #0x18
0x100209f4c:  0a 11 40 39   ldrb	w10, [x8, #0x4]
0x100209f50:  29 41 0a aa   orr	x9, x9, x10, lsl #0x10
0x100209f54:  0a 15 40 39   ldrb	w10, [x8, #0x5]
0x100209f58:  29 21 0a aa   orr	x9, x9, x10, lsl #0x8
0x100209f5c:  0a 19 40 39   ldrb	w10, [x8, #0x6]
0x100209f60:  29 01 0a aa   orr	x9, x9, x10
0x100209f64:  08 01 40 39   ldrb	w8, [x8]
0x100209f68:  37 c1 08 aa   orr	x23, x9, x8, lsl #0x30
0x100209f6c:  e0 03 17 aa   mov	x0, x23
0x100209f70:  fc 01 00 94   bl	0x10020a760
0x100209f74:  a0 05 00 34   cbz	w0, loc_10020a028 ; ⤵ 0xb4
0x100209f78:  00 00 80 52   mov	w0, #0
0x100209f7c:  41 08 80 52   mov	w1, #0x42
0x100209f80:  71 69 fb 97   bl	0x1000e4544
0x100209f84:  20 04 00 34   cbz	w0, loc_10020a008 ; ⤵ 0x84
0x100209f88:  e8 03 16 aa   mov	x8, x22
0x100209f8c:  09 15 40 38   ldrb	w9, [x8], #0x1
0x100209f90:  ea 34 00 b0   adrp	x10, 0x1008a6000
0x100209f94:  4a d9 15 91   add	x10, x10, #0x576 ; "Random"
0x100209f98:  eb 34 00 b0   adrp	x11, 0x1008a6000
0x100209f9c:  6b bd 15 91   add	x11, x11, #0x56f ; "Public"
0x100209fa0:  3f 01 00 71   cmp	w9, #0
0x100209fa4:  69 01 8a 9a   csel	x9, x11, x10, eq
0x100209fa8:  e9 23 00 a9   stp	x9, x8, [sp]
0x100209fac:  40 37 00 b0   adrp	x0, 0x1008f2000
0x100209fb0:  00 c0 0f 91   add	x0, x0, #0x3f0 ; "FastLEConnection:LE_GAP_IsFastLeConnectionEnabledForAddress enabled for %s:%:"
0x100209fb4:  7c ec 00 94   bl	0x1002451a4
0x100209fb8:  40 08 80 52   mov	w0, #0x42
0x100209fbc:  d7 d6 fa 97   bl	0x1000bfb18
0x100209fc0:  f8 03 00 aa   mov	x24, x0
0x100209fc4:  01 00 80 52   mov	w1, #0
0x100209fc8:  9a 15 18 94   bl	j__os_log_type_enabled
0x100209fcc:  e0 01 00 34   cbz	w0, loc_10020a008 ; ⤵ 0x3c
0x100209fd0:  93 eb 00 94   bl	0x100244e1c
0x100209fd4:  48 34 00 90   adrp	x8, 0x100891000
0x100209fd8:  00 65 44 fd   ldr	d0, [x8, #0x8c8]
0x100209fdc:  e0 13 00 bd   str	s0, [sp, #0x10]
0x100209fe0:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x100209fe4:  a0 ef ff f0   adrp	x0, 0x100000000
0x100209fe8:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100209fec:  e3 39 00 d0   adrp	x3, 0x100947000
0x100209ff0:  63 90 35 91   add	x3, x3, #0xd64 ; " %{public}s"
0x100209ff4:  e4 43 00 91   add	x4, sp, #0x10
0x100209ff8:  e1 03 18 aa   mov	x1, x24
0x100209ffc:  02 00 80 52   mov	w2, #0
0x10020a000:  85 01 80 52   mov	w5, #0xc
0x10020a004:  d3 10 18 94   bl	j___os_log_impl
0x10020a008:  ; loc_10020a008
0x10020a008:  28 00 80 52   mov	w8, #0x1
0x10020a00c:  68 8a 05 39   strb	w8, [x19, #0x162]
0x10020a010:  e0 03 17 aa   mov	x0, x23
0x10020a014:  37 02 00 94   bl	0x10020a8f0
0x10020a018:  60 8e 05 39   strb	w0, [x19, #0x163]
0x10020a01c:  e0 03 17 aa   mov	x0, x23
0x10020a020:  9d 02 00 94   bl	0x10020aa94
0x10020a024:  60 92 05 39   strb	w0, [x19, #0x164]
0x10020a028:  ; loc_10020a028
0x10020a028:  68 de 40 39   ldrb	w8, [x19, #0x37]
0x10020a02c:  1f 05 00 71   cmp	w8, #0x1
0x10020a030:  81 02 00 54   b.ne	loc_10020a080 ; ⤵ 0x50
0x10020a034:  00 e4 00 6f   movi	v0.2d, #0
0x10020a038:  ff 73 00 b9   str	wzr, [sp, #0x70]
0x10020a03c:  e0 83 02 ad   stp	q0, q0, [sp, #0x50]
0x10020a040:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x10020a044:  e0 83 00 ad   stp	q0, q0, [sp, #0x10]
0x10020a048:  68 12 43 b8   ldur	w8, [x19, #0x31]
0x10020a04c:  e8 13 01 b8   stur	w8, [sp, #0x11]
0x10020a050:  68 52 43 78   ldurh	w8, [x19, #0x35]
0x10020a054:  e8 53 01 78   sturh	w8, [sp, #0x15]
0x10020a058:  68 e2 40 39   ldrb	w8, [x19, #0x38]
0x10020a05c:  e8 5f 00 39   strb	w8, [sp, #0x17]
0x10020a060:  68 92 43 b8   ldur	w8, [x19, #0x39]
0x10020a064:  e8 1b 00 b9   str	w8, [sp, #0x18]
0x10020a068:  68 d2 43 78   ldurh	w8, [x19, #0x3d]
0x10020a06c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10020a070:  e0 43 00 91   add	x0, sp, #0x10
0x10020a074:  c1 01 80 52   mov	w1, #0xe
0x10020a078:  28 bc fb 97   bl	0x1000f9118
0x10020a07c:  f6 03 19 aa   mov	x22, x25
0x10020a080:  ; loc_10020a080
0x10020a080:  55 01 00 34   cbz	w21, loc_10020a0a8 ; ⤵ 0x28
0x10020a084:  ; loc_10020a084
0x10020a084:  bf fa 0a 71   cmp	w21, #0x2be
0x10020a088:  e0 07 00 54   b.eq	loc_10020a184 ; ⤵ 0xfc
0x10020a08c:  40 00 80 52   mov	w0, #0x2
0x10020a090:  41 08 80 52   mov	w1, #0x42
0x10020a094:  2c 69 fb 97   bl	0x1000e4544
0x10020a098:  60 07 00 34   cbz	w0, loc_10020a184 ; ⤵ 0xec
0x10020a09c:  f3 05 00 b4   cbz	x19, loc_10020a158 ; ⤵ 0xbc
0x10020a0a0:  68 02 40 79   ldrh	w8, [x19]
0x10020a0a4:  2e 00 00 14   b	loc_10020a15c ; ⤵ 0xb8
0x10020a0a8:  ; loc_10020a0a8
0x10020a0a8:  68 1a 41 39   ldrb	w8, [x19, #0x46]
0x10020a0ac:  1f 05 00 71   cmp	w8, #0x1
0x10020a0b0:  01 01 00 54   b.ne	loc_10020a0d0 ; ⤵ 0x20
0x10020a0b4:  28 45 00 d0   adrp	x8, 0x100ab0000
0x10020a0b8:  09 a5 4d 39   ldrb	w9, [x8, #0x369]
0x10020a0bc:  29 11 1e 12   and	w9, w9, #0x7c
0x10020a0c0:  09 a5 0d 39   strb	w9, [x8, #0x369]
0x10020a0c4:  00 00 80 52   mov	w0, #0
0x10020a0c8:  8f 85 ff 97   bl	0x1001eb704
0x10020a0cc:  41 00 00 14   b	loc_10020a1d0 ; ⤵ 0x104
0x10020a0d0:  ; loc_10020a0d0
0x10020a0d0:  68 8a 45 39   ldrb	w8, [x19, #0x162]
0x10020a0d4:  c8 05 00 36   tbz	w8, #0, loc_10020a18c ; ⤵ 0xb8
0x10020a0d8:  00 00 80 52   mov	w0, #0
0x10020a0dc:  41 08 80 52   mov	w1, #0x42
0x10020a0e0:  19 69 fb 97   bl	0x1000e4544
0x10020a0e4:  40 03 00 34   cbz	w0, loc_10020a14c ; ⤵ 0x68
0x10020a0e8:  68 8e 45 39   ldrb	w8, [x19, #0x163]
0x10020a0ec:  e8 03 00 f9   str	x8, [sp]
0x10020a0f0:  40 37 00 90   adrp	x0, 0x1008f2000
0x10020a0f4:  00 90 11 91   add	x0, x0, #0x464 ; "FastLEConnection:Skipping startLinkEncryption, pendingAuth=%d"
0x10020a0f8:  2b ec 00 94   bl	0x1002451a4
0x10020a0fc:  40 08 80 52   mov	w0, #0x42
0x10020a100:  86 d6 fa 97   bl	0x1000bfb18
0x10020a104:  f7 03 00 aa   mov	x23, x0
0x10020a108:  01 00 80 52   mov	w1, #0
0x10020a10c:  49 15 18 94   bl	j__os_log_type_enabled
0x10020a110:  e0 01 00 34   cbz	w0, loc_10020a14c ; ⤵ 0x3c
0x10020a114:  42 eb 00 94   bl	0x100244e1c
0x10020a118:  28 34 00 f0   adrp	x8, 0x100891000
0x10020a11c:  00 65 44 fd   ldr	d0, [x8, #0x8c8]
0x10020a120:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10020a124:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10020a128:  a0 ef ff d0   adrp	x0, 0x100000000
0x10020a12c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10020a130:  e3 39 00 b0   adrp	x3, 0x100947000
0x10020a134:  63 90 35 91   add	x3, x3, #0xd64 ; " %{public}s"
0x10020a138:  e4 43 00 91   add	x4, sp, #0x10
0x10020a13c:  e1 03 17 aa   mov	x1, x23
0x10020a140:  02 00 80 52   mov	w2, #0
0x10020a144:  85 01 80 52   mov	w5, #0xc
0x10020a148:  82 10 18 94   bl	j___os_log_impl
0x10020a14c:  ; loc_10020a14c
0x10020a14c:  68 8e 45 39   ldrb	w8, [x19, #0x163]
0x10020a150:  68 f6 01 39   strb	w8, [x19, #0x7d]
0x10020a154:  1f 00 00 14   b	loc_10020a1d0 ; ⤵ 0x7c
0x10020a158:  ; loc_10020a158
0x10020a158:  08 00 80 52   mov	w8, #0
0x10020a15c:  ; loc_10020a15c
0x10020a15c:  f5 23 00 a9   stp	x21, x8, [sp]
0x10020a160:  40 37 00 90   adrp	x0, 0x1008f2000
0x10020a164:  00 88 12 91   add	x0, x0, #0x4a2 ; "GAP_ConnectionCompleteCallback with error stats %! on lm 0x%x"
0x10020a168:  0f ec 00 94   bl	0x1002451a4
0x10020a16c:  40 08 80 52   mov	w0, #0x42
0x10020a170:  6a d6 fa 97   bl	0x1000bfb18
0x10020a174:  f7 03 00 aa   mov	x23, x0
0x10020a178:  01 02 80 52   mov	w1, #0x10
0x10020a17c:  2d 15 18 94   bl	j__os_log_type_enabled
0x10020a180:  40 0f 00 35   cbnz	w0, loc_10020a368 ; ⤵ 0x1e8
0x10020a184:  ; loc_10020a184
0x10020a184:  17 00 80 52   mov	w23, #0
0x10020a188:  13 00 00 14   b	loc_10020a1d4 ; ⤵ 0x4c
0x10020a18c:  ; loc_10020a18c
0x10020a18c:  e0 03 13 aa   mov	x0, x19
0x10020a190:  aa 02 00 94   bl	0x10020ac38
0x10020a194:  40 0e 00 34   cbz	w0, loc_10020a35c ; ⤵ 0x1c8
0x10020a198:  40 00 80 52   mov	w0, #0x2
0x10020a19c:  41 08 80 52   mov	w1, #0x42
0x10020a1a0:  e9 68 fb 97   bl	0x1000e4544
0x10020a1a4:  60 01 00 34   cbz	w0, loc_10020a1d0 ; ⤵ 0x2c
0x10020a1a8:  ff 03 00 f9   str	xzr, [sp]
0x10020a1ac:  40 37 00 90   adrp	x0, 0x1008f2000
0x10020a1b0:  00 f8 10 91   add	x0, x0, #0x43e ; "Encryption start fails with status %!"
0x10020a1b4:  fc eb 00 94   bl	0x1002451a4
0x10020a1b8:  40 08 80 52   mov	w0, #0x42
0x10020a1bc:  57 d6 fa 97   bl	0x1000bfb18
0x10020a1c0:  f7 03 00 aa   mov	x23, x0
0x10020a1c4:  01 02 80 52   mov	w1, #0x10
0x10020a1c8:  1a 15 18 94   bl	j__os_log_type_enabled
0x10020a1cc:  a0 0d 00 35   cbnz	w0, loc_10020a380 ; ⤵ 0x1b4
0x10020a1d0:  ; loc_10020a1d0
0x10020a1d0:  37 00 80 52   mov	w23, #0x1
0x10020a1d4:  ; loc_10020a1d4
0x10020a1d4:  38 45 00 d0   adrp	x24, 0x100ab0000
0x10020a1d8:  08 43 44 79   ldrh	w8, [x24, #0x220]
0x10020a1dc:  c8 02 00 34   cbz	w8, loc_10020a234 ; ⤵ 0x58
0x10020a1e0:  19 00 80 52   mov	w25, #0
0x10020a1e4:  3a 45 00 d0   adrp	x26, 0x100ab0000
0x10020a1e8:  5a a3 08 91   add	x26, x26, #0x228
0x10020a1ec:  ; loc_10020a1ec
0x10020a1ec:  29 1f 40 92   and	x9, x25, #0xff
0x10020a1f0:  49 7b 69 f8   ldr	x9, [x26, x9, lsl #0x3]
0x10020a1f4:  29 01 40 f9   ldr	x9, [x9]
0x10020a1f8:  69 01 00 b4   cbz	x9, loc_10020a224 ; ⤵ 0x2c
0x10020a1fc:  73 00 00 b4   cbz	x19, loc_10020a208 ; ⤵ 0xc
0x10020a200:  64 8a 45 39   ldrb	w4, [x19, #0x162]
0x10020a204:  02 00 00 14   b	loc_10020a20c ; ⤵ 0x8
0x10020a208:  ; loc_10020a208
0x10020a208:  04 00 80 52   mov	w4, #0
0x10020a20c:  ; loc_10020a20c
0x10020a20c:  e0 03 16 aa   mov	x0, x22
0x10020a210:  e1 03 13 aa   mov	x1, x19
0x10020a214:  e2 03 15 aa   mov	x2, x21
0x10020a218:  e3 03 14 aa   mov	x3, x20
0x10020a21c:  3f 09 3f d6   blraaz	x9
0x10020a220:  08 43 44 79   ldrh	w8, [x24, #0x220]
0x10020a224:  ; loc_10020a224
0x10020a224:  39 07 00 11   add	w25, w25, #0x1
0x10020a228:  09 3d 00 12   and	w9, w8, #0xffff
0x10020a22c:  3f 01 39 6b   cmp	w9, w25, uxtb
0x10020a230:  e8 fd ff 54   b.hi	loc_10020a1ec ; ⤴ -0x44
0x10020a234:  ; loc_10020a234
0x10020a234:  b7 07 00 34   cbz	w23, loc_10020a328 ; ⤵ 0xf4
0x10020a238:  68 1a 41 39   ldrb	w8, [x19, #0x46]
0x10020a23c:  1f 05 00 71   cmp	w8, #0x1
0x10020a240:  41 07 00 54   b.ne	loc_10020a328 ; ⤵ 0xe8
0x10020a244:  68 86 40 b9   ldr	w8, [x19, #0x84]
0x10020a248:  48 00 00 34   cbz	w8, loc_10020a250 ; ⤵ 0x8
0x10020a24c:  30 ec 00 94   bl	0x10024530c
0x10020a250:  ; loc_10020a250
0x10020a250:  68 8a 45 39   ldrb	w8, [x19, #0x162]
0x10020a254:  a8 03 00 36   tbz	w8, #0, loc_10020a2c8 ; ⤵ 0x74
0x10020a258:  00 00 80 52   mov	w0, #0
0x10020a25c:  41 08 80 52   mov	w1, #0x42
0x10020a260:  b9 68 fb 97   bl	0x1000e4544
0x10020a264:  20 06 00 34   cbz	w0, loc_10020a328 ; ⤵ 0xc4
0x10020a268:  40 37 00 90   adrp	x0, 0x1008f2000
0x10020a26c:  00 80 13 91   add	x0, x0, #0x4e0 ; "FastLEConnection:Skipping LE_GAP_ReadRemoteVersionInformation"
0x10020a270:  cd eb 00 94   bl	0x1002451a4
0x10020a274:  40 08 80 52   mov	w0, #0x42
0x10020a278:  28 d6 fa 97   bl	0x1000bfb18
0x10020a27c:  f3 03 00 aa   mov	x19, x0
0x10020a280:  01 00 80 52   mov	w1, #0
0x10020a284:  eb 14 18 94   bl	j__os_log_type_enabled
0x10020a288:  00 05 00 34   cbz	w0, loc_10020a328 ; ⤵ 0xa0
0x10020a28c:  e4 ea 00 94   bl	0x100244e1c
0x10020a290:  28 34 00 f0   adrp	x8, 0x100891000
0x10020a294:  00 65 44 fd   ldr	d0, [x8, #0x8c8]
0x10020a298:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10020a29c:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10020a2a0:  a0 ef ff d0   adrp	x0, 0x100000000
0x10020a2a4:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10020a2a8:  e3 39 00 b0   adrp	x3, 0x100947000
0x10020a2ac:  63 90 35 91   add	x3, x3, #0xd64 ; " %{public}s"
0x10020a2b0:  e4 43 00 91   add	x4, sp, #0x10
0x10020a2b4:  e1 03 13 aa   mov	x1, x19
0x10020a2b8:  02 00 80 52   mov	w2, #0
0x10020a2bc:  85 01 80 52   mov	w5, #0xc
0x10020a2c0:  24 10 18 94   bl	j___os_log_impl
0x10020a2c4:  19 00 00 14   b	loc_10020a328 ; ⤵ 0x64
0x10020a2c8:  ; loc_10020a2c8
0x10020a2c8:  e0 03 13 aa   mov	x0, x19
0x10020a2cc:  d5 fd ff 97   bl	0x100209a20
0x10020a2d0:  80 02 00 34   cbz	w0, loc_10020a320 ; ⤵ 0x50
0x10020a2d4:  f4 03 00 aa   mov	x20, x0
0x10020a2d8:  40 00 80 52   mov	w0, #0x2
0x10020a2dc:  41 08 80 52   mov	w1, #0x42
0x10020a2e0:  99 68 fb 97   bl	0x1000e4544
0x10020a2e4:  60 01 00 34   cbz	w0, loc_10020a310 ; ⤵ 0x2c
0x10020a2e8:  f4 03 00 f9   str	x20, [sp]
0x10020a2ec:  40 37 00 90   adrp	x0, 0x1008f2000
0x10020a2f0:  00 54 0c 91   add	x0, x0, #0x315 ; "LE_GAP_ReadRemoteVersionInformation failed %!"
0x10020a2f4:  ac eb 00 94   bl	0x1002451a4
0x10020a2f8:  40 08 80 52   mov	w0, #0x42
0x10020a2fc:  07 d6 fa 97   bl	0x1000bfb18
0x10020a300:  f5 03 00 aa   mov	x21, x0
0x10020a304:  01 02 80 52   mov	w1, #0x10
0x10020a308:  ca 14 18 94   bl	j__os_log_type_enabled
0x10020a30c:  40 03 00 35   cbnz	w0, loc_10020a374 ; ⤵ 0x68
0x10020a310:  ; loc_10020a310
0x10020a310:  e0 03 13 aa   mov	x0, x19
0x10020a314:  e1 03 14 aa   mov	x1, x20
0x10020a318:  e9 fd ff 97   bl	0x100209abc
0x10020a31c:  03 00 00 14   b	loc_10020a328 ; ⤵ 0xc
0x10020a320:  ; loc_10020a320
0x10020a320:  28 00 80 52   mov	w8, #0x1
0x10020a324:  68 86 00 b9   str	w8, [x19, #0x84]
0x10020a328:  ; loc_10020a328
0x10020a328:  a8 83 5b f8   ldur	x8, [fp, #-0x48]
0x10020a32c:  49 41 00 90   adrp	x9, 0x100a32000
0x10020a330:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10020a334:  29 01 40 f9   ldr	x9, [x9]
0x10020a338:  3f 01 08 eb   cmp	x9, x8
0x10020a33c:  81 02 00 54   b.ne	loc_10020a38c ; ⤵ 0x50
0x10020a340:  fd 7b 4c a9   ldp	fp, lr, [sp, #0xc0]
0x10020a344:  f4 4f 4b a9   ldp	x20, x19, [sp, #0xb0]
0x10020a348:  f6 57 4a a9   ldp	x22, x21, [sp, #0xa0]
0x10020a34c:  f8 5f 49 a9   ldp	x24, x23, [sp, #0x90]
0x10020a350:  fa 67 48 a9   ldp	x26, x25, [sp, #0x80]
0x10020a354:  ff 43 03 91   add	sp, sp, #0xd0
0x10020a358:  ff 0f 5f d6   retab
0x10020a35c:  ; loc_10020a35c
0x10020a35c:  37 00 80 52   mov	w23, #0x1
0x10020a360:  77 f6 01 39   strb	w23, [x19, #0x7d]
0x10020a364:  9c ff ff 17   b	loc_10020a1d4 ; ⤴ -0x190
0x10020a368:  ; loc_10020a368
0x10020a368:  e0 03 17 aa   mov	x0, x23
0x10020a36c:  1e b7 16 94   bl	0x1007b7fe4
0x10020a370:  85 ff ff 17   b	loc_10020a184 ; ⤴ -0x1ec
0x10020a374:  ; loc_10020a374
0x10020a374:  e0 03 15 aa   mov	x0, x21
0x10020a378:  1b b7 16 94   bl	0x1007b7fe4
0x10020a37c:  e5 ff ff 17   b	loc_10020a310 ; ⤴ -0x6c
0x10020a380:  ; loc_10020a380
0x10020a380:  e0 03 17 aa   mov	x0, x23
0x10020a384:  18 b7 16 94   bl	0x1007b7fe4
0x10020a388:  92 ff ff 17   b	loc_10020a1d0 ; ⤴ -0x1b8
0x10020a38c:  ; loc_10020a38c
0x10020a38c:  c1 0f 18 94   bl	j____stack_chk_fail

