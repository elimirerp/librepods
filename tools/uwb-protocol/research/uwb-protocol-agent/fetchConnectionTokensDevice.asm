
-[CLDurianDeviceManager fetchConnectionTokensForDevice:]:
0x10147adbc:  7f 23 03 d5   pacibsp
0x10147adc0:  ff 03 06 d1   sub	sp, sp, #0x180
0x10147adc4:  e9 23 11 6d   stp	d9, d8, [sp, #0x110]
0x10147adc8:  fc 6f 12 a9   stp	x28, x27, [sp, #0x120]
0x10147adcc:  fa 67 13 a9   stp	x26, x25, [sp, #0x130]
0x10147add0:  f8 5f 14 a9   stp	x24, x23, [sp, #0x140]
0x10147add4:  f6 57 15 a9   stp	x22, x21, [sp, #0x150]
0x10147add8:  f4 4f 16 a9   stp	x20, x19, [sp, #0x160]
0x10147addc:  fd 7b 17 a9   stp	fp, lr, [sp, #0x170]
0x10147ade0:  fd c3 05 91   add	fp, sp, #0x170
0x10147ade4:  f3 03 02 aa   mov	x19, x2
0x10147ade8:  f4 03 00 aa   mov	x20, x0
0x10147adec:  c8 78 00 90   adrp	x8, 0x102392000
0x10147adf0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10147adf4:  08 01 40 f9   ldr	x8, [x8]
0x10147adf8:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x10147adfc:  5b 88 00 90   adrp	x27, 0x102582000
0x10147ae00:  68 3b 46 f9   ldr	x8, [x27, #0xc70] ; data_102582c70 (__DATA.__data)
0x10147ae04:  1f 05 00 b1   cmn	x8, #0x1
0x10147ae08:  41 3c 00 54   b.ne	loc_10147b590 ; ⤵ 0x788
0x10147ae0c:  b9 83 02 d1   sub	x25, fp, #0xa0
0x10147ae10:  5a 88 00 90   adrp	x26, 0x102582000
0x10147ae14:  55 3f 46 f9   ldr	x21, [x26, #0xc78] ; data_102582c78 (__DATA.__data)
0x10147ae18:  e0 03 15 aa   mov	x0, x21
0x10147ae1c:  01 00 80 52   mov	w1, #0
0x10147ae20:  34 6d 1a 94   bl	j__os_log_type_enabled
0x10147ae24:  e0 05 00 34   cbz	w0, loc_10147aee0 ; ⤵ 0xbc
0x10147ae28:  e0 03 13 aa   mov	x0, x19
0x10147ae2c:  e5 8c 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147ae30:  fa 76 00 94   bl	0x101498a18
0x10147ae34:  f6 03 00 aa   mov	x22, x0
0x10147ae38:  e0 03 13 aa   mov	x0, x19
0x10147ae3c:  e9 7b 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147ae40:  f8 d5 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147ae44:  f5 76 00 94   bl	0x101498a18
0x10147ae48:  f7 03 00 aa   mov	x23, x0
0x10147ae4c:  e0 03 13 aa   mov	x0, x19
0x10147ae50:  e4 7b 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x10147ae54:  63 14 1b 94   bl	j__objc_msgSend(x0, "possiblePeripherals")
0x10147ae58:  22 9a 1a 94   bl	j__objc_msgSend(x0, "count")
0x10147ae5c:  f8 03 00 aa   mov	x24, x0
0x10147ae60:  e0 03 13 aa   mov	x0, x19
0x10147ae64:  b7 f7 1a 94   bl	j__objc_msgSend(x0, "lastReconciledCriteria")
0x10147ae68:  c8 38 00 b0   adrp	x8, 0x101b93000
0x10147ae6c:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x10147ae70:  1f 00 00 f1   cmp	x0, #0
0x10147ae74:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x10147ae78:  e8 07 9f 1a   cset	w8, ne
0x10147ae7c:  49 04 81 52   mov	w9, #0x822
0x10147ae80:  a9 83 16 78   sturh	w9, [fp, #-0x98]
0x10147ae84:  a9 51 00 90   adrp	x9, 0x101eae000
0x10147ae88:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147ae8c:  bf 43 16 b8   stur	wzr, [fp, #-0x9c]
0x10147ae90:  29 a3 00 f8   stur	x9, [x25, #0xa]
0x10147ae94:  29 08 81 52   mov	w9, #0x841
0x10147ae98:  a9 23 17 78   sturh	w9, [fp, #-0x8e]
0x10147ae9c:  36 43 01 f8   stur	x22, [x25, #0x14]
0x10147aea0:  a9 c3 17 78   sturh	w9, [fp, #-0x84]
0x10147aea4:  37 e3 01 f8   stur	x23, [x25, #0x1e]
0x10147aea8:  49 80 80 52   mov	w9, #0x402
0x10147aeac:  a9 63 18 78   sturh	w9, [fp, #-0x7a]
0x10147aeb0:  b8 83 18 b8   stur	w24, [fp, #-0x78]
0x10147aeb4:  a9 c3 18 78   sturh	w9, [fp, #-0x74]
0x10147aeb8:  28 e3 02 b8   stur	w8, [x25, #0x2e]
0x10147aebc:  20 5c ff d0   adrp	x0, 0x100000000
0x10147aec0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147aec4:  43 70 00 90   adrp	x3, 0x102282000
0x10147aec8:  63 24 19 91   add	x3, x3, #0x649 ; "{\"msg%{public}.0s\":\"#durian #connectattempt fetching tokens\", \"item\":%{private, location:escape_only}@, \"attemptId\":%{private, location:escape_only}@, \"periphs\":%{public}d, \"lastReconciled\":%{public}h"...
0x10147aecc:  a4 83 02 d1   sub	x4, fp, #0xa0
0x10147aed0:  e1 03 15 aa   mov	x1, x21
0x10147aed4:  02 00 80 52   mov	w2, #0
0x10147aed8:  45 06 80 52   mov	w5, #0x32
0x10147aedc:  c5 68 1a 94   bl	j___os_log_impl
0x10147aee0:  ; loc_10147aee0
0x10147aee0:  e0 03 13 aa   mov	x0, x19
0x10147aee4:  22 00 80 52   mov	w2, #0x1
0x10147aee8:  03 00 80 d2   mov	x3, #0
0x10147aeec:  04 00 80 d2   mov	x4, #0
0x10147aef0:  0c 82 1b 94   bl	j__objc_msgSend(x0, "transitionToState:event:task:")
0x10147aef4:  38 85 00 b0   adrp	x24, 0x10251f000
0x10147aef8:  00 43 11 91   add	x0, x24, #0x450 ; CLDurianSettings
0x10147aefc:  89 6f 1b 94   bl	j__objc_msgSend(x0, "staticMACAddr")
0x10147af00:  76 7f 00 f0   adrp	x22, 0x102469000
0x10147af04:  d6 42 00 91   add	x22, x22, #0x10 ; ":"
0x10147af08:  f7 80 00 b0   adrp	x23, 0x102497000
0x10147af0c:  f7 42 0f 91   add	x23, x23, #0x3d0 ; ""
0x10147af10:  e2 03 16 aa   mov	x2, x22
0x10147af14:  e3 03 17 aa   mov	x3, x23
0x10147af18:  2a 74 1b 94   bl	j__objc_msgSend(x0, "stringByReplacingOccurrencesOfString:withString:")
0x10147af1c:  c9 8b 1b 94   bl	j__objc_msgSend(x0, "uppercaseString")
0x10147af20:  f5 03 00 aa   mov	x21, x0
0x10147af24:  00 43 11 91   add	x0, x24, #0x450
0x10147af28:  76 6f 1b 94   bl	j__objc_msgSend(x0, "staticLTK")
0x10147af2c:  e2 03 16 aa   mov	x2, x22
0x10147af30:  e3 03 17 aa   mov	x3, x23
0x10147af34:  23 74 1b 94   bl	j__objc_msgSend(x0, "stringByReplacingOccurrencesOfString:withString:")
0x10147af38:  c2 8b 1b 94   bl	j__objc_msgSend(x0, "uppercaseString")
0x10147af3c:  f6 03 00 aa   mov	x22, x0
0x10147af40:  a0 44 00 d0   adrp	x0, 0x101d10000
0x10147af44:  00 08 2a 91   add	x0, x0, #0xa82 ; "CoreLocation"
0x10147af48:  81 51 00 d0   adrp	x1, 0x101eac000
0x10147af4c:  21 e8 2d 91   add	x1, x1, #0xb7a ; "TestFreshDurianConfig"
0x10147af50:  9c 68 1a 94   bl	j___os_feature_enabled_impl
0x10147af54:  e0 0c 00 34   cbz	w0, loc_10147b0f0 ; ⤵ 0x19c
0x10147af58:  e0 03 13 aa   mov	x0, x19
0x10147af5c:  11 10 1b 94   bl	j__objc_msgSend(x0, "ownership")
0x10147af60:  1f 04 00 f1   cmp	x0, #0x1
0x10147af64:  61 0c 00 54   b.ne	loc_10147b0f0 ; ⤵ 0x18c
0x10147af68:  55 0c 00 b4   cbz	x21, loc_10147b0f0 ; ⤵ 0x188
0x10147af6c:  36 0c 00 b4   cbz	x22, loc_10147b0f0 ; ⤵ 0x184
0x10147af70:  e0 03 15 aa   mov	x0, x21
0x10147af74:  1b f9 1a 94   bl	j__objc_msgSend(x0, "length")
0x10147af78:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10147af7c:  1f 30 00 f1   cmp	x0, #0xc
0x10147af80:  61 08 00 54   b.ne	loc_10147b08c ; ⤵ 0x10c
0x10147af84:  1f 05 00 b1   cmn	x8, #0x1
0x10147af88:  01 31 00 54   b.ne	loc_10147b5a8 ; ⤵ 0x620
0x10147af8c:  57 3f 46 f9   ldr	x23, [x26, #0xc78]
0x10147af90:  e0 03 17 aa   mov	x0, x23
0x10147af94:  01 00 80 52   mov	w1, #0
0x10147af98:  d6 6c 1a 94   bl	j__os_log_type_enabled
0x10147af9c:  80 03 00 34   cbz	w0, loc_10147b00c ; ⤵ 0x70
0x10147afa0:  e0 03 15 aa   mov	x0, x21
0x10147afa4:  27 72 1a 94   bl	j__objc_msgSend(x0, "UTF8String")
0x10147afa8:  f8 03 00 aa   mov	x24, x0
0x10147afac:  e0 03 16 aa   mov	x0, x22
0x10147afb0:  24 72 1a 94   bl	j__objc_msgSend(x0, "UTF8String")
0x10147afb4:  c8 43 00 d0   adrp	x8, 0x101cf4000
0x10147afb8:  00 7d 44 fd   ldr	d0, [x8, #0x8f8]
0x10147afbc:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x10147afc0:  bf 43 16 b8   stur	wzr, [fp, #-0x9c]
0x10147afc4:  48 04 81 52   mov	w8, #0x822
0x10147afc8:  a9 51 00 90   adrp	x9, 0x101eae000
0x10147afcc:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147afd0:  a8 83 16 78   sturh	w8, [fp, #-0x98]
0x10147afd4:  29 a3 00 f8   stur	x9, [x25, #0xa]
0x10147afd8:  a8 23 17 78   sturh	w8, [fp, #-0x8e]
0x10147afdc:  38 43 01 f8   stur	x24, [x25, #0x14]
0x10147afe0:  a8 c3 17 78   sturh	w8, [fp, #-0x84]
0x10147afe4:  20 e3 01 f8   stur	x0, [x25, #0x1e]
0x10147afe8:  20 5c ff d0   adrp	x0, 0x100000000
0x10147afec:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147aff0:  43 70 00 90   adrp	x3, 0x102282000
0x10147aff4:  63 b8 1d 91   add	x3, x3, #0x76e ; "{\"msg%{public}.0s\":\"#durian #testing creating connection material & peripheral for simulated owner device\", \"MAC address\":%{public, location:escape_only}s, \"LTK\":%{public, location:escape_only}s}"
0x10147aff8:  a4 83 02 d1   sub	x4, fp, #0xa0
0x10147affc:  e1 03 17 aa   mov	x1, x23
0x10147b000:  02 00 80 52   mov	w2, #0
0x10147b004:  c5 04 80 52   mov	w5, #0x26
0x10147b008:  7a 68 1a 94   bl	j___os_log_impl
0x10147b00c:  ; loc_10147b00c
0x10147b00c:  b7 78 00 d0   adrp	x23, 0x102391000
0x10147b010:  e0 22 44 f9   ldr	x0, [x23, #0x840] ; __got._OBJC_CLASS_$_NSData
0x10147b014:  e2 03 15 aa   mov	x2, x21
0x10147b018:  c2 9f 1a 94   bl	j__objc_msgSend(x0, "dataWithHexString:")
0x10147b01c:  f5 03 00 aa   mov	x21, x0
0x10147b020:  e0 22 44 f9   ldr	x0, [x23, #0x840]
0x10147b024:  e2 03 16 aa   mov	x2, x22
0x10147b028:  be 9f 1a 94   bl	j__objc_msgSend(x0, "dataWithHexString:")
0x10147b02c:  f6 03 00 aa   mov	x22, x0
0x10147b030:  b8 78 00 d0   adrp	x24, 0x102391000
0x10147b034:  00 97 45 f9   ldr	x0, [x24, #0xb28] ; __got._OBJC_CLASS_$_NSNumber
0x10147b038:  22 00 80 52   mov	w2, #0x1
0x10147b03c:  09 07 1b 94   bl	j__objc_msgSend(x0, "numberWithInt:")
0x10147b040:  f7 03 00 aa   mov	x23, x0
0x10147b044:  00 97 45 f9   ldr	x0, [x24, #0xb28]
0x10147b048:  22 00 80 52   mov	w2, #0x1
0x10147b04c:  05 07 1b 94   bl	j__objc_msgSend(x0, "numberWithInt:")
0x10147b050:  f8 03 00 aa   mov	x24, x0
0x10147b054:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147b058:  00 0d 47 f9   ldr	x0, [x8, #0xe18] ; __got._OBJC_CLASS_$_CLFindMyAccessoryConnectionMaterial
0x10147b05c:  7d 6b 1a 94   bl	j__objc_alloc
0x10147b060:  e2 03 15 aa   mov	x2, x21
0x10147b064:  e3 03 16 aa   mov	x3, x22
0x10147b068:  e4 03 17 aa   mov	x4, x23
0x10147b06c:  e5 03 18 aa   mov	x5, x24
0x10147b070:  74 d9 1a 94   bl	j__objc_msgSend(x0, "initWithAddress:ltk:primaryIndex:secondaryIndex:")
0x10147b074:  83 6b 1a 94   bl	j__objc_autorelease
0x10147b078:  a0 83 15 f8   stur	x0, [fp, #-0xa8]
0x10147b07c:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147b080:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x10147b084:  a2 a3 02 d1   sub	x2, fp, #0xa8
0x10147b088:  a8 00 00 14   b	loc_10147b328 ; ⤵ 0x2a0
0x10147b08c:  ; loc_10147b08c
0x10147b08c:  1f 05 00 b1   cmn	x8, #0x1
0x10147b090:  01 29 00 54   b.ne	loc_10147b5b0 ; ⤵ 0x520
0x10147b094:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x10147b098:  e0 03 16 aa   mov	x0, x22
0x10147b09c:  01 00 80 52   mov	w1, #0
0x10147b0a0:  94 6c 1a 94   bl	j__os_log_type_enabled
0x10147b0a4:  60 02 00 34   cbz	w0, loc_10147b0f0 ; ⤵ 0x4c
0x10147b0a8:  c8 43 00 b0   adrp	x8, 0x101cf4000
0x10147b0ac:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10147b0b0:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x10147b0b4:  bf 43 16 b8   stur	wzr, [fp, #-0x9c]
0x10147b0b8:  48 04 81 52   mov	w8, #0x822
0x10147b0bc:  a8 83 16 78   sturh	w8, [fp, #-0x98]
0x10147b0c0:  88 51 00 f0   adrp	x8, 0x101eae000
0x10147b0c4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147b0c8:  28 a3 00 f8   stur	x8, [x25, #0xa]
0x10147b0cc:  20 5c ff b0   adrp	x0, 0x100000000
0x10147b0d0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147b0d4:  23 70 00 f0   adrp	x3, 0x102282000
0x10147b0d8:  63 54 1c 91   add	x3, x3, #0x715 ; "{\"msg%{public}.0s\":\"#durian #testing invalid format for MAC address on an owned device\"}"
0x10147b0dc:  a4 83 02 d1   sub	x4, fp, #0xa0
0x10147b0e0:  e1 03 16 aa   mov	x1, x22
0x10147b0e4:  02 00 80 52   mov	w2, #0
0x10147b0e8:  45 02 80 52   mov	w5, #0x12
0x10147b0ec:  41 68 1a 94   bl	j___os_log_impl
0x10147b0f0:  ; loc_10147b0f0
0x10147b0f0:  a0 44 00 b0   adrp	x0, 0x101d10000
0x10147b0f4:  00 08 2a 91   add	x0, x0, #0xa82 ; "CoreLocation"
0x10147b0f8:  81 51 00 b0   adrp	x1, 0x101eac000
0x10147b0fc:  21 e8 2d 91   add	x1, x1, #0xb7a ; "TestFreshDurianConfig"
0x10147b100:  30 68 1a 94   bl	j___os_feature_enabled_impl
0x10147b104:  80 0a 00 34   cbz	w0, loc_10147b254 ; ⤵ 0x150
0x10147b108:  e0 03 13 aa   mov	x0, x19
0x10147b10c:  a5 0f 1b 94   bl	j__objc_msgSend(x0, "ownership")
0x10147b110:  1f 08 00 f1   cmp	x0, #0x2
0x10147b114:  01 0a 00 54   b.ne	loc_10147b254 ; ⤵ 0x140
0x10147b118:  f5 09 00 b4   cbz	x21, loc_10147b254 ; ⤵ 0x13c
0x10147b11c:  e0 03 15 aa   mov	x0, x21
0x10147b120:  b0 f8 1a 94   bl	j__objc_msgSend(x0, "length")
0x10147b124:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10147b128:  1f 30 00 f1   cmp	x0, #0xc
0x10147b12c:  21 06 00 54   b.ne	loc_10147b1f0 ; ⤵ 0xc4
0x10147b130:  1f 05 00 b1   cmn	x8, #0x1
0x10147b134:  21 24 00 54   b.ne	loc_10147b5b8 ; ⤵ 0x484
0x10147b138:  56 3f 46 f9   ldr	x22, [x26, #0xc78]
0x10147b13c:  e0 03 16 aa   mov	x0, x22
0x10147b140:  01 00 80 52   mov	w1, #0
0x10147b144:  6b 6c 1a 94   bl	j__os_log_type_enabled
0x10147b148:  e0 02 00 34   cbz	w0, loc_10147b1a4 ; ⤵ 0x5c
0x10147b14c:  e0 03 15 aa   mov	x0, x21
0x10147b150:  bc 71 1a 94   bl	j__objc_msgSend(x0, "UTF8String")
0x10147b154:  c8 43 00 b0   adrp	x8, 0x101cf4000
0x10147b158:  00 79 44 fd   ldr	d0, [x8, #0x8f0]
0x10147b15c:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x10147b160:  bf 43 16 b8   stur	wzr, [fp, #-0x9c]
0x10147b164:  48 04 81 52   mov	w8, #0x822
0x10147b168:  a8 83 16 78   sturh	w8, [fp, #-0x98]
0x10147b16c:  89 51 00 f0   adrp	x9, 0x101eae000
0x10147b170:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147b174:  29 a3 00 f8   stur	x9, [x25, #0xa]
0x10147b178:  a8 23 17 78   sturh	w8, [fp, #-0x8e]
0x10147b17c:  20 43 01 f8   stur	x0, [x25, #0x14]
0x10147b180:  20 5c ff b0   adrp	x0, 0x100000000
0x10147b184:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147b188:  23 70 00 f0   adrp	x3, 0x102282000
0x10147b18c:  63 38 22 91   add	x3, x3, #0x88e ; "{\"msg%{public}.0s\":\"#durian #testing creating connection material & peripheral for simulated non-owner device\", \"MAC address\":%{public, location:escape_only}s}"
0x10147b190:  a4 83 02 d1   sub	x4, fp, #0xa0
0x10147b194:  e1 03 16 aa   mov	x1, x22
0x10147b198:  02 00 80 52   mov	w2, #0
0x10147b19c:  85 03 80 52   mov	w5, #0x1c
0x10147b1a0:  14 68 1a 94   bl	j___os_log_impl
0x10147b1a4:  ; loc_10147b1a4
0x10147b1a4:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147b1a8:  00 21 44 f9   ldr	x0, [x8, #0x840] ; __got._OBJC_CLASS_$_NSData
0x10147b1ac:  e2 03 15 aa   mov	x2, x21
0x10147b1b0:  5c 9f 1a 94   bl	j__objc_msgSend(x0, "dataWithHexString:")
0x10147b1b4:  f5 03 00 aa   mov	x21, x0
0x10147b1b8:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147b1bc:  00 0d 47 f9   ldr	x0, [x8, #0xe18] ; __got._OBJC_CLASS_$_CLFindMyAccessoryConnectionMaterial
0x10147b1c0:  24 6b 1a 94   bl	j__objc_alloc
0x10147b1c4:  e2 03 15 aa   mov	x2, x21
0x10147b1c8:  03 00 80 d2   mov	x3, #0
0x10147b1cc:  04 00 80 d2   mov	x4, #0
0x10147b1d0:  05 00 80 d2   mov	x5, #0
0x10147b1d4:  1b d9 1a 94   bl	j__objc_msgSend(x0, "initWithAddress:ltk:primaryIndex:secondaryIndex:")
0x10147b1d8:  2a 6b 1a 94   bl	j__objc_autorelease
0x10147b1dc:  a0 03 15 f8   stur	x0, [fp, #-0xb0]
0x10147b1e0:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147b1e4:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x10147b1e8:  a2 c3 02 d1   sub	x2, fp, #0xb0
0x10147b1ec:  4f 00 00 14   b	loc_10147b328 ; ⤵ 0x13c
0x10147b1f0:  ; loc_10147b1f0
0x10147b1f0:  1f 05 00 b1   cmn	x8, #0x1
0x10147b1f4:  61 1e 00 54   b.ne	loc_10147b5c0 ; ⤵ 0x3cc
0x10147b1f8:  55 3f 46 f9   ldr	x21, [x26, #0xc78]
0x10147b1fc:  e0 03 15 aa   mov	x0, x21
0x10147b200:  01 00 80 52   mov	w1, #0
0x10147b204:  3b 6c 1a 94   bl	j__os_log_type_enabled
0x10147b208:  60 02 00 34   cbz	w0, loc_10147b254 ; ⤵ 0x4c
0x10147b20c:  c8 43 00 b0   adrp	x8, 0x101cf4000
0x10147b210:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10147b214:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x10147b218:  bf 43 16 b8   stur	wzr, [fp, #-0x9c]
0x10147b21c:  48 04 81 52   mov	w8, #0x822
0x10147b220:  a8 83 16 78   sturh	w8, [fp, #-0x98]
0x10147b224:  88 51 00 f0   adrp	x8, 0x101eae000
0x10147b228:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147b22c:  28 a3 00 f8   stur	x8, [x25, #0xa]
0x10147b230:  20 5c ff b0   adrp	x0, 0x100000000
0x10147b234:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147b238:  23 70 00 f0   adrp	x3, 0x102282000
0x10147b23c:  63 c8 20 91   add	x3, x3, #0x832 ; "{\"msg%{public}.0s\":\"#durian #testing invalid format for MAC address on a non-owned device\"}"
0x10147b240:  a4 83 02 d1   sub	x4, fp, #0xa0
0x10147b244:  e1 03 15 aa   mov	x1, x21
0x10147b248:  02 00 80 52   mov	w2, #0
0x10147b24c:  45 02 80 52   mov	w5, #0x12
0x10147b250:  e8 67 1a 94   bl	j___os_log_impl
0x10147b254:  ; loc_10147b254
0x10147b254:  e0 03 13 aa   mov	x0, x19
0x10147b258:  32 f3 1a 94   bl	j__objc_msgSend(x0, "isTAAISDevice")
0x10147b25c:  a0 07 00 34   cbz	w0, loc_10147b350 ; ⤵ 0xf4
0x10147b260:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10147b264:  1f 05 00 b1   cmn	x8, #0x1
0x10147b268:  81 19 00 54   b.ne	loc_10147b598 ; ⤵ 0x330
0x10147b26c:  55 3f 46 f9   ldr	x21, [x26, #0xc78]
0x10147b270:  e0 03 15 aa   mov	x0, x21
0x10147b274:  01 00 80 52   mov	w1, #0
0x10147b278:  1e 6c 1a 94   bl	j__os_log_type_enabled
0x10147b27c:  20 03 00 34   cbz	w0, loc_10147b2e0 ; ⤵ 0x64
0x10147b280:  e0 03 13 aa   mov	x0, x19
0x10147b284:  cf 8b 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147b288:  e4 75 00 94   bl	0x101498a18
0x10147b28c:  c8 43 00 b0   adrp	x8, 0x101cf4000
0x10147b290:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x10147b294:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x10147b298:  bf 43 16 b8   stur	wzr, [fp, #-0x9c]
0x10147b29c:  48 04 81 52   mov	w8, #0x822
0x10147b2a0:  a8 83 16 78   sturh	w8, [fp, #-0x98]
0x10147b2a4:  88 51 00 f0   adrp	x8, 0x101eae000
0x10147b2a8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10147b2ac:  28 a3 00 f8   stur	x8, [x25, #0xa]
0x10147b2b0:  28 08 81 52   mov	w8, #0x841
0x10147b2b4:  a8 23 17 78   sturh	w8, [fp, #-0x8e]
0x10147b2b8:  20 43 01 f8   stur	x0, [x25, #0x14]
0x10147b2bc:  20 5c ff b0   adrp	x0, 0x100000000
0x10147b2c0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10147b2c4:  23 70 00 f0   adrp	x3, 0x102282000
0x10147b2c8:  63 b8 24 91   add	x3, x3, #0x92e ; "{\"msg%{public}.0s\":\"#durian #connectattempt fetch unknown beacon before UT alert\", \"item\":%{private, location:escape_only}@}"
0x10147b2cc:  a4 83 02 d1   sub	x4, fp, #0xa0
0x10147b2d0:  e1 03 15 aa   mov	x1, x21
0x10147b2d4:  02 00 80 52   mov	w2, #0
0x10147b2d8:  85 03 80 52   mov	w5, #0x1c
0x10147b2dc:  c5 67 1a 94   bl	j___os_log_impl
0x10147b2e0:  ; loc_10147b2e0
0x10147b2e0:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147b2e4:  00 0d 47 f9   ldr	x0, [x8, #0xe18] ; __got._OBJC_CLASS_$_CLFindMyAccessoryConnectionMaterial
0x10147b2e8:  da 6a 1a 94   bl	j__objc_alloc
0x10147b2ec:  f5 03 00 aa   mov	x21, x0
0x10147b2f0:  e0 03 13 aa   mov	x0, x19
0x10147b2f4:  bb 7b 1b 94   bl	j__objc_msgSend(x0, "taUnknownBeacon")
0x10147b2f8:  fa 7e 1a 94   bl	j__objc_msgSend(x0, "address")
0x10147b2fc:  e2 03 00 aa   mov	x2, x0
0x10147b300:  e0 03 15 aa   mov	x0, x21
0x10147b304:  03 00 80 d2   mov	x3, #0
0x10147b308:  04 00 80 d2   mov	x4, #0
0x10147b30c:  05 00 80 d2   mov	x5, #0
0x10147b310:  cc d8 1a 94   bl	j__objc_msgSend(x0, "initWithAddress:ltk:primaryIndex:secondaryIndex:")
0x10147b314:  db 6a 1a 94   bl	j__objc_autorelease
0x10147b318:  e0 5f 00 f9   str	x0, [sp, #0xb8]
0x10147b31c:  a8 78 00 d0   adrp	x8, 0x102391000
0x10147b320:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x10147b324:  e2 e3 02 91   add	x2, sp, #0xb8
0x10147b328:  ; loc_10147b328
0x10147b328:  23 00 80 52   mov	w3, #0x1
0x10147b32c:  f5 82 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x10147b330:  e3 03 00 aa   mov	x3, x0
0x10147b334:  e0 03 14 aa   mov	x0, x20
0x10147b338:  e2 03 13 aa   mov	x2, x19
0x10147b33c:  f9 7d 1a 94   bl	j__objc_msgSend(x0, "addPossiblePeripheralsForDevice:usingMaterials:")
0x10147b340:  e0 03 14 aa   mov	x0, x20
0x10147b344:  e2 03 13 aa   mov	x2, x19
0x10147b348:  ae ce 1a 94   bl	j__objc_msgSend(x0, "handleTokenFetchForDevice:")
0x10147b34c:  82 00 00 14   b	loc_10147b554 ; ⤵ 0x208
0x10147b350:  ; loc_10147b350
0x10147b350:  e0 03 14 aa   mov	x0, x20
0x10147b354:  e2 03 13 aa   mov	x2, x19
0x10147b358:  8a 2d 1b 94   bl	j__objc_msgSend(x0, "scheduleTokenFetchTimeoutForDevice:")
0x10147b35c:  d1 68 1a 94   bl	j__dispatch_group_create
0x10147b360:  f5 03 00 aa   mov	x21, x0
0x10147b364:  d3 68 1a 94   bl	j__dispatch_group_enter
0x10147b368:  a8 78 00 b0   adrp	x8, 0x102390000
0x10147b36c:  00 d5 41 f9   ldr	x0, [x8, #0x3a8] ; __got._OBJC_CLASS_$_SPCommandKeysCriteria
0x10147b370:  14 ae 1a 94   bl	j__objc_msgSend(x0, "driftModeledCriteria")
0x10147b374:  f6 03 00 aa   mov	x22, x0
0x10147b378:  97 0a 40 f9   ldr	x23, [x20, #0x10]
0x10147b37c:  e0 03 13 aa   mov	x0, x19
0x10147b380:  90 8b 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147b384:  e2 03 00 aa   mov	x2, x0
0x10147b388:  e8 e3 01 91   add	x8, sp, #0x78
0x10147b38c:  b0 78 00 f0   adrp	x16, 0x102392000
0x10147b390:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got.__NSConcreteStackBlock
0x10147b394:  f1 03 08 aa   mov	x17, x8
0x10147b398:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x10147b39c:  30 0a c1 da   pacda	x16, x17
0x10147b3a0:  f0 3f 00 f9   str	x16, [sp, #0x78]
0x10147b3a4:  c9 43 00 b0   adrp	x9, 0x101cf4000
0x10147b3a8:  28 45 44 fd   ldr	d8, [x9, #0x888]
0x10147b3ac:  e8 43 00 fd   str	d8, [sp, #0x80]
0x10147b3b0:  08 41 00 91   add	x8, x8, #0x10
0x10147b3b4:  10 00 00 90   adrp	x16, 0x10147b000
0x10147b3b8:  10 32 17 91   add	x16, x16, #0x5cc
0x10147b3bc:  10 01 c1 da   pacia	x16, x8
0x10147b3c0:  d8 7d 00 b0   adrp	x24, 0x102434000
0x10147b3c4:  18 e3 01 91   add	x24, x24, #0x78 ; data_102434078 (__DATA_CONST.__const)
0x10147b3c8:  f0 e3 08 a9   stp	x16, x24, [sp, #0x88]
0x10147b3cc:  f4 d7 09 a9   stp	x20, x21, [sp, #0x98]
0x10147b3d0:  f3 db 0a a9   stp	x19, x22, [sp, #0xa8]
0x10147b3d4:  e4 e3 01 91   add	x4, sp, #0x78
0x10147b3d8:  e0 03 17 aa   mov	x0, x23
0x10147b3dc:  e3 03 16 aa   mov	x3, x22
0x10147b3e0:  78 95 1a 94   bl	j__objc_msgSend(x0, "connectionTokensForBeaconUUID:criteria:completion:")
0x10147b3e4:  e0 03 13 aa   mov	x0, x19
0x10147b3e8:  56 f6 1a 94   bl	j__objc_msgSend(x0, "lastReconciledCriteria")
0x10147b3ec:  c0 03 00 b4   cbz	x0, loc_10147b464 ; ⤵ 0x78
0x10147b3f0:  e0 03 15 aa   mov	x0, x21
0x10147b3f4:  af 68 1a 94   bl	j__dispatch_group_enter
0x10147b3f8:  e0 03 13 aa   mov	x0, x19

