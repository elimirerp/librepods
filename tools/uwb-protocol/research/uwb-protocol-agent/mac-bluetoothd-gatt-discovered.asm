0x100321fc0:  31 00 00 14   b	loc_100322084 ; ⤵ 0xc4
0x100321fc4:  76 17 40 f9   ldr	x22, [x27, #0x28]
0x100321fc8:  c8 3e 40 f9   ldr	x8, [x22, #0x78]
0x100321fcc:  e8 fd ff b4   cbz	x8, loc_100321f88 ; ⤴ -0x44
0x100321fd0:  78 13 40 f9   ldr	x24, [x27, #0x20]
0x100321fd4:  e0 03 16 aa   mov	x0, x22
0x100321fd8:  e1 03 13 aa   mov	x1, x19
0x100321fdc:  d7 25 05 94   bl	0x10046b738
0x100321fe0:  40 fd 07 36   tbz	w0, #0, loc_100321f88 ; ⤴ -0x58
0x100321fe4:  57 03 40 f9   ldr	x23, [x26]
0x100321fe8:  e0 03 17 aa   mov	x0, x23
0x100321fec:  21 00 80 52   mov	w1, #0x1
0x100321ff0:  90 b5 13 94   bl	j__os_log_type_enabled
0x100321ff4:  20 03 00 34   cbz	w0, loc_100322058 ; ⤵ 0x64
0x100321ff8:  e8 63 00 91   add	x8, sp, #0x18
0x100321ffc:  e0 03 18 aa   mov	x0, x24
0x100322000:  98 d3 09 94   bl	0x100596e60
0x100322004:  e8 bf c0 39   ldrsb	w8, [sp, #0x2f]
0x100322008:  e9 0f 40 f9   ldr	x9, [sp, #0x18]
0x10032200c:  1f 01 00 71   cmp	w8, #0
0x100322010:  e8 63 00 91   add	x8, sp, #0x18
0x100322014:  28 b1 88 9a   csel	x8, x9, x8, lt
0x100322018:  e0 03 c0 3d   ldr	q0, [sp]
0x10032201c:  e0 33 00 bd   str	s0, [sp, #0x30]
0x100322020:  f3 43 03 f8   stur	x19, [sp, #0x34]
0x100322024:  fc 7b 00 79   strh	w28, [sp, #0x3c]
0x100322028:  e8 e3 03 f8   stur	x8, [sp, #0x3e]
0x10032202c:  e4 c3 00 91   add	x4, sp, #0x30
0x100322030:  e0 03 14 aa   mov	x0, x20
0x100322034:  e1 03 17 aa   mov	x1, x23
0x100322038:  22 00 80 52   mov	w2, #0x1
0x10032203c:  e3 03 15 aa   mov	x3, x21
0x100322040:  c5 02 80 52   mov	w5, #0x16
0x100322044:  c3 b0 13 94   bl	j___os_log_impl
0x100322048:  e8 bf c0 39   ldrsb	w8, [sp, #0x2f]
0x10032204c:  68 00 f8 36   tbz	w8, #0x1f, loc_100322058 ; ⤵ 0xc
0x100322050:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x100322054:  3f b0 13 94   bl	j___ZdlPv
0x100322058:  ; loc_100322058
0x100322058:  c0 3e 40 f9   ldr	x0, [x22, #0x78]
0x10032205c:  10 00 40 f9   ldr	x16, [x0]
0x100322060:  f1 03 00 aa   mov	x17, x0
0x100322064:  d1 4c eb f2   movk	x17, #0x5a66, lsl #0x30
0x100322068:  30 1a c1 da   autda	x16, x17
0x10032206c:  08 0e 42 f8   ldr	x8, [x16, #0x20]!
0x100322070:  01 00 80 d2   mov	x1, #0
0x100322074:  e2 03 13 aa   mov	x2, x19
0x100322078:  70 d3 ff f2   movk	x16, #0xfe9b, lsl #0x30
0x10032207c:  10 09 3f d7   blraa	x8, x16
0x100322080:  c2 ff ff 17   b	loc_100321f88 ; ⤴ -0xf8
0x100322084:  ; loc_100322084
0x100322084:  e0 03 13 aa   mov	x0, x19
0x100322088:  ba b4 13 94   bl	j__objc_release
0x10032208c:  e8 27 40 f9   ldr	x8, [sp, #0x48]
0x100322090:  89 38 00 90   adrp	x9, 0x100a32000
0x100322094:  29 59 43 f9   ldr	x9, [x9, #0x6b0] ; __got.___stack_chk_guard
0x100322098:  29 01 40 f9   ldr	x9, [x9]
0x10032209c:  3f 01 08 eb   cmp	x9, x8
0x1003220a0:  21 01 00 54   b.ne	loc_1003220c4 ; ⤵ 0x24
0x1003220a4:  fd 7b 4a a9   ldp	fp, lr, [sp, #0xa0]
0x1003220a8:  f4 4f 49 a9   ldp	x20, x19, [sp, #0x90]
0x1003220ac:  f6 57 48 a9   ldp	x22, x21, [sp, #0x80]
0x1003220b0:  f8 5f 47 a9   ldp	x24, x23, [sp, #0x70]
0x1003220b4:  fa 67 46 a9   ldp	x26, x25, [sp, #0x60]
0x1003220b8:  fc 6f 45 a9   ldp	x28, x27, [sp, #0x50]
0x1003220bc:  ff c3 02 91   add	sp, sp, #0xb0
0x1003220c0:  ff 0f 5f d6   retab
0x1003220c4:  ; loc_1003220c4
0x1003220c4:  73 b0 13 94   bl	j____stack_chk_fail
0x1003220c8:  02 00 00 14   b	loc_1003220d0 ; ⤵ 0x8
0x1003220cc:  01 00 00 14   b	loc_1003220d0 ; ⤵ 0x4
0x1003220d0:  ; loc_1003220d0
0x1003220d0:  f4 03 00 aa   mov	x20, x0
0x1003220d4:  e0 03 13 aa   mov	x0, x19
0x1003220d8:  a6 b4 13 94   bl	j__objc_release
0x1003220dc:  02 00 00 14   b	loc_1003220e4 ; ⤵ 0x8
0x1003220e0:  f4 03 00 aa   mov	x20, x0
0x1003220e4:  ; loc_1003220e4
0x1003220e4:  e0 03 14 aa   mov	x0, x20
0x1003220e8:  fe ae 13 94   bl	j___Unwind_Resume

sub_1003220ec:
0x1003220ec:  00 a0 00 d1   sub	x0, x0, #0x28
0x1003220f0:  7e ff ff 17   b	0x100321ee8

sub_1003220f4:
0x1003220f4:  7f 23 03 d5   pacibsp
0x1003220f8:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x1003220fc:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x100322100:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x100322104:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x100322108:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x10032210c:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x100322110:  fd 43 01 91   add	fp, sp, #0x50
0x100322114:  ff 43 07 d1   sub	sp, sp, #0x1d0
0x100322118:  f4 03 02 aa   mov	x20, x2
0x10032211c:  f5 03 00 aa   mov	x21, x0
0x100322120:  88 38 00 90   adrp	x8, 0x100a32000
0x100322124:  08 59 43 f9   ldr	x8, [x8, #0x6b0] ; __got.___stack_chk_guard
0x100322128:  08 01 40 f9   ldr	x8, [x8]
0x10032212c:  a8 83 19 f8   stur	x8, [fp, #-0x68]
0x100322130:  e1 1f 00 f9   str	x1, [sp, #0x38]
0x100322134:  e0 03 01 aa   mov	x0, x1
0x100322138:  92 b4 13 94   bl	j__objc_retain
0x10032213c:  68 3d 00 f0   adrp	x8, 0x100ad1000
0x100322140:  08 e1 32 91   add	x8, x8, #0xcb8
0x100322144:  16 01 40 f9   ldr	x22, [x8]
0x100322148:  e0 03 16 aa   mov	x0, x22
0x10032214c:  01 00 80 52   mov	w1, #0
0x100322150:  38 b5 13 94   bl	j__os_log_type_enabled
0x100322154:  e0 01 00 34   cbz	w0, loc_100322190 ; ⤵ 0x3c
0x100322158:  68 2b 00 f0   adrp	x8, 0x100891000
0x10032215c:  00 49 46 fd   ldr	d0, [x8, #0xc90]
0x100322160:  e0 b3 00 bd   str	s0, [sp, #0xb0]
0x100322164:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x100322168:  e8 43 0b f8   stur	x8, [sp, #0xb4]
0x10032216c:  e0 e6 ff d0   adrp	x0, 0x100000000
0x100322170:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100322174:  03 32 00 90   adrp	x3, 0x100962000
0x100322178:  63 9c 0b 91   add	x3, x3, #0x2e7 ; "GATT Device %@ services discovered"
0x10032217c:  e4 c3 02 91   add	x4, sp, #0xb0
0x100322180:  e1 03 16 aa   mov	x1, x22
0x100322184:  02 00 80 52   mov	w2, #0
0x100322188:  85 01 80 52   mov	w5, #0xc
0x10032218c:  71 b0 13 94   bl	j___os_log_impl
0x100322190:  ; loc_100322190
0x100322190:  b3 7a 40 f9   ldr	x19, [x21, #0xf0]
0x100322194:  a8 e2 03 91   add	x8, x21, #0xf8
0x100322198:  e8 23 00 f9   str	x8, [sp, #0x40]
0x10032219c:  7f 02 08 eb   cmp	x19, x8
0x1003221a0:  c0 28 00 54   b.eq	loc_1003226b8 ; ⤵ 0x518
0x1003221a4:  f7 c3 02 91   add	x23, sp, #0xb0
0x1003221a8:  e8 c3 02 91   add	x8, sp, #0xb0
0x1003221ac:  08 21 00 91   add	x8, x8, #0x8
0x1003221b0:  89 38 00 90   adrp	x9, 0x100a32000
0x1003221b4:  29 09 43 f9   ldr	x9, [x9, #0x610] ; __got.__ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
0x1003221b8:  2a 01 40 f9   ldr	x10, [x9]
0x1003221bc:  29 0d 40 f9   ldr	x9, [x9, #0x18]
0x1003221c0:  e9 2b 02 a9   stp	x9, x10, [sp, #0x20]
0x1003221c4:  e9 c3 02 91   add	x9, sp, #0xb0
0x1003221c8:  89 11 fa f2   movk	x9, #0xd08c, lsl #0x30
0x1003221cc:  e8 1b 00 f9   str	x8, [sp, #0x30]
0x1003221d0:  08 7d e3 f2   movk	x8, #0x1be8, lsl #0x30
0x1003221d4:  e8 27 01 a9   stp	x8, x9, [sp, #0x10]
0x1003221d8:  68 2b 00 f0   adrp	x8, 0x100891000
0x1003221dc:  00 61 44 fd   ldr	d0, [x8, #0x8c0]
0x1003221e0:  e0 03 80 3d   str	q0, [sp]
0x1003221e4:  b5 3b 00 d0   adrp	x21, 0x100a98000
0x1003221e8:  fa 2b 00 f0   adrp	x26, 0x1008a1000
0x1003221ec:  5a cb 2b 91   add	x26, x26, #0xaf2
0x1003221f0:  60 16 40 f9   ldr	x0, [x19, #0x28]
0x1003221f4:  10 00 40 f9   ldr	x16, [x0]
0x1003221f8:  f1 03 00 aa   mov	x17, x0
0x1003221fc:  31 f2 f8 f2   movk	x17, #0xc791, lsl #0x30
0x100322200:  30 1a c1 da   autda	x16, x17
0x100322204:  08 0e 41 f8   ldr	x8, [x16, #0x10]!
0x100322208:  10 08 e4 f2   movk	x16, #0x2040, lsl #0x30
0x10032220c:  10 09 3f d7   blraa	x8, x16
0x100322210:  e0 01 00 35   cbnz	w0, loc_10032224c ; ⤵ 0x3c
0x100322214:  79 62 42 a9   ldp	x25, x24, [x19, #0x20]
0x100322218:  e0 03 18 aa   mov	x0, x24
0x10032221c:  e1 1f 40 f9   ldr	x1, [sp, #0x38]
0x100322220:  95 21 05 94   bl	0x10046a874
0x100322224:  40 01 00 34   cbz	w0, loc_10032224c ; ⤵ 0x28
0x100322228:  e0 03 18 aa   mov	x0, x24
0x10032222c:  e1 1f 40 f9   ldr	x1, [sp, #0x38]
0x100322230:  de 2e 05 94   bl	0x10046dda8
0x100322234:  c0 00 00 37   tbnz	w0, #0, loc_10032224c ; ⤵ 0x18
0x100322238:  e1 03 19 aa   mov	x1, x25
0x10032223c:  e2 03 18 aa   mov	x2, x24
0x100322240:  e3 1f 40 f9   ldr	x3, [sp, #0x38]
0x100322244:  24 00 80 52   mov	w4, #0x1
0x100322248:  54 01 00 94   bl	0x100322798
0x10032224c:  ; loc_10032224c
0x10032224c:  60 16 40 f9   ldr	x0, [x19, #0x28]
0x100322250:  10 00 40 f9   ldr	x16, [x0]
0x100322254:  f1 03 00 aa   mov	x17, x0
0x100322258:  31 f2 f8 f2   movk	x17, #0xc791, lsl #0x30
0x10032225c:  30 1a c1 da   autda	x16, x17
0x100322260:  08 0e 41 f8   ldr	x8, [x16, #0x10]!
0x100322264:  10 08 e4 f2   movk	x16, #0x2040, lsl #0x30
0x100322268:  10 09 3f d7   blraa	x8, x16
0x10032226c:  1f 04 00 71   cmp	w0, #0x1
0x100322270:  61 20 00 54   b.ne	loc_10032267c ; ⤵ 0x40c
0x100322274:  68 16 40 f9   ldr	x8, [x19, #0x28]
0x100322278:  00 69 40 f9   ldr	x0, [x8, #0xd0]
0x10032227c:  b9 d0 13 94   bl	j__objc_msgSend(x0, "count")
0x100322280:  e0 1f 00 b4   cbz	x0, loc_10032267c ; ⤵ 0x3fc
0x100322284:  7c 6e 42 a9   ldp	x28, x27, [x19, #0x20]
0x100322288:  ff 7f 06 a9   stp	xzr, xzr, [sp, #0x60]
0x10032228c:  ff 3b 00 f9   str	xzr, [sp, #0x70]
0x100322290:  ff db 00 f9   str	xzr, [sp, #0x1b0]
0x100322294:  00 e4 00 6f   movi	v0.2d, #0
0x100322298:  e0 02 07 ad   stp	q0, q0, [x23, #0xe0]
0x10032229c:  e0 02 06 ad   stp	q0, q0, [x23, #0xc0]
0x1003222a0:  e0 02 05 ad   stp	q0, q0, [x23, #0xa0]
0x1003222a4:  e0 02 04 ad   stp	q0, q0, [x23, #0x80]
0x1003222a8:  e0 02 03 ad   stp	q0, q0, [x23, #0x60]
0x1003222ac:  e0 02 02 ad   stp	q0, q0, [x23, #0x40]
0x1003222b0:  e0 02 01 ad   stp	q0, q0, [x23, #0x20]
0x1003222b4:  e0 83 05 ad   stp	q0, q0, [sp, #0xb0]
0x1003222b8:  e0 c3 02 91   add	x0, sp, #0xb0
0x1003222bc:  3b 65 fd 97   bl	0x10027b7a8
0x1003222c0:  98 02 40 f9   ldr	x24, [x20]
0x1003222c4:  88 06 40 f9   ldr	x8, [x20, #0x8]
0x1003222c8:  1f 03 08 eb   cmp	x24, x8
0x1003222cc:  80 0c 00 54   b.eq	loc_10032245c ; ⤵ 0x190
0x1003222d0:  ff ff 07 a9   stp	xzr, xzr, [sp, #0x78]
0x1003222d4:  e1 e3 01 91   add	x1, sp, #0x78
0x1003222d8:  e0 03 18 aa   mov	x0, x24
0x1003222dc:  c1 a5 11 94   bl	0x10078b9e0
0x1003222e0:  a8 a2 3d 91   add	x8, x21, #0xf68
0x1003222e4:  e3 03 00 2a   mov	w3, w0
0x1003222e8:  e2 e3 01 91   add	x2, sp, #0x78
0x1003222ec:  e0 03 08 aa   mov	x0, x8
0x1003222f0:  24 b9 13 94   bl	j__objc_msgSend(x0, "UUIDWithBytes:length:")
0x1003222f4:  fd 03 1d aa   mov	fp, fp
0x1003222f8:  2a b4 13 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003222fc:  f9 03 00 aa   mov	x25, x0
0x100322300:  60 6b 40 f9   ldr	x0, [x27, #0xd0]
0x100322304:  e2 03 19 aa   mov	x2, x25

