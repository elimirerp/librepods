0x1002fcaa0:  2c 46 14 94   bl	j___os_log_impl
0x1002fcaa4:  08 03 84 52   mov	w8, #0x2018
0x1002fcaa8:  bf 02 08 6b   cmp	w21, w8
0x1002fcaac:  0d 02 00 54   b.le	loc_1002fcaec ; ⤵ 0x40
0x1002fcab0:  48 03 84 52   mov	w8, #0x201a
0x1002fcab4:  bf 02 08 6b   cmp	w21, w8
0x1002fcab8:  0d 04 00 54   b.le	loc_1002fcb38 ; ⤵ 0x80
0x1002fcabc:  68 03 84 52   mov	w8, #0x201b
0x1002fcac0:  bf 02 08 6b   cmp	w21, w8
0x1002fcac4:  80 05 00 54   b.eq	loc_1002fcb74 ; ⤵ 0xb0
0x1002fcac8:  08 04 84 52   mov	w8, #0x2020
0x1002fcacc:  bf 02 08 6b   cmp	w21, w8
0x1002fcad0:  e0 05 00 54   b.eq	loc_1002fcb8c ; ⤵ 0xbc
0x1002fcad4:  28 04 84 52   mov	w8, #0x2021
0x1002fcad8:  bf 02 08 6b   cmp	w21, w8
0x1002fcadc:  e1 09 00 54   b.ne	loc_1002fcc18 ; ⤵ 0x13c
0x1002fcae0:  a8 3c 00 b0   adrp	x8, 0x100a91000
0x1002fcae4:  08 a1 0d 91   add	x8, x8, #0x368 ; sel__hciLeRemoteConnectionParameterRequestNegativeReply:
0x1002fcae8:  2b 00 00 14   b	loc_1002fcb94 ; ⤵ 0xac
0x1002fcaec:  ; loc_1002fcaec
0x1002fcaec:  48 02 84 52   mov	w8, #0x2012
0x1002fcaf0:  bf 02 08 6b   cmp	w21, w8
0x1002fcaf4:  0c 01 00 54   b.gt	loc_1002fcb14 ; ⤵ 0x20
0x1002fcaf8:  bf 1a 10 71   cmp	w21, #0x406
0x1002fcafc:  00 03 00 54   b.eq	loc_1002fcb5c ; ⤵ 0x60
0x1002fcb00:  bf 76 10 71   cmp	w21, #0x41d
0x1002fcb04:  a1 08 00 54   b.ne	loc_1002fcc18 ; ⤵ 0x114
0x1002fcb08:  a8 3c 00 b0   adrp	x8, 0x100a91000
0x1002fcb0c:  08 c1 0c 91   add	x8, x8, #0x330 ; sel__hciReadRemoteVersion:
0x1002fcb10:  21 00 00 14   b	loc_1002fcb94 ; ⤵ 0x84
0x1002fcb14:  ; loc_1002fcb14
0x1002fcb14:  68 02 84 52   mov	w8, #0x2013
0x1002fcb18:  bf 02 08 6b   cmp	w21, w8
0x1002fcb1c:  60 02 00 54   b.eq	loc_1002fcb68 ; ⤵ 0x4c
0x1002fcb20:  c8 02 84 52   mov	w8, #0x2016
0x1002fcb24:  bf 02 08 6b   cmp	w21, w8
0x1002fcb28:  81 07 00 54   b.ne	loc_1002fcc18 ; ⤵ 0xf0
0x1002fcb2c:  a8 3c 00 b0   adrp	x8, 0x100a91000
0x1002fcb30:  08 e1 0c 91   add	x8, x8, #0x338 ; sel__hciLeReadRemoteFeatures:
0x1002fcb34:  18 00 00 14   b	loc_1002fcb94 ; ⤵ 0x60
0x1002fcb38:  ; loc_1002fcb38
0x1002fcb38:  28 03 84 52   mov	w8, #0x2019
0x1002fcb3c:  bf 02 08 6b   cmp	w21, w8
0x1002fcb40:  00 02 00 54   b.eq	loc_1002fcb80 ; ⤵ 0x40
0x1002fcb44:  48 03 84 52   mov	w8, #0x201a
0x1002fcb48:  bf 02 08 6b   cmp	w21, w8
0x1002fcb4c:  61 06 00 54   b.ne	loc_1002fcc18 ; ⤵ 0xcc
0x1002fcb50:  a8 3c 00 b0   adrp	x8, 0x100a91000
0x1002fcb54:  08 41 0d 91   add	x8, x8, #0x350 ; sel__hciLeLongTermKeyRequestReply:
0x1002fcb58:  0f 00 00 14   b	loc_1002fcb94 ; ⤵ 0x3c
0x1002fcb5c:  ; loc_1002fcb5c
0x1002fcb5c:  a8 3c 00 b0   adrp	x8, 0x100a91000
0x1002fcb60:  08 a1 0c 91   add	x8, x8, #0x328 ; sel__hciDisconnect:
0x1002fcb64:  0c 00 00 14   b	loc_1002fcb94 ; ⤵ 0x30
0x1002fcb68:  ; loc_1002fcb68
0x1002fcb68:  a8 3c 00 b0   adrp	x8, 0x100a91000
0x1002fcb6c:  08 01 0d 91   add	x8, x8, #0x340 ; sel__hciLeConnectionUpdate:
0x1002fcb70:  09 00 00 14   b	loc_1002fcb94 ; ⤵ 0x24
0x1002fcb74:  ; loc_1002fcb74
0x1002fcb74:  a8 3c 00 b0   adrp	x8, 0x100a91000
0x1002fcb78:  08 61 0d 91   add	x8, x8, #0x358 ; sel__hciLeLongTermKeyRequestNegativeReply:
0x1002fcb7c:  06 00 00 14   b	loc_1002fcb94 ; ⤵ 0x18
0x1002fcb80:  ; loc_1002fcb80
0x1002fcb80:  a8 3c 00 b0   adrp	x8, 0x100a91000
0x1002fcb84:  08 21 0d 91   add	x8, x8, #0x348 ; sel__hciLeEnableEncryption:
0x1002fcb88:  03 00 00 14   b	loc_1002fcb94 ; ⤵ 0xc
0x1002fcb8c:  ; loc_1002fcb8c
0x1002fcb8c:  a8 3c 00 b0   adrp	x8, 0x100a91000
0x1002fcb90:  08 81 0d 91   add	x8, x8, #0x360 ; sel__hciLeRemoteConnectionParameterRequestReply:
0x1002fcb94:  ; loc_1002fcb94
0x1002fcb94:  16 01 40 f9   ldr	x22, [x8]
0x1002fcb98:  a8 39 00 d0   adrp	x8, 0x100a32000
0x1002fcb9c:  00 c5 42 f9   ldr	x0, [x8, #0x588] ; __got._OBJC_CLASS_$_NSNumber
0x1002fcba0:  e2 03 15 aa   mov	x2, x21
0x1002fcba4:  e7 7a 14 94   bl	j__objc_msgSend(x0, "numberWithInt:")
0x1002fcba8:  fd 03 1d aa   mov	fp, fp
0x1002fcbac:  fd 49 14 94   bl	j__objc_retainAutoreleasedReturnValue
0x1002fcbb0:  f5 03 00 aa   mov	x21, x0
0x1002fcbb4:  80 36 40 f9   ldr	x0, [x20, #0x68]
0x1002fcbb8:  80 00 00 b4   cbz	x0, loc_1002fcbc8 ; ⤵ 0x10
0x1002fcbbc:  e2 03 13 aa   mov	x2, x19
0x1002fcbc0:  e3 03 15 aa   mov	x3, x21
0x1002fcbc4:  df 8e 14 94   bl	j__objc_msgSend(x0, "setObject:forKeyedSubscript:")
0x1002fcbc8:  ; loc_1002fcbc8
0x1002fcbc8:  e0 03 14 aa   mov	x0, x20
0x1002fcbcc:  e1 03 16 aa   mov	x1, x22
0x1002fcbd0:  e2 03 13 aa   mov	x2, x19
0x1002fcbd4:  cf 49 14 94   bl	j__objc_msgSend
0x1002fcbd8:  e0 03 15 aa   mov	x0, x21
0x1002fcbdc:  e5 49 14 94   bl	j__objc_release
0x1002fcbe0:  ; loc_1002fcbe0
0x1002fcbe0:  e0 03 13 aa   mov	x0, x19
0x1002fcbe4:  e3 49 14 94   bl	j__objc_release
0x1002fcbe8:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x1002fcbec:  a9 39 00 d0   adrp	x9, 0x100a32000
0x1002fcbf0:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x1002fcbf4:  29 01 40 f9   ldr	x9, [x9]
0x1002fcbf8:  3f 01 08 eb   cmp	x9, x8
0x1002fcbfc:  e1 01 00 54   b.ne	loc_1002fcc38 ; ⤵ 0x3c
0x1002fcc00:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x1002fcc04:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x1002fcc08:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x1002fcc0c:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x1002fcc10:  ff c3 01 91   add	sp, sp, #0x70
0x1002fcc14:  ff 0f 5f d6   retab
0x1002fcc18:  ; loc_1002fcc18
0x1002fcc18:  f4 02 40 f9   ldr	x20, [x23]
0x1002fcc1c:  e0 03 14 aa   mov	x0, x20
0x1002fcc20:  01 02 80 52   mov	w1, #0x10
0x1002fcc24:  83 4a 14 94   bl	j__os_log_type_enabled
0x1002fcc28:  c0 fd ff 34   cbz	w0, loc_1002fcbe0 ; ⤴ -0x48
0x1002fcc2c:  e0 03 14 aa   mov	x0, x20
0x1002fcc30:  12 28 13 94   bl	0x1007c6c78
0x1002fcc34:  eb ff ff 17   b	loc_1002fcbe0 ; ⤴ -0x54
0x1002fcc38:  ; loc_1002fcc38
0x1002fcc38:  96 45 14 94   bl	j____stack_chk_fail
0x1002fcc3c:  f4 03 00 aa   mov	x20, x0
0x1002fcc40:  04 00 00 14   b	loc_1002fcc50 ; ⤵ 0x10
0x1002fcc44:  f4 03 00 aa   mov	x20, x0
0x1002fcc48:  e0 03 15 aa   mov	x0, x21
0x1002fcc4c:  c9 49 14 94   bl	j__objc_release
0x1002fcc50:  ; loc_1002fcc50
0x1002fcc50:  e0 03 13 aa   mov	x0, x19
0x1002fcc54:  c7 49 14 94   bl	j__objc_release
0x1002fcc58:  02 00 00 14   b	loc_1002fcc60 ; ⤵ 0x8
0x1002fcc5c:  f4 03 00 aa   mov	x20, x0
0x1002fcc60:  ; loc_1002fcc60
0x1002fcc60:  e0 03 14 aa   mov	x0, x20
0x1002fcc64:  1f 44 14 94   bl	j___Unwind_Resume

-[BTVCConnection _hciDisconnect:]:
0x1002fcc68:  7f 23 03 d5   pacibsp
0x1002fcc6c:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1002fcc70:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1002fcc74:  fd 43 00 91   add	fp, sp, #0x10
0x1002fcc78:  f3 03 02 aa   mov	x19, x2
0x1002fcc7c:  f4 03 00 aa   mov	x20, x0
0x1002fcc80:  e0 03 02 aa   mov	x0, x2
0x1002fcc84:  bf 49 14 94   bl	j__objc_retain
0x1002fcc88:  e0 03 14 aa   mov	x0, x20
0x1002fcc8c:  c2 80 80 52   mov	w2, #0x406
0x1002fcc90:  14 56 14 94   bl	j__objc_msgSend(x0, "_sendHciCommandStatusEvent:")
0x1002fcc94:  e0 03 13 aa   mov	x0, x19
0x1002fcc98:  be 49 14 94   bl	j__objc_retainAutorelease
0x1002fcc9c:  89 62 14 94   bl	j__objc_msgSend(x0, "bytes")
0x1002fcca0:  88 2e 40 f9   ldr	x8, [x20, #0x58]
0x1002fcca4:  88 00 00 b4   cbz	x8, loc_1002fccb4 ; ⤵ 0x10
0x1002fcca8:  02 08 40 39   ldrb	w2, [x0, #0x2]
0x1002fccac:  e0 03 08 aa   mov	x0, x8
0x1002fccb0:  8c 83 14 94   bl	j__objc_msgSend(x0, "sendTerminateInd:")
0x1002fccb4:  ; loc_1002fccb4
0x1002fccb4:  e0 03 13 aa   mov	x0, x19
0x1002fccb8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1002fccbc:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1002fccc0:  ff 23 03 d5   autibsp
0x1002fccc4:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1002fccc8:  50 00 f0 b6   tbz	x16, #0x3e, loc_1002fccd0 ; ⤵ 0x8
0x1002fcccc:  20 8e 38 d4   brk	#0xc471
0x1002fccd0:  ; loc_1002fccd0
0x1002fccd0:  a8 49 14 14   b	j__objc_release
0x1002fccd4:  02 00 00 14   b	loc_1002fccdc ; ⤵ 0x8
0x1002fccd8:  01 00 00 14   b	loc_1002fccdc ; ⤵ 0x4
0x1002fccdc:  ; loc_1002fccdc
0x1002fccdc:  f4 03 00 aa   mov	x20, x0
0x1002fcce0:  e0 03 13 aa   mov	x0, x19
0x1002fcce4:  a3 49 14 94   bl	j__objc_release
0x1002fcce8:  e0 03 14 aa   mov	x0, x20
0x1002fccec:  fd 43 14 94   bl	j___Unwind_Resume

-[BTVCConnection _hciReadRemoteVersion:]:
0x1002fccf0:  7f 23 03 d5   pacibsp
0x1002fccf4:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!

