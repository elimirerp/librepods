
-[NIServerItemLocalizerSession _configureCompanionForRanging]:
0x10032c53c:  7f 23 03 d5   pacibsp
0x10032c540:  ff 03 03 d1   sub	sp, sp, #0xc0
0x10032c544:  f8 5f 08 a9   stp	x24, x23, [sp, #0x80]
0x10032c548:  f6 57 09 a9   stp	x22, x21, [sp, #0x90]
0x10032c54c:  f4 4f 0a a9   stp	x20, x19, [sp, #0xa0]
0x10032c550:  fd 7b 0b a9   stp	fp, lr, [sp, #0xb0]
0x10032c554:  fd c3 02 91   add	fp, sp, #0xb0
0x10032c558:  f4 03 00 aa   mov	x20, x0
0x10032c55c:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032c560:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x10032c564:  08 01 40 f9   ldr	x8, [x8]
0x10032c568:  a8 83 1c f8   stur	x8, [fp, #-0x38]
0x10032c56c:  f6 37 00 b0   adrp	x22, 0x100a29000
0x10032c570:  d6 42 38 91   add	x22, x22, #0xe10 ; "CreateConfigRTTTypes"
0x10032c574:  d3 02 40 f9   ldr	x19, [x22]
0x10032c578:  8b 14 07 94   bl	j__objc_retain_x19
0x10032c57c:  e0 03 13 aa   mov	x0, x19
0x10032c580:  01 00 80 52   mov	w1, #0
0x10032c584:  e0 14 07 94   bl	j__os_log_type_enabled
0x10032c588:  c0 02 00 34   cbz	w0, loc_10032c5e0 ; ⤵ 0x58
0x10032c58c:  48 37 00 90   adrp	x8, 0x100a14000
0x10032c590:  08 91 82 b9   ldrsw	x8, [x8, #0x290]
0x10032c594:  80 6a 68 f8   ldr	x0, [x20, x8]
0x10032c598:  fa 16 07 94   bl	j__objc_msgSend(x0, "UUID")
0x10032c59c:  fd 03 1d aa   mov	fp, fp
0x10032c5a0:  75 14 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032c5a4:  f5 03 00 aa   mov	x21, x0
0x10032c5a8:  e8 11 00 d0   adrp	x8, 0x10056a000
0x10032c5ac:  00 59 42 fd   ldr	d0, [x8, #0x4b0]
0x10032c5b0:  e0 33 00 bd   str	s0, [sp, #0x30]
0x10032c5b4:  e0 43 03 f8   stur	x0, [sp, #0x34]
0x10032c5b8:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c5bc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c5c0:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c5c4:  63 64 35 91   add	x3, x3, #0xd59 ; "#ses-item-loc,Configure companion for ranging. UUID: %@"
0x10032c5c8:  e4 c3 00 91   add	x4, sp, #0x30
0x10032c5cc:  e1 03 13 aa   mov	x1, x19
0x10032c5d0:  02 00 80 52   mov	w2, #0
0x10032c5d4:  85 01 80 52   mov	w5, #0xc
0x10032c5d8:  ff 11 07 94   bl	j___os_log_impl
0x10032c5dc:  32 14 07 94   bl	j__objc_release_x21
0x10032c5e0:  ; loc_10032c5e0
0x10032c5e0:  29 14 07 94   bl	j__objc_release_x19
0x10032c5e4:  d2 16 01 94   bl	0x10037212c
0x10032c5e8:  e8 03 00 aa   mov	x8, x0
0x10032c5ec:  00 58 46 f9   ldr	x0, [x0, #0xcb0]
0x10032c5f0:  13 5d 46 f9   ldr	x19, [x8, #0xcb8]
0x10032c5f4:  93 00 00 b4   cbz	x19, loc_10032c604 ; ⤵ 0x10
0x10032c5f8:  68 22 00 91   add	x8, x19, #0x8
0x10032c5fc:  29 00 80 52   mov	w9, #0x1
0x10032c600:  08 01 29 f8   ldadd	x9, x8, [x8]
0x10032c604:  ; loc_10032c604
0x10032c604:  40 19 00 b4   cbz	x0, loc_10032c92c ; ⤵ 0x328
0x10032c608:  48 37 00 90   adrp	x8, 0x100a14000
0x10032c60c:  08 7d 82 b9   ldrsw	x8, [x8, #0x27c]
0x10032c610:  81 02 08 8b   add	x1, x20, x8
0x10032c614:  28 00 49 39   ldrb	w8, [x1, #0x240]
0x10032c618:  c8 1c 00 36   tbz	w8, #0, loc_10032c9b0 ; ⤵ 0x398
0x10032c61c:  48 37 00 90   adrp	x8, 0x100a14000
0x10032c620:  08 51 82 b9   ldrsw	x8, [x8, #0x250]
0x10032c624:  88 6a 68 b8   ldr	w8, [x20, x8]
0x10032c628:  1f 05 00 71   cmp	w8, #0x1
0x10032c62c:  60 20 00 54   b.eq	loc_10032ca38 ; ⤵ 0x40c
0x10032c630:  68 2e 00 35   cbnz	w8, loc_10032cbfc ; ⤵ 0x5cc
0x10032c634:  ff 13 00 b9   str	wzr, [sp, #0x10]
0x10032c638:  e2 43 00 91   add	x2, sp, #0x10
0x10032c63c:  d0 38 00 94   bl	0x10033a97c
0x10032c640:  c0 25 00 36   tbz	w0, #0, loc_10032caf8 ; ⤵ 0x4b8
0x10032c644:  d5 02 40 f9   ldr	x21, [x22]
0x10032c648:  e0 03 15 aa   mov	x0, x21
0x10032c64c:  01 00 80 52   mov	w1, #0
0x10032c650:  ad 14 07 94   bl	j__os_log_type_enabled
0x10032c654:  60 01 00 34   cbz	w0, loc_10032c680 ; ⤵ 0x2c
0x10032c658:  ff 63 00 79   strh	wzr, [sp, #0x30]
0x10032c65c:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c660:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c664:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c668:  63 44 36 91   add	x3, x3, #0xd91 ; "#ses-item-loc,+++++++++++++++++++++++++++++++++++++++++"
0x10032c66c:  e4 c3 00 91   add	x4, sp, #0x30
0x10032c670:  e1 03 15 aa   mov	x1, x21
0x10032c674:  02 00 80 52   mov	w2, #0
0x10032c678:  45 00 80 52   mov	w5, #0x2
0x10032c67c:  d6 11 07 94   bl	j___os_log_impl
0x10032c680:  ; loc_10032c680
0x10032c680:  d5 02 40 f9   ldr	x21, [x22]
0x10032c684:  e0 03 15 aa   mov	x0, x21
0x10032c688:  01 00 80 52   mov	w1, #0
0x10032c68c:  9e 14 07 94   bl	j__os_log_type_enabled
0x10032c690:  60 01 00 34   cbz	w0, loc_10032c6bc ; ⤵ 0x2c
0x10032c694:  ff 63 00 79   strh	wzr, [sp, #0x30]
0x10032c698:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c69c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c6a0:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c6a4:  63 24 37 91   add	x3, x3, #0xdc9 ; "#ses-item-loc,Sent command to remote device:"
0x10032c6a8:  e4 c3 00 91   add	x4, sp, #0x30
0x10032c6ac:  e1 03 15 aa   mov	x1, x21
0x10032c6b0:  02 00 80 52   mov	w2, #0
0x10032c6b4:  45 00 80 52   mov	w5, #0x2
0x10032c6b8:  c7 11 07 94   bl	j___os_log_impl
0x10032c6bc:  ; loc_10032c6bc
0x10032c6bc:  d5 02 40 f9   ldr	x21, [x22]
0x10032c6c0:  e0 03 15 aa   mov	x0, x21
0x10032c6c4:  01 00 80 52   mov	w1, #0
0x10032c6c8:  8f 14 07 94   bl	j__os_log_type_enabled
0x10032c6cc:  f7 11 00 d0   adrp	x23, 0x10056a000
0x10032c6d0:  c0 01 00 34   cbz	w0, loc_10032c708 ; ⤵ 0x38
0x10032c6d4:  e8 43 40 39   ldrb	w8, [sp, #0x10]
0x10032c6d8:  e0 3e 42 fd   ldr	d0, [x23, #0x478]
0x10032c6dc:  e0 33 00 bd   str	s0, [sp, #0x30]
0x10032c6e0:  e8 37 00 b9   str	w8, [sp, #0x34]
0x10032c6e4:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c6e8:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c6ec:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c6f0:  63 d8 37 91   add	x3, x3, #0xdf6 ; "#ses-item-loc,   countryCode: 0x%x"
0x10032c6f4:  e4 c3 00 91   add	x4, sp, #0x30
0x10032c6f8:  e1 03 15 aa   mov	x1, x21
0x10032c6fc:  02 00 80 52   mov	w2, #0
0x10032c700:  05 01 80 52   mov	w5, #0x8
0x10032c704:  b4 11 07 94   bl	j___os_log_impl
0x10032c708:  ; loc_10032c708
0x10032c708:  d5 02 40 f9   ldr	x21, [x22]
0x10032c70c:  e0 03 15 aa   mov	x0, x21
0x10032c710:  01 00 80 52   mov	w1, #0
0x10032c714:  7c 14 07 94   bl	j__os_log_type_enabled
0x10032c718:  e0 01 00 34   cbz	w0, loc_10032c754 ; ⤵ 0x3c
0x10032c71c:  e8 47 40 39   ldrb	w8, [sp, #0x11]
0x10032c720:  08 05 00 12   and	w8, w8, #0x3
0x10032c724:  e0 3e 42 fd   ldr	d0, [x23, #0x478]
0x10032c728:  e0 33 00 bd   str	s0, [sp, #0x30]
0x10032c72c:  e8 37 00 b9   str	w8, [sp, #0x34]
0x10032c730:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c734:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c738:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c73c:  63 64 38 91   add	x3, x3, #0xe19 ; "#ses-item-loc,   channel: 0x%x"
0x10032c740:  e4 c3 00 91   add	x4, sp, #0x30
0x10032c744:  e1 03 15 aa   mov	x1, x21
0x10032c748:  02 00 80 52   mov	w2, #0
0x10032c74c:  05 01 80 52   mov	w5, #0x8
0x10032c750:  a1 11 07 94   bl	j___os_log_impl
0x10032c754:  ; loc_10032c754
0x10032c754:  d5 02 40 f9   ldr	x21, [x22]
0x10032c758:  e0 03 15 aa   mov	x0, x21
0x10032c75c:  01 00 80 52   mov	w1, #0
0x10032c760:  69 14 07 94   bl	j__os_log_type_enabled
0x10032c764:  e0 01 00 34   cbz	w0, loc_10032c7a0 ; ⤵ 0x3c
0x10032c768:  e8 47 40 39   ldrb	w8, [sp, #0x11]
0x10032c76c:  08 0d 02 53   ubfx	w8, w8, #0x2, #0x2
0x10032c770:  e0 3e 42 fd   ldr	d0, [x23, #0x478]
0x10032c774:  e0 33 00 bd   str	s0, [sp, #0x30]
0x10032c778:  e8 37 00 b9   str	w8, [sp, #0x34]
0x10032c77c:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c780:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c784:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c788:  63 e0 38 91   add	x3, x3, #0xe38 ; "#ses-item-loc,   txPreamble: 0x%x"
0x10032c78c:  e4 c3 00 91   add	x4, sp, #0x30
0x10032c790:  e1 03 15 aa   mov	x1, x21
0x10032c794:  02 00 80 52   mov	w2, #0
0x10032c798:  05 01 80 52   mov	w5, #0x8
0x10032c79c:  8e 11 07 94   bl	j___os_log_impl
0x10032c7a0:  ; loc_10032c7a0
0x10032c7a0:  d5 02 40 f9   ldr	x21, [x22]
0x10032c7a4:  e0 03 15 aa   mov	x0, x21
0x10032c7a8:  01 00 80 52   mov	w1, #0
0x10032c7ac:  56 14 07 94   bl	j__os_log_type_enabled
0x10032c7b0:  e0 01 00 34   cbz	w0, loc_10032c7ec ; ⤵ 0x3c
0x10032c7b4:  e8 47 40 39   ldrb	w8, [sp, #0x11]
0x10032c7b8:  08 15 04 53   ubfx	w8, w8, #0x4, #0x2
0x10032c7bc:  e0 3e 42 fd   ldr	d0, [x23, #0x478]
0x10032c7c0:  e0 33 00 bd   str	s0, [sp, #0x30]
0x10032c7c4:  e8 37 00 b9   str	w8, [sp, #0x34]
0x10032c7c8:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c7cc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c7d0:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c7d4:  63 68 39 91   add	x3, x3, #0xe5a ; "#ses-item-loc,   rxPreamble: 0x%x"
0x10032c7d8:  e4 c3 00 91   add	x4, sp, #0x30
0x10032c7dc:  e1 03 15 aa   mov	x1, x21
0x10032c7e0:  02 00 80 52   mov	w2, #0
0x10032c7e4:  05 01 80 52   mov	w5, #0x8
0x10032c7e8:  7b 11 07 94   bl	j___os_log_impl
0x10032c7ec:  ; loc_10032c7ec
0x10032c7ec:  d5 02 40 f9   ldr	x21, [x22]
0x10032c7f0:  e0 03 15 aa   mov	x0, x21
0x10032c7f4:  01 00 80 52   mov	w1, #0
0x10032c7f8:  43 14 07 94   bl	j__os_log_type_enabled
0x10032c7fc:  c0 01 00 34   cbz	w0, loc_10032c834 ; ⤵ 0x38
0x10032c800:  e8 27 40 79   ldrh	w8, [sp, #0x12]
0x10032c804:  e0 3e 42 fd   ldr	d0, [x23, #0x478]
0x10032c808:  e0 33 00 bd   str	s0, [sp, #0x30]
0x10032c80c:  e8 37 00 b9   str	w8, [sp, #0x34]
0x10032c810:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c814:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c818:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c81c:  63 f0 39 91   add	x3, x3, #0xe7c ; "#ses-item-loc,   intervalMs: %d"
0x10032c820:  e4 c3 00 91   add	x4, sp, #0x30
0x10032c824:  e1 03 15 aa   mov	x1, x21
0x10032c828:  02 00 80 52   mov	w2, #0
0x10032c82c:  05 01 80 52   mov	w5, #0x8
0x10032c830:  69 11 07 94   bl	j___os_log_impl
0x10032c834:  ; loc_10032c834
0x10032c834:  d5 02 40 f9   ldr	x21, [x22]
0x10032c838:  e0 03 15 aa   mov	x0, x21
0x10032c83c:  01 00 80 52   mov	w1, #0
0x10032c840:  31 14 07 94   bl	j__os_log_type_enabled
0x10032c844:  60 01 00 34   cbz	w0, loc_10032c870 ; ⤵ 0x2c
0x10032c848:  ff 63 00 79   strh	wzr, [sp, #0x30]
0x10032c84c:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c850:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c854:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c858:  63 44 36 91   add	x3, x3, #0xd91 ; "#ses-item-loc,+++++++++++++++++++++++++++++++++++++++++"
0x10032c85c:  e4 c3 00 91   add	x4, sp, #0x30
0x10032c860:  e1 03 15 aa   mov	x1, x21
0x10032c864:  02 00 80 52   mov	w2, #0
0x10032c868:  45 00 80 52   mov	w5, #0x2
0x10032c86c:  5a 11 07 94   bl	j___os_log_impl
0x10032c870:  ; loc_10032c870
0x10032c870:  48 37 00 90   adrp	x8, 0x100a14000
0x10032c874:  08 55 82 b9   ldrsw	x8, [x8, #0x254]
0x10032c878:  49 00 80 52   mov	w9, #0x2
0x10032c87c:  89 6a 28 b8   str	w9, [x20, x8]
0x10032c880:  d5 02 40 f9   ldr	x21, [x22]
0x10032c884:  e0 03 15 aa   mov	x0, x21
0x10032c888:  01 00 80 52   mov	w1, #0
0x10032c88c:  1e 14 07 94   bl	j__os_log_type_enabled
0x10032c890:  60 01 00 34   cbz	w0, loc_10032c8bc ; ⤵ 0x2c
0x10032c894:  ff 63 00 79   strh	wzr, [sp, #0x30]
0x10032c898:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032c89c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032c8a0:  23 31 00 b0   adrp	x3, 0x100951000
0x10032c8a4:  63 70 3a 91   add	x3, x3, #0xe9c ; "#ses-item-loc,[CL] configureRangingOnDevice"
0x10032c8a8:  e4 c3 00 91   add	x4, sp, #0x30
0x10032c8ac:  e1 03 15 aa   mov	x1, x21
0x10032c8b0:  02 00 80 52   mov	w2, #0
0x10032c8b4:  45 00 80 52   mov	w5, #0x2
0x10032c8b8:  47 11 07 94   bl	j___os_log_impl
0x10032c8bc:  ; loc_10032c8bc
0x10032c8bc:  48 37 00 90   adrp	x8, 0x100a14000
0x10032c8c0:  08 a9 82 b9   ldrsw	x8, [x8, #0x2a8]
0x10032c8c4:  96 6a 68 f8   ldr	x22, [x20, x8]
0x10032c8c8:  48 37 00 90   adrp	x8, 0x100a14000
0x10032c8cc:  17 91 82 b9   ldrsw	x23, [x8, #0x290]
0x10032c8d0:  80 6a 77 f8   ldr	x0, [x20, x23]
0x10032c8d4:  2b 16 07 94   bl	j__objc_msgSend(x0, "UUID")
0x10032c8d8:  fd 03 1d aa   mov	fp, fp
0x10032c8dc:  a6 13 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032c8e0:  f5 03 00 aa   mov	x21, x0
0x10032c8e4:  80 6a 77 f8   ldr	x0, [x20, x23]
0x10032c8e8:  ce 50 07 94   bl	j__objc_msgSend(x0, "roseMACAddress")
0x10032c8ec:  fd 03 1d aa   mov	fp, fp
0x10032c8f0:  a1 13 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032c8f4:  f4 03 00 aa   mov	x20, x0
0x10032c8f8:  e4 43 40 39   ldrb	w4, [sp, #0x10]
0x10032c8fc:  e8 47 40 39   ldrb	w8, [sp, #0x11]
0x10032c900:  06 0d 02 53   ubfx	w6, w8, #0x2, #0x2
0x10032c904:  07 15 04 53   ubfx	w7, w8, #0x4, #0x2
0x10032c908:  e9 27 40 79   ldrh	w9, [sp, #0x12]
0x10032c90c:  e9 03 00 79   strh	w9, [sp]
0x10032c910:  05 05 00 12   and	w5, w8, #0x3
0x10032c914:  e0 03 16 aa   mov	x0, x22
0x10032c918:  e2 03 15 aa   mov	x2, x21
0x10032c91c:  e3 03 14 aa   mov	x3, x20
0x10032c920:  48 30 07 94   bl	j__objc_msgSend(x0, "configureRangingOnDevice:macAddress:countryCode:uwbChannel:acqPreamble:trackingPreamble:interval:")
0x10032c924:  5c 13 07 94   bl	j__objc_release_x20
0x10032c928:  93 00 00 14   b	loc_10032cb74 ; ⤵ 0x24c
0x10032c92c:  ; loc_10032c92c
0x10032c92c:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032c930:  15 a9 44 f9   ldr	x21, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x10032c934:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032c938:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x10032c93c:  09 01 40 f9   ldr	x9, [x8]
0x10032c940:  88 35 00 b0   adrp	x8, 0x1009dd000
0x10032c944:  08 21 3e 91   add	x8, x8, #0xf88 ; "Configuration Manager Error."
0x10032c948:  a9 a3 3b a9   stp	x9, x8, [fp, #-0x48]
0x10032c94c:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032c950:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x10032c954:  a2 03 01 d1   sub	x2, fp, #0x40
0x10032c958:  a3 23 01 d1   sub	x3, fp, #0x48
0x10032c95c:  24 00 80 52   mov	w4, #0x1
0x10032c960:  80 35 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10032c964:  fd 03 1d aa   mov	fp, fp
0x10032c968:  83 13 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032c96c:  f6 03 00 aa   mov	x22, x0
0x10032c970:  e8 34 00 d0   adrp	x8, 0x1009ca000
0x10032c974:  08 21 23 91   add	x8, x8, #0x8c8
0x10032c978:  02 01 40 f9   ldr	x2, [x8]
0x10032c97c:  e0 03 15 aa   mov	x0, x21
0x10032c980:  c3 df 82 92   mov	x3, #0xffffffffffffe901
0x10032c984:  e4 03 16 aa   mov	x4, x22
0x10032c988:  96 39 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x10032c98c:  fd 03 1d aa   mov	fp, fp
0x10032c990:  79 13 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032c994:  f5 03 00 aa   mov	x21, x0
0x10032c998:  47 13 07 94   bl	j__objc_release_x22
0x10032c99c:  e0 03 14 aa   mov	x0, x20
0x10032c9a0:  e2 03 15 aa   mov	x2, x21
0x10032c9a4:  2f 1c 07 94   bl	j__objc_msgSend(x0, "_handleError:")
0x10032c9a8:  3f 13 07 94   bl	j__objc_release_x21
0x10032c9ac:  94 00 00 14   b	loc_10032cbfc ; ⤵ 0x250
0x10032c9b0:  ; loc_10032c9b0
0x10032c9b0:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032c9b4:  15 a9 44 f9   ldr	x21, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x10032c9b8:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032c9bc:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x10032c9c0:  08 01 40 f9   ldr	x8, [x8]
0x10032c9c4:  e8 2f 00 f9   str	x8, [sp, #0x58]
0x10032c9c8:  08 36 00 90   adrp	x8, 0x1009ec000
0x10032c9cc:  08 21 11 91   add	x8, x8, #0x448 ; "No cached ranging request."
0x10032c9d0:  a8 03 1b f8   stur	x8, [fp, #-0x50]
0x10032c9d4:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032c9d8:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x10032c9dc:  a2 43 01 d1   sub	x2, fp, #0x50
0x10032c9e0:  e3 63 01 91   add	x3, sp, #0x58
0x10032c9e4:  24 00 80 52   mov	w4, #0x1
0x10032c9e8:  5e 35 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10032c9ec:  fd 03 1d aa   mov	fp, fp
0x10032c9f0:  61 13 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032c9f4:  f6 03 00 aa   mov	x22, x0
0x10032c9f8:  e8 34 00 d0   adrp	x8, 0x1009ca000
0x10032c9fc:  08 21 23 91   add	x8, x8, #0x8c8
0x10032ca00:  02 01 40 f9   ldr	x2, [x8]
0x10032ca04:  e0 03 15 aa   mov	x0, x21
0x10032ca08:  c3 df 82 92   mov	x3, #0xffffffffffffe901
0x10032ca0c:  e4 03 16 aa   mov	x4, x22
0x10032ca10:  74 39 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x10032ca14:  fd 03 1d aa   mov	fp, fp
0x10032ca18:  57 13 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032ca1c:  f5 03 00 aa   mov	x21, x0
0x10032ca20:  25 13 07 94   bl	j__objc_release_x22
0x10032ca24:  e0 03 14 aa   mov	x0, x20
0x10032ca28:  e2 03 15 aa   mov	x2, x21
0x10032ca2c:  0d 1c 07 94   bl	j__objc_msgSend(x0, "_handleError:")
0x10032ca30:  1d 13 07 94   bl	j__objc_release_x21
0x10032ca34:  72 00 00 14   b	loc_10032cbfc ; ⤵ 0x1c8
0x10032ca38:  ; loc_10032ca38
0x10032ca38:  ff 7f 03 a9   stp	xzr, xzr, [sp, #0x30]
0x10032ca3c:  ff f3 03 b8   stur	wzr, [sp, #0x3f]
0x10032ca40:  e3 c3 00 91   add	x3, sp, #0x30
0x10032ca44:  e0 03 14 aa   mov	x0, x20
0x10032ca48:  e2 03 01 aa   mov	x2, x1
0x10032ca4c:  fd 26 07 94   bl	j__objc_msgSend(x0, "_updateNBAMMSCompanionConfigurationCommandWithRequest:rangeConfig:")
0x10032ca50:  60 09 00 36   tbz	w0, #0, loc_10032cb7c ; ⤵ 0x12c
0x10032ca54:  48 37 00 90   adrp	x8, 0x100a14000
0x10032ca58:  08 55 82 b9   ldrsw	x8, [x8, #0x254]
0x10032ca5c:  49 00 80 52   mov	w9, #0x2
0x10032ca60:  89 6a 28 b8   str	w9, [x20, x8]
0x10032ca64:  e2 c3 00 91   add	x2, sp, #0x30
0x10032ca68:  e0 03 14 aa   mov	x0, x20
0x10032ca6c:  ad 1a 07 94   bl	j__objc_msgSend(x0, "_getDictFromRangeConfigNBAMMS:")
0x10032ca70:  fd 03 1d aa   mov	fp, fp
0x10032ca74:  40 13 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032ca78:  f5 03 00 aa   mov	x21, x0
0x10032ca7c:  d6 02 40 f9   ldr	x22, [x22]
0x10032ca80:  e0 03 16 aa   mov	x0, x22
0x10032ca84:  01 00 80 52   mov	w1, #0
0x10032ca88:  9f 13 07 94   bl	j__os_log_type_enabled
0x10032ca8c:  60 01 00 34   cbz	w0, loc_10032cab8 ; ⤵ 0x2c
0x10032ca90:  ff 23 00 79   strh	wzr, [sp, #0x10]
0x10032ca94:  a0 e6 ff 90   adrp	x0, 0x100000000
0x10032ca98:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10032ca9c:  23 31 00 b0   adrp	x3, 0x100951000
0x10032caa0:  63 20 3b 91   add	x3, x3, #0xec8 ; "#ses-item-loc,[CL] configureNBRangingOnDevice"
0x10032caa4:  e4 43 00 91   add	x4, sp, #0x10
0x10032caa8:  e1 03 16 aa   mov	x1, x22
0x10032caac:  02 00 80 52   mov	w2, #0
0x10032cab0:  45 00 80 52   mov	w5, #0x2
0x10032cab4:  c8 10 07 94   bl	j___os_log_impl
0x10032cab8:  ; loc_10032cab8
0x10032cab8:  48 37 00 90   adrp	x8, 0x100a14000
0x10032cabc:  08 a9 82 b9   ldrsw	x8, [x8, #0x2a8]
0x10032cac0:  97 6a 68 f8   ldr	x23, [x20, x8]
0x10032cac4:  48 37 00 90   adrp	x8, 0x100a14000
0x10032cac8:  08 91 82 b9   ldrsw	x8, [x8, #0x290]
0x10032cacc:  80 6a 68 f8   ldr	x0, [x20, x8]
0x10032cad0:  ac 15 07 94   bl	j__objc_msgSend(x0, "UUID")
0x10032cad4:  fd 03 1d aa   mov	fp, fp
0x10032cad8:  27 13 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032cadc:  f6 03 00 aa   mov	x22, x0
0x10032cae0:  e0 03 17 aa   mov	x0, x23
0x10032cae4:  e2 03 16 aa   mov	x2, x22
0x10032cae8:  e3 03 15 aa   mov	x3, x21
0x10032caec:  cd 2f 07 94   bl	j__objc_msgSend(x0, "configureNBRangingOnDevice:withParams:")
0x10032caf0:  f1 12 07 94   bl	j__objc_release_x22
0x10032caf4:  41 00 00 14   b	loc_10032cbf8 ; ⤵ 0x104
0x10032caf8:  ; loc_10032caf8
0x10032caf8:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032cafc:  15 a9 44 f9   ldr	x21, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x10032cb00:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032cb04:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x10032cb08:  09 01 40 f9   ldr	x9, [x8]
0x10032cb0c:  08 36 00 90   adrp	x8, 0x1009ec000
0x10032cb10:  08 a1 11 91   add	x8, x8, #0x468 ; "Failed to construct companion range config command."
0x10032cb14:  e9 a3 04 a9   stp	x9, x8, [sp, #0x48]
0x10032cb18:  48 34 00 b0   adrp	x8, 0x1009b5000
0x10032cb1c:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x10032cb20:  e2 43 01 91   add	x2, sp, #0x50
0x10032cb24:  e3 23 01 91   add	x3, sp, #0x48
0x10032cb28:  24 00 80 52   mov	w4, #0x1
0x10032cb2c:  0d 35 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10032cb30:  fd 03 1d aa   mov	fp, fp
0x10032cb34:  10 13 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032cb38:  f6 03 00 aa   mov	x22, x0
0x10032cb3c:  e8 34 00 d0   adrp	x8, 0x1009ca000
0x10032cb40:  08 21 23 91   add	x8, x8, #0x8c8
0x10032cb44:  02 01 40 f9   ldr	x2, [x8]
0x10032cb48:  e0 03 15 aa   mov	x0, x21
0x10032cb4c:  c3 df 82 92   mov	x3, #0xffffffffffffe901
0x10032cb50:  e4 03 16 aa   mov	x4, x22
0x10032cb54:  23 39 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x10032cb58:  fd 03 1d aa   mov	fp, fp
0x10032cb5c:  06 13 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032cb60:  f5 03 00 aa   mov	x21, x0
0x10032cb64:  d4 12 07 94   bl	j__objc_release_x22
0x10032cb68:  e0 03 14 aa   mov	x0, x20
0x10032cb6c:  e2 03 15 aa   mov	x2, x21
0x10032cb70:  bc 1b 07 94   bl	j__objc_msgSend(x0, "_handleError:")
0x10032cb74:  ; loc_10032cb74
0x10032cb74:  cc 12 07 94   bl	j__objc_release_x21
0x10032cb78:  21 00 00 14   b	loc_10032cbfc ; ⤵ 0x84

