
-[CLDurianDeviceManager _retrievePeripheralForMaterial:isFindMyNetwork:]:
0x10147eeac:  7f 23 03 d5   pacibsp
0x10147eeb0:  ff 83 02 d1   sub	sp, sp, #0xa0
0x10147eeb4:  f8 5f 06 a9   stp	x24, x23, [sp, #0x60]
0x10147eeb8:  f6 57 07 a9   stp	x22, x21, [sp, #0x70]
0x10147eebc:  f4 4f 08 a9   stp	x20, x19, [sp, #0x80]
0x10147eec0:  fd 7b 09 a9   stp	fp, lr, [sp, #0x90]
0x10147eec4:  fd 43 02 91   add	fp, sp, #0x90
0x10147eec8:  f5 03 03 aa   mov	x21, x3
0x10147eecc:  f4 03 00 aa   mov	x20, x0
0x10147eed0:  a8 78 00 90   adrp	x8, 0x102392000
0x10147eed4:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10147eed8:  08 01 40 f9   ldr	x8, [x8]
0x10147eedc:  a8 83 1c f8   stur	x8, [fp, #-0x38]
0x10147eee0:  e0 03 02 aa   mov	x0, x2
0x10147eee4:  ff 6f 1a 94   bl	j__objc_msgSend(x0, "address")
0x10147eee8:  6e f3 1a 94   bl	j__objc_msgSend(x0, "mutableCopy")
0x10147eeec:  e5 5b 1a 94   bl	j__objc_autorelease
0x10147eef0:  f3 03 00 aa   mov	x19, x0
0x10147eef4:  63 f3 1a 94   bl	j__objc_msgSend(x0, "mutableBytes")
0x10147eef8:  f6 03 00 aa   mov	x22, x0
0x10147eefc:  38 88 00 90   adrp	x24, 0x102582000
0x10147ef00:  37 88 00 90   adrp	x23, 0x102582000
0x10147ef04:  f5 03 00 34   cbz	w21, loc_10147ef80 ; ⤵ 0x7c
0x10147ef08:  c8 02 40 39   ldrb	w8, [x22]
0x10147ef0c:  08 05 1a 32   orr	w8, w8, #0xc0
0x10147ef10:  c8 02 00 39   strb	w8, [x22]
0x10147ef14:  08 3b 46 f9   ldr	x8, [x24, #0xc70]
0x10147ef18:  1f 05 00 b1   cmn	x8, #0x1
0x10147ef1c:  c1 14 00 54   b.ne	loc_10147f1b4 ; ⤵ 0x298
0x10147ef20:  ; loc_10147ef20
0x10147ef20:  f5 3e 46 f9   ldr	x21, [x23, #0xc78]
0x10147ef24:  e0 03 15 aa   mov	x0, x21
0x10147ef28:  21 00 80 52   mov	w1, #0x1
0x10147ef2c:  f1 5c 1a 94   bl	j__os_log_type_enabled
0x10147ef30:  60 06 00 34   cbz	w0, loc_10147effc ; ⤵ 0xcc
0x10147ef34:  e0 03 13 aa   mov	x0, x19
0x10147ef38:  a2 67 b8 97   bl	0x100298dc0
0x10147ef3c:  a8 43 00 d0   adrp	x8, 0x101cf4000
0x10147ef40:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x10147ef44:  e0 33 00 bd   str	s0, [sp, #0x30]
0x10147ef48:  ff 37 00 b9   str	wzr, [sp, #0x34]
0x10147ef4c:  48 04 81 52   mov	w8, #0x822
0x10147ef50:  e8 73 00 79   strh	w8, [sp, #0x38]
0x10147ef54:  88 51 00 90   adrp	x8, 0x101eae000
0x10147ef58:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147ef5c:  e8 a3 03 f8   stur	x8, [sp, #0x3a]
0x10147ef60:  28 08 81 52   mov	w8, #0x841
0x10147ef64:  e8 87 00 79   strh	w8, [sp, #0x42]
0x10147ef68:  e0 43 04 f8   stur	x0, [sp, #0x44]
0x10147ef6c:  00 5c ff d0   adrp	x0, 0x100000000
0x10147ef70:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147ef74:  23 70 00 d0   adrp	x3, 0x102284000
0x10147ef78:  63 c4 01 91   add	x3, x3, #0x71 ; "{\"msg%{public}.0s\":\"#durian exercising connection to Apple accessories, using: \", \"address\":%{private, location:escape_only}@}"
0x10147ef7c:  1b 00 00 14   b	loc_10147efe8 ; ⤵ 0x6c
0x10147ef80:  ; loc_10147ef80
0x10147ef80:  08 3b 46 f9   ldr	x8, [x24, #0xc70]
0x10147ef84:  1f 05 00 b1   cmn	x8, #0x1
0x10147ef88:  a1 11 00 54   b.ne	loc_10147f1bc ; ⤵ 0x234
0x10147ef8c:  ; loc_10147ef8c
0x10147ef8c:  f5 3e 46 f9   ldr	x21, [x23, #0xc78]
0x10147ef90:  e0 03 15 aa   mov	x0, x21
0x10147ef94:  21 00 80 52   mov	w1, #0x1
0x10147ef98:  d6 5c 1a 94   bl	j__os_log_type_enabled
0x10147ef9c:  00 03 00 34   cbz	w0, loc_10147effc ; ⤵ 0x60
0x10147efa0:  e0 03 13 aa   mov	x0, x19
0x10147efa4:  87 67 b8 97   bl	0x100298dc0
0x10147efa8:  a8 43 00 d0   adrp	x8, 0x101cf4000
0x10147efac:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x10147efb0:  e0 33 00 bd   str	s0, [sp, #0x30]
0x10147efb4:  ff 37 00 b9   str	wzr, [sp, #0x34]
0x10147efb8:  48 04 81 52   mov	w8, #0x822
0x10147efbc:  e8 73 00 79   strh	w8, [sp, #0x38]
0x10147efc0:  88 51 00 90   adrp	x8, 0x101eae000
0x10147efc4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147efc8:  e8 a3 03 f8   stur	x8, [sp, #0x3a]
0x10147efcc:  28 08 81 52   mov	w8, #0x841
0x10147efd0:  e8 87 00 79   strh	w8, [sp, #0x42]
0x10147efd4:  e0 43 04 f8   stur	x0, [sp, #0x44]
0x10147efd8:  00 5c ff d0   adrp	x0, 0x100000000
0x10147efdc:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147efe0:  23 70 00 d0   adrp	x3, 0x102284000
0x10147efe4:  63 c0 03 91   add	x3, x3, #0xf0 ; "{\"msg%{public}.0s\":\"#durian exercising connection to non-Apple accessories, using: \", \"address\":%{private, location:escape_only}@}"
0x10147efe8:  ; loc_10147efe8
0x10147efe8:  e4 c3 00 91   add	x4, sp, #0x30
0x10147efec:  e1 03 15 aa   mov	x1, x21
0x10147eff0:  22 00 80 52   mov	w2, #0x1
0x10147eff4:  85 03 80 52   mov	w5, #0x1c
0x10147eff8:  7e 58 1a 94   bl	j___os_log_impl
0x10147effc:  ; loc_10147effc
0x10147effc:  80 6e 40 f9   ldr	x0, [x20, #0xd8]
0x10147f000:  e2 03 13 aa   mov	x2, x19
0x10147f004:  03 00 80 d2   mov	x3, #0
0x10147f008:  fe 8b 1a 94   bl	j__objc_msgSend(x0, "createPeripheralWithAddress:andIdentifier:")
0x10147f00c:  60 04 00 b4   cbz	x0, loc_10147f098 ; ⤵ 0x8c
0x10147f010:  f5 03 00 aa   mov	x21, x0
0x10147f014:  08 3b 46 f9   ldr	x8, [x24, #0xc70]
0x10147f018:  1f 05 00 b1   cmn	x8, #0x1
0x10147f01c:  81 0c 00 54   b.ne	loc_10147f1ac ; ⤵ 0x190
0x10147f020:  ; loc_10147f020
0x10147f020:  f4 3e 46 f9   ldr	x20, [x23, #0xc78]
0x10147f024:  e0 03 14 aa   mov	x0, x20
0x10147f028:  41 00 80 52   mov	w1, #0x2
0x10147f02c:  b1 5c 1a 94   bl	j__os_log_type_enabled
0x10147f030:  40 0a 00 34   cbz	w0, loc_10147f178 ; ⤵ 0x148
0x10147f034:  e0 03 13 aa   mov	x0, x19
0x10147f038:  62 67 b8 97   bl	0x100298dc0
0x10147f03c:  f3 03 00 aa   mov	x19, x0
0x10147f040:  e0 03 15 aa   mov	x0, x21
0x10147f044:  77 c5 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147f048:  a8 43 00 b0   adrp	x8, 0x101cf4000
0x10147f04c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10147f050:  e0 33 00 bd   str	s0, [sp, #0x30]
0x10147f054:  ff 37 00 b9   str	wzr, [sp, #0x34]
0x10147f058:  48 04 81 52   mov	w8, #0x822
0x10147f05c:  e8 73 00 79   strh	w8, [sp, #0x38]
0x10147f060:  68 51 00 f0   adrp	x8, 0x101eae000
0x10147f064:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147f068:  e8 a3 03 f8   stur	x8, [sp, #0x3a]
0x10147f06c:  28 08 81 52   mov	w8, #0x841
0x10147f070:  e8 87 00 79   strh	w8, [sp, #0x42]
0x10147f074:  f3 43 04 f8   stur	x19, [sp, #0x44]
0x10147f078:  48 08 81 52   mov	w8, #0x842
0x10147f07c:  e8 9b 00 79   strh	w8, [sp, #0x4c]
0x10147f080:  e0 e3 04 f8   stur	x0, [sp, #0x4e]
0x10147f084:  00 5c ff b0   adrp	x0, 0x100000000
0x10147f088:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147f08c:  23 70 00 b0   adrp	x3, 0x102284000
0x10147f090:  63 cc 05 91   add	x3, x3, #0x173 ; "{\"msg%{public}.0s\":\"#durian createPeripheral succeeeded\", \"address\":%{private, location:escape_only}@, \"peripheralUUID\":%{public, location:escape_only}@}"
0x10147f094:  34 00 00 14   b	loc_10147f164 ; ⤵ 0xd0
0x10147f098:  ; loc_10147f098
0x10147f098:  88 78 00 d0   adrp	x8, 0x102391000
0x10147f09c:  00 c1 45 f9   ldr	x0, [x8, #0xb80] ; __got._OBJC_CLASS_$_NSString
0x10147f0a0:  c8 02 40 39   ldrb	w8, [x22]
0x10147f0a4:  c9 06 40 39   ldrb	w9, [x22, #0x1]
0x10147f0a8:  ca 0a 40 39   ldrb	w10, [x22, #0x2]
0x10147f0ac:  cb 0e 40 39   ldrb	w11, [x22, #0x3]
0x10147f0b0:  cc 12 40 39   ldrb	w12, [x22, #0x4]
0x10147f0b4:  cd 16 40 39   ldrb	w13, [x22, #0x5]
0x10147f0b8:  ec 37 02 a9   stp	x12, x13, [sp, #0x20]
0x10147f0bc:  ea 2f 01 a9   stp	x10, x11, [sp, #0x10]
0x10147f0c0:  e8 27 00 a9   stp	x8, x9, [sp]
0x10147f0c4:  a2 80 00 90   adrp	x2, 0x102493000
0x10147f0c8:  42 c0 3a 91   add	x2, x2, #0xeb0 ; "Random %hhX:%hhX:%hhX:%hhX:%hhX:%hhX"
0x10147f0cc:  0d 64 1b 94   bl	j__objc_msgSend(x0, "stringWithFormat:")
0x10147f0d0:  e2 03 00 aa   mov	x2, x0
0x10147f0d4:  80 6e 40 f9   ldr	x0, [x20, #0xd8]
0x10147f0d8:  ea 19 1b 94   bl	j__objc_msgSend(x0, "retrievePeripheralWithAddress:")
0x10147f0dc:  f5 03 00 aa   mov	x21, x0
0x10147f0e0:  c0 04 00 b4   cbz	x0, loc_10147f178 ; ⤵ 0x98
0x10147f0e4:  08 3b 46 f9   ldr	x8, [x24, #0xc70]
0x10147f0e8:  1f 05 00 b1   cmn	x8, #0x1
0x10147f0ec:  c1 06 00 54   b.ne	loc_10147f1c4 ; ⤵ 0xd8
0x10147f0f0:  ; loc_10147f0f0
0x10147f0f0:  f4 3e 46 f9   ldr	x20, [x23, #0xc78]
0x10147f0f4:  e0 03 14 aa   mov	x0, x20
0x10147f0f8:  41 00 80 52   mov	w1, #0x2
0x10147f0fc:  7d 5c 1a 94   bl	j__os_log_type_enabled
0x10147f100:  c0 03 00 34   cbz	w0, loc_10147f178 ; ⤵ 0x78
0x10147f104:  e0 03 13 aa   mov	x0, x19
0x10147f108:  2e 67 b8 97   bl	0x100298dc0
0x10147f10c:  f3 03 00 aa   mov	x19, x0
0x10147f110:  e0 03 15 aa   mov	x0, x21
0x10147f114:  43 c5 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147f118:  a8 43 00 b0   adrp	x8, 0x101cf4000
0x10147f11c:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10147f120:  e0 33 00 bd   str	s0, [sp, #0x30]
0x10147f124:  ff 37 00 b9   str	wzr, [sp, #0x34]
0x10147f128:  48 04 81 52   mov	w8, #0x822
0x10147f12c:  e8 73 00 79   strh	w8, [sp, #0x38]
0x10147f130:  68 51 00 f0   adrp	x8, 0x101eae000
0x10147f134:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147f138:  e8 a3 03 f8   stur	x8, [sp, #0x3a]
0x10147f13c:  28 08 81 52   mov	w8, #0x841
0x10147f140:  e8 87 00 79   strh	w8, [sp, #0x42]
0x10147f144:  f3 43 04 f8   stur	x19, [sp, #0x44]
0x10147f148:  48 08 81 52   mov	w8, #0x842
0x10147f14c:  e8 9b 00 79   strh	w8, [sp, #0x4c]
0x10147f150:  e0 e3 04 f8   stur	x0, [sp, #0x4e]
0x10147f154:  00 5c ff b0   adrp	x0, 0x100000000
0x10147f158:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147f15c:  23 70 00 b0   adrp	x3, 0x102284000
0x10147f160:  63 34 08 91   add	x3, x3, #0x20d ; "{\"msg%{public}.0s\":\"#durian retrievePeripheral succeeded\", \"address\":%{private, location:escape_only}@, \"peripheralUUID\":%{public, location:escape_only}@}"
0x10147f164:  ; loc_10147f164
0x10147f164:  e4 c3 00 91   add	x4, sp, #0x30
0x10147f168:  e1 03 14 aa   mov	x1, x20
0x10147f16c:  42 00 80 52   mov	w2, #0x2
0x10147f170:  c5 04 80 52   mov	w5, #0x26
0x10147f174:  1f 58 1a 94   bl	j___os_log_impl
0x10147f178:  ; loc_10147f178
0x10147f178:  a8 83 5c f8   ldur	x8, [fp, #-0x38]
0x10147f17c:  89 78 00 f0   adrp	x9, 0x102392000
0x10147f180:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10147f184:  29 01 40 f9   ldr	x9, [x9]
0x10147f188:  3f 01 08 eb   cmp	x9, x8
0x10147f18c:  01 02 00 54   b.ne	loc_10147f1cc ; ⤵ 0x40
0x10147f190:  e0 03 15 aa   mov	x0, x21
0x10147f194:  fd 7b 49 a9   ldp	fp, lr, [sp, #0x90]
0x10147f198:  f4 4f 48 a9   ldp	x20, x19, [sp, #0x80]
0x10147f19c:  f6 57 47 a9   ldp	x22, x21, [sp, #0x70]
0x10147f1a0:  f8 5f 46 a9   ldp	x24, x23, [sp, #0x60]
0x10147f1a4:  ff 83 02 91   add	sp, sp, #0xa0
0x10147f1a8:  ff 0f 5f d6   retab
0x10147f1ac:  ; loc_10147f1ac
0x10147f1ac:  0c 44 1a 94   bl	0x101b101dc
0x10147f1b0:  9c ff ff 17   b	loc_10147f020 ; ⤴ -0x190
0x10147f1b4:  ; loc_10147f1b4
0x10147f1b4:  1a 44 1a 94   bl	0x101b1021c
0x10147f1b8:  5a ff ff 17   b	loc_10147ef20 ; ⤴ -0x298
0x10147f1bc:  ; loc_10147f1bc
0x10147f1bc:  18 44 1a 94   bl	0x101b1021c
0x10147f1c0:  73 ff ff 17   b	loc_10147ef8c ; ⤴ -0x234
0x10147f1c4:  ; loc_10147f1c4
0x10147f1c4:  06 44 1a 94   bl	0x101b101dc
0x10147f1c8:  ca ff ff 17   b	loc_10147f0f0 ; ⤴ -0xd8
0x10147f1cc:  ; loc_10147f1cc
0x10147f1cc:  dd 57 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager onObservationForDeviceWithIdentifier:type:date:]:
0x10147f1d0:  7f 23 03 d5   pacibsp
0x10147f1d4:  ff 43 01 d1   sub	sp, sp, #0x50
0x10147f1d8:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x10147f1dc:  fd 03 01 91   add	fp, sp, #0x40
0x10147f1e0:  08 88 40 f9   ldr	x8, [x0, #0x110]
0x10147f1e4:  e9 03 00 91   mov	x9, sp
0x10147f1e8:  90 78 00 f0   adrp	x16, 0x102392000
0x10147f1ec:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got.__NSConcreteStackBlock
0x10147f1f0:  f1 03 09 aa   mov	x17, x9
0x10147f1f4:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x10147f1f8:  30 0a c1 da   pacda	x16, x17
0x10147f1fc:  f0 03 00 f9   str	x16, [sp]
0x10147f200:  aa 43 00 b0   adrp	x10, 0x101cf4000
0x10147f204:  40 45 44 fd   ldr	d0, [x10, #0x888]
0x10147f208:  e0 07 00 fd   str	d0, [sp, #0x8]
0x10147f20c:  29 41 00 91   add	x9, x9, #0x10
0x10147f210:  10 00 00 90   adrp	x16, 0x10147f000
0x10147f214:  10 22 09 91   add	x16, x16, #0x248
0x10147f218:  30 01 c1 da   pacia	x16, x9

