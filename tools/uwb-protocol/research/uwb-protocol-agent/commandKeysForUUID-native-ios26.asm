
sub_1011435c4:
0x1011435c4:  7f 23 03 d5   pacibsp
0x1011435c8:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x1011435cc:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x1011435d0:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x1011435d4:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x1011435d8:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x1011435dc:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x1011435e0:  fd 43 01 91   add	fp, sp, #0x50
0x1011435e4:  ff 03 01 d1   sub	sp, sp, #0x40
0x1011435e8:  f3 03 03 aa   mov	x19, x3
0x1011435ec:  f9 03 02 aa   mov	x25, x2
0x1011435f0:  a1 83 19 f8   stur	x1, [fp, #-0x68]
0x1011435f4:  a0 03 18 f8   stur	x0, [fp, #-0x80]
0x1011435f8:  00 40 00 f0   adrp	x0, 0x101946000
0x1011435fc:  00 a0 3f 91   add	x0, x0, #0xfe8 ; data_101946fe8 (__DATA.__data)
0x101143600:  a1 28 00 d0   adrp	x1, 0x101659000
0x101143604:  21 80 2e 91   add	x1, x1, #0xba0
0x101143608:  7b d3 bd 97   bl	0x1000b83f4
0x10114360c:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x101143610:  f1 03 00 aa   mov	x17, x0
0x101143614:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x101143618:  30 1a c1 da   autda	x16, x17
0x10114361c:  09 22 40 f9   ldr	x9, [x16, #0x40]
0x101143620:  28 3d 00 91   add	x8, x9, #0xf
0x101143624:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x101143628:  31 3a 00 f0   adrp	x17, 0x10188a000
0x10114362c:  31 02 3c 91   add	x17, x17, #0xf00 ; __got.___chkstk_darwin
0x101143630:  30 02 40 f9   ldr	x16, [x17]
0x101143634:  11 0a 3f d7   blraa	x16, x17
0x101143638:  e9 03 00 91   mov	x9, sp
0x10114363c:  37 01 08 cb   sub	x23, x9, x8
0x101143640:  ff 02 00 91   mov	sp, x23
0x101143644:  00 00 80 d2   mov	x0, #0
0x101143648:  3c 87 e0 97   bl	0x100965338
0x10114364c:  a0 03 19 f8   stur	x0, [fp, #-0x70]
0x101143650:  e9 03 00 aa   mov	x9, x0
0x101143654:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x101143658:  f0 03 08 aa   mov	x16, x8
0x10114365c:  f1 03 09 aa   mov	x17, x9
0x101143660:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x101143664:  30 1a c1 da   autda	x16, x17
0x101143668:  f1 03 10 aa   mov	x17, x16
0x10114366c:  f1 47 c1 da   xpacd	x17
0x101143670:  1f 02 11 eb   cmp	x16, x17
0x101143674:  40 00 00 54   b.eq	loc_10114367c ; ⤵ 0x8
0x101143678:  40 8e 38 d4   brk	#0xc472
0x10114367c:  ; loc_10114367c
0x10114367c:  fc 03 10 aa   mov	x28, x16
0x101143680:  f0 03 08 aa   mov	x16, x8
0x101143684:  f1 03 09 aa   mov	x17, x9
0x101143688:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10114368c:  30 1a c1 da   autda	x16, x17
0x101143690:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x101143694:  e9 03 08 aa   mov	x9, x8
0x101143698:  31 3a 00 f0   adrp	x17, 0x10188a000
0x10114369c:  31 02 3c 91   add	x17, x17, #0xf00 ; __got.___chkstk_darwin
0x1011436a0:  30 02 40 f9   ldr	x16, [x17]
0x1011436a4:  11 0a 3f d7   blraa	x16, x17
0x1011436a8:  e9 03 00 91   mov	x9, sp
0x1011436ac:  08 3d 00 91   add	x8, x8, #0xf
0x1011436b0:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x1011436b4:  28 01 08 cb   sub	x8, x9, x8
0x1011436b8:  a8 83 17 f8   stur	x8, [fp, #-0x88]
0x1011436bc:  1f 01 00 91   mov	sp, x8
0x1011436c0:  e0 3c 00 90   adrp	x0, 0x1018df000
0x1011436c4:  00 00 05 91   add	x0, x0, #0x140 ; data_1018df140 (__DATA_CONST.__const)
0x1011436c8:  01 03 80 52   mov	w1, #0x18
0x1011436cc:  e2 00 80 52   mov	w2, #0x7
0x1011436d0:  b8 1f 11 94   bl	j__swift_allocObject
0x1011436d4:  a0 03 1a f8   stur	x0, [fp, #-0x60]
0x1011436d8:  13 08 00 f9   str	x19, [x0, #0x10]
0x1011436dc:  b3 83 18 f8   stur	x19, [fp, #-0x78]
0x1011436e0:  e0 03 13 aa   mov	x0, x19
0x1011436e4:  23 1e 11 94   bl	j___Block_copy
0x1011436e8:  aa 17 11 94   bl	j__$sSo13os_log_type_ta0A0E7defaultABvgZ
0x1011436ec:  f6 03 00 aa   mov	x22, x0
0x1011436f0:  08 40 00 f0   adrp	x8, 0x101946000
0x1011436f4:  08 a1 42 f9   ldr	x8, [x8, #0x540] ; data_101946540 (__DATA.__data)
0x1011436f8:  1f 05 00 b1   cmn	x8, #0x1
0x1011436fc:  a1 15 00 54   b.ne	loc_1011439b0 ; ⤵ 0x2b4
0x101143700:  28 46 00 b0   adrp	x8, 0x101a08000
0x101143704:  18 25 40 f9   ldr	x24, [x8, #0x48]
0x101143708:  c0 3e 00 b0   adrp	x0, 0x10191c000
0x10114370c:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x101143710:  41 25 00 d0   adrp	x1, 0x1015ed000
0x101143714:  21 00 19 91   add	x1, x1, #0x640
0x101143718:  37 d3 bd 97   bl	0x1000b83f4
0x10114371c:  f4 03 00 aa   mov	x20, x0
0x101143720:  01 0e 80 52   mov	w1, #0x70
0x101143724:  e2 00 80 52   mov	w2, #0x7
0x101143728:  a2 1f 11 94   bl	j__swift_allocObject
0x10114372c:  f5 03 00 aa   mov	x21, x0
0x101143730:  48 25 00 b0   adrp	x8, 0x1015ec000
0x101143734:  00 71 c1 3d   ldr	q0, [x8, #0x5c0]
0x101143738:  00 04 80 3d   str	q0, [x0, #0x10]
0x10114373c:  e0 03 19 aa   mov	x0, x25
0x101143740:  90 20 11 94   bl	j__swift_getObjectType
0x101143744:  a0 83 1a f8   stur	x0, [fp, #-0x58]
0x101143748:  00 40 00 f0   adrp	x0, 0x101946000
0x10114374c:  00 00 3e 91   add	x0, x0, #0xf80 ; data_101946f80 (__DATA.__data)
0x101143750:  c1 26 00 d0   adrp	x1, 0x10161d000
0x101143754:  21 c0 11 91   add	x1, x1, #0x470 ; "Vs\n"
0x101143758:  27 d3 bd 97   bl	0x1000b83f4
0x10114375c:  e1 03 00 aa   mov	x1, x0
0x101143760:  a0 63 01 d1   sub	x0, fp, #0x58
0x101143764:  2f 15 11 94   bl	j__$sSS10describingSSx_tclufC
0x101143768:  f3 03 00 aa   mov	x19, x0
0x10114376c:  fa 03 01 aa   mov	x26, x1
0x101143770:  1b 3a 00 f0   adrp	x27, 0x101886000
0x101143774:  7b 47 45 f9   ldr	x27, [x27, #0xa88] ; __got._$sSSN
0x101143778:  bb 1e 00 f9   str	x27, [x21, #0x38]
0x10114377c:  01 16 bb 97   bl	0x100008f80
0x101143780:  b9 03 17 f8   stur	x25, [fp, #-0x90]
0x101143784:  f9 03 00 aa   mov	x25, x0
0x101143788:  b3 6a 02 a9   stp	x19, x26, [x21, #0x20]
0x10114378c:  fa 03 18 aa   mov	x26, x24
0x101143790:  68 24 00 f0   adrp	x8, 0x1015d2000
0x101143794:  08 41 20 91   add	x8, x8, #0x810 ; "commandKeys(for:with:completion:)"
0x101143798:  08 81 00 d1   sub	x8, x8, #0x20
0x10114379c:  08 01 41 b2   orr	x8, x8, #0x8000000000000000
0x1011437a0:  bb 02 06 a9   stp	x27, x0, [x21, #0x60]
0x1011437a4:  29 04 80 d2   mov	x9, #0x21
0x1011437a8:  09 00 fa f2   movk	x9, #0xd000, lsl #0x30
0x1011437ac:  a0 26 04 a9   stp	x0, x9, [x21, #0x40]
0x1011437b0:  a8 2a 00 f9   str	x8, [x21, #0x50]
0x1011437b4:  e1 75 ff b0   adrp	x1, 0x100000000
0x1011437b8:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x1011437bc:  e3 23 00 90   adrp	x3, 0x1015bf000
0x1011437c0:  63 00 38 91   add	x3, x3, #0xe00 ; "%{public}@: %{public}s"
0x1011437c4:  e0 03 16 aa   mov	x0, x22
0x1011437c8:  e2 03 18 aa   mov	x2, x24
0x1011437cc:  c4 02 80 52   mov	w4, #0x16
0x1011437d0:  45 00 80 52   mov	w5, #0x2
0x1011437d4:  e6 03 15 aa   mov	x6, x21
0x1011437d8:  aa 10 11 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x1011437dc:  e0 03 15 aa   mov	x0, x21
0x1011437e0:  b8 20 11 94   bl	j__swift_release
0x1011437e4:  a8 83 59 f8   ldur	x8, [fp, #-0x68]
0x1011437e8:  fe 1e 11 94   bl	j__objc_retain_x8
0x1011437ec:  f5 03 00 aa   mov	x21, x0
0x1011437f0:  e8 03 17 aa   mov	x8, x23
0x1011437f4:  68 84 e0 97   bl	0x100964994
0x1011437f8:  88 0f 43 f8   ldr	x8, [x28, #0x30]!
0x1011437fc:  e0 03 17 aa   mov	x0, x23
0x101143800:  21 00 80 52   mov	w1, #0x1
0x101143804:  a2 03 59 f8   ldur	x2, [fp, #-0x70]
0x101143808:  f1 03 1c aa   mov	x17, x28
0x10114380c:  11 1e ec f2   movk	x17, #0x60f0, lsl #0x30
0x101143810:  11 09 3f d7   blraa	x8, x17
0x101143814:  1f 04 00 71   cmp	w0, #0x1
0x101143818:  01 08 00 54   b.ne	loc_101143918 ; ⤵ 0x100
0x10114381c:  01 40 00 f0   adrp	x1, 0x101946000
0x101143820:  21 a0 3f 91   add	x1, x1, #0xfe8 ; data_101946fe8 (__DATA.__data)
0x101143824:  a2 28 00 d0   adrp	x2, 0x101659000
0x101143828:  42 80 2e 91   add	x2, x2, #0xba0
0x10114382c:  e0 03 17 aa   mov	x0, x23
0x101143830:  50 20 bb 97   bl	0x10000b970
0x101143834:  4f 17 11 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x101143838:  f3 03 00 aa   mov	x19, x0
0x10114383c:  e0 03 14 aa   mov	x0, x20
0x101143840:  01 09 80 52   mov	w1, #0x48
0x101143844:  e2 00 80 52   mov	w2, #0x7
0x101143848:  5a 1f 11 94   bl	j__swift_allocObject
0x10114384c:  f4 03 00 aa   mov	x20, x0
0x101143850:  08 25 00 f0   adrp	x8, 0x1015e6000
0x101143854:  00 cd c0 3d   ldr	q0, [x8, #0x330]
0x101143858:  00 04 80 3d   str	q0, [x0, #0x10]
0x10114385c:  bd 1e 11 94   bl	j__objc_retain_x21
0x101143860:  f5 03 00 aa   mov	x21, x0
0x101143864:  b7 26 11 94   bl	j__objc_msgSend(x0, "description")
0x101143868:  fd 03 1d aa   mov	fp, fp
0x10114386c:  a1 1e 11 94   bl	j__objc_retainAutoreleasedReturnValue
0x101143870:  f6 03 00 aa   mov	x22, x0
0x101143874:  b7 14 11 94   bl	j__$sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ
0x101143878:  f7 03 00 aa   mov	x23, x0
0x10114387c:  f8 03 01 aa   mov	x24, x1
0x101143880:  6c 1e 11 94   bl	j__objc_release_x21
0x101143884:  6f 1e 11 94   bl	j__objc_release_x22
0x101143888:  08 3a 00 f0   adrp	x8, 0x101886000
0x10114388c:  08 45 45 f9   ldr	x8, [x8, #0xa88] ; __got._$sSSN
0x101143890:  88 e6 03 a9   stp	x8, x25, [x20, #0x38]
0x101143894:  97 62 02 a9   stp	x23, x24, [x20, #0x20]
0x101143898:  e1 75 ff b0   adrp	x1, 0x100000000
0x10114389c:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x1011438a0:  63 24 00 f0   adrp	x3, 0x1015d2000
0x1011438a4:  63 00 21 91   add	x3, x3, #0x840 ; "Failed to init criteria %@"
0x1011438a8:  e0 03 13 aa   mov	x0, x19
0x1011438ac:  e2 03 1a aa   mov	x2, x26
0x1011438b0:  44 03 80 52   mov	w4, #0x1a
0x1011438b4:  45 00 80 52   mov	w5, #0x2
0x1011438b8:  e6 03 14 aa   mov	x6, x20
0x1011438bc:  71 10 11 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x1011438c0:  e0 03 14 aa   mov	x0, x20
0x1011438c4:  7f 20 11 94   bl	j__swift_release
0x1011438c8:  01 40 00 f0   adrp	x1, 0x101946000
0x1011438cc:  21 c0 3f 91   add	x1, x1, #0xff0 ; data_101946ff0 (__DATA.__data)
0x1011438d0:  02 3a 00 d0   adrp	x2, 0x101885000
0x1011438d4:  42 00 0d 91   add	x2, x2, #0x340 ; __got._OBJC_CLASS_$_SPCommandKey
0x1011438d8:  00 00 80 d2   mov	x0, #0
0x1011438dc:  b7 bf bf 97   bl	0x1001337b8
0x1011438e0:  e1 03 00 aa   mov	x1, x0
0x1011438e4:  00 3a 00 f0   adrp	x0, 0x101886000
0x1011438e8:  00 70 47 f9   ldr	x0, [x0, #0xee0] ; __got.__swiftEmptyArrayStorage
0x1011438ec:  d9 15 11 94   bl	j__$sSa10FoundationE19_bridgeToObjectiveCSo7NSArrayCyF
0x1011438f0:  f3 03 00 aa   mov	x19, x0
0x1011438f4:  a0 83 58 f8   ldur	x0, [fp, #-0x78]
0x1011438f8:  e8 03 00 aa   mov	x8, x0
0x1011438fc:  09 0d 41 f8   ldr	x9, [x8, #0x10]!
0x101143900:  e1 03 13 aa   mov	x1, x19
0x101143904:  28 09 3f d7   blraa	x9, x8
0x101143908:  a0 03 5a f8   ldur	x0, [fp, #-0x60]
0x10114390c:  6d 20 11 94   bl	j__swift_release
0x101143910:  40 1e 11 94   bl	j__objc_release_x19
0x101143914:  1f 00 00 14   b	loc_101143990 ; ⤵ 0x7c
0x101143918:  ; loc_101143918
0x101143918:  e0 03 17 aa   mov	x0, x23
0x10114391c:  b5 83 57 f8   ldur	x21, [fp, #-0x88]
0x101143920:  e1 03 15 aa   mov	x1, x21
0x101143924:  2c 8a e0 97   bl	0x1009661d4
0x101143928:  08 40 00 f0   adrp	x8, 0x101946000
0x10114392c:  08 59 47 f9   ldr	x8, [x8, #0xeb0]
0x101143930:  a9 03 57 f8   ldur	x9, [fp, #-0x90]

