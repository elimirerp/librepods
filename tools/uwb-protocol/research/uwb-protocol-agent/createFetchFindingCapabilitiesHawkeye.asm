
-[CLHawkeyeDevice createFetchFindingCapabilitiesTask]:
0x101488944:  7f 23 03 d5   pacibsp
0x101488948:  ff 03 01 d1   sub	sp, sp, #0x40
0x10148894c:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x101488950:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x101488954:  fd c3 00 91   add	fp, sp, #0x30
0x101488958:  48 78 00 d0   adrp	x8, 0x102392000
0x10148895c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101488960:  08 01 40 f9   ldr	x8, [x8]
0x101488964:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x101488968:  c8 87 00 d0   adrp	x8, 0x102582000
0x10148896c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101488970:  1f 05 00 b1   cmn	x8, #0x1
0x101488974:  81 05 00 54   b.ne	loc_101488a24 ; ⤵ 0xb0
0x101488978:  ; loc_101488978
0x101488978:  c8 87 00 d0   adrp	x8, 0x102582000
0x10148897c:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101488980:  e0 03 13 aa   mov	x0, x19
0x101488984:  01 00 80 52   mov	w1, #0
0x101488988:  5a 36 1a 94   bl	j__os_log_type_enabled
0x10148898c:  60 02 00 34   cbz	w0, loc_1014889d8 ; ⤵ 0x4c
0x101488990:  68 43 00 90   adrp	x8, 0x101cf4000
0x101488994:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101488998:  e0 03 00 bd   str	s0, [sp]
0x10148899c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014889a0:  48 04 81 52   mov	w8, #0x822
0x1014889a4:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014889a8:  28 51 00 d0   adrp	x8, 0x101eae000
0x1014889ac:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014889b0:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014889b4:  c0 5b ff 90   adrp	x0, 0x100000000
0x1014889b8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014889bc:  e3 6f 00 f0   adrp	x3, 0x102287000
0x1014889c0:  63 3c 10 91   add	x3, x3, #0x40f ; "{\"msg%{public}.0s\":\"#durian #hawkeye creating fetchFindingCapabilitiesTask\"}"
0x1014889c4:  e4 03 00 91   mov	x4, sp
0x1014889c8:  e1 03 13 aa   mov	x1, x19
0x1014889cc:  02 00 80 52   mov	w2, #0
0x1014889d0:  45 02 80 52   mov	w5, #0x12
0x1014889d4:  07 32 1a 94   bl	j___os_log_impl
0x1014889d8:  ; loc_1014889d8
0x1014889d8:  40 44 00 90   adrp	x0, 0x101d10000
0x1014889dc:  00 08 2a 91   add	x0, x0, #0xa82 ; "CoreLocation"
0x1014889e0:  e1 50 00 f0   adrp	x1, 0x101ea7000
0x1014889e4:  21 9c 04 91   add	x1, x1, #0x127 ; "SimultaneousTasks"
0x1014889e8:  f6 31 1a 94   bl	j___os_feature_enabled_impl
0x1014889ec:  a8 84 00 f0   adrp	x8, 0x10251f000
0x1014889f0:  00 c1 27 91   add	x0, x8, #0x9f0 ; CLDurianTask
0x1014889f4:  02 00 80 52   mov	w2, #0
0x1014889f8:  2a 83 1a 94   bl	j__objc_msgSend(x0, "fetchFindingCapabilitiesHawkeyeTaskWithPayload:")
0x1014889fc:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x101488a00:  49 78 00 d0   adrp	x9, 0x102392000
0x101488a04:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101488a08:  29 01 40 f9   ldr	x9, [x9]
0x101488a0c:  3f 01 08 eb   cmp	x9, x8
0x101488a10:  e1 00 00 54   b.ne	loc_101488a2c ; ⤵ 0x1c
0x101488a14:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x101488a18:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x101488a1c:  ff 03 01 91   add	sp, sp, #0x40
0x101488a20:  ff 0f 5f d6   retab
0x101488a24:  ; loc_101488a24
0x101488a24:  13 1e 1a 94   bl	0x101b10270
0x101488a28:  d4 ff ff 17   b	loc_101488978 ; ⤴ -0xb0
0x101488a2c:  ; loc_101488a2c
0x101488a2c:  c5 31 1a 94   bl	j____stack_chk_fail

-[CLHawkeyeDevice createInitRangingTaskWithMacAddress:]:
0x101488a30:  7f 23 03 d5   pacibsp
0x101488a34:  ff 03 01 d1   sub	sp, sp, #0x40
0x101488a38:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x101488a3c:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x101488a40:  fd c3 00 91   add	fp, sp, #0x30
0x101488a44:  48 78 00 d0   adrp	x8, 0x102392000
0x101488a48:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101488a4c:  08 01 40 f9   ldr	x8, [x8]
0x101488a50:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x101488a54:  c8 87 00 d0   adrp	x8, 0x102582000
0x101488a58:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101488a5c:  1f 05 00 b1   cmn	x8, #0x1
0x101488a60:  c1 04 00 54   b.ne	loc_101488af8 ; ⤵ 0x98
0x101488a64:  ; loc_101488a64
0x101488a64:  c8 87 00 d0   adrp	x8, 0x102582000
0x101488a68:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101488a6c:  e0 03 13 aa   mov	x0, x19
0x101488a70:  01 00 80 52   mov	w1, #0
0x101488a74:  1f 36 1a 94   bl	j__os_log_type_enabled
0x101488a78:  60 02 00 34   cbz	w0, loc_101488ac4 ; ⤵ 0x4c
0x101488a7c:  68 43 00 90   adrp	x8, 0x101cf4000
0x101488a80:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101488a84:  e0 03 00 bd   str	s0, [sp]
0x101488a88:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101488a8c:  48 04 81 52   mov	w8, #0x822
0x101488a90:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101488a94:  28 51 00 d0   adrp	x8, 0x101eae000
0x101488a98:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101488a9c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101488aa0:  c0 5b ff 90   adrp	x0, 0x100000000
0x101488aa4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101488aa8:  e3 6f 00 f0   adrp	x3, 0x102287000
0x101488aac:  63 70 11 91   add	x3, x3, #0x45c ; "{\"msg%{public}.0s\":\"#durian #hawkeye creating InitRangingTask\"}"
0x101488ab0:  e4 03 00 91   mov	x4, sp
0x101488ab4:  e1 03 13 aa   mov	x1, x19
0x101488ab8:  02 00 80 52   mov	w2, #0
0x101488abc:  45 02 80 52   mov	w5, #0x12
0x101488ac0:  cc 31 1a 94   bl	j___os_log_impl
0x101488ac4:  ; loc_101488ac4
0x101488ac4:  a8 84 00 f0   adrp	x8, 0x10251f000
0x101488ac8:  00 c1 27 91   add	x0, x8, #0x9f0 ; CLDurianTask
0x101488acc:  d5 a1 1a 94   bl	j__objc_msgSend(x0, "initRangingHawkeyeTask")
0x101488ad0:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x101488ad4:  49 78 00 d0   adrp	x9, 0x102392000
0x101488ad8:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101488adc:  29 01 40 f9   ldr	x9, [x9]
0x101488ae0:  3f 01 08 eb   cmp	x9, x8
0x101488ae4:  e1 00 00 54   b.ne	loc_101488b00 ; ⤵ 0x1c
0x101488ae8:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x101488aec:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x101488af0:  ff 03 01 91   add	sp, sp, #0x40
0x101488af4:  ff 0f 5f d6   retab
0x101488af8:  ; loc_101488af8
0x101488af8:  de 1d 1a 94   bl	0x101b10270
0x101488afc:  da ff ff 17   b	loc_101488a64 ; ⤴ -0x98
0x101488b00:  ; loc_101488b00
0x101488b00:  90 31 1a 94   bl	j____stack_chk_fail

-[CLHawkeyeDevice createDeinitRangingTask]:
0x101488b04:  7f 23 03 d5   pacibsp
0x101488b08:  ff 03 01 d1   sub	sp, sp, #0x40
0x101488b0c:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]

