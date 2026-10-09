
sub_100221a50:
0x100221a50:  7f 23 03 d5   pacibsp
0x100221a54:  ff 03 01 d1   sub	sp, sp, #0x40
0x100221a58:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x100221a5c:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x100221a60:  fd c3 00 91   add	fp, sp, #0x30
0x100221a64:  88 40 00 b0   adrp	x8, 0x100a32000
0x100221a68:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100221a6c:  08 01 40 f9   ldr	x8, [x8]
0x100221a70:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x100221a74:  01 07 00 b4   cbz	x1, loc_100221b54 ; ⤵ 0xe0
0x100221a78:  f4 03 00 aa   mov	x20, x0
0x100221a7c:  e0 04 00 b4   cbz	x0, loc_100221b18 ; ⤵ 0x9c
0x100221a80:  f3 03 01 aa   mov	x19, x1
0x100221a84:  e0 03 14 aa   mov	x0, x20
0x100221a88:  26 40 fd 97   bl	0x100171b20
0x100221a8c:  60 04 00 36   tbz	w0, #0, loc_100221b18 ; ⤵ 0x8c
0x100221a90:  68 4a 41 39   ldrb	w8, [x19, #0x52]
0x100221a94:  88 a2 04 39   strb	w8, [x20, #0x128]
0x100221a98:  88 a2 42 39   ldrb	w8, [x20, #0xa8]
0x100221a9c:  1f 0d 00 71   cmp	w8, #0x3
0x100221aa0:  c1 08 00 54   b.ne	loc_100221bb8 ; ⤵ 0x118
0x100221aa4:  88 de 40 39   ldrb	w8, [x20, #0x37]
0x100221aa8:  1f 01 00 71   cmp	w8, #0
0x100221aac:  08 06 80 52   mov	w8, #0x30
0x100221ab0:  09 07 80 52   mov	w9, #0x38
0x100221ab4:  28 11 88 9a   csel	x8, x9, x8, ne
0x100221ab8:  62 b2 40 39   ldrb	w2, [x19, #0x2c]
0x100221abc:  63 b6 40 39   ldrb	w3, [x19, #0x2d]
0x100221ac0:  80 02 08 8b   add	x0, x20, x8
0x100221ac4:  61 72 00 91   add	x1, x19, #0x1c
0x100221ac8:  e4 e4 ff 97   bl	0x10021ae58
0x100221acc:  f3 03 00 aa   mov	x19, x0
0x100221ad0:  e0 05 00 34   cbz	w0, loc_100221b8c ; ⤵ 0xbc
0x100221ad4:  40 00 80 52   mov	w0, #0x2
0x100221ad8:  61 08 80 52   mov	w1, #0x43
0x100221adc:  9a 0a fb 97   bl	0x1000e4544
0x100221ae0:  60 05 00 34   cbz	w0, loc_100221b8c ; ⤵ 0xac
0x100221ae4:  f3 03 00 f9   str	x19, [sp]
0x100221ae8:  a0 36 00 d0   adrp	x0, 0x1008f7000
0x100221aec:  00 fc 09 91   add	x0, x0, #0x27f ; "LE_LongTermKeyReply failed %!"
0x100221af0:  ad 8d 00 94   bl	0x1002451a4
0x100221af4:  60 08 80 52   mov	w0, #0x43
0x100221af8:  08 78 fa 97   bl	0x1000bfb18
0x100221afc:  f4 03 00 aa   mov	x20, x0
0x100221b00:  01 02 80 52   mov	w1, #0x10
0x100221b04:  cb b6 17 94   bl	j__os_log_type_enabled
0x100221b08:  20 04 00 34   cbz	w0, loc_100221b8c ; ⤵ 0x84
0x100221b0c:  e0 03 14 aa   mov	x0, x20
0x100221b10:  35 59 16 94   bl	0x1007b7fe4
0x100221b14:  1e 00 00 14   b	loc_100221b8c ; ⤵ 0x78
0x100221b18:  ; loc_100221b18
0x100221b18:  40 00 80 52   mov	w0, #0x2
0x100221b1c:  61 08 80 52   mov	w1, #0x43
0x100221b20:  89 0a fb 97   bl	0x1000e4544
0x100221b24:  40 01 00 34   cbz	w0, loc_100221b4c ; ⤵ 0x28
0x100221b28:  60 36 00 90   adrp	x0, 0x1008ed000
0x100221b2c:  00 e0 0a 91   add	x0, x0, #0x2b8 ; "This handle is not a LE connection."
0x100221b30:  9d 8d 00 94   bl	0x1002451a4
0x100221b34:  60 08 80 52   mov	w0, #0x43
0x100221b38:  f8 77 fa 97   bl	0x1000bfb18
0x100221b3c:  f3 03 00 aa   mov	x19, x0
0x100221b40:  01 02 80 52   mov	w1, #0x10
0x100221b44:  bb b6 17 94   bl	j__os_log_type_enabled
0x100221b48:  e0 08 00 35   cbnz	w0, loc_100221c64 ; ⤵ 0x11c
0x100221b4c:  ; loc_100221b4c
0x100221b4c:  93 5a 82 52   mov	w19, #0x12d4
0x100221b50:  0f 00 00 14   b	loc_100221b8c ; ⤵ 0x3c
0x100221b54:  ; loc_100221b54
0x100221b54:  40 00 80 52   mov	w0, #0x2
0x100221b58:  61 08 80 52   mov	w1, #0x43
0x100221b5c:  7a 0a fb 97   bl	0x1000e4544
0x100221b60:  40 01 00 34   cbz	w0, loc_100221b88 ; ⤵ 0x28
0x100221b64:  a0 36 00 d0   adrp	x0, 0x1008f7000
0x100221b68:  00 9c 09 91   add	x0, x0, #0x267 ; "Invalid keys structure."
0x100221b6c:  8e 8d 00 94   bl	0x1002451a4
0x100221b70:  60 08 80 52   mov	w0, #0x43
0x100221b74:  e9 77 fa 97   bl	0x1000bfb18
0x100221b78:  f3 03 00 aa   mov	x19, x0
0x100221b7c:  01 02 80 52   mov	w1, #0x10
0x100221b80:  ac b6 17 94   bl	j__os_log_type_enabled
0x100221b84:  60 07 00 35   cbnz	w0, loc_100221c70 ; ⤵ 0xec
0x100221b88:  ; loc_100221b88
0x100221b88:  b3 0c 80 52   mov	w19, #0x65
0x100221b8c:  ; loc_100221b8c
0x100221b8c:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x100221b90:  89 40 00 b0   adrp	x9, 0x100a32000
0x100221b94:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100221b98:  29 01 40 f9   ldr	x9, [x9]
0x100221b9c:  3f 01 08 eb   cmp	x9, x8
0x100221ba0:  e1 06 00 54   b.ne	loc_100221c7c ; ⤵ 0xdc
0x100221ba4:  e0 03 13 aa   mov	x0, x19
0x100221ba8:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x100221bac:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x100221bb0:  ff 03 01 91   add	sp, sp, #0x40
0x100221bb4:  ff 0f 5f d6   retab
0x100221bb8:  ; loc_100221bb8
0x100221bb8:  68 a2 40 79   ldrh	w8, [x19, #0x50]
0x100221bbc:  28 02 18 36   tbz	w8, #0x3, loc_100221c00 ; ⤵ 0x44
0x100221bc0:  69 b6 40 39   ldrb	w9, [x19, #0x2d]
0x100221bc4:  29 19 1f 12   and	w9, w9, #0xfe
0x100221bc8:  3f 09 00 71   cmp	w9, #0x2
0x100221bcc:  a1 01 00 54   b.ne	loc_100221c00 ; ⤵ 0x34
0x100221bd0:  ff 0b 00 f9   str	xzr, [sp, #0x10]
0x100221bd4:  28 00 80 52   mov	w8, #0x1
0x100221bd8:  88 c2 03 39   strb	w8, [x20, #0xf0]
0x100221bdc:  64 b2 40 39   ldrb	w4, [x19, #0x2c]
0x100221be0:  65 b6 40 39   ldrb	w5, [x19, #0x2d]
0x100221be4:  e1 43 00 91   add	x1, sp, #0x10
0x100221be8:  63 72 00 91   add	x3, x19, #0x1c
0x100221bec:  e0 03 14 aa   mov	x0, x20
0x100221bf0:  02 00 80 52   mov	w2, #0
0x100221bf4:  a0 e7 ff 97   bl	0x10021ba74
0x100221bf8:  f3 03 00 aa   mov	x19, x0
0x100221bfc:  e4 ff ff 17   b	loc_100221b8c ; ⤴ -0x70
0x100221c00:  ; loc_100221c00
0x100221c00:  e9 00 80 52   mov	w9, #0x7
0x100221c04:  3f 01 28 6a   bics	wzr, w9, w8
0x100221c08:  01 fc ff 54   b.ne	loc_100221b88 ; ⤴ -0x80
0x100221c0c:  28 00 80 52   mov	w8, #0x1
0x100221c10:  88 c2 03 39   strb	w8, [x20, #0xf0]
0x100221c14:  62 26 40 79   ldrh	w2, [x19, #0x12]
0x100221c18:  64 42 40 39   ldrb	w4, [x19, #0x10]
0x100221c1c:  65 46 40 39   ldrb	w5, [x19, #0x11]
0x100221c20:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x100221c24:  89 40 00 b0   adrp	x9, 0x100a32000
0x100221c28:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100221c2c:  29 01 40 f9   ldr	x9, [x9]
0x100221c30:  3f 01 08 eb   cmp	x9, x8
0x100221c34:  41 02 00 54   b.ne	loc_100221c7c ; ⤵ 0x48
0x100221c38:  61 52 00 91   add	x1, x19, #0x14
0x100221c3c:  e0 03 14 aa   mov	x0, x20
0x100221c40:  e3 03 13 aa   mov	x3, x19
0x100221c44:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x100221c48:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x100221c4c:  ff 03 01 91   add	sp, sp, #0x40
0x100221c50:  ff 23 03 d5   autibsp
0x100221c54:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100221c58:  50 00 f0 b6   tbz	x16, #0x3e, loc_100221c60 ; ⤵ 0x8
0x100221c5c:  20 8e 38 d4   brk	#0xc471
0x100221c60:  ; loc_100221c60
0x100221c60:  85 e7 ff 17   b	0x10021ba74
0x100221c64:  ; loc_100221c64
0x100221c64:  e0 03 13 aa   mov	x0, x19
0x100221c68:  f4 58 16 94   bl	0x1007b8038
0x100221c6c:  b8 ff ff 17   b	loc_100221b4c ; ⤴ -0x120
0x100221c70:  ; loc_100221c70
0x100221c70:  e0 03 13 aa   mov	x0, x19
0x100221c74:  f1 58 16 94   bl	0x1007b8038
0x100221c78:  c4 ff ff 17   b	loc_100221b88 ; ⤴ -0xf0
0x100221c7c:  ; loc_100221c7c
0x100221c7c:  85 b1 17 94   bl	j____stack_chk_fail

