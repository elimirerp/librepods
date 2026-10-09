
sub_100b70e38:
0x100b70e38:  7f 23 03 d5   pacibsp
0x100b70e3c:  fc 0f 1a f8   str	x28, [sp, #-0x60]!
0x100b70e40:  fb 6b 01 a9   stp	x27, x26, [sp, #0x10]
0x100b70e44:  f9 63 02 a9   stp	x25, x24, [sp, #0x20]
0x100b70e48:  f7 5b 03 a9   stp	x23, x22, [sp, #0x30]
0x100b70e4c:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x100b70e50:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x100b70e54:  fd 43 01 91   add	fp, sp, #0x50
0x100b70e58:  ff 83 01 d1   sub	sp, sp, #0x60
0x100b70e5c:  f3 03 15 aa   mov	x19, x21
0x100b70e60:  f7 03 04 aa   mov	x23, x4
0x100b70e64:  fb 03 03 aa   mov	x27, x3
0x100b70e68:  fc 03 02 aa   mov	x28, x2
0x100b70e6c:  f9 03 01 aa   mov	x25, x1
0x100b70e70:  fa 03 00 aa   mov	x26, x0
0x100b70e74:  a8 68 00 d0   adrp	x8, 0x101886000
0x100b70e78:  08 01 43 f9   ldr	x8, [x8, #0x600] ; __got.___stack_chk_guard
0x100b70e7c:  08 01 40 f9   ldr	x8, [x8]
0x100b70e80:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x100b70e84:  80 6d 00 90   adrp	x0, 0x101920000
0x100b70e88:  00 20 16 91   add	x0, x0, #0x588 ; data_101920588 (__DATA.__data)
0x100b70e8c:  21 56 00 f0   adrp	x1, 0x101637000
0x100b70e90:  21 c0 38 91   add	x1, x1, #0xe30
0x100b70e94:  58 1d d5 97   bl	0x1000b83f4
0x100b70e98:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x100b70e9c:  f1 03 00 aa   mov	x17, x0
0x100b70ea0:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b70ea4:  30 1a c1 da   autda	x16, x17
0x100b70ea8:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100b70eac:  e9 03 08 aa   mov	x9, x8
0x100b70eb0:  d1 68 00 d0   adrp	x17, 0x10188a000
0x100b70eb4:  31 02 13 91   add	x17, x17, #0x4c0 ; __got.___chkstk_darwin
0x100b70eb8:  30 02 40 f9   ldr	x16, [x17]
0x100b70ebc:  11 0a 3f d7   blraa	x16, x17
0x100b70ec0:  e9 03 00 91   mov	x9, sp
0x100b70ec4:  0a 3d 00 91   add	x10, x8, #0xf
0x100b70ec8:  4c ed 7c 92   and	x12, x10, #0xfffffffffffffff0
0x100b70ecc:  36 01 0c cb   sub	x22, x9, x12
0x100b70ed0:  df 02 00 91   mov	sp, x22
0x100b70ed4:  e9 03 08 aa   mov	x9, x8
0x100b70ed8:  d1 68 00 d0   adrp	x17, 0x10188a000
0x100b70edc:  31 02 13 91   add	x17, x17, #0x4c0 ; __got.___chkstk_darwin
0x100b70ee0:  30 02 40 f9   ldr	x16, [x17]
0x100b70ee4:  11 0a 3f d7   blraa	x16, x17
0x100b70ee8:  e8 03 00 91   mov	x8, sp
0x100b70eec:  14 01 0c cb   sub	x20, x8, x12
0x100b70ef0:  9f 02 00 91   mov	sp, x20
0x100b70ef4:  e0 03 17 aa   mov	x0, x23
0x100b70ef8:  5c a9 f6 97   bl	0x10091b468
0x100b70efc:  a0 87 39 a9   stp	x0, x1, [fp, #-0x68]
0x100b70f00:  68 ff 7e d3   lsr	x8, x27, #0x3e
0x100b70f04:  1f 05 00 71   cmp	w8, #0x1
0x100b70f08:  b4 83 16 f8   stur	x20, [fp, #-0x98]
0x100b70f0c:  4c 0b 00 54   b.gt	loc_100b71074 ; ⤵ 0x168
0x100b70f10:  b3 03 16 f8   stur	x19, [fp, #-0xa0]
0x100b70f14:  f3 03 1a aa   mov	x19, x26
0x100b70f18:  fa 03 16 aa   mov	x26, x22
0x100b70f1c:  f6 03 19 aa   mov	x22, x25
0x100b70f20:  99 ff 60 d3   lsr	x25, x28, #0x20
0x100b70f24:  a8 12 00 35   cbnz	w8, loc_100b71178 ; ⤵ 0x254
0x100b70f28:  bc 03 17 38   sturb	w28, [fp, #-0x90]
0x100b70f2c:  88 ff 48 d3   lsr	x8, x28, #0x8
0x100b70f30:  a8 13 17 38   sturb	w8, [fp, #-0x8f]
0x100b70f34:  88 ff 50 d3   lsr	x8, x28, #0x10
0x100b70f38:  a8 23 17 38   sturb	w8, [fp, #-0x8e]
0x100b70f3c:  88 ff 58 d3   lsr	x8, x28, #0x18
0x100b70f40:  a8 33 17 38   sturb	w8, [fp, #-0x8d]
0x100b70f44:  88 ff 68 d3   lsr	x8, x28, #0x28
0x100b70f48:  b9 43 17 38   sturb	w25, [fp, #-0x8c]
0x100b70f4c:  89 ff 70 d3   lsr	x9, x28, #0x30
0x100b70f50:  a8 53 17 38   sturb	w8, [fp, #-0x8b]
0x100b70f54:  88 ff 78 d3   lsr	x8, x28, #0x38
0x100b70f58:  a9 63 17 38   sturb	w9, [fp, #-0x8a]
0x100b70f5c:  69 ff 48 d3   lsr	x9, x27, #0x8
0x100b70f60:  a8 73 17 38   sturb	w8, [fp, #-0x89]
0x100b70f64:  68 ff 50 d3   lsr	x8, x27, #0x10
0x100b70f68:  bb 83 17 38   sturb	w27, [fp, #-0x88]
0x100b70f6c:  6a ff 58 d3   lsr	x10, x27, #0x18
0x100b70f70:  a9 93 17 38   sturb	w9, [fp, #-0x87]
0x100b70f74:  69 ff 60 d3   lsr	x9, x27, #0x20
0x100b70f78:  a8 a3 17 38   sturb	w8, [fp, #-0x86]
0x100b70f7c:  68 ff 68 d3   lsr	x8, x27, #0x28
0x100b70f80:  aa b3 17 38   sturb	w10, [fp, #-0x85]
0x100b70f84:  a9 c3 17 38   sturb	w9, [fp, #-0x84]
0x100b70f88:  a8 d3 17 38   sturb	w8, [fp, #-0x83]
0x100b70f8c:  62 df 70 d3   ubfx	x2, x27, #0x30, #0x8
0x100b70f90:  bf 03 19 f8   stur	xzr, [fp, #-0x70]
0x100b70f94:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100b70f98:  a1 43 02 d1   sub	x1, fp, #0x90
0x100b70f9c:  4d 67 28 94   bl	j__CCKDFParametersCreateAnsiX963
0x100b70fa0:  c0 11 00 35   cbnz	w0, loc_100b711d8 ; ⤵ 0x238
0x100b70fa4:  f9 03 16 aa   mov	x25, x22
0x100b70fa8:  c8 fe 7e d3   lsr	x8, x22, #0x3e
0x100b70fac:  1f 05 00 71   cmp	w8, #0x1
0x100b70fb0:  2c 2e 00 54   b.gt	loc_100b71574 ; ⤵ 0x5c4
0x100b70fb4:  a8 38 00 35   cbnz	w8, loc_100b716c8 ; ⤵ 0x714
0x100b70fb8:  f6 03 13 aa   mov	x22, x19
0x100b70fbc:  b6 03 18 38   sturb	w22, [fp, #-0x80]
0x100b70fc0:  68 fe 48 d3   lsr	x8, x19, #0x8
0x100b70fc4:  a8 13 18 38   sturb	w8, [fp, #-0x7f]
0x100b70fc8:  68 fe 50 d3   lsr	x8, x19, #0x10
0x100b70fcc:  a8 23 18 38   sturb	w8, [fp, #-0x7e]
0x100b70fd0:  68 fe 58 d3   lsr	x8, x19, #0x18
0x100b70fd4:  a8 33 18 38   sturb	w8, [fp, #-0x7d]
0x100b70fd8:  68 fe 60 d3   lsr	x8, x19, #0x20
0x100b70fdc:  a8 43 18 38   sturb	w8, [fp, #-0x7c]
0x100b70fe0:  68 fe 68 d3   lsr	x8, x19, #0x28
0x100b70fe4:  a8 53 18 38   sturb	w8, [fp, #-0x7b]
0x100b70fe8:  68 fe 70 d3   lsr	x8, x19, #0x30
0x100b70fec:  a8 63 18 38   sturb	w8, [fp, #-0x7a]
0x100b70ff0:  68 fe 78 d3   lsr	x8, x19, #0x38
0x100b70ff4:  a8 73 18 38   sturb	w8, [fp, #-0x79]
0x100b70ff8:  28 ff 48 d3   lsr	x8, x25, #0x8
0x100b70ffc:  b9 83 18 38   sturb	w25, [fp, #-0x78]
0x100b71000:  29 ff 50 d3   lsr	x9, x25, #0x10
0x100b71004:  a8 93 18 38   sturb	w8, [fp, #-0x77]
0x100b71008:  28 ff 58 d3   lsr	x8, x25, #0x18
0x100b7100c:  a9 a3 18 38   sturb	w9, [fp, #-0x76]
0x100b71010:  29 ff 60 d3   lsr	x9, x25, #0x20
0x100b71014:  a8 b3 18 38   sturb	w8, [fp, #-0x75]
0x100b71018:  28 ff 68 d3   lsr	x8, x25, #0x28
0x100b7101c:  a9 c3 18 38   sturb	w9, [fp, #-0x74]
0x100b71020:  a8 d3 18 38   sturb	w8, [fp, #-0x73]
0x100b71024:  e0 03 13 aa   mov	x0, x19
0x100b71028:  e1 03 19 aa   mov	x1, x25
0x100b7102c:  72 9f d2 97   bl	0x100018df4
0x100b71030:  a0 a3 01 d1   sub	x0, fp, #0x68
0x100b71034:  a1 c3 01 d1   sub	x1, fp, #0x70
0x100b71038:  a2 03 02 d1   sub	x2, fp, #0x80
0x100b7103c:  e3 03 13 aa   mov	x3, x19
0x100b71040:  e4 03 19 aa   mov	x4, x25
0x100b71044:  e5 03 17 aa   mov	x5, x23
0x100b71048:  b5 03 56 f8   ldur	x21, [fp, #-0xa0]
0x100b7104c:  a8 12 00 94   bl	0x100b75aec
0x100b71050:  f4 03 00 aa   mov	x20, x0
0x100b71054:  f3 03 15 aa   mov	x19, x21
0x100b71058:  e0 03 16 aa   mov	x0, x22
0x100b7105c:  e1 03 19 aa   mov	x1, x25
0x100b71060:  d0 97 d2 97   bl	0x100016fa0
0x100b71064:  53 22 00 b5   cbnz	x19, loc_100b714ac ; ⤵ 0x448
0x100b71068:  f6 03 1a aa   mov	x22, x26
0x100b7106c:  34 0e 00 35   cbnz	w20, loc_100b71230 ; ⤵ 0x1c4
0x100b71070:  5e 00 00 14   b	loc_100b711e8 ; ⤵ 0x178
0x100b71074:  ; loc_100b71074
0x100b71074:  1f 09 00 71   cmp	w8, #0x2
0x100b71078:  81 0c 00 54   b.ne	loc_100b71208 ; ⤵ 0x190
0x100b7107c:  b7 83 15 f8   stur	x23, [fp, #-0xa8]
0x100b71080:  98 0b 40 f9   ldr	x24, [x28, #0x10]
0x100b71084:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b71088:  ca 4f 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b7108c:  20 1b 00 b4   cbz	x0, loc_100b713f0 ; ⤵ 0x364
0x100b71090:  f7 03 00 aa   mov	x23, x0
0x100b71094:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b71098:  d2 4f 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b7109c:  08 03 00 eb   subs	x8, x24, x0
0x100b710a0:  a6 4e 00 54   b.vs	loc_100b71a74 ; ⤵ 0x9d4
0x100b710a4:  17 01 17 8b   add	x23, x8, x23
0x100b710a8:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b710ac:  c9 4f 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b710b0:  57 1a 00 b4   cbz	x23, loc_100b713f8 ; ⤵ 0x348
0x100b710b4:  bf 03 18 f8   stur	xzr, [fp, #-0x80]
0x100b710b8:  89 23 41 a9   ldp	x9, x8, [x28, #0x10]
0x100b710bc:  02 01 09 eb   subs	x2, x8, x9
0x100b710c0:  e6 4d 00 54   b.vs	loc_100b71a7c ; ⤵ 0x9bc
0x100b710c4:  a0 03 02 d1   sub	x0, fp, #0x80
0x100b710c8:  e1 03 17 aa   mov	x1, x23
0x100b710cc:  01 67 28 94   bl	j__CCKDFParametersCreateAnsiX963
0x100b710d0:  c0 0a 00 35   cbnz	w0, loc_100b71228 ; ⤵ 0x158
0x100b710d4:  28 ff 7e d3   lsr	x8, x25, #0x3e
0x100b710d8:  1f 05 00 71   cmp	w8, #0x1
0x100b710dc:  ac 3a 00 54   b.gt	loc_100b71830 ; ⤵ 0x754
0x100b710e0:  b4 83 55 f8   ldur	x20, [fp, #-0xa8]
0x100b710e4:  a8 3d 00 35   cbnz	w8, loc_100b71898 ; ⤵ 0x7b4
0x100b710e8:  ba 03 17 38   sturb	w26, [fp, #-0x90]
0x100b710ec:  48 ff 48 d3   lsr	x8, x26, #0x8
0x100b710f0:  a8 13 17 38   sturb	w8, [fp, #-0x8f]
0x100b710f4:  48 ff 50 d3   lsr	x8, x26, #0x10
0x100b710f8:  a8 23 17 38   sturb	w8, [fp, #-0x8e]
0x100b710fc:  48 ff 58 d3   lsr	x8, x26, #0x18
0x100b71100:  a8 33 17 38   sturb	w8, [fp, #-0x8d]
0x100b71104:  48 ff 60 d3   lsr	x8, x26, #0x20
0x100b71108:  a8 43 17 38   sturb	w8, [fp, #-0x8c]
0x100b7110c:  48 ff 68 d3   lsr	x8, x26, #0x28
0x100b71110:  a8 53 17 38   sturb	w8, [fp, #-0x8b]
0x100b71114:  48 ff 70 d3   lsr	x8, x26, #0x30
0x100b71118:  a8 63 17 38   sturb	w8, [fp, #-0x8a]
0x100b7111c:  48 ff 78 d3   lsr	x8, x26, #0x38
0x100b71120:  a8 73 17 38   sturb	w8, [fp, #-0x89]
0x100b71124:  28 ff 48 d3   lsr	x8, x25, #0x8
0x100b71128:  b9 83 17 38   sturb	w25, [fp, #-0x88]
0x100b7112c:  29 ff 50 d3   lsr	x9, x25, #0x10
0x100b71130:  a8 93 17 38   sturb	w8, [fp, #-0x87]
0x100b71134:  28 ff 58 d3   lsr	x8, x25, #0x18
0x100b71138:  a9 a3 17 38   sturb	w9, [fp, #-0x86]
0x100b7113c:  29 ff 60 d3   lsr	x9, x25, #0x20
0x100b71140:  a8 b3 17 38   sturb	w8, [fp, #-0x85]
0x100b71144:  28 ff 68 d3   lsr	x8, x25, #0x28
0x100b71148:  a9 c3 17 38   sturb	w9, [fp, #-0x84]
0x100b7114c:  a8 d3 17 38   sturb	w8, [fp, #-0x83]
0x100b71150:  e0 03 1a aa   mov	x0, x26
0x100b71154:  e1 03 19 aa   mov	x1, x25
0x100b71158:  27 9f d2 97   bl	0x100018df4
0x100b7115c:  a0 a3 01 d1   sub	x0, fp, #0x68
0x100b71160:  a1 03 02 d1   sub	x1, fp, #0x80
0x100b71164:  a2 43 02 d1   sub	x2, fp, #0x90
0x100b71168:  e3 03 1a aa   mov	x3, x26
0x100b7116c:  e4 03 19 aa   mov	x4, x25
0x100b71170:  e5 03 14 aa   mov	x5, x20
0x100b71174:  0e 02 00 14   b	loc_100b719ac ; ⤵ 0x838
0x100b71178:  ; loc_100b71178
0x100b71178:  98 7f 40 93   sxtw	x24, w28
0x100b7117c:  1f 83 9c eb   cmp	x24, x28, asr #0x20
0x100b71180:  8c 47 00 54   b.gt	loc_100b71a70 ; ⤵ 0x8f0
0x100b71184:  b7 83 15 f8   stur	x23, [fp, #-0xa8]
0x100b71188:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b7118c:  89 4f 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b71190:  00 13 00 b4   cbz	x0, loc_100b713f0 ; ⤵ 0x260
0x100b71194:  f7 03 00 aa   mov	x23, x0
0x100b71198:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b7119c:  91 4f 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b711a0:  08 03 00 eb   subs	x8, x24, x0
0x100b711a4:  a6 46 00 54   b.vs	loc_100b71a78 ; ⤵ 0x8d4
0x100b711a8:  17 01 17 8b   add	x23, x8, x23
0x100b711ac:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b711b0:  88 4f 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b711b4:  37 12 00 b4   cbz	x23, loc_100b713f8 ; ⤵ 0x244
0x100b711b8:  bf 03 18 f8   stur	xzr, [fp, #-0x80]
0x100b711bc:  28 03 1c 6b   subs	w8, w25, w28
0x100b711c0:  06 46 00 54   b.vs	loc_100b71a80 ; ⤵ 0x8c0
0x100b711c4:  02 7d 40 93   sxtw	x2, w8
0x100b711c8:  a0 03 02 d1   sub	x0, fp, #0x80
0x100b711cc:  e1 03 17 aa   mov	x1, x23
0x100b711d0:  c0 66 28 94   bl	j__CCKDFParametersCreateAnsiX963
0x100b711d4:  00 22 00 34   cbz	w0, loc_100b71614 ; ⤵ 0x440
0x100b711d8:  ; loc_100b711d8
0x100b711d8:  74 19 82 12   mov	w20, #0xffffef34
0x100b711dc:  f6 03 1a aa   mov	x22, x26
0x100b711e0:  b3 03 56 f8   ldur	x19, [fp, #-0xa0]
0x100b711e4:  74 02 00 35   cbnz	w20, loc_100b71230 ; ⤵ 0x4c
0x100b711e8:  ; loc_100b711e8
0x100b711e8:  b4 db 79 a9   ldp	x20, x22, [fp, #-0x68]
0x100b711ec:  e0 03 14 aa   mov	x0, x20
0x100b711f0:  e1 03 16 aa   mov	x1, x22
0x100b711f4:  00 9f d2 97   bl	0x100018df4
0x100b711f8:  e0 03 14 aa   mov	x0, x20
0x100b711fc:  e1 03 16 aa   mov	x1, x22
0x100b71200:  68 97 d2 97   bl	0x100016fa0
0x100b71204:  ac 00 00 14   b	loc_100b714b4 ; ⤵ 0x2b0
0x100b71208:  ; loc_100b71208
0x100b71208:  bf 63 17 f8   stur	xzr, [fp, #-0x8a]
0x100b7120c:  bf 03 17 f8   stur	xzr, [fp, #-0x90]
0x100b71210:  bf 03 19 f8   stur	xzr, [fp, #-0x70]
0x100b71214:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100b71218:  a1 43 02 d1   sub	x1, fp, #0x90
0x100b7121c:  02 00 80 d2   mov	x2, #0
0x100b71220:  ac 66 28 94   bl	j__CCKDFParametersCreateAnsiX963
0x100b71224:  a0 16 00 34   cbz	w0, loc_100b714f8 ; ⤵ 0x2d4
0x100b71228:  ; loc_100b71228
0x100b71228:  74 19 82 12   mov	w20, #0xffffef34
0x100b7122c:  f4 fd ff 34   cbz	w20, loc_100b711e8 ; ⤴ -0x44
0x100b71230:  ; loc_100b71230
0x100b71230:  93 7e 40 93   sxtw	x19, w20
0x100b71234:  cf 60 28 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x100b71238:  f8 03 00 aa   mov	x24, x0
0x100b7123c:  48 6e 00 90   adrp	x8, 0x101939000
0x100b71240:  08 d9 40 f9   ldr	x8, [x8, #0x1b0] ; data_1019391b0 (__DATA.__data)
0x100b71244:  1f 05 00 b1   cmn	x8, #0x1

