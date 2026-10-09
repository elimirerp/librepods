
+[CLDurianTask getCurrentPrimaryKeyTask]:
0x10144b814:  7f 23 03 d5   pacibsp
0x10144b818:  ff c3 01 d1   sub	sp, sp, #0x70
0x10144b81c:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10144b820:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10144b824:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10144b828:  fd 83 01 91   add	fp, sp, #0x60
0x10144b82c:  28 7a 00 f0   adrp	x8, 0x102392000
0x10144b830:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10144b834:  08 01 40 f9   ldr	x8, [x8]
0x10144b838:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x10144b83c:  a8 86 00 90   adrp	x8, 0x10251f000
0x10144b840:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x10144b844:  47 d1 1b 94   bl	j__objc_msgSend(x0, "placeholderHawkeyeTask")
0x10144b848:  f3 03 00 aa   mov	x19, x0
0x10144b84c:  80 08 00 b4   cbz	x0, loc_10144b95c ; ⤵ 0x110
0x10144b850:  34 00 80 52   mov	w20, #0x1
0x10144b854:  e0 03 13 aa   mov	x0, x19
0x10144b858:  22 00 80 52   mov	w2, #0x1
0x10144b85c:  f1 fe 1b 94   bl	j__objc_msgSend(x0, "setExpectsResponse:")
0x10144b860:  35 7a 00 b0   adrp	x21, 0x102390000
0x10144b864:  a0 36 46 f9   ldr	x0, [x21, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x10144b868:  ee 31 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeFindMyNetworkServiceUUID")
0x10144b86c:  e2 03 00 aa   mov	x2, x0
0x10144b870:  e0 03 13 aa   mov	x0, x19
0x10144b874:  ab 18 1c 94   bl	j__objc_msgSend(x0, "setServiceUUID:")
0x10144b878:  a0 36 46 f9   ldr	x0, [x21, #0xc68]
0x10144b87c:  f9 31 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePairedOwnerInformationCharacteristicUUID")
0x10144b880:  e2 03 00 aa   mov	x2, x0
0x10144b884:  e0 03 13 aa   mov	x0, x19
0x10144b888:  76 f7 1b 94   bl	j__objc_msgSend(x0, "setCharacteristicUUID:")
0x10144b88c:  e0 03 13 aa   mov	x0, x19
0x10144b890:  02 80 80 52   mov	w2, #0x400
0x10144b894:  53 03 1c 94   bl	j__objc_msgSend(x0, "setHawkeyeOpcode:")
0x10144b898:  f4 37 00 39   strb	w20, [sp, #0xd]
0x10144b89c:  e0 03 13 aa   mov	x0, x19
0x10144b8a0:  08 92 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x10144b8a4:  e0 3b 00 39   strb	w0, [sp, #0xe]
0x10144b8a8:  e0 03 13 aa   mov	x0, x19
0x10144b8ac:  05 92 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x10144b8b0:  08 7c 08 53   lsr	w8, w0, #0x8
0x10144b8b4:  e8 3f 00 39   strb	w8, [sp, #0xf]
0x10144b8b8:  28 7a 00 d0   adrp	x8, 0x102391000
0x10144b8bc:  00 21 44 f9   ldr	x0, [x8, #0x840] ; __got._OBJC_CLASS_$_NSData
0x10144b8c0:  e2 37 00 91   add	x2, sp, #0xd
0x10144b8c4:  63 00 80 52   mov	w3, #0x3
0x10144b8c8:  5e 5d 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x10144b8cc:  e2 03 00 aa   mov	x2, x0
0x10144b8d0:  e0 03 13 aa   mov	x0, x19
0x10144b8d4:  53 03 1c 94   bl	j__objc_msgSend(x0, "setHawkeyePayload:")
0x10144b8d8:  a8 89 00 f0   adrp	x8, 0x102582000
0x10144b8dc:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10144b8e0:  1f 05 00 b1   cmn	x8, #0x1
0x10144b8e4:  c1 08 00 54   b.ne	loc_10144b9fc ; ⤵ 0x118
0x10144b8e8:  a8 89 00 f0   adrp	x8, 0x102582000
0x10144b8ec:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10144b8f0:  e0 03 14 aa   mov	x0, x20
0x10144b8f4:  01 00 80 52   mov	w1, #0
0x10144b8f8:  7e 2a 1b 94   bl	j__os_log_type_enabled
0x10144b8fc:  80 06 00 34   cbz	w0, loc_10144b9cc ; ⤵ 0xd0
0x10144b900:  e0 03 13 aa   mov	x0, x19
0x10144b904:  f7 91 1b 94   bl	j__objc_msgSend(x0, "hawkeyePayload")
0x10144b908:  48 45 00 b0   adrp	x8, 0x101cf4000
0x10144b90c:  00 79 44 fd   ldr	d0, [x8, #0x8f0]
0x10144b910:  e0 13 00 bd   str	s0, [sp, #0x10]
0x10144b914:  ff 17 00 b9   str	wzr, [sp, #0x14]
0x10144b918:  48 04 81 52   mov	w8, #0x822
0x10144b91c:  e8 33 00 79   strh	w8, [sp, #0x18]
0x10144b920:  08 53 00 f0   adrp	x8, 0x101eae000
0x10144b924:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10144b928:  e8 a3 01 f8   stur	x8, [sp, #0x1a]

