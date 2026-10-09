
-[CLDurianDevice didReceiveHawkeyeData:withCharacteristic:error:]:
0x10145bc94:  7f 23 03 d5   pacibsp
0x10145bc98:  ff c3 02 d1   sub	sp, sp, #0xb0
0x10145bc9c:  fc 6f 05 a9   stp	x28, x27, [sp, #0x50]
0x10145bca0:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x10145bca4:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x10145bca8:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x10145bcac:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x10145bcb0:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x10145bcb4:  fd 83 02 91   add	fp, sp, #0xa0
0x10145bcb8:  f3 03 00 aa   mov	x19, x0
0x10145bcbc:  a8 79 00 f0   adrp	x8, 0x102392000
0x10145bcc0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10145bcc4:  08 01 40 f9   ldr	x8, [x8]
0x10145bcc8:  e8 27 00 f9   str	x8, [sp, #0x48]
0x10145bccc:  c4 06 00 b4   cbz	x4, loc_10145bda4 ; ⤵ 0xd8
0x10145bcd0:  f4 03 04 aa   mov	x20, x4
0x10145bcd4:  28 89 00 f0   adrp	x8, 0x102582000
0x10145bcd8:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10145bcdc:  1f 05 00 b1   cmn	x8, #0x1
0x10145bce0:  a1 69 00 54   b.ne	loc_10145ca14 ; ⤵ 0xd34
0x10145bce4:  28 89 00 f0   adrp	x8, 0x102582000
0x10145bce8:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10145bcec:  e0 03 15 aa   mov	x0, x21
0x10145bcf0:  01 00 80 52   mov	w1, #0
0x10145bcf4:  7f e9 1a 94   bl	j__os_log_type_enabled
0x10145bcf8:  40 03 00 34   cbz	w0, loc_10145bd60 ; ⤵ 0x68
0x10145bcfc:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145bd00:  46 f3 00 94   bl	0x101498a18
0x10145bd04:  c8 44 00 b0   adrp	x8, 0x101cf4000
0x10145bd08:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10145bd0c:  e0 03 00 bd   str	s0, [sp]
0x10145bd10:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145bd14:  48 04 81 52   mov	w8, #0x822
0x10145bd18:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145bd1c:  88 52 00 f0   adrp	x8, 0x101eae000
0x10145bd20:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145bd24:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145bd28:  28 08 81 52   mov	w8, #0x841
0x10145bd2c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145bd30:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10145bd34:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145bd38:  f4 e3 01 f8   stur	x20, [sp, #0x1e]
0x10145bd3c:  20 5d ff b0   adrp	x0, 0x100000000
0x10145bd40:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145bd44:  c3 70 00 d0   adrp	x3, 0x102275000
0x10145bd48:  63 cc 2a 91   add	x3, x3, #0xab3 ; "{\"msg%{public}.0s\":\"#durian #hawkeye didReceiveHawkeyeData error\", \"item\":%{private, location:escape_only}@, \"error\":%{private, location:escape_only}@}"
0x10145bd4c:  e4 03 00 91   mov	x4, sp
0x10145bd50:  e1 03 15 aa   mov	x1, x21
0x10145bd54:  02 00 80 52   mov	w2, #0
0x10145bd58:  c5 04 80 52   mov	w5, #0x26
0x10145bd5c:  25 e5 1a 94   bl	j___os_log_impl
0x10145bd60:  ; loc_10145bd60
0x10145bd60:  e0 03 13 aa   mov	x0, x19
0x10145bd64:  22 00 80 52   mov	w2, #0x1
0x10145bd68:  a6 4a 1b 94   bl	j__objc_msgSend(x0, "handleInvalidData:")
0x10145bd6c:  ; loc_10145bd6c
0x10145bd6c:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x10145bd70:  a9 79 00 f0   adrp	x9, 0x102392000
0x10145bd74:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10145bd78:  29 01 40 f9   ldr	x9, [x9]
0x10145bd7c:  3f 01 08 eb   cmp	x9, x8
0x10145bd80:  e1 66 00 54   b.ne	loc_10145ca5c ; ⤵ 0xcdc
0x10145bd84:  fd 7b 4a a9   ldp	fp, lr, [sp, #0xa0]
0x10145bd88:  f4 4f 49 a9   ldp	x20, x19, [sp, #0x90]
0x10145bd8c:  f6 57 48 a9   ldp	x22, x21, [sp, #0x80]
0x10145bd90:  f8 5f 47 a9   ldp	x24, x23, [sp, #0x70]
0x10145bd94:  fa 67 46 a9   ldp	x26, x25, [sp, #0x60]
0x10145bd98:  fc 6f 45 a9   ldp	x28, x27, [sp, #0x50]
0x10145bd9c:  ff c3 02 91   add	sp, sp, #0xb0
0x10145bda0:  ff 0f 5f d6   retab
0x10145bda4:  ; loc_10145bda4
0x10145bda4:  f6 03 03 aa   mov	x22, x3
0x10145bda8:  f5 03 02 aa   mov	x21, x2
0x10145bdac:  e0 03 02 aa   mov	x0, x2
0x10145bdb0:  8c 75 1b 94   bl	j__objc_msgSend(x0, "length")
0x10145bdb4:  00 2a 00 b4   cbz	x0, loc_10145c2f4 ; ⤵ 0x540
0x10145bdb8:  e0 03 13 aa   mov	x0, x19
0x10145bdbc:  91 f8 1a 94   bl	j__objc_msgSend(x0, "activeTask")
0x10145bdc0:  f4 03 00 aa   mov	x20, x0
0x10145bdc4:  40 03 00 b4   cbz	x0, loc_10145be2c ; ⤵ 0x68
0x10145bdc8:  08 82 00 90   adrp	x8, 0x10249b000
0x10145bdcc:  02 d1 44 f9   ldr	x2, [x8, #0x9a0] ; proto_CLGATTTaskInformationProtocol
0x10145bdd0:  e0 03 14 aa   mov	x0, x20
0x10145bdd4:  2b 12 1b 94   bl	j__objc_msgSend(x0, "conformsToProtocol:")
0x10145bdd8:  40 07 00 36   tbz	w0, #0, loc_10145bec0 ; ⤵ 0xe8
0x10145bddc:  e0 03 14 aa   mov	x0, x20
0x10145bde0:  50 af 1b 94   bl	j__objc_msgSend(x0, "serviceUUID")
0x10145bde4:  f7 03 00 aa   mov	x23, x0
0x10145bde8:  e0 03 16 aa   mov	x0, x22
0x10145bdec:  2d af 1b 94   bl	j__objc_msgSend(x0, "service")
0x10145bdf0:  9c ee 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145bdf4:  e2 03 00 aa   mov	x2, x0
0x10145bdf8:  e0 03 17 aa   mov	x0, x23
0x10145bdfc:  d9 6a 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x10145be00:  60 01 00 34   cbz	w0, loc_10145be2c ; ⤵ 0x2c
0x10145be04:  e0 03 14 aa   mov	x0, x20
0x10145be08:  fe 08 1b 94   bl	j__objc_msgSend(x0, "characteristicUUID")
0x10145be0c:  f7 03 00 aa   mov	x23, x0
0x10145be10:  e0 03 16 aa   mov	x0, x22
0x10145be14:  93 ee 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145be18:  e2 03 00 aa   mov	x2, x0
0x10145be1c:  e0 03 17 aa   mov	x0, x23
0x10145be20:  d0 6a 1b 94   bl	j__objc_msgSend(x0, "isEqual:")
0x10145be24:  f8 03 00 aa   mov	x24, x0
0x10145be28:  02 00 00 14   b	loc_10145be30 ; ⤵ 0x8
0x10145be2c:  ; loc_10145be2c
0x10145be2c:  18 00 80 52   mov	w24, #0
0x10145be30:  ; loc_10145be30
0x10145be30:  e0 03 15 aa   mov	x0, x21
0x10145be34:  83 05 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x10145be38:  f7 03 00 aa   mov	x23, x0
0x10145be3c:  19 00 40 39   ldrb	w25, [x0]
0x10145be40:  99 0c 00 34   cbz	w25, loc_10145bfd0 ; ⤵ 0x190
0x10145be44:  3f 07 00 71   cmp	w25, #0x1
0x10145be48:  21 10 00 54   b.ne	loc_10145c04c ; ⤵ 0x204
0x10145be4c:  7c 42 41 79   ldrh	w28, [x19, #0xa0]
0x10145be50:  9f 03 00 71   cmp	w28, #0
0x10145be54:  e8 07 9f 1a   cset	w8, ne
0x10145be58:  16 01 18 0a   and	w22, w8, w24
0x10145be5c:  e0 03 15 aa   mov	x0, x21
0x10145be60:  60 75 1b 94   bl	j__objc_msgSend(x0, "length")
0x10145be64:  f6 13 00 36   tbz	w22, #0, loc_10145c0e0 ; ⤵ 0x27c
0x10145be68:  03 04 00 d1   sub	x3, x0, #0x1
0x10145be6c:  e0 03 15 aa   mov	x0, x21
0x10145be70:  22 00 80 52   mov	w2, #0x1
0x10145be74:  fb f0 1b 94   bl	j__objc_msgSend(x0, "subdataWithRange:")
0x10145be78:  f6 03 00 aa   mov	x22, x0
0x10145be7c:  e8 02 40 39   ldrb	w8, [x23]
0x10145be80:  e8 03 00 39   strb	w8, [sp]
0x10145be84:  68 42 41 79   ldrh	w8, [x19, #0xa0]
0x10145be88:  e8 13 00 78   sturh	w8, [sp, #0x1]
0x10145be8c:  a8 79 00 d0   adrp	x8, 0x102391000
0x10145be90:  00 45 44 f9   ldr	x0, [x8, #0x888] ; __got._OBJC_CLASS_$_NSMutableData
0x10145be94:  e2 03 00 91   mov	x2, sp
0x10145be98:  63 00 80 52   mov	w3, #0x3
0x10145be9c:  e9 1b 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x10145bea0:  f5 03 00 aa   mov	x21, x0
0x10145bea4:  e2 03 16 aa   mov	x2, x22
0x10145bea8:  76 fe 1a 94   bl	j__objc_msgSend(x0, "appendData:")
0x10145beac:  e0 03 15 aa   mov	x0, x21
0x10145beb0:  64 05 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x10145beb4:  f7 03 00 aa   mov	x23, x0
0x10145beb8:  7f 42 01 79   strh	wzr, [x19, #0xa0]
0x10145bebc:  8c 00 00 14   b	loc_10145c0ec ; ⤵ 0x230
0x10145bec0:  ; loc_10145bec0
0x10145bec0:  36 89 00 f0   adrp	x22, 0x102582000
0x10145bec4:  c8 3a 46 f9   ldr	x8, [x22, #0xc70] ; data_102582c70 (__DATA.__data)
0x10145bec8:  1f 05 00 b1   cmn	x8, #0x1
0x10145becc:  81 5a 00 54   b.ne	loc_10145ca1c ; ⤵ 0xb50
0x10145bed0:  37 89 00 f0   adrp	x23, 0x102582000
0x10145bed4:  f4 3e 46 f9   ldr	x20, [x23, #0xc78] ; data_102582c78 (__DATA.__data)
0x10145bed8:  e0 03 14 aa   mov	x0, x20
0x10145bedc:  21 02 80 52   mov	w1, #0x11
0x10145bee0:  04 e9 1a 94   bl	j__os_log_type_enabled
0x10145bee4:  d5 44 00 b0   adrp	x21, 0x101cf4000
0x10145bee8:  40 03 00 34   cbz	w0, loc_10145bf50 ; ⤵ 0x68
0x10145beec:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145bef0:  ca f2 00 94   bl	0x101498a18
0x10145bef4:  a0 fe 47 fd   ldr	d0, [x21, #0xff8]
0x10145bef8:  e0 03 00 bd   str	s0, [sp]
0x10145befc:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145bf00:  48 04 81 52   mov	w8, #0x822
0x10145bf04:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145bf08:  88 52 00 f0   adrp	x8, 0x101eae000
0x10145bf0c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145bf10:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145bf14:  28 08 81 52   mov	w8, #0x841
0x10145bf18:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145bf1c:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10145bf20:  20 5d ff b0   adrp	x0, 0x100000000
0x10145bf24:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145bf28:  c3 70 00 d0   adrp	x3, 0x102275000
0x10145bf2c:  63 2c 2d 91   add	x3, x3, #0xb4b ; "{\"msg%{public}.0s\":\"#durian #hawkeye trying to handle new data but current active task doesn't conform to CLGATTTaskInformationProtocol\", \"item\":%{private, location:escape_only}@}"
0x10145bf30:  e4 03 00 91   mov	x4, sp
0x10145bf34:  e1 03 14 aa   mov	x1, x20
0x10145bf38:  22 02 80 52   mov	w2, #0x11
0x10145bf3c:  85 03 80 52   mov	w5, #0x1c
0x10145bf40:  ac e4 1a 94   bl	j___os_log_impl
0x10145bf44:  c8 3a 46 f9   ldr	x8, [x22, #0xc70]
0x10145bf48:  1f 05 00 b1   cmn	x8, #0x1
0x10145bf4c:  c1 56 00 54   b.ne	loc_10145ca24 ; ⤵ 0xad8
0x10145bf50:  ; loc_10145bf50
0x10145bf50:  f4 3e 46 f9   ldr	x20, [x23, #0xc78]
0x10145bf54:  e0 03 14 aa   mov	x0, x20
0x10145bf58:  ea e8 1a 94   bl	j__os_signpost_enabled
0x10145bf5c:  20 f0 ff 34   cbz	w0, loc_10145bd60 ; ⤴ -0x1fc
0x10145bf60:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145bf64:  ad f2 00 94   bl	0x101498a18
0x10145bf68:  a0 fe 47 fd   ldr	d0, [x21, #0xff8]
0x10145bf6c:  e0 03 00 bd   str	s0, [sp]
0x10145bf70:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145bf74:  48 04 81 52   mov	w8, #0x822
0x10145bf78:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145bf7c:  88 52 00 f0   adrp	x8, 0x101eae000
0x10145bf80:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145bf84:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145bf88:  28 08 81 52   mov	w8, #0x841
0x10145bf8c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145bf90:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10145bf94:  20 5d ff b0   adrp	x0, 0x100000000
0x10145bf98:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145bf9c:  c4 70 00 d0   adrp	x4, 0x102275000
0x10145bfa0:  84 fc 2f 91   add	x4, x4, #0xbff ; "#durian #hawkeye trying to handle new data but current active task doesn't conform to CLGATTTaskInformationProtocol"
0x10145bfa4:  c5 70 00 d0   adrp	x5, 0x102275000
0x10145bfa8:  a5 2c 2d 91   add	x5, x5, #0xb4b ; "{\"msg%{public}.0s\":\"#durian #hawkeye trying to handle new data but current active task doesn't conform to CLGATTTaskInformationProtocol\", \"item\":%{private, location:escape_only}@}"
0x10145bfac:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x10145bfb0:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x10145bfb4:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x10145bfb8:  e6 03 00 91   mov	x6, sp
0x10145bfbc:  e1 03 14 aa   mov	x1, x20
0x10145bfc0:  02 00 80 52   mov	w2, #0
0x10145bfc4:  87 03 80 52   mov	w7, #0x1c
0x10145bfc8:  92 e4 1a 94   bl	j___os_signpost_emit_with_name_impl
0x10145bfcc:  65 ff ff 17   b	loc_10145bd60 ; ⤴ -0x26c
0x10145bfd0:  ; loc_10145bfd0
0x10145bfd0:  d8 0a 00 36   tbz	w24, #0, loc_10145c128 ; ⤵ 0x158
0x10145bfd4:  76 42 41 79   ldrh	w22, [x19, #0xa0]
0x10145bfd8:  e0 03 15 aa   mov	x0, x21
0x10145bfdc:  01 75 1b 94   bl	j__objc_msgSend(x0, "length")
0x10145bfe0:  76 18 00 34   cbz	w22, loc_10145c2ec ; ⤵ 0x30c
0x10145bfe4:  03 04 00 d1   sub	x3, x0, #0x1
0x10145bfe8:  e0 03 15 aa   mov	x0, x21
0x10145bfec:  22 00 80 52   mov	w2, #0x1
0x10145bff0:  9c f0 1b 94   bl	j__objc_msgSend(x0, "subdataWithRange:")
0x10145bff4:  e3 03 00 aa   mov	x3, x0
0x10145bff8:  60 62 41 f9   ldr	x0, [x19, #0x2c0]
0x10145bffc:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x10145c000:  a9 79 00 d0   adrp	x9, 0x102392000
0x10145c004:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10145c008:  29 01 40 f9   ldr	x9, [x9]
0x10145c00c:  3f 01 08 eb   cmp	x9, x8
0x10145c010:  61 52 00 54   b.ne	loc_10145ca5c ; ⤵ 0xa4c
0x10145c014:  e2 03 13 aa   mov	x2, x19
0x10145c018:  e4 03 14 aa   mov	x4, x20
0x10145c01c:  fd 7b 4a a9   ldp	fp, lr, [sp, #0xa0]
0x10145c020:  f4 4f 49 a9   ldp	x20, x19, [sp, #0x90]
0x10145c024:  f6 57 48 a9   ldp	x22, x21, [sp, #0x80]
0x10145c028:  f8 5f 47 a9   ldp	x24, x23, [sp, #0x70]
0x10145c02c:  fa 67 46 a9   ldp	x26, x25, [sp, #0x60]
0x10145c030:  fc 6f 45 a9   ldp	x28, x27, [sp, #0x50]
0x10145c034:  ff c3 02 91   add	sp, sp, #0xb0
0x10145c038:  ff 23 03 d5   autibsp
0x10145c03c:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10145c040:  50 00 f0 b6   tbz	x16, #0x3e, loc_10145c048 ; ⤵ 0x8
0x10145c044:  20 8e 38 d4   brk	#0xc471
0x10145c048:  ; loc_10145c048
0x10145c048:  2e 20 1b 14   b	j__objc_msgSend(x0, "device:didReceiveHawkeyeDataFragment:duringActiveTask:")
0x10145c04c:  ; loc_10145c04c
0x10145c04c:  28 89 00 d0   adrp	x8, 0x102582000
0x10145c050:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10145c054:  1f 05 00 b1   cmn	x8, #0x1
0x10145c058:  a1 4e 00 54   b.ne	loc_10145ca2c ; ⤵ 0x9d4
0x10145c05c:  28 89 00 d0   adrp	x8, 0x102582000
0x10145c060:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10145c064:  e0 03 14 aa   mov	x0, x20
0x10145c068:  01 00 80 52   mov	w1, #0
0x10145c06c:  a1 e8 1a 94   bl	j__os_log_type_enabled
0x10145c070:  e0 e7 ff 34   cbz	w0, loc_10145bd6c ; ⤴ -0x304
0x10145c074:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c078:  68 f2 00 94   bl	0x101498a18
0x10145c07c:  c8 44 00 90   adrp	x8, 0x101cf4000
0x10145c080:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10145c084:  e0 03 00 bd   str	s0, [sp]
0x10145c088:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c08c:  48 04 81 52   mov	w8, #0x822
0x10145c090:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145c094:  88 52 00 d0   adrp	x8, 0x101eae000
0x10145c098:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145c09c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145c0a0:  28 08 81 52   mov	w8, #0x841
0x10145c0a4:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145c0a8:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10145c0ac:  28 80 80 52   mov	w8, #0x401
0x10145c0b0:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145c0b4:  f9 e3 01 b8   stur	w25, [sp, #0x1e]
0x10145c0b8:  20 5d ff 90   adrp	x0, 0x100000000
0x10145c0bc:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145c0c0:  c3 70 00 b0   adrp	x3, 0x102275000
0x10145c0c4:  63 84 39 91   add	x3, x3, #0xe61 ; "{\"msg%{public}.0s\":\"#durian #hawkeye unexpected fragmentation\", \"item\":%{private, location:escape_only}@, \"fragementStatus\":%{private}d}"
0x10145c0c8:  e4 03 00 91   mov	x4, sp
0x10145c0cc:  e1 03 14 aa   mov	x1, x20
0x10145c0d0:  02 00 80 52   mov	w2, #0
0x10145c0d4:  45 04 80 52   mov	w5, #0x22
0x10145c0d8:  46 e4 1a 94   bl	j___os_log_impl
0x10145c0dc:  24 ff ff 17   b	loc_10145bd6c ; ⤴ -0x370
0x10145c0e0:  ; loc_10145c0e0
0x10145c0e0:  1f 08 00 f1   cmp	x0, #0x2
0x10145c0e4:  89 10 00 54   b.ls	loc_10145c2f4 ; ⤵ 0x210
0x10145c0e8:  fc 12 40 78   ldurh	w28, [x23, #0x1]
0x10145c0ec:  ; loc_10145c0ec
0x10145c0ec:  e0 03 13 aa   mov	x0, x19
0x10145c0f0:  04 50 1b 94   bl	j__objc_msgSend(x0, "hawkeyeTestMode")
0x10145c0f4:  00 14 00 34   cbz	w0, loc_10145c374 ; ⤵ 0x280
0x10145c0f8:  e8 12 40 78   ldurh	w8, [x23, #0x1]
0x10145c0fc:  1f 29 08 71   cmp	w8, #0x20a
0x10145c100:  e1 12 00 54   b.ne	loc_10145c35c ; ⤵ 0x25c
0x10145c104:  e0 03 13 aa   mov	x0, x19
0x10145c108:  fe 4f 1b 94   bl	j__objc_msgSend(x0, "hawkeyeTestMode")
0x10145c10c:  1f 14 00 71   cmp	w0, #0x5
0x10145c110:  a1 11 00 54   b.ne	loc_10145c344 ; ⤵ 0x234
0x10145c114:  1b e9 1a 94   bl	j__rand
0x10145c118:  e0 06 00 39   strb	w0, [x23, #0x1]
0x10145c11c:  19 e9 1a 94   bl	j__rand
0x10145c120:  e0 0a 00 39   strb	w0, [x23, #0x2]
0x10145c124:  8e 00 00 14   b	loc_10145c35c ; ⤵ 0x238
0x10145c128:  ; loc_10145c128
0x10145c128:  3b 89 00 d0   adrp	x27, 0x102582000
0x10145c12c:  68 3b 46 f9   ldr	x8, [x27, #0xc70] ; data_102582c70 (__DATA.__data)
0x10145c130:  1f 05 00 b1   cmn	x8, #0x1
0x10145c134:  41 48 00 54   b.ne	loc_10145ca3c ; ⤵ 0x908
0x10145c138:  3c 89 00 d0   adrp	x28, 0x102582000
0x10145c13c:  95 3f 46 f9   ldr	x21, [x28, #0xc78] ; data_102582c78 (__DATA.__data)
0x10145c140:  e0 03 15 aa   mov	x0, x21
0x10145c144:  21 02 80 52   mov	w1, #0x11
0x10145c148:  6a e8 1a 94   bl	j__os_log_type_enabled
0x10145c14c:  00 06 00 34   cbz	w0, loc_10145c20c ; ⤵ 0xc0
0x10145c150:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c154:  31 f2 00 94   bl	0x101498a18
0x10145c158:  f7 03 00 aa   mov	x23, x0
0x10145c15c:  e0 03 16 aa   mov	x0, x22
0x10145c160:  50 ae 1b 94   bl	j__objc_msgSend(x0, "service")
0x10145c164:  bf ed 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145c168:  f8 03 00 aa   mov	x24, x0
0x10145c16c:  e0 03 16 aa   mov	x0, x22
0x10145c170:  bc ed 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145c174:  f9 03 00 aa   mov	x25, x0
0x10145c178:  e0 03 14 aa   mov	x0, x20
0x10145c17c:  69 ae 1b 94   bl	j__objc_msgSend(x0, "serviceUUID")
0x10145c180:  fa 03 00 aa   mov	x26, x0
0x10145c184:  e0 03 14 aa   mov	x0, x20
0x10145c188:  1e 08 1b 94   bl	j__objc_msgSend(x0, "characteristicUUID")
0x10145c18c:  c8 39 00 90   adrp	x8, 0x101b94000
0x10145c190:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x10145c194:  e0 03 00 bd   str	s0, [sp]
0x10145c198:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c19c:  48 04 81 52   mov	w8, #0x822
0x10145c1a0:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145c1a4:  88 52 00 d0   adrp	x8, 0x101eae000
0x10145c1a8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145c1ac:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145c1b0:  28 08 81 52   mov	w8, #0x841
0x10145c1b4:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145c1b8:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x10145c1bc:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145c1c0:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x10145c1c4:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x10145c1c8:  f9 17 00 f9   str	x25, [sp, #0x28]
0x10145c1cc:  e8 63 00 79   strh	w8, [sp, #0x30]
0x10145c1d0:  fa 23 03 f8   stur	x26, [sp, #0x32]
0x10145c1d4:  e8 77 00 79   strh	w8, [sp, #0x3a]
0x10145c1d8:  e0 c3 03 f8   stur	x0, [sp, #0x3c]
0x10145c1dc:  20 5d ff 90   adrp	x0, 0x100000000
0x10145c1e0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145c1e4:  c3 70 00 b0   adrp	x3, 0x102275000
0x10145c1e8:  63 cc 31 91   add	x3, x3, #0xc73 ; "{\"msg%{public}.0s\":\"#durian #hawkeye encountering simultaneous streaming fragments, aborting as CL cannot handle it\", \"item\":%{private, location:escape_only}@, \"incomingServiceUUID\":%{private, locatio"...
0x10145c1ec:  e4 03 00 91   mov	x4, sp
0x10145c1f0:  e1 03 15 aa   mov	x1, x21
0x10145c1f4:  22 02 80 52   mov	w2, #0x11
0x10145c1f8:  85 08 80 52   mov	w5, #0x44
0x10145c1fc:  fd e3 1a 94   bl	j___os_log_impl
0x10145c200:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10145c204:  1f 05 00 b1   cmn	x8, #0x1
0x10145c208:  e1 41 00 54   b.ne	loc_10145ca44 ; ⤵ 0x83c
0x10145c20c:  ; loc_10145c20c
0x10145c20c:  95 3f 46 f9   ldr	x21, [x28, #0xc78]
0x10145c210:  e0 03 15 aa   mov	x0, x21
0x10145c214:  3b e8 1a 94   bl	j__os_signpost_enabled
0x10145c218:  40 06 00 34   cbz	w0, loc_10145c2e0 ; ⤵ 0xc8
0x10145c21c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c220:  fe f1 00 94   bl	0x101498a18
0x10145c224:  f7 03 00 aa   mov	x23, x0
0x10145c228:  e0 03 16 aa   mov	x0, x22
0x10145c22c:  1d ae 1b 94   bl	j__objc_msgSend(x0, "service")
0x10145c230:  8c ed 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145c234:  f8 03 00 aa   mov	x24, x0
0x10145c238:  e0 03 16 aa   mov	x0, x22
0x10145c23c:  89 ed 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145c240:  f6 03 00 aa   mov	x22, x0
0x10145c244:  e0 03 14 aa   mov	x0, x20
0x10145c248:  36 ae 1b 94   bl	j__objc_msgSend(x0, "serviceUUID")
0x10145c24c:  f9 03 00 aa   mov	x25, x0
0x10145c250:  e0 03 14 aa   mov	x0, x20
0x10145c254:  eb 07 1b 94   bl	j__objc_msgSend(x0, "characteristicUUID")
0x10145c258:  c8 39 00 90   adrp	x8, 0x101b94000

