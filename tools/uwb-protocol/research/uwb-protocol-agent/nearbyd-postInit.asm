0x100333020:  98 07 00 34   cbz	w24, loc_100333110 ; ⤵ 0xf0
0x100333024:  08 34 00 d0   adrp	x8, 0x1009b5000
0x100333028:  19 a9 44 f9   ldr	x25, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x10033302c:  08 34 00 d0   adrp	x8, 0x1009b5000
0x100333030:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x100333034:  09 01 40 f9   ldr	x9, [x8]
0x100333038:  c8 35 00 b0   adrp	x8, 0x1009ec000
0x10033303c:  08 21 1c 91   add	x8, x8, #0x708 ; "Error from R1 while initializing"
0x100333040:  e9 23 03 a9   stp	x9, x8, [sp, #0x30]
0x100333044:  08 34 00 d0   adrp	x8, 0x1009b5000
0x100333048:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x10033304c:  e2 e3 00 91   add	x2, sp, #0x38
0x100333050:  e3 c3 00 91   add	x3, sp, #0x30
0x100333054:  24 00 80 52   mov	w4, #0x1
0x100333058:  c2 1b 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10033305c:  fd 03 1d aa   mov	fp, fp
0x100333060:  c5 f9 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100333064:  fa 03 00 aa   mov	x26, x0
0x100333068:  a8 34 00 f0   adrp	x8, 0x1009ca000
0x10033306c:  08 21 23 91   add	x8, x8, #0x8c8
0x100333070:  02 01 40 f9   ldr	x2, [x8]
0x100333074:  e0 03 19 aa   mov	x0, x25
0x100333078:  a3 25 80 52   mov	w3, #0x12d
0x10033307c:  e4 03 1a aa   mov	x4, x26
0x100333080:  d8 1f 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x100333084:  fd 03 1d aa   mov	fp, fp
0x100333088:  bb f9 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x10033308c:  f9 03 00 aa   mov	x25, x0
0x100333090:  99 f9 06 94   bl	j__objc_release_x26
0x100333094:  7a 03 40 f9   ldr	x26, [x27]
0x100333098:  e0 03 1a aa   mov	x0, x26
0x10033309c:  01 02 80 52   mov	w1, #0x10
0x1003330a0:  19 fa 06 94   bl	j__os_log_type_enabled
0x1003330a4:  a0 00 00 34   cbz	w0, loc_1003330b8 ; ⤵ 0x14
0x1003330a8:  e0 03 14 aa   mov	x0, x20
0x1003330ac:  e1 03 18 aa   mov	x1, x24
0x1003330b0:  e2 03 1a aa   mov	x2, x26
0x1003330b4:  22 ac 06 94   bl	0x1004de13c
0x1003330b8:  ; loc_1003330b8
0x1003330b8:  e0 03 16 aa   mov	x0, x22
0x1003330bc:  e2 03 19 aa   mov	x2, x25
0x1003330c0:  68 02 07 94   bl	j__objc_msgSend(x0, "_handleError:")
0x1003330c4:  88 f9 06 94   bl	j__objc_release_x25
0x1003330c8:  7f f9 06 94   bl	j__objc_release_x23
0x1003330cc:  76 f9 06 94   bl	j__objc_release_x21
0x1003330d0:  71 f9 06 94   bl	j__objc_release_x20
0x1003330d4:  6c f9 06 94   bl	j__objc_release_x19
0x1003330d8:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x1003330dc:  09 34 00 d0   adrp	x9, 0x1009b5000
0x1003330e0:  29 b5 45 f9   ldr	x9, [x9, #0xb68] ; __got.___stack_chk_guard
0x1003330e4:  29 01 40 f9   ldr	x9, [x9]
0x1003330e8:  3f 01 08 eb   cmp	x9, x8
0x1003330ec:  81 05 00 54   b.ne	loc_10033319c ; ⤵ 0xb0
0x1003330f0:  fd 7b 4d a9   ldp	fp, lr, [sp, #0xd0]
0x1003330f4:  f4 4f 4c a9   ldp	x20, x19, [sp, #0xc0]
0x1003330f8:  f6 57 4b a9   ldp	x22, x21, [sp, #0xb0]
0x1003330fc:  f8 5f 4a a9   ldp	x24, x23, [sp, #0xa0]
0x100333100:  fa 67 49 a9   ldp	x26, x25, [sp, #0x90]
0x100333104:  fc 6f 48 a9   ldp	x28, x27, [sp, #0x80]
0x100333108:  ff 83 03 91   add	sp, sp, #0xe0
0x10033310c:  ff 0f 5f d6   retab
0x100333110:  ; loc_100333110
0x100333110:  08 37 00 b0   adrp	x8, 0x100a14000
0x100333114:  08 45 82 b9   ldrsw	x8, [x8, #0x244]
0x100333118:  c8 6a 68 38   ldrb	w8, [x22, x8]
0x10033311c:  1f 05 00 71   cmp	w8, #0x1
0x100333120:  81 00 00 54   b.ne	loc_100333130 ; ⤵ 0x10
0x100333124:  e0 03 16 aa   mov	x0, x22
0x100333128:  5e fe 06 94   bl	j__objc_msgSend(x0, "_configureCompanionForRanging")
0x10033312c:  1a 00 00 14   b	loc_100333194 ; ⤵ 0x68
0x100333130:  ; loc_100333130
0x100333130:  78 03 40 f9   ldr	x24, [x27]
0x100333134:  e0 03 18 aa   mov	x0, x24
0x100333138:  01 00 80 52   mov	w1, #0
0x10033313c:  f2 f9 06 94   bl	j__os_log_type_enabled
0x100333140:  60 01 00 34   cbz	w0, loc_10033316c ; ⤵ 0x2c
0x100333144:  ff c3 00 79   strh	wzr, [sp, #0x60]
0x100333148:  60 e6 ff b0   adrp	x0, 0x100000000
0x10033314c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100333150:  03 31 00 90   adrp	x3, 0x100953000
0x100333154:  63 90 0b 91   add	x3, x3, #0x2e4 ; "#ses-item-loc,[CL] fetchFindingCapabilities"
0x100333158:  e4 83 01 91   add	x4, sp, #0x60
0x10033315c:  e1 03 18 aa   mov	x1, x24
0x100333160:  02 00 80 52   mov	w2, #0
0x100333164:  45 00 80 52   mov	w5, #0x2
0x100333168:  1b f7 06 94   bl	j___os_log_impl
0x10033316c:  ; loc_10033316c
0x10033316c:  d9 6a 7a f8   ldr	x25, [x22, x26]
0x100333170:  c0 6a 7c f8   ldr	x0, [x22, x28]
0x100333174:  03 fc 06 94   bl	j__objc_msgSend(x0, "UUID")
0x100333178:  fd 03 1d aa   mov	fp, fp
0x10033317c:  7e f9 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100333180:  f8 03 00 aa   mov	x24, x0
0x100333184:  e0 03 19 aa   mov	x0, x25

