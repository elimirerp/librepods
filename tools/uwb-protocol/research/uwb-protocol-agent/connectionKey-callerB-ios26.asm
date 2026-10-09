0x100766120:  c8 1e 00 f9   str	x8, [x22, #0x38]
0x100766124:  97 8b e2 97   bl	0x100008f80
0x100766128:  c0 22 00 f9   str	x0, [x22, #0x40]
0x10076612c:  d4 72 02 a9   stp	x20, x28, [x22, #0x20]
0x100766130:  68 8f 40 f8   ldr	x8, [x27, #0x8]!
0x100766134:  e0 03 13 aa   mov	x0, x19
0x100766138:  e1 03 18 aa   mov	x1, x24
0x10076613c:  f1 03 1b aa   mov	x17, x27
0x100766140:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x100766144:  11 09 3f d7   blraa	x8, x17
0x100766148:  08 89 00 90   adrp	x8, 0x101886000
0x10076614c:  08 25 47 f9   ldr	x8, [x8, #0xe48] ; __got._$ss6UInt64VN
0x100766150:  29 03 40 f9   ldr	x9, [x25]
0x100766154:  0a 89 00 90   adrp	x10, 0x101886000
0x100766158:  4a 41 47 f9   ldr	x10, [x10, #0xe80] ; __got._$ss6UInt64Vs7CVarArgsWP
0x10076615c:  c8 2a 06 a9   stp	x8, x10, [x22, #0x60]
0x100766160:  c9 26 00 f9   str	x9, [x22, #0x48]
0x100766164:  c1 c4 ff d0   adrp	x1, 0x100000000
0x100766168:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x10076616c:  a3 72 00 d0   adrp	x3, 0x1015bc000
0x100766170:  63 80 06 91   add	x3, x3, #0x1a0 ; "No intermediate key found in `commandKeys` %@, index: %llu"
0x100766174:  a0 03 5a b8   ldur	w0, [fp, #-0x60]
0x100766178:  e2 03 1a aa   mov	x2, x26
0x10076617c:  44 07 80 52   mov	w4, #0x3a
0x100766180:  45 00 80 52   mov	w5, #0x2
0x100766184:  e6 03 16 aa   mov	x6, x22
0x100766188:  3e 86 38 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x10076618c:  e0 03 16 aa   mov	x0, x22
0x100766190:  4c 96 38 94   bl	j__swift_release
0x100766194:  18 00 80 d2   mov	x24, #0
0x100766198:  90 00 00 14   b	loc_1007663d8 ; ⤵ 0x240
0x10076619c:  48 03 40 f9   ldr	x8, [x26]
0x1007661a0:  1b 14 80 b9   ldrsw	x27, [x0, #0x14]
0x1007661a4:  53 53 41 a9   ldp	x19, x20, [x26, #0x10]
0x1007661a8:  a8 03 1a f8   stur	x8, [fp, #-0x60]
0x1007661ac:  e0 03 08 aa   mov	x0, x8
0x1007661b0:  e1 03 17 aa   mov	x1, x23
0x1007661b4:  10 cb e2 97   bl	0x100018df4
0x1007661b8:  e0 03 13 aa   mov	x0, x19
0x1007661bc:  e1 03 14 aa   mov	x1, x20
0x1007661c0:  20 d1 f6 97   bl	0x10051a640
0x1007661c4:  f3 03 00 aa   mov	x19, x0
0x1007661c8:  f6 03 01 aa   mov	x22, x1
0x1007661cc:  e8 88 00 f0   adrp	x8, 0x101885000
0x1007661d0:  00 8d 41 f9   ldr	x0, [x8, #0x318] ; __got._OBJC_CLASS_$_SPBeaconingKey
0x1007661d4:  f3 93 38 94   bl	j__objc_allocWithZone
0x1007661d8:  f8 03 00 aa   mov	x24, x0
0x1007661dc:  34 03 1b 8b   add	x20, x25, x27
0x1007661e0:  d8 7a 38 94   bl	j__$s10Foundation12DateIntervalV19_bridgeToObjectiveCSo06NSDateC0CyF
0x1007661e4:  f4 03 00 aa   mov	x20, x0
0x1007661e8:  e0 03 13 aa   mov	x0, x19
0x1007661ec:  e1 03 16 aa   mov	x1, x22
0x1007661f0:  c8 7c 38 94   bl	j__$s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF
0x1007661f4:  fb 03 00 aa   mov	x27, x0
0x1007661f8:  e0 03 18 aa   mov	x0, x24
0x1007661fc:  e2 03 14 aa   mov	x2, x20
0x100766200:  e3 03 1b aa   mov	x3, x27
0x100766204:  d7 9f 38 94   bl	j__objc_msgSend(x0, "initWithDateInterval:key:")
0x100766208:  a0 83 19 f8   stur	x0, [fp, #-0x68]
0x10076620c:  05 94 38 94   bl	j__objc_release_x20
0x100766210:  20 94 38 94   bl	j__objc_release_x27
0x100766214:  e0 03 13 aa   mov	x0, x19
0x100766218:  e1 03 16 aa   mov	x1, x22
0x10076621c:  61 c3 e2 97   bl	0x100016fa0
0x100766220:  33 03 40 f9   ldr	x19, [x25]
0x100766224:  08 89 00 90   adrp	x8, 0x101886000
0x100766228:  00 6d 42 f9   ldr	x0, [x8, #0x4d8] ; __got._OBJC_CLASS_$_NSNumber
0x10076622c:  dd 93 38 94   bl	j__objc_allocWithZone
0x100766230:  e2 03 13 aa   mov	x2, x19
0x100766234:  db a1 38 94   bl	j__objc_msgSend(x0, "initWithUnsignedLongLong:")
0x100766238:  a0 03 19 f8   stur	x0, [fp, #-0x70]
0x10076623c:  f3 00 00 b4   cbz	x19, loc_100766258 ; ⤵ 0x1c
0x100766240:  e8 f3 01 b2   mov	x8, #0xaaaaaaaaaaaaaaaa
0x100766244:  68 55 95 f2   movk	x8, #0xaaab
0x100766248:  68 7e c8 9b   umulh	x8, x19, x8
0x10076624c:  08 fd 46 d3   lsr	x8, x8, #0x6
0x100766250:  16 05 00 91   add	x22, x8, #0x1
0x100766254:  02 00 00 14   b	loc_10076625c ; ⤵ 0x8
0x100766258:  ; loc_100766258
0x100766258:  16 00 80 d2   mov	x22, #0
0x10076625c:  ; loc_10076625c
0x10076625c:  93 03 40 f9   ldr	x19, [x28]
0x100766260:  e0 03 13 aa   mov	x0, x19
0x100766264:  ff 95 38 94   bl	j__swift_isUniquelyReferenced_nonNull_native
0x100766268:  93 03 00 f9   str	x19, [x28]
0x10076626c:  c0 0d 00 36   tbz	w0, #0, loc_100766424 ; ⤵ 0x1b8
0x100766270:  78 22 41 a9   ldp	x24, x8, [x19, #0x10]
0x100766274:  14 07 00 91   add	x20, x24, #0x1
0x100766278:  1f 07 48 eb   cmp	x24, x8, lsr #0x1
0x10076627c:  62 0e 00 54   b.hs	loc_100766448 ; ⤵ 0x1cc
0x100766280:  74 0a 00 f9   str	x20, [x19, #0x10]
0x100766284:  68 0e 18 8b   add	x8, x19, x24, lsl #0x3
0x100766288:  16 11 00 f9   str	x22, [x8, #0x20]
0x10076628c:  bb 03 5a f8   ldur	x27, [fp, #-0x60]
0x100766290:  e0 03 1b aa   mov	x0, x27
0x100766294:  e1 03 17 aa   mov	x1, x23
0x100766298:  87 dd f6 97   bl	0x10051d8b4
0x10076629c:  f3 03 00 aa   mov	x19, x0
0x1007662a0:  a1 03 38 a9   stp	x1, x0, [fp, #-0x80]
0x1007662a4:  f4 03 01 aa   mov	x20, x1
0x1007662a8:  e0 03 1b aa   mov	x0, x27
0x1007662ac:  e1 03 17 aa   mov	x1, x23
0x1007662b0:  4f d4 f6 97   bl	0x10051b3ec
0x1007662b4:  a1 03 37 a9   stp	x1, x0, [fp, #-0x90]
0x1007662b8:  f6 03 01 aa   mov	x22, x1
0x1007662bc:  40 07 41 a9   ldp	x0, x1, [x26, #0x10]
0x1007662c0:  e0 d0 f6 97   bl	0x10051a640
0x1007662c4:  f8 03 00 aa   mov	x24, x0
0x1007662c8:  f9 03 01 aa   mov	x25, x1
0x1007662cc:  e0 03 1b aa   mov	x0, x27
0x1007662d0:  e1 03 17 aa   mov	x1, x23
0x1007662d4:  78 dd f6 97   bl	0x10051d8b4
0x1007662d8:  fa 03 00 aa   mov	x26, x0
0x1007662dc:  fb 03 01 aa   mov	x27, x1
0x1007662e0:  e2 03 18 aa   mov	x2, x24
0x1007662e4:  e3 03 19 aa   mov	x3, x25
0x1007662e8:  ba da f6 97   bl	0x10051cdd0
0x1007662ec:  fc 03 00 aa   mov	x28, x0
0x1007662f0:  a1 83 16 f8   stur	x1, [fp, #-0x98]
0x1007662f4:  e0 03 1a aa   mov	x0, x26
0x1007662f8:  e1 03 1b aa   mov	x1, x27
0x1007662fc:  29 c3 e2 97   bl	0x100016fa0
0x100766300:  e0 03 18 aa   mov	x0, x24
0x100766304:  e1 03 19 aa   mov	x1, x25
0x100766308:  26 c3 e2 97   bl	0x100016fa0
0x10076630c:  e8 88 00 f0   adrp	x8, 0x101885000
0x100766310:  00 a1 41 f9   ldr	x0, [x8, #0x340] ; __got._OBJC_CLASS_$_SPCommandKey
0x100766314:  a3 93 38 94   bl	j__objc_allocWithZone
0x100766318:  f8 03 00 aa   mov	x24, x0
0x10076631c:  a8 03 59 f8   ldur	x8, [fp, #-0x70]
0x100766320:  30 94 38 94   bl	j__objc_retain_x8
0x100766324:  f9 03 00 aa   mov	x25, x0
0x100766328:  e0 03 13 aa   mov	x0, x19
0x10076632c:  e1 03 14 aa   mov	x1, x20
0x100766330:  78 7c 38 94   bl	j__$s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF
0x100766334:  fa 03 00 aa   mov	x26, x0
0x100766338:  b4 83 57 f8   ldur	x20, [fp, #-0x88]
0x10076633c:  e0 03 14 aa   mov	x0, x20
0x100766340:  e1 03 16 aa   mov	x1, x22
0x100766344:  73 7c 38 94   bl	j__$s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF
0x100766348:  fb 03 00 aa   mov	x27, x0
0x10076634c:  e0 03 1c aa   mov	x0, x28
0x100766350:  b6 83 56 f8   ldur	x22, [fp, #-0x98]
0x100766354:  e1 03 16 aa   mov	x1, x22
0x100766358:  6e 7c 38 94   bl	j__$s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF
0x10076635c:  f3 03 00 aa   mov	x19, x0
0x100766360:  ff 0f 1f f8   str	xzr, [sp, #-0x10]!
0x100766364:  e0 03 18 aa   mov	x0, x24
0x100766368:  b7 03 19 f8   stur	x23, [fp, #-0x70]
0x10076636c:  b7 83 59 f8   ldur	x23, [fp, #-0x68]
0x100766370:  e2 03 17 aa   mov	x2, x23
0x100766374:  e3 03 1a aa   mov	x3, x26
0x100766378:  e4 03 1b aa   mov	x4, x27
0x10076637c:  e5 03 13 aa   mov	x5, x19
0x100766380:  e6 03 19 aa   mov	x6, x25
0x100766384:  07 00 80 d2   mov	x7, #0
0x100766388:  06 9f 38 94   bl	j__objc_msgSend(x0, "initWithBeaconingKey:commandKey:connectionToken:nearbyToken:primaryIndex:secondaryIndex:type:")
0x10076638c:  ff 43 00 91   add	sp, sp, #0x10
0x100766390:  f8 03 00 aa   mov	x24, x0
0x100766394:  b7 93 38 94   bl	j__objc_release_x25
0x100766398:  ba 93 38 94   bl	j__objc_release_x26
0x10076639c:  bd 93 38 94   bl	j__objc_release_x27
0x1007663a0:  9c 93 38 94   bl	j__objc_release_x19
0x1007663a4:  e0 03 1c aa   mov	x0, x28
0x1007663a8:  e1 03 16 aa   mov	x1, x22
0x1007663ac:  fd c2 e2 97   bl	0x100016fa0
0x1007663b0:  e0 03 14 aa   mov	x0, x20
0x1007663b4:  a1 03 57 f8   ldur	x1, [fp, #-0x90]
0x1007663b8:  fa c2 e2 97   bl	0x100016fa0
0x1007663bc:  a1 03 78 a9   ldp	x1, x0, [fp, #-0x80]
0x1007663c0:  f8 c2 e2 97   bl	0x100016fa0
0x1007663c4:  ab 93 38 94   bl	j__objc_release_x25
0x1007663c8:  a2 93 38 94   bl	j__objc_release_x23
0x1007663cc:  a0 03 5a f8   ldur	x0, [fp, #-0x60]
0x1007663d0:  a1 03 59 f8   ldur	x1, [fp, #-0x70]
0x1007663d4:  00 81 e2 97   bl	0x1000067d4
0x1007663d8:  ; loc_1007663d8
0x1007663d8:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x1007663dc:  18 01 00 f9   str	x24, [x8]
0x1007663e0:  b5 83 5b f8   ldur	x21, [fp, #-0x48]
0x1007663e4:  bf 43 01 d1   sub	sp, fp, #0x50
0x1007663e8:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x1007663ec:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]

