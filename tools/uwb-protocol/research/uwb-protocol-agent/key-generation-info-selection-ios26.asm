0x10094dcc0:  e0 03 17 aa   mov	x0, x23
0x10094dcc4:  e1 03 15 aa   mov	x1, x21
0x10094dcc8:  02 00 80 52   mov	w2, #0
0x10094dccc:  e3 03 13 aa   mov	x3, x19
0x10094dcd0:  e4 03 14 aa   mov	x4, x20
0x10094dcd4:  25 00 80 52   mov	w5, #0x1
0x10094dcd8:  f4 03 18 aa   mov	x20, x24
0x10094dcdc:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x10094dce0:  f5 cf 41 a9   ldp	x21, x19, [sp, #0x18]
0x10094dce4:  f8 df 40 a9   ldp	x24, x23, [sp, #0x8]
0x10094dce8:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x10094dcec:  ff 03 01 91   add	sp, sp, #0x40
0x10094dcf0:  ff 23 03 d5   autibsp
0x10094dcf4:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10094dcf8:  50 00 f0 b6   tbz	x16, #0x3e, loc_10094dd00 ; ⤵ 0x8
0x10094dcfc:  20 8e 38 d4   brk	#0xc471
0x10094dd00:  ; loc_10094dd00
0x10094dd00:  01 00 00 14   b	0x10094dd04

sub_10094dd04:
0x10094dd04:  7f 23 03 d5   pacibsp
0x10094dd08:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x10094dd0c:  ff 83 00 d1   sub	sp, sp, #0x20
0x10094dd10:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10094dd14:  f0 23 00 91   add	x16, sp, #0x8
0x10094dd18:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x10094dd1c:  f1 03 16 aa   mov	x17, x22
0x10094dd20:  11 0e c1 da   pacdb	x17, x16
0x10094dd24:  f1 07 00 f9   str	x17, [sp, #0x8]
0x10094dd28:  fd 43 00 91   add	fp, sp, #0x10
0x10094dd2c:  d4 2a 01 f9   str	x20, [x22, #0x250]
0x10094dd30:  c5 26 01 f9   str	x5, [x22, #0x248]
0x10094dd34:  c4 22 01 f9   str	x4, [x22, #0x240]
0x10094dd38:  c3 1e 01 f9   str	x3, [x22, #0x238]
0x10094dd3c:  c2 b6 0c 39   strb	w2, [x22, #0x32d]
0x10094dd40:  c1 1a 01 f9   str	x1, [x22, #0x230]
0x10094dd44:  c0 16 01 f9   str	x0, [x22, #0x228]
0x10094dd48:  00 00 80 d2   mov	x0, #0
0x10094dd4c:  c8 4a 00 94   bl	0x10096086c
0x10094dd50:  c0 2e 01 f9   str	x0, [x22, #0x258]
0x10094dd54:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x10094dd58:  f0 03 08 aa   mov	x16, x8
0x10094dd5c:  f1 03 00 aa   mov	x17, x0
0x10094dd60:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094dd64:  30 1a c1 da   autda	x16, x17
0x10094dd68:  f1 03 10 aa   mov	x17, x16
0x10094dd6c:  f1 47 c1 da   xpacd	x17
0x10094dd70:  1f 02 11 eb   cmp	x16, x17
0x10094dd74:  40 00 00 54   b.eq	loc_10094dd7c ; ⤵ 0x8
0x10094dd78:  40 8e 38 d4   brk	#0xc472
0x10094dd7c:  ; loc_10094dd7c
0x10094dd7c:  d0 32 01 f9   str	x16, [x22, #0x260]
0x10094dd80:  f0 03 08 aa   mov	x16, x8
0x10094dd84:  f1 03 00 aa   mov	x17, x0
0x10094dd88:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094dd8c:  30 1a c1 da   autda	x16, x17
0x10094dd90:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10094dd94:  08 3d 00 91   add	x8, x8, #0xf
0x10094dd98:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x10094dd9c:  75 f7 30 94   bl	j__swift_task_alloc
0x10094dda0:  c0 36 01 f9   str	x0, [x22, #0x268]
0x10094dda4:  00 00 80 d2   mov	x0, #0
0x10094dda8:  22 4a db 97   bl	0x100020630
0x10094ddac:  c0 3a 01 f9   str	x0, [x22, #0x270]
0x10094ddb0:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x10094ddb4:  f1 03 00 aa   mov	x17, x0
0x10094ddb8:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094ddbc:  30 1a c1 da   autda	x16, x17
0x10094ddc0:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10094ddc4:  08 3d 00 91   add	x8, x8, #0xf
0x10094ddc8:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x10094ddcc:  69 f7 30 94   bl	j__swift_task_alloc
0x10094ddd0:  c0 3e 01 f9   str	x0, [x22, #0x278]
0x10094ddd4:  00 00 80 d2   mov	x0, #0
0x10094ddd8:  a8 47 db 97   bl	0x10001fc78
0x10094dddc:  c0 42 01 f9   str	x0, [x22, #0x280]
0x10094dde0:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x10094dde4:  f1 03 00 aa   mov	x17, x0
0x10094dde8:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094ddec:  30 1a c1 da   autda	x16, x17
0x10094ddf0:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10094ddf4:  08 3d 00 91   add	x8, x8, #0xf
0x10094ddf8:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x10094ddfc:  5d f7 30 94   bl	j__swift_task_alloc
0x10094de00:  c0 46 01 f9   str	x0, [x22, #0x288]
0x10094de04:  00 00 80 d2   mov	x0, #0
0x10094de08:  6a e7 30 94   bl	j__$s2os6LoggerVMa
0x10094de0c:  c0 4a 01 f9   str	x0, [x22, #0x290]
0x10094de10:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x10094de14:  f0 03 08 aa   mov	x16, x8
0x10094de18:  f1 03 00 aa   mov	x17, x0
0x10094de1c:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094de20:  30 1a c1 da   autda	x16, x17
0x10094de24:  f1 03 10 aa   mov	x17, x16
0x10094de28:  f1 47 c1 da   xpacd	x17
0x10094de2c:  1f 02 11 eb   cmp	x16, x17
0x10094de30:  40 00 00 54   b.eq	loc_10094de38 ; ⤵ 0x8
0x10094de34:  40 8e 38 d4   brk	#0xc472
0x10094de38:  ; loc_10094de38
0x10094de38:  d0 4e 01 f9   str	x16, [x22, #0x298]
0x10094de3c:  f0 03 08 aa   mov	x16, x8
0x10094de40:  f1 03 00 aa   mov	x17, x0
0x10094de44:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094de48:  30 1a c1 da   autda	x16, x17
0x10094de4c:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10094de50:  14 3d 00 91   add	x20, x8, #0xf
0x10094de54:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x10094de58:  46 f7 30 94   bl	j__swift_task_alloc
0x10094de5c:  c0 52 01 f9   str	x0, [x22, #0x2a0]
0x10094de60:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x10094de64:  43 f7 30 94   bl	j__swift_task_alloc
0x10094de68:  c0 56 01 f9   str	x0, [x22, #0x2a8]
0x10094de6c:  00 7f 00 f0   adrp	x0, 0x101930000
0x10094de70:  00 20 11 91   add	x0, x0, #0x448 ; data_101930448 (__DATA.__data)
0x10094de74:  a1 66 00 90   adrp	x1, 0x101621000
0x10094de78:  21 c0 27 91   add	x1, x1, #0x9f0 ; "\xc4\xde\n"
0x10094de7c:  5e a9 dd 97   bl	0x1000b83f4
0x10094de80:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x10094de84:  f1 03 00 aa   mov	x17, x0
0x10094de88:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094de8c:  30 1a c1 da   autda	x16, x17
0x10094de90:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10094de94:  08 3d 00 91   add	x8, x8, #0xf
0x10094de98:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x10094de9c:  35 f7 30 94   bl	j__swift_task_alloc
0x10094dea0:  c0 5a 01 f9   str	x0, [x22, #0x2b0]
0x10094dea4:  00 00 80 d2   mov	x0, #0
0x10094dea8:  8e da 30 94   bl	j__$s10FindMyBase17DirectorySequenceVMa
0x10094deac:  c0 5e 01 f9   str	x0, [x22, #0x2b8]
0x10094deb0:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x10094deb4:  f0 03 08 aa   mov	x16, x8
0x10094deb8:  f1 03 00 aa   mov	x17, x0
0x10094debc:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094dec0:  30 1a c1 da   autda	x16, x17
0x10094dec4:  f1 03 10 aa   mov	x17, x16
0x10094dec8:  f1 47 c1 da   xpacd	x17
0x10094decc:  1f 02 11 eb   cmp	x16, x17
0x10094ded0:  40 00 00 54   b.eq	loc_10094ded8 ; ⤵ 0x8
0x10094ded4:  40 8e 38 d4   brk	#0xc472
0x10094ded8:  ; loc_10094ded8
0x10094ded8:  d0 62 01 f9   str	x16, [x22, #0x2c0]
0x10094dedc:  f0 03 08 aa   mov	x16, x8
0x10094dee0:  f1 03 00 aa   mov	x17, x0
0x10094dee4:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094dee8:  30 1a c1 da   autda	x16, x17
0x10094deec:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10094def0:  08 3d 00 91   add	x8, x8, #0xf
0x10094def4:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x10094def8:  1e f7 30 94   bl	j__swift_task_alloc
0x10094defc:  c0 66 01 f9   str	x0, [x22, #0x2c8]
0x10094df00:  60 7e 00 b0   adrp	x0, 0x10191a000
0x10094df04:  00 80 0c 91   add	x0, x0, #0x320 ; data_10191a320 (__DATA.__data)
0x10094df08:  21 65 00 90   adrp	x1, 0x1015f1000
0x10094df0c:  21 40 0d 91   add	x1, x1, #0x350 ; "\xc2\xec\f"
0x10094df10:  39 a9 dd 97   bl	0x1000b83f4
0x10094df14:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x10094df18:  f1 03 00 aa   mov	x17, x0
0x10094df1c:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094df20:  30 1a c1 da   autda	x16, x17
0x10094df24:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10094df28:  14 3d 00 91   add	x20, x8, #0xf
0x10094df2c:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x10094df30:  10 f7 30 94   bl	j__swift_task_alloc
0x10094df34:  c0 6a 01 f9   str	x0, [x22, #0x2d0]
0x10094df38:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x10094df3c:  0d f7 30 94   bl	j__swift_task_alloc
0x10094df40:  c0 6e 01 f9   str	x0, [x22, #0x2d8]
0x10094df44:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x10094df48:  0a f7 30 94   bl	j__swift_task_alloc
0x10094df4c:  c0 72 01 f9   str	x0, [x22, #0x2e0]
0x10094df50:  00 00 80 d2   mov	x0, #0
0x10094df54:  37 de 30 94   bl	j__$s10Foundation4UUIDVMa
0x10094df58:  c0 76 01 f9   str	x0, [x22, #0x2e8]
0x10094df5c:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x10094df60:  f0 03 08 aa   mov	x16, x8
0x10094df64:  f1 03 00 aa   mov	x17, x0
0x10094df68:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094df6c:  30 1a c1 da   autda	x16, x17
0x10094df70:  f1 03 10 aa   mov	x17, x16
0x10094df74:  f1 47 c1 da   xpacd	x17
0x10094df78:  1f 02 11 eb   cmp	x16, x17
0x10094df7c:  40 00 00 54   b.eq	loc_10094df84 ; ⤵ 0x8
0x10094df80:  40 8e 38 d4   brk	#0xc472
0x10094df84:  ; loc_10094df84
0x10094df84:  d0 7a 01 f9   str	x16, [x22, #0x2f0]
0x10094df88:  f0 03 08 aa   mov	x16, x8
0x10094df8c:  f1 03 00 aa   mov	x17, x0
0x10094df90:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094df94:  30 1a c1 da   autda	x16, x17
0x10094df98:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10094df9c:  08 3d 00 91   add	x8, x8, #0xf
0x10094dfa0:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x10094dfa4:  f3 f6 30 94   bl	j__swift_task_alloc
0x10094dfa8:  c0 7e 01 f9   str	x0, [x22, #0x2f8]
0x10094dfac:  00 00 80 d2   mov	x0, #0
0x10094dfb0:  00 dd 30 94   bl	j__$s10Foundation3URLVMa
0x10094dfb4:  c0 82 01 f9   str	x0, [x22, #0x300]
0x10094dfb8:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x10094dfbc:  f0 03 08 aa   mov	x16, x8
0x10094dfc0:  f1 03 00 aa   mov	x17, x0
0x10094dfc4:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094dfc8:  30 1a c1 da   autda	x16, x17
0x10094dfcc:  f1 03 10 aa   mov	x17, x16
0x10094dfd0:  f1 47 c1 da   xpacd	x17
0x10094dfd4:  1f 02 11 eb   cmp	x16, x17
0x10094dfd8:  40 00 00 54   b.eq	loc_10094dfe0 ; ⤵ 0x8
0x10094dfdc:  40 8e 38 d4   brk	#0xc472
0x10094dfe0:  ; loc_10094dfe0
0x10094dfe0:  d0 86 01 f9   str	x16, [x22, #0x308]
0x10094dfe4:  f0 03 08 aa   mov	x16, x8
0x10094dfe8:  f1 03 00 aa   mov	x17, x0
0x10094dfec:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10094dff0:  30 1a c1 da   autda	x16, x17
0x10094dff4:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10094dff8:  14 3d 00 91   add	x20, x8, #0xf
0x10094dffc:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x10094e000:  dc f6 30 94   bl	j__swift_task_alloc
0x10094e004:  c0 8a 01 f9   str	x0, [x22, #0x310]
0x10094e008:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x10094e00c:  d9 f6 30 94   bl	j__swift_task_alloc
0x10094e010:  c0 8e 01 f9   str	x0, [x22, #0x318]
0x10094e014:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x10094e018:  d6 f6 30 94   bl	j__swift_task_alloc
0x10094e01c:  c0 92 01 f9   str	x0, [x22, #0x320]
0x10094e020:  10 00 00 90   adrp	x16, 0x10094e000
0x10094e024:  10 62 01 91   add	x16, x16, #0x58
0x10094e028:  f0 23 c1 da   paciza	x16
0x10094e02c:  e0 03 10 aa   mov	x0, x16
0x10094e030:  01 00 80 d2   mov	x1, #0
0x10094e034:  02 00 80 d2   mov	x2, #0
0x10094e038:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10094e03c:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x10094e040:  ff 83 00 91   add	sp, sp, #0x20
0x10094e044:  ff 23 03 d5   autibsp
0x10094e048:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10094e04c:  50 00 f0 b6   tbz	x16, #0x3e, loc_10094e054 ; ⤵ 0x8
0x10094e050:  20 8e 38 d4   brk	#0xc471
0x10094e054:  ; loc_10094e054
0x10094e054:  e3 f6 30 14   b	j__swift_task_switch

sub_10094e058:
0x10094e058:  7f 23 03 d5   pacibsp
0x10094e05c:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x10094e060:  ff 83 07 d1   sub	sp, sp, #0x1e0
0x10094e064:  fc ef 18 a9   stp	x28, x27, [sp, #0x188]
0x10094e068:  fa e7 19 a9   stp	x26, x25, [sp, #0x198]
0x10094e06c:  f8 df 1a a9   stp	x24, x23, [sp, #0x1a8]
0x10094e070:  f5 cf 1b a9   stp	x21, x19, [sp, #0x1b8]
0x10094e074:  fd 7b 1d a9   stp	fp, lr, [sp, #0x1d0]
0x10094e078:  f0 23 07 91   add	x16, sp, #0x1c8
0x10094e07c:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x10094e080:  f1 03 16 aa   mov	x17, x22
0x10094e084:  11 0e c1 da   pacdb	x17, x16
0x10094e088:  f1 e7 00 f9   str	x17, [sp, #0x1c8]
0x10094e08c:  fd 43 07 91   add	fp, sp, #0x1d0
0x10094e090:  fb 03 16 aa   mov	x27, x22
0x10094e094:  c8 42 41 f9   ldr	x8, [x22, #0x280]
0x10094e098:  c9 1a 41 f9   ldr	x9, [x22, #0x230]
0x10094e09c:  08 19 80 b9   ldrsw	x8, [x8, #0x18]
0x10094e0a0:  28 01 08 8b   add	x8, x9, x8
0x10094e0a4:  17 05 40 f9   ldr	x23, [x8, #0x8]
0x10094e0a8:  e9 fe 7c d3   lsr	x9, x23, #0x3c
0x10094e0ac:  3f 39 00 f1   cmp	x9, #0xe
0x10094e0b0:  c9 01 00 54   b.ls	loc_10094e0e8 ; ⤵ 0x38
0x10094e0b4:  8c 49 00 94   bl	0x1009606e4
0x10094e0b8:  e1 03 00 aa   mov	x1, x0
0x10094e0bc:  40 7b 00 90   adrp	x0, 0x1018b6000
0x10094e0c0:  00 c0 3e 91   add	x0, x0, #0xfb0
0x10094e0c4:  02 00 80 d2   mov	x2, #0
0x10094e0c8:  03 00 80 52   mov	w3, #0
0x10094e0cc:  35 f5 30 94   bl	j__swift_allocError
0x10094e0d0:  28 00 80 52   mov	w8, #0x1
0x10094e0d4:  28 00 00 39   strb	w8, [x1]
0x10094e0d8:  a0 03 16 f8   stur	x0, [fp, #-0xa0]
0x10094e0dc:  f5 03 00 aa   mov	x21, x0
0x10094e0e0:  14 f7 30 94   bl	j__swift_willThrow
0x10094e0e4:  99 00 00 14   b	loc_10094e348 ; ⤵ 0x264
0x10094e0e8:  ; loc_10094e0e8
0x10094e0e8:  19 01 40 f9   ldr	x25, [x8]
0x10094e0ec:  1c 61 41 a9   ldp	x28, x24, [x8, #0x10]
0x10094e0f0:  16 55 42 a9   ldp	x22, x21, [x8, #0x20]
0x10094e0f4:  69 93 41 f9   ldr	x9, [x27, #0x320]
0x10094e0f8:  7a 7f 41 f9   ldr	x26, [x27, #0x2f8]
0x10094e0fc:  73 7b 41 f9   ldr	x19, [x27, #0x2f0]
0x10094e100:  bb 03 18 f8   stur	x27, [fp, #-0x80]
0x10094e104:  e8 03 1b aa   mov	x8, x27
0x10094e108:  1b 75 41 f9   ldr	x27, [x8, #0x2e8]
0x10094e10c:  a8 03 58 f8   ldur	x8, [fp, #-0x80]
0x10094e110:  0a 71 41 f9   ldr	x10, [x8, #0x2e0]
0x10094e114:  a8 03 58 f8   ldur	x8, [fp, #-0x80]
0x10094e118:  08 65 41 f9   ldr	x8, [x8, #0x2c8]
0x10094e11c:  a9 a3 34 a9   stp	x9, x8, [fp, #-0xb8]
0x10094e120:  a8 03 58 f8   ldur	x8, [fp, #-0x80]
0x10094e124:  08 61 41 f9   ldr	x8, [x8, #0x2c0]
0x10094e128:  aa 23 36 a9   stp	x10, x8, [fp, #-0xa0]
0x10094e12c:  a8 03 58 f8   ldur	x8, [fp, #-0x80]
0x10094e130:  08 5d 41 f9   ldr	x8, [x8, #0x2b8]
0x10094e134:  a8 03 17 f8   stur	x8, [fp, #-0x90]
0x10094e138:  a8 03 58 f8   ldur	x8, [fp, #-0x80]
0x10094e13c:  08 15 41 f9   ldr	x8, [x8, #0x228]
0x10094e140:  a8 03 14 f8   stur	x8, [fp, #-0xc0]
0x10094e144:  c8 79 00 90   adrp	x8, 0x101886000
0x10094e148:  00 71 42 f9   ldr	x0, [x8, #0x4e0] ; __got._OBJC_CLASS_$_NSProcessInfo
0x10094e14c:  15 f4 30 94   bl	j__objc_allocWithZone
0x10094e150:  f4 03 00 aa   mov	x20, x0
0x10094e154:  b9 83 15 f8   stur	x25, [fp, #-0xa8]
0x10094e158:  e0 03 19 aa   mov	x0, x25
0x10094e15c:  e1 03 17 aa   mov	x1, x23
0x10094e160:  25 2b db 97   bl	0x100018df4
0x10094e164:  fc e3 0d a9   stp	x28, x24, [sp, #0xd8]
0x10094e168:  e0 03 1c aa   mov	x0, x28
0x10094e16c:  e1 03 18 aa   mov	x1, x24
0x10094e170:  f8 03 16 aa   mov	x24, x22
0x10094e174:  20 2b db 97   bl	0x100018df4
0x10094e178:  e0 03 16 aa   mov	x0, x22
0x10094e17c:  f5 67 00 f9   str	x21, [sp, #0xc8]
0x10094e180:  e1 03 15 aa   mov	x1, x21
0x10094e184:  d8 8a db 97   bl	0x100030ce4
0x10094e188:  e0 03 14 aa   mov	x0, x20
0x10094e18c:  05 ff 30 94   bl	j__objc_msgSend(x0, "init")
0x10094e190:  f4 03 00 aa   mov	x20, x0
0x10094e194:  1b 06 31 94   bl	j__objc_msgSend(x0, "processIdentifier")
0x10094e198:  b7 83 17 f8   stur	x23, [fp, #-0x88]
0x10094e19c:  fc 03 00 aa   mov	x28, x0
0x10094e1a0:  20 f4 30 94   bl	j__objc_release_x20
0x10094e1a4:  08 00 fc d2   mov	x8, #0xe000000000000000
0x10094e1a8:  bf a3 39 a9   stp	xzr, x8, [fp, #-0x68]
0x10094e1ac:  b4 a3 01 d1   sub	x20, fp, #0x68
0x10094e1b0:  c0 02 80 52   mov	w0, #0x16
0x10094e1b4:  d7 ee 30 94   bl	j__$ss11_StringGutsV4growyySiF
0x10094e1b8:  a0 03 5a f8   ldur	x0, [fp, #-0x60]
0x10094e1bc:  29 f5 30 94   bl	j__swift_bridgeObjectRelease
0x10094e1c0:  c8 05 80 52   mov	w8, #0x2e
0x10094e1c4:  09 20 fc d2   mov	x9, #0xe100000000000000
0x10094e1c8:  a8 a7 39 a9   stp	x8, x9, [fp, #-0x68]
0x10094e1cc:  e8 03 1a aa   mov	x8, x26
0x10094e1d0:  94 dd 30 94   bl	j__$s10Foundation4UUIDVACycfC
0x10094e1d4:  f4 03 1a aa   mov	x20, x26
0x10094e1d8:  76 dd 30 94   bl	j__$s10Foundation4UUIDV10uuidStringSSvg
0x10094e1dc:  f7 03 00 aa   mov	x23, x0
0x10094e1e0:  f9 03 01 aa   mov	x25, x1
0x10094e1e4:  68 8e 40 f8   ldr	x8, [x19, #0x8]!

