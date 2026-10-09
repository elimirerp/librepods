
sub_100779fbc:
0x100779fbc:  7f 23 03 d5   pacibsp
0x100779fc0:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x100779fc4:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x100779fc8:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x100779fcc:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x100779fd0:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x100779fd4:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x100779fd8:  fd 43 01 91   add	fp, sp, #0x50
0x100779fdc:  ff 43 01 d1   sub	sp, sp, #0x50
0x100779fe0:  fb 03 14 aa   mov	x27, x20
0x100779fe4:  f4 03 01 aa   mov	x20, x1
0x100779fe8:  fc 03 00 aa   mov	x28, x0
0x100779fec:  00 00 80 d2   mov	x0, #0
0x100779ff0:  30 38 38 94   bl	j__$s8Dispatch0A13WorkItemFlagsVMa
0x100779ff4:  f3 03 00 aa   mov	x19, x0
0x100779ff8:  e9 03 00 aa   mov	x9, x0
0x100779ffc:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x10077a000:  f0 03 08 aa   mov	x16, x8
0x10077a004:  f1 03 09 aa   mov	x17, x9
0x10077a008:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a00c:  30 1a c1 da   autda	x16, x17
0x10077a010:  f1 03 10 aa   mov	x17, x16
0x10077a014:  f1 47 c1 da   xpacd	x17
0x10077a018:  1f 02 11 eb   cmp	x16, x17
0x10077a01c:  40 00 00 54   b.eq	loc_10077a024 ; ⤵ 0x8
0x10077a020:  40 8e 38 d4   brk	#0xc472
0x10077a024:  ; loc_10077a024
0x10077a024:  f5 03 10 aa   mov	x21, x16
0x10077a028:  f0 03 08 aa   mov	x16, x8
0x10077a02c:  f1 03 09 aa   mov	x17, x9
0x10077a030:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a034:  30 1a c1 da   autda	x16, x17
0x10077a038:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10077a03c:  e9 03 08 aa   mov	x9, x8
0x10077a040:  71 88 00 f0   adrp	x17, 0x101889000
0x10077a044:  31 62 1f 91   add	x17, x17, #0x7d8 ; __got.___chkstk_darwin
0x10077a048:  30 02 40 f9   ldr	x16, [x17]
0x10077a04c:  11 0a 3f d7   blraa	x16, x17
0x10077a050:  e9 03 00 91   mov	x9, sp
0x10077a054:  08 3d 00 91   add	x8, x8, #0xf
0x10077a058:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10077a05c:  37 01 08 cb   sub	x23, x9, x8
0x10077a060:  ff 02 00 91   mov	sp, x23
0x10077a064:  00 00 80 d2   mov	x0, #0
0x10077a068:  26 38 38 94   bl	j__$s8Dispatch0A3QoSVMa
0x10077a06c:  a0 03 17 f8   stur	x0, [fp, #-0x90]
0x10077a070:  e9 03 00 aa   mov	x9, x0
0x10077a074:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x10077a078:  f0 03 08 aa   mov	x16, x8
0x10077a07c:  f1 03 09 aa   mov	x17, x9
0x10077a080:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a084:  30 1a c1 da   autda	x16, x17
0x10077a088:  f1 03 10 aa   mov	x17, x16
0x10077a08c:  f1 47 c1 da   xpacd	x17
0x10077a090:  1f 02 11 eb   cmp	x16, x17
0x10077a094:  40 00 00 54   b.eq	loc_10077a09c ; ⤵ 0x8
0x10077a098:  40 8e 38 d4   brk	#0xc472
0x10077a09c:  ; loc_10077a09c
0x10077a09c:  f8 03 10 aa   mov	x24, x16
0x10077a0a0:  f0 03 08 aa   mov	x16, x8
0x10077a0a4:  f1 03 09 aa   mov	x17, x9
0x10077a0a8:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a0ac:  30 1a c1 da   autda	x16, x17
0x10077a0b0:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10077a0b4:  e9 03 08 aa   mov	x9, x8
0x10077a0b8:  71 88 00 f0   adrp	x17, 0x101889000
0x10077a0bc:  31 62 1f 91   add	x17, x17, #0x7d8 ; __got.___chkstk_darwin
0x10077a0c0:  30 02 40 f9   ldr	x16, [x17]
0x10077a0c4:  11 0a 3f d7   blraa	x16, x17
0x10077a0c8:  e9 03 00 91   mov	x9, sp
0x10077a0cc:  08 3d 00 91   add	x8, x8, #0xf
0x10077a0d0:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10077a0d4:  39 01 08 cb   sub	x25, x9, x8
0x10077a0d8:  3f 03 00 91   mov	sp, x25
0x10077a0dc:  68 47 40 f9   ldr	x8, [x27, #0x88]
0x10077a0e0:  a8 83 16 f8   stur	x8, [fp, #-0x98]
0x10077a0e4:  80 89 00 f0   adrp	x0, 0x1018ad000
0x10077a0e8:  00 a0 11 91   add	x0, x0, #0x468 ; data_1018ad468 (__DATA_CONST.__const)
0x10077a0ec:  01 05 80 52   mov	w1, #0x28
0x10077a0f0:  e2 00 80 52   mov	w2, #0x7
0x10077a0f4:  2f 45 38 94   bl	j__swift_allocObject
0x10077a0f8:  1b 70 01 a9   stp	x27, x28, [x0, #0x10]
0x10077a0fc:  14 10 00 f9   str	x20, [x0, #0x20]
0x10077a100:  d0 02 00 90   adrp	x16, 0x1007d2000
0x10077a104:  10 62 01 91   add	x16, x16, #0x58
0x10077a108:  11 e1 81 d2   mov	x17, #0xf08
0x10077a10c:  30 02 c1 da   pacia	x16, x17
0x10077a110:  b0 03 3a a9   stp	x16, x0, [fp, #-0x60]
0x10077a114:  a8 03 02 d1   sub	x8, fp, #0x80
0x10077a118:  70 88 00 90   adrp	x16, 0x101886000
0x10077a11c:  10 fe 42 f9   ldr	x16, [x16, #0x5f8] ; __got.__NSConcreteStackBlock
0x10077a120:  f1 03 08 aa   mov	x17, x8
0x10077a124:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x10077a128:  30 0a c1 da   pacda	x16, x17
0x10077a12c:  b0 03 18 f8   stur	x16, [fp, #-0x80]
0x10077a130:  89 73 00 b0   adrp	x9, 0x1015eb000
0x10077a134:  20 49 45 fd   ldr	d0, [x9, #0xa90]
0x10077a138:  a0 83 18 fc   stur	d0, [fp, #-0x78]
0x10077a13c:  08 41 00 91   add	x8, x8, #0x10
0x10077a140:  70 c4 ff 90   adrp	x16, 0x100006000
0x10077a144:  10 12 20 91   add	x16, x16, #0x804
0x10077a148:  10 01 c1 da   pacia	x16, x8
0x10077a14c:  88 89 00 f0   adrp	x8, 0x1018ad000
0x10077a150:  08 01 12 91   add	x8, x8, #0x480 ; data_1018ad480 (__DATA_CONST.__const)
0x10077a154:  b0 23 39 a9   stp	x16, x8, [fp, #-0x70]
0x10077a158:  a0 03 02 d1   sub	x0, fp, #0x80
0x10077a15c:  85 43 38 94   bl	j___Block_copy
0x10077a160:  fc 03 00 aa   mov	x28, x0
0x10077a164:  e0 03 1b aa   mov	x0, x27
0x10077a168:  5e 46 38 94   bl	j__swift_retain
0x10077a16c:  e0 03 14 aa   mov	x0, x20
0x10077a170:  5c 46 38 94   bl	j__swift_retain
0x10077a174:  e8 03 19 aa   mov	x8, x25
0x10077a178:  da 37 38 94   bl	j__$s8Dispatch0A3QoSV11unspecifiedACvgZ
0x10077a17c:  68 88 00 90   adrp	x8, 0x101886000
0x10077a180:  08 71 47 f9   ldr	x8, [x8, #0xee0] ; __got.__swiftEmptyArrayStorage
0x10077a184:  a8 83 17 f8   stur	x8, [fp, #-0x88]
0x10077a188:  20 8d 00 b0   adrp	x0, 0x10191f000
0x10077a18c:  00 c0 10 91   add	x0, x0, #0x430 ; data_10191f430 (__DATA.__data)
0x10077a190:  70 88 00 90   adrp	x16, 0x101886000
0x10077a194:  10 96 47 f9   ldr	x16, [x16, #0xf28] ; __got._$s8Dispatch0A13WorkItemFlagsVMa
0x10077a198:  f1 a1 85 d2   mov	x17, #0x2d0f
0x10077a19c:  30 02 c1 da   pacia	x16, x17
0x10077a1a0:  e1 03 10 aa   mov	x1, x16
0x10077a1a4:  70 88 00 90   adrp	x16, 0x101886000
0x10077a1a8:  10 9a 47 f9   ldr	x16, [x16, #0xf30] ; __got._$s8Dispatch0A13WorkItemFlagsVs10SetAlgebraAAMc
0x10077a1ac:  71 dd 98 d2   mov	x17, #0xc6eb
0x10077a1b0:  30 0a c1 da   pacda	x16, x17
0x10077a1b4:  e2 03 10 aa   mov	x2, x16
0x10077a1b8:  66 27 e2 97   bl	0x100003f50
0x10077a1bc:  fb 03 00 aa   mov	x27, x0
0x10077a1c0:  14 8d 00 90   adrp	x20, 0x10191a000
0x10077a1c4:  94 02 0d 91   add	x20, x20, #0x340 ; data_10191a340 (__DATA.__data)
0x10077a1c8:  9a 73 00 b0   adrp	x26, 0x1015eb000
0x10077a1cc:  5a 83 38 91   add	x26, x26, #0xe20
0x10077a1d0:  e0 03 14 aa   mov	x0, x20
0x10077a1d4:  e1 03 1a aa   mov	x1, x26
0x10077a1d8:  87 f8 e4 97   bl	0x1000b83f4
0x10077a1dc:  f6 03 00 aa   mov	x22, x0
0x10077a1e0:  20 8d 00 b0   adrp	x0, 0x10191f000
0x10077a1e4:  00 00 11 91   add	x0, x0, #0x440 ; data_10191f440 (__DATA.__data)
0x10077a1e8:  70 88 00 90   adrp	x16, 0x101886000
0x10077a1ec:  10 9a 45 f9   ldr	x16, [x16, #0xb30] ; __got._$sSayxGSTsMc
0x10077a1f0:  71 dd 98 d2   mov	x17, #0xc6eb
0x10077a1f4:  30 0a c1 da   pacda	x16, x17
0x10077a1f8:  e3 03 10 aa   mov	x3, x16
0x10077a1fc:  e1 03 14 aa   mov	x1, x20
0x10077a200:  e2 03 1a aa   mov	x2, x26
0x10077a204:  2b 28 e2 97   bl	0x1000042b0
0x10077a208:  e2 03 00 aa   mov	x2, x0
0x10077a20c:  a0 23 02 d1   sub	x0, fp, #0x88
0x10077a210:  e8 03 17 aa   mov	x8, x23
0x10077a214:  e1 03 16 aa   mov	x1, x22
0x10077a218:  f4 03 13 aa   mov	x20, x19
0x10077a21c:  e3 03 13 aa   mov	x3, x19
0x10077a220:  e4 03 1b aa   mov	x4, x27
0x10077a224:  47 3e 38 94   bl	j__$ss10SetAlgebraPyxqd__ncSTRd__7ElementQyd__ACRtzlufCTj
0x10077a228:  00 00 80 d2   mov	x0, #0
0x10077a22c:  e1 03 19 aa   mov	x1, x25
0x10077a230:  e2 03 17 aa   mov	x2, x23
0x10077a234:  e3 03 1c aa   mov	x3, x28
0x10077a238:  b4 83 56 f8   ldur	x20, [fp, #-0x98]
0x10077a23c:  39 3d 38 94   bl	j__$sSo17OS_dispatch_queueC8DispatchE5async5group3qos5flags7executeySo0a1_b1_F0CSg_AC0D3QoSVAC0D13WorkItemFlagsVyyXBtF
0x10077a240:  e0 03 1c aa   mov	x0, x28
0x10077a244:  4f 43 38 94   bl	j___Block_release
0x10077a248:  a8 8e 40 f8   ldr	x8, [x21, #0x8]!
0x10077a24c:  e0 03 17 aa   mov	x0, x23
0x10077a250:  e1 03 13 aa   mov	x1, x19
0x10077a254:  f1 03 15 aa   mov	x17, x21
0x10077a258:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10077a25c:  11 09 3f d7   blraa	x8, x17
0x10077a260:  08 8f 40 f8   ldr	x8, [x24, #0x8]!
0x10077a264:  e0 03 19 aa   mov	x0, x25
0x10077a268:  a1 03 57 f8   ldur	x1, [fp, #-0x90]
0x10077a26c:  f1 03 18 aa   mov	x17, x24
0x10077a270:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10077a274:  11 09 3f d7   blraa	x8, x17
0x10077a278:  a0 83 5a f8   ldur	x0, [fp, #-0x58]
0x10077a27c:  11 46 38 94   bl	j__swift_release
0x10077a280:  bf 43 01 d1   sub	sp, fp, #0x50
0x10077a284:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x10077a288:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x10077a28c:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x10077a290:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x10077a294:  fa 67 41 a9   ldp	x26, x25, [sp, #0x10]
0x10077a298:  fc 6f c6 a8   ldp	x28, x27, [sp], #0x60
0x10077a29c:  ff 0f 5f d6   retab

sub_10077a2a0:
0x10077a2a0:  7f 23 03 d5   pacibsp
0x10077a2a4:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x10077a2a8:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x10077a2ac:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x10077a2b0:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x10077a2b4:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x10077a2b8:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x10077a2bc:  fd 43 01 91   add	fp, sp, #0x50
0x10077a2c0:  ff c3 06 d1   sub	sp, sp, #0x1b0
0x10077a2c4:  a8 e3 03 d1   sub	x8, fp, #0xf8
0x10077a2c8:  02 01 10 f8   stur	x2, [x8, #-0x100]
0x10077a2cc:  a8 c3 03 d1   sub	x8, fp, #0xf0
0x10077a2d0:  01 01 10 f8   stur	x1, [x8, #-0x100]
0x10077a2d4:  f4 03 00 aa   mov	x20, x0
0x10077a2d8:  00 00 80 d2   mov	x0, #0
0x10077a2dc:  51 33 27 94   bl	0x101147020
0x10077a2e0:  a8 43 01 d1   sub	x8, fp, #0x50
0x10077a2e4:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10077a2e8:  e9 03 00 aa   mov	x9, x0
0x10077a2ec:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x10077a2f0:  f0 03 08 aa   mov	x16, x8
0x10077a2f4:  f1 03 09 aa   mov	x17, x9
0x10077a2f8:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a2fc:  30 1a c1 da   autda	x16, x17
0x10077a300:  f1 03 10 aa   mov	x17, x16
0x10077a304:  f1 47 c1 da   xpacd	x17
0x10077a308:  1f 02 11 eb   cmp	x16, x17
0x10077a30c:  40 00 00 54   b.eq	loc_10077a314 ; ⤵ 0x8
0x10077a310:  40 8e 38 d4   brk	#0xc472
0x10077a314:  ; loc_10077a314
0x10077a314:  aa a3 03 d1   sub	x10, fp, #0xe8
0x10077a318:  50 01 10 f8   stur	x16, [x10, #-0x100]
0x10077a31c:  f0 03 08 aa   mov	x16, x8
0x10077a320:  f1 03 09 aa   mov	x17, x9
0x10077a324:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a328:  30 1a c1 da   autda	x16, x17
0x10077a32c:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10077a330:  e9 03 08 aa   mov	x9, x8
0x10077a334:  71 88 00 f0   adrp	x17, 0x101889000
0x10077a338:  31 62 1f 91   add	x17, x17, #0x7d8 ; __got.___chkstk_darwin
0x10077a33c:  30 02 40 f9   ldr	x16, [x17]
0x10077a340:  11 0a 3f d7   blraa	x16, x17
0x10077a344:  e9 03 00 91   mov	x9, sp
0x10077a348:  08 3d 00 91   add	x8, x8, #0xf
0x10077a34c:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10077a350:  28 01 08 cb   sub	x8, x9, x8
0x10077a354:  a9 63 01 d1   sub	x9, fp, #0x58
0x10077a358:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10077a35c:  1f 01 00 91   mov	sp, x8
0x10077a360:  00 00 80 d2   mov	x0, #0
0x10077a364:  fb 2c 38 94   bl	j__$s10Foundation4DateVMa
0x10077a368:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x10077a36c:  f1 03 00 aa   mov	x17, x0
0x10077a370:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a374:  30 1a c1 da   autda	x16, x17
0x10077a378:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10077a37c:  e9 03 08 aa   mov	x9, x8
0x10077a380:  71 88 00 f0   adrp	x17, 0x101889000
0x10077a384:  31 62 1f 91   add	x17, x17, #0x7d8 ; __got.___chkstk_darwin
0x10077a388:  30 02 40 f9   ldr	x16, [x17]
0x10077a38c:  11 0a 3f d7   blraa	x16, x17
0x10077a390:  e9 03 00 91   mov	x9, sp
0x10077a394:  08 3d 00 91   add	x8, x8, #0xf
0x10077a398:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10077a39c:  28 01 08 cb   sub	x8, x9, x8
0x10077a3a0:  a9 a3 02 d1   sub	x9, fp, #0xa8
0x10077a3a4:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10077a3a8:  1f 01 00 91   mov	sp, x8
0x10077a3ac:  00 00 80 d2   mov	x0, #0
0x10077a3b0:  90 2a 38 94   bl	j__$s10Foundation12DateIntervalVMa
0x10077a3b4:  a8 c3 02 d1   sub	x8, fp, #0xb0
0x10077a3b8:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10077a3bc:  e9 03 00 aa   mov	x9, x0
0x10077a3c0:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x10077a3c4:  f0 03 08 aa   mov	x16, x8
0x10077a3c8:  f1 03 09 aa   mov	x17, x9
0x10077a3cc:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a3d0:  30 1a c1 da   autda	x16, x17
0x10077a3d4:  f1 03 10 aa   mov	x17, x16
0x10077a3d8:  f1 47 c1 da   xpacd	x17
0x10077a3dc:  1f 02 11 eb   cmp	x16, x17
0x10077a3e0:  40 00 00 54   b.eq	loc_10077a3e8 ; ⤵ 0x8
0x10077a3e4:  40 8e 38 d4   brk	#0xc472
0x10077a3e8:  ; loc_10077a3e8
0x10077a3e8:  aa 83 00 d1   sub	x10, fp, #0x20
0x10077a3ec:  50 01 10 f8   stur	x16, [x10, #-0x100]
0x10077a3f0:  f0 03 08 aa   mov	x16, x8
0x10077a3f4:  f1 03 09 aa   mov	x17, x9
0x10077a3f8:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a3fc:  30 1a c1 da   autda	x16, x17
0x10077a400:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10077a404:  e9 03 08 aa   mov	x9, x8
0x10077a408:  71 88 00 f0   adrp	x17, 0x101889000
0x10077a40c:  31 62 1f 91   add	x17, x17, #0x7d8 ; __got.___chkstk_darwin
0x10077a410:  30 02 40 f9   ldr	x16, [x17]
0x10077a414:  11 0a 3f d7   blraa	x16, x17
0x10077a418:  e9 03 00 91   mov	x9, sp
0x10077a41c:  08 3d 00 91   add	x8, x8, #0xf
0x10077a420:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10077a424:  28 01 08 cb   sub	x8, x9, x8
0x10077a428:  a9 23 02 d1   sub	x9, fp, #0x88
0x10077a42c:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10077a430:  1f 01 00 91   mov	sp, x8
0x10077a434:  00 00 80 d2   mov	x0, #0
0x10077a438:  fe 2c 38 94   bl	j__$s10Foundation4UUIDVMa
0x10077a43c:  a8 e3 00 d1   sub	x8, fp, #0x38
0x10077a440:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10077a444:  e9 03 00 aa   mov	x9, x0
0x10077a448:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x10077a44c:  f0 03 08 aa   mov	x16, x8
0x10077a450:  f1 03 09 aa   mov	x17, x9
0x10077a454:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a458:  30 1a c1 da   autda	x16, x17
0x10077a45c:  f1 03 10 aa   mov	x17, x16
0x10077a460:  f1 47 c1 da   xpacd	x17
0x10077a464:  1f 02 11 eb   cmp	x16, x17
0x10077a468:  40 00 00 54   b.eq	loc_10077a470 ; ⤵ 0x8
0x10077a46c:  40 8e 38 d4   brk	#0xc472
0x10077a470:  ; loc_10077a470
0x10077a470:  f6 03 10 aa   mov	x22, x16
0x10077a474:  f0 03 08 aa   mov	x16, x8
0x10077a478:  f1 03 09 aa   mov	x17, x9
0x10077a47c:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a480:  30 1a c1 da   autda	x16, x17
0x10077a484:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10077a488:  e9 03 08 aa   mov	x9, x8
0x10077a48c:  71 88 00 f0   adrp	x17, 0x101889000
0x10077a490:  31 62 1f 91   add	x17, x17, #0x7d8 ; __got.___chkstk_darwin
0x10077a494:  30 02 40 f9   ldr	x16, [x17]
0x10077a498:  11 0a 3f d7   blraa	x16, x17
0x10077a49c:  e9 03 00 91   mov	x9, sp
0x10077a4a0:  08 3d 00 91   add	x8, x8, #0xf
0x10077a4a4:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10077a4a8:  28 01 08 cb   sub	x8, x9, x8
0x10077a4ac:  a9 03 01 d1   sub	x9, fp, #0x40
0x10077a4b0:  28 01 10 f8   stur	x8, [x9, #-0x100]
0x10077a4b4:  1f 01 00 91   mov	sp, x8
0x10077a4b8:  00 8d 00 90   adrp	x0, 0x10191a000
0x10077a4bc:  00 c0 3f 91   add	x0, x0, #0xff0 ; data_10191aff0 (__DATA.__data)
0x10077a4c0:  c1 73 00 d0   adrp	x1, 0x1015f4000
0x10077a4c4:  21 40 2a 91   add	x1, x1, #0xa90
0x10077a4c8:  cb f7 e4 97   bl	0x1000b83f4
0x10077a4cc:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x10077a4d0:  f1 03 00 aa   mov	x17, x0
0x10077a4d4:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a4d8:  30 1a c1 da   autda	x16, x17
0x10077a4dc:  09 22 40 f9   ldr	x9, [x16, #0x40]
0x10077a4e0:  28 3d 00 91   add	x8, x9, #0xf
0x10077a4e4:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10077a4e8:  71 88 00 f0   adrp	x17, 0x101889000
0x10077a4ec:  31 62 1f 91   add	x17, x17, #0x7d8 ; __got.___chkstk_darwin
0x10077a4f0:  30 02 40 f9   ldr	x16, [x17]
0x10077a4f4:  11 0a 3f d7   blraa	x16, x17
0x10077a4f8:  e9 03 00 91   mov	x9, sp
0x10077a4fc:  35 01 08 cb   sub	x21, x9, x8
0x10077a500:  bf 02 00 91   mov	sp, x21
0x10077a504:  00 00 80 d2   mov	x0, #0
0x10077a508:  bc a9 1f 94   bl	0x100f64bf8
0x10077a50c:  f7 03 00 aa   mov	x23, x0
0x10077a510:  e9 03 00 aa   mov	x9, x0
0x10077a514:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x10077a518:  f0 03 08 aa   mov	x16, x8
0x10077a51c:  f1 03 09 aa   mov	x17, x9
0x10077a520:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a524:  30 1a c1 da   autda	x16, x17
0x10077a528:  f1 03 10 aa   mov	x17, x16
0x10077a52c:  f1 47 c1 da   xpacd	x17
0x10077a530:  1f 02 11 eb   cmp	x16, x17
0x10077a534:  40 00 00 54   b.eq	loc_10077a53c ; ⤵ 0x8
0x10077a538:  40 8e 38 d4   brk	#0xc472
0x10077a53c:  ; loc_10077a53c
0x10077a53c:  f3 03 10 aa   mov	x19, x16
0x10077a540:  f0 03 08 aa   mov	x16, x8
0x10077a544:  f1 03 09 aa   mov	x17, x9
0x10077a548:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x10077a54c:  30 1a c1 da   autda	x16, x17
0x10077a550:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x10077a554:  e9 03 08 aa   mov	x9, x8
0x10077a558:  71 88 00 f0   adrp	x17, 0x101889000
0x10077a55c:  31 62 1f 91   add	x17, x17, #0x7d8 ; __got.___chkstk_darwin
0x10077a560:  30 02 40 f9   ldr	x16, [x17]
0x10077a564:  11 0a 3f d7   blraa	x16, x17
0x10077a568:  e9 03 00 91   mov	x9, sp
0x10077a56c:  08 3d 00 91   add	x8, x8, #0xf
0x10077a570:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x10077a574:  28 01 08 cb   sub	x8, x9, x8
0x10077a578:  a8 03 11 f8   stur	x8, [fp, #-0xf0]
0x10077a57c:  1f 01 00 91   mov	sp, x8
0x10077a580:  8c 42 38 94   bl	j___objc_autoreleasePoolPush
0x10077a584:  a8 63 00 d1   sub	x8, fp, #0x18
0x10077a588:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10077a58c:  a8 23 00 d1   sub	x8, fp, #0x8
0x10077a590:  14 01 10 f8   stur	x20, [x8, #-0x100]
0x10077a594:  94 8a 40 f9   ldr	x20, [x20, #0x110]
0x10077a598:  a8 03 02 d1   sub	x8, fp, #0x80
0x10077a59c:  14 01 10 f8   stur	x20, [x8, #-0x100]
0x10077a5a0:  43 37 e2 97   bl	0x1000082ac
0x10077a5a4:  fa 03 00 aa   mov	x26, x0
0x10077a5a8:  08 08 40 f9   ldr	x8, [x0, #0x10]
0x10077a5ac:  7c 88 00 90   adrp	x28, 0x101886000
0x10077a5b0:  9c 73 47 f9   ldr	x28, [x28, #0xee0] ; __got.__swiftEmptyArrayStorage
0x10077a5b4:  a8 83 12 f8   stur	x8, [fp, #-0xd8]
0x10077a5b8:  a9 43 00 d1   sub	x9, fp, #0x10
0x10077a5bc:  36 01 10 f8   stur	x22, [x9, #-0x100]
0x10077a5c0:  48 15 00 b4   cbz	x8, loc_10077a868 ; ⤵ 0x2a8
0x10077a5c4:  19 00 80 d2   mov	x25, #0
0x10077a5c8:  68 94 00 b0   adrp	x8, 0x101a07000
0x10077a5cc:  08 21 1a 91   add	x8, x8, #0x688
0x10077a5d0:  09 01 40 f9   ldr	x9, [x8]
0x10077a5d4:  58 83 00 91   add	x24, x26, #0x20
0x10077a5d8:  c8 22 00 91   add	x8, x22, #0x8
0x10077a5dc:  a8 a7 31 a9   stp	x8, x9, [fp, #-0xe8]
0x10077a5e0:  7b c2 00 91   add	x27, x19, #0x30
0x10077a5e4:  48 88 00 f0   adrp	x8, 0x101885000
0x10077a5e8:  08 ad 42 f9   ldr	x8, [x8, #0x558] ; __got._SPBeaconRoleIdUndefined
0x10077a5ec:  08 01 40 f9   ldr	x8, [x8]
0x10077a5f0:  b7 23 30 a9   stp	x23, x8, [fp, #-0x100]
0x10077a5f4:  0e 00 00 14   b	loc_10077a62c ; ⤵ 0x38
0x10077a5f8:  e0 03 15 aa   mov	x0, x21
0x10077a5fc:  01 8d 00 90   adrp	x1, 0x10191a000
0x10077a600:  21 c0 3f 91   add	x1, x1, #0xff0 ; data_10191aff0 (__DATA.__data)
0x10077a604:  c2 73 00 d0   adrp	x2, 0x1015f4000
0x10077a608:  42 40 2a 91   add	x2, x2, #0xa90
0x10077a60c:  d9 44 e2 97   bl	0x10000b970
0x10077a610:  a0 03 02 d1   sub	x0, fp, #0x80
0x10077a614:  42 36 e2 97   bl	0x100007f1c
0x10077a618:  39 07 00 91   add	x25, x25, #0x1
0x10077a61c:  18 a3 00 91   add	x24, x24, #0x28
0x10077a620:  a8 83 52 f8   ldur	x8, [fp, #-0xd8]
0x10077a624:  1f 01 19 eb   cmp	x8, x25
0x10077a628:  00 12 00 54   b.eq	loc_10077a868 ; ⤵ 0x240
0x10077a62c:  ; loc_10077a62c
0x10077a62c:  48 0b 40 f9   ldr	x8, [x26, #0x10]
0x10077a630:  3f 03 08 eb   cmp	x25, x8
0x10077a634:  a2 63 00 54   b.hs	loc_10077b2a8 ; ⤵ 0xc74
0x10077a638:  a1 03 02 d1   sub	x1, fp, #0x80
0x10077a63c:  e0 03 18 aa   mov	x0, x24
0x10077a640:  f9 98 e2 97   bl	0x100020a24
0x10077a644:  b3 d3 79 a9   ldp	x19, x20, [fp, #-0x68]
0x10077a648:  a0 03 02 d1   sub	x0, fp, #0x80

