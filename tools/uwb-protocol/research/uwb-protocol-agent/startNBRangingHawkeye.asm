
+[CLDurianTask startNBRangingHawkeyeTaskWithIRK:]:
0x10144a610:  7f 23 03 d5   pacibsp
0x10144a614:  ff c3 01 d1   sub	sp, sp, #0x70
0x10144a618:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10144a61c:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10144a620:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10144a624:  fd 83 01 91   add	fp, sp, #0x60
0x10144a628:  e0 03 02 aa   mov	x0, x2
0x10144a62c:  48 7a 00 90   adrp	x8, 0x102392000
0x10144a630:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10144a634:  08 01 40 f9   ldr	x8, [x8]
0x10144a638:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x10144a63c:  81 4b 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x10144a640:  f4 03 00 aa   mov	x20, x0
0x10144a644:  35 7a 00 f0   adrp	x21, 0x102391000
0x10144a648:  a0 22 44 f9   ldr	x0, [x21, #0x840] ; __got._OBJC_CLASS_$_NSData
0x10144a64c:  02 00 80 d2   mov	x2, #0
0x10144a650:  03 00 80 d2   mov	x3, #0
0x10144a654:  fb 61 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x10144a658:  e2 03 00 aa   mov	x2, x0
0x10144a65c:  a8 86 00 b0   adrp	x8, 0x10251f000
0x10144a660:  00 61 28 91   add	x0, x8, #0xa18 ; CLHawkeyeTask
0x10144a664:  37 30 1c 94   bl	j__objc_msgSend(x0, "startRoseRangingTaskWithParameters:")
0x10144a668:  f3 03 00 aa   mov	x19, x0
0x10144a66c:  60 0c 00 b4   cbz	x0, loc_10144a7f8 ; ⤵ 0x18c
0x10144a670:  36 7a 00 d0   adrp	x22, 0x102390000
0x10144a674:  c0 36 46 f9   ldr	x0, [x22, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x10144a678:  6a 36 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeFindMyNetworkServiceUUID")
0x10144a67c:  e2 03 00 aa   mov	x2, x0
0x10144a680:  e0 03 13 aa   mov	x0, x19
0x10144a684:  27 1d 1c 94   bl	j__objc_msgSend(x0, "setServiceUUID:")
0x10144a688:  c0 36 46 f9   ldr	x0, [x22, #0xc68]
0x10144a68c:  7d 36 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyePreciseFindingCharacteristicUUID")
0x10144a690:  e2 03 00 aa   mov	x2, x0
0x10144a694:  e0 03 13 aa   mov	x0, x19
0x10144a698:  f2 fb 1b 94   bl	j__objc_msgSend(x0, "setCharacteristicUUID:")
0x10144a69c:  e0 03 13 aa   mov	x0, x19
0x10144a6a0:  02 00 80 52   mov	w2, #0
0x10144a6a4:  07 1b 1c 94   bl	j__objc_msgSend(x0, "setRequiresMutex:")
0x10144a6a8:  e0 03 13 aa   mov	x0, x19
0x10144a6ac:  c2 e1 80 52   mov	w2, #0x70e
0x10144a6b0:  cc 07 1c 94   bl	j__objc_msgSend(x0, "setHawkeyeOpcode:")
0x10144a6b4:  28 00 80 52   mov	w8, #0x1
0x10144a6b8:  e8 97 00 39   strb	w8, [sp, #0x25]
0x10144a6bc:  e0 03 13 aa   mov	x0, x19
0x10144a6c0:  80 96 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x10144a6c4:  e0 9b 00 39   strb	w0, [sp, #0x26]
0x10144a6c8:  e0 03 13 aa   mov	x0, x19
0x10144a6cc:  7d 96 1b 94   bl	j__objc_msgSend(x0, "hawkeyeOpcode")
0x10144a6d0:  08 7c 08 53   lsr	w8, w0, #0x8
0x10144a6d4:  e8 9f 00 39   strb	w8, [sp, #0x27]
0x10144a6d8:  88 02 40 39   ldrb	w8, [x20]
0x10144a6dc:  e8 a3 00 39   strb	w8, [sp, #0x28]
0x10144a6e0:  88 06 40 39   ldrb	w8, [x20, #0x1]
0x10144a6e4:  e8 a7 00 39   strb	w8, [sp, #0x29]
0x10144a6e8:  88 0a 40 39   ldrb	w8, [x20, #0x2]
0x10144a6ec:  e8 ab 00 39   strb	w8, [sp, #0x2a]
0x10144a6f0:  88 0e 40 39   ldrb	w8, [x20, #0x3]
0x10144a6f4:  e8 af 00 39   strb	w8, [sp, #0x2b]
0x10144a6f8:  88 12 40 39   ldrb	w8, [x20, #0x4]
0x10144a6fc:  e8 b3 00 39   strb	w8, [sp, #0x2c]
0x10144a700:  88 16 40 39   ldrb	w8, [x20, #0x5]
0x10144a704:  e8 b7 00 39   strb	w8, [sp, #0x2d]
0x10144a708:  88 1a 40 39   ldrb	w8, [x20, #0x6]
0x10144a70c:  e8 bb 00 39   strb	w8, [sp, #0x2e]
0x10144a710:  88 1e 40 39   ldrb	w8, [x20, #0x7]
0x10144a714:  e8 bf 00 39   strb	w8, [sp, #0x2f]
0x10144a718:  88 22 40 39   ldrb	w8, [x20, #0x8]
0x10144a71c:  e8 c3 00 39   strb	w8, [sp, #0x30]
0x10144a720:  88 26 40 39   ldrb	w8, [x20, #0x9]
0x10144a724:  e8 c7 00 39   strb	w8, [sp, #0x31]
0x10144a728:  88 2a 40 39   ldrb	w8, [x20, #0xa]
0x10144a72c:  e8 cb 00 39   strb	w8, [sp, #0x32]
0x10144a730:  88 2e 40 39   ldrb	w8, [x20, #0xb]
0x10144a734:  e8 cf 00 39   strb	w8, [sp, #0x33]
0x10144a738:  88 32 40 39   ldrb	w8, [x20, #0xc]
0x10144a73c:  e8 d3 00 39   strb	w8, [sp, #0x34]
0x10144a740:  88 36 40 39   ldrb	w8, [x20, #0xd]
0x10144a744:  e8 d7 00 39   strb	w8, [sp, #0x35]
0x10144a748:  88 3a 40 39   ldrb	w8, [x20, #0xe]
0x10144a74c:  e8 db 00 39   strb	w8, [sp, #0x36]
0x10144a750:  88 3e 40 39   ldrb	w8, [x20, #0xf]
0x10144a754:  e8 df 00 39   strb	w8, [sp, #0x37]
0x10144a758:  a0 22 44 f9   ldr	x0, [x21, #0x840]
0x10144a75c:  e2 97 00 91   add	x2, sp, #0x25
0x10144a760:  63 02 80 52   mov	w3, #0x13
0x10144a764:  b7 61 1b 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x10144a768:  e2 03 00 aa   mov	x2, x0
0x10144a76c:  e0 03 13 aa   mov	x0, x19
0x10144a770:  ac 07 1c 94   bl	j__objc_msgSend(x0, "setHawkeyePayload:")
0x10144a774:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a778:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10144a77c:  1f 05 00 b1   cmn	x8, #0x1
0x10144a780:  c1 08 00 54   b.ne	loc_10144a898 ; ⤵ 0x118
0x10144a784:  ; loc_10144a784
0x10144a784:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a788:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10144a78c:  e0 03 14 aa   mov	x0, x20
0x10144a790:  01 00 80 52   mov	w1, #0
0x10144a794:  d7 2e 1b 94   bl	j__os_log_type_enabled
0x10144a798:  80 06 00 34   cbz	w0, loc_10144a868 ; ⤵ 0xd0
0x10144a79c:  e0 03 13 aa   mov	x0, x19
0x10144a7a0:  50 96 1b 94   bl	j__objc_msgSend(x0, "hawkeyePayload")
0x10144a7a4:  48 45 00 d0   adrp	x8, 0x101cf4000
0x10144a7a8:  00 79 44 fd   ldr	d0, [x8, #0x8f0]
0x10144a7ac:  e0 03 00 bd   str	s0, [sp]
0x10144a7b0:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10144a7b4:  48 04 81 52   mov	w8, #0x822
0x10144a7b8:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10144a7bc:  28 53 00 90   adrp	x8, 0x101eae000
0x10144a7c0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10144a7c4:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10144a7c8:  48 08 81 52   mov	w8, #0x842
0x10144a7cc:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10144a7d0:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x10144a7d4:  a0 5d ff d0   adrp	x0, 0x100000000
0x10144a7d8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10144a7dc:  23 71 00 d0   adrp	x3, 0x102270000
0x10144a7e0:  63 14 0e 91   add	x3, x3, #0x385 ; "{\"msg%{public}.0s\":\"#durian #hawkeye #nb nbStartRanging\", \"payload\":%{public, location:escape_only}@}"
0x10144a7e4:  e4 03 00 91   mov	x4, sp
0x10144a7e8:  e1 03 14 aa   mov	x1, x20
0x10144a7ec:  02 00 80 52   mov	w2, #0
0x10144a7f0:  85 03 80 52   mov	w5, #0x1c
0x10144a7f4:  1c 00 00 14   b	loc_10144a864 ; ⤵ 0x70
0x10144a7f8:  ; loc_10144a7f8
0x10144a7f8:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a7fc:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10144a800:  1f 05 00 b1   cmn	x8, #0x1
0x10144a804:  e1 04 00 54   b.ne	loc_10144a8a0 ; ⤵ 0x9c
0x10144a808:  ; loc_10144a808
0x10144a808:  c8 89 00 90   adrp	x8, 0x102582000
0x10144a80c:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10144a810:  e0 03 14 aa   mov	x0, x20
0x10144a814:  01 00 80 52   mov	w1, #0
0x10144a818:  b6 2e 1b 94   bl	j__os_log_type_enabled
0x10144a81c:  60 02 00 34   cbz	w0, loc_10144a868 ; ⤵ 0x4c
0x10144a820:  48 45 00 d0   adrp	x8, 0x101cf4000
0x10144a824:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10144a828:  e0 03 00 bd   str	s0, [sp]
0x10144a82c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10144a830:  48 04 81 52   mov	w8, #0x822
0x10144a834:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10144a838:  28 53 00 90   adrp	x8, 0x101eae000
0x10144a83c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10144a840:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10144a844:  a0 5d ff d0   adrp	x0, 0x100000000
0x10144a848:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10144a84c:  23 71 00 d0   adrp	x3, 0x102270000
0x10144a850:  63 ac 0f 91   add	x3, x3, #0x3eb ; "{\"msg%{public}.0s\":\"#durian #hawkeye #nb nil task, nbStartRanging\"}"
0x10144a854:  e4 03 00 91   mov	x4, sp
0x10144a858:  e1 03 14 aa   mov	x1, x20
0x10144a85c:  02 00 80 52   mov	w2, #0
0x10144a860:  45 02 80 52   mov	w5, #0x12
0x10144a864:  ; loc_10144a864
0x10144a864:  63 2a 1b 94   bl	j___os_log_impl
0x10144a868:  ; loc_10144a868
0x10144a868:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x10144a86c:  49 7a 00 90   adrp	x9, 0x102392000
0x10144a870:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10144a874:  29 01 40 f9   ldr	x9, [x9]
0x10144a878:  3f 01 08 eb   cmp	x9, x8
0x10144a87c:  61 01 00 54   b.ne	loc_10144a8a8 ; ⤵ 0x2c
0x10144a880:  e0 03 13 aa   mov	x0, x19
0x10144a884:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10144a888:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10144a88c:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10144a890:  ff c3 01 91   add	sp, sp, #0x70
0x10144a894:  ff 0f 5f d6   retab
0x10144a898:  ; loc_10144a898
0x10144a898:  8d 15 1b 94   bl	0x101b0fecc
0x10144a89c:  ba ff ff 17   b	loc_10144a784 ; ⤴ -0x118
0x10144a8a0:  ; loc_10144a8a0
0x10144a8a0:  8a 15 1b 94   bl	0x101b0fec8
0x10144a8a4:  d9 ff ff 17   b	loc_10144a808 ; ⤴ -0x9c
0x10144a8a8:  ; loc_10144a8a8
0x10144a8a8:  26 2a 1b 94   bl	j____stack_chk_fail

+[CLDurianTask deinitRangingHawkeyeTask]:
0x10144a8ac:  7f 23 03 d5   pacibsp
0x10144a8b0:  ff c3 01 d1   sub	sp, sp, #0x70
0x10144a8b4:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10144a8b8:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10144a8bc:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10144a8c0:  fd 83 01 91   add	fp, sp, #0x60
0x10144a8c4:  48 7a 00 90   adrp	x8, 0x102392000
0x10144a8c8:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard

