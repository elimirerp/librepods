0x10145b0d0:  e8 1a 1c 51   sub	w8, w23, #0x706
0x10145b0d4:  1f 09 00 71   cmp	w8, #0x2
0x10145b0d8:  63 02 00 54   b.lo	loc_10145b124 ; ⤵ 0x4c
0x10145b0dc:  ff 0e 14 71   cmp	w23, #0x503
0x10145b0e0:  20 02 00 54   b.eq	loc_10145b124 ; ⤵ 0x44
0x10145b0e4:  ff 02 1c 71   cmp	w23, #0x700
0x10145b0e8:  e0 01 00 54   b.eq	loc_10145b124 ; ⤵ 0x3c
0x10145b0ec:  7e 00 00 14   b	loc_10145b2e4 ; ⤵ 0x1f8
0x10145b0f0:  98 00 80 52   mov	w24, #0x4
0x10145b0f4:  0c 00 00 14   b	loc_10145b124 ; ⤵ 0x30
0x10145b0f8:  e8 0a 10 51   sub	w8, w23, #0x402
0x10145b0fc:  1f 09 00 71   cmp	w8, #0x2
0x10145b100:  23 08 00 54   b.lo	loc_10145b204 ; ⤵ 0x104
0x10145b104:  78 00 00 14   b	loc_10145b2e4 ; ⤵ 0x1e0
0x10145b108:  ff 3a 20 71   cmp	w23, #0x80e
0x10145b10c:  60 00 00 54   b.eq	loc_10145b118 ; ⤵ 0xc
0x10145b110:  ff 32 20 71   cmp	w23, #0x80c
0x10145b114:  81 0e 00 54   b.ne	loc_10145b2e4 ; ⤵ 0x1d0
0x10145b118:  ; loc_10145b118
0x10145b118:  78 00 80 52   mov	w24, #0x3
0x10145b11c:  02 00 00 14   b	loc_10145b124 ; ⤵ 0x8
0x10145b120:  f8 02 80 52   mov	w24, #0x17
0x10145b124:  ; loc_10145b124
0x10145b124:  e0 03 14 aa   mov	x0, x20
0x10145b128:  ae 78 1b 94   bl	j__objc_msgSend(x0, "length")
0x10145b12c:  1f 40 38 eb   cmp	x0, w24, uxtw
0x10145b130:  61 00 00 54   b.ne	loc_10145b13c ; ⤵ 0xc
0x10145b134:  20 00 80 52   mov	w0, #0x1
0x10145b138:  33 00 00 14   b	loc_10145b204 ; ⤵ 0xcc
0x10145b13c:  ; loc_10145b13c
0x10145b13c:  19 00 80 52   mov	w25, #0
0x10145b140:  28 89 00 f0   adrp	x8, 0x102582000
0x10145b144:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10145b148:  1f 05 00 b1   cmn	x8, #0x1
0x10145b14c:  21 17 00 54   b.ne	loc_10145b430 ; ⤵ 0x2e4
0x10145b150:  28 89 00 f0   adrp	x8, 0x102582000
0x10145b154:  15 3d 46 f9   ldr	x21, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10145b158:  e0 03 15 aa   mov	x0, x21
0x10145b15c:  01 00 80 52   mov	w1, #0
0x10145b160:  64 ec 1a 94   bl	j__os_log_type_enabled
0x10145b164:  80 04 00 34   cbz	w0, loc_10145b1f4 ; ⤵ 0x90
0x10145b168:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145b16c:  2b f6 00 94   bl	0x101498a18

