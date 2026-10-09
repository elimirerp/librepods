
sub_1001b9698:
0x1001b9698:  7f 23 03 d5   pacibsp
0x1001b969c:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1001b96a0:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1001b96a4:  fd 43 00 91   add	fp, sp, #0x10
0x1001b96a8:  f3 03 00 aa   mov	x19, x0
0x1001b96ac:  1f 50 04 71   cmp	w0, #0x114
0x1001b96b0:  43 00 00 54   b.lo	loc_1001b96b8 ; ⤵ 0x8
0x1001b96b4:  16 2f 02 94   bl	0x10024530c
0x1001b96b8:  ; loc_1001b96b8
0x1001b96b8:  08 47 00 b0   adrp	x8, 0x100a9a000
0x1001b96bc:  08 41 2e 91   add	x8, x8, #0xb90
0x1001b96c0:  09 03 80 52   mov	w9, #0x18
0x1001b96c4:  60 22 a9 9b   umaddl	x0, w19, w9, x8
0x1001b96c8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1001b96cc:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1001b96d0:  ff 0f 5f d6   retab

sub_1001b96d4:
0x1001b96d4:  7f 23 03 d5   pacibsp
0x1001b96d8:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1001b96dc:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1001b96e0:  fd 43 00 91   add	fp, sp, #0x10
0x1001b96e4:  08 47 00 b0   adrp	x8, 0x100a9a000
0x1001b96e8:  08 41 2e 91   add	x8, x8, #0xb90
0x1001b96ec:  13 00 08 4b   sub	w19, w0, w8
0x1001b96f0:  68 7e 05 53   lsr	w8, w19, #0x5
0x1001b96f4:  1f 3d 03 71   cmp	w8, #0xcf
0x1001b96f8:  43 00 00 54   b.lo	loc_1001b9700 ; ⤵ 0x8
0x1001b96fc:  04 2f 02 94   bl	0x10024530c
0x1001b9700:  ; loc_1001b9700
0x1001b9700:  68 55 95 52   mov	w8, #0xaaab
0x1001b9704:  48 55 b5 72   movk	w8, #0xaaaa, lsl #0x10
0x1001b9708:  68 7e a8 9b   umull	x8, w19, w8
0x1001b970c:  00 fd 64 d3   lsr	x0, x8, #0x24
0x1001b9710:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1001b9714:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1001b9718:  ff 0f 5f d6   retab

sub_1001b971c:
0x1001b971c:  7f 23 03 d5   pacibsp
0x1001b9720:  ff c3 00 d1   sub	sp, sp, #0x30
0x1001b9724:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x1001b9728:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x1001b972c:  fd 83 00 91   add	fp, sp, #0x20
0x1001b9730:  f3 03 00 aa   mov	x19, x0
0x1001b9734:  1f 90 00 71   cmp	w0, #0x24
0x1001b9738:  23 02 00 54   b.lo	loc_1001b977c ; ⤵ 0x44
0x1001b973c:  7f de 00 71   cmp	w19, #0x37
0x1001b9740:  83 02 00 54   b.lo	loc_1001b9790 ; ⤵ 0x50
0x1001b9744:  7f ea 00 71   cmp	w19, #0x3a
0x1001b9748:  83 02 00 54   b.lo	loc_1001b9798 ; ⤵ 0x50

