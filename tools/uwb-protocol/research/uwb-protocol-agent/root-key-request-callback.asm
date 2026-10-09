
sub_10021ad24:
0x10021ad24:  7f 23 03 d5   pacibsp
0x10021ad28:  ff 03 01 d1   sub	sp, sp, #0x40
0x10021ad2c:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x10021ad30:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10021ad34:  fd c3 00 91   add	fp, sp, #0x30
0x10021ad38:  08 04 40 f9   ldr	x8, [x0, #0x8]
0x10021ad3c:  13 01 40 f9   ldr	x19, [x8]
0x10021ad40:  f3 0f 00 f9   str	x19, [sp, #0x18]
0x10021ad44:  e8 44 00 b0   adrp	x8, 0x100ab7000
0x10021ad48:  08 0d 45 f9   ldr	x8, [x8, #0xa18] ; data_100ab7a18 (__DATA.__bss)
0x10021ad4c:  e8 07 00 b4   cbz	x8, loc_10021ae48 ; ⤵ 0xfc
0x10021ad50:  ff 07 00 f9   str	xzr, [sp, #0x8]
0x10021ad54:  33 04 00 b4   cbz	x19, loc_10021add8 ; ⤵ 0x84
0x10021ad58:  e0 03 13 aa   mov	x0, x19
0x10021ad5c:  71 5b fd 97   bl	0x100171b20
0x10021ad60:  c0 03 00 36   tbz	w0, #0, loc_10021add8 ; ⤵ 0x78
0x10021ad64:  e8 63 00 91   add	x8, sp, #0x18
0x10021ad68:  e8 0b 00 f9   str	x8, [sp, #0x10]
0x10021ad6c:  08 01 80 52   mov	w8, #0x8
0x10021ad70:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10021ad74:  10 00 00 d0   adrp	x16, 0x10021c000
0x10021ad78:  10 32 36 91   add	x16, x16, #0xd8c
0x10021ad7c:  f0 23 c1 da   paciza	x16
0x10021ad80:  e0 03 10 aa   mov	x0, x16
0x10021ad84:  e1 23 00 91   add	x1, sp, #0x8
0x10021ad88:  63 52 03 91   add	x3, x19, #0xd4
0x10021ad8c:  02 71 82 52   mov	w2, #0x1388
0x10021ad90:  a7 aa 00 94   bl	0x10024582c
0x10021ad94:  20 04 00 34   cbz	w0, loc_10021ae18 ; ⤵ 0x84
0x10021ad98:  40 00 80 52   mov	w0, #0x2
0x10021ad9c:  61 08 80 52   mov	w1, #0x43
0x10021ada0:  e9 25 fb 97   bl	0x1000e4544
0x10021ada4:  20 05 00 34   cbz	w0, loc_10021ae48 ; ⤵ 0xa4
0x10021ada8:  e0 36 00 90   adrp	x0, 0x1008f6000
0x10021adac:  00 a0 05 91   add	x0, x0, #0x168 ; "Failed to set key request timeout CB"
0x10021adb0:  fd a8 00 94   bl	0x1002451a4
0x10021adb4:  60 08 80 52   mov	w0, #0x43
0x10021adb8:  58 93 fa 97   bl	0x1000bfb18
0x10021adbc:  f3 03 00 aa   mov	x19, x0
0x10021adc0:  01 02 80 52   mov	w1, #0x10
0x10021adc4:  1b d2 17 94   bl	j__os_log_type_enabled
0x10021adc8:  00 04 00 34   cbz	w0, loc_10021ae48 ; ⤵ 0x80
0x10021adcc:  e0 03 13 aa   mov	x0, x19
0x10021add0:  39 75 16 94   bl	0x1007b82b4
0x10021add4:  1d 00 00 14   b	loc_10021ae48 ; ⤵ 0x74
0x10021add8:  ; loc_10021add8
0x10021add8:  40 00 80 52   mov	w0, #0x2
0x10021addc:  61 08 80 52   mov	w1, #0x43
0x10021ade0:  d9 25 fb 97   bl	0x1000e4544
0x10021ade4:  20 03 00 34   cbz	w0, loc_10021ae48 ; ⤵ 0x64
0x10021ade8:  80 36 00 f0   adrp	x0, 0x1008ed000
0x10021adec:  00 e0 0a 91   add	x0, x0, #0x2b8 ; "This handle is not a LE connection."
0x10021adf0:  ed a8 00 94   bl	0x1002451a4
0x10021adf4:  60 08 80 52   mov	w0, #0x43
0x10021adf8:  48 93 fa 97   bl	0x1000bfb18
0x10021adfc:  f3 03 00 aa   mov	x19, x0
0x10021ae00:  01 02 80 52   mov	w1, #0x10
0x10021ae04:  0b d2 17 94   bl	j__os_log_type_enabled
0x10021ae08:  00 02 00 34   cbz	w0, loc_10021ae48 ; ⤵ 0x40
0x10021ae0c:  e0 03 13 aa   mov	x0, x19
0x10021ae10:  29 75 16 94   bl	0x1007b82b4
0x10021ae14:  0d 00 00 14   b	loc_10021ae48 ; ⤵ 0x34
0x10021ae18:  ; loc_10021ae18
0x10021ae18:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x10021ae1c:  09 dd 40 39   ldrb	w9, [x8, #0x37]
0x10021ae20:  3f 01 00 71   cmp	w9, #0
0x10021ae24:  09 06 80 52   mov	w9, #0x30
0x10021ae28:  0a 07 80 52   mov	w10, #0x38
0x10021ae2c:  49 11 89 9a   csel	x9, x10, x9, ne
0x10021ae30:  ea 44 00 b0   adrp	x10, 0x100ab7000
0x10021ae34:  4a 61 28 91   add	x10, x10, #0xa18 ; data_100ab7a18 (__DATA.__bss)
0x10021ae38:  4b 01 40 f9   ldr	x11, [x10]
0x10021ae3c:  41 09 40 f9   ldr	x1, [x10, #0x10]
0x10021ae40:  00 01 09 8b   add	x0, x8, x9
0x10021ae44:  7f 09 3f d6   blraaz	x11
0x10021ae48:  ; loc_10021ae48
0x10021ae48:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x10021ae4c:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x10021ae50:  ff 03 01 91   add	sp, sp, #0x40
0x10021ae54:  ff 0f 5f d6   retab

