0x1003f0550:  e2 23 00 91   add	x2, sp, #0x8
0x1003f0554:  a3 a1 10 94   bl	j__objc_msgSend(x0, "getUUIDBytes:")
0x1003f0558:  a1 28 00 d0   adrp	x1, 0x100906000
0x1003f055c:  21 00 3b 91   add	x1, x1, #0xec0 ; "kCBMsgArgDeviceUUID"
0x1003f0560:  e2 23 00 91   add	x2, sp, #0x8
0x1003f0564:  e0 03 13 aa   mov	x0, x19
0x1003f0568:  8e 7f 10 94   bl	j__xpc_dictionary_set_uuid
0x1003f056c:  a2 7e 40 93   sxtw	x2, w21
0x1003f0570:  81 25 00 b0   adrp	x1, 0x1008a1000
0x1003f0574:  21 68 3f 91   add	x1, x1, #0xfda ; "kCBMsgArgResult"
0x1003f0578:  e0 03 13 aa   mov	x0, x19
0x1003f057c:  7d 7f 10 94   bl	j__xpc_dictionary_set_int64
0x1003f0580:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x1003f0584:  09 32 00 d0   adrp	x9, 0x100a32000
0x1003f0588:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x1003f058c:  29 01 40 f9   ldr	x9, [x9]
0x1003f0590:  3f 01 08 eb   cmp	x9, x8
0x1003f0594:  e1 00 00 54   b.ne	loc_1003f05b0 ; ⤵ 0x1c
0x1003f0598:  e0 03 13 aa   mov	x0, x19
0x1003f059c:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x1003f05a0:  f4 4f 43 a9   ldp	x20, x19, [sp, #0x30]
0x1003f05a4:  f6 57 42 a9   ldp	x22, x21, [sp, #0x20]
0x1003f05a8:  ff 43 01 91   add	sp, sp, #0x50
0x1003f05ac:  ff 0f 5f d6   retab
0x1003f05b0:  ; loc_1003f05b0
0x1003f05b0:  38 77 10 94   bl	j____stack_chk_fail

sub_1003f05b4:
0x1003f05b4:  7f 23 03 d5   pacibsp
0x1003f05b8:  ff 83 02 d1   sub	sp, sp, #0xa0
0x1003f05bc:  fc 6f 04 a9   stp	x28, x27, [sp, #0x40]
0x1003f05c0:  fa 67 05 a9   stp	x26, x25, [sp, #0x50]
0x1003f05c4:  f8 5f 06 a9   stp	x24, x23, [sp, #0x60]
0x1003f05c8:  f6 57 07 a9   stp	x22, x21, [sp, #0x70]
0x1003f05cc:  f4 4f 08 a9   stp	x20, x19, [sp, #0x80]
0x1003f05d0:  fd 7b 09 a9   stp	fp, lr, [sp, #0x90]
0x1003f05d4:  fd 43 02 91   add	fp, sp, #0x90
0x1003f05d8:  08 32 00 d0   adrp	x8, 0x100a32000
0x1003f05dc:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x1003f05e0:  08 01 40 f9   ldr	x8, [x8]
0x1003f05e4:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x1003f05e8:  49 20 40 a9   ldp	x9, x8, [x2]
0x1003f05ec:  1f 01 09 eb   cmp	x8, x9
0x1003f05f0:  80 0a 00 54   b.eq	loc_1003f0740 ; ⤵ 0x150
0x1003f05f4:  f4 03 02 aa   mov	x20, x2
0x1003f05f8:  f5 03 00 aa   mov	x21, x0
0x1003f05fc:  e1 03 00 f9   str	x1, [sp]
0x1003f0600:  00 00 80 d2   mov	x0, #0
0x1003f0604:  01 00 80 d2   mov	x1, #0
0x1003f0608:  62 7e 10 94   bl	j__xpc_array_create
0x1003f060c:  f6 03 00 aa   mov	x22, x0
0x1003f0610:  9c 22 40 a9   ldp	x28, x8, [x20]
0x1003f0614:  9f 03 08 eb   cmp	x28, x8
0x1003f0618:  60 08 00 54   b.eq	loc_1003f0724 ; ⤵ 0x10c
0x1003f061c:  53 35 00 b0   adrp	x19, 0x100a99000
0x1003f0620:  ; loc_1003f0620
0x1003f0620:  97 03 40 f9   ldr	x23, [x28]
0x1003f0624:  b8 e6 41 a9   ldp	x24, x25, [x21, #0x18]
0x1003f0628:  3f 03 18 eb   cmp	x25, x24
0x1003f062c:  60 02 00 54   b.eq	loc_1003f0678 ; ⤵ 0x4c
0x1003f0630:  e0 82 c4 3c   ldur	q0, [x23, #0x48]
0x1003f0634:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x1003f0638:  e8 5a 40 b9   ldr	w8, [x23, #0x58]
0x1003f063c:  e8 33 00 b9   str	w8, [sp, #0x30]
0x1003f0640:  e0 33 00 91   add	x0, sp, #0xc
0x1003f0644:  e1 83 00 91   add	x1, sp, #0x20
0x1003f0648:  a2 6c 0e 94   bl	0x10078b8d0
0x1003f064c:  ; loc_1003f064c
0x1003f064c:  e1 33 00 91   add	x1, sp, #0xc
0x1003f0650:  e0 03 18 aa   mov	x0, x24
0x1003f0654:  a3 83 f8 97   bl	0x1002114e0
0x1003f0658:  a0 00 00 37   tbnz	w0, #0, loc_1003f066c ; ⤵ 0x14
0x1003f065c:  18 53 00 91   add	x24, x24, #0x14
0x1003f0660:  1f 03 19 eb   cmp	x24, x25
0x1003f0664:  41 ff ff 54   b.ne	loc_1003f064c ; ⤴ -0x18
0x1003f0668:  f8 03 19 aa   mov	x24, x25
0x1003f066c:  ; loc_1003f066c
0x1003f066c:  a8 12 40 f9   ldr	x8, [x21, #0x20]
0x1003f0670:  1f 03 08 eb   cmp	x24, x8
0x1003f0674:  a0 04 00 54   b.eq	loc_1003f0708 ; ⤵ 0x94
0x1003f0678:  ; loc_1003f0678
0x1003f0678:  48 35 00 b0   adrp	x8, 0x100a99000
0x1003f067c:  08 dd 40 f9   ldr	x8, [x8, #0x1b8] ; data_100a991b8 (__DATA.__data)
0x1003f0680:  1f 05 00 b1   cmn	x8, #0x1
0x1003f0684:  c1 04 00 54   b.ne	loc_1003f071c ; ⤵ 0x98
0x1003f0688:  ; loc_1003f0688
0x1003f0688:  79 da 40 f9   ldr	x25, [x19, #0x1b0]
0x1003f068c:  e0 82 c4 3c   ldur	q0, [x23, #0x48]
0x1003f0690:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x1003f0694:  e8 5a 40 b9   ldr	w8, [x23, #0x58]
0x1003f0698:  e8 33 00 b9   str	w8, [sp, #0x30]
0x1003f069c:  e0 33 00 91   add	x0, sp, #0xc
0x1003f06a0:  e1 83 00 91   add	x1, sp, #0x20
0x1003f06a4:  8b 6c 0e 94   bl	0x10078b8d0
0x1003f06a8:  ba c2 40 39   ldrb	w26, [x21, #0x30]
0x1003f06ac:  bb 36 40 b9   ldr	w27, [x21, #0x34]
0x1003f06b0:  b8 0a 40 f9   ldr	x24, [x21, #0x10]
0x1003f06b4:  e0 03 18 aa   mov	x0, x24
0x1003f06b8:  32 7b 10 94   bl	j__objc_retain
0x1003f06bc:  e1 33 00 91   add	x1, sp, #0xc
0x1003f06c0:  e0 03 19 aa   mov	x0, x25
0x1003f06c4:  e2 03 1a aa   mov	x2, x26
0x1003f06c8:  e3 03 1b aa   mov	x3, x27
0x1003f06cc:  e4 03 18 aa   mov	x4, x24
0x1003f06d0:  f5 65 0a 94   bl	0x100689ea4
0x1003f06d4:  f9 03 00 aa   mov	x25, x0
0x1003f06d8:  e0 03 18 aa   mov	x0, x24
0x1003f06dc:  25 7b 10 94   bl	j__objc_release
0x1003f06e0:  59 01 00 36   tbz	w25, #0, loc_1003f0708 ; ⤵ 0x28
0x1003f06e4:  e0 03 17 aa   mov	x0, x23
0x1003f06e8:  bc fd ff 97   bl	0x1003efdd8
0x1003f06ec:  f7 03 00 aa   mov	x23, x0
0x1003f06f0:  e0 03 16 aa   mov	x0, x22
0x1003f06f4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1003f06f8:  e2 03 17 aa   mov	x2, x23
0x1003f06fc:  59 7e 10 94   bl	j__xpc_array_set_value
0x1003f0700:  e0 03 17 aa   mov	x0, x23
0x1003f0704:  6b 7f 10 94   bl	j__xpc_release
0x1003f0708:  ; loc_1003f0708
0x1003f0708:  9c 23 00 91   add	x28, x28, #0x8
0x1003f070c:  88 06 40 f9   ldr	x8, [x20, #0x8]
0x1003f0710:  9f 03 08 eb   cmp	x28, x8
0x1003f0714:  61 f8 ff 54   b.ne	loc_1003f0620 ; ⤴ -0xf4
0x1003f0718:  03 00 00 14   b	loc_1003f0724 ; ⤵ 0xc
0x1003f071c:  ; loc_1003f071c
0x1003f071c:  ea 7c 0f 94   bl	0x1007cfac4
0x1003f0720:  da ff ff 17   b	loc_1003f0688 ; ⤴ -0x98
0x1003f0724:  ; loc_1003f0724
0x1003f0724:  a1 28 00 f0   adrp	x1, 0x100907000
0x1003f0728:  21 a4 09 91   add	x1, x1, #0x269 ; "kCBMsgArgServices"
0x1003f072c:  e0 03 40 f9   ldr	x0, [sp]
0x1003f0730:  e2 03 16 aa   mov	x2, x22
0x1003f0734:  1f 7f 10 94   bl	j__xpc_dictionary_set_value
0x1003f0738:  e0 03 16 aa   mov	x0, x22
0x1003f073c:  5d 7f 10 94   bl	j__xpc_release
0x1003f0740:  ; loc_1003f0740
0x1003f0740:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x1003f0744:  09 32 00 d0   adrp	x9, 0x100a32000
0x1003f0748:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x1003f074c:  29 01 40 f9   ldr	x9, [x9]
0x1003f0750:  3f 01 08 eb   cmp	x9, x8
0x1003f0754:  21 01 00 54   b.ne	loc_1003f0778 ; ⤵ 0x24
0x1003f0758:  fd 7b 49 a9   ldp	fp, lr, [sp, #0x90]
0x1003f075c:  f4 4f 48 a9   ldp	x20, x19, [sp, #0x80]
0x1003f0760:  f6 57 47 a9   ldp	x22, x21, [sp, #0x70]
0x1003f0764:  f8 5f 46 a9   ldp	x24, x23, [sp, #0x60]
0x1003f0768:  fa 67 45 a9   ldp	x26, x25, [sp, #0x50]
0x1003f076c:  fc 6f 44 a9   ldp	x28, x27, [sp, #0x40]
0x1003f0770:  ff 83 02 91   add	sp, sp, #0xa0
0x1003f0774:  ff 0f 5f d6   retab
0x1003f0778:  ; loc_1003f0778
0x1003f0778:  c6 76 10 94   bl	j____stack_chk_fail
0x1003f077c:  f3 03 00 aa   mov	x19, x0
0x1003f0780:  e0 03 18 aa   mov	x0, x24
0x1003f0784:  fb 7a 10 94   bl	j__objc_release
0x1003f0788:  02 00 00 14   b	loc_1003f0790 ; ⤵ 0x8
0x1003f078c:  f3 03 00 aa   mov	x19, x0
0x1003f0790:  ; loc_1003f0790
0x1003f0790:  e0 03 13 aa   mov	x0, x19
0x1003f0794:  53 75 10 94   bl	j___Unwind_Resume

sub_1003f0798:
0x1003f0798:  7f 23 03 d5   pacibsp
0x1003f079c:  ff 83 02 d1   sub	sp, sp, #0xa0
0x1003f07a0:  fc 6f 04 a9   stp	x28, x27, [sp, #0x40]
0x1003f07a4:  fa 67 05 a9   stp	x26, x25, [sp, #0x50]
0x1003f07a8:  f8 5f 06 a9   stp	x24, x23, [sp, #0x60]
0x1003f07ac:  f6 57 07 a9   stp	x22, x21, [sp, #0x70]
0x1003f07b0:  f4 4f 08 a9   stp	x20, x19, [sp, #0x80]
0x1003f07b4:  fd 7b 09 a9   stp	fp, lr, [sp, #0x90]
0x1003f07b8:  fd 43 02 91   add	fp, sp, #0x90
0x1003f07bc:  ea 03 01 aa   mov	x10, x1
0x1003f07c0:  f4 03 00 aa   mov	x20, x0
0x1003f07c4:  08 32 00 d0   adrp	x8, 0x100a32000
0x1003f07c8:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x1003f07cc:  08 01 40 f9   ldr	x8, [x8]
0x1003f07d0:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x1003f07d4:  49 20 40 a9   ldp	x9, x8, [x2]
0x1003f07d8:  1f 01 09 eb   cmp	x8, x9
0x1003f07dc:  80 0a 00 54   b.eq	loc_1003f092c ; ⤵ 0x150
0x1003f07e0:  f5 03 02 aa   mov	x21, x2
0x1003f07e4:  ea 03 00 f9   str	x10, [sp]
0x1003f07e8:  00 00 80 d2   mov	x0, #0
0x1003f07ec:  01 00 80 d2   mov	x1, #0
0x1003f07f0:  e8 7d 10 94   bl	j__xpc_array_create
0x1003f07f4:  f6 03 00 aa   mov	x22, x0
0x1003f07f8:  bc 22 40 a9   ldp	x28, x8, [x21]
0x1003f07fc:  9f 03 08 eb   cmp	x28, x8
0x1003f0800:  60 08 00 54   b.eq	loc_1003f090c ; ⤵ 0x10c
0x1003f0804:  53 35 00 b0   adrp	x19, 0x100a99000
0x1003f0808:  ; loc_1003f0808
0x1003f0808:  97 03 40 f9   ldr	x23, [x28]
0x1003f080c:  98 66 42 a9   ldp	x24, x25, [x20, #0x20]
0x1003f0810:  3f 03 18 eb   cmp	x25, x24
0x1003f0814:  60 02 00 54   b.eq	loc_1003f0860 ; ⤵ 0x4c
0x1003f0818:  e0 c2 c4 3c   ldur	q0, [x23, #0x4c]
0x1003f081c:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x1003f0820:  e8 5e 40 b9   ldr	w8, [x23, #0x5c]
0x1003f0824:  e8 33 00 b9   str	w8, [sp, #0x30]
0x1003f0828:  e0 33 00 91   add	x0, sp, #0xc
0x1003f082c:  e1 83 00 91   add	x1, sp, #0x20
0x1003f0830:  28 6c 0e 94   bl	0x10078b8d0
0x1003f0834:  ; loc_1003f0834
0x1003f0834:  e1 33 00 91   add	x1, sp, #0xc
0x1003f0838:  e0 03 18 aa   mov	x0, x24
0x1003f083c:  29 83 f8 97   bl	0x1002114e0
0x1003f0840:  a0 00 00 37   tbnz	w0, #0, loc_1003f0854 ; ⤵ 0x14
0x1003f0844:  18 53 00 91   add	x24, x24, #0x14
0x1003f0848:  1f 03 19 eb   cmp	x24, x25
0x1003f084c:  41 ff ff 54   b.ne	loc_1003f0834 ; ⤴ -0x18
0x1003f0850:  f8 03 19 aa   mov	x24, x25
0x1003f0854:  ; loc_1003f0854
0x1003f0854:  88 16 40 f9   ldr	x8, [x20, #0x28]
0x1003f0858:  1f 03 08 eb   cmp	x24, x8
0x1003f085c:  a0 04 00 54   b.eq	loc_1003f08f0 ; ⤵ 0x94
0x1003f0860:  ; loc_1003f0860
0x1003f0860:  48 35 00 b0   adrp	x8, 0x100a99000
0x1003f0864:  08 dd 40 f9   ldr	x8, [x8, #0x1b8] ; data_100a991b8 (__DATA.__data)
0x1003f0868:  1f 05 00 b1   cmn	x8, #0x1
0x1003f086c:  c1 04 00 54   b.ne	loc_1003f0904 ; ⤵ 0x98
0x1003f0870:  ; loc_1003f0870
0x1003f0870:  79 da 40 f9   ldr	x25, [x19, #0x1b0]
0x1003f0874:  e0 c2 c4 3c   ldur	q0, [x23, #0x4c]
0x1003f0878:  e0 0b 80 3d   str	q0, [sp, #0x20]
0x1003f087c:  e8 5e 40 b9   ldr	w8, [x23, #0x5c]
0x1003f0880:  e8 33 00 b9   str	w8, [sp, #0x30]
0x1003f0884:  e0 33 00 91   add	x0, sp, #0xc
0x1003f0888:  e1 83 00 91   add	x1, sp, #0x20
0x1003f088c:  11 6c 0e 94   bl	0x10078b8d0
0x1003f0890:  9a e2 40 39   ldrb	w26, [x20, #0x38]
0x1003f0894:  9b 3e 40 b9   ldr	w27, [x20, #0x3c]
0x1003f0898:  98 0a 40 f9   ldr	x24, [x20, #0x10]
0x1003f089c:  e0 03 18 aa   mov	x0, x24
0x1003f08a0:  b8 7a 10 94   bl	j__objc_retain
0x1003f08a4:  e1 33 00 91   add	x1, sp, #0xc
0x1003f08a8:  e0 03 19 aa   mov	x0, x25
0x1003f08ac:  e2 03 1a aa   mov	x2, x26
0x1003f08b0:  e3 03 1b aa   mov	x3, x27
0x1003f08b4:  e4 03 18 aa   mov	x4, x24
0x1003f08b8:  7b 65 0a 94   bl	0x100689ea4
0x1003f08bc:  f9 03 00 aa   mov	x25, x0
0x1003f08c0:  e0 03 18 aa   mov	x0, x24
0x1003f08c4:  ab 7a 10 94   bl	j__objc_release
0x1003f08c8:  59 01 00 36   tbz	w25, #0, loc_1003f08f0 ; ⤵ 0x28
0x1003f08cc:  e0 03 17 aa   mov	x0, x23
0x1003f08d0:  86 fd ff 97   bl	0x1003efee8
0x1003f08d4:  f7 03 00 aa   mov	x23, x0
0x1003f08d8:  e0 03 16 aa   mov	x0, x22
0x1003f08dc:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1003f08e0:  e2 03 17 aa   mov	x2, x23
0x1003f08e4:  df 7d 10 94   bl	j__xpc_array_set_value
0x1003f08e8:  e0 03 17 aa   mov	x0, x23
0x1003f08ec:  f1 7e 10 94   bl	j__xpc_release
0x1003f08f0:  ; loc_1003f08f0
0x1003f08f0:  9c 23 00 91   add	x28, x28, #0x8
0x1003f08f4:  a8 06 40 f9   ldr	x8, [x21, #0x8]
0x1003f08f8:  9f 03 08 eb   cmp	x28, x8
0x1003f08fc:  61 f8 ff 54   b.ne	loc_1003f0808 ; ⤴ -0xf4
0x1003f0900:  03 00 00 14   b	loc_1003f090c ; ⤵ 0xc
0x1003f0904:  ; loc_1003f0904
0x1003f0904:  70 7c 0f 94   bl	0x1007cfac4
0x1003f0908:  da ff ff 17   b	loc_1003f0870 ; ⤴ -0x98
0x1003f090c:  ; loc_1003f090c
0x1003f090c:  a1 28 00 f0   adrp	x1, 0x100907000
0x1003f0910:  21 a4 09 91   add	x1, x1, #0x269 ; "kCBMsgArgServices"
0x1003f0914:  e0 03 40 f9   ldr	x0, [sp]
0x1003f0918:  e2 03 16 aa   mov	x2, x22
0x1003f091c:  a5 7e 10 94   bl	j__xpc_dictionary_set_value
0x1003f0920:  e0 03 16 aa   mov	x0, x22
0x1003f0924:  e3 7e 10 94   bl	j__xpc_release
0x1003f0928:  ea 03 40 f9   ldr	x10, [sp]
0x1003f092c:  ; loc_1003f092c
0x1003f092c:  82 0e 40 f9   ldr	x2, [x20, #0x18]
0x1003f0930:  81 29 00 90   adrp	x1, 0x100920000
0x1003f0934:  21 88 24 91   add	x1, x1, #0x922 ; "kCBMsgArgServiceStartHandle"
0x1003f0938:  e0 03 0a aa   mov	x0, x10
0x1003f093c:  8d 7e 10 94   bl	j__xpc_dictionary_set_int64
0x1003f0940:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x1003f0944:  09 32 00 d0   adrp	x9, 0x100a32000
0x1003f0948:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x1003f094c:  29 01 40 f9   ldr	x9, [x9]
0x1003f0950:  3f 01 08 eb   cmp	x9, x8
0x1003f0954:  21 01 00 54   b.ne	loc_1003f0978 ; ⤵ 0x24
0x1003f0958:  fd 7b 49 a9   ldp	fp, lr, [sp, #0x90]
0x1003f095c:  f4 4f 48 a9   ldp	x20, x19, [sp, #0x80]
0x1003f0960:  f6 57 47 a9   ldp	x22, x21, [sp, #0x70]
0x1003f0964:  f8 5f 46 a9   ldp	x24, x23, [sp, #0x60]
0x1003f0968:  fa 67 45 a9   ldp	x26, x25, [sp, #0x50]
0x1003f096c:  fc 6f 44 a9   ldp	x28, x27, [sp, #0x40]
0x1003f0970:  ff 83 02 91   add	sp, sp, #0xa0
0x1003f0974:  ff 0f 5f d6   retab
0x1003f0978:  ; loc_1003f0978
0x1003f0978:  46 76 10 94   bl	j____stack_chk_fail
0x1003f097c:  f3 03 00 aa   mov	x19, x0
0x1003f0980:  e0 03 18 aa   mov	x0, x24
0x1003f0984:  7b 7a 10 94   bl	j__objc_release
0x1003f0988:  02 00 00 14   b	loc_1003f0990 ; ⤵ 0x8
0x1003f098c:  f3 03 00 aa   mov	x19, x0
0x1003f0990:  ; loc_1003f0990
0x1003f0990:  e0 03 13 aa   mov	x0, x19
0x1003f0994:  d3 74 10 94   bl	j___Unwind_Resume

sub_1003f0998:
0x1003f0998:  7f 23 03 d5   pacibsp
0x1003f099c:  ff 43 02 d1   sub	sp, sp, #0x90
0x1003f09a0:  fa 67 04 a9   stp	x26, x25, [sp, #0x40]
0x1003f09a4:  f8 5f 05 a9   stp	x24, x23, [sp, #0x50]
0x1003f09a8:  f6 57 06 a9   stp	x22, x21, [sp, #0x60]
0x1003f09ac:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x1003f09b0:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x1003f09b4:  fd 03 02 91   add	fp, sp, #0x80
0x1003f09b8:  f3 03 01 aa   mov	x19, x1
0x1003f09bc:  f4 03 00 aa   mov	x20, x0
0x1003f09c0:  08 32 00 d0   adrp	x8, 0x100a32000
0x1003f09c4:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x1003f09c8:  08 01 40 f9   ldr	x8, [x8]
0x1003f09cc:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x1003f09d0:  49 20 40 a9   ldp	x9, x8, [x2]
0x1003f09d4:  1f 01 09 eb   cmp	x8, x9
0x1003f09d8:  40 06 00 54   b.eq	loc_1003f0aa0 ; ⤵ 0xc8
0x1003f09dc:  f5 03 02 aa   mov	x21, x2
0x1003f09e0:  00 00 80 d2   mov	x0, #0
0x1003f09e4:  01 00 80 d2   mov	x1, #0
0x1003f09e8:  6a 7d 10 94   bl	j__xpc_array_create
0x1003f09ec:  f6 03 00 aa   mov	x22, x0
0x1003f09f0:  b9 02 40 f9   ldr	x25, [x21]
0x1003f09f4:  a8 06 40 f9   ldr	x8, [x21, #0x8]
0x1003f09f8:  3f 03 08 eb   cmp	x25, x8
0x1003f09fc:  40 04 00 54   b.eq	loc_1003f0a84 ; ⤵ 0x88

