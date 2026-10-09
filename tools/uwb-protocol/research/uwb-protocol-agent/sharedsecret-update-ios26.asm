
sub_100b6bae0:
0x100b6bae0:  7f 23 03 d5   pacibsp
0x100b6bae4:  fc 0f 1a f8   str	x28, [sp, #-0x60]!
0x100b6bae8:  fb 6b 01 a9   stp	x27, x26, [sp, #0x10]
0x100b6baec:  f9 63 02 a9   stp	x25, x24, [sp, #0x20]
0x100b6baf0:  f7 5b 03 a9   stp	x23, x22, [sp, #0x30]
0x100b6baf4:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x100b6baf8:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x100b6bafc:  fd 43 01 91   add	fp, sp, #0x50
0x100b6bb00:  ff 43 03 d1   sub	sp, sp, #0xd0
0x100b6bb04:  f9 03 15 aa   mov	x25, x21
0x100b6bb08:  fc 03 02 aa   mov	x28, x2
0x100b6bb0c:  fb 03 01 aa   mov	x27, x1
0x100b6bb10:  f6 03 00 aa   mov	x22, x0
0x100b6bb14:  c8 68 00 f0   adrp	x8, 0x101886000
0x100b6bb18:  08 01 43 f9   ldr	x8, [x8, #0x600] ; __got.___stack_chk_guard
0x100b6bb1c:  08 01 40 f9   ldr	x8, [x8]
0x100b6bb20:  a8 03 1a f8   stur	x8, [fp, #-0x60]
0x100b6bb24:  a0 6d 00 b0   adrp	x0, 0x101920000
0x100b6bb28:  00 20 16 91   add	x0, x0, #0x588 ; data_101920588 (__DATA.__data)
0x100b6bb2c:  61 56 00 90   adrp	x1, 0x101637000
0x100b6bb30:  21 c0 38 91   add	x1, x1, #0xe30
0x100b6bb34:  30 32 d5 97   bl	0x1000b83f4
0x100b6bb38:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x100b6bb3c:  f1 03 00 aa   mov	x17, x0
0x100b6bb40:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b6bb44:  30 1a c1 da   autda	x16, x17
0x100b6bb48:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100b6bb4c:  e9 03 08 aa   mov	x9, x8
0x100b6bb50:  f1 68 00 f0   adrp	x17, 0x10188a000
0x100b6bb54:  31 02 13 91   add	x17, x17, #0x4c0 ; __got.___chkstk_darwin
0x100b6bb58:  30 02 40 f9   ldr	x16, [x17]
0x100b6bb5c:  11 0a 3f d7   blraa	x16, x17
0x100b6bb60:  e9 03 00 91   mov	x9, sp
0x100b6bb64:  0a 3d 00 91   add	x10, x8, #0xf
0x100b6bb68:  4c ed 7c 92   and	x12, x10, #0xfffffffffffffff0
0x100b6bb6c:  33 01 0c cb   sub	x19, x9, x12
0x100b6bb70:  7f 02 00 91   mov	sp, x19
0x100b6bb74:  e9 03 08 aa   mov	x9, x8
0x100b6bb78:  f1 68 00 f0   adrp	x17, 0x10188a000
0x100b6bb7c:  31 02 13 91   add	x17, x17, #0x4c0 ; __got.___chkstk_darwin
0x100b6bb80:  30 02 40 f9   ldr	x16, [x17]
0x100b6bb84:  11 0a 3f d7   blraa	x16, x17
0x100b6bb88:  e8 03 00 91   mov	x8, sp
0x100b6bb8c:  14 01 0c cb   sub	x20, x8, x12
0x100b6bb90:  9f 02 00 91   mov	sp, x20
0x100b6bb94:  a0 0e 8e d2   mov	x0, #0x7075
0x100b6bb98:  80 2c ac f2   movk	x0, #0x6164, lsl #0x10
0x100b6bb9c:  80 ae cc f2   movk	x0, #0x6574, lsl #0x20
0x100b6bba0:  01 c0 fc d2   mov	x1, #0xe600000000000000
0x100b6bba4:  d3 73 28 94   bl	j__$sSS10FindMyBaseE8utf8Data10Foundation0E0Vvg
0x100b6bba8:  f8 03 00 aa   mov	x24, x0
0x100b6bbac:  f7 03 01 aa   mov	x23, x1
0x100b6bbb0:  e0 03 16 aa   mov	x0, x22
0x100b6bbb4:  e1 03 1b aa   mov	x1, x27
0x100b6bbb8:  8f b4 d2 97   bl	0x100018df4
0x100b6bbbc:  1c 3c 00 b4   cbz	x28, loc_100b6c33c ; ⤵ 0x780
0x100b6bbc0:  a8 63 00 d1   sub	x8, fp, #0x18
0x100b6bbc4:  14 01 10 f8   stur	x20, [x8, #-0x100]
0x100b6bbc8:  a8 43 00 d1   sub	x8, fp, #0x10
0x100b6bbcc:  13 01 10 f8   stur	x19, [x8, #-0x100]
0x100b6bbd0:  ea fe 7e d3   lsr	x10, x23, #0x3e
0x100b6bbd4:  08 ff 60 d3   lsr	x8, x24, #0x20
0x100b6bbd8:  09 7f 40 93   sxtw	x9, w24
0x100b6bbdc:  a9 ab 35 a9   stp	x9, x10, [fp, #-0xa8]
0x100b6bbe0:  09 ff 60 93   asr	x9, x24, #0x20
0x100b6bbe4:  a9 a3 33 a9   stp	x9, x8, [fp, #-0xc8]
0x100b6bbe8:  08 01 18 6b   subs	w8, w8, w24
0x100b6bbec:  e9 77 9f 1a   cset	w9, vs
0x100b6bbf0:  a9 43 10 b8   stur	w9, [fp, #-0xfc]
0x100b6bbf4:  08 7d 40 93   sxtw	x8, w8
0x100b6bbf8:  a9 23 00 d1   sub	x9, fp, #0x8
0x100b6bbfc:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x100b6bc00:  e9 de 70 d3   ubfx	x9, x23, #0x30, #0x8
0x100b6bc04:  e8 fe 68 d3   lsr	x8, x23, #0x28
0x100b6bc08:  a8 a7 32 a9   stp	x8, x9, [fp, #-0xd8]
0x100b6bc0c:  e9 fe 60 d3   lsr	x9, x23, #0x20
0x100b6bc10:  e8 fe 58 d3   lsr	x8, x23, #0x18
0x100b6bc14:  a8 a7 31 a9   stp	x8, x9, [fp, #-0xe8]
0x100b6bc18:  e9 fe 50 d3   lsr	x9, x23, #0x10
0x100b6bc1c:  e8 fe 48 d3   lsr	x8, x23, #0x8
0x100b6bc20:  a8 a7 30 a9   stp	x8, x9, [fp, #-0xf8]
0x100b6bc24:  b7 e3 34 a9   stp	x23, x24, [fp, #-0xb8]
0x100b6bc28:  ; loc_100b6bc28
0x100b6bc28:  e2 7c 28 94   bl	j___objc_autoreleasePoolPush
0x100b6bc2c:  fa 03 00 aa   mov	x26, x0
0x100b6bc30:  00 00 80 d2   mov	x0, #0
0x100b6bc34:  f3 64 28 94   bl	j__$s10Foundation13__DataStorageCMa
0x100b6bc38:  01 30 40 b9   ldr	w1, [x0, #0x30]
0x100b6bc3c:  02 68 40 79   ldrh	w2, [x0, #0x34]
0x100b6bc40:  5c 7e 28 94   bl	j__swift_allocObject
0x100b6bc44:  f4 03 00 aa   mov	x20, x0
0x100b6bc48:  e0 03 16 aa   mov	x0, x22
0x100b6bc4c:  e1 03 1b aa   mov	x1, x27
0x100b6bc50:  69 b4 d2 97   bl	0x100018df4
0x100b6bc54:  00 04 80 52   mov	w0, #0x20
0x100b6bc58:  da 64 28 94   bl	j__$s10Foundation13__DataStorageC6lengthACSi_tcfc
0x100b6bc5c:  08 00 42 b2   orr	x8, x0, #0x4000000000000000
0x100b6bc60:  09 04 c0 d2   mov	x9, #0x2000000000
0x100b6bc64:  a9 23 39 a9   stp	x9, x8, [fp, #-0x70]
0x100b6bc68:  a8 03 56 f8   ldur	x8, [fp, #-0xa0]
0x100b6bc6c:  1f 05 00 71   cmp	w8, #0x1
0x100b6bc70:  0c 06 00 54   b.gt	loc_100b6bd30 ; ⤵ 0xc0
0x100b6bc74:  88 09 00 35   cbnz	w8, loc_100b6bda4 ; ⤵ 0x130
0x100b6bc78:  b8 83 16 38   sturb	w24, [fp, #-0x98]
0x100b6bc7c:  08 ff 48 d3   lsr	x8, x24, #0x8
0x100b6bc80:  a8 93 16 38   sturb	w8, [fp, #-0x97]
0x100b6bc84:  08 ff 50 d3   lsr	x8, x24, #0x10
0x100b6bc88:  a8 a3 16 38   sturb	w8, [fp, #-0x96]
0x100b6bc8c:  08 ff 58 d3   lsr	x8, x24, #0x18
0x100b6bc90:  a8 b3 16 38   sturb	w8, [fp, #-0x95]
0x100b6bc94:  08 ff 78 d3   lsr	x8, x24, #0x38
0x100b6bc98:  a9 03 54 f8   ldur	x9, [fp, #-0xc0]
0x100b6bc9c:  a9 c3 16 38   sturb	w9, [fp, #-0x94]
0x100b6bca0:  09 ff 68 d3   lsr	x9, x24, #0x28
0x100b6bca4:  a9 d3 16 38   sturb	w9, [fp, #-0x93]
0x100b6bca8:  09 ff 70 d3   lsr	x9, x24, #0x30
0x100b6bcac:  a9 e3 16 38   sturb	w9, [fp, #-0x92]
0x100b6bcb0:  a8 f3 16 38   sturb	w8, [fp, #-0x91]
0x100b6bcb4:  b7 03 17 38   sturb	w23, [fp, #-0x90]
0x100b6bcb8:  aa a3 70 a9   ldp	x10, x8, [fp, #-0xf8]
0x100b6bcbc:  aa 13 17 38   sturb	w10, [fp, #-0x8f]
0x100b6bcc0:  a8 23 17 38   sturb	w8, [fp, #-0x8e]
0x100b6bcc4:  ab a3 71 a9   ldp	x11, x8, [fp, #-0xe8]
0x100b6bcc8:  ab 33 17 38   sturb	w11, [fp, #-0x8d]
0x100b6bccc:  a8 43 17 38   sturb	w8, [fp, #-0x8c]
0x100b6bcd0:  a8 8b 72 a9   ldp	x8, x2, [fp, #-0xd8]
0x100b6bcd4:  a8 53 17 38   sturb	w8, [fp, #-0x8b]
0x100b6bcd8:  bf 83 18 f8   stur	xzr, [fp, #-0x78]
0x100b6bcdc:  a0 e3 01 d1   sub	x0, fp, #0x78
0x100b6bce0:  a1 63 02 d1   sub	x1, fp, #0x98
0x100b6bce4:  fb 7b 28 94   bl	j__CCKDFParametersCreateAnsiX963
0x100b6bce8:  00 0e 00 35   cbnz	w0, loc_100b6bea8 ; ⤵ 0x1c0
0x100b6bcec:  68 ff 7e d3   lsr	x8, x27, #0x3e
0x100b6bcf0:  1f 05 00 71   cmp	w8, #0x1
0x100b6bcf4:  ac 15 00 54   b.gt	loc_100b6bfa8 ; ⤵ 0x2b4
0x100b6bcf8:  48 0e 00 34   cbz	w8, loc_100b6bec0 ; ⤵ 0x1c8
0x100b6bcfc:  f7 03 1a aa   mov	x23, x26
0x100b6bd00:  da 7e 40 93   sxtw	x26, w22
0x100b6bd04:  5f 83 96 eb   cmp	x26, x22, asr #0x20
0x100b6bd08:  ac 62 00 54   b.gt	loc_100b6c95c ; ⤵ 0xc54
0x100b6bd0c:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6bd10:  a8 64 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b6bd14:  60 51 00 b4   cbz	x0, loc_100b6c740 ; ⤵ 0xa2c
0x100b6bd18:  f3 03 00 aa   mov	x19, x0
0x100b6bd1c:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6bd20:  b0 64 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b6bd24:  48 03 00 eb   subs	x8, x26, x0
0x100b6bd28:  07 1d 00 54   b.vc	loc_100b6c0c8 ; ⤵ 0x3a0
0x100b6bd2c:  11 03 00 14   b	loc_100b6c970 ; ⤵ 0xc44
0x100b6bd30:  ; loc_100b6bd30
0x100b6bd30:  1f 09 00 71   cmp	w8, #0x2
0x100b6bd34:  a1 0a 00 54   b.ne	loc_100b6be88 ; ⤵ 0x154
0x100b6bd38:  e8 03 18 aa   mov	x8, x24
0x100b6bd3c:  f8 03 1a aa   mov	x24, x26
0x100b6bd40:  1a 09 40 f9   ldr	x26, [x8, #0x10]
0x100b6bd44:  f4 f6 40 92   and	x20, x23, #0x3fffffffffffffff
0x100b6bd48:  9a 64 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b6bd4c:  c0 44 00 b4   cbz	x0, loc_100b6c5e4 ; ⤵ 0x898
0x100b6bd50:  f3 03 00 aa   mov	x19, x0
0x100b6bd54:  f4 f6 40 92   and	x20, x23, #0x3fffffffffffffff
0x100b6bd58:  a2 64 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b6bd5c:  48 03 00 eb   subs	x8, x26, x0
0x100b6bd60:  66 5e 00 54   b.vs	loc_100b6c92c ; ⤵ 0xbcc
0x100b6bd64:  13 01 13 8b   add	x19, x8, x19
0x100b6bd68:  f4 f6 40 92   and	x20, x23, #0x3fffffffffffffff
0x100b6bd6c:  99 64 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b6bd70:  f3 43 00 b4   cbz	x19, loc_100b6c5ec ; ⤵ 0x87c
0x100b6bd74:  bf 83 17 f8   stur	xzr, [fp, #-0x88]
0x100b6bd78:  a9 03 55 f8   ldur	x9, [fp, #-0xb0]
0x100b6bd7c:  29 21 41 a9   ldp	x9, x8, [x9, #0x10]
0x100b6bd80:  02 01 09 eb   subs	x2, x8, x9
0x100b6bd84:  86 5d 00 54   b.vs	loc_100b6c934 ; ⤵ 0xbb0
0x100b6bd88:  fa 03 18 aa   mov	x26, x24
0x100b6bd8c:  a0 23 02 d1   sub	x0, fp, #0x88
0x100b6bd90:  e1 03 13 aa   mov	x1, x19
0x100b6bd94:  cf 7b 28 94   bl	j__CCKDFParametersCreateAnsiX963
0x100b6bd98:  a0 0c 00 34   cbz	w0, loc_100b6bf2c ; ⤵ 0x194
0x100b6bd9c:  74 19 82 12   mov	w20, #0xffffef34
0x100b6bda0:  07 01 00 14   b	loc_100b6c1bc ; ⤵ 0x41c
0x100b6bda4:  ; loc_100b6bda4
0x100b6bda4:  a8 83 55 f8   ldur	x8, [fp, #-0xa8]
0x100b6bda8:  a9 83 53 f8   ldur	x9, [fp, #-0xc8]
0x100b6bdac:  3f 01 08 eb   cmp	x9, x8
0x100b6bdb0:  cb 5b 00 54   b.lt	loc_100b6c928 ; ⤵ 0xb78
0x100b6bdb4:  f4 f6 40 92   and	x20, x23, #0x3fffffffffffffff
0x100b6bdb8:  7e 64 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b6bdbc:  c0 46 00 b4   cbz	x0, loc_100b6c694 ; ⤵ 0x8d8
0x100b6bdc0:  f3 03 00 aa   mov	x19, x0
0x100b6bdc4:  f4 f6 40 92   and	x20, x23, #0x3fffffffffffffff
0x100b6bdc8:  86 64 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b6bdcc:  a8 83 55 f8   ldur	x8, [fp, #-0xa8]
0x100b6bdd0:  08 01 00 eb   subs	x8, x8, x0
0x100b6bdd4:  e6 5a 00 54   b.vs	loc_100b6c930 ; ⤵ 0xb5c
0x100b6bdd8:  13 01 13 8b   add	x19, x8, x19
0x100b6bddc:  f4 f6 40 92   and	x20, x23, #0x3fffffffffffffff
0x100b6bde0:  7c 64 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b6bde4:  d3 45 00 b4   cbz	x19, loc_100b6c69c ; ⤵ 0x8b8
0x100b6bde8:  bf 83 17 f8   stur	xzr, [fp, #-0x88]
0x100b6bdec:  a8 43 50 b8   ldur	w8, [fp, #-0xfc]
0x100b6bdf0:  48 5a 00 37   tbnz	w8, #0, loc_100b6c938 ; ⤵ 0xb48
0x100b6bdf4:  a0 23 02 d1   sub	x0, fp, #0x88
0x100b6bdf8:  e1 03 13 aa   mov	x1, x19
0x100b6bdfc:  a8 23 00 d1   sub	x8, fp, #0x8
0x100b6be00:  02 01 50 f8   ldur	x2, [x8, #-0x100]
0x100b6be04:  b3 7b 28 94   bl	j__CCKDFParametersCreateAnsiX963
0x100b6be08:  00 05 00 35   cbnz	w0, loc_100b6bea8 ; ⤵ 0xa0
0x100b6be0c:  68 ff 7e d3   lsr	x8, x27, #0x3e
0x100b6be10:  1f 05 00 71   cmp	w8, #0x1
0x100b6be14:  8c 12 00 54   b.gt	loc_100b6c064 ; ⤵ 0x250
0x100b6be18:  68 1d 00 35   cbnz	w8, loc_100b6c1c4 ; ⤵ 0x3ac
0x100b6be1c:  b6 83 16 38   sturb	w22, [fp, #-0x98]
0x100b6be20:  c8 fe 48 d3   lsr	x8, x22, #0x8
0x100b6be24:  a8 93 16 38   sturb	w8, [fp, #-0x97]
0x100b6be28:  c8 fe 50 d3   lsr	x8, x22, #0x10
0x100b6be2c:  a8 a3 16 38   sturb	w8, [fp, #-0x96]
0x100b6be30:  c8 fe 58 d3   lsr	x8, x22, #0x18
0x100b6be34:  a8 b3 16 38   sturb	w8, [fp, #-0x95]
0x100b6be38:  c8 fe 60 d3   lsr	x8, x22, #0x20
0x100b6be3c:  a8 c3 16 38   sturb	w8, [fp, #-0x94]
0x100b6be40:  c8 fe 68 d3   lsr	x8, x22, #0x28
0x100b6be44:  a8 d3 16 38   sturb	w8, [fp, #-0x93]
0x100b6be48:  c8 fe 70 d3   lsr	x8, x22, #0x30
0x100b6be4c:  a8 e3 16 38   sturb	w8, [fp, #-0x92]
0x100b6be50:  c8 fe 78 d3   lsr	x8, x22, #0x38
0x100b6be54:  a8 f3 16 38   sturb	w8, [fp, #-0x91]
0x100b6be58:  68 ff 48 d3   lsr	x8, x27, #0x8
0x100b6be5c:  bb 03 17 38   sturb	w27, [fp, #-0x90]
0x100b6be60:  69 ff 50 d3   lsr	x9, x27, #0x10
0x100b6be64:  a8 13 17 38   sturb	w8, [fp, #-0x8f]
0x100b6be68:  68 ff 58 d3   lsr	x8, x27, #0x18
0x100b6be6c:  a9 23 17 38   sturb	w9, [fp, #-0x8e]
0x100b6be70:  69 ff 60 d3   lsr	x9, x27, #0x20
0x100b6be74:  a8 33 17 38   sturb	w8, [fp, #-0x8d]
0x100b6be78:  68 ff 68 d3   lsr	x8, x27, #0x28
0x100b6be7c:  a9 43 17 38   sturb	w9, [fp, #-0x8c]
0x100b6be80:  a8 53 17 38   sturb	w8, [fp, #-0x8b]
0x100b6be84:  f2 00 00 14   b	loc_100b6c24c ; ⤵ 0x3c8
0x100b6be88:  ; loc_100b6be88
0x100b6be88:  bf e3 16 f8   stur	xzr, [fp, #-0x92]
0x100b6be8c:  bf 83 16 f8   stur	xzr, [fp, #-0x98]
0x100b6be90:  bf 83 18 f8   stur	xzr, [fp, #-0x78]
0x100b6be94:  a0 e3 01 d1   sub	x0, fp, #0x78
0x100b6be98:  a1 63 02 d1   sub	x1, fp, #0x98
0x100b6be9c:  02 00 80 d2   mov	x2, #0
0x100b6bea0:  8c 7b 28 94   bl	j__CCKDFParametersCreateAnsiX963
0x100b6bea4:  60 00 00 34   cbz	w0, loc_100b6beb0 ; ⤵ 0xc
0x100b6bea8:  ; loc_100b6bea8
0x100b6bea8:  74 19 82 12   mov	w20, #0xffffef34
0x100b6beac:  f9 00 00 14   b	loc_100b6c290 ; ⤵ 0x3e4
0x100b6beb0:  ; loc_100b6beb0
0x100b6beb0:  68 ff 7e d3   lsr	x8, x27, #0x3e
0x100b6beb4:  1f 05 00 71   cmp	w8, #0x1
0x100b6beb8:  2c 09 00 54   b.gt	loc_100b6bfdc ; ⤵ 0x124
0x100b6bebc:  e8 0e 00 35   cbnz	w8, loc_100b6c098 ; ⤵ 0x1dc
0x100b6bec0:  ; loc_100b6bec0
0x100b6bec0:  b6 83 17 38   sturb	w22, [fp, #-0x88]
0x100b6bec4:  c8 fe 48 d3   lsr	x8, x22, #0x8
0x100b6bec8:  a8 93 17 38   sturb	w8, [fp, #-0x87]
0x100b6becc:  c8 fe 50 d3   lsr	x8, x22, #0x10
0x100b6bed0:  a8 a3 17 38   sturb	w8, [fp, #-0x86]
0x100b6bed4:  c8 fe 58 d3   lsr	x8, x22, #0x18
0x100b6bed8:  a8 b3 17 38   sturb	w8, [fp, #-0x85]
0x100b6bedc:  c8 fe 60 d3   lsr	x8, x22, #0x20
0x100b6bee0:  a8 c3 17 38   sturb	w8, [fp, #-0x84]
0x100b6bee4:  c8 fe 68 d3   lsr	x8, x22, #0x28
0x100b6bee8:  a8 d3 17 38   sturb	w8, [fp, #-0x83]
0x100b6beec:  c8 fe 70 d3   lsr	x8, x22, #0x30
0x100b6bef0:  a8 e3 17 38   sturb	w8, [fp, #-0x82]
0x100b6bef4:  c8 fe 78 d3   lsr	x8, x22, #0x38
0x100b6bef8:  a8 f3 17 38   sturb	w8, [fp, #-0x81]
0x100b6befc:  68 ff 48 d3   lsr	x8, x27, #0x8
0x100b6bf00:  bb 03 18 38   sturb	w27, [fp, #-0x80]
0x100b6bf04:  69 ff 50 d3   lsr	x9, x27, #0x10
0x100b6bf08:  a8 13 18 38   sturb	w8, [fp, #-0x7f]
0x100b6bf0c:  68 ff 58 d3   lsr	x8, x27, #0x18
0x100b6bf10:  a9 23 18 38   sturb	w9, [fp, #-0x7e]
0x100b6bf14:  69 ff 60 d3   lsr	x9, x27, #0x20
0x100b6bf18:  a8 33 18 38   sturb	w8, [fp, #-0x7d]
0x100b6bf1c:  68 ff 68 d3   lsr	x8, x27, #0x28
0x100b6bf20:  a9 43 18 38   sturb	w9, [fp, #-0x7c]
0x100b6bf24:  a8 53 18 38   sturb	w8, [fp, #-0x7b]
0x100b6bf28:  3c 00 00 14   b	loc_100b6c018 ; ⤵ 0xf0
0x100b6bf2c:  ; loc_100b6bf2c
0x100b6bf2c:  68 ff 7e d3   lsr	x8, x27, #0x3e
0x100b6bf30:  1f 05 00 71   cmp	w8, #0x1
0x100b6bf34:  0c 08 00 54   b.gt	loc_100b6c034 ; ⤵ 0x100
0x100b6bf38:  e8 0d 00 35   cbnz	w8, loc_100b6c0f4 ; ⤵ 0x1bc
0x100b6bf3c:  b6 83 16 38   sturb	w22, [fp, #-0x98]
0x100b6bf40:  c8 fe 48 d3   lsr	x8, x22, #0x8
0x100b6bf44:  a8 93 16 38   sturb	w8, [fp, #-0x97]
0x100b6bf48:  c8 fe 50 d3   lsr	x8, x22, #0x10
0x100b6bf4c:  a8 a3 16 38   sturb	w8, [fp, #-0x96]
0x100b6bf50:  c8 fe 58 d3   lsr	x8, x22, #0x18
0x100b6bf54:  a8 b3 16 38   sturb	w8, [fp, #-0x95]
0x100b6bf58:  c8 fe 60 d3   lsr	x8, x22, #0x20
0x100b6bf5c:  a8 c3 16 38   sturb	w8, [fp, #-0x94]
0x100b6bf60:  c8 fe 68 d3   lsr	x8, x22, #0x28
0x100b6bf64:  a8 d3 16 38   sturb	w8, [fp, #-0x93]
0x100b6bf68:  c8 fe 70 d3   lsr	x8, x22, #0x30
0x100b6bf6c:  a8 e3 16 38   sturb	w8, [fp, #-0x92]
0x100b6bf70:  c8 fe 78 d3   lsr	x8, x22, #0x38
0x100b6bf74:  a8 f3 16 38   sturb	w8, [fp, #-0x91]
0x100b6bf78:  68 ff 48 d3   lsr	x8, x27, #0x8
0x100b6bf7c:  bb 03 17 38   sturb	w27, [fp, #-0x90]
0x100b6bf80:  69 ff 50 d3   lsr	x9, x27, #0x10
0x100b6bf84:  a8 13 17 38   sturb	w8, [fp, #-0x8f]
0x100b6bf88:  68 ff 58 d3   lsr	x8, x27, #0x18
0x100b6bf8c:  a9 23 17 38   sturb	w9, [fp, #-0x8e]
0x100b6bf90:  69 ff 60 d3   lsr	x9, x27, #0x20
0x100b6bf94:  a8 33 17 38   sturb	w8, [fp, #-0x8d]
0x100b6bf98:  68 ff 68 d3   lsr	x8, x27, #0x28
0x100b6bf9c:  a9 43 17 38   sturb	w9, [fp, #-0x8c]
0x100b6bfa0:  a8 53 17 38   sturb	w8, [fp, #-0x8b]
0x100b6bfa4:  75 00 00 14   b	loc_100b6c178 ; ⤵ 0x1d4
0x100b6bfa8:  ; loc_100b6bfa8
0x100b6bfa8:  1f 09 00 71   cmp	w8, #0x2
0x100b6bfac:  21 03 00 54   b.ne	loc_100b6c010 ; ⤵ 0x64
0x100b6bfb0:  f7 03 1a aa   mov	x23, x26
0x100b6bfb4:  da 0a 40 f9   ldr	x26, [x22, #0x10]
0x100b6bfb8:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6bfbc:  fd 63 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b6bfc0:  00 3c 00 b4   cbz	x0, loc_100b6c740 ; ⤵ 0x780
0x100b6bfc4:  f3 03 00 aa   mov	x19, x0
0x100b6bfc8:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6bfcc:  05 64 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b6bfd0:  48 03 00 eb   subs	x8, x26, x0
0x100b6bfd4:  a7 07 00 54   b.vc	loc_100b6c0c8 ; ⤵ 0xf4
0x100b6bfd8:  64 02 00 14   b	loc_100b6c968 ; ⤵ 0x990
0x100b6bfdc:  ; loc_100b6bfdc
0x100b6bfdc:  1f 09 00 71   cmp	w8, #0x2
0x100b6bfe0:  81 01 00 54   b.ne	loc_100b6c010 ; ⤵ 0x30
0x100b6bfe4:  f7 03 1a aa   mov	x23, x26
0x100b6bfe8:  da 0a 40 f9   ldr	x26, [x22, #0x10]
0x100b6bfec:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6bff0:  f0 63 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b6bff4:  60 3a 00 b4   cbz	x0, loc_100b6c740 ; ⤵ 0x74c
0x100b6bff8:  f3 03 00 aa   mov	x19, x0
0x100b6bffc:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c000:  f8 63 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b6c004:  48 03 00 eb   subs	x8, x26, x0
0x100b6c008:  07 06 00 54   b.vc	loc_100b6c0c8 ; ⤵ 0xc0
0x100b6c00c:  56 02 00 14   b	loc_100b6c964 ; ⤵ 0x958
0x100b6c010:  ; loc_100b6c010
0x100b6c010:  bf e3 17 f8   stur	xzr, [fp, #-0x82]
0x100b6c014:  bf 83 17 f8   stur	xzr, [fp, #-0x88]
0x100b6c018:  ; loc_100b6c018
0x100b6c018:  e0 03 16 aa   mov	x0, x22
0x100b6c01c:  e1 03 1b aa   mov	x1, x27
0x100b6c020:  75 b3 d2 97   bl	0x100018df4
0x100b6c024:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100b6c028:  a1 e3 01 d1   sub	x1, fp, #0x78
0x100b6c02c:  a2 23 02 d1   sub	x2, fp, #0x88
0x100b6c030:  8d 00 00 14   b	loc_100b6c264 ; ⤵ 0x234
0x100b6c034:  ; loc_100b6c034
0x100b6c034:  1f 09 00 71   cmp	w8, #0x2
0x100b6c038:  c1 09 00 54   b.ne	loc_100b6c170 ; ⤵ 0x138
0x100b6c03c:  da 0a 40 f9   ldr	x26, [x22, #0x10]
0x100b6c040:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c044:  db 63 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b6c048:  e0 3d 00 b4   cbz	x0, loc_100b6c804 ; ⤵ 0x7bc
0x100b6c04c:  f3 03 00 aa   mov	x19, x0
0x100b6c050:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c054:  e3 63 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b6c058:  48 03 00 eb   subs	x8, x26, x0
0x100b6c05c:  27 06 00 54   b.vc	loc_100b6c120 ; ⤵ 0xc4
0x100b6c060:  47 02 00 14   b	loc_100b6c97c ; ⤵ 0x91c
0x100b6c064:  ; loc_100b6c064
0x100b6c064:  1f 09 00 71   cmp	w8, #0x2
0x100b6c068:  e1 0e 00 54   b.ne	loc_100b6c244 ; ⤵ 0x1dc
0x100b6c06c:  f7 03 1a aa   mov	x23, x26
0x100b6c070:  da 0a 40 f9   ldr	x26, [x22, #0x10]
0x100b6c074:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c078:  ce 63 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b6c07c:  20 36 00 b4   cbz	x0, loc_100b6c740 ; ⤵ 0x6c4
0x100b6c080:  f3 03 00 aa   mov	x19, x0
0x100b6c084:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c088:  d6 63 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b6c08c:  48 03 00 eb   subs	x8, x26, x0
0x100b6c090:  27 0b 00 54   b.vc	loc_100b6c1f4 ; ⤵ 0x164
0x100b6c094:  3c 02 00 14   b	loc_100b6c984 ; ⤵ 0x8f0
0x100b6c098:  ; loc_100b6c098
0x100b6c098:  f7 03 1a aa   mov	x23, x26
0x100b6c09c:  da 7e 40 93   sxtw	x26, w22
0x100b6c0a0:  5f 83 96 eb   cmp	x26, x22, asr #0x20
0x100b6c0a4:  ec 45 00 54   b.gt	loc_100b6c960 ; ⤵ 0x8bc
0x100b6c0a8:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c0ac:  c1 63 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b6c0b0:  80 34 00 b4   cbz	x0, loc_100b6c740 ; ⤵ 0x690
0x100b6c0b4:  f3 03 00 aa   mov	x19, x0
0x100b6c0b8:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c0bc:  c9 63 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b6c0c0:  48 03 00 eb   subs	x8, x26, x0
0x100b6c0c4:  46 45 00 54   b.vs	loc_100b6c96c ; ⤵ 0x8a8
0x100b6c0c8:  ; loc_100b6c0c8
0x100b6c0c8:  13 01 13 8b   add	x19, x8, x19
0x100b6c0cc:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c0d0:  c0 63 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b6c0d4:  fa 03 17 aa   mov	x26, x23
0x100b6c0d8:  b3 33 00 b4   cbz	x19, loc_100b6c74c ; ⤵ 0x674
0x100b6c0dc:  e0 03 16 aa   mov	x0, x22
0x100b6c0e0:  e1 03 1b aa   mov	x1, x27
0x100b6c0e4:  44 b3 d2 97   bl	0x100018df4
0x100b6c0e8:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100b6c0ec:  a1 e3 01 d1   sub	x1, fp, #0x78
0x100b6c0f0:  4b 00 00 14   b	loc_100b6c21c ; ⤵ 0x12c
0x100b6c0f4:  ; loc_100b6c0f4
0x100b6c0f4:  da 7e 40 93   sxtw	x26, w22
0x100b6c0f8:  5f 83 96 eb   cmp	x26, x22, asr #0x20
0x100b6c0fc:  cc 43 00 54   b.gt	loc_100b6c974 ; ⤵ 0x878
0x100b6c100:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c104:  ab 63 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b6c108:  e0 37 00 b4   cbz	x0, loc_100b6c804 ; ⤵ 0x6fc
0x100b6c10c:  f3 03 00 aa   mov	x19, x0
0x100b6c110:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c114:  b3 63 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b6c118:  48 03 00 eb   subs	x8, x26, x0
0x100b6c11c:  26 43 00 54   b.vs	loc_100b6c980 ; ⤵ 0x864
0x100b6c120:  ; loc_100b6c120
0x100b6c120:  13 01 13 8b   add	x19, x8, x19
0x100b6c124:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c128:  aa 63 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b6c12c:  fa 03 18 aa   mov	x26, x24
0x100b6c130:  13 37 00 b4   cbz	x19, loc_100b6c810 ; ⤵ 0x6e0
0x100b6c134:  e0 03 16 aa   mov	x0, x22
0x100b6c138:  e1 03 1b aa   mov	x1, x27
0x100b6c13c:  2e b3 d2 97   bl	0x100018df4
0x100b6c140:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100b6c144:  a1 23 02 d1   sub	x1, fp, #0x88
0x100b6c148:  e2 03 13 aa   mov	x2, x19
0x100b6c14c:  e3 03 16 aa   mov	x3, x22
0x100b6c150:  e4 03 1b aa   mov	x4, x27
0x100b6c154:  05 04 80 52   mov	w5, #0x20
0x100b6c158:  f5 03 19 aa   mov	x21, x25
0x100b6c15c:  64 26 00 94   bl	0x100b75aec
0x100b6c160:  f9 03 15 aa   mov	x25, x21
0x100b6c164:  b7 e3 74 a9   ldp	x23, x24, [fp, #-0xb8]
0x100b6c168:  d5 08 00 b4   cbz	x21, loc_100b6c280 ; ⤵ 0x118
0x100b6c16c:  05 01 00 14   b	loc_100b6c580 ; ⤵ 0x414
0x100b6c170:  ; loc_100b6c170
0x100b6c170:  bf e3 16 f8   stur	xzr, [fp, #-0x92]
0x100b6c174:  bf 83 16 f8   stur	xzr, [fp, #-0x98]
0x100b6c178:  ; loc_100b6c178
0x100b6c178:  e0 03 16 aa   mov	x0, x22
0x100b6c17c:  e1 03 1b aa   mov	x1, x27
0x100b6c180:  1d b3 d2 97   bl	0x100018df4
0x100b6c184:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100b6c188:  a1 23 02 d1   sub	x1, fp, #0x88
0x100b6c18c:  a2 63 02 d1   sub	x2, fp, #0x98
0x100b6c190:  e3 03 16 aa   mov	x3, x22
0x100b6c194:  e4 03 1b aa   mov	x4, x27
0x100b6c198:  05 04 80 52   mov	w5, #0x20
0x100b6c19c:  f5 03 19 aa   mov	x21, x25
0x100b6c1a0:  53 26 00 94   bl	0x100b75aec
0x100b6c1a4:  f9 03 15 aa   mov	x25, x21
0x100b6c1a8:  75 32 00 b5   cbnz	x21, loc_100b6c7f4 ; ⤵ 0x64c
0x100b6c1ac:  f4 03 00 aa   mov	x20, x0
0x100b6c1b0:  e0 03 16 aa   mov	x0, x22
0x100b6c1b4:  e1 03 1b aa   mov	x1, x27
0x100b6c1b8:  7a ab d2 97   bl	0x100016fa0
0x100b6c1bc:  ; loc_100b6c1bc
0x100b6c1bc:  b7 e3 74 a9   ldp	x23, x24, [fp, #-0xb8]
0x100b6c1c0:  34 00 00 14   b	loc_100b6c290 ; ⤵ 0xd0
0x100b6c1c4:  ; loc_100b6c1c4
0x100b6c1c4:  f7 03 1a aa   mov	x23, x26
0x100b6c1c8:  da 7e 40 93   sxtw	x26, w22
0x100b6c1cc:  5f 83 96 eb   cmp	x26, x22, asr #0x20
0x100b6c1d0:  4c 3d 00 54   b.gt	loc_100b6c978 ; ⤵ 0x7a8
0x100b6c1d4:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c1d8:  76 63 28 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100b6c1dc:  20 2b 00 b4   cbz	x0, loc_100b6c740 ; ⤵ 0x564
0x100b6c1e0:  f3 03 00 aa   mov	x19, x0
0x100b6c1e4:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c1e8:  7e 63 28 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100b6c1ec:  48 03 00 eb   subs	x8, x26, x0
0x100b6c1f0:  c6 3c 00 54   b.vs	loc_100b6c988 ; ⤵ 0x798
0x100b6c1f4:  ; loc_100b6c1f4
0x100b6c1f4:  13 01 13 8b   add	x19, x8, x19
0x100b6c1f8:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c1fc:  75 63 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b6c200:  fa 03 17 aa   mov	x26, x23
0x100b6c204:  53 2a 00 b4   cbz	x19, loc_100b6c74c ; ⤵ 0x548
0x100b6c208:  e0 03 16 aa   mov	x0, x22
0x100b6c20c:  e1 03 1b aa   mov	x1, x27
0x100b6c210:  f9 b2 d2 97   bl	0x100018df4
0x100b6c214:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100b6c218:  a1 23 02 d1   sub	x1, fp, #0x88
0x100b6c21c:  ; loc_100b6c21c
0x100b6c21c:  e2 03 13 aa   mov	x2, x19
0x100b6c220:  e3 03 16 aa   mov	x3, x22
0x100b6c224:  e4 03 1b aa   mov	x4, x27
0x100b6c228:  05 04 80 52   mov	w5, #0x20
0x100b6c22c:  f5 03 19 aa   mov	x21, x25
0x100b6c230:  2f 26 00 94   bl	0x100b75aec
0x100b6c234:  f9 03 15 aa   mov	x25, x21
0x100b6c238:  b7 83 54 f8   ldur	x23, [fp, #-0xb8]
0x100b6c23c:  35 02 00 b4   cbz	x21, loc_100b6c280 ; ⤵ 0x44
0x100b6c240:  d0 00 00 14   b	loc_100b6c580 ; ⤵ 0x340
0x100b6c244:  ; loc_100b6c244
0x100b6c244:  bf e3 16 f8   stur	xzr, [fp, #-0x92]
0x100b6c248:  bf 83 16 f8   stur	xzr, [fp, #-0x98]
0x100b6c24c:  ; loc_100b6c24c
0x100b6c24c:  e0 03 16 aa   mov	x0, x22
0x100b6c250:  e1 03 1b aa   mov	x1, x27
0x100b6c254:  e8 b2 d2 97   bl	0x100018df4
0x100b6c258:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100b6c25c:  a1 23 02 d1   sub	x1, fp, #0x88
0x100b6c260:  a2 63 02 d1   sub	x2, fp, #0x98
0x100b6c264:  ; loc_100b6c264
0x100b6c264:  e3 03 16 aa   mov	x3, x22
0x100b6c268:  e4 03 1b aa   mov	x4, x27
0x100b6c26c:  05 04 80 52   mov	w5, #0x20
0x100b6c270:  f5 03 19 aa   mov	x21, x25
0x100b6c274:  1e 26 00 94   bl	0x100b75aec
0x100b6c278:  f9 03 15 aa   mov	x25, x21
0x100b6c27c:  35 18 00 b5   cbnz	x21, loc_100b6c580 ; ⤵ 0x304
0x100b6c280:  ; loc_100b6c280
0x100b6c280:  f4 03 00 aa   mov	x20, x0
0x100b6c284:  e0 03 16 aa   mov	x0, x22
0x100b6c288:  e1 03 1b aa   mov	x1, x27
0x100b6c28c:  45 ab d2 97   bl	0x100016fa0
0x100b6c290:  ; loc_100b6c290
0x100b6c290:  34 06 00 35   cbnz	w20, loc_100b6c354 ; ⤵ 0xc4
0x100b6c294:  e0 03 16 aa   mov	x0, x22
0x100b6c298:  e1 03 1b aa   mov	x1, x27
0x100b6c29c:  41 ab d2 97   bl	0x100016fa0
0x100b6c2a0:  b4 4f 79 a9   ldp	x20, x19, [fp, #-0x70]
0x100b6c2a4:  e0 03 14 aa   mov	x0, x20
0x100b6c2a8:  e1 03 13 aa   mov	x1, x19
0x100b6c2ac:  d2 b2 d2 97   bl	0x100018df4
0x100b6c2b0:  e0 03 14 aa   mov	x0, x20
0x100b6c2b4:  e1 03 13 aa   mov	x1, x19
0x100b6c2b8:  3a ab d2 97   bl	0x100016fa0
0x100b6c2bc:  68 fe 7e d3   lsr	x8, x19, #0x3e
0x100b6c2c0:  1f 05 00 71   cmp	w8, #0x1
0x100b6c2c4:  cc 00 00 54   b.gt	loc_100b6c2dc ; ⤵ 0x18
0x100b6c2c8:  a8 01 00 35   cbnz	w8, loc_100b6c2fc ; ⤵ 0x34
0x100b6c2cc:  69 de 70 d3   ubfx	x9, x19, #0x30, #0x8
0x100b6c2d0:  3f 81 00 f1   cmp	x9, #0x20
0x100b6c2d4:  00 02 00 54   b.eq	loc_100b6c314 ; ⤵ 0x40
0x100b6c2d8:  94 00 00 14   b	loc_100b6c528 ; ⤵ 0x250
0x100b6c2dc:  ; loc_100b6c2dc
0x100b6c2dc:  1f 09 00 71   cmp	w8, #0x2
0x100b6c2e0:  c1 14 00 54   b.ne	loc_100b6c578 ; ⤵ 0x298
0x100b6c2e4:  8a 26 41 a9   ldp	x10, x9, [x20, #0x10]
0x100b6c2e8:  29 01 0a eb   subs	x9, x9, x10
0x100b6c2ec:  a6 31 00 54   b.vs	loc_100b6c920 ; ⤵ 0x634
0x100b6c2f0:  3f 81 00 f1   cmp	x9, #0x20
0x100b6c2f4:  00 01 00 54   b.eq	loc_100b6c314 ; ⤵ 0x20
0x100b6c2f8:  8c 00 00 14   b	loc_100b6c528 ; ⤵ 0x230
0x100b6c2fc:  ; loc_100b6c2fc
0x100b6c2fc:  89 fe 60 d3   lsr	x9, x20, #0x20
0x100b6c300:  29 01 14 6b   subs	w9, w9, w20
0x100b6c304:  06 31 00 54   b.vs	loc_100b6c924 ; ⤵ 0x620
0x100b6c308:  29 7d 40 93   sxtw	x9, w9
0x100b6c30c:  3f 81 00 f1   cmp	x9, #0x20
0x100b6c310:  c1 10 00 54   b.ne	loc_100b6c528 ; ⤵ 0x218
0x100b6c314:  ; loc_100b6c314
0x100b6c314:  e0 03 1a aa   mov	x0, x26
0x100b6c318:  22 7b 28 94   bl	j___objc_autoreleasePoolPop
0x100b6c31c:  e0 03 16 aa   mov	x0, x22
0x100b6c320:  e1 03 1b aa   mov	x1, x27
0x100b6c324:  1f ab d2 97   bl	0x100016fa0
0x100b6c328:  fb 03 13 aa   mov	x27, x19
0x100b6c32c:  f6 03 14 aa   mov	x22, x20
0x100b6c330:  9c 07 00 f1   subs	x28, x28, #0x1
0x100b6c334:  a1 c7 ff 54   b.ne	loc_100b6bc28 ; ⤴ -0x70c
0x100b6c338:  03 00 00 14   b	loc_100b6c344 ; ⤵ 0xc
0x100b6c33c:  ; loc_100b6c33c
0x100b6c33c:  f4 03 16 aa   mov	x20, x22
0x100b6c340:  f3 03 1b aa   mov	x19, x27
0x100b6c344:  ; loc_100b6c344
0x100b6c344:  e0 03 18 aa   mov	x0, x24
0x100b6c348:  e1 03 17 aa   mov	x1, x23
0x100b6c34c:  15 ab d2 97   bl	0x100016fa0
0x100b6c350:  63 01 00 14   b	loc_100b6c8dc ; ⤵ 0x58c
0x100b6c354:  ; loc_100b6c354
0x100b6c354:  ba 03 16 f8   stur	x26, [fp, #-0xa0]
0x100b6c358:  97 7e 40 93   sxtw	x23, w20
0x100b6c35c:  85 74 28 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x100b6c360:  fa 03 00 aa   mov	x26, x0
0x100b6c364:  68 6e 00 b0   adrp	x8, 0x101939000
0x100b6c368:  08 d9 40 f9   ldr	x8, [x8, #0x1b0] ; data_1019391b0 (__DATA.__data)
0x100b6c36c:  1f 05 00 b1   cmn	x8, #0x1
0x100b6c370:  61 2e 00 54   b.ne	loc_100b6c93c ; ⤵ 0x5cc
0x100b6c374:  ; loc_100b6c374
0x100b6c374:  c8 74 00 f0   adrp	x8, 0x101a07000
0x100b6c378:  1c 35 43 f9   ldr	x28, [x8, #0x668]
0x100b6c37c:  80 6d 00 90   adrp	x0, 0x10191c000
0x100b6c380:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x100b6c384:  01 54 00 b0   adrp	x1, 0x1015ed000
0x100b6c388:  21 00 19 91   add	x1, x1, #0x640
0x100b6c38c:  1a 30 d5 97   bl	0x1000b83f4
0x100b6c390:  01 09 80 52   mov	w1, #0x48
0x100b6c394:  e2 00 80 52   mov	w2, #0x7
0x100b6c398:  86 7c 28 94   bl	j__swift_allocObject
0x100b6c39c:  f3 03 00 aa   mov	x19, x0
0x100b6c3a0:  c8 53 00 d0   adrp	x8, 0x1015e6000
0x100b6c3a4:  00 cd c0 3d   ldr	q0, [x8, #0x330]
0x100b6c3a8:  c8 68 00 d0   adrp	x8, 0x101886000
0x100b6c3ac:  08 95 46 f9   ldr	x8, [x8, #0xd28] ; __got._$ss5Int32VN
0x100b6c3b0:  00 04 80 3d   str	q0, [x0, #0x10]
0x100b6c3b4:  c9 68 00 d0   adrp	x9, 0x101886000
0x100b6c3b8:  29 a9 46 f9   ldr	x9, [x9, #0xd50] ; __got._$ss5Int32Vs7CVarArgsWP
0x100b6c3bc:  08 a4 03 a9   stp	x8, x9, [x0, #0x38]
0x100b6c3c0:  14 20 00 b9   str	w20, [x0, #0x20]
0x100b6c3c4:  a1 a4 ff 90   adrp	x1, 0x100000000
0x100b6c3c8:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x100b6c3cc:  83 52 00 90   adrp	x3, 0x1015bc000
0x100b6c3d0:  63 00 3b 91   add	x3, x3, #0xec0 ; "Error running CCDeriveKey. Code: %d."
0x100b6c3d4:  e0 03 1a aa   mov	x0, x26
0x100b6c3d8:  e2 03 1c aa   mov	x2, x28
0x100b6c3dc:  84 04 80 52   mov	w4, #0x24
0x100b6c3e0:  45 00 80 52   mov	w5, #0x2
0x100b6c3e4:  e6 03 13 aa   mov	x6, x19
0x100b6c3e8:  a6 6d 28 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x100b6c3ec:  e0 03 13 aa   mov	x0, x19
0x100b6c3f0:  b4 7d 28 94   bl	j__swift_release
0x100b6c3f4:  a8 63 00 d1   sub	x8, fp, #0x18
0x100b6c3f8:  14 01 50 f8   ldur	x20, [x8, #-0x100]
0x100b6c3fc:  e8 03 14 aa   mov	x8, x20
0x100b6c400:  e0 03 17 aa   mov	x0, x23
0x100b6c404:  97 6f 28 94   bl	j__$s8SPShared11CryptoErrorO8rawValueACSgSi_tcfC
0x100b6c408:  00 00 80 d2   mov	x0, #0
0x100b6c40c:  99 6f 28 94   bl	j__$s8SPShared11CryptoErrorOMa
0x100b6c410:  f3 03 00 aa   mov	x19, x0
0x100b6c414:  a0 6d 00 90   adrp	x0, 0x101920000
0x100b6c418:  00 80 16 91   add	x0, x0, #0x5a0 ; data_1019205a0 (__DATA.__data)
0x100b6c41c:  d0 68 00 b0   adrp	x16, 0x101885000
0x100b6c420:  10 2a 40 f9   ldr	x16, [x16, #0x50] ; __got._$s8SPShared11CryptoErrorOMa
0x100b6c424:  b1 1b 90 d2   mov	x17, #0x80dd
0x100b6c428:  30 02 c1 da   pacia	x16, x17
0x100b6c42c:  e1 03 10 aa   mov	x1, x16
0x100b6c430:  d0 68 00 b0   adrp	x16, 0x101885000
0x100b6c434:  10 2e 40 f9   ldr	x16, [x16, #0x58] ; __got._$s8SPShared11CryptoErrorOs0C0AAMc
0x100b6c438:  71 dd 98 d2   mov	x17, #0xc6eb
0x100b6c43c:  30 0a c1 da   pacda	x16, x17
0x100b6c440:  e2 03 10 aa   mov	x2, x16
0x100b6c444:  ba 2c 00 94   bl	0x100b7772c
0x100b6c448:  e1 03 00 aa   mov	x1, x0
0x100b6c44c:  e0 03 13 aa   mov	x0, x19
0x100b6c450:  02 00 80 d2   mov	x2, #0
0x100b6c454:  03 00 80 52   mov	w3, #0
0x100b6c458:  52 7c 28 94   bl	j__swift_allocError
0x100b6c45c:  f7 03 00 aa   mov	x23, x0
0x100b6c460:  a1 83 15 f8   stur	x1, [fp, #-0xa8]
0x100b6c464:  e0 03 14 aa   mov	x0, x20
0x100b6c468:  a8 43 00 d1   sub	x8, fp, #0x10
0x100b6c46c:  1a 01 50 f8   ldur	x26, [x8, #-0x100]
0x100b6c470:  e1 03 1a aa   mov	x1, x26
0x100b6c474:  94 2c 00 94   bl	0x100b776c4
0x100b6c478:  f1 03 13 aa   mov	x17, x19
0x100b6c47c:  30 8e 5f f8   ldr	x16, [x17, #-0x8]!
0x100b6c480:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b6c484:  30 1a c1 da   autda	x16, x17
0x100b6c488:  f1 03 10 aa   mov	x17, x16
0x100b6c48c:  f1 47 c1 da   xpacd	x17
0x100b6c490:  1f 02 11 eb   cmp	x16, x17
0x100b6c494:  40 00 00 54   b.eq	loc_100b6c49c ; ⤵ 0x8
0x100b6c498:  40 8e 38 d4   brk	#0xc472
0x100b6c49c:  ; loc_100b6c49c
0x100b6c49c:  fc 03 10 aa   mov	x28, x16
0x100b6c4a0:  f9 03 10 aa   mov	x25, x16
0x100b6c4a4:  34 0f 43 f8   ldr	x20, [x25, #0x30]!
0x100b6c4a8:  e0 03 1a aa   mov	x0, x26
0x100b6c4ac:  21 00 80 52   mov	w1, #0x1
0x100b6c4b0:  e2 03 13 aa   mov	x2, x19
0x100b6c4b4:  f1 03 19 aa   mov	x17, x25
0x100b6c4b8:  11 1e ec f2   movk	x17, #0x60f0, lsl #0x30
0x100b6c4bc:  91 0a 3f d7   blraa	x20, x17
0x100b6c4c0:  1f 04 00 71   cmp	w0, #0x1
0x100b6c4c4:  41 04 00 54   b.ne	loc_100b6c54c ; ⤵ 0x88
0x100b6c4c8:  19 1e ec f2   movk	x25, #0x60f0, lsl #0x30
0x100b6c4cc:  c8 68 00 b0   adrp	x8, 0x101885000
0x100b6c4d0:  08 15 40 f9   ldr	x8, [x8, #0x28] ; __got._$s8SPShared11CryptoErrorO011unspecifiedC0yA2CmFWC
0x100b6c4d4:  01 01 40 b9   ldr	w1, [x8]
0x100b6c4d8:  88 8f 46 f8   ldr	x8, [x28, #0x68]!
0x100b6c4dc:  a0 83 55 f8   ldur	x0, [fp, #-0xa8]
0x100b6c4e0:  e2 03 13 aa   mov	x2, x19
0x100b6c4e4:  f1 03 1c aa   mov	x17, x28
0x100b6c4e8:  91 5c f6 f2   movk	x17, #0xb2e4, lsl #0x30
0x100b6c4ec:  11 09 3f d7   blraa	x8, x17
0x100b6c4f0:  e0 03 1a aa   mov	x0, x26
0x100b6c4f4:  21 00 80 52   mov	w1, #0x1
0x100b6c4f8:  e2 03 13 aa   mov	x2, x19
0x100b6c4fc:  99 0a 3f d7   blraa	x20, x25
0x100b6c500:  1f 04 00 71   cmp	w0, #0x1
0x100b6c504:  e0 03 1a aa   mov	x0, x26
0x100b6c508:  ba 03 56 f8   ldur	x26, [fp, #-0xa0]
0x100b6c50c:  00 03 00 54   b.eq	loc_100b6c56c ; ⤵ 0x60
0x100b6c510:  a1 6d 00 90   adrp	x1, 0x101920000
0x100b6c514:  21 20 16 91   add	x1, x1, #0x588 ; data_101920588 (__DATA.__data)
0x100b6c518:  42 56 00 f0   adrp	x2, 0x101637000
0x100b6c51c:  42 c0 38 91   add	x2, x2, #0xe30
0x100b6c520:  14 7d d2 97   bl	0x10000b970
0x100b6c524:  12 00 00 14   b	loc_100b6c56c ; ⤵ 0x48
0x100b6c528:  ; loc_100b6c528
0x100b6c528:  1f 09 00 71   cmp	w8, #0x2
0x100b6c52c:  20 03 00 54   b.eq	loc_100b6c590 ; ⤵ 0x64
0x100b6c530:  1f 05 00 71   cmp	w8, #0x1
0x100b6c534:  61 03 00 54   b.ne	loc_100b6c5a0 ; ⤵ 0x6c
0x100b6c538:  88 fe 60 d3   lsr	x8, x20, #0x20
0x100b6c53c:  08 01 14 6b   subs	w8, w8, w20
0x100b6c540:  66 22 00 54   b.vs	loc_100b6c98c ; ⤵ 0x44c
0x100b6c544:  19 7d 40 93   sxtw	x25, w8
0x100b6c548:  17 00 00 14   b	loc_100b6c5a4 ; ⤵ 0x5c
0x100b6c54c:  ; loc_100b6c54c
0x100b6c54c:  88 0f 42 f8   ldr	x8, [x28, #0x20]!
0x100b6c550:  a0 83 55 f8   ldur	x0, [fp, #-0xa8]
0x100b6c554:  e1 03 1a aa   mov	x1, x26
0x100b6c558:  e2 03 13 aa   mov	x2, x19
0x100b6c55c:  f1 03 1c aa   mov	x17, x28
0x100b6c560:  11 1b e9 f2   movk	x17, #0x48d8, lsl #0x30
0x100b6c564:  11 09 3f d7   blraa	x8, x17
0x100b6c568:  ba 03 56 f8   ldur	x26, [fp, #-0xa0]
0x100b6c56c:  ; loc_100b6c56c
0x100b6c56c:  f9 03 17 aa   mov	x25, x23
0x100b6c570:  f5 03 17 aa   mov	x21, x23
0x100b6c574:  9a 00 00 14   b	loc_100b6c7dc ; ⤵ 0x268
0x100b6c578:  ; loc_100b6c578
0x100b6c578:  19 00 80 d2   mov	x25, #0
0x100b6c57c:  0a 00 00 14   b	loc_100b6c5a4 ; ⤵ 0x28
0x100b6c580:  ; loc_100b6c580
0x100b6c580:  e0 03 16 aa   mov	x0, x22
0x100b6c584:  e1 03 1b aa   mov	x1, x27
0x100b6c588:  86 aa d2 97   bl	0x100016fa0
0x100b6c58c:  69 00 00 14   b	loc_100b6c730 ; ⤵ 0x1a4
0x100b6c590:  ; loc_100b6c590
0x100b6c590:  89 22 41 a9   ldp	x9, x8, [x20, #0x10]
0x100b6c594:  19 01 09 eb   subs	x25, x8, x9
0x100b6c598:  67 00 00 54   b.vc	loc_100b6c5a4 ; ⤵ 0xc
0x100b6c59c:  20 00 20 d4   brk	#0x1
0x100b6c5a0:  ; loc_100b6c5a0
0x100b6c5a0:  79 de 70 d3   ubfx	x25, x19, #0x30, #0x8
0x100b6c5a4:  ; loc_100b6c5a4
0x100b6c5a4:  3d b3 d2 97   bl	0x100019298
0x100b6c5a8:  e1 03 00 aa   mov	x1, x0
0x100b6c5ac:  a0 69 00 b0   adrp	x0, 0x1018a1000
0x100b6c5b0:  00 c0 2e 91   add	x0, x0, #0xbb0
0x100b6c5b4:  02 00 80 d2   mov	x2, #0
0x100b6c5b8:  03 00 80 52   mov	w3, #0
0x100b6c5bc:  f9 7b 28 94   bl	j__swift_allocError
0x100b6c5c0:  08 04 80 52   mov	w8, #0x20
0x100b6c5c4:  28 64 00 a9   stp	x8, x25, [x1]
0x100b6c5c8:  f9 03 00 aa   mov	x25, x0
0x100b6c5cc:  3f 40 00 39   strb	wzr, [x1, #0x10]
0x100b6c5d0:  f5 03 00 aa   mov	x21, x0
0x100b6c5d4:  d7 7d 28 94   bl	j__swift_willThrow
0x100b6c5d8:  e0 03 14 aa   mov	x0, x20
0x100b6c5dc:  e1 03 13 aa   mov	x1, x19
0x100b6c5e0:  b6 00 00 14   b	loc_100b6c8b8 ; ⤵ 0x2d8
0x100b6c5e4:  ; loc_100b6c5e4
0x100b6c5e4:  f4 f6 40 92   and	x20, x23, #0x3fffffffffffffff
0x100b6c5e8:  7a 62 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b6c5ec:  ; loc_100b6c5ec
0x100b6c5ec:  00 00 80 d2   mov	x0, #0
0x100b6c5f0:  20 6f 28 94   bl	j__$s8SPShared11CryptoErrorOMa
0x100b6c5f4:  f3 03 00 aa   mov	x19, x0
0x100b6c5f8:  a0 6d 00 90   adrp	x0, 0x101920000
0x100b6c5fc:  00 80 16 91   add	x0, x0, #0x5a0 ; data_1019205a0 (__DATA.__data)
0x100b6c600:  d0 68 00 b0   adrp	x16, 0x101885000
0x100b6c604:  10 2a 40 f9   ldr	x16, [x16, #0x50] ; __got._$s8SPShared11CryptoErrorOMa
0x100b6c608:  b1 1b 90 d2   mov	x17, #0x80dd
0x100b6c60c:  30 02 c1 da   pacia	x16, x17
0x100b6c610:  e1 03 10 aa   mov	x1, x16
0x100b6c614:  d0 68 00 b0   adrp	x16, 0x101885000
0x100b6c618:  10 2e 40 f9   ldr	x16, [x16, #0x58] ; __got._$s8SPShared11CryptoErrorOs0C0AAMc
0x100b6c61c:  71 dd 98 d2   mov	x17, #0xc6eb
0x100b6c620:  30 0a c1 da   pacda	x16, x17
0x100b6c624:  e2 03 10 aa   mov	x2, x16
0x100b6c628:  41 2c 00 94   bl	0x100b7772c
0x100b6c62c:  e1 03 00 aa   mov	x1, x0
0x100b6c630:  e0 03 13 aa   mov	x0, x19
0x100b6c634:  02 00 80 d2   mov	x2, #0
0x100b6c638:  03 00 80 52   mov	w3, #0
0x100b6c63c:  d9 7b 28 94   bl	j__swift_allocError
0x100b6c640:  f9 03 00 aa   mov	x25, x0
0x100b6c644:  e0 03 01 aa   mov	x0, x1
0x100b6c648:  c8 68 00 b0   adrp	x8, 0x101885000
0x100b6c64c:  08 25 40 f9   ldr	x8, [x8, #0x48] ; __got._$s8SPShared11CryptoErrorO13memoryFailureyA2CmFWC
0x100b6c650:  01 01 40 b9   ldr	w1, [x8]
0x100b6c654:  e8 03 13 aa   mov	x8, x19
0x100b6c658:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x100b6c65c:  f1 03 08 aa   mov	x17, x8
0x100b6c660:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b6c664:  30 1a c1 da   autda	x16, x17
0x100b6c668:  08 8e 46 f8   ldr	x8, [x16, #0x68]!
0x100b6c66c:  e2 03 13 aa   mov	x2, x19
0x100b6c670:  90 5c f6 f2   movk	x16, #0xb2e4, lsl #0x30
0x100b6c674:  10 09 3f d7   blraa	x8, x16
0x100b6c678:  f5 03 19 aa   mov	x21, x25
0x100b6c67c:  ad 7d 28 94   bl	j__swift_willThrow
0x100b6c680:  e0 03 16 aa   mov	x0, x22
0x100b6c684:  e1 03 1b aa   mov	x1, x27
0x100b6c688:  46 aa d2 97   bl	0x100016fa0
0x100b6c68c:  fa 03 18 aa   mov	x26, x24
0x100b6c690:  88 00 00 14   b	loc_100b6c8b0 ; ⤵ 0x220
0x100b6c694:  ; loc_100b6c694
0x100b6c694:  f4 f6 40 92   and	x20, x23, #0x3fffffffffffffff
0x100b6c698:  4e 62 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b6c69c:  ; loc_100b6c69c
0x100b6c69c:  00 00 80 d2   mov	x0, #0
0x100b6c6a0:  f4 6e 28 94   bl	j__$s8SPShared11CryptoErrorOMa
0x100b6c6a4:  f3 03 00 aa   mov	x19, x0
0x100b6c6a8:  a0 6d 00 90   adrp	x0, 0x101920000
0x100b6c6ac:  00 80 16 91   add	x0, x0, #0x5a0 ; data_1019205a0 (__DATA.__data)
0x100b6c6b0:  d0 68 00 b0   adrp	x16, 0x101885000
0x100b6c6b4:  10 2a 40 f9   ldr	x16, [x16, #0x50] ; __got._$s8SPShared11CryptoErrorOMa
0x100b6c6b8:  b1 1b 90 d2   mov	x17, #0x80dd
0x100b6c6bc:  30 02 c1 da   pacia	x16, x17
0x100b6c6c0:  e1 03 10 aa   mov	x1, x16
0x100b6c6c4:  d0 68 00 b0   adrp	x16, 0x101885000
0x100b6c6c8:  10 2e 40 f9   ldr	x16, [x16, #0x58] ; __got._$s8SPShared11CryptoErrorOs0C0AAMc
0x100b6c6cc:  71 dd 98 d2   mov	x17, #0xc6eb
0x100b6c6d0:  30 0a c1 da   pacda	x16, x17
0x100b6c6d4:  e2 03 10 aa   mov	x2, x16
0x100b6c6d8:  15 2c 00 94   bl	0x100b7772c
0x100b6c6dc:  e1 03 00 aa   mov	x1, x0
0x100b6c6e0:  e0 03 13 aa   mov	x0, x19
0x100b6c6e4:  02 00 80 d2   mov	x2, #0
0x100b6c6e8:  03 00 80 52   mov	w3, #0
0x100b6c6ec:  ad 7b 28 94   bl	j__swift_allocError
0x100b6c6f0:  f9 03 00 aa   mov	x25, x0
0x100b6c6f4:  e0 03 01 aa   mov	x0, x1
0x100b6c6f8:  c8 68 00 b0   adrp	x8, 0x101885000
0x100b6c6fc:  08 25 40 f9   ldr	x8, [x8, #0x48] ; __got._$s8SPShared11CryptoErrorO13memoryFailureyA2CmFWC
0x100b6c700:  01 01 40 b9   ldr	w1, [x8]
0x100b6c704:  e8 03 13 aa   mov	x8, x19
0x100b6c708:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x100b6c70c:  f1 03 08 aa   mov	x17, x8
0x100b6c710:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b6c714:  30 1a c1 da   autda	x16, x17
0x100b6c718:  08 8e 46 f8   ldr	x8, [x16, #0x68]!
0x100b6c71c:  e2 03 13 aa   mov	x2, x19
0x100b6c720:  90 5c f6 f2   movk	x16, #0xb2e4, lsl #0x30
0x100b6c724:  10 09 3f d7   blraa	x8, x16
0x100b6c728:  f5 03 19 aa   mov	x21, x25
0x100b6c72c:  81 7d 28 94   bl	j__swift_willThrow
0x100b6c730:  ; loc_100b6c730
0x100b6c730:  e0 03 16 aa   mov	x0, x22
0x100b6c734:  e1 03 1b aa   mov	x1, x27
0x100b6c738:  1a aa d2 97   bl	0x100016fa0
0x100b6c73c:  5e 00 00 14   b	loc_100b6c8b4 ; ⤵ 0x178
0x100b6c740:  ; loc_100b6c740
0x100b6c740:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c744:  23 62 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b6c748:  fa 03 17 aa   mov	x26, x23
0x100b6c74c:  ; loc_100b6c74c
0x100b6c74c:  00 00 80 d2   mov	x0, #0
0x100b6c750:  c8 6e 28 94   bl	j__$s8SPShared11CryptoErrorOMa
0x100b6c754:  f3 03 00 aa   mov	x19, x0
0x100b6c758:  a0 6d 00 90   adrp	x0, 0x101920000
0x100b6c75c:  00 80 16 91   add	x0, x0, #0x5a0 ; data_1019205a0 (__DATA.__data)
0x100b6c760:  d0 68 00 b0   adrp	x16, 0x101885000
0x100b6c764:  10 2a 40 f9   ldr	x16, [x16, #0x50] ; __got._$s8SPShared11CryptoErrorOMa
0x100b6c768:  b1 1b 90 d2   mov	x17, #0x80dd
0x100b6c76c:  30 02 c1 da   pacia	x16, x17
0x100b6c770:  e1 03 10 aa   mov	x1, x16
0x100b6c774:  d0 68 00 b0   adrp	x16, 0x101885000
0x100b6c778:  10 2e 40 f9   ldr	x16, [x16, #0x58] ; __got._$s8SPShared11CryptoErrorOs0C0AAMc
0x100b6c77c:  71 dd 98 d2   mov	x17, #0xc6eb
0x100b6c780:  30 0a c1 da   pacda	x16, x17
0x100b6c784:  e2 03 10 aa   mov	x2, x16
0x100b6c788:  e9 2b 00 94   bl	0x100b7772c
0x100b6c78c:  e1 03 00 aa   mov	x1, x0
0x100b6c790:  e0 03 13 aa   mov	x0, x19
0x100b6c794:  02 00 80 d2   mov	x2, #0
0x100b6c798:  03 00 80 52   mov	w3, #0
0x100b6c79c:  81 7b 28 94   bl	j__swift_allocError
0x100b6c7a0:  f9 03 00 aa   mov	x25, x0
0x100b6c7a4:  e0 03 01 aa   mov	x0, x1
0x100b6c7a8:  c8 68 00 b0   adrp	x8, 0x101885000
0x100b6c7ac:  08 25 40 f9   ldr	x8, [x8, #0x48] ; __got._$s8SPShared11CryptoErrorO13memoryFailureyA2CmFWC
0x100b6c7b0:  01 01 40 b9   ldr	w1, [x8]
0x100b6c7b4:  e8 03 13 aa   mov	x8, x19
0x100b6c7b8:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x100b6c7bc:  f1 03 08 aa   mov	x17, x8
0x100b6c7c0:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b6c7c4:  30 1a c1 da   autda	x16, x17
0x100b6c7c8:  08 8e 46 f8   ldr	x8, [x16, #0x68]!
0x100b6c7cc:  e2 03 13 aa   mov	x2, x19
0x100b6c7d0:  90 5c f6 f2   movk	x16, #0xb2e4, lsl #0x30
0x100b6c7d4:  10 09 3f d7   blraa	x8, x16
0x100b6c7d8:  f5 03 19 aa   mov	x21, x25
0x100b6c7dc:  ; loc_100b6c7dc
0x100b6c7dc:  55 7d 28 94   bl	j__swift_willThrow
0x100b6c7e0:  e0 03 16 aa   mov	x0, x22
0x100b6c7e4:  e1 03 1b aa   mov	x1, x27
0x100b6c7e8:  ee a9 d2 97   bl	0x100016fa0
0x100b6c7ec:  b7 83 54 f8   ldur	x23, [fp, #-0xb8]
0x100b6c7f0:  31 00 00 14   b	loc_100b6c8b4 ; ⤵ 0xc4
0x100b6c7f4:  ; loc_100b6c7f4
0x100b6c7f4:  e0 03 16 aa   mov	x0, x22
0x100b6c7f8:  e1 03 1b aa   mov	x1, x27
0x100b6c7fc:  e9 a9 d2 97   bl	0x100016fa0
0x100b6c800:  29 00 00 14   b	loc_100b6c8a4 ; ⤵ 0xa4
0x100b6c804:  ; loc_100b6c804
0x100b6c804:  74 f7 40 92   and	x20, x27, #0x3fffffffffffffff
0x100b6c808:  f2 61 28 94   bl	j__$s10Foundation13__DataStorageC7_lengthSivg
0x100b6c80c:  fa 03 18 aa   mov	x26, x24
0x100b6c810:  ; loc_100b6c810
0x100b6c810:  00 00 80 d2   mov	x0, #0
0x100b6c814:  97 6e 28 94   bl	j__$s8SPShared11CryptoErrorOMa
0x100b6c818:  f3 03 00 aa   mov	x19, x0
0x100b6c81c:  a0 6d 00 90   adrp	x0, 0x101920000
0x100b6c820:  00 80 16 91   add	x0, x0, #0x5a0 ; data_1019205a0 (__DATA.__data)
0x100b6c824:  d0 68 00 b0   adrp	x16, 0x101885000
0x100b6c828:  10 2a 40 f9   ldr	x16, [x16, #0x50] ; __got._$s8SPShared11CryptoErrorOMa
0x100b6c82c:  b1 1b 90 d2   mov	x17, #0x80dd
0x100b6c830:  30 02 c1 da   pacia	x16, x17
0x100b6c834:  e1 03 10 aa   mov	x1, x16
0x100b6c838:  d0 68 00 b0   adrp	x16, 0x101885000
0x100b6c83c:  10 2e 40 f9   ldr	x16, [x16, #0x58] ; __got._$s8SPShared11CryptoErrorOs0C0AAMc
0x100b6c840:  71 dd 98 d2   mov	x17, #0xc6eb
0x100b6c844:  30 0a c1 da   pacda	x16, x17
0x100b6c848:  e2 03 10 aa   mov	x2, x16
0x100b6c84c:  b8 2b 00 94   bl	0x100b7772c
0x100b6c850:  e1 03 00 aa   mov	x1, x0
0x100b6c854:  e0 03 13 aa   mov	x0, x19
0x100b6c858:  02 00 80 d2   mov	x2, #0
0x100b6c85c:  03 00 80 52   mov	w3, #0
0x100b6c860:  50 7b 28 94   bl	j__swift_allocError
0x100b6c864:  f9 03 00 aa   mov	x25, x0
0x100b6c868:  e0 03 01 aa   mov	x0, x1
0x100b6c86c:  c8 68 00 b0   adrp	x8, 0x101885000
0x100b6c870:  08 25 40 f9   ldr	x8, [x8, #0x48] ; __got._$s8SPShared11CryptoErrorO13memoryFailureyA2CmFWC
0x100b6c874:  01 01 40 b9   ldr	w1, [x8]
0x100b6c878:  e8 03 13 aa   mov	x8, x19
0x100b6c87c:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x100b6c880:  f1 03 08 aa   mov	x17, x8
0x100b6c884:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100b6c888:  30 1a c1 da   autda	x16, x17
0x100b6c88c:  08 8e 46 f8   ldr	x8, [x16, #0x68]!
0x100b6c890:  e2 03 13 aa   mov	x2, x19
0x100b6c894:  90 5c f6 f2   movk	x16, #0xb2e4, lsl #0x30
0x100b6c898:  10 09 3f d7   blraa	x8, x16
0x100b6c89c:  f5 03 19 aa   mov	x21, x25
0x100b6c8a0:  24 7d 28 94   bl	j__swift_willThrow
0x100b6c8a4:  ; loc_100b6c8a4
0x100b6c8a4:  e0 03 16 aa   mov	x0, x22
0x100b6c8a8:  e1 03 1b aa   mov	x1, x27
0x100b6c8ac:  bd a9 d2 97   bl	0x100016fa0
0x100b6c8b0:  ; loc_100b6c8b0
0x100b6c8b0:  b7 e3 74 a9   ldp	x23, x24, [fp, #-0xb8]
0x100b6c8b4:  ; loc_100b6c8b4
0x100b6c8b4:  a0 07 79 a9   ldp	x0, x1, [fp, #-0x70]
0x100b6c8b8:  ; loc_100b6c8b8
0x100b6c8b8:  ba a9 d2 97   bl	0x100016fa0
0x100b6c8bc:  e0 03 1a aa   mov	x0, x26
0x100b6c8c0:  b8 79 28 94   bl	j___objc_autoreleasePoolPop
0x100b6c8c4:  e0 03 18 aa   mov	x0, x24
0x100b6c8c8:  e1 03 17 aa   mov	x1, x23
0x100b6c8cc:  b5 a9 d2 97   bl	0x100016fa0
0x100b6c8d0:  e0 03 16 aa   mov	x0, x22
0x100b6c8d4:  e1 03 1b aa   mov	x1, x27
0x100b6c8d8:  b2 a9 d2 97   bl	0x100016fa0
0x100b6c8dc:  ; loc_100b6c8dc
0x100b6c8dc:  a8 03 5a f8   ldur	x8, [fp, #-0x60]
0x100b6c8e0:  c9 68 00 d0   adrp	x9, 0x101886000
0x100b6c8e4:  29 01 43 f9   ldr	x9, [x9, #0x600] ; __got.___stack_chk_guard
0x100b6c8e8:  29 01 40 f9   ldr	x9, [x9]
0x100b6c8ec:  3f 01 08 eb   cmp	x9, x8
0x100b6c8f0:  01 05 00 54   b.ne	loc_100b6c990 ; ⤵ 0xa0
0x100b6c8f4:  e0 03 14 aa   mov	x0, x20
0x100b6c8f8:  e1 03 13 aa   mov	x1, x19
0x100b6c8fc:  f5 03 19 aa   mov	x21, x25
0x100b6c900:  bf 43 01 d1   sub	sp, fp, #0x50
0x100b6c904:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x100b6c908:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x100b6c90c:  f7 5b 43 a9   ldp	x23, x22, [sp, #0x30]
0x100b6c910:  f9 63 42 a9   ldp	x25, x24, [sp, #0x20]
0x100b6c914:  fb 6b 41 a9   ldp	x27, x26, [sp, #0x10]
0x100b6c918:  fc 07 46 f8   ldr	x28, [sp], #0x60
0x100b6c91c:  ff 0f 5f d6   retab
0x100b6c920:  ; loc_100b6c920
0x100b6c920:  20 00 20 d4   brk	#0x1
0x100b6c924:  ; loc_100b6c924
0x100b6c924:  20 00 20 d4   brk	#0x1
0x100b6c928:  ; loc_100b6c928
0x100b6c928:  20 00 20 d4   brk	#0x1
0x100b6c92c:  ; loc_100b6c92c
0x100b6c92c:  20 00 20 d4   brk	#0x1
0x100b6c930:  ; loc_100b6c930
0x100b6c930:  20 00 20 d4   brk	#0x1
0x100b6c934:  ; loc_100b6c934
0x100b6c934:  20 00 20 d4   brk	#0x1
0x100b6c938:  ; loc_100b6c938
0x100b6c938:  20 00 20 d4   brk	#0x1
0x100b6c93c:  ; loc_100b6c93c
0x100b6c93c:  60 6e 00 b0   adrp	x0, 0x101939000
0x100b6c940:  00 c0 06 91   add	x0, x0, #0x1b0 ; data_1019391b0 (__DATA.__data)
0x100b6c944:  10 00 00 90   adrp	x16, 0x100b6c000
0x100b6c948:  10 72 3f 91   add	x16, x16, #0xfdc
0x100b6c94c:  f0 23 c1 da   paciza	x16
0x100b6c950:  e1 03 10 aa   mov	x1, x16
0x100b6c954:  4f 7c 28 94   bl	j__swift_once
0x100b6c958:  87 fe ff 17   b	loc_100b6c374 ; ⤴ -0x5e4
0x100b6c95c:  ; loc_100b6c95c
0x100b6c95c:  20 00 20 d4   brk	#0x1
0x100b6c960:  ; loc_100b6c960
0x100b6c960:  20 00 20 d4   brk	#0x1
0x100b6c964:  ; loc_100b6c964
0x100b6c964:  20 00 20 d4   brk	#0x1
0x100b6c968:  ; loc_100b6c968
0x100b6c968:  20 00 20 d4   brk	#0x1
0x100b6c96c:  ; loc_100b6c96c
0x100b6c96c:  20 00 20 d4   brk	#0x1
0x100b6c970:  ; loc_100b6c970
0x100b6c970:  20 00 20 d4   brk	#0x1
0x100b6c974:  ; loc_100b6c974
0x100b6c974:  20 00 20 d4   brk	#0x1
0x100b6c978:  ; loc_100b6c978
0x100b6c978:  20 00 20 d4   brk	#0x1
0x100b6c97c:  ; loc_100b6c97c
0x100b6c97c:  20 00 20 d4   brk	#0x1
0x100b6c980:  ; loc_100b6c980
0x100b6c980:  20 00 20 d4   brk	#0x1
0x100b6c984:  ; loc_100b6c984
0x100b6c984:  20 00 20 d4   brk	#0x1
0x100b6c988:  ; loc_100b6c988
0x100b6c988:  20 00 20 d4   brk	#0x1
0x100b6c98c:  ; loc_100b6c98c
0x100b6c98c:  20 00 20 d4   brk	#0x1
0x100b6c990:  ; loc_100b6c990
0x100b6c990:  80 79 28 94   bl	j____stack_chk_fail

