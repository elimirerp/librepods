
sub_10068400c:
0x10068400c:  7f 23 03 d5   pacibsp
0x100684010:  ff 43 05 d1   sub	sp, sp, #0x150
0x100684014:  fc 6f 0f a9   stp	x28, x27, [sp, #0xf0]
0x100684018:  fa 67 10 a9   stp	x26, x25, [sp, #0x100]
0x10068401c:  f8 5f 11 a9   stp	x24, x23, [sp, #0x110]
0x100684020:  f6 57 12 a9   stp	x22, x21, [sp, #0x120]
0x100684024:  f4 4f 13 a9   stp	x20, x19, [sp, #0x130]
0x100684028:  fd 7b 14 a9   stp	fp, lr, [sp, #0x140]
0x10068402c:  fd 03 05 91   add	fp, sp, #0x140
0x100684030:  f4 03 00 aa   mov	x20, x0
0x100684034:  68 1d 00 d0   adrp	x8, 0x100a32000
0x100684038:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x10068403c:  08 01 40 f9   ldr	x8, [x8]
0x100684040:  a8 03 1a f8   stur	x8, [fp, #-0x60]
0x100684044:  b0 1e 00 f0   adrp	x16, 0x100a5b000
0x100684048:  10 42 31 91   add	x16, x16, #0xc50 ; data_100a5bc50 (__DATA_CONST.__const)
0x10068404c:  10 42 00 91   add	x16, x16, #0x10
0x100684050:  f1 03 00 aa   mov	x17, x0
0x100684054:  71 35 f3 f2   movk	x17, #0x99ab, lsl #0x30
0x100684058:  30 0a c1 da   pacda	x16, x17
0x10068405c:  10 00 00 f9   str	x16, [x0]
0x100684060:  08 20 00 91   add	x8, x0, #0x8
0x100684064:  b0 1e 00 f0   adrp	x16, 0x100a5b000
0x100684068:  10 42 31 91   add	x16, x16, #0xc50 ; data_100a5bc50 (__DATA_CONST.__const)
0x10068406c:  10 42 02 91   add	x16, x16, #0x90
0x100684070:  f1 03 08 aa   mov	x17, x8
0x100684074:  f1 54 e7 f2   movk	x17, #0x3aa7, lsl #0x30
0x100684078:  30 0a c1 da   pacda	x16, x17
0x10068407c:  10 04 00 f9   str	x16, [x0, #0x8]
0x100684080:  08 40 00 91   add	x8, x0, #0x10
0x100684084:  e8 2f 00 f9   str	x8, [sp, #0x58]
0x100684088:  b0 1e 00 f0   adrp	x16, 0x100a5b000
0x10068408c:  10 42 31 91   add	x16, x16, #0xc50 ; data_100a5bc50 (__DATA_CONST.__const)
0x100684090:  10 a2 02 91   add	x16, x16, #0xa8
0x100684094:  f1 03 08 aa   mov	x17, x8
0x100684098:  51 7b e5 f2   movk	x17, #0x2bda, lsl #0x30
0x10068409c:  30 0a c1 da   pacda	x16, x17
0x1006840a0:  10 08 00 f9   str	x16, [x0, #0x10]
0x1006840a4:  08 60 00 91   add	x8, x0, #0x18
0x1006840a8:  e8 2b 00 f9   str	x8, [sp, #0x50]
0x1006840ac:  b0 1e 00 f0   adrp	x16, 0x100a5b000
0x1006840b0:  10 42 31 91   add	x16, x16, #0xc50 ; data_100a5bc50 (__DATA_CONST.__const)
0x1006840b4:  10 62 03 91   add	x16, x16, #0xd8
0x1006840b8:  f1 03 08 aa   mov	x17, x8
0x1006840bc:  51 4e f6 f2   movk	x17, #0xb272, lsl #0x30
0x1006840c0:  30 0a c1 da   pacda	x16, x17
0x1006840c4:  10 0c 00 f9   str	x16, [x0, #0x18]
0x1006840c8:  08 80 00 91   add	x8, x0, #0x20
0x1006840cc:  e8 27 00 f9   str	x8, [sp, #0x48]
0x1006840d0:  b0 1e 00 f0   adrp	x16, 0x100a5b000
0x1006840d4:  10 42 31 91   add	x16, x16, #0xc50 ; data_100a5bc50 (__DATA_CONST.__const)
0x1006840d8:  10 22 04 91   add	x16, x16, #0x108
0x1006840dc:  f1 03 08 aa   mov	x17, x8
0x1006840e0:  31 44 e5 f2   movk	x17, #0x2a21, lsl #0x30
0x1006840e4:  30 0a c1 da   pacda	x16, x17
0x1006840e8:  10 10 00 f9   str	x16, [x0, #0x20]
0x1006840ec:  f3 03 00 aa   mov	x19, x0
0x1006840f0:  7f 0e 03 f8   str	xzr, [x19, #0x30]!
0x1006840f4:  1f 28 00 b9   str	wzr, [x0, #0x28]
0x1006840f8:  1f fc 03 a9   stp	xzr, xzr, [x0, #0x38]
0x1006840fc:  fb 03 00 aa   mov	x27, x0
0x100684100:  7f 0f 05 f8   str	xzr, [x27, #0x50]!
0x100684104:  fa 03 00 aa   mov	x26, x0
0x100684108:  5b 8f 04 f8   str	x27, [x26, #0x48]!
0x10068410c:  e8 03 00 aa   mov	x8, x0
0x100684110:  1f 8d 06 f8   str	xzr, [x8, #0x68]!
0x100684114:  1f 2c 00 f9   str	xzr, [x0, #0x58]
0x100684118:  e9 03 00 aa   mov	x9, x0
0x10068411c:  28 0d 06 f8   str	x8, [x9, #0x60]!
0x100684120:  e9 a3 02 a9   stp	x9, x8, [sp, #0x28]
0x100684124:  1f 38 00 f9   str	xzr, [x0, #0x70]
0x100684128:  e9 03 00 aa   mov	x9, x0
0x10068412c:  3f 0d 08 f8   str	xzr, [x9, #0x80]!
0x100684130:  e8 03 00 aa   mov	x8, x0
0x100684134:  09 8d 07 f8   str	x9, [x8, #0x78]!
0x100684138:  e8 33 00 f9   str	x8, [sp, #0x60]
0x10068413c:  1f 44 00 f9   str	xzr, [x0, #0x88]
0x100684140:  1f 50 00 f9   str	xzr, [x0, #0xa0]
0x100684144:  f5 03 00 aa   mov	x21, x0
0x100684148:  bf 8e 09 f8   str	xzr, [x21, #0x98]!
0x10068414c:  08 00 04 91   add	x8, x0, #0x100
0x100684150:  f9 03 00 aa   mov	x25, x0
0x100684154:  e8 07 00 f9   str	x8, [sp, #0x8]
0x100684158:  28 8f 0f f8   str	x8, [x25, #0xf8]!
0x10068415c:  f7 03 19 aa   mov	x23, x25
0x100684160:  f5 8e 19 f8   str	x21, [x23, #-0x68]!
0x100684164:  f8 03 19 aa   mov	x24, x25
0x100684168:  1f 8f 1b f8   str	xzr, [x24, #-0x48]!
0x10068416c:  e8 03 19 aa   mov	x8, x25
0x100684170:  18 0d 1b f8   str	x24, [x8, #-0x50]!
0x100684174:  e8 a7 01 a9   stp	x8, x9, [sp, #0x18]
0x100684178:  3f 03 1c f8   stur	xzr, [x25, #-0x40]
0x10068417c:  f6 03 19 aa   mov	x22, x25
0x100684180:  df 0e 1d f8   str	xzr, [x22, #-0x30]!
0x100684184:  e8 03 19 aa   mov	x8, x25
0x100684188:  16 8d 1c f8   str	x22, [x8, #-0x38]!
0x10068418c:  e8 0b 00 f9   str	x8, [sp, #0x10]

