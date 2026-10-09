
sub_10020ac38:
0x10020ac38:  7f 23 03 d5   pacibsp
0x10020ac3c:  ff c3 00 d1   sub	sp, sp, #0x30
0x10020ac40:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10020ac44:  fd 83 00 91   add	fp, sp, #0x20
0x10020ac48:  a0 83 1f f8   stur	x0, [fp, #-0x8]
0x10020ac4c:  68 45 00 90   adrp	x8, 0x100ab6000
0x10020ac50:  08 c5 4c b9   ldr	w8, [x8, #0xcc4]
0x10020ac54:  68 02 00 34   cbz	w8, loc_10020aca0 ; ⤵ 0x4c
0x10020ac58:  a9 23 00 d1   sub	x9, fp, #0x8
0x10020ac5c:  ff a7 00 a9   stp	xzr, x9, [sp, #0x8]
0x10020ac60:  09 01 80 52   mov	w9, #0x8
0x10020ac64:  e9 13 00 79   strh	w9, [sp, #0x8]
0x10020ac68:  08 8d 01 11   add	w8, w8, #0x63
0x10020ac6c:  e9 a3 90 52   mov	w9, #0x851f
0x10020ac70:  69 3d aa 72   movk	w9, #0x51eb, lsl #0x10
0x10020ac74:  08 7d a9 9b   umull	x8, w8, w9
0x10020ac78:  02 d1 65 d3   ubfx	x2, x8, #0x25, #0x10
0x10020ac7c:  50 00 00 90   adrp	x16, 0x100212000
0x10020ac80:  10 e2 0c 91   add	x16, x16, #0x338
0x10020ac84:  f0 23 c1 da   paciza	x16
0x10020ac88:  e0 03 10 aa   mov	x0, x16
0x10020ac8c:  e1 23 00 91   add	x1, sp, #0x8
0x10020ac90:  03 00 80 d2   mov	x3, #0
0x10020ac94:  e6 ea 00 94   bl	0x10024582c
0x10020ac98:  60 00 00 34   cbz	w0, loc_10020aca4 ; ⤵ 0xc
0x10020ac9c:  a0 83 5f f8   ldur	x0, [fp, #-0x8]
0x10020aca0:  ; loc_10020aca0
0x10020aca0:  61 44 00 94   bl	0x10021be24
0x10020aca4:  ; loc_10020aca4
0x10020aca4:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x10020aca8:  ff c3 00 91   add	sp, sp, #0x30
0x10020acac:  ff 0f 5f d6   retab

