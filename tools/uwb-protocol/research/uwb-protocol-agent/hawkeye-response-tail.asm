0x10145c0e0:  1f 08 00 f1   cmp	x0, #0x2
0x10145c0e4:  89 10 00 54   b.ls	loc_10145c2f4 ; ⤵ 0x210
0x10145c0e8:  fc 12 40 78   ldurh	w28, [x23, #0x1]
0x10145c0ec:  e0 03 13 aa   mov	x0, x19
0x10145c0f0:  04 50 1b 94   bl	j__objc_msgSend(x0, "hawkeyeTestMode")
0x10145c0f4:  00 14 00 34   cbz	w0, loc_10145c374 ; ⤵ 0x280
0x10145c0f8:  e8 12 40 78   ldurh	w8, [x23, #0x1]
0x10145c0fc:  1f 29 08 71   cmp	w8, #0x20a
0x10145c100:  e1 12 00 54   b.ne	loc_10145c35c ; ⤵ 0x25c
0x10145c104:  e0 03 13 aa   mov	x0, x19
0x10145c108:  fe 4f 1b 94   bl	j__objc_msgSend(x0, "hawkeyeTestMode")
0x10145c10c:  1f 14 00 71   cmp	w0, #0x5
0x10145c110:  a1 11 00 54   b.ne	loc_10145c344 ; ⤵ 0x234
0x10145c114:  1b e9 1a 94   bl	j__rand
0x10145c118:  e0 06 00 39   strb	w0, [x23, #0x1]
0x10145c11c:  19 e9 1a 94   bl	j__rand
0x10145c120:  e0 0a 00 39   strb	w0, [x23, #0x2]
0x10145c124:  8e 00 00 14   b	loc_10145c35c ; ⤵ 0x238
0x10145c128:  3b 89 00 d0   adrp	x27, 0x102582000
0x10145c12c:  68 3b 46 f9   ldr	x8, [x27, #0xc70] ; data_102582c70 (__DATA.__data)
0x10145c130:  1f 05 00 b1   cmn	x8, #0x1
0x10145c134:  41 48 00 54   b.ne	loc_10145ca3c ; ⤵ 0x908
0x10145c138:  3c 89 00 d0   adrp	x28, 0x102582000
0x10145c13c:  95 3f 46 f9   ldr	x21, [x28, #0xc78] ; data_102582c78 (__DATA.__data)
0x10145c140:  e0 03 15 aa   mov	x0, x21
0x10145c144:  21 02 80 52   mov	w1, #0x11
0x10145c148:  6a e8 1a 94   bl	j__os_log_type_enabled
0x10145c14c:  00 06 00 34   cbz	w0, loc_10145c20c ; ⤵ 0xc0
0x10145c150:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c154:  31 f2 00 94   bl	0x101498a18
0x10145c158:  f7 03 00 aa   mov	x23, x0
0x10145c15c:  e0 03 16 aa   mov	x0, x22
0x10145c160:  50 ae 1b 94   bl	j__objc_msgSend(x0, "service")
0x10145c164:  bf ed 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145c168:  f8 03 00 aa   mov	x24, x0
0x10145c16c:  e0 03 16 aa   mov	x0, x22
0x10145c170:  bc ed 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145c174:  f9 03 00 aa   mov	x25, x0
0x10145c178:  e0 03 14 aa   mov	x0, x20
0x10145c17c:  69 ae 1b 94   bl	j__objc_msgSend(x0, "serviceUUID")
0x10145c180:  fa 03 00 aa   mov	x26, x0
0x10145c184:  e0 03 14 aa   mov	x0, x20
0x10145c188:  1e 08 1b 94   bl	j__objc_msgSend(x0, "characteristicUUID")
0x10145c18c:  c8 39 00 90   adrp	x8, 0x101b94000
0x10145c190:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x10145c194:  e0 03 00 bd   str	s0, [sp]
0x10145c198:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c19c:  48 04 81 52   mov	w8, #0x822
0x10145c1a0:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10145c1a4:  88 52 00 d0   adrp	x8, 0x101eae000
0x10145c1a8:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10145c1ac:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10145c1b0:  28 08 81 52   mov	w8, #0x841
0x10145c1b4:  e8 27 00 79   strh	w8, [sp, #0x12]
0x10145c1b8:  f7 43 01 f8   stur	x23, [sp, #0x14]
0x10145c1bc:  e8 3b 00 79   strh	w8, [sp, #0x1c]
0x10145c1c0:  f8 e3 01 f8   stur	x24, [sp, #0x1e]
0x10145c1c4:  e8 4f 00 79   strh	w8, [sp, #0x26]
0x10145c1c8:  f9 17 00 f9   str	x25, [sp, #0x28]
0x10145c1cc:  e8 63 00 79   strh	w8, [sp, #0x30]
0x10145c1d0:  fa 23 03 f8   stur	x26, [sp, #0x32]
0x10145c1d4:  e8 77 00 79   strh	w8, [sp, #0x3a]
0x10145c1d8:  e0 c3 03 f8   stur	x0, [sp, #0x3c]
0x10145c1dc:  20 5d ff 90   adrp	x0, 0x100000000
0x10145c1e0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10145c1e4:  c3 70 00 b0   adrp	x3, 0x102275000
0x10145c1e8:  63 cc 31 91   add	x3, x3, #0xc73 ; "{\"msg%{public}.0s\":\"#durian #hawkeye encountering simultaneous streaming fragments, aborting as CL cannot handle it\", \"item\":%{private, location:escape_only}@, \"incomingServiceUUID\":%{private, locatio"...
0x10145c1ec:  e4 03 00 91   mov	x4, sp
0x10145c1f0:  e1 03 15 aa   mov	x1, x21
0x10145c1f4:  22 02 80 52   mov	w2, #0x11
0x10145c1f8:  85 08 80 52   mov	w5, #0x44
0x10145c1fc:  fd e3 1a 94   bl	j___os_log_impl
0x10145c200:  68 3b 46 f9   ldr	x8, [x27, #0xc70]
0x10145c204:  1f 05 00 b1   cmn	x8, #0x1
0x10145c208:  e1 41 00 54   b.ne	loc_10145ca44 ; ⤵ 0x83c
0x10145c20c:  ; loc_10145c20c
0x10145c20c:  95 3f 46 f9   ldr	x21, [x28, #0xc78]
0x10145c210:  e0 03 15 aa   mov	x0, x21
0x10145c214:  3b e8 1a 94   bl	j__os_signpost_enabled
0x10145c218:  40 06 00 34   cbz	w0, loc_10145c2e0 ; ⤵ 0xc8
0x10145c21c:  60 b2 40 f9   ldr	x0, [x19, #0x160]
0x10145c220:  fe f1 00 94   bl	0x101498a18
0x10145c224:  f7 03 00 aa   mov	x23, x0
0x10145c228:  e0 03 16 aa   mov	x0, x22
0x10145c22c:  1d ae 1b 94   bl	j__objc_msgSend(x0, "service")
0x10145c230:  8c ed 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145c234:  f8 03 00 aa   mov	x24, x0
0x10145c238:  e0 03 16 aa   mov	x0, x22
0x10145c23c:  89 ed 1a 94   bl	j__objc_msgSend(x0, "UUID")
0x10145c240:  f6 03 00 aa   mov	x22, x0
0x10145c244:  e0 03 14 aa   mov	x0, x20
0x10145c248:  36 ae 1b 94   bl	j__objc_msgSend(x0, "serviceUUID")
0x10145c24c:  f9 03 00 aa   mov	x25, x0
0x10145c250:  e0 03 14 aa   mov	x0, x20
0x10145c254:  eb 07 1b 94   bl	j__objc_msgSend(x0, "characteristicUUID")
0x10145c258:  c8 39 00 90   adrp	x8, 0x101b94000
0x10145c25c:  00 9d 40 fd   ldr	d0, [x8, #0x138]
0x10145c260:  e0 03 00 bd   str	s0, [sp]
0x10145c264:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x10145c268:  48 04 81 52   mov	w8, #0x822
0x10145c26c:  e8 13 00 79   strh	w8, [sp, #0x8]

