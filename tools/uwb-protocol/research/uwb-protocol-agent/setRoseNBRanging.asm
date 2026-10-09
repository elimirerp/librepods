
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

