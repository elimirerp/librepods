
-[CLDurianDeviceManager centralManager:didConnectPeripheral:]:
0x10146a9b8:  7f 23 03 d5   pacibsp
0x10146a9bc:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10146a9c0:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10146a9c4:  fd 43 00 91   add	fp, sp, #0x10
0x10146a9c8:  f3 03 03 aa   mov	x19, x3
0x10146a9cc:  f4 03 00 aa   mov	x20, x0
0x10146a9d0:  00 88 40 f9   ldr	x0, [x0, #0x110]
0x10146a9d4:  07 ab 1a 94   bl	j__dispatch_assert_queue$V2
0x10146a9d8:  e0 03 14 aa   mov	x0, x20
0x10146a9dc:  e2 03 13 aa   mov	x2, x19
0x10146a9e0:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10146a9e4:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10146a9e8:  ff 23 03 d5   autibsp
0x10146a9ec:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10146a9f0:  50 00 f0 b6   tbz	x16, #0x3e, loc_10146a9f8 ; ⤵ 0x8
0x10146a9f4:  20 8e 38 d4   brk	#0xc471
0x10146a9f8:  ; loc_10146a9f8
0x10146a9f8:  82 0e 1b 14   b	j__objc_msgSend(x0, "handleConnectionForPeripheral:")

-[CLDurianDeviceManager centralManager:canSendDataToPeripheral:]:
0x10146a9fc:  7f 23 03 d5   pacibsp
0x10146aa00:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10146aa04:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10146aa08:  fd 43 00 91   add	fp, sp, #0x10
0x10146aa0c:  f3 03 03 aa   mov	x19, x3
0x10146aa10:  f4 03 00 aa   mov	x20, x0
0x10146aa14:  00 88 40 f9   ldr	x0, [x0, #0x110]
0x10146aa18:  f6 aa 1a 94   bl	j__dispatch_assert_queue$V2
0x10146aa1c:  e0 03 14 aa   mov	x0, x20
0x10146aa20:  e2 03 13 aa   mov	x2, x19
0x10146aa24:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10146aa28:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10146aa2c:  ff 23 03 d5   autibsp
0x10146aa30:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10146aa34:  50 00 f0 b6   tbz	x16, #0x3e, loc_10146aa3c ; ⤵ 0x8
0x10146aa38:  20 8e 38 d4   brk	#0xc471
0x10146aa3c:  ; loc_10146aa3c
0x10146aa3c:  29 0e 1b 14   b	j__objc_msgSend(x0, "handleCanSendDataToPeripheral:")

-[CLDurianDeviceManager centralManager:didFailToConnectPeripheral:error:]:
0x10146aa40:  7f 23 03 d5   pacibsp
0x10146aa44:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x10146aa48:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x10146aa4c:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10146aa50:  fd 83 00 91   add	fp, sp, #0x20
0x10146aa54:  f3 03 04 aa   mov	x19, x4
0x10146aa58:  f4 03 03 aa   mov	x20, x3
0x10146aa5c:  f5 03 00 aa   mov	x21, x0
0x10146aa60:  00 88 40 f9   ldr	x0, [x0, #0x110]
0x10146aa64:  e3 aa 1a 94   bl	j__dispatch_assert_queue$V2
0x10146aa68:  e0 03 15 aa   mov	x0, x21
0x10146aa6c:  e2 03 14 aa   mov	x2, x20
0x10146aa70:  e3 03 13 aa   mov	x3, x19
0x10146aa74:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x10146aa78:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x10146aa7c:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x10146aa80:  ff 23 03 d5   autibsp
0x10146aa84:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10146aa88:  50 00 f0 b6   tbz	x16, #0x3e, loc_10146aa90 ; ⤵ 0x8
0x10146aa8c:  20 8e 38 d4   brk	#0xc471
0x10146aa90:  ; loc_10146aa90
0x10146aa90:  54 0e 1b 14   b	j__objc_msgSend(x0, "handleConnectionFailureForPeripheral:withError:")

-[CLDurianDeviceManager centralManager:didDisconnectPeripheral:error:]:
0x10146aa94:  7f 23 03 d5   pacibsp
0x10146aa98:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x10146aa9c:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x10146aaa0:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10146aaa4:  fd 83 00 91   add	fp, sp, #0x20
0x10146aaa8:  f3 03 04 aa   mov	x19, x4
0x10146aaac:  f4 03 03 aa   mov	x20, x3
0x10146aab0:  f5 03 00 aa   mov	x21, x0
0x10146aab4:  00 88 40 f9   ldr	x0, [x0, #0x110]
0x10146aab8:  ce aa 1a 94   bl	j__dispatch_assert_queue$V2
0x10146aabc:  e0 03 15 aa   mov	x0, x21
0x10146aac0:  e2 03 14 aa   mov	x2, x20
0x10146aac4:  e3 03 13 aa   mov	x3, x19
0x10146aac8:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x10146aacc:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x10146aad0:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x10146aad4:  ff 23 03 d5   autibsp
0x10146aad8:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10146aadc:  50 00 f0 b6   tbz	x16, #0x3e, loc_10146aae4 ; ⤵ 0x8
0x10146aae0:  20 8e 38 d4   brk	#0xc471
0x10146aae4:  ; loc_10146aae4
0x10146aae4:  7f 0e 1b 14   b	j__objc_msgSend(x0, "handleDisconnectedPeripheral:withError:")

-[CLDurianDeviceManager getStateForCentral:]:
0x10146aae8:  e0 03 02 aa   mov	x0, x2
0x10146aaec:  4d b0 1b 14   b	j__objc_msgSend(x0, "state")

-[CLDurianDeviceManager ready]:
0x10146aaf0:  7f 23 03 d5   pacibsp
0x10146aaf4:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10146aaf8:  fd 03 00 91   mov	fp, sp
0x10146aafc:  00 6c 40 f9   ldr	x0, [x0, #0xd8]
0x10146ab00:  48 b0 1b 94   bl	j__objc_msgSend(x0, "state")
0x10146ab04:  1f 14 00 f1   cmp	x0, #0x5
0x10146ab08:  04 18 4a fa   ccmp	x0, #0xa, #0x4, ne
0x10146ab0c:  e0 17 9f 1a   cset	w0, eq
0x10146ab10:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10146ab14:  ff 0f 5f d6   retab

-[CLDurianDeviceManager lastLocation]:
0x10146ab18:  7f 23 03 d5   pacibsp
0x10146ab1c:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10146ab20:  fd 03 00 91   mov	fp, sp
0x10146ab24:  08 24 40 f9   ldr	x8, [x0, #0x48]
0x10146ab28:  aa ad 1a 94   bl	j__objc_retain_x8
0x10146ab2c:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10146ab30:  ff 23 03 d5   autibsp
0x10146ab34:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10146ab38:  50 00 f0 b6   tbz	x16, #0x3e, loc_10146ab40 ; ⤵ 0x8
0x10146ab3c:  20 8e 38 d4   brk	#0xc471
0x10146ab40:  ; loc_10146ab40
0x10146ab40:  d0 ac 1a 14   b	j__objc_autorelease

-[CLDurianDeviceManager resetDeviceConnections:]:
0x10146ab44:  7f 23 03 d5   pacibsp
0x10146ab48:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x10146ab4c:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x10146ab50:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x10146ab54:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x10146ab58:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x10146ab5c:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x10146ab60:  fd 43 01 91   add	fp, sp, #0x50
0x10146ab64:  ff 83 07 d1   sub	sp, sp, #0x1e0
0x10146ab68:  f5 03 02 aa   mov	x21, x2
0x10146ab6c:  f3 03 00 aa   mov	x19, x0
0x10146ab70:  48 79 00 90   adrp	x8, 0x102392000
0x10146ab74:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10146ab78:  08 01 40 f9   ldr	x8, [x8]
0x10146ab7c:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x10146ab80:  c8 88 00 90   adrp	x8, 0x102582000
0x10146ab84:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146ab88:  1f 05 00 b1   cmn	x8, #0x1
0x10146ab8c:  c1 19 00 54   b.ne	loc_10146aec4 ; ⤵ 0x338
0x10146ab90:  ; loc_10146ab90
0x10146ab90:  bc 83 02 d1   sub	x28, fp, #0xa0
0x10146ab94:  c8 88 00 90   adrp	x8, 0x102582000
0x10146ab98:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146ab9c:  e0 03 14 aa   mov	x0, x20
0x10146aba0:  01 00 80 52   mov	w1, #0
0x10146aba4:  d3 ad 1a 94   bl	j__os_log_type_enabled
0x10146aba8:  80 04 00 34   cbz	w0, loc_10146ac38 ; ⤵ 0x90
0x10146abac:  60 5e 40 f9   ldr	x0, [x19, #0xb8]
0x10146abb0:  cc da 1a 94   bl	j__objc_msgSend(x0, "count")
0x10146abb4:  f6 03 00 aa   mov	x22, x0
0x10146abb8:  60 76 40 f9   ldr	x0, [x19, #0xe8]
0x10146abbc:  c9 da 1a 94   bl	j__objc_msgSend(x0, "count")
0x10146abc0:  68 32 42 39   ldrb	w8, [x19, #0x8c]
0x10146abc4:  49 39 00 b0   adrp	x9, 0x101b93000
0x10146abc8:  20 e9 47 fd   ldr	d0, [x9, #0xfd0]
0x10146abcc:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x10146abd0:  bf 43 16 b8   stur	wzr, [fp, #-0x9c]
0x10146abd4:  49 04 81 52   mov	w9, #0x822
0x10146abd8:  a9 83 16 78   sturh	w9, [fp, #-0x98]
0x10146abdc:  29 52 00 90   adrp	x9, 0x101eae000
0x10146abe0:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146abe4:  89 a3 00 f8   stur	x9, [x28, #0xa]
0x10146abe8:  49 08 81 52   mov	w9, #0x842
0x10146abec:  a9 23 17 78   sturh	w9, [fp, #-0x8e]
0x10146abf0:  95 43 01 f8   stur	x21, [x28, #0x14]
0x10146abf4:  29 00 81 52   mov	w9, #0x801
0x10146abf8:  a9 c3 17 78   sturh	w9, [fp, #-0x84]
0x10146abfc:  96 e3 01 f8   stur	x22, [x28, #0x1e]
0x10146ac00:  49 80 80 52   mov	w9, #0x402
0x10146ac04:  a9 63 18 78   sturh	w9, [fp, #-0x7a]
0x10146ac08:  a0 83 18 b8   stur	w0, [fp, #-0x78]
0x10146ac0c:  a9 c3 18 78   sturh	w9, [fp, #-0x74]
0x10146ac10:  88 e3 02 b8   stur	w8, [x28, #0x2e]
0x10146ac14:  a0 5c ff d0   adrp	x0, 0x100000000
0x10146ac18:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146ac1c:  83 70 00 d0   adrp	x3, 0x10227c000
0x10146ac20:  63 20 17 91   add	x3, x3, #0x5c8 ; "{\"msg%{public}.0s\":\"#durian resetDeviceConnections\", \"reason\":%{public, location:escape_only}@, \"count\":%{private}lld, \"timeoutblocks\":%{public}d, \"fetched\":%{public}hhd}"
0x10146ac24:  a4 83 02 d1   sub	x4, fp, #0xa0
0x10146ac28:  e1 03 14 aa   mov	x1, x20
0x10146ac2c:  02 00 80 52   mov	w2, #0
0x10146ac30:  45 06 80 52   mov	w5, #0x32
0x10146ac34:  6f a9 1a 94   bl	j___os_log_impl
0x10146ac38:  ; loc_10146ac38
0x10146ac38:  00 e4 00 6f   movi	v0.2d, #0
0x10146ac3c:  e0 83 03 ad   stp	q0, q0, [sp, #0x70]
0x10146ac40:  e0 83 02 ad   stp	q0, q0, [sp, #0x50]
0x10146ac44:  60 76 40 f9   ldr	x0, [x19, #0xe8]
0x10146ac48:  e6 c1 1a 94   bl	j__objc_msgSend(x0, "allValues")
0x10146ac4c:  f4 03 00 aa   mov	x20, x0
0x10146ac50:  e2 43 01 91   add	x2, sp, #0x50
0x10146ac54:  e3 43 04 91   add	x3, sp, #0x110
0x10146ac58:  04 02 80 52   mov	w4, #0x10
0x10146ac5c:  a9 da 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10146ac60:  00 03 00 b4   cbz	x0, loc_10146acc0 ; ⤵ 0x60
0x10146ac64:  f5 03 00 aa   mov	x21, x0
0x10146ac68:  e8 33 40 f9   ldr	x8, [sp, #0x60]
0x10146ac6c:  16 01 40 f9   ldr	x22, [x8]
0x10146ac70:  ; loc_10146ac70
0x10146ac70:  17 00 80 d2   mov	x23, #0
0x10146ac74:  ; loc_10146ac74
0x10146ac74:  e8 33 40 f9   ldr	x8, [sp, #0x60]
0x10146ac78:  08 01 40 f9   ldr	x8, [x8]
0x10146ac7c:  1f 01 16 eb   cmp	x8, x22
0x10146ac80:  60 00 00 54   b.eq	loc_10146ac8c ; ⤵ 0xc
0x10146ac84:  e0 03 14 aa   mov	x0, x20
0x10146ac88:  9e ac 1a 94   bl	j__objc_enumerationMutation
0x10146ac8c:  ; loc_10146ac8c
0x10146ac8c:  e8 2f 40 f9   ldr	x8, [sp, #0x58]
0x10146ac90:  00 79 77 f8   ldr	x0, [x8, x23, lsl #0x3]
0x10146ac94:  63 aa 1a 94   bl	j__dispatch_block_cancel
0x10146ac98:  f7 06 00 91   add	x23, x23, #0x1
0x10146ac9c:  bf 02 17 eb   cmp	x21, x23
0x10146aca0:  a1 fe ff 54   b.ne	loc_10146ac74 ; ⤴ -0x2c
0x10146aca4:  e2 43 01 91   add	x2, sp, #0x50
0x10146aca8:  e3 43 04 91   add	x3, sp, #0x110
0x10146acac:  e0 03 14 aa   mov	x0, x20
0x10146acb0:  04 02 80 52   mov	w4, #0x10
0x10146acb4:  93 da 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10146acb8:  f5 03 00 aa   mov	x21, x0
0x10146acbc:  a0 fd ff b5   cbnz	x0, loc_10146ac70 ; ⤴ -0x4c
0x10146acc0:  ; loc_10146acc0
0x10146acc0:  60 76 40 f9   ldr	x0, [x19, #0xe8]
0x10146acc4:  6f 64 1b 94   bl	j__objc_msgSend(x0, "removeAllObjects")
0x10146acc8:  00 e4 00 6f   movi	v0.2d, #0
0x10146accc:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x10146acd0:  e0 83 00 ad   stp	q0, q0, [sp, #0x10]
0x10146acd4:  60 5e 40 f9   ldr	x0, [x19, #0xb8]
0x10146acd8:  5a 48 1b 94   bl	j__objc_msgSend(x0, "objectEnumerator")
0x10146acdc:  f4 03 00 aa   mov	x20, x0
0x10146ace0:  e2 43 00 91   add	x2, sp, #0x10
0x10146ace4:  e3 43 02 91   add	x3, sp, #0x90
0x10146ace8:  04 02 80 52   mov	w4, #0x10
0x10146acec:  85 da 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10146acf0:  e0 0c 00 b4   cbz	x0, loc_10146ae8c ; ⤵ 0x19c
0x10146acf4:  f5 03 00 aa   mov	x21, x0
0x10146acf8:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10146acfc:  29 79 00 d0   adrp	x9, 0x102390000
0x10146ad00:  29 19 42 f9   ldr	x9, [x9, #0x430] ; __got._SPTagSeparationStateNone
0x10146ad04:  18 01 40 f9   ldr	x24, [x8]
0x10146ad08:  36 01 40 f9   ldr	x22, [x9]
0x10146ad0c:  48 44 00 d0   adrp	x8, 0x101cf4000
0x10146ad10:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10146ad14:  e0 03 80 3d   str	q0, [sp]
0x10146ad18:  ; loc_10146ad18
0x10146ad18:  17 00 80 d2   mov	x23, #0
0x10146ad1c:  ; loc_10146ad1c
0x10146ad1c:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10146ad20:  08 01 40 f9   ldr	x8, [x8]
0x10146ad24:  1f 01 18 eb   cmp	x8, x24
0x10146ad28:  60 00 00 54   b.eq	loc_10146ad34 ; ⤵ 0xc
0x10146ad2c:  e0 03 14 aa   mov	x0, x20
0x10146ad30:  74 ac 1a 94   bl	j__objc_enumerationMutation
0x10146ad34:  ; loc_10146ad34
0x10146ad34:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x10146ad38:  19 79 77 f8   ldr	x25, [x8, x23, lsl #0x3]
0x10146ad3c:  e0 03 19 aa   mov	x0, x25
0x10146ad40:  00 d7 1a 94   bl	j__objc_msgSend(x0, "connectionState")
0x10146ad44:  fa 03 00 aa   mov	x26, x0
0x10146ad48:  c8 88 00 90   adrp	x8, 0x102582000
0x10146ad4c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146ad50:  1f 05 00 b1   cmn	x8, #0x1
0x10146ad54:  a1 08 00 54   b.ne	loc_10146ae68 ; ⤵ 0x114
0x10146ad58:  ; loc_10146ad58
0x10146ad58:  c8 88 00 90   adrp	x8, 0x102582000
0x10146ad5c:  1b 3d 46 f9   ldr	x27, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146ad60:  e0 03 1b aa   mov	x0, x27
0x10146ad64:  01 00 80 52   mov	w1, #0
0x10146ad68:  62 ad 1a 94   bl	j__os_log_type_enabled
0x10146ad6c:  60 03 00 34   cbz	w0, loc_10146add8 ; ⤵ 0x6c
0x10146ad70:  e0 03 19 aa   mov	x0, x25
0x10146ad74:  13 cd 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10146ad78:  28 b7 00 94   bl	0x101498a18
0x10146ad7c:  e0 03 c0 3d   ldr	q0, [sp]
0x10146ad80:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x10146ad84:  bf 43 16 b8   stur	wzr, [fp, #-0x9c]
0x10146ad88:  48 04 81 52   mov	w8, #0x822
0x10146ad8c:  a8 83 16 78   sturh	w8, [fp, #-0x98]
0x10146ad90:  28 52 00 90   adrp	x8, 0x101eae000
0x10146ad94:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146ad98:  88 a3 00 f8   stur	x8, [x28, #0xa]
0x10146ad9c:  28 08 81 52   mov	w8, #0x841
0x10146ada0:  a8 23 17 78   sturh	w8, [fp, #-0x8e]
0x10146ada4:  80 43 01 f8   stur	x0, [x28, #0x14]
0x10146ada8:  28 00 81 52   mov	w8, #0x801
0x10146adac:  a8 c3 17 78   sturh	w8, [fp, #-0x84]
0x10146adb0:  9a e3 01 f8   stur	x26, [x28, #0x1e]
0x10146adb4:  a4 83 02 d1   sub	x4, fp, #0xa0
0x10146adb8:  a0 5c ff d0   adrp	x0, 0x100000000
0x10146adbc:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146adc0:  e1 03 1b aa   mov	x1, x27
0x10146adc4:  02 00 80 52   mov	w2, #0
0x10146adc8:  83 70 00 d0   adrp	x3, 0x10227c000
0x10146adcc:  63 cc 19 91   add	x3, x3, #0x673 ; "{\"msg%{public}.0s\":\"#durian resetDeviceConnections\", \"item\":%{private, location:escape_only}@, \"connstate\":%{private}lld}"
0x10146add0:  c5 04 80 52   mov	w5, #0x26
0x10146add4:  07 a9 1a 94   bl	j___os_log_impl
0x10146add8:  ; loc_10146add8
0x10146add8:  e0 03 19 aa   mov	x0, x25
0x10146addc:  c9 2d 1b 94   bl	j__objc_msgSend(x0, "isConnected")
0x10146ade0:  20 01 00 34   cbz	w0, loc_10146ae04 ; ⤵ 0x24
0x10146ade4:  e0 03 19 aa   mov	x0, x25
0x10146ade8:  7e 30 1b 94   bl	j__objc_msgSend(x0, "isLeashable")
0x10146adec:  c0 00 00 34   cbz	w0, loc_10146ae04 ; ⤵ 0x18
0x10146adf0:  a8 85 00 b0   adrp	x8, 0x10251f000
0x10146adf4:  00 41 11 91   add	x0, x8, #0x450 ; CLDurianSettings
0x10146adf8:  3a 37 1b 94   bl	j__objc_msgSend(x0, "lastKnownLocationEnabled")
0x10146adfc:  e4 03 00 aa   mov	x4, x0
0x10146ae00:  02 00 00 14   b	loc_10146ae08 ; ⤵ 0x8
0x10146ae04:  ; loc_10146ae04
0x10146ae04:  04 00 80 52   mov	w4, #0
0x10146ae08:  ; loc_10146ae08
0x10146ae08:  e0 03 13 aa   mov	x0, x19
0x10146ae0c:  e2 03 19 aa   mov	x2, x25
0x10146ae10:  63 00 80 52   mov	w3, #0x3
0x10146ae14:  cb 71 1b 94   bl	j__objc_msgSend(x0, "sendObservationForDevice:type:includeLocation:")
0x10146ae18:  e0 03 13 aa   mov	x0, x19
0x10146ae1c:  e2 03 19 aa   mov	x2, x25
0x10146ae20:  e3 03 16 aa   mov	x3, x22
0x10146ae24:  04 00 80 52   mov	w4, #0
0x10146ae28:  2e 72 1b 94   bl	j__objc_msgSend(x0, "sendSeparationStateForDevice:state:includeLocation:")
0x10146ae2c:  e0 03 13 aa   mov	x0, x19
0x10146ae30:  e2 03 19 aa   mov	x2, x25
0x10146ae34:  fb ca 1a 94   bl	j__objc_msgSend(x0, "cancelDebounceForDevice:")
0x10146ae38:  7a 5a 40 f9   ldr	x26, [x19, #0xb0]
0x10146ae3c:  e0 03 19 aa   mov	x0, x25
0x10146ae40:  e0 cc 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10146ae44:  e2 03 00 aa   mov	x2, x0
0x10146ae48:  e0 03 1a aa   mov	x0, x26
0x10146ae4c:  43 00 80 52   mov	w3, #0x2
0x10146ae50:  04 00 80 d2   mov	x4, #0
0x10146ae54:  73 4a 1b 94   bl	j__objc_msgSend(x0, "onConnectionStateChangeForDeviceWithUUID:fromState:toState:")
0x10146ae58:  f7 06 00 91   add	x23, x23, #0x1
0x10146ae5c:  bf 02 17 eb   cmp	x21, x23
0x10146ae60:  e1 f5 ff 54   b.ne	loc_10146ad1c ; ⤴ -0x144
0x10146ae64:  03 00 00 14   b	loc_10146ae70 ; ⤵ 0xc
0x10146ae68:  ; loc_10146ae68
0x10146ae68:  dd 94 1a 94   bl	0x101b101dc
0x10146ae6c:  bb ff ff 17   b	loc_10146ad58 ; ⤴ -0x114
0x10146ae70:  ; loc_10146ae70
0x10146ae70:  e2 43 00 91   add	x2, sp, #0x10
0x10146ae74:  e3 43 02 91   add	x3, sp, #0x90
0x10146ae78:  e0 03 14 aa   mov	x0, x20
0x10146ae7c:  04 02 80 52   mov	w4, #0x10
0x10146ae80:  20 da 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10146ae84:  f5 03 00 aa   mov	x21, x0
0x10146ae88:  80 f4 ff b5   cbnz	x0, loc_10146ad18 ; ⤴ -0x170
0x10146ae8c:  ; loc_10146ae8c
0x10146ae8c:  a8 83 59 f8   ldur	x8, [fp, #-0x68]
0x10146ae90:  49 79 00 90   adrp	x9, 0x102392000
0x10146ae94:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10146ae98:  29 01 40 f9   ldr	x9, [x9]
0x10146ae9c:  3f 01 08 eb   cmp	x9, x8
0x10146aea0:  61 01 00 54   b.ne	loc_10146aecc ; ⤵ 0x2c
0x10146aea4:  ff 83 07 91   add	sp, sp, #0x1e0
0x10146aea8:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x10146aeac:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x10146aeb0:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x10146aeb4:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x10146aeb8:  fa 67 41 a9   ldp	x26, x25, [sp, #0x10]
0x10146aebc:  fc 6f c6 a8   ldp	x28, x27, [sp], #0x60
0x10146aec0:  ff 0f 5f d6   retab
0x10146aec4:  ; loc_10146aec4
0x10146aec4:  d6 94 1a 94   bl	0x101b1021c
0x10146aec8:  32 ff ff 17   b	loc_10146ab90 ; ⤴ -0x338
0x10146aecc:  ; loc_10146aecc
0x10146aecc:  9d a8 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager onGeoCountryConfigurationChanged:]:
0x10146aed0:  7f 23 03 d5   pacibsp
0x10146aed4:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10146aed8:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10146aedc:  fd 43 00 91   add	fp, sp, #0x10
0x10146aee0:  e8 03 02 aa   mov	x8, x2
0x10146aee4:  f3 03 00 aa   mov	x19, x0
0x10146aee8:  c9 7d 00 b0   adrp	x9, 0x102423000
0x10146aeec:  29 21 0f 91   add	x9, x9, #0x3c8
0x10146aef0:  22 01 40 f9   ldr	x2, [x9]
0x10146aef4:  e0 03 08 aa   mov	x0, x8
0x10146aef8:  fa 2e 1b 94   bl	j__objc_msgSend(x0, "isEqualToString:")
0x10146aefc:  00 01 00 34   cbz	w0, loc_10146af1c ; ⤵ 0x20
0x10146af00:  80 4b 00 b0   adrp	x0, 0x101ddb000
0x10146af04:  00 18 01 91   add	x0, x0, #0x46 ; "FindMy"
0x10146af08:  81 4b 00 b0   adrp	x1, 0x101ddb000
0x10146af0c:  21 34 01 91   add	x1, x1, #0x4d ; "TravelingPenguin"
0x10146af10:  ac a8 1a 94   bl	j___os_feature_enabled_impl
0x10146af14:  08 00 00 52   eor	w8, w0, #0x1
0x10146af18:  02 00 00 14   b	loc_10146af20 ; ⤵ 0x8
0x10146af1c:  ; loc_10146af1c
0x10146af1c:  08 00 80 52   mov	w8, #0
0x10146af20:  ; loc_10146af20
0x10146af20:  68 a6 01 39   strb	w8, [x19, #0x69]
0x10146af24:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10146af28:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10146af2c:  ff 0f 5f d6   retab

-[CLDurianDeviceManager checkIfAllDevicesLastRecentlyDisconnected]:
0x10146af30:  7f 23 03 d5   pacibsp
0x10146af34:  ff 83 04 d1   sub	sp, sp, #0x120
0x10146af38:  e9 23 0d 6d   stp	d9, d8, [sp, #0xd0]
0x10146af3c:  fc 6f 0e a9   stp	x28, x27, [sp, #0xe0]
0x10146af40:  f6 57 0f a9   stp	x22, x21, [sp, #0xf0]
0x10146af44:  f4 4f 10 a9   stp	x20, x19, [sp, #0x100]
0x10146af48:  fd 7b 11 a9   stp	fp, lr, [sp, #0x110]
0x10146af4c:  fd 43 04 91   add	fp, sp, #0x110
0x10146af50:  48 79 00 90   adrp	x8, 0x102392000
0x10146af54:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10146af58:  08 01 40 f9   ldr	x8, [x8]
0x10146af5c:  a8 83 1b f8   stur	x8, [fp, #-0x48]
0x10146af60:  00 e4 00 6f   movi	v0.2d, #0
0x10146af64:  e0 03 00 ad   stp	q0, q0, [sp]
0x10146af68:  e0 03 01 ad   stp	q0, q0, [sp, #0x20]
0x10146af6c:  00 5c 40 f9   ldr	x0, [x0, #0xb8]
0x10146af70:  b4 47 1b 94   bl	j__objc_msgSend(x0, "objectEnumerator")
0x10146af74:  f3 03 00 aa   mov	x19, x0
0x10146af78:  e2 03 00 91   mov	x2, sp
0x10146af7c:  e3 23 01 91   add	x3, sp, #0x48
0x10146af80:  04 02 80 52   mov	w4, #0x10
0x10146af84:  df d9 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10146af88:  80 03 00 b4   cbz	x0, loc_10146aff8 ; ⤵ 0x70
0x10146af8c:  f4 03 00 aa   mov	x20, x0
0x10146af90:  e8 0b 40 f9   ldr	x8, [sp, #0x10]
0x10146af94:  15 01 40 f9   ldr	x21, [x8]
0x10146af98:  e8 39 00 b0   adrp	x8, 0x101ba7000
0x10146af9c:  08 51 46 fd   ldr	d8, [x8, #0xca0]
0x10146afa0:  ; loc_10146afa0
0x10146afa0:  16 00 80 d2   mov	x22, #0
0x10146afa4:  ; loc_10146afa4
0x10146afa4:  e8 0b 40 f9   ldr	x8, [sp, #0x10]
0x10146afa8:  08 01 40 f9   ldr	x8, [x8]
0x10146afac:  1f 01 15 eb   cmp	x8, x21
0x10146afb0:  60 00 00 54   b.eq	loc_10146afbc ; ⤵ 0xc
0x10146afb4:  e0 03 13 aa   mov	x0, x19
0x10146afb8:  d2 ab 1a 94   bl	j__objc_enumerationMutation
0x10146afbc:  ; loc_10146afbc
0x10146afbc:  e8 07 40 f9   ldr	x8, [sp, #0x8]
0x10146afc0:  00 79 76 f8   ldr	x0, [x8, x22, lsl #0x3]
0x10146afc4:  0f 6f 1b 94   bl	j__objc_msgSend(x0, "secondsSinceLastDisconnection")
0x10146afc8:  00 20 68 1e   fcmp	d0, d8
0x10146afcc:  ac 01 00 54   b.gt	loc_10146b000 ; ⤵ 0x34
0x10146afd0:  d6 06 00 91   add	x22, x22, #0x1
0x10146afd4:  9f 02 16 eb   cmp	x20, x22
0x10146afd8:  61 fe ff 54   b.ne	loc_10146afa4 ; ⤴ -0x34
0x10146afdc:  e2 03 00 91   mov	x2, sp
0x10146afe0:  e3 23 01 91   add	x3, sp, #0x48
0x10146afe4:  e0 03 13 aa   mov	x0, x19
0x10146afe8:  04 02 80 52   mov	w4, #0x10
0x10146afec:  c5 d9 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10146aff0:  f4 03 00 aa   mov	x20, x0
0x10146aff4:  60 fd ff b5   cbnz	x0, loc_10146afa0 ; ⤴ -0x54
0x10146aff8:  ; loc_10146aff8
0x10146aff8:  20 00 80 52   mov	w0, #0x1
0x10146affc:  02 00 00 14   b	loc_10146b004 ; ⤵ 0x8
0x10146b000:  ; loc_10146b000
0x10146b000:  00 00 80 52   mov	w0, #0
0x10146b004:  ; loc_10146b004
0x10146b004:  a8 83 5b f8   ldur	x8, [fp, #-0x48]
0x10146b008:  29 79 00 f0   adrp	x9, 0x102392000
0x10146b00c:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10146b010:  29 01 40 f9   ldr	x9, [x9]
0x10146b014:  3f 01 08 eb   cmp	x9, x8
0x10146b018:  01 01 00 54   b.ne	loc_10146b038 ; ⤵ 0x20
0x10146b01c:  fd 7b 51 a9   ldp	fp, lr, [sp, #0x110]
0x10146b020:  f4 4f 50 a9   ldp	x20, x19, [sp, #0x100]
0x10146b024:  f6 57 4f a9   ldp	x22, x21, [sp, #0xf0]
0x10146b028:  fc 6f 4e a9   ldp	x28, x27, [sp, #0xe0]
0x10146b02c:  e9 23 4d 6d   ldp	d9, d8, [sp, #0xd0]
0x10146b030:  ff 83 04 91   add	sp, sp, #0x120
0x10146b034:  ff 0f 5f d6   retab
0x10146b038:  ; loc_10146b038
0x10146b038:  42 a8 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager checkIfAnyDevicesRecentlyObserved]:
0x10146b03c:  7f 23 03 d5   pacibsp
0x10146b040:  ff 83 04 d1   sub	sp, sp, #0x120
0x10146b044:  e9 23 0d 6d   stp	d9, d8, [sp, #0xd0]

