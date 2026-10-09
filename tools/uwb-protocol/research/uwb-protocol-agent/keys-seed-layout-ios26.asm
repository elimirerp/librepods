0x100944980:  40 8e 38 d4   brk	#0xc472
0x100944984:  d0 2a 00 f9   str	x16, [x22, #0x50]
0x100944988:  f0 03 08 aa   mov	x16, x8
0x10094498c:  f1 03 00 aa   mov	x17, x0
0x100944990:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100944994:  30 1a c1 da   autda	x16, x17
0x100944998:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10094499c:  13 3d 00 91   add	x19, x8, #0xf
0x1009449a0:  60 ee 7c 92   and	x0, x19, #0xfffffffffffffff0
0x1009449a4:  73 1c 31 94   bl	j__swift_task_alloc
0x1009449a8:  c0 2e 00 f9   str	x0, [x22, #0x58]
0x1009449ac:  60 ee 7c 92   and	x0, x19, #0xfffffffffffffff0
0x1009449b0:  70 1c 31 94   bl	j__swift_task_alloc
0x1009449b4:  c0 32 00 f9   str	x0, [x22, #0x60]
0x1009449b8:  00 00 80 d2   mov	x0, #0
0x1009449bc:  3f 24 00 94   bl	0x10094dab8
0x1009449c0:  c0 36 00 f9   str	x0, [x22, #0x68]
0x1009449c4:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x1009449c8:  f0 03 08 aa   mov	x16, x8
0x1009449cc:  f1 03 00 aa   mov	x17, x0
0x1009449d0:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x1009449d4:  30 1a c1 da   autda	x16, x17
0x1009449d8:  f1 03 10 aa   mov	x17, x16
0x1009449dc:  f1 47 c1 da   xpacd	x17
0x1009449e0:  1f 02 11 eb   cmp	x16, x17
0x1009449e4:  40 00 00 54   b.eq	loc_1009449ec ; ⤵ 0x8
0x1009449e8:  40 8e 38 d4   brk	#0xc472
0x1009449ec:  ; loc_1009449ec
0x1009449ec:  d0 3a 00 f9   str	x16, [x22, #0x70]
0x1009449f0:  f0 03 08 aa   mov	x16, x8
0x1009449f4:  f1 03 00 aa   mov	x17, x0
0x1009449f8:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x1009449fc:  30 1a c1 da   autda	x16, x17
0x100944a00:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100944a04:  08 3d 00 91   add	x8, x8, #0xf
0x100944a08:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x100944a0c:  59 1c 31 94   bl	j__swift_task_alloc
0x100944a10:  c0 3e 00 f9   str	x0, [x22, #0x78]
0x100944a14:  00 00 80 d2   mov	x0, #0
0x100944a18:  06 6f db 97   bl	0x100020630
0x100944a1c:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x100944a20:  f1 03 00 aa   mov	x17, x0
0x100944a24:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100944a28:  30 1a c1 da   autda	x16, x17
0x100944a2c:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100944a30:  08 3d 00 91   add	x8, x8, #0xf
0x100944a34:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x100944a38:  4e 1c 31 94   bl	j__swift_task_alloc
0x100944a3c:  c0 42 00 f9   str	x0, [x22, #0x80]
0x100944a40:  00 00 80 d2   mov	x0, #0
0x100944a44:  8d 6c db 97   bl	0x10001fc78
0x100944a48:  c0 46 00 f9   str	x0, [x22, #0x88]
0x100944a4c:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x100944a50:  f0 03 08 aa   mov	x16, x8
0x100944a54:  f1 03 00 aa   mov	x17, x0
0x100944a58:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100944a5c:  30 1a c1 da   autda	x16, x17
0x100944a60:  f1 03 10 aa   mov	x17, x16
0x100944a64:  f1 47 c1 da   xpacd	x17
0x100944a68:  1f 02 11 eb   cmp	x16, x17
0x100944a6c:  40 00 00 54   b.eq	loc_100944a74 ; ⤵ 0x8
0x100944a70:  40 8e 38 d4   brk	#0xc472
0x100944a74:  ; loc_100944a74
0x100944a74:  d0 4a 00 f9   str	x16, [x22, #0x90]
0x100944a78:  f0 03 08 aa   mov	x16, x8
0x100944a7c:  f1 03 00 aa   mov	x17, x0
0x100944a80:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100944a84:  30 1a c1 da   autda	x16, x17
0x100944a88:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100944a8c:  13 3d 00 91   add	x19, x8, #0xf
0x100944a90:  60 ee 7c 92   and	x0, x19, #0xfffffffffffffff0
0x100944a94:  37 1c 31 94   bl	j__swift_task_alloc
0x100944a98:  c0 4e 00 f9   str	x0, [x22, #0x98]
0x100944a9c:  60 ee 7c 92   and	x0, x19, #0xfffffffffffffff0
0x100944aa0:  34 1c 31 94   bl	j__swift_task_alloc
0x100944aa4:  c0 52 00 f9   str	x0, [x22, #0xa0]
0x100944aa8:  10 00 00 90   adrp	x16, 0x100944000
0x100944aac:  10 82 2b 91   add	x16, x16, #0xae0
0x100944ab0:  f0 23 c1 da   paciza	x16
0x100944ab4:  e0 03 10 aa   mov	x0, x16
0x100944ab8:  e1 03 14 aa   mov	x1, x20
0x100944abc:  02 00 80 d2   mov	x2, #0
0x100944ac0:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x100944ac4:  f3 07 42 f8   ldr	x19, [sp], #0x20
0x100944ac8:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x100944acc:  ff 23 03 d5   autibsp
0x100944ad0:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100944ad4:  50 00 f0 b6   tbz	x16, #0x3e, loc_100944adc ; ⤵ 0x8
0x100944ad8:  20 8e 38 d4   brk	#0xc471
0x100944adc:  ; loc_100944adc
0x100944adc:  41 1c 31 14   b	j__swift_task_switch

sub_100944ae0:
0x100944ae0:  7f 23 03 d5   pacibsp
0x100944ae4:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x100944ae8:  ff 03 03 d1   sub	sp, sp, #0xc0
0x100944aec:  fc ef 06 a9   stp	x28, x27, [sp, #0x68]
0x100944af0:  fa e7 07 a9   stp	x26, x25, [sp, #0x78]
0x100944af4:  f8 df 08 a9   stp	x24, x23, [sp, #0x88]
0x100944af8:  f5 cf 09 a9   stp	x21, x19, [sp, #0x98]
0x100944afc:  fd 7b 0b a9   stp	fp, lr, [sp, #0xb0]
0x100944b00:  f0 a3 02 91   add	x16, sp, #0xa8
0x100944b04:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x100944b08:  f1 03 16 aa   mov	x17, x22
0x100944b0c:  11 0e c1 da   pacdb	x17, x16
0x100944b10:  f1 57 00 f9   str	x17, [sp, #0xa8]
0x100944b14:  fd c3 02 91   add	fp, sp, #0xb0
0x100944b18:  f3 03 16 aa   mov	x19, x22
0x100944b1c:  c8 22 40 f9   ldr	x8, [x22, #0x40]
0x100944b20:  00 49 40 f9   ldr	x0, [x8, #0x90]
0x100944b24:  15 00 80 d2   mov	x21, #0
0x100944b28:  19 aa 05 94   bl	0x100aaf38c
0x100944b2c:  35 09 00 b4   cbz	x21, loc_100944c50 ; ⤵ 0x124
0x100944b30:  68 7f 00 90   adrp	x8, 0x101930000
0x100944b34:  08 01 42 f9   ldr	x8, [x8, #0x400] ; data_101930400 (__DATA.__data)
0x100944b38:  1f 05 00 b1   cmn	x8, #0x1
0x100944b3c:  a1 42 00 54   b.ne	loc_100945390 ; ⤵ 0x854
0x100944b40:  77 52 45 a9   ldp	x23, x20, [x19, #0x50]
0x100944b44:  f9 03 13 aa   mov	x25, x19
0x100944b48:  73 26 40 f9   ldr	x19, [x19, #0x48]
0x100944b4c:  61 7f 00 90   adrp	x1, 0x101930000
0x100944b50:  21 20 10 91   add	x1, x1, #0x408 ; data_101930408 (__DATA.__data)
0x100944b54:  e0 03 13 aa   mov	x0, x19
0x100944b58:  d0 0b db 97   bl	0x100007a98
0x100944b5c:  e1 03 00 aa   mov	x1, x0
0x100944b60:  e8 0e 41 f8   ldr	x8, [x23, #0x10]!
0x100944b64:  e0 03 14 aa   mov	x0, x20
0x100944b68:  e2 03 13 aa   mov	x2, x19
0x100944b6c:  f1 03 17 aa   mov	x17, x23
0x100944b70:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x100944b74:  11 09 3f d7   blraa	x8, x17
0x100944b78:  e0 03 15 aa   mov	x0, x21
0x100944b7c:  3d 1b 31 94   bl	j__swift_errorRetain
0x100944b80:  04 0c 31 94   bl	j__$s2os6LoggerV9logObjectSo03OS_a1_C0Cvg
0x100944b84:  f4 03 00 aa   mov	x20, x0
0x100944b88:  7a 12 31 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x100944b8c:  f3 03 00 aa   mov	x19, x0
0x100944b90:  01 1c 00 12   and	w1, w0, #0xff
0x100944b94:  e0 03 14 aa   mov	x0, x20
0x100944b98:  1e 1a 31 94   bl	j__os_log_type_enabled
0x100944b9c:  a0 2f 00 34   cbz	w0, loc_100945190 ; ⤵ 0x5f4
0x100944ba0:  80 01 80 52   mov	w0, #0xc
0x100944ba4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x100944ba8:  de 1b 31 94   bl	j__swift_slowAlloc
0x100944bac:  f7 03 00 aa   mov	x23, x0
0x100944bb0:  00 01 80 52   mov	w0, #0x8
0x100944bb4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x100944bb8:  da 1b 31 94   bl	j__swift_slowAlloc
0x100944bbc:  f8 03 00 aa   mov	x24, x0
0x100944bc0:  08 65 00 d0   adrp	x8, 0x1015e6000
0x100944bc4:  00 91 41 fd   ldr	d0, [x8, #0x320]
0x100944bc8:  e0 02 00 bd   str	s0, [x23]
0x100944bcc:  e0 03 15 aa   mov	x0, x21
0x100944bd0:  7c 01 31 94   bl	j__$s10Foundation22_convertErrorToNSErrorySo0E0Cs0C0_pF
0x100944bd4:  e0 42 00 f8   stur	x0, [x23, #0x4]
0x100944bd8:  00 03 00 f9   str	x0, [x24]
0x100944bdc:  e0 03 15 aa   mov	x0, x21
0x100944be0:  20 1b 31 94   bl	j__swift_errorRelease
0x100944be4:  e0 b5 ff 90   adrp	x0, 0x100000000
0x100944be8:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100944bec:  a3 6a 00 d0   adrp	x3, 0x10169a000
0x100944bf0:  63 80 08 91   add	x3, x3, #0x220 ; "Error in openAllKeyMaps(): %@"
0x100944bf4:  62 1e 00 12   and	w2, w19, #0xff
0x100944bf8:  e1 03 14 aa   mov	x1, x20
0x100944bfc:  e4 03 17 aa   mov	x4, x23
0x100944c00:  85 01 80 52   mov	w5, #0xc
0x100944c04:  f3 18 31 94   bl	j___os_log_impl
0x100944c08:  a1 7e 00 d0   adrp	x1, 0x10191a000
0x100944c0c:  21 c0 05 91   add	x1, x1, #0x170 ; data_10191a170 (__DATA.__data)
0x100944c10:  22 65 00 f0   adrp	x2, 0x1015eb000
0x100944c14:  42 00 38 91   add	x2, x2, #0xe00
0x100944c18:  e0 03 18 aa   mov	x0, x24
0x100944c1c:  55 1b db 97   bl	0x10000b970
0x100944c20:  e0 03 18 aa   mov	x0, x24
0x100944c24:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x100944c28:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x100944c2c:  c1 1b 31 94   bl	j__swift_slowDealloc
0x100944c30:  e0 03 17 aa   mov	x0, x23
0x100944c34:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x100944c38:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x100944c3c:  bd 1b 31 94   bl	j__swift_slowDealloc
0x100944c40:  78 19 31 94   bl	j__objc_release_x20
0x100944c44:  e0 03 15 aa   mov	x0, x21
0x100944c48:  06 1b 31 94   bl	j__swift_errorRelease
0x100944c4c:  56 01 00 14   b	loc_1009451a4 ; ⤵ 0x558
0x100944c50:  ; loc_100944c50
0x100944c50:  08 08 40 f9   ldr	x8, [x0, #0x10]
0x100944c54:  e8 07 00 f9   str	x8, [sp, #0x8]
0x100944c58:  88 2c 00 b4   cbz	x8, loc_1009451e8 ; ⤵ 0x590
0x100944c5c:  18 00 80 d2   mov	x24, #0
0x100944c60:  69 a2 48 a9   ldp	x9, x8, [x19, #0x88]
0x100944c64:  e9 a3 01 a9   stp	x9, x8, [sp, #0x18]
0x100944c68:  7c a6 46 a9   ldp	x28, x9, [x19, #0x68]
0x100944c6c:  e9 1f 00 f9   str	x9, [sp, #0x38]
0x100944c70:  76 22 40 f9   ldr	x22, [x19, #0x40]
0x100944c74:  08 41 41 39   ldrb	w8, [x8, #0x50]
0x100944c78:  09 81 00 91   add	x9, x8, #0x20
0x100944c7c:  28 01 28 8a   bic	x8, x9, x8
0x100944c80:  08 00 08 8b   add	x8, x0, x8
0x100944c84:  e8 0b 00 f9   str	x8, [sp, #0x10]
0x100944c88:  e0 03 00 f9   str	x0, [sp]
0x100944c8c:  10 00 00 14   b	loc_100944ccc ; ⤵ 0x40
0x100944c90:  f8 17 40 f9   ldr	x24, [sp, #0x28]
0x100944c94:  18 07 00 91   add	x24, x24, #0x1
0x100944c98:  74 4e 40 f9   ldr	x20, [x19, #0x98]
0x100944c9c:  e0 03 15 aa   mov	x0, x21
0x100944ca0:  70 1a 31 94   bl	j__swift_bridgeObjectRelease
0x100944ca4:  d0 b6 ff f0   adrp	x16, 0x10001f000
0x100944ca8:  10 e2 31 91   add	x16, x16, #0xc78
0x100944cac:  f1 05 8c d2   mov	x17, #0x602f
0x100944cb0:  30 02 c1 da   pacia	x16, x17
0x100944cb4:  e1 03 10 aa   mov	x1, x16
0x100944cb8:  e0 03 14 aa   mov	x0, x20
0x100944cbc:  a2 59 00 94   bl	0x10095b344
0x100944cc0:  e0 23 40 a9   ldp	x0, x8, [sp]
0x100944cc4:  1f 03 08 eb   cmp	x24, x8
0x100944cc8:  00 29 00 54   b.eq	loc_1009451e8 ; ⤵ 0x520
0x100944ccc:  ; loc_100944ccc
0x100944ccc:  08 08 40 f9   ldr	x8, [x0, #0x10]
0x100944cd0:  1f 03 08 eb   cmp	x24, x8
0x100944cd4:  c2 35 00 54   b.hs	loc_10094538c ; ⤵ 0x6b8
0x100944cd8:  75 d2 49 a9   ldp	x21, x20, [x19, #0x98]
0x100944cdc:  77 42 40 f9   ldr	x23, [x19, #0x80]
0x100944ce0:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x100944ce4:  08 25 40 f9   ldr	x8, [x8, #0x48]
0x100944ce8:  e9 0b 40 f9   ldr	x9, [sp, #0x10]
0x100944cec:  00 25 18 9b   madd	x0, x8, x24, x9

