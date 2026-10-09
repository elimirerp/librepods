
sub_10021bcc8:
0x10021bcc8:  7f 23 03 d5   pacibsp
0x10021bccc:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10021bcd0:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10021bcd4:  fd 43 00 91   add	fp, sp, #0x10
0x10021bcd8:  61 03 00 b4   cbz	x1, loc_10021bd44 ; ⤵ 0x6c
0x10021bcdc:  f4 03 00 aa   mov	x20, x0
0x10021bce0:  40 01 00 b4   cbz	x0, loc_10021bd08 ; ⤵ 0x28
0x10021bce4:  f3 03 01 aa   mov	x19, x1
0x10021bce8:  e0 03 14 aa   mov	x0, x20
0x10021bcec:  8d 57 fd 97   bl	0x100171b20
0x10021bcf0:  c0 00 00 36   tbz	w0, #0, loc_10021bd08 ; ⤵ 0x18
0x10021bcf4:  88 a2 42 39   ldrb	w8, [x20, #0xa8]
0x10021bcf8:  1f 09 00 71   cmp	w8, #0x2
0x10021bcfc:  61 04 00 54   b.ne	loc_10021bd88 ; ⤵ 0x8c
0x10021bd00:  c0 0e 80 52   mov	w0, #0x76
0x10021bd04:  1e 00 00 14   b	loc_10021bd7c ; ⤵ 0x78
0x10021bd08:  ; loc_10021bd08
0x10021bd08:  40 00 80 52   mov	w0, #0x2
0x10021bd0c:  61 08 80 52   mov	w1, #0x43
0x10021bd10:  0d 22 fb 97   bl	0x1000e4544
0x10021bd14:  40 01 00 34   cbz	w0, loc_10021bd3c ; ⤵ 0x28
0x10021bd18:  80 36 00 d0   adrp	x0, 0x1008ed000
0x10021bd1c:  00 e0 0a 91   add	x0, x0, #0x2b8 ; "This handle is not a LE connection."
0x10021bd20:  21 a5 00 94   bl	0x1002451a4
0x10021bd24:  60 08 80 52   mov	w0, #0x43
0x10021bd28:  7c 8f fa 97   bl	0x1000bfb18
0x10021bd2c:  f3 03 00 aa   mov	x19, x0
0x10021bd30:  01 02 80 52   mov	w1, #0x10
0x10021bd34:  3f ce 17 94   bl	j__os_log_type_enabled
0x10021bd38:  a0 06 00 35   cbnz	w0, loc_10021be0c ; ⤵ 0xd4
0x10021bd3c:  ; loc_10021bd3c
0x10021bd3c:  c0 a3 80 52   mov	w0, #0x51e
0x10021bd40:  0f 00 00 14   b	loc_10021bd7c ; ⤵ 0x3c
0x10021bd44:  ; loc_10021bd44
0x10021bd44:  40 00 80 52   mov	w0, #0x2
0x10021bd48:  61 08 80 52   mov	w1, #0x43
0x10021bd4c:  fe 21 fb 97   bl	0x1000e4544
0x10021bd50:  40 01 00 34   cbz	w0, loc_10021bd78 ; ⤵ 0x28
0x10021bd54:  c0 36 00 f0   adrp	x0, 0x1008f6000
0x10021bd58:  00 60 10 91   add	x0, x0, #0x418 ; "*keys cannot be NULL"
0x10021bd5c:  12 a5 00 94   bl	0x1002451a4
0x10021bd60:  60 08 80 52   mov	w0, #0x43
0x10021bd64:  6d 8f fa 97   bl	0x1000bfb18
0x10021bd68:  f3 03 00 aa   mov	x19, x0
0x10021bd6c:  01 02 80 52   mov	w1, #0x10
0x10021bd70:  30 ce 17 94   bl	j__os_log_type_enabled
0x10021bd74:  20 05 00 35   cbnz	w0, loc_10021be18 ; ⤵ 0xa4
0x10021bd78:  ; loc_10021bd78
0x10021bd78:  a0 0c 80 52   mov	w0, #0x65
0x10021bd7c:  ; loc_10021bd7c
0x10021bd7c:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10021bd80:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10021bd84:  ff 0f 5f d6   retab
0x10021bd88:  ; loc_10021bd88
0x10021bd88:  68 a2 40 79   ldrh	w8, [x19, #0x50]
0x10021bd8c:  e9 00 80 52   mov	w9, #0x7
0x10021bd90:  3f 01 28 6a   bics	wzr, w9, w8
0x10021bd94:  c1 01 00 54   b.ne	loc_10021bdcc ; ⤵ 0x38
0x10021bd98:  62 26 40 79   ldrh	w2, [x19, #0x12]
0x10021bd9c:  64 42 40 39   ldrb	w4, [x19, #0x10]
0x10021bda0:  65 46 40 39   ldrb	w5, [x19, #0x11]
0x10021bda4:  61 52 00 91   add	x1, x19, #0x14
0x10021bda8:  e0 03 14 aa   mov	x0, x20
0x10021bdac:  e3 03 13 aa   mov	x3, x19
0x10021bdb0:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10021bdb4:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10021bdb8:  ff 23 03 d5   autibsp
0x10021bdbc:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10021bdc0:  50 00 f0 b6   tbz	x16, #0x3e, loc_10021bdc8 ; ⤵ 0x8
0x10021bdc4:  20 8e 38 d4   brk	#0xc471
0x10021bdc8:  ; loc_10021bdc8
0x10021bdc8:  2b ff ff 17   b	0x10021ba74
0x10021bdcc:  ; loc_10021bdcc
0x10021bdcc:  40 00 80 52   mov	w0, #0x2
0x10021bdd0:  61 08 80 52   mov	w1, #0x43
0x10021bdd4:  dc 21 fb 97   bl	0x1000e4544
0x10021bdd8:  00 fd ff 34   cbz	w0, loc_10021bd78 ; ⤴ -0x60
0x10021bddc:  c0 36 00 f0   adrp	x0, 0x1008f6000
0x10021bde0:  00 b4 10 91   add	x0, x0, #0x42d ; "Missing keys"
0x10021bde4:  f0 a4 00 94   bl	0x1002451a4
0x10021bde8:  60 08 80 52   mov	w0, #0x43
0x10021bdec:  4b 8f fa 97   bl	0x1000bfb18
0x10021bdf0:  f3 03 00 aa   mov	x19, x0
0x10021bdf4:  01 02 80 52   mov	w1, #0x10
0x10021bdf8:  0e ce 17 94   bl	j__os_log_type_enabled
0x10021bdfc:  e0 fb ff 34   cbz	w0, loc_10021bd78 ; ⤴ -0x84
0x10021be00:  e0 03 13 aa   mov	x0, x19
0x10021be04:  2c 71 16 94   bl	0x1007b82b4
0x10021be08:  dc ff ff 17   b	loc_10021bd78 ; ⤴ -0x90
0x10021be0c:  ; loc_10021be0c
0x10021be0c:  e0 03 13 aa   mov	x0, x19
0x10021be10:  29 71 16 94   bl	0x1007b82b4
0x10021be14:  ca ff ff 17   b	loc_10021bd3c ; ⤴ -0xd8
0x10021be18:  ; loc_10021be18
0x10021be18:  e0 03 13 aa   mov	x0, x19
0x10021be1c:  26 71 16 94   bl	0x1007b82b4
0x10021be20:  d6 ff ff 17   b	loc_10021bd78 ; ⤴ -0xa8

