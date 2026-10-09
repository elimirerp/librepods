
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

