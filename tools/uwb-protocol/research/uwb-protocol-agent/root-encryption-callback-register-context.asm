0x10021aa60:  48 5d fd 97   bl	0x100171f80
0x10021aa64:  e0 13 00 f9   str	x0, [sp, #0x20]
0x10021aa68:  20 0b 00 b4   cbz	x0, loc_10021abcc ; ⤵ 0x164
0x10021aa6c:  f4 03 00 aa   mov	x20, x0
0x10021aa70:  2c 5c fd 97   bl	0x100171b20
0x10021aa74:  20 09 00 36   tbz	w0, #0, loc_10021ab98 ; ⤵ 0x124
0x10021aa78:  80 da 40 b9   ldr	w0, [x20, #0xd8]
0x10021aa7c:  60 00 00 34   cbz	w0, loc_10021aa88 ; ⤵ 0xc
0x10021aa80:  72 ac 00 94   bl	0x100245c48
0x10021aa84:  9f da 00 b9   str	wzr, [x20, #0xd8]
0x10021aa88:  ; loc_10021aa88
0x10021aa88:  76 0a 00 34   cbz	w22, loc_10021abd4 ; ⤵ 0x14c
0x10021aa8c:  a8 1a 1f 12   and	w8, w21, #0xfe
0x10021aa90:  1f 09 00 71   cmp	w8, #0x2
0x10021aa94:  61 0c 00 54   b.ne	loc_10021ac20 ; ⤵ 0x18c
0x10021aa98:  e8 44 00 b0   adrp	x8, 0x100ab7000
0x10021aa9c:  08 0d 45 f9   ldr	x8, [x8, #0xa18] ; data_100ab7a18 (__DATA.__bss)
0x10021aaa0:  48 0e 00 b4   cbz	x8, loc_10021ac68 ; ⤵ 0x1c8
0x10021aaa4:  e8 83 00 91   add	x8, sp, #0x20
0x10021aaa8:  ff 23 01 a9   stp	xzr, x8, [sp, #0x10]
0x10021aaac:  08 01 80 52   mov	w8, #0x8
0x10021aab0:  e8 23 00 79   strh	w8, [sp, #0x10]
0x10021aab4:  10 00 00 90   adrp	x16, 0x10021a000
0x10021aab8:  10 92 34 91   add	x16, x16, #0xd24
0x10021aabc:  f0 23 c1 da   paciza	x16
0x10021aac0:  e0 03 10 aa   mov	x0, x16
0x10021aac4:  e1 43 00 91   add	x1, sp, #0x10
0x10021aac8:  02 00 80 52   mov	w2, #0
0x10021aacc:  03 00 80 d2   mov	x3, #0
0x10021aad0:  57 ab 00 94   bl	0x10024582c
0x10021aad4:  f3 03 00 aa   mov	x19, x0
0x10021aad8:  60 0e 00 34   cbz	w0, loc_10021aca4 ; ⤵ 0x1cc
0x10021aadc:  40 00 80 52   mov	w0, #0x2
0x10021aae0:  61 08 80 52   mov	w1, #0x43
0x10021aae4:  98 26 fb 97   bl	0x1000e4544
0x10021aae8:  60 01 00 34   cbz	w0, loc_10021ab14 ; ⤵ 0x2c
0x10021aaec:  f3 03 00 f9   str	x19, [sp]
0x10021aaf0:  e0 36 00 90   adrp	x0, 0x1008f6000
0x10021aaf4:  00 cc 07 91   add	x0, x0, #0x1f3 ; "OI_Dispatch_RegisterTimedFunc failed to set key len request timeout %!"
0x10021aaf8:  ab a9 00 94   bl	0x1002451a4
0x10021aafc:  60 08 80 52   mov	w0, #0x43
0x10021ab00:  06 94 fa 97   bl	0x1000bfb18
0x10021ab04:  f4 03 00 aa   mov	x20, x0
0x10021ab08:  01 02 80 52   mov	w1, #0x10
0x10021ab0c:  c9 d2 17 94   bl	j__os_log_type_enabled
0x10021ab10:  c0 0f 00 35   cbnz	w0, loc_10021ad08 ; ⤵ 0x1f8
0x10021ab14:  ; loc_10021ab14
0x10021ab14:  f4 13 40 f9   ldr	x20, [sp, #0x20]
0x10021ab18:  3d 00 00 14   b	loc_10021ac0c ; ⤵ 0xf4
0x10021ab1c:  40 00 80 52   mov	w0, #0x2
0x10021ab20:  61 08 80 52   mov	w1, #0x43
0x10021ab24:  88 26 fb 97   bl	0x1000e4544
0x10021ab28:  40 03 00 34   cbz	w0, loc_10021ab90 ; ⤵ 0x68
0x10021ab2c:  e0 36 00 90   adrp	x0, 0x1008f6000
0x10021ab30:  00 b0 06 91   add	x0, x0, #0x1ac ; "Invalid address"
0x10021ab34:  9c a9 00 94   bl	0x1002451a4
0x10021ab38:  60 08 80 52   mov	w0, #0x43
0x10021ab3c:  f7 93 fa 97   bl	0x1000bfb18
0x10021ab40:  f3 03 00 aa   mov	x19, x0
0x10021ab44:  01 02 80 52   mov	w1, #0x10
0x10021ab48:  ba d2 17 94   bl	j__os_log_type_enabled
0x10021ab4c:  20 02 00 34   cbz	w0, loc_10021ab90 ; ⤵ 0x44

