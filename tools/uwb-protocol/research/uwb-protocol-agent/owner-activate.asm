
-[CLDurianDevice activate]:
0x1014555f4:  7f 23 03 d5   pacibsp
0x1014555f8:  ff 03 02 d1   sub	sp, sp, #0x80
0x1014555fc:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x101455600:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x101455604:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x101455608:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x10145560c:  fd c3 01 91   add	fp, sp, #0x70
0x101455610:  f3 03 00 aa   mov	x19, x0
0x101455614:  e8 79 00 b0   adrp	x8, 0x102392000
0x101455618:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10145561c:  08 01 40 f9   ldr	x8, [x8]
0x101455620:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x101455624:  14 60 41 f9   ldr	x20, [x0, #0x2c0]
0x101455628:  3e 12 1b 94   bl	j__objc_msgSend(x0, "activePeripheral")
0x10145562c:  e2 03 00 aa   mov	x2, x0
0x101455630:  e0 03 14 aa   mov	x0, x20
0x101455634:  f3 20 1b 94   bl	j__objc_msgSend(x0, "cancelConnectionTimeoutForPeripheral:")
0x101455638:  7f c2 03 39   strb	wzr, [x19, #0xf0]
0x10145563c:  e0 03 13 aa   mov	x0, x19
0x101455640:  48 d4 1b 94   bl	j__objc_msgSend(x0, "setDesiredConnectionLatency")
0x101455644:  e0 03 13 aa   mov	x0, x19
0x101455648:  82 00 80 52   mov	w2, #0x4
0x10145564c:  e3 00 80 52   mov	w3, #0x7
0x101455650:  04 00 80 d2   mov	x4, #0
0x101455654:  33 18 1c 94   bl	j__objc_msgSend(x0, "transitionToState:event:task:")
0x101455658:  e0 03 13 aa   mov	x0, x19
0x10145565c:  22 00 80 52   mov	w2, #0x1
0x101455660:  e8 ca 1b 94   bl	j__objc_msgSend(x0, "setActivePeripheralReady:")
0x101455664:  75 12 40 f9   ldr	x21, [x19, #0x20]
0x101455668:  68 89 00 b0   adrp	x8, 0x102582000
0x10145566c:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101455670:  1f 05 00 b1   cmn	x8, #0x1
0x101455674:  21 08 00 54   b.ne	loc_101455778 ; ⤵ 0x104
0x101455678:  ; loc_101455678
0x101455678:  68 89 00 b0   adrp	x8, 0x102582000
0x10145567c:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101455680:  e0 03 14 aa   mov	x0, x20
0x101455684:  01 00 80 52   mov	w1, #0
0x101455688:  1a 03 1b 94   bl	j__os_log_type_enabled
0x10145568c:  e0 04 00 34   cbz	w0, loc_101455728 ; ⤵ 0x9c
0x101455690:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101455694:  e1 0c 01 94   bl	0x101498a18
0x101455698:  f6 03 00 aa   mov	x22, x0
0x10145569c:  78 46 41 b9   ldr	w24, [x19, #0x144]
0x1014556a0:  e0 03 15 aa   mov	x0, x21
0x1014556a4:  4f ac 1b 94   bl	j__objc_msgSend(x0, "primaryIndex")
0x1014556a8:  f7 03 00 aa   mov	x23, x0
0x1014556ac:  e0 03 15 aa   mov	x0, x21
0x1014556b0:  34 c5 1b 94   bl	j__objc_msgSend(x0, "secondaryIndex")
0x1014556b4:  e8 39 00 d0   adrp	x8, 0x101b93000
0x1014556b8:  00 e9 47 fd   ldr	d0, [x8, #0xfd0]
0x1014556bc:  e0 03 00 bd   str	s0, [sp]
0x1014556c0:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x1014556c4:  48 04 81 52   mov	w8, #0x822
0x1014556c8:  e8 13 00 79   strh	w8, [sp, #0x8]
0x1014556cc:  c8 52 00 b0   adrp	x8, 0x101eae000
0x1014556d0:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014556d4:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014556d8:  28 08 81 52   mov	w8, #0x841
0x1014556dc:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014556e0:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x1014556e4:  48 80 80 52   mov	w8, #0x402
0x1014556e8:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x1014556ec:  f8 e3 01 b8   stur	w24, [sp, #0x1e]
0x1014556f0:  48 08 81 52   mov	w8, #0x842
0x1014556f4:  e8 47 00 79   strh	w8, [sp, #0x22]
0x1014556f8:  f7 43 02 f8   stur	x23, [sp, #0x24]
0x1014556fc:  e8 5b 00 79   strh	w8, [sp, #0x2c]
0x101455700:  e0 e3 02 f8   stur	x0, [sp, #0x2e]
0x101455704:  40 5d ff f0   adrp	x0, 0x100000000
0x101455708:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145570c:  e3 70 00 d0   adrp	x3, 0x102273000
0x101455710:  63 38 09 91   add	x3, x3, #0x24e ; "{\"msg%{public}.0s\":\"#durian #connection activate\", \"item\":%{private, location:escape_only}@, \"prior lastObserved\":%{public}d, \"primaryIndex\":%{public, location:escape_only}@, \"secondaryIndex\":%{public"...
0x101455714:  e4 03 00 91   mov	x4, sp
0x101455718:  e1 03 14 aa   mov	x1, x20
0x10145571c:  02 00 80 52   mov	w2, #0
0x101455720:  c5 06 80 52   mov	w5, #0x36
0x101455724:  b3 fe 1a 94   bl	j___os_log_impl
0x101455728:  ; loc_101455728
0x101455728:  e0 03 13 aa   mov	x0, x19
0x10145572c:  45 85 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101455730:  c0 00 00 37   tbnz	w0, #0, loc_101455748 ; ⤵ 0x18
0x101455734:  e0 03 13 aa   mov	x0, x19
0x101455738:  02 12 1b 94   bl	j__objc_msgSend(x0, "activePeripheralMaterial")
0x10145573c:  29 ac 1b 94   bl	j__objc_msgSend(x0, "primaryIndex")
0x101455740:  48 1c 1c 94   bl	j__objc_msgSend(x0, "unsignedIntValue")
0x101455744:  60 46 01 b9   str	w0, [x19, #0x144]
0x101455748:  ; loc_101455748
0x101455748:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x10145574c:  e9 79 00 b0   adrp	x9, 0x102392000
0x101455750:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101455754:  29 01 40 f9   ldr	x9, [x9]
0x101455758:  3f 01 08 eb   cmp	x9, x8
0x10145575c:  21 01 00 54   b.ne	loc_101455780 ; ⤵ 0x24
0x101455760:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x101455764:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x101455768:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x10145576c:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x101455770:  ff 03 02 91   add	sp, sp, #0x80
0x101455774:  ff 0f 5f d6   retab
0x101455778:  ; loc_101455778
0x101455778:  22 ea 1a 94   bl	0x101b10000
0x10145577c:  bf ff ff 17   b	loc_101455678 ; ⤴ -0x104
0x101455780:  ; loc_101455780
0x101455780:  70 fe 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice discoverHawkeyeService]:
0x101455784:  7f 23 03 d5   pacibsp
0x101455788:  ff 43 02 d1   sub	sp, sp, #0x90
0x10145578c:  f6 57 06 a9   stp	x22, x21, [sp, #0x60]
0x101455790:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x101455794:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x101455798:  fd 03 02 91   add	fp, sp, #0x80
0x10145579c:  f3 03 00 aa   mov	x19, x0
0x1014557a0:  e8 79 00 b0   adrp	x8, 0x102392000
0x1014557a4:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x1014557a8:  08 01 40 f9   ldr	x8, [x8]
0x1014557ac:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x1014557b0:  d4 79 00 f0   adrp	x20, 0x102390000
0x1014557b4:  80 36 46 f9   ldr	x0, [x20, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x1014557b8:  1a 0a 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeFindMyNetworkServiceUUID")
0x1014557bc:  e0 1f 00 f9   str	x0, [sp, #0x38]
0x1014557c0:  80 36 46 f9   ldr	x0, [x20, #0xc68]
0x1014557c4:  ff 09 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryInformationServiceUUID")
0x1014557c8:  e0 23 00 f9   str	x0, [sp, #0x40]
0x1014557cc:  80 36 46 f9   ldr	x0, [x20, #0xc68]
0x1014557d0:  a4 09 1b 94   bl	j__objc_msgSend(x0, "_cl_HawkeyeAccessoryFirmwareUpdateServiceUUID")
0x1014557d4:  e0 27 00 f9   str	x0, [sp, #0x48]
0x1014557d8:  80 36 46 f9   ldr	x0, [x20, #0xc68]
0x1014557dc:  39 09 1b 94   bl	j__objc_msgSend(x0, "_cl_BtTxPowerServiceUUID")
0x1014557e0:  e0 2b 00 f9   str	x0, [sp, #0x50]
0x1014557e4:  e8 79 00 90   adrp	x8, 0x102391000
0x1014557e8:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x1014557ec:  e2 e3 00 91   add	x2, sp, #0x38
0x1014557f0:  83 00 80 52   mov	w3, #0x4
0x1014557f4:  c3 19 1b 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x1014557f8:  f4 03 00 aa   mov	x20, x0
0x1014557fc:  68 89 00 b0   adrp	x8, 0x102582000
0x101455800:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x101455804:  1f 05 00 b1   cmn	x8, #0x1
0x101455808:  81 06 00 54   b.ne	loc_1014558d8 ; ⤵ 0xd0
0x10145580c:  ; loc_10145580c
0x10145580c:  68 89 00 b0   adrp	x8, 0x102582000
0x101455810:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x101455814:  e0 03 15 aa   mov	x0, x21
0x101455818:  01 00 80 52   mov	w1, #0
0x10145581c:  b5 02 1b 94   bl	j__os_log_type_enabled
0x101455820:  00 04 00 34   cbz	w0, loc_1014558a0 ; ⤵ 0x80
0x101455824:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101455828:  7c 0c 01 94   bl	0x101498a18
0x10145582c:  f6 03 00 aa   mov	x22, x0
0x101455830:  e0 03 14 aa   mov	x0, x20
0x101455834:  ab 2f 1b 94   bl	j__objc_msgSend(x0, "count")
0x101455838:  e8 44 00 f0   adrp	x8, 0x101cf4000
0x10145583c:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101455840:  e0 03 00 bd   str	s0, [sp]
0x101455844:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101455848:  48 04 81 52   mov	w8, #0x822
0x10145584c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101455850:  c8 52 00 b0   adrp	x8, 0x101eae000
0x101455854:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101455858:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145585c:  28 08 81 52   mov	w8, #0x841
0x101455860:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101455864:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x101455868:  49 80 80 52   mov	w9, #0x402
0x10145586c:  e9 3b 00 79   strh	w9, [sp, #0x1c]
0x101455870:  e0 e3 01 b8   stur	w0, [sp, #0x1e]
0x101455874:  e8 47 00 79   strh	w8, [sp, #0x22]
0x101455878:  f4 43 02 f8   stur	x20, [sp, #0x24]
0x10145587c:  40 5d ff f0   adrp	x0, 0x100000000
0x101455880:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101455884:  e3 70 00 d0   adrp	x3, 0x102273000
0x101455888:  63 c0 0c 91   add	x3, x3, #0x330 ; "{\"msg%{public}.0s\":\"#durian #hawkeye requesting service-discovery\", \"item\":%{private, location:escape_only}@, \"count\":%{public}d, \"service\":%{private, location:escape_only}@}"
0x10145588c:  e4 03 00 91   mov	x4, sp
0x101455890:  e1 03 15 aa   mov	x1, x21
0x101455894:  02 00 80 52   mov	w2, #0
0x101455898:  85 05 80 52   mov	w5, #0x2c
0x10145589c:  55 fe 1a 94   bl	j___os_log_impl
0x1014558a0:  ; loc_1014558a0
0x1014558a0:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x1014558a4:  e2 03 14 aa   mov	x2, x20
0x1014558a8:  0e 43 1b 94   bl	j__objc_msgSend(x0, "discoverServices:")
0x1014558ac:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x1014558b0:  e9 79 00 b0   adrp	x9, 0x102392000
0x1014558b4:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x1014558b8:  29 01 40 f9   ldr	x9, [x9]
0x1014558bc:  3f 01 08 eb   cmp	x9, x8
0x1014558c0:  01 01 00 54   b.ne	loc_1014558e0 ; ⤵ 0x20
0x1014558c4:  fd 7b 48 a9   ldp	fp, lr, [sp, #0x80]
0x1014558c8:  f4 4f 47 a9   ldp	x20, x19, [sp, #0x70]
0x1014558cc:  f6 57 46 a9   ldp	x22, x21, [sp, #0x60]
0x1014558d0:  ff 43 02 91   add	sp, sp, #0x90
0x1014558d4:  ff 0f 5f d6   retab
0x1014558d8:  ; loc_1014558d8
0x1014558d8:  cb e9 1a 94   bl	0x101b10004
0x1014558dc:  cc ff ff 17   b	loc_10145580c ; ⤴ -0xd0
0x1014558e0:  ; loc_1014558e0
0x1014558e0:  18 fe 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice discoverPoshService]:
0x1014558e4:  7f 23 03 d5   pacibsp
0x1014558e8:  ff 03 02 d1   sub	sp, sp, #0x80
0x1014558ec:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x1014558f0:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x1014558f4:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x1014558f8:  fd c3 01 91   add	fp, sp, #0x70
0x1014558fc:  f3 03 00 aa   mov	x19, x0
0x101455900:  e8 79 00 b0   adrp	x8, 0x102392000
0x101455904:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101455908:  08 01 40 f9   ldr	x8, [x8]
0x10145590c:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x101455910:  d4 79 00 f0   adrp	x20, 0x102390000
0x101455914:  80 36 46 f9   ldr	x0, [x20, #0xc68] ; __got._OBJC_CLASS_$_CBUUID
0x101455918:  ea 09 1b 94   bl	j__objc_msgSend(x0, "_cl_PoshAccessoryNonOwnerServiceUUID")
0x10145591c:  e0 1f 00 f9   str	x0, [sp, #0x38]
0x101455920:  80 36 46 f9   ldr	x0, [x20, #0xc68]
0x101455924:  e7 08 1b 94   bl	j__objc_msgSend(x0, "_cl_BtTxPowerServiceUUID")
0x101455928:  e0 23 00 f9   str	x0, [sp, #0x40]
0x10145592c:  e8 79 00 90   adrp	x8, 0x102391000
0x101455930:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x101455934:  e2 e3 00 91   add	x2, sp, #0x38
0x101455938:  43 00 80 52   mov	w3, #0x2
0x10145593c:  71 19 1b 94   bl	j__objc_msgSend(x0, "arrayWithObjects:count:")
0x101455940:  f4 03 00 aa   mov	x20, x0
0x101455944:  68 89 00 b0   adrp	x8, 0x102582000
0x101455948:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10145594c:  1f 05 00 b1   cmn	x8, #0x1
0x101455950:  81 06 00 54   b.ne	loc_101455a20 ; ⤵ 0xd0
0x101455954:  ; loc_101455954
0x101455954:  68 89 00 b0   adrp	x8, 0x102582000
0x101455958:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10145595c:  e0 03 15 aa   mov	x0, x21
0x101455960:  01 00 80 52   mov	w1, #0
0x101455964:  63 02 1b 94   bl	j__os_log_type_enabled
0x101455968:  00 04 00 34   cbz	w0, loc_1014559e8 ; ⤵ 0x80
0x10145596c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101455970:  2a 0c 01 94   bl	0x101498a18
0x101455974:  f6 03 00 aa   mov	x22, x0
0x101455978:  e0 03 14 aa   mov	x0, x20
0x10145597c:  59 2f 1b 94   bl	j__objc_msgSend(x0, "count")
0x101455980:  e8 44 00 f0   adrp	x8, 0x101cf4000
0x101455984:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x101455988:  e0 03 00 bd   str	s0, [sp]
0x10145598c:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101455990:  48 04 81 52   mov	w8, #0x822
0x101455994:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101455998:  c8 52 00 b0   adrp	x8, 0x101eae000
0x10145599c:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014559a0:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x1014559a4:  28 08 81 52   mov	w8, #0x841
0x1014559a8:  e8 27 00 79   strh	w8, [sp, #0x12]
0x1014559ac:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x1014559b0:  49 80 80 52   mov	w9, #0x402
0x1014559b4:  e9 3b 00 79   strh	w9, [sp, #0x1c]
0x1014559b8:  e0 e3 01 b8   stur	w0, [sp, #0x1e]
0x1014559bc:  e8 47 00 79   strh	w8, [sp, #0x22]
0x1014559c0:  f4 43 02 f8   stur	x20, [sp, #0x24]
0x1014559c4:  40 5d ff f0   adrp	x0, 0x100000000
0x1014559c8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014559cc:  e3 70 00 d0   adrp	x3, 0x102273000
0x1014559d0:  63 7c 0f 91   add	x3, x3, #0x3df ; "{\"msg%{public}.0s\":\"#durian #posh requesting service-discovery\", \"item\":%{private, location:escape_only}@, \"count\":%{public}d, \"service\":%{private, location:escape_only}@}"
0x1014559d4:  e4 03 00 91   mov	x4, sp
0x1014559d8:  e1 03 15 aa   mov	x1, x21
0x1014559dc:  02 00 80 52   mov	w2, #0
0x1014559e0:  85 05 80 52   mov	w5, #0x2c
0x1014559e4:  03 fe 1a 94   bl	j___os_log_impl
0x1014559e8:  ; loc_1014559e8
0x1014559e8:  60 0e 40 f9   ldr	x0, [x19, #0x18]
0x1014559ec:  e2 03 14 aa   mov	x2, x20
0x1014559f0:  bc 42 1b 94   bl	j__objc_msgSend(x0, "discoverServices:")
0x1014559f4:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x1014559f8:  e9 79 00 b0   adrp	x9, 0x102392000
0x1014559fc:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101455a00:  29 01 40 f9   ldr	x9, [x9]
0x101455a04:  3f 01 08 eb   cmp	x9, x8
0x101455a08:  01 01 00 54   b.ne	loc_101455a28 ; ⤵ 0x20
0x101455a0c:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x101455a10:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x101455a14:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x101455a18:  ff 03 02 91   add	sp, sp, #0x80
0x101455a1c:  ff 0f 5f d6   retab
0x101455a20:  ; loc_101455a20
0x101455a20:  79 e9 1a 94   bl	0x101b10004
0x101455a24:  cc ff ff 17   b	loc_101455954 ; ⤴ -0xd0
0x101455a28:  ; loc_101455a28
0x101455a28:  c6 fd 1a 94   bl	j____stack_chk_fail

+[CLDurianDevice _convertTASPAdvertisementDeviceTypeToSPBeaconType:]:
0x101455a2c:  48 04 00 d1   sub	x8, x2, #0x1
0x101455a30:  1f 09 00 f1   cmp	x8, #0x2
0x101455a34:  a8 00 00 54   b.hi	loc_101455a48 ; ⤵ 0x14
0x101455a38:  e9 7e 00 d0   adrp	x9, 0x102433000
0x101455a3c:  29 81 33 91   add	x9, x9, #0xce0 ; _SPBeaconTypeDurian
0x101455a40:  28 79 68 f8   ldr	x8, [x9, x8, lsl #0x3]
0x101455a44:  03 00 00 14   b	loc_101455a50 ; ⤵ 0xc
0x101455a48:  ; loc_101455a48
0x101455a48:  c8 79 00 f0   adrp	x8, 0x102390000
0x101455a4c:  08 01 42 f9   ldr	x8, [x8, #0x400] ; __got._SPBeaconTypeNone
0x101455a50:  ; loc_101455a50
0x101455a50:  00 01 40 f9   ldr	x0, [x8]
0x101455a54:  c0 03 5f d6   ret

-[CLDurianDevice getBeaconType]:
0x101455a58:  7f 23 03 d5   pacibsp
0x101455a5c:  ff c3 01 d1   sub	sp, sp, #0x70
0x101455a60:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x101455a64:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101455a68:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x101455a6c:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101455a70:  fd 83 01 91   add	fp, sp, #0x60
0x101455a74:  f3 03 00 aa   mov	x19, x0
0x101455a78:  e8 79 00 b0   adrp	x8, 0x102392000
0x101455a7c:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101455a80:  08 01 40 f9   ldr	x8, [x8]
0x101455a84:  e8 17 00 f9   str	x8, [sp, #0x28]
0x101455a88:  00 bc 40 f9   ldr	x0, [x0, #0x178]
0x101455a8c:  60 00 00 b5   cbnz	x0, loc_101455a98 ; ⤵ 0xc
0x101455a90:  60 c2 40 f9   ldr	x0, [x19, #0x180]
0x101455a94:  20 02 00 b4   cbz	x0, loc_101455ad8 ; ⤵ 0x44
0x101455a98:  ; loc_101455a98
0x101455a98:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101455a9c:  e9 79 00 b0   adrp	x9, 0x102392000
0x101455aa0:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101455aa4:  29 01 40 f9   ldr	x9, [x9]
0x101455aa8:  3f 01 08 eb   cmp	x9, x8
0x101455aac:  c1 0e 00 54   b.ne	loc_101455c84 ; ⤵ 0x1d8
0x101455ab0:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101455ab4:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101455ab8:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101455abc:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101455ac0:  ff c3 01 91   add	sp, sp, #0x70
0x101455ac4:  ff 23 03 d5   autibsp
0x101455ac8:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101455acc:  50 00 f0 b6   tbz	x16, #0x3e, loc_101455ad4 ; ⤵ 0x8
0x101455ad0:  20 8e 38 d4   brk	#0xc471
0x101455ad4:  ; loc_101455ad4
0x101455ad4:  43 18 1c 14   b	j__objc_msgSend(x0, "type")
0x101455ad8:  ; loc_101455ad8
0x101455ad8:  60 3e 41 f9   ldr	x0, [x19, #0x278]
0x101455adc:  c0 02 00 b4   cbz	x0, loc_101455b34 ; ⤵ 0x58
0x101455ae0:  48 86 00 d0   adrp	x8, 0x10251f000
0x101455ae4:  13 c1 36 91   add	x19, x8, #0xdb0 ; CLDurianDevice
0x101455ae8:  06 3a 1b 94   bl	j__objc_msgSend(x0, "deviceType")
0x101455aec:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101455af0:  e9 79 00 b0   adrp	x9, 0x102392000
0x101455af4:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101455af8:  29 01 40 f9   ldr	x9, [x9]
0x101455afc:  3f 01 08 eb   cmp	x9, x8
0x101455b00:  21 0c 00 54   b.ne	loc_101455c84 ; ⤵ 0x184
0x101455b04:  e2 03 00 aa   mov	x2, x0
0x101455b08:  e0 03 13 aa   mov	x0, x19
0x101455b0c:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101455b10:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101455b14:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101455b18:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101455b1c:  ff c3 01 91   add	sp, sp, #0x70
0x101455b20:  ff 23 03 d5   autibsp
0x101455b24:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101455b28:  50 00 f0 b6   tbz	x16, #0x3e, loc_101455b30 ; ⤵ 0x8
0x101455b2c:  20 8e 38 d4   brk	#0xc471
0x101455b30:  ; loc_101455b30
0x101455b30:  dc 09 1b 14   b	j__objc_msgSend(x0, "_convertTASPAdvertisementDeviceTypeToSPBeaconType:")
0x101455b34:  ; loc_101455b34
0x101455b34:  77 89 00 b0   adrp	x23, 0x102582000
0x101455b38:  e8 3a 46 f9   ldr	x8, [x23, #0xc70] ; data_102582c70 (__DATA.__data)
0x101455b3c:  1f 05 00 b1   cmn	x8, #0x1
0x101455b40:  a1 09 00 54   b.ne	loc_101455c74 ; ⤵ 0x134
0x101455b44:  ; loc_101455b44
0x101455b44:  78 89 00 b0   adrp	x24, 0x102582000
0x101455b48:  14 3f 46 f9   ldr	x20, [x24, #0xc78] ; data_102582c78 (__DATA.__data)
0x101455b4c:  e0 03 14 aa   mov	x0, x20
0x101455b50:  01 02 80 52   mov	w1, #0x10
0x101455b54:  e7 01 1b 94   bl	j__os_log_type_enabled
0x101455b58:  f6 44 00 f0   adrp	x22, 0x101cf4000
0x101455b5c:  d5 52 00 b0   adrp	x21, 0x101eae000
0x101455b60:  b5 e2 02 91   add	x21, x21, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101455b64:  00 03 00 34   cbz	w0, loc_101455bc4 ; ⤵ 0x60
0x101455b68:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101455b6c:  ab 0b 01 94   bl	0x101498a18
0x101455b70:  c0 fe 47 fd   ldr	d0, [x22, #0xff8]
0x101455b74:  e0 03 00 bd   str	s0, [sp]
0x101455b78:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101455b7c:  48 04 81 52   mov	w8, #0x822
0x101455b80:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101455b84:  f5 a3 00 f8   stur	x21, [sp, #0xa]
0x101455b88:  28 08 81 52   mov	w8, #0x841
0x101455b8c:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101455b90:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101455b94:  40 5d ff f0   adrp	x0, 0x100000000
0x101455b98:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101455b9c:  e3 70 00 d0   adrp	x3, 0x102273000
0x101455ba0:  63 2c 12 91   add	x3, x3, #0x48b ; "{\"msg%{public}.0s\":\"#durian beacon type requested with no valid beacon\", \"item\":%{private, location:escape_only}@}"
0x101455ba4:  e4 03 00 91   mov	x4, sp
0x101455ba8:  e1 03 14 aa   mov	x1, x20
0x101455bac:  02 02 80 52   mov	w2, #0x10
0x101455bb0:  85 03 80 52   mov	w5, #0x1c
0x101455bb4:  8f fd 1a 94   bl	j___os_log_impl
0x101455bb8:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x101455bbc:  1f 05 00 b1   cmn	x8, #0x1
0x101455bc0:  e1 05 00 54   b.ne	loc_101455c7c ; ⤵ 0xbc
0x101455bc4:  ; loc_101455bc4
0x101455bc4:  14 3f 46 f9   ldr	x20, [x24, #0xc78]
0x101455bc8:  e0 03 14 aa   mov	x0, x20
0x101455bcc:  cd 01 1b 94   bl	j__os_signpost_enabled
0x101455bd0:  40 03 00 34   cbz	w0, loc_101455c38 ; ⤵ 0x68
0x101455bd4:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101455bd8:  90 0b 01 94   bl	0x101498a18
0x101455bdc:  c0 fe 47 fd   ldr	d0, [x22, #0xff8]
0x101455be0:  e0 03 00 bd   str	s0, [sp]
0x101455be4:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101455be8:  48 04 81 52   mov	w8, #0x822
0x101455bec:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101455bf0:  f5 a3 00 f8   stur	x21, [sp, #0xa]
0x101455bf4:  28 08 81 52   mov	w8, #0x841
0x101455bf8:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101455bfc:  e0 43 01 f8   stur	x0, [sp, #0x14]
0x101455c00:  40 5d ff f0   adrp	x0, 0x100000000
0x101455c04:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101455c08:  e4 70 00 d0   adrp	x4, 0x102273000
0x101455c0c:  84 f8 13 91   add	x4, x4, #0x4fe ; "#durian beacon type requested with no valid beacon"
0x101455c10:  e5 70 00 d0   adrp	x5, 0x102273000
0x101455c14:  a5 2c 12 91   add	x5, x5, #0x48b ; "{\"msg%{public}.0s\":\"#durian beacon type requested with no valid beacon\", \"item\":%{private, location:escape_only}@}"
0x101455c18:  e3 eb 03 b2   mov	x3, #0xeeeeeeeeeeeeeeee
0x101455c1c:  43 56 b6 f2   movk	x3, #0xb2b2, lsl #0x10
0x101455c20:  a3 16 d6 f2   movk	x3, #0xb0b5, lsl #0x20
0x101455c24:  e6 03 00 91   mov	x6, sp
0x101455c28:  e1 03 14 aa   mov	x1, x20
0x101455c2c:  02 00 80 52   mov	w2, #0
0x101455c30:  87 03 80 52   mov	w7, #0x1c
0x101455c34:  77 fd 1a 94   bl	j___os_signpost_emit_with_name_impl
0x101455c38:  ; loc_101455c38
0x101455c38:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101455c3c:  e9 79 00 b0   adrp	x9, 0x102392000
0x101455c40:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101455c44:  29 01 40 f9   ldr	x9, [x9]
0x101455c48:  3f 01 08 eb   cmp	x9, x8
0x101455c4c:  c1 01 00 54   b.ne	loc_101455c84 ; ⤵ 0x38
0x101455c50:  c8 79 00 f0   adrp	x8, 0x102390000
0x101455c54:  08 01 42 f9   ldr	x8, [x8, #0x400] ; __got._SPBeaconTypeNone
0x101455c58:  00 01 40 f9   ldr	x0, [x8]
0x101455c5c:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x101455c60:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101455c64:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101455c68:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101455c6c:  ff c3 01 91   add	sp, sp, #0x70
0x101455c70:  ff 0f 5f d6   retab
0x101455c74:  ; loc_101455c74
0x101455c74:  e3 e8 1a 94   bl	0x101b10000
0x101455c78:  b3 ff ff 17   b	loc_101455b44 ; ⤴ -0x134
0x101455c7c:  ; loc_101455c7c
0x101455c7c:  e2 e8 1a 94   bl	0x101b10004
0x101455c80:  d1 ff ff 17   b	loc_101455bc4 ; ⤴ -0xbc
0x101455c84:  ; loc_101455c84
0x101455c84:  2f fd 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice deviceTypeName]:
0x101455c88:  7f 23 03 d5   pacibsp
0x101455c8c:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101455c90:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101455c94:  fd 43 00 91   add	fp, sp, #0x10
0x101455c98:  f3 03 00 aa   mov	x19, x0
0x101455c9c:  e1 80 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x101455ca0:  e8 7f 00 f0   adrp	x8, 0x102454000
0x101455ca4:  08 c1 1a 91   add	x8, x8, #0x6b0 ; "Unknown"
0x101455ca8:  09 82 00 f0   adrp	x9, 0x102498000
0x101455cac:  29 41 08 91   add	x9, x9, #0x210 ; "D"
0x101455cb0:  1f 00 00 71   cmp	w0, #0
0x101455cb4:  34 11 88 9a   csel	x20, x9, x8, ne
0x101455cb8:  e0 03 13 aa   mov	x0, x19
0x101455cbc:  e1 83 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101455cc0:  e8 81 00 b0   adrp	x8, 0x102492000
0x101455cc4:  08 41 3b 91   add	x8, x8, #0xed0 ; "H"
0x101455cc8:  1f 00 00 71   cmp	w0, #0
0x101455ccc:  14 11 94 9a   csel	x20, x8, x20, ne
0x101455cd0:  e0 03 13 aa   mov	x0, x19
0x101455cd4:  f3 83 1b 94   bl	j__objc_msgSend(x0, "isHeleAccessory")
0x101455cd8:  c8 81 00 b0   adrp	x8, 0x10248e000
0x101455cdc:  08 41 3c 91   add	x8, x8, #0xf10 ; "L"
0x101455ce0:  1f 00 00 71   cmp	w0, #0
0x101455ce4:  14 11 94 9a   csel	x20, x8, x20, ne
0x101455ce8:  e0 03 13 aa   mov	x0, x19
0x101455cec:  6d 86 1b 94   bl	j__objc_msgSend(x0, "isPoshAccessory")
0x101455cf0:  e0 00 00 34   cbz	w0, loc_101455d0c ; ⤵ 0x1c
0x101455cf4:  e0 03 13 aa   mov	x0, x19
0x101455cf8:  92 83 1b 94   bl	j__objc_msgSend(x0, "isFindMyNetwork")
0x101455cfc:  e8 81 00 b0   adrp	x8, 0x102492000
0x101455d00:  08 c1 3b 91   add	x8, x8, #0xef0 ; "P"
0x101455d04:  1f 00 00 71   cmp	w0, #0
0x101455d08:  94 12 88 9a   csel	x20, x20, x8, ne
0x101455d0c:  ; loc_101455d0c
0x101455d0c:  e0 03 14 aa   mov	x0, x20
0x101455d10:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101455d14:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101455d18:  ff 0f 5f d6   retab

-[CLDurianDevice productId]:
0x101455d1c:  7f 23 03 d5   pacibsp
0x101455d20:  ff c3 00 d1   sub	sp, sp, #0x30
0x101455d24:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x101455d28:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x101455d2c:  fd 83 00 91   add	fp, sp, #0x20
0x101455d30:  f3 03 00 aa   mov	x19, x0
0x101455d34:  0b 1b 1b 94   bl	j__objc_msgSend(x0, "beacon")
0x101455d38:  62 ac 1b 94   bl	j__objc_msgSend(x0, "productId")
0x101455d3c:  80 01 00 b4   cbz	x0, loc_101455d6c ; ⤵ 0x30
0x101455d40:  e8 79 00 90   adrp	x8, 0x102391000
0x101455d44:  14 c1 45 f9   ldr	x20, [x8, #0xb80] ; __got._OBJC_CLASS_$_NSString
0x101455d48:  e0 03 13 aa   mov	x0, x19
0x101455d4c:  05 1b 1b 94   bl	j__objc_msgSend(x0, "beacon")
0x101455d50:  5c ac 1b 94   bl	j__objc_msgSend(x0, "productId")
0x101455d54:  e0 03 00 f9   str	x0, [sp]
0x101455d58:  e2 81 00 b0   adrp	x2, 0x102492000
0x101455d5c:  42 40 3c 91   add	x2, x2, #0xf10 ; "%X"
0x101455d60:  e0 03 14 aa   mov	x0, x20
0x101455d64:  e7 08 1c 94   bl	j__objc_msgSend(x0, "stringWithFormat:")
0x101455d68:  03 00 00 14   b	loc_101455d74 ; ⤵ 0xc
0x101455d6c:  ; loc_101455d6c
0x101455d6c:  e0 7f 00 f0   adrp	x0, 0x102454000
0x101455d70:  00 c0 1a 91   add	x0, x0, #0x6b0 ; "Unknown"
0x101455d74:  ; loc_101455d74
0x101455d74:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x101455d78:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x101455d7c:  ff c3 00 91   add	sp, sp, #0x30
0x101455d80:  ff 0f 5f d6   retab

-[CLDurianDevice redactedProductId]:
0x101455d84:  7f 23 03 d5   pacibsp
0x101455d88:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x101455d8c:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x101455d90:  fd 43 00 91   add	fp, sp, #0x10
0x101455d94:  f3 03 00 aa   mov	x19, x0
0x101455d98:  f2 1a 1b 94   bl	j__objc_msgSend(x0, "beacon")
0x101455d9c:  e9 21 1c 94   bl	j__objc_msgSend(x0, "vendorId")
0x101455da0:  1f 30 01 f1   cmp	x0, #0x4c
0x101455da4:  21 01 00 54   b.ne	loc_101455dc8 ; ⤵ 0x24
0x101455da8:  e0 03 13 aa   mov	x0, x19
0x101455dac:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101455db0:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101455db4:  ff 23 03 d5   autibsp
0x101455db8:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x101455dbc:  50 00 f0 b6   tbz	x16, #0x3e, loc_101455dc4 ; ⤵ 0x8
0x101455dc0:  20 8e 38 d4   brk	#0xc471
0x101455dc4:  ; loc_101455dc4
0x101455dc4:  3f ac 1b 14   b	j__objc_msgSend(x0, "productId")
0x101455dc8:  ; loc_101455dc8
0x101455dc8:  e0 81 00 b0   adrp	x0, 0x102492000
0x101455dcc:  00 c0 3c 91   add	x0, x0, #0xf30 ; "ThirdParty"
0x101455dd0:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x101455dd4:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x101455dd8:  ff 0f 5f d6   retab

-[CLDurianDevice accessoryTypeName]:
0x101455ddc:  7f 23 03 d5   pacibsp
0x101455de0:  ff c3 02 d1   sub	sp, sp, #0xb0
0x101455de4:  fa 67 06 a9   stp	x26, x25, [sp, #0x60]
0x101455de8:  f8 5f 07 a9   stp	x24, x23, [sp, #0x70]
0x101455dec:  f6 57 08 a9   stp	x22, x21, [sp, #0x80]
0x101455df0:  f4 4f 09 a9   stp	x20, x19, [sp, #0x90]
0x101455df4:  fd 7b 0a a9   stp	fp, lr, [sp, #0xa0]
0x101455df8:  fd 83 02 91   add	fp, sp, #0xa0
0x101455dfc:  f3 03 00 aa   mov	x19, x0
0x101455e00:  e8 79 00 b0   adrp	x8, 0x102392000
0x101455e04:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101455e08:  08 01 40 f9   ldr	x8, [x8]
0x101455e0c:  a8 83 1b f8   stur	x8, [fp, #-0x48]
0x101455e10:  84 80 1b 94   bl	j__objc_msgSend(x0, "isAirTag")
0x101455e14:  f4 03 00 aa   mov	x20, x0
0x101455e18:  f5 7f 00 f0   adrp	x21, 0x102454000
0x101455e1c:  b5 c2 1a 91   add	x21, x21, #0x6b0 ; "Unknown"
0x101455e20:  d6 81 00 d0   adrp	x22, 0x10248f000
0x101455e24:  d6 42 22 91   add	x22, x22, #0x890 ; "Apple"
0x101455e28:  1f 00 00 71   cmp	w0, #0
0x101455e2c:  d7 12 95 9a   csel	x23, x22, x21, ne
0x101455e30:  08 82 00 f0   adrp	x8, 0x102498000
0x101455e34:  08 41 08 91   add	x8, x8, #0x210 ; "D"
0x101455e38:  18 11 95 9a   csel	x24, x8, x21, ne
0x101455e3c:  e0 03 13 aa   mov	x0, x19
0x101455e40:  80 83 1b 94   bl	j__objc_msgSend(x0, "isHawkeyeAccessory")
0x101455e44:  08 00 14 2a   orr	w8, w0, w20
0x101455e48:  e9 81 00 b0   adrp	x9, 0x102492000
0x101455e4c:  29 41 3d 91   add	x9, x9, #0xf50 ; "Accessory"
0x101455e50:  1f 01 00 72   tst	w8, #0x1
0x101455e54:  e8 81 00 b0   adrp	x8, 0x102492000
0x101455e58:  08 c1 3c 91   add	x8, x8, #0xf30 ; "ThirdParty"
0x101455e5c:  34 11 95 9a   csel	x20, x9, x21, ne
0x101455e60:  1f 00 00 71   cmp	w0, #0
0x101455e64:  15 11 97 9a   csel	x21, x8, x23, ne
0x101455e68:  e8 81 00 b0   adrp	x8, 0x102492000
0x101455e6c:  08 41 3b 91   add	x8, x8, #0xed0 ; "H"
0x101455e70:  17 11 98 9a   csel	x23, x8, x24, ne
0x101455e74:  e0 03 13 aa   mov	x0, x19
0x101455e78:  8a 83 1b 94   bl	j__objc_msgSend(x0, "isHeleAccessory")
0x101455e7c:  e8 81 00 b0   adrp	x8, 0x102492000
0x101455e80:  08 c1 3d 91   add	x8, x8, #0xf70 ; "HeleAccessory"
0x101455e84:  1f 00 00 71   cmp	w0, #0
0x101455e88:  14 11 94 9a   csel	x20, x8, x20, ne

