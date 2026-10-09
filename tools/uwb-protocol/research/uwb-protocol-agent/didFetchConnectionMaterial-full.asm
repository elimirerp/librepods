
-[CLDurianDeviceManager didFetchConnectionMaterial:criteria:forDevice:error:]:
0x10147ba44:  7f 23 03 d5   pacibsp
0x10147ba48:  ff 03 07 d1   sub	sp, sp, #0x1c0
0x10147ba4c:  fc 6f 16 a9   stp	x28, x27, [sp, #0x160]
0x10147ba50:  fa 67 17 a9   stp	x26, x25, [sp, #0x170]
0x10147ba54:  f8 5f 18 a9   stp	x24, x23, [sp, #0x180]
0x10147ba58:  f6 57 19 a9   stp	x22, x21, [sp, #0x190]
0x10147ba5c:  f4 4f 1a a9   stp	x20, x19, [sp, #0x1a0]
0x10147ba60:  fd 7b 1b a9   stp	fp, lr, [sp, #0x1b0]
0x10147ba64:  fd c3 06 91   add	fp, sp, #0x1b0
0x10147ba68:  f7 03 05 aa   mov	x23, x5
0x10147ba6c:  fc 03 04 aa   mov	x28, x4
0x10147ba70:  f5 03 00 aa   mov	x21, x0
0x10147ba74:  bb 43 03 d1   sub	x27, fp, #0xd0
0x10147ba78:  a8 78 00 f0   adrp	x8, 0x102392000
0x10147ba7c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10147ba80:  08 01 40 f9   ldr	x8, [x8]
0x10147ba84:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x10147ba88:  85 0c 00 b4   cbz	x5, loc_10147bc18 ; ⤵ 0x190
0x10147ba8c:  ; loc_10147ba8c
0x10147ba8c:  e0 03 15 aa   mov	x0, x21
0x10147ba90:  e2 03 1c aa   mov	x2, x28
0x10147ba94:  e3 03 17 aa   mov	x3, x23
0x10147ba98:  62 cb 1a 94   bl	j__objc_msgSend(x0, "handleKeyFetchFailureForDevice:withError:")
0x10147ba9c:  33 88 00 f0   adrp	x19, 0x102582000
0x10147baa0:  68 3a 46 f9   ldr	x8, [x19, #0xc70] ; data_102582c70 (__DATA.__data)
0x10147baa4:  1f 05 00 b1   cmn	x8, #0x1
0x10147baa8:  81 3c 00 54   b.ne	loc_10147c238 ; ⤵ 0x790
0x10147baac:  ; loc_10147baac
0x10147baac:  38 88 00 f0   adrp	x24, 0x102582000
0x10147bab0:  14 3f 46 f9   ldr	x20, [x24, #0xc78] ; data_102582c78 (__DATA.__data)
0x10147bab4:  e0 03 14 aa   mov	x0, x20
0x10147bab8:  01 02 80 52   mov	w1, #0x10
0x10147babc:  0d 6a 1a 94   bl	j__os_log_type_enabled
0x10147bac0:  00 05 00 34   cbz	w0, loc_10147bb60 ; ⤵ 0xa0
0x10147bac4:  e0 03 1c aa   mov	x0, x28
0x10147bac8:  be 89 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147bacc:  d3 73 00 94   bl	0x101498a18
0x10147bad0:  f5 03 00 aa   mov	x21, x0
0x10147bad4:  e0 03 1c aa   mov	x0, x28
0x10147bad8:  c2 78 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147badc:  d1 d2 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147bae0:  ce 73 00 94   bl	0x101498a18
0x10147bae4:  f6 03 00 aa   mov	x22, x0
0x10147bae8:  e0 03 17 aa   mov	x0, x23
0x10147baec:  55 f7 1a 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x10147baf0:  c8 43 00 b0   adrp	x8, 0x101cf4000
0x10147baf4:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10147baf8:  a0 03 13 bc   stur	s0, [fp, #-0xd0]
0x10147bafc:  bf 43 13 b8   stur	wzr, [fp, #-0xcc]
0x10147bb00:  48 04 81 52   mov	w8, #0x822
0x10147bb04:  a8 83 13 78   sturh	w8, [fp, #-0xc8]
0x10147bb08:  88 51 00 f0   adrp	x8, 0x101eae000
0x10147bb0c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147bb10:  68 a3 00 f8   stur	x8, [x27, #0xa]
0x10147bb14:  28 08 81 52   mov	w8, #0x841
0x10147bb18:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x10147bb1c:  75 43 01 f8   stur	x21, [x27, #0x14]
0x10147bb20:  a8 c3 14 78   sturh	w8, [fp, #-0xb4]
0x10147bb24:  76 e3 01 f8   stur	x22, [x27, #0x1e]
0x10147bb28:  a8 63 15 78   sturh	w8, [fp, #-0xaa]
0x10147bb2c:  a0 83 15 f8   stur	x0, [fp, #-0xa8]
0x10147bb30:  20 5c ff b0   adrp	x0, 0x100000000
0x10147bb34:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147bb38:  23 70 00 f0   adrp	x3, 0x102282000
0x10147bb3c:  63 2c 30 91   add	x3, x3, #0xc0b ; "{\"msg%{public}.0s\":\"#durian #connectattempt material fetch error\", \"item\":%{private, location:escape_only}@, \"attemptId\":%{private, location:escape_only}@, \"error\":%{private, location:escape_only}@}"
0x10147bb40:  a4 43 03 d1   sub	x4, fp, #0xd0
0x10147bb44:  e1 03 14 aa   mov	x1, x20
0x10147bb48:  02 02 80 52   mov	w2, #0x10
0x10147bb4c:  05 06 80 52   mov	w5, #0x30
0x10147bb50:  a8 65 1a 94   bl	j___os_log_impl
0x10147bb54:  68 3a 46 f9   ldr	x8, [x19, #0xc70]
0x10147bb58:  1f 05 00 b1   cmn	x8, #0x1
0x10147bb5c:  21 37 00 54   b.ne	loc_10147c240 ; ⤵ 0x6e4
0x10147bb60:  ; loc_10147bb60
0x10147bb60:  14 3f 46 f9   ldr	x20, [x24, #0xc78]
0x10147bb64:  e0 03 14 aa   mov	x0, x20
0x10147bb68:  e6 69 1a 94   bl	j__os_signpost_enabled
0x10147bb6c:  a0 34 00 34   cbz	w0, loc_10147c200 ; ⤵ 0x694
0x10147bb70:  e0 03 1c aa   mov	x0, x28
0x10147bb74:  93 89 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147bb78:  a8 73 00 94   bl	0x101498a18
0x10147bb7c:  f5 03 00 aa   mov	x21, x0
0x10147bb80:  e0 03 1c aa   mov	x0, x28
0x10147bb84:  97 78 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147bb88:  a6 d2 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147bb8c:  a3 73 00 94   bl	0x101498a18
0x10147bb90:  f3 03 00 aa   mov	x19, x0
0x10147bb94:  e0 03 17 aa   mov	x0, x23
0x10147bb98:  2a f7 1a 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x10147bb9c:  c8 43 00 b0   adrp	x8, 0x101cf4000
0x10147bba0:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10147bba4:  a0 03 13 bc   stur	s0, [fp, #-0xd0]
0x10147bba8:  bf 43 13 b8   stur	wzr, [fp, #-0xcc]
0x10147bbac:  48 04 81 52   mov	w8, #0x822
0x10147bbb0:  a8 83 13 78   sturh	w8, [fp, #-0xc8]
0x10147bbb4:  88 51 00 f0   adrp	x8, 0x101eae000
0x10147bbb8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147bbbc:  68 a3 00 f8   stur	x8, [x27, #0xa]
0x10147bbc0:  28 08 81 52   mov	w8, #0x841
0x10147bbc4:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x10147bbc8:  75 43 01 f8   stur	x21, [x27, #0x14]
0x10147bbcc:  a8 c3 14 78   sturh	w8, [fp, #-0xb4]
0x10147bbd0:  73 e3 01 f8   stur	x19, [x27, #0x1e]
0x10147bbd4:  a8 63 15 78   sturh	w8, [fp, #-0xaa]
0x10147bbd8:  a0 83 15 f8   stur	x0, [fp, #-0xa8]
0x10147bbdc:  20 5c ff b0   adrp	x0, 0x100000000
0x10147bbe0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147bbe4:  24 70 00 f0   adrp	x4, 0x102282000
0x10147bbe8:  84 48 33 91   add	x4, x4, #0xcd2 ; "#durian #connectattempt material fetch error"
0x10147bbec:  25 70 00 f0   adrp	x5, 0x102282000
0x10147bbf0:  a5 2c 30 91   add	x5, x5, #0xc0b ; "{\"msg%{public}.0s\":\"#durian #connectattempt material fetch error\", \"item\":%{private, location:escape_only}@, \"attemptId\":%{private, location:escape_only}@, \"error\":%{private, location:escape_only}@}"
0x10147bbf4:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x10147bbf8:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x10147bbfc:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x10147bc00:  a6 43 03 d1   sub	x6, fp, #0xd0
0x10147bc04:  e1 03 14 aa   mov	x1, x20
0x10147bc08:  02 00 80 52   mov	w2, #0
0x10147bc0c:  07 06 80 52   mov	w7, #0x30
0x10147bc10:  80 65 1a 94   bl	j___os_signpost_emit_with_name_impl
0x10147bc14:  7b 01 00 14   b	loc_10147c200 ; ⤵ 0x5ec
0x10147bc18:  ; loc_10147bc18
0x10147bc18:  f6 03 03 aa   mov	x22, x3
0x10147bc1c:  f4 03 02 aa   mov	x20, x2
0x10147bc20:  e0 03 02 aa   mov	x0, x2
0x10147bc24:  af 96 1a 94   bl	j__objc_msgSend(x0, "count")
0x10147bc28:  e0 0f 00 b4   cbz	x0, loc_10147be24 ; ⤵ 0x1fc
0x10147bc2c:  e0 03 14 aa   mov	x0, x20
0x10147bc30:  ac 96 1a 94   bl	j__objc_msgSend(x0, "count")
0x10147bc34:  1f 84 04 f1   cmp	x0, #0x121
0x10147bc38:  63 1c 00 54   b.lo	loc_10147bfc4 ; ⤵ 0x38c
0x10147bc3c:  a8 78 00 b0   adrp	x8, 0x102390000
0x10147bc40:  00 d5 41 f9   ldr	x0, [x8, #0x3a8] ; __got._OBJC_CLASS_$_SPCommandKeysCriteria
0x10147bc44:  df ab 1a 94   bl	j__objc_msgSend(x0, "driftModeledCriteria")
0x10147bc48:  e2 03 00 aa   mov	x2, x0
0x10147bc4c:  e0 03 16 aa   mov	x0, x22
0x10147bc50:  2c 71 1a 94   bl	j__objc_msgSend(x0, "_cl_isEqual:")
0x10147bc54:  80 1b 00 34   cbz	w0, loc_10147bfc4 ; ⤵ 0x370
0x10147bc58:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147bc5c:  17 65 45 f9   ldr	x23, [x8, #0xac8] ; __got._OBJC_CLASS_$_NSError
0x10147bc60:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147bc64:  08 fd 47 f9   ldr	x8, [x8, #0xff8] ; __got._kCLErrorDomainPrivate
0x10147bc68:  18 01 40 f9   ldr	x24, [x8]
0x10147bc6c:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147bc70:  08 39 45 f9   ldr	x8, [x8, #0xa70] ; __got._NSLocalizedDescriptionKey
0x10147bc74:  09 01 40 f9   ldr	x9, [x8]
0x10147bc78:  c8 80 00 90   adrp	x8, 0x102493000
0x10147bc7c:  08 c1 36 91   add	x8, x8, #0xdb0 ; "Token count return exceeds the max allowed"
0x10147bc80:  a9 a3 37 a9   stp	x9, x8, [fp, #-0x88]
0x10147bc84:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147bc88:  00 2d 44 f9   ldr	x0, [x8, #0x858] ; __got._OBJC_CLASS_$_NSDictionary
0x10147bc8c:  a2 03 02 d1   sub	x2, fp, #0x80
0x10147bc90:  a3 23 02 d1   sub	x3, fp, #0x88
0x10147bc94:  24 00 80 52   mov	w4, #0x1
0x10147bc98:  82 a2 1a 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10147bc9c:  e4 03 00 aa   mov	x4, x0
0x10147bca0:  e0 03 17 aa   mov	x0, x23
0x10147bca4:  e2 03 18 aa   mov	x2, x24
0x10147bca8:  43 00 80 52   mov	w3, #0x2
0x10147bcac:  8d af 1a 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x10147bcb0:  f7 03 00 aa   mov	x23, x0
0x10147bcb4:  28 88 00 f0   adrp	x8, 0x102582000
0x10147bcb8:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10147bcbc:  1f 05 00 b1   cmn	x8, #0x1
0x10147bcc0:  01 2d 00 54   b.ne	loc_10147c260 ; ⤵ 0x5a0
0x10147bcc4:  ; loc_10147bcc4
0x10147bcc4:  33 88 00 f0   adrp	x19, 0x102582000
0x10147bcc8:  78 3e 46 f9   ldr	x24, [x19, #0xc78] ; data_102582c78 (__DATA.__data)
0x10147bccc:  e0 03 18 aa   mov	x0, x24
0x10147bcd0:  01 02 80 52   mov	w1, #0x10
0x10147bcd4:  87 69 1a 94   bl	j__os_log_type_enabled
0x10147bcd8:  e0 04 00 34   cbz	w0, loc_10147bd74 ; ⤵ 0x9c
0x10147bcdc:  e0 03 1c aa   mov	x0, x28
0x10147bce0:  38 89 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147bce4:  f9 03 00 aa   mov	x25, x0
0x10147bce8:  e0 03 14 aa   mov	x0, x20
0x10147bcec:  7d 96 1a 94   bl	j__objc_msgSend(x0, "count")
0x10147bcf0:  fa 03 00 aa   mov	x26, x0
0x10147bcf4:  e0 03 17 aa   mov	x0, x23
0x10147bcf8:  d2 f6 1a 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x10147bcfc:  c8 43 00 b0   adrp	x8, 0x101cf4000
0x10147bd00:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10147bd04:  a0 03 13 bc   stur	s0, [fp, #-0xd0]
0x10147bd08:  bf 43 13 b8   stur	wzr, [fp, #-0xcc]
0x10147bd0c:  48 04 81 52   mov	w8, #0x822
0x10147bd10:  a8 83 13 78   sturh	w8, [fp, #-0xc8]
0x10147bd14:  88 51 00 f0   adrp	x8, 0x101eae000
0x10147bd18:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147bd1c:  68 a3 00 f8   stur	x8, [x27, #0xa]
0x10147bd20:  28 08 81 52   mov	w8, #0x841
0x10147bd24:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x10147bd28:  79 43 01 f8   stur	x25, [x27, #0x14]
0x10147bd2c:  49 00 81 52   mov	w9, #0x802
0x10147bd30:  a9 c3 14 78   sturh	w9, [fp, #-0xb4]
0x10147bd34:  7a e3 01 f8   stur	x26, [x27, #0x1e]
0x10147bd38:  a8 63 15 78   sturh	w8, [fp, #-0xaa]
0x10147bd3c:  a0 83 15 f8   stur	x0, [fp, #-0xa8]
0x10147bd40:  20 5c ff b0   adrp	x0, 0x100000000
0x10147bd44:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147bd48:  23 70 00 f0   adrp	x3, 0x102282000
0x10147bd4c:  63 b4 2c 91   add	x3, x3, #0xb2d ; "{\"msg%{public}.0s\":\"#durian #connection material count exceeded \", \"deviceId\":%{private, location:escape_only}@, \"count\":%{public}lu, \"error\":%{private, location:escape_only}@}"
0x10147bd50:  a4 43 03 d1   sub	x4, fp, #0xd0
0x10147bd54:  e1 03 18 aa   mov	x1, x24
0x10147bd58:  02 02 80 52   mov	w2, #0x10
0x10147bd5c:  05 06 80 52   mov	w5, #0x30
0x10147bd60:  24 65 1a 94   bl	j___os_log_impl
0x10147bd64:  28 88 00 f0   adrp	x8, 0x102582000
0x10147bd68:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10147bd6c:  1f 05 00 b1   cmn	x8, #0x1
0x10147bd70:  c1 27 00 54   b.ne	loc_10147c268 ; ⤵ 0x4f8
0x10147bd74:  ; loc_10147bd74
0x10147bd74:  78 3e 46 f9   ldr	x24, [x19, #0xc78]
0x10147bd78:  e0 03 18 aa   mov	x0, x24
0x10147bd7c:  61 69 1a 94   bl	j__os_signpost_enabled
0x10147bd80:  00 12 00 34   cbz	w0, loc_10147bfc0 ; ⤵ 0x240
0x10147bd84:  e0 03 1c aa   mov	x0, x28
0x10147bd88:  0e 89 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147bd8c:  f9 03 00 aa   mov	x25, x0
0x10147bd90:  e0 03 14 aa   mov	x0, x20
0x10147bd94:  53 96 1a 94   bl	j__objc_msgSend(x0, "count")
0x10147bd98:  fa 03 00 aa   mov	x26, x0
0x10147bd9c:  e0 03 17 aa   mov	x0, x23
0x10147bda0:  a8 f6 1a 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x10147bda4:  c8 43 00 b0   adrp	x8, 0x101cf4000
0x10147bda8:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10147bdac:  a0 03 13 bc   stur	s0, [fp, #-0xd0]
0x10147bdb0:  bf 43 13 b8   stur	wzr, [fp, #-0xcc]
0x10147bdb4:  48 04 81 52   mov	w8, #0x822
0x10147bdb8:  a8 83 13 78   sturh	w8, [fp, #-0xc8]
0x10147bdbc:  88 51 00 f0   adrp	x8, 0x101eae000
0x10147bdc0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147bdc4:  68 a3 00 f8   stur	x8, [x27, #0xa]
0x10147bdc8:  28 08 81 52   mov	w8, #0x841
0x10147bdcc:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x10147bdd0:  79 43 01 f8   stur	x25, [x27, #0x14]
0x10147bdd4:  49 00 81 52   mov	w9, #0x802
0x10147bdd8:  a9 c3 14 78   sturh	w9, [fp, #-0xb4]
0x10147bddc:  7a e3 01 f8   stur	x26, [x27, #0x1e]
0x10147bde0:  a8 63 15 78   sturh	w8, [fp, #-0xaa]
0x10147bde4:  a0 83 15 f8   stur	x0, [fp, #-0xa8]
0x10147bde8:  20 5c ff b0   adrp	x0, 0x100000000
0x10147bdec:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147bdf0:  24 70 00 f0   adrp	x4, 0x102282000
0x10147bdf4:  84 78 2f 91   add	x4, x4, #0xbde ; "#durian #connection material count exceeded "
0x10147bdf8:  25 70 00 f0   adrp	x5, 0x102282000
0x10147bdfc:  a5 b4 2c 91   add	x5, x5, #0xb2d ; "{\"msg%{public}.0s\":\"#durian #connection material count exceeded \", \"deviceId\":%{private, location:escape_only}@, \"count\":%{public}lu, \"error\":%{private, location:escape_only}@}"
0x10147be00:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x10147be04:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x10147be08:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x10147be0c:  a6 43 03 d1   sub	x6, fp, #0xd0
0x10147be10:  e1 03 18 aa   mov	x1, x24
0x10147be14:  02 00 80 52   mov	w2, #0
0x10147be18:  07 06 80 52   mov	w7, #0x30
0x10147be1c:  fd 64 1a 94   bl	j___os_signpost_emit_with_name_impl
0x10147be20:  68 00 00 14   b	loc_10147bfc0 ; ⤵ 0x1a0
0x10147be24:  ; loc_10147be24
0x10147be24:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147be28:  17 65 45 f9   ldr	x23, [x8, #0xac8] ; __got._OBJC_CLASS_$_NSError
0x10147be2c:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147be30:  08 fd 47 f9   ldr	x8, [x8, #0xff8] ; __got._kCLErrorDomainPrivate
0x10147be34:  18 01 40 f9   ldr	x24, [x8]
0x10147be38:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147be3c:  08 39 45 f9   ldr	x8, [x8, #0xa70] ; __got._NSLocalizedDescriptionKey
0x10147be40:  09 01 40 f9   ldr	x9, [x8]
0x10147be44:  c8 80 00 90   adrp	x8, 0x102493000
0x10147be48:  08 41 36 91   add	x8, x8, #0xd90 ; "Failed to Retrieve tokens for tag"
0x10147be4c:  a9 a3 38 a9   stp	x9, x8, [fp, #-0x78]
0x10147be50:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147be54:  00 2d 44 f9   ldr	x0, [x8, #0x858] ; __got._OBJC_CLASS_$_NSDictionary
0x10147be58:  a2 c3 01 d1   sub	x2, fp, #0x70
0x10147be5c:  a3 e3 01 d1   sub	x3, fp, #0x78
0x10147be60:  24 00 80 52   mov	w4, #0x1
0x10147be64:  0f a2 1a 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10147be68:  e4 03 00 aa   mov	x4, x0
0x10147be6c:  e0 03 17 aa   mov	x0, x23
0x10147be70:  e2 03 18 aa   mov	x2, x24
0x10147be74:  43 00 80 52   mov	w3, #0x2
0x10147be78:  1a af 1a 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x10147be7c:  f7 03 00 aa   mov	x23, x0
0x10147be80:  33 88 00 f0   adrp	x19, 0x102582000
0x10147be84:  68 3a 46 f9   ldr	x8, [x19, #0xc70] ; data_102582c70 (__DATA.__data)
0x10147be88:  fa 03 14 aa   mov	x26, x20
0x10147be8c:  1f 05 00 b1   cmn	x8, #0x1
0x10147be90:  01 1e 00 54   b.ne	loc_10147c250 ; ⤵ 0x3c0
0x10147be94:  ; loc_10147be94
0x10147be94:  34 88 00 f0   adrp	x20, 0x102582000
0x10147be98:  98 3e 46 f9   ldr	x24, [x20, #0xc78] ; data_102582c78 (__DATA.__data)
0x10147be9c:  e0 03 18 aa   mov	x0, x24
0x10147bea0:  01 02 80 52   mov	w1, #0x10
0x10147bea4:  13 69 1a 94   bl	j__os_log_type_enabled
0x10147bea8:  00 04 00 34   cbz	w0, loc_10147bf28 ; ⤵ 0x80
0x10147beac:  e0 03 1c aa   mov	x0, x28
0x10147beb0:  c4 88 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147beb4:  f9 03 00 aa   mov	x25, x0
0x10147beb8:  e0 03 17 aa   mov	x0, x23
0x10147bebc:  61 f6 1a 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x10147bec0:  c8 43 00 b0   adrp	x8, 0x101cf4000
0x10147bec4:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10147bec8:  a0 03 13 bc   stur	s0, [fp, #-0xd0]
0x10147becc:  bf 43 13 b8   stur	wzr, [fp, #-0xcc]
0x10147bed0:  48 04 81 52   mov	w8, #0x822
0x10147bed4:  a8 83 13 78   sturh	w8, [fp, #-0xc8]
0x10147bed8:  88 51 00 f0   adrp	x8, 0x101eae000
0x10147bedc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147bee0:  68 a3 00 f8   stur	x8, [x27, #0xa]
0x10147bee4:  28 08 81 52   mov	w8, #0x841
0x10147bee8:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x10147beec:  79 43 01 f8   stur	x25, [x27, #0x14]
0x10147bef0:  a8 c3 14 78   sturh	w8, [fp, #-0xb4]
0x10147bef4:  60 e3 01 f8   stur	x0, [x27, #0x1e]
0x10147bef8:  20 5c ff b0   adrp	x0, 0x100000000
0x10147befc:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147bf00:  23 70 00 f0   adrp	x3, 0x102282000
0x10147bf04:  63 30 29 91   add	x3, x3, #0xa4c ; "{\"msg%{public}.0s\":\"#durian #connection no errors returned with no materials\", \"deviceId\":%{private, location:escape_only}@, \"error\":%{private, location:escape_only}@}"
0x10147bf08:  a4 43 03 d1   sub	x4, fp, #0xd0
0x10147bf0c:  e1 03 18 aa   mov	x1, x24
0x10147bf10:  02 02 80 52   mov	w2, #0x10
0x10147bf14:  c5 04 80 52   mov	w5, #0x26
0x10147bf18:  b6 64 1a 94   bl	j___os_log_impl
0x10147bf1c:  68 3a 46 f9   ldr	x8, [x19, #0xc70]
0x10147bf20:  1f 05 00 b1   cmn	x8, #0x1
0x10147bf24:  a1 19 00 54   b.ne	loc_10147c258 ; ⤵ 0x334
0x10147bf28:  ; loc_10147bf28
0x10147bf28:  98 3e 46 f9   ldr	x24, [x20, #0xc78]
0x10147bf2c:  e0 03 18 aa   mov	x0, x24
0x10147bf30:  f4 68 1a 94   bl	j__os_signpost_enabled
0x10147bf34:  40 04 00 34   cbz	w0, loc_10147bfbc ; ⤵ 0x88
0x10147bf38:  e0 03 1c aa   mov	x0, x28
0x10147bf3c:  a1 88 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147bf40:  f9 03 00 aa   mov	x25, x0
0x10147bf44:  e0 03 17 aa   mov	x0, x23
0x10147bf48:  3e f6 1a 94   bl	j__objc_msgSend(x0, "localizedDescription")
0x10147bf4c:  c8 43 00 b0   adrp	x8, 0x101cf4000
0x10147bf50:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10147bf54:  a0 03 13 bc   stur	s0, [fp, #-0xd0]
0x10147bf58:  bf 43 13 b8   stur	wzr, [fp, #-0xcc]
0x10147bf5c:  48 04 81 52   mov	w8, #0x822
0x10147bf60:  a8 83 13 78   sturh	w8, [fp, #-0xc8]
0x10147bf64:  88 51 00 f0   adrp	x8, 0x101eae000
0x10147bf68:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147bf6c:  68 a3 00 f8   stur	x8, [x27, #0xa]
0x10147bf70:  28 08 81 52   mov	w8, #0x841
0x10147bf74:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x10147bf78:  79 43 01 f8   stur	x25, [x27, #0x14]
0x10147bf7c:  a8 c3 14 78   sturh	w8, [fp, #-0xb4]
0x10147bf80:  60 e3 01 f8   stur	x0, [x27, #0x1e]
0x10147bf84:  20 5c ff b0   adrp	x0, 0x100000000
0x10147bf88:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147bf8c:  24 70 00 f0   adrp	x4, 0x102282000
0x10147bf90:  84 d0 2b 91   add	x4, x4, #0xaf4 ; "#durian #connection no errors returned with no materials"
0x10147bf94:  25 70 00 f0   adrp	x5, 0x102282000
0x10147bf98:  a5 30 29 91   add	x5, x5, #0xa4c ; "{\"msg%{public}.0s\":\"#durian #connection no errors returned with no materials\", \"deviceId\":%{private, location:escape_only}@, \"error\":%{private, location:escape_only}@}"
0x10147bf9c:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x10147bfa0:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x10147bfa4:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x10147bfa8:  a6 43 03 d1   sub	x6, fp, #0xd0
0x10147bfac:  e1 03 18 aa   mov	x1, x24
0x10147bfb0:  02 00 80 52   mov	w2, #0
0x10147bfb4:  c7 04 80 52   mov	w7, #0x26
0x10147bfb8:  96 64 1a 94   bl	j___os_signpost_emit_with_name_impl
0x10147bfbc:  ; loc_10147bfbc
0x10147bfbc:  f4 03 1a aa   mov	x20, x26
0x10147bfc0:  ; loc_10147bfc0
0x10147bfc0:  77 d6 ff b5   cbnz	x23, loc_10147ba8c ; ⤴ -0x534
0x10147bfc4:  ; loc_10147bfc4
0x10147bfc4:  28 88 00 f0   adrp	x8, 0x102582000
0x10147bfc8:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10147bfcc:  1f 05 00 b1   cmn	x8, #0x1
0x10147bfd0:  c1 13 00 54   b.ne	loc_10147c248 ; ⤵ 0x278
0x10147bfd4:  ; loc_10147bfd4
0x10147bfd4:  f5 07 00 f9   str	x21, [sp, #0x8]
0x10147bfd8:  28 88 00 f0   adrp	x8, 0x102582000
0x10147bfdc:  17 3d 46 f9   ldr	x23, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10147bfe0:  e0 03 17 aa   mov	x0, x23
0x10147bfe4:  01 00 80 52   mov	w1, #0
0x10147bfe8:  c2 68 1a 94   bl	j__os_log_type_enabled
0x10147bfec:  00 05 00 34   cbz	w0, loc_10147c08c ; ⤵ 0xa0
0x10147bff0:  e0 03 1c aa   mov	x0, x28
0x10147bff4:  73 88 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147bff8:  88 72 00 94   bl	0x101498a18
0x10147bffc:  f8 03 00 aa   mov	x24, x0
0x10147c000:  e0 03 1c aa   mov	x0, x28
0x10147c004:  77 77 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147c008:  86 d1 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147c00c:  83 72 00 94   bl	0x101498a18
0x10147c010:  f9 03 00 aa   mov	x25, x0
0x10147c014:  e0 03 14 aa   mov	x0, x20
0x10147c018:  b2 95 1a 94   bl	j__objc_msgSend(x0, "count")
0x10147c01c:  a8 38 00 f0   adrp	x8, 0x101b93000
0x10147c020:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x10147c024:  a0 03 13 bc   stur	s0, [fp, #-0xd0]
0x10147c028:  48 04 81 52   mov	w8, #0x822
0x10147c02c:  a8 83 13 78   sturh	w8, [fp, #-0xc8]
0x10147c030:  88 51 00 d0   adrp	x8, 0x101eae000
0x10147c034:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147c038:  bf 43 13 b8   stur	wzr, [fp, #-0xcc]
0x10147c03c:  68 a3 00 f8   stur	x8, [x27, #0xa]
0x10147c040:  28 08 81 52   mov	w8, #0x841
0x10147c044:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x10147c048:  78 43 01 f8   stur	x24, [x27, #0x14]
0x10147c04c:  a8 c3 14 78   sturh	w8, [fp, #-0xb4]
0x10147c050:  79 e3 01 f8   stur	x25, [x27, #0x1e]
0x10147c054:  29 00 81 52   mov	w9, #0x801
0x10147c058:  a9 63 15 78   sturh	w9, [fp, #-0xaa]
0x10147c05c:  a0 83 15 f8   stur	x0, [fp, #-0xa8]
0x10147c060:  a8 03 16 78   sturh	w8, [fp, #-0xa0]
0x10147c064:  76 23 03 f8   stur	x22, [x27, #0x32]
0x10147c068:  20 5c ff 90   adrp	x0, 0x100000000
0x10147c06c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147c070:  23 70 00 d0   adrp	x3, 0x102282000
0x10147c074:  63 fc 33 91   add	x3, x3, #0xcff ; "{\"msg%{public}.0s\":\"#durian #connectattempt material fetched\", \"item\":%{private, location:escape_only}@, \"attemptId\":%{private, location:escape_only}@, \"count\":%{private}lu, \"criteria\":%{private, loca"...
0x10147c078:  a4 43 03 d1   sub	x4, fp, #0xd0
0x10147c07c:  e1 03 17 aa   mov	x1, x23
0x10147c080:  02 00 80 52   mov	w2, #0
0x10147c084:  45 07 80 52   mov	w5, #0x3a
0x10147c088:  5a 64 1a 94   bl	j___os_log_impl
0x10147c08c:  ; loc_10147c08c
0x10147c08c:  f6 03 00 f9   str	x22, [sp]
0x10147c090:  fc 0b 00 f9   str	x28, [sp, #0x10]
0x10147c094:  a8 78 00 b0   adrp	x8, 0x102391000
0x10147c098:  17 41 44 f9   ldr	x23, [x8, #0x880] ; __got._OBJC_CLASS_$_NSMutableArray
0x10147c09c:  e0 03 14 aa   mov	x0, x20
0x10147c0a0:  90 95 1a 94   bl	j__objc_msgSend(x0, "count")
0x10147c0a4:  e2 03 00 aa   mov	x2, x0
0x10147c0a8:  e0 03 17 aa   mov	x0, x23
0x10147c0ac:  75 7f 1a 94   bl	j__objc_msgSend(x0, "arrayWithCapacity:")
0x10147c0b0:  f7 03 00 aa   mov	x23, x0
0x10147c0b4:  00 e4 00 6f   movi	v0.2d, #0
0x10147c0b8:  e0 03 01 ad   stp	q0, q0, [sp, #0x20]
0x10147c0bc:  e0 03 02 ad   stp	q0, q0, [sp, #0x40]
0x10147c0c0:  e2 83 00 91   add	x2, sp, #0x20
0x10147c0c4:  e3 83 01 91   add	x3, sp, #0x60
0x10147c0c8:  f4 0f 00 f9   str	x20, [sp, #0x18]
0x10147c0cc:  e0 03 14 aa   mov	x0, x20
0x10147c0d0:  04 02 80 52   mov	w4, #0x10
0x10147c0d4:  8b 95 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10147c0d8:  00 06 00 b4   cbz	x0, loc_10147c198 ; ⤵ 0xc0
0x10147c0dc:  f8 03 00 aa   mov	x24, x0
0x10147c0e0:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x10147c0e4:  14 01 40 f9   ldr	x20, [x8]
0x10147c0e8:  b3 78 00 b0   adrp	x19, 0x102391000
0x10147c0ec:  ; loc_10147c0ec
0x10147c0ec:  16 00 80 d2   mov	x22, #0
0x10147c0f0:  ; loc_10147c0f0
0x10147c0f0:  e8 1b 40 f9   ldr	x8, [sp, #0x30]
0x10147c0f4:  08 01 40 f9   ldr	x8, [x8]
0x10147c0f8:  1f 01 14 eb   cmp	x8, x20
0x10147c0fc:  60 00 00 54   b.eq	loc_10147c108 ; ⤵ 0xc
0x10147c100:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x10147c104:  7f 67 1a 94   bl	j__objc_enumerationMutation
0x10147c108:  ; loc_10147c108
0x10147c108:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10147c10c:  19 79 76 f8   ldr	x25, [x8, x22, lsl #0x3]
0x10147c110:  60 0e 47 f9   ldr	x0, [x19, #0xe18]
0x10147c114:  4f 67 1a 94   bl	j__objc_alloc
0x10147c118:  fa 03 00 aa   mov	x26, x0
0x10147c11c:  e0 03 19 aa   mov	x0, x25
0x10147c120:  70 7b 1a 94   bl	j__objc_msgSend(x0, "address")
0x10147c124:  fb 03 00 aa   mov	x27, x0
0x10147c128:  e0 03 19 aa   mov	x0, x25
0x10147c12c:  1d 92 1a 94   bl	j__objc_msgSend(x0, "connectionToken")
0x10147c130:  fc 03 00 aa   mov	x28, x0
0x10147c134:  e0 03 19 aa   mov	x0, x25
0x10147c138:  aa 11 1b 94   bl	j__objc_msgSend(x0, "primaryIndex")
0x10147c13c:  f5 03 00 aa   mov	x21, x0
0x10147c140:  e0 03 19 aa   mov	x0, x25
0x10147c144:  8f 2a 1b 94   bl	j__objc_msgSend(x0, "secondaryIndex")
0x10147c148:  e5 03 00 aa   mov	x5, x0
0x10147c14c:  e0 03 1a aa   mov	x0, x26
0x10147c150:  e2 03 1b aa   mov	x2, x27
0x10147c154:  e3 03 1c aa   mov	x3, x28
0x10147c158:  e4 03 15 aa   mov	x4, x21
0x10147c15c:  39 d5 1a 94   bl	j__objc_msgSend(x0, "initWithAddress:ltk:primaryIndex:secondaryIndex:")
0x10147c160:  48 67 1a 94   bl	j__objc_autorelease
0x10147c164:  e2 03 00 aa   mov	x2, x0
0x10147c168:  e0 03 17 aa   mov	x0, x23
0x10147c16c:  f5 79 1a 94   bl	j__objc_msgSend(x0, "addObject:")
0x10147c170:  d6 06 00 91   add	x22, x22, #0x1
0x10147c174:  1f 03 16 eb   cmp	x24, x22
0x10147c178:  c1 fb ff 54   b.ne	loc_10147c0f0 ; ⤴ -0x88
0x10147c17c:  e2 83 00 91   add	x2, sp, #0x20
0x10147c180:  e3 83 01 91   add	x3, sp, #0x60
0x10147c184:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x10147c188:  04 02 80 52   mov	w4, #0x10
0x10147c18c:  5d 95 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10147c190:  f8 03 00 aa   mov	x24, x0
0x10147c194:  c0 fa ff b5   cbnz	x0, loc_10147c0ec ; ⤴ -0xa8
0x10147c198:  ; loc_10147c198
0x10147c198:  a8 78 00 90   adrp	x8, 0x102390000
0x10147c19c:  00 d5 41 f9   ldr	x0, [x8, #0x3a8] ; __got._OBJC_CLASS_$_SPCommandKeysCriteria
0x10147c1a0:  88 aa 1a 94   bl	j__objc_msgSend(x0, "driftModeledCriteria")
0x10147c1a4:  e2 03 00 aa   mov	x2, x0
0x10147c1a8:  e0 03 40 f9   ldr	x0, [sp]
0x10147c1ac:  d5 6f 1a 94   bl	j__objc_msgSend(x0, "_cl_isEqual:")
0x10147c1b0:  f3 0b 40 f9   ldr	x19, [sp, #0x10]
0x10147c1b4:  e0 01 00 37   tbnz	w0, #0, loc_10147c1f0 ; ⤵ 0x3c
0x10147c1b8:  e0 03 13 aa   mov	x0, x19
0x10147c1bc:  09 77 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147c1c0:  38 f1 1a 94   bl	j__objc_msgSend(x0, "krMaterials")
0x10147c1c4:  47 95 1a 94   bl	j__objc_msgSend(x0, "count")
0x10147c1c8:  f5 03 00 aa   mov	x21, x0
0x10147c1cc:  e0 03 13 aa   mov	x0, x19
0x10147c1d0:  04 77 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147c1d4:  b5 00 00 b4   cbz	x21, loc_10147c1e8 ; ⤵ 0x14
0x10147c1d8:  32 f1 1a 94   bl	j__objc_msgSend(x0, "krMaterials")
0x10147c1dc:  e2 03 17 aa   mov	x2, x23
0x10147c1e0:  e8 79 1a 94   bl	j__objc_msgSend(x0, "addObjectsFromArray:")
0x10147c1e4:  03 00 00 14   b	loc_10147c1f0 ; ⤵ 0xc
0x10147c1e8:  ; loc_10147c1e8
0x10147c1e8:  e2 03 17 aa   mov	x2, x23
0x10147c1ec:  35 45 1b 94   bl	j__objc_msgSend(x0, "setKrMaterials:")
0x10147c1f0:  ; loc_10147c1f0
0x10147c1f0:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x10147c1f4:  e2 03 13 aa   mov	x2, x19
0x10147c1f8:  e3 03 17 aa   mov	x3, x23
0x10147c1fc:  49 7a 1a 94   bl	j__objc_msgSend(x0, "addPossiblePeripheralsForDevice:usingMaterials:")
0x10147c200:  ; loc_10147c200
0x10147c200:  a8 83 59 f8   ldur	x8, [fp, #-0x68]
0x10147c204:  a9 78 00 d0   adrp	x9, 0x102392000
0x10147c208:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10147c20c:  29 01 40 f9   ldr	x9, [x9]
0x10147c210:  3f 01 08 eb   cmp	x9, x8
0x10147c214:  e1 02 00 54   b.ne	loc_10147c270 ; ⤵ 0x5c
0x10147c218:  fd 7b 5b a9   ldp	fp, lr, [sp, #0x1b0]
0x10147c21c:  f4 4f 5a a9   ldp	x20, x19, [sp, #0x1a0]
0x10147c220:  f6 57 59 a9   ldp	x22, x21, [sp, #0x190]
0x10147c224:  f8 5f 58 a9   ldp	x24, x23, [sp, #0x180]
0x10147c228:  fa 67 57 a9   ldp	x26, x25, [sp, #0x170]
0x10147c22c:  fc 6f 56 a9   ldp	x28, x27, [sp, #0x160]
0x10147c230:  ff 03 07 91   add	sp, sp, #0x1c0
0x10147c234:  ff 0f 5f d6   retab
0x10147c238:  ; loc_10147c238
0x10147c238:  e9 4f 1a 94   bl	0x101b101dc
0x10147c23c:  1c fe ff 17   b	loc_10147baac ; ⤴ -0x790
0x10147c240:  ; loc_10147c240
0x10147c240:  e7 4f 1a 94   bl	0x101b101dc
0x10147c244:  47 fe ff 17   b	loc_10147bb60 ; ⤴ -0x6e4
0x10147c248:  ; loc_10147c248
0x10147c248:  e5 4f 1a 94   bl	0x101b101dc
0x10147c24c:  62 ff ff 17   b	loc_10147bfd4 ; ⤴ -0x278
0x10147c250:  ; loc_10147c250
0x10147c250:  e3 4f 1a 94   bl	0x101b101dc
0x10147c254:  10 ff ff 17   b	loc_10147be94 ; ⤴ -0x3c0
0x10147c258:  ; loc_10147c258
0x10147c258:  e1 4f 1a 94   bl	0x101b101dc
0x10147c25c:  33 ff ff 17   b	loc_10147bf28 ; ⤴ -0x334
0x10147c260:  ; loc_10147c260
0x10147c260:  df 4f 1a 94   bl	0x101b101dc
0x10147c264:  98 fe ff 17   b	loc_10147bcc4 ; ⤴ -0x5a0
0x10147c268:  ; loc_10147c268
0x10147c268:  dd 4f 1a 94   bl	0x101b101dc
0x10147c26c:  c2 fe ff 17   b	loc_10147bd74 ; ⤴ -0x4f8
0x10147c270:  ; loc_10147c270
0x10147c270:  b4 63 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager addPossiblePeripheralsForDevice:usingMaterials:]:
0x10147c274:  7f 23 03 d5   pacibsp
0x10147c278:  ff c3 07 d1   sub	sp, sp, #0x1f0
0x10147c27c:  fc 6f 19 a9   stp	x28, x27, [sp, #0x190]
0x10147c280:  fa 67 1a a9   stp	x26, x25, [sp, #0x1a0]
0x10147c284:  f8 5f 1b a9   stp	x24, x23, [sp, #0x1b0]
0x10147c288:  f6 57 1c a9   stp	x22, x21, [sp, #0x1c0]
0x10147c28c:  f4 4f 1d a9   stp	x20, x19, [sp, #0x1d0]
0x10147c290:  fd 7b 1e a9   stp	fp, lr, [sp, #0x1e0]
0x10147c294:  fd 83 07 91   add	fp, sp, #0x1e0
0x10147c298:  e9 03 03 aa   mov	x9, x3
0x10147c29c:  f4 03 02 aa   mov	x20, x2
0x10147c2a0:  f3 03 00 aa   mov	x19, x0
0x10147c2a4:  a8 78 00 d0   adrp	x8, 0x102392000
0x10147c2a8:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10147c2ac:  08 01 40 f9   ldr	x8, [x8]
0x10147c2b0:  a8 03 1a f8   stur	x8, [fp, #-0x60]
0x10147c2b4:  00 e4 00 6f   movi	v0.2d, #0
0x10147c2b8:  e0 03 03 ad   stp	q0, q0, [sp, #0x60]
0x10147c2bc:  e0 03 04 ad   stp	q0, q0, [sp, #0x80]
0x10147c2c0:  e2 83 01 91   add	x2, sp, #0x60
0x10147c2c4:  a3 83 03 d1   sub	x3, fp, #0xe0
0x10147c2c8:  e9 23 00 f9   str	x9, [sp, #0x40]
0x10147c2cc:  e0 03 09 aa   mov	x0, x9
0x10147c2d0:  04 02 80 52   mov	w4, #0x10
0x10147c2d4:  0b 95 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10147c2d8:  e0 2b 00 f9   str	x0, [sp, #0x50]
0x10147c2dc:  e0 20 00 b4   cbz	x0, loc_10147c6f8 ; ⤵ 0x41c
0x10147c2e0:  36 88 00 d0   adrp	x22, 0x102582000
0x10147c2e4:  35 88 00 d0   adrp	x21, 0x102582000
0x10147c2e8:  e8 3b 40 f9   ldr	x8, [sp, #0x70] ; data_102582000 (__DATA.__data)
0x10147c2ec:  1c 01 40 f9   ldr	x28, [x8]
0x10147c2f0:  c8 43 00 90   adrp	x8, 0x101cf4000
0x10147c2f4:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10147c2f8:  e0 03 80 3d   str	q0, [sp]
0x10147c2fc:  e8 39 00 90   adrp	x8, 0x101bb8000
0x10147c300:  00 f1 42 fd   ldr	d0, [x8, #0x5e0]
0x10147c304:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x10147c308:  c8 43 00 90   adrp	x8, 0x101cf4000
0x10147c30c:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x10147c310:  e0 07 80 3d   str	q0, [sp, #0x10]
0x10147c314:  19 00 80 d2   mov	x25, #0
0x10147c318:  e8 3b 40 f9   ldr	x8, [sp, #0x70]
0x10147c31c:  08 01 40 f9   ldr	x8, [x8]
0x10147c320:  1f 01 1c eb   cmp	x8, x28
0x10147c324:  60 00 00 54   b.eq	loc_10147c330 ; ⤵ 0xc
0x10147c328:  e0 23 40 f9   ldr	x0, [sp, #0x40]
0x10147c32c:  f5 66 1a 94   bl	j__objc_enumerationMutation
0x10147c330:  ; loc_10147c330
0x10147c330:  e8 37 40 f9   ldr	x8, [sp, #0x68]
0x10147c334:  1a 79 79 f8   ldr	x26, [x8, x25, lsl #0x3]
0x10147c338:  e0 03 1a aa   mov	x0, x26
0x10147c33c:  61 f8 1a 94   bl	j__objc_msgSend(x0, "ltk")
0x10147c340:  ad 76 00 94   bl	0x101499df4
0x10147c344:  f8 03 00 aa   mov	x24, x0
0x10147c348:  e0 03 1a aa   mov	x0, x26
0x10147c34c:  e5 7a 1a 94   bl	j__objc_msgSend(x0, "address")
0x10147c350:  9c 72 b8 97   bl	0x100298dc0
0x10147c354:  a0 1a 00 b4   cbz	x0, loc_10147c6a8 ; ⤵ 0x354
0x10147c358:  fb 03 00 aa   mov	x27, x0
0x10147c35c:  e0 03 14 aa   mov	x0, x20
0x10147c360:  d8 90 1a 94   bl	j__objc_msgSend(x0, "connectCondition")
0x10147c364:  08 04 00 d1   sub	x8, x0, #0x1
0x10147c368:  1f 05 00 f1   cmp	x8, #0x1
0x10147c36c:  48 01 00 54   b.hi	loc_10147c394 ; ⤵ 0x28
0x10147c370:  60 2a 40 f9   ldr	x0, [x19, #0x50]
0x10147c374:  e2 03 14 aa   mov	x2, x20
0x10147c378:  42 bf 1a 94   bl	j__objc_msgSend(x0, "getAddressForDevice:")
0x10147c37c:  91 72 b8 97   bl	0x100298dc0
0x10147c380:  f7 03 00 aa   mov	x23, x0
0x10147c384:  e0 03 1b aa   mov	x0, x27
0x10147c388:  e2 03 17 aa   mov	x2, x23
0x10147c38c:  d5 e9 1a 94   bl	j__objc_msgSend(x0, "isEqualToString:")
0x10147c390:  60 14 00 36   tbz	w0, #0, loc_10147c61c ; ⤵ 0x28c
0x10147c394:  ; loc_10147c394
0x10147c394:  e0 03 14 aa   mov	x0, x20
0x10147c398:  ea e9 1a 94   bl	j__objc_msgSend(x0, "isFindMyNetwork")
0x10147c39c:  e3 03 00 aa   mov	x3, x0
0x10147c3a0:  e0 03 13 aa   mov	x0, x19
0x10147c3a4:  e2 03 1a aa   mov	x2, x26
0x10147c3a8:  66 73 1a 94   bl	j__objc_msgSend(x0, "_retrievePeripheralForMaterial:isFindMyNetwork:")
0x10147c3ac:  f7 03 00 aa   mov	x23, x0
0x10147c3b0:  e0 03 1a aa   mov	x0, x26
0x10147c3b4:  f3 29 1b 94   bl	j__objc_msgSend(x0, "secondaryIndex")
0x10147c3b8:  60 00 00 b4   cbz	x0, loc_10147c3c4 ; ⤵ 0xc
0x10147c3bc:  ff 27 00 f9   str	xzr, [sp, #0x48]
0x10147c3c0:  04 00 00 14   b	loc_10147c3d0 ; ⤵ 0x10
0x10147c3c4:  ; loc_10147c3c4
0x10147c3c4:  e0 03 1a aa   mov	x0, x26
0x10147c3c8:  06 11 1b 94   bl	j__objc_msgSend(x0, "primaryIndex")
0x10147c3cc:  e0 27 00 f9   str	x0, [sp, #0x48]
0x10147c3d0:  ; loc_10147c3d0
0x10147c3d0:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x10147c3d4:  1f 05 00 b1   cmn	x8, #0x1
0x10147c3d8:  f7 2f 00 f9   str	x23, [sp, #0x58]
0x10147c3dc:  01 17 00 54   b.ne	loc_10147c6bc ; ⤵ 0x2e0
0x10147c3e0:  b7 3e 46 f9   ldr	x23, [x21, #0xc78]
0x10147c3e4:  e0 03 17 aa   mov	x0, x23
0x10147c3e8:  01 00 80 52   mov	w1, #0
0x10147c3ec:  c1 67 1a 94   bl	j__os_log_type_enabled
0x10147c3f0:  00 08 00 34   cbz	w0, loc_10147c4f0 ; ⤵ 0x100
0x10147c3f4:  e0 03 14 aa   mov	x0, x20
0x10147c3f8:  72 87 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147c3fc:  87 71 00 94   bl	0x101498a18
0x10147c400:  e0 1f 00 f9   str	x0, [sp, #0x38]
0x10147c404:  e0 03 14 aa   mov	x0, x20
0x10147c408:  76 76 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147c40c:  85 d0 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147c410:  82 71 00 94   bl	0x101498a18
0x10147c414:  e0 1b 00 f9   str	x0, [sp, #0x30]
0x10147c418:  e0 2f 40 f9   ldr	x0, [sp, #0x58]
0x10147c41c:  81 d0 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147c420:  7e 71 00 94   bl	0x101498a18
0x10147c424:  f5 03 16 aa   mov	x21, x22
0x10147c428:  f6 03 00 aa   mov	x22, x0
0x10147c42c:  e0 03 1a aa   mov	x0, x26
0x10147c430:  d4 29 1b 94   bl	j__objc_msgSend(x0, "secondaryIndex")
0x10147c434:  e1 03 18 aa   mov	x1, x24
0x10147c438:  f8 03 1c aa   mov	x24, x28
0x10147c43c:  fc 03 13 aa   mov	x28, x19
0x10147c440:  f3 03 14 aa   mov	x19, x20
0x10147c444:  f4 03 00 aa   mov	x20, x0
0x10147c448:  e0 03 01 aa   mov	x0, x1
0x10147c44c:  fd 6c 1a 94   bl	j__objc_msgSend(x0, "UTF8String")
0x10147c450:  e0 0b c0 3d   ldr	q0, [sp, #0x20]
0x10147c454:  e0 a3 00 bd   str	s0, [sp, #0xa0]
0x10147c458:  ff a7 00 b9   str	wzr, [sp, #0xa4]
0x10147c45c:  48 04 81 52   mov	w8, #0x822
0x10147c460:  e8 53 01 79   strh	w8, [sp, #0xa8]
0x10147c464:  89 51 00 d0   adrp	x9, 0x101eae000
0x10147c468:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)

