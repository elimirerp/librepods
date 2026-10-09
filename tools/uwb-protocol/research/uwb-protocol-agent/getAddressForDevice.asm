
-[CLDurianMaintenance getAddressForDevice:]:
0x10149ea90:  7f 23 03 d5   pacibsp
0x10149ea94:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10149ea98:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10149ea9c:  fd 43 00 91   add	fp, sp, #0x10
0x10149eaa0:  13 0c 40 f9   ldr	x19, [x0, #0x18]
0x10149eaa4:  e0 03 02 aa   mov	x0, x2
0x10149eaa8:  c6 fd 1a 94   bl	j__objc_msgSend(x0, "uuid")
0x10149eaac:  e2 03 00 aa   mov	x2, x0
0x10149eab0:  e0 03 13 aa   mov	x0, x19
0x10149eab4:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10149eab8:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10149eabc:  ff 23 03 d5   autibsp
0x10149eac0:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10149eac4:  50 00 f0 b6   tbz	x16, #0x3e, loc_10149eacc ; ⤵ 0x8
0x10149eac8:  20 8e 38 d4   brk	#0xc471
0x10149eacc:  ; loc_10149eacc
0x10149eacc:  75 35 1a 14   b	j__objc_msgSend(x0, "getAddressForUuid:")

-[CLDurianMaintenance finishMaintainingDevice:withReason:andCategory:]:
0x10149ead0:  7f 23 03 d5   pacibsp
0x10149ead4:  ff 43 03 d1   sub	sp, sp, #0xd0
0x10149ead8:  e9 23 06 6d   stp	d9, d8, [sp, #0x60]
0x10149eadc:  fc 6f 07 a9   stp	x28, x27, [sp, #0x70]
0x10149eae0:  fa 67 08 a9   stp	x26, x25, [sp, #0x80]
0x10149eae4:  f8 5f 09 a9   stp	x24, x23, [sp, #0x90]
0x10149eae8:  f6 57 0a a9   stp	x22, x21, [sp, #0xa0]
0x10149eaec:  f4 4f 0b a9   stp	x20, x19, [sp, #0xb0]
0x10149eaf0:  fd 7b 0c a9   stp	fp, lr, [sp, #0xc0]
0x10149eaf4:  fd 03 03 91   add	fp, sp, #0xc0
0x10149eaf8:  f5 03 04 aa   mov	x21, x4
0x10149eafc:  f6 03 03 aa   mov	x22, x3
0x10149eb00:  f4 03 02 aa   mov	x20, x2
0x10149eb04:  f3 03 00 aa   mov	x19, x0
0x10149eb08:  a8 77 00 90   adrp	x8, 0x102392000
0x10149eb0c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10149eb10:  08 01 40 f9   ldr	x8, [x8]
0x10149eb14:  e8 2f 00 f9   str	x8, [sp, #0x58]
0x10149eb18:  a2 61 1a 94   bl	j__objc_msgSend(x0, "isMaintenanceActive")
0x10149eb1c:  20 17 00 34   cbz	w0, loc_10149ee00 ; ⤵ 0x2e4
0x10149eb20:  e0 03 14 aa   mov	x0, x20
0x10149eb24:  a7 fd 1a 94   bl	j__objc_msgSend(x0, "uuid")
0x10149eb28:  e2 03 00 aa   mov	x2, x0
0x10149eb2c:  e0 03 13 aa   mov	x0, x19
0x10149eb30:  e4 5c 1a 94   bl	j__objc_msgSend(x0, "isActiveForUuid:")
0x10149eb34:  08 10 7e 1e   fmov	d8, #-1.00000000
0x10149eb38:  3b 87 00 90   adrp	x27, 0x102582000
0x10149eb3c:  3a 87 00 90   adrp	x26, 0x102582000
0x10149eb40:  c0 0d 00 34   cbz	w0, loc_10149ecf8 ; ⤵ 0x1b8
0x10149eb44:  77 42 40 f9   ldr	x23, [x19, #0x80]
0x10149eb48:  e0 03 14 aa   mov	x0, x20
0x10149eb4c:  9d fd 1a 94   bl	j__objc_msgSend(x0, "uuid")
0x10149eb50:  e2 03 00 aa   mov	x2, x0
0x10149eb54:  e0 03 17 aa   mov	x0, x23
0x10149eb58:  72 95 1a 94   bl	j__objc_msgSend(x0, "removeObject:")
0x10149eb5c:  1d cb 19 94   bl	j__CFAbsoluteTimeGetCurrent
0x10149eb60:  08 1c a0 4e   mov	v8.16b, v0.16b
0x10149eb64:  60 0a 40 f9   ldr	x0, [x19, #0x10]
0x10149eb68:  66 90 1a 94   bl	j__objc_msgSend(x0, "referenceTime")
0x10149eb6c:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10149eb70:  1f 05 00 b1   cmn	x8, #0x1
0x10149eb74:  41 16 00 54   b.ne	loc_10149ee3c ; ⤵ 0x2c8
0x10149eb78:  ; loc_10149eb78
0x10149eb78:  08 39 60 1e   fsub	d8, d8, d0
0x10149eb7c:  57 3f 46 f9   ldr	x23, [x26, #0xc78]
0x10149eb80:  e0 03 17 aa   mov	x0, x23
0x10149eb84:  01 00 80 52   mov	w1, #0
0x10149eb88:  da dd 19 94   bl	j__os_log_type_enabled
0x10149eb8c:  a0 05 00 34   cbz	w0, loc_10149ec40 ; ⤵ 0xb4
0x10149eb90:  e0 03 14 aa   mov	x0, x20
0x10149eb94:  8b fd 1a 94   bl	j__objc_msgSend(x0, "uuid")
0x10149eb98:  a0 e7 ff 97   bl	0x101498a18
0x10149eb9c:  f8 03 00 aa   mov	x24, x0
0x10149eba0:  e0 03 14 aa   mov	x0, x20
0x10149eba4:  6f f7 19 94   bl	j__objc_msgSend(x0, "beacon")
0x10149eba8:  9e 74 1a 94   bl	j__objc_msgSend(x0, "name")
0x10149ebac:  f9 03 00 aa   mov	x25, x0
0x10149ebb0:  60 42 40 f9   ldr	x0, [x19, #0x80]
0x10149ebb4:  cb 0a 1a 94   bl	j__objc_msgSend(x0, "count")
0x10149ebb8:  08 01 78 1e   fcvtzs	w8, d8
0x10149ebbc:  a9 37 00 d0   adrp	x9, 0x101b94000
0x10149ebc0:  20 a1 40 fd   ldr	d0, [x9, #0x140]
0x10149ebc4:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10149ebc8:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10149ebcc:  49 04 81 52   mov	w9, #0x822
0x10149ebd0:  e9 33 00 79   strh	w9, [sp, #0x18]
0x10149ebd4:  89 50 00 90   adrp	x9, 0x101eae000
0x10149ebd8:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10149ebdc:  e9 a3 01 f8   stur	x9, [sp, #0x1a]
0x10149ebe0:  29 08 81 52   mov	w9, #0x841
0x10149ebe4:  e9 47 00 79   strh	w9, [sp, #0x22]
0x10149ebe8:  f8 43 02 f8   stur	x24, [sp, #0x24]
0x10149ebec:  49 08 81 52   mov	w9, #0x842
0x10149ebf0:  e9 5b 00 79   strh	w9, [sp, #0x2c]
0x10149ebf4:  f9 e3 02 f8   stur	x25, [sp, #0x2e]
0x10149ebf8:  e9 6f 00 79   strh	w9, [sp, #0x36]
0x10149ebfc:  f6 1f 00 f9   str	x22, [sp, #0x38]
0x10149ec00:  49 80 80 52   mov	w9, #0x402
0x10149ec04:  e9 83 00 79   strh	w9, [sp, #0x40]
0x10149ec08:  f5 23 04 b8   stur	w21, [sp, #0x42]
0x10149ec0c:  e9 8f 00 79   strh	w9, [sp, #0x46]
0x10149ec10:  e0 4b 00 b9   str	w0, [sp, #0x48]
0x10149ec14:  e9 9b 00 79   strh	w9, [sp, #0x4c]
0x10149ec18:  e8 e3 04 b8   stur	w8, [sp, #0x4e]
0x10149ec1c:  00 5b ff d0   adrp	x0, 0x100000000
0x10149ec20:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10149ec24:  63 6f 00 f0   adrp	x3, 0x10228d000
0x10149ec28:  63 80 3c 91   add	x3, x3, #0xf20 ; "{\"msg%{public}.0s\":\"#durian #maint done\", \"item\":%{private, location:escape_only}@, \"name\":%{public, location:escape_only}@, \"reason\":%{public, location:escape_only}@, \"category\":%{public}d, \"left\":%{"...
0x10149ec2c:  e4 43 00 91   add	x4, sp, #0x10
0x10149ec30:  e1 03 17 aa   mov	x1, x23
0x10149ec34:  02 00 80 52   mov	w2, #0
0x10149ec38:  45 08 80 52   mov	w5, #0x42
0x10149ec3c:  6d d9 19 94   bl	j___os_log_impl
0x10149ec40:  ; loc_10149ec40
0x10149ec40:  60 0a 40 f9   ldr	x0, [x19, #0x10]
0x10149ec44:  00 1d a8 4e   mov	v0.16b, v8.16b
0x10149ec48:  4e b0 1a 94   bl	j__objc_msgSend(x0, "setDuration:")
0x10149ec4c:  e0 03 14 aa   mov	x0, x20
0x10149ec50:  e2 03 15 aa   mov	x2, x21
0x10149ec54:  7b bb 1a 94   bl	j__objc_msgSend(x0, "setLastMaintenanceCategory:")
0x10149ec58:  42 7e 00 f0   adrp	x2, 0x102469000
0x10149ec5c:  42 40 00 91   add	x2, x2, #0x10 ; ":"
0x10149ec60:  e0 03 16 aa   mov	x0, x22
0x10149ec64:  37 05 1a 94   bl	j__objc_msgSend(x0, "componentsSeparatedByString:")
0x10149ec68:  f7 03 00 aa   mov	x23, x0
0x10149ec6c:  78 2a 40 f9   ldr	x24, [x19, #0x50]
0x10149ec70:  79 0a 40 f9   ldr	x25, [x19, #0x10]
0x10149ec74:  e0 03 14 aa   mov	x0, x20
0x10149ec78:  52 69 1a 94   bl	j__objc_msgSend(x0, "leashState")
0x10149ec7c:  1f 00 00 f1   cmp	x0, #0
0x10149ec80:  e6 07 9f 1a   cset	w6, ne
0x10149ec84:  e0 03 18 aa   mov	x0, x24
0x10149ec88:  e2 03 19 aa   mov	x2, x25
0x10149ec8c:  e3 03 14 aa   mov	x3, x20
0x10149ec90:  e4 03 16 aa   mov	x4, x22
0x10149ec94:  e5 03 15 aa   mov	x5, x21
0x10149ec98:  00 1d a8 4e   mov	v0.16b, v8.16b
0x10149ec9c:  f9 e6 1a 94   bl	j__objc_msgSend(x0, "submitMaintenanceMetrics:forDevice:withReason:andCategory:andDuration:leashable:")
0x10149eca0:  76 0a 40 f9   ldr	x22, [x19, #0x10]
0x10149eca4:  e0 03 17 aa   mov	x0, x23
0x10149eca8:  16 32 1a 94   bl	j__objc_msgSend(x0, "firstObject")
0x10149ecac:  e2 03 00 aa   mov	x2, x0
0x10149ecb0:  e0 03 16 aa   mov	x0, x22
0x10149ecb4:  e3 03 15 aa   mov	x3, x21
0x10149ecb8:  ba eb 19 94   bl	j__objc_msgSend(x0, "accumulateMaintainedReasonCountWithReason:andCategory:")
0x10149ecbc:  e0 03 14 aa   mov	x0, x20
0x10149ecc0:  98 ec 19 94   bl	j__objc_msgSend(x0, "activePeripheral")
0x10149ecc4:  e0 00 00 b5   cbnz	x0, loc_10149ece0 ; ⤵ 0x1c
0x10149ecc8:  e0 03 14 aa   mov	x0, x20
0x10149eccc:  45 ec 19 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10149ecd0:  80 00 00 b4   cbz	x0, loc_10149ece0 ; ⤵ 0x10
0x10149ecd4:  e0 03 14 aa   mov	x0, x20
0x10149ecd8:  02 00 80 d2   mov	x2, #0
0x10149ecdc:  d1 ab 1a 94   bl	j__objc_msgSend(x0, "setConnectCondition:")
0x10149ece0:  ; loc_10149ece0
0x10149ece0:  95 00 00 b5   cbnz	x21, loc_10149ecf0 ; ⤵ 0x10
0x10149ece4:  e0 03 14 aa   mov	x0, x20
0x10149ece8:  02 00 80 d2   mov	x2, #0
0x10149ecec:  cd ab 1a 94   bl	j__objc_msgSend(x0, "setConnectCondition:")
0x10149ecf0:  ; loc_10149ecf0
0x10149ecf0:  e0 03 14 aa   mov	x0, x20
0x10149ecf4:  0b 99 1a 94   bl	j__objc_msgSend(x0, "resetHeleMaintMetrics")
0x10149ecf8:  ; loc_10149ecf8
0x10149ecf8:  e0 03 13 aa   mov	x0, x19
0x10149ecfc:  c9 61 1a 94   bl	j__objc_msgSend(x0, "isNonHeleMaintenanceActive")
0x10149ed00:  40 01 00 37   tbnz	w0, #0, loc_10149ed28 ; ⤵ 0x28
0x10149ed04:  60 36 40 f9   ldr	x0, [x19, #0x68]
0x10149ed08:  a2 7f 00 d0   adrp	x2, 0x102494000
0x10149ed0c:  42 c0 32 91   add	x2, x2, #0xcb0 ; "complete"
0x10149ed10:  cc 93 1a 94   bl	j__objc_msgSend(x0, "releaseMaintenancePowerAssertion:")
0x10149ed14:  74 0a 40 f9   ldr	x20, [x19, #0x10]
0x10149ed18:  60 36 40 f9   ldr	x0, [x19, #0x68]
0x10149ed1c:  b1 38 1a 94   bl	j__objc_msgSend(x0, "getMaintenanceAssertionDuration")
0x10149ed20:  e0 03 14 aa   mov	x0, x20
0x10149ed24:  47 a7 1a 94   bl	j__objc_msgSend(x0, "setAssertionDuration:")
0x10149ed28:  ; loc_10149ed28
0x10149ed28:  e0 03 13 aa   mov	x0, x19
0x10149ed2c:  1d 61 1a 94   bl	j__objc_msgSend(x0, "isMaintenanceActive")
0x10149ed30:  80 06 00 37   tbnz	w0, #0, loc_10149ee00 ; ⤵ 0xd0
0x10149ed34:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10149ed38:  1f 05 00 b1   cmn	x8, #0x1
0x10149ed3c:  81 08 00 54   b.ne	loc_10149ee4c ; ⤵ 0x110
0x10149ed40:  54 3f 46 f9   ldr	x20, [x26, #0xc78]
0x10149ed44:  e0 03 14 aa   mov	x0, x20
0x10149ed48:  01 00 80 52   mov	w1, #0
0x10149ed4c:  69 dd 19 94   bl	j__os_log_type_enabled
0x10149ed50:  c0 03 00 34   cbz	w0, loc_10149edc8 ; ⤵ 0x78
0x10149ed54:  60 36 40 f9   ldr	x0, [x19, #0x68]
0x10149ed58:  a2 38 1a 94   bl	j__objc_msgSend(x0, "getMaintenanceAssertionDuration")
0x10149ed5c:  68 2e 40 b9   ldr	w8, [x19, #0x2c]
0x10149ed60:  a9 42 00 d0   adrp	x9, 0x101cf4000
0x10149ed64:  21 95 44 fd   ldr	d1, [x9, #0x928]
0x10149ed68:  e1 13 00 bd   str	s1, [sp, #0x10]
0x10149ed6c:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10149ed70:  49 04 81 52   mov	w9, #0x822
0x10149ed74:  e9 33 00 79   strh	w9, [sp, #0x18]
0x10149ed78:  89 50 00 90   adrp	x9, 0x101eae000
0x10149ed7c:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10149ed80:  e9 a3 01 f8   stur	x9, [sp, #0x1a]
0x10149ed84:  49 00 81 52   mov	w9, #0x802
0x10149ed88:  e9 47 00 79   strh	w9, [sp, #0x22]
0x10149ed8c:  e0 43 02 fc   stur	d0, [sp, #0x24]
0x10149ed90:  e9 5b 00 79   strh	w9, [sp, #0x2c]
0x10149ed94:  e8 e3 02 fc   stur	d8, [sp, #0x2e]
0x10149ed98:  49 80 80 52   mov	w9, #0x402
0x10149ed9c:  e9 6f 00 79   strh	w9, [sp, #0x36]
0x10149eda0:  e8 3b 00 b9   str	w8, [sp, #0x38]
0x10149eda4:  00 5b ff d0   adrp	x0, 0x100000000
0x10149eda8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10149edac:  83 6f 00 90   adrp	x3, 0x10228e000
0x10149edb0:  63 24 00 91   add	x3, x3, #0x9 ; "{\"msg%{public}.0s\":\"#durian #maint all complete\", \"assertion\":\"%{public}0.1f\", \"duration\":\"%{public}0.1f\", \"coex\":0x%{public}04X}"
0x10149edb4:  e4 43 00 91   add	x4, sp, #0x10
0x10149edb8:  e1 03 14 aa   mov	x1, x20
0x10149edbc:  02 00 80 52   mov	w2, #0
0x10149edc0:  85 05 80 52   mov	w5, #0x2c
0x10149edc4:  0b d9 19 94   bl	j___os_log_impl
0x10149edc8:  ; loc_10149edc8
0x10149edc8:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x10149edcc:  3d 00 1a 94   bl	j__objc_msgSend(x0, "clearData")
0x10149edd0:  60 2a 40 f9   ldr	x0, [x19, #0x50]
0x10149edd4:  62 0a 40 f9   ldr	x2, [x19, #0x10]
0x10149edd8:  d2 e5 1a 94   bl	j__objc_msgSend(x0, "submitCompletedMaintenanceMetrics:")
0x10149eddc:  74 0a 40 f9   ldr	x20, [x19, #0x10]
0x10149ede0:  e0 03 14 aa   mov	x0, x20
0x10149ede4:  c7 8f 1a 94   bl	j__objc_msgSend(x0, "referenceTime")
0x10149ede8:  e0 03 14 aa   mov	x0, x20
0x10149edec:  75 99 1a 94   bl	j__objc_msgSend(x0, "resetWithTime:")
0x10149edf0:  7f 2e 00 b9   str	wzr, [x19, #0x2c]
0x10149edf4:  7f fe 05 a9   stp	xzr, xzr, [x19, #0x58]
0x10149edf8:  60 2a 40 f9   ldr	x0, [x19, #0x50]
0x10149edfc:  59 76 1a 94   bl	j__objc_msgSend(x0, "notifyOnMaintenanceCompleteForAllDevices")
0x10149ee00:  ; loc_10149ee00
0x10149ee00:  e8 2f 40 f9   ldr	x8, [sp, #0x58]
0x10149ee04:  a9 77 00 90   adrp	x9, 0x102392000
0x10149ee08:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10149ee0c:  29 01 40 f9   ldr	x9, [x9]
0x10149ee10:  3f 01 08 eb   cmp	x9, x8
0x10149ee14:  01 02 00 54   b.ne	loc_10149ee54 ; ⤵ 0x40
0x10149ee18:  fd 7b 4c a9   ldp	fp, lr, [sp, #0xc0]
0x10149ee1c:  f4 4f 4b a9   ldp	x20, x19, [sp, #0xb0]
0x10149ee20:  f6 57 4a a9   ldp	x22, x21, [sp, #0xa0]
0x10149ee24:  f8 5f 49 a9   ldp	x24, x23, [sp, #0x90]
0x10149ee28:  fa 67 48 a9   ldp	x26, x25, [sp, #0x80]
0x10149ee2c:  fc 6f 47 a9   ldp	x28, x27, [sp, #0x70]
0x10149ee30:  e9 23 46 6d   ldp	d9, d8, [sp, #0x60]
0x10149ee34:  ff 43 03 91   add	sp, sp, #0xd0
0x10149ee38:  ff 0f 5f d6   retab
0x10149ee3c:  ; loc_10149ee3c
0x10149ee3c:  e0 07 00 fd   str	d0, [sp, #0x8]
0x10149ee40:  6b c5 19 94   bl	0x101b103ec
0x10149ee44:  e0 07 40 fd   ldr	d0, [sp, #0x8]
0x10149ee48:  4c ff ff 17   b	loc_10149eb78 ; ⤴ -0x2d0
0x10149ee4c:  ; loc_10149ee4c
0x10149ee4c:  62 c5 19 94   bl	0x101b103d4

