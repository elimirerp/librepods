0x101464670:  97 00 00 14   b	loc_1014648cc ; ⤵ 0x25c
0x101464674:  14 00 80 d2   mov	x20, #0
0x101464678:  62 81 00 f0   adrp	x2, 0x102493000
0x10146467c:  42 40 0e 91   add	x2, x2, #0x390 ; "MissingServiceCharacteristic"
0x101464680:  e0 03 18 aa   mov	x0, x24
0x101464684:  37 99 1b 94   bl	j__objc_msgSend(x0, "setDisconnectionReason:")
0x101464688:  00 63 41 f9   ldr	x0, [x24, #0x2c0]
0x10146468c:  e2 03 18 aa   mov	x2, x24
0x101464690:  e3 03 14 aa   mov	x3, x20
0x101464694:  24 04 80 52   mov	w4, #0x21
0x101464698:  25 00 80 52   mov	w5, #0x1
0x10146469c:  81 fe 1a 94   bl	j__objc_msgSend(x0, "device:didFailToCompleteTask:withError:andDisconnect:")
0x1014646a0:  ; loc_1014646a0
0x1014646a0:  a8 83 59 f8   ldur	x8, [fp, #-0x68]
0x1014646a4:  69 79 00 d0   adrp	x9, 0x102392000
0x1014646a8:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x1014646ac:  29 01 40 f9   ldr	x9, [x9]
0x1014646b0:  3f 01 08 eb   cmp	x9, x8
0x1014646b4:  81 16 00 54   b.ne	loc_101464984 ; ⤵ 0x2d0
0x1014646b8:  ff 43 10 91   add	sp, sp, #0x410
0x1014646bc:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x1014646c0:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x1014646c4:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x1014646c8:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x1014646cc:  fa 67 41 a9   ldp	x26, x25, [sp, #0x10]
0x1014646d0:  fc 6f c6 a8   ldp	x28, x27, [sp], #0x60
0x1014646d4:  ff 0f 5f d6   retab
0x1014646d8:  f5 88 00 d0   adrp	x21, 0x102582000
0x1014646dc:  a8 3a 46 f9   ldr	x8, [x21, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014646e0:  1f 05 00 b1   cmn	x8, #0x1
0x1014646e4:  01 11 00 54   b.ne	loc_101464904 ; ⤵ 0x220
0x1014646e8:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x1014646ec:  e0 03 14 aa   mov	x0, x20
0x1014646f0:  01 02 80 52   mov	w1, #0x10
0x1014646f4:  ff c6 1a 94   bl	j__os_log_type_enabled
0x1014646f8:  93 44 00 90   adrp	x19, 0x101cf4000
0x1014646fc:  80 04 00 34   cbz	w0, loc_10146478c ; ⤵ 0x90
0x101464700:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x101464704:  c5 d0 00 94   bl	0x101498a18
0x101464708:  f6 03 15 aa   mov	x22, x21
0x10146470c:  f5 03 00 aa   mov	x21, x0
0x101464710:  00 6f 41 f9   ldr	x0, [x24, #0x2d8]
0x101464714:  2b dc 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101464718:  e2 03 00 aa   mov	x2, x0
0x10146471c:  e0 03 18 aa   mov	x0, x24
0x101464720:  08 25 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101464724:  60 3e 44 fd   ldr	d0, [x19, #0x878]
0x101464728:  e0 23 03 bd   str	s0, [sp, #0x320]
0x10146472c:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x101464730:  48 04 81 52   mov	w8, #0x822
0x101464734:  e8 53 06 79   strh	w8, [sp, #0x328]
0x101464738:  48 52 00 d0   adrp	x8, 0x101eae000
0x10146473c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101464740:  e9 83 0c 91   add	x9, sp, #0x320
0x101464744:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x101464748:  28 08 81 52   mov	w8, #0x841
0x10146474c:  e8 67 06 79   strh	w8, [sp, #0x332]
0x101464750:  35 41 01 f8   stur	x21, [x9, #0x14]
0x101464754:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x101464758:  20 e1 01 f8   stur	x0, [x9, #0x1e]
0x10146475c:  e0 5c ff 90   adrp	x0, 0x100000000
0x101464760:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101464764:  a3 70 00 b0   adrp	x3, 0x102279000
0x101464768:  63 60 31 91   add	x3, x3, #0xc58 ; "{\"msg%{public}.0s\":\"#durian discovered characteristics, but active task is not a GATT task\", \"item\":%{private, location:escape_only}@, \"task\":%{private, location:escape_only}@}"
0x10146476c:  e4 83 0c 91   add	x4, sp, #0x320
0x101464770:  e1 03 14 aa   mov	x1, x20
0x101464774:  02 02 80 52   mov	w2, #0x10
0x101464778:  c5 04 80 52   mov	w5, #0x26
0x10146477c:  9d c2 1a 94   bl	j___os_log_impl
0x101464780:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x101464784:  1f 05 00 b1   cmn	x8, #0x1
0x101464788:  21 0c 00 54   b.ne	loc_10146490c ; ⤵ 0x184
0x10146478c:  ; loc_10146478c
0x10146478c:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x101464790:  e0 03 14 aa   mov	x0, x20
0x101464794:  db c6 1a 94   bl	j__os_signpost_enabled
0x101464798:  40 f8 ff 34   cbz	w0, loc_1014646a0 ; ⤴ -0xf8
0x10146479c:  00 b3 40 f9   ldr	x0, [x24, #0x160]
0x1014647a0:  9e d0 00 94   bl	0x101498a18
0x1014647a4:  f5 03 00 aa   mov	x21, x0
0x1014647a8:  00 6f 41 f9   ldr	x0, [x24, #0x2d8]
0x1014647ac:  05 dc 1b 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x1014647b0:  e2 03 00 aa   mov	x2, x0
0x1014647b4:  e0 03 18 aa   mov	x0, x24
0x1014647b8:  e2 24 1b 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x1014647bc:  60 3e 44 fd   ldr	d0, [x19, #0x878]
0x1014647c0:  e0 23 03 bd   str	s0, [sp, #0x320]
0x1014647c4:  ff 27 03 b9   str	wzr, [sp, #0x324]
0x1014647c8:  48 04 81 52   mov	w8, #0x822
0x1014647cc:  e8 53 06 79   strh	w8, [sp, #0x328]
0x1014647d0:  48 52 00 d0   adrp	x8, 0x101eae000
0x1014647d4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014647d8:  e9 83 0c 91   add	x9, sp, #0x320
0x1014647dc:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x1014647e0:  28 08 81 52   mov	w8, #0x841
0x1014647e4:  e8 67 06 79   strh	w8, [sp, #0x332]
0x1014647e8:  35 41 01 f8   stur	x21, [x9, #0x14]
0x1014647ec:  e8 7b 06 79   strh	w8, [sp, #0x33c]
0x1014647f0:  20 e1 01 f8   stur	x0, [x9, #0x1e]
0x1014647f4:  e0 5c ff 90   adrp	x0, 0x100000000
0x1014647f8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014647fc:  a4 70 00 b0   adrp	x4, 0x102279000

