0x101459704:  e0 03 13 aa   mov	x0, x19
0x101459708:  ae 9c 1b 94   bl	j__objc_msgSend(x0, "processAcknowledgedTask")
0x10145970c:  e0 03 13 aa   mov	x0, x19
0x101459710:  3c 02 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459714:  63 3a 1b 94   bl	j__objc_msgSend(x0, "expectsResponse")
0x101459718:  f5 03 00 aa   mov	x21, x0
0x10145971c:  e0 03 13 aa   mov	x0, x19
0x101459720:  38 02 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459724:  e4 03 00 aa   mov	x4, x0
0x101459728:  e0 03 13 aa   mov	x0, x19
0x10145972c:  35 23 00 34   cbz	w21, loc_101459b90 ; ⤵ 0x464
0x101459730:  c2 00 80 52   mov	w2, #0x6
0x101459734:  83 01 80 52   mov	w3, #0xc
0x101459738:  fa 07 1c 94   bl	j__objc_msgSend(x0, "transitionToState:event:task:")
0x10145973c:  60 1e 40 f9   ldr	x0, [x19, #0x38]
0x101459740:  70 47 1b 94   bl	j__objc_msgSend(x0, "firstObject")
0x101459744:  f5 03 00 aa   mov	x21, x0
0x101459748:  e0 03 13 aa   mov	x0, x19
0x10145974c:  2d 02 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459750:  e2 03 00 aa   mov	x2, x0
0x101459754:  e0 03 15 aa   mov	x0, x21
0x101459758:  9a ed 1b 94   bl	j__objc_msgSend(x0, "shouldPreemptTask:")
0x10145975c:  00 2a 00 34   cbz	w0, loc_101459c9c ; ⤵ 0x540
0x101459760:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x101459764:  1f 05 00 b1   cmn	x8, #0x1
0x101459768:  81 86 00 54   b.ne	loc_10145a838 ; ⤵ 0x10d0
0x10145976c:  95 3f 46 f9   ldr	x21, [x28, #0xc78]
0x101459770:  e0 03 15 aa   mov	x0, x21
0x101459774:  01 00 80 52   mov	w1, #0
0x101459778:  de f2 1a 94   bl	j__os_log_type_enabled
0x10145977c:  40 04 00 34   cbz	w0, loc_101459804 ; ⤵ 0x88
0x101459780:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x101459784:  a5 fc 00 94   bl	0x101498a18
0x101459788:  f6 03 00 aa   mov	x22, x0
0x10145978c:  60 1e 40 f9   ldr	x0, [x19, #0x38]
0x101459790:  5c 47 1b 94   bl	j__objc_msgSend(x0, "firstObject")
0x101459794:  f7 03 00 aa   mov	x23, x0
0x101459798:  e0 03 13 aa   mov	x0, x19
0x10145979c:  19 02 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x1014597a0:  c8 44 00 f0   adrp	x8, 0x101cf4000
0x1014597a4:  00 7d 46 fd   ldr	d0, [x8, #0xcf8]
0x1014597a8:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x1014597ac:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x1014597b0:  48 04 81 52   mov	w8, #0x822
0x1014597b4:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x1014597b8:  a8 52 00 b0   adrp	x8, 0x101eae000
0x1014597bc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014597c0:  48 a3 00 f8   stur	x8, [x26, #0xa]
0x1014597c4:  28 08 81 52   mov	w8, #0x841
0x1014597c8:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x1014597cc:  56 43 01 f8   stur	x22, [x26, #0x14]
0x1014597d0:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x1014597d4:  57 e3 01 f8   stur	x23, [x26, #0x1e]
0x1014597d8:  a8 63 17 78   sturh	w8, [fp, #-0x8a]
0x1014597dc:  a0 83 17 f8   stur	x0, [fp, #-0x88]
0x1014597e0:  20 5d ff f0   adrp	x0, 0x100000000
0x1014597e4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014597e8:  c3 70 00 f0   adrp	x3, 0x102274000
0x1014597ec:  63 0c 26 91   add	x3, x3, #0x983 ; "{\"msg%{public}.0s\":\"#durian received data, enqueuing preempted task\", \"item\":%{private, location:escape_only}@, \"pendingTask\":%{private, location:escape_only}@, \"activeTask\":%{private, location:escape"...
0x1014597f0:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x1014597f4:  e1 03 15 aa   mov	x1, x21
0x1014597f8:  02 00 80 52   mov	w2, #0
0x1014597fc:  05 06 80 52   mov	w5, #0x30
0x101459800:  7c ee 1a 94   bl	j___os_log_impl
0x101459804:  ; loc_101459804
0x101459804:  75 22 40 f9   ldr	x21, [x19, #0x40]
0x101459808:  e0 03 13 aa   mov	x0, x19
0x10145980c:  fd 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459810:  e2 03 00 aa   mov	x2, x0
0x101459814:  e0 03 15 aa   mov	x0, x21
0x101459818:  4a 04 1b 94   bl	j__objc_msgSend(x0, "addObject:")
0x10145981c:  e0 03 13 aa   mov	x0, x19
0x101459820:  f8 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459824:  e3 03 00 aa   mov	x3, x0
0x101459828:  e0 03 13 aa   mov	x0, x19
0x10145982c:  42 01 80 52   mov	w2, #0xa
0x101459830:  2c b4 1b 94   bl	j__objc_msgSend(x0, "schedulePreemptedTaskTimeout:forTask:")
0x101459834:  c2 81 00 d0   adrp	x2, 0x102493000
0x101459838:  42 c0 06 91   add	x2, x2, #0x1b0 ; "ackcheck"
0x10145983c:  e0 03 13 aa   mov	x0, x19
0x101459840:  f0 81 1b 94   bl	j__objc_msgSend(x0, "logTaskCounts:")
0x101459844:  e0 00 00 14   b	loc_101459bc4 ; ⤵ 0x380
0x101459848:  e0 03 13 aa   mov	x0, x19
0x10145984c:  ed 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459850:  14 3a 1b 94   bl	j__objc_msgSend(x0, "expectsResponse")
0x101459854:  e0 0e 00 34   cbz	w0, loc_101459a30 ; ⤵ 0x1dc
0x101459858:  e0 03 13 aa   mov	x0, x19
0x10145985c:  e2 03 15 aa   mov	x2, x21
0x101459860:  a8 71 1b 94   bl	j__objc_msgSend(x0, "isActiveTaskOpcode:")
0x101459864:  a0 00 00 37   tbnz	w0, #0, loc_101459878 ; ⤵ 0x14
0x101459868:  e0 03 13 aa   mov	x0, x19
0x10145986c:  e2 03 15 aa   mov	x2, x21
0x101459870:  24 74 1b 94   bl	j__objc_msgSend(x0, "isEndpointTask:")
0x101459874:  e0 0d 00 34   cbz	w0, loc_101459a30 ; ⤵ 0x1bc
0x101459878:  ; loc_101459878
0x101459878:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x10145987c:  1f 05 00 b1   cmn	x8, #0x1
0x101459880:  81 7b 00 54   b.ne	loc_10145a7f0 ; ⤵ 0xf70
0x101459884:  97 3f 46 f9   ldr	x23, [x28, #0xc78]
0x101459888:  e0 03 17 aa   mov	x0, x23
0x10145988c:  01 00 80 52   mov	w1, #0
0x101459890:  98 f2 1a 94   bl	j__os_log_type_enabled
0x101459894:  60 03 00 34   cbz	w0, loc_101459900 ; ⤵ 0x6c
0x101459898:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145989c:  5f fc 00 94   bl	0x101498a18
0x1014598a0:  c8 44 00 f0   adrp	x8, 0x101cf4000
0x1014598a4:  00 3d 44 fd   ldr	d0, [x8, #0x878]
0x1014598a8:  a0 03 15 bc   stur	s0, [fp, #-0xb0]
0x1014598ac:  bf 43 15 b8   stur	wzr, [fp, #-0xac]
0x1014598b0:  48 04 81 52   mov	w8, #0x822
0x1014598b4:  a8 83 15 78   sturh	w8, [fp, #-0xa8]
0x1014598b8:  a8 52 00 b0   adrp	x8, 0x101eae000
0x1014598bc:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x1014598c0:  48 a3 00 f8   stur	x8, [x26, #0xa]
0x1014598c4:  28 08 81 52   mov	w8, #0x841
0x1014598c8:  a8 23 16 78   sturh	w8, [fp, #-0x9e]
0x1014598cc:  40 43 01 f8   stur	x0, [x26, #0x14]
0x1014598d0:  48 80 80 52   mov	w8, #0x402
0x1014598d4:  a8 c3 16 78   sturh	w8, [fp, #-0x94]
0x1014598d8:  55 e3 01 b8   stur	w21, [x26, #0x1e]
0x1014598dc:  20 5d ff f0   adrp	x0, 0x100000000
0x1014598e0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1014598e4:  c3 70 00 f0   adrp	x3, 0x102274000
0x1014598e8:  63 50 2b 91   add	x3, x3, #0xad4 ; "{\"msg%{public}.0s\":\"#durian received response for active task\", \"item\":%{private, location:escape_only}@, \"opcode\":%{public}d}"
0x1014598ec:  a4 c3 02 d1   sub	x4, fp, #0xb0
0x1014598f0:  e1 03 17 aa   mov	x1, x23
0x1014598f4:  02 00 80 52   mov	w2, #0
0x1014598f8:  45 04 80 52   mov	w5, #0x22
0x1014598fc:  3d ee 1a 94   bl	j___os_log_impl
0x101459900:  ; loc_101459900
0x101459900:  e0 03 13 aa   mov	x0, x19
0x101459904:  bf 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x101459908:  e4 03 00 aa   mov	x4, x0
0x10145990c:  e0 03 13 aa   mov	x0, x19
0x101459910:  82 00 80 52   mov	w2, #0x4
0x101459914:  a3 01 80 52   mov	w3, #0xd
0x101459918:  82 07 1c 94   bl	j__objc_msgSend(x0, "transitionToState:event:task:")
0x10145991c:  28 86 00 d0   adrp	x8, 0x10251f000
0x101459920:  00 81 26 91   add	x0, x8, #0x9a0 ; CLDurianCommand
0x101459924:  4b f1 1a 94   bl	j__objc_alloc
0x101459928:  e2 03 16 aa   mov	x2, x22
0x10145992c:  b5 62 1b 94   bl	j__objc_msgSend(x0, "initWithData:")
0x101459930:  f7 03 00 aa   mov	x23, x0
0x101459934:  e0 03 13 aa   mov	x0, x19
0x101459938:  e2 03 15 aa   mov	x2, x21
0x10145993c:  91 74 1b 94   bl	j__objc_msgSend(x0, "isFragmentedUserStats:")
0x101459940:  a0 01 00 34   cbz	w0, loc_101459974 ; ⤵ 0x34
0x101459944:  e0 03 13 aa   mov	x0, x19
0x101459948:  ae 01 1b 94   bl	j__objc_msgSend(x0, "activeTask")
0x10145994c:  f8 03 00 aa   mov	x24, x0
0x101459950:  e0 03 17 aa   mov	x0, x23
0x101459954:  93 96 1b 94   bl	j__objc_msgSend(x0, "payload")
0x101459958:  e2 03 00 aa   mov	x2, x0
0x10145995c:  e0 03 18 aa   mov	x0, x24
0x101459960:  e3 03 15 aa   mov	x3, x21
0x101459964:  0f 08 1b 94   bl	j__objc_msgSend(x0, "appendUserStatsData:opcode:")
0x101459968:  e0 03 18 aa   mov	x0, x24
0x10145996c:  cd 72 1b 94   bl	j__objc_msgSend(x0, "isComplete")
0x101459970:  20 19 00 34   cbz	w0, loc_101459c94 ; ⤵ 0x324
0x101459974:  ; loc_101459974
0x101459974:  e0 03 13 aa   mov	x0, x19
0x101459978:  e2 03 15 aa   mov	x2, x21
0x10145997c:  61 76 1b 94   bl	j__objc_msgSend(x0, "isMultiStatusResponse:")
0x101459980:  34 86 00 d0   adrp	x20, 0x10251f000
0x101459984:  40 29 00 34   cbz	w0, loc_101459eac ; ⤵ 0x528
0x101459988:  80 42 11 91   add	x0, x20, #0x450
0x10145998c:  dd eb 1b 94   bl	j__objc_msgSend(x0, "sharedInstance")
0x101459990:  ac 88 1b 94   bl	j__objc_msgSend(x0, "multiStatusResponseOverride")
0x101459994:  20 28 00 b4   cbz	x0, loc_101459e98 ; ⤵ 0x504
0x101459998:  f8 03 00 aa   mov	x24, x0
0x10145999c:  28 3b 46 f9   ldr	x8, [x25, #0xc70]
0x1014599a0:  1f 05 00 b1   cmn	x8, #0x1
0x1014599a4:  21 74 00 54   b.ne	loc_10145a828 ; ⤵ 0xe84
0x1014599a8:  99 3f 46 f9   ldr	x25, [x28, #0xc78]

