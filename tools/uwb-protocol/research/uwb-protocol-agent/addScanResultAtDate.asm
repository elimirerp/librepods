
-[CLDurianDeviceManager addScanResultAtDate:address:advertisementData:rssi:maintenanceReason:reserved:reconciledInformation:speakerTampering:]:
0x1014727ac:  7f 23 03 d5   pacibsp
0x1014727b0:  ff c3 02 d1   sub	sp, sp, #0xb0
0x1014727b4:  fc 6f 05 a9   stp	x28, x27, [sp, #0x50]
0x1014727b8:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x1014727bc:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x1014727c0:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x1014727c4:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x1014727c8:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x1014727cc:  fd 83 02 91   add	fp, sp, #0xa0
0x1014727d0:  f8 03 07 aa   mov	x24, x7
0x1014727d4:  fa 03 06 aa   mov	x26, x6
0x1014727d8:  f9 03 04 aa   mov	x25, x4
0x1014727dc:  f7 03 03 aa   mov	x23, x3
0x1014727e0:  fb 03 02 aa   mov	x27, x2
0x1014727e4:  f3 03 00 aa   mov	x19, x0
0x1014727e8:  b4 0b 40 f9   ldr	x20, [fp, #0x10]
0x1014727ec:  08 79 00 90   adrp	x8, 0x102392000
0x1014727f0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014727f4:  08 01 40 f9   ldr	x8, [x8]
0x1014727f8:  e8 27 00 f9   str	x8, [sp, #0x48]
0x1014727fc:  e0 03 14 aa   mov	x0, x20
0x101472800:  70 ae 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101472804:  80 12 00 b4   cbz	x0, loc_101472a54 ; ⤵ 0x250
0x101472808:  f6 03 00 aa   mov	x22, x0
0x10147280c:  e0 03 13 aa   mov	x0, x19
0x101472810:  e2 03 16 aa   mov	x2, x22
0x101472814:  03 c7 1a 94   bl	j__objc_msgSend(x0, "deviceWithUUID:")
0x101472818:  f5 03 00 aa   mov	x21, x0
0x10147281c:  68 85 00 b0   adrp	x8, 0x10251f000
0x101472820:  00 e1 02 91   add	x0, x8, #0xb8 ; class_CLDurianPlatform
0x101472824:  bf 11 1b 94   bl	j__objc_msgSend(x0, "isInternalInstall")
0x101472828:  a0 00 00 34   cbz	w0, loc_10147283c ; ⤵ 0x14
0x10147282c:  a3 63 40 39   ldrb	w3, [fp, #0x18]
0x101472830:  e0 03 13 aa   mov	x0, x19
0x101472834:  e2 03 15 aa   mov	x2, x21
0x101472838:  ea 9e 1b 94   bl	j__objc_msgSend(x0, "tallyNumberOfSpeakerTamperingBitsForDevice:bit:")
0x10147283c:  ; loc_10147283c
0x10147283c:  e0 03 15 aa   mov	x0, x21
0x101472840:  d8 31 1b 94   bl	j__objc_msgSend(x0, "ownership")
0x101472844:  1f 04 00 f1   cmp	x0, #0x1
0x101472848:  61 10 00 54   b.ne	loc_101472a54 ; ⤵ 0x20c
0x10147284c:  60 2a 40 f9   ldr	x0, [x19, #0x50]
0x101472850:  e2 03 1b aa   mov	x2, x27
0x101472854:  e3 03 17 aa   mov	x3, x23
0x101472858:  e4 03 1a aa   mov	x4, x26
0x10147285c:  e5 03 16 aa   mov	x5, x22
0x101472860:  28 a1 1a 94   bl	j__objc_msgSend(x0, "addScanResultAtDate:address:reason:uuid:")
0x101472864:  e0 03 17 aa   mov	x0, x23
0x101472868:  0e 25 1b 94   bl	j__objc_msgSend(x0, "mutableCopy")
0x10147286c:  85 8d 1a 94   bl	j__objc_autorelease
0x101472870:  e2 03 19 aa   mov	x2, x25
0x101472874:  03 a4 1a 94   bl	j__objc_msgSend(x0, "appendData:")
0x101472878:  e0 03 18 aa   mov	x0, x24
0x10147287c:  d9 1a 1b 94   bl	j__objc_msgSend(x0, "length")
0x101472880:  1f 08 00 f1   cmp	x0, #0x2
0x101472884:  83 02 00 54   b.lo	loc_1014728d4 ; ⤵ 0x50
0x101472888:  ff 03 00 39   strb	wzr, [sp]
0x10147288c:  e2 03 00 91   mov	x2, sp
0x101472890:  e0 03 18 aa   mov	x0, x24
0x101472894:  23 00 80 52   mov	w3, #0x1
0x101472898:  24 00 80 52   mov	w4, #0x1
0x10147289c:  b1 e6 1a 94   bl	j__objc_msgSend(x0, "getBytes:range:")
0x1014728a0:  e8 78 00 d0   adrp	x8, 0x102390000
0x1014728a4:  18 d5 41 f9   ldr	x24, [x8, #0x3a8] ; __got._OBJC_CLASS_$_SPCommandKeysCriteria
0x1014728a8:  e0 03 14 aa   mov	x0, x20
0x1014728ac:  4d 54 1b 94   bl	j__objc_msgSend(x0, "sequence")
0x1014728b0:  f9 03 00 aa   mov	x25, x0
0x1014728b4:  e0 03 14 aa   mov	x0, x20
0x1014728b8:  da 20 1b 94   bl	j__objc_msgSend(x0, "matchedIndex")
0x1014728bc:  e3 03 00 aa   mov	x3, x0
0x1014728c0:  e4 03 40 39   ldrb	w4, [sp]
0x1014728c4:  e0 03 18 aa   mov	x0, x24
0x1014728c8:  e2 03 19 aa   mov	x2, x25
0x1014728cc:  cd 20 1b 94   bl	j__objc_msgSend(x0, "matchSequence:index:hint:")
0x1014728d0:  13 00 00 14   b	loc_10147291c ; ⤵ 0x4c
0x1014728d4:  ; loc_1014728d4
0x1014728d4:  e8 78 00 d0   adrp	x8, 0x102390000
0x1014728d8:  18 d5 41 f9   ldr	x24, [x8, #0x3a8] ; __got._OBJC_CLASS_$_SPCommandKeysCriteria
0x1014728dc:  e8 78 00 f0   adrp	x8, 0x102391000
0x1014728e0:  19 95 45 f9   ldr	x25, [x8, #0xb28] ; __got._OBJC_CLASS_$_NSNumber
0x1014728e4:  e0 03 14 aa   mov	x0, x20
0x1014728e8:  ce 20 1b 94   bl	j__objc_msgSend(x0, "matchedIndex")
0x1014728ec:  e2 03 00 aa   mov	x2, x0
0x1014728f0:  e0 03 19 aa   mov	x0, x25
0x1014728f4:  0b 29 1b 94   bl	j__objc_msgSend(x0, "numberWithUnsignedInt:")
0x1014728f8:  e0 23 00 f9   str	x0, [sp, #0x40]
0x1014728fc:  e8 78 00 f0   adrp	x8, 0x102391000
0x101472900:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x101472904:  e2 03 01 91   add	x2, sp, #0x40
0x101472908:  23 00 80 52   mov	w3, #0x1
0x10147290c:  7d a5 1a 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x101472910:  e2 03 00 aa   mov	x2, x0
0x101472914:  e0 03 18 aa   mov	x0, x24
0x101472918:  b2 20 1b 94   bl	j__objc_msgSend(x0, "matchPrimaryIndices:")
0x10147291c:  ; loc_10147291c
0x10147291c:  f8 03 00 aa   mov	x24, x0
0x101472920:  e0 03 15 aa   mov	x0, x21
0x101472924:  07 19 1b 94   bl	j__objc_msgSend(x0, "lastReconciledCriteria")
0x101472928:  e2 8d 1a 94   bl	j__objc_retain
0x10147292c:  55 8d 1a 94   bl	j__objc_autorelease
0x101472930:  fa 03 00 aa   mov	x26, x0
0x101472934:  e0 03 18 aa   mov	x0, x24
0x101472938:  e2 03 1a aa   mov	x2, x26
0x10147293c:  f1 95 1a 94   bl	j__objc_msgSend(x0, "_cl_isEqual:")
0x101472940:  f9 03 00 aa   mov	x25, x0
0x101472944:  e0 03 15 aa   mov	x0, x21
0x101472948:  e2 03 18 aa   mov	x2, x24
0x10147294c:  a5 6c 1b 94   bl	j__objc_msgSend(x0, "setLastReconciledCriteria:")
0x101472950:  e0 03 15 aa   mov	x0, x21
0x101472954:  e2 03 17 aa   mov	x2, x23
0x101472958:  9a 6c 1b 94   bl	j__objc_msgSend(x0, "setLastReconciledAddress:")
0x10147295c:  c1 8c 1a 94   bl	j__mach_continuous_time
0x101472960:  e2 03 00 aa   mov	x2, x0
0x101472964:  e0 03 15 aa   mov	x0, x21
0x101472968:  a6 6c 1b 94   bl	j__objc_msgSend(x0, "setLastReconciliationTime:")
0x10147296c:  e0 03 13 aa   mov	x0, x19
0x101472970:  e2 03 15 aa   mov	x2, x21
0x101472974:  a3 9e 1b 94   bl	j__objc_msgSend(x0, "tallyNumberOfVisitsExperiencedForDevice:")
0x101472978:  e0 03 15 aa   mov	x0, x21
0x10147297c:  d9 0d 1b 94   bl	j__objc_msgSend(x0, "isAttemptingConnection")
0x101472980:  a0 06 00 34   cbz	w0, loc_101472a54 ; ⤵ 0xd4
0x101472984:  e0 03 15 aa   mov	x0, x21
0x101472988:  de 0e 1b 94   bl	j__objc_msgSend(x0, "isConnected")
0x10147298c:  40 06 00 37   tbnz	w0, #0, loc_101472a54 ; ⤵ 0xc8
0x101472990:  88 88 00 90   adrp	x8, 0x102582000
0x101472994:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101472998:  1f 05 00 b1   cmn	x8, #0x1
0x10147299c:  81 07 00 54   b.ne	loc_101472a8c ; ⤵ 0xf0
0x1014729a0:  ; loc_1014729a0
0x1014729a0:  88 88 00 90   adrp	x8, 0x102582000
0x1014729a4:  17 3d 46 f9   ldr	x23, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014729a8:  e0 03 17 aa   mov	x0, x23
0x1014729ac:  01 00 80 52   mov	w1, #0
0x1014729b0:  50 8e 1a 94   bl	j__os_log_type_enabled
0x1014729b4:  00 04 00 34   cbz	w0, loc_101472a34 ; ⤵ 0x80
0x1014729b8:  e0 03 16 aa   mov	x0, x22
0x1014729bc:  17 98 00 94   bl	0x101498a18
0x1014729c0:  08 39 00 b0   adrp	x8, 0x101b93000
0x1014729c4:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x1014729c8:  e0 03 00 bd   str	s0, [sp]
0x1014729cc:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014729d0:  48 04 81 52   mov	w8, #0x822
0x1014729d4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014729d8:  e8 51 00 90   adrp	x8, 0x101eae000
0x1014729dc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014729e0:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014729e4:  28 08 81 52   mov	w8, #0x841
0x1014729e8:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014729ec:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x1014729f0:  48 80 80 52   mov	w8, #0x402
0x1014729f4:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1014729f8:  f9 e3 01 b8   stur	w25, [sp, #0x1e]
0x1014729fc:  48 08 81 52   mov	w8, #0x842
0x101472a00:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101472a04:  fa 43 02 f8   stur	x26, [sp, #0x24]
0x101472a08:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x101472a0c:  f8 e3 02 f8   stur	x24, [sp, #0x2e]
0x101472a10:  60 5c ff d0   adrp	x0, 0x100000000
0x101472a14:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101472a18:  63 70 00 b0   adrp	x3, 0x10227f000
0x101472a1c:  63 f8 02 91   add	x3, x3, #0xbe ; "{\"msg%{public}.0s\":\"#durian #connectattempt newrec\", \"item\":%{private, location:escape_only}@, \"same\":%{public}hhd, \"old\":%{public, location:escape_only}@, \"new\":%{public, location:escape_only}@}"
0x101472a20:  e4 03 00 91   mov	x4, sp
0x101472a24:  e1 03 17 aa   mov	x1, x23
0x101472a28:  02 00 80 52   mov	w2, #0
0x101472a2c:  c5 06 80 52   mov	w5, #0x36
0x101472a30:  f0 89 1a 94   bl	j___os_log_impl
0x101472a34:  ; loc_101472a34
0x101472a34:  19 01 00 37   tbnz	w25, #0, loc_101472a54 ; ⤵ 0x20
0x101472a38:  e0 03 14 aa   mov	x0, x20
0x101472a3c:  e1 ad 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101472a40:  e3 03 00 aa   mov	x3, x0
0x101472a44:  e0 03 13 aa   mov	x0, x19
0x101472a48:  e2 03 15 aa   mov	x2, x21
0x101472a4c:  e4 03 18 aa   mov	x4, x24
0x101472a50:  74 da 1a 94   bl	j__objc_msgSend(x0, "fetchConnectionTokensForDevice:usingReconciledUUID:andCriteria:")
0x101472a54:  ; loc_101472a54
0x101472a54:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x101472a58:  09 79 00 90   adrp	x9, 0x102392000
0x101472a5c:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101472a60:  29 01 40 f9   ldr	x9, [x9]
0x101472a64:  3f 01 08 eb   cmp	x9, x8
0x101472a68:  61 01 00 54   b.ne	loc_101472a94 ; ⤵ 0x2c
0x101472a6c:  fd 7b 4a a9   ldp	fp, lr, [sp, #0xa0]
0x101472a70:  f4 4f 49 a9   ldp	x20, x19, [sp, #0x90]
0x101472a74:  f6 57 48 a9   ldp	x22, x21, [sp, #0x80]
0x101472a78:  f8 5f 47 a9   ldp	x24, x23, [sp, #0x70]
0x101472a7c:  fa 67 46 a9   ldp	x26, x25, [sp, #0x60]
0x101472a80:  fc 6f 45 a9   ldp	x28, x27, [sp, #0x50]
0x101472a84:  ff c3 02 91   add	sp, sp, #0xb0
0x101472a88:  ff 0f 5f d6   retab
0x101472a8c:  ; loc_101472a8c
0x101472a8c:  d4 75 1a 94   bl	0x101b101dc
0x101472a90:  c4 ff ff 17   b	loc_1014729a0 ; ⤴ -0xf0
0x101472a94:  ; loc_101472a94
0x101472a94:  ab 89 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager shouldEnableExtendedRange]:
0x101472a98:  7f 23 03 d5   pacibsp
0x101472a9c:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x101472aa0:  fd 03 00 91   mov	fp, sp
0x101472aa4:  68 85 00 b0   adrp	x8, 0x10251f000
0x101472aa8:  00 41 11 91   add	x0, x8, #0x450 ; CLDurianSettings
0x101472aac:  5d e3 1a 94   bl	j__objc_msgSend(x0, "forceExtendedRange")
0x101472ab0:  1f 04 00 31   cmn	w0, #0x1
0x101472ab4:  a0 00 00 54   b.eq	loc_101472ac8 ; ⤵ 0x14
0x101472ab8:  1f 00 00 71   cmp	w0, #0
0x101472abc:  e0 07 9f 1a   cset	w0, ne
0x101472ac0:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x101472ac4:  ff 0f 5f d6   retab
0x101472ac8:  ; loc_101472ac8
0x101472ac8:  a0 51 00 d0   adrp	x0, 0x101ea8000
0x101472acc:  00 dc 10 91   add	x0, x0, #0x437 ; "AirTag"
0x101472ad0:  c1 51 00 d0   adrp	x1, 0x101eac000
0x101472ad4:  21 78 31 91   add	x1, x1, #0xc5e ; "BT_Improvements"
0x101472ad8:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x101472adc:  ff 23 03 d5   autibsp
0x101472ae0:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101472ae4:  50 00 f0 b6   tbz	x16, #0x3e, loc_101472aec ; ⤵ 0x8
0x101472ae8:  20 8e 38 d4   brk	#0xc471
0x101472aec:  ; loc_101472aec
0x101472aec:  b5 89 1a 14   b	j___os_feature_enabled_impl

-[CLDurianDeviceManager connectToDevice:withPeripheral:]:
0x101472af0:  7f 23 03 d5   pacibsp

