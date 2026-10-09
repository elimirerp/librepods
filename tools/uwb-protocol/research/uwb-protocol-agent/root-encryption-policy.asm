
sub_10021be24:
0x10021be24:  7f 23 03 d5   pacibsp
0x10021be28:  ff 03 01 d1   sub	sp, sp, #0x40
0x10021be2c:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x10021be30:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10021be34:  fd c3 00 91   add	fp, sp, #0x30
0x10021be38:  e0 0f 00 f9   str	x0, [sp, #0x18]
0x10021be3c:  20 01 00 b4   cbz	x0, loc_10021be60 ; ⤵ 0x24
0x10021be40:  f3 03 00 aa   mov	x19, x0
0x10021be44:  37 57 fd 97   bl	0x100171b20
0x10021be48:  c0 00 00 36   tbz	w0, #0, loc_10021be60 ; ⤵ 0x18
0x10021be4c:  68 a2 42 39   ldrb	w8, [x19, #0xa8]
0x10021be50:  1f 09 00 71   cmp	w8, #0x2
0x10021be54:  a1 02 00 54   b.ne	loc_10021bea8 ; ⤵ 0x54
0x10021be58:  c0 0e 80 52   mov	w0, #0x76
0x10021be5c:  0f 00 00 14   b	loc_10021be98 ; ⤵ 0x3c
0x10021be60:  ; loc_10021be60
0x10021be60:  40 00 80 52   mov	w0, #0x2
0x10021be64:  61 08 80 52   mov	w1, #0x43
0x10021be68:  b7 21 fb 97   bl	0x1000e4544
0x10021be6c:  40 01 00 34   cbz	w0, loc_10021be94 ; ⤵ 0x28
0x10021be70:  80 36 00 d0   adrp	x0, 0x1008ed000
0x10021be74:  00 e0 0a 91   add	x0, x0, #0x2b8 ; "This handle is not a LE connection."
0x10021be78:  cb a4 00 94   bl	0x1002451a4
0x10021be7c:  60 08 80 52   mov	w0, #0x43
0x10021be80:  26 8f fa 97   bl	0x1000bfb18
0x10021be84:  f3 03 00 aa   mov	x19, x0
0x10021be88:  01 02 80 52   mov	w1, #0x10
0x10021be8c:  e9 cd 17 94   bl	j__os_log_type_enabled
0x10021be90:  a0 06 00 35   cbnz	w0, loc_10021bf64 ; ⤵ 0xd4
0x10021be94:  ; loc_10021be94
0x10021be94:  c0 a3 80 52   mov	w0, #0x51e
0x10021be98:  ; loc_10021be98
0x10021be98:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x10021be9c:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x10021bea0:  ff 03 01 91   add	sp, sp, #0x40
0x10021bea4:  ff 0f 5f d6   retab
0x10021bea8:  ; loc_10021bea8
0x10021bea8:  e8 44 00 90   adrp	x8, 0x100ab7000
0x10021beac:  08 0d 45 f9   ldr	x8, [x8, #0xa18] ; data_100ab7a18 (__DATA.__bss)
0x10021beb0:  c8 03 00 b4   cbz	x8, loc_10021bf28 ; ⤵ 0x78
0x10021beb4:  e8 63 00 91   add	x8, sp, #0x18
0x10021beb8:  ff a3 00 a9   stp	xzr, x8, [sp, #0x8]
0x10021bebc:  08 01 80 52   mov	w8, #0x8
0x10021bec0:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10021bec4:  f0 ff ff f0   adrp	x16, 0x10021a000
0x10021bec8:  10 92 34 91   add	x16, x16, #0xd24
0x10021becc:  f0 23 c1 da   paciza	x16
0x10021bed0:  e0 03 10 aa   mov	x0, x16
0x10021bed4:  e1 23 00 91   add	x1, sp, #0x8
0x10021bed8:  02 00 80 52   mov	w2, #0
0x10021bedc:  03 00 80 d2   mov	x3, #0
0x10021bee0:  53 a6 00 94   bl	0x10024582c
0x10021bee4:  a0 fd ff 34   cbz	w0, loc_10021be98 ; ⤴ -0x4c
0x10021bee8:  40 00 80 52   mov	w0, #0x2
0x10021beec:  61 08 80 52   mov	w1, #0x43
0x10021bef0:  95 21 fb 97   bl	0x1000e4544
0x10021bef4:  40 03 00 34   cbz	w0, loc_10021bf5c ; ⤵ 0x68
0x10021bef8:  c0 36 00 f0   adrp	x0, 0x1008f6000
0x10021befc:  00 3c 11 91   add	x0, x0, #0x44f ; "Failed to send key request callback"
0x10021bf00:  a9 a4 00 94   bl	0x1002451a4
0x10021bf04:  60 08 80 52   mov	w0, #0x43
0x10021bf08:  04 8f fa 97   bl	0x1000bfb18
0x10021bf0c:  f3 03 00 aa   mov	x19, x0
0x10021bf10:  01 02 80 52   mov	w1, #0x10
0x10021bf14:  c7 cd 17 94   bl	j__os_log_type_enabled
0x10021bf18:  20 02 00 34   cbz	w0, loc_10021bf5c ; ⤵ 0x44
0x10021bf1c:  e0 03 13 aa   mov	x0, x19
0x10021bf20:  e5 70 16 94   bl	0x1007b82b4
0x10021bf24:  0e 00 00 14   b	loc_10021bf5c ; ⤵ 0x38
0x10021bf28:  ; loc_10021bf28
0x10021bf28:  40 00 80 52   mov	w0, #0x2
0x10021bf2c:  61 08 80 52   mov	w1, #0x43
0x10021bf30:  85 21 fb 97   bl	0x1000e4544
0x10021bf34:  40 01 00 34   cbz	w0, loc_10021bf5c ; ⤵ 0x28
0x10021bf38:  c0 36 00 f0   adrp	x0, 0x1008f6000
0x10021bf3c:  00 e8 10 91   add	x0, x0, #0x43a ; "No callbacks defined"
0x10021bf40:  99 a4 00 94   bl	0x1002451a4
0x10021bf44:  60 08 80 52   mov	w0, #0x43
0x10021bf48:  f4 8e fa 97   bl	0x1000bfb18
0x10021bf4c:  f3 03 00 aa   mov	x19, x0
0x10021bf50:  01 02 80 52   mov	w1, #0x10
0x10021bf54:  b7 cd 17 94   bl	j__os_log_type_enabled
0x10021bf58:  c0 00 00 35   cbnz	w0, loc_10021bf70 ; ⤵ 0x18
0x10021bf5c:  ; loc_10021bf5c
0x10021bf5c:  a0 0c 80 52   mov	w0, #0x65
0x10021bf60:  ce ff ff 17   b	loc_10021be98 ; ⤴ -0xc8
0x10021bf64:  ; loc_10021bf64
0x10021bf64:  e0 03 13 aa   mov	x0, x19
0x10021bf68:  d3 70 16 94   bl	0x1007b82b4
0x10021bf6c:  ca ff ff 17   b	loc_10021be94 ; ⤴ -0xd8
0x10021bf70:  ; loc_10021bf70
0x10021bf70:  e0 03 13 aa   mov	x0, x19
0x10021bf74:  d0 70 16 94   bl	0x1007b82b4
0x10021bf78:  f9 ff ff 17   b	loc_10021bf5c ; ⤴ -0x1c

