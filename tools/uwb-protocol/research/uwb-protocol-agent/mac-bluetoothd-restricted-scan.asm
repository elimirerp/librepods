0x1005f4170:  f6 03 00 aa   mov	x22, x0
0x1005f4174:  15 00 80 d2   mov	x21, #0
0x1005f4178:  11 00 00 14   b	loc_1005f41bc ; ⤵ 0x44
0x1005f417c:  0f 00 00 14   b	loc_1005f41b8 ; ⤵ 0x3c
0x1005f4180:  f6 03 00 aa   mov	x22, x0
0x1005f4184:  e0 03 19 aa   mov	x0, x25
0x1005f4188:  7a 6c 08 94   bl	j__objc_release
0x1005f418c:  0c 00 00 14   b	loc_1005f41bc ; ⤵ 0x30
0x1005f4190:  f6 03 00 aa   mov	x22, x0
0x1005f4194:  e0 03 19 aa   mov	x0, x25
0x1005f4198:  76 6c 08 94   bl	j__objc_release
0x1005f419c:  08 00 00 14   b	loc_1005f41bc ; ⤵ 0x20
0x1005f41a0:  f6 03 00 aa   mov	x22, x0
0x1005f41a4:  e0 03 15 aa   mov	x0, x21
0x1005f41a8:  72 6c 08 94   bl	j__objc_release
0x1005f41ac:  08 00 00 14   b	loc_1005f41cc ; ⤵ 0x20
0x1005f41b0:  f6 03 00 aa   mov	x22, x0
0x1005f41b4:  06 00 00 14   b	loc_1005f41cc ; ⤵ 0x18
0x1005f41b8:  ; loc_1005f41b8
0x1005f41b8:  f6 03 00 aa   mov	x22, x0
0x1005f41bc:  ; loc_1005f41bc
0x1005f41bc:  e0 03 15 aa   mov	x0, x21
0x1005f41c0:  6c 6c 08 94   bl	j__objc_release
0x1005f41c4:  e0 03 14 aa   mov	x0, x20
0x1005f41c8:  6a 6c 08 94   bl	j__objc_release
0x1005f41cc:  ; loc_1005f41cc
0x1005f41cc:  e0 03 13 aa   mov	x0, x19
0x1005f41d0:  68 6c 08 94   bl	j__objc_release
0x1005f41d4:  a0 03 56 f8   ldur	x0, [fp, #-0xa0]
0x1005f41d8:  a0 00 00 b4   cbz	x0, loc_1005f41ec ; ⤵ 0x14
0x1005f41dc:  a0 83 16 f8   stur	x0, [fp, #-0x98]
0x1005f41e0:  dc 67 08 94   bl	j___ZdlPv
0x1005f41e4:  02 00 00 14   b	loc_1005f41ec ; ⤵ 0x8
0x1005f41e8:  f6 03 00 aa   mov	x22, x0
0x1005f41ec:  ; loc_1005f41ec
0x1005f41ec:  e0 03 16 aa   mov	x0, x22
0x1005f41f0:  bc 66 08 94   bl	j___Unwind_Resume

sub_1005f41f4:
0x1005f41f4:  7f 23 03 d5   pacibsp
0x1005f41f8:  ff c3 02 d1   sub	sp, sp, #0xb0
0x1005f41fc:  fc 6f 05 a9   stp	x28, x27, [sp, #0x50]
0x1005f4200:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x1005f4204:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x1005f4208:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x1005f420c:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x1005f4210:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x1005f4214:  fd 83 02 91   add	fp, sp, #0xa0
0x1005f4218:  e8 21 00 d0   adrp	x8, 0x100a32000
0x1005f421c:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x1005f4220:  08 01 40 f9   ldr	x8, [x8]
0x1005f4224:  e8 27 00 f9   str	x8, [sp, #0x48]
0x1005f4228:  08 50 40 b9   ldr	w8, [x0, #0x50]
0x1005f422c:  1f 05 00 71   cmp	w8, #0x1
0x1005f4230:  2c 0f 00 54   b.gt	loc_1005f4414 ; ⤵ 0x1e4
0x1005f4234:  f4 03 01 aa   mov	x20, x1
0x1005f4238:  f3 03 00 aa   mov	x19, x0
0x1005f423c:  35 60 40 a9   ldp	x21, x24, [x1]
0x1005f4240:  bf 02 18 eb   cmp	x21, x24
0x1005f4244:  00 02 00 54   b.eq	loc_1005f4284 ; ⤵ 0x40
0x1005f4248:  16 15 00 90   adrp	x22, 0x100894000
0x1005f424c:  d6 32 2f 91   add	x22, x22, #0xbcc
0x1005f4250:  ; loc_1005f4250
0x1005f4250:  c0 02 c0 3d   ldr	q0, [x22]
0x1005f4254:  e0 07 80 3d   str	q0, [sp, #0x10]
0x1005f4258:  c8 12 40 b9   ldr	w8, [x22, #0x10]
0x1005f425c:  e8 23 00 b9   str	w8, [sp, #0x20]
0x1005f4260:  e1 43 00 91   add	x1, sp, #0x10
0x1005f4264:  e0 03 15 aa   mov	x0, x21
0x1005f4268:  9e 74 f0 97   bl	0x1002114e0
0x1005f426c:  a0 00 00 37   tbnz	w0, #0, loc_1005f4280 ; ⤵ 0x14
0x1005f4270:  b5 52 00 91   add	x21, x21, #0x14
0x1005f4274:  bf 02 18 eb   cmp	x21, x24
0x1005f4278:  c1 fe ff 54   b.ne	loc_1005f4250 ; ⤴ -0x28
0x1005f427c:  f5 03 18 aa   mov	x21, x24
0x1005f4280:  ; loc_1005f4280
0x1005f4280:  98 06 40 f9   ldr	x24, [x20, #0x8]
0x1005f4284:  ; loc_1005f4284
0x1005f4284:  bf 02 18 eb   cmp	x21, x24
0x1005f4288:  80 02 00 54   b.eq	loc_1005f42d8 ; ⤵ 0x50
0x1005f428c:  e8 26 00 b0   adrp	x8, 0x100ad1000
0x1005f4290:  08 01 32 91   add	x8, x8, #0xc80
0x1005f4294:  13 01 40 f9   ldr	x19, [x8]
0x1005f4298:  e0 03 13 aa   mov	x0, x19
0x1005f429c:  01 00 80 52   mov	w1, #0
0x1005f42a0:  e4 6c 08 94   bl	j__os_log_type_enabled
0x1005f42a4:  60 01 00 34   cbz	w0, loc_1005f42d0 ; ⤵ 0x2c
0x1005f42a8:  ff 23 00 79   strh	wzr, [sp, #0x10]
0x1005f42ac:  60 d0 ff 90   adrp	x0, 0x100000000
0x1005f42b0:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005f42b4:  23 1e 00 90   adrp	x3, 0x1009b8000
0x1005f42b8:  63 08 09 91   add	x3, x3, #0x242 ; "Contact tracing UUID scanning is not allowed."
0x1005f42bc:  e4 43 00 91   add	x4, sp, #0x10
0x1005f42c0:  e1 03 13 aa   mov	x1, x19
0x1005f42c4:  02 00 80 52   mov	w2, #0
0x1005f42c8:  45 00 80 52   mov	w5, #0x2
0x1005f42cc:  21 68 08 94   bl	j___os_log_impl
0x1005f42d0:  ; loc_1005f42d0
0x1005f42d0:  60 00 80 52   mov	w0, #0x3
0x1005f42d4:  51 00 00 14   b	loc_1005f4418 ; ⤵ 0x144
0x1005f42d8:  ; loc_1005f42d8
0x1005f42d8:  94 02 40 f9   ldr	x20, [x20]
0x1005f42dc:  9f 02 18 eb   cmp	x20, x24
0x1005f42e0:  a0 09 00 54   b.eq	loc_1005f4414 ; ⤵ 0x134
0x1005f42e4:  39 25 00 b0   adrp	x25, 0x100a99000
0x1005f42e8:  3a 25 00 b0   adrp	x26, 0x100a99000
0x1005f42ec:  fb 26 00 b0   adrp	x27, 0x100ad1000
0x1005f42f0:  7b 03 32 91   add	x27, x27, #0xc80
0x1005f42f4:  e8 14 00 d0   adrp	x8, 0x100892000
0x1005f42f8:  00 59 43 fd   ldr	d0, [x8, #0x6b0]
0x1005f42fc:  e0 03 80 3d   str	q0, [sp]
0x1005f4300:  1c 15 00 90   adrp	x28, 0x100894000
0x1005f4304:  9c 93 2e 91   add	x28, x28, #0xba4
0x1005f4308:  15 15 00 90   adrp	x21, 0x100894000
0x1005f430c:  b5 92 34 91   add	x21, x21, #0xd24
0x1005f4310:  ; loc_1005f4310
0x1005f4310:  28 df 40 f9   ldr	x8, [x25, #0x1b8]
0x1005f4314:  1f 05 00 b1   cmn	x8, #0x1
0x1005f4318:  a1 07 00 54   b.ne	loc_1005f440c ; ⤵ 0xf4
0x1005f431c:  ; loc_1005f431c
0x1005f431c:  40 db 40 f9   ldr	x0, [x26, #0x1b0]
0x1005f4320:  62 e2 42 39   ldrb	w2, [x19, #0xb8]
0x1005f4324:  63 ca 40 b9   ldr	w3, [x19, #0xc8]
0x1005f4328:  e1 03 14 aa   mov	x1, x20
0x1005f432c:  04 00 80 d2   mov	x4, #0
0x1005f4330:  dd 56 02 94   bl	0x100689ea4
0x1005f4334:  40 06 00 37   tbnz	w0, #0, loc_1005f43fc ; ⤵ 0xc8
0x1005f4338:  77 03 40 f9   ldr	x23, [x27]
0x1005f433c:  e0 03 17 aa   mov	x0, x23
0x1005f4340:  01 00 80 52   mov	w1, #0
0x1005f4344:  bb 6c 08 94   bl	j__os_log_type_enabled
0x1005f4348:  a0 03 00 34   cbz	w0, loc_1005f43bc ; ⤵ 0x74
0x1005f434c:  76 32 40 f9   ldr	x22, [x19, #0x60]
0x1005f4350:  e8 43 00 91   add	x8, sp, #0x10
0x1005f4354:  e0 03 14 aa   mov	x0, x20
0x1005f4358:  c2 5d 06 94   bl	0x10078ba60
0x1005f435c:  e8 9f c0 39   ldrsb	w8, [sp, #0x27]
0x1005f4360:  e9 0b 40 f9   ldr	x9, [sp, #0x10]
0x1005f4364:  1f 01 00 71   cmp	w8, #0
0x1005f4368:  e8 43 00 91   add	x8, sp, #0x10
0x1005f436c:  28 b1 88 9a   csel	x8, x9, x8, lt
0x1005f4370:  e0 03 c0 3d   ldr	q0, [sp]
0x1005f4374:  e0 33 00 bd   str	s0, [sp, #0x30]
0x1005f4378:  f6 43 03 f8   stur	x22, [sp, #0x34]
0x1005f437c:  09 04 81 52   mov	w9, #0x820
0x1005f4380:  e9 7b 00 79   strh	w9, [sp, #0x3c]
0x1005f4384:  e8 e3 03 f8   stur	x8, [sp, #0x3e]
0x1005f4388:  e4 c3 00 91   add	x4, sp, #0x30
0x1005f438c:  60 d0 ff 90   adrp	x0, 0x100000000
0x1005f4390:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005f4394:  e1 03 17 aa   mov	x1, x23
0x1005f4398:  02 00 80 52   mov	w2, #0
0x1005f439c:  23 1e 00 90   adrp	x3, 0x1009b8000
0x1005f43a0:  63 c0 09 91   add	x3, x3, #0x270 ; "%@ wants to scan for restricted service (%s)"
0x1005f43a4:  c5 02 80 52   mov	w5, #0x16
0x1005f43a8:  ea 67 08 94   bl	j___os_log_impl
0x1005f43ac:  e8 9f c0 39   ldrsb	w8, [sp, #0x27]
0x1005f43b0:  68 00 f8 36   tbz	w8, #0x1f, loc_1005f43bc ; ⤵ 0xc
0x1005f43b4:  e0 0b 40 f9   ldr	x0, [sp, #0x10]
0x1005f43b8:  66 67 08 94   bl	j___ZdlPv
0x1005f43bc:  ; loc_1005f43bc
0x1005f43bc:  80 03 c0 3d   ldr	q0, [x28]
0x1005f43c0:  e0 07 80 3d   str	q0, [sp, #0x10]
0x1005f43c4:  88 13 40 b9   ldr	w8, [x28, #0x10]
0x1005f43c8:  e8 23 00 b9   str	w8, [sp, #0x20]
0x1005f43cc:  e1 43 00 91   add	x1, sp, #0x10
0x1005f43d0:  e0 03 14 aa   mov	x0, x20
0x1005f43d4:  43 74 f0 97   bl	0x1002114e0
0x1005f43d8:  c0 f7 07 37   tbnz	w0, #0, loc_1005f42d0 ; ⤴ -0x108
0x1005f43dc:  a0 02 c0 3d   ldr	q0, [x21]
0x1005f43e0:  e0 07 80 3d   str	q0, [sp, #0x10]
0x1005f43e4:  a8 12 40 b9   ldr	w8, [x21, #0x10]
0x1005f43e8:  e8 23 00 b9   str	w8, [sp, #0x20]
0x1005f43ec:  e1 43 00 91   add	x1, sp, #0x10
0x1005f43f0:  e0 03 14 aa   mov	x0, x20
0x1005f43f4:  3b 74 f0 97   bl	0x1002114e0
0x1005f43f8:  c0 f6 07 37   tbnz	w0, #0, loc_1005f42d0 ; ⤴ -0x128
0x1005f43fc:  ; loc_1005f43fc
0x1005f43fc:  94 52 00 91   add	x20, x20, #0x14
0x1005f4400:  9f 02 18 eb   cmp	x20, x24
0x1005f4404:  61 f8 ff 54   b.ne	loc_1005f4310 ; ⤴ -0xf4
0x1005f4408:  03 00 00 14   b	loc_1005f4414 ; ⤵ 0xc
0x1005f440c:  ; loc_1005f440c
0x1005f440c:  96 f1 07 94   bl	0x1007f0a64
0x1005f4410:  c3 ff ff 17   b	loc_1005f431c ; ⤴ -0xf4
0x1005f4414:  ; loc_1005f4414
0x1005f4414:  00 00 80 52   mov	w0, #0
0x1005f4418:  ; loc_1005f4418
0x1005f4418:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x1005f441c:  e9 21 00 d0   adrp	x9, 0x100a32000
0x1005f4420:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x1005f4424:  29 01 40 f9   ldr	x9, [x9]
0x1005f4428:  3f 01 08 eb   cmp	x9, x8
0x1005f442c:  21 01 00 54   b.ne	loc_1005f4450 ; ⤵ 0x24
0x1005f4430:  fd 7b 4a a9   ldp	fp, lr, [sp, #0xa0]
0x1005f4434:  f4 4f 49 a9   ldp	x20, x19, [sp, #0x90]
0x1005f4438:  f6 57 48 a9   ldp	x22, x21, [sp, #0x80]
0x1005f443c:  f8 5f 47 a9   ldp	x24, x23, [sp, #0x70]
0x1005f4440:  fa 67 46 a9   ldp	x26, x25, [sp, #0x60]
0x1005f4444:  fc 6f 45 a9   ldp	x28, x27, [sp, #0x50]
0x1005f4448:  ff c3 02 91   add	sp, sp, #0xb0
0x1005f444c:  ff 0f 5f d6   retab
0x1005f4450:  ; loc_1005f4450
0x1005f4450:  90 67 08 94   bl	j____stack_chk_fail

sub_1005f4454:
0x1005f4454:  7f 23 03 d5   pacibsp
0x1005f4458:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1005f445c:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1005f4460:  fd 43 00 91   add	fp, sp, #0x10
0x1005f4464:  f3 03 00 aa   mov	x19, x0
0x1005f4468:  14 14 40 f9   ldr	x20, [x0, #0x28]
0x1005f446c:  28 25 00 b0   adrp	x8, 0x100a99000
0x1005f4470:  08 69 45 f9   ldr	x8, [x8, #0xad0] ; data_100a99ad0 (__DATA.__data)
0x1005f4474:  1f 05 00 b1   cmn	x8, #0x1
0x1005f4478:  81 01 00 54   b.ne	loc_1005f44a8 ; ⤵ 0x30
0x1005f447c:  ; loc_1005f447c
0x1005f447c:  28 25 00 b0   adrp	x8, 0x100a99000
0x1005f4480:  00 65 45 f9   ldr	x0, [x8, #0xac8] ; data_100a99ac8 (__DATA.__data)
0x1005f4484:  81 42 40 f9   ldr	x1, [x20, #0x80]
0x1005f4488:  62 1a 40 f9   ldr	x2, [x19, #0x30]
0x1005f448c:  ea 91 f4 97   bl	0x100318c34
0x1005f4490:  68 12 40 f9   ldr	x8, [x19, #0x20]
0x1005f4494:  08 05 40 f9   ldr	x8, [x8, #0x8]
0x1005f4498:  00 19 00 b9   str	w0, [x8, #0x18]
0x1005f449c:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1005f44a0:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1005f44a4:  ff 0f 5f d6   retab
0x1005f44a8:  ; loc_1005f44a8
0x1005f44a8:  c2 f8 07 94   bl	0x1007f27b0
0x1005f44ac:  f4 ff ff 17   b	loc_1005f447c ; ⤴ -0x30

sub_1005f44b0:
0x1005f44b0:  7f 23 03 d5   pacibsp
0x1005f44b4:  ff 43 02 d1   sub	sp, sp, #0x90
0x1005f44b8:  f6 57 06 a9   stp	x22, x21, [sp, #0x60]
0x1005f44bc:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x1005f44c0:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x1005f44c4:  fd 03 02 91   add	fp, sp, #0x80
0x1005f44c8:  f3 03 00 aa   mov	x19, x0
0x1005f44cc:  15 14 40 f9   ldr	x21, [x0, #0x28]
0x1005f44d0:  c0 00 80 52   mov	w0, #0x6
0x1005f44d4:  7f 68 08 94   bl	j__clock_gettime_nsec_np
0x1005f44d8:  a0 83 1d f8   stur	x0, [fp, #-0x28]
0x1005f44dc:  e8 23 00 91   add	x8, sp, #0x8
0x1005f44e0:  f0 21 00 d0   adrp	x16, 0x100a32000
0x1005f44e4:  10 56 43 f9   ldr	x16, [x16, #0x6a8] ; __got.__NSConcreteStackBlock
0x1005f44e8:  f1 03 08 aa   mov	x17, x8
0x1005f44ec:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x1005f44f0:  30 0a c1 da   pacda	x16, x17
0x1005f44f4:  f0 07 00 f9   str	x16, [sp, #0x8]
0x1005f44f8:  e9 14 00 b0   adrp	x9, 0x100891000
0x1005f44fc:  20 85 44 fd   ldr	d0, [x9, #0x908]
0x1005f4500:  e0 0b 00 fd   str	d0, [sp, #0x10]
0x1005f4504:  08 41 00 91   add	x8, x8, #0x10

