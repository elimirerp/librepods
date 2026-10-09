0x10016cd58:  ff 7b 00 79   strh	wzr, [sp, #0x3c]
0x10016cd5c:  ff 3b 00 b9   str	wzr, [sp, #0x38]
0x10016cd60:  ff bf 00 39   strb	wzr, [sp, #0x2f]
0x10016cd64:  88 42 40 39   ldrb	w8, [x20, #0x10]
0x10016cd68:  a0 83 5d f8   ldur	x0, [fp, #-0x28]
0x10016cd6c:  a2 e3 00 d1   sub	x2, fp, #0x38
0x10016cd70:  88 01 00 34   cbz	w8, loc_10016cda0 ; ⤵ 0x30
0x10016cd74:  e3 c3 00 91   add	x3, sp, #0x30
0x10016cd78:  a4 83 00 d1   sub	x4, fp, #0x20
0x10016cd7c:  e6 bf 00 91   add	x6, sp, #0x2f
0x10016cd80:  e1 03 14 aa   mov	x1, x20
0x10016cd84:  05 00 80 d2   mov	x5, #0
0x10016cd88:  b0 e1 ff 97   bl	0x100165448
0x10016cd8c:  0b 00 00 14   b	loc_10016cdb8 ; ⤵ 0x2c
0x10016cd90:  80 4e 80 52   mov	w0, #0x274
0x10016cd94:  d2 ff ff 17   b	loc_10016ccdc ; ⤴ -0xb8
0x10016cd98:  00 4d 80 52   mov	w0, #0x268
0x10016cd9c:  d0 ff ff 17   b	loc_10016ccdc ; ⤴ -0xc0
0x10016cda0:  ; loc_10016cda0
0x10016cda0:  e3 03 01 91   add	x3, sp, #0x40
0x10016cda4:  e4 e3 00 91   add	x4, sp, #0x38
0x10016cda8:  e5 c3 00 91   add	x5, sp, #0x30
0x10016cdac:  e6 bf 00 91   add	x6, sp, #0x2f
0x10016cdb0:  e1 03 14 aa   mov	x1, x20
0x10016cdb4:  fd f9 ff 97   bl	0x10016b5a8
0x10016cdb8:  ; loc_10016cdb8
0x10016cdb8:  20 f9 ff 35   cbnz	w0, loc_10016ccdc ; ⤴ -0xdc
0x10016cdbc:  00 e4 00 6f   movi	v0.2d, #0
0x10016cdc0:  e0 03 00 ad   stp	q0, q0, [sp]
0x10016cdc4:  e8 01 80 52   mov	w8, #0xf
0x10016cdc8:  e8 23 00 39   strb	w8, [sp, #0x8]
0x10016cdcc:  88 06 40 79   ldrh	w8, [x20, #0x2]
0x10016cdd0:  e8 0b 00 79   strh	w8, [sp, #0x4]
0x10016cdd4:  f3 0f 00 79   strh	w19, [sp, #0x6]
0x10016cdd8:  1f a1 10 71   cmp	w8, #0x428
0x10016cddc:  60 00 00 54   b.eq	loc_10016cde8 ; ⤵ 0xc
0x10016cde0:  1f 1d 10 71   cmp	w8, #0x407
0x10016cde4:  01 01 00 54   b.ne	loc_10016ce04 ; ⤵ 0x20
0x10016cde8:  ; loc_10016cde8
0x10016cde8:  f3 23 40 f9   ldr	x19, [sp, #0x40]
0x10016cdec:  53 00 00 b5   cbnz	x19, loc_10016cdf4 ; ⤵ 0x8
0x10016cdf0:  47 61 03 94   bl	0x10024530c
0x10016cdf4:  ; loc_10016cdf4
0x10016cdf4:  68 32 40 b9   ldr	w8, [x19, #0x30]
0x10016cdf8:  e8 3b 00 b9   str	w8, [sp, #0x38]
0x10016cdfc:  68 6a 40 79   ldrh	w8, [x19, #0x34]
0x10016ce00:  e8 7b 00 79   strh	w8, [sp, #0x3c]
0x10016ce04:  ; loc_10016ce04
0x10016ce04:  f3 03 00 91   mov	x19, sp
0x10016ce08:  88 4e 40 39   ldrb	w8, [x20, #0x13]
0x10016ce0c:  1f 1d 00 71   cmp	w8, #0x7
0x10016ce10:  4d 01 00 54   b.le	loc_10016ce38 ; ⤵ 0x28
0x10016ce14:  1f 21 00 71   cmp	w8, #0x8
0x10016ce18:  20 02 00 54   b.eq	loc_10016ce5c ; ⤵ 0x44
0x10016ce1c:  1f 25 00 71   cmp	w8, #0x9
0x10016ce20:  e0 03 00 54   b.eq	loc_10016ce9c ; ⤵ 0x7c
0x10016ce24:  1f 29 00 71   cmp	w8, #0xa
0x10016ce28:  41 05 00 54   b.ne	loc_10016ced0 ; ⤵ 0xa8
0x10016ce2c:  e8 bf 40 39   ldrb	w8, [sp, #0x2f]
0x10016ce30:  e8 43 00 39   strb	w8, [sp, #0x10]
0x10016ce34:  27 00 00 14   b	loc_10016ced0 ; ⤵ 0x9c
0x10016ce38:  ; loc_10016ce38
0x10016ce38:  1f 19 00 71   cmp	w8, #0x6
0x10016ce3c:  00 04 00 54   b.eq	loc_10016cebc ; ⤵ 0x80
0x10016ce40:  1f 1d 00 71   cmp	w8, #0x7
0x10016ce44:  61 04 00 54   b.ne	loc_10016ced0 ; ⤵ 0x8c
0x10016ce48:  e8 3b 40 b9   ldr	w8, [sp, #0x38]
0x10016ce4c:  68 02 01 b8   stur	w8, [x19, #0x10]
0x10016ce50:  e8 7b 40 79   ldrh	w8, [sp, #0x3c]
0x10016ce54:  68 42 01 78   sturh	w8, [x19, #0x14]
0x10016ce58:  1e 00 00 14   b	loc_10016ced0 ; ⤵ 0x78
0x10016ce5c:  ; loc_10016ce5c
0x10016ce5c:  88 06 40 79   ldrh	w8, [x20, #0x2]
0x10016ce60:  a9 01 84 52   mov	w9, #0x200d
0x10016ce64:  1f 01 09 6b   cmp	w8, w9
0x10016ce68:  00 01 00 54   b.eq	loc_10016ce88 ; ⤵ 0x20
0x10016ce6c:  69 08 84 52   mov	w9, #0x2043
0x10016ce70:  1f 01 09 6b   cmp	w8, w9
0x10016ce74:  a0 00 00 54   b.eq	loc_10016ce88 ; ⤵ 0x14
0x10016ce78:  a9 10 84 52   mov	w9, #0x2085
0x10016ce7c:  1f 01 09 6b   cmp	w8, w9
0x10016ce80:  40 00 00 54   b.eq	loc_10016ce88 ; ⤵ 0x8
0x10016ce84:  22 61 03 94   bl	0x10024530c
0x10016ce88:  ; loc_10016ce88
0x10016ce88:  e8 33 40 b9   ldr	w8, [sp, #0x30]
0x10016ce8c:  68 02 01 b8   stur	w8, [x19, #0x10]
0x10016ce90:  e8 33 43 b8   ldur	w8, [sp, #0x33]
0x10016ce94:  68 32 01 b8   stur	w8, [x19, #0x13]
0x10016ce98:  0e 00 00 14   b	loc_10016ced0 ; ⤵ 0x38
0x10016ce9c:  ; loc_10016ce9c
0x10016ce9c:  88 06 40 79   ldrh	w8, [x20, #0x2]
0x10016cea0:  89 0c 84 52   mov	w9, #0x2064
0x10016cea4:  1f 01 09 6b   cmp	w8, w9
0x10016cea8:  40 00 00 54   b.eq	loc_10016ceb0 ; ⤵ 0x8

