
sub_10021ba74:
0x10021ba74:  7f 23 03 d5   pacibsp
0x10021ba78:  ff 43 02 d1   sub	sp, sp, #0x90
0x10021ba7c:  fa 67 04 a9   stp	x26, x25, [sp, #0x40]
0x10021ba80:  f8 5f 05 a9   stp	x24, x23, [sp, #0x50]
0x10021ba84:  f6 57 06 a9   stp	x22, x21, [sp, #0x60]
0x10021ba88:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x10021ba8c:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x10021ba90:  fd 03 02 91   add	fp, sp, #0x80
0x10021ba94:  a8 40 00 f0   adrp	x8, 0x100a32000
0x10021ba98:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10021ba9c:  08 01 40 f9   ldr	x8, [x8]
0x10021baa0:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x10021baa4:  ff ff 02 a9   stp	xzr, xzr, [sp, #0x28]
0x10021baa8:  21 02 00 b4   cbz	x1, loc_10021baec ; ⤵ 0x44
0x10021baac:  f8 03 03 aa   mov	x24, x3
0x10021bab0:  c3 05 00 b4   cbz	x3, loc_10021bb68 ; ⤵ 0xb8
0x10021bab4:  f5 03 00 aa   mov	x21, x0
0x10021bab8:  a0 03 00 b4   cbz	x0, loc_10021bb2c ; ⤵ 0x74
0x10021babc:  f4 03 05 aa   mov	x20, x5
0x10021bac0:  f3 03 04 aa   mov	x19, x4
0x10021bac4:  f7 03 02 aa   mov	x23, x2
0x10021bac8:  f6 03 01 aa   mov	x22, x1
0x10021bacc:  e0 03 15 aa   mov	x0, x21
0x10021bad0:  14 58 fd 97   bl	0x100171b20
0x10021bad4:  c0 02 00 36   tbz	w0, #0, loc_10021bb2c ; ⤵ 0x58
0x10021bad8:  a8 a2 42 39   ldrb	w8, [x21, #0xa8]
0x10021badc:  1f 09 00 71   cmp	w8, #0x2
0x10021bae0:  c1 07 00 54   b.ne	loc_10021bbd8 ; ⤵ 0xf8
0x10021bae4:  d3 0e 80 52   mov	w19, #0x76
0x10021bae8:  2e 00 00 14   b	loc_10021bba0 ; ⤵ 0xb8
0x10021baec:  ; loc_10021baec
0x10021baec:  40 00 80 52   mov	w0, #0x2
0x10021baf0:  61 08 80 52   mov	w1, #0x43
0x10021baf4:  94 22 fb 97   bl	0x1000e4544
0x10021baf8:  20 05 00 34   cbz	w0, loc_10021bb9c ; ⤵ 0xa4
0x10021bafc:  c0 36 00 f0   adrp	x0, 0x1008f6000
0x10021bb00:  00 d4 0e 91   add	x0, x0, #0x3b5 ; "*randomNumber cannot be NULL"
0x10021bb04:  a8 a5 00 94   bl	0x1002451a4
0x10021bb08:  60 08 80 52   mov	w0, #0x43
0x10021bb0c:  03 90 fa 97   bl	0x1000bfb18
0x10021bb10:  f3 03 00 aa   mov	x19, x0
0x10021bb14:  01 02 80 52   mov	w1, #0x10
0x10021bb18:  c6 ce 17 94   bl	j__os_log_type_enabled
0x10021bb1c:  00 04 00 34   cbz	w0, loc_10021bb9c ; ⤵ 0x80
0x10021bb20:  e0 03 13 aa   mov	x0, x19
0x10021bb24:  e4 71 16 94   bl	0x1007b82b4
0x10021bb28:  1d 00 00 14   b	loc_10021bb9c ; ⤵ 0x74
0x10021bb2c:  ; loc_10021bb2c
0x10021bb2c:  40 00 80 52   mov	w0, #0x2
0x10021bb30:  61 08 80 52   mov	w1, #0x43
0x10021bb34:  84 22 fb 97   bl	0x1000e4544
0x10021bb38:  40 01 00 34   cbz	w0, loc_10021bb60 ; ⤵ 0x28
0x10021bb3c:  80 36 00 d0   adrp	x0, 0x1008ed000
0x10021bb40:  00 e0 0a 91   add	x0, x0, #0x2b8 ; "This handle is not a LE connection."
0x10021bb44:  98 a5 00 94   bl	0x1002451a4
0x10021bb48:  60 08 80 52   mov	w0, #0x43
0x10021bb4c:  f3 8f fa 97   bl	0x1000bfb18
0x10021bb50:  f3 03 00 aa   mov	x19, x0
0x10021bb54:  01 02 80 52   mov	w1, #0x10
0x10021bb58:  b6 ce 17 94   bl	j__os_log_type_enabled
0x10021bb5c:  80 0a 00 35   cbnz	w0, loc_10021bcac ; ⤵ 0x150
0x10021bb60:  ; loc_10021bb60
0x10021bb60:  d3 a3 80 52   mov	w19, #0x51e
0x10021bb64:  0f 00 00 14   b	loc_10021bba0 ; ⤵ 0x3c
0x10021bb68:  ; loc_10021bb68
0x10021bb68:  40 00 80 52   mov	w0, #0x2
0x10021bb6c:  61 08 80 52   mov	w1, #0x43
0x10021bb70:  75 22 fb 97   bl	0x1000e4544
0x10021bb74:  40 01 00 34   cbz	w0, loc_10021bb9c ; ⤵ 0x28
0x10021bb78:  c0 36 00 f0   adrp	x0, 0x1008f6000
0x10021bb7c:  00 48 0f 91   add	x0, x0, #0x3d2 ; "*key cannot be NULL"
0x10021bb80:  89 a5 00 94   bl	0x1002451a4
0x10021bb84:  60 08 80 52   mov	w0, #0x43
0x10021bb88:  e4 8f fa 97   bl	0x1000bfb18
0x10021bb8c:  f3 03 00 aa   mov	x19, x0
0x10021bb90:  01 02 80 52   mov	w1, #0x10
0x10021bb94:  a7 ce 17 94   bl	j__os_log_type_enabled
0x10021bb98:  00 09 00 35   cbnz	w0, loc_10021bcb8 ; ⤵ 0x120
0x10021bb9c:  ; loc_10021bb9c
0x10021bb9c:  b3 0c 80 52   mov	w19, #0x65
0x10021bba0:  ; loc_10021bba0
0x10021bba0:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x10021bba4:  a9 40 00 f0   adrp	x9, 0x100a32000
0x10021bba8:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10021bbac:  29 01 40 f9   ldr	x9, [x9]
0x10021bbb0:  3f 01 08 eb   cmp	x9, x8
0x10021bbb4:  81 08 00 54   b.ne	loc_10021bcc4 ; ⤵ 0x110
0x10021bbb8:  e0 03 13 aa   mov	x0, x19
0x10021bbbc:  fd 7b 48 a9   ldp	fp, lr, [sp, #0x80]
0x10021bbc0:  f4 4f 47 a9   ldp	x20, x19, [sp, #0x70]
0x10021bbc4:  f6 57 46 a9   ldp	x22, x21, [sp, #0x60]
0x10021bbc8:  f8 5f 45 a9   ldp	x24, x23, [sp, #0x50]
0x10021bbcc:  fa 67 44 a9   ldp	x26, x25, [sp, #0x40]
0x10021bbd0:  ff 43 02 91   add	sp, sp, #0x90
0x10021bbd4:  ff 0f 5f d6   retab
0x10021bbd8:  ; loc_10021bbd8
0x10021bbd8:  7f 46 00 71   cmp	w19, #0x11
0x10021bbdc:  43 02 00 54   b.lo	loc_10021bc24 ; ⤵ 0x48
0x10021bbe0:  40 00 80 52   mov	w0, #0x2
0x10021bbe4:  61 08 80 52   mov	w1, #0x43
0x10021bbe8:  57 22 fb 97   bl	0x1000e4544
0x10021bbec:  80 fd ff 34   cbz	w0, loc_10021bb9c ; ⤴ -0x50
0x10021bbf0:  f3 03 00 f9   str	x19, [sp]
0x10021bbf4:  c0 36 00 f0   adrp	x0, 0x1008f6000
0x10021bbf8:  00 bc 0d 91   add	x0, x0, #0x36f ; "LTK length is too big : %d."
0x10021bbfc:  6a a5 00 94   bl	0x1002451a4
0x10021bc00:  60 08 80 52   mov	w0, #0x43
0x10021bc04:  c5 8f fa 97   bl	0x1000bfb18
0x10021bc08:  f3 03 00 aa   mov	x19, x0
0x10021bc0c:  01 02 80 52   mov	w1, #0x10
0x10021bc10:  88 ce 17 94   bl	j__os_log_type_enabled
0x10021bc14:  40 fc ff 34   cbz	w0, loc_10021bb9c ; ⤴ -0x78
0x10021bc18:  e0 03 13 aa   mov	x0, x19
0x10021bc1c:  a6 71 16 94   bl	0x1007b82b4
0x10021bc20:  df ff ff 17   b	loc_10021bb9c ; ⤴ -0x84
0x10021bc24:  ; loc_10021bc24
0x10021bc24:  e2 03 13 2a   mov	w2, w19
0x10021bc28:  f9 a3 00 91   add	x25, sp, #0x28
0x10021bc2c:  e0 a3 00 91   add	x0, sp, #0x28
0x10021bc30:  e1 03 18 aa   mov	x1, x24
0x10021bc34:  03 02 80 52   mov	w3, #0x10
0x10021bc38:  8a c9 17 94   bl	j____memmove_chk
0x10021bc3c:  b3 a6 02 39   strb	w19, [x21, #0xa9]
0x10021bc40:  f7 67 01 a9   stp	x23, x25, [sp, #0x10]
0x10021bc44:  f5 5b 00 a9   stp	x21, x22, [sp]
0x10021bc48:  20 17 80 52   mov	w0, #0xb9
0x10021bc4c:  03 44 fd 97   bl	0x10016cc58
0x10021bc50:  f3 03 00 aa   mov	x19, x0
0x10021bc54:  40 02 00 34   cbz	w0, loc_10021bc9c ; ⤵ 0x48
0x10021bc58:  40 00 80 52   mov	w0, #0x2
0x10021bc5c:  61 08 80 52   mov	w1, #0x43
0x10021bc60:  39 22 fb 97   bl	0x1000e4544
0x10021bc64:  e0 f9 ff 34   cbz	w0, loc_10021bba0 ; ⤴ -0xc4
0x10021bc68:  f3 03 00 f9   str	x19, [sp]
0x10021bc6c:  c0 36 00 f0   adrp	x0, 0x1008f6000
0x10021bc70:  00 98 0f 91   add	x0, x0, #0x3e6 ; "Could not start the encryption on the LE link %!."
0x10021bc74:  4c a5 00 94   bl	0x1002451a4
0x10021bc78:  60 08 80 52   mov	w0, #0x43
0x10021bc7c:  a7 8f fa 97   bl	0x1000bfb18
0x10021bc80:  f4 03 00 aa   mov	x20, x0
0x10021bc84:  01 02 80 52   mov	w1, #0x10
0x10021bc88:  6a ce 17 94   bl	j__os_log_type_enabled
0x10021bc8c:  a0 f8 ff 34   cbz	w0, loc_10021bba0 ; ⤴ -0xec
0x10021bc90:  e0 03 14 aa   mov	x0, x20
0x10021bc94:  88 71 16 94   bl	0x1007b82b4
0x10021bc98:  c2 ff ff 17   b	loc_10021bba0 ; ⤴ -0xf8
0x10021bc9c:  ; loc_10021bc9c
0x10021bc9c:  48 00 80 52   mov	w8, #0x2
0x10021bca0:  a8 a2 02 39   strb	w8, [x21, #0xa8]
0x10021bca4:  b4 ae 02 39   strb	w20, [x21, #0xab]
0x10021bca8:  be ff ff 17   b	loc_10021bba0 ; ⤴ -0x108
0x10021bcac:  ; loc_10021bcac
0x10021bcac:  e0 03 13 aa   mov	x0, x19
0x10021bcb0:  81 71 16 94   bl	0x1007b82b4
0x10021bcb4:  ab ff ff 17   b	loc_10021bb60 ; ⤴ -0x154
0x10021bcb8:  ; loc_10021bcb8
0x10021bcb8:  e0 03 13 aa   mov	x0, x19
0x10021bcbc:  7e 71 16 94   bl	0x1007b82b4
0x10021bcc0:  b7 ff ff 17   b	loc_10021bb9c ; ⤴ -0x124
0x10021bcc4:  ; loc_10021bcc4
0x10021bcc4:  73 c9 17 94   bl	j____stack_chk_fail

