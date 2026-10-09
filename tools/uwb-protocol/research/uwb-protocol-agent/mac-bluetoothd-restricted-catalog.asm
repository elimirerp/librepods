
sub_100688014:
0x100688014:  7f 23 03 d5   pacibsp
0x100688018:  ff c3 04 d1   sub	sp, sp, #0x130
0x10068801c:  fc 6f 0d a9   stp	x28, x27, [sp, #0xd0]
0x100688020:  fa 67 0e a9   stp	x26, x25, [sp, #0xe0]
0x100688024:  f8 5f 0f a9   stp	x24, x23, [sp, #0xf0]
0x100688028:  f6 57 10 a9   stp	x22, x21, [sp, #0x100]
0x10068802c:  f4 4f 11 a9   stp	x20, x19, [sp, #0x110]
0x100688030:  fd 7b 12 a9   stp	fp, lr, [sp, #0x120]
0x100688034:  fd 83 04 91   add	fp, sp, #0x120
0x100688038:  f3 03 01 aa   mov	x19, x1
0x10068803c:  f4 03 00 aa   mov	x20, x0
0x100688040:  48 1d 00 d0   adrp	x8, 0x100a32000
0x100688044:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100688048:  08 01 40 f9   ldr	x8, [x8]
0x10068804c:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x100688050:  e0 03 01 aa   mov	x0, x1
0x100688054:  cb 1c 06 94   bl	j__objc_retain
0x100688058:  99 20 00 b0   adrp	x25, 0x100a99000
0x10068805c:  28 1b 44 f9   ldr	x8, [x25, #0x830] ; data_100a99830 (__DATA.__data)
0x100688060:  1f 05 00 b1   cmn	x8, #0x1
0x100688064:  c1 38 00 54   b.ne	loc_10068877c ; ⤵ 0x718
0x100688068:  ; loc_100688068
0x100688068:  9a 20 00 b0   adrp	x26, 0x100a99000
0x10068806c:  40 17 44 f9   ldr	x0, [x26, #0x828] ; data_100a99828 (__DATA.__data)
0x100688070:  e1 03 13 aa   mov	x1, x19
0x100688074:  ef b7 f9 97   bl	0x1004f6030
0x100688078:  f5 03 00 aa   mov	x21, x0
0x10068807c:  a0 03 02 d1   sub	x0, fp, #0x80
0x100688080:  e1 03 13 aa   mov	x1, x19
0x100688084:  84 b6 f0 97   bl	0x1002b5a94
0x100688088:  e8 c3 00 91   add	x8, sp, #0x30
0x10068808c:  a1 03 02 d1   sub	x1, fp, #0x80
0x100688090:  e0 03 14 aa   mov	x0, x20
0x100688094:  02 00 80 52   mov	w2, #0
0x100688098:  23 04 00 94   bl	0x100689124
0x10068809c:  f7 1b 40 f9   ldr	x23, [sp, #0x30]
0x1006880a0:  57 16 00 b4   cbz	x23, loc_100688368 ; ⤵ 0x2c8
0x1006880a4:  68 10 00 90   adrp	x8, 0x100894000
0x1006880a8:  08 71 26 91   add	x8, x8, #0x99c
0x1006880ac:  00 01 c0 3d   ldr	q0, [x8]
0x1006880b0:  e0 23 80 3d   str	q0, [sp, #0x80]
0x1006880b4:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x1006880b8:  e8 93 00 b9   str	w8, [sp, #0x90]
0x1006880bc:  a0 03 02 d1   sub	x0, fp, #0x80
0x1006880c0:  e1 03 02 91   add	x1, sp, #0x80
0x1006880c4:  03 0e 04 94   bl	0x10078b8d0
0x1006880c8:  68 10 00 90   adrp	x8, 0x100894000
0x1006880cc:  08 b1 27 91   add	x8, x8, #0x9ec
0x1006880d0:  00 01 c0 3d   ldr	q0, [x8]
0x1006880d4:  e0 13 80 3d   str	q0, [sp, #0x40]
0x1006880d8:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x1006880dc:  e8 53 00 b9   str	w8, [sp, #0x50]
0x1006880e0:  e0 03 02 91   add	x0, sp, #0x80
0x1006880e4:  e1 03 01 91   add	x1, sp, #0x40
0x1006880e8:  fa 0d 04 94   bl	0x10078b8d0
0x1006880ec:  a1 03 02 d1   sub	x1, fp, #0x80
0x1006880f0:  e2 03 02 91   add	x2, sp, #0x80
0x1006880f4:  e0 03 17 aa   mov	x0, x23
0x1006880f8:  19 9c fa 97   bl	0x10052f15c
0x1006880fc:  f6 03 00 aa   mov	x22, x0
0x100688100:  b8 03 02 d1   sub	x24, fp, #0x80
0x100688104:  bf 7f 38 a9   stp	xzr, xzr, [fp, #-0x80]
0x100688108:  1f 0b 00 f9   str	xzr, [x24, #0x10]
0x10068810c:  ff 7f 08 a9   stp	xzr, xzr, [sp, #0x80]
0x100688110:  ff 4b 00 f9   str	xzr, [sp, #0x90]
0x100688114:  e2 03 02 91   add	x2, sp, #0x80
0x100688118:  e0 03 17 aa   mov	x0, x23
0x10068811c:  01 00 80 d2   mov	x1, #0
0x100688120:  30 90 fa 97   bl	0x10052c1e0
0x100688124:  c0 0d 00 35   cbnz	w0, loc_1006882dc ; ⤵ 0x1b8
0x100688128:  f7 23 48 a9   ldp	x23, x8, [sp, #0x80]
0x10068812c:  ff 02 08 eb   cmp	x23, x8
0x100688130:  40 0b 00 54   b.eq	loc_100688298 ; ⤵ 0x168
0x100688134:  f6 03 00 f9   str	x22, [sp]
0x100688138:  f5 0f 00 b9   str	w21, [sp, #0xc]
0x10068813c:  f4 0b 00 f9   str	x20, [sp, #0x10]
0x100688140:  fb e7 02 b2   mov	x27, #0xcccccccccccccccc
0x100688144:  9b 99 e1 f2   movk	x27, #0xccc, lsl #0x30
0x100688148:  f6 e7 02 b2   mov	x22, #0xcccccccccccccccc
0x10068814c:  b6 99 99 f2   movk	x22, #0xcccd
0x100688150:  f4 e7 03 b2   mov	x20, #0x6666666666666666
0x100688154:  d4 cc e0 f2   movk	x20, #0x666, lsl #0x30
0x100688158:  9c 02 80 52   mov	w28, #0x14
0x10068815c:  ; loc_10068815c
0x10068815c:  e8 02 40 f9   ldr	x8, [x23]
0x100688160:  00 81 c4 3c   ldur	q0, [x8, #0x48]
0x100688164:  e0 13 80 3d   str	q0, [sp, #0x40]
0x100688168:  08 59 40 b9   ldr	w8, [x8, #0x58]
0x10068816c:  e8 53 00 b9   str	w8, [sp, #0x50]
0x100688170:  e0 83 01 91   add	x0, sp, #0x60
0x100688174:  e1 03 01 91   add	x1, sp, #0x40
0x100688178:  d6 0d 04 94   bl	0x10078b8d0
0x10068817c:  a8 83 58 f8   ldur	x8, [fp, #-0x78]
0x100688180:  09 0b 40 f9   ldr	x9, [x24, #0x10]
0x100688184:  1f 01 09 eb   cmp	x8, x9
0x100688188:  e2 00 00 54   b.hs	loc_1006881a4 ; ⤵ 0x1c
0x10068818c:  e0 1b c0 3d   ldr	q0, [sp, #0x60]
0x100688190:  e9 73 40 b9   ldr	w9, [sp, #0x70]
0x100688194:  09 11 00 b9   str	w9, [x8, #0x10]
0x100688198:  00 01 80 3d   str	q0, [x8]
0x10068819c:  15 51 00 91   add	x21, x8, #0x14
0x1006881a0:  2c 00 00 14   b	loc_100688250 ; ⤵ 0xb0
0x1006881a4:  ; loc_1006881a4
0x1006881a4:  aa 03 58 f8   ldur	x10, [fp, #-0x80]
0x1006881a8:  15 01 0a cb   sub	x21, x8, x10
0x1006881ac:  a8 fe 42 93   asr	x8, x21, #0x2
0x1006881b0:  2b 00 80 d2   mov	x11, #0x1
0x1006881b4:  08 2d 16 9b   madd	x8, x8, x22, x11
0x1006881b8:  1f 01 1b eb   cmp	x8, x27
0x1006881bc:  c8 2e 00 54   b.hi	loc_100688794 ; ⤵ 0x5d8
0x1006881c0:  29 01 0a cb   sub	x9, x9, x10
0x1006881c4:  29 fd 42 93   asr	x9, x9, #0x2
0x1006881c8:  29 7d 16 9b   mul	x9, x9, x22
0x1006881cc:  2a f9 7f d3   lsl	x10, x9, #0x1
0x1006881d0:  5f 01 08 eb   cmp	x10, x8
0x1006881d4:  48 81 88 9a   csel	x8, x10, x8, hi
0x1006881d8:  3f 01 14 eb   cmp	x9, x20
0x1006881dc:  01 31 9b 9a   csel	x1, x8, x27, cc
0x1006881e0:  a8 03 02 d1   sub	x8, fp, #0x80
0x1006881e4:  00 41 00 91   add	x0, x8, #0x10
0x1006881e8:  55 7c e7 97   bl	0x10006733c
0x1006881ec:  09 00 15 8b   add	x9, x0, x21
0x1006881f0:  e0 1b c0 3d   ldr	q0, [sp, #0x60]
0x1006881f4:  e8 73 40 b9   ldr	w8, [sp, #0x70]
0x1006881f8:  28 11 00 b9   str	w8, [x9, #0x10]
0x1006881fc:  20 01 80 3d   str	q0, [x9]
0x100688200:  a8 2f 78 a9   ldp	x8, x11, [fp, #-0x80]
0x100688204:  0a 01 0b eb   subs	x10, x8, x11
0x100688208:  2a 01 0a 8b   add	x10, x9, x10
0x10068820c:  40 01 00 54   b.eq	loc_100688234 ; ⤵ 0x28
0x100688210:  ec 03 0a aa   mov	x12, x10
0x100688214:  ; loc_100688214
0x100688214:  00 01 c0 3d   ldr	q0, [x8]
0x100688218:  0d 11 40 b9   ldr	w13, [x8, #0x10]
0x10068821c:  8d 11 00 b9   str	w13, [x12, #0x10]
0x100688220:  80 45 81 3c   str	q0, [x12], #0x14
0x100688224:  08 51 00 91   add	x8, x8, #0x14
0x100688228:  1f 01 0b eb   cmp	x8, x11
0x10068822c:  41 ff ff 54   b.ne	loc_100688214 ; ⤴ -0x18
0x100688230:  a8 03 58 f8   ldur	x8, [fp, #-0x80]
0x100688234:  ; loc_100688234
0x100688234:  2b 00 1c 9b   madd	x11, x1, x28, x0
0x100688238:  35 51 00 91   add	x21, x9, #0x14
0x10068823c:  aa 57 38 a9   stp	x10, x21, [fp, #-0x80]
0x100688240:  0b 0b 00 f9   str	x11, [x24, #0x10]
0x100688244:  68 00 00 b4   cbz	x8, loc_100688250 ; ⤵ 0xc
0x100688248:  e0 03 08 aa   mov	x0, x8
0x10068824c:  c1 17 06 94   bl	j___ZdlPv
0x100688250:  ; loc_100688250
0x100688250:  b5 83 18 f8   stur	x21, [fp, #-0x78]
0x100688254:  e0 02 40 f9   ldr	x0, [x23]
0x100688258:  00 01 00 b4   cbz	x0, loc_100688278 ; ⤵ 0x20
0x10068825c:  10 00 40 f9   ldr	x16, [x0]
0x100688260:  f1 03 00 aa   mov	x17, x0
0x100688264:  b1 62 f7 f2   movk	x17, #0xbb15, lsl #0x30
0x100688268:  30 1a c1 da   autda	x16, x17
0x10068826c:  08 8e 40 f8   ldr	x8, [x16, #0x8]!
0x100688270:  90 96 f1 f2   movk	x16, #0x8cb4, lsl #0x30
0x100688274:  10 09 3f d7   blraa	x8, x16
0x100688278:  ; loc_100688278
0x100688278:  f7 22 00 91   add	x23, x23, #0x8
0x10068827c:  e8 47 40 f9   ldr	x8, [sp, #0x88]
0x100688280:  ff 02 08 eb   cmp	x23, x8
0x100688284:  c1 f6 ff 54   b.ne	loc_10068815c ; ⤴ -0x128
0x100688288:  f7 43 40 f9   ldr	x23, [sp, #0x80]
0x10068828c:  f4 0b 40 f9   ldr	x20, [sp, #0x10]
0x100688290:  f5 0f 40 b9   ldr	w21, [sp, #0xc]
0x100688294:  f6 03 40 f9   ldr	x22, [sp]
0x100688298:  ; loc_100688298
0x100688298:  f7 47 00 f9   str	x23, [sp, #0x88]
0x10068829c:  ff 7f 04 a9   stp	xzr, xzr, [sp, #0x40]
0x1006882a0:  ff 2b 00 f9   str	xzr, [sp, #0x50]
0x1006882a4:  e0 03 01 91   add	x0, sp, #0x40
0x1006882a8:  a2 03 02 d1   sub	x2, fp, #0x80
0x1006882ac:  e1 03 13 aa   mov	x1, x19
0x1006882b0:  f7 77 f9 97   bl	0x1004e628c
0x1006882b4:  a8 20 00 90   adrp	x8, 0x100a9c000
0x1006882b8:  08 9d 45 f9   ldr	x8, [x8, #0xb38] ; data_100a9cb38 (__DATA.__data)
0x1006882bc:  1f 05 00 b1   cmn	x8, #0x1
0x1006882c0:  61 26 00 54   b.ne	loc_10068878c ; ⤵ 0x4cc
0x1006882c4:  ; loc_1006882c4
0x1006882c4:  a8 20 00 90   adrp	x8, 0x100a9c000
0x1006882c8:  00 99 45 f9   ldr	x0, [x8, #0xb30] ; data_100a9cb30 (__DATA.__data)
0x1006882cc:  e1 03 01 91   add	x1, sp, #0x40
0x1006882d0:  25 78 f9 97   bl	0x1004e6364
0x1006882d4:  e0 27 40 f9   ldr	x0, [sp, #0x48]
0x1006882d8:  26 1c 06 94   bl	j__objc_release
0x1006882dc:  ; loc_1006882dc
0x1006882dc:  15 07 00 34   cbz	w21, loc_1006883bc ; ⤵ 0xe0
0x1006882e0:  48 22 00 b0   adrp	x8, 0x100ad1000
0x1006882e4:  08 01 31 91   add	x8, x8, #0xc40
0x1006882e8:  14 01 40 f9   ldr	x20, [x8]
0x1006882ec:  e0 03 14 aa   mov	x0, x20
0x1006882f0:  21 00 80 52   mov	w1, #0x1
0x1006882f4:  cf 1c 06 94   bl	j__os_log_type_enabled
0x1006882f8:  c0 01 00 34   cbz	w0, loc_100688330 ; ⤵ 0x38
0x1006882fc:  68 10 00 b0   adrp	x8, 0x100895000
0x100688300:  00 55 43 fd   ldr	d0, [x8, #0x6a8]
0x100688304:  e0 43 00 bd   str	s0, [sp, #0x40]
0x100688308:  f3 43 04 f8   stur	x19, [sp, #0x44]
0x10068830c:  c0 cb ff 90   adrp	x0, 0x100000000
0x100688310:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100688314:  03 1a 00 d0   adrp	x3, 0x1009ca000
0x100688318:  63 2c 2d 91   add	x3, x3, #0xb4b ; "Keeping database for paired device \"%{public}@\""
0x10068831c:  e4 03 01 91   add	x4, sp, #0x40
0x100688320:  e1 03 14 aa   mov	x1, x20
0x100688324:  22 00 80 52   mov	w2, #0x1
0x100688328:  85 01 80 52   mov	w5, #0xc
0x10068832c:  09 18 06 94   bl	j___os_log_impl
0x100688330:  ; loc_100688330
0x100688330:  f4 1b 40 f9   ldr	x20, [sp, #0x30]
0x100688334:  68 10 00 90   adrp	x8, 0x100894000
0x100688338:  08 11 2c 91   add	x8, x8, #0xb04
0x10068833c:  00 01 c0 3d   ldr	q0, [x8]
0x100688340:  e0 1b 80 3d   str	q0, [sp, #0x60]
0x100688344:  08 11 40 b9   ldr	w8, [x8, #0x10]
0x100688348:  e8 73 00 b9   str	w8, [sp, #0x70]
0x10068834c:  e0 03 01 91   add	x0, sp, #0x40
0x100688350:  e1 83 01 91   add	x1, sp, #0x60
0x100688354:  5f 0d 04 94   bl	0x10078b8d0
0x100688358:  e1 03 01 91   add	x1, sp, #0x40
0x10068835c:  e0 03 14 aa   mov	x0, x20
0x100688360:  5a 9e fa 97   bl	0x10052fcc8
0x100688364:  23 00 00 14   b	loc_1006883f0 ; ⤵ 0x8c
0x100688368:  ; loc_100688368
0x100688368:  48 22 00 b0   adrp	x8, 0x100ad1000
0x10068836c:  08 01 31 91   add	x8, x8, #0xc40
0x100688370:  14 01 40 f9   ldr	x20, [x8]
0x100688374:  e0 03 14 aa   mov	x0, x20
0x100688378:  21 00 80 52   mov	w1, #0x1
0x10068837c:  ad 1c 06 94   bl	j__os_log_type_enabled
0x100688380:  80 04 00 34   cbz	w0, loc_100688410 ; ⤵ 0x90
0x100688384:  68 10 00 b0   adrp	x8, 0x100895000
0x100688388:  00 55 43 fd   ldr	d0, [x8, #0x6a8]
0x10068838c:  a0 03 18 bc   stur	s0, [fp, #-0x80]
0x100688390:  b3 43 18 f8   stur	x19, [fp, #-0x7c]
0x100688394:  c0 cb ff 90   adrp	x0, 0x100000000
0x100688398:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10068839c:  03 1a 00 d0   adrp	x3, 0x1009ca000
0x1006883a0:  63 80 2c 91   add	x3, x3, #0xb20 ; "Database not found for device \"%{public}@\""
0x1006883a4:  a4 03 02 d1   sub	x4, fp, #0x80
0x1006883a8:  e1 03 14 aa   mov	x1, x20
0x1006883ac:  22 00 80 52   mov	w2, #0x1
0x1006883b0:  85 01 80 52   mov	w5, #0xc
0x1006883b4:  e7 17 06 94   bl	j___os_log_impl
0x1006883b8:  16 00 00 14   b	loc_100688410 ; ⤵ 0x58
0x1006883bc:  ; loc_1006883bc
0x1006883bc:  88 20 00 b0   adrp	x8, 0x100a99000
0x1006883c0:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x1006883c4:  1f 05 00 b1   cmn	x8, #0x1
0x1006883c8:  e1 1d 00 54   b.ne	loc_100688784 ; ⤵ 0x3bc
0x1006883cc:  ; loc_1006883cc
0x1006883cc:  88 20 00 b0   adrp	x8, 0x100a99000
0x1006883d0:  00 41 40 f9   ldr	x0, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x1006883d4:  e1 03 13 aa   mov	x1, x19
0x1006883d8:  02 00 80 52   mov	w2, #0
0x1006883dc:  ac 29 02 94   bl	0x100712a8c
0x1006883e0:  f6 03 00 b4   cbz	x22, loc_10068845c ; ⤵ 0x7c
0x1006883e4:  ; loc_1006883e4
0x1006883e4:  e0 03 14 aa   mov	x0, x20
0x1006883e8:  e1 03 13 aa   mov	x1, x19
0x1006883ec:  14 f5 ff 97   bl	0x10068583c
0x1006883f0:  ; loc_1006883f0
0x1006883f0:  e0 43 40 f9   ldr	x0, [sp, #0x80]
0x1006883f4:  60 00 00 b4   cbz	x0, loc_100688400 ; ⤵ 0xc
0x1006883f8:  e0 47 00 f9   str	x0, [sp, #0x88]
0x1006883fc:  55 17 06 94   bl	j___ZdlPv
0x100688400:  ; loc_100688400
0x100688400:  a0 03 58 f8   ldur	x0, [fp, #-0x80]
0x100688404:  60 00 00 b4   cbz	x0, loc_100688410 ; ⤵ 0xc
0x100688408:  a0 83 18 f8   stur	x0, [fp, #-0x78]
0x10068840c:  51 17 06 94   bl	j___ZdlPv
0x100688410:  ; loc_100688410
0x100688410:  e0 1f 40 f9   ldr	x0, [sp, #0x38]
0x100688414:  40 00 00 b4   cbz	x0, loc_10068841c ; ⤵ 0x8
0x100688418:  2f d1 e6 97   bl	0x10003c8d4
0x10068841c:  ; loc_10068841c
0x10068841c:  e0 03 13 aa   mov	x0, x19
0x100688420:  d4 1b 06 94   bl	j__objc_release
0x100688424:  a8 83 59 f8   ldur	x8, [fp, #-0x68]
0x100688428:  49 1d 00 d0   adrp	x9, 0x100a32000
0x10068842c:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100688430:  29 01 40 f9   ldr	x9, [x9]
0x100688434:  3f 01 08 eb   cmp	x9, x8
0x100688438:  01 1b 00 54   b.ne	loc_100688798 ; ⤵ 0x360
0x10068843c:  fd 7b 52 a9   ldp	fp, lr, [sp, #0x120]
0x100688440:  f4 4f 51 a9   ldp	x20, x19, [sp, #0x110]
0x100688444:  f6 57 50 a9   ldp	x22, x21, [sp, #0x100]
0x100688448:  f8 5f 4f a9   ldp	x24, x23, [sp, #0xf0]
0x10068844c:  fa 67 4e a9   ldp	x26, x25, [sp, #0xe0]
0x100688450:  fc 6f 4d a9   ldp	x28, x27, [sp, #0xd0]
0x100688454:  ff c3 04 91   add	sp, sp, #0x130
0x100688458:  ff 0f 5f d6   retab
0x10068845c:  ; loc_10068845c
0x10068845c:  08 dc 70 d3   ubfx	x8, x0, #0x30, #0x8
0x100688460:  c8 00 00 34   cbz	w8, loc_100688478 ; ⤵ 0x18
0x100688464:  1f 05 00 71   cmp	w8, #0x1
0x100688468:  e1 fb ff 54   b.ne	loc_1006883e4 ; ⤴ -0x84
0x10068846c:  08 00 d8 d2   mov	x8, #0xc00000000000
0x100688470:  1f 01 20 ea   bics	xzr, x8, x0
0x100688474:  81 fb ff 54   b.ne	loc_1006883e4 ; ⤴ -0x90
0x100688478:  ; loc_100688478
0x100688478:  f6 03 14 aa   mov	x22, x20
0x10068847c:  48 22 00 b0   adrp	x8, 0x100ad1000
0x100688480:  08 01 31 91   add	x8, x8, #0xc40
0x100688484:  15 01 40 f9   ldr	x21, [x8]
0x100688488:  e0 03 15 aa   mov	x0, x21
0x10068848c:  21 00 80 52   mov	w1, #0x1
0x100688490:  68 1c 06 94   bl	j__os_log_type_enabled
0x100688494:  74 10 00 b0   adrp	x20, 0x100895000
0x100688498:  a0 01 00 34   cbz	w0, loc_1006884cc ; ⤵ 0x34
0x10068849c:  80 56 43 fd   ldr	d0, [x20, #0x6a8]
0x1006884a0:  e0 43 00 bd   str	s0, [sp, #0x40]
0x1006884a4:  f3 43 04 f8   stur	x19, [sp, #0x44]
0x1006884a8:  c0 cb ff 90   adrp	x0, 0x100000000
0x1006884ac:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1006884b0:  03 1a 00 d0   adrp	x3, 0x1009ca000
0x1006884b4:  63 ec 2d 91   add	x3, x3, #0xb7b ; "Keeping database for public/static device \"%{public}@\""
0x1006884b8:  e4 03 01 91   add	x4, sp, #0x40
0x1006884bc:  e1 03 15 aa   mov	x1, x21
0x1006884c0:  22 00 80 52   mov	w2, #0x1
0x1006884c4:  85 01 80 52   mov	w5, #0xc
0x1006884c8:  a2 17 06 94   bl	j___os_log_impl
0x1006884cc:  ; loc_1006884cc
0x1006884cc:  ff 7f 04 a9   stp	xzr, xzr, [sp, #0x40]
0x1006884d0:  e0 03 01 91   add	x0, sp, #0x40
0x1006884d4:  73 1e 06 94   bl	j__uuid_clear
0x1006884d8:  15 00 80 52   mov	w21, #0
0x1006884dc:  e8 03 16 aa   mov	x8, x22
0x1006884e0:  d6 82 03 91   add	x22, x22, #0xe0
0x1006884e4:  1b 00 b0 12   mov	w27, #0x7fffffff
0x1006884e8:  80 56 43 fd   ldr	d0, [x20, #0x6a8]
0x1006884ec:  e0 07 80 3d   str	q0, [sp, #0x10]
0x1006884f0:  f4 03 08 aa   mov	x20, x8
0x1006884f4:  ; loc_1006884f4
0x1006884f4:  9c 6e 40 f9   ldr	x28, [x20, #0xd8]
0x1006884f8:  9f 03 16 eb   cmp	x28, x22
0x1006884fc:  e0 11 00 54   b.eq	loc_100688738 ; ⤵ 0x23c
0x100688500:  ; loc_100688500
0x100688500:  28 1b 44 f9   ldr	x8, [x25, #0x830]
0x100688504:  1f 05 00 b1   cmn	x8, #0x1
0x100688508:  41 10 00 54   b.ne	loc_100688710 ; ⤵ 0x208
0x10068850c:  ; loc_10068850c
0x10068850c:  58 17 44 f9   ldr	x24, [x26, #0x828]
0x100688510:  80 83 00 91   add	x0, x28, #0x20
0x100688514:  61 b5 f0 97   bl	0x1002b5a98
0x100688518:  fd 03 1d aa   mov	fp, fp
0x10068851c:  a1 1b 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100688520:  f7 03 00 aa   mov	x23, x0
0x100688524:  e0 03 18 aa   mov	x0, x24
0x100688528:  e1 03 17 aa   mov	x1, x23
0x10068852c:  c1 b6 f9 97   bl	0x1004f6030
0x100688530:  f8 03 00 aa   mov	x24, x0
0x100688534:  e0 03 17 aa   mov	x0, x23
0x100688538:  8e 1b 06 94   bl	j__objc_release
0x10068853c:  38 0b 00 37   tbnz	w24, #0, loc_1006886a0 ; ⤵ 0x164
0x100688540:  28 1b 44 f9   ldr	x8, [x25, #0x830]
0x100688544:  1f 05 00 b1   cmn	x8, #0x1
0x100688548:  81 0e 00 54   b.ne	loc_100688718 ; ⤵ 0x1d0
0x10068854c:  ; loc_10068854c
0x10068854c:  58 17 44 f9   ldr	x24, [x26, #0x828]
0x100688550:  80 83 00 91   add	x0, x28, #0x20
0x100688554:  51 b5 f0 97   bl	0x1002b5a98
0x100688558:  fd 03 1d aa   mov	fp, fp
0x10068855c:  91 1b 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100688560:  f7 03 00 aa   mov	x23, x0
0x100688564:  e0 03 18 aa   mov	x0, x24
0x100688568:  e1 03 17 aa   mov	x1, x23
0x10068856c:  1a b6 f9 97   bl	0x1004f5dd4
0x100688570:  f8 03 00 aa   mov	x24, x0
0x100688574:  e0 03 17 aa   mov	x0, x23
0x100688578:  7e 1b 06 94   bl	j__objc_release
0x10068857c:  b5 06 00 11   add	w21, w21, #0x1
0x100688580:  18 09 00 37   tbnz	w24, #0, loc_1006886a0 ; ⤵ 0x120
0x100688584:  ff 2f 00 b9   str	wzr, [sp, #0x2c]
0x100688588:  28 1b 44 f9   ldr	x8, [x25, #0x830]
0x10068858c:  1f 05 00 b1   cmn	x8, #0x1
0x100688590:  81 0c 00 54   b.ne	loc_100688720 ; ⤵ 0x190
0x100688594:  ; loc_100688594
0x100688594:  57 17 44 f9   ldr	x23, [x26, #0x828]
0x100688598:  e0 83 01 91   add	x0, sp, #0x60
0x10068859c:  e1 03 13 aa   mov	x1, x19
0x1006885a0:  3d b5 f0 97   bl	0x1002b5a94
0x1006885a4:  e1 83 01 91   add	x1, sp, #0x60
0x1006885a8:  e2 b3 00 91   add	x2, sp, #0x2c
0x1006885ac:  e0 03 17 aa   mov	x0, x23
0x1006885b0:  37 b6 f9 97   bl	0x1004f5e8c
0x1006885b4:  60 07 00 35   cbnz	w0, loc_1006886a0 ; ⤵ 0xec
0x1006885b8:  e8 2f 40 b9   ldr	w8, [sp, #0x2c]
0x1006885bc:  1f 05 00 71   cmp	w8, #0x1
0x1006885c0:  a0 02 00 54   b.eq	loc_100688614 ; ⤵ 0x54
0x1006885c4:  1f 09 00 71   cmp	w8, #0x2
0x1006885c8:  a1 04 00 54   b.ne	loc_10068865c ; ⤵ 0x94
0x1006885cc:  88 20 00 b0   adrp	x8, 0x100a99000
0x1006885d0:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x1006885d4:  1f 05 00 b1   cmn	x8, #0x1
0x1006885d8:  81 0a 00 54   b.ne	loc_100688728 ; ⤵ 0x150
0x1006885dc:  ; loc_1006885dc
0x1006885dc:  88 20 00 b0   adrp	x8, 0x100a99000
0x1006885e0:  17 41 40 f9   ldr	x23, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x1006885e4:  80 83 00 91   add	x0, x28, #0x20
0x1006885e8:  2c b5 f0 97   bl	0x1002b5a98
0x1006885ec:  fd 03 1d aa   mov	fp, fp
0x1006885f0:  6c 1b 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x1006885f4:  f8 03 00 aa   mov	x24, x0
0x1006885f8:  e0 03 17 aa   mov	x0, x23
0x1006885fc:  e1 03 18 aa   mov	x1, x24
0x100688600:  a0 29 02 94   bl	0x100712c80
0x100688604:  f7 03 00 aa   mov	x23, x0
0x100688608:  e0 03 18 aa   mov	x0, x24
0x10068860c:  59 1b 06 94   bl	j__objc_release
0x100688610:  1b 00 00 14   b	loc_10068867c ; ⤵ 0x6c
0x100688614:  ; loc_100688614
0x100688614:  88 20 00 b0   adrp	x8, 0x100a99000
0x100688618:  08 45 40 f9   ldr	x8, [x8, #0x88] ; data_100a99088 (__DATA.__data)
0x10068861c:  1f 05 00 b1   cmn	x8, #0x1
0x100688620:  81 08 00 54   b.ne	loc_100688730 ; ⤵ 0x110
0x100688624:  ; loc_100688624
0x100688624:  88 20 00 b0   adrp	x8, 0x100a99000
0x100688628:  17 41 40 f9   ldr	x23, [x8, #0x80] ; data_100a99080 (__DATA.__data)
0x10068862c:  80 83 00 91   add	x0, x28, #0x20
0x100688630:  1a b5 f0 97   bl	0x1002b5a98
0x100688634:  fd 03 1d aa   mov	fp, fp
0x100688638:  5a 1b 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x10068863c:  f8 03 00 aa   mov	x24, x0
0x100688640:  e0 03 17 aa   mov	x0, x23
0x100688644:  e1 03 18 aa   mov	x1, x24
0x100688648:  b4 29 02 94   bl	0x100712d18
0x10068864c:  f7 03 00 aa   mov	x23, x0
0x100688650:  e0 03 18 aa   mov	x0, x24
0x100688654:  47 1b 06 94   bl	j__objc_release
0x100688658:  09 00 00 14   b	loc_10068867c ; ⤵ 0x24
0x10068865c:  ; loc_10068865c
0x10068865c:  48 22 00 b0   adrp	x8, 0x100ad1000
0x100688660:  08 01 31 91   add	x8, x8, #0xc40
0x100688664:  17 01 40 f9   ldr	x23, [x8]
0x100688668:  e0 03 17 aa   mov	x0, x23
0x10068866c:  01 02 80 52   mov	w1, #0x10
0x100688670:  f0 1b 06 94   bl	j__os_log_type_enabled
0x100688674:  40 03 00 35   cbnz	w0, loc_1006886dc ; ⤵ 0x68
0x100688678:  ; loc_100688678
0x100688678:  17 00 80 52   mov	w23, #0
0x10068867c:  ; loc_10068867c
0x10068867c:  e0 03 01 91   add	x0, sp, #0x40
0x100688680:  18 1e 06 94   bl	j__uuid_is_null
0x100688684:  60 00 00 35   cbnz	w0, loc_100688690 ; ⤵ 0xc
0x100688688:  ff 02 1b 6b   cmp	w23, w27
0x10068868c:  aa 00 00 54   b.ge	loc_1006886a0 ; ⤵ 0x14
0x100688690:  ; loc_100688690
0x100688690:  e0 03 01 91   add	x0, sp, #0x40
0x100688694:  81 83 00 91   add	x1, x28, #0x20
0x100688698:  0a 1e 06 94   bl	j__uuid_copy
0x10068869c:  fb 03 17 aa   mov	x27, x23
0x1006886a0:  ; loc_1006886a0
0x1006886a0:  89 07 40 f9   ldr	x9, [x28, #0x8]
0x1006886a4:  a9 00 00 b4   cbz	x9, loc_1006886b8 ; ⤵ 0x14
0x1006886a8:  ; loc_1006886a8
0x1006886a8:  e8 03 09 aa   mov	x8, x9
0x1006886ac:  29 01 40 f9   ldr	x9, [x9]
0x1006886b0:  c9 ff ff b5   cbnz	x9, loc_1006886a8 ; ⤴ -0x8
0x1006886b4:  06 00 00 14   b	loc_1006886cc ; ⤵ 0x18
0x1006886b8:  ; loc_1006886b8
0x1006886b8:  88 0b 40 f9   ldr	x8, [x28, #0x10]
0x1006886bc:  09 01 40 f9   ldr	x9, [x8]
0x1006886c0:  9f 03 09 eb   cmp	x28, x9
0x1006886c4:  fc 03 08 aa   mov	x28, x8
0x1006886c8:  81 ff ff 54   b.ne	loc_1006886b8 ; ⤴ -0x10
0x1006886cc:  ; loc_1006886cc
0x1006886cc:  fc 03 08 aa   mov	x28, x8
0x1006886d0:  1f 01 16 eb   cmp	x8, x22
0x1006886d4:  61 f1 ff 54   b.ne	loc_100688500 ; ⤴ -0x1d4
0x1006886d8:  18 00 00 14   b	loc_100688738 ; ⤵ 0x60
0x1006886dc:  ; loc_1006886dc
0x1006886dc:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x1006886e0:  e0 63 00 bd   str	s0, [sp, #0x60]
0x1006886e4:  f3 43 06 f8   stur	x19, [sp, #0x64]
0x1006886e8:  e4 83 01 91   add	x4, sp, #0x60
0x1006886ec:  c0 cb ff 90   adrp	x0, 0x100000000
0x1006886f0:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1006886f4:  e1 03 17 aa   mov	x1, x23
0x1006886f8:  02 02 80 52   mov	w2, #0x10
0x1006886fc:  03 1a 00 d0   adrp	x3, 0x1009ca000
0x100688700:  63 c8 2e 91   add	x3, x3, #0xbb2 ; "Cannot update last connected time for device %{public}@ as no transport was found"
0x100688704:  85 01 80 52   mov	w5, #0xc
0x100688708:  0a 17 06 94   bl	j___os_log_error_impl
0x10068870c:  db ff ff 17   b	loc_100688678 ; ⤴ -0x94
0x100688710:  ; loc_100688710
0x100688710:  15 cf 05 94   bl	0x1007fc364
0x100688714:  7e ff ff 17   b	loc_10068850c ; ⤴ -0x208
0x100688718:  ; loc_100688718
0x100688718:  13 cf 05 94   bl	0x1007fc364
0x10068871c:  8c ff ff 17   b	loc_10068854c ; ⤴ -0x1d0
0x100688720:  ; loc_100688720
0x100688720:  11 cf 05 94   bl	0x1007fc364
0x100688724:  9c ff ff 17   b	loc_100688594 ; ⤴ -0x190
0x100688728:  ; loc_100688728
0x100688728:  59 cf 05 94   bl	0x1007fc48c
0x10068872c:  ac ff ff 17   b	loc_1006885dc ; ⤴ -0x150
0x100688730:  ; loc_100688730
0x100688730:  57 cf 05 94   bl	0x1007fc48c
0x100688734:  bc ff ff 17   b	loc_100688624 ; ⤴ -0x110
0x100688738:  ; loc_100688738
0x100688738:  88 e2 41 79   ldrh	w8, [x20, #0xf0]
0x10068873c:  1f 21 35 6b   cmp	w8, w21, uxth
0x100688740:  82 e5 ff 54   b.hs	loc_1006883f0 ; ⤴ -0x350
0x100688744:  e0 03 01 91   add	x0, sp, #0x40
0x100688748:  e6 1d 06 94   bl	j__uuid_is_null
0x10068874c:  20 e5 ff 35   cbnz	w0, loc_1006883f0 ; ⤴ -0x35c
0x100688750:  e0 03 01 91   add	x0, sp, #0x40
0x100688754:  d1 b4 f0 97   bl	0x1002b5a98
0x100688758:  fd 03 1d aa   mov	fp, fp
0x10068875c:  11 1b 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100688760:  f7 03 00 aa   mov	x23, x0
0x100688764:  e0 03 14 aa   mov	x0, x20
0x100688768:  e1 03 17 aa   mov	x1, x23
0x10068876c:  34 f4 ff 97   bl	0x10068583c
0x100688770:  e0 03 17 aa   mov	x0, x23
0x100688774:  ff 1a 06 94   bl	j__objc_release
0x100688778:  5f ff ff 17   b	loc_1006884f4 ; ⤴ -0x284
0x10068877c:  ; loc_10068877c
0x10068877c:  14 cf 05 94   bl	0x1007fc3cc
0x100688780:  3a fe ff 17   b	loc_100688068 ; ⤴ -0x718
0x100688784:  ; loc_100688784
0x100688784:  42 cf 05 94   bl	0x1007fc48c
0x100688788:  11 ff ff 17   b	loc_1006883cc ; ⤴ -0x3bc
0x10068878c:  ; loc_10068878c
0x10068878c:  cf cf 05 94   bl	0x1007fc6c8
0x100688790:  cd fe ff 17   b	loc_1006882c4 ; ⤴ -0x4cc
0x100688794:  ; loc_100688794
0x100688794:  ff f2 e5 97   bl	0x100005390
0x100688798:  ; loc_100688798
0x100688798:  be 16 06 94   bl	j____stack_chk_fail
0x10068879c:  27 00 00 14   b	loc_100688838 ; ⤵ 0x9c
0x1006887a0:  f4 03 00 aa   mov	x20, x0
0x1006887a4:  e0 27 40 f9   ldr	x0, [sp, #0x48]
0x1006887a8:  f2 1a 06 94   bl	j__objc_release
0x1006887ac:  24 00 00 14   b	loc_10068883c ; ⤵ 0x90
0x1006887b0:  22 00 00 14   b	loc_100688838 ; ⤵ 0x88
0x1006887b4:  21 00 00 14   b	loc_100688838 ; ⤵ 0x84
0x1006887b8:  f4 03 00 aa   mov	x20, x0
0x1006887bc:  e0 03 18 aa   mov	x0, x24
0x1006887c0:  ec 1a 06 94   bl	j__objc_release
0x1006887c4:  1e 00 00 14   b	loc_10068883c ; ⤵ 0x78
0x1006887c8:  f4 03 00 aa   mov	x20, x0
0x1006887cc:  e0 03 18 aa   mov	x0, x24
0x1006887d0:  e8 1a 06 94   bl	j__objc_release
0x1006887d4:  1a 00 00 14   b	loc_10068883c ; ⤵ 0x68
0x1006887d8:  18 00 00 14   b	loc_100688838 ; ⤵ 0x60
0x1006887dc:  17 00 00 14   b	loc_100688838 ; ⤵ 0x5c
0x1006887e0:  06 00 00 14   b	loc_1006887f8 ; ⤵ 0x18
0x1006887e4:  f4 03 00 aa   mov	x20, x0
0x1006887e8:  e0 03 17 aa   mov	x0, x23
0x1006887ec:  e1 1a 06 94   bl	j__objc_release
0x1006887f0:  13 00 00 14   b	loc_10068883c ; ⤵ 0x4c
0x1006887f4:  04 00 00 14   b	loc_100688804 ; ⤵ 0x10
0x1006887f8:  ; loc_1006887f8
0x1006887f8:  f4 03 00 aa   mov	x20, x0
0x1006887fc:  18 00 00 14   b	loc_10068885c ; ⤵ 0x60
0x100688800:  0e 00 00 14   b	loc_100688838 ; ⤵ 0x38
0x100688804:  ; loc_100688804
0x100688804:  f4 03 00 aa   mov	x20, x0
0x100688808:  18 00 00 14   b	loc_100688868 ; ⤵ 0x60
0x10068880c:  0b 00 00 14   b	loc_100688838 ; ⤵ 0x2c
0x100688810:  0a 00 00 14   b	loc_100688838 ; ⤵ 0x28
0x100688814:  f4 03 00 aa   mov	x20, x0
0x100688818:  e0 03 17 aa   mov	x0, x23
0x10068881c:  d5 1a 06 94   bl	j__objc_release
0x100688820:  07 00 00 14   b	loc_10068883c ; ⤵ 0x1c
0x100688824:  05 00 00 14   b	loc_100688838 ; ⤵ 0x14
0x100688828:  f4 03 00 aa   mov	x20, x0
0x10068882c:  e0 03 17 aa   mov	x0, x23
0x100688830:  d0 1a 06 94   bl	j__objc_release
0x100688834:  02 00 00 14   b	loc_10068883c ; ⤵ 0x8
0x100688838:  ; loc_100688838
0x100688838:  f4 03 00 aa   mov	x20, x0
0x10068883c:  ; loc_10068883c
0x10068883c:  e0 43 40 f9   ldr	x0, [sp, #0x80]
0x100688840:  60 00 00 b4   cbz	x0, loc_10068884c ; ⤵ 0xc
0x100688844:  e0 47 00 f9   str	x0, [sp, #0x88]
0x100688848:  42 16 06 94   bl	j___ZdlPv
0x10068884c:  ; loc_10068884c
0x10068884c:  a0 03 58 f8   ldur	x0, [fp, #-0x80]
0x100688850:  60 00 00 b4   cbz	x0, loc_10068885c ; ⤵ 0xc
0x100688854:  a0 83 18 f8   stur	x0, [fp, #-0x78]
0x100688858:  3e 16 06 94   bl	j___ZdlPv
0x10068885c:  ; loc_10068885c
0x10068885c:  e0 1f 40 f9   ldr	x0, [sp, #0x38]
0x100688860:  40 00 00 b4   cbz	x0, loc_100688868 ; ⤵ 0x8
0x100688864:  1c d0 e6 97   bl	0x10003c8d4
0x100688868:  ; loc_100688868
0x100688868:  e0 03 13 aa   mov	x0, x19
0x10068886c:  c1 1a 06 94   bl	j__objc_release
0x100688870:  02 00 00 14   b	loc_100688878 ; ⤵ 0x8
0x100688874:  f4 03 00 aa   mov	x20, x0
0x100688878:  ; loc_100688878
0x100688878:  e0 03 14 aa   mov	x0, x20
0x10068887c:  19 15 06 94   bl	j___Unwind_Resume

sub_100688880:
0x100688880:  7f 23 03 d5   pacibsp

