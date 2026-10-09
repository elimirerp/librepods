
sub_10052abc8:
0x10052abc8:  7f 23 03 d5   pacibsp
0x10052abcc:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10052abd0:  fd 03 00 91   mov	fp, sp
0x10052abd4:  16 cf ec 97   bl	0x10005e82c
0x10052abd8:  fd 7b c1 a8   ldp	fp, lr, [sp], #0x10
0x10052abdc:  ff 0f 5f d6   retab

sub_10052abe0:
0x10052abe0:  27 cf ec 17   b	0x10005e87c

sub_10052abe4:
0x10052abe4:  74 c8 ff 17   b	0x10051cdb4

sub_10052abe8:
0x10052abe8:  17 cf ec 17   b	0x10005e844

sub_10052abec:
0x10052abec:  17 cf ec 17   b	0x10005e848

sub_10052abf0:
0x10052abf0:  77 9d ec 17   b	0x1000521cc

sub_10052abf4:
0x10052abf4:  17 cf ec 17   b	0x10005e850

sub_10052abf8:
0x10052abf8:  7f 23 03 d5   pacibsp
0x10052abfc:  ff 03 01 d1   sub	sp, sp, #0x40
0x10052ac00:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x10052ac04:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x10052ac08:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10052ac0c:  fd c3 00 91   add	fp, sp, #0x30
0x10052ac10:  f3 03 14 aa   mov	x19, x20
0x10052ac14:  08 00 fc d2   mov	x8, #0xe000000000000000
0x10052ac18:  ff 23 00 a9   stp	xzr, x8, [sp]
0x10052ac1c:  f4 03 00 91   mov	x20, sp
0x10052ac20:  c0 12 80 52   mov	w0, #0x96
0x10052ac24:  3b 7c 41 94   bl	j__$ss11_StringGutsV4growyySiF
0x10052ac28:  e8 27 40 a9   ldp	x8, x9, [sp]
0x10052ac2c:  e8 27 00 a9   stp	x8, x9, [sp]
0x10052ac30:  68 84 00 90   adrp	x8, 0x1015b6000
0x10052ac34:  08 01 20 91   add	x8, x8, #0x800 ; "initializeCommand = "
0x10052ac38:  08 81 00 d1   sub	x8, x8, #0x20
0x10052ac3c:  b6 02 80 d2   mov	x22, #0x15
0x10052ac40:  16 00 fa f2   movk	x22, #0xd000, lsl #0x30
0x10052ac44:  c0 06 00 d1   sub	x0, x22, #0x1
0x10052ac48:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x10052ac4c:  f4 03 00 91   mov	x20, sp
0x10052ac50:  20 78 41 94   bl	j__$sSS6appendyySSF
0x10052ac54:  60 06 40 a9   ldp	x0, x1, [x19]
0x10052ac58:  86 7f 41 94   bl	j__$ss8DurationV11descriptionSSvg
0x10052ac5c:  f5 03 01 aa   mov	x21, x1
0x10052ac60:  f4 03 00 91   mov	x20, sp
0x10052ac64:  1b 78 41 94   bl	j__$sSS6appendyySSF
0x10052ac68:  e0 03 15 aa   mov	x0, x21
0x10052ac6c:  7d 82 41 94   bl	j__swift_bridgeObjectRelease
0x10052ac70:  68 84 00 90   adrp	x8, 0x1015b6000
0x10052ac74:  08 81 20 91   add	x8, x8, #0x820 ; ",  finalizeCommand = "
0x10052ac78:  08 81 00 d1   sub	x8, x8, #0x20
0x10052ac7c:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x10052ac80:  f4 03 00 91   mov	x20, sp
0x10052ac84:  a0 02 80 d2   mov	x0, #0x15
0x10052ac88:  00 00 fa f2   movk	x0, #0xd000, lsl #0x30
0x10052ac8c:  11 78 41 94   bl	j__$sSS6appendyySSF
0x10052ac90:  60 06 41 a9   ldp	x0, x1, [x19, #0x10]
0x10052ac94:  77 7f 41 94   bl	j__$ss8DurationV11descriptionSSvg
0x10052ac98:  f5 03 01 aa   mov	x21, x1
0x10052ac9c:  f4 03 00 91   mov	x20, sp
0x10052aca0:  0c 78 41 94   bl	j__$sSS6appendyySSF
0x10052aca4:  e0 03 15 aa   mov	x0, x21
0x10052aca8:  6e 82 41 94   bl	j__swift_bridgeObjectRelease
0x10052acac:  68 84 00 90   adrp	x8, 0x1015b6000
0x10052acb0:  08 01 21 91   add	x8, x8, #0x840 ; ",  baKeyGeneration = "
0x10052acb4:  08 81 00 d1   sub	x8, x8, #0x20
0x10052acb8:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x10052acbc:  f4 03 00 91   mov	x20, sp
0x10052acc0:  a0 02 80 d2   mov	x0, #0x15
0x10052acc4:  00 00 fa f2   movk	x0, #0xd000, lsl #0x30
0x10052acc8:  02 78 41 94   bl	j__$sSS6appendyySSF
0x10052accc:  60 06 42 a9   ldp	x0, x1, [x19, #0x20]
0x10052acd0:  68 7f 41 94   bl	j__$ss8DurationV11descriptionSSvg
0x10052acd4:  f5 03 01 aa   mov	x21, x1
0x10052acd8:  f4 03 00 91   mov	x20, sp
0x10052acdc:  fd 77 41 94   bl	j__$sSS6appendyySSF
0x10052ace0:  e0 03 15 aa   mov	x0, x21
0x10052ace4:  5f 82 41 94   bl	j__swift_bridgeObjectRelease
0x10052ace8:  68 84 00 90   adrp	x8, 0x1015b6000
0x10052acec:  08 81 21 91   add	x8, x8, #0x860 ; ",  recoveryKeyGeneration = "
0x10052acf0:  08 81 00 d1   sub	x8, x8, #0x20
0x10052acf4:  c0 1a 00 91   add	x0, x22, #0x6
0x10052acf8:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x10052acfc:  f4 03 00 91   mov	x20, sp
0x10052ad00:  f4 77 41 94   bl	j__$sSS6appendyySSF
0x10052ad04:  60 06 43 a9   ldp	x0, x1, [x19, #0x30]
0x10052ad08:  5a 7f 41 94   bl	j__$ss8DurationV11descriptionSSvg
0x10052ad0c:  f5 03 01 aa   mov	x21, x1
0x10052ad10:  f4 03 00 91   mov	x20, sp
0x10052ad14:  ef 77 41 94   bl	j__$sSS6appendyySSF
0x10052ad18:  e0 03 15 aa   mov	x0, x21
0x10052ad1c:  51 82 41 94   bl	j__swift_bridgeObjectRelease
0x10052ad20:  68 84 00 90   adrp	x8, 0x1015b6000
0x10052ad24:  08 01 22 91   add	x8, x8, #0x880 ; ",  esnKeyGeneration = "
0x10052ad28:  08 81 00 d1   sub	x8, x8, #0x20
0x10052ad2c:  c0 06 00 91   add	x0, x22, #0x1
0x10052ad30:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x10052ad34:  f4 03 00 91   mov	x20, sp
0x10052ad38:  e6 77 41 94   bl	j__$sSS6appendyySSF
0x10052ad3c:  60 06 44 a9   ldp	x0, x1, [x19, #0x40]
0x10052ad40:  4c 7f 41 94   bl	j__$ss8DurationV11descriptionSSvg
0x10052ad44:  f5 03 01 aa   mov	x21, x1
0x10052ad48:  f4 03 00 91   mov	x20, sp
0x10052ad4c:  e1 77 41 94   bl	j__$sSS6appendyySSF
0x10052ad50:  e0 03 15 aa   mov	x0, x21
0x10052ad54:  43 82 41 94   bl	j__swift_bridgeObjectRelease
0x10052ad58:  68 84 00 90   adrp	x8, 0x1015b6000
0x10052ad5c:  08 81 22 91   add	x8, x8, #0x8a0 ; ",  errorEsnKeyGeneration = "
0x10052ad60:  08 81 00 d1   sub	x8, x8, #0x20
0x10052ad64:  c0 1a 00 91   add	x0, x22, #0x6
0x10052ad68:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x10052ad6c:  f4 03 00 91   mov	x20, sp
0x10052ad70:  d8 77 41 94   bl	j__$sSS6appendyySSF
0x10052ad74:  60 06 45 a9   ldp	x0, x1, [x19, #0x50]
0x10052ad78:  3e 7f 41 94   bl	j__$ss8DurationV11descriptionSSvg
0x10052ad7c:  f3 03 01 aa   mov	x19, x1
0x10052ad80:  f4 03 00 91   mov	x20, sp
0x10052ad84:  d3 77 41 94   bl	j__$sSS6appendyySSF
0x10052ad88:  e0 03 13 aa   mov	x0, x19
0x10052ad8c:  35 82 41 94   bl	j__swift_bridgeObjectRelease
0x10052ad90:  e0 07 40 a9   ldp	x0, x1, [sp]
0x10052ad94:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x10052ad98:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x10052ad9c:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x10052ada0:  ff 03 01 91   add	sp, sp, #0x40
0x10052ada4:  ff 0f 5f d6   retab

sub_10052ada8:
0x10052ada8:  7f 23 03 d5   pacibsp
0x10052adac:  ff 03 02 d1   sub	sp, sp, #0x80
0x10052adb0:  f3 33 00 f9   str	x19, [sp, #0x60]
0x10052adb4:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x10052adb8:  fd c3 01 91   add	fp, sp, #0x70
0x10052adbc:  f3 03 08 aa   mov	x19, x8
0x10052adc0:  e8 03 00 91   mov	x8, sp
0x10052adc4:  82 03 00 94   bl	0x10052bbcc
0x10052adc8:  f5 00 00 b5   cbnz	x21, loc_10052ade4 ; ⤵ 0x1c
0x10052adcc:  e0 07 41 ad   ldp	q0, q1, [sp, #0x20]
0x10052add0:  60 06 01 ad   stp	q0, q1, [x19, #0x20]
0x10052add4:  e0 07 42 ad   ldp	q0, q1, [sp, #0x40]
0x10052add8:  60 06 02 ad   stp	q0, q1, [x19, #0x40]
0x10052addc:  e0 07 40 ad   ldp	q0, q1, [sp]
0x10052ade0:  60 06 00 ad   stp	q0, q1, [x19]
0x10052ade4:  ; loc_10052ade4
0x10052ade4:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x10052ade8:  f3 33 40 f9   ldr	x19, [sp, #0x60]
0x10052adec:  ff 03 02 91   add	sp, sp, #0x80
0x10052adf0:  ff 0f 5f d6   retab

sub_10052adf4:
0x10052adf4:  7f 23 03 d5   pacibsp
0x10052adf8:  ff c3 01 d1   sub	sp, sp, #0x70
0x10052adfc:  f9 63 03 a9   stp	x25, x24, [sp, #0x30]
0x10052ae00:  f7 5b 04 a9   stp	x23, x22, [sp, #0x40]
0x10052ae04:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10052ae08:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x10052ae0c:  fd 83 01 91   add	fp, sp, #0x60
0x10052ae10:  f6 03 15 aa   mov	x22, x21
0x10052ae14:  f3 03 14 aa   mov	x19, x20
0x10052ae18:  17 e0 41 a9   ldp	x23, x24, [x0, #0x18]
0x10052ae1c:  e1 03 17 aa   mov	x1, x23
0x10052ae20:  c4 61 eb 97   bl	0x100003530
0x10052ae24:  e8 23 00 91   add	x8, sp, #0x8
0x10052ae28:  f4 03 00 aa   mov	x20, x0
0x10052ae2c:  e0 03 17 aa   mov	x0, x23
0x10052ae30:  e1 03 18 aa   mov	x1, x24
0x10052ae34:  5f 66 41 94   bl	j__$s10FindMyBase14BinaryEncodingP9containerAA0dE10Containing_pyFTj
0x10052ae38:  60 06 40 a9   ldp	x0, x1, [x19]
0x10052ae3c:  f9 7e 41 94   bl	j__$ss8DurationV10FindMyBaseE12millisecondss5Int64Vvg
0x10052ae40:  c0 10 f8 b7   tbnz	x0, #0x3f, loc_10052b058 ; ⤵ 0x218
0x10052ae44:  08 fc 50 d3   lsr	x8, x0, #0x10
0x10052ae48:  a8 10 00 b5   cbnz	x8, loc_10052b05c ; ⤵ 0x214
0x10052ae4c:  e0 0f 00 79   strh	w0, [sp, #0x6]
0x10052ae50:  f8 67 42 a9   ldp	x24, x25, [sp, #0x20]
0x10052ae54:  e0 23 00 91   add	x0, sp, #0x8
0x10052ae58:  e1 03 18 aa   mov	x1, x24
0x10052ae5c:  0f 87 f2 97   bl	0x1001cca98
0x10052ae60:  f4 03 00 aa   mov	x20, x0
0x10052ae64:  65 cd f3 97   bl	0x10021e3f8
0x10052ae68:  f7 03 00 aa   mov	x23, x0
0x10052ae6c:  e1 9a 00 90   adrp	x1, 0x101886000

