
-[CLDurianDeviceManager handleConnectionAttemptTimeoutToDevice:forPeripeheral:]:
0x101474758:  7f 23 03 d5   pacibsp
0x10147475c:  ff c3 01 d1   sub	sp, sp, #0x70
0x101474760:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x101474764:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101474768:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10147476c:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101474770:  fd 83 01 91   add	fp, sp, #0x60
0x101474774:  f3 03 03 aa   mov	x19, x3
0x101474778:  f5 03 02 aa   mov	x21, x2
0x10147477c:  f4 03 00 aa   mov	x20, x0
0x101474780:  e8 78 00 d0   adrp	x8, 0x102392000
0x101474784:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101474788:  08 01 40 f9   ldr	x8, [x8]
0x10147478c:  e8 17 00 f9   str	x8, [sp, #0x28]
0x101474790:  68 88 00 d0   adrp	x8, 0x102582000
0x101474794:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101474798:  1f 05 00 b1   cmn	x8, #0x1
0x10147479c:  41 08 00 54   b.ne	loc_1014748a4 ; ⤵ 0x108
0x1014747a0:  ; loc_1014747a0
0x1014747a0:  68 88 00 d0   adrp	x8, 0x102582000
0x1014747a4:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014747a8:  e0 03 16 aa   mov	x0, x22
0x1014747ac:  01 00 80 52   mov	w1, #0
0x1014747b0:  d0 86 1a 94   bl	j__os_log_type_enabled
0x1014747b4:  e0 03 00 34   cbz	w0, loc_101474830 ; ⤵ 0x7c
0x1014747b8:  e0 03 15 aa   mov	x0, x21
0x1014747bc:  81 a6 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x1014747c0:  96 90 00 94   bl	0x101498a18
0x1014747c4:  f7 03 00 aa   mov	x23, x0
0x1014747c8:  e0 03 13 aa   mov	x0, x19
0x1014747cc:  95 ef 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x1014747d0:  92 90 00 94   bl	0x101498a18
0x1014747d4:  08 44 00 90   adrp	x8, 0x101cf4000
0x1014747d8:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x1014747dc:  e0 03 00 bd   str	s0, [sp]
0x1014747e0:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014747e4:  48 04 81 52   mov	w8, #0x822
0x1014747e8:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014747ec:  c8 51 00 d0   adrp	x8, 0x101eae000
0x1014747f0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014747f4:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014747f8:  28 08 81 52   mov	w8, #0x841
0x1014747fc:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101474800:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x101474804:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x101474808:  e0 e3 01 f8   stur	x0, [sp, #0x1e]
0x10147480c:  60 5c ff 90   adrp	x0, 0x100000000
0x101474810:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101474814:  43 70 00 f0   adrp	x3, 0x10227f000
0x101474818:  63 a8 26 91   add	x3, x3, #0x9aa ; "{\"msg%{public}.0s\":\"#durian #connection peripheral timed out\", \"item\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@}"
0x10147481c:  e4 03 00 91   mov	x4, sp
0x101474820:  e1 03 16 aa   mov	x1, x22
0x101474824:  02 00 80 52   mov	w2, #0
0x101474828:  c5 04 80 52   mov	w5, #0x26
0x10147482c:  71 82 1a 94   bl	j___os_log_impl
0x101474830:  ; loc_101474830
0x101474830:  f6 80 00 f0   adrp	x22, 0x102493000
0x101474834:  d6 c2 2c 91   add	x22, x22, #0xb30 ; "periphtimedout"
0x101474838:  e0 03 15 aa   mov	x0, x21
0x10147483c:  e2 03 16 aa   mov	x2, x22
0x101474840:  40 15 1b 94   bl	j__objc_msgSend(x0, "logConnectionAttempts:")
0x101474844:  e0 03 15 aa   mov	x0, x21
0x101474848:  e2 03 16 aa   mov	x2, x22
0x10147484c:  ed 15 1b 94   bl	j__objc_msgSend(x0, "logTaskCounts:")
0x101474850:  e0 03 15 aa   mov	x0, x21
0x101474854:  5b a6 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101474858:  e3 03 00 aa   mov	x3, x0
0x10147485c:  e0 03 14 aa   mov	x0, x20
0x101474860:  e2 03 13 aa   mov	x2, x19
0x101474864:  9f a4 1a 94   bl	j__objc_msgSend(x0, "cancelPeripheralConnection:forUUID:")
0x101474868:  80 76 40 f9   ldr	x0, [x20, #0xe8]
0x10147486c:  e2 03 13 aa   mov	x2, x19
0x101474870:  3c 3e 1b 94   bl	j__objc_msgSend(x0, "removeObjectForKey:")
0x101474874:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101474878:  e9 78 00 d0   adrp	x9, 0x102392000
0x10147487c:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101474880:  29 01 40 f9   ldr	x9, [x9]
0x101474884:  3f 01 08 eb   cmp	x9, x8
0x101474888:  21 01 00 54   b.ne	loc_1014748ac ; ⤵ 0x24
0x10147488c:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101474890:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101474894:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101474898:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x10147489c:  ff c3 01 91   add	sp, sp, #0x70
0x1014748a0:  ff 0f 5f d6   retab
0x1014748a4:  ; loc_1014748a4
0x1014748a4:  5e 6e 1a 94   bl	0x101b1021c
0x1014748a8:  be ff ff 17   b	loc_1014747a0 ; ⤴ -0x108
0x1014748ac:  ; loc_1014748ac
0x1014748ac:  25 82 1a 94   bl	j____stack_chk_fail

