0x101459ac8:  28 86 00 d0   adrp	x8, 0x10251f000
0x101459acc:  00 81 26 91   add	x0, x8, #0x9a0 ; CLDurianCommand
0x101459ad0:  e0 f0 1a 94   bl	j__objc_alloc
0x101459ad4:  e2 03 16 aa   mov	x2, x22
0x101459ad8:  4a 62 1b 94   bl	j__objc_msgSend(x0, "initWithData:")
0x101459adc:  f6 03 00 aa   mov	x22, x0
0x101459ae0:  e0 03 13 aa   mov	x0, x19
0x101459ae4:  07 27 1b 94   bl	j__objc_msgSend(x0, "delegate")
0x101459ae8:  e2 03 13 aa   mov	x2, x19
0x101459aec:  e3 03 16 aa   mov	x3, x22
0x101459af0:  e4 03 15 aa   mov	x4, x21
0x101459af4:  9b 29 1b 94   bl	j__objc_msgSend(x0, "device:didReceiveRangingResponse:withOpcode:")
0x101459af8:  4a f1 1a 94   bl	j__objc_release_x22
0x101459afc:  54 00 00 14   b	loc_101459c4c ; ⤵ 0x150
0x101459b00:  e0 03 13 aa   mov	x0, x19
0x101459b04:  e2 03 15 aa   mov	x2, x21
0x101459b08:  5e 78 1b 94   bl	j__objc_msgSend(x0, "isSoundCompleteTask:")
0x101459b0c:  00 06 00 34   cbz	w0, loc_101459bcc ; ⤵ 0xc0
0x101459b10:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101459b14:  1f 05 00 b1   cmn	x8, #0x1
0x101459b18:  01 68 00 54   b.ne	loc_10145a818 ; ⤵ 0xd00
0x101459b1c:  96 3f 46 f9   ldr	x22, [x28, #0xc78]
0x101459b20:  e0 03 16 aa   mov	x0, x22
0x101459b24:  01 00 80 52   mov	w1, #0
0x101459b28:  f2 f1 1a 94   bl	j__os_log_type_enabled
0x101459b2c:  00 09 00 34   cbz	w0, loc_101459c4c ; ⤵ 0x120
0x101459b30:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101459b34:  b9 fb 00 94   bl	0x101498a18
0x101459b38:  c8 44 00 f0   adrp	x8, 0x101cf4000
0x101459b3c:  00 fd 47 fd   ldr	d0, [x8, #0xff8]
0x101459b40:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x101459b44:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x101459b48:  48 04 81 52   mov	w8, #0x822
0x101459b4c:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x101459b50:  a8 52 00 b0   adrp	x8, 0x101eae000
0x101459b54:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101459b58:  48 a3 00 f8   stur	x8, [x26, #0xa]
0x101459b5c:  28 08 81 52   mov	w8, #0x841
0x101459b60:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x101459b64:  40 43 01 f8   stur	x0, [x26, #0x14]
0x101459b68:  20 5d ff f0   adrp	x0, 0x100000000
0x101459b6c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101459b70:  c3 70 00 f0   adrp	x3, 0x102274000
0x101459b74:  63 78 37 91   add	x3, x3, #0xdde ; "{\"msg%{public}.0s\":\"#durian received sound session response\", \"item\":%{private, location:escape_only}@}"
0x101459b78:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x101459b7c:  e1 03 16 aa   mov	x1, x22
0x101459b80:  02 00 80 52   mov	w2, #0
0x101459b84:  85 03 80 52   mov	w5, #0x1c
0x101459b88:  9a ed 1a 94   bl	j___os_log_impl
0x101459b8c:  30 00 00 14   b	loc_101459c4c ; ⤵ 0xc0
0x101459b90:  82 00 80 52   mov	w2, #0x4
0x101459b94:  83 01 80 52   mov	w3, #0xc
0x101459b98:  e2 06 1c 94   bl	j__objc_msgSend(x0, "transitionToState:event:task:")
0x101459b9c:  e0 03 13 aa   mov	x0, x19
0x101459ba0:  d8 26 1b 94   bl	j__objc_msgSend(x0, "delegate")
0x101459ba4:  f5 03 00 aa   mov	x21, x0
0x101459ba8:  e0 03 13 aa   mov	x0, x19
0x101459bac:  15 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459bb0:  e3 03 00 aa   mov	x3, x0
0x101459bb4:  e0 03 15 aa   mov	x0, x21
0x101459bb8:  e2 03 13 aa   mov	x2, x19
0x101459bbc:  04 00 80 d2   mov	x4, #0
0x101459bc0:  30 29 1b 94   bl	j__objc_msgSend(x0, "device:didCompleteTask:withCompletionCommand:")
0x101459bc4:  36 00 80 52   mov	w22, #0x1
0x101459bc8:  36 00 00 14   b	loc_101459ca0 ; ⤵ 0xd8
0x101459bcc:  ; loc_101459bcc
0x101459bcc:  e0 03 13 aa   mov	x0, x19
0x101459bd0:  e2 03 15 aa   mov	x2, x21
0x101459bd4:  e3 73 1b 94   bl	j__objc_msgSend(x0, "isFirmwareVersionCrashTask:")
0x101459bd8:  c0 02 00 34   cbz	w0, loc_101459c30 ; ⤵ 0x58
0x101459bdc:  e0 03 13 aa   mov	x0, x19
0x101459be0:  08 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459be4:  f7 03 00 aa   mov	x23, x0
0x101459be8:  28 86 00 d0   adrp	x8, 0x10251f000
0x101459bec:  00 41 34 91   add	x0, x8, #0xd10 ; CLDurianFetchFirmwareVersionTask
0x101459bf0:  e4 f0 1a 94   bl	j__objc_opt_class
0x101459bf4:  e1 03 00 aa   mov	x1, x0
0x101459bf8:  e0 03 17 aa   mov	x0, x23
0x101459bfc:  e5 f0 1a 94   bl	j__objc_opt_isKindOfClass
0x101459c00:  80 01 00 36   tbz	w0, #0, loc_101459c30 ; ⤵ 0x30
0x101459c04:  e0 03 13 aa   mov	x0, x19
0x101459c08:  fe 00 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459c0c:  f7 03 00 aa   mov	x23, x0
0x101459c10:  e0 03 13 aa   mov	x0, x19
0x101459c14:  e2 03 15 aa   mov	x2, x21
0x101459c18:  32 76 1b 94   bl	j__objc_msgSend(x0, "isNordicCrashTask:")
0x101459c1c:  c0 4d 00 34   cbz	w0, loc_10145a5d4 ; ⤵ 0x9b8
0x101459c20:  e0 03 17 aa   mov	x0, x23
0x101459c24:  e2 03 16 aa   mov	x2, x22
0x101459c28:  36 07 1b 94   bl	j__objc_msgSend(x0, "appendNordicCrashData:")
0x101459c2c:  08 00 00 14   b	loc_101459c4c ; ⤵ 0x20
0x101459c30:  ; loc_101459c30
0x101459c30:  e0 03 13 aa   mov	x0, x19
0x101459c34:  e2 03 15 aa   mov	x2, x21
0x101459c38:  f2 73 1b 94   bl	j__objc_msgSend(x0, "isGroupStatusResponse:")
0x101459c3c:  40 0b 00 34   cbz	w0, loc_101459da4 ; ⤵ 0x168
0x101459c40:  e0 03 13 aa   mov	x0, x19
0x101459c44:  e2 03 16 aa   mov	x2, x22
0x101459c48:  ce 52 1b 94   bl	j__objc_msgSend(x0, "handleGroupStatusReply:")
0x101459c4c:  ; loc_101459c4c
0x101459c4c:  b8 41 00 36   tbz	w24, #0, loc_10145a480 ; ⤵ 0x834
0x101459c50:  14 00 80 52   mov	w20, #0
0x101459c54:  e0 03 13 aa   mov	x0, x19
0x101459c58:  e2 03 15 aa   mov	x2, x21
0x101459c5c:  79 70 1b 94   bl	j__objc_msgSend(x0, "isAckTask:")
0x101459c60:  f6 03 00 aa   mov	x22, x0
0x101459c64:  e0 03 13 aa   mov	x0, x19
0x101459c68:  a6 26 1b 94   bl	j__objc_msgSend(x0, "delegate")
0x101459c6c:  e2 03 13 aa   mov	x2, x19
0x101459c70:  96 00 00 34   cbz	w22, loc_101459c80 ; ⤵ 0x10
0x101459c74:  e3 03 1b aa   mov	x3, x27
0x101459c78:  24 00 80 52   mov	w4, #0x1
0x101459c7c:  03 00 00 14   b	loc_101459c88 ; ⤵ 0xc

