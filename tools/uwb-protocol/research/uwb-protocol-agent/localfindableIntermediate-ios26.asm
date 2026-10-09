0x100b6cd70:  f3 03 15 aa   mov	x19, x21
0x100b6cd74:  b5 07 00 b4   cbz	x21, loc_100b6ce68 ; ⤵ 0xf4
0x100b6cd78:  e0 03 18 aa   mov	x0, x24
0x100b6cd7c:  e1 23 40 f9   ldr	x1, [sp, #0x40]
0x100b6cd80:  58 00 00 14   b	loc_100b6cee0 ; ⤵ 0x160
0x100b6cd84:  c0 6e 00 b0   adrp	x0, 0x101945000
0x100b6cd88:  00 00 03 91   add	x0, x0, #0xc0 ; data_1019450c0 (__DATA.__data)
0x100b6cd8c:  f0 28 00 90   adrp	x16, 0x101088000
0x100b6cd90:  10 d2 26 91   add	x16, x16, #0x9b4
0x100b6cd94:  f0 23 c1 da   paciza	x16
0x100b6cd98:  e1 03 10 aa   mov	x1, x16
0x100b6cd9c:  3d 7b 28 94   bl	j__swift_once
0x100b6cda0:  13 ff ff 17   b	loc_100b6c9ec ; ⤴ -0x3b4
0x100b6cda4:  e0 07 02 a9   stp	x0, x1, [sp, #0x20]
0x100b6cda8:  e0 03 17 aa   mov	x0, x23
0x100b6cdac:  c1 77 28 94   bl	j__CCECCryptorRelease
0x100b6cdb0:  e0 03 19 aa   mov	x0, x25
0x100b6cdb4:  e1 03 18 aa   mov	x1, x24
0x100b6cdb8:  7a a8 d2 97   bl	0x100016fa0
0x100b6cdbc:  f9 2f 40 f9   ldr	x25, [sp, #0x58]
0x100b6cdc0:  e8 2b 40 f9   ldr	x8, [sp, #0x50]
0x100b6cdc4:  17 61 40 a9   ldp	x23, x24, [x8]
0x100b6cdc8:  16 51 00 a9   stp	x22, x20, [x8]
0x100b6cdcc:  e0 03 16 aa   mov	x0, x22
0x100b6cdd0:  e1 03 14 aa   mov	x1, x20
0x100b6cdd4:  08 b0 d2 97   bl	0x100018df4
0x100b6cdd8:  e0 03 17 aa   mov	x0, x23
0x100b6cddc:  e1 03 18 aa   mov	x1, x24
0x100b6cde0:  70 a8 d2 97   bl	0x100016fa0
0x100b6cde4:  20 cd 8d d2   mov	x0, #0x6e69
0x100b6cde8:  80 ae ac f2   movk	x0, #0x6574, lsl #0x10
0x100b6cdec:  40 ae cd f2   movk	x0, #0x6d72, lsl #0x20
0x100b6cdf0:  a0 8c ec f2   movk	x0, #0x6465, lsl #0x30
0x100b6cdf4:  21 2d 8c d2   mov	x1, #0x6169
0x100b6cdf8:  81 ae ac f2   movk	x1, #0x6574, lsl #0x10
0x100b6cdfc:  01 80 fd f2   movk	x1, #0xec00, lsl #0x30
0x100b6ce00:  3c 6f 28 94   bl	j__$sSS10FindMyBaseE8utf8Data10Foundation0E0Vvg
0x100b6ce04:  f8 03 00 aa   mov	x24, x0
0x100b6ce08:  f7 03 01 aa   mov	x23, x1
0x100b6ce0c:  e0 03 16 aa   mov	x0, x22
0x100b6ce10:  e1 03 14 aa   mov	x1, x20
0x100b6ce14:  e2 03 18 aa   mov	x2, x24
0x100b6ce18:  e3 03 17 aa   mov	x3, x23
0x100b6ce1c:  04 04 80 52   mov	w4, #0x20
0x100b6ce20:  f5 03 13 aa   mov	x21, x19
0x100b6ce24:  05 10 00 94   bl	0x100b70e38
0x100b6ce28:  f3 03 15 aa   mov	x19, x21
0x100b6ce2c:  d5 00 00 b5   cbnz	x21, loc_100b6ce44 ; ⤵ 0x18
0x100b6ce30:  e8 83 01 91   add	x8, sp, #0x60
0x100b6ce34:  f5 03 13 aa   mov	x21, x19
0x100b6ce38:  64 f7 e6 97   bl	0x10052abc8
0x100b6ce3c:  f3 03 15 aa   mov	x19, x21
0x100b6ce40:  b5 07 00 b4   cbz	x21, loc_100b6cf34 ; ⤵ 0xf4
0x100b6ce44:  ; loc_100b6ce44
0x100b6ce44:  e0 03 18 aa   mov	x0, x24
0x100b6ce48:  e1 03 17 aa   mov	x1, x23
0x100b6ce4c:  55 a8 d2 97   bl	0x100016fa0
0x100b6ce50:  e0 03 19 aa   mov	x0, x25
0x100b6ce54:  e1 03 1c aa   mov	x1, x28
0x100b6ce58:  5f 66 d2 97   bl	0x1000067d4
0x100b6ce5c:  e0 07 42 a9   ldp	x0, x1, [sp, #0x20]
0x100b6ce60:  50 a8 d2 97   bl	0x100016fa0
0x100b6ce64:  23 00 00 14   b	loc_100b6cef0 ; ⤵ 0x8c
0x100b6ce68:  ; loc_100b6ce68
0x100b6ce68:  e0 63 03 a9   stp	x0, x24, [sp, #0x30]
0x100b6ce6c:  e1 0f 00 f9   str	x1, [sp, #0x18]
0x100b6ce70:  e0 03 18 aa   mov	x0, x24
0x100b6ce74:  f8 23 40 f9   ldr	x24, [sp, #0x40]
0x100b6ce78:  e1 03 18 aa   mov	x1, x24
0x100b6ce7c:  de af d2 97   bl	0x100018df4
0x100b6ce80:  e0 1f 40 f9   ldr	x0, [sp, #0x38]
0x100b6ce84:  e1 03 18 aa   mov	x1, x24
0x100b6ce88:  f5 03 13 aa   mov	x21, x19
0x100b6ce8c:  02 d4 e6 97   bl	0x100521e94
0x100b6ce90:  e0 87 00 a9   stp	x0, x1, [sp, #0x8]
0x100b6ce94:  f3 03 15 aa   mov	x19, x21
0x100b6ce98:  d5 01 00 b5   cbnz	x21, loc_100b6ced0 ; ⤵ 0x38
0x100b6ce9c:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100b6cea0:  f8 0f 40 f9   ldr	x24, [sp, #0x18]
0x100b6cea4:  e1 03 18 aa   mov	x1, x24
0x100b6cea8:  d3 af d2 97   bl	0x100018df4
0x100b6ceac:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100b6ceb0:  e1 03 18 aa   mov	x1, x24
0x100b6ceb4:  f5 03 13 aa   mov	x21, x19
0x100b6ceb8:  c8 d4 e6 97   bl	0x1005221d8
0x100b6cebc:  e0 07 02 a9   stp	x0, x1, [sp, #0x20]
0x100b6cec0:  f3 03 15 aa   mov	x19, x21
0x100b6cec4:  55 07 00 b4   cbz	x21, loc_100b6cfac ; ⤵ 0xe8
0x100b6cec8:  e0 87 40 a9   ldp	x0, x1, [sp, #0x8]
0x100b6cecc:  35 a8 d2 97   bl	0x100016fa0
0x100b6ced0:  ; loc_100b6ced0
0x100b6ced0:  e0 87 43 a9   ldp	x0, x1, [sp, #0x38]
0x100b6ced4:  33 a8 d2 97   bl	0x100016fa0
0x100b6ced8:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100b6cedc:  e1 0f 40 f9   ldr	x1, [sp, #0x18]
0x100b6cee0:  ; loc_100b6cee0
0x100b6cee0:  30 a8 d2 97   bl	0x100016fa0
0x100b6cee4:  e0 03 1c aa   mov	x0, x28
0x100b6cee8:  e1 03 19 aa   mov	x1, x25
0x100b6ceec:  3a 66 d2 97   bl	0x1000067d4
0x100b6cef0:  ; loc_100b6cef0
0x100b6cef0:  e0 03 16 aa   mov	x0, x22
0x100b6cef4:  e1 03 14 aa   mov	x1, x20
0x100b6cef8:  2a a8 d2 97   bl	0x100016fa0
0x100b6cefc:  e0 03 1b aa   mov	x0, x27
0x100b6cf00:  e1 03 1a aa   mov	x1, x26
0x100b6cf04:  42 ff ff 17   b	loc_100b6cc0c ; ⤴ -0x2f8
0x100b6cf08:  68 6e 00 b0   adrp	x8, 0x101939000
0x100b6cf0c:  08 c1 06 91   add	x8, x8, #0x1b0 ; data_1019391b0 (__DATA.__data)
0x100b6cf10:  10 00 00 90   adrp	x16, 0x100b6c000
0x100b6cf14:  10 72 3f 91   add	x16, x16, #0xfdc
0x100b6cf18:  f0 23 c1 da   paciza	x16
0x100b6cf1c:  e1 03 10 aa   mov	x1, x16
0x100b6cf20:  f3 03 00 aa   mov	x19, x0
0x100b6cf24:  e0 03 08 aa   mov	x0, x8
0x100b6cf28:  da 7a 28 94   bl	j__swift_once
0x100b6cf2c:  e0 03 13 aa   mov	x0, x19
0x100b6cf30:  f8 fe ff 17   b	loc_100b6cb10 ; ⤴ -0x420
0x100b6cf34:  ; loc_100b6cf34
0x100b6cf34:  e0 03 18 aa   mov	x0, x24
0x100b6cf38:  e1 03 17 aa   mov	x1, x23
0x100b6cf3c:  19 a8 d2 97   bl	0x100016fa0
0x100b6cf40:  e9 23 46 a9   ldp	x9, x8, [sp, #0x60]
0x100b6cf44:  e8 27 05 a9   stp	x8, x9, [sp, #0x50]
0x100b6cf48:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x100b6cf4c:  e0 03 18 aa   mov	x0, x24

