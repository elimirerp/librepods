
-[CLDurianDeviceManager handleConnectedPeripheral:forDevice:]:
0x1014777fc:  7f 23 03 d5   pacibsp
0x101477800:  ff c3 06 d1   sub	sp, sp, #0x1b0
0x101477804:  e9 23 14 6d   stp	d9, d8, [sp, #0x140]
0x101477808:  fc 6f 15 a9   stp	x28, x27, [sp, #0x150]
0x10147780c:  fa 67 16 a9   stp	x26, x25, [sp, #0x160]
0x101477810:  f8 5f 17 a9   stp	x24, x23, [sp, #0x170]
0x101477814:  f6 57 18 a9   stp	x22, x21, [sp, #0x180]
0x101477818:  f4 4f 19 a9   stp	x20, x19, [sp, #0x190]
0x10147781c:  fd 7b 1a a9   stp	fp, lr, [sp, #0x1a0]
0x101477820:  fd 83 06 91   add	fp, sp, #0x1a0
0x101477824:  f3 03 03 aa   mov	x19, x3
0x101477828:  f5 03 02 aa   mov	x21, x2
0x10147782c:  f4 03 00 aa   mov	x20, x0
0x101477830:  c8 78 00 f0   adrp	x8, 0x102392000
0x101477834:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101477838:  08 01 40 f9   ldr	x8, [x8]
0x10147783c:  a8 03 19 f8   stur	x8, [fp, #-0x70]
0x101477840:  e0 03 03 aa   mov	x0, x3
0x101477844:  67 89 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101477848:  f6 03 00 aa   mov	x22, x0
0x10147784c:  00 e4 00 6f   movi	v0.2d, #0
0x101477850:  e0 83 00 ad   stp	q0, q0, [sp, #0x10]
0x101477854:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x101477858:  e2 21 1b 94   bl	j__objc_msgSend(x0, "possiblePeripherals")
0x10147785c:  f7 03 00 aa   mov	x23, x0
0x101477860:  e2 43 00 91   add	x2, sp, #0x10
0x101477864:  e3 c3 02 91   add	x3, sp, #0xb0
0x101477868:  04 02 80 52   mov	w4, #0x10
0x10147786c:  a5 a7 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x101477870:  20 05 00 b4   cbz	x0, loc_101477914 ; ⤵ 0xa4
0x101477874:  f8 03 00 aa   mov	x24, x0
0x101477878:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10147787c:  1b 01 40 f9   ldr	x27, [x8]
0x101477880:  ; loc_101477880
0x101477880:  1c 00 80 d2   mov	x28, #0
0x101477884:  ; loc_101477884
0x101477884:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x101477888:  08 01 40 f9   ldr	x8, [x8]
0x10147788c:  1f 01 1b eb   cmp	x8, x27
0x101477890:  60 00 00 54   b.eq	loc_10147789c ; ⤵ 0xc
0x101477894:  e0 03 17 aa   mov	x0, x23
0x101477898:  9a 79 1a 94   bl	j__objc_enumerationMutation
0x10147789c:  ; loc_10147789c
0x10147789c:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x1014778a0:  19 79 7c f8   ldr	x25, [x8, x28, lsl #0x3]
0x1014778a4:  e0 03 15 aa   mov	x0, x21
0x1014778a8:  5e e3 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x1014778ac:  fa 03 00 aa   mov	x26, x0
0x1014778b0:  e0 03 19 aa   mov	x0, x25
0x1014778b4:  5b e3 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x1014778b8:  e2 03 00 aa   mov	x2, x0
0x1014778bc:  e0 03 1a aa   mov	x0, x26
0x1014778c0:  28 fc 1a 94   bl	j__objc_msgSend(x0, "isEqual:")
0x1014778c4:  40 01 00 37   tbnz	w0, #0, loc_1014778ec ; ⤵ 0x28
0x1014778c8:  e0 03 13 aa   mov	x0, x19
0x1014778cc:  3d 9a 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x1014778d0:  e3 03 00 aa   mov	x3, x0
0x1014778d4:  e0 03 14 aa   mov	x0, x20
0x1014778d8:  e2 03 19 aa   mov	x2, x25
0x1014778dc:  81 98 1a 94   bl	j__objc_msgSend(x0, "cancelPeripheralConnection:forUUID:")
0x1014778e0:  e0 03 14 aa   mov	x0, x20
0x1014778e4:  e2 03 19 aa   mov	x2, x25
0x1014778e8:  46 98 1a 94   bl	j__objc_msgSend(x0, "cancelConnectionTimeoutForPeripheral:")
0x1014778ec:  ; loc_1014778ec
0x1014778ec:  9c 07 00 91   add	x28, x28, #0x1
0x1014778f0:  1f 03 1c eb   cmp	x24, x28
0x1014778f4:  81 fc ff 54   b.ne	loc_101477884 ; ⤴ -0x70
0x1014778f8:  e2 43 00 91   add	x2, sp, #0x10
0x1014778fc:  e3 c3 02 91   add	x3, sp, #0xb0
0x101477900:  e0 03 17 aa   mov	x0, x23
0x101477904:  04 02 80 52   mov	w4, #0x10
0x101477908:  7e a7 1a 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10147790c:  f8 03 00 aa   mov	x24, x0
0x101477910:  80 fb ff b5   cbnz	x0, loc_101477880 ; ⤴ -0x90
0x101477914:  ; loc_101477914
0x101477914:  e0 03 16 aa   mov	x0, x22
0x101477918:  e2 03 15 aa   mov	x2, x21
0x10147791c:  49 12 1b 94   bl	j__objc_msgSend(x0, "nextConnectionMaterialForPeripheral:")
0x101477920:  f7 03 00 aa   mov	x23, x0
0x101477924:  e0 03 13 aa   mov	x0, x19
0x101477928:  e2 03 17 aa   mov	x2, x23
0x10147792c:  2d 42 1b 94   bl	j__objc_msgSend(x0, "setActivePeripheralMaterial:")
0x101477930:  e0 03 14 aa   mov	x0, x20
0x101477934:  e2 03 13 aa   mov	x2, x19
0x101477938:  fa 05 1b 94   bl	j__objc_msgSend(x0, "leashMetricsProcessingOnConnectionToDevice:")
0x10147793c:  e0 03 17 aa   mov	x0, x23
0x101477940:  68 8d 1a 94   bl	j__objc_msgSend(x0, "address")
0x101477944:  1f 85 b8 97   bl	0x100298dc0
0x101477948:  fb 03 00 aa   mov	x27, x0
0x10147794c:  5a 88 00 f0   adrp	x26, 0x102582000
0x101477950:  48 3b 46 f9   ldr	x8, [x26, #0xc70] ; data_102582c70 (__DATA.__data)
0x101477954:  1f 05 00 b1   cmn	x8, #0x1
0x101477958:  41 2b 00 54   b.ne	loc_101477ec0 ; ⤵ 0x568
0x10147795c:  ; loc_10147795c
0x10147795c:  5c 88 00 f0   adrp	x28, 0x102582000
0x101477960:  98 3f 46 f9   ldr	x24, [x28, #0xc78] ; data_102582c78 (__DATA.__data)
0x101477964:  e0 03 18 aa   mov	x0, x24
0x101477968:  01 00 80 52   mov	w1, #0
0x10147796c:  61 7a 1a 94   bl	j__os_log_type_enabled
0x101477970:  e0 07 00 34   cbz	w0, loc_101477a6c ; ⤵ 0xfc
0x101477974:  e0 03 13 aa   mov	x0, x19
0x101477978:  12 9a 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x10147797c:  27 84 00 94   bl	0x101498a18
0x101477980:  e0 07 00 f9   str	x0, [sp, #0x8]
0x101477984:  e0 03 16 aa   mov	x0, x22
0x101477988:  26 e3 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147798c:  23 84 00 94   bl	0x101498a18
0x101477990:  e0 03 00 f9   str	x0, [sp]
0x101477994:  e0 03 15 aa   mov	x0, x21
0x101477998:  22 e3 1a 94   bl	j__objc_msgSend(x0, "identifier")
0x10147799c:  1f 84 00 94   bl	0x101498a18
0x1014779a0:  fc 03 00 aa   mov	x28, x0
0x1014779a4:  e0 03 1b aa   mov	x0, x27
0x1014779a8:  a6 7f 1a 94   bl	j__objc_msgSend(x0, "UTF8String")
0x1014779ac:  fb 03 00 aa   mov	x27, x0
0x1014779b0:  e0 03 17 aa   mov	x0, x23
0x1014779b4:  8b 23 1b 94   bl	j__objc_msgSend(x0, "primaryIndex")
0x1014779b8:  aa 93 1b 94   bl	j__objc_msgSend(x0, "unsignedIntValue")
0x1014779bc:  f9 03 00 2a   mov	w25, w0
0x1014779c0:  e0 03 17 aa   mov	x0, x23
0x1014779c4:  6f 3c 1b 94   bl	j__objc_msgSend(x0, "secondaryIndex")
0x1014779c8:  a6 93 1b 94   bl	j__objc_msgSend(x0, "unsignedIntValue")
0x1014779cc:  fa 03 00 2a   mov	w26, w0
0x1014779d0:  e0 03 16 aa   mov	x0, x22
0x1014779d4:  13 92 1a 94   bl	j__objc_msgSend(x0, "attemptDuration")
0x1014779d8:  08 3a 00 b0   adrp	x8, 0x101bb8000
0x1014779dc:  01 f1 42 fd   ldr	d1, [x8, #0x5e0]
0x1014779e0:  e1 53 00 bd   str	s1, [sp, #0x50]
0x1014779e4:  ff 57 00 b9   str	wzr, [sp, #0x54]
0x1014779e8:  48 04 81 52   mov	w8, #0x822
0x1014779ec:  a9 51 00 f0   adrp	x9, 0x101eae000
0x1014779f0:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014779f4:  e8 b3 00 79   strh	w8, [sp, #0x58]
0x1014779f8:  e9 a3 05 f8   stur	x9, [sp, #0x5a]
0x1014779fc:  29 08 81 52   mov	w9, #0x841
0x101477a00:  e9 c7 00 79   strh	w9, [sp, #0x62]
0x101477a04:  ea 2f 40 a9   ldp	x10, x11, [sp]
0x101477a08:  eb 43 06 f8   stur	x11, [sp, #0x64]
0x101477a0c:  e9 db 00 79   strh	w9, [sp, #0x6c]
0x101477a10:  ea e3 06 f8   stur	x10, [sp, #0x6e]
0x101477a14:  e9 ef 00 79   strh	w9, [sp, #0x76]
0x101477a18:  fc 3f 00 f9   str	x28, [sp, #0x78]
0x101477a1c:  5c 88 00 f0   adrp	x28, 0x102582000
0x101477a20:  e8 03 01 79   strh	w8, [sp, #0x80]
0x101477a24:  fb 23 08 f8   stur	x27, [sp, #0x82]
0x101477a28:  48 00 81 52   mov	w8, #0x802
0x101477a2c:  e8 17 01 79   strh	w8, [sp, #0x8a]
0x101477a30:  f9 c3 08 f8   stur	x25, [sp, #0x8c]
0x101477a34:  e8 2b 01 79   strh	w8, [sp, #0x94]
0x101477a38:  fa 63 09 f8   stur	x26, [sp, #0x96]
0x101477a3c:  5a 88 00 f0   adrp	x26, 0x102582000
0x101477a40:  e8 3f 01 79   strh	w8, [sp, #0x9e]
0x101477a44:  e0 53 00 fd   str	d0, [sp, #0xa0]
0x101477a48:  40 5c ff b0   adrp	x0, 0x100000000
0x101477a4c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101477a50:  43 70 00 b0   adrp	x3, 0x102280000
0x101477a54:  63 78 29 91   add	x3, x3, #0xa5e ; "{\"msg%{public}.0s\":\"#durian #connectattempt success\", \"item\":%{private, location:escape_only}@, \"attemptId\":%{private, location:escape_only}@, \"periph\":%{private, location:escape_only}@, \"address\":%{p"...
0x101477a58:  e4 43 01 91   add	x4, sp, #0x50
0x101477a5c:  e1 03 18 aa   mov	x1, x24
0x101477a60:  02 00 80 52   mov	w2, #0
0x101477a64:  05 0b 80 52   mov	w5, #0x58
0x101477a68:  e2 75 1a 94   bl	j___os_log_impl
0x101477a6c:  ; loc_101477a6c
0x101477a6c:  88 86 40 f9   ldr	x8, [x20, #0x108]
0x101477a70:  1f 09 00 f1   cmp	x8, #0x2
0x101477a74:  81 01 00 54   b.ne	loc_101477aa4 ; ⤵ 0x30
0x101477a78:  96 7a 40 f9   ldr	x22, [x20, #0xf0]
0x101477a7c:  e0 03 13 aa   mov	x0, x19
0x101477a80:  28 b2 1a 94   bl	j__objc_msgSend(x0, "deviceTypeName")
0x101477a84:  f8 03 00 aa   mov	x24, x0
0x101477a88:  e0 03 14 aa   mov	x0, x20
0x101477a8c:  cd 09 1b 94   bl	j__objc_msgSend(x0, "loiType")
0x101477a90:  e4 03 00 aa   mov	x4, x0
0x101477a94:  e0 03 16 aa   mov	x0, x22
0x101477a98:  22 00 80 52   mov	w2, #0x1
0x101477a9c:  e3 03 18 aa   mov	x3, x24
0x101477aa0:  d0 82 1b 94   bl	j__objc_msgSend(x0, "submitConnectionSuccessWhileTraveling:forAccessoryType:atLoiType:")
0x101477aa4:  ; loc_101477aa4
0x101477aa4:  59 85 00 90   adrp	x25, 0x10251f000
0x101477aa8:  36 03 24 91   add	x22, x25, #0x900 ; CLDurianMetricManager
0x101477aac:  e0 03 13 aa   mov	x0, x19
0x101477ab0:  5c f8 1a 94   bl	j__objc_msgSend(x0, "intervalSinceLastSearchPartyKeyObservation")
0x101477ab4:  08 1c a0 4e   mov	v8.16b, v0.16b
0x101477ab8:  e0 03 13 aa   mov	x0, x19
0x101477abc:  c9 88 1a 94   bl	j__objc_msgSend(x0, "activeConnectionAttempt")
0x101477ac0:  f8 02 1b 94   bl	j__objc_msgSend(x0, "krMaterials")
0x101477ac4:  e2 03 17 aa   mov	x2, x23
0x101477ac8:  86 a4 1a 94   bl	j__objc_msgSend(x0, "containsObject:")
0x101477acc:  f7 03 00 aa   mov	x23, x0
0x101477ad0:  e0 03 13 aa   mov	x0, x19
0x101477ad4:  7b d2 1a 94   bl	j__objc_msgSend(x0, "getConnectionReason")
0x101477ad8:  f8 03 00 aa   mov	x24, x0
0x101477adc:  e0 03 13 aa   mov	x0, x19
0x101477ae0:  d8 22 1b 94   bl	j__objc_msgSend(x0, "prettyBeaconType")
0x101477ae4:  e4 03 00 aa   mov	x4, x0
0x101477ae8:  e0 03 16 aa   mov	x0, x22
0x101477aec:  00 1d a8 4e   mov	v0.16b, v8.16b
0x101477af0:  e2 03 17 aa   mov	x2, x23
0x101477af4:  e3 03 18 aa   mov	x3, x24
0x101477af8:  a2 82 1b 94   bl	j__objc_msgSend(x0, "submitConnectionAttemptSuccessEvent:krMaterial:connectionReason:deviceType:")
0x101477afc:  20 03 24 91   add	x0, x25, #0x900
0x101477b00:  c3 80 00 90   adrp	x3, 0x10248f000
0x101477b04:  63 c0 3c 91   add	x3, x3, #0xf30 ; "success"
0x101477b08:  e2 03 13 aa   mov	x2, x19
0x101477b0c:  95 82 1b 94   bl	j__objc_msgSend(x0, "submitConnectionAttemptForDevice:withOutcome:")
0x101477b10:  e0 03 13 aa   mov	x0, x19
0x101477b14:  62 00 80 52   mov	w2, #0x3
0x101477b18:  c3 00 80 52   mov	w3, #0x6
0x101477b1c:  04 00 80 d2   mov	x4, #0
0x101477b20:  00 8f 1b 94   bl	j__objc_msgSend(x0, "transitionToState:event:task:")
0x101477b24:  e0 03 13 aa   mov	x0, x19
0x101477b28:  e2 03 15 aa   mov	x2, x21
0x101477b2c:  9d 41 1b 94   bl	j__objc_msgSend(x0, "setActivePeripheral:")
0x101477b30:  e0 03 13 aa   mov	x0, x19
0x101477b34:  02 00 80 52   mov	w2, #0
0x101477b38:  fa 64 1b 94   bl	j__objc_msgSend(x0, "setReconnecting:")
0x101477b3c:  c3 80 00 90   adrp	x3, 0x10248f000
0x101477b40:  63 c0 19 91   add	x3, x3, #0x670 ; "connect"
0x101477b44:  e0 03 14 aa   mov	x0, x20
0x101477b48:  e2 03 13 aa   mov	x2, x19
0x101477b4c:  1d 3b 1b 94   bl	j__objc_msgSend(x0, "scheduleDebounceForDevice:reason:")
0x101477b50:  e0 03 14 aa   mov	x0, x20
0x101477b54:  e2 03 13 aa   mov	x2, x19
0x101477b58:  23 00 80 52   mov	w3, #0x1
0x101477b5c:  24 00 80 52   mov	w4, #0x1
0x101477b60:  78 3e 1b 94   bl	j__objc_msgSend(x0, "sendObservationForDevice:type:includeLocation:")
0x101477b64:  e0 03 13 aa   mov	x0, x19
0x101477b68:  16 fd 1a 94   bl	j__objc_msgSend(x0, "isLeashSlotInUse")
0x101477b6c:  f6 03 00 aa   mov	x22, x0
0x101477b70:  e0 03 14 aa   mov	x0, x20
0x101477b74:  e2 03 13 aa   mov	x2, x19
0x101477b78:  23 00 80 52   mov	w3, #0x1
0x101477b7c:  24 00 80 52   mov	w4, #0x1
0x101477b80:  a0 d5 1a 94   bl	j__objc_msgSend(x0, "getNearOwnerTimeoutForDevice:checkingForNetwork:checkingHele:")
0x101477b84:  f5 03 00 aa   mov	x21, x0
0x101477b88:  e0 03 13 aa   mov	x0, x19
0x101477b8c:  e2 03 15 aa   mov	x2, x21
0x101477b90:  dc 5d 1b 94   bl	j__objc_msgSend(x0, "setNearOwnerTimeout:")
0x101477b94:  e0 03 14 aa   mov	x0, x20
0x101477b98:  e2 03 13 aa   mov	x2, x19
0x101477b9c:  91 56 1b 94   bl	j__objc_msgSend(x0, "setKeyRollIntervalForDevice:")
0x101477ba0:  80 2a 40 f9   ldr	x0, [x20, #0x50]
0x101477ba4:  d6 0c 00 34   cbz	w22, loc_101477d3c ; ⤵ 0x198
0x101477ba8:  e3 80 00 90   adrp	x3, 0x102493000
0x101477bac:  63 c0 32 91   add	x3, x3, #0xcb0 ; "leashed"
0x101477bb0:  e2 03 13 aa   mov	x2, x19
0x101477bb4:  64 00 80 52   mov	w4, #0x3
0x101477bb8:  9a cd 1a 94   bl	j__objc_msgSend(x0, "finishMaintainingDevice:withReason:andCategory:")
0x101477bbc:  c8 78 00 b0   adrp	x8, 0x102390000
0x101477bc0:  08 09 42 f9   ldr	x8, [x8, #0x410] ; __got._SPTagSeparationStateLeashConnected
0x101477bc4:  03 01 40 f9   ldr	x3, [x8]
0x101477bc8:  e0 03 14 aa   mov	x0, x20
0x101477bcc:  e2 03 13 aa   mov	x2, x19
0x101477bd0:  04 00 80 52   mov	w4, #0
0x101477bd4:  c3 3e 1b 94   bl	j__objc_msgSend(x0, "sendSeparationStateForDevice:state:includeLocation:")
0x101477bd8:  96 5a 40 f9   ldr	x22, [x20, #0xb0]
0x101477bdc:  e0 03 13 aa   mov	x0, x19
0x101477be0:  78 99 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101477be4:  e2 03 00 aa   mov	x2, x0
0x101477be8:  e0 03 16 aa   mov	x0, x22
0x101477bec:  03 00 80 d2   mov	x3, #0
0x101477bf0:  84 00 80 52   mov	w4, #0x4
0x101477bf4:  0b 17 1b 94   bl	j__objc_msgSend(x0, "onConnectionStateChangeForDeviceWithUUID:fromState:toState:")
0x101477bf8:  e0 03 14 aa   mov	x0, x20
0x101477bfc:  e2 03 13 aa   mov	x2, x19
0x101477c00:  38 74 1b 94   bl	j__objc_msgSend(x0, "shouldHoldLeashForDevice:")
0x101477c04:  f6 03 00 aa   mov	x22, x0
0x101477c08:  e0 03 14 aa   mov	x0, x20
0x101477c0c:  c5 8d 1b 94   bl	j__objc_msgSend(x0, "totalConnectionCount")
0x101477c10:  f4 03 00 aa   mov	x20, x0
0x101477c14:  e0 03 13 aa   mov	x0, x19
0x101477c18:  52 05 1b 94   bl	j__objc_msgSend(x0, "leashNeedsConfiguring")
0x101477c1c:  c0 00 00 34   cbz	w0, loc_101477c34 ; ⤵ 0x18
0x101477c20:  e0 03 13 aa   mov	x0, x19
0x101477c24:  bf 10 1b 94   bl	j__objc_msgSend(x0, "nearOwnerTimeoutOverride")
0x101477c28:  1f 00 00 71   cmp	w0, #0
0x101477c2c:  e8 01 80 52   mov	w8, #0xf
0x101477c30:  15 01 95 1a   csel	w21, w8, w21, eq
0x101477c34:  ; loc_101477c34
0x101477c34:  48 3b 46 f9   ldr	x8, [x26, #0xc70]
0x101477c38:  1f 05 00 b1   cmn	x8, #0x1
0x101477c3c:  61 14 00 54   b.ne	loc_101477ec8 ; ⤵ 0x28c
0x101477c40:  ; loc_101477c40
0x101477c40:  97 3f 46 f9   ldr	x23, [x28, #0xc78]
0x101477c44:  e0 03 17 aa   mov	x0, x23
0x101477c48:  01 00 80 52   mov	w1, #0
0x101477c4c:  a9 79 1a 94   bl	j__os_log_type_enabled
0x101477c50:  00 05 00 34   cbz	w0, loc_101477cf0 ; ⤵ 0xa0
0x101477c54:  e0 03 13 aa   mov	x0, x19
0x101477c58:  5a 99 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101477c5c:  6f 83 00 94   bl	0x101498a18
0x101477c60:  f8 03 00 aa   mov	x24, x0
0x101477c64:  e0 03 13 aa   mov	x0, x19
0x101477c68:  56 05 1b 94   bl	j__objc_msgSend(x0, "leashState")
0x101477c6c:  e8 38 00 b0   adrp	x8, 0x101b94000
0x101477c70:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x101477c74:  1f 00 00 71   cmp	w0, #0
0x101477c78:  e0 53 00 bd   str	s0, [sp, #0x50]
0x101477c7c:  e8 07 9f 1a   cset	w8, ne
0x101477c80:  ff 57 00 b9   str	wzr, [sp, #0x54]
0x101477c84:  49 04 81 52   mov	w9, #0x822
0x101477c88:  e9 b3 00 79   strh	w9, [sp, #0x58]
0x101477c8c:  a9 51 00 f0   adrp	x9, 0x101eae000
0x101477c90:  29 e1 02 91   add	x9, x9, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101477c94:  e9 a3 05 f8   stur	x9, [sp, #0x5a]
0x101477c98:  29 08 81 52   mov	w9, #0x841
0x101477c9c:  e9 c7 00 79   strh	w9, [sp, #0x62]
0x101477ca0:  f8 43 06 f8   stur	x24, [sp, #0x64]
0x101477ca4:  49 00 81 52   mov	w9, #0x802
0x101477ca8:  e9 db 00 79   strh	w9, [sp, #0x6c]
0x101477cac:  f4 e3 06 f8   stur	x20, [sp, #0x6e]
0x101477cb0:  49 80 80 52   mov	w9, #0x402
0x101477cb4:  e9 ef 00 79   strh	w9, [sp, #0x76]
0x101477cb8:  f6 7b 00 b9   str	w22, [sp, #0x78]
0x101477cbc:  e9 fb 00 79   strh	w9, [sp, #0x7c]
0x101477cc0:  e8 e3 07 b8   stur	w8, [sp, #0x7e]
0x101477cc4:  e9 07 01 79   strh	w9, [sp, #0x82]
0x101477cc8:  f5 87 00 b9   str	w21, [sp, #0x84]
0x101477ccc:  40 5c ff b0   adrp	x0, 0x100000000
0x101477cd0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101477cd4:  43 70 00 b0   adrp	x3, 0x102280000
0x101477cd8:  63 54 2e 91   add	x3, x3, #0xb95 ; "{\"msg%{public}.0s\":\"#durian #leash configuring\", \"item\":%{private, location:escape_only}@, \"totalConnectionCount\":%{public}lu, \"shouldHoldLeash\":%{public}hhd, \"leashstate\":%{public}hhd, \"nearowner\":%{"...
0x101477cdc:  e4 43 01 91   add	x4, sp, #0x50
0x101477ce0:  e1 03 17 aa   mov	x1, x23
0x101477ce4:  02 00 80 52   mov	w2, #0
0x101477ce8:  05 07 80 52   mov	w5, #0x38
0x101477cec:  41 75 1a 94   bl	j___os_log_impl
0x101477cf0:  ; loc_101477cf0
0x101477cf0:  e0 03 13 aa   mov	x0, x19
0x101477cf4:  1b 05 1b 94   bl	j__objc_msgSend(x0, "leashNeedsConfiguring")
0x101477cf8:  a0 04 00 34   cbz	w0, loc_101477d8c ; ⤵ 0x94
0x101477cfc:  e0 03 13 aa   mov	x0, x19
0x101477d00:  e2 03 15 aa   mov	x2, x21
0x101477d04:  47 a9 1a 94   bl	j__objc_msgSend(x0, "createSetNearOwnerTimeoutTaskInSeconds:")
0x101477d08:  e2 03 00 aa   mov	x2, x0
0x101477d0c:  e0 03 13 aa   mov	x0, x19
0x101477d10:  9c be 1a 94   bl	j__objc_msgSend(x0, "enqueueTask:")
0x101477d14:  e0 03 13 aa   mov	x0, x19
0x101477d18:  22 00 80 52   mov	w2, #0x1
0x101477d1c:  51 a9 1a 94   bl	j__objc_msgSend(x0, "createSetPersistentConnectionTaskWithState:")
0x101477d20:  e2 03 00 aa   mov	x2, x0
0x101477d24:  e0 03 13 aa   mov	x0, x19
0x101477d28:  96 be 1a 94   bl	j__objc_msgSend(x0, "enqueueTask:")
0x101477d2c:  e0 03 13 aa   mov	x0, x19
0x101477d30:  62 00 80 52   mov	w2, #0x3
0x101477d34:  43 58 1b 94   bl	j__objc_msgSend(x0, "setLeashState:")
0x101477d38:  15 00 00 14   b	loc_101477d8c ; ⤵ 0x54
0x101477d3c:  ; loc_101477d3c
0x101477d3c:  e3 80 00 90   adrp	x3, 0x102493000
0x101477d40:  63 40 33 91   add	x3, x3, #0xcd0 ; "performed"
0x101477d44:  e2 03 13 aa   mov	x2, x19
0x101477d48:  64 00 80 52   mov	w4, #0x3
0x101477d4c:  35 cd 1a 94   bl	j__objc_msgSend(x0, "finishMaintainingDevice:withReason:andCategory:")
0x101477d50:  c8 78 00 b0   adrp	x8, 0x102390000
0x101477d54:  08 05 42 f9   ldr	x8, [x8, #0x408] ; __got._SPTagSeparationStateConnected
0x101477d58:  03 01 40 f9   ldr	x3, [x8]
0x101477d5c:  e0 03 14 aa   mov	x0, x20
0x101477d60:  e2 03 13 aa   mov	x2, x19
0x101477d64:  04 00 80 52   mov	w4, #0
0x101477d68:  5e 3e 1b 94   bl	j__objc_msgSend(x0, "sendSeparationStateForDevice:state:includeLocation:")
0x101477d6c:  94 5a 40 f9   ldr	x20, [x20, #0xb0]
0x101477d70:  e0 03 13 aa   mov	x0, x19
0x101477d74:  13 99 1b 94   bl	j__objc_msgSend(x0, "uuid")
0x101477d78:  e2 03 00 aa   mov	x2, x0
0x101477d7c:  e0 03 14 aa   mov	x0, x20
0x101477d80:  03 00 80 d2   mov	x3, #0
0x101477d84:  44 00 80 52   mov	w4, #0x2
0x101477d88:  a6 16 1b 94   bl	j__objc_msgSend(x0, "onConnectionStateChangeForDeviceWithUUID:fromState:toState:")
0x101477d8c:  ; loc_101477d8c
0x101477d8c:  e0 03 13 aa   mov	x0, x19
0x101477d90:  7c 73 1b 94   bl	j__objc_msgSend(x0, "shouldDiscoverHawkeyeServices")
0x101477d94:  a0 03 00 34   cbz	w0, loc_101477e08 ; ⤵ 0x74
0x101477d98:  48 3b 46 f9   ldr	x8, [x26, #0xc70]
0x101477d9c:  1f 05 00 b1   cmn	x8, #0x1
0x101477da0:  81 09 00 54   b.ne	loc_101477ed0 ; ⤵ 0x130
0x101477da4:  ; loc_101477da4
0x101477da4:  94 3f 46 f9   ldr	x20, [x28, #0xc78]
0x101477da8:  e0 03 14 aa   mov	x0, x20
0x101477dac:  01 00 80 52   mov	w1, #0
0x101477db0:  50 79 1a 94   bl	j__os_log_type_enabled
0x101477db4:  60 02 00 34   cbz	w0, loc_101477e00 ; ⤵ 0x4c
0x101477db8:  e8 43 00 b0   adrp	x8, 0x101cf4000
0x101477dbc:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101477dc0:  e0 53 00 bd   str	s0, [sp, #0x50]
0x101477dc4:  ff 57 00 b9   str	wzr, [sp, #0x54]
0x101477dc8:  48 04 81 52   mov	w8, #0x822
0x101477dcc:  e8 b3 00 79   strh	w8, [sp, #0x58]
0x101477dd0:  a8 51 00 f0   adrp	x8, 0x101eae000
0x101477dd4:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101477dd8:  e8 a3 05 f8   stur	x8, [sp, #0x5a]
0x101477ddc:  40 5c ff b0   adrp	x0, 0x100000000
0x101477de0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101477de4:  43 70 00 b0   adrp	x3, 0x102280000
0x101477de8:  63 9c 31 91   add	x3, x3, #0xc67 ; "{\"msg%{public}.0s\":\"#durian cancelling connection timeout and discovering #hawkeye services\"}"
0x101477dec:  e4 43 01 91   add	x4, sp, #0x50
0x101477df0:  e1 03 14 aa   mov	x1, x20
0x101477df4:  02 00 80 52   mov	w2, #0
0x101477df8:  45 02 80 52   mov	w5, #0x12
0x101477dfc:  fd 74 1a 94   bl	j___os_log_impl
0x101477e00:  ; loc_101477e00
0x101477e00:  e0 03 13 aa   mov	x0, x19
0x101477e04:  a7 b9 1a 94   bl	j__objc_msgSend(x0, "discoverHawkeyeService")
0x101477e08:  ; loc_101477e08
0x101477e08:  e0 03 13 aa   mov	x0, x19
0x101477e0c:  65 73 1b 94   bl	j__objc_msgSend(x0, "shouldDiscoverPoshServices")
0x101477e10:  a0 03 00 34   cbz	w0, loc_101477e84 ; ⤵ 0x74
0x101477e14:  48 3b 46 f9   ldr	x8, [x26, #0xc70]
0x101477e18:  1f 05 00 b1   cmn	x8, #0x1
0x101477e1c:  e1 05 00 54   b.ne	loc_101477ed8 ; ⤵ 0xbc
0x101477e20:  ; loc_101477e20
0x101477e20:  94 3f 46 f9   ldr	x20, [x28, #0xc78]
0x101477e24:  e0 03 14 aa   mov	x0, x20
0x101477e28:  01 00 80 52   mov	w1, #0
0x101477e2c:  31 79 1a 94   bl	j__os_log_type_enabled
0x101477e30:  60 02 00 34   cbz	w0, loc_101477e7c ; ⤵ 0x4c
0x101477e34:  e8 43 00 b0   adrp	x8, 0x101cf4000
0x101477e38:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x101477e3c:  e0 53 00 bd   str	s0, [sp, #0x50]
0x101477e40:  ff 57 00 b9   str	wzr, [sp, #0x54]
0x101477e44:  48 04 81 52   mov	w8, #0x822
0x101477e48:  e8 b3 00 79   strh	w8, [sp, #0x58]
0x101477e4c:  a8 51 00 f0   adrp	x8, 0x101eae000
0x101477e50:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101477e54:  e8 a3 05 f8   stur	x8, [sp, #0x5a]
0x101477e58:  40 5c ff b0   adrp	x0, 0x100000000
0x101477e5c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101477e60:  43 70 00 b0   adrp	x3, 0x102280000
0x101477e64:  63 14 33 91   add	x3, x3, #0xcc5 ; "{\"msg%{public}.0s\":\"#durian cancelling connection timeout and discovering #posh services\"}"
0x101477e68:  e4 43 01 91   add	x4, sp, #0x50
0x101477e6c:  e1 03 14 aa   mov	x1, x20
0x101477e70:  02 00 80 52   mov	w2, #0
0x101477e74:  45 02 80 52   mov	w5, #0x12
0x101477e78:  de 74 1a 94   bl	j___os_log_impl
0x101477e7c:  ; loc_101477e7c
0x101477e7c:  e0 03 13 aa   mov	x0, x19
0x101477e80:  90 b9 1a 94   bl	j__objc_msgSend(x0, "discoverPoshService")
0x101477e84:  ; loc_101477e84
0x101477e84:  a8 03 59 f8   ldur	x8, [fp, #-0x70]
0x101477e88:  c9 78 00 f0   adrp	x9, 0x102392000
0x101477e8c:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101477e90:  29 01 40 f9   ldr	x9, [x9]
0x101477e94:  3f 01 08 eb   cmp	x9, x8
0x101477e98:  41 02 00 54   b.ne	loc_101477ee0 ; ⤵ 0x48
0x101477e9c:  fd 7b 5a a9   ldp	fp, lr, [sp, #0x1a0]
0x101477ea0:  f4 4f 59 a9   ldp	x20, x19, [sp, #0x190]
0x101477ea4:  f6 57 58 a9   ldp	x22, x21, [sp, #0x180]
0x101477ea8:  f8 5f 57 a9   ldp	x24, x23, [sp, #0x170]
0x101477eac:  fa 67 56 a9   ldp	x26, x25, [sp, #0x160]
0x101477eb0:  fc 6f 55 a9   ldp	x28, x27, [sp, #0x150]
0x101477eb4:  e9 23 54 6d   ldp	d9, d8, [sp, #0x140]
0x101477eb8:  ff c3 06 91   add	sp, sp, #0x1b0
0x101477ebc:  ff 0f 5f d6   retab
0x101477ec0:  ; loc_101477ec0
0x101477ec0:  c7 60 1a 94   bl	0x101b101dc
0x101477ec4:  a6 fe ff 17   b	loc_10147795c ; ⤴ -0x568
0x101477ec8:  ; loc_101477ec8
0x101477ec8:  c5 60 1a 94   bl	0x101b101dc
0x101477ecc:  5d ff ff 17   b	loc_101477c40 ; ⤴ -0x28c
0x101477ed0:  ; loc_101477ed0
0x101477ed0:  c3 60 1a 94   bl	0x101b101dc
0x101477ed4:  b4 ff ff 17   b	loc_101477da4 ; ⤴ -0x130
0x101477ed8:  ; loc_101477ed8
0x101477ed8:  c1 60 1a 94   bl	0x101b101dc
0x101477edc:  d1 ff ff 17   b	loc_101477e20 ; ⤴ -0xbc
0x101477ee0:  ; loc_101477ee0
0x101477ee0:  98 74 1a 94   bl	j____stack_chk_fail

-[CLDurianDeviceManager handleCanSendDataToPeripheral:]:
0x101477ee4:  7f 23 03 d5   pacibsp
0x101477ee8:  ff 83 01 d1   sub	sp, sp, #0x60
0x101477eec:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x101477ef0:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x101477ef4:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x101477ef8:  fd 43 01 91   add	fp, sp, #0x50
0x101477efc:  f4 03 02 aa   mov	x20, x2
0x101477f00:  f3 03 00 aa   mov	x19, x0

