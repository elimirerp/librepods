
sub_10068c9d8:
0x10068c9d8:  7f 23 03 d5   pacibsp
0x10068c9dc:  ff c3 03 d1   sub	sp, sp, #0xf0
0x10068c9e0:  f8 5f 0b a9   stp	x24, x23, [sp, #0xb0]
0x10068c9e4:  f6 57 0c a9   stp	x22, x21, [sp, #0xc0]
0x10068c9e8:  f4 4f 0d a9   stp	x20, x19, [sp, #0xd0]
0x10068c9ec:  fd 7b 0e a9   stp	fp, lr, [sp, #0xe0]
0x10068c9f0:  fd 83 03 91   add	fp, sp, #0xe0
0x10068c9f4:  f6 03 02 aa   mov	x22, x2
0x10068c9f8:  f4 03 01 aa   mov	x20, x1
0x10068c9fc:  28 1d 00 d0   adrp	x8, 0x100a32000
0x10068ca00:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10068ca04:  08 01 40 f9   ldr	x8, [x8]
0x10068ca08:  a8 83 1c f8   stur	x8, [fp, #-0x38]
0x10068ca0c:  ff ff 01 a9   stp	xzr, xzr, [sp, #0x18]
0x10068ca10:  ff 17 00 f9   str	xzr, [sp, #0x28]
0x10068ca14:  a2 03 1a f8   stur	x2, [fp, #-0x60]
0x10068ca18:  42 10 00 f0   adrp	x2, 0x100897000
0x10068ca1c:  42 60 31 91   add	x2, x2, #0xc58
0x10068ca20:  00 e0 03 91   add	x0, x0, #0xf8
0x10068ca24:  a3 83 01 d1   sub	x3, fp, #0x60
0x10068ca28:  e4 83 01 91   add	x4, sp, #0x60
0x10068ca2c:  e1 03 16 aa   mov	x1, x22
0x10068ca30:  7e 14 00 94   bl	0x100691c28
0x10068ca34:  e8 03 00 aa   mov	x8, x0
0x10068ca38:  e0 63 00 91   add	x0, sp, #0x18
0x10068ca3c:  01 c1 00 91   add	x1, x8, #0x30
0x10068ca40:  a9 12 00 94   bl	0x1006914e4
0x10068ca44:  80 02 c0 3d   ldr	q0, [x20]
0x10068ca48:  e0 1b 80 3d   str	q0, [sp, #0x60]
0x10068ca4c:  88 12 40 b9   ldr	w8, [x20, #0x10]
0x10068ca50:  e8 73 00 b9   str	w8, [sp, #0x70]
0x10068ca54:  a0 83 01 d1   sub	x0, fp, #0x60
0x10068ca58:  e1 83 01 91   add	x1, sp, #0x60
0x10068ca5c:  9d fb 03 94   bl	0x10078b8d0
0x10068ca60:  f5 63 00 91   add	x21, sp, #0x18
0x10068ca64:  e0 63 00 91   add	x0, sp, #0x18
0x10068ca68:  a1 83 01 d1   sub	x1, fp, #0x60
0x10068ca6c:  2d 55 f7 97   bl	0x100461f20
0x10068ca70:  f3 03 00 aa   mov	x19, x0
0x10068ca74:  b7 22 00 91   add	x23, x21, #0x8
0x10068ca78:  28 22 00 b0   adrp	x8, 0x100ad1000
0x10068ca7c:  08 01 31 91   add	x8, x8, #0xc40
0x10068ca80:  15 01 40 f9   ldr	x21, [x8]
0x10068ca84:  e0 03 15 aa   mov	x0, x21
0x10068ca88:  21 00 80 52   mov	w1, #0x1
0x10068ca8c:  e9 0a 06 94   bl	j__os_log_type_enabled
0x10068ca90:  60 07 00 34   cbz	w0, loc_10068cb7c ; ⤵ 0xec
0x10068ca94:  bf d3 1b f8   stur	xzr, [fp, #-0x43]
0x10068ca98:  00 e4 00 6f   movi	v0.2d, #0
0x10068ca9c:  a0 03 3d ad   stp	q0, q0, [fp, #-0x60]
0x10068caa0:  a1 83 01 d1   sub	x1, fp, #0x60
0x10068caa4:  e0 03 16 aa   mov	x0, x22
0x10068caa8:  16 0d 06 94   bl	j__uuid_unparse_upper
0x10068caac:  f6 03 00 91   mov	x22, sp
0x10068cab0:  e0 03 00 91   mov	x0, sp
0x10068cab4:  a1 83 01 d1   sub	x1, fp, #0x60
0x10068cab8:  0b d8 e5 97   bl	0x100002ae4
0x10068cabc:  e8 5f c0 39   ldrsb	w8, [sp, #0x17]
0x10068cac0:  e9 03 40 f9   ldr	x9, [sp]
0x10068cac4:  1f 01 00 71   cmp	w8, #0
0x10068cac8:  36 b1 96 9a   csel	x22, x9, x22, lt
0x10068cacc:  80 02 c0 3d   ldr	q0, [x20]
0x10068cad0:  e0 0f 80 3d   str	q0, [sp, #0x30]
0x10068cad4:  88 12 40 b9   ldr	w8, [x20, #0x10]
0x10068cad8:  e8 43 00 b9   str	w8, [sp, #0x40]
0x10068cadc:  e0 33 01 91   add	x0, sp, #0x4c
0x10068cae0:  e1 c3 00 91   add	x1, sp, #0x30
0x10068cae4:  7b fb 03 94   bl	0x10078b8d0
0x10068cae8:  b4 83 01 d1   sub	x20, fp, #0x60
0x10068caec:  a8 83 01 d1   sub	x8, fp, #0x60
0x10068caf0:  e0 33 01 91   add	x0, sp, #0x4c
0x10068caf4:  db fb 03 94   bl	0x10078ba60
0x10068caf8:  ff 02 13 eb   cmp	x23, x19
0x10068cafc:  e8 17 9f 1a   cset	w8, eq
0x10068cb00:  a9 73 db 38   ldursb	w9, [fp, #-0x49]
0x10068cb04:  aa 03 5a f8   ldur	x10, [fp, #-0x60]
0x10068cb08:  3f 01 00 71   cmp	w9, #0
0x10068cb0c:  49 b1 94 9a   csel	x9, x10, x20, lt
0x10068cb10:  2a 10 00 b0   adrp	x10, 0x100891000
0x10068cb14:  40 69 44 fd   ldr	d0, [x10, #0x8d0]
0x10068cb18:  e0 63 00 bd   str	s0, [sp, #0x60]
0x10068cb1c:  f6 43 06 f8   stur	x22, [sp, #0x64]
0x10068cb20:  0a 04 81 52   mov	w10, #0x820
0x10068cb24:  ea db 00 79   strh	w10, [sp, #0x6c]
0x10068cb28:  e9 e3 06 f8   stur	x9, [sp, #0x6e]
0x10068cb2c:  09 80 80 52   mov	w9, #0x400
0x10068cb30:  e9 ef 00 79   strh	w9, [sp, #0x76]
0x10068cb34:  e8 7b 00 b9   str	w8, [sp, #0x78]
0x10068cb38:  a0 cb ff 90   adrp	x0, 0x100000000
0x10068cb3c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10068cb40:  e3 19 00 d0   adrp	x3, 0x1009ca000
0x10068cb44:  63 d8 17 91   add	x3, x3, #0x5f6 ; "shouldNotifyBuiltInService device:%s service:%s notify:%d"
0x10068cb48:  e4 83 01 91   add	x4, sp, #0x60
0x10068cb4c:  e1 03 15 aa   mov	x1, x21
0x10068cb50:  22 00 80 52   mov	w2, #0x1
0x10068cb54:  85 03 80 52   mov	w5, #0x1c
0x10068cb58:  fe 05 06 94   bl	j___os_log_impl
0x10068cb5c:  a8 73 db 38   ldursb	w8, [fp, #-0x49]
0x10068cb60:  68 00 f8 36   tbz	w8, #0x1f, loc_10068cb6c ; ⤵ 0xc
0x10068cb64:  a0 03 5a f8   ldur	x0, [fp, #-0x60]
0x10068cb68:  7a 05 06 94   bl	j___ZdlPv
0x10068cb6c:  ; loc_10068cb6c
0x10068cb6c:  e8 5f c0 39   ldrsb	w8, [sp, #0x17]
0x10068cb70:  68 00 f8 36   tbz	w8, #0x1f, loc_10068cb7c ; ⤵ 0xc
0x10068cb74:  e0 03 40 f9   ldr	x0, [sp]
0x10068cb78:  76 05 06 94   bl	j___ZdlPv
0x10068cb7c:  ; loc_10068cb7c
0x10068cb7c:  ff 02 13 eb   cmp	x23, x19
0x10068cb80:  f3 17 9f 1a   cset	w19, eq
0x10068cb84:  e1 13 40 f9   ldr	x1, [sp, #0x20]
0x10068cb88:  e0 63 00 91   add	x0, sp, #0x18
0x10068cb8c:  69 66 e7 97   bl	0x100066530
0x10068cb90:  a8 83 5c f8   ldur	x8, [fp, #-0x38]
0x10068cb94:  29 1d 00 d0   adrp	x9, 0x100a32000
0x10068cb98:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10068cb9c:  29 01 40 f9   ldr	x9, [x9]
0x10068cba0:  3f 01 08 eb   cmp	x9, x8
0x10068cba4:  01 01 00 54   b.ne	loc_10068cbc4 ; ⤵ 0x20
0x10068cba8:  e0 03 13 aa   mov	x0, x19
0x10068cbac:  fd 7b 4e a9   ldp	fp, lr, [sp, #0xe0]
0x10068cbb0:  f4 4f 4d a9   ldp	x20, x19, [sp, #0xd0]
0x10068cbb4:  f6 57 4c a9   ldp	x22, x21, [sp, #0xc0]
0x10068cbb8:  f8 5f 4b a9   ldp	x24, x23, [sp, #0xb0]
0x10068cbbc:  ff c3 03 91   add	sp, sp, #0xf0
0x10068cbc0:  ff 0f 5f d6   retab
0x10068cbc4:  ; loc_10068cbc4
0x10068cbc4:  b3 05 06 94   bl	j____stack_chk_fail
0x10068cbc8:  f3 03 00 aa   mov	x19, x0
0x10068cbcc:  e8 5f c0 39   ldrsb	w8, [sp, #0x17]
0x10068cbd0:  c8 00 f8 36   tbz	w8, #0x1f, loc_10068cbe8 ; ⤵ 0x18
0x10068cbd4:  e0 03 40 f9   ldr	x0, [sp]
0x10068cbd8:  5e 05 06 94   bl	j___ZdlPv
0x10068cbdc:  03 00 00 14   b	loc_10068cbe8 ; ⤵ 0xc

