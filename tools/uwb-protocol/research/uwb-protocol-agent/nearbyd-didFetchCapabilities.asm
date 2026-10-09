
-[NIServerItemLocalizerSession findMyAccessoryManager:didFetchFindingCapabilitiesOnDevice:withFindingCapabilities:error:]:
0x100334e80:  7f 23 03 d5   pacibsp
0x100334e84:  ff 03 02 d1   sub	sp, sp, #0x80
0x100334e88:  fc 6f 02 a9   stp	x28, x27, [sp, #0x20]
0x100334e8c:  fa 67 03 a9   stp	x26, x25, [sp, #0x30]
0x100334e90:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x100334e94:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x100334e98:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x100334e9c:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x100334ea0:  fd c3 01 91   add	fp, sp, #0x70
0x100334ea4:  f6 03 05 aa   mov	x22, x5
0x100334ea8:  f5 03 04 aa   mov	x21, x4
0x100334eac:  f4 03 03 aa   mov	x20, x3
0x100334eb0:  f3 03 02 aa   mov	x19, x2
0x100334eb4:  f7 03 00 aa   mov	x23, x0
0x100334eb8:  08 34 00 b0   adrp	x8, 0x1009b5000
0x100334ebc:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x100334ec0:  08 01 40 f9   ldr	x8, [x8]
0x100334ec4:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x100334ec8:  37 f2 06 94   bl	j__objc_retain_x19
0x100334ecc:  3e f2 06 94   bl	j__objc_retain_x20
0x100334ed0:  41 f2 06 94   bl	j__objc_retain_x21
0x100334ed4:  44 f2 06 94   bl	j__objc_retain_x22
0x100334ed8:  08 37 00 90   adrp	x8, 0x100a14000
0x100334edc:  08 3d 82 b9   ldrsw	x8, [x8, #0x23c]
0x100334ee0:  e8 6a 68 f8   ldr	x8, [x23, x8]
0x100334ee4:  48 07 00 b4   cbz	x8, loc_100334fcc ; ⤵ 0xe8
0x100334ee8:  08 37 00 90   adrp	x8, 0x100a14000
0x100334eec:  08 a9 82 b9   ldrsw	x8, [x8, #0x2a8]
0x100334ef0:  e8 6a 68 f8   ldr	x8, [x23, x8]
0x100334ef4:  1f 01 13 eb   cmp	x8, x19
0x100334ef8:  61 15 00 54   b.ne	loc_1003351a4 ; ⤵ 0x2ac
0x100334efc:  08 37 00 90   adrp	x8, 0x100a14000
0x100334f00:  08 91 82 b9   ldrsw	x8, [x8, #0x290]
0x100334f04:  e0 6a 68 f8   ldr	x0, [x23, x8]
0x100334f08:  9e f4 06 94   bl	j__objc_msgSend(x0, "UUID")
0x100334f0c:  fd 03 1d aa   mov	fp, fp
0x100334f10:  19 f2 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100334f14:  f8 03 00 aa   mov	x24, x0
0x100334f18:  e0 03 14 aa   mov	x0, x20
0x100334f1c:  e2 03 18 aa   mov	x2, x24
0x100334f20:  e0 21 07 94   bl	j__objc_msgSend(x0, "isEqual:")
0x100334f24:  f9 03 00 aa   mov	x25, x0
0x100334f28:  eb f1 06 94   bl	j__objc_release_x24
0x100334f2c:  d9 13 00 36   tbz	w25, #0, loc_1003351a4 ; ⤵ 0x278
0x100334f30:  ba 37 00 b0   adrp	x26, 0x100a29000
0x100334f34:  5a 43 38 91   add	x26, x26, #0xe10 ; "CreateConfigRTTTypes"
0x100334f38:  58 03 40 f9   ldr	x24, [x26]
0x100334f3c:  d6 05 00 b4   cbz	x22, loc_100334ff4 ; ⤵ 0xb8
0x100334f40:  e0 03 18 aa   mov	x0, x24
0x100334f44:  01 02 80 52   mov	w1, #0x10
0x100334f48:  6f f2 06 94   bl	j__os_log_type_enabled
0x100334f4c:  80 00 00 34   cbz	w0, loc_100334f5c ; ⤵ 0x10
0x100334f50:  e0 03 16 aa   mov	x0, x22
0x100334f54:  e1 03 18 aa   mov	x1, x24
0x100334f58:  81 a5 06 94   bl	0x1004de55c
0x100334f5c:  ; loc_100334f5c
0x100334f5c:  e0 03 16 aa   mov	x0, x22
0x100334f60:  f0 16 07 94   bl	j__objc_msgSend(x0, "domain")
0x100334f64:  fd 03 1d aa   mov	fp, fp
0x100334f68:  03 f2 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100334f6c:  f8 03 00 aa   mov	x24, x0
0x100334f70:  08 34 00 b0   adrp	x8, 0x1009b5000
0x100334f74:  08 15 47 f9   ldr	x8, [x8, #0xe28] ; __got._kCLErrorDomainPrivate
0x100334f78:  19 01 40 f9   ldr	x25, [x8]
0x100334f7c:  e2 03 19 aa   mov	x2, x25
0x100334f80:  f0 21 07 94   bl	j__objc_msgSend(x0, "isEqualToString:")
0x100334f84:  c0 08 00 34   cbz	w0, loc_10033509c ; ⤵ 0x118
0x100334f88:  e0 03 16 aa   mov	x0, x22
0x100334f8c:  1d 0e 07 94   bl	j__objc_msgSend(x0, "code")
0x100334f90:  1f 98 00 f1   cmp	x0, #0x26
0x100334f94:  fb 17 9f 1a   cset	w27, eq
0x100334f98:  cf f1 06 94   bl	j__objc_release_x24
0x100334f9c:  3b 08 00 34   cbz	w27, loc_1003350a0 ; ⤵ 0x104
0x100334fa0:  58 03 40 f9   ldr	x24, [x26]
0x100334fa4:  e0 03 18 aa   mov	x0, x24
0x100334fa8:  01 00 80 52   mov	w1, #0
0x100334fac:  56 f2 06 94   bl	j__os_log_type_enabled
0x100334fb0:  80 0c 00 34   cbz	w0, loc_100335140 ; ⤵ 0x190
0x100334fb4:  ff 03 00 79   strh	wzr, [sp]
0x100334fb8:  60 e6 ff 90   adrp	x0, 0x100000000
0x100334fbc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100334fc0:  e3 30 00 f0   adrp	x3, 0x100953000
0x100334fc4:  63 90 32 91   add	x3, x3, #0xca4 ; "#ses-item-loc,Fetch Finding Capability not supported for accessory - assuming just FC1-ND support"
0x100334fc8:  59 00 00 14   b	loc_10033512c ; ⤵ 0x164
0x100334fcc:  ; loc_100334fcc
0x100334fcc:  a8 37 00 b0   adrp	x8, 0x100a29000
0x100334fd0:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x100334fd4:  17 01 40 f9   ldr	x23, [x8]
0x100334fd8:  e0 03 17 aa   mov	x0, x23
0x100334fdc:  01 02 80 52   mov	w1, #0x10
0x100334fe0:  49 f2 06 94   bl	j__os_log_type_enabled
0x100334fe4:  00 0e 00 34   cbz	w0, loc_1003351a4 ; ⤵ 0x1c0
0x100334fe8:  e0 03 17 aa   mov	x0, x23
0x100334fec:  6f a5 06 94   bl	0x1004de5a8
0x100334ff0:  6d 00 00 14   b	loc_1003351a4 ; ⤵ 0x1b4
0x100334ff4:  ; loc_100334ff4
0x100334ff4:  04 f2 06 94   bl	j__objc_retain_x24
0x100334ff8:  e0 03 18 aa   mov	x0, x24
0x100334ffc:  01 00 80 52   mov	w1, #0
0x100335000:  41 f2 06 94   bl	j__os_log_type_enabled
0x100335004:  c0 02 00 34   cbz	w0, loc_10033505c ; ⤵ 0x58
0x100335008:  e0 03 15 aa   mov	x0, x21
0x10033500c:  55 41 07 94   bl	j__objc_msgSend(x0, "supportsFC1ND")
0x100335010:  f9 03 00 aa   mov	x25, x0
0x100335014:  e0 03 15 aa   mov	x0, x21
0x100335018:  5a 41 07 94   bl	j__objc_msgSend(x0, "supportsNBAMMS")
0x10033501c:  a8 11 00 b0   adrp	x8, 0x10056a000
0x100335020:  00 99 42 fd   ldr	d0, [x8, #0x530]
0x100335024:  e0 03 00 bd   str	s0, [sp]
0x100335028:  f9 07 00 b9   str	w25, [sp, #0x4]
0x10033502c:  08 80 80 52   mov	w8, #0x400
0x100335030:  e8 13 00 79   strh	w8, [sp, #0x8]
0x100335034:  e0 a3 00 b8   stur	w0, [sp, #0xa]
0x100335038:  40 e6 ff f0   adrp	x0, 0x100000000
0x10033503c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100335040:  e3 30 00 d0   adrp	x3, 0x100953000
0x100335044:  63 bc 35 91   add	x3, x3, #0xd6f ; "#ses-item-loc,[CL cb] didFetchFindingCapabilitiesOnDevice, supportsFC1ND: %d, supportsNBAMMS: %d"
0x100335048:  e4 03 00 91   mov	x4, sp
0x10033504c:  e1 03 18 aa   mov	x1, x24
0x100335050:  02 00 80 52   mov	w2, #0
0x100335054:  c5 01 80 52   mov	w5, #0xe
0x100335058:  5f ef 06 94   bl	j___os_log_impl
0x10033505c:  ; loc_10033505c
0x10033505c:  9e f1 06 94   bl	j__objc_release_x24
0x100335060:  e8 36 00 f0   adrp	x8, 0x100a14000
0x100335064:  08 45 82 b9   ldrsw	x8, [x8, #0x244]
0x100335068:  29 00 80 52   mov	w9, #0x1
0x10033506c:  e9 6a 28 38   strb	w9, [x23, x8]
0x100335070:  e0 03 15 aa   mov	x0, x21
0x100335074:  3b 41 07 94   bl	j__objc_msgSend(x0, "supportsFC1ND")
0x100335078:  e8 36 00 f0   adrp	x8, 0x100a14000
0x10033507c:  08 49 82 b9   ldrsw	x8, [x8, #0x248]
0x100335080:  e0 6a 28 38   strb	w0, [x23, x8]
0x100335084:  e0 03 15 aa   mov	x0, x21
0x100335088:  3e 41 07 94   bl	j__objc_msgSend(x0, "supportsNBAMMS")
0x10033508c:  e8 36 00 f0   adrp	x8, 0x100a14000
0x100335090:  08 4d 82 b9   ldrsw	x8, [x8, #0x24c]
0x100335094:  e0 6a 28 38   strb	w0, [x23, x8]
0x100335098:  34 00 00 14   b	loc_100335168 ; ⤵ 0xd0
0x10033509c:  ; loc_10033509c
0x10033509c:  8e f1 06 94   bl	j__objc_release_x24
0x1003350a0:  ; loc_1003350a0
0x1003350a0:  e0 03 16 aa   mov	x0, x22
0x1003350a4:  9f 16 07 94   bl	j__objc_msgSend(x0, "domain")
0x1003350a8:  fd 03 1d aa   mov	fp, fp
0x1003350ac:  b2 f1 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003350b0:  f8 03 00 aa   mov	x24, x0
0x1003350b4:  e2 03 19 aa   mov	x2, x25
0x1003350b8:  a2 21 07 94   bl	j__objc_msgSend(x0, "isEqualToString:")
0x1003350bc:  e0 00 00 34   cbz	w0, loc_1003350d8 ; ⤵ 0x1c
0x1003350c0:  e0 03 16 aa   mov	x0, x22
0x1003350c4:  cf 0d 07 94   bl	j__objc_msgSend(x0, "code")
0x1003350c8:  1f 04 00 f1   cmp	x0, #0x1
0x1003350cc:  01 01 00 54   b.ne	loc_1003350ec ; ⤵ 0x20
0x1003350d0:  81 f1 06 94   bl	j__objc_release_x24
0x1003350d4:  0c 00 00 14   b	loc_100335104 ; ⤵ 0x30
0x1003350d8:  ; loc_1003350d8
0x1003350d8:  7f f1 06 94   bl	j__objc_release_x24
0x1003350dc:  ; loc_1003350dc
0x1003350dc:  e0 03 17 aa   mov	x0, x23
0x1003350e0:  e2 03 16 aa   mov	x2, x22
0x1003350e4:  5f fa 06 94   bl	j__objc_msgSend(x0, "_handleError:")
0x1003350e8:  2f 00 00 14   b	loc_1003351a4 ; ⤵ 0xbc
0x1003350ec:  ; loc_1003350ec
0x1003350ec:  e0 03 16 aa   mov	x0, x22
0x1003350f0:  c4 0d 07 94   bl	j__objc_msgSend(x0, "code")
0x1003350f4:  1f 7c 00 f1   cmp	x0, #0x1f
0x1003350f8:  f9 17 9f 1a   cset	w25, eq
0x1003350fc:  76 f1 06 94   bl	j__objc_release_x24
0x100335100:  f9 fe 07 36   tbz	w25, #0, loc_1003350dc ; ⤴ -0x24
0x100335104:  ; loc_100335104
0x100335104:  58 03 40 f9   ldr	x24, [x26]
0x100335108:  e0 03 18 aa   mov	x0, x24
0x10033510c:  01 00 80 52   mov	w1, #0
0x100335110:  fd f1 06 94   bl	j__os_log_type_enabled
0x100335114:  60 01 00 34   cbz	w0, loc_100335140 ; ⤵ 0x2c
0x100335118:  ff 03 00 79   strh	wzr, [sp]
0x10033511c:  40 e6 ff f0   adrp	x0, 0x100000000
0x100335120:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100335124:  e3 30 00 d0   adrp	x3, 0x100953000
0x100335128:  63 18 34 91   add	x3, x3, #0xd06 ; "#ses-item-loc,Fetch Finding Capability command not available on accessory - assuming just FC1-ND support"
0x10033512c:  ; loc_10033512c
0x10033512c:  e4 03 00 91   mov	x4, sp
0x100335130:  e1 03 18 aa   mov	x1, x24
0x100335134:  02 00 80 52   mov	w2, #0
0x100335138:  45 00 80 52   mov	w5, #0x2
0x10033513c:  26 ef 06 94   bl	j___os_log_impl
0x100335140:  ; loc_100335140
0x100335140:  e8 36 00 f0   adrp	x8, 0x100a14000
0x100335144:  08 45 82 b9   ldrsw	x8, [x8, #0x244]
0x100335148:  29 00 80 52   mov	w9, #0x1
0x10033514c:  e9 6a 28 38   strb	w9, [x23, x8]
0x100335150:  e8 36 00 f0   adrp	x8, 0x100a14000
0x100335154:  08 49 82 b9   ldrsw	x8, [x8, #0x248]
0x100335158:  e9 6a 28 38   strb	w9, [x23, x8]
0x10033515c:  e8 36 00 f0   adrp	x8, 0x100a14000
0x100335160:  08 4d 82 b9   ldrsw	x8, [x8, #0x24c]
0x100335164:  ff 6a 28 38   strb	wzr, [x23, x8]
0x100335168:  ; loc_100335168
0x100335168:  e0 03 17 aa   mov	x0, x23
0x10033516c:  45 fe 06 94   bl	j__objc_msgSend(x0, "_populateRangingSessionMacMode")
0x100335170:  e0 03 17 aa   mov	x0, x23
0x100335174:  b3 f6 06 94   bl	j__objc_msgSend(x0, "_configureRangingSession")
0x100335178:  fd 03 1d aa   mov	fp, fp
0x10033517c:  7e f1 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100335180:  f8 03 00 aa   mov	x24, x0
0x100335184:  a0 00 00 b4   cbz	x0, loc_100335198 ; ⤵ 0x14
0x100335188:  e0 03 17 aa   mov	x0, x23
0x10033518c:  e2 03 18 aa   mov	x2, x24
0x100335190:  34 fa 06 94   bl	j__objc_msgSend(x0, "_handleError:")
0x100335194:  03 00 00 14   b	loc_1003351a0 ; ⤵ 0xc
0x100335198:  ; loc_100335198
0x100335198:  e0 03 17 aa   mov	x0, x23
0x10033519c:  41 f6 06 94   bl	j__objc_msgSend(x0, "_configureCompanionForRanging")
0x1003351a0:  ; loc_1003351a0
0x1003351a0:  4d f1 06 94   bl	j__objc_release_x24
0x1003351a4:  ; loc_1003351a4
0x1003351a4:  44 f1 06 94   bl	j__objc_release_x22
0x1003351a8:  3f f1 06 94   bl	j__objc_release_x21
0x1003351ac:  3a f1 06 94   bl	j__objc_release_x20
0x1003351b0:  35 f1 06 94   bl	j__objc_release_x19
0x1003351b4:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x1003351b8:  09 34 00 90   adrp	x9, 0x1009b5000
0x1003351bc:  29 b5 45 f9   ldr	x9, [x9, #0xb68] ; __got.___stack_chk_guard
0x1003351c0:  29 01 40 f9   ldr	x9, [x9]
0x1003351c4:  3f 01 08 eb   cmp	x9, x8
0x1003351c8:  21 01 00 54   b.ne	loc_1003351ec ; ⤵ 0x24
0x1003351cc:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x1003351d0:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x1003351d4:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x1003351d8:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x1003351dc:  fa 67 43 a9   ldp	x26, x25, [sp, #0x30]
0x1003351e0:  fc 6f 42 a9   ldp	x28, x27, [sp, #0x20]
0x1003351e4:  ff 03 02 91   add	sp, sp, #0x80
0x1003351e8:  ff 0f 5f d6   retab
0x1003351ec:  ; loc_1003351ec
0x1003351ec:  de ee 06 94   bl	j____stack_chk_fail
0x1003351f0:  0b 00 00 14   b	loc_10033521c ; ⤵ 0x2c
0x1003351f4:  f7 03 00 aa   mov	x23, x0
0x1003351f8:  37 f1 06 94   bl	j__objc_release_x24
0x1003351fc:  0c 00 00 14   b	loc_10033522c ; ⤵ 0x30
0x100335200:  0a 00 00 14   b	loc_100335228 ; ⤵ 0x28
0x100335204:  f7 03 00 aa   mov	x23, x0
0x100335208:  33 f1 06 94   bl	j__objc_release_x24
0x10033520c:  08 00 00 14   b	loc_10033522c ; ⤵ 0x20
0x100335210:  f7 03 00 aa   mov	x23, x0
0x100335214:  30 f1 06 94   bl	j__objc_release_x24
0x100335218:  05 00 00 14   b	loc_10033522c ; ⤵ 0x14
0x10033521c:  ; loc_10033521c
0x10033521c:  f7 03 00 aa   mov	x23, x0
0x100335220:  2d f1 06 94   bl	j__objc_release_x24
0x100335224:  02 00 00 14   b	loc_10033522c ; ⤵ 0x8
0x100335228:  ; loc_100335228
0x100335228:  f7 03 00 aa   mov	x23, x0
0x10033522c:  ; loc_10033522c
0x10033522c:  22 f1 06 94   bl	j__objc_release_x22
0x100335230:  1d f1 06 94   bl	j__objc_release_x21
0x100335234:  18 f1 06 94   bl	j__objc_release_x20
0x100335238:  13 f1 06 94   bl	j__objc_release_x19
0x10033523c:  02 00 00 14   b	loc_100335244 ; ⤵ 0x8
0x100335240:  f7 03 00 aa   mov	x23, x0
0x100335244:  ; loc_100335244
0x100335244:  e0 03 17 aa   mov	x0, x23
0x100335248:  63 eb 06 94   bl	j___Unwind_Resume

-[NIServerItemLocalizerSession locationManager:didReportVisit:]:
0x10033524c:  7f 23 03 d5   pacibsp
0x100335250:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x100335254:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x100335258:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10033525c:  fd 83 00 91   add	fp, sp, #0x20
0x100335260:  f4 03 03 aa   mov	x20, x3
0x100335264:  f3 03 02 aa   mov	x19, x2
0x100335268:  f5 03 00 aa   mov	x21, x0
0x10033526c:  4e f1 06 94   bl	j__objc_retain_x19
0x100335270:  55 f1 06 94   bl	j__objc_retain_x20
0x100335274:  e8 36 00 f0   adrp	x8, 0x100a14000
0x100335278:  16 b9 82 b9   ldrsw	x22, [x8, #0x2b8]
0x10033527c:  a8 6a 76 f8   ldr	x8, [x21, x22]
0x100335280:  7f 02 08 eb   cmp	x19, x8
0x100335284:  60 01 00 54   b.eq	loc_1003352b0 ; ⤵ 0x2c
0x100335288:  a8 37 00 90   adrp	x8, 0x100a29000
0x10033528c:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x100335290:  15 01 40 f9   ldr	x21, [x8]
0x100335294:  e0 03 15 aa   mov	x0, x21
0x100335298:  01 02 80 52   mov	w1, #0x10
0x10033529c:  9a f1 06 94   bl	j__os_log_type_enabled
0x1003352a0:  c0 01 00 34   cbz	w0, loc_1003352d8 ; ⤵ 0x38
0x1003352a4:  e0 03 15 aa   mov	x0, x21
0x1003352a8:  cb a4 06 94   bl	0x1004de5d4
0x1003352ac:  0b 00 00 14   b	loc_1003352d8 ; ⤵ 0x2c
0x1003352b0:  ; loc_1003352b0
0x1003352b0:  e0 03 15 aa   mov	x0, x21
0x1003352b4:  e2 03 14 aa   mov	x2, x20
0x1003352b8:  8a f6 06 94   bl	j__objc_msgSend(x0, "_convertCLVisitToVisitPlaceType:")
0x1003352bc:  e2 03 00 aa   mov	x2, x0
0x1003352c0:  e8 36 00 f0   adrp	x8, 0x100a14000
0x1003352c4:  08 b5 82 b9   ldrsw	x8, [x8, #0x2b4]
0x1003352c8:  a0 6a 68 f8   ldr	x0, [x21, x8]
0x1003352cc:  65 44 07 94   bl	j__objc_msgSend(x0, "updateWithVisitPlaceType:")
0x1003352d0:  a0 6a 76 f8   ldr	x0, [x21, x22]
0x1003352d4:  2b 3f 07 94   bl	j__objc_msgSend(x0, "stopMonitoringVisits")
0x1003352d8:  ; loc_1003352d8
0x1003352d8:  ef f0 06 94   bl	j__objc_release_x20
0x1003352dc:  ea f0 06 94   bl	j__objc_release_x19

