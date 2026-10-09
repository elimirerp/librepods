0x19cb90ab4:  7f 23 03 d5   pacibsp
0x19cb90ab8:  ff 43 01 d1   sub	sp, sp, #0x50
0x19cb90abc:  f8 5f 01 a9   stp	x24, x23, [sp, #0x10]
0x19cb90ac0:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x19cb90ac4:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x19cb90ac8:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x19cb90acc:  fd 03 01 91   add	fp, sp, #0x40
0x19cb90ad0:  f3 03 06 aa   mov	x19, x6
0x19cb90ad4:  f4 03 05 aa   mov	x20, x5
0x19cb90ad8:  f5 03 04 aa   mov	x21, x4
0x19cb90adc:  f6 03 03 aa   mov	x22, x3
0x19cb90ae0:  f7 03 02 aa   mov	x23, x2
0x19cb90ae4:  88 eb 24 90   adrp	x8, 0x1e6900000
0x19cb90ae8:  08 ed 40 f9   ldr	x8, [x8, #0x1d8]
0x19cb90aec:  e0 23 00 a9   stp	x0, x8, [sp]
0x19cb90af0:  c8 cc 2e 90   adrp	x8, 0x1fa528000
0x19cb90af4:  01 a1 03 91   add	x1, x8, #0xe8
0x19cb90af8:  e0 03 00 91   mov	x0, sp
0x19cb90afc:  c9 d4 d0 94   bl	0x19ffc5e20
0x19cb90b00:  c0 00 00 b4   cbz	x0, 0x19cb90b18
0x19cb90b04:  17 20 00 39   strb	w23, [x0, #0x8]
0x19cb90b08:  16 24 00 39   strb	w22, [x0, #0x9]
0x19cb90b0c:  15 28 00 39   strb	w21, [x0, #0xa]
0x19cb90b10:  14 0c 00 b9   str	w20, [x0, #0xc]
0x19cb90b14:  13 2c 00 39   strb	w19, [x0, #0xb]
0x19cb90b18:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x19cb90b1c:  f4 4f 43 a9   ldp	x20, x19, [sp, #0x30]
0x19cb90b20:  f6 57 42 a9   ldp	x22, x21, [sp, #0x20]
0x19cb90b24:  f8 5f 41 a9   ldp	x24, x23, [sp, #0x10]
0x19cb90b28:  ff 43 01 91   add	sp, sp, #0x50
0x19cb90b2c:  ff 0f 5f d6   retab
0x19cb90b30:  7f 23 03 d5   pacibsp
0x19cb90b34:  ff 83 00 d1   sub	sp, sp, #0x20
0x19cb90b38:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x19cb90b3c:  fd 43 00 91   add	fp, sp, #0x10
0x19cb90b40:  88 eb 24 90   adrp	x8, 0x1e6900000
0x19cb90b44:  08 ed 40 f9   ldr	x8, [x8, #0x1d8]
0x19cb90b48:  e0 23 00 a9   stp	x0, x8, [sp]
0x19cb90b4c:  e8 25 2f b0   adrp	x8, 0x1fb04d000
0x19cb90b50:  01 a1 0d 91   add	x1, x8, #0x368
0x19cb90b54:  e0 03 00 91   mov	x0, sp
0x19cb90b58:  b2 d4 d0 94   bl	0x19ffc5e20
0x19cb90b5c:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x19cb90b60:  ff 83 00 91   add	sp, sp, #0x20
0x19cb90b64:  ff 0f 5f d6   retab

