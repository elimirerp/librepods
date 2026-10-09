
-[CLDurianConnectionAttempt nextConnectionMaterialForPeripheral:]:
0x10140f53c:  7f 23 03 d5   pacibsp
0x10140f540:  ff 03 02 d1   sub	sp, sp, #0x80
0x10140f544:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x10140f548:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x10140f54c:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x10140f550:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x10140f554:  fd c3 01 91   add	fp, sp, #0x70
0x10140f558:  f6 03 02 aa   mov	x22, x2
0x10140f55c:  f5 03 00 aa   mov	x21, x0
0x10140f560:  08 7c 00 f0   adrp	x8, 0x102392000
0x10140f564:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10140f568:  08 01 40 f9   ldr	x8, [x8]
0x10140f56c:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x10140f570:  00 20 40 f9   ldr	x0, [x0, #0x40]
0x10140f574:  43 b6 1c 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10140f578:  f3 03 00 aa   mov	x19, x0
0x10140f57c:  88 8b 00 f0   adrp	x8, 0x102582000
0x10140f580:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10140f584:  1f 05 00 b1   cmn	x8, #0x1
0x10140f588:  c1 07 00 54   b.ne	loc_10140f680 ; ⤵ 0xf8
0x10140f58c:  ; loc_10140f58c
0x10140f58c:  88 8b 00 f0   adrp	x8, 0x102582000
0x10140f590:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10140f594:  e0 03 14 aa   mov	x0, x20
0x10140f598:  01 00 80 52   mov	w1, #0
0x10140f59c:  55 1b 1c 94   bl	j__os_log_type_enabled
0x10140f5a0:  80 04 00 34   cbz	w0, loc_10140f630 ; ⤵ 0x90
0x10140f5a4:  e0 03 13 aa   mov	x0, x19
0x10140f5a8:  4e 48 1c 94   bl	j__objc_msgSend(x0, "count")
0x10140f5ac:  f7 03 00 aa   mov	x23, x0
0x10140f5b0:  e0 03 16 aa   mov	x0, x22
0x10140f5b4:  1b 84 1c 94   bl	j__objc_msgSend(x0, "identifier")
0x10140f5b8:  18 25 02 94   bl	0x101498a18
0x10140f5bc:  a8 a6 43 a9   ldp	x8, x9, [x21, #0x38]
0x10140f5c0:  2a 3c 00 90   adrp	x10, 0x101b93000
0x10140f5c4:  40 e9 47 fd   ldr	d0, [x10, #0xfd0]
0x10140f5c8:  e0 03 00 bd   str	s0, [sp]
0x10140f5cc:  4a 04 81 52   mov	w10, #0x822
0x10140f5d0:  ea 13 00 79   strh	w10, [sp, #0x8]
0x10140f5d4:  ea 54 00 f0   adrp	x10, 0x101eae000
0x10140f5d8:  4a e1 02 91   add	x10, x10, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10140f5dc:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10140f5e0:  ea a3 00 f8   stur	x10, [sp, #0xa]
0x10140f5e4:  4a 80 80 52   mov	w10, #0x402
0x10140f5e8:  ea 27 00 79   strh	w10, [sp, #0x12]
0x10140f5ec:  f7 17 00 b9   str	w23, [sp, #0x14]
0x10140f5f0:  2a 08 81 52   mov	w10, #0x841
0x10140f5f4:  ea 33 00 79   strh	w10, [sp, #0x18]
0x10140f5f8:  e0 a3 01 f8   stur	x0, [sp, #0x1a]
0x10140f5fc:  ea 47 00 79   strh	w10, [sp, #0x22]
0x10140f600:  e8 43 02 f8   stur	x8, [sp, #0x24]
0x10140f604:  ea 5b 00 79   strh	w10, [sp, #0x2c]
0x10140f608:  e9 e3 02 f8   stur	x9, [sp, #0x2e]
0x10140f60c:  80 5f ff b0   adrp	x0, 0x100000000
0x10140f610:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10140f614:  63 72 00 d0   adrp	x3, 0x10225d000
0x10140f618:  63 c4 3b 91   add	x3, x3, #0xef1 ; "{\"msg%{public}.0s\":\"#durian #connection nextConnectionMaterialForPeripheral\", \"count\":%{public}d, \"periph\":%{private, location:escape_only}@, \"allMaterials\":%{private, location:escape_only}@, \"pending"...
0x10140f61c:  e4 03 00 91   mov	x4, sp
0x10140f620:  e1 03 14 aa   mov	x1, x20
0x10140f624:  02 00 80 52   mov	w2, #0
0x10140f628:  c5 06 80 52   mov	w5, #0x36
0x10140f62c:  f1 16 1c 94   bl	j___os_log_impl
0x10140f630:  ; loc_10140f630
0x10140f630:  e0 03 13 aa   mov	x0, x19
0x10140f634:  2b 48 1c 94   bl	j__objc_msgSend(x0, "count")
0x10140f638:  c0 00 00 b4   cbz	x0, loc_10140f650 ; ⤵ 0x18
0x10140f63c:  e0 03 13 aa   mov	x0, x19
0x10140f640:  02 00 80 d2   mov	x2, #0
0x10140f644:  e7 b5 1c 94   bl	j__objc_msgSend(x0, "objectAtIndex:")
0x10140f648:  9a 1a 1c 94   bl	j__objc_retain
0x10140f64c:  0d 1a 1c 94   bl	j__objc_autorelease
0x10140f650:  ; loc_10140f650
0x10140f650:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x10140f654:  09 7c 00 f0   adrp	x9, 0x102392000
0x10140f658:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10140f65c:  29 01 40 f9   ldr	x9, [x9]
0x10140f660:  3f 01 08 eb   cmp	x9, x8
0x10140f664:  21 01 00 54   b.ne	loc_10140f688 ; ⤵ 0x24
0x10140f668:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x10140f66c:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x10140f670:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x10140f674:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x10140f678:  ff 03 02 91   add	sp, sp, #0x80
0x10140f67c:  ff 0f 5f d6   retab
0x10140f680:  ; loc_10140f680
0x10140f680:  3f 00 1c 94   bl	0x101b0f77c
0x10140f684:  c2 ff ff 17   b	loc_10140f58c ; ⤴ -0xf8
0x10140f688:  ; loc_10140f688
0x10140f688:  ae 16 1c 94   bl	j____stack_chk_fail

-[CLDurianConnectionAttempt connectionMaterialsForPeripheral:]:
0x10140f68c:  7f 23 03 d5   pacibsp
0x10140f690:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10140f694:  fd 03 00 91   mov	fp, sp
0x10140f698:  00 20 40 f9   ldr	x0, [x0, #0x40]
0x10140f69c:  f9 b5 1c 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10140f6a0:  e8 46 1c 94   bl	j__objc_msgSend(x0, "copy")
0x10140f6a4:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10140f6a8:  ff 23 03 d5   autibsp
0x10140f6ac:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10140f6b0:  50 00 f0 b6   tbz	x16, #0x3e, loc_10140f6b8 ; ⤵ 0x8
0x10140f6b4:  20 8e 38 d4   brk	#0xc471
0x10140f6b8:  ; loc_10140f6b8
0x10140f6b8:  f2 19 1c 14   b	j__objc_autorelease

-[CLDurianConnectionAttempt popConnectionMaterialForPeripheral:]:
0x10140f6bc:  7f 23 03 d5   pacibsp
0x10140f6c0:  ff 03 02 d1   sub	sp, sp, #0x80
0x10140f6c4:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x10140f6c8:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x10140f6cc:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x10140f6d0:  fd c3 01 91   add	fp, sp, #0x70
0x10140f6d4:  f4 03 02 aa   mov	x20, x2
0x10140f6d8:  f3 03 00 aa   mov	x19, x0
0x10140f6dc:  08 7c 00 f0   adrp	x8, 0x102392000
0x10140f6e0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10140f6e4:  08 01 40 f9   ldr	x8, [x8]
0x10140f6e8:  a8 83 1d f8   stur	x8, [fp, #-0x28]
0x10140f6ec:  00 20 40 f9   ldr	x0, [x0, #0x40]
0x10140f6f0:  e4 b5 1c 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x10140f6f4:  f5 03 00 aa   mov	x21, x0
0x10140f6f8:  fa 47 1c 94   bl	j__objc_msgSend(x0, "count")
0x10140f6fc:  60 07 00 b4   cbz	x0, loc_10140f7e8 ; ⤵ 0xec
0x10140f700:  e0 03 15 aa   mov	x0, x21
0x10140f704:  02 00 80 d2   mov	x2, #0
0x10140f708:  8e d2 1c 94   bl	j__objc_msgSend(x0, "removeObjectAtIndex:")
0x10140f70c:  e0 03 15 aa   mov	x0, x21
0x10140f710:  f4 47 1c 94   bl	j__objc_msgSend(x0, "count")
0x10140f714:  80 00 00 b5   cbnz	x0, loc_10140f724 ; ⤵ 0x10
0x10140f718:  60 22 40 f9   ldr	x0, [x19, #0x40]
0x10140f71c:  e2 03 14 aa   mov	x2, x20
0x10140f720:  90 d2 1c 94   bl	j__objc_msgSend(x0, "removeObjectForKey:")
0x10140f724:  ; loc_10140f724
0x10140f724:  88 8b 00 f0   adrp	x8, 0x102582000
0x10140f728:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10140f72c:  1f 05 00 b1   cmn	x8, #0x1
0x10140f730:  21 07 00 54   b.ne	loc_10140f814 ; ⤵ 0xe4
0x10140f734:  88 8b 00 f0   adrp	x8, 0x102582000
0x10140f738:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10140f73c:  e0 03 14 aa   mov	x0, x20
0x10140f740:  01 00 80 52   mov	w1, #0
0x10140f744:  eb 1a 1c 94   bl	j__os_log_type_enabled
0x10140f748:  00 05 00 34   cbz	w0, loc_10140f7e8 ; ⤵ 0xa0
0x10140f74c:  60 1e 40 f9   ldr	x0, [x19, #0x38]
0x10140f750:  e4 47 1c 94   bl	j__objc_msgSend(x0, "count")
0x10140f754:  f5 03 00 aa   mov	x21, x0
0x10140f758:  60 22 40 f9   ldr	x0, [x19, #0x40]
0x10140f75c:  e1 47 1c 94   bl	j__objc_msgSend(x0, "count")
0x10140f760:  68 a6 43 a9   ldp	x8, x9, [x19, #0x38]
0x10140f764:  2a 3c 00 b0   adrp	x10, 0x101b94000
0x10140f768:  40 9d 40 fd   ldr	d0, [x10, #0x138]
0x10140f76c:  4a 04 81 52   mov	w10, #0x822
0x10140f770:  ea 13 00 79   strh	w10, [sp, #0x8]
0x10140f774:  ea 54 00 f0   adrp	x10, 0x101eae000
0x10140f778:  4a e1 02 91   add	x10, x10, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10140f77c:  e0 03 00 bd   str	s0, [sp]
0x10140f780:  ea a3 00 f8   stur	x10, [sp, #0xa]
0x10140f784:  2a 04 81 52   mov	w10, #0x821
0x10140f788:  ea 27 00 79   strh	w10, [sp, #0x12]
0x10140f78c:  ca 54 00 90   adrp	x10, 0x101ea7000
0x10140f790:  4a a5 07 91   add	x10, x10, #0x1e9 ; "popConnectionMaterialForPeripheral"

