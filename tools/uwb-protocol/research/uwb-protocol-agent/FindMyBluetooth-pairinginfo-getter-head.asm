0x2522f4780:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x2522f4784:  30 1a c1 da   autda	x16, x17
0x2522f4788:  f1 03 10 aa   mov	x17, x16
0x2522f478c:  f1 47 c1 da   xpacd	x17
0x2522f4790:  1f 02 11 eb   cmp	x16, x17
0x2522f4794:  40 00 00 54   b.eq	loc_2522f479c ; ⤵ 0x8
0x2522f4798:  40 8e 38 d4   brk	#0xc472
0x2522f479c:  ; loc_2522f479c
0x2522f479c:  f3 03 10 aa   mov	x19, x16
0x2522f47a0:  f0 03 08 aa   mov	x16, x8
0x2522f47a4:  f1 03 09 aa   mov	x17, x9
0x2522f47a8:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x2522f47ac:  30 1a c1 da   autda	x16, x17
0x2522f47b0:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x2522f47b4:  e9 03 08 aa   mov	x9, x8
0x2522f47b8:  91 f5 17 90   adrp	x17, 0x2821a4000
0x2522f47bc:  31 42 1b 91   add	x17, x17, #0x6d0
0x2522f47c0:  30 02 40 f9   ldr	x16, [x17]
0x2522f47c4:  11 0a 3f d7   blraa	x16, x17
0x2522f47c8:  e9 03 00 91   mov	x9, sp
0x2522f47cc:  0a 3d 00 91   add	x10, x8, #0xf
0x2522f47d0:  4c ed 7c 92   and	x12, x10, #0xfffffffffffffff0
0x2522f47d4:  39 01 0c cb   sub	x25, x9, x12
0x2522f47d8:  3f 03 00 91   mov	sp, x25
0x2522f47dc:  e9 03 08 aa   mov	x9, x8
0x2522f47e0:  91 f5 17 90   adrp	x17, 0x2821a4000
0x2522f47e4:  31 42 1b 91   add	x17, x17, #0x6d0
0x2522f47e8:  30 02 40 f9   ldr	x16, [x17]
0x2522f47ec:  11 0a 3f d7   blraa	x16, x17
0x2522f47f0:  e9 03 00 91   mov	x9, sp
0x2522f47f4:  29 01 0c cb   sub	x9, x9, x12
0x2522f47f8:  a9 83 1b f8   stur	x9, [fp, #-0x48]
0x2522f47fc:  3f 01 00 91   mov	sp, x9
0x2522f4800:  e9 03 08 aa   mov	x9, x8
0x2522f4804:  91 f5 17 90   adrp	x17, 0x2821a4000
0x2522f4808:  31 42 1b 91   add	x17, x17, #0x6d0
0x2522f480c:  30 02 40 f9   ldr	x16, [x17]
0x2522f4810:  11 0a 3f d7   blraa	x16, x17
0x2522f4814:  e9 03 00 91   mov	x9, sp
0x2522f4818:  37 01 0c cb   sub	x23, x9, x12
0x2522f481c:  ff 02 00 91   mov	sp, x23
0x2522f4820:  e9 03 08 aa   mov	x9, x8
0x2522f4824:  91 f5 17 90   adrp	x17, 0x2821a4000
0x2522f4828:  31 42 1b 91   add	x17, x17, #0x6d0
0x2522f482c:  30 02 40 f9   ldr	x16, [x17]
0x2522f4830:  11 0a 3f d7   blraa	x16, x17
0x2522f4834:  e8 03 00 91   mov	x8, sp
0x2522f4838:  1a 01 0c cb   sub	x26, x8, x12
0x2522f483c:  5f 03 00 91   mov	sp, x26
0x2522f4840:  68 89 17 d0   adrp	x8, 0x281422000
0x2522f4844:  08 99 40 f9   ldr	x8, [x8, #0x130] ; data_281422130 (__DATA_DIRTY.__data)
0x2522f4848:  80 6a 68 f8   ldr	x0, [x20, x8]
0x2522f484c:  e0 47 00 b4   cbz	x0, loc_2522f5148 ; ⤵ 0x8fc
0x2522f4850:  68 89 17 f0   adrp	x8, 0x281423000
0x2522f4854:  08 61 1b 91   add	x8, x8, #0x6d8 ; data_2814236d8 (__DATA_DIRTY.__common)
0x2522f4858:  08 01 40 f9   ldr	x8, [x8]
0x2522f485c:  62 6b 68 f8   ldr	x2, [x27, x8]
0x2522f4860:  28 e0 01 94   bl	_objc_msgSend$retrievePairingInfoForPeripheral:
0x2522f4864:  fd 03 1d aa   mov	fp, fp
0x2522f4868:  96 41 ca 94   bl	0x255584ec0
0x2522f486c:  f4 03 00 aa   mov	x20, x0
0x2522f4870:  68 22 13 90   adrp	x8, 0x278740000
0x2522f4874:  08 fd 47 f9   ldr	x8, [x8, #0xff8]
0x2522f4878:  61 22 13 90   adrp	x1, 0x278740000
0x2522f487c:  21 58 40 f9   ldr	x1, [x1, #0xb0]
0x2522f4880:  63 22 13 90   adrp	x3, 0x278740000
0x2522f4884:  63 5c 40 f9   ldr	x3, [x3, #0xb8]
0x2522f4888:  02 21 00 91   add	x2, x8, #0x8
0x2522f488c:  b9 3e ca 94   bl	0x255584370
0x2522f4890:  fc 03 00 aa   mov	x28, x0
0x2522f4894:  5b 41 ca 94   bl	0x255584e00
0x2522f4898:  e0 03 1c aa   mov	x0, x28
0x2522f489c:  5b 4d 00 94   bl	0x252307e08
0x2522f48a0:  fb 03 00 aa   mov	x27, x0
0x2522f48a4:  e0 03 1c aa   mov	x0, x28
0x2522f48a8:  e6 41 ca 94   bl	0x255585040
0x2522f48ac:  68 89 17 b0   adrp	x8, 0x281421000
0x2522f48b0:  db 0a 00 b4   cbz	x27, loc_2522f4a08 ; ⤵ 0x158
0x2522f48b4:  08 2d 45 f9   ldr	x8, [x8, #0xa58]
0x2522f48b8:  1f 05 00 b1   cmn	x8, #0x1
0x2522f48bc:  61 42 00 54   b.ne	loc_2522f5108 ; ⤵ 0x84c
0x2522f48c0:  61 89 17 b0   adrp	x1, 0x281421000
0x2522f48c4:  21 80 29 91   add	x1, x1, #0xa60 ; data_281421a60 (__DATA_DIRTY.__data)
0x2522f48c8:  e0 03 18 aa   mov	x0, x24
0x2522f48cc:  49 7f fe 97   bl	___swift_project_value_buffer
0x2522f48d0:  e1 03 00 aa   mov	x1, x0
0x2522f48d4:  e8 03 13 aa   mov	x8, x19
0x2522f48d8:  09 0d 41 f8   ldr	x9, [x8, #0x10]!
0x2522f48dc:  e0 03 1a aa   mov	x0, x26
0x2522f48e0:  a1 a7 36 a9   stp	x1, x9, [fp, #-0x98]
0x2522f48e4:  e2 03 18 aa   mov	x2, x24
0x2522f48e8:  a8 83 17 f8   stur	x8, [fp, #-0x88]
0x2522f48ec:  f1 03 08 aa   mov	x17, x8
0x2522f48f0:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x2522f48f4:  31 09 3f d7   blraa	x9, x17
0x2522f48f8:  e0 03 1b aa   mov	x0, x27
0x2522f48fc:  d9 41 ca 94   bl	0x255585060
0x2522f4900:  f4 03 1a aa   mov	x20, x26
0x2522f4904:  77 3e ca 94   bl	0x2555842e0
0x2522f4908:  fc 03 00 aa   mov	x28, x0
0x2522f490c:  99 3f ca 94   bl	0x255584770

