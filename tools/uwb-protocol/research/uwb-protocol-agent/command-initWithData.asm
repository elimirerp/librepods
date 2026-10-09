
-[CLDurianCommand initWithData:]:
0x101442748:  7f 23 03 d5   pacibsp
0x10144274c:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x101442750:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x101442754:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x101442758:  fd 83 00 91   add	fp, sp, #0x20
0x10144275c:  f4 03 02 aa   mov	x20, x2
0x101442760:  f3 03 00 aa   mov	x19, x0
0x101442764:  e0 03 02 aa   mov	x0, x2
0x101442768:  1e db 1b 94   bl	j__objc_msgSend(x0, "length")
0x10144276c:  a0 02 00 b4   cbz	x0, loc_1014427c0 ; ⤵ 0x54
0x101442770:  e0 03 14 aa   mov	x0, x20
0x101442774:  33 6b 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x101442778:  15 00 40 39   ldrb	w21, [x0]
0x10144277c:  e0 03 14 aa   mov	x0, x20
0x101442780:  18 db 1b 94   bl	j__objc_msgSend(x0, "length")
0x101442784:  03 04 00 d1   sub	x3, x0, #0x1
0x101442788:  e0 03 14 aa   mov	x0, x20
0x10144278c:  22 00 80 52   mov	w2, #0x1
0x101442790:  b4 56 1c 94   bl	j__objc_msgSend(x0, "subdataWithRange:")
0x101442794:  e3 03 00 aa   mov	x3, x0
0x101442798:  e0 03 13 aa   mov	x0, x19
0x10144279c:  e2 03 15 aa   mov	x2, x21
0x1014427a0:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x1014427a4:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x1014427a8:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x1014427ac:  ff 23 03 d5   autibsp
0x1014427b0:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1014427b4:  50 00 f0 b6   tbz	x16, #0x3e, loc_1014427bc ; ⤵ 0x8
0x1014427b8:  20 8e 38 d4   brk	#0xc471
0x1014427bc:  ; loc_1014427bc
0x1014427bc:  71 c4 1b 14   b	j__objc_msgSend(x0, "initWithOpcode:payload:")
0x1014427c0:  ; loc_1014427c0
0x1014427c0:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x1014427c4:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x1014427c8:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x1014427cc:  ff 0f 5f d6   retab

-[CLDurianCommand initWithOpcode:payload:]:
0x1014427d0:  7f 23 03 d5   pacibsp
0x1014427d4:  ff 03 01 d1   sub	sp, sp, #0x40
0x1014427d8:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x1014427dc:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x1014427e0:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x1014427e4:  fd c3 00 91   add	fp, sp, #0x30
0x1014427e8:  f3 03 03 aa   mov	x19, x3
0x1014427ec:  f4 03 02 aa   mov	x20, x2
0x1014427f0:  c8 82 00 d0   adrp	x8, 0x10249c000
0x1014427f4:  08 e9 45 f9   ldr	x8, [x8, #0xbd0] ; class_CLDurianCommand
0x1014427f8:  e0 23 00 a9   stp	x0, x8, [sp]
0x1014427fc:  e8 85 00 b0   adrp	x8, 0x1024ff000
0x101442800:  01 8d 42 f9   ldr	x1, [x8, #0x518] ; sel_init
0x101442804:  e0 03 00 91   mov	x0, sp
0x101442808:  da 4d 1b 94   bl	j__objc_msgSendSuper2
0x10144280c:  f5 03 00 aa   mov	x21, x0
0x101442810:  80 00 00 b4   cbz	x0, loc_101442820 ; ⤵ 0x10
0x101442814:  b4 16 00 79   strh	w20, [x21, #0xa]
0x101442818:  3a 4e 1b 94   bl	j__objc_retain_x19
0x10144281c:  a0 0a 00 f9   str	x0, [x21, #0x10]
0x101442820:  ; loc_101442820
0x101442820:  e0 03 15 aa   mov	x0, x21
0x101442824:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x101442828:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x10144282c:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x101442830:  ff 03 01 91   add	sp, sp, #0x40
0x101442834:  ff 0f 5f d6   retab

+[CLDurianCommand commandWithOpcode:payload:]:
0x101442838:  7f 23 03 d5   pacibsp
0x10144283c:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101442840:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101442844:  fd 43 00 91   add	fp, sp, #0x10
0x101442848:  f3 03 03 aa   mov	x19, x3
0x10144284c:  f4 03 02 aa   mov	x20, x2
0x101442850:  80 4d 1b 94   bl	j__objc_alloc
0x101442854:  e2 03 14 aa   mov	x2, x20
0x101442858:  e3 03 13 aa   mov	x3, x19
0x10144285c:  49 c4 1b 94   bl	j__objc_msgSend(x0, "initWithOpcode:payload:")
0x101442860:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101442864:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101442868:  ff 23 03 d5   autibsp
0x10144286c:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101442870:  50 00 f0 b6   tbz	x16, #0x3e, loc_101442878 ; ⤵ 0x8
0x101442874:  20 8e 38 d4   brk	#0xc471
0x101442878:  ; loc_101442878
0x101442878:  82 4d 1b 14   b	j__objc_autorelease

-[CLDurianCommand dealloc]:
0x10144287c:  7f 23 03 d5   pacibsp
0x101442880:  ff c3 00 d1   sub	sp, sp, #0x30
0x101442884:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x101442888:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10144288c:  fd 83 00 91   add	fp, sp, #0x20
0x101442890:  f3 03 00 aa   mov	x19, x0
0x101442894:  08 08 40 f9   ldr	x8, [x0, #0x10]
0x101442898:  fe 4d 1b 94   bl	j__objc_release_x8
0x10144289c:  c8 82 00 d0   adrp	x8, 0x10249c000
0x1014428a0:  08 e9 45 f9   ldr	x8, [x8, #0xbd0] ; class_CLDurianCommand
0x1014428a4:  f3 23 00 a9   stp	x19, x8, [sp]
0x1014428a8:  c8 85 00 b0   adrp	x8, 0x1024fb000
0x1014428ac:  01 f5 46 f9   ldr	x1, [x8, #0xde8] ; sel_dealloc
0x1014428b0:  e0 03 00 91   mov	x0, sp
0x1014428b4:  af 4d 1b 94   bl	j__objc_msgSendSuper2
0x1014428b8:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x1014428bc:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x1014428c0:  ff c3 00 91   add	sp, sp, #0x30
0x1014428c4:  ff 0f 5f d6   retab

-[CLDurianCommand bytes]:
0x1014428c8:  7f 23 03 d5   pacibsp
0x1014428cc:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1014428d0:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1014428d4:  fd 43 00 91   add	fp, sp, #0x10
0x1014428d8:  f3 03 00 aa   mov	x19, x0
0x1014428dc:  68 7a 00 f0   adrp	x8, 0x102391000
0x1014428e0:  00 21 44 f9   ldr	x0, [x8, #0x840] ; __got._OBJC_CLASS_$_NSData
0x1014428e4:  62 2a 00 91   add	x2, x19, #0xa
0x1014428e8:  23 00 80 52   mov	w3, #0x1
0x1014428ec:  55 81 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x1014428f0:  68 0a 40 f9   ldr	x8, [x19, #0x10]
0x1014428f4:  e8 01 00 b4   cbz	x8, loc_101442930 ; ⤵ 0x3c
0x1014428f8:  ea e4 1b 94   bl	j__objc_msgSend(x0, "mutableCopy")
0x1014428fc:  61 4d 1b 94   bl	j__objc_autorelease
0x101442900:  f4 03 00 aa   mov	x20, x0
0x101442904:  62 0a 40 f9   ldr	x2, [x19, #0x10]
0x101442908:  de 63 1b 94   bl	j__objc_msgSend(x0, "appendData:")
0x10144290c:  e0 03 14 aa   mov	x0, x20
0x101442910:  4c 7a 1b 94   bl	j__objc_msgSend(x0, "copy")
0x101442914:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101442918:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10144291c:  ff 23 03 d5   autibsp
0x101442920:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101442924:  50 00 f0 b6   tbz	x16, #0x3e, loc_10144292c ; ⤵ 0x8
0x101442928:  20 8e 38 d4   brk	#0xc471
0x10144292c:  ; loc_10144292c
0x10144292c:  55 4d 1b 14   b	j__objc_autorelease
0x101442930:  ; loc_101442930
0x101442930:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101442934:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101442938:  ff 0f 5f d6   retab

-[CLDurianCommand protocol]:
0x10144293c:  00 20 40 39   ldrb	w0, [x0, #0x8]
0x101442940:  c0 03 5f d6   ret

-[CLDurianCommand opcode]:
0x101442944:  00 14 40 79   ldrh	w0, [x0, #0xa]
0x101442948:  c0 03 5f d6   ret

-[CLDurianCommand payload]:
0x10144294c:  00 08 40 f9   ldr	x0, [x0, #0x10]
0x101442950:  c0 03 5f d6   ret

+[CLDurianCommand fetchHardwareFaultStatusCommand]:
0x101442954:  22 06 80 52   mov	w2, #0x31
0x101442958:  03 00 80 d2   mov	x3, #0
0x10144295c:  01 75 1b 14   b	j__objc_msgSend(x0, "commandWithOpcode:payload:")

+[CLDurianCommand fetchCurrentKeyIndexCommand]:
0x101442960:  c2 15 80 52   mov	w2, #0xae
0x101442964:  03 00 80 d2   mov	x3, #0
0x101442968:  fe 74 1b 14   b	j__objc_msgSend(x0, "commandWithOpcode:payload:")

+[CLDurianCommand fetchBatteryStatusCommand]:
0x10144296c:  e2 04 80 52   mov	w2, #0x27
0x101442970:  03 00 80 d2   mov	x3, #0
0x101442974:  fb 74 1b 14   b	j__objc_msgSend(x0, "commandWithOpcode:payload:")

+[CLDurianCommand fetchUserStatsCommandWithPersistence_v0:]:
0x101442978:  7f 23 03 d5   pacibsp
0x10144297c:  ff c3 00 d1   sub	sp, sp, #0x30
0x101442980:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x101442984:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x101442988:  fd 83 00 91   add	fp, sp, #0x20
0x10144298c:  f3 03 00 aa   mov	x19, x0
0x101442990:  28 00 80 52   mov	w8, #0x1
0x101442994:  e8 3b 00 39   strb	w8, [sp, #0xe]
0x101442998:  48 00 00 52   eor	w8, w2, #0x1
0x10144299c:  e8 3f 00 39   strb	w8, [sp, #0xf]

