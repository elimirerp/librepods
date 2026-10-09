
-[NIServerItemLocalizerSession configure]:
0x100327fb4:  7f 23 03 d5   pacibsp
0x100327fb8:  ff c3 01 d1   sub	sp, sp, #0x70
0x100327fbc:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x100327fc0:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x100327fc4:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x100327fc8:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x100327fcc:  fd 83 01 91   add	fp, sp, #0x60
0x100327fd0:  f3 03 00 aa   mov	x19, x0
0x100327fd4:  68 34 00 d0   adrp	x8, 0x1009b5000
0x100327fd8:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x100327fdc:  08 01 40 f9   ldr	x8, [x8]
0x100327fe0:  e8 17 00 f9   str	x8, [sp, #0x28]
0x100327fe4:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327fe8:  08 39 82 b9   ldrsw	x8, [x8, #0x238]
0x100327fec:  00 68 68 f8   ldr	x0, [x0, x8]
0x100327ff0:  f9 23 07 94   bl	j__dispatch_assert_queue$V2
0x100327ff4:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327ff8:  16 3d 82 b9   ldrsw	x22, [x8, #0x23c]
0x100327ffc:  68 6a 76 f8   ldr	x8, [x19, x22]
0x100328000:  28 2b 00 b4   cbz	x8, loc_100328564 ; ⤵ 0x564
0x100328004:  18 38 00 b0   adrp	x24, 0x100a29000
0x100328008:  18 43 38 91   add	x24, x24, #0xe10 ; "CreateConfigRTTTypes"
0x10032800c:  14 03 40 f9   ldr	x20, [x24]
0x100328010:  ed 25 07 94   bl	j__objc_retain_x20
0x100328014:  e0 03 14 aa   mov	x0, x20
0x100328018:  01 00 80 52   mov	w1, #0
0x10032801c:  3a 26 07 94   bl	j__os_log_type_enabled
0x100328020:  c0 02 00 34   cbz	w0, loc_100328078 ; ⤵ 0x58
0x100328024:  68 37 00 90   adrp	x8, 0x100a14000
0x100328028:  08 91 82 b9   ldrsw	x8, [x8, #0x290]
0x10032802c:  60 6a 68 f8   ldr	x0, [x19, x8]
0x100328030:  54 28 07 94   bl	j__objc_msgSend(x0, "UUID")
0x100328034:  fd 03 1d aa   mov	fp, fp
0x100328038:  cf 25 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032803c:  f5 03 00 aa   mov	x21, x0
0x100328040:  08 12 00 d0   adrp	x8, 0x10056a000
0x100328044:  00 59 42 fd   ldr	d0, [x8, #0x4b0]
0x100328048:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10032804c:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x100328050:  c0 e6 ff 90   adrp	x0, 0x100000000
0x100328054:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100328058:  43 31 00 90   adrp	x3, 0x100950000
0x10032805c:  63 78 2e 91   add	x3, x3, #0xb9e ; "#ses-item-loc,configure for device %@"
0x100328060:  e4 43 00 91   add	x4, sp, #0x10
0x100328064:  e1 03 14 aa   mov	x1, x20
0x100328068:  02 00 80 52   mov	w2, #0
0x10032806c:  85 01 80 52   mov	w5, #0xc
0x100328070:  59 23 07 94   bl	j___os_log_impl
0x100328074:  8c 25 07 94   bl	j__objc_release_x21
0x100328078:  ; loc_100328078
0x100328078:  87 25 07 94   bl	j__objc_release_x20
0x10032807c:  e0 03 13 aa   mov	x0, x19
0x100328080:  c0 36 07 94   bl	j__objc_msgSend(x0, "_shouldRange")
0x100328084:  e0 02 00 34   cbz	w0, loc_1003280e0 ; ⤵ 0x5c
0x100328088:  e0 03 13 aa   mov	x0, x19
0x10032808c:  45 29 07 94   bl	j__objc_msgSend(x0, "_bringUpUpdatesEngine")
0x100328090:  fd 03 1d aa   mov	fp, fp
0x100328094:  b8 25 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x100328098:  f4 03 00 aa   mov	x20, x0
0x10032809c:  60 04 00 b4   cbz	x0, loc_100328128 ; ⤵ 0x8c
0x1003280a0:  13 03 40 f9   ldr	x19, [x24]
0x1003280a4:  e0 03 13 aa   mov	x0, x19
0x1003280a8:  01 00 80 52   mov	w1, #0
0x1003280ac:  16 26 07 94   bl	j__os_log_type_enabled
0x1003280b0:  80 23 00 34   cbz	w0, loc_100328520 ; ⤵ 0x470
0x1003280b4:  ff 23 00 79   strh	wzr, [sp, #0x10]
0x1003280b8:  c0 e6 ff 90   adrp	x0, 0x100000000
0x1003280bc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1003280c0:  43 31 00 90   adrp	x3, 0x100950000
0x1003280c4:  63 10 2f 91   add	x3, x3, #0xbc4 ; "#ses-item-loc,Can't update configuration, updateEngine couldn't be brought up"
0x1003280c8:  e4 43 00 91   add	x4, sp, #0x10
0x1003280cc:  e1 03 13 aa   mov	x1, x19
0x1003280d0:  02 00 80 52   mov	w2, #0
0x1003280d4:  45 00 80 52   mov	w5, #0x2
0x1003280d8:  3f 23 07 94   bl	j___os_log_impl
0x1003280dc:  11 01 00 14   b	loc_100328520 ; ⤵ 0x444
0x1003280e0:  ; loc_1003280e0
0x1003280e0:  68 37 00 90   adrp	x8, 0x100a14000
0x1003280e4:  14 bd 82 b9   ldrsw	x20, [x8, #0x2bc]
0x1003280e8:  60 6a 74 f8   ldr	x0, [x19, x20]
0x1003280ec:  80 00 00 b4   cbz	x0, loc_1003280fc ; ⤵ 0x10
0x1003280f0:  cc 54 07 94   bl	j__objc_msgSend(x0, "invalidate")
0x1003280f4:  68 6a 74 f8   ldr	x8, [x19, x20]
0x1003280f8:  02 00 00 14   b	loc_100328100 ; ⤵ 0x8
0x1003280fc:  ; loc_1003280fc
0x1003280fc:  08 00 80 d2   mov	x8, #0
0x100328100:  ; loc_100328100
0x100328100:  7f 6a 34 f8   str	xzr, [x19, x20]
0x100328104:  88 25 07 94   bl	j__objc_release_x8
0x100328108:  e0 03 13 aa   mov	x0, x19
0x10032810c:  0d 38 07 94   bl	j__objc_msgSend(x0, "_stopSensorUpdates")
0x100328110:  68 37 00 90   adrp	x8, 0x100a14000
0x100328114:  08 6d 82 b9   ldrsw	x8, [x8, #0x26c]
0x100328118:  7f 6a 28 38   strb	wzr, [x19, x8]
0x10032811c:  e0 03 13 aa   mov	x0, x19
0x100328120:  e8 29 07 94   bl	j__objc_msgSend(x0, "_checkForNearbyObjectRemovalUponLosingDistanceUpdates")
0x100328124:  03 00 00 14   b	loc_100328130 ; ⤵ 0xc
0x100328128:  ; loc_100328128
0x100328128:  e0 03 13 aa   mov	x0, x19
0x10032812c:  85 37 07 94   bl	j__objc_msgSend(x0, "_startSensorUpdates")
0x100328130:  ; loc_100328130
0x100328130:  68 37 00 90   adrp	x8, 0x100a14000
0x100328134:  17 85 82 b9   ldrsw	x23, [x8, #0x284]
0x100328138:  68 6a 77 b8   ldr	w8, [x19, x23]
0x10032813c:  1f 05 00 71   cmp	w8, #0x1
0x100328140:  e0 1e 00 54   b.eq	loc_10032851c ; ⤵ 0x3dc
0x100328144:  88 0d 00 35   cbnz	w8, loc_1003282f4 ; ⤵ 0x1b0
0x100328148:  14 03 40 f9   ldr	x20, [x24]
0x10032814c:  e0 03 14 aa   mov	x0, x20
0x100328150:  01 00 80 52   mov	w1, #0
0x100328154:  ec 25 07 94   bl	j__os_log_type_enabled
0x100328158:  60 01 00 34   cbz	w0, loc_100328184 ; ⤵ 0x2c
0x10032815c:  ff 23 00 79   strh	wzr, [sp, #0x10]
0x100328160:  c0 e6 ff 90   adrp	x0, 0x100000000
0x100328164:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100328168:  43 31 00 90   adrp	x3, 0x100950000
0x10032816c:  63 48 30 91   add	x3, x3, #0xc12 ; "#ses-item-loc,[CL] fetchAccessoryInformation"
0x100328170:  e4 43 00 91   add	x4, sp, #0x10
0x100328174:  e1 03 14 aa   mov	x1, x20
0x100328178:  02 00 80 52   mov	w2, #0
0x10032817c:  45 00 80 52   mov	w5, #0x2
0x100328180:  15 23 07 94   bl	j___os_log_impl
0x100328184:  ; loc_100328184
0x100328184:  68 37 00 90   adrp	x8, 0x100a14000
0x100328188:  08 a9 82 b9   ldrsw	x8, [x8, #0x2a8]
0x10032818c:  75 6a 68 f8   ldr	x21, [x19, x8]
0x100328190:  68 37 00 90   adrp	x8, 0x100a14000
0x100328194:  08 91 82 b9   ldrsw	x8, [x8, #0x290]
0x100328198:  60 6a 68 f8   ldr	x0, [x19, x8]
0x10032819c:  f9 27 07 94   bl	j__objc_msgSend(x0, "UUID")
0x1003281a0:  fd 03 1d aa   mov	fp, fp
0x1003281a4:  74 25 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003281a8:  f4 03 00 aa   mov	x20, x0
0x1003281ac:  e0 03 15 aa   mov	x0, x21
0x1003281b0:  e2 03 14 aa   mov	x2, x20
0x1003281b4:  f3 4b 07 94   bl	j__objc_msgSend(x0, "fetchAccessoryInformationForDevice:")
0x1003281b8:  37 25 07 94   bl	j__objc_release_x20
0x1003281bc:  28 00 80 52   mov	w8, #0x1
0x1003281c0:  68 6a 37 b8   str	w8, [x19, x23]
0x1003281c4:  68 34 00 b0   adrp	x8, 0x1009b5000
0x1003281c8:  00 a1 44 f9   ldr	x0, [x8, #0x940] ; __got._OBJC_CLASS_$_NSBundle
0x1003281cc:  22 36 00 90   adrp	x2, 0x1009ec000
0x1003281d0:  42 a0 06 91   add	x2, x2, #0x1a8 ; "/System/Library/LocationBundles/UWBRegulatory.bundle"
0x1003281d4:  9b 3f 07 94   bl	j__objc_msgSend(x0, "bundleWithPath:")
0x1003281d8:  fd 03 1d aa   mov	fp, fp
0x1003281dc:  66 25 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003281e0:  f5 03 00 aa   mov	x21, x0
0x1003281e4:  68 34 00 b0   adrp	x8, 0x1009b5000
0x1003281e8:  00 11 47 f9   ldr	x0, [x8, #0xe20] ; __got._OBJC_CLASS_$_CLLocationManager
0x1003281ec:  ff 07 00 f9   str	xzr, [sp, #0x8]
0x1003281f0:  14 00 80 d2   mov	x20, #0
0x1003281f4:  e3 23 00 91   add	x3, sp, #0x8
0x1003281f8:  e2 03 15 aa   mov	x2, x21
0x1003281fc:  a1 29 07 94   bl	j__objc_msgSend(x0, "_checkAndExerciseAuthorizationForBundle:error:")
0x100328200:  f6 03 00 aa   mov	x22, x0
0x100328204:  f4 07 40 f9   ldr	x20, [sp, #0x8]
0x100328208:  6f 25 07 94   bl	j__objc_retain_x20
0x10032820c:  34 01 00 b4   cbz	x20, loc_100328230 ; ⤵ 0x24
0x100328210:  17 03 40 f9   ldr	x23, [x24]
0x100328214:  e0 03 17 aa   mov	x0, x23
0x100328218:  01 02 80 52   mov	w1, #0x10
0x10032821c:  ba 25 07 94   bl	j__os_log_type_enabled
0x100328220:  80 00 00 34   cbz	w0, loc_100328230 ; ⤵ 0x10
0x100328224:  e0 03 14 aa   mov	x0, x20
0x100328228:  e1 03 17 aa   mov	x1, x23
0x10032822c:  6e d4 06 94   bl	0x1004dd3e4
0x100328230:  ; loc_100328230
0x100328230:  17 03 40 f9   ldr	x23, [x24]
0x100328234:  e0 03 17 aa   mov	x0, x23
0x100328238:  01 00 80 52   mov	w1, #0
0x10032823c:  b2 25 07 94   bl	j__os_log_type_enabled
0x100328240:  80 02 00 34   cbz	w0, loc_100328290 ; ⤵ 0x50
0x100328244:  c8 2d 00 b0   adrp	x8, 0x1008e1000
0x100328248:  08 59 1f 91   add	x8, x8, #0x7d6 ; "FALSE"
0x10032824c:  c9 2d 00 b0   adrp	x9, 0x1008e1000
0x100328250:  29 45 1f 91   add	x9, x9, #0x7d1 ; "TRUE"
0x100328254:  df 02 00 71   cmp	w22, #0
0x100328258:  0a 12 00 d0   adrp	x10, 0x10056a000
0x10032825c:  40 4d 42 fd   ldr	d0, [x10, #0x498]
0x100328260:  28 11 88 9a   csel	x8, x9, x8, ne
0x100328264:  e0 13 00 bd   str	s0, [sp, #0x10]
0x100328268:  e8 43 01 f8   stur	x8, [sp, #0x14]
0x10032826c:  c0 e6 ff 90   adrp	x0, 0x100000000
0x100328270:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100328274:  43 31 00 90   adrp	x3, 0x100950000
0x100328278:  63 04 32 91   add	x3, x3, #0xc81 ; "#ses-item-loc,isAuthorizedForLocations: %s"
0x10032827c:  e4 43 00 91   add	x4, sp, #0x10
0x100328280:  e1 03 17 aa   mov	x1, x23
0x100328284:  02 00 80 52   mov	w2, #0
0x100328288:  85 01 80 52   mov	w5, #0xc
0x10032828c:  d2 22 07 94   bl	j___os_log_impl
0x100328290:  ; loc_100328290
0x100328290:  d6 02 00 34   cbz	w22, loc_1003282e8 ; ⤵ 0x58
0x100328294:  16 03 40 f9   ldr	x22, [x24]
0x100328298:  e0 03 16 aa   mov	x0, x22
0x10032829c:  01 00 80 52   mov	w1, #0
0x1003282a0:  99 25 07 94   bl	j__os_log_type_enabled
0x1003282a4:  60 01 00 34   cbz	w0, loc_1003282d0 ; ⤵ 0x2c
0x1003282a8:  ff 23 00 79   strh	wzr, [sp, #0x10]
0x1003282ac:  c0 e6 ff 90   adrp	x0, 0x100000000
0x1003282b0:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1003282b4:  43 31 00 90   adrp	x3, 0x100950000
0x1003282b8:  63 b0 32 91   add	x3, x3, #0xcac ; "#ses-item-loc,Authorized - starting visit updates"
0x1003282bc:  e4 43 00 91   add	x4, sp, #0x10
0x1003282c0:  e1 03 16 aa   mov	x1, x22
0x1003282c4:  02 00 80 52   mov	w2, #0
0x1003282c8:  45 00 80 52   mov	w5, #0x2
0x1003282cc:  c2 22 07 94   bl	j___os_log_impl
0x1003282d0:  ; loc_1003282d0
0x1003282d0:  68 37 00 90   adrp	x8, 0x100a14000
0x1003282d4:  16 b9 82 b9   ldrsw	x22, [x8, #0x2b8]
0x1003282d8:  60 6a 76 f8   ldr	x0, [x19, x22]
0x1003282dc:  c1 36 07 94   bl	j__objc_msgSend(x0, "_startLeechingVisits")
0x1003282e0:  60 6a 76 f8   ldr	x0, [x19, x22]
0x1003282e4:  f7 33 07 94   bl	j__objc_msgSend(x0, "_requestVisitState")
0x1003282e8:  ; loc_1003282e8
0x1003282e8:  ef 24 07 94   bl	j__objc_release_x21
0x1003282ec:  ea 24 07 94   bl	j__objc_release_x20
0x1003282f0:  8b 00 00 14   b	loc_10032851c ; ⤵ 0x22c
0x1003282f4:  ; loc_1003282f4
0x1003282f4:  60 6a 76 f8   ldr	x0, [x19, x22]
0x1003282f8:  7a 5c 07 94   bl	j__objc_msgSend(x0, "preferredUpdateRate")
0x1003282fc:  1f 0c 00 f1   cmp	x0, #0x3
0x100328300:  81 01 00 54   b.ne	loc_100328330 ; ⤵ 0x30
0x100328304:  e0 03 13 aa   mov	x0, x19
0x100328308:  3e 30 07 94   bl	j__objc_msgSend(x0, "_isSessionRunning")
0x10032830c:  20 01 00 34   cbz	w0, loc_100328330 ; ⤵ 0x24
0x100328310:  e0 03 13 aa   mov	x0, x19
0x100328314:  53 34 07 94   bl	j__objc_msgSend(x0, "_resetToPrewarmedState")
0x100328318:  fd 03 1d aa   mov	fp, fp
0x10032831c:  16 25 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x100328320:  f4 03 00 aa   mov	x20, x0
0x100328324:  80 0b 00 b4   cbz	x0, loc_100328494 ; ⤵ 0x170
0x100328328:  27 25 07 94   bl	j__objc_retain_x20
0x10032832c:  69 00 00 14   b	loc_1003284d0 ; ⤵ 0x1a4
0x100328330:  ; loc_100328330
0x100328330:  e0 03 13 aa   mov	x0, x19
0x100328334:  0b 36 07 94   bl	j__objc_msgSend(x0, "_shouldPrewarmRanging")
0x100328338:  20 0f 00 34   cbz	w0, loc_10032851c ; ⤵ 0x1e4
0x10032833c:  14 03 40 f9   ldr	x20, [x24]
0x100328340:  e0 03 14 aa   mov	x0, x20
0x100328344:  01 00 80 52   mov	w1, #0
0x100328348:  6f 25 07 94   bl	j__os_log_type_enabled
0x10032834c:  60 01 00 34   cbz	w0, loc_100328378 ; ⤵ 0x2c
0x100328350:  ff 23 00 79   strh	wzr, [sp, #0x10]
0x100328354:  c0 e6 ff 90   adrp	x0, 0x100000000
0x100328358:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032835c:  43 31 00 90   adrp	x3, 0x100950000
0x100328360:  63 54 34 91   add	x3, x3, #0xd15 ; "#ses-item-loc,Prewarming Stage"
0x100328364:  e4 43 00 91   add	x4, sp, #0x10
0x100328368:  e1 03 14 aa   mov	x1, x20
0x10032836c:  02 00 80 52   mov	w2, #0
0x100328370:  45 00 80 52   mov	w5, #0x2
0x100328374:  98 22 07 94   bl	j___os_log_impl
0x100328378:  ; loc_100328378
0x100328378:  68 37 00 90   adrp	x8, 0x100a14000
0x10032837c:  08 45 82 b9   ldrsw	x8, [x8, #0x244]
0x100328380:  68 6a 68 38   ldrb	w8, [x19, x8]
0x100328384:  1f 05 00 71   cmp	w8, #0x1
0x100328388:  e1 00 00 54   b.ne	loc_1003283a4 ; ⤵ 0x1c
0x10032838c:  e0 03 13 aa   mov	x0, x19
0x100328390:  2c 2a 07 94   bl	j__objc_msgSend(x0, "_configureRangingSession")
0x100328394:  fd 03 1d aa   mov	fp, fp
0x100328398:  f7 24 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032839c:  f4 03 00 aa   mov	x20, x0
0x1003283a0:  00 0c 00 b5   cbnz	x0, loc_100328520 ; ⤵ 0x180
0x1003283a4:  ; loc_1003283a4
0x1003283a4:  e0 03 13 aa   mov	x0, x19
0x1003283a8:  7e 29 07 94   bl	j__objc_msgSend(x0, "_combineAndReportLocalAndCompanionRangingRequestStatus")
0x1003283ac:  14 00 80 d2   mov	x20, #0
0x1003283b0:  68 37 00 90   adrp	x8, 0x100a14000
0x1003283b4:  09 59 82 b9   ldrsw	x9, [x8, #0x258]
0x1003283b8:  68 6a 69 b8   ldr	w8, [x19, x9]
0x1003283bc:  1f 09 00 71   cmp	w8, #0x2
0x1003283c0:  cc 04 00 54   b.gt	loc_100328458 ; ⤵ 0x98
0x1003283c4:  a2 08 00 54   b.hs	loc_1003284d8 ; ⤵ 0x114
0x1003283c8:  48 00 80 52   mov	w8, #0x2
0x1003283cc:  68 6a 29 b8   str	w8, [x19, x9]
0x1003283d0:  68 37 00 90   adrp	x8, 0x100a14000
0x1003283d4:  08 65 82 b9   ldrsw	x8, [x8, #0x264]
0x1003283d8:  29 00 80 52   mov	w9, #0x1
0x1003283dc:  69 6a 28 b8   str	w9, [x19, x8]
0x1003283e0:  14 03 40 f9   ldr	x20, [x24]
0x1003283e4:  e0 03 14 aa   mov	x0, x20
0x1003283e8:  01 00 80 52   mov	w1, #0
0x1003283ec:  46 25 07 94   bl	j__os_log_type_enabled
0x1003283f0:  60 01 00 34   cbz	w0, loc_10032841c ; ⤵ 0x2c
0x1003283f4:  ff 23 00 79   strh	wzr, [sp, #0x10]
0x1003283f8:  c0 e6 ff 90   adrp	x0, 0x100000000
0x1003283fc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100328400:  43 31 00 90   adrp	x3, 0x100950000
0x100328404:  63 e8 35 91   add	x3, x3, #0xd7a ; "#ses-item-loc,[CL] connectDevice"
0x100328408:  e4 43 00 91   add	x4, sp, #0x10
0x10032840c:  e1 03 14 aa   mov	x1, x20
0x100328410:  02 00 80 52   mov	w2, #0
0x100328414:  45 00 80 52   mov	w5, #0x2
0x100328418:  6f 22 07 94   bl	j___os_log_impl
0x10032841c:  ; loc_10032841c
0x10032841c:  68 37 00 90   adrp	x8, 0x100a14000
0x100328420:  08 a9 82 b9   ldrsw	x8, [x8, #0x2a8]
0x100328424:  75 6a 68 f8   ldr	x21, [x19, x8]
0x100328428:  68 37 00 90   adrp	x8, 0x100a14000
0x10032842c:  08 91 82 b9   ldrsw	x8, [x8, #0x290]
0x100328430:  60 6a 68 f8   ldr	x0, [x19, x8]
0x100328434:  53 27 07 94   bl	j__objc_msgSend(x0, "UUID")
0x100328438:  fd 03 1d aa   mov	fp, fp
0x10032843c:  ce 24 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x100328440:  f4 03 00 aa   mov	x20, x0
0x100328444:  e0 03 15 aa   mov	x0, x21
0x100328448:  e2 03 14 aa   mov	x2, x20
0x10032844c:  9d 41 07 94   bl	j__objc_msgSend(x0, "connectDevice:")
0x100328450:  91 24 07 94   bl	j__objc_release_x20
0x100328454:  32 00 00 14   b	loc_10032851c ; ⤵ 0xc8
0x100328458:  ; loc_100328458
0x100328458:  1f 11 00 71   cmp	w8, #0x4
0x10032845c:  20 04 00 54   b.eq	loc_1003284e0 ; ⤵ 0x84
0x100328460:  1f 0d 00 71   cmp	w8, #0x3
0x100328464:  e1 05 00 54   b.ne	loc_100328520 ; ⤵ 0xbc
0x100328468:  13 03 40 f9   ldr	x19, [x24]
0x10032846c:  e0 03 13 aa   mov	x0, x19
0x100328470:  01 00 80 52   mov	w1, #0
0x100328474:  24 25 07 94   bl	j__os_log_type_enabled
0x100328478:  20 05 00 34   cbz	w0, loc_10032851c ; ⤵ 0xa4
0x10032847c:  ff 23 00 79   strh	wzr, [sp, #0x10]
0x100328480:  c0 e6 ff 90   adrp	x0, 0x100000000
0x100328484:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100328488:  43 31 00 90   adrp	x3, 0x100950000
0x10032848c:  63 d0 34 91   add	x3, x3, #0xd34 ; "#ses-item-loc,Already connected - waiting for other callbacks from CL"
0x100328490:  1e 00 00 14   b	loc_100328508 ; ⤵ 0x78
0x100328494:  ; loc_100328494
0x100328494:  13 03 40 f9   ldr	x19, [x24]
0x100328498:  e0 03 13 aa   mov	x0, x19
0x10032849c:  01 00 80 52   mov	w1, #0
0x1003284a0:  19 25 07 94   bl	j__os_log_type_enabled
0x1003284a4:  60 01 00 34   cbz	w0, loc_1003284d0 ; ⤵ 0x2c
0x1003284a8:  ff 23 00 79   strh	wzr, [sp, #0x10]
0x1003284ac:  c0 e6 ff 90   adrp	x0, 0x100000000
0x1003284b0:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1003284b4:  43 31 00 90   adrp	x3, 0x100950000
0x1003284b8:  63 78 33 91   add	x3, x3, #0xcde ; "#ses-item-loc,Reset running session to prewarmed state"
0x1003284bc:  e4 43 00 91   add	x4, sp, #0x10
0x1003284c0:  e1 03 13 aa   mov	x1, x19
0x1003284c4:  02 00 80 52   mov	w2, #0
0x1003284c8:  45 00 80 52   mov	w5, #0x2
0x1003284cc:  42 22 07 94   bl	j___os_log_impl
0x1003284d0:  ; loc_1003284d0
0x1003284d0:  71 24 07 94   bl	j__objc_release_x20
0x1003284d4:  13 00 00 14   b	loc_100328520 ; ⤵ 0x4c
0x1003284d8:  ; loc_1003284d8
0x1003284d8:  1f 09 00 71   cmp	w8, #0x2
0x1003284dc:  21 02 00 54   b.ne	loc_100328520 ; ⤵ 0x44
0x1003284e0:  ; loc_1003284e0
0x1003284e0:  13 03 40 f9   ldr	x19, [x24]
0x1003284e4:  e0 03 13 aa   mov	x0, x19
0x1003284e8:  01 00 80 52   mov	w1, #0
0x1003284ec:  06 25 07 94   bl	j__os_log_type_enabled
0x1003284f0:  60 01 00 34   cbz	w0, loc_10032851c ; ⤵ 0x2c
0x1003284f4:  ff 23 00 79   strh	wzr, [sp, #0x10]
0x1003284f8:  c0 e6 ff 90   adrp	x0, 0x100000000
0x1003284fc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100328500:  43 31 00 90   adrp	x3, 0x100950000
0x100328504:  63 6c 36 91   add	x3, x3, #0xd9b ; "#ses-item-loc,Attempting to connect or disconnect - waiting for callback from CL"
0x100328508:  ; loc_100328508
0x100328508:  e4 43 00 91   add	x4, sp, #0x10
0x10032850c:  e1 03 13 aa   mov	x1, x19
0x100328510:  02 00 80 52   mov	w2, #0
0x100328514:  45 00 80 52   mov	w5, #0x2
0x100328518:  2f 22 07 94   bl	j___os_log_impl
0x10032851c:  ; loc_10032851c
0x10032851c:  14 00 80 d2   mov	x20, #0
0x100328520:  ; loc_100328520
0x100328520:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x100328524:  69 34 00 b0   adrp	x9, 0x1009b5000
0x100328528:  29 b5 45 f9   ldr	x9, [x9, #0xb68] ; __got.___stack_chk_guard
0x10032852c:  29 01 40 f9   ldr	x9, [x9]
0x100328530:  3f 01 08 eb   cmp	x9, x8
0x100328534:  c1 01 00 54   b.ne	loc_10032856c ; ⤵ 0x38
0x100328538:  e0 03 14 aa   mov	x0, x20
0x10032853c:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x100328540:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x100328544:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x100328548:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x10032854c:  ff c3 01 91   add	sp, sp, #0x70
0x100328550:  ff 23 03 d5   autibsp
0x100328554:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100328558:  50 00 f0 b6   tbz	x16, #0x3e, loc_100328560 ; ⤵ 0x8
0x10032855c:  20 8e 38 d4   brk	#0xc471
0x100328560:  ; loc_100328560
0x100328560:  01 24 07 14   b	j__objc_autoreleaseReturnValue
0x100328564:  ; loc_100328564
0x100328564:  ba d3 06 94   bl	0x1004dd44c
0x100328568:  20 00 20 d4   brk	#0x1
0x10032856c:  ; loc_10032856c
0x10032856c:  fe 21 07 94   bl	j____stack_chk_fail
0x100328570:  f3 03 00 aa   mov	x19, x0
0x100328574:  48 24 07 94   bl	j__objc_release_x20
0x100328578:  0c 00 00 14   b	loc_1003285a8 ; ⤵ 0x30
0x10032857c:  f3 03 00 aa   mov	x19, x0
0x100328580:  45 24 07 94   bl	j__objc_release_x20
0x100328584:  09 00 00 14   b	loc_1003285a8 ; ⤵ 0x24
0x100328588:  f3 03 00 aa   mov	x19, x0
0x10032858c:  46 24 07 94   bl	j__objc_release_x21
0x100328590:  41 24 07 94   bl	j__objc_release_x20
0x100328594:  05 00 00 14   b	loc_1003285a8 ; ⤵ 0x14
0x100328598:  f3 03 00 aa   mov	x19, x0
0x10032859c:  3e 24 07 94   bl	j__objc_release_x20
0x1003285a0:  02 00 00 14   b	loc_1003285a8 ; ⤵ 0x8
0x1003285a4:  f3 03 00 aa   mov	x19, x0
0x1003285a8:  ; loc_1003285a8
0x1003285a8:  e0 03 13 aa   mov	x0, x19
0x1003285ac:  8a 1e 07 94   bl	j___Unwind_Resume

-[NIServerItemLocalizerSession run]:
0x1003285b0:  7f 23 03 d5   pacibsp
0x1003285b4:  ff 83 02 d1   sub	sp, sp, #0xa0
0x1003285b8:  f8 5f 06 a9   stp	x24, x23, [sp, #0x60]
0x1003285bc:  f6 57 07 a9   stp	x22, x21, [sp, #0x70]
0x1003285c0:  f4 4f 08 a9   stp	x20, x19, [sp, #0x80]
0x1003285c4:  fd 7b 09 a9   stp	fp, lr, [sp, #0x90]
0x1003285c8:  fd 43 02 91   add	fp, sp, #0x90
0x1003285cc:  f3 03 00 aa   mov	x19, x0
0x1003285d0:  68 34 00 b0   adrp	x8, 0x1009b5000
0x1003285d4:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x1003285d8:  08 01 40 f9   ldr	x8, [x8]
0x1003285dc:  a8 83 1c f8   stur	x8, [fp, #-0x38]
0x1003285e0:  68 37 00 90   adrp	x8, 0x100a14000
0x1003285e4:  08 39 82 b9   ldrsw	x8, [x8, #0x238]
0x1003285e8:  00 68 68 f8   ldr	x0, [x0, x8]
0x1003285ec:  7a 22 07 94   bl	j__dispatch_assert_queue$V2
0x1003285f0:  16 38 00 b0   adrp	x22, 0x100a29000
0x1003285f4:  d6 42 38 91   add	x22, x22, #0xe10 ; "CreateConfigRTTTypes"
0x1003285f8:  d4 02 40 f9   ldr	x20, [x22]
0x1003285fc:  72 24 07 94   bl	j__objc_retain_x20
0x100328600:  e0 03 14 aa   mov	x0, x20
0x100328604:  01 00 80 52   mov	w1, #0
0x100328608:  bf 24 07 94   bl	j__os_log_type_enabled
0x10032860c:  c0 02 00 34   cbz	w0, loc_100328664 ; ⤵ 0x58
0x100328610:  68 37 00 90   adrp	x8, 0x100a14000
0x100328614:  08 91 82 b9   ldrsw	x8, [x8, #0x290]
0x100328618:  60 6a 68 f8   ldr	x0, [x19, x8]
0x10032861c:  d9 26 07 94   bl	j__objc_msgSend(x0, "UUID")
0x100328620:  fd 03 1d aa   mov	fp, fp
0x100328624:  54 24 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x100328628:  f5 03 00 aa   mov	x21, x0
0x10032862c:  08 12 00 d0   adrp	x8, 0x10056a000
0x100328630:  00 59 42 fd   ldr	d0, [x8, #0x4b0]
0x100328634:  e0 43 00 bd   str	s0, [sp, #0x40]
0x100328638:  e0 43 04 f8   stur	x0, [sp, #0x44]
0x10032863c:  c0 e6 ff 90   adrp	x0, 0x100000000
0x100328640:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100328644:  43 31 00 90   adrp	x3, 0x100950000
0x100328648:  63 b0 37 91   add	x3, x3, #0xdec ; "#ses-item-loc,run for device %@"
0x10032864c:  e4 03 01 91   add	x4, sp, #0x40
0x100328650:  e1 03 14 aa   mov	x1, x20
0x100328654:  02 00 80 52   mov	w2, #0
0x100328658:  85 01 80 52   mov	w5, #0xc
0x10032865c:  de 21 07 94   bl	j___os_log_impl
0x100328660:  11 24 07 94   bl	j__objc_release_x21
0x100328664:  ; loc_100328664
0x100328664:  0c 24 07 94   bl	j__objc_release_x20
0x100328668:  e0 03 13 aa   mov	x0, x19
0x10032866c:  45 35 07 94   bl	j__objc_msgSend(x0, "_shouldRange")
0x100328670:  80 0a 00 34   cbz	w0, loc_1003287c0 ; ⤵ 0x150
0x100328674:  68 37 00 90   adrp	x8, 0x100a14000
0x100328678:  08 85 82 b9   ldrsw	x8, [x8, #0x284]
0x10032867c:  68 6a 68 b8   ldr	w8, [x19, x8]
0x100328680:  1f 09 00 71   cmp	w8, #0x2
0x100328684:  a1 06 00 54   b.ne	loc_100328758 ; ⤵ 0xd4
0x100328688:  68 37 00 90   adrp	x8, 0x100a14000
0x10032868c:  08 59 82 b9   ldrsw	x8, [x8, #0x258]
0x100328690:  68 6a 68 b8   ldr	w8, [x19, x8]
0x100328694:  1f 0d 00 71   cmp	w8, #0x3
0x100328698:  61 07 00 54   b.ne	loc_100328784 ; ⤵ 0xec
0x10032869c:  68 37 00 90   adrp	x8, 0x100a14000
0x1003286a0:  08 55 82 b9   ldrsw	x8, [x8, #0x254]
0x1003286a4:  68 6a 68 b8   ldr	w8, [x19, x8]
0x1003286a8:  1f 0d 00 71   cmp	w8, #0x3
0x1003286ac:  c1 06 00 54   b.ne	loc_100328784 ; ⤵ 0xd8
0x1003286b0:  68 37 00 90   adrp	x8, 0x100a14000
0x1003286b4:  18 91 82 b9   ldrsw	x24, [x8, #0x290]
0x1003286b8:  60 6a 78 f8   ldr	x0, [x19, x24]
0x1003286bc:  b1 26 07 94   bl	j__objc_msgSend(x0, "UUID")
0x1003286c0:  fd 03 1d aa   mov	fp, fp
0x1003286c4:  2c 24 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003286c8:  1f 00 00 f1   cmp	x0, #0
0x1003286cc:  f4 17 9f 1a   cset	w20, eq
0x1003286d0:  e5 23 07 94   bl	j__objc_release
0x1003286d4:  b4 09 00 35   cbnz	w20, loc_100328808 ; ⤵ 0x134
0x1003286d8:  e0 03 13 aa   mov	x0, x19
0x1003286dc:  21 2c 07 94   bl	j__objc_msgSend(x0, "_getRoseServiceRequestTicketId")
0x1003286e0:  e0 0c 80 37   tbnz	w0, #0x10, loc_10032887c ; ⤵ 0x19c
0x1003286e4:  68 34 00 b0   adrp	x8, 0x1009b5000
0x1003286e8:  13 a9 44 f9   ldr	x19, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x1003286ec:  68 34 00 b0   adrp	x8, 0x1009b5000
0x1003286f0:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x1003286f4:  09 01 40 f9   ldr	x9, [x8]
0x1003286f8:  28 36 00 90   adrp	x8, 0x1009ec000
0x1003286fc:  08 a1 07 91   add	x8, x8, #0x1e8 ; "Asked to start ranging with invalid ticket id. Was ranging configured first?"
0x100328700:  e9 23 02 a9   stp	x9, x8, [sp, #0x20]
0x100328704:  68 34 00 b0   adrp	x8, 0x1009b5000
0x100328708:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x10032870c:  e2 a3 00 91   add	x2, sp, #0x28
0x100328710:  e3 83 00 91   add	x3, sp, #0x20
0x100328714:  24 00 80 52   mov	w4, #0x1
0x100328718:  12 46 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10032871c:  fd 03 1d aa   mov	fp, fp
0x100328720:  15 24 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x100328724:  f5 03 00 aa   mov	x21, x0
0x100328728:  08 35 00 d0   adrp	x8, 0x1009ca000
0x10032872c:  08 21 23 91   add	x8, x8, #0x8c8
0x100328730:  02 01 40 f9   ldr	x2, [x8]
0x100328734:  e0 03 13 aa   mov	x0, x19
0x100328738:  c3 df 82 92   mov	x3, #0xffffffffffffe901
0x10032873c:  e4 03 15 aa   mov	x4, x21
0x100328740:  28 4a 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x100328744:  fd 03 1d aa   mov	fp, fp
0x100328748:  0b 24 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032874c:  f4 03 00 aa   mov	x20, x0
0x100328750:  d5 23 07 94   bl	j__objc_release_x21
0x100328754:  1c 00 00 14   b	loc_1003287c4 ; ⤵ 0x70
0x100328758:  ; loc_100328758
0x100328758:  d3 02 40 f9   ldr	x19, [x22]
0x10032875c:  e0 03 13 aa   mov	x0, x19
0x100328760:  01 00 80 52   mov	w1, #0
0x100328764:  68 24 07 94   bl	j__os_log_type_enabled
0x100328768:  c0 02 00 34   cbz	w0, loc_1003287c0 ; ⤵ 0x58
0x10032876c:  ff 83 00 79   strh	wzr, [sp, #0x40]
0x100328770:  c0 e6 ff 90   adrp	x0, 0x100000000
0x100328774:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100328778:  43 31 00 90   adrp	x3, 0x100950000
0x10032877c:  63 30 38 91   add	x3, x3, #0xe0c ; "#ses-item-loc,Still fetching information from CL. Cannot run session now"
0x100328780:  0b 00 00 14   b	loc_1003287ac ; ⤵ 0x2c

