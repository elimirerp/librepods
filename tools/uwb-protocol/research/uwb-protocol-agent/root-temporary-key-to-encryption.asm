0x100780180:  30 0a c1 da   pacda	x16, x17
0x100780184:  f0 17 00 f9   str	x16, [sp, #0x28]
0x100780188:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x10078018c:  40 00 00 b4   cbz	x0, loc_100780194 ; ⤵ 0x8
0x100780190:  bf df ef 97   bl	0x10037808c
0x100780194:  ; loc_100780194
0x100780194:  f6 1f 00 f9   str	x22, [sp, #0x38]
0x100780198:  e0 23 40 f9   ldr	x0, [sp, #0x40]
0x10078019c:  60 e9 ff b4   cbz	x0, loc_10077fec8 ; ⤴ -0x2d4
0x1007801a0:  bb df ef 97   bl	0x10037808c
0x1007801a4:  49 ff ff 17   b	loc_10077fec8 ; ⤴ -0x2dc
0x1007801a8:  e0 23 00 91   add	x0, sp, #0x8
0x1007801ac:  ba 85 fc 97   bl	0x1006a1894
0x1007801b0:  17 00 40 39   ldrb	w23, [x0]
0x1007801b4:  e0 23 40 f9   ldr	x0, [sp, #0x40]
0x1007801b8:  e8 63 01 91   add	x8, sp, #0x58
0x1007801bc:  c1 00 80 52   mov	w1, #0x6
0x1007801c0:  3d b1 f1 97   bl	0x1003ec6b4
0x1007801c4:  f8 63 01 91   add	x24, sp, #0x58
0x1007801c8:  e0 63 00 91   add	x0, sp, #0x18
0x1007801cc:  e1 63 01 91   add	x1, sp, #0x58
0x1007801d0:  b7 db e2 97   bl	0x1000370ac
0x1007801d4:  b0 15 00 90   adrp	x16, 0x100a34000
0x1007801d8:  10 62 06 91   add	x16, x16, #0x198 ; data_100a34198 (__DATA_CONST.__const)
0x1007801dc:  10 42 00 91   add	x16, x16, #0x10
0x1007801e0:  f1 03 18 aa   mov	x17, x24
0x1007801e4:  b1 3d f8 f2   movk	x17, #0xc1ed, lsl #0x30
0x1007801e8:  30 0a c1 da   pacda	x16, x17
0x1007801ec:  f0 2f 00 f9   str	x16, [sp, #0x58]
0x1007801f0:  e0 33 40 f9   ldr	x0, [sp, #0x60]
0x1007801f4:  40 00 00 b4   cbz	x0, loc_1007801fc ; ⤵ 0x8
0x1007801f8:  a5 df ef 97   bl	0x10037808c
0x1007801fc:  ; loc_1007801fc
0x1007801fc:  e0 63 00 91   add	x0, sp, #0x18
0x100780200:  fa 52 fb 97   bl	0x100654de8
0x100780204:  40 f8 07 37   tbnz	w0, #0, loc_10078010c ; ⤴ -0xf8
0x100780208:  e0 63 00 91   add	x0, sp, #0x18
0x10078020c:  a2 85 fc 97   bl	0x1006a1894
0x100780210:  18 00 40 39   ldrb	w24, [x0]
0x100780214:  bf ff ff 17   b	loc_100780110 ; ⤴ -0x104
0x100780218:  b3 24 02 94   bl	0x1008094e4
0x10078021c:  1d ff ff 17   b	loc_10077fe90 ; ⤴ -0x38c
0x100780220:  b1 24 02 94   bl	0x1008094e4
0x100780224:  98 ff ff 17   b	loc_100780084 ; ⤴ -0x1a0
0x100780228:  1a 38 02 94   bl	j____stack_chk_fail
0x10078022c:  f3 03 00 aa   mov	x19, x0
0x100780230:  b0 15 00 90   adrp	x16, 0x100a34000
0x100780234:  10 62 06 91   add	x16, x16, #0x198 ; data_100a34198 (__DATA_CONST.__const)
0x100780238:  10 42 00 91   add	x16, x16, #0x10
0x10078023c:  f1 03 18 aa   mov	x17, x24
0x100780240:  b1 3d f8 f2   movk	x17, #0xc1ed, lsl #0x30
0x100780244:  30 0a c1 da   pacda	x16, x17
0x100780248:  f0 2f 00 f9   str	x16, [sp, #0x58]
0x10078024c:  e0 33 40 f9   ldr	x0, [sp, #0x60]
0x100780250:  80 02 00 b4   cbz	x0, loc_1007802a0 ; ⤵ 0x50
0x100780254:  8e df ef 97   bl	0x10037808c
0x100780258:  12 00 00 14   b	loc_1007802a0 ; ⤵ 0x48
0x10078025c:  10 00 00 14   b	loc_10078029c ; ⤵ 0x40
0x100780260:  0f 00 00 14   b	loc_10078029c ; ⤵ 0x3c
0x100780264:  0e 00 00 14   b	loc_10078029c ; ⤵ 0x38
0x100780268:  f3 03 00 aa   mov	x19, x0
0x10078026c:  e0 03 17 aa   mov	x0, x23
0x100780270:  40 3c 02 94   bl	j__objc_release
0x100780274:  3a 00 00 14   b	loc_10078035c ; ⤵ 0xe8
0x100780278:  38 00 00 14   b	loc_100780358 ; ⤵ 0xe0
0x10078027c:  37 00 00 14   b	loc_100780358 ; ⤵ 0xdc
0x100780280:  f3 03 00 aa   mov	x19, x0
0x100780284:  12 00 00 14   b	loc_1007802cc ; ⤵ 0x48
0x100780288:  f3 03 00 aa   mov	x19, x0
0x10078028c:  1b 00 00 14   b	loc_1007802f8 ; ⤵ 0x6c
0x100780290:  f3 03 00 aa   mov	x19, x0
0x100780294:  24 00 00 14   b	loc_100780324 ; ⤵ 0x90
0x100780298:  30 00 00 14   b	loc_100780358 ; ⤵ 0xc0
0x10078029c:  ; loc_10078029c
0x10078029c:  f3 03 00 aa   mov	x19, x0
0x1007802a0:  ; loc_1007802a0
0x1007802a0:  e8 23 00 91   add	x8, sp, #0x8
0x1007802a4:  b0 15 00 90   adrp	x16, 0x100a34000
0x1007802a8:  10 62 06 91   add	x16, x16, #0x198 ; data_100a34198 (__DATA_CONST.__const)
0x1007802ac:  10 42 00 91   add	x16, x16, #0x10
0x1007802b0:  f1 03 08 aa   mov	x17, x8
0x1007802b4:  b1 3d f8 f2   movk	x17, #0xc1ed, lsl #0x30
0x1007802b8:  30 0a c1 da   pacda	x16, x17
0x1007802bc:  f0 07 00 f9   str	x16, [sp, #0x8]
0x1007802c0:  e0 0b 40 f9   ldr	x0, [sp, #0x10]
0x1007802c4:  40 00 00 b4   cbz	x0, loc_1007802cc ; ⤵ 0x8
0x1007802c8:  71 df ef 97   bl	0x10037808c
0x1007802cc:  ; loc_1007802cc
0x1007802cc:  e8 63 00 91   add	x8, sp, #0x18
0x1007802d0:  b0 15 00 90   adrp	x16, 0x100a34000
0x1007802d4:  10 62 06 91   add	x16, x16, #0x198 ; data_100a34198 (__DATA_CONST.__const)
0x1007802d8:  10 42 00 91   add	x16, x16, #0x10
0x1007802dc:  f1 03 08 aa   mov	x17, x8
0x1007802e0:  b1 3d f8 f2   movk	x17, #0xc1ed, lsl #0x30
0x1007802e4:  30 0a c1 da   pacda	x16, x17
0x1007802e8:  f0 0f 00 f9   str	x16, [sp, #0x18]
0x1007802ec:  e0 13 40 f9   ldr	x0, [sp, #0x20]
0x1007802f0:  40 00 00 b4   cbz	x0, loc_1007802f8 ; ⤵ 0x8
0x1007802f4:  66 df ef 97   bl	0x10037808c
0x1007802f8:  ; loc_1007802f8
0x1007802f8:  e8 a3 00 91   add	x8, sp, #0x28
0x1007802fc:  b0 15 00 90   adrp	x16, 0x100a34000
0x100780300:  10 62 06 91   add	x16, x16, #0x198 ; data_100a34198 (__DATA_CONST.__const)
0x100780304:  10 42 00 91   add	x16, x16, #0x10
0x100780308:  f1 03 08 aa   mov	x17, x8
0x10078030c:  b1 3d f8 f2   movk	x17, #0xc1ed, lsl #0x30
0x100780310:  30 0a c1 da   pacda	x16, x17
0x100780314:  f0 17 00 f9   str	x16, [sp, #0x28]
0x100780318:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x10078031c:  40 00 00 b4   cbz	x0, loc_100780324 ; ⤵ 0x8
0x100780320:  5b df ef 97   bl	0x10037808c
0x100780324:  ; loc_100780324
0x100780324:  f6 1f 00 f9   str	x22, [sp, #0x38]
0x100780328:  e0 23 40 f9   ldr	x0, [sp, #0x40]
0x10078032c:  80 01 00 b4   cbz	x0, loc_10078035c ; ⤵ 0x30
0x100780330:  57 df ef 97   bl	0x10037808c
0x100780334:  0a 00 00 14   b	loc_10078035c ; ⤵ 0x28
0x100780338:  f3 03 00 aa   mov	x19, x0
0x10078033c:  e0 a3 00 91   add	x0, sp, #0x28
0x100780340:  d2 d9 ec 97   bl	0x1002b6a88
0x100780344:  06 00 00 14   b	loc_10078035c ; ⤵ 0x18
0x100780348:  04 00 00 14   b	loc_100780358 ; ⤵ 0x10
0x10078034c:  03 00 00 14   b	loc_100780358 ; ⤵ 0xc
0x100780350:  f3 03 00 aa   mov	x19, x0
0x100780354:  04 00 00 14   b	loc_100780364 ; ⤵ 0x10
0x100780358:  ; loc_100780358
0x100780358:  f3 03 00 aa   mov	x19, x0
0x10078035c:  ; loc_10078035c
0x10078035c:  e0 23 01 91   add	x0, sp, #0x48
0x100780360:  89 da ec 97   bl	0x1002b6d84
0x100780364:  ; loc_100780364
0x100780364:  e0 03 13 aa   mov	x0, x19
0x100780368:  5e 36 02 94   bl	j___Unwind_Resume

sub_10078036c:
0x10078036c:  7f 23 03 d5   pacibsp
0x100780370:  ff 03 03 d1   sub	sp, sp, #0xc0
0x100780374:  f8 5f 08 a9   stp	x24, x23, [sp, #0x80]
0x100780378:  f6 57 09 a9   stp	x22, x21, [sp, #0x90]
0x10078037c:  f4 4f 0a a9   stp	x20, x19, [sp, #0xa0]
0x100780380:  fd 7b 0b a9   stp	fp, lr, [sp, #0xb0]
0x100780384:  fd c3 02 91   add	fp, sp, #0xb0
0x100780388:  f3 03 01 aa   mov	x19, x1
0x10078038c:  f4 03 00 aa   mov	x20, x0
0x100780390:  88 15 00 d0   adrp	x8, 0x100a32000
0x100780394:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100780398:  08 01 40 f9   ldr	x8, [x8]
0x10078039c:  a8 83 1c f8   stur	x8, [fp, #-0x38]
0x1007803a0:  ff 73 00 b9   str	wzr, [sp, #0x70]
0x1007803a4:  00 e4 00 6f   movi	v0.2d, #0
0x1007803a8:  e0 83 02 ad   stp	q0, q0, [sp, #0x50]
0x1007803ac:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x1007803b0:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x1007803b4:  d6 18 00 b0   adrp	x22, 0x100a99000
0x1007803b8:  c8 46 40 f9   ldr	x8, [x22, #0x88] ; data_100a99088 (__DATA.__data)
0x1007803bc:  1f 05 00 b1   cmn	x8, #0x1
0x1007803c0:  61 08 00 54   b.ne	loc_1007804cc ; ⤵ 0x10c
0x1007803c4:  ff 7f 01 a9   stp	xzr, xzr, [sp, #0x10]
0x1007803c8:  d7 18 00 b0   adrp	x23, 0x100a99000
0x1007803cc:  e0 42 40 f9   ldr	x0, [x23, #0x80] ; data_100a99080 (__DATA.__data)
0x1007803d0:  e8 43 00 91   add	x8, sp, #0x10
0x1007803d4:  e1 03 13 aa   mov	x1, x19
0x1007803d8:  22 00 80 52   mov	w2, #0x1
0x1007803dc:  23 00 80 52   mov	w3, #0x1
0x1007803e0:  04 00 80 d2   mov	x4, #0
0x1007803e4:  05 00 80 d2   mov	x5, #0
0x1007803e8:  a2 39 fe 97   bl	0x10070ea70
0x1007803ec:  e0 43 00 91   add	x0, sp, #0x10
0x1007803f0:  bc 3e 02 94   bl	j__uuid_is_null
0x1007803f4:  60 03 00 35   cbnz	w0, loc_100780460 ; ⤵ 0x6c
0x1007803f8:  e0 43 00 91   add	x0, sp, #0x10
0x1007803fc:  a7 d5 ec 97   bl	0x1002b5a98
0x100780400:  fd 03 1d aa   mov	fp, fp
0x100780404:  e7 3b 02 94   bl	j__objc_retainAutoreleasedReturnValue
0x100780408:  f5 03 00 aa   mov	x21, x0
0x10078040c:  e2 83 00 91   add	x2, sp, #0x20
0x100780410:  e0 03 14 aa   mov	x0, x20
0x100780414:  e1 03 15 aa   mov	x1, x21
0x100780418:  21 fc ff 97   bl	0x10077f49c
0x10078041c:  e0 03 15 aa   mov	x0, x21
0x100780420:  d4 3b 02 94   bl	j__objc_release
0x100780424:  c8 46 40 f9   ldr	x8, [x22, #0x88]
0x100780428:  1f 05 00 b1   cmn	x8, #0x1
0x10078042c:  41 05 00 54   b.ne	loc_1007804d4 ; ⤵ 0xa8
0x100780430:  f5 42 40 f9   ldr	x21, [x23, #0x80]
0x100780434:  e0 43 00 91   add	x0, sp, #0x10
0x100780438:  98 d5 ec 97   bl	0x1002b5a98
0x10078043c:  fd 03 1d aa   mov	fp, fp
0x100780440:  d8 3b 02 94   bl	j__objc_retainAutoreleasedReturnValue
0x100780444:  f4 03 00 aa   mov	x20, x0
0x100780448:  e0 03 15 aa   mov	x0, x21
0x10078044c:  e1 03 14 aa   mov	x1, x20
0x100780450:  ae 7f fe 97   bl	0x100720308
0x100780454:  e0 cb 01 39   strb	w0, [sp, #0x72]
0x100780458:  e0 03 14 aa   mov	x0, x20
0x10078045c:  c5 3b 02 94   bl	j__objc_release
0x100780460:  ; loc_100780460
0x100780460:  e0 03 13 aa   mov	x0, x19
0x100780464:  33 3b ea 97   bl	0x10020f130
0x100780468:  e0 0b 00 b9   str	w0, [sp, #0x8]
0x10078046c:  08 fc 70 d3   lsr	x8, x0, #0x30
0x100780470:  e8 3b 00 39   strb	w8, [sp, #0xe]
0x100780474:  08 fc 60 d3   lsr	x8, x0, #0x20
0x100780478:  e8 1b 00 79   strh	w8, [sp, #0xc]
0x10078047c:  ff 1f 00 39   strb	wzr, [sp, #0x7]
0x100780480:  e0 1f 00 91   add	x0, sp, #0x7
0x100780484:  73 d9 ec 97   bl	0x1002b6a50
0x100780488:  e0 23 00 91   add	x0, sp, #0x8
0x10078048c:  e1 83 00 91   add	x1, sp, #0x20
0x100780490:  61 70 ea 97   bl	0x10021c614
0x100780494:  e0 1f 00 91   add	x0, sp, #0x7
0x100780498:  7c d9 ec 97   bl	0x1002b6a88
0x10078049c:  a8 83 5c f8   ldur	x8, [fp, #-0x38]
0x1007804a0:  89 15 00 d0   adrp	x9, 0x100a32000
0x1007804a4:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x1007804a8:  29 01 40 f9   ldr	x9, [x9]
0x1007804ac:  3f 01 08 eb   cmp	x9, x8
0x1007804b0:  61 01 00 54   b.ne	loc_1007804dc ; ⤵ 0x2c
0x1007804b4:  fd 7b 4b a9   ldp	fp, lr, [sp, #0xb0]
0x1007804b8:  f4 4f 4a a9   ldp	x20, x19, [sp, #0xa0]
0x1007804bc:  f6 57 49 a9   ldp	x22, x21, [sp, #0x90]
0x1007804c0:  f8 5f 48 a9   ldp	x24, x23, [sp, #0x80]
0x1007804c4:  ff 03 03 91   add	sp, sp, #0xc0

