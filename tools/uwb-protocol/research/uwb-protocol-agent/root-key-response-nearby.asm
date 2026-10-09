0x10021a700:  6c 15 00 94   bl	0x10021fcb0
0x10021a704:  80 04 00 34   cbz	w0, loc_10021a794 ; ⤵ 0x90
0x10021a708:  f4 c3 00 91   add	x20, sp, #0x30
0x10021a70c:  e1 c3 00 91   add	x1, sp, #0x30
0x10021a710:  e2 9f 00 91   add	x2, sp, #0x27
0x10021a714:  e0 03 13 aa   mov	x0, x19
0x10021a718:  05 30 00 94   bl	0x10022672c
0x10021a71c:  20 0c 00 34   cbz	w0, loc_10021a8a0 ; ⤵ 0x184
0x10021a720:  f3 53 00 a9   stp	x19, x20, [sp]
0x10021a724:  10 00 00 90   adrp	x16, 0x10021a000
0x10021a728:  10 12 24 91   add	x16, x16, #0x904
0x10021a72c:  f0 23 c1 da   paciza	x16
0x10021a730:  e1 03 10 aa   mov	x1, x16
0x10021a734:  40 17 80 52   mov	w0, #0xba
0x10021a738:  81 2a fd 97   bl	0x10016513c
0x10021a73c:  c0 09 00 35   cbnz	w0, loc_10021a874 ; ⤵ 0x138
0x10021a740:  e8 9f 40 39   ldrb	w8, [sp, #0x27]
0x10021a744:  68 ae 02 39   strb	w8, [x19, #0xab]
0x10021a748:  48 00 80 52   mov	w8, #0x2
0x10021a74c:  68 a2 02 39   strb	w8, [x19, #0xa8]
0x10021a750:  49 00 00 14   b	loc_10021a874 ; ⤵ 0x124
0x10021a754:  40 00 80 52   mov	w0, #0x2
0x10021a758:  61 08 80 52   mov	w1, #0x43
0x10021a75c:  7a 27 fb 97   bl	0x1000e4544
0x10021a760:  a0 08 00 34   cbz	w0, loc_10021a874 ; ⤵ 0x114
0x10021a764:  e0 36 00 90   adrp	x0, 0x1008f6000
0x10021a768:  00 94 04 91   add	x0, x0, #0x125 ; "This handle is not a LE connection, ignoring"
0x10021a76c:  8e aa 00 94   bl	0x1002451a4
0x10021a770:  60 08 80 52   mov	w0, #0x43
0x10021a774:  e9 94 fa 97   bl	0x1000bfb18
0x10021a778:  f3 03 00 aa   mov	x19, x0
0x10021a77c:  01 02 80 52   mov	w1, #0x10
0x10021a780:  ac d3 17 94   bl	j__os_log_type_enabled
0x10021a784:  80 07 00 34   cbz	w0, loc_10021a874 ; ⤵ 0xf0
0x10021a788:  e0 03 13 aa   mov	x0, x19
0x10021a78c:  ca 76 16 94   bl	0x1007b82b4
0x10021a790:  39 00 00 14   b	loc_10021a874 ; ⤵ 0xe4
0x10021a794:  ; loc_10021a794
0x10021a794:  e8 44 00 b0   adrp	x8, 0x100ab7000
0x10021a798:  08 09 45 f9   ldr	x8, [x8, #0xa10] ; "/C"
0x10021a79c:  28 05 00 b4   cbz	x8, loc_10021a840 ; ⤵ 0xa4
0x10021a7a0:  69 de 40 39   ldrb	w9, [x19, #0x37]
0x10021a7a4:  3f 01 00 71   cmp	w9, #0
0x10021a7a8:  09 06 80 52   mov	w9, #0x30
0x10021a7ac:  0a 07 80 52   mov	w10, #0x38
0x10021a7b0:  49 11 89 9a   csel	x9, x10, x9, ne
0x10021a7b4:  ea 44 00 b0   adrp	x10, 0x100ab7000
0x10021a7b8:  43 15 45 f9   ldr	x3, [x10, #0xa28] ; data_100ab7a28 (__DATA.__bss)
0x10021a7bc:  60 02 09 8b   add	x0, x19, x9
0x10021a7c0:  e1 03 15 aa   mov	x1, x21
0x10021a7c4:  e2 03 14 aa   mov	x2, x20
0x10021a7c8:  1f 09 3f d6   blraaz	x8
0x10021a7cc:  e8 a3 00 91   add	x8, sp, #0x28
0x10021a7d0:  ff 23 01 a9   stp	xzr, x8, [sp, #0x10]
0x10021a7d4:  08 01 80 52   mov	w8, #0x8
0x10021a7d8:  e8 23 00 79   strh	w8, [sp, #0x10]
0x10021a7dc:  10 00 00 90   adrp	x16, 0x10021a000
0x10021a7e0:  10 12 25 91   add	x16, x16, #0x944
0x10021a7e4:  f0 23 c1 da   paciza	x16
0x10021a7e8:  e0 03 10 aa   mov	x0, x16
0x10021a7ec:  e1 43 00 91   add	x1, sp, #0x10
0x10021a7f0:  63 62 03 91   add	x3, x19, #0xd8
0x10021a7f4:  02 71 82 52   mov	w2, #0x1388
0x10021a7f8:  0d ac 00 94   bl	0x10024582c
0x10021a7fc:  c0 03 00 34   cbz	w0, loc_10021a874 ; ⤵ 0x78
0x10021a800:  40 00 80 52   mov	w0, #0x2
0x10021a804:  61 08 80 52   mov	w1, #0x43
0x10021a808:  4f 27 fb 97   bl	0x1000e4544
0x10021a80c:  40 03 00 34   cbz	w0, loc_10021a874 ; ⤵ 0x68
0x10021a810:  e0 36 00 90   adrp	x0, 0x1008f6000
0x10021a814:  00 a0 05 91   add	x0, x0, #0x168 ; "Failed to set key request timeout CB"
0x10021a818:  63 aa 00 94   bl	0x1002451a4
0x10021a81c:  60 08 80 52   mov	w0, #0x43
0x10021a820:  be 94 fa 97   bl	0x1000bfb18
0x10021a824:  f3 03 00 aa   mov	x19, x0
0x10021a828:  01 02 80 52   mov	w1, #0x10
0x10021a82c:  81 d3 17 94   bl	j__os_log_type_enabled
0x10021a830:  20 02 00 34   cbz	w0, loc_10021a874 ; ⤵ 0x44
0x10021a834:  e0 03 13 aa   mov	x0, x19
0x10021a838:  9f 76 16 94   bl	0x1007b82b4
0x10021a83c:  0e 00 00 14   b	loc_10021a874 ; ⤵ 0x38
0x10021a840:  ; loc_10021a840
0x10021a840:  40 00 80 52   mov	w0, #0x2
0x10021a844:  61 08 80 52   mov	w1, #0x43
0x10021a848:  3f 27 fb 97   bl	0x1000e4544
0x10021a84c:  40 01 00 34   cbz	w0, loc_10021a874 ; ⤵ 0x28
0x10021a850:  e0 36 00 90   adrp	x0, 0x1008f6000
0x10021a854:  00 34 06 91   add	x0, x0, #0x18d ; "No callbacks, ignoring request"
0x10021a858:  53 aa 00 94   bl	0x1002451a4
0x10021a85c:  60 08 80 52   mov	w0, #0x43
0x10021a860:  ae 94 fa 97   bl	0x1000bfb18
0x10021a864:  f3 03 00 aa   mov	x19, x0
0x10021a868:  01 02 80 52   mov	w1, #0x10
0x10021a86c:  71 d3 17 94   bl	j__os_log_type_enabled
0x10021a870:  c0 03 00 35   cbnz	w0, loc_10021a8e8 ; ⤵ 0x78
0x10021a874:  ; loc_10021a874
0x10021a874:  a8 83 5d f8   ldur	x8, [fp, #-0x28]
0x10021a878:  c9 40 00 90   adrp	x9, 0x100a32000
0x10021a87c:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x10021a880:  29 01 40 f9   ldr	x9, [x9]
0x10021a884:  3f 01 08 eb   cmp	x9, x8
0x10021a888:  c1 03 00 54   b.ne	loc_10021a900 ; ⤵ 0x78
0x10021a88c:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]

