
-[CLHawkeyeDevice getRangingStatusForOpcode:data:]:
0x10148adb8:  7f 23 03 d5   pacibsp
0x10148adbc:  ff 03 02 d1   sub	sp, sp, #0x80
0x10148adc0:  fa 67 03 a9   stp	x26, x25, [sp, #0x30]
0x10148adc4:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x10148adc8:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x10148adcc:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x10148add0:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x10148add4:  fd c3 01 91   add	fp, sp, #0x70
0x10148add8:  f5 03 03 aa   mov	x21, x3
0x10148addc:  f3 03 02 aa   mov	x19, x2
0x10148ade0:  f4 03 00 aa   mov	x20, x0
0x10148ade4:  48 78 00 90   adrp	x8, 0x102392000
0x10148ade8:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10148adec:  08 01 40 f9   ldr	x8, [x8]
0x10148adf0:  e8 17 00 f9   str	x8, [sp, #0x28]
0x10148adf4:  d7 87 00 90   adrp	x23, 0x102582000
0x10148adf8:  e8 3a 46 f9   ldr	x8, [x23, #0xc70] ; data_102582c70 (__DATA.__data)
0x10148adfc:  1f 05 00 b1   cmn	x8, #0x1
0x10148ae00:  81 10 00 54   b.ne	loc_10148b010 ; ⤵ 0x210
0x10148ae04:  ; loc_10148ae04
0x10148ae04:  d8 87 00 90   adrp	x24, 0x102582000
0x10148ae08:  16 3f 46 f9   ldr	x22, [x24, #0xc78] ; data_102582c78 (__DATA.__data)
0x10148ae0c:  e0 03 16 aa   mov	x0, x22
0x10148ae10:  01 00 80 52   mov	w1, #0
0x10148ae14:  37 2d 1a 94   bl	j__os_log_type_enabled
0x10148ae18:  60 02 00 34   cbz	w0, loc_10148ae64 ; ⤵ 0x4c
0x10148ae1c:  48 43 00 d0   adrp	x8, 0x101cf4000
0x10148ae20:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10148ae24:  e0 03 00 bd   str	s0, [sp]
0x10148ae28:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10148ae2c:  48 04 81 52   mov	w8, #0x822
0x10148ae30:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10148ae34:  28 51 00 90   adrp	x8, 0x101eae000
0x10148ae38:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10148ae3c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10148ae40:  a0 5b ff d0   adrp	x0, 0x100000000
0x10148ae44:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10148ae48:  e3 6f 00 d0   adrp	x3, 0x102288000
0x10148ae4c:  63 a8 03 91   add	x3, x3, #0xea ; "{\"msg%{public}.0s\":\"#durian #hawkeye parsing ranging-status\"}"
0x10148ae50:  e4 03 00 91   mov	x4, sp
0x10148ae54:  e1 03 16 aa   mov	x1, x22
0x10148ae58:  02 00 80 52   mov	w2, #0
0x10148ae5c:  45 02 80 52   mov	w5, #0x12
0x10148ae60:  e4 28 1a 94   bl	j___os_log_impl
0x10148ae64:  ; loc_10148ae64
0x10148ae64:  7f 52 00 71   cmp	w19, #0x14
0x10148ae68:  0d 01 00 54   b.le	loc_10148ae88 ; ⤵ 0x20
0x10148ae6c:  7f 26 1c 71   cmp	w19, #0x709
0x10148ae70:  ac 01 00 54   b.gt	loc_10148aea4 ; ⤵ 0x34
0x10148ae74:  7f 56 00 71   cmp	w19, #0x15
0x10148ae78:  e0 01 00 54   b.eq	loc_10148aeb4 ; ⤵ 0x3c
0x10148ae7c:  7f 8a 00 71   cmp	w19, #0x22
0x10148ae80:  a0 01 00 54   b.eq	loc_10148aeb4 ; ⤵ 0x34
0x10148ae84:  1a 00 00 14   b	loc_10148aeec ; ⤵ 0x68
0x10148ae88:  ; loc_10148ae88
0x10148ae88:  7f 06 00 71   cmp	w19, #0x1
0x10148ae8c:  40 01 00 54   b.eq	loc_10148aeb4 ; ⤵ 0x28
0x10148ae90:  7f 0e 00 71   cmp	w19, #0x3
0x10148ae94:  00 01 00 54   b.eq	loc_10148aeb4 ; ⤵ 0x20
0x10148ae98:  7f 1a 00 71   cmp	w19, #0x6
0x10148ae9c:  c0 00 00 54   b.eq	loc_10148aeb4 ; ⤵ 0x18
0x10148aea0:  13 00 00 14   b	loc_10148aeec ; ⤵ 0x4c
0x10148aea4:  ; loc_10148aea4
0x10148aea4:  7f 2a 1c 71   cmp	w19, #0x70a
0x10148aea8:  60 00 00 54   b.eq	loc_10148aeb4 ; ⤵ 0xc
0x10148aeac:  7f 2a 20 71   cmp	w19, #0x80a
0x10148aeb0:  e1 01 00 54   b.ne	loc_10148aeec ; ⤵ 0x3c
0x10148aeb4:  ; loc_10148aeb4
0x10148aeb4:  a0 22 40 b8   ldur	w0, [x21, #0x2]
0x10148aeb8:  ; loc_10148aeb8
0x10148aeb8:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10148aebc:  49 78 00 90   adrp	x9, 0x102392000
0x10148aec0:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10148aec4:  29 01 40 f9   ldr	x9, [x9]
0x10148aec8:  3f 01 08 eb   cmp	x9, x8
0x10148aecc:  e1 0a 00 54   b.ne	loc_10148b028 ; ⤵ 0x15c
0x10148aed0:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x10148aed4:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x10148aed8:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x10148aedc:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x10148aee0:  fa 67 43 a9   ldp	x26, x25, [sp, #0x30]
0x10148aee4:  ff 03 02 91   add	sp, sp, #0x80
0x10148aee8:  ff 0f 5f d6   retab
0x10148aeec:  ; loc_10148aeec
0x10148aeec:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x10148aef0:  1f 05 00 b1   cmn	x8, #0x1
0x10148aef4:  21 09 00 54   b.ne	loc_10148b018 ; ⤵ 0x124
0x10148aef8:  ; loc_10148aef8
0x10148aef8:  15 3f 46 f9   ldr	x21, [x24, #0xc78]
0x10148aefc:  e0 03 15 aa   mov	x0, x21
0x10148af00:  21 02 80 52   mov	w1, #0x11
0x10148af04:  fb 2c 1a 94   bl	j__os_log_type_enabled
0x10148af08:  59 43 00 d0   adrp	x25, 0x101cf4000
0x10148af0c:  36 51 00 90   adrp	x22, 0x101eae000
0x10148af10:  d6 e2 02 91   add	x22, x22, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10148af14:  80 03 00 34   cbz	w0, loc_10148af84 ; ⤵ 0x70
0x10148af18:  e0 03 14 aa   mov	x0, x20
0x10148af1c:  a9 4c 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10148af20:  be 36 00 94   bl	0x101498a18
0x10148af24:  20 3f 44 fd   ldr	d0, [x25, #0x878]
0x10148af28:  e0 03 00 bd   str	s0, [sp]
0x10148af2c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10148af30:  48 04 81 52   mov	w8, #0x822
0x10148af34:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10148af38:  f6 a3 00 f8   stur	x22, [sp, #0xa]
0x10148af3c:  28 08 81 52   mov	w8, #0x841
0x10148af40:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10148af44:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10148af48:  48 80 80 52   mov	w8, #0x402
0x10148af4c:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10148af50:  f3 e3 01 b8   stur	w19, [sp, #0x1e]
0x10148af54:  a0 5b ff d0   adrp	x0, 0x100000000
0x10148af58:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10148af5c:  e3 6f 00 d0   adrp	x3, 0x102288000
0x10148af60:  63 a0 04 91   add	x3, x3, #0x128 ; "{\"msg%{public}.0s\":\"#durian unknown opcode in ranging completion for hawkeye-device\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x10148af64:  e4 03 00 91   mov	x4, sp
0x10148af68:  e1 03 15 aa   mov	x1, x21
0x10148af6c:  22 02 80 52   mov	w2, #0x11
0x10148af70:  45 04 80 52   mov	w5, #0x22
0x10148af74:  9f 28 1a 94   bl	j___os_log_impl
0x10148af78:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x10148af7c:  1f 05 00 b1   cmn	x8, #0x1
0x10148af80:  01 05 00 54   b.ne	loc_10148b020 ; ⤵ 0xa0
0x10148af84:  ; loc_10148af84
0x10148af84:  15 3f 46 f9   ldr	x21, [x24, #0xc78]
0x10148af88:  e0 03 15 aa   mov	x0, x21
0x10148af8c:  dd 2c 1a 94   bl	j__os_signpost_enabled
0x10148af90:  c0 03 00 34   cbz	w0, loc_10148b008 ; ⤵ 0x78
0x10148af94:  e0 03 14 aa   mov	x0, x20
0x10148af98:  8a 4c 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10148af9c:  9f 36 00 94   bl	0x101498a18
0x10148afa0:  20 3f 44 fd   ldr	d0, [x25, #0x878]
0x10148afa4:  e0 03 00 bd   str	s0, [sp]
0x10148afa8:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10148afac:  48 04 81 52   mov	w8, #0x822
0x10148afb0:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10148afb4:  f6 a3 00 f8   stur	x22, [sp, #0xa]
0x10148afb8:  28 08 81 52   mov	w8, #0x841
0x10148afbc:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10148afc0:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10148afc4:  48 80 80 52   mov	w8, #0x402
0x10148afc8:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10148afcc:  f3 e3 01 b8   stur	w19, [sp, #0x1e]
0x10148afd0:  a0 5b ff d0   adrp	x0, 0x100000000
0x10148afd4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10148afd8:  e4 6f 00 d0   adrp	x4, 0x102288000
0x10148afdc:  84 f4 06 91   add	x4, x4, #0x1bd ; "#durian unknown opcode in ranging completion for hawkeye-device"
0x10148afe0:  e5 6f 00 d0   adrp	x5, 0x102288000
0x10148afe4:  a5 a0 04 91   add	x5, x5, #0x128 ; "{\"msg%{public}.0s\":\"#durian unknown opcode in ranging completion for hawkeye-device\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x10148afe8:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x10148afec:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x10148aff0:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x10148aff4:  e6 03 00 91   mov	x6, sp
0x10148aff8:  e1 03 15 aa   mov	x1, x21
0x10148affc:  02 00 80 52   mov	w2, #0
0x10148b000:  47 04 80 52   mov	w7, #0x22
0x10148b004:  83 28 1a 94   bl	j___os_signpost_emit_with_name_impl
0x10148b008:  ; loc_10148b008
0x10148b008:  00 00 b0 12   mov	w0, #0x7fffffff
0x10148b00c:  ab ff ff 17   b	loc_10148aeb8 ; ⤴ -0x154
0x10148b010:  ; loc_10148b010
0x10148b010:  98 14 1a 94   bl	0x101b10270
0x10148b014:  7c ff ff 17   b	loc_10148ae04 ; ⤴ -0x210
0x10148b018:  ; loc_10148b018
0x10148b018:  97 14 1a 94   bl	0x101b10274
0x10148b01c:  b7 ff ff 17   b	loc_10148aef8 ; ⤴ -0x124
0x10148b020:  ; loc_10148b020
0x10148b020:  95 14 1a 94   bl	0x101b10274
0x10148b024:  d8 ff ff 17   b	loc_10148af84 ; ⤴ -0xa0
0x10148b028:  ; loc_10148b028
0x10148b028:  46 28 1a 94   bl	j____stack_chk_fail

-[CLHawkeyeDevice getRangeEndReasonForOpcode:data:]:
0x10148b02c:  7f 23 03 d5   pacibsp
0x10148b030:  ff 03 02 d1   sub	sp, sp, #0x80
0x10148b034:  fa 67 03 a9   stp	x26, x25, [sp, #0x30]
0x10148b038:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x10148b03c:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x10148b040:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x10148b044:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x10148b048:  fd c3 01 91   add	fp, sp, #0x70
0x10148b04c:  f5 03 03 aa   mov	x21, x3
0x10148b050:  f3 03 02 aa   mov	x19, x2
0x10148b054:  f4 03 00 aa   mov	x20, x0
0x10148b058:  28 78 00 f0   adrp	x8, 0x102392000
0x10148b05c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10148b060:  08 01 40 f9   ldr	x8, [x8]
0x10148b064:  e8 17 00 f9   str	x8, [sp, #0x28]
0x10148b068:  b7 87 00 f0   adrp	x23, 0x102582000
0x10148b06c:  e8 3a 46 f9   ldr	x8, [x23, #0xc70] ; data_102582c70 (__DATA.__data)
0x10148b070:  1f 05 00 b1   cmn	x8, #0x1
0x10148b074:  81 0e 00 54   b.ne	loc_10148b244 ; ⤵ 0x1d0
0x10148b078:  b8 87 00 f0   adrp	x24, 0x102582000
0x10148b07c:  16 3f 46 f9   ldr	x22, [x24, #0xc78] ; data_102582c78 (__DATA.__data)
0x10148b080:  e0 03 16 aa   mov	x0, x22
0x10148b084:  01 00 80 52   mov	w1, #0
0x10148b088:  9a 2c 1a 94   bl	j__os_log_type_enabled
0x10148b08c:  60 02 00 34   cbz	w0, loc_10148b0d8 ; ⤵ 0x4c
0x10148b090:  48 43 00 b0   adrp	x8, 0x101cf4000
0x10148b094:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10148b098:  e0 03 00 bd   str	s0, [sp]
0x10148b09c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10148b0a0:  48 04 81 52   mov	w8, #0x822
0x10148b0a4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10148b0a8:  08 51 00 f0   adrp	x8, 0x101eae000
0x10148b0ac:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10148b0b0:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10148b0b4:  a0 5b ff b0   adrp	x0, 0x100000000
0x10148b0b8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10148b0bc:  e3 6f 00 b0   adrp	x3, 0x102288000
0x10148b0c0:  63 f4 07 91   add	x3, x3, #0x1fd ; "{\"msg%{public}.0s\":\"#durian #hawkeye parsing ranging-end-reason\"}"
0x10148b0c4:  e4 03 00 91   mov	x4, sp
0x10148b0c8:  e1 03 16 aa   mov	x1, x22
0x10148b0cc:  02 00 80 52   mov	w2, #0
0x10148b0d0:  45 02 80 52   mov	w5, #0x12
0x10148b0d4:  47 28 1a 94   bl	j___os_log_impl
0x10148b0d8:  ; loc_10148b0d8
0x10148b0d8:  7f 0e 20 71   cmp	w19, #0x803
0x10148b0dc:  60 00 00 54   b.eq	loc_10148b0e8 ; ⤵ 0xc
0x10148b0e0:  7f 0e 00 71   cmp	w19, #0x3
0x10148b0e4:  61 00 00 54   b.ne	loc_10148b0f0 ; ⤵ 0xc
0x10148b0e8:  ; loc_10148b0e8
0x10148b0e8:  a0 1a 40 39   ldrb	w0, [x21, #0x6]
0x10148b0ec:  49 00 00 14   b	loc_10148b210 ; ⤵ 0x124
0x10148b0f0:  ; loc_10148b0f0
0x10148b0f0:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x10148b0f4:  1f 05 00 b1   cmn	x8, #0x1
0x10148b0f8:  a1 0a 00 54   b.ne	loc_10148b24c ; ⤵ 0x154
0x10148b0fc:  15 3f 46 f9   ldr	x21, [x24, #0xc78]
0x10148b100:  e0 03 15 aa   mov	x0, x21
0x10148b104:  21 02 80 52   mov	w1, #0x11
0x10148b108:  7a 2c 1a 94   bl	j__os_log_type_enabled
0x10148b10c:  59 43 00 b0   adrp	x25, 0x101cf4000
0x10148b110:  16 51 00 f0   adrp	x22, 0x101eae000
0x10148b114:  d6 e2 02 91   add	x22, x22, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10148b118:  80 03 00 34   cbz	w0, loc_10148b188 ; ⤵ 0x70
0x10148b11c:  e0 03 14 aa   mov	x0, x20
0x10148b120:  28 4c 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10148b124:  3d 36 00 94   bl	0x101498a18
0x10148b128:  20 3f 44 fd   ldr	d0, [x25, #0x878]
0x10148b12c:  e0 03 00 bd   str	s0, [sp]
0x10148b130:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10148b134:  48 04 81 52   mov	w8, #0x822
0x10148b138:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10148b13c:  f6 a3 00 f8   stur	x22, [sp, #0xa]
0x10148b140:  28 08 81 52   mov	w8, #0x841
0x10148b144:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10148b148:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10148b14c:  48 80 80 52   mov	w8, #0x402
0x10148b150:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10148b154:  f3 e3 01 b8   stur	w19, [sp, #0x1e]
0x10148b158:  a0 5b ff b0   adrp	x0, 0x100000000
0x10148b15c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10148b160:  83 6e 00 d0   adrp	x3, 0x10225d000
0x10148b164:  63 78 0d 91   add	x3, x3, #0x35e ; "{\"msg%{public}.0s\":\"#durian unknown opcode in ranging start completion\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x10148b168:  e4 03 00 91   mov	x4, sp
0x10148b16c:  e1 03 15 aa   mov	x1, x21
0x10148b170:  22 02 80 52   mov	w2, #0x11
0x10148b174:  45 04 80 52   mov	w5, #0x22
0x10148b178:  1e 28 1a 94   bl	j___os_log_impl
0x10148b17c:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x10148b180:  1f 05 00 b1   cmn	x8, #0x1
0x10148b184:  81 06 00 54   b.ne	loc_10148b254 ; ⤵ 0xd0
0x10148b188:  ; loc_10148b188
0x10148b188:  15 3f 46 f9   ldr	x21, [x24, #0xc78]
0x10148b18c:  e0 03 15 aa   mov	x0, x21
0x10148b190:  5c 2c 1a 94   bl	j__os_signpost_enabled
0x10148b194:  c0 03 00 34   cbz	w0, loc_10148b20c ; ⤵ 0x78
0x10148b198:  e0 03 14 aa   mov	x0, x20
0x10148b19c:  09 4c 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10148b1a0:  1e 36 00 94   bl	0x101498a18
0x10148b1a4:  20 3f 44 fd   ldr	d0, [x25, #0x878]
0x10148b1a8:  e0 03 00 bd   str	s0, [sp]
0x10148b1ac:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10148b1b0:  48 04 81 52   mov	w8, #0x822
0x10148b1b4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10148b1b8:  f6 a3 00 f8   stur	x22, [sp, #0xa]
0x10148b1bc:  28 08 81 52   mov	w8, #0x841
0x10148b1c0:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10148b1c4:  e0 43 01 f8   stur	x0, [sp, #0x14]

