
-[CBPeripheral handleServicesDiscovered:]:
0x1999e0ee4:  7f 23 03 d5   pacibsp
0x1999e0ee8:  ff 03 06 d1   sub	sp, sp, #0x180
0x1999e0eec:  fc 6f 12 a9   stp	x28, x27, [sp, #0x120]
0x1999e0ef0:  fa 67 13 a9   stp	x26, x25, [sp, #0x130]
0x1999e0ef4:  f8 5f 14 a9   stp	x24, x23, [sp, #0x140]
0x1999e0ef8:  f6 57 15 a9   stp	x22, x21, [sp, #0x150]
0x1999e0efc:  f4 4f 16 a9   stp	x20, x19, [sp, #0x160]
0x1999e0f00:  fd 7b 17 a9   stp	fp, lr, [sp, #0x170]
0x1999e0f04:  fd c3 05 91   add	fp, sp, #0x170
0x1999e0f08:  f5 03 02 aa   mov	x21, x2
0x1999e0f0c:  f4 03 00 aa   mov	x20, x0
0x1999e0f10:  08 da 25 d0   adrp	x8, 0x1e5522000
0x1999e0f14:  08 bd 41 f9   ldr	x8, [x8, #0x378]
0x1999e0f18:  08 01 40 f9   ldr	x8, [x8]
0x1999e0f1c:  a8 03 1a f8   stur	x8, [fp, #-0x60]
0x1999e0f20:  e0 03 02 aa   mov	x0, x2
0x1999e0f24:  71 e6 01 94   bl	0x199a5a8e8
0x1999e0f28:  88 d6 25 b0   adrp	x8, 0x1e54b1000
0x1999e0f2c:  00 e5 44 f9   ldr	x0, [x8, #0x9c8]
0x1999e0f30:  e2 03 15 aa   mov	x2, x21
0x1999e0f34:  b3 fa 02 94   bl	_objc_msgSend$errorWithInfo:
0x1999e0f38:  fd 03 1d aa   mov	fp, fp
0x1999e0f3c:  73 e6 01 94   bl	0x199a5a908
0x1999e0f40:  f6 03 00 aa   mov	x22, x0
0x1999e0f44:  20 04 00 b4   cbz	x0, loc_1999e0fc8 ; ⤵ 0x84
0x1999e0f48:  88 1a 28 90   adrp	x8, 0x1e9d30000
0x1999e0f4c:  08 ed 88 b9   ldrsw	x8, [x8, #0x8ec] ; OBJC_IVAR_$_CBPeripheral._delegateFlags
0x1999e0f50:  88 6a 68 38   ldrb	w8, [x20, x8]
0x1999e0f54:  68 01 20 36   tbz	w8, #0x4, loc_1999e0f80 ; ⤵ 0x2c
0x1999e0f58:  88 1a 28 90   adrp	x8, 0x1e9d30000
0x1999e0f5c:  08 e9 88 b9   ldrsw	x8, [x8, #0x8e8] ; OBJC_IVAR_$_CBPeripheral._delegate
0x1999e0f60:  80 02 08 8b   add	x0, x20, x8
0x1999e0f64:  41 e6 01 94   bl	0x199a5a868
0x1999e0f68:  f3 03 00 aa   mov	x19, x0
0x1999e0f6c:  e2 03 14 aa   mov	x2, x20
0x1999e0f70:  e3 03 16 aa   mov	x3, x22
0x1999e0f74:  03 06 03 94   bl	_objc_msgSend$peripheral:didDiscoverServices:
0x1999e0f78:  e0 03 13 aa   mov	x0, x19
0x1999e0f7c:  57 e6 01 94   bl	0x199a5a8d8
0x1999e0f80:  ; loc_1999e0f80
0x1999e0f80:  e0 03 16 aa   mov	x0, x22
0x1999e0f84:  55 e6 01 94   bl	0x199a5a8d8
0x1999e0f88:  e0 03 15 aa   mov	x0, x21
0x1999e0f8c:  53 e6 01 94   bl	0x199a5a8d8
0x1999e0f90:  a8 03 5a f8   ldur	x8, [fp, #-0x60]
0x1999e0f94:  09 da 25 d0   adrp	x9, 0x1e5522000
0x1999e0f98:  29 bd 41 f9   ldr	x9, [x9, #0x378]
0x1999e0f9c:  29 01 40 f9   ldr	x9, [x9]
0x1999e0fa0:  3f 01 08 eb   cmp	x9, x8
0x1999e0fa4:  01 1c 00 54   b.ne	loc_1999e1324 ; ⤵ 0x380
0x1999e0fa8:  fd 7b 57 a9   ldp	fp, lr, [sp, #0x170]
0x1999e0fac:  f4 4f 56 a9   ldp	x20, x19, [sp, #0x160]
0x1999e0fb0:  f6 57 55 a9   ldp	x22, x21, [sp, #0x150]
0x1999e0fb4:  f8 5f 54 a9   ldp	x24, x23, [sp, #0x140]
0x1999e0fb8:  fa 67 53 a9   ldp	x26, x25, [sp, #0x130]
0x1999e0fbc:  fc 6f 52 a9   ldp	x28, x27, [sp, #0x120]
0x1999e0fc0:  ff 03 06 91   add	sp, sp, #0x180
0x1999e0fc4:  ff 0f 5f d6   retab
0x1999e0fc8:  ; loc_1999e0fc8
0x1999e0fc8:  f6 57 00 a9   stp	x22, x21, [sp]
0x1999e0fcc:  a2 ee 2a f0   adrp	x2, 0x1ef7b7000
0x1999e0fd0:  42 80 0a 91   add	x2, x2, #0x2a0 ; "kCBMsgArgServices"
0x1999e0fd4:  e0 03 15 aa   mov	x0, x21
0x1999e0fd8:  aa 04 03 94   bl	_objc_msgSend$objectForKeyedSubscript:
0x1999e0fdc:  fd 03 1d aa   mov	fp, fp
0x1999e0fe0:  4a e6 01 94   bl	0x199a5a908
0x1999e0fe4:  f3 03 00 aa   mov	x19, x0
0x1999e0fe8:  28 d6 25 90   adrp	x8, 0x1e54a4000
0x1999e0fec:  00 fd 43 f9   ldr	x0, [x8, #0x7f8]
0x1999e0ff0:  f6 e5 01 94   bl	0x199a5a7c8
0x1999e0ff4:  88 1a 28 90   adrp	x8, 0x1e9d30000
0x1999e0ff8:  08 b1 88 b9   ldrsw	x8, [x8, #0x8b0] ; OBJC_IVAR_$_CBPeripheral._services
0x1999e0ffc:  82 6a 68 f8   ldr	x2, [x20, x8]
0x1999e1000:  18 fe 02 94   bl	_objc_msgSend$initWithArray:
0x1999e1004:  f7 03 00 aa   mov	x23, x0
0x1999e1008:  00 e4 00 6f   movi	v0.2d, #0
0x1999e100c:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x1999e1010:  e0 83 02 ad   stp	q0, q0, [sp, #0x50]
0x1999e1014:  e0 03 13 aa   mov	x0, x19
0x1999e1018:  34 e6 01 94   bl	0x199a5a8e8
0x1999e101c:  e2 c3 00 91   add	x2, sp, #0x30
0x1999e1020:  e3 43 02 91   add	x3, sp, #0x90
0x1999e1024:  f3 17 00 f9   str	x19, [sp, #0x28]
0x1999e1028:  e0 03 13 aa   mov	x0, x19
0x1999e102c:  04 02 80 52   mov	w4, #0x10
0x1999e1030:  dc f7 02 94   bl	_objc_msgSend$countByEnumeratingWithState:objects:count:
0x1999e1034:  e0 14 00 b4   cbz	x0, loc_1999e12d0 ; ⤵ 0x29c
0x1999e1038:  fa 03 00 aa   mov	x26, x0
0x1999e103c:  e8 23 40 f9   ldr	x8, [sp, #0x40]
0x1999e1040:  d8 ee 2a 90   adrp	x24, 0x1ef7b9000
0x1999e1044:  18 03 26 91   add	x24, x24, #0x980 ; "kCBMsgArgServiceStartHandle"
0x1999e1048:  19 01 40 f9   ldr	x25, [x8]
0x1999e104c:  08 04 00 f0   adrp	x8, 0x199a64000
0x1999e1050:  00 99 44 fd   ldr	d0, [x8, #0x930]
0x1999e1054:  e0 07 80 3d   str	q0, [sp, #0x10]
0x1999e1058:  08 00 00 14   b	loc_1999e1078 ; ⤵ 0x20
0x1999e105c:  ; loc_1999e105c
0x1999e105c:  e2 c3 00 91   add	x2, sp, #0x30
0x1999e1060:  e3 43 02 91   add	x3, sp, #0x90
0x1999e1064:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x1999e1068:  04 02 80 52   mov	w4, #0x10
0x1999e106c:  cd f7 02 94   bl	_objc_msgSend$countByEnumeratingWithState:objects:count:
0x1999e1070:  fa 03 00 aa   mov	x26, x0
0x1999e1074:  e0 12 00 b4   cbz	x0, loc_1999e12d0 ; ⤵ 0x25c
0x1999e1078:  ; loc_1999e1078
0x1999e1078:  16 00 80 d2   mov	x22, #0
0x1999e107c:  0b 00 00 14   b	loc_1999e10a8 ; ⤵ 0x2c
0x1999e1080:  ; loc_1999e1080
0x1999e1080:  e0 03 1c aa   mov	x0, x28
0x1999e1084:  15 e6 01 94   bl	0x199a5a8d8
0x1999e1088:  13 00 80 d2   mov	x19, #0
0x1999e108c:  ; loc_1999e108c
0x1999e108c:  e0 03 13 aa   mov	x0, x19
0x1999e1090:  12 e6 01 94   bl	0x199a5a8d8
0x1999e1094:  e0 03 15 aa   mov	x0, x21
0x1999e1098:  10 e6 01 94   bl	0x199a5a8d8
0x1999e109c:  d6 06 00 91   add	x22, x22, #0x1
0x1999e10a0:  5f 03 16 eb   cmp	x26, x22
0x1999e10a4:  c0 fd ff 54   b.eq	loc_1999e105c ; ⤴ -0x48
0x1999e10a8:  ; loc_1999e10a8
0x1999e10a8:  e8 23 40 f9   ldr	x8, [sp, #0x40]
0x1999e10ac:  08 01 40 f9   ldr	x8, [x8]
0x1999e10b0:  1f 01 19 eb   cmp	x8, x25
0x1999e10b4:  60 00 00 54   b.eq	loc_1999e10c0 ; ⤵ 0xc
0x1999e10b8:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x1999e10bc:  db e5 01 94   bl	0x199a5a828
0x1999e10c0:  ; loc_1999e10c0
0x1999e10c0:  e8 1f 40 f9   ldr	x8, [sp, #0x38]
0x1999e10c4:  1b 79 76 f8   ldr	x27, [x8, x22, lsl #0x3]
0x1999e10c8:  e0 03 1b aa   mov	x0, x27
0x1999e10cc:  e2 03 18 aa   mov	x2, x24
0x1999e10d0:  6c 04 03 94   bl	_objc_msgSend$objectForKeyedSubscript:
0x1999e10d4:  fd 03 1d aa   mov	fp, fp
0x1999e10d8:  0c e6 01 94   bl	0x199a5a908
0x1999e10dc:  f5 03 00 aa   mov	x21, x0
0x1999e10e0:  e0 03 14 aa   mov	x0, x20
0x1999e10e4:  e2 03 15 aa   mov	x2, x21
0x1999e10e8:  2e f3 02 94   bl	_objc_msgSend$attributeForHandle:
0x1999e10ec:  fd 03 1d aa   mov	fp, fp
0x1999e10f0:  06 e6 01 94   bl	0x199a5a908
0x1999e10f4:  f3 03 00 aa   mov	x19, x0
0x1999e10f8:  80 04 00 b4   cbz	x0, loc_1999e1188 ; ⤵ 0x90
0x1999e10fc:  e0 03 17 aa   mov	x0, x23
0x1999e1100:  e2 03 13 aa   mov	x2, x19
0x1999e1104:  57 f7 02 94   bl	_objc_msgSend$containsObject:
0x1999e1108:  20 fc 07 37   tbnz	w0, #0, loc_1999e108c ; ⤴ -0x7c
0x1999e110c:  ; loc_1999e110c
0x1999e110c:  e0 03 17 aa   mov	x0, x23
0x1999e1110:  e2 03 13 aa   mov	x2, x19
0x1999e1114:  ab f1 02 94   bl	_objc_msgSend$addObject:
0x1999e1118:  08 50 29 d0   adrp	x8, 0x1ec3e3000
0x1999e111c:  08 41 3e 91   add	x8, x8, #0xf90 ; _CBLogInitOnce
0x1999e1120:  08 01 40 f9   ldr	x8, [x8]
0x1999e1124:  1f 05 00 b1   cmn	x8, #0x1
0x1999e1128:  c1 0c 00 54   b.ne	loc_1999e12c0 ; ⤵ 0x198
0x1999e112c:  ; loc_1999e112c
0x1999e112c:  08 50 29 d0   adrp	x8, 0x1ec3e3000
0x1999e1130:  08 61 3e 91   add	x8, x8, #0xf98 ; _CBLogComponent
0x1999e1134:  1b 01 40 f9   ldr	x27, [x8]
0x1999e1138:  e0 03 1b aa   mov	x0, x27
0x1999e113c:  41 00 80 52   mov	w1, #0x2
0x1999e1140:  36 e6 01 94   bl	0x199a5aa18
0x1999e1144:  40 fa ff 34   cbz	w0, loc_1999e108c ; ⤴ -0xb8
0x1999e1148:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x1999e114c:  e0 73 00 bd   str	s0, [sp, #0x70]
0x1999e1150:  f3 43 07 f8   stur	x19, [sp, #0x74]
0x1999e1154:  08 08 81 52   mov	w8, #0x840
0x1999e1158:  e8 fb 00 79   strh	w8, [sp, #0x7c]
0x1999e115c:  f4 e3 07 f8   stur	x20, [sp, #0x7e]
0x1999e1160:  e4 c3 01 91   add	x4, sp, #0x70
0x1999e1164:  e0 fd ff 90   adrp	x0, 0x19999d000
0x1999e1168:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1999e116c:  e1 03 1b aa   mov	x1, x27
0x1999e1170:  42 00 80 52   mov	w2, #0x2
0x1999e1174:  23 04 00 d0   adrp	x3, 0x199a67000
0x1999e1178:  63 90 3a 91   add	x3, x3, #0xea4 ; "Added %@ to %@"
0x1999e117c:  c5 02 80 52   mov	w5, #0x16
0x1999e1180:  de e4 01 94   bl	0x199a5a4f8
0x1999e1184:  c2 ff ff 17   b	loc_1999e108c ; ⤴ -0xf8
0x1999e1188:  ; loc_1999e1188
0x1999e1188:  e0 03 1b aa   mov	x0, x27
0x1999e118c:  a2 ee 2a d0   adrp	x2, 0x1ef7b7000
0x1999e1190:  42 80 1e 91   add	x2, x2, #0x7a0 ; "kCBMsgArgUUID"
0x1999e1194:  3b 04 03 94   bl	_objc_msgSend$objectForKeyedSubscript:
0x1999e1198:  fd 03 1d aa   mov	fp, fp
0x1999e119c:  db e5 01 94   bl	0x199a5a908
0x1999e11a0:  fc 03 00 aa   mov	x28, x0
0x1999e11a4:  08 d6 25 f0   adrp	x8, 0x1e54a4000
0x1999e11a8:  00 b5 43 f9   ldr	x0, [x8, #0x768]
0x1999e11ac:  bb e5 01 94   bl	0x199a5a898
0x1999e11b0:  e1 03 00 aa   mov	x1, x0
0x1999e11b4:  e0 03 1c aa   mov	x0, x28
0x1999e11b8:  bc e5 01 94   bl	0x199a5a8a8
0x1999e11bc:  a0 04 00 36   tbz	w0, #0, loc_1999e1250 ; ⤵ 0x94
0x1999e11c0:  e0 03 1c aa   mov	x0, x28
0x1999e11c4:  07 01 03 94   bl	_objc_msgSend$length
0x1999e11c8:  1f 08 00 f1   cmp	x0, #0x2
0x1999e11cc:  20 01 00 54   b.eq	loc_1999e11f0 ; ⤵ 0x24
0x1999e11d0:  e0 03 1c aa   mov	x0, x28
0x1999e11d4:  03 01 03 94   bl	_objc_msgSend$length
0x1999e11d8:  1f 10 00 f1   cmp	x0, #0x4
0x1999e11dc:  a0 00 00 54   b.eq	loc_1999e11f0 ; ⤵ 0x14
0x1999e11e0:  e0 03 1c aa   mov	x0, x28
0x1999e11e4:  ff 00 03 94   bl	_objc_msgSend$length
0x1999e11e8:  1f 40 00 f1   cmp	x0, #0x10
0x1999e11ec:  21 03 00 54   b.ne	loc_1999e1250 ; ⤵ 0x64
0x1999e11f0:  ; loc_1999e11f0
0x1999e11f0:  48 4c 26 90   adrp	x8, 0x1e6369000
0x1999e11f4:  00 59 42 f9   ldr	x0, [x8, #0x4b0] ; __got._OBJC_CLASS_$_CBService
0x1999e11f8:  74 e5 01 94   bl	0x199a5a7c8
0x1999e11fc:  e2 03 14 aa   mov	x2, x20
0x1999e1200:  e3 03 1b aa   mov	x3, x27
0x1999e1204:  9f fe 02 94   bl	_objc_msgSend$initWithPeripheral:dictionary:
0x1999e1208:  f3 03 00 aa   mov	x19, x0
0x1999e120c:  f5 14 03 94   bl	_objc_msgSend$startHandle
0x1999e1210:  fd 03 1d aa   mov	fp, fp
0x1999e1214:  bd e5 01 94   bl	0x199a5a908
0x1999e1218:  fb 03 00 aa   mov	x27, x0
0x1999e121c:  e0 03 14 aa   mov	x0, x20
0x1999e1220:  e2 03 13 aa   mov	x2, x19
0x1999e1224:  e3 03 1b aa   mov	x3, x27
0x1999e1228:  26 0b 03 94   bl	_objc_msgSend$setAttribute:forHandle:
0x1999e122c:  e0 03 1b aa   mov	x0, x27
0x1999e1230:  aa e5 01 94   bl	0x199a5a8d8
0x1999e1234:  e0 03 1c aa   mov	x0, x28
0x1999e1238:  a8 e5 01 94   bl	0x199a5a8d8
0x1999e123c:  e0 03 17 aa   mov	x0, x23
0x1999e1240:  e2 03 13 aa   mov	x2, x19
0x1999e1244:  07 f7 02 94   bl	_objc_msgSend$containsObject:
0x1999e1248:  20 f2 07 37   tbnz	w0, #0, loc_1999e108c ; ⤴ -0x1bc
0x1999e124c:  b0 ff ff 17   b	loc_1999e110c ; ⤴ -0x140
0x1999e1250:  ; loc_1999e1250
0x1999e1250:  08 50 29 d0   adrp	x8, 0x1ec3e3000
0x1999e1254:  08 41 3e 91   add	x8, x8, #0xf90 ; _CBLogInitOnce
0x1999e1258:  08 01 40 f9   ldr	x8, [x8]
0x1999e125c:  1f 05 00 b1   cmn	x8, #0x1
0x1999e1260:  41 03 00 54   b.ne	loc_1999e12c8 ; ⤵ 0x68
0x1999e1264:  08 50 29 d0   adrp	x8, 0x1ec3e3000
0x1999e1268:  08 61 3e 91   add	x8, x8, #0xf98 ; _CBLogComponent
0x1999e126c:  13 01 40 f9   ldr	x19, [x8]
0x1999e1270:  e0 03 13 aa   mov	x0, x19
0x1999e1274:  41 00 80 52   mov	w1, #0x2
0x1999e1278:  e8 e5 01 94   bl	0x199a5aa18
0x1999e127c:  20 f0 ff 34   cbz	w0, loc_1999e1080 ; ⤴ -0x1fc
0x1999e1280:  e0 07 c0 3d   ldr	q0, [sp, #0x10]
0x1999e1284:  e0 73 00 bd   str	s0, [sp, #0x70]
0x1999e1288:  f4 43 07 f8   stur	x20, [sp, #0x74]
0x1999e128c:  08 08 81 52   mov	w8, #0x840
0x1999e1290:  e8 fb 00 79   strh	w8, [sp, #0x7c]
0x1999e1294:  f5 e3 07 f8   stur	x21, [sp, #0x7e]
0x1999e1298:  e4 c3 01 91   add	x4, sp, #0x70
0x1999e129c:  e0 fd ff 90   adrp	x0, 0x19999d000
0x1999e12a0:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x1999e12a4:  e1 03 13 aa   mov	x1, x19
0x1999e12a8:  42 00 80 52   mov	w2, #0x2
0x1999e12ac:  23 04 00 f0   adrp	x3, 0x199a68000
0x1999e12b0:  63 dc 19 91   add	x3, x3, #0x677 ; "Data in %@ does not contain a valid UUID for service handle = %@"
0x1999e12b4:  c5 02 80 52   mov	w5, #0x16
0x1999e12b8:  90 e4 01 94   bl	0x199a5a4f8
0x1999e12bc:  71 ff ff 17   b	loc_1999e1080 ; ⤴ -0x23c
0x1999e12c0:  ; loc_1999e12c0
0x1999e12c0:  35 9b 01 94   bl	-[CBClassicPeer handlePeerUpdated:].cold.3
0x1999e12c4:  9a ff ff 17   b	loc_1999e112c ; ⤴ -0x198
0x1999e12c8:  ; loc_1999e12c8
0x1999e12c8:  33 9b 01 94   bl	-[CBClassicPeer handlePeerUpdated:].cold.3

