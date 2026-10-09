0x100bd3f90:  11 09 3f d7   blraa	x8, x17
0x100bd3f94:  e0 03 18 aa   mov	x0, x24
0x100bd3f98:  e1 03 17 aa   mov	x1, x23
0x100bd3f9c:  e2 03 14 aa   mov	x2, x20
0x100bd3fa0:  82 43 d1 97   bl	0x100024da8
0x100bd3fa4:  68 1b 80 b9   ldrsw	x8, [x27, #0x18]
0x100bd3fa8:  f9 02 08 8b   add	x25, x23, x8
0x100bd3fac:  34 07 40 f9   ldr	x20, [x25, #0x8]
0x100bd3fb0:  88 fe 7c d3   lsr	x8, x20, #0x3c
0x100bd3fb4:  1f 3d 00 f1   cmp	x8, #0xf
0x100bd3fb8:  bc 03 12 f8   stur	x28, [fp, #-0xe0]
0x100bd3fbc:  23 02 00 54   b.lo	loc_100bd4000 ; ⤵ 0x44
0x100bd3fc0:  fc 03 1b aa   mov	x28, x27
0x100bd3fc4:  b0 2b 00 90   adrp	x16, 0x101147000
0x100bd3fc8:  10 82 00 91   add	x16, x16, #0x20
0x100bd3fcc:  d1 9a 87 d2   mov	x17, #0x3cd6
0x100bd3fd0:  30 02 c1 da   pacia	x16, x17
0x100bd3fd4:  f4 03 10 aa   mov	x20, x16
0x100bd3fd8:  e0 03 18 aa   mov	x0, x24
0x100bd3fdc:  e1 03 10 aa   mov	x1, x16
0x100bd3fe0:  e6 43 d1 97   bl	0x100024f78
0x100bd3fe4:  e0 03 17 aa   mov	x0, x23
0x100bd3fe8:  e1 03 14 aa   mov	x1, x20
0x100bd3fec:  e3 43 d1 97   bl	0x100024f78
0x100bd3ff0:  21 00 80 52   mov	w1, #0x1
0x100bd3ff4:  b4 ef 75 a9   ldp	x20, x27, [fp, #-0xa8]
0x100bd3ff8:  b6 83 51 f8   ldur	x22, [fp, #-0xe8]
0x100bd3ffc:  ce 00 00 14   b	loc_100bd4334 ; ⤵ 0x338
0x100bd4000:  ; loc_100bd4000
0x100bd4000:  36 03 40 f9   ldr	x22, [x25]
0x100bd4004:  60 ec 8d d2   mov	x0, #0x6f63
0x100bd4008:  c0 cd ad f2   movk	x0, #0x6e6e, lsl #0x10
0x100bd400c:  a0 6c cc f2   movk	x0, #0x6365, lsl #0x20
0x100bd4010:  80 0e e0 f2   movk	x0, #0x74, lsl #0x30
0x100bd4014:  01 e0 fc d2   mov	x1, #0xe700000000000000
0x100bd4018:  b6 d2 26 94   bl	j__$sSS10FindMyBaseE8utf8Data10Foundation0E0Vvg
0x100bd401c:  fb 03 00 aa   mov	x27, x0
0x100bd4020:  f8 03 01 aa   mov	x24, x1
0x100bd4024:  e0 03 16 aa   mov	x0, x22
0x100bd4028:  e1 03 14 aa   mov	x1, x20
0x100bd402c:  e2 03 1b aa   mov	x2, x27
0x100bd4030:  e3 03 18 aa   mov	x3, x24
0x100bd4034:  04 04 80 52   mov	w4, #0x20
0x100bd4038:  b5 83 53 f8   ldur	x21, [fp, #-0xc8]
0x100bd403c:  7f 73 fe 97   bl	0x100b70e38
0x100bd4040:  f6 03 15 aa   mov	x22, x21
0x100bd4044:  75 64 01 b5   cbnz	x21, loc_100bd6cd0 ; ⤵ 0x2c8c
0x100bd4048:  f4 03 00 aa   mov	x20, x0
0x100bd404c:  f7 03 01 aa   mov	x23, x1
0x100bd4050:  28 fc 7e d3   lsr	x8, x1, #0x3e
0x100bd4054:  1f 05 00 71   cmp	w8, #0x1
0x100bd4058:  a9 83 00 d1   sub	x9, fp, #0x20
0x100bd405c:  33 01 50 f8   ldur	x19, [x9, #-0x100]
0x100bd4060:  8c 00 00 54   b.gt	loc_100bd4070 ; ⤵ 0x10
0x100bd4064:  28 01 00 35   cbnz	w8, loc_100bd4088 ; ⤵ 0x24
0x100bd4068:  e9 de 70 d3   ubfx	x9, x23, #0x30, #0x8
0x100bd406c:  0b 00 00 14   b	loc_100bd4098 ; ⤵ 0x2c
0x100bd4070:  ; loc_100bd4070
0x100bd4070:  1f 09 00 71   cmp	w8, #0x2
0x100bd4074:  c1 60 01 54   b.ne	loc_100bd6c8c ; ⤵ 0x2c18
0x100bd4078:  8a 26 41 a9   ldp	x10, x9, [x20, #0x10]
0x100bd407c:  29 01 0a eb   subs	x9, x9, x10
0x100bd4080:  c7 00 00 54   b.vc	loc_100bd4098 ; ⤵ 0x18
0x100bd4084:  9b 09 00 14   b	loc_100bd66f0 ; ⤵ 0x266c
0x100bd4088:  ; loc_100bd4088
0x100bd4088:  89 fe 60 d3   lsr	x9, x20, #0x20
0x100bd408c:  29 01 14 6b   subs	w9, w9, w20
0x100bd4090:  26 33 01 54   b.vs	loc_100bd66f4 ; ⤵ 0x2664
0x100bd4094:  29 7d 40 93   sxtw	x9, w9
0x100bd4098:  ; loc_100bd4098
0x100bd4098:  3f 81 00 f1   cmp	x9, #0x20
0x100bd409c:  21 3b 01 54   b.ne	loc_100bd6800 ; ⤵ 0x2764
0x100bd40a0:  e0 03 1b aa   mov	x0, x27
0x100bd40a4:  e1 03 18 aa   mov	x1, x24
0x100bd40a8:  be 0b d1 97   bl	0x100016fa0
0x100bd40ac:  a8 03 51 f8   ldur	x8, [fp, #-0xf0]
0x100bd40b0:  18 01 40 f9   ldr	x24, [x8]
0x100bd40b4:  a8 68 00 d0   adrp	x8, 0x1018ea000
0x100bd40b8:  08 81 2b 91   add	x8, x8, #0xae0 ; data_1018eaae0 (__DATA_CONST.__const)
0x100bd40bc:  68 1e 00 f9   str	x8, [x19, #0x38]
0x100bd40c0:  e8 60 d1 97   bl	0x10002c460
0x100bd40c4:  60 22 00 f9   str	x0, [x19, #0x40]
0x100bd40c8:  78 12 00 f9   str	x24, [x19, #0x20]
0x100bd40cc:  20 07 41 a9   ldp	x0, x1, [x25, #0x10]
0x100bd40d0:  02 00 80 52   mov	w2, #0
0x100bd40d4:  03 00 80 52   mov	w3, #0
0x100bd40d8:  f5 03 16 aa   mov	x21, x22
0x100bd40dc:  de 76 fe 97   bl	0x100b71c54
0x100bd40e0:  95 4b 01 b5   cbnz	x21, loc_100bd6a50 ; ⤵ 0x2970
0x100bd40e4:  f6 03 00 aa   mov	x22, x0
0x100bd40e8:  01 00 80 52   mov	w1, #0
0x100bd40ec:  42 00 80 52   mov	w2, #0x2
0x100bd40f0:  a1 69 fe 97   bl	0x100b6e774
0x100bd40f4:  b5 83 13 f8   stur	x21, [fp, #-0xc8]
0x100bd40f8:  f5 4a 01 b5   cbnz	x21, loc_100bd6a54 ; ⤵ 0x295c
0x100bd40fc:  f8 03 00 aa   mov	x24, x0
0x100bd4100:  fb 03 01 aa   mov	x27, x1
0x100bd4104:  e0 03 16 aa   mov	x0, x22
0x100bd4108:  ea da 26 94   bl	j__CCECCryptorRelease
0x100bd410c:  7a ff 7e d3   lsr	x26, x27, #0x3e
0x100bd4110:  5f 07 00 71   cmp	w26, #0x1
0x100bd4114:  8c 00 00 54   b.gt	loc_100bd4124 ; ⤵ 0x10
0x100bd4118:  3a 01 00 35   cbnz	w26, loc_100bd413c ; ⤵ 0x24
0x100bd411c:  68 df 70 d3   ubfx	x8, x27, #0x30, #0x8
0x100bd4120:  0b 00 00 14   b	loc_100bd414c ; ⤵ 0x2c
0x100bd4124:  ; loc_100bd4124
0x100bd4124:  5f 0b 00 71   cmp	w26, #0x2
0x100bd4128:  c1 56 01 54   b.ne	loc_100bd6c00 ; ⤵ 0x2ad8
0x100bd412c:  09 23 41 a9   ldp	x9, x8, [x24, #0x10]
0x100bd4130:  08 01 09 eb   subs	x8, x8, x9
0x100bd4134:  c7 00 00 54   b.vc	loc_100bd414c ; ⤵ 0x18
0x100bd4138:  73 09 00 14   b	loc_100bd6704 ; ⤵ 0x25cc
0x100bd413c:  ; loc_100bd413c
0x100bd413c:  08 ff 60 d3   lsr	x8, x24, #0x20
0x100bd4140:  08 01 18 6b   subs	w8, w8, w24
0x100bd4144:  c6 2d 01 54   b.vs	loc_100bd66fc ; ⤵ 0x25b8
0x100bd4148:  08 7d 40 93   sxtw	x8, w8
0x100bd414c:  ; loc_100bd414c
0x100bd414c:  1f 71 00 f1   cmp	x8, #0x1c
0x100bd4150:  01 38 01 54   b.ne	loc_100bd6850 ; ⤵ 0x2700
0x100bd4154:  ba 00 00 34   cbz	w26, loc_100bd4168 ; ⤵ 0x14
0x100bd4158:  5f 0b 00 71   cmp	w26, #0x2
0x100bd415c:  c1 00 00 54   b.ne	loc_100bd4174 ; ⤵ 0x18
0x100bd4160:  16 67 41 a9   ldp	x22, x25, [x24, #0x10]
0x100bd4164:  06 00 00 14   b	loc_100bd417c ; ⤵ 0x18
0x100bd4168:  ; loc_100bd4168
0x100bd4168:  16 00 80 d2   mov	x22, #0
0x100bd416c:  79 df 70 d3   ubfx	x25, x27, #0x30, #0x8
0x100bd4170:  06 00 00 14   b	loc_100bd4188 ; ⤵ 0x18
0x100bd4174:  ; loc_100bd4174
0x100bd4174:  16 7f 40 93   sxtw	x22, w24
0x100bd4178:  19 ff 60 93   asr	x25, x24, #0x20
0x100bd417c:  ; loc_100bd417c
0x100bd417c:  e0 03 18 aa   mov	x0, x24
0x100bd4180:  e1 03 1b aa   mov	x1, x27
0x100bd4184:  1c 13 d1 97   bl	0x100018df4
0x100bd4188:  ; loc_100bd4188
0x100bd4188:  e0 03 16 aa   mov	x0, x22
0x100bd418c:  e1 03 19 aa   mov	x1, x25
0x100bd4190:  e2 03 18 aa   mov	x2, x24
0x100bd4194:  e3 03 1b aa   mov	x3, x27
0x100bd4198:  81 74 d1 97   bl	0x10003139c
0x100bd419c:  1f 14 00 f1   cmp	x0, #0x5
0x100bd41a0:  a8 23 01 d1   sub	x8, fp, #0x48
0x100bd41a4:  14 01 10 f8   stur	x20, [x8, #-0x100]
0x100bd41a8:  08 01 00 54   b.hi	loc_100bd41c8 ; ⤵ 0x20
0x100bd41ac:  f4 03 17 aa   mov	x20, x23
0x100bd41b0:  5f 0b 00 71   cmp	w26, #0x2
0x100bd41b4:  80 01 00 54   b.eq	loc_100bd41e4 ; ⤵ 0x30
0x100bd41b8:  5f 07 00 71   cmp	w26, #0x1
0x100bd41bc:  81 01 00 54   b.ne	loc_100bd41ec ; ⤵ 0x30

