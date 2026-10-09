
sub_100519c78:
0x100519c78:  7f 23 03 d5   pacibsp
0x100519c7c:  f7 5b bd a9   stp	x23, x22, [sp, #-0x30]!
0x100519c80:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x100519c84:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x100519c88:  fd 83 00 91   add	fp, sp, #0x20
0x100519c8c:  f3 03 01 aa   mov	x19, x1
0x100519c90:  f4 03 00 aa   mov	x20, x0
0x100519c94:  29 fc 7e d3   lsr	x9, x1, #0x3e
0x100519c98:  3f 05 00 71   cmp	w9, #0x1
0x100519c9c:  cc 00 00 54   b.gt	loc_100519cb4 ; ⤵ 0x18
0x100519ca0:  c9 01 00 35   cbnz	w9, loc_100519cd8 ; ⤵ 0x38
0x100519ca4:  6a de 70 d3   ubfx	x10, x19, #0x30, #0x8
0x100519ca8:  5f 81 00 f1   cmp	x10, #0x20
0x100519cac:  20 01 00 54   b.eq	loc_100519cd0 ; ⤵ 0x24
0x100519cb0:  10 00 00 14   b	loc_100519cf0 ; ⤵ 0x40
0x100519cb4:  ; loc_100519cb4
0x100519cb4:  3f 09 00 71   cmp	w9, #0x2
0x100519cb8:  e1 02 00 54   b.ne	loc_100519d14 ; ⤵ 0x5c
0x100519cbc:  8b 2a 41 a9   ldp	x11, x10, [x20, #0x10]
0x100519cc0:  4a 01 0b eb   subs	x10, x10, x11
0x100519cc4:  06 06 00 54   b.vs	loc_100519d84 ; ⤵ 0xc0
0x100519cc8:  5f 81 00 f1   cmp	x10, #0x20
0x100519ccc:  21 01 00 54   b.ne	loc_100519cf0 ; ⤵ 0x24
0x100519cd0:  ; loc_100519cd0
0x100519cd0:  14 4d 00 a9   stp	x20, x19, [x8]
0x100519cd4:  28 00 00 14   b	loc_100519d74 ; ⤵ 0xa0
0x100519cd8:  ; loc_100519cd8
0x100519cd8:  8a fe 60 d3   lsr	x10, x20, #0x20
0x100519cdc:  4a 01 14 6b   subs	w10, w10, w20
0x100519ce0:  46 05 00 54   b.vs	loc_100519d88 ; ⤵ 0xa8
0x100519ce4:  4a 7d 40 93   sxtw	x10, w10
0x100519ce8:  5f 81 00 f1   cmp	x10, #0x20
0x100519cec:  20 ff ff 54   b.eq	loc_100519cd0 ; ⤴ -0x1c
0x100519cf0:  ; loc_100519cf0
0x100519cf0:  3f 09 00 71   cmp	w9, #0x2
0x100519cf4:  40 01 00 54   b.eq	loc_100519d1c ; ⤵ 0x28
0x100519cf8:  3f 05 00 71   cmp	w9, #0x1
0x100519cfc:  81 01 00 54   b.ne	loc_100519d2c ; ⤵ 0x30
0x100519d00:  88 fe 60 d3   lsr	x8, x20, #0x20
0x100519d04:  08 01 14 6b   subs	w8, w8, w20
0x100519d08:  26 04 00 54   b.vs	loc_100519d8c ; ⤵ 0x84
0x100519d0c:  17 7d 40 93   sxtw	x23, w8
0x100519d10:  08 00 00 14   b	loc_100519d30 ; ⤵ 0x20
0x100519d14:  ; loc_100519d14
0x100519d14:  17 00 80 d2   mov	x23, #0
0x100519d18:  06 00 00 14   b	loc_100519d30 ; ⤵ 0x18
0x100519d1c:  ; loc_100519d1c
0x100519d1c:  89 22 41 a9   ldp	x9, x8, [x20, #0x10]
0x100519d20:  17 01 09 eb   subs	x23, x8, x9
0x100519d24:  67 00 00 54   b.vc	loc_100519d30 ; ⤵ 0xc
0x100519d28:  20 00 20 d4   brk	#0x1
0x100519d2c:  ; loc_100519d2c
0x100519d2c:  77 de 70 d3   ubfx	x23, x19, #0x30, #0x8
0x100519d30:  ; loc_100519d30
0x100519d30:  5a fd eb 97   bl	0x100019298
0x100519d34:  e1 03 00 aa   mov	x1, x0
0x100519d38:  40 9c 00 90   adrp	x0, 0x1018a1000
0x100519d3c:  00 c0 2e 91   add	x0, x0, #0xbb0
0x100519d40:  02 00 80 d2   mov	x2, #0
0x100519d44:  03 00 80 52   mov	w3, #0
0x100519d48:  16 c6 41 94   bl	j__swift_allocError
0x100519d4c:  f6 03 00 aa   mov	x22, x0
0x100519d50:  08 04 80 52   mov	w8, #0x20
0x100519d54:  28 5c 00 a9   stp	x8, x23, [x1]
0x100519d58:  3f 40 00 39   strb	wzr, [x1, #0x10]
0x100519d5c:  f5 03 00 aa   mov	x21, x0
0x100519d60:  f4 c7 41 94   bl	j__swift_willThrow
0x100519d64:  e0 03 14 aa   mov	x0, x20
0x100519d68:  e1 03 13 aa   mov	x1, x19
0x100519d6c:  8d f4 eb 97   bl	0x100016fa0
0x100519d70:  f5 03 16 aa   mov	x21, x22
0x100519d74:  ; loc_100519d74
0x100519d74:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x100519d78:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x100519d7c:  f7 5b c3 a8   ldp	x23, x22, [sp], #0x30
0x100519d80:  ff 0f 5f d6   retab
0x100519d84:  ; loc_100519d84
0x100519d84:  20 00 20 d4   brk	#0x1
0x100519d88:  ; loc_100519d88
0x100519d88:  20 00 20 d4   brk	#0x1
0x100519d8c:  ; loc_100519d8c
0x100519d8c:  20 00 20 d4   brk	#0x1

sub_100519d90:
0x100519d90:  7f 23 03 d5   pacibsp
0x100519d94:  f7 5b bd a9   stp	x23, x22, [sp, #-0x30]!
0x100519d98:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x100519d9c:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x100519da0:  fd 83 00 91   add	fp, sp, #0x20
0x100519da4:  f3 03 01 aa   mov	x19, x1
0x100519da8:  f4 03 00 aa   mov	x20, x0
0x100519dac:  29 fc 7e d3   lsr	x9, x1, #0x3e
0x100519db0:  3f 05 00 71   cmp	w9, #0x1
0x100519db4:  8c 00 00 54   b.gt	loc_100519dc4 ; ⤵ 0x10

