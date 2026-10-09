0x101452b94:  80 07 00 54   b.eq	loc_101452c84 ; ⤵ 0xf0
0x101452b98:  68 0a 10 51   sub	w8, w19, #0x402
0x101452b9c:  1f 0d 00 71   cmp	w8, #0x3
0x101452ba0:  68 00 00 54   b.hi	loc_101452bac ; ⤵ 0xc
0x101452ba4:  1f 09 00 71   cmp	w8, #0x2
0x101452ba8:  e1 06 00 54   b.ne	loc_101452c84 ; ⤵ 0xdc
0x101452bac:  ; loc_101452bac
0x101452bac:  7f 46 1c 71   cmp	w19, #0x711
0x101452bb0:  61 00 00 54   b.ne	loc_101452bbc ; ⤵ 0xc
0x101452bb4:  bf 42 1c 71   cmp	w21, #0x710
0x101452bb8:  60 06 00 54   b.eq	loc_101452c84 ; ⤵ 0xcc
0x101452bbc:  ; loc_101452bbc
0x101452bbc:  7f 1a 1c 71   cmp	w19, #0x706
0x101452bc0:  61 00 00 54   b.ne	loc_101452bcc ; ⤵ 0xc
0x101452bc4:  bf 06 1c 71   cmp	w21, #0x701
0x101452bc8:  e0 05 00 54   b.eq	loc_101452c84 ; ⤵ 0xbc
0x101452bcc:  ; loc_101452bcc
0x101452bcc:  7f 1e 1c 71   cmp	w19, #0x707
0x101452bd0:  61 00 00 54   b.ne	loc_101452bdc ; ⤵ 0xc
0x101452bd4:  bf 0a 1c 71   cmp	w21, #0x702
0x101452bd8:  60 05 00 54   b.eq	loc_101452c84 ; ⤵ 0xac
0x101452bdc:  ; loc_101452bdc
0x101452bdc:  7f 3e 1c 71   cmp	w19, #0x70f
0x101452be0:  61 00 00 54   b.ne	loc_101452bec ; ⤵ 0xc
0x101452be4:  bf 36 1c 71   cmp	w21, #0x70d
0x101452be8:  e0 04 00 54   b.eq	loc_101452c84 ; ⤵ 0x9c
0x101452bec:  ; loc_101452bec
0x101452bec:  a8 0e 1c 51   sub	w8, w21, #0x703
0x101452bf0:  bf 3a 1c 71   cmp	w21, #0x70e
0x101452bf4:  00 19 42 7a   ccmp	w8, #0x2, #0, ne
0x101452bf8:  e8 27 9f 1a   cset	w8, cc
0x101452bfc:  7f 22 1c 71   cmp	w19, #0x708
0x101452c00:  41 00 00 54   b.ne	loc_101452c08 ; ⤵ 0x8
0x101452c04:  08 04 00 37   tbnz	w8, #0, loc_101452c84 ; ⤵ 0x80
0x101452c08:  ; loc_101452c08
0x101452c08:  7f 2e 1c 71   cmp	w19, #0x70b
0x101452c0c:  a8 e0 80 52   mov	w8, #0x705
0x101452c10:  a0 02 48 7a   ccmp	w21, w8, #0, eq
0x101452c14:  2c 00 00 14   b	loc_101452cc4 ; ⤵ 0xb0
0x101452c18:  e0 03 15 aa   mov	x0, x21
0x101452c1c:  49 34 1b 94   bl	j__objc_msgSend(x0, "command")
0x101452c20:  b0 af 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x101452c24:  1f d4 02 71   cmp	w0, #0xb5
0x101452c28:  01 01 00 54   b.ne	loc_101452c48 ; ⤵ 0x20
0x101452c2c:  68 5e 00 51   sub	w8, w19, #0x17
0x101452c30:  1f 61 00 71   cmp	w8, #0x18
0x101452c34:  a2 00 00 54   b.hs	loc_101452c48 ; ⤵ 0x14
0x101452c38:  e9 00 80 52   mov	w9, #0x7
0x101452c3c:  09 10 a0 72   movk	w9, #0x80, lsl #0x10
0x101452c40:  28 25 c8 1a   lsr	w8, w9, w8
0x101452c44:  e8 01 00 37   tbnz	w8, #0, loc_101452c80 ; ⤵ 0x3c
0x101452c48:  ; loc_101452c48
0x101452c48:  1f 0c 00 71   cmp	w0, #0x3
0x101452c4c:  04 18 45 7a   ccmp	w0, #0x5, #0x4, ne
0x101452c50:  e8 17 9f 1a   cset	w8, eq
0x101452c54:  7f 12 00 71   cmp	w19, #0x4
0x101452c58:  41 00 00 54   b.ne	loc_101452c60 ; ⤵ 0x8
0x101452c5c:  28 01 00 37   tbnz	w8, #0, loc_101452c80 ; ⤵ 0x24
0x101452c60:  ; loc_101452c60
0x101452c60:  7f 22 20 71   cmp	w19, #0x808
0x101452c64:  61 00 00 54   b.ne	loc_101452c70 ; ⤵ 0xc
0x101452c68:  1f 0c 20 71   cmp	w0, #0x803
0x101452c6c:  a0 00 00 54   b.eq	loc_101452c80 ; ⤵ 0x14
0x101452c70:  ; loc_101452c70
0x101452c70:  7f 8a 10 71   cmp	w19, #0x422
0x101452c74:  21 02 00 54   b.ne	loc_101452cb8 ; ⤵ 0x44
0x101452c78:  1f 88 0c 71   cmp	w0, #0x322
0x101452c7c:  e1 01 00 54   b.ne	loc_101452cb8 ; ⤵ 0x3c
0x101452c80:  ; loc_101452c80
0x101452c80:  20 00 80 52   mov	w0, #0x1
0x101452c84:  ; loc_101452c84
0x101452c84:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101452c88:  09 7a 00 90   adrp	x9, 0x102392000
0x101452c8c:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101452c90:  29 01 40 f9   ldr	x9, [x9]
0x101452c94:  3f 01 08 eb   cmp	x9, x8
0x101452c98:  61 02 00 54   b.ne	loc_101452ce4 ; ⤵ 0x4c
0x101452c9c:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x101452ca0:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x101452ca4:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x101452ca8:  ff 83 01 91   add	sp, sp, #0x60
0x101452cac:  ff 0f 5f d6   retab
0x101452cb0:  00 00 80 52   mov	w0, #0
0x101452cb4:  f4 ff ff 17   b	loc_101452c84 ; ⤴ -0x30
0x101452cb8:  ; loc_101452cb8
0x101452cb8:  7f 8a 10 71   cmp	w19, #0x422
0x101452cbc:  e8 64 80 52   mov	w8, #0x327
0x101452cc0:  00 00 48 7a   ccmp	w0, w8, #0, eq
0x101452cc4:  ; loc_101452cc4
0x101452cc4:  e0 17 9f 1a   cset	w0, eq
0x101452cc8:  ef ff ff 17   b	loc_101452c84 ; ⤴ -0x44
0x101452ccc:  cd f4 1a 94   bl	0x101b10000
0x101452cd0:  72 fe ff 17   b	loc_101452698 ; ⤴ -0x638
0x101452cd4:  cc f4 1a 94   bl	0x101b10004
0x101452cd8:  f7 fe ff 17   b	loc_1014528b4 ; ⤴ -0x424
0x101452cdc:  ca f4 1a 94   bl	0x101b10004
0x101452ce0:  42 ff ff 17   b	loc_1014529e8 ; ⤴ -0x2f8
0x101452ce4:  ; loc_101452ce4
0x101452ce4:  17 09 1b 94   bl	j____stack_chk_fail

-[CLDurianDevice cancelAnyPendingPlaySound]:
0x101452ce8:  7f 23 03 d5   pacibsp
0x101452cec:  ff 03 06 d1   sub	sp, sp, #0x180
0x101452cf0:  fc 6f 12 a9   stp	x28, x27, [sp, #0x120]
0x101452cf4:  fa 67 13 a9   stp	x26, x25, [sp, #0x130]
0x101452cf8:  f8 5f 14 a9   stp	x24, x23, [sp, #0x140]
0x101452cfc:  f6 57 15 a9   stp	x22, x21, [sp, #0x150]
0x101452d00:  f4 4f 16 a9   stp	x20, x19, [sp, #0x160]
0x101452d04:  fd 7b 17 a9   stp	fp, lr, [sp, #0x170]
0x101452d08:  fd c3 05 91   add	fp, sp, #0x170
0x101452d0c:  f3 03 00 aa   mov	x19, x0
0x101452d10:  08 7a 00 90   adrp	x8, 0x102392000
0x101452d14:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101452d18:  08 01 40 f9   ldr	x8, [x8]
0x101452d1c:  a8 03 1a f8   stur	x8, [fp, #-0x60]
0x101452d20:  00 e4 00 6f   movi	v0.2d, #0

