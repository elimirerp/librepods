0x10145b110:  ff 32 20 71   cmp	w23, #0x80c
0x10145b114:  81 0e 00 54   b.ne	loc_10145b2e4 ; ⤵ 0x1d0
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
0x10145b170:  f6 03 00 aa   mov	x22, x0
0x10145b174:  e0 03 14 aa   mov	x0, x20
0x10145b178:  9a 78 1b 94   bl	j__objc_msgSend(x0, "length")
0x10145b17c:  c8 39 00 b0   adrp	x8, 0x101b94000
0x10145b180:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x10145b184:  e0 03 00 bd   str	s0, [sp]
0x10145b188:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145b18c:  48 04 81 52   mov	w8, #0x822
0x10145b190:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145b194:  88 52 00 f0   adrp	x8, 0x101eae000
0x10145b198:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145b19c:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145b1a0:  28 08 81 52   mov	w8, #0x841
0x10145b1a4:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145b1a8:  f6 43 01 f8   stur	x22, [sp, #0x14]
0x10145b1ac:  48 80 80 52   mov	w8, #0x402

