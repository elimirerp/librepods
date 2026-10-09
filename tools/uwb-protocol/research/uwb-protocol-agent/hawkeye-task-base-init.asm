
-[CLDurianTask initWithCommand:desiredLatency:expectsResponse:completeOnPreemption:requiresMutex:]:
0x1014430cc:  7f 23 03 d5   pacibsp
0x1014430d0:  ff 43 01 d1   sub	sp, sp, #0x50
0x1014430d4:  f8 5f 01 a9   stp	x24, x23, [sp, #0x10]
0x1014430d8:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x1014430dc:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x1014430e0:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x1014430e4:  fd 03 01 91   add	fp, sp, #0x40
0x1014430e8:  f3 03 06 aa   mov	x19, x6
0x1014430ec:  f4 03 05 aa   mov	x20, x5
0x1014430f0:  f5 03 04 aa   mov	x21, x4
0x1014430f4:  f6 03 03 aa   mov	x22, x3
0x1014430f8:  f8 03 02 aa   mov	x24, x2
0x1014430fc:  c8 82 00 b0   adrp	x8, 0x10249c000
0x101443100:  08 ed 45 f9   ldr	x8, [x8, #0xbd8] ; class_CLDurianTask
0x101443104:  e0 23 00 a9   stp	x0, x8, [sp]
0x101443108:  e8 85 00 90   adrp	x8, 0x1024ff000
0x10144310c:  01 8d 42 f9   ldr	x1, [x8, #0x518] ; sel_init
0x101443110:  e0 03 00 91   mov	x0, sp
0x101443114:  97 4b 1b 94   bl	j__objc_msgSendSuper2
0x101443118:  f7 03 00 aa   mov	x23, x0
0x10144311c:  e0 01 00 b4   cbz	x0, loc_101443158 ; ⤵ 0x3c
0x101443120:  68 7a 00 d0   adrp	x8, 0x102391000
0x101443124:  00 c5 45 f9   ldr	x0, [x8, #0xb88] ; __got._OBJC_CLASS_$_NSUUID
0x101443128:  52 4b 1b 94   bl	j__objc_alloc_init
0x10144312c:  e0 16 00 f9   str	x0, [x23, #0x28]
0x101443130:  0c 4c 1b 94   bl	j__objc_retain_x24
0x101443134:  e0 5a 03 a9   stp	x0, x22, [x23, #0x30]
0x101443138:  f5 82 00 39   strb	w21, [x23, #0x20]
0x10144313c:  f4 8a 00 39   strb	w20, [x23, #0x22]
0x101443140:  f3 86 00 39   strb	w19, [x23, #0x21]
0x101443144:  c7 4a 1b 94   bl	j__mach_continuous_time
0x101443148:  e0 06 00 f9   str	x0, [x23, #0x8]
0x10144314c:  ff 0e 00 f9   str	xzr, [x23, #0x18]
0x101443150:  28 00 80 52   mov	w8, #0x1
0x101443154:  e8 8e 00 39   strb	w8, [x23, #0x23]
0x101443158:  ; loc_101443158
0x101443158:  e0 03 17 aa   mov	x0, x23
0x10144315c:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x101443160:  f4 4f 43 a9   ldp	x20, x19, [sp, #0x30]
0x101443164:  f6 57 42 a9   ldp	x22, x21, [sp, #0x20]
0x101443168:  f8 5f 41 a9   ldp	x24, x23, [sp, #0x10]
0x10144316c:  ff 43 01 91   add	sp, sp, #0x50
0x101443170:  ff 0f 5f d6   retab

-[CLDurianTask dealloc]:
0x101443174:  7f 23 03 d5   pacibsp
0x101443178:  ff c3 00 d1   sub	sp, sp, #0x30
0x10144317c:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x101443180:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x101443184:  fd 83 00 91   add	fp, sp, #0x20
0x101443188:  f3 03 00 aa   mov	x19, x0
0x10144318c:  08 14 40 f9   ldr	x8, [x0, #0x28]
0x101443190:  c0 4b 1b 94   bl	j__objc_release_x8
0x101443194:  68 1a 40 f9   ldr	x8, [x19, #0x30]
0x101443198:  be 4b 1b 94   bl	j__objc_release_x8
0x10144319c:  c8 82 00 b0   adrp	x8, 0x10249c000
0x1014431a0:  08 ed 45 f9   ldr	x8, [x8, #0xbd8] ; class_CLDurianTask
0x1014431a4:  f3 23 00 a9   stp	x19, x8, [sp]
0x1014431a8:  c8 85 00 90   adrp	x8, 0x1024fb000
0x1014431ac:  01 f5 46 f9   ldr	x1, [x8, #0xde8] ; sel_dealloc
0x1014431b0:  e0 03 00 91   mov	x0, sp
0x1014431b4:  6f 4b 1b 94   bl	j__objc_msgSendSuper2
0x1014431b8:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x1014431bc:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x1014431c0:  ff c3 00 91   add	sp, sp, #0x30
0x1014431c4:  ff 0f 5f d6   retab

-[CLDurianTask timeoutSeconds]:
0x1014431c8:  7f 23 03 d5   pacibsp
0x1014431cc:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x1014431d0:  fd 03 00 91   mov	fp, sp
0x1014431d4:  7b 61 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x1014431d8:  1f b8 02 71   cmp	w0, #0xae
0x1014431dc:  2c 01 00 54   b.gt	loc_101443200 ; ⤵ 0x24
0x1014431e0:  1f 38 00 71   cmp	w0, #0xe
0x1014431e4:  cc 01 00 54   b.gt	loc_10144321c ; ⤵ 0x38
0x1014431e8:  08 c2 81 52   mov	w8, #0xe10
0x1014431ec:  1f 0c 00 71   cmp	w0, #0x3
0x1014431f0:  40 03 00 54   b.eq	loc_101443258 ; ⤵ 0x68
0x1014431f4:  1f 14 00 71   cmp	w0, #0x5
0x1014431f8:  a1 01 00 54   b.ne	loc_10144322c ; ⤵ 0x34
0x1014431fc:  17 00 00 14   b	loc_101443258 ; ⤵ 0x5c
0x101443200:  ; loc_101443200
0x101443200:  1f 38 08 71   cmp	w0, #0x20e
0x101443204:  8c 01 00 54   b.gt	loc_101443234 ; ⤵ 0x30
0x101443208:  1f bc 02 71   cmp	w0, #0xaf
0x10144320c:  c0 01 00 54   b.eq	loc_101443244 ; ⤵ 0x38
0x101443210:  1f 0c 08 71   cmp	w0, #0x203
0x101443214:  c1 00 00 54   b.ne	loc_10144322c ; ⤵ 0x18
0x101443218:  0d 00 00 14   b	loc_10144324c ; ⤵ 0x34
0x10144321c:  ; loc_10144321c
0x10144321c:  1f 3c 00 71   cmp	w0, #0xf
0x101443220:  60 01 00 54   b.eq	loc_10144324c ; ⤵ 0x2c
0x101443224:  1f a0 00 71   cmp	w0, #0x28
0x101443228:  e0 00 00 54   b.eq	loc_101443244 ; ⤵ 0x1c
0x10144322c:  ; loc_10144322c
0x10144322c:  a8 00 80 52   mov	w8, #0x5
0x101443230:  0a 00 00 14   b	loc_101443258 ; ⤵ 0x28
0x101443234:  ; loc_101443234
0x101443234:  1f 3c 08 71   cmp	w0, #0x20f
0x101443238:  e0 00 00 54   b.eq	loc_101443254 ; ⤵ 0x1c
0x10144323c:  1f 00 0c 71   cmp	w0, #0x300
0x101443240:  61 ff ff 54   b.ne	loc_10144322c ; ⤴ -0x14
0x101443244:  ; loc_101443244
0x101443244:  88 07 80 52   mov	w8, #0x3c
0x101443248:  04 00 00 14   b	loc_101443258 ; ⤵ 0x10
0x10144324c:  ; loc_10144324c
0x10144324c:  88 02 80 52   mov	w8, #0x14
0x101443250:  02 00 00 14   b	loc_101443258 ; ⤵ 0x8
0x101443254:  ; loc_101443254
0x101443254:  88 16 80 52   mov	w8, #0xb4
0x101443258:  ; loc_101443258
0x101443258:  e0 03 08 aa   mov	x0, x8
0x10144325c:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x101443260:  ff 0f 5f d6   retab

-[CLDurianTask queueDuration]:
0x101443264:  09 a0 40 a9   ldp	x9, x8, [x0, #0x8]
0x101443268:  00 01 09 eb   subs	x0, x8, x9
0x10144326c:  62 00 00 54   b.hs	loc_101443278 ; ⤵ 0xc
0x101443270:  00 10 7e 1e   fmov	d0, #-1.00000000
0x101443274:  c0 03 5f d6   ret
0x101443278:  ; loc_101443278
0x101443278:  32 3f 1b 14   b	j__TMConvertTicksToSeconds

-[CLDurianTask executionDuration]:
0x10144327c:  09 20 41 a9   ldp	x9, x8, [x0, #0x10]
0x101443280:  00 01 09 eb   subs	x0, x8, x9
0x101443284:  62 00 00 54   b.hs	loc_101443290 ; ⤵ 0xc
0x101443288:  00 10 7e 1e   fmov	d0, #-1.00000000
0x10144328c:  c0 03 5f d6   ret
0x101443290:  ; loc_101443290
0x101443290:  2c 3f 1b 14   b	j__TMConvertTicksToSeconds

-[CLDurianTask translatedOpcode]:
0x101443294:  7f 23 03 d5   pacibsp
0x101443298:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10144329c:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1014432a0:  fd 43 00 91   add	fp, sp, #0x10
0x1014432a4:  f3 03 00 aa   mov	x19, x0
0x1014432a8:  a6 72 1b 94   bl	j__objc_msgSend(x0, "command")
0x1014432ac:  0d ee 1b 94   bl	j__objc_msgSend(x0, "opcode")
0x1014432b0:  1f 40 03 71   cmp	w0, #0xd0
0x1014432b4:  21 02 00 54   b.ne	loc_1014432f8 ; ⤵ 0x44
0x1014432b8:  e8 86 00 90   adrp	x8, 0x10251f000
0x1014432bc:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x1014432c0:  30 4b 1b 94   bl	j__objc_opt_class
0x1014432c4:  e1 03 00 aa   mov	x1, x0
0x1014432c8:  e0 03 13 aa   mov	x0, x19
0x1014432cc:  31 4b 1b 94   bl	j__objc_opt_isKindOfClass
0x1014432d0:  20 01 00 36   tbz	w0, #0, loc_1014432f4 ; ⤵ 0x24
0x1014432d4:  e0 03 13 aa   mov	x0, x19
0x1014432d8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014432dc:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1014432e0:  ff 23 03 d5   autibsp
0x1014432e4:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1014432e8:  50 00 f0 b6   tbz	x16, #0x3e, loc_1014432f0 ; ⤵ 0x8
0x1014432ec:  20 8e 38 d4   brk	#0xc471
0x1014432f0:  ; loc_1014432f0
0x1014432f0:  74 b3 1b 14   b	j__objc_msgSend(x0, "hawkeyeOpcode")
0x1014432f4:  ; loc_1014432f4
0x1014432f4:  00 1a 80 52   mov	w0, #0xd0
0x1014432f8:  ; loc_1014432f8
0x1014432f8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014432fc:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101443300:  ff 0f 5f d6   retab

-[CLDurianTask shouldPreemptTask:]:
0x101443304:  7f 23 03 d5   pacibsp
0x101443308:  ff 83 01 d1   sub	sp, sp, #0x60
0x10144330c:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]

