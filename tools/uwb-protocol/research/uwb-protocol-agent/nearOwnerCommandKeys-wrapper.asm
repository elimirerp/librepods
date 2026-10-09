
sub_10113a154:
0x10113a154:  7f 23 03 d5   pacibsp
0x10113a158:  ff c3 01 d1   sub	sp, sp, #0x70
0x10113a15c:  fc 6f 01 a9   stp	x28, x27, [sp, #0x10]
0x10113a160:  fa 67 02 a9   stp	x26, x25, [sp, #0x20]
0x10113a164:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x10113a168:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x10113a16c:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10113a170:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10113a174:  fd 83 01 91   add	fp, sp, #0x60
0x10113a178:  f5 03 14 aa   mov	x21, x20
0x10113a17c:  f3 03 01 aa   mov	x19, x1
0x10113a180:  fb 03 00 aa   mov	x27, x0
0x10113a184:  03 3d 11 94   bl	j__$sSo13os_log_type_ta0A0E7defaultABvgZ
0x10113a188:  f6 03 00 aa   mov	x22, x0
0x10113a18c:  68 40 00 90   adrp	x8, 0x101946000
0x10113a190:  08 a1 42 f9   ldr	x8, [x8, #0x540] ; data_101946540 (__DATA.__data)
0x10113a194:  1f 05 00 b1   cmn	x8, #0x1
0x10113a198:  e1 08 00 54   b.ne	loc_10113a2b4 ; ⤵ 0x11c
0x10113a19c:  ; loc_10113a19c
0x10113a19c:  68 46 00 d0   adrp	x8, 0x101a08000
0x10113a1a0:  17 25 40 f9   ldr	x23, [x8, #0x48]
0x10113a1a4:  00 3f 00 d0   adrp	x0, 0x10191c000
0x10113a1a8:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x10113a1ac:  81 25 00 f0   adrp	x1, 0x1015ed000
0x10113a1b0:  21 00 19 91   add	x1, x1, #0x640
0x10113a1b4:  90 f8 bd 97   bl	0x1000b83f4
0x10113a1b8:  01 0e 80 52   mov	w1, #0x70
0x10113a1bc:  e2 00 80 52   mov	w2, #0x7
0x10113a1c0:  fc 44 11 94   bl	j__swift_allocObject
0x10113a1c4:  f8 03 00 aa   mov	x24, x0
0x10113a1c8:  88 25 00 d0   adrp	x8, 0x1015ec000
0x10113a1cc:  00 71 c1 3d   ldr	q0, [x8, #0x5c0]
0x10113a1d0:  00 04 80 3d   str	q0, [x0, #0x10]
0x10113a1d4:  e0 03 15 aa   mov	x0, x21
0x10113a1d8:  ea 45 11 94   bl	j__swift_getObjectType
0x10113a1dc:  e0 07 00 f9   str	x0, [sp, #0x8]
0x10113a1e0:  60 40 00 90   adrp	x0, 0x101946000
0x10113a1e4:  00 00 3e 91   add	x0, x0, #0xf80 ; data_101946f80 (__DATA.__data)
0x10113a1e8:  01 27 00 f0   adrp	x1, 0x10161d000
0x10113a1ec:  21 c0 11 91   add	x1, x1, #0x470 ; "Vs\n"
0x10113a1f0:  81 f8 bd 97   bl	0x1000b83f4
0x10113a1f4:  e1 03 00 aa   mov	x1, x0
0x10113a1f8:  e0 23 00 91   add	x0, sp, #0x8
0x10113a1fc:  89 3a 11 94   bl	j__$sSS10describingSSx_tclufC
0x10113a200:  f9 03 00 aa   mov	x25, x0
0x10113a204:  fa 03 01 aa   mov	x26, x1
0x10113a208:  74 3a 00 90   adrp	x20, 0x101886000
0x10113a20c:  94 46 45 f9   ldr	x20, [x20, #0xa88] ; __got._$sSSN
0x10113a210:  14 1f 00 f9   str	x20, [x24, #0x38]
0x10113a214:  5b 3b bb 97   bl	0x100008f80
0x10113a218:  19 6b 02 a9   stp	x25, x26, [x24, #0x20]
0x10113a21c:  c8 24 00 90   adrp	x8, 0x1015d2000
0x10113a220:  08 c1 11 91   add	x8, x8, #0x470 ; "nearOwnerCommandKeys(completion:)"
0x10113a224:  08 81 00 d1   sub	x8, x8, #0x20
0x10113a228:  08 01 41 b2   orr	x8, x8, #0x8000000000000000
0x10113a22c:  14 03 06 a9   stp	x20, x0, [x24, #0x60]
0x10113a230:  29 04 80 d2   mov	x9, #0x21
0x10113a234:  09 00 fa f2   movk	x9, #0xd000, lsl #0x30
0x10113a238:  00 27 04 a9   stp	x0, x9, [x24, #0x40]
0x10113a23c:  08 2b 00 f9   str	x8, [x24, #0x50]
0x10113a240:  21 76 ff d0   adrp	x1, 0x100000000
0x10113a244:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x10113a248:  23 24 00 b0   adrp	x3, 0x1015bf000
0x10113a24c:  63 00 38 91   add	x3, x3, #0xe00 ; "%{public}@: %{public}s"
0x10113a250:  e0 03 16 aa   mov	x0, x22
0x10113a254:  e2 03 17 aa   mov	x2, x23
0x10113a258:  c4 02 80 52   mov	w4, #0x16
0x10113a25c:  45 00 80 52   mov	w5, #0x2
0x10113a260:  e6 03 18 aa   mov	x6, x24
0x10113a264:  07 36 11 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x10113a268:  e0 03 18 aa   mov	x0, x24
0x10113a26c:  15 46 11 94   bl	j__swift_release
0x10113a270:  68 40 00 90   adrp	x8, 0x101946000
0x10113a274:  08 59 47 f9   ldr	x8, [x8, #0xeb0]
0x10113a278:  a0 02 08 8b   add	x0, x21, x8
0x10113a27c:  01 0c 40 f9   ldr	x1, [x0, #0x18]
0x10113a280:  ac 24 bb 97   bl	0x100003530
0x10113a284:  14 00 40 f9   ldr	x20, [x0]
0x10113a288:  e0 03 1b aa   mov	x0, x27
0x10113a28c:  e1 03 13 aa   mov	x1, x19
0x10113a290:  4b ff d8 97   bl	0x100779fbc
0x10113a294:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10113a298:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x10113a29c:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x10113a2a0:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x10113a2a4:  fa 67 42 a9   ldp	x26, x25, [sp, #0x20]
0x10113a2a8:  fc 6f 41 a9   ldp	x28, x27, [sp, #0x10]
0x10113a2ac:  ff c3 01 91   add	sp, sp, #0x70
0x10113a2b0:  ff 0f 5f d6   retab
0x10113a2b4:  ; loc_10113a2b4
0x10113a2b4:  60 40 00 90   adrp	x0, 0x101946000
0x10113a2b8:  00 00 15 91   add	x0, x0, #0x540 ; data_101946540 (__DATA.__data)
0x10113a2bc:  70 fd ff 90   adrp	x16, 0x1010e6000
0x10113a2c0:  10 a2 0c 91   add	x16, x16, #0x328
0x10113a2c4:  f0 23 c1 da   paciza	x16
0x10113a2c8:  e1 03 10 aa   mov	x1, x16
0x10113a2cc:  f1 45 11 94   bl	j__swift_once
0x10113a2d0:  b3 ff ff 17   b	loc_10113a19c ; ⤴ -0x134

