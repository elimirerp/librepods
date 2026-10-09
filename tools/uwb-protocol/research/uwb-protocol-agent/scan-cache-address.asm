
-[CLDurianScanCache getAddressForUuid:]:
0x10149836c:  7f 23 03 d5   pacibsp
0x101498370:  ff 03 02 d1   sub	sp, sp, #0x80
0x101498374:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x101498378:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x10149837c:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x101498380:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x101498384:  fd c3 01 91   add	fp, sp, #0x70
0x101498388:  f6 03 02 aa   mov	x22, x2
0x10149838c:  f4 03 00 aa   mov	x20, x0
0x101498390:  c8 77 00 d0   adrp	x8, 0x102392000
0x101498394:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101498398:  08 01 40 f9   ldr	x8, [x8]
0x10149839c:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x1014983a0:  00 04 40 f9   ldr	x0, [x0, #0x8]
0x1014983a4:  b7 92 1a 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x1014983a8:  f7 03 00 aa   mov	x23, x0
0x1014983ac:  e0 00 00 b4   cbz	x0, loc_1014983c8 ; ⤵ 0x1c
0x1014983b0:  e2 7f 00 90   adrp	x2, 0x102494000
0x1014983b4:  42 40 03 91   add	x2, x2, #0xd0 ; "kCLScanResultAddressKey"
0x1014983b8:  e0 03 17 aa   mov	x0, x23
0x1014983bc:  b1 92 1a 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x1014983c0:  f3 03 00 aa   mov	x19, x0
0x1014983c4:  02 00 00 14   b	loc_1014983cc ; ⤵ 0x8
0x1014983c8:  ; loc_1014983c8
0x1014983c8:  13 00 80 d2   mov	x19, #0
0x1014983cc:  ; loc_1014983cc
0x1014983cc:  48 87 00 d0   adrp	x8, 0x102582000
0x1014983d0:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014983d4:  1f 05 00 b1   cmn	x8, #0x1
0x1014983d8:  61 07 00 54   b.ne	loc_1014984c4 ; ⤵ 0xec
0x1014983dc:  48 87 00 d0   adrp	x8, 0x102582000
0x1014983e0:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014983e4:  e0 03 15 aa   mov	x0, x21
0x1014983e8:  01 00 80 52   mov	w1, #0
0x1014983ec:  c1 f7 19 94   bl	j__os_log_type_enabled
0x1014983f0:  00 05 00 34   cbz	w0, loc_101498490 ; ⤵ 0xa0
0x1014983f4:  ff 02 00 f1   cmp	x23, #0
0x1014983f8:  f8 07 9f 1a   cset	w24, ne
0x1014983fc:  e0 03 16 aa   mov	x0, x22
0x101498400:  86 01 00 94   bl	0x101498a18
0x101498404:  f6 03 00 aa   mov	x22, x0
0x101498408:  e0 03 13 aa   mov	x0, x19
0x10149840c:  6d 02 b8 97   bl	0x100298dc0
0x101498410:  f7 03 00 aa   mov	x23, x0
0x101498414:  80 06 40 f9   ldr	x0, [x20, #0x8]
0x101498418:  b2 24 1a 94   bl	j__objc_msgSend(x0, "count")
0x10149841c:  c8 37 00 f0   adrp	x8, 0x101b93000
0x101498420:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x101498424:  e0 03 00 bd   str	s0, [sp]
0x101498428:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10149842c:  48 04 81 52   mov	w8, #0x822
0x101498430:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101498434:  a8 50 00 d0   adrp	x8, 0x101eae000
0x101498438:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10149843c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101498440:  28 08 81 52   mov	w8, #0x841
0x101498444:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101498448:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x10149844c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101498450:  f7 e3 01 f8   stur	x23, [sp, #0x1e]
0x101498454:  48 80 80 52   mov	w8, #0x402
0x101498458:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x10149845c:  f8 2b 00 b9   str	w24, [sp, #0x28]
0x101498460:  48 00 81 52   mov	w8, #0x802
0x101498464:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x101498468:  e0 e3 02 f8   stur	x0, [sp, #0x2e]
0x10149846c:  40 5b ff 90   adrp	x0, 0x100000000
0x101498470:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101498474:  83 6f 00 f0   adrp	x3, 0x10228b000
0x101498478:  63 f8 32 91   add	x3, x3, #0xcbe ; "{\"msg%{public}.0s\":\"#durian scancache addr\", \"item\":%{private, location:escape_only}@, \"addr\":%{private, location:escape_only}@, \"entry\":%{public}hhd, \"size\":%{public}lu}"
0x10149847c:  e4 03 00 91   mov	x4, sp
0x101498480:  e1 03 15 aa   mov	x1, x21
0x101498484:  02 00 80 52   mov	w2, #0
0x101498488:  c5 06 80 52   mov	w5, #0x36

