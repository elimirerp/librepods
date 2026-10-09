0x100683f60:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x100683f64:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x100683f68:  ff 0f 5f d6   retab
0x100683f6c:  f5 03 00 aa   mov	x21, x0
0x100683f70:  e0 03 14 aa   mov	x0, x20
0x100683f74:  e1 03 13 aa   mov	x1, x19
0x100683f78:  7a 28 06 94   bl	j___ZdlPvSt19__type_descriptor_t
0x100683f7c:  e0 03 15 aa   mov	x0, x21
0x100683f80:  58 27 06 94   bl	j___Unwind_Resume

sub_100683f84:
0x100683f84:  7f 23 03 d5   pacibsp
0x100683f88:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x100683f8c:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x100683f90:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x100683f94:  fd 83 00 91   add	fp, sp, #0x20
0x100683f98:  53 ee 97 d2   mov	x19, #0xbf72
0x100683f9c:  53 f3 a7 f2   movk	x19, #0x3f9a, lsl #0x10
0x100683fa0:  13 88 c3 f2   movk	x19, #0x1c40, lsl #0x20
0x100683fa4:  53 21 e0 f2   movk	x19, #0x10a, lsl #0x30
0x100683fa8:  00 25 80 52   mov	w0, #0x128
0x100683fac:  e1 03 13 aa   mov	x1, x19
0x100683fb0:  78 28 06 94   bl	j___ZnwmSt19__type_descriptor_t
0x100683fb4:  f4 03 00 aa   mov	x20, x0
0x100683fb8:  68 49 f9 97   bl	0x1004d6558
0x100683fbc:  a8 20 00 d0   adrp	x8, 0x100a99000
0x100683fc0:  14 39 00 f9   str	x20, [x8, #0x70]
0x100683fc4:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x100683fc8:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x100683fcc:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x100683fd0:  ff 0f 5f d6   retab
0x100683fd4:  f5 03 00 aa   mov	x21, x0
0x100683fd8:  e0 03 14 aa   mov	x0, x20
0x100683fdc:  e1 03 13 aa   mov	x1, x19
0x100683fe0:  60 28 06 94   bl	j___ZdlPvSt19__type_descriptor_t
0x100683fe4:  e0 03 15 aa   mov	x0, x21
0x100683fe8:  3e 27 06 94   bl	j___Unwind_Resume

sub_100683fec:
0x100683fec:  a0 20 00 d0   adrp	x0, 0x100a99000
0x100683ff0:  00 a0 06 91   add	x0, x0, #0x1a8 ; data_100a991a8 (__DATA.__data)
0x100683ff4:  c1 1e 00 90   adrp	x1, 0x100a5b000
0x100683ff8:  21 60 2f 91   add	x1, x1, #0xbd8 ; __NSConcreteGlobalBlock
0x100683ffc:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100684000:  50 00 f0 b6   tbz	x16, #0x3e, loc_100684008 ; ⤵ 0x8
0x100684004:  20 8e 38 d4   brk	#0xc471
0x100684008:  ; loc_100684008
0x100684008:  0e 2a 06 14   b	j__dispatch_once

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
0x100684190:  fc 03 19 aa   mov	x28, x25
0x100684194:  9f 8f 1e f8   str	xzr, [x28, #-0x18]!
0x100684198:  e8 03 19 aa   mov	x8, x25
0x10068419c:  1c 0d 1e f8   str	x28, [x8, #-0x20]!
0x1006841a0:  e8 03 00 f9   str	x8, [sp]
0x1006841a4:  3f 83 1d f8   stur	xzr, [x25, #-0x28]
0x1006841a8:  3f 03 1f f8   stur	xzr, [x25, #-0x10]
0x1006841ac:  c8 03 80 52   mov	w8, #0x1e
0x1006841b0:  28 83 1f b8   stur	w8, [x25, #-0x8]
0x1006841b4:  1f 80 00 f9   str	xzr, [x0, #0x100]
0x1006841b8:  3f 0b 00 f9   str	xzr, [x25, #0x10]
0x1006841bc:  88 10 00 90   adrp	x8, 0x100894000
0x1006841c0:  08 21 26 91   add	x8, x8, #0x988
0x1006841c4:  00 01 c0 3d   ldr	q0, [x8]
0x1006841c8:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x1006841cc:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x1006841d0:  e8 83 00 b9   str	w8, [sp, #0x80]
0x1006841d4:  e0 43 02 91   add	x0, sp, #0x90
0x1006841d8:  e1 c3 01 91   add	x1, sp, #0x70
0x1006841dc:  fb cf 03 a9   stp	x27, x19, [sp, #0x38]
0x1006841e0:  bc 1d 04 94   bl	0x10078b8d0
0x1006841e4:  e1 43 02 91   add	x1, sp, #0x90
0x1006841e8:  e2 43 02 91   add	x2, sp, #0x90
0x1006841ec:  e0 03 1a aa   mov	x0, x26
0x1006841f0:  33 74 f7 97   bl	0x1004612bc
0x1006841f4:  88 10 00 90   adrp	x8, 0x100894000
0x1006841f8:  08 71 26 91   add	x8, x8, #0x99c
0x1006841fc:  00 01 c0 3d   ldr	q0, [x8]
0x100684200:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x100684204:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x100684208:  e8 83 00 b9   str	w8, [sp, #0x80]
0x10068420c:  e0 43 02 91   add	x0, sp, #0x90
0x100684210:  e1 c3 01 91   add	x1, sp, #0x70
0x100684214:  af 1d 04 94   bl	0x10078b8d0
0x100684218:  e1 43 02 91   add	x1, sp, #0x90
0x10068421c:  e2 43 02 91   add	x2, sp, #0x90
0x100684220:  e0 03 1a aa   mov	x0, x26
0x100684224:  26 74 f7 97   bl	0x1004612bc
0x100684228:  88 10 00 90   adrp	x8, 0x100894000
0x10068422c:  08 61 2c 91   add	x8, x8, #0xb18
0x100684230:  00 01 c0 3d   ldr	q0, [x8]
0x100684234:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x100684238:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x10068423c:  e8 83 00 b9   str	w8, [sp, #0x80]
0x100684240:  e0 43 02 91   add	x0, sp, #0x90
0x100684244:  e1 c3 01 91   add	x1, sp, #0x70
0x100684248:  a2 1d 04 94   bl	0x10078b8d0
0x10068424c:  e1 43 02 91   add	x1, sp, #0x90
0x100684250:  e2 43 02 91   add	x2, sp, #0x90
0x100684254:  e0 03 1a aa   mov	x0, x26
0x100684258:  19 74 f7 97   bl	0x1004612bc
0x10068425c:  88 10 00 90   adrp	x8, 0x100894000
0x100684260:  08 01 2d 91   add	x8, x8, #0xb40
0x100684264:  00 01 c0 3d   ldr	q0, [x8]
0x100684268:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x10068426c:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x100684270:  e8 83 00 b9   str	w8, [sp, #0x80]
0x100684274:  e0 43 02 91   add	x0, sp, #0x90
0x100684278:  e1 c3 01 91   add	x1, sp, #0x70
0x10068427c:  95 1d 04 94   bl	0x10078b8d0
0x100684280:  e1 43 02 91   add	x1, sp, #0x90
0x100684284:  e2 43 02 91   add	x2, sp, #0x90
0x100684288:  e0 03 1a aa   mov	x0, x26
0x10068428c:  0c 74 f7 97   bl	0x1004612bc
0x100684290:  88 10 00 90   adrp	x8, 0x100894000
0x100684294:  08 51 2d 91   add	x8, x8, #0xb54
0x100684298:  00 01 c0 3d   ldr	q0, [x8]
0x10068429c:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x1006842a0:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x1006842a4:  e8 83 00 b9   str	w8, [sp, #0x80]
0x1006842a8:  e0 43 02 91   add	x0, sp, #0x90
0x1006842ac:  e1 c3 01 91   add	x1, sp, #0x70
0x1006842b0:  88 1d 04 94   bl	0x10078b8d0
0x1006842b4:  e1 43 02 91   add	x1, sp, #0x90
0x1006842b8:  e2 43 02 91   add	x2, sp, #0x90
0x1006842bc:  e0 03 1a aa   mov	x0, x26
0x1006842c0:  ff 73 f7 97   bl	0x1004612bc
0x1006842c4:  88 10 00 90   adrp	x8, 0x100894000
0x1006842c8:  08 a1 2d 91   add	x8, x8, #0xb68
0x1006842cc:  00 01 c0 3d   ldr	q0, [x8]
0x1006842d0:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x1006842d4:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x1006842d8:  e8 83 00 b9   str	w8, [sp, #0x80]
0x1006842dc:  e0 43 02 91   add	x0, sp, #0x90
0x1006842e0:  e1 c3 01 91   add	x1, sp, #0x70
0x1006842e4:  7b 1d 04 94   bl	0x10078b8d0
0x1006842e8:  e1 43 02 91   add	x1, sp, #0x90
0x1006842ec:  e2 43 02 91   add	x2, sp, #0x90
0x1006842f0:  e0 03 1a aa   mov	x0, x26
0x1006842f4:  f2 73 f7 97   bl	0x1004612bc
0x1006842f8:  88 10 00 90   adrp	x8, 0x100894000
0x1006842fc:  08 f1 2d 91   add	x8, x8, #0xb7c
0x100684300:  00 01 c0 3d   ldr	q0, [x8]
0x100684304:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x100684308:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x10068430c:  e8 83 00 b9   str	w8, [sp, #0x80]
0x100684310:  e0 43 02 91   add	x0, sp, #0x90
0x100684314:  e1 c3 01 91   add	x1, sp, #0x70
0x100684318:  6e 1d 04 94   bl	0x10078b8d0
0x10068431c:  e1 43 02 91   add	x1, sp, #0x90
0x100684320:  e2 43 02 91   add	x2, sp, #0x90
0x100684324:  e0 03 1a aa   mov	x0, x26
0x100684328:  e5 73 f7 97   bl	0x1004612bc
0x10068432c:  88 10 00 90   adrp	x8, 0x100894000
0x100684330:  08 e1 2e 91   add	x8, x8, #0xbb8
0x100684334:  00 01 c0 3d   ldr	q0, [x8]
0x100684338:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x10068433c:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x100684340:  e8 83 00 b9   str	w8, [sp, #0x80]
0x100684344:  e0 43 02 91   add	x0, sp, #0x90
0x100684348:  e1 c3 01 91   add	x1, sp, #0x70
0x10068434c:  61 1d 04 94   bl	0x10078b8d0
0x100684350:  e1 43 02 91   add	x1, sp, #0x90
0x100684354:  e2 43 02 91   add	x2, sp, #0x90
0x100684358:  e0 03 1a aa   mov	x0, x26
0x10068435c:  d8 73 f7 97   bl	0x1004612bc
0x100684360:  88 10 00 90   adrp	x8, 0x100894000
0x100684364:  08 61 32 91   add	x8, x8, #0xc98
0x100684368:  00 01 c0 3d   ldr	q0, [x8]
0x10068436c:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x100684370:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x100684374:  e8 83 00 b9   str	w8, [sp, #0x80]
0x100684378:  e0 43 02 91   add	x0, sp, #0x90
0x10068437c:  e1 c3 01 91   add	x1, sp, #0x70
0x100684380:  54 1d 04 94   bl	0x10078b8d0
0x100684384:  e1 43 02 91   add	x1, sp, #0x90
0x100684388:  e2 43 02 91   add	x2, sp, #0x90
0x10068438c:  e0 03 1a aa   mov	x0, x26
0x100684390:  cb 73 f7 97   bl	0x1004612bc
0x100684394:  88 10 00 90   adrp	x8, 0x100894000
0x100684398:  08 91 2e 91   add	x8, x8, #0xba4
0x10068439c:  00 01 c0 3d   ldr	q0, [x8]
0x1006843a0:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x1006843a4:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x1006843a8:  e8 83 00 b9   str	w8, [sp, #0x80]
0x1006843ac:  e0 43 02 91   add	x0, sp, #0x90
0x1006843b0:  e1 c3 01 91   add	x1, sp, #0x70
0x1006843b4:  47 1d 04 94   bl	0x10078b8d0
0x1006843b8:  e1 43 02 91   add	x1, sp, #0x90
0x1006843bc:  e2 43 02 91   add	x2, sp, #0x90
0x1006843c0:  e0 03 1a aa   mov	x0, x26
0x1006843c4:  be 73 f7 97   bl	0x1004612bc
0x1006843c8:  88 10 00 90   adrp	x8, 0x100894000
0x1006843cc:  08 c1 30 91   add	x8, x8, #0xc30
0x1006843d0:  00 01 c0 3d   ldr	q0, [x8]
0x1006843d4:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x1006843d8:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x1006843dc:  e8 83 00 b9   str	w8, [sp, #0x80]
0x1006843e0:  e0 43 02 91   add	x0, sp, #0x90
0x1006843e4:  e1 c3 01 91   add	x1, sp, #0x70
0x1006843e8:  3a 1d 04 94   bl	0x10078b8d0
0x1006843ec:  e1 43 02 91   add	x1, sp, #0x90
0x1006843f0:  e2 43 02 91   add	x2, sp, #0x90
0x1006843f4:  e0 03 1a aa   mov	x0, x26
0x1006843f8:  b1 73 f7 97   bl	0x1004612bc
0x1006843fc:  88 10 00 90   adrp	x8, 0x100894000
0x100684400:  08 51 33 91   add	x8, x8, #0xcd4
0x100684404:  00 01 c0 3d   ldr	q0, [x8]
0x100684408:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x10068440c:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x100684410:  e8 83 00 b9   str	w8, [sp, #0x80]
0x100684414:  e0 43 02 91   add	x0, sp, #0x90
0x100684418:  e1 c3 01 91   add	x1, sp, #0x70
0x10068441c:  2d 1d 04 94   bl	0x10078b8d0
0x100684420:  e1 43 02 91   add	x1, sp, #0x90
0x100684424:  e2 43 02 91   add	x2, sp, #0x90
0x100684428:  e0 03 1a aa   mov	x0, x26
0x10068442c:  a4 73 f7 97   bl	0x1004612bc
0x100684430:  88 10 00 90   adrp	x8, 0x100894000
0x100684434:  08 a1 33 91   add	x8, x8, #0xce8
0x100684438:  00 01 c0 3d   ldr	q0, [x8]
0x10068443c:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x100684440:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x100684444:  e8 83 00 b9   str	w8, [sp, #0x80]
0x100684448:  e0 43 02 91   add	x0, sp, #0x90
0x10068444c:  e1 c3 01 91   add	x1, sp, #0x70
0x100684450:  20 1d 04 94   bl	0x10078b8d0
0x100684454:  e1 43 02 91   add	x1, sp, #0x90
0x100684458:  e2 43 02 91   add	x2, sp, #0x90
0x10068445c:  e0 03 1a aa   mov	x0, x26
0x100684460:  97 73 f7 97   bl	0x1004612bc
0x100684464:  88 10 00 90   adrp	x8, 0x100894000
0x100684468:  08 f1 33 91   add	x8, x8, #0xcfc
0x10068446c:  00 01 c0 3d   ldr	q0, [x8]
0x100684470:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x100684474:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x100684478:  e8 83 00 b9   str	w8, [sp, #0x80]
0x10068447c:  e0 43 02 91   add	x0, sp, #0x90
0x100684480:  e1 c3 01 91   add	x1, sp, #0x70
0x100684484:  13 1d 04 94   bl	0x10078b8d0
0x100684488:  e1 43 02 91   add	x1, sp, #0x90
0x10068448c:  e2 43 02 91   add	x2, sp, #0x90
0x100684490:  e0 03 1a aa   mov	x0, x26
0x100684494:  8a 73 f7 97   bl	0x1004612bc
0x100684498:  88 10 00 90   adrp	x8, 0x100894000
0x10068449c:  08 91 34 91   add	x8, x8, #0xd24
0x1006844a0:  00 01 c0 3d   ldr	q0, [x8]
0x1006844a4:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x1006844a8:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x1006844ac:  e8 83 00 b9   str	w8, [sp, #0x80]
0x1006844b0:  e0 43 02 91   add	x0, sp, #0x90
0x1006844b4:  e1 c3 01 91   add	x1, sp, #0x70
0x1006844b8:  06 1d 04 94   bl	0x10078b8d0
0x1006844bc:  e1 43 02 91   add	x1, sp, #0x90
0x1006844c0:  e2 43 02 91   add	x2, sp, #0x90
0x1006844c4:  e0 03 1a aa   mov	x0, x26
0x1006844c8:  7d 73 f7 97   bl	0x1004612bc
0x1006844cc:  88 10 00 90   adrp	x8, 0x100894000
0x1006844d0:  08 31 35 91   add	x8, x8, #0xd4c
0x1006844d4:  00 01 c0 3d   ldr	q0, [x8]
0x1006844d8:  e0 1f 80 3d   str	q0, [sp, #0x70]
0x1006844dc:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x1006844e0:  e8 83 00 b9   str	w8, [sp, #0x80]
0x1006844e4:  e0 43 02 91   add	x0, sp, #0x90
0x1006844e8:  e1 c3 01 91   add	x1, sp, #0x70
0x1006844ec:  f9 1c 04 94   bl	0x10078b8d0
0x1006844f0:  e1 43 02 91   add	x1, sp, #0x90
0x1006844f4:  e2 43 02 91   add	x2, sp, #0x90
0x1006844f8:  e0 03 1a aa   mov	x0, x26
0x1006844fc:  70 73 f7 97   bl	0x1004612bc

