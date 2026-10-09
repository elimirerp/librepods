
-[CLDurianDeviceManager fetchConnectionTokensForDevice:usingReconciledUUID:andCriteria:]:
0x10147b880:  7f 23 03 d5   pacibsp
0x10147b884:  ff c3 01 d1   sub	sp, sp, #0x70
0x10147b888:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10147b88c:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10147b890:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10147b894:  fd 83 01 91   add	fp, sp, #0x60
0x10147b898:  f3 03 04 aa   mov	x19, x4
0x10147b89c:  f4 03 03 aa   mov	x20, x3
0x10147b8a0:  f5 03 02 aa   mov	x21, x2
0x10147b8a4:  f6 03 00 aa   mov	x22, x0
0x10147b8a8:  36 2c 1b 94   bl	j__objc_msgSend(x0, "scheduleTokenFetchTimeoutForDevice:")
0x10147b8ac:  c0 0a 40 f9   ldr	x0, [x22, #0x10]
0x10147b8b0:  e8 23 00 91   add	x8, sp, #0x8
0x10147b8b4:  b0 78 00 f0   adrp	x16, 0x102392000
0x10147b8b8:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got.__NSConcreteStackBlock
0x10147b8bc:  f1 03 08 aa   mov	x17, x8
0x10147b8c0:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x10147b8c4:  30 0a c1 da   pacda	x16, x17
0x10147b8c8:  f0 07 00 f9   str	x16, [sp, #0x8]
0x10147b8cc:  c9 43 00 b0   adrp	x9, 0x101cf4000
0x10147b8d0:  20 45 44 fd   ldr	d0, [x9, #0x888]
0x10147b8d4:  e0 0b 00 fd   str	d0, [sp, #0x10]
0x10147b8d8:  08 41 00 91   add	x8, x8, #0x10
0x10147b8dc:  10 00 00 90   adrp	x16, 0x10147b000
0x10147b8e0:  10 82 24 91   add	x16, x16, #0x920
0x10147b8e4:  10 01 c1 da   pacia	x16, x8
0x10147b8e8:  c8 7d 00 b0   adrp	x8, 0x102434000
0x10147b8ec:  08 81 02 91   add	x8, x8, #0xa0 ; data_1024340a0 (__DATA_CONST.__const)
0x10147b8f0:  f0 a3 01 a9   stp	x16, x8, [sp, #0x18]
0x10147b8f4:  f6 d7 02 a9   stp	x22, x21, [sp, #0x28]
0x10147b8f8:  f3 1f 00 f9   str	x19, [sp, #0x38]
0x10147b8fc:  e4 23 00 91   add	x4, sp, #0x8
0x10147b900:  e2 03 14 aa   mov	x2, x20
0x10147b904:  e3 03 13 aa   mov	x3, x19
0x10147b908:  2e 94 1a 94   bl	j__objc_msgSend(x0, "connectionTokensForBeaconUUID:criteria:completion:")
0x10147b90c:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10147b910:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10147b914:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10147b918:  ff c3 01 91   add	sp, sp, #0x70
0x10147b91c:  ff 0f 5f d6   retab

sub_10147b920:
0x10147b920:  7f 23 03 d5   pacibsp
0x10147b924:  ff 43 01 d1   sub	sp, sp, #0x50
0x10147b928:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x10147b92c:  fd 03 01 91   add	fp, sp, #0x40
0x10147b930:  e8 03 00 91   mov	x8, sp
0x10147b934:  b0 78 00 f0   adrp	x16, 0x102392000
0x10147b938:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got.__NSConcreteStackBlock
0x10147b93c:  f1 03 08 aa   mov	x17, x8
0x10147b940:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x10147b944:  30 0a c1 da   pacda	x16, x17
0x10147b948:  f0 03 00 f9   str	x16, [sp]
0x10147b94c:  c9 43 00 b0   adrp	x9, 0x101cf4000
0x10147b950:  20 45 44 fd   ldr	d0, [x9, #0x888]
0x10147b954:  e0 07 00 fd   str	d0, [sp, #0x8]
0x10147b958:  08 41 00 91   add	x8, x8, #0x10
0x10147b95c:  10 00 00 90   adrp	x16, 0x10147b000
0x10147b960:  10 92 26 91   add	x16, x16, #0x9a4
0x10147b964:  10 01 c1 da   pacia	x16, x8
0x10147b968:  88 7b 00 f0   adrp	x8, 0x1023ee000
0x10147b96c:  08 41 38 91   add	x8, x8, #0xe10 ; data_1023eee10 (__DATA_CONST.__const)
0x10147b970:  f0 23 01 a9   stp	x16, x8, [sp, #0x10]
0x10147b974:  00 08 c0 3d   ldr	q0, [x0, #0x20]
0x10147b978:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x10147b97c:  08 00 66 9e   fmov	x8, d0
0x10147b980:  08 89 40 f9   ldr	x8, [x8, #0x110]
0x10147b984:  09 18 40 f9   ldr	x9, [x0, #0x30]
0x10147b988:  e1 27 03 a9   stp	x1, x9, [sp, #0x30]
0x10147b98c:  e1 03 00 91   mov	x1, sp
0x10147b990:  e0 03 08 aa   mov	x0, x8
0x10147b994:  1f 67 1a 94   bl	j__dispatch_async
0x10147b998:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x10147b99c:  ff 43 01 91   add	sp, sp, #0x50
0x10147b9a0:  ff 0f 5f d6   retab

sub_10147b9a4:
0x10147b9a4:  7f 23 03 d5   pacibsp
0x10147b9a8:  e9 23 bc 6d   stp	d9, d8, [sp, #-0x40]!
0x10147b9ac:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x10147b9b0:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x10147b9b4:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10147b9b8:  fd c3 00 91   add	fp, sp, #0x30
0x10147b9bc:  f3 03 00 aa   mov	x19, x0
0x10147b9c0:  00 10 40 f9   ldr	x0, [x0, #0x20]
0x10147b9c4:  62 16 40 f9   ldr	x2, [x19, #0x28]
0x10147b9c8:  6e 88 1a 94   bl	j__objc_msgSend(x0, "cancelTokenFetchTimeoutForDevice:")
0x10147b9cc:  28 85 00 90   adrp	x8, 0x10251f000
0x10147b9d0:  14 01 24 91   add	x20, x8, #0x900 ; CLDurianMetricManager
0x10147b9d4:  60 16 40 f9   ldr	x0, [x19, #0x28]
0x10147b9d8:  92 e8 1a 94   bl	j__objc_msgSend(x0, "intervalSinceLastSearchPartyKeyObservation")
0x10147b9dc:  08 1c a0 4e   mov	v8.16b, v0.16b
0x10147b9e0:  60 1a 40 f9   ldr	x0, [x19, #0x30]
0x10147b9e4:  3f 97 1a 94   bl	j__objc_msgSend(x0, "count")
0x10147b9e8:  f5 03 00 aa   mov	x21, x0
0x10147b9ec:  60 16 40 f9   ldr	x0, [x19, #0x28]
0x10147b9f0:  14 13 1b 94   bl	j__objc_msgSend(x0, "prettyBeaconType")
0x10147b9f4:  e4 03 00 aa   mov	x4, x0
0x10147b9f8:  e0 03 14 aa   mov	x0, x20
0x10147b9fc:  00 1d a8 4e   mov	v0.16b, v8.16b
0x10147ba00:  e2 03 15 aa   mov	x2, x21
0x10147ba04:  03 00 80 52   mov	w3, #0
0x10147ba08:  86 73 1b 94   bl	j__objc_msgSend(x0, "submitKeyFetchEvent:numberMaterials:isDrift:deviceType:")
0x10147ba0c:  62 0e 43 a9   ldp	x2, x3, [x19, #0x30]
0x10147ba10:  60 12 42 a9   ldp	x0, x4, [x19, #0x20]
0x10147ba14:  05 00 80 d2   mov	x5, #0
0x10147ba18:  8a a5 1a 94   bl	j__objc_msgSend(x0, "didFetchConnectionMaterial:criteria:forDevice:error:")
0x10147ba1c:  60 0a 42 a9   ldp	x0, x2, [x19, #0x20]
0x10147ba20:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x10147ba24:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x10147ba28:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x10147ba2c:  e9 23 c4 6c   ldp	d9, d8, [sp], #0x40
0x10147ba30:  ff 23 03 d5   autibsp
0x10147ba34:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10147ba38:  50 00 f0 b6   tbz	x16, #0x3e, loc_10147ba40 ; ⤵ 0x8
0x10147ba3c:  20 8e 38 d4   brk	#0xc471
0x10147ba40:  ; loc_10147ba40
0x10147ba40:  88 91 1a 14   b	j__objc_msgSend(x0, "completeTokenFetchForDevice:")

-[CLDurianDeviceManager didFetchConnectionMaterial:criteria:forDevice:error:]:
0x10147ba44:  7f 23 03 d5   pacibsp
0x10147ba48:  ff 03 07 d1   sub	sp, sp, #0x1c0
0x10147ba4c:  fc 6f 16 a9   stp	x28, x27, [sp, #0x160]
0x10147ba50:  fa 67 17 a9   stp	x26, x25, [sp, #0x170]
0x10147ba54:  f8 5f 18 a9   stp	x24, x23, [sp, #0x180]
0x10147ba58:  f6 57 19 a9   stp	x22, x21, [sp, #0x190]
0x10147ba5c:  f4 4f 1a a9   stp	x20, x19, [sp, #0x1a0]
0x10147ba60:  fd 7b 1b a9   stp	fp, lr, [sp, #0x1b0]
0x10147ba64:  fd c3 06 91   add	fp, sp, #0x1b0
0x10147ba68:  f7 03 05 aa   mov	x23, x5
0x10147ba6c:  fc 03 04 aa   mov	x28, x4
0x10147ba70:  f5 03 00 aa   mov	x21, x0
0x10147ba74:  bb 43 03 d1   sub	x27, fp, #0xd0
0x10147ba78:  a8 78 00 f0   adrp	x8, 0x102392000
0x10147ba7c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10147ba80:  08 01 40 f9   ldr	x8, [x8]
0x10147ba84:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x10147ba88:  85 0c 00 b4   cbz	x5, loc_10147bc18 ; ⤵ 0x190
0x10147ba8c:  e0 03 15 aa   mov	x0, x21
0x10147ba90:  e2 03 1c aa   mov	x2, x28
0x10147ba94:  e3 03 17 aa   mov	x3, x23
0x10147ba98:  62 cb 1a 94   bl	j__objc_msgSend(x0, "handleKeyFetchFailureForDevice:withError:")
0x10147ba9c:  33 88 00 f0   adrp	x19, 0x102582000
0x10147baa0:  68 3a 46 f9   ldr	x8, [x19, #0xc70] ; data_102582c70 (__DATA.__data)
0x10147baa4:  1f 05 00 b1   cmn	x8, #0x1
0x10147baa8:  81 3c 00 54   b.ne	loc_10147c238 ; ⤵ 0x790
0x10147baac:  38 88 00 f0   adrp	x24, 0x102582000
0x10147bab0:  14 3f 46 f9   ldr	x20, [x24, #0xc78] ; data_102582c78 (__DATA.__data)
0x10147bab4:  e0 03 14 aa   mov	x0, x20
0x10147bab8:  01 02 80 52   mov	w1, #0x10
0x10147babc:  0d 6a 1a 94   bl	j__os_log_type_enabled
0x10147bac0:  00 05 00 34   cbz	w0, loc_10147bb60 ; ⤵ 0xa0
0x10147bac4:  e0 03 1c aa   mov	x0, x28
0x10147bac8:  be 89 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147bacc:  d3 73 00 94   bl	0x101498a18
0x10147bad0:  f5 03 00 aa   mov	x21, x0
0x10147bad4:  e0 03 1c aa   mov	x0, x28

