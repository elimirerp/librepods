
sub_10016cc58:
0x10016cc58:  7f 23 03 d5   pacibsp
0x10016cc5c:  ff 43 02 d1   sub	sp, sp, #0x90
0x10016cc60:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x10016cc64:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x10016cc68:  fd 03 02 91   add	fp, sp, #0x80
0x10016cc6c:  28 46 00 d0   adrp	x8, 0x100a32000
0x10016cc70:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10016cc74:  08 01 40 f9   ldr	x8, [x8]
0x10016cc78:  a8 83 1e f8   stur	x8, [fp, #-0x18]
0x10016cc7c:  ff 23 00 f9   str	xzr, [sp, #0x40]
0x10016cc80:  08 00 80 92   mov	x8, #0xffffffffffffffff
0x10016cc84:  a8 03 1e f8   stur	x8, [fp, #-0x20]
0x10016cc88:  28 4b 00 b0   adrp	x8, 0x100ad1000
0x10016cc8c:  08 41 16 91   add	x8, x8, #0x590
0x10016cc90:  08 b9 40 b9   ldr	w8, [x8, #0xb8]
0x10016cc94:  c8 00 00 34   cbz	w8, loc_10016ccac ; ⤵ 0x18
0x10016cc98:  f3 03 00 aa   mov	x19, x0
0x10016cc9c:  8c 87 ff 97   bl	0x10014eacc
0x10016cca0:  a0 00 00 36   tbz	w0, #0, loc_10016ccb4 ; ⤵ 0x14
0x10016cca4:  00 00 80 52   mov	w0, #0
0x10016cca8:  0d 00 00 14   b	loc_10016ccdc ; ⤵ 0x34
0x10016ccac:  ; loc_10016ccac
0x10016ccac:  e0 0c 80 52   mov	w0, #0x67
0x10016ccb0:  0b 00 00 14   b	loc_10016ccdc ; ⤵ 0x2c
0x10016ccb4:  ; loc_10016ccb4
0x10016ccb4:  28 4b 00 b0   adrp	x8, 0x100ad1000
0x10016ccb8:  08 81 10 91   add	x8, x8, #0x420
0x10016ccbc:  08 01 40 b9   ldr	w8, [x8]
0x10016ccc0:  1f 09 00 71   cmp	w8, #0x2
0x10016ccc4:  a1 00 00 54   b.ne	loc_10016ccd8 ; ⤵ 0x14
0x10016ccc8:  e9 0b fe 97   bl	0x1000efc6c
0x10016cccc:  c0 01 00 36   tbz	w0, #0, loc_10016cd04 ; ⤵ 0x38
0x10016ccd0:  00 cf 81 52   mov	w0, #0xe78
0x10016ccd4:  02 00 00 14   b	loc_10016ccdc ; ⤵ 0x8
0x10016ccd8:  ; loc_10016ccd8
0x10016ccd8:  60 4e 80 52   mov	w0, #0x273
0x10016ccdc:  ; loc_10016ccdc
0x10016ccdc:  a8 83 5e f8   ldur	x8, [fp, #-0x18]
0x10016cce0:  29 46 00 d0   adrp	x9, 0x100a32000
0x10016cce4:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10016cce8:  29 01 40 f9   ldr	x9, [x9]
0x10016ccec:  3f 01 08 eb   cmp	x9, x8
0x10016ccf0:  a1 0f 00 54   b.ne	loc_10016cee4 ; ⤵ 0x1f4
0x10016ccf4:  fd 7b 48 a9   ldp	fp, lr, [sp, #0x80]
0x10016ccf8:  f4 4f 47 a9   ldp	x20, x19, [sp, #0x70]
0x10016ccfc:  ff 43 02 91   add	sp, sp, #0x90
0x10016cd00:  ff 0f 5f d6   retab
0x10016cd04:  ; loc_10016cd04
0x10016cd04:  bf ff 3c a9   stp	xzr, xzr, [fp, #-0x38]
0x10016cd08:  ff 33 00 b9   str	wzr, [sp, #0x30]
0x10016cd0c:  ff 33 03 b8   stur	wzr, [sp, #0x33]
0x10016cd10:  a8 43 00 91   add	x8, fp, #0x10
0x10016cd14:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x10016cd18:  60 3e 00 12   and	w0, w19, #0xffff
0x10016cd1c:  5f 32 01 94   bl	0x1001b9698
0x10016cd20:  c0 03 00 b4   cbz	x0, loc_10016cd98 ; ⤵ 0x78
0x10016cd24:  f4 03 00 aa   mov	x20, x0
0x10016cd28:  08 08 40 79   ldrh	w8, [x0, #0x4]
0x10016cd2c:  1f 05 12 72   tst	w8, #0xc000
0x10016cd30:  01 03 00 54   b.ne	loc_10016cd90 ; ⤵ 0x60
0x10016cd34:  09 fd 48 d3   lsr	x9, x8, #0x8
0x10016cd38:  2a 4b 00 b0   adrp	x10, 0x100ad1000
0x10016cd3c:  4a 01 11 91   add	x10, x10, #0x440
0x10016cd40:  49 69 69 38   ldrb	w9, [x10, x9]
0x10016cd44:  3f 01 08 6a   tst	w9, w8
0x10016cd48:  40 02 00 54   b.eq	loc_10016cd90 ; ⤵ 0x48
0x10016cd4c:  88 46 40 39   ldrb	w8, [x20, #0x11]
0x10016cd50:  48 00 00 35   cbnz	w8, loc_10016cd58 ; ⤵ 0x8
0x10016cd54:  6e 61 03 94   bl	0x10024530c
0x10016cd58:  ; loc_10016cd58
0x10016cd58:  ff 7b 00 79   strh	wzr, [sp, #0x3c]
0x10016cd5c:  ff 3b 00 b9   str	wzr, [sp, #0x38]
0x10016cd60:  ff bf 00 39   strb	wzr, [sp, #0x2f]
0x10016cd64:  88 42 40 39   ldrb	w8, [x20, #0x10]
0x10016cd68:  a0 83 5d f8   ldur	x0, [fp, #-0x28]
0x10016cd6c:  a2 e3 00 d1   sub	x2, fp, #0x38

