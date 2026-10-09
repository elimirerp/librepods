0x252322f50:  bc 87 c9 94   bl	0x255584e40
0x252322f54:  48 8f 40 f8   ldr	x8, [x26, #0x8]!
0x252322f58:  a0 03 58 f8   ldur	x0, [fp, #-0x80]
0x252322f5c:  a1 03 53 f8   ldur	x1, [fp, #-0xd0]
0x252322f60:  f1 03 1a aa   mov	x17, x26
0x252322f64:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x252322f68:  11 09 3f d7   blraa	x8, x17
0x252322f6c:  00 00 80 d2   mov	x0, #0
0x252322f70:  7c fb ff 97   bl	0x252321d60
0x252322f74:  08 18 80 b9   ldrsw	x8, [x0, #0x18]
0x252322f78:  a9 83 58 f8   ldur	x9, [fp, #-0x78]
0x252322f7c:  28 01 08 8b   add	x8, x9, x8
0x252322f80:  00 05 40 a9   ldp	x0, x1, [x8]
0x252322f84:  02 09 40 f9   ldr	x2, [x8, #0x10]
0x252322f88:  58 05 00 94   bl	0x2523244e8
0x252322f8c:  ec 01 00 14   b	loc_25232373c ; ⤵ 0x7b0
0x252322f90:  68 0f 42 f8   ldr	x8, [x27, #0x20]!
0x252322f94:  e9 03 1b aa   mov	x9, x27
0x252322f98:  09 1b e9 f2   movk	x9, #0x48d8, lsl #0x30
0x252322f9c:  a9 83 12 f8   stur	x9, [fp, #-0xd8]
0x252322fa0:  a0 03 55 f8   ldur	x0, [fp, #-0xb0]
0x252322fa4:  e1 03 13 aa   mov	x1, x19
0x252322fa8:  e2 03 14 aa   mov	x2, x20
0x252322fac:  a8 03 16 f8   stur	x8, [fp, #-0xa0]
0x252322fb0:  f1 03 1b aa   mov	x17, x27
0x252322fb4:  11 1b e9 f2   movk	x17, #0x48d8, lsl #0x30
0x252322fb8:  11 09 3f d7   blraa	x8, x17
0x252322fbc:  b4 03 54 f8   ldur	x20, [fp, #-0xc0]
0x252322fc0:  e0 03 14 aa   mov	x0, x20
0x252322fc4:  a8 43 00 d1   sub	x8, fp, #0x10
0x252322fc8:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x252322fcc:  e2 03 1c aa   mov	x2, x28
0x252322fd0:  a8 23 00 d1   sub	x8, fp, #0x8
0x252322fd4:  19 01 10 f8   stur	x25, [x8, #-0x100]
0x252322fd8:  a8 63 00 d1   sub	x8, fp, #0x18
0x252322fdc:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x252322fe0:  19 09 3f d7   blraa	x8, x25
0x252322fe4:  e0 03 17 aa   mov	x0, x23
0x252322fe8:  e1 03 16 aa   mov	x1, x22
0x252322fec:  0b 58 fe 97   bl	0x2522b9018
0x252322ff0:  bc 84 c9 94   bl	0x2555842e0
0x252322ff4:  f8 03 00 aa   mov	x24, x0
0x252322ff8:  da 85 c9 94   bl	0x255584760
0x252322ffc:  f9 03 00 aa   mov	x25, x0
0x252323000:  01 1c 00 12   and	w1, w0, #0xff
0x252323004:  e0 03 18 aa   mov	x0, x24
0x252323008:  e6 87 c9 94   bl	0x255584fa0
0x25232300c:  40 09 00 34   cbz	w0, loc_252323134 ; ⤵ 0x128
0x252323010:  c0 02 80 52   mov	w0, #0x16
0x252323014:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x252323018:  ca 88 c9 94   bl	0x255585340
0x25232301c:  f3 03 00 aa   mov	x19, x0
0x252323020:  00 08 80 52   mov	w0, #0x40
0x252323024:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x252323028:  c6 88 c9 94   bl	0x255585340
0x25232302c:  fa 03 00 aa   mov	x26, x0
0x252323030:  a0 83 1b f8   stur	x0, [fp, #-0x48]
0x252323034:  48 01 00 d0   adrp	x8, 0x25234d000
0x252323038:  00 49 41 fd   ldr	d0, [x8, #0x290]
0x25232303c:  60 02 00 bd   str	s0, [x19]
0x252323040:  b7 5b 39 a9   stp	x23, x22, [fp, #-0x70]
0x252323044:  54 58 fe 97   bl	0x2522b9194
0x252323048:  e1 03 00 aa   mov	x1, x0
0x25232304c:  00 1b 13 d0   adrp	x0, 0x278685000
0x252323050:  00 78 43 f9   ldr	x0, [x0, #0x6f0]
0x252323054:  b4 c3 01 d1   sub	x20, fp, #0x70
0x252323058:  ea 83 c9 94   bl	0x255584000
0x25232305c:  f4 03 01 aa   mov	x20, x1
0x252323060:  a2 23 01 d1   sub	x2, fp, #0x48
0x252323064:  73 e3 fd 97   bl	0x25229be30
0x252323068:  fb 03 00 aa   mov	x27, x0
0x25232306c:  e0 03 14 aa   mov	x0, x20
0x252323070:  f4 87 c9 94   bl	0x255585040
0x252323074:  7b 42 00 f8   stur	x27, [x19, #0x4]
0x252323078:  08 04 81 52   mov	w8, #0x820
0x25232307c:  68 1a 00 79   strh	w8, [x19, #0xc]
0x252323080:  a0 43 50 b8   ldur	w0, [fp, #-0xfc]
0x252323084:  83 83 c9 94   bl	0x255583e90
0x252323088:  f4 03 01 aa   mov	x20, x1
0x25232308c:  a2 23 01 d1   sub	x2, fp, #0x48
0x252323090:  68 e3 fd 97   bl	0x25229be30
0x252323094:  fb 03 00 aa   mov	x27, x0
0x252323098:  e0 03 14 aa   mov	x0, x20
0x25232309c:  e9 87 c9 94   bl	0x255585040
0x2523230a0:  7b e2 00 f8   stur	x27, [x19, #0xe]
0x2523230a4:  b4 83 57 f8   ldur	x20, [fp, #-0x88]
0x2523230a8:  e0 03 17 aa   mov	x0, x23
0x2523230ac:  e1 03 16 aa   mov	x1, x22
0x2523230b0:  f4 57 fe 97   bl	0x2522b9080
0x2523230b4:  20 fb ff d0   adrp	x0, 0x252289000
0x2523230b8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x2523230bc:  c3 01 00 90   adrp	x3, 0x25235b000
0x2523230c0:  63 00 23 91   add	x3, x3, #0x8c0 ; "Using classic/public btAddressData: %s with type: %s"
0x2523230c4:  22 1f 00 12   and	w2, w25, #0xff
0x2523230c8:  e1 03 18 aa   mov	x1, x24
0x2523230cc:  e4 03 13 aa   mov	x4, x19
0x2523230d0:  c5 02 80 52   mov	w5, #0x16
0x2523230d4:  13 87 c9 94   bl	0x255584d20
0x2523230d8:  e8 20 13 b0   adrp	x8, 0x278740000
0x2523230dc:  08 fd 47 f9   ldr	x8, [x8, #0xff8]
0x2523230e0:  02 21 00 91   add	x2, x8, #0x8
0x2523230e4:  e0 03 1a aa   mov	x0, x26
0x2523230e8:  41 00 80 52   mov	w1, #0x2
0x2523230ec:  c1 87 c9 94   bl	0x255584ff0
0x2523230f0:  e0 03 1a aa   mov	x0, x26
0x2523230f4:  fa 03 14 aa   mov	x26, x20
0x2523230f8:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2523230fc:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x252323100:  94 88 c9 94   bl	0x255585350
0x252323104:  e0 03 13 aa   mov	x0, x19
0x252323108:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x25232310c:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x252323110:  90 88 c9 94   bl	0x255585350
0x252323114:  4b 87 c9 94   bl	0x255584e40
0x252323118:  e0 03 17 aa   mov	x0, x23
0x25232311c:  e1 03 16 aa   mov	x1, x22
0x252323120:  d8 57 fe 97   bl	0x2522b9080
0x252323124:  bb 83 55 f8   ldur	x27, [fp, #-0xa8]
0x252323128:  68 23 00 91   add	x8, x27, #0x8
0x25232312c:  a0 03 54 f8   ldur	x0, [fp, #-0xc0]
0x252323130:  0b 00 00 14   b	loc_25232315c ; ⤵ 0x2c
0x252323134:  ; loc_252323134
0x252323134:  e0 03 17 aa   mov	x0, x23
0x252323138:  e1 03 16 aa   mov	x1, x22
0x25232313c:  d1 57 fe 97   bl	0x2522b9080
0x252323140:  e0 03 17 aa   mov	x0, x23
0x252323144:  e1 03 16 aa   mov	x1, x22
0x252323148:  ce 57 fe 97   bl	0x2522b9080
0x25232314c:  3d 87 c9 94   bl	0x255584e40
0x252323150:  bb 83 55 f8   ldur	x27, [fp, #-0xa8]
0x252323154:  68 23 00 91   add	x8, x27, #0x8
0x252323158:  e0 03 14 aa   mov	x0, x20
0x25232315c:  ; loc_25232315c
0x25232315c:  e1 03 1c aa   mov	x1, x28
0x252323160:  a9 83 00 d1   sub	x9, fp, #0x20
0x252323164:  29 01 50 f8   ldur	x9, [x9, #-0x100]
0x252323168:  f1 03 08 aa   mov	x17, x8
0x25232316c:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x252323170:  31 09 3f d7   blraa	x9, x17
0x252323174:  00 00 80 d2   mov	x0, #0
0x252323178:  fa fa ff 97   bl	0x252321d60
0x25232317c:  f3 03 00 aa   mov	x19, x0
0x252323180:  08 14 80 b9   ldrsw	x8, [x0, #0x14]
0x252323184:  a9 83 58 f8   ldur	x9, [fp, #-0x78]
0x252323188:  20 01 08 8b   add	x0, x9, x8
0x25232318c:  a1 03 55 f8   ldur	x1, [fp, #-0xb0]
0x252323190:  a8 0b 76 a9   ldp	x8, x2, [fp, #-0xa0]
0x252323194:  a9 83 52 f8   ldur	x9, [fp, #-0xd8]
0x252323198:  09 09 3f d7   blraa	x8, x9
0x25232319c:  b6 03 53 f8   ldur	x22, [fp, #-0xd0]
0x2523231a0:  b8 83 50 f8   ldur	x24, [fp, #-0xf8]
0x2523231a4:  79 00 00 14   b	loc_252323388 ; ⤵ 0x1e4
0x2523231a8:  68 0e 42 f8   ldr	x8, [x19, #0x20]!
0x2523231ac:  e9 03 13 aa   mov	x9, x19
0x2523231b0:  09 1b e9 f2   movk	x9, #0x48d8, lsl #0x30
0x2523231b4:  a9 03 15 f8   stur	x9, [fp, #-0xb0]
0x2523231b8:  a0 83 52 f8   ldur	x0, [fp, #-0xd8]
0x2523231bc:  e1 03 1a aa   mov	x1, x26
0x2523231c0:  e2 03 14 aa   mov	x2, x20
0x2523231c4:  a8 03 16 f8   stur	x8, [fp, #-0xa0]
0x2523231c8:  f1 03 13 aa   mov	x17, x19
0x2523231cc:  11 1b e9 f2   movk	x17, #0x48d8, lsl #0x30
0x2523231d0:  11 09 3f d7   blraa	x8, x17
0x2523231d4:  ba 83 51 f8   ldur	x26, [fp, #-0xe8]
0x2523231d8:  e0 03 1a aa   mov	x0, x26
0x2523231dc:  a8 43 00 d1   sub	x8, fp, #0x10
0x2523231e0:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x2523231e4:  e2 03 1c aa   mov	x2, x28
0x2523231e8:  a8 63 00 d1   sub	x8, fp, #0x18
0x2523231ec:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x2523231f0:  19 09 3f d7   blraa	x8, x25
0x2523231f4:  e0 03 1b aa   mov	x0, x27
0x2523231f8:  e1 03 17 aa   mov	x1, x23
0x2523231fc:  87 57 fe 97   bl	0x2522b9018
0x252323200:  f4 03 1a aa   mov	x20, x26
0x252323204:  37 84 c9 94   bl	0x2555842e0
0x252323208:  f3 03 00 aa   mov	x19, x0
0x25232320c:  65 85 c9 94   bl	0x2555847a0
0x252323210:  f8 03 00 aa   mov	x24, x0
0x252323214:  01 1c 00 12   and	w1, w0, #0xff
0x252323218:  e0 03 13 aa   mov	x0, x19
0x25232321c:  61 87 c9 94   bl	0x255584fa0
0x252323220:  a8 23 00 d1   sub	x8, fp, #0x8
0x252323224:  19 01 10 f8   stur	x25, [x8, #-0x100]
0x252323228:  80 07 00 34   cbz	w0, loc_252323318 ; ⤵ 0xf0
0x25232322c:  80 01 80 52   mov	w0, #0xc
0x252323230:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x252323234:  43 88 c9 94   bl	0x255585340
0x252323238:  f6 03 00 aa   mov	x22, x0
0x25232323c:  00 04 80 52   mov	w0, #0x20
0x252323240:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x252323244:  3f 88 c9 94   bl	0x255585340
0x252323248:  a0 83 14 f8   stur	x0, [fp, #-0xb8]
0x25232324c:  a0 83 1b f8   stur	x0, [fp, #-0x48]
0x252323250:  48 01 00 d0   adrp	x8, 0x25234d000
0x252323254:  00 5d 40 fd   ldr	d0, [x8, #0xb8]
0x252323258:  c0 02 00 bd   str	s0, [x22]
0x25232325c:  bb 5f 39 a9   stp	x27, x23, [fp, #-0x70]
0x252323260:  cd 57 fe 97   bl	0x2522b9194
0x252323264:  e1 03 00 aa   mov	x1, x0
0x252323268:  00 1b 13 d0   adrp	x0, 0x278685000
0x25232326c:  00 78 43 f9   ldr	x0, [x0, #0x6f0]
0x252323270:  b4 c3 01 d1   sub	x20, fp, #0x70
0x252323274:  63 83 c9 94   bl	0x255584000
0x252323278:  f4 03 01 aa   mov	x20, x1
0x25232327c:  a2 23 01 d1   sub	x2, fp, #0x48
0x252323280:  ec e2 fd 97   bl	0x25229be30
0x252323284:  fa 03 00 aa   mov	x26, x0
0x252323288:  e0 03 14 aa   mov	x0, x20
0x25232328c:  6d 87 c9 94   bl	0x255585040
0x252323290:  da 42 00 f8   stur	x26, [x22, #0x4]
0x252323294:  b4 83 55 f8   ldur	x20, [fp, #-0xa8]
0x252323298:  e0 03 1b aa   mov	x0, x27
0x25232329c:  e1 03 17 aa   mov	x1, x23
0x2523232a0:  78 57 fe 97   bl	0x2522b9080
0x2523232a4:  20 fb ff d0   adrp	x0, 0x252289000
0x2523232a8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x2523232ac:  c3 01 00 90   adrp	x3, 0x25235b000
0x2523232b0:  63 00 24 91   add	x3, x3, #0x900 ; "bleAddressData is available: %s"
0x2523232b4:  02 1f 00 12   and	w2, w24, #0xff
0x2523232b8:  e1 03 13 aa   mov	x1, x19
0x2523232bc:  e4 03 16 aa   mov	x4, x22
0x2523232c0:  85 01 80 52   mov	w5, #0xc
0x2523232c4:  97 86 c9 94   bl	0x255584d20
0x2523232c8:  b8 83 54 f8   ldur	x24, [fp, #-0xb8]
0x2523232cc:  e0 03 18 aa   mov	x0, x24
0x2523232d0:  ee e3 fd 97   bl	___swift_destroy_boxed_opaque_existential_1
0x2523232d4:  e0 03 18 aa   mov	x0, x24
0x2523232d8:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2523232dc:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x2523232e0:  1c 88 c9 94   bl	0x255585350
0x2523232e4:  e0 03 16 aa   mov	x0, x22
0x2523232e8:  b6 03 53 f8   ldur	x22, [fp, #-0xd0]
0x2523232ec:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2523232f0:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x2523232f4:  17 88 c9 94   bl	0x255585350
0x2523232f8:  be 86 c9 94   bl	0x255584df0
0x2523232fc:  e0 03 1b aa   mov	x0, x27
0x252323300:  fb 03 14 aa   mov	x27, x20
0x252323304:  e1 03 17 aa   mov	x1, x23
0x252323308:  5e 57 fe 97   bl	0x2522b9080
0x25232330c:  88 22 00 91   add	x8, x20, #0x8
0x252323310:  a0 83 51 f8   ldur	x0, [fp, #-0xe8]
0x252323314:  0b 00 00 14   b	loc_252323340 ; ⤵ 0x2c
0x252323318:  ; loc_252323318
0x252323318:  e0 03 1b aa   mov	x0, x27
0x25232331c:  e1 03 17 aa   mov	x1, x23
0x252323320:  58 57 fe 97   bl	0x2522b9080
0x252323324:  e0 03 1b aa   mov	x0, x27
0x252323328:  e1 03 17 aa   mov	x1, x23
0x25232332c:  55 57 fe 97   bl	0x2522b9080
0x252323330:  b0 86 c9 94   bl	0x255584df0
0x252323334:  bb 83 55 f8   ldur	x27, [fp, #-0xa8]
0x252323338:  68 23 00 91   add	x8, x27, #0x8
0x25232333c:  e0 03 1a aa   mov	x0, x26
0x252323340:  ; loc_252323340
0x252323340:  e1 03 1c aa   mov	x1, x28
0x252323344:  a9 83 00 d1   sub	x9, fp, #0x20
0x252323348:  29 01 50 f8   ldur	x9, [x9, #-0x100]
0x25232334c:  f1 03 08 aa   mov	x17, x8
0x252323350:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x252323354:  31 09 3f d7   blraa	x9, x17
0x252323358:  b8 83 50 f8   ldur	x24, [fp, #-0xf8]
0x25232335c:  00 00 80 d2   mov	x0, #0
0x252323360:  80 fa ff 97   bl	0x252321d60
0x252323364:  f3 03 00 aa   mov	x19, x0
0x252323368:  08 14 80 b9   ldrsw	x8, [x0, #0x14]
0x25232336c:  a9 83 58 f8   ldur	x9, [fp, #-0x78]
0x252323370:  20 01 08 8b   add	x0, x9, x8
0x252323374:  a1 83 52 f8   ldur	x1, [fp, #-0xd8]
0x252323378:  a8 0b 76 a9   ldp	x8, x2, [fp, #-0xa0]
0x25232337c:  a9 03 55 f8   ldur	x9, [fp, #-0xb0]
0x252323380:  09 09 3f d7   blraa	x8, x9
0x252323384:  ba 83 57 f8   ldur	x26, [fp, #-0x88]
0x252323388:  ; loc_252323388
0x252323388:  e8 03 1a aa   mov	x8, x26
0x25232338c:  09 0d 41 f8   ldr	x9, [x8, #0x10]!
0x252323390:  b4 83 53 f8   ldur	x20, [fp, #-0xc8]
0x252323394:  e0 03 14 aa   mov	x0, x20
0x252323398:  a1 03 58 f8   ldur	x1, [fp, #-0x80]
0x25232339c:  e2 03 16 aa   mov	x2, x22
0x2523233a0:  f1 03 08 aa   mov	x17, x8
0x2523233a4:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x2523233a8:  31 09 3f d7   blraa	x9, x17
0x2523233ac:  00 00 80 d2   mov	x0, #0
0x2523233b0:  6c fa ff 97   bl	0x252321d60
0x2523233b4:  b6 83 58 f8   ldur	x22, [fp, #-0x78]
0x2523233b8:  e8 03 16 aa   mov	x8, x22
0x2523233bc:  e0 03 14 aa   mov	x0, x20
0x2523233c0:  e1 03 13 aa   mov	x1, x19
0x2523233c4:  af 82 c9 94   bl	0x255583e80
0x2523233c8:  e0 03 18 aa   mov	x0, x24
0x2523233cc:  75 25 01 94   bl	_objc_msgSend$rssi
0x2523233d0:  68 1e 80 b9   ldrsw	x8, [x19, #0x1c]
0x2523233d4:  c8 02 08 8b   add	x8, x22, x8
0x2523233d8:  1f 00 00 71   cmp	w0, #0
0x2523233dc:  e9 17 9f 1a   cset	w9, eq
0x2523233e0:  00 01 00 39   strb	w0, [x8]
0x2523233e4:  09 05 00 39   strb	w9, [x8, #0x1]
0x2523233e8:  e0 03 18 aa   mov	x0, x24
0x2523233ec:  ad 24 01 94   bl	_objc_msgSend$model
0x2523233f0:  fd 03 1d aa   mov	fp, fp
0x2523233f4:  b3 86 c9 94   bl	0x255584ec0
0x2523233f8:  e0 00 00 b4   cbz	x0, loc_252323414 ; ⤵ 0x1c
0x2523233fc:  f7 03 00 aa   mov	x23, x0
0x252323400:  00 84 c9 94   bl	0x255584400
0x252323404:  f4 03 00 aa   mov	x20, x0
0x252323408:  f6 03 01 aa   mov	x22, x1
0x25232340c:  89 86 c9 94   bl	0x255584e30
0x252323410:  03 00 00 14   b	loc_25232341c ; ⤵ 0xc
0x252323414:  ; loc_252323414
0x252323414:  14 00 80 d2   mov	x20, #0
0x252323418:  16 00 80 d2   mov	x22, #0
0x25232341c:  ; loc_25232341c
0x25232341c:  68 22 80 b9   ldrsw	x8, [x19, #0x20]
0x252323420:  a9 83 58 f8   ldur	x9, [fp, #-0x78]
0x252323424:  28 01 08 8b   add	x8, x9, x8
0x252323428:  14 59 00 a9   stp	x20, x22, [x8]
0x25232342c:  e0 03 18 aa   mov	x0, x24
0x252323430:  a4 24 01 94   bl	_objc_msgSend$name
0x252323434:  fd 03 1d aa   mov	fp, fp
0x252323438:  a2 86 c9 94   bl	0x255584ec0
0x25232343c:  e0 00 00 b4   cbz	x0, loc_252323458 ; ⤵ 0x1c
0x252323440:  f7 03 00 aa   mov	x23, x0
0x252323444:  ef 83 c9 94   bl	0x255584400
0x252323448:  f4 03 00 aa   mov	x20, x0
0x25232344c:  f6 03 01 aa   mov	x22, x1

