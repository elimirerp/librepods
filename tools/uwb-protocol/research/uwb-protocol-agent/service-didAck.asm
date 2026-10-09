
-[CLDurianService device:didAcknowledgeCommandForTask:]:
0x10141d6dc:  7f 23 03 d5   pacibsp
0x10141d6e0:  ff c3 01 d1   sub	sp, sp, #0x70
0x10141d6e4:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x10141d6e8:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10141d6ec:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10141d6f0:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10141d6f4:  fd 83 01 91   add	fp, sp, #0x60
0x10141d6f8:  f6 03 03 aa   mov	x22, x3
0x10141d6fc:  f3 03 02 aa   mov	x19, x2
0x10141d700:  f4 03 00 aa   mov	x20, x0
0x10141d704:  a8 7b 00 b0   adrp	x8, 0x102392000
0x10141d708:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10141d70c:  08 01 40 f9   ldr	x8, [x8]
0x10141d710:  e8 17 00 f9   str	x8, [sp, #0x28]
0x10141d714:  28 8b 00 b0   adrp	x8, 0x102582000
0x10141d718:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10141d71c:  1f 05 00 b1   cmn	x8, #0x1
0x10141d720:  c1 10 00 54   b.ne	loc_10141d938 ; ⤵ 0x218
0x10141d724:  ; loc_10141d724
0x10141d724:  28 8b 00 b0   adrp	x8, 0x102582000
0x10141d728:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10141d72c:  e0 03 15 aa   mov	x0, x21
0x10141d730:  21 00 80 52   mov	w1, #0x1
0x10141d734:  ef e2 1b 94   bl	j__os_log_type_enabled
0x10141d738:  e0 03 00 34   cbz	w0, loc_10141d7b4 ; ⤵ 0x7c
0x10141d73c:  e0 03 13 aa   mov	x0, x19
0x10141d740:  a0 02 1d 94   bl	j__objc_msgSend(x0, "uuid")
0x10141d744:  b5 ec 01 94   bl	0x101498a18
0x10141d748:  f7 03 00 aa   mov	x23, x0
0x10141d74c:  e0 03 16 aa   mov	x0, x22
0x10141d750:  1c f8 1c 94   bl	j__objc_msgSend(x0, "translatedOpcode")
0x10141d754:  a8 46 00 f0   adrp	x8, 0x101cf4000
0x10141d758:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x10141d75c:  e0 03 00 bd   str	s0, [sp]
0x10141d760:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10141d764:  48 04 81 52   mov	w8, #0x822
0x10141d768:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10141d76c:  88 54 00 b0   adrp	x8, 0x101eae000
0x10141d770:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10141d774:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10141d778:  28 08 81 52   mov	w8, #0x841
0x10141d77c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10141d780:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x10141d784:  48 80 80 52   mov	w8, #0x402
0x10141d788:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10141d78c:  e0 e3 01 b8   stur	w0, [sp, #0x1e]
0x10141d790:  00 5f ff f0   adrp	x0, 0x100000000
0x10141d794:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10141d798:  23 72 00 b0   adrp	x3, 0x102262000
0x10141d79c:  63 fc 3d 91   add	x3, x3, #0xf7f ; "{\"msg%{public}.0s\":\"#durian didAcknowledgeCommandForTask\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x10141d7a0:  e4 03 00 91   mov	x4, sp
0x10141d7a4:  e1 03 15 aa   mov	x1, x21
0x10141d7a8:  22 00 80 52   mov	w2, #0x1
0x10141d7ac:  45 04 80 52   mov	w5, #0x22
0x10141d7b0:  90 de 1b 94   bl	j___os_log_impl
0x10141d7b4:  ; loc_10141d7b4
0x10141d7b4:  95 16 40 f9   ldr	x21, [x20, #0x28]
0x10141d7b8:  e0 03 16 aa   mov	x0, x22
0x10141d7bc:  81 02 1d 94   bl	j__objc_msgSend(x0, "uuid")
0x10141d7c0:  e2 03 00 aa   mov	x2, x0
0x10141d7c4:  e0 03 15 aa   mov	x0, x21
0x10141d7c8:  ae 7d 1c 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10141d7cc:  f5 03 00 aa   mov	x21, x0
0x10141d7d0:  e0 03 16 aa   mov	x0, x22
0x10141d7d4:  5b 09 1c 94   bl	j__objc_msgSend(x0, "command")
0x10141d7d8:  c2 84 1c 94   bl	j__objc_msgSend(x0, "opcode")
0x10141d7dc:  1f fc 0b 71   cmp	w0, #0x2ff
0x10141d7e0:  4d 01 00 54   b.le	loc_10141d808 ; ⤵ 0x28
0x10141d7e4:  1f 98 0c 71   cmp	w0, #0x326
0x10141d7e8:  8c 04 00 54   b.gt	loc_10141d878 ; ⤵ 0x90
0x10141d7ec:  1f 00 0c 71   cmp	w0, #0x300
0x10141d7f0:  00 05 00 54   b.eq	loc_10141d890 ; ⤵ 0xa0
0x10141d7f4:  1f 68 0c 71   cmp	w0, #0x31a
0x10141d7f8:  c0 04 00 54   b.eq	loc_10141d890 ; ⤵ 0x98
0x10141d7fc:  1f 88 0c 71   cmp	w0, #0x322
0x10141d800:  20 06 00 54   b.eq	loc_10141d8c4 ; ⤵ 0xc4
0x10141d804:  38 00 00 14   b	loc_10141d8e4 ; ⤵ 0xe0
0x10141d808:  ; loc_10141d808
0x10141d808:  1f 9c 00 71   cmp	w0, #0x27
0x10141d80c:  4d 05 00 54   b.le	loc_10141d8b4 ; ⤵ 0xa8
0x10141d810:  1f a0 00 71   cmp	w0, #0x28
0x10141d814:  00 08 00 54   b.eq	loc_10141d914 ; ⤵ 0x100
0x10141d818:  1f bc 02 71   cmp	w0, #0xaf
0x10141d81c:  a0 03 00 54   b.eq	loc_10141d890 ; ⤵ 0x74
0x10141d820:  1f 40 03 71   cmp	w0, #0xd0
0x10141d824:  01 06 00 54   b.ne	loc_10141d8e4 ; ⤵ 0xc0
0x10141d828:  08 88 00 d0   adrp	x8, 0x10251f000
0x10141d82c:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x10141d830:  d4 e1 1b 94   bl	j__objc_opt_class
0x10141d834:  e1 03 00 aa   mov	x1, x0
0x10141d838:  e0 03 16 aa   mov	x0, x22
0x10141d83c:  d5 e1 1b 94   bl	j__objc_opt_isKindOfClass
0x10141d840:  20 05 00 36   tbz	w0, #0, loc_10141d8e4 ; ⤵ 0xa4
0x10141d844:  e0 03 16 aa   mov	x0, x22
0x10141d848:  1e 4a 1c 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x10141d84c:  1f 3c 08 71   cmp	w0, #0x20f
0x10141d850:  a1 04 00 54   b.ne	loc_10141d8e4 ; ⤵ 0x94
0x10141d854:  94 9a 40 f9   ldr	x20, [x20, #0x130]
0x10141d858:  e0 03 13 aa   mov	x0, x19
0x10141d85c:  59 02 1d 94   bl	j__objc_msgSend(x0, "uuid")
0x10141d860:  e2 03 00 aa   mov	x2, x0
0x10141d864:  e0 03 14 aa   mov	x0, x20
0x10141d868:  03 00 80 d2   mov	x3, #0
0x10141d86c:  e4 03 15 aa   mov	x4, x21
0x10141d870:  1c 21 1c 94   bl	j__objc_msgSend(x0, "didStartAggressiveAdvertisingOnDevice:withError:forClient:")
0x10141d874:  1c 00 00 14   b	loc_10141d8e4 ; ⤵ 0x70
0x10141d878:  ; loc_10141d878
0x10141d878:  1f 9c 0c 71   cmp	w0, #0x327
0x10141d87c:  40 02 00 54   b.eq	loc_10141d8c4 ; ⤵ 0x48
0x10141d880:  1f 0c 20 71   cmp	w0, #0x803
0x10141d884:  00 02 00 54   b.eq	loc_10141d8c4 ; ⤵ 0x40
0x10141d888:  1f 34 20 71   cmp	w0, #0x80d
0x10141d88c:  c1 02 00 54   b.ne	loc_10141d8e4 ; ⤵ 0x58
0x10141d890:  ; loc_10141d890
0x10141d890:  94 9a 40 f9   ldr	x20, [x20, #0x130]
0x10141d894:  e0 03 13 aa   mov	x0, x19
0x10141d898:  4a 02 1d 94   bl	j__objc_msgSend(x0, "uuid")
0x10141d89c:  e2 03 00 aa   mov	x2, x0
0x10141d8a0:  e0 03 14 aa   mov	x0, x20
0x10141d8a4:  03 00 80 d2   mov	x3, #0
0x10141d8a8:  e4 03 15 aa   mov	x4, x21
0x10141d8ac:  2d 21 1c 94   bl	j__objc_msgSend(x0, "didStartPlayingUnauthorizedSoundOnTag:withError:forClient:")
0x10141d8b0:  0d 00 00 14   b	loc_10141d8e4 ; ⤵ 0x34
0x10141d8b4:  ; loc_10141d8b4
0x10141d8b4:  1f 0c 00 71   cmp	w0, #0x3
0x10141d8b8:  60 00 00 54   b.eq	loc_10141d8c4 ; ⤵ 0xc
0x10141d8bc:  1f 14 00 71   cmp	w0, #0x5
0x10141d8c0:  21 01 00 54   b.ne	loc_10141d8e4 ; ⤵ 0x24
0x10141d8c4:  ; loc_10141d8c4
0x10141d8c4:  94 9a 40 f9   ldr	x20, [x20, #0x130]
0x10141d8c8:  e0 03 13 aa   mov	x0, x19
0x10141d8cc:  3d 02 1d 94   bl	j__objc_msgSend(x0, "uuid")
0x10141d8d0:  e2 03 00 aa   mov	x2, x0
0x10141d8d4:  e0 03 14 aa   mov	x0, x20
0x10141d8d8:  03 00 80 d2   mov	x3, #0
0x10141d8dc:  e4 03 15 aa   mov	x4, x21
0x10141d8e0:  30 21 1c 94   bl	j__objc_msgSend(x0, "didStartRangingOnTag:error:forClient:")
0x10141d8e4:  ; loc_10141d8e4
0x10141d8e4:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x10141d8e8:  a9 7b 00 b0   adrp	x9, 0x102392000
0x10141d8ec:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10141d8f0:  29 01 40 f9   ldr	x9, [x9]
0x10141d8f4:  3f 01 08 eb   cmp	x9, x8
0x10141d8f8:  41 02 00 54   b.ne	loc_10141d940 ; ⤵ 0x48
0x10141d8fc:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10141d900:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10141d904:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10141d908:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x10141d90c:  ff c3 01 91   add	sp, sp, #0x70
0x10141d910:  ff 0f 5f d6   retab
0x10141d914:  ; loc_10141d914
0x10141d914:  94 9a 40 f9   ldr	x20, [x20, #0x130]
0x10141d918:  e0 03 13 aa   mov	x0, x19
0x10141d91c:  29 02 1d 94   bl	j__objc_msgSend(x0, "uuid")
0x10141d920:  e2 03 00 aa   mov	x2, x0
0x10141d924:  e0 03 14 aa   mov	x0, x20
0x10141d928:  03 00 80 d2   mov	x3, #0
0x10141d92c:  e4 03 15 aa   mov	x4, x21
0x10141d930:  fc 20 1c 94   bl	j__objc_msgSend(x0, "didStartPlayingSoundOnTag:withError:forClient:")
0x10141d934:  ec ff ff 17   b	loc_10141d8e4 ; ⤴ -0x50
0x10141d938:  ; loc_10141d938
0x10141d938:  9f c8 1b 94   bl	0x101b0fbb4
0x10141d93c:  7a ff ff 17   b	loc_10141d724 ; ⤴ -0x218
0x10141d940:  ; loc_10141d940
0x10141d940:  00 de 1b 94   bl	j____stack_chk_fail

+[CLDurianService convertBatteryStatus:]:
0x10141d944:  48 04 40 92   and	x8, x2, #0x3
0x10141d948:  89 45 00 b0   adrp	x9, 0x101cce000
0x10141d94c:  29 21 34 91   add	x9, x9, #0xd08
0x10141d950:  20 79 68 f8   ldr	x0, [x9, x8, lsl #0x3]
0x10141d954:  c0 03 5f d6   ret

-[CLDurianService device:didReceiveHawkeyeDataFragment:duringActiveTask:]:
0x10141d958:  7f 23 03 d5   pacibsp

