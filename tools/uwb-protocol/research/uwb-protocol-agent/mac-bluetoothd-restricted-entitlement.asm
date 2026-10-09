0x1005cd940:  10 42 00 91   add	x16, x16, #0x10
0x1005cd944:  f1 03 00 aa   mov	x17, x0
0x1005cd948:  31 e2 fe f2   movk	x17, #0xf711, lsl #0x30
0x1005cd94c:  30 0a c1 da   pacda	x16, x17
0x1005cd950:  10 00 00 f9   str	x16, [x0]
0x1005cd954:  50 24 00 b0   adrp	x16, 0x100a56000
0x1005cd958:  10 02 19 91   add	x16, x16, #0x640 ; data_100a56640 (__DATA_CONST.__const)
0x1005cd95c:  10 a2 07 91   add	x16, x16, #0x1e8
0x1005cd960:  f1 03 08 aa   mov	x17, x8
0x1005cd964:  d1 4c eb f2   movk	x17, #0x5a66, lsl #0x30
0x1005cd968:  30 0a c1 da   pacda	x16, x17
0x1005cd96c:  10 48 00 f9   str	x16, [x0, #0x90]
0x1005cd970:  50 24 00 b0   adrp	x16, 0x100a56000
0x1005cd974:  10 02 19 91   add	x16, x16, #0x640 ; data_100a56640 (__DATA_CONST.__const)
0x1005cd978:  10 a2 0c 91   add	x16, x16, #0x328
0x1005cd97c:  f1 03 09 aa   mov	x17, x9
0x1005cd980:  f1 e8 f5 f2   movk	x17, #0xaf47, lsl #0x30
0x1005cd984:  30 0a c1 da   pacda	x16, x17
0x1005cd988:  10 4c 00 f9   str	x16, [x0, #0x98]
0x1005cd98c:  50 24 00 b0   adrp	x16, 0x100a56000
0x1005cd990:  10 02 19 91   add	x16, x16, #0x640 ; data_100a56640 (__DATA_CONST.__const)
0x1005cd994:  10 82 0d 91   add	x16, x16, #0x360
0x1005cd998:  f1 03 0a aa   mov	x17, x10
0x1005cd99c:  31 a2 fe f2   movk	x17, #0xf511, lsl #0x30
0x1005cd9a0:  30 0a c1 da   pacda	x16, x17
0x1005cd9a4:  10 50 00 f9   str	x16, [x0, #0xa0]
0x1005cd9a8:  1f 50 01 79   strh	wzr, [x0, #0xa8]
0x1005cd9ac:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cd9b0:  01 b1 41 f9   ldr	x1, [x8, #0x360]
0x1005cd9b4:  5b 0f f4 97   bl	0x1002d1720
0x1005cd9b8:  60 aa 02 39   strb	w0, [x19, #0xaa]
0x1005cd9bc:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cd9c0:  01 c5 41 f9   ldr	x1, [x8, #0x388] ; "\xdf\xeb\x92"
0x1005cd9c4:  e0 03 13 aa   mov	x0, x19
0x1005cd9c8:  56 0f f4 97   bl	0x1002d1720
0x1005cd9cc:  60 ae 02 39   strb	w0, [x19, #0xab]
0x1005cd9d0:  7f 5a 01 79   strh	wzr, [x19, #0xac]
0x1005cd9d4:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cd9d8:  01 c9 41 f9   ldr	x1, [x8, #0x390]
0x1005cd9dc:  e0 03 13 aa   mov	x0, x19
0x1005cd9e0:  50 0f f4 97   bl	0x1002d1720
0x1005cd9e4:  60 ba 02 39   strb	w0, [x19, #0xae]
0x1005cd9e8:  7f f2 0a b8   stur	wzr, [x19, #0xaf]
0x1005cd9ec:  7f 22 0b b8   stur	wzr, [x19, #0xb2]
0x1005cd9f0:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cd9f4:  01 b5 41 f9   ldr	x1, [x8, #0x368] ; "?\xeb\x92"
0x1005cd9f8:  e0 03 13 aa   mov	x0, x19
0x1005cd9fc:  49 0f f4 97   bl	0x1002d1720
0x1005cda00:  60 da 02 39   strb	w0, [x19, #0xb6]
0x1005cda04:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cda08:  01 b9 41 f9   ldr	x1, [x8, #0x370] ; "e\xeb\x92"
0x1005cda0c:  e0 03 13 aa   mov	x0, x19
0x1005cda10:  44 0f f4 97   bl	0x1002d1720
0x1005cda14:  60 de 02 39   strb	w0, [x19, #0xb7]
0x1005cda18:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cda1c:  01 a9 41 f9   ldr	x1, [x8, #0x350] ; "\xc2\xea\x92"
0x1005cda20:  e0 03 13 aa   mov	x0, x19
0x1005cda24:  3f 0f f4 97   bl	0x1002d1720
0x1005cda28:  60 e2 02 39   strb	w0, [x19, #0xb8]
0x1005cda2c:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cda30:  01 ad 41 f9   ldr	x1, [x8, #0x358] ; "\xed\xea\x92"
0x1005cda34:  e0 03 13 aa   mov	x0, x19
0x1005cda38:  3a 0f f4 97   bl	0x1002d1720
0x1005cda3c:  60 e6 02 39   strb	w0, [x19, #0xb9]
0x1005cda40:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cda44:  01 a5 41 f9   ldr	x1, [x8, #0x348] ; "\x9b\xea\x92"
0x1005cda48:  e0 03 13 aa   mov	x0, x19
0x1005cda4c:  35 0f f4 97   bl	0x1002d1720
0x1005cda50:  60 ea 02 39   strb	w0, [x19, #0xba]
0x1005cda54:  7f b2 0b 78   sturh	wzr, [x19, #0xbb]
0x1005cda58:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cda5c:  01 bd 41 f9   ldr	x1, [x8, #0x378] ; "\x95\xeb\x92"
0x1005cda60:  e0 03 13 aa   mov	x0, x19
0x1005cda64:  2f 0f f4 97   bl	0x1002d1720
0x1005cda68:  60 f6 02 39   strb	w0, [x19, #0xbd]
0x1005cda6c:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cda70:  01 dd 41 f9   ldr	x1, [x8, #0x3b8] ; "\xd5\xec\x92"
0x1005cda74:  e0 03 13 aa   mov	x0, x19
0x1005cda78:  2a 0f f4 97   bl	0x1002d1720
0x1005cda7c:  60 fa 02 39   strb	w0, [x19, #0xbe]
0x1005cda80:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cda84:  01 c1 41 f9   ldr	x1, [x8, #0x380] ; "\xba\xeb\x92"
0x1005cda88:  e0 03 13 aa   mov	x0, x19
0x1005cda8c:  25 0f f4 97   bl	0x1002d1720
0x1005cda90:  60 fe 02 39   strb	w0, [x19, #0xbf]
0x1005cda94:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cda98:  01 cd 41 f9   ldr	x1, [x8, #0x398]
0x1005cda9c:  e0 03 13 aa   mov	x0, x19
0x1005cdaa0:  20 0f f4 97   bl	0x1002d1720
0x1005cdaa4:  60 02 03 39   strb	w0, [x19, #0xc0]
0x1005cdaa8:  88 26 00 90   adrp	x8, 0x100a9d000
0x1005cdaac:  01 d5 41 f9   ldr	x1, [x8, #0x3a8] ; "w\xec\x92"
0x1005cdab0:  e0 03 13 aa   mov	x0, x19
0x1005cdab4:  1b 0f f4 97   bl	0x1002d1720
0x1005cdab8:  e8 03 13 aa   mov	x8, x19
0x1005cdabc:  1f 8d 0d f8   str	xzr, [x8, #0xd8]!
0x1005cdac0:  00 91 1e 38   sturb	w0, [x8, #-0x17]
0x1005cdac4:  00 05 00 0f   movi	v0.2s, #0x8
0x1005cdac8:  00 a1 1e bc   stur	s0, [x8, #-0x16]
0x1005cdacc:  1f 01 1f b8   stur	wzr, [x8, #-0x10]
0x1005cdad0:  1f 05 00 f9   str	xzr, [x8, #0x8]
0x1005cdad4:  08 81 1f f8   stur	x8, [x8, #-0x8]
0x1005cdad8:  08 81 57 b8   ldur	w8, [x8, #-0x88]
0x1005cdadc:  1f 05 00 71   cmp	w8, #0x1
0x1005cdae0:  2b 01 00 54   b.lt	loc_1005cdb04 ; ⤵ 0x24
0x1005cdae4:  29 20 80 52   mov	w9, #0x101
0x1005cdae8:  69 56 01 79   strh	w9, [x19, #0xaa]
0x1005cdaec:  2a 00 80 52   mov	w10, #0x1
0x1005cdaf0:  6a da 02 39   strb	w10, [x19, #0xb6]
0x1005cdaf4:  69 72 01 79   strh	w9, [x19, #0xb8]
0x1005cdaf8:  6a ea 02 39   strb	w10, [x19, #0xba]
0x1005cdafc:  6a f6 02 39   strb	w10, [x19, #0xbd]
0x1005cdb00:  6a ba 02 39   strb	w10, [x19, #0xae]
0x1005cdb04:  ; loc_1005cdb04
0x1005cdb04:  1f 01 00 71   cmp	w8, #0
0x1005cdb08:  e8 d3 9f 5a   csetm	w8, gt
0x1005cdb0c:  68 ca 00 b9   str	w8, [x19, #0xc8]
0x1005cdb10:  68 fa 42 39   ldrb	w8, [x19, #0xbe]
0x1005cdb14:  1f 05 00 71   cmp	w8, #0x1
0x1005cdb18:  41 02 00 54   b.ne	loc_1005cdb60 ; ⤵ 0x48
0x1005cdb1c:  28 28 00 90   adrp	x8, 0x100ad1000
0x1005cdb20:  08 01 32 91   add	x8, x8, #0xc80
0x1005cdb24:  14 01 40 f9   ldr	x20, [x8]
0x1005cdb28:  e0 03 14 aa   mov	x0, x20
0x1005cdb2c:  01 00 80 52   mov	w1, #0
0x1005cdb30:  c0 06 09 94   bl	j__os_log_type_enabled
0x1005cdb34:  60 01 00 34   cbz	w0, loc_1005cdb60 ; ⤵ 0x2c
0x1005cdb38:  ff 03 00 79   strh	wzr, [sp]
0x1005cdb3c:  80 d1 ff f0   adrp	x0, 0x100000000
0x1005cdb40:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1005cdb44:  23 1f 00 b0   adrp	x3, 0x1009b2000
0x1005cdb48:  63 30 17 91   add	x3, x3, #0x5cc ; "Entitled Scan Client - Checked in"
0x1005cdb4c:  e4 03 00 91   mov	x4, sp
0x1005cdb50:  e1 03 14 aa   mov	x1, x20
0x1005cdb54:  02 00 80 52   mov	w2, #0
0x1005cdb58:  45 00 80 52   mov	w5, #0x2
0x1005cdb5c:  fd 01 09 94   bl	j___os_log_impl
0x1005cdb60:  ; loc_1005cdb60
0x1005cdb60:  e0 03 13 aa   mov	x0, x19
0x1005cdb64:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x1005cdb68:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x1005cdb6c:  ff c3 00 91   add	sp, sp, #0x30
0x1005cdb70:  ff 0f 5f d6   retab
0x1005cdb74:  f4 03 00 aa   mov	x20, x0
0x1005cdb78:  e0 03 13 aa   mov	x0, x19
0x1005cdb7c:  75 0f f4 97   bl	0x1002d1950
0x1005cdb80:  e0 03 14 aa   mov	x0, x20
0x1005cdb84:  57 00 09 94   bl	j___Unwind_Resume

sub_1005cdb88:
0x1005cdb88:  62 ff ff 17   b	0x1005cd910

sub_1005cdb8c:
0x1005cdb8c:  7f 23 03 d5   pacibsp
0x1005cdb90:  fa 67 bb a9   stp	x26, x25, [sp, #-0x50]!
0x1005cdb94:  f8 5f 01 a9   stp	x24, x23, [sp, #0x10]
0x1005cdb98:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x1005cdb9c:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x1005cdba0:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x1005cdba4:  fd 03 01 91   add	fp, sp, #0x40
0x1005cdba8:  f3 03 00 aa   mov	x19, x0

