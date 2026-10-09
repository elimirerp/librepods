0x100683e00:  1f 01 00 91   mov	sp, x8
0x100683e04:  00 00 80 d2   mov	x0, #0
0x100683e08:  8a 06 3c 94   bl	j__$s10Foundation4UUIDVMa
0x100683e0c:  a0 83 11 f8   stur	x0, [fp, #-0xe8]
0x100683e10:  e9 03 00 aa   mov	x9, x0
0x100683e14:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x100683e18:  f0 03 08 aa   mov	x16, x8
0x100683e1c:  f1 03 09 aa   mov	x17, x9
0x100683e20:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100683e24:  30 1a c1 da   autda	x16, x17
0x100683e28:  f1 03 10 aa   mov	x17, x16
0x100683e2c:  f1 47 c1 da   xpacd	x17
0x100683e30:  1f 02 11 eb   cmp	x16, x17
0x100683e34:  40 00 00 54   b.eq	loc_100683e3c ; ⤵ 0x8
0x100683e38:  40 8e 38 d4   brk	#0xc472
0x100683e3c:  ; loc_100683e3c
0x100683e3c:  fa 03 10 aa   mov	x26, x16
0x100683e40:  f0 03 08 aa   mov	x16, x8
0x100683e44:  f1 03 09 aa   mov	x17, x9
0x100683e48:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100683e4c:  30 1a c1 da   autda	x16, x17
0x100683e50:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100683e54:  e9 03 08 aa   mov	x9, x8
0x100683e58:  31 90 00 d0   adrp	x17, 0x101889000
0x100683e5c:  31 82 10 91   add	x17, x17, #0x420 ; __got.___chkstk_darwin
0x100683e60:  30 02 40 f9   ldr	x16, [x17]
0x100683e64:  11 0a 3f d7   blraa	x16, x17
0x100683e68:  e9 03 00 91   mov	x9, sp
0x100683e6c:  0a 3d 00 91   add	x10, x8, #0xf
0x100683e70:  4c ed 7c 92   and	x12, x10, #0xfffffffffffffff0
0x100683e74:  37 01 0c cb   sub	x23, x9, x12
0x100683e78:  ff 02 00 91   mov	sp, x23
0x100683e7c:  e9 03 08 aa   mov	x9, x8
0x100683e80:  31 90 00 d0   adrp	x17, 0x101889000
0x100683e84:  31 82 10 91   add	x17, x17, #0x420 ; __got.___chkstk_darwin
0x100683e88:  30 02 40 f9   ldr	x16, [x17]
0x100683e8c:  11 0a 3f d7   blraa	x16, x17
0x100683e90:  e8 03 00 91   mov	x8, sp
0x100683e94:  08 01 0c cb   sub	x8, x8, x12
0x100683e98:  a8 83 13 f8   stur	x8, [fp, #-0xc8]
0x100683e9c:  1f 01 00 91   mov	sp, x8
0x100683ea0:  00 00 80 d2   mov	x0, #0
0x100683ea4:  5f 0c 2b 94   bl	0x101147020
0x100683ea8:  a8 63 01 d1   sub	x8, fp, #0x58
0x100683eac:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x100683eb0:  e9 03 00 aa   mov	x9, x0
0x100683eb4:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x100683eb8:  f0 03 08 aa   mov	x16, x8
0x100683ebc:  f1 03 09 aa   mov	x17, x9
0x100683ec0:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100683ec4:  30 1a c1 da   autda	x16, x17
0x100683ec8:  f1 03 10 aa   mov	x17, x16
0x100683ecc:  f1 47 c1 da   xpacd	x17
0x100683ed0:  1f 02 11 eb   cmp	x16, x17
0x100683ed4:  40 00 00 54   b.eq	loc_100683edc ; ⤵ 0x8
0x100683ed8:  40 8e 38 d4   brk	#0xc472
0x100683edc:  ; loc_100683edc
0x100683edc:  aa 83 01 d1   sub	x10, fp, #0x60
0x100683ee0:  50 01 10 f8   stur	x16, [x10, #-0x100]
0x100683ee4:  f0 03 08 aa   mov	x16, x8
0x100683ee8:  f1 03 09 aa   mov	x17, x9
0x100683eec:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100683ef0:  30 1a c1 da   autda	x16, x17
0x100683ef4:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100683ef8:  e9 03 08 aa   mov	x9, x8
0x100683efc:  31 90 00 d0   adrp	x17, 0x101889000
0x100683f00:  31 82 10 91   add	x17, x17, #0x420 ; __got.___chkstk_darwin
0x100683f04:  30 02 40 f9   ldr	x16, [x17]
0x100683f08:  11 0a 3f d7   blraa	x16, x17
0x100683f0c:  e9 03 00 91   mov	x9, sp
0x100683f10:  0a 3d 00 91   add	x10, x8, #0xf
0x100683f14:  4c ed 7c 92   and	x12, x10, #0xfffffffffffffff0
0x100683f18:  29 01 0c cb   sub	x9, x9, x12
0x100683f1c:  aa a3 01 d1   sub	x10, fp, #0x68
0x100683f20:  49 01 10 f8   stur	x9, [x10, #-0x100]
0x100683f24:  3f 01 00 91   mov	sp, x9
0x100683f28:  e9 03 08 aa   mov	x9, x8
0x100683f2c:  31 90 00 d0   adrp	x17, 0x101889000
0x100683f30:  31 82 10 91   add	x17, x17, #0x420 ; __got.___chkstk_darwin
0x100683f34:  30 02 40 f9   ldr	x16, [x17]
0x100683f38:  11 0a 3f d7   blraa	x16, x17
0x100683f3c:  e8 03 00 91   mov	x8, sp
0x100683f40:  08 01 0c cb   sub	x8, x8, x12
0x100683f44:  a9 63 00 d1   sub	x9, fp, #0x18
0x100683f48:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x100683f4c:  1f 01 00 91   mov	sp, x8
0x100683f50:  00 00 80 52   mov	w0, #0
0x100683f54:  9a d3 26 94   bl	0x101038dbc
0x100683f58:  48 1c 00 12   and	w8, w2, #0xff
0x100683f5c:  1f 05 00 71   cmp	w8, #0x1
0x100683f60:  41 03 00 54   b.ne	loc_100683fc8 ; ⤵ 0x68
0x100683f64:  00 00 80 d2   mov	x0, #0
0x100683f68:  83 dc 26 94   bl	0x10103b174
0x100683f6c:  e8 03 00 aa   mov	x8, x0
0x100683f70:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x100683f74:  f1 03 08 aa   mov	x17, x8
0x100683f78:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100683f7c:  30 1a c1 da   autda	x16, x17
0x100683f80:  04 8e 43 f8   ldr	x4, [x16, #0x38]!
0x100683f84:  e3 03 00 aa   mov	x3, x0
0x100683f88:  e0 03 13 aa   mov	x0, x19
0x100683f8c:  21 00 80 52   mov	w1, #0x1
0x100683f90:  22 00 80 52   mov	w2, #0x1
0x100683f94:  bf 43 01 d1   sub	sp, fp, #0x50
0x100683f98:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x100683f9c:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x100683fa0:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x100683fa4:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x100683fa8:  fa 67 41 a9   ldp	x26, x25, [sp, #0x10]
0x100683fac:  fc 6f c6 a8   ldp	x28, x27, [sp], #0x60
0x100683fb0:  ff 23 03 d5   autibsp
0x100683fb4:  d1 07 1e ca   eor	x17, lr, lr, lsl #0x1
0x100683fb8:  51 00 f0 b6   tbz	x17, #0x3e, loc_100683fc0 ; ⤵ 0x8
0x100683fbc:  20 8e 38 d4   brk	#0xc471
0x100683fc0:  ; loc_100683fc0
0x100683fc0:  30 1a f4 f2   movk	x16, #0xa0d1, lsl #0x30
0x100683fc4:  90 08 1f d7   braa	x4, x16
0x100683fc8:  ; loc_100683fc8
0x100683fc8:  a8 e3 02 d1   sub	x8, fp, #0xb8
0x100683fcc:  13 01 10 f8   stur	x19, [x8, #-0x100]
0x100683fd0:  a8 c3 01 d1   sub	x8, fp, #0x70
0x100683fd4:  17 01 10 f8   stur	x23, [x8, #-0x100]
0x100683fd8:  c0 42 00 b4   cbz	x0, loc_100684830 ; ⤵ 0x858
0x100683fdc:  e8 f3 01 b2   mov	x8, #0xaaaaaaaaaaaaaaaa
0x100683fe0:  68 55 95 f2   movk	x8, #0xaaab
0x100683fe4:  08 7c c8 9b   umulh	x8, x0, x8
0x100683fe8:  08 fd 46 d3   lsr	x8, x8, #0x6
0x100683fec:  17 05 00 91   add	x23, x8, #0x1
0x100683ff0:  f8 03 17 aa   mov	x24, x23
0x100683ff4:  21 01 00 b4   cbz	x1, loc_100684018 ; ⤵ 0x24
0x100683ff8:  f8 03 17 aa   mov	x24, x23
0x100683ffc:  e8 f3 01 b2   mov	x8, #0xaaaaaaaaaaaaaaaa
0x100684000:  68 55 95 f2   movk	x8, #0xaaab
0x100684004:  28 7c c8 9b   umulh	x8, x1, x8
0x100684008:  08 fd 46 d3   lsr	x8, x8, #0x6
0x10068400c:  09 05 00 91   add	x9, x8, #0x1
0x100684010:  ff 02 09 eb   cmp	x23, x9
0x100684014:  f7 86 88 9a   csinc	x23, x23, x8, hi
0x100684018:  ; loc_100684018
0x100684018:  a8 03 03 d1   sub	x8, fp, #0xc0
0x10068401c:  15 01 10 f8   stur	x21, [x8, #-0x100]
0x100684020:  a8 02 40 f9   ldr	x8, [x21]
0x100684024:  a9 83 00 d1   sub	x9, fp, #0x20
0x100684028:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10068402c:  a8 95 00 b0   adrp	x8, 0x101939000
0x100684030:  08 8d 41 f9   ldr	x8, [x8, #0x318] ; data_101939318 (__DATA.__data)
0x100684034:  a9 a3 00 d1   sub	x9, fp, #0x28
0x100684038:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10068403c:  00 00 80 d2   mov	x0, #0
0x100684040:  37 73 e6 97   bl	0x100020d1c
0x100684044:  a8 c3 00 d1   sub	x8, fp, #0x30
0x100684048:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10068404c:  15 00 80 d2   mov	x21, #0
0x100684050:  49 43 00 91   add	x9, x26, #0x10
0x100684054:  c8 22 00 91   add	x8, x22, #0x8
0x100684058:  aa 03 01 d1   sub	x10, fp, #0x40
0x10068405c:  48 01 10 f8   stur	x8, [x10, #-0x100]
0x100684060:  5c 23 00 91   add	x28, x26, #0x8
0x100684064:  28 43 00 91   add	x8, x25, #0x10
0x100684068:  aa e3 01 d1   sub	x10, fp, #0x78
0x10068406c:  48 01 10 f8   stur	x8, [x10, #-0x100]
0x100684070:  28 23 00 91   add	x8, x25, #0x8
0x100684074:  aa 03 02 d1   sub	x10, fp, #0x80
0x100684078:  48 01 10 f8   stur	x8, [x10, #-0x100]
0x10068407c:  a8 79 00 f0   adrp	x8, 0x1015bb000
0x100684080:  08 01 10 91   add	x8, x8, #0x400 ; "timeBasedKeys(beaconIdentifier:baseDate:index:sequence:useDaemonDirectory:)"
0x100684084:  16 90 00 d0   adrp	x22, 0x101886000
0x100684088:  d6 72 47 f9   ldr	x22, [x22, #0xee0] ; __got.__swiftEmptyArrayStorage
0x10068408c:  08 81 00 d1   sub	x8, x8, #0x20
0x100684090:  aa 83 02 d1   sub	x10, fp, #0xa0
0x100684094:  48 01 10 f8   stur	x8, [x10, #-0x100]
0x100684098:  a8 e3 00 d1   sub	x8, fp, #0x38
0x10068409c:  09 01 10 f8   stur	x9, [x8, #-0x100]
0x1006840a0:  49 77 fc f2   movk	x9, #0xe3ba, lsl #0x30
0x1006840a4:  a8 23 02 d1   sub	x8, fp, #0x88
0x1006840a8:  09 01 10 f8   stur	x9, [x8, #-0x100]
0x1006840ac:  88 7c 00 b0   adrp	x8, 0x101615000
0x1006840b0:  00 09 42 fd   ldr	d0, [x8, #0x410]
0x1006840b4:  a8 c3 02 d1   sub	x8, fp, #0xb0
0x1006840b8:  00 01 90 3c   stur	q0, [x8, #-0x100]
0x1006840bc:  a8 63 02 d1   sub	x8, fp, #0x98
0x1006840c0:  19 01 50 f8   ldur	x25, [x8, #-0x100]
0x1006840c4:  a8 43 01 d1   sub	x8, fp, #0x50
0x1006840c8:  1c 01 10 f8   stur	x28, [x8, #-0x100]
0x1006840cc:  a8 23 01 d1   sub	x8, fp, #0x48
0x1006840d0:  17 01 10 f8   stur	x23, [x8, #-0x100]
0x1006840d4:  b6 03 12 f8   stur	x22, [fp, #-0xe0]
0x1006840d8:  a8 83 00 d1   sub	x8, fp, #0x20
0x1006840dc:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x1006840e0:  a8 a3 00 d1   sub	x8, fp, #0x28
0x1006840e4:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x1006840e8:  22 68 68 f8   ldr	x2, [x1, x8]
0x1006840ec:  50 ef ff 90   adrp	x16, 0x10046c000
0x1006840f0:  10 c2 3d 91   add	x16, x16, #0xf70
0x1006840f4:  f1 41 8e d2   mov	x17, #0x720f
0x1006840f8:  30 02 c1 da   pacia	x16, x17
0x1006840fc:  e0 03 10 aa   mov	x0, x16
0x100684100:  a8 e3 02 d1   sub	x8, fp, #0xb8
0x100684104:  09 90 00 d0   adrp	x9, 0x101886000
0x100684108:  29 69 47 f9   ldr	x9, [x9, #0xed0] ; __got._$sytN
0x10068410c:  23 21 00 91   add	x3, x9, #0x8
0x100684110:  a9 c3 00 d1   sub	x9, fp, #0x30
0x100684114:  24 01 50 f8   ldur	x4, [x9, #-0x100]
0x100684118:  86 0e 3c 94   bl	j__$s2os21OSAllocatedUnfairLockV10FindMyBaseE14callAsFunctionyqd__qd__yYbKXEKs8SendableRd__lF
0x10068411c:  b5 83 12 f8   stur	x21, [fp, #-0xd8]
0x100684120:  ba 83 54 f8   ldur	x26, [fp, #-0xb8]
0x100684124:  b5 03 51 f8   ldur	x21, [fp, #-0xf0]
0x100684128:  b3 d2 41 a9   ldp	x19, x20, [x21, #0x18]
0x10068412c:  e0 03 15 aa   mov	x0, x21
0x100684130:  e1 03 13 aa   mov	x1, x19
0x100684134:  ff fc e5 97   bl	0x100003530
0x100684138:  88 06 40 f9   ldr	x8, [x20, #0x8]
0x10068413c:  01 05 40 f9   ldr	x1, [x8, #0x8]
0x100684140:  e9 03 01 aa   mov	x9, x1
0x100684144:  2a 0d 42 f8   ldr	x10, [x9, #0x20]!
0x100684148:  b7 83 53 f8   ldur	x23, [fp, #-0xc8]
0x10068414c:  e8 03 17 aa   mov	x8, x23
0x100684150:  f4 03 00 aa   mov	x20, x0
0x100684154:  e0 03 13 aa   mov	x0, x19
0x100684158:  f1 03 09 aa   mov	x17, x9
0x10068415c:  71 e3 f4 f2   movk	x17, #0xa71b, lsl #0x30
0x100684160:  51 09 3f d7   blraa	x10, x17
0x100684164:  b3 da 41 a9   ldp	x19, x22, [x21, #0x18]
0x100684168:  e0 03 15 aa   mov	x0, x21
0x10068416c:  e1 03 13 aa   mov	x1, x19
0x100684170:  f0 fc e5 97   bl	0x100003530
0x100684174:  e9 03 16 aa   mov	x9, x22
0x100684178:  2a 0d 4c f8   ldr	x10, [x9, #0xc0]!
0x10068417c:  a8 03 53 f8   ldur	x8, [fp, #-0xd0]
0x100684180:  f4 03 00 aa   mov	x20, x0
0x100684184:  e0 03 13 aa   mov	x0, x19
0x100684188:  e1 03 16 aa   mov	x1, x22
0x10068418c:  f1 03 09 aa   mov	x17, x9
0x100684190:  51 00 e0 f2   movk	x17, #0x2, lsl #0x30
0x100684194:  51 09 3f d7   blraa	x10, x17
0x100684198:  a8 92 00 b0   adrp	x8, 0x1018d9000
0x10068419c:  08 a1 3d 91   add	x8, x8, #0xf68 ; data_1018d9f68 (__DATA_CONST.__const)
0x1006841a0:  a8 03 16 f8   stur	x8, [fp, #-0xa0]
0x1006841a4:  d5 24 ef 97   bl	0x10024d4f8
0x1006841a8:  a0 83 16 f8   stur	x0, [fp, #-0x98]
0x1006841ac:  b8 83 14 f8   stur	x24, [fp, #-0xb8]
0x1006841b0:  a8 e3 00 d1   sub	x8, fp, #0x38
0x1006841b4:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x1006841b8:  13 01 40 f9   ldr	x19, [x8]
0x1006841bc:  b5 03 50 f8   ldur	x21, [fp, #-0x100]
0x1006841c0:  e0 03 15 aa   mov	x0, x21
0x1006841c4:  e1 03 17 aa   mov	x1, x23
0x1006841c8:  bb 83 51 f8   ldur	x27, [fp, #-0xe8]
0x1006841cc:  e2 03 1b aa   mov	x2, x27
0x1006841d0:  f1 03 08 aa   mov	x17, x8
0x1006841d4:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x1006841d8:  71 0a 3f d7   blraa	x19, x17
0x1006841dc:  a8 83 50 f8   ldur	x8, [fp, #-0xf8]
0x1006841e0:  08 15 80 b9   ldrsw	x8, [x8, #0x14]
0x1006841e4:  a0 e3 02 d1   sub	x0, fp, #0xb8
0x1006841e8:  a1 02 08 8b   add	x1, x21, x8
0x1006841ec:  0e 72 e6 97   bl	0x100020a24
0x1006841f0:  a8 23 02 d1   sub	x8, fp, #0x88
0x1006841f4:  e0 03 15 aa   mov	x0, x21
0x1006841f8:  01 00 80 52   mov	w1, #0
0x1006841fc:  f4 03 1a aa   mov	x20, x26
0x100684200:  27 b9 3a 94   bl	0x10153269c
0x100684204:  b0 cc ff f0   adrp	x16, 0x10001b000
0x100684208:  10 42 05 91   add	x16, x16, #0x150 ; "\xc1\xc9"
0x10068420c:  d1 1e 85 d2   mov	x17, #0x28f6
0x100684210:  30 02 c1 da   pacia	x16, x17
0x100684214:  e1 03 10 aa   mov	x1, x16
0x100684218:  e0 03 15 aa   mov	x0, x21
0x10068421c:  2f 0b 01 94   bl	0x1006c6ed8
0x100684220:  a0 e3 02 d1   sub	x0, fp, #0xb8
0x100684224:  3e 0f e6 97   bl	0x100007f1c
0x100684228:  b7 03 59 f8   ldur	x23, [fp, #-0x70]
0x10068422c:  e8 fe 7c d3   lsr	x8, x23, #0x3c
0x100684230:  1f 39 00 f1   cmp	x8, #0xe
0x100684234:  09 14 00 54   b.ls	loc_1006844b4 ; ⤵ 0x280
0x100684238:  a8 95 00 b0   adrp	x8, 0x101939000
0x10068423c:  08 7d 46 f9   ldr	x8, [x8, #0xcf8] ; data_101939cf8 (__DATA.__data)
0x100684240:  1f 05 00 b1   cmn	x8, #0x1
0x100684244:  21 27 00 54   b.ne	loc_100684728 ; ⤵ 0x4e4
0x100684248:  a8 23 00 d1   sub	x8, fp, #0x8
0x10068424c:  14 01 50 f8   ldur	x20, [x8, #-0x100]
0x100684250:  e0 03 14 aa   mov	x0, x20
0x100684254:  01 9c 00 f0   adrp	x1, 0x101a07000
0x100684258:  21 00 1b 91   add	x1, x1, #0x6c0
0x10068425c:  0f 0e e6 97   bl	0x100007a98
0x100684260:  e1 03 00 aa   mov	x1, x0
0x100684264:  a8 e3 01 d1   sub	x8, fp, #0x78
0x100684268:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x10068426c:  28 01 40 f9   ldr	x8, [x9]
0x100684270:  e0 03 19 aa   mov	x0, x25
0x100684274:  e2 03 14 aa   mov	x2, x20
0x100684278:  f1 03 09 aa   mov	x17, x9
0x10068427c:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x100684280:  11 09 3f d7   blraa	x8, x17
0x100684284:  a8 c3 01 d1   sub	x8, fp, #0x70
0x100684288:  15 01 50 f8   ldur	x21, [x8, #-0x100]
0x10068428c:  e0 03 15 aa   mov	x0, x21
0x100684290:  a1 83 53 f8   ldur	x1, [fp, #-0xc8]
0x100684294:  e2 03 1b aa   mov	x2, x27
0x100684298:  a8 23 02 d1   sub	x8, fp, #0x88
0x10068429c:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x1006842a0:  68 0a 3f d7   blraa	x19, x8
0x1006842a4:  e0 03 1a aa   mov	x0, x26
0x1006842a8:  0e 1e 3c 94   bl	j__swift_retain
0x1006842ac:  f4 03 19 aa   mov	x20, x25
0x1006842b0:  38 0e 3c 94   bl	j__$s2os6LoggerV9logObjectSo03OS_a1_C0Cvg
0x1006842b4:  f6 03 00 aa   mov	x22, x0
0x1006842b8:  ae 14 3c 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x1006842bc:  13 1c 00 12   and	w19, w0, #0xff
0x1006842c0:  e0 03 16 aa   mov	x0, x22
0x1006842c4:  e1 03 13 aa   mov	x1, x19
0x1006842c8:  52 1c 3c 94   bl	j__os_log_type_enabled
0x1006842cc:  f7 03 1c aa   mov	x23, x28
0x1006842d0:  17 9f e0 f2   movk	x23, #0x4f8, lsl #0x30
0x1006842d4:  80 1d 00 34   cbz	w0, loc_100684684 ; ⤵ 0x3b0
0x1006842d8:  c0 07 80 52   mov	w0, #0x3e
0x1006842dc:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1006842e0:  10 1e 3c 94   bl	j__swift_slowAlloc
0x1006842e4:  f9 03 00 aa   mov	x25, x0
0x1006842e8:  00 10 80 52   mov	w0, #0x80
0x1006842ec:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1006842f0:  0c 1e 3c 94   bl	j__swift_slowAlloc
0x1006842f4:  a8 43 02 d1   sub	x8, fp, #0x90
0x1006842f8:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x1006842fc:  a0 83 14 f8   stur	x0, [fp, #-0xb8]
0x100684300:  a8 c3 02 d1   sub	x8, fp, #0xb0
0x100684304:  00 01 d0 3c   ldur	q0, [x8, #-0x100]
0x100684308:  20 03 00 bd   str	s0, [x25]
0x10068430c:  50 03 40 f9   ldr	x16, [x26]
0x100684310:  f1 03 1a aa   mov	x17, x26
0x100684314:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x100684318:  30 1a c1 da   autda	x16, x17
0x10068431c:  f1 03 10 aa   mov	x17, x16
0x100684320:  f1 47 c1 da   xpacd	x17
0x100684324:  1f 02 11 eb   cmp	x16, x17
0x100684328:  40 00 00 54   b.eq	loc_100684330 ; ⤵ 0x8
0x10068432c:  40 8e 38 d4   brk	#0xc472
0x100684330:  ; loc_100684330
0x100684330:  b0 03 14 f8   stur	x16, [fp, #-0xc0]
0x100684334:  20 95 00 b0   adrp	x0, 0x101929000
0x100684338:  00 00 34 91   add	x0, x0, #0xd00 ; data_101929d00 (__DATA.__data)
0x10068433c:  81 7c 00 b0   adrp	x1, 0x101615000
0x100684340:  21 a0 17 91   add	x1, x1, #0x5e8 ; "\xdcP\v"
0x100684344:  2c d0 e8 97   bl	0x1000b83f4
0x100684348:  e1 03 00 aa   mov	x1, x0
0x10068434c:  a0 03 03 d1   sub	x0, fp, #0xc0
0x100684350:  34 12 3c 94   bl	j__$sSS10describingSSx_tclufC
0x100684354:  f4 03 01 aa   mov	x20, x1
0x100684358:  a2 e3 02 d1   sub	x2, fp, #0xb8
0x10068435c:  9f 3d e6 97   bl	0x1000139d8
0x100684360:  fb 03 00 aa   mov	x27, x0
0x100684364:  e0 03 14 aa   mov	x0, x20
0x100684368:  be 1c 3c 94   bl	j__swift_bridgeObjectRelease
0x10068436c:  3b 43 00 f8   stur	x27, [x25, #0x4]
0x100684370:  48 04 81 52   mov	w8, #0x822
0x100684374:  28 1b 00 79   strh	w8, [x25, #0xc]
0x100684378:  c8 04 80 d2   mov	x8, #0x26
0x10068437c:  08 00 fa f2   movk	x8, #0xd000, lsl #0x30
0x100684380:  00 95 00 91   add	x0, x8, #0x25
0x100684384:  a8 83 02 d1   sub	x8, fp, #0xa0
0x100684388:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x10068438c:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x100684390:  a2 e3 02 d1   sub	x2, fp, #0xb8
0x100684394:  91 3d e6 97   bl	0x1000139d8
0x100684398:  20 e3 00 f8   stur	x0, [x25, #0xe]
0x10068439c:  08 0e 81 52   mov	w8, #0x870
0x1006843a0:  28 2f 00 79   strh	w8, [x25, #0x16]
0x1006843a4:  08 2d 8c 52   mov	w8, #0x6168
0x1006843a8:  68 0e ad 72   movk	w8, #0x6873, lsl #0x10
0x1006843ac:  28 0f 00 f9   str	x8, [x25, #0x18]
0x1006843b0:  28 04 81 52   mov	w8, #0x821
0x1006843b4:  28 43 00 79   strh	w8, [x25, #0x20]
0x1006843b8:  f4 03 15 aa   mov	x20, x21
0x1006843bc:  fd 04 3c 94   bl	j__$s10Foundation4UUIDV10uuidStringSSvg
0x1006843c0:  f4 03 01 aa   mov	x20, x1
0x1006843c4:  a2 e3 02 d1   sub	x2, fp, #0xb8
0x1006843c8:  84 3d e6 97   bl	0x1000139d8
0x1006843cc:  fb 03 00 aa   mov	x27, x0
0x1006843d0:  e0 03 14 aa   mov	x0, x20
0x1006843d4:  a3 1c 3c 94   bl	j__swift_bridgeObjectRelease
0x1006843d8:  3b 23 02 f8   stur	x27, [x25, #0x22]
0x1006843dc:  a8 43 01 d1   sub	x8, fp, #0x50
0x1006843e0:  1c 01 50 f8   ldur	x28, [x8, #-0x100]
0x1006843e4:  48 04 81 52   mov	w8, #0x822
0x1006843e8:  28 57 00 79   strh	w8, [x25, #0x2a]
0x1006843ec:  a2 e3 02 d1   sub	x2, fp, #0xb8
0x1006843f0:  c0 65 8e d2   mov	x0, #0x732e
0x1006843f4:  a0 6c ac f2   movk	x0, #0x6365, lsl #0x10
0x1006843f8:  e0 cd cd f2   movk	x0, #0x6e6f, lsl #0x20
0x1006843fc:  80 2c ec f2   movk	x0, #0x6164, lsl #0x30
0x100684400:  41 2e 8f d2   mov	x1, #0x7972
0x100684404:  01 40 fd f2   movk	x1, #0xea00, lsl #0x30
0x100684408:  74 3d e6 97   bl	0x1000139d8
0x10068440c:  20 c3 02 f8   stur	x0, [x25, #0x2c]
0x100684410:  08 00 81 52   mov	w8, #0x800
0x100684414:  28 6b 00 79   strh	w8, [x25, #0x34]
0x100684418:  38 63 03 f8   stur	x24, [x25, #0x36]
0x10068441c:  e0 03 1a aa   mov	x0, x26
0x100684420:  a8 1d 3c 94   bl	j__swift_release
0x100684424:  94 03 40 f9   ldr	x20, [x28]
0x100684428:  e0 03 15 aa   mov	x0, x21
0x10068442c:  bb 83 51 f8   ldur	x27, [fp, #-0xe8]
0x100684430:  e1 03 1b aa   mov	x1, x27
0x100684434:  f1 03 1c aa   mov	x17, x28
0x100684438:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10068443c:  91 0a 3f d7   blraa	x20, x17

