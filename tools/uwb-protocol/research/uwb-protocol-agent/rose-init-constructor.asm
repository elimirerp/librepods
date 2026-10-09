
+[CLDurianTask initRoseTaskWithParameters:]:
0x1014466a0:  7f 23 03 d5   pacibsp
0x1014466a4:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1014466a8:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1014466ac:  fd 43 00 91   add	fp, sp, #0x10
0x1014466b0:  f3 03 02 aa   mov	x19, x2
0x1014466b4:  e7 3d 1b 94   bl	j__objc_alloc
0x1014466b8:  f4 03 00 aa   mov	x20, x0
0x1014466bc:  c8 86 00 b0   adrp	x8, 0x10251f000
0x1014466c0:  00 81 26 91   add	x0, x8, #0x9a0 ; CLDurianCommand
0x1014466c4:  e2 03 13 aa   mov	x2, x19
0x1014466c8:  fe aa 1b 94   bl	j__objc_msgSend(x0, "initRoseCommandWithParameters:")
0x1014466cc:  e2 03 00 aa   mov	x2, x0
0x1014466d0:  e0 03 14 aa   mov	x0, x20
0x1014466d4:  03 00 80 d2   mov	x3, #0
0x1014466d8:  24 00 80 52   mov	w4, #0x1
0x1014466dc:  05 00 80 52   mov	w5, #0
0x1014466e0:  26 00 80 52   mov	w6, #0x1
0x1014466e4:  4f ae 1b 94   bl	j__objc_msgSend(x0, "initWithCommand:desiredLatency:expectsResponse:completeOnPreemption:requiresMutex:")
0x1014466e8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014466ec:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1014466f0:  ff 23 03 d5   autibsp
0x1014466f4:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1014466f8:  50 00 f0 b6   tbz	x16, #0x3e, loc_101446700 ; ⤵ 0x8
0x1014466fc:  20 8e 38 d4   brk	#0xc471
0x101446700:  ; loc_101446700
0x101446700:  e0 3d 1b 14   b	j__objc_autorelease

+[CLDurianTask stopRoseTaskWithParameters:]:
0x101446704:  7f 23 03 d5   pacibsp
0x101446708:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10144670c:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101446710:  fd 43 00 91   add	fp, sp, #0x10
0x101446714:  f3 03 02 aa   mov	x19, x2
0x101446718:  ce 3d 1b 94   bl	j__objc_alloc
0x10144671c:  f4 03 00 aa   mov	x20, x0
0x101446720:  c8 86 00 b0   adrp	x8, 0x10251f000
0x101446724:  00 81 26 91   add	x0, x8, #0x9a0 ; CLDurianCommand
0x101446728:  e2 03 13 aa   mov	x2, x19
0x10144672c:  7d 44 1c 94   bl	j__objc_msgSend(x0, "stopRoseCommandWithParameters:")
0x101446730:  e2 03 00 aa   mov	x2, x0
0x101446734:  e0 03 14 aa   mov	x0, x20
0x101446738:  03 00 80 d2   mov	x3, #0
0x10144673c:  24 00 80 52   mov	w4, #0x1
0x101446740:  05 00 80 52   mov	w5, #0
0x101446744:  06 00 80 52   mov	w6, #0
0x101446748:  36 ae 1b 94   bl	j__objc_msgSend(x0, "initWithCommand:desiredLatency:expectsResponse:completeOnPreemption:requiresMutex:")
0x10144674c:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101446750:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101446754:  ff 23 03 d5   autibsp
0x101446758:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10144675c:  50 00 f0 b6   tbz	x16, #0x3e, loc_101446764 ; ⤵ 0x8
0x101446760:  20 8e 38 d4   brk	#0xc471
0x101446764:  ; loc_101446764
0x101446764:  c7 3d 1b 14   b	j__objc_autorelease

+[CLDurianTask setRoseRangingParametersTaskWithParameters:]:
0x101446768:  7f 23 03 d5   pacibsp
0x10144676c:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101446770:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101446774:  fd 43 00 91   add	fp, sp, #0x10
0x101446778:  f3 03 02 aa   mov	x19, x2
0x10144677c:  b5 3d 1b 94   bl	j__objc_alloc
0x101446780:  f4 03 00 aa   mov	x20, x0
0x101446784:  c8 86 00 b0   adrp	x8, 0x10251f000
0x101446788:  00 81 26 91   add	x0, x8, #0x9a0 ; CLDurianCommand
0x10144678c:  e2 03 13 aa   mov	x2, x19
0x101446790:  64 2b 1c 94   bl	j__objc_msgSend(x0, "setRoseRangingParametersCommandWithParameters:")
0x101446794:  e2 03 00 aa   mov	x2, x0
0x101446798:  e0 03 14 aa   mov	x0, x20
0x10144679c:  03 00 80 d2   mov	x3, #0
0x1014467a0:  24 00 80 52   mov	w4, #0x1
0x1014467a4:  05 00 80 52   mov	w5, #0
0x1014467a8:  06 00 80 52   mov	w6, #0
0x1014467ac:  1d ae 1b 94   bl	j__objc_msgSend(x0, "initWithCommand:desiredLatency:expectsResponse:completeOnPreemption:requiresMutex:")
0x1014467b0:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014467b4:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1014467b8:  ff 23 03 d5   autibsp
0x1014467bc:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1014467c0:  50 00 f0 b6   tbz	x16, #0x3e, loc_1014467c8 ; ⤵ 0x8
0x1014467c4:  20 8e 38 d4   brk	#0xc471
0x1014467c8:  ; loc_1014467c8
0x1014467c8:  ae 3d 1b 14   b	j__objc_autorelease

+[CLDurianTask startRoseRangingTaskWithParameters:]:
0x1014467cc:  7f 23 03 d5   pacibsp
0x1014467d0:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1014467d4:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1014467d8:  fd 43 00 91   add	fp, sp, #0x10
0x1014467dc:  f3 03 02 aa   mov	x19, x2
0x1014467e0:  9c 3d 1b 94   bl	j__objc_alloc
0x1014467e4:  f4 03 00 aa   mov	x20, x0
0x1014467e8:  c8 86 00 b0   adrp	x8, 0x10251f000
0x1014467ec:  00 81 26 91   add	x0, x8, #0x9a0 ; CLDurianCommand
0x1014467f0:  e2 03 13 aa   mov	x2, x19
0x1014467f4:  bb 3f 1c 94   bl	j__objc_msgSend(x0, "startRoseRangingCommandWithParameters:")
0x1014467f8:  e2 03 00 aa   mov	x2, x0
0x1014467fc:  e0 03 14 aa   mov	x0, x20
0x101446800:  03 00 80 d2   mov	x3, #0
0x101446804:  24 00 80 52   mov	w4, #0x1
0x101446808:  05 00 80 52   mov	w5, #0
0x10144680c:  06 00 80 52   mov	w6, #0
0x101446810:  04 ae 1b 94   bl	j__objc_msgSend(x0, "initWithCommand:desiredLatency:expectsResponse:completeOnPreemption:requiresMutex:")
0x101446814:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101446818:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10144681c:  ff 23 03 d5   autibsp
0x101446820:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101446824:  50 00 f0 b6   tbz	x16, #0x3e, loc_10144682c ; ⤵ 0x8
0x101446828:  20 8e 38 d4   brk	#0xc471
0x10144682c:  ; loc_10144682c
0x10144682c:  95 3d 1b 14   b	j__objc_autorelease

+[CLDurianTask stopRoseRangingTask]:
0x101446830:  7f 23 03 d5   pacibsp
0x101446834:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101446838:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10144683c:  fd 43 00 91   add	fp, sp, #0x10
0x101446840:  84 3d 1b 94   bl	j__objc_alloc
0x101446844:  f3 03 00 aa   mov	x19, x0
0x101446848:  c8 86 00 b0   adrp	x8, 0x10251f000
0x10144684c:  00 81 26 91   add	x0, x8, #0x9a0 ; CLDurianCommand
0x101446850:  4c 44 1c 94   bl	j__objc_msgSend(x0, "stopRoseRangingCommand")
0x101446854:  e2 03 00 aa   mov	x2, x0
0x101446858:  e0 03 13 aa   mov	x0, x19
0x10144685c:  03 00 80 d2   mov	x3, #0
0x101446860:  04 00 80 52   mov	w4, #0
0x101446864:  05 00 80 52   mov	w5, #0
0x101446868:  06 00 80 52   mov	w6, #0
0x10144686c:  ed ad 1b 94   bl	j__objc_msgSend(x0, "initWithCommand:desiredLatency:expectsResponse:completeOnPreemption:requiresMutex:")
0x101446870:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101446874:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101446878:  ff 23 03 d5   autibsp
0x10144687c:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101446880:  50 00 f0 b6   tbz	x16, #0x3e, loc_101446888 ; ⤵ 0x8
0x101446884:  20 8e 38 d4   brk	#0xc471
0x101446888:  ; loc_101446888
0x101446888:  7e 3d 1b 14   b	j__objc_autorelease

+[CLDurianTask setRoseNBRangingParametersTaskWithParameters:]:
0x10144688c:  7f 23 03 d5   pacibsp
0x101446890:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101446894:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101446898:  fd 43 00 91   add	fp, sp, #0x10
0x10144689c:  f3 03 02 aa   mov	x19, x2
0x1014468a0:  6c 3d 1b 94   bl	j__objc_alloc
0x1014468a4:  f4 03 00 aa   mov	x20, x0
0x1014468a8:  c8 86 00 b0   adrp	x8, 0x10251f000
0x1014468ac:  00 81 26 91   add	x0, x8, #0x9a0 ; CLDurianCommand
0x1014468b0:  e2 03 13 aa   mov	x2, x19
0x1014468b4:  03 2b 1c 94   bl	j__objc_msgSend(x0, "setRoseNBRangingParametersCommandWithParameters:")
0x1014468b8:  e2 03 00 aa   mov	x2, x0
0x1014468bc:  e0 03 14 aa   mov	x0, x20
0x1014468c0:  03 00 80 d2   mov	x3, #0
0x1014468c4:  24 00 80 52   mov	w4, #0x1
0x1014468c8:  05 00 80 52   mov	w5, #0
0x1014468cc:  06 00 80 52   mov	w6, #0
0x1014468d0:  d4 ad 1b 94   bl	j__objc_msgSend(x0, "initWithCommand:desiredLatency:expectsResponse:completeOnPreemption:requiresMutex:")
0x1014468d4:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1014468d8:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1014468dc:  ff 23 03 d5   autibsp
0x1014468e0:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1014468e4:  50 00 f0 b6   tbz	x16, #0x3e, loc_1014468ec ; ⤵ 0x8
0x1014468e8:  20 8e 38 d4   brk	#0xc471
0x1014468ec:  ; loc_1014468ec
0x1014468ec:  65 3d 1b 14   b	j__objc_autorelease

+[CLDurianTask startRoseNBRangingTaskWithIRK:]:
0x1014468f0:  7f 23 03 d5   pacibsp
0x1014468f4:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1014468f8:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1014468fc:  fd 43 00 91   add	fp, sp, #0x10
0x101446900:  f3 03 02 aa   mov	x19, x2
0x101446904:  53 3d 1b 94   bl	j__objc_alloc
0x101446908:  f4 03 00 aa   mov	x20, x0
0x10144690c:  c8 86 00 b0   adrp	x8, 0x10251f000
0x101446910:  00 81 26 91   add	x0, x8, #0x9a0 ; CLDurianCommand
0x101446914:  e2 03 13 aa   mov	x2, x19
0x101446918:  5a 3f 1c 94   bl	j__objc_msgSend(x0, "startRoseNBRangingCommandWithIRK:")
0x10144691c:  e2 03 00 aa   mov	x2, x0
0x101446920:  e0 03 14 aa   mov	x0, x20
0x101446924:  03 00 80 d2   mov	x3, #0
0x101446928:  24 00 80 52   mov	w4, #0x1
0x10144692c:  05 00 80 52   mov	w5, #0
0x101446930:  06 00 80 52   mov	w6, #0
0x101446934:  bb ad 1b 94   bl	j__objc_msgSend(x0, "initWithCommand:desiredLatency:expectsResponse:completeOnPreemption:requiresMutex:")
0x101446938:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10144693c:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101446940:  ff 23 03 d5   autibsp
0x101446944:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101446948:  50 00 f0 b6   tbz	x16, #0x3e, loc_101446950 ; ⤵ 0x8
0x10144694c:  20 8e 38 d4   brk	#0xc471
0x101446950:  ; loc_101446950
0x101446950:  4c 3d 1b 14   b	j__objc_autorelease

+[CLDurianTask setAccelerometerSlopeModeConfigurationTaskWithConfiguration:]:
0x101446954:  7f 23 03 d5   pacibsp
0x101446958:  ff c3 00 d1   sub	sp, sp, #0x30
0x10144695c:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x101446960:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x101446964:  fd 83 00 91   add	fp, sp, #0x20
0x101446968:  f3 03 02 aa   mov	x19, x2
0x10144696c:  f4 03 00 aa   mov	x20, x0

