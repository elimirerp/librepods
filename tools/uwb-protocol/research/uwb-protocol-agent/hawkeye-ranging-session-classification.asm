
-[CLDurianDevice isRangingSessionTask:]:
0x101451f60:  7f 23 03 d5   pacibsp
0x101451f64:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101451f68:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101451f6c:  fd 43 00 91   add	fp, sp, #0x10
0x101451f70:  f3 03 02 aa   mov	x19, x2
0x101451f74:  f4 03 00 aa   mov	x20, x0
0x101451f78:  32 93 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101451f7c:  80 00 00 34   cbz	w0, loc_101451f8c ; ⤵ 0x10
0x101451f80:  68 26 1c 51   sub	w8, w19, #0x709
0x101451f84:  7f 32 1c 71   cmp	w19, #0x70c
0x101451f88:  06 00 00 14   b	loc_101451fa0 ; ⤵ 0x18
0x101451f8c:  ; loc_101451f8c
0x101451f8c:  e0 03 14 aa   mov	x0, x20
0x101451f90:  c4 95 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x101451f94:  00 01 00 34   cbz	w0, loc_101451fb4 ; ⤵ 0x20
0x101451f98:  68 8e 10 51   sub	w8, w19, #0x423
0x101451f9c:  7f 9a 10 71   cmp	w19, #0x426
0x101451fa0:  ; loc_101451fa0
0x101451fa0:  00 19 42 7a   ccmp	w8, #0x2, #0, ne
0x101451fa4:  e0 27 9f 1a   cset	w0, cc
0x101451fa8:  ; loc_101451fa8
0x101451fa8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101451fac:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101451fb0:  ff 0f 5f d6   retab
0x101451fb4:  ; loc_101451fb4
0x101451fb4:  20 00 80 52   mov	w0, #0x1
0x101451fb8:  7f 96 00 71   cmp	w19, #0x25
0x101451fbc:  08 01 00 54   b.hi	loc_101451fdc ; ⤵ 0x20
0x101451fc0:  e8 03 13 2a   mov	w8, w19
0x101451fc4:  29 00 80 52   mov	w9, #0x1
0x101451fc8:  28 21 c8 9a   lsl	x8, x9, x8
0x101451fcc:  09 02 a0 d2   mov	x9, #0x100000
0x101451fd0:  89 06 c0 f2   movk	x9, #0x34, lsl #0x20
0x101451fd4:  1f 01 09 ea   tst	x8, x9
0x101451fd8:  81 fe ff 54   b.ne	loc_101451fa8 ; ⤴ -0x30
0x101451fdc:  ; loc_101451fdc
0x101451fdc:  68 26 20 51   sub	w8, w19, #0x809
0x101451fe0:  1f 0d 00 71   cmp	w8, #0x3
0x101451fe4:  68 00 00 54   b.hi	loc_101451ff0 ; ⤵ 0xc
0x101451fe8:  1f 09 00 71   cmp	w8, #0x2
0x101451fec:  e1 fd ff 54   b.ne	loc_101451fa8 ; ⤴ -0x44
0x101451ff0:  ; loc_101451ff0
0x101451ff0:  00 00 80 52   mov	w0, #0
0x101451ff4:  ed ff ff 17   b	loc_101451fa8 ; ⤴ -0x4c

-[CLDurianDevice isSoundCompleteTask:]:
0x101451ff8:  7f 23 03 d5   pacibsp
0x101451ffc:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101452000:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101452004:  fd 43 00 91   add	fp, sp, #0x10
0x101452008:  f3 03 02 aa   mov	x19, x2
0x10145200c:  0d 93 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101452010:  1f 00 00 71   cmp	w0, #0
0x101452014:  28 01 80 52   mov	w8, #0x9
0x101452018:  a9 41 80 52   mov	w9, #0x20d
0x10145201c:  28 11 88 1a   csel	w8, w9, w8, ne
0x101452020:  7f 02 08 6b   cmp	w19, w8
0x101452024:  e0 17 9f 1a   cset	w0, eq
0x101452028:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10145202c:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101452030:  ff 0f 5f d6   retab

-[CLDurianDevice isCancellablePlaySoundTask:]:
0x101452034:  5f a0 00 71   cmp	w2, #0x28
0x101452038:  e0 17 9f 1a   cset	w0, eq
0x10145203c:  c0 03 5f d6   ret

-[CLDurianDevice isAggAdvCompleteTask:]:
0x101452040:  7f 23 03 d5   pacibsp
0x101452044:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101452048:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10145204c:  fd 43 00 91   add	fp, sp, #0x10
0x101452050:  f3 03 02 aa   mov	x19, x2
0x101452054:  fb 92 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101452058:  7f 52 08 71   cmp	w19, #0x214
0x10145205c:  e0 13 80 1a   csel	w0, wzr, w0, ne
0x101452060:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101452064:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101452068:  ff 0f 5f d6   retab

-[CLDurianDevice isNonOwnerSoundCompleteTask:]:
0x10145206c:  7f 23 03 d5   pacibsp
0x101452070:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101452074:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101452078:  fd 43 00 91   add	fp, sp, #0x10
0x10145207c:  f3 03 02 aa   mov	x19, x2
0x101452080:  f4 03 00 aa   mov	x20, x0
0x101452084:  87 95 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x101452088:  80 00 00 35   cbnz	w0, loc_101452098 ; ⤵ 0x10
0x10145208c:  e0 03 14 aa   mov	x0, x20
0x101452090:  ec 92 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101452094:  80 00 00 34   cbz	w0, loc_1014520a4 ; ⤵ 0x10
0x101452098:  ; loc_101452098
0x101452098:  7f 0e 0c 71   cmp	w19, #0x303
0x10145209c:  e0 17 9f 1a   cset	w0, eq
0x1014520a0:  05 00 00 14   b	loc_1014520b4 ; ⤵ 0x14
0x1014520a4:  ; loc_1014520a4
0x1014520a4:  e0 03 14 aa   mov	x0, x20
0x1014520a8:  de 8f 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x1014520ac:  7f 3a 20 71   cmp	w19, #0x80e
0x1014520b0:  e0 13 80 1a   csel	w0, wzr, w0, ne
0x1014520b4:  ; loc_1014520b4
0x1014520b4:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014520b8:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1014520bc:  ff 0f 5f d6   retab

-[CLDurianDevice isNonOwnerSoundTask:]:
0x1014520c0:  20 00 80 52   mov	w0, #0x1
0x1014520c4:  5f 64 0c 71   cmp	w2, #0x319
0x1014520c8:  cc 00 00 54   b.gt	loc_1014520e0 ; ⤵ 0x18
0x1014520cc:  5f bc 02 71   cmp	w2, #0xaf
0x1014520d0:  60 00 00 54   b.eq	loc_1014520dc ; ⤵ 0xc
0x1014520d4:  5f 00 0c 71   cmp	w2, #0x300
0x1014520d8:  c1 00 00 54   b.ne	loc_1014520f0 ; ⤵ 0x18
0x1014520dc:  ; loc_1014520dc
0x1014520dc:  c0 03 5f d6   ret
0x1014520e0:  ; loc_1014520e0
0x1014520e0:  5f 68 0c 71   cmp	w2, #0x31a
0x1014520e4:  c0 ff ff 54   b.eq	loc_1014520dc ; ⤴ -0x8
0x1014520e8:  5f 34 20 71   cmp	w2, #0x80d
0x1014520ec:  80 ff ff 54   b.eq	loc_1014520dc ; ⤴ -0x10
0x1014520f0:  ; loc_1014520f0
0x1014520f0:  00 00 80 52   mov	w0, #0
0x1014520f4:  c0 03 5f d6   ret

-[CLDurianDevice isAggresiveAdvertisingCompleteTask:]:
0x1014520f8:  7f 23 03 d5   pacibsp
0x1014520fc:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101452100:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101452104:  fd 43 00 91   add	fp, sp, #0x10
0x101452108:  f3 03 02 aa   mov	x19, x2
0x10145210c:  cd 92 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101452110:  7f 52 08 71   cmp	w19, #0x214
0x101452114:  e0 13 80 1a   csel	w0, wzr, w0, ne
0x101452118:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10145211c:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101452120:  ff 0f 5f d6   retab

-[CLDurianDevice isFirmwareVersionCrashTask:]:
0x101452124:  48 38 1f 12   and	w8, w2, #0xfffe
0x101452128:  1f 41 00 71   cmp	w8, #0x10
0x10145212c:  e0 17 9f 1a   cset	w0, eq
0x101452130:  c0 03 5f d6   ret

-[CLDurianDevice isActiveTaskOpcode:]:
0x101452134:  7f 23 03 d5   pacibsp
0x101452138:  ff 83 01 d1   sub	sp, sp, #0x60
0x10145213c:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x101452140:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x101452144:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x101452148:  fd 43 01 91   add	fp, sp, #0x50
0x10145214c:  f3 03 02 aa   mov	x19, x2
0x101452150:  f5 03 00 aa   mov	x21, x0

