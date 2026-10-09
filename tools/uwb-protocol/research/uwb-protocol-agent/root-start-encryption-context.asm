0x10020a000:  85 01 80 52   mov	w5, #0xc
0x10020a004:  d3 10 18 94   bl	j___os_log_impl
0x10020a008:  28 00 80 52   mov	w8, #0x1
0x10020a00c:  68 8a 05 39   strb	w8, [x19, #0x162]
0x10020a010:  e0 03 17 aa   mov	x0, x23
0x10020a014:  37 02 00 94   bl	0x10020a8f0
0x10020a018:  60 8e 05 39   strb	w0, [x19, #0x163]
0x10020a01c:  e0 03 17 aa   mov	x0, x23
0x10020a020:  9d 02 00 94   bl	0x10020aa94
0x10020a024:  60 92 05 39   strb	w0, [x19, #0x164]
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
0x10020a1ec:  29 1f 40 92   and	x9, x25, #0xff
0x10020a1f0:  49 7b 69 f8   ldr	x9, [x26, x9, lsl #0x3]
0x10020a1f4:  29 01 40 f9   ldr	x9, [x9]
0x10020a1f8:  69 01 00 b4   cbz	x9, loc_10020a224 ; ⤵ 0x2c
0x10020a1fc:  73 00 00 b4   cbz	x19, loc_10020a208 ; ⤵ 0xc
0x10020a200:  64 8a 45 39   ldrb	w4, [x19, #0x162]
0x10020a204:  02 00 00 14   b	loc_10020a20c ; ⤵ 0x8

