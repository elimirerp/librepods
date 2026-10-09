
-[CLDurianService device:didCompleteTask:withCompletionCommand:]:
0x10141f8a4:  7f 23 03 d5   pacibsp
0x10141f8a8:  e9 23 b9 6d   stp	d9, d8, [sp, #-0x70]!
0x10141f8ac:  fc 6f 01 a9   stp	x28, x27, [sp, #0x10]
0x10141f8b0:  fa 67 02 a9   stp	x26, x25, [sp, #0x20]
0x10141f8b4:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x10141f8b8:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10141f8bc:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10141f8c0:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10141f8c4:  fd 83 01 91   add	fp, sp, #0x60
0x10141f8c8:  ff 83 12 d1   sub	sp, sp, #0x4a0
0x10141f8cc:  88 7b 00 f0   adrp	x8, 0x102392000
0x10141f8d0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10141f8d4:  08 01 40 f9   ldr	x8, [x8]
0x10141f8d8:  a8 83 18 f8   stur	x8, [fp, #-0x78]
0x10141f8dc:  a3 31 00 b4   cbz	x3, loc_10141ff10 ; ⤵ 0x634
0x10141f8e0:  f7 03 04 aa   mov	x23, x4
0x10141f8e4:  f4 03 03 aa   mov	x20, x3
0x10141f8e8:  f3 03 02 aa   mov	x19, x2
0x10141f8ec:  f5 03 00 aa   mov	x21, x0
0x10141f8f0:  16 14 40 f9   ldr	x22, [x0, #0x28]
0x10141f8f4:  e0 03 03 aa   mov	x0, x3
0x10141f8f8:  32 fa 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141f8fc:  e2 03 00 aa   mov	x2, x0
0x10141f900:  e0 03 16 aa   mov	x0, x22
0x10141f904:  5f 75 1c 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10141f908:  e0 07 00 f9   str	x0, [sp, #0x8]
0x10141f90c:  e0 03 14 aa   mov	x0, x20
0x10141f910:  7c 01 1c 94   bl	j__objc_msgSend(x0, "complete")
0x10141f914:  e0 03 14 aa   mov	x0, x20
0x10141f918:  0a 01 1c 94   bl	j__objc_msgSend(x0, "command")
0x10141f91c:  71 7c 1c 94   bl	j__objc_msgSend(x0, "opcode")
0x10141f920:  f9 03 00 aa   mov	x25, x0
0x10141f924:  e0 03 17 aa   mov	x0, x23
0x10141f928:  9e 7e 1c 94   bl	j__objc_msgSend(x0, "payload")
0x10141f92c:  c5 f6 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x10141f930:  f8 03 00 aa   mov	x24, x0
0x10141f934:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141f938:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10141f93c:  1f 05 00 b1   cmn	x8, #0x1
0x10141f940:  e1 54 01 54   b.ne	loc_1014223dc ; ⤵ 0x2a9c
0x10141f944:  b6 83 03 d1   sub	x22, fp, #0xe0
0x10141f948:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141f94c:  1a 3d 46 f9   ldr	x26, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10141f950:  e0 03 1a aa   mov	x0, x26
0x10141f954:  01 00 80 52   mov	w1, #0
0x10141f958:  66 da 1b 94   bl	j__os_log_type_enabled
0x10141f95c:  00 08 00 34   cbz	w0, loc_10141fa5c ; ⤵ 0x100
0x10141f960:  e0 03 13 aa   mov	x0, x19
0x10141f964:  17 fa 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141f968:  2c e4 01 94   bl	0x101498a18
0x10141f96c:  fb 03 00 aa   mov	x27, x0
0x10141f970:  e0 03 14 aa   mov	x0, x20
0x10141f974:  93 ef 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x10141f978:  fc 03 00 aa   mov	x28, x0
0x10141f97c:  e0 03 14 aa   mov	x0, x20
0x10141f980:  90 ef 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x10141f984:  e2 03 00 aa   mov	x2, x0
0x10141f988:  e0 03 13 aa   mov	x0, x19
0x10141f98c:  6d 38 1c 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x10141f990:  f6 03 00 aa   mov	x22, x0
0x10141f994:  e0 03 14 aa   mov	x0, x20
0x10141f998:  62 89 1c 94   bl	j__objc_msgSend(x0, "queueDuration")
0x10141f99c:  08 1c a0 4e   mov	v8.16b, v0.16b
0x10141f9a0:  e0 03 14 aa   mov	x0, x20
0x10141f9a4:  87 21 1c 94   bl	j__objc_msgSend(x0, "executionDuration")
0x10141f9a8:  09 1c a0 4e   mov	v9.16b, v0.16b
0x10141f9ac:  e0 03 17 aa   mov	x0, x23
0x10141f9b0:  7c 7e 1c 94   bl	j__objc_msgSend(x0, "payload")
0x10141f9b4:  a8 3b 00 b0   adrp	x8, 0x101b94000
0x10141f9b8:  00 15 41 fd   ldr	d0, [x8, #0x228]
0x10141f9bc:  e8 07 40 f9   ldr	x8, [sp, #0x8]
0x10141f9c0:  1f 01 00 f1   cmp	x8, #0
0x10141f9c4:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x10141f9c8:  e8 07 9f 1a   cset	w8, ne
0x10141f9cc:  bf 43 12 b8   stur	wzr, [fp, #-0xdc]
0x10141f9d0:  49 04 81 52   mov	w9, #0x822
0x10141f9d4:  a9 83 12 78   sturh	w9, [fp, #-0xd8]
0x10141f9d8:  69 54 00 f0   adrp	x9, 0x101eae000
0x10141f9dc:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10141f9e0:  ac 83 03 d1   sub	x12, fp, #0xe0
0x10141f9e4:  89 a1 00 f8   stur	x9, [x12, #0xa]
0x10141f9e8:  29 08 81 52   mov	w9, #0x841
0x10141f9ec:  a9 23 13 78   sturh	w9, [fp, #-0xce]
0x10141f9f0:  9b 41 01 f8   stur	x27, [x12, #0x14]
0x10141f9f4:  2a 80 80 52   mov	w10, #0x401
0x10141f9f8:  aa c3 13 78   sturh	w10, [fp, #-0xc4]
0x10141f9fc:  9c e1 01 b8   stur	w28, [x12, #0x1e]
0x10141fa00:  a9 23 14 78   sturh	w9, [fp, #-0xbe]
0x10141fa04:  96 41 02 f8   stur	x22, [x12, #0x24]
0x10141fa08:  4b 00 81 52   mov	w11, #0x802
0x10141fa0c:  ab c3 14 78   sturh	w11, [fp, #-0xb4]
0x10141fa10:  88 e1 02 fc   stur	d8, [x12, #0x2e]
0x10141fa14:  ab 63 15 78   sturh	w11, [fp, #-0xaa]
0x10141fa18:  a9 83 15 fc   stur	d9, [fp, #-0xa8]
0x10141fa1c:  a9 03 16 78   sturh	w9, [fp, #-0xa0]
0x10141fa20:  97 21 04 f8   stur	x23, [x12, #0x42]
0x10141fa24:  a9 a3 16 78   sturh	w9, [fp, #-0x96]
0x10141fa28:  80 c1 04 f8   stur	x0, [x12, #0x4c]
0x10141fa2c:  aa 43 17 78   sturh	w10, [fp, #-0x8c]
0x10141fa30:  b6 83 03 d1   sub	x22, fp, #0xe0
0x10141fa34:  88 61 05 b8   stur	w8, [x12, #0x56]
0x10141fa38:  00 5f ff b0   adrp	x0, 0x100000000
0x10141fa3c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10141fa40:  23 72 00 b0   adrp	x3, 0x102264000
0x10141fa44:  63 84 0c 91   add	x3, x3, #0x321 ; "{\"msg%{public}.0s\":\"#durian didCompleteTask\", \"item\":%{private, location:escape_only}@, \"opcode\":%{private}d, \"task\":%{private, location:escape_only}@, \"queueDuration\":\"%{public}.5f\", \"executionDurati"...
0x10141fa48:  a4 83 03 d1   sub	x4, fp, #0xe0
0x10141fa4c:  e1 03 1a aa   mov	x1, x26
0x10141fa50:  02 00 80 52   mov	w2, #0
0x10141fa54:  45 0b 80 52   mov	w5, #0x5a
0x10141fa58:  e6 d5 1b 94   bl	j___os_log_impl
0x10141fa5c:  ; loc_10141fa5c
0x10141fa5c:  e0 03 13 aa   mov	x0, x19
0x10141fa60:  f8 7e 1c 94   bl	j__objc_msgSend(x0, "pendingDisconnect")
0x10141fa64:  c0 04 00 34   cbz	w0, loc_10141fafc ; ⤵ 0x98
0x10141fa68:  e0 03 13 aa   mov	x0, x19
0x10141fa6c:  35 61 1c 94   bl	j__objc_msgSend(x0, "isTaskQueueEmpty")
0x10141fa70:  60 04 00 34   cbz	w0, loc_10141fafc ; ⤵ 0x8c
0x10141fa74:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141fa78:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10141fa7c:  1f 05 00 b1   cmn	x8, #0x1
0x10141fa80:  a1 be 01 54   b.ne	loc_101423254 ; ⤵ 0x37d4
0x10141fa84:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141fa88:  1a 3d 46 f9   ldr	x26, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10141fa8c:  e0 03 1a aa   mov	x0, x26
0x10141fa90:  41 00 80 52   mov	w1, #0x2
0x10141fa94:  17 da 1b 94   bl	j__os_log_type_enabled
0x10141fa98:  60 02 00 34   cbz	w0, loc_10141fae4 ; ⤵ 0x4c
0x10141fa9c:  a8 46 00 b0   adrp	x8, 0x101cf4000
0x10141faa0:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10141faa4:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x10141faa8:  bf 43 12 b8   stur	wzr, [fp, #-0xdc]
0x10141faac:  48 04 81 52   mov	w8, #0x822
0x10141fab0:  a8 83 12 78   sturh	w8, [fp, #-0xd8]
0x10141fab4:  68 54 00 f0   adrp	x8, 0x101eae000
0x10141fab8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10141fabc:  c8 a2 00 f8   stur	x8, [x22, #0xa]
0x10141fac0:  00 5f ff b0   adrp	x0, 0x100000000
0x10141fac4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10141fac8:  23 72 00 b0   adrp	x3, 0x102264000
0x10141facc:  63 e0 11 91   add	x3, x3, #0x478 ; "{\"msg%{public}.0s\":\"#durian #disconnectbackstop device pending disconnection completed tasks, scheduling for disconnection\"}"
0x10141fad0:  a4 83 03 d1   sub	x4, fp, #0xe0
0x10141fad4:  e1 03 1a aa   mov	x1, x26
0x10141fad8:  42 00 80 52   mov	w2, #0x2
0x10141fadc:  45 02 80 52   mov	w5, #0x12
0x10141fae0:  c4 d5 1b 94   bl	j___os_log_impl
0x10141fae4:  ; loc_10141fae4
0x10141fae4:  b6 0a 40 f9   ldr	x22, [x21, #0x10]
0x10141fae8:  e0 03 13 aa   mov	x0, x19
0x10141faec:  b5 f9 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141faf0:  e2 03 00 aa   mov	x2, x0
0x10141faf4:  e0 03 16 aa   mov	x0, x22
0x10141faf8:  3a 9b 1c 94   bl	j__objc_msgSend(x0, "scheduleDisconnectionOnMissingBeaconWithUUID:")
0x10141fafc:  ; loc_10141fafc
0x10141fafc:  3f 43 03 71   cmp	w25, #0xd0
0x10141fb00:  01 01 00 54   b.ne	loc_10141fb20 ; ⤵ 0x20
0x10141fb04:  08 88 00 90   adrp	x8, 0x10251f000
0x10141fb08:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x10141fb0c:  1d d9 1b 94   bl	j__objc_opt_class
0x10141fb10:  e1 03 00 aa   mov	x1, x0
0x10141fb14:  e0 03 14 aa   mov	x0, x20
0x10141fb18:  1e d9 1b 94   bl	j__objc_opt_isKindOfClass
0x10141fb1c:  80 3a 00 36   tbz	w0, #0, loc_10142026c ; ⤵ 0x750
0x10141fb20:  ; loc_10141fb20
0x10141fb20:  e0 03 15 aa   mov	x0, x21
0x10141fb24:  e2 03 19 aa   mov	x2, x25
0x10141fb28:  ee 5e 1c 94   bl	j__objc_msgSend(x0, "isPoshTask:")
0x10141fb2c:  00 24 00 34   cbz	w0, loc_10141ffac ; ⤵ 0x480
0x10141fb30:  e0 03 13 aa   mov	x0, x19
0x10141fb34:  db 5e 1c 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x10141fb38:  a0 23 00 34   cbz	w0, loc_10141ffac ; ⤵ 0x474
0x10141fb3c:  e0 03 15 aa   mov	x0, x21
0x10141fb40:  e2 03 14 aa   mov	x2, x20
0x10141fb44:  e3 03 17 aa   mov	x3, x23
0x10141fb48:  e4 03 13 aa   mov	x4, x19
0x10141fb4c:  05 3a 1c 94   bl	j__objc_msgSend(x0, "handleCompletionForPoshTask:withCompletionCommand:onDevice:")
0x10141fb50:  ; loc_10141fb50
0x10141fb50:  e0 03 13 aa   mov	x0, x19
0x10141fb54:  3b 5c 1c 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x10141fb58:  60 0c 00 34   cbz	w0, loc_10141fce4 ; ⤵ 0x18c
0x10141fb5c:  08 88 00 90   adrp	x8, 0x10251f000
0x10141fb60:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x10141fb64:  07 d9 1b 94   bl	j__objc_opt_class
0x10141fb68:  e1 03 00 aa   mov	x1, x0
0x10141fb6c:  e0 03 14 aa   mov	x0, x20
0x10141fb70:  08 d9 1b 94   bl	j__objc_opt_isKindOfClass
0x10141fb74:  80 0b 00 36   tbz	w0, #0, loc_10141fce4 ; ⤵ 0x170
0x10141fb78:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141fb7c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10141fb80:  1f 05 00 b1   cmn	x8, #0x1
0x10141fb84:  41 b7 01 54   b.ne	loc_10142326c ; ⤵ 0x36e8
0x10141fb88:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141fb8c:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10141fb90:  e0 03 16 aa   mov	x0, x22
0x10141fb94:  01 00 80 52   mov	w1, #0
0x10141fb98:  d6 d9 1b 94   bl	j__os_log_type_enabled
0x10141fb9c:  c0 04 00 34   cbz	w0, loc_10141fc34 ; ⤵ 0x98
0x10141fba0:  e0 03 13 aa   mov	x0, x19
0x10141fba4:  87 f9 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141fba8:  9c e3 01 94   bl	0x101498a18
0x10141fbac:  f7 03 00 aa   mov	x23, x0
0x10141fbb0:  e0 03 14 aa   mov	x0, x20
0x10141fbb4:  43 41 1c 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x10141fbb8:  f8 03 00 aa   mov	x24, x0
0x10141fbbc:  a0 1a 40 f9   ldr	x0, [x21, #0x30]
0x10141fbc0:  c8 06 1c 94   bl	j__objc_msgSend(x0, "count")
0x10141fbc4:  a8 46 00 b0   adrp	x8, 0x101cf4000
0x10141fbc8:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10141fbcc:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x10141fbd0:  bf 43 12 b8   stur	wzr, [fp, #-0xdc]
0x10141fbd4:  48 04 81 52   mov	w8, #0x822
0x10141fbd8:  a8 83 12 78   sturh	w8, [fp, #-0xd8]
0x10141fbdc:  68 54 00 f0   adrp	x8, 0x101eae000
0x10141fbe0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10141fbe4:  a9 83 03 d1   sub	x9, fp, #0xe0
0x10141fbe8:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x10141fbec:  28 08 81 52   mov	w8, #0x841
0x10141fbf0:  a8 23 13 78   sturh	w8, [fp, #-0xce]
0x10141fbf4:  37 41 01 f8   stur	x23, [x9, #0x14]
0x10141fbf8:  28 80 80 52   mov	w8, #0x401
0x10141fbfc:  a8 c3 13 78   sturh	w8, [fp, #-0xc4]
0x10141fc00:  38 e1 01 b8   stur	w24, [x9, #0x1e]
0x10141fc04:  48 80 80 52   mov	w8, #0x402
0x10141fc08:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x10141fc0c:  a0 43 14 b8   stur	w0, [fp, #-0xbc]
0x10141fc10:  00 5f ff b0   adrp	x0, 0x100000000
0x10141fc14:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10141fc18:  23 72 00 d0   adrp	x3, 0x102265000
0x10141fc1c:  63 50 32 91   add	x3, x3, #0xc94 ; "{\"msg%{public}.0s\":\"#durian #hawkeye didCompleteTask\", \"item\":%{private, location:escape_only}@, \"opcode\":%{private}d, \"clients\":%{public}d}"
0x10141fc20:  a4 83 03 d1   sub	x4, fp, #0xe0
0x10141fc24:  e1 03 16 aa   mov	x1, x22
0x10141fc28:  02 00 80 52   mov	w2, #0
0x10141fc2c:  05 05 80 52   mov	w5, #0x28
0x10141fc30:  70 d5 1b 94   bl	j___os_log_impl
0x10141fc34:  ; loc_10141fc34
0x10141fc34:  00 e4 00 6f   movi	v0.2d, #0
0x10141fc38:  e0 83 03 ad   stp	q0, q0, [sp, #0x70]
0x10141fc3c:  e0 83 02 ad   stp	q0, q0, [sp, #0x50]
0x10141fc40:  b6 1a 40 f9   ldr	x22, [x21, #0x30]
0x10141fc44:  e2 43 01 91   add	x2, sp, #0x50
0x10141fc48:  e3 83 07 91   add	x3, sp, #0x1e0
0x10141fc4c:  e0 03 16 aa   mov	x0, x22
0x10141fc50:  04 02 80 52   mov	w4, #0x10
0x10141fc54:  ab 06 1c 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10141fc58:  60 04 00 b4   cbz	x0, loc_10141fce4 ; ⤵ 0x8c
0x10141fc5c:  f7 03 00 aa   mov	x23, x0
0x10141fc60:  e8 33 40 f9   ldr	x8, [sp, #0x60]
0x10141fc64:  1b 01 40 f9   ldr	x27, [x8]
0x10141fc68:  ; loc_10141fc68
0x10141fc68:  1c 00 80 d2   mov	x28, #0
0x10141fc6c:  ; loc_10141fc6c
0x10141fc6c:  e8 33 40 f9   ldr	x8, [sp, #0x60]
0x10141fc70:  08 01 40 f9   ldr	x8, [x8]
0x10141fc74:  1f 01 1b eb   cmp	x8, x27
0x10141fc78:  60 00 00 54   b.eq	loc_10141fc84 ; ⤵ 0xc
0x10141fc7c:  e0 03 16 aa   mov	x0, x22
0x10141fc80:  a0 d8 1b 94   bl	j__objc_enumerationMutation
0x10141fc84:  ; loc_10141fc84
0x10141fc84:  e8 2f 40 f9   ldr	x8, [sp, #0x58]
0x10141fc88:  18 79 7c f8   ldr	x24, [x8, x28, lsl #0x3]
0x10141fc8c:  b9 9a 40 f9   ldr	x25, [x21, #0x130]
0x10141fc90:  e0 03 14 aa   mov	x0, x20
0x10141fc94:  0b 41 1c 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x10141fc98:  fa 03 00 aa   mov	x26, x0
0x10141fc9c:  e0 03 13 aa   mov	x0, x19
0x10141fca0:  48 f9 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141fca4:  e3 03 00 aa   mov	x3, x0
0x10141fca8:  e0 03 19 aa   mov	x0, x25
0x10141fcac:  e2 03 1a aa   mov	x2, x26
0x10141fcb0:  04 00 80 d2   mov	x4, #0
0x10141fcb4:  e5 03 18 aa   mov	x5, x24
0x10141fcb8:  ca 12 1c 94   bl	j__objc_msgSend(x0, "didCompleteHawkeyeTaskWithOpcode:fromDevice:withError:forClient:")
0x10141fcbc:  9c 07 00 91   add	x28, x28, #0x1
0x10141fcc0:  ff 02 1c eb   cmp	x23, x28
0x10141fcc4:  41 fd ff 54   b.ne	loc_10141fc6c ; ⤴ -0x58
0x10141fcc8:  e2 43 01 91   add	x2, sp, #0x50
0x10141fccc:  e3 83 07 91   add	x3, sp, #0x1e0
0x10141fcd0:  e0 03 16 aa   mov	x0, x22
0x10141fcd4:  04 02 80 52   mov	w4, #0x10
0x10141fcd8:  8a 06 1c 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10141fcdc:  f7 03 00 aa   mov	x23, x0
0x10141fce0:  40 fc ff b5   cbnz	x0, loc_10141fc68 ; ⤴ -0x78
0x10141fce4:  ; loc_10141fce4
0x10141fce4:  e0 03 13 aa   mov	x0, x19
0x10141fce8:  ce 58 1c 94   bl	j__objc_msgSend(x0, "isAirTag")
0x10141fcec:  20 0e 00 34   cbz	w0, loc_10141feb0 ; ⤵ 0x1c4
0x10141fcf0:  08 88 00 90   adrp	x8, 0x10251f000
0x10141fcf4:  00 61 2d 91   add	x0, x8, #0xb58 ; CLDurianGATTWriteTask
0x10141fcf8:  a2 d8 1b 94   bl	j__objc_opt_class
0x10141fcfc:  e1 03 00 aa   mov	x1, x0
0x10141fd00:  e0 03 14 aa   mov	x0, x20
0x10141fd04:  a3 d8 1b 94   bl	j__objc_opt_isKindOfClass
0x10141fd08:  40 0d 00 36   tbz	w0, #0, loc_10141feb0 ; ⤵ 0x1a8
0x10141fd0c:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141fd10:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10141fd14:  1f 05 00 b1   cmn	x8, #0x1
0x10141fd18:  e1 aa 01 54   b.ne	loc_101423274 ; ⤵ 0x355c
0x10141fd1c:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141fd20:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10141fd24:  e0 03 16 aa   mov	x0, x22
0x10141fd28:  01 00 80 52   mov	w1, #0
0x10141fd2c:  71 d9 1b 94   bl	j__os_log_type_enabled
0x10141fd30:  e0 04 00 34   cbz	w0, loc_10141fdcc ; ⤵ 0x9c
0x10141fd34:  e0 03 13 aa   mov	x0, x19
0x10141fd38:  22 f9 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141fd3c:  37 e3 01 94   bl	0x101498a18
0x10141fd40:  f7 03 00 aa   mov	x23, x0
0x10141fd44:  e0 03 14 aa   mov	x0, x20
0x10141fd48:  fe ff 1b 94   bl	j__objc_msgSend(x0, "command")
0x10141fd4c:  65 7b 1c 94   bl	j__objc_msgSend(x0, "opcode")
0x10141fd50:  f8 03 00 aa   mov	x24, x0
0x10141fd54:  a0 1a 40 f9   ldr	x0, [x21, #0x30]
0x10141fd58:  62 06 1c 94   bl	j__objc_msgSend(x0, "count")
0x10141fd5c:  a8 46 00 b0   adrp	x8, 0x101cf4000
0x10141fd60:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10141fd64:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x10141fd68:  bf 43 12 b8   stur	wzr, [fp, #-0xdc]
0x10141fd6c:  48 04 81 52   mov	w8, #0x822
0x10141fd70:  a8 83 12 78   sturh	w8, [fp, #-0xd8]
0x10141fd74:  68 54 00 f0   adrp	x8, 0x101eae000
0x10141fd78:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10141fd7c:  a9 83 03 d1   sub	x9, fp, #0xe0
0x10141fd80:  28 a1 00 f8   stur	x8, [x9, #0xa]
0x10141fd84:  28 08 81 52   mov	w8, #0x841
0x10141fd88:  a8 23 13 78   sturh	w8, [fp, #-0xce]
0x10141fd8c:  37 41 01 f8   stur	x23, [x9, #0x14]
0x10141fd90:  28 80 80 52   mov	w8, #0x401
0x10141fd94:  a8 c3 13 78   sturh	w8, [fp, #-0xc4]
0x10141fd98:  38 e1 01 b8   stur	w24, [x9, #0x1e]
0x10141fd9c:  48 80 80 52   mov	w8, #0x402
0x10141fda0:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x10141fda4:  a0 43 14 b8   stur	w0, [fp, #-0xbc]
0x10141fda8:  00 5f ff b0   adrp	x0, 0x100000000
0x10141fdac:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10141fdb0:  23 72 00 d0   adrp	x3, 0x102265000
0x10141fdb4:  63 84 34 91   add	x3, x3, #0xd21 ; "{\"msg%{public}.0s\":\"#durian #ut didCompleteTask\", \"item\":%{private, location:escape_only}@, \"opcode\":%{private}d, \"clients\":%{public}d}"
0x10141fdb8:  a4 83 03 d1   sub	x4, fp, #0xe0
0x10141fdbc:  e1 03 16 aa   mov	x1, x22
0x10141fdc0:  02 00 80 52   mov	w2, #0
0x10141fdc4:  05 05 80 52   mov	w5, #0x28
0x10141fdc8:  0a d5 1b 94   bl	j___os_log_impl
0x10141fdcc:  ; loc_10141fdcc
0x10141fdcc:  00 e4 00 6f   movi	v0.2d, #0
0x10141fdd0:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x10141fdd4:  e0 83 00 ad   stp	q0, q0, [sp, #0x10]
0x10141fdd8:  b6 1a 40 f9   ldr	x22, [x21, #0x30]
0x10141fddc:  e2 43 00 91   add	x2, sp, #0x10
0x10141fde0:  e3 83 05 91   add	x3, sp, #0x160
0x10141fde4:  e0 03 16 aa   mov	x0, x22
0x10141fde8:  04 02 80 52   mov	w4, #0x10
0x10141fdec:  45 06 1c 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10141fdf0:  80 04 00 b4   cbz	x0, loc_10141fe80 ; ⤵ 0x90
0x10141fdf4:  f7 03 00 aa   mov	x23, x0
0x10141fdf8:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10141fdfc:  1b 01 40 f9   ldr	x27, [x8]
0x10141fe00:  ; loc_10141fe00
0x10141fe00:  1c 00 80 d2   mov	x28, #0
0x10141fe04:  ; loc_10141fe04
0x10141fe04:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10141fe08:  08 01 40 f9   ldr	x8, [x8]
0x10141fe0c:  1f 01 1b eb   cmp	x8, x27
0x10141fe10:  60 00 00 54   b.eq	loc_10141fe1c ; ⤵ 0xc
0x10141fe14:  e0 03 16 aa   mov	x0, x22
0x10141fe18:  3a d8 1b 94   bl	j__objc_enumerationMutation
0x10141fe1c:  ; loc_10141fe1c
0x10141fe1c:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x10141fe20:  18 79 7c f8   ldr	x24, [x8, x28, lsl #0x3]
0x10141fe24:  b9 9a 40 f9   ldr	x25, [x21, #0x130]
0x10141fe28:  e0 03 14 aa   mov	x0, x20
0x10141fe2c:  c5 ff 1b 94   bl	j__objc_msgSend(x0, "command")
0x10141fe30:  2c 7b 1c 94   bl	j__objc_msgSend(x0, "opcode")
0x10141fe34:  fa 03 00 aa   mov	x26, x0
0x10141fe38:  e0 03 13 aa   mov	x0, x19
0x10141fe3c:  e1 f8 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141fe40:  e3 03 00 aa   mov	x3, x0
0x10141fe44:  e0 03 19 aa   mov	x0, x25
0x10141fe48:  e2 03 1a aa   mov	x2, x26
0x10141fe4c:  04 00 80 d2   mov	x4, #0
0x10141fe50:  e5 03 18 aa   mov	x5, x24
0x10141fe54:  63 12 1c 94   bl	j__objc_msgSend(x0, "didCompleteHawkeyeTaskWithOpcode:fromDevice:withError:forClient:")
0x10141fe58:  9c 07 00 91   add	x28, x28, #0x1
0x10141fe5c:  ff 02 1c eb   cmp	x23, x28
0x10141fe60:  21 fd ff 54   b.ne	loc_10141fe04 ; ⤴ -0x5c
0x10141fe64:  e2 43 00 91   add	x2, sp, #0x10
0x10141fe68:  e3 83 05 91   add	x3, sp, #0x160
0x10141fe6c:  e0 03 16 aa   mov	x0, x22
0x10141fe70:  04 02 80 52   mov	w4, #0x10
0x10141fe74:  23 06 1c 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10141fe78:  f7 03 00 aa   mov	x23, x0
0x10141fe7c:  20 fc ff b5   cbnz	x0, loc_10141fe00 ; ⤴ -0x7c
0x10141fe80:  ; loc_10141fe80
0x10141fe80:  40 54 00 b0   adrp	x0, 0x101ea8000
0x10141fe84:  00 dc 10 91   add	x0, x0, #0x437 ; "AirTag"
0x10141fe88:  41 54 00 b0   adrp	x1, 0x101ea8000
0x10141fe8c:  21 f8 10 91   add	x1, x1, #0x43e ; "Distribution"
0x10141fe90:  cc d4 1b 94   bl	j___os_feature_enabled_impl
0x10141fe94:  e0 00 00 34   cbz	w0, loc_10141feb0 ; ⤵ 0x1c
0x10141fe98:  b6 96 40 f9   ldr	x22, [x21, #0x128]
0x10141fe9c:  e0 03 13 aa   mov	x0, x19
0x10141fea0:  c8 f8 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141fea4:  e2 03 00 aa   mov	x2, x0
0x10141fea8:  e0 03 16 aa   mov	x0, x22
0x10141feac:  85 12 1c 94   bl	j__objc_msgSend(x0, "didCompleteTaskWithDeviceUuid:")
0x10141feb0:  ; loc_10141feb0
0x10141feb0:  b6 16 40 f9   ldr	x22, [x21, #0x28]
0x10141feb4:  e0 03 14 aa   mov	x0, x20
0x10141feb8:  c2 f8 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141febc:  e2 03 00 aa   mov	x2, x0
0x10141fec0:  e0 03 16 aa   mov	x0, x22
0x10141fec4:  a7 90 1c 94   bl	j__objc_msgSend(x0, "removeObjectForKey:")
0x10141fec8:  b6 46 40 f9   ldr	x22, [x21, #0x88]
0x10141fecc:  e0 03 14 aa   mov	x0, x20
0x10141fed0:  bc f8 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141fed4:  e2 03 00 aa   mov	x2, x0
0x10141fed8:  e0 03 16 aa   mov	x0, x22
0x10141fedc:  a1 90 1c 94   bl	j__objc_msgSend(x0, "removeObjectForKey:")
0x10141fee0:  a0 0a 40 f9   ldr	x0, [x21, #0x10]
0x10141fee4:  63 83 00 f0   adrp	x3, 0x10248e000
0x10141fee8:  63 40 32 91   add	x3, x3, #0xc90 ; "taskdone"
0x10141feec:  e2 03 13 aa   mov	x2, x19
0x10141fef0:  34 9a 1c 94   bl	j__objc_msgSend(x0, "scheduleDebounceForDevice:reason:")
0x10141fef4:  a0 36 40 f9   ldr	x0, [x21, #0x68]
0x10141fef8:  e2 03 13 aa   mov	x2, x19
0x10141fefc:  e3 03 14 aa   mov	x3, x20
0x10141ff00:  24 00 80 52   mov	w4, #0x1
0x10141ff04:  05 00 80 92   mov	x5, #0xffffffffffffffff
0x10141ff08:  d6 e2 1c 94   bl	j__objc_msgSend(x0, "submitTaskMetricsForDevice:task:completed:errorCode:")
0x10141ff0c:  19 00 00 14   b	loc_10141ff70 ; ⤵ 0x64
0x10141ff10:  ; loc_10141ff10
0x10141ff10:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141ff14:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10141ff18:  1f 05 00 b1   cmn	x8, #0x1
0x10141ff1c:  81 7e 01 54   b.ne	loc_101422eec ; ⤵ 0x2fd0
0x10141ff20:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141ff24:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10141ff28:  e0 03 13 aa   mov	x0, x19
0x10141ff2c:  41 00 80 52   mov	w1, #0x2
0x10141ff30:  f0 d8 1b 94   bl	j__os_log_type_enabled
0x10141ff34:  60 01 00 34   cbz	w0, loc_10141ff60 ; ⤵ 0x2c
0x10141ff38:  bf 03 12 78   sturh	wzr, [fp, #-0xe0]
0x10141ff3c:  00 5f ff b0   adrp	x0, 0x100000000
0x10141ff40:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10141ff44:  23 72 00 b0   adrp	x3, 0x102264000
0x10141ff48:  63 f4 0b 91   add	x3, x3, #0x2fd ; "#durian didCompleteTask task is nil"
0x10141ff4c:  a4 83 03 d1   sub	x4, fp, #0xe0
0x10141ff50:  e1 03 13 aa   mov	x1, x19
0x10141ff54:  42 00 80 52   mov	w2, #0x2
0x10141ff58:  45 00 80 52   mov	w5, #0x2
0x10141ff5c:  a5 d4 1b 94   bl	j___os_log_impl
0x10141ff60:  ; loc_10141ff60
0x10141ff60:  40 0f 80 52   mov	w0, #0x7a
0x10141ff64:  41 00 80 52   mov	w1, #0x2
0x10141ff68:  a5 a6 af 97   bl	0x1000099fc
0x10141ff6c:  40 7c 01 35   cbnz	w0, loc_101422ef4 ; ⤵ 0x2f88
0x10141ff70:  ; loc_10141ff70
0x10141ff70:  a8 83 58 f8   ldur	x8, [fp, #-0x78]
0x10141ff74:  89 7b 00 f0   adrp	x9, 0x102392000
0x10141ff78:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10141ff7c:  29 01 40 f9   ldr	x9, [x9]
0x10141ff80:  3f 01 08 eb   cmp	x9, x8
0x10141ff84:  01 9e 01 54   b.ne	loc_101423344 ; ⤵ 0x33c0
0x10141ff88:  ff 83 12 91   add	sp, sp, #0x4a0
0x10141ff8c:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10141ff90:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10141ff94:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10141ff98:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x10141ff9c:  fa 67 42 a9   ldp	x26, x25, [sp, #0x20]
0x10141ffa0:  fc 6f 41 a9   ldp	x28, x27, [sp, #0x10]
0x10141ffa4:  e9 23 c7 6c   ldp	d9, d8, [sp], #0x70
0x10141ffa8:  ff 0f 5f d6   retab
0x10141ffac:  ; loc_10141ffac
0x10141ffac:  3f b7 02 71   cmp	w25, #0xad
0x10141ffb0:  4d 0e 00 54   b.le	loc_101420178 ; ⤵ 0x1c8
0x10141ffb4:  3f 03 20 71   cmp	w25, #0x800
0x10141ffb8:  8c 22 00 54   b.gt	loc_101420408 ; ⤵ 0x450
0x10141ffbc:  30 bb 02 51   sub	w16, w25, #0xae
0x10141ffc0:  1f be 00 71   cmp	w16, #0x2f
0x10141ffc4:  68 dc ff 54   b.hi	loc_10141fb50 ; ⤴ -0x474
0x10141ffc8:  1f be 00 f1   cmp	x16, #0x2f
0x10141ffcc:  10 92 9f 9a   csel	x16, x16, xzr, ls
0x10141ffd0:  b1 7b ff b0   adrp	x17, 0x100394000
0x10141ffd4:  31 c2 34 91   add	x17, x17, #0xd30
0x10141ffd8:  30 7a b0 b8   ldrsw	x16, [x17, x16, lsl #0x2]
0x10141ffdc:  11 00 00 10   adr	x17, 0x10141ffdc
0x10141ffe0:  30 02 10 8b   add	x16, x17, x16
0x10141ffe4:  00 02 1f d6   br	x16
0x10141ffe8:  e0 03 14 aa   mov	x0, x20
0x10141ffec:  7d f8 1b 94   bl	j__objc_msgSend(x0, "characteristicPayload")
0x10141fff0:  f7 03 00 aa   mov	x23, x0
0x10141fff4:  13 f5 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x10141fff8:  f6 03 00 aa   mov	x22, x0
0x10141fffc:  08 8b 00 f0   adrp	x8, 0x102582000
0x101420000:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101420004:  1f 05 00 b1   cmn	x8, #0x1
0x101420008:  a1 94 01 54   b.ne	loc_10142329c ; ⤵ 0x3294
0x10142000c:  08 8b 00 d0   adrp	x8, 0x102582000
0x101420010:  18 3d 46 f9   ldr	x24, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101420014:  e0 03 18 aa   mov	x0, x24
0x101420018:  01 00 80 52   mov	w1, #0
0x10142001c:  b5 d8 1b 94   bl	j__os_log_type_enabled
0x101420020:  c0 03 00 34   cbz	w0, loc_101420098 ; ⤵ 0x78
0x101420024:  e0 03 13 aa   mov	x0, x19
0x101420028:  66 f8 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142002c:  7b e2 01 94   bl	0x101498a18
0x101420030:  c8 02 40 b9   ldr	w8, [x22]
0x101420034:  a9 46 00 90   adrp	x9, 0x101cf4000
0x101420038:  20 3d 44 fd   ldr	d0, [x9, #0x878]
0x10142003c:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x101420040:  bf 43 12 b8   stur	wzr, [fp, #-0xdc]
0x101420044:  49 04 81 52   mov	w9, #0x822
0x101420048:  a9 83 12 78   sturh	w9, [fp, #-0xd8]
0x10142004c:  69 54 00 d0   adrp	x9, 0x101eae000
0x101420050:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101420054:  aa 83 03 d1   sub	x10, fp, #0xe0
0x101420058:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x10142005c:  29 08 81 52   mov	w9, #0x841
0x101420060:  a9 23 13 78   sturh	w9, [fp, #-0xce]
0x101420064:  40 41 01 f8   stur	x0, [x10, #0x14]
0x101420068:  29 80 80 52   mov	w9, #0x401
0x10142006c:  a9 c3 13 78   sturh	w9, [fp, #-0xc4]
0x101420070:  48 e1 01 b8   stur	w8, [x10, #0x1e]
0x101420074:  00 5f ff 90   adrp	x0, 0x100000000
0x101420078:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10142007c:  23 72 00 90   adrp	x3, 0x102264000
0x101420080:  63 70 37 91   add	x3, x3, #0xddc ; "{\"msg%{public}.0s\":\"#durian fetched current key index\", \"item\":%{private, location:escape_only}@, \"index\":%{private}u}"
0x101420084:  a4 83 03 d1   sub	x4, fp, #0xe0
0x101420088:  e1 03 18 aa   mov	x1, x24
0x10142008c:  02 00 80 52   mov	w2, #0
0x101420090:  45 04 80 52   mov	w5, #0x22
0x101420094:  57 d4 1b 94   bl	j___os_log_impl
0x101420098:  ; loc_101420098
0x101420098:  a0 0a 40 f9   ldr	x0, [x21, #0x10]
0x10142009c:  c2 02 40 b9   ldr	w2, [x22]
0x1014200a0:  e3 03 13 aa   mov	x3, x19
0x1014200a4:  d7 a7 1c 94   bl	j__objc_msgSend(x0, "setCurrentKeyIndex:forDevice:")
0x1014200a8:  e0 03 17 aa   mov	x0, x23
0x1014200ac:  cd 64 1c 94   bl	j__objc_msgSend(x0, "length")
0x1014200b0:  1f 14 00 f1   cmp	x0, #0x5
0x1014200b4:  c3 05 00 54   b.lo	loc_10142016c ; ⤵ 0xb8
0x1014200b8:  08 8b 00 d0   adrp	x8, 0x102582000
0x1014200bc:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x1014200c0:  1f 05 00 b1   cmn	x8, #0x1
0x1014200c4:  41 92 01 54   b.ne	loc_10142330c ; ⤵ 0x3248
0x1014200c8:  08 8b 00 d0   adrp	x8, 0x102582000
0x1014200cc:  17 3d 46 f9   ldr	x23, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x1014200d0:  e0 03 17 aa   mov	x0, x23
0x1014200d4:  01 00 80 52   mov	w1, #0
0x1014200d8:  86 d8 1b 94   bl	j__os_log_type_enabled
0x1014200dc:  c0 03 00 34   cbz	w0, loc_101420154 ; ⤵ 0x78
0x1014200e0:  e0 03 13 aa   mov	x0, x19
0x1014200e4:  37 f8 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x1014200e8:  4c e2 01 94   bl	0x101498a18
0x1014200ec:  c8 06 40 b9   ldr	w8, [x22, #0x4]
0x1014200f0:  a9 46 00 90   adrp	x9, 0x101cf4000
0x1014200f4:  20 3d 44 fd   ldr	d0, [x9, #0x878]
0x1014200f8:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x1014200fc:  bf 43 12 b8   stur	wzr, [fp, #-0xdc]
0x101420100:  49 04 81 52   mov	w9, #0x822
0x101420104:  a9 83 12 78   sturh	w9, [fp, #-0xd8]
0x101420108:  69 54 00 d0   adrp	x9, 0x101eae000
0x10142010c:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101420110:  aa 83 03 d1   sub	x10, fp, #0xe0
0x101420114:  49 a1 00 f8   stur	x9, [x10, #0xa]
0x101420118:  29 08 81 52   mov	w9, #0x841
0x10142011c:  a9 23 13 78   sturh	w9, [fp, #-0xce]
0x101420120:  40 41 01 f8   stur	x0, [x10, #0x14]
0x101420124:  29 80 80 52   mov	w9, #0x401
0x101420128:  a9 c3 13 78   sturh	w9, [fp, #-0xc4]
0x10142012c:  48 e1 01 b8   stur	w8, [x10, #0x1e]
0x101420130:  00 5f ff 90   adrp	x0, 0x100000000
0x101420134:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101420138:  23 72 00 90   adrp	x3, 0x102264000
0x10142013c:  63 4c 39 91   add	x3, x3, #0xe53 ; "{\"msg%{public}.0s\":\"#durian fetched current wild key index\", \"item\":%{private, location:escape_only}@, \"index\":%{private}u}"
0x101420140:  a4 83 03 d1   sub	x4, fp, #0xe0
0x101420144:  e1 03 17 aa   mov	x1, x23
0x101420148:  02 00 80 52   mov	w2, #0
0x10142014c:  45 04 80 52   mov	w5, #0x22
0x101420150:  28 d4 1b 94   bl	j___os_log_impl
0x101420154:  ; loc_101420154
0x101420154:  a0 0a 40 f9   ldr	x0, [x21, #0x10]
0x101420158:  c2 06 40 b9   ldr	w2, [x22, #0x4]
0x10142015c:  64 83 00 d0   adrp	x4, 0x10248e000
0x101420160:  84 40 2e 91   add	x4, x4, #0xb90 ; "fetchkeyindex"
0x101420164:  e3 03 13 aa   mov	x3, x19
0x101420168:  1e a8 1c 94   bl	j__objc_msgSend(x0, "setCurrentWildKeyIndex:forDevice:forEvent:")
0x10142016c:  ; loc_10142016c
0x10142016c:  62 83 00 d0   adrp	x2, 0x10248e000
0x101420170:  42 c0 2e 91   add	x2, x2, #0xbb0 ; "Task:FetchCurrentKeyIndex"
0x101420174:  00 03 00 14   b	loc_101420d74 ; ⤵ 0xc00
0x101420178:  ; loc_101420178
0x101420178:  30 07 00 51   sub	w16, w25, #0x1
0x10142017c:  1f b6 00 71   cmp	w16, #0x2d
0x101420180:  88 ce ff 54   b.hi	loc_10141fb50 ; ⤴ -0x630
0x101420184:  1f b6 00 f1   cmp	x16, #0x2d
0x101420188:  10 92 9f 9a   csel	x16, x16, xzr, ls
0x10142018c:  b1 7b ff 90   adrp	x17, 0x100394000
0x101420190:  31 e2 31 91   add	x17, x17, #0xc78
0x101420194:  30 7a b0 b8   ldrsw	x16, [x17, x16, lsl #0x2]
0x101420198:  11 00 00 10   adr	x17, 0x101420198
0x10142019c:  30 02 10 8b   add	x16, x17, x16
0x1014201a0:  00 02 1f d6   br	x16
0x1014201a4:  e0 03 17 aa   mov	x0, x23
0x1014201a8:  7e 7c 1c 94   bl	j__objc_msgSend(x0, "payload")
0x1014201ac:  8d 64 1c 94   bl	j__objc_msgSend(x0, "length")
0x1014201b0:  16 04 00 d1   sub	x22, x0, #0x1
0x1014201b4:  e0 03 17 aa   mov	x0, x23
0x1014201b8:  7a 7c 1c 94   bl	j__objc_msgSend(x0, "payload")
0x1014201bc:  22 00 80 52   mov	w2, #0x1
0x1014201c0:  e3 03 16 aa   mov	x3, x22
0x1014201c4:  27 e0 1c 94   bl	j__objc_msgSend(x0, "subdataWithRange:")
0x1014201c8:  f6 03 00 aa   mov	x22, x0
0x1014201cc:  b7 9a 40 f9   ldr	x23, [x21, #0x130]
0x1014201d0:  e0 03 13 aa   mov	x0, x19
0x1014201d4:  fb f7 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x1014201d8:  e3 03 00 aa   mov	x3, x0
0x1014201dc:  e0 03 17 aa   mov	x0, x23
0x1014201e0:  e2 03 16 aa   mov	x2, x22
0x1014201e4:  04 00 80 d2   mov	x4, #0
0x1014201e8:  e5 07 40 f9   ldr	x5, [sp, #0x8]
0x1014201ec:  c5 13 1c 94   bl	j__objc_msgSend(x0, "didFetchFirmwareVersion:fromTag:withError:forClient:")
0x1014201f0:  88 7b 00 b0   adrp	x8, 0x102391000
0x1014201f4:  00 15 47 f9   ldr	x0, [x8, #0xe28] ; __got._OBJC_CLASS_$_CLFindMyAccessoryFirmwareVersion
0x1014201f8:  16 d7 1b 94   bl	j__objc_alloc
0x1014201fc:  e2 03 16 aa   mov	x2, x22
0x101420200:  80 48 1c 94   bl	j__objc_msgSend(x0, "initWithData:")
0x101420204:  1f d7 1b 94   bl	j__objc_autorelease
0x101420208:  e2 03 00 aa   mov	x2, x0
0x10142020c:  e0 03 14 aa   mov	x0, x20
0x101420210:  8c ae 1c 94   bl	j__objc_msgSend(x0, "setFirmwareVersion:")
0x101420214:  e0 03 14 aa   mov	x0, x20
0x101420218:  62 70 1c 94   bl	j__objc_msgSend(x0, "nordicCrash")
0x10142021c:  80 00 00 b5   cbnz	x0, loc_10142022c ; ⤵ 0x10
0x101420220:  e0 03 14 aa   mov	x0, x20
0x101420224:  77 96 1c 94   bl	j__objc_msgSend(x0, "roseCrashes")
0x101420228:  40 c9 ff b4   cbz	x0, loc_10141fb50 ; ⤴ -0x6d8
0x10142022c:  ; loc_10142022c
0x10142022c:  b6 36 40 f9   ldr	x22, [x21, #0x68]
0x101420230:  e0 03 14 aa   mov	x0, x20
0x101420234:  5b 70 1c 94   bl	j__objc_msgSend(x0, "nordicCrash")
0x101420238:  f7 03 00 aa   mov	x23, x0
0x10142023c:  e0 03 14 aa   mov	x0, x20
0x101420240:  70 96 1c 94   bl	j__objc_msgSend(x0, "roseCrashes")
0x101420244:  f8 03 00 aa   mov	x24, x0
0x101420248:  e0 03 14 aa   mov	x0, x20
0x10142024c:  8d 2c 1c 94   bl	j__objc_msgSend(x0, "firmwareVersion")
0x101420250:  e4 03 00 aa   mov	x4, x0
0x101420254:  e0 03 16 aa   mov	x0, x22
0x101420258:  e2 03 17 aa   mov	x2, x23
0x10142025c:  e3 03 18 aa   mov	x3, x24
0x101420260:  e5 03 13 aa   mov	x5, x19
0x101420264:  ef e0 1c 94   bl	j__objc_msgSend(x0, "submitCustomerNordicCrash:roseCrashes:firmwareVersion:device:")
0x101420268:  3a fe ff 17   b	loc_10141fb50 ; ⤴ -0x718
0x10142026c:  ; loc_10142026c
0x10142026c:  08 8b 00 d0   adrp	x8, 0x102582000
0x101420270:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101420274:  1f 05 00 b1   cmn	x8, #0x1
0x101420278:  21 7f 01 54   b.ne	loc_10142325c ; ⤵ 0x2fe4
0x10142027c:  08 8b 00 d0   adrp	x8, 0x102582000
0x101420280:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101420284:  e0 03 15 aa   mov	x0, x21
0x101420288:  01 02 80 52   mov	w1, #0x10
0x10142028c:  19 d8 1b 94   bl	j__os_log_type_enabled
0x101420290:  80 05 00 34   cbz	w0, loc_101420340 ; ⤵ 0xb0
0x101420294:  e0 03 13 aa   mov	x0, x19
0x101420298:  ca f7 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142029c:  df e1 01 94   bl	0x101498a18
0x1014202a0:  f6 03 00 aa   mov	x22, x0
0x1014202a4:  e0 03 14 aa   mov	x0, x20
0x1014202a8:  46 ed 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x1014202ac:  f7 03 00 aa   mov	x23, x0
0x1014202b0:  e0 03 14 aa   mov	x0, x20
0x1014202b4:  43 ed 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x1014202b8:  e2 03 00 aa   mov	x2, x0
0x1014202bc:  e0 03 13 aa   mov	x0, x19
0x1014202c0:  20 36 1c 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x1014202c4:  a8 46 00 90   adrp	x8, 0x101cf4000
0x1014202c8:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x1014202cc:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x1014202d0:  bf 43 12 b8   stur	wzr, [fp, #-0xdc]
0x1014202d4:  48 04 81 52   mov	w8, #0x822
0x1014202d8:  a8 83 12 78   sturh	w8, [fp, #-0xd8]
0x1014202dc:  68 54 00 d0   adrp	x8, 0x101eae000
0x1014202e0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014202e4:  aa 83 03 d1   sub	x10, fp, #0xe0
0x1014202e8:  48 a1 00 f8   stur	x8, [x10, #0xa]
0x1014202ec:  28 08 81 52   mov	w8, #0x841
0x1014202f0:  a8 23 13 78   sturh	w8, [fp, #-0xce]
0x1014202f4:  56 41 01 f8   stur	x22, [x10, #0x14]
0x1014202f8:  29 80 80 52   mov	w9, #0x401
0x1014202fc:  a9 c3 13 78   sturh	w9, [fp, #-0xc4]
0x101420300:  57 e1 01 b8   stur	w23, [x10, #0x1e]
0x101420304:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x101420308:  40 41 02 f8   stur	x0, [x10, #0x24]
0x10142030c:  00 5f ff 90   adrp	x0, 0x100000000
0x101420310:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101420314:  23 72 00 90   adrp	x3, 0x102264000
0x101420318:  63 d4 13 91   add	x3, x3, #0x4f5 ; "{\"msg%{public}.0s\":\"#durian #hawkeye mismatch opcode/task\", \"item\":%{private, location:escape_only}@, \"opcode\":%{private}d, \"task\":%{private, location:escape_only}@}"
0x10142031c:  a4 83 03 d1   sub	x4, fp, #0xe0
0x101420320:  e1 03 15 aa   mov	x1, x21
0x101420324:  02 02 80 52   mov	w2, #0x10
0x101420328:  85 05 80 52   mov	w5, #0x2c
0x10142032c:  b1 d3 1b 94   bl	j___os_log_impl
0x101420330:  08 8b 00 d0   adrp	x8, 0x102582000
0x101420334:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101420338:  1f 05 00 b1   cmn	x8, #0x1
0x10142033c:  41 79 01 54   b.ne	loc_101423264 ; ⤵ 0x2f28
0x101420340:  ; loc_101420340
0x101420340:  08 8b 00 d0   adrp	x8, 0x102582000
0x101420344:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101420348:  e0 03 15 aa   mov	x0, x21
0x10142034c:  ed d7 1b 94   bl	j__os_signpost_enabled
0x101420350:  00 e1 ff 34   cbz	w0, loc_10141ff70 ; ⤴ -0x3e0
0x101420354:  e0 03 13 aa   mov	x0, x19
0x101420358:  9a f7 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142035c:  af e1 01 94   bl	0x101498a18
0x101420360:  f6 03 00 aa   mov	x22, x0
0x101420364:  e0 03 14 aa   mov	x0, x20
0x101420368:  16 ed 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x10142036c:  f7 03 00 aa   mov	x23, x0
0x101420370:  e0 03 14 aa   mov	x0, x20
0x101420374:  13 ed 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x101420378:  e2 03 00 aa   mov	x2, x0
0x10142037c:  e0 03 13 aa   mov	x0, x19
0x101420380:  f0 35 1c 94   bl	j__objc_msgSend(x0, "getTaskDescription:")
0x101420384:  a8 46 00 90   adrp	x8, 0x101cf4000
0x101420388:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x10142038c:  a0 03 12 bc   stur	s0, [fp, #-0xe0]
0x101420390:  bf 43 12 b8   stur	wzr, [fp, #-0xdc]
0x101420394:  48 04 81 52   mov	w8, #0x822
0x101420398:  a8 83 12 78   sturh	w8, [fp, #-0xd8]
0x10142039c:  68 54 00 d0   adrp	x8, 0x101eae000
0x1014203a0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014203a4:  aa 83 03 d1   sub	x10, fp, #0xe0
0x1014203a8:  48 a1 00 f8   stur	x8, [x10, #0xa]
0x1014203ac:  28 08 81 52   mov	w8, #0x841
0x1014203b0:  a8 23 13 78   sturh	w8, [fp, #-0xce]
0x1014203b4:  56 41 01 f8   stur	x22, [x10, #0x14]
0x1014203b8:  29 80 80 52   mov	w9, #0x401
0x1014203bc:  a9 c3 13 78   sturh	w9, [fp, #-0xc4]
0x1014203c0:  57 e1 01 b8   stur	w23, [x10, #0x1e]
0x1014203c4:  a8 23 14 78   sturh	w8, [fp, #-0xbe]
0x1014203c8:  40 41 02 f8   stur	x0, [x10, #0x24]
0x1014203cc:  00 5f ff 90   adrp	x0, 0x100000000
0x1014203d0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014203d4:  24 72 00 90   adrp	x4, 0x102264000
0x1014203d8:  84 6c 16 91   add	x4, x4, #0x59b ; "#durian #hawkeye mismatch opcode/task"
0x1014203dc:  25 72 00 90   adrp	x5, 0x102264000
0x1014203e0:  a5 d4 13 91   add	x5, x5, #0x4f5 ; "{\"msg%{public}.0s\":\"#durian #hawkeye mismatch opcode/task\", \"item\":%{private, location:escape_only}@, \"opcode\":%{private}d, \"task\":%{private, location:escape_only}@}"
0x1014203e4:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x1014203e8:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x1014203ec:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x1014203f0:  a6 83 03 d1   sub	x6, fp, #0xe0
0x1014203f4:  e1 03 15 aa   mov	x1, x21
0x1014203f8:  02 00 80 52   mov	w2, #0
0x1014203fc:  87 05 80 52   mov	w7, #0x2c
0x101420400:  84 d3 1b 94   bl	j___os_signpost_emit_with_name_impl
0x101420404:  db fe ff 17   b	loc_10141ff70 ; ⤴ -0x494
0x101420408:  ; loc_101420408
0x101420408:  3f 0b 20 71   cmp	w25, #0x802
0x10142040c:  ed 08 00 54   b.le	loc_101420528 ; ⤵ 0x11c
0x101420410:  3f 0f 20 71   cmp	w25, #0x803
0x101420414:  80 07 00 54   b.eq	loc_101420504 ; ⤵ 0xf0
0x101420418:  3f 17 20 71   cmp	w25, #0x805
0x10142041c:  00 0a 00 54   b.eq	loc_10142055c ; ⤵ 0x140
0x101420420:  3f 37 20 71   cmp	w25, #0x80d
0x101420424:  61 b9 ff 54   b.ne	loc_10141fb50 ; ⤴ -0x8d4
0x101420428:  e0 03 13 aa   mov	x0, x19
0x10142042c:  fd 56 1c 94   bl	j__objc_msgSend(x0, "isAirTag")
0x101420430:  20 01 00 34   cbz	w0, loc_101420454 ; ⤵ 0x24
0x101420434:  b6 9a 40 f9   ldr	x22, [x21, #0x130]
0x101420438:  e0 03 13 aa   mov	x0, x19
0x10142043c:  61 f7 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101420440:  e2 03 00 aa   mov	x2, x0
0x101420444:  e0 03 16 aa   mov	x0, x22
0x101420448:  03 00 80 d2   mov	x3, #0
0x10142044c:  e4 07 40 f9   ldr	x4, [sp, #0x8]
0x101420450:  04 11 1c 94   bl	j__objc_msgSend(x0, "didCompletePlayingUnauthorizedSoundOnTag:withError:forClient:")
0x101420454:  ; loc_101420454
0x101420454:  00 e4 00 6f   movi	v0.2d, #0
0x101420458:  e0 83 07 ad   stp	q0, q0, [sp, #0xf0]
0x10142045c:  e0 83 06 ad   stp	q0, q0, [sp, #0xd0]
0x101420460:  b6 1e 40 f9   ldr	x22, [x21, #0x38]
0x101420464:  e2 43 03 91   add	x2, sp, #0xd0
0x101420468:  e3 03 0c 91   add	x3, sp, #0x300
0x10142046c:  e0 03 16 aa   mov	x0, x22
0x101420470:  04 02 80 52   mov	w4, #0x10
0x101420474:  a3 04 1c 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101420478:  c0 b6 ff b4   cbz	x0, loc_10141fb50 ; ⤴ -0x928
0x10142047c:  f7 03 00 aa   mov	x23, x0
0x101420480:  e8 73 40 f9   ldr	x8, [sp, #0xe0]
0x101420484:  1b 01 40 f9   ldr	x27, [x8]
0x101420488:  ; loc_101420488
0x101420488:  1c 00 80 d2   mov	x28, #0
0x10142048c:  ; loc_10142048c
0x10142048c:  e8 73 40 f9   ldr	x8, [sp, #0xe0]
0x101420490:  08 01 40 f9   ldr	x8, [x8]
0x101420494:  1f 01 1b eb   cmp	x8, x27
0x101420498:  60 00 00 54   b.eq	loc_1014204a4 ; ⤵ 0xc
0x10142049c:  e0 03 16 aa   mov	x0, x22
0x1014204a0:  98 d6 1b 94   bl	j__objc_enumerationMutation
0x1014204a4:  ; loc_1014204a4
0x1014204a4:  e8 6f 40 f9   ldr	x8, [sp, #0xd8]
0x1014204a8:  18 79 7c f8   ldr	x24, [x8, x28, lsl #0x3]
0x1014204ac:  b9 9a 40 f9   ldr	x25, [x21, #0x130]
0x1014204b0:  e0 03 13 aa   mov	x0, x19
0x1014204b4:  43 f7 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x1014204b8:  fa 03 00 aa   mov	x26, x0
0x1014204bc:  e0 03 13 aa   mov	x0, x19
0x1014204c0:  98 ea 1b 94   bl	j__objc_msgSend(x0, "addressFromUnknownBeacon")
0x1014204c4:  e3 03 00 aa   mov	x3, x0
0x1014204c8:  e0 03 19 aa   mov	x0, x25
0x1014204cc:  e2 03 1a aa   mov	x2, x26
0x1014204d0:  e4 03 18 aa   mov	x4, x24
0x1014204d4:  83 16 1c 94   bl	j__objc_msgSend(x0, "didSuccessfullyPlayUnauthorizedSound:address:forClient:")
0x1014204d8:  9c 07 00 91   add	x28, x28, #0x1
0x1014204dc:  ff 02 1c eb   cmp	x23, x28
0x1014204e0:  61 fd ff 54   b.ne	loc_10142048c ; ⤴ -0x54
0x1014204e4:  e2 43 03 91   add	x2, sp, #0xd0
0x1014204e8:  e3 03 0c 91   add	x3, sp, #0x300
0x1014204ec:  e0 03 16 aa   mov	x0, x22
0x1014204f0:  04 02 80 52   mov	w4, #0x10
0x1014204f4:  83 04 1c 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x1014204f8:  f7 03 00 aa   mov	x23, x0
0x1014204fc:  60 fc ff b5   cbnz	x0, loc_101420488 ; ⤴ -0x74
0x101420500:  94 fd ff 17   b	loc_10141fb50 ; ⤴ -0x9b0
0x101420504:  ; loc_101420504
0x101420504:  e0 03 13 aa   mov	x0, x19
0x101420508:  2e f7 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10142050c:  e2 03 00 aa   mov	x2, x0
0x101420510:  e0 03 15 aa   mov	x0, x21
0x101420514:  e3 07 40 f9   ldr	x3, [sp, #0x8]
0x101420518:  e4 03 18 aa   mov	x4, x24
0x10142051c:  e5 03 19 aa   mov	x5, x25
0x101420520:  c8 fe 1b 94   bl	j__objc_msgSend(x0, "completeRangingStart:client:data:opcode:")
0x101420524:  8b fd ff 17   b	loc_10141fb50 ; ⤴ -0x9d4
0x101420528:  ; loc_101420528
0x101420528:  3f 07 20 71   cmp	w25, #0x801
0x10142052c:  a0 02 00 54   b.eq	loc_101420580 ; ⤵ 0x54
0x101420530:  3f 0b 20 71   cmp	w25, #0x802
0x101420534:  e1 b0 ff 54   b.ne	loc_10141fb50 ; ⤴ -0x9e4
0x101420538:  e0 03 13 aa   mov	x0, x19
0x10142053c:  21 f7 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101420540:  e2 03 00 aa   mov	x2, x0
0x101420544:  e0 03 15 aa   mov	x0, x21
0x101420548:  e3 07 40 f9   ldr	x3, [sp, #0x8]
0x10142054c:  e4 03 18 aa   mov	x4, x24
0x101420550:  e5 03 19 aa   mov	x5, x25
0x101420554:  a3 fe 1b 94   bl	j__objc_msgSend(x0, "completeRangingConfigure:client:data:opcode:")
0x101420558:  7e fd ff 17   b	loc_10141fb50 ; ⤴ -0xa08
0x10142055c:  ; loc_10142055c
0x10142055c:  e0 03 13 aa   mov	x0, x19
0x101420560:  18 f7 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101420564:  e2 03 00 aa   mov	x2, x0
0x101420568:  e0 03 15 aa   mov	x0, x21
0x10142056c:  e3 07 40 f9   ldr	x3, [sp, #0x8]
0x101420570:  e4 03 18 aa   mov	x4, x24
0x101420574:  e5 03 19 aa   mov	x5, x25
0x101420578:  a2 fe 1b 94   bl	j__objc_msgSend(x0, "completeRangingDeinit:client:data:opcode:")
0x10142057c:  75 fd ff 17   b	loc_10141fb50 ; ⤴ -0xa2c
0x101420580:  ; loc_101420580
0x101420580:  e0 03 13 aa   mov	x0, x19
0x101420584:  0f f7 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x101420588:  e2 03 00 aa   mov	x2, x0
0x10142058c:  e0 03 15 aa   mov	x0, x21
0x101420590:  e3 07 40 f9   ldr	x3, [sp, #0x8]
0x101420594:  e4 03 18 aa   mov	x4, x24
0x101420598:  e5 03 19 aa   mov	x5, x25
0x10142059c:  a1 fe 1b 94   bl	j__objc_msgSend(x0, "completeRangingInit:client:data:opcode:")
0x1014205a0:  6c fd ff 17   b	loc_10141fb50 ; ⤴ -0xa50
0x1014205a4:  e0 03 17 aa   mov	x0, x23
0x1014205a8:  7e 7b 1c 94   bl	j__objc_msgSend(x0, "payload")
0x1014205ac:  a5 f3 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x1014205b0:  02 d8 40 29   ldp	w2, w22, [x0, #0x4]
0x1014205b4:  a8 0a 40 f9   ldr	x8, [x21, #0x10]
0x1014205b8:  04 00 40 b9   ldr	w4, [x0]
0x1014205bc:  e0 03 08 aa   mov	x0, x8
0x1014205c0:  03 0c 80 52   mov	w3, #0x60
0x1014205c4:  e5 03 13 aa   mov	x5, x19
0x1014205c8:  a6 ce 1c 94   bl	j__objc_msgSend(x0, "setWildKeyBase:interval:fallback:forDevice:")
0x1014205cc:  88 7b 00 b0   adrp	x8, 0x102391000
0x1014205d0:  00 25 44 f9   ldr	x0, [x8, #0x848] ; __got._OBJC_CLASS_$_NSDate
0x1014205d4:  73 0a 1c 94   bl	j__objc_msgSend(x0, "date")
0x1014205d8:  f7 03 00 aa   mov	x23, x0
0x1014205dc:  a1 d5 1b 94   bl	j__mach_continuous_time
0x1014205e0:  f8 03 00 aa   mov	x24, x0
0x1014205e4:  e0 03 14 aa   mov	x0, x20
0x1014205e8:  ae fe 1b 94   bl	j__objc_msgSend(x0, "completionTime")
0x1014205ec:  00 03 00 cb   sub	x0, x24, x0
0x1014205f0:  54 ca 1b 94   bl	j__TMConvertTicksToSeconds
0x1014205f4:  00 40 61 1e   fneg	d0, d0
0x1014205f8:  e0 03 17 aa   mov	x0, x23
0x1014205fc:  79 0a 1c 94   bl	j__objc_msgSend(x0, "dateByAddingTimeInterval:")
0x101420600:  f7 03 00 aa   mov	x23, x0
0x101420604:  e0 03 14 aa   mov	x0, x20
0x101420608:  6e 1e 1c 94   bl	j__objc_msgSend(x0, "executionDuration")
0x10142060c:  a0 0a 40 f9   ldr	x0, [x21, #0x10]
0x101420610:  e2 03 16 aa   mov	x2, x22
0x101420614:  e3 03 17 aa   mov	x3, x23
0x101420618:  bd 05 00 14   b	loc_101421d0c ; ⤵ 0x16f4
0x10142061c:  e0 03 13 aa   mov	x0, x19
0x101420620:  80 56 1c 94   bl	j__objc_msgSend(x0, "isAirTag")
0x101420624:  60 07 00 34   cbz	w0, loc_101420710 ; ⤵ 0xec
0x101420628:  e0 03 14 aa   mov	x0, x20
0x10142062c:  c5 fd 1b 94   bl	j__objc_msgSend(x0, "command")
0x101420630:  5c 7b 1c 94   bl	j__objc_msgSend(x0, "payload")
0x101420634:  83 f3 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x101420638:  08 08 40 39   ldrb	w8, [x0, #0x2]
0x10142063c:  a8 06 00 35   cbnz	w8, loc_101420710 ; ⤵ 0xd4
0x101420640:  e0 03 13 aa   mov	x0, x19
0x101420644:  d7 5b 1c 94   bl	j__objc_msgSend(x0, "isOnlyRemainingTask")
0x101420648:  40 06 00 34   cbz	w0, loc_101420710 ; ⤵ 0xc8
0x10142064c:  a0 0a 40 f9   ldr	x0, [x21, #0x10]
0x101420650:  e2 03 13 aa   mov	x2, x19
0x101420654:  a3 d1 1c 94   bl	j__objc_msgSend(x0, "shouldHoldLeashForDevice:")
0x101420658:  c0 05 00 37   tbnz	w0, #0, loc_101420710 ; ⤵ 0xb8
0x10142065c:  e0 03 13 aa   mov	x0, x19
0x101420660:  70 2b 1c 94   bl	j__objc_msgSend(x0, "firmwareUpdateMode")
0x101420664:  60 05 00 37   tbnz	w0, #0, loc_101420710 ; ⤵ 0xac
0x101420668:  62 83 00 d0   adrp	x2, 0x10248e000
0x10142066c:  42 c0 31 91   add	x2, x2, #0xc70 ; "LeashDisable"
0x101420670:  e0 03 13 aa   mov	x0, x19
0x101420674:  3b a9 1c 94   bl	j__objc_msgSend(x0, "setDisconnectionReason:")
0x101420678:  08 8b 00 d0   adrp	x8, 0x102582000
0x10142067c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101420680:  1f 05 00 b1   cmn	x8, #0x1
0x101420684:  a1 69 01 54   b.ne	loc_1014233b8 ; ⤵ 0x2d34
0x101420688:  08 8b 00 d0   adrp	x8, 0x102582000
0x10142068c:  16 3d 46 f9   ldr	x22, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101420690:  e0 03 16 aa   mov	x0, x22
0x101420694:  01 00 80 52   mov	w1, #0
0x101420698:  16 d7 1b 94   bl	j__os_log_type_enabled
0x10142069c:  40 03 00 34   cbz	w0, loc_101420704 ; ⤵ 0x68
0x1014206a0:  e0 03 13 aa   mov	x0, x19
0x1014206a4:  c7 f6 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x1014206a8:  dc e0 01 94   bl	0x101498a18
0x1014206ac:  a8 46 00 90   adrp	x8, 0x101cf4000
0x1014206b0:  00 fd 47 fd   ldr	d0, [x8, #0xff8]

