
sub_10092507c:
0x10092507c:  08 1c 00 12   and	w8, w0, #0xff
0x100925080:  1f 0d 00 71   cmp	w8, #0x3
0x100925084:  2d 06 00 54   b.le	loc_100925148 ; ⤵ 0xc4
0x100925088:  e9 cd 8d d2   mov	x9, #0x6e6f
0x10092508c:  89 2c ac f2   movk	x9, #0x6164, lsl #0x10
0x100925090:  49 2e cf f2   movk	x9, #0x7972, lsl #0x20
0x100925094:  09 c0 fd f2   movk	x9, #0xee00, lsl #0x30
0x100925098:  ca e5 8e d2   mov	x10, #0x772e
0x10092509c:  2a 8d ad f2   movk	x10, #0x6c69, lsl #0x10
0x1009250a0:  8a 6c ca f2   movk	x10, #0x5364, lsl #0x20
0x1009250a4:  aa 6c ec f2   movk	x10, #0x6365, lsl #0x30
0x1009250a8:  1f 1d 00 71   cmp	w8, #0x7
0x1009250ac:  cb 05 8d d2   mov	x11, #0x682e
0x1009250b0:  2b cd ad f2   movk	x11, #0x6e69, lsl #0x10
0x1009250b4:  8b 4e c8 f2   movk	x11, #0x4274, lsl #0x20
0x1009250b8:  2b 6c ee f2   movk	x11, #0x7361, lsl #0x30
0x1009250bc:  ac 8c 8c d2   mov	x12, #0x6465
0x1009250c0:  0c 40 fd f2   movk	x12, #0xea00, lsl #0x30
0x1009250c4:  cd ad 8d d2   mov	x13, #0x6d6e
0x1009250c8:  ad cc ad f2   movk	x13, #0x6e65, lsl #0x10
0x1009250cc:  8d 0e c0 f2   movk	x13, #0x74, lsl #0x20
0x1009250d0:  0d a0 fd f2   movk	x13, #0xed00, lsl #0x30
0x1009250d4:  ce 65 8d d2   mov	x14, #0x6b2e
0x1009250d8:  ae 2c af f2   movk	x14, #0x7965, lsl #0x10
0x1009250dc:  2e 88 cd f2   movk	x14, #0x6c41, lsl #0x20
0x1009250e0:  2e ed ec f2   movk	x14, #0x6769, lsl #0x30
0x1009250e4:  6b 01 8e 9a   csel	x11, x11, x14, eq
0x1009250e8:  8c 01 8d 9a   csel	x12, x12, x13, eq
0x1009250ec:  1f 19 00 71   cmp	w8, #0x6
0x1009250f0:  4a 01 8b 9a   csel	x10, x10, x11, eq
0x1009250f4:  29 01 8c 9a   csel	x9, x9, x12, eq
0x1009250f8:  0b 03 80 d2   mov	x11, #0x18
0x1009250fc:  0b 00 fa f2   movk	x11, #0xd000, lsl #0x30
0x100925100:  ac 51 00 d0   adrp	x12, 0x10135b000
0x100925104:  8c c1 2e 91   add	x12, x12, #0xbb0 ; ".successfulConnectionLTK"
0x100925108:  8c 81 00 d1   sub	x12, x12, #0x20
0x10092510c:  8c 01 41 b2   orr	x12, x12, #0x8000000000000000
0x100925110:  ad 2d 8c d2   mov	x13, #0x616d
0x100925114:  4d 2e af f2   movk	x13, #0x7972, lsl #0x10
0x100925118:  0d 80 fd f2   movk	x13, #0xec00, lsl #0x30
0x10092511c:  ce e5 8e d2   mov	x14, #0x772e
0x100925120:  2e 8d ad f2   movk	x14, #0x6c69, lsl #0x10
0x100925124:  8e 0c ca f2   movk	x14, #0x5064, lsl #0x20
0x100925128:  4e 2e ed f2   movk	x14, #0x6972, lsl #0x30
0x10092512c:  1f 11 00 71   cmp	w8, #0x4
0x100925130:  6b 01 8e 9a   csel	x11, x11, x14, eq
0x100925134:  8c 01 8d 9a   csel	x12, x12, x13, eq
0x100925138:  1f 15 00 71   cmp	w8, #0x5
0x10092513c:  40 c1 8b 9a   csel	x0, x10, x11, gt
0x100925140:  21 c1 8c 9a   csel	x1, x9, x12, gt
0x100925144:  c0 03 5f d6   ret
0x100925148:  ; loc_100925148
0x100925148:  09 00 fd d2   mov	x9, #0xe800000000000000
0x10092514c:  ca a5 8e d2   mov	x10, #0x752e
0x100925150:  ca 6d ad f2   movk	x10, #0x6b6e, lsl #0x10
0x100925154:  ca ed cd f2   movk	x10, #0x6f6e, lsl #0x20
0x100925158:  ea ce ed f2   movk	x10, #0x6e77, lsl #0x30
0x10092515c:  0b 2e 8c d2   mov	x11, #0x6170
0x100925160:  4b 2e ac f2   movk	x11, #0x6172, lsl #0x10
0x100925164:  8b ae cc f2   movk	x11, #0x6574, lsl #0x20
0x100925168:  8b ec fd f2   movk	x11, #0xef64, lsl #0x30
0x10092516c:  cc 85 8d d2   mov	x12, #0x6c2e
0x100925170:  2c 8c ae f2   movk	x12, #0x7461, lsl #0x10
0x100925174:  6c 0c cd f2   movk	x12, #0x6863, lsl #0x20
0x100925178:  6c aa ec f2   movk	x12, #0x6553, lsl #0x30
0x10092517c:  ad 51 00 d0   adrp	x13, 0x10135b000
0x100925180:  ad 41 2f 91   add	x13, x13, #0xbd0 ; ".successfulConnectionAddress"
0x100925184:  ad 81 00 d1   sub	x13, x13, #0x20
0x100925188:  ad 01 41 b2   orr	x13, x13, #0x8000000000000000
0x10092518c:  0e 03 80 d2   mov	x14, #0x18
0x100925190:  0e 00 fa f2   movk	x14, #0xd000, lsl #0x30
0x100925194:  ce 01 7e b2   orr	x14, x14, #0x4
0x100925198:  1f 09 00 71   cmp	w8, #0x2
0x10092519c:  8c 01 8e 9a   csel	x12, x12, x14, eq
0x1009251a0:  6b 01 8d 9a   csel	x11, x11, x13, eq
0x1009251a4:  ad 8c 8c d2   mov	x13, #0x6465
0x1009251a8:  0d 40 fd f2   movk	x13, #0xea00, lsl #0x30
0x1009251ac:  ad 01 38 91   add	x13, x13, #0xe00
0x1009251b0:  ce c5 8d d2   mov	x14, #0x6e2e
0x1009251b4:  ae 2c ac f2   movk	x14, #0x6165, lsl #0x10
0x1009251b8:  4e ee c9 f2   movk	x14, #0x4f72, lsl #0x20
0x1009251bc:  ee ce ed f2   movk	x14, #0x6e77, lsl #0x30
0x1009251c0:  1f 01 00 71   cmp	w8, #0
0x1009251c4:  4a 01 8e 9a   csel	x10, x10, x14, eq
0x1009251c8:  29 01 8d 9a   csel	x9, x9, x13, eq
0x1009251cc:  1f 05 00 71   cmp	w8, #0x1
0x1009251d0:  80 c1 8a 9a   csel	x0, x12, x10, gt
0x1009251d4:  61 c1 89 9a   csel	x1, x11, x9, gt
0x1009251d8:  c0 03 5f d6   ret

sub_1009251dc:
0x1009251dc:  7f 23 03 d5   pacibsp
0x1009251e0:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1009251e4:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1009251e8:  fd 43 00 91   add	fp, sp, #0x10
0x1009251ec:  f3 03 08 aa   mov	x19, x8
0x1009251f0:  00 00 40 39   ldrb	w0, [x0]
0x1009251f4:  a0 04 00 94   bl	0x100926474
0x1009251f8:  60 02 00 39   strb	w0, [x19]
0x1009251fc:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x100925200:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x100925204:  ff 0f 5f d6   retab

sub_100925208:
0x100925208:  7f 23 03 d5   pacibsp
0x10092520c:  f9 0f 1c f8   str	x25, [sp, #-0x40]!
0x100925210:  f8 5f 01 a9   stp	x24, x23, [sp, #0x10]
0x100925214:  f6 4f 02 a9   stp	x22, x19, [sp, #0x20]
0x100925218:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10092521c:  fd c3 00 91   add	fp, sp, #0x30
0x100925220:  f3 03 02 aa   mov	x19, x2
0x100925224:  f6 03 01 aa   mov	x22, x1
0x100925228:  f7 03 15 aa   mov	x23, x21
0x10092522c:  f8 03 00 aa   mov	x24, x0
0x100925230:  f9 03 08 aa   mov	x25, x8
0x100925234:  2b 07 00 94   bl	0x100926ee0
0x100925238:  e3 03 00 aa   mov	x3, x0
0x10092523c:  e8 03 19 aa   mov	x8, x25
0x100925240:  e0 03 18 aa   mov	x0, x24
0x100925244:  e1 03 16 aa   mov	x1, x22
0x100925248:  e2 03 13 aa   mov	x2, x19
0x10092524c:  f5 03 17 aa   mov	x21, x23
0x100925250:  33 35 28 94   bl	j__$sSYsSeRzs5UInt8V8RawValueSYRtzrlE4fromxs7Decoder_p_tKcfC
0x100925254:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x100925258:  f6 4f 42 a9   ldp	x22, x19, [sp, #0x20]
0x10092525c:  f8 5f 41 a9   ldp	x24, x23, [sp, #0x10]
0x100925260:  f9 07 44 f8   ldr	x25, [sp], #0x40
0x100925264:  ff 0f 5f d6   retab

sub_100925268:
0x100925268:  7f 23 03 d5   pacibsp
0x10092526c:  f8 5f bd a9   stp	x24, x23, [sp, #-0x30]!
0x100925270:  f6 4f 01 a9   stp	x22, x19, [sp, #0x10]
0x100925274:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x100925278:  fd 83 00 91   add	fp, sp, #0x20
0x10092527c:  f3 03 02 aa   mov	x19, x2
0x100925280:  f6 03 01 aa   mov	x22, x1
0x100925284:  f7 03 15 aa   mov	x23, x21
0x100925288:  f8 03 00 aa   mov	x24, x0
0x10092528c:  15 07 00 94   bl	0x100926ee0
0x100925290:  e3 03 00 aa   mov	x3, x0
0x100925294:  e0 03 18 aa   mov	x0, x24
0x100925298:  e1 03 16 aa   mov	x1, x22
0x10092529c:  e2 03 13 aa   mov	x2, x19
0x1009252a0:  f5 03 17 aa   mov	x21, x23
0x1009252a4:  f2 34 28 94   bl	j__$sSYsSERzs5UInt8V8RawValueSYRtzrlE6encode2toys7Encoder_p_tKF
0x1009252a8:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x1009252ac:  f6 4f 41 a9   ldp	x22, x19, [sp, #0x10]
0x1009252b0:  f8 5f c3 a8   ldp	x24, x23, [sp], #0x30
0x1009252b4:  ff 0f 5f d6   retab

sub_1009252b8:
0x1009252b8:  89 67 00 d0   adrp	x9, 0x101617000
0x1009252bc:  29 e1 3e 91   add	x9, x9, #0xfb8 ; _$ss20__StaticArrayStorageCN

