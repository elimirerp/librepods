
-[CLHawkeyeDevice createFetchCurrentPrimaryKeyTask]:
0x10148a2d0:  7f 23 03 d5   pacibsp
0x10148a2d4:  ff 03 01 d1   sub	sp, sp, #0x40
0x10148a2d8:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x10148a2dc:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10148a2e0:  fd c3 00 91   add	fp, sp, #0x30
0x10148a2e4:  48 78 00 90   adrp	x8, 0x102392000
0x10148a2e8:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10148a2ec:  08 01 40 f9   ldr	x8, [x8]
0x10148a2f0:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x10148a2f4:  c8 87 00 90   adrp	x8, 0x102582000
0x10148a2f8:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10148a2fc:  1f 05 00 b1   cmn	x8, #0x1
0x10148a300:  c1 04 00 54   b.ne	loc_10148a398 ; ⤵ 0x98
0x10148a304:  c8 87 00 90   adrp	x8, 0x102582000
0x10148a308:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10148a30c:  e0 03 13 aa   mov	x0, x19
0x10148a310:  01 00 80 52   mov	w1, #0
0x10148a314:  f7 2f 1a 94   bl	j__os_log_type_enabled
0x10148a318:  60 02 00 34   cbz	w0, loc_10148a364 ; ⤵ 0x4c
0x10148a31c:  48 43 00 d0   adrp	x8, 0x101cf4000
0x10148a320:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10148a324:  e0 03 00 bd   str	s0, [sp]
0x10148a328:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10148a32c:  48 04 81 52   mov	w8, #0x822
0x10148a330:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10148a334:  28 51 00 90   adrp	x8, 0x101eae000
0x10148a338:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10148a33c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10148a340:  a0 5b ff d0   adrp	x0, 0x100000000
0x10148a344:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10148a348:  e3 6f 00 b0   adrp	x3, 0x102287000
0x10148a34c:  63 28 35 91   add	x3, x3, #0xd4a ; "{\"msg%{public}.0s\":\"#durian #hawkeye creating FetchCurrentPrimaryKeyTask\"}"
0x10148a350:  e4 03 00 91   mov	x4, sp
0x10148a354:  e1 03 13 aa   mov	x1, x19
0x10148a358:  02 00 80 52   mov	w2, #0
0x10148a35c:  45 02 80 52   mov	w5, #0x12

