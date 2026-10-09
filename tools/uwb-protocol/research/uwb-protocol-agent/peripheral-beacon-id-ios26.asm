0x101570fe0:  fa 03 00 aa   mov	x26, x0
0x101570fe4:  01 1c 00 12   and	w1, w0, #0xff
0x101570fe8:  e0 03 13 aa   mov	x0, x19
0x101570fec:  09 69 00 94   bl	j__os_log_type_enabled
0x101570ff0:  b8 83 56 f8   ldur	x24, [fp, #-0x98]
0x101570ff4:  c0 0f 00 34   cbz	w0, loc_1015711ec ; ⤵ 0x1f8
0x101570ff8:  ba 03 13 b8   stur	w26, [fp, #-0xd0]
0x101570ffc:  b3 03 16 f8   stur	x19, [fp, #-0xa0]
0x101571000:  00 04 80 52   mov	w0, #0x20
0x101571004:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x101571008:  c6 6a 00 94   bl	j__swift_slowAlloc
0x10157100c:  fb 03 00 aa   mov	x27, x0
0x101571010:  00 01 80 52   mov	w0, #0x8
0x101571014:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x101571018:  c2 6a 00 94   bl	j__swift_slowAlloc
0x10157101c:  f3 03 00 aa   mov	x19, x0
0x101571020:  00 04 80 52   mov	w0, #0x20
0x101571024:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x101571028:  be 6a 00 94   bl	j__swift_slowAlloc
0x10157102c:  f6 03 00 aa   mov	x22, x0
0x101571030:  a0 83 17 f8   stur	x0, [fp, #-0x88]
0x101571034:  a8 c3 02 d1   sub	x8, fp, #0xb0
0x101571038:  00 01 d0 3c   ldur	q0, [x8, #-0x100]
0x10157103c:  60 03 00 bd   str	s0, [x27]
0x101571040:  77 43 00 f8   stur	x23, [x27, #0x4]
0x101571044:  77 02 00 f9   str	x23, [x19]
0x101571048:  08 0e 81 52   mov	w8, #0x870
0x10157104c:  68 1b 00 79   strh	w8, [x27, #0xc]
0x101571050:  08 2d 8c 52   mov	w8, #0x6168
0x101571054:  68 0e ad 72   movk	w8, #0x6873, lsl #0x10
0x101571058:  68 e3 00 f8   stur	x8, [x27, #0xe]
0x10157105c:  28 04 81 52   mov	w8, #0x821
0x101571060:  68 2f 00 79   strh	w8, [x27, #0x16]
0x101571064:  c3 68 00 94   bl	j__objc_retain_x23
0x101571068:  fc 03 00 aa   mov	x28, x0
0x10157106c:  4d 72 00 94   bl	j__objc_msgSend(x0, "findMyBeaconIdentifier")
0x101571070:  fd 03 1d aa   mov	fp, fp
0x101571074:  9f 68 00 94   bl	j__objc_retainAutoreleasedReturnValue
0x101571078:  20 48 00 b4   cbz	x0, loc_10157197c ; ⤵ 0x904
0x10157107c:  f4 03 00 aa   mov	x20, x0
0x101571080:  a8 63 02 d1   sub	x8, fp, #0x98
0x101571084:  1a 01 50 f8   ldur	x26, [x8, #-0x100]
0x101571088:  e8 03 1a aa   mov	x8, x26
0x10157108c:  d9 51 00 94   bl	j__$s10Foundation4UUIDV36_unconditionallyBridgeFromObjectiveCyACSo6NSUUIDCSgFZ
0x101571090:  64 68 00 94   bl	j__objc_release_x20
0x101571094:  b0 18 00 b0   adrp	x16, 0x101886000
0x101571098:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got._$s10Foundation4UUIDVMa
0x10157109c:  31 3c 95 d2   mov	x17, #0xa9e1
0x1015710a0:  30 02 c1 da   pacia	x16, x17
0x1015710a4:  e1 03 10 aa   mov	x1, x16
0x1015710a8:  b0 18 00 b0   adrp	x16, 0x101886000
0x1015710ac:  10 da 41 f9   ldr	x16, [x16, #0x3b0] ; __got._$s10Foundation4UUIDVs23CustomStringConvertibleAAMc
0x1015710b0:  71 dd 98 d2   mov	x17, #0xc6eb
0x1015710b4:  30 0a c1 da   pacda	x16, x17
0x1015710b8:  e2 03 10 aa   mov	x2, x16
0x1015710bc:  40 1d 00 d0   adrp	x0, 0x10191b000
0x1015710c0:  00 00 2e 91   add	x0, x0, #0xb80 ; data_10191bb80 (__DATA.__data)
0x1015710c4:  de 62 aa 97   bl	0x100009c3c
0x1015710c8:  e1 03 00 aa   mov	x1, x0
0x1015710cc:  f4 03 1a aa   mov	x20, x26
0x1015710d0:  b9 03 57 f8   ldur	x25, [fp, #-0x90]
0x1015710d4:  e0 03 19 aa   mov	x0, x25
0x1015710d8:  06 65 00 94   bl	j__$ss23CustomStringConvertibleP11descriptionSSvgTj
0x1015710dc:  f4 03 00 aa   mov	x20, x0
0x1015710e0:  f8 03 01 aa   mov	x24, x1
0x1015710e4:  a8 63 00 d1   sub	x8, fp, #0x18
0x1015710e8:  09 01 50 f8   ldur	x9, [x8, #-0x100]
0x1015710ec:  28 01 40 f9   ldr	x8, [x9]
0x1015710f0:  e0 03 1a aa   mov	x0, x26
0x1015710f4:  e1 03 19 aa   mov	x1, x25
0x1015710f8:  f1 03 09 aa   mov	x17, x9
0x1015710fc:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x101571100:  11 09 3f d7   blraa	x8, x17
0x101571104:  a2 23 02 d1   sub	x2, fp, #0x88
0x101571108:  e0 03 14 aa   mov	x0, x20
0x10157110c:  e1 03 18 aa   mov	x1, x24
0x101571110:  32 8a aa 97   bl	0x1000139d8
0x101571114:  f4 03 00 aa   mov	x20, x0
0x101571118:  e0 03 18 aa   mov	x0, x24
0x10157111c:  51 69 00 94   bl	j__swift_bridgeObjectRelease
0x101571120:  74 0f 00 f9   str	x20, [x27, #0x18]
0x101571124:  5f 68 00 94   bl	j__objc_release_x28
0x101571128:  5e 68 00 94   bl	j__objc_release_x28
0x10157112c:  a8 03 53 b8   ldur	w8, [fp, #-0xd0]
0x101571130:  02 1d 00 12   and	w2, w8, #0xff
0x101571134:  60 54 ff f0   adrp	x0, 0x100000000
0x101571138:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10157113c:  b4 03 56 f8   ldur	x20, [fp, #-0xa0]
0x101571140:  e1 03 14 aa   mov	x1, x20
0x101571144:  63 0a 00 b0   adrp	x3, 0x1016be000
0x101571148:  63 80 33 91   add	x3, x3, #0xce0 ; "Retrieved: %@. findMyBeaconIdentifier: %{private,mask.hash}s"
0x10157114c:  e4 03 1b aa   mov	x4, x27
0x101571150:  05 04 80 52   mov	w5, #0x20
0x101571154:  9f 67 00 94   bl	j___os_log_impl
0x101571158:  e0 03 13 aa   mov	x0, x19
0x10157115c:  41 1d 00 b0   adrp	x1, 0x10191a000
0x101571160:  21 c0 05 91   add	x1, x1, #0x170 ; data_10191a170 (__DATA.__data)
0x101571164:  c2 03 00 d0   adrp	x2, 0x1015eb000
0x101571168:  42 00 38 91   add	x2, x2, #0xe00
0x10157116c:  01 6a aa 97   bl	0x10000b970
0x101571170:  e0 03 13 aa   mov	x0, x19
0x101571174:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x101571178:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x10157117c:  6d 6a 00 94   bl	j__swift_slowDealloc
0x101571180:  e0 03 16 aa   mov	x0, x22
0x101571184:  66 5b aa 97   bl	0x100007f1c
0x101571188:  e0 03 16 aa   mov	x0, x22
0x10157118c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x101571190:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x101571194:  67 6a 00 94   bl	j__swift_slowDealloc
0x101571198:  e0 03 1b aa   mov	x0, x27
0x10157119c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x1015711a0:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x1015711a4:  63 6a 00 94   bl	j__swift_slowDealloc
0x1015711a8:  1e 68 00 94   bl	j__objc_release_x20
0x1015711ac:  a8 83 55 f8   ldur	x8, [fp, #-0xa8]
0x1015711b0:  09 01 40 f9   ldr	x9, [x8]
0x1015711b4:  aa 23 00 d1   sub	x10, fp, #0x8
0x1015711b8:  40 01 50 f8   ldur	x0, [x10, #-0x100]
0x1015711bc:  bb 83 52 f8   ldur	x27, [fp, #-0xd8]
0x1015711c0:  e1 03 1b aa   mov	x1, x27
0x1015711c4:  a9 03 13 f8   stur	x9, [fp, #-0xd0]
0x1015711c8:  f1 03 08 aa   mov	x17, x8
0x1015711cc:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x1015711d0:  31 09 3f d7   blraa	x9, x17
0x1015711d4:  a8 43 00 d1   sub	x8, fp, #0x10
0x1015711d8:  19 01 50 f8   ldur	x25, [x8, #-0x100]
0x1015711dc:  a8 83 00 d1   sub	x8, fp, #0x20
0x1015711e0:  1c 01 50 f8   ldur	x28, [x8, #-0x100]
0x1015711e4:  b8 83 56 f8   ldur	x24, [fp, #-0x98]
0x1015711e8:  0e 00 00 14   b	loc_101571220 ; ⤵ 0x38
0x1015711ec:  ; loc_1015711ec
0x1015711ec:  fc 03 19 aa   mov	x28, x25
0x1015711f0:  08 68 00 94   bl	j__objc_release_x19
0x1015711f4:  17 68 00 94   bl	j__objc_release_x23
0x1015711f8:  16 68 00 94   bl	j__objc_release_x23
0x1015711fc:  a8 83 55 f8   ldur	x8, [fp, #-0xa8]
0x101571200:  09 01 40 f9   ldr	x9, [x8]
0x101571204:  e0 03 14 aa   mov	x0, x20
0x101571208:  e1 03 1b aa   mov	x1, x27
0x10157120c:  a9 03 13 f8   stur	x9, [fp, #-0xd0]
0x101571210:  f1 03 08 aa   mov	x17, x8
0x101571214:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x101571218:  31 09 3f d7   blraa	x9, x17
0x10157121c:  f9 03 16 aa   mov	x25, x22
0x101571220:  ; loc_101571220
0x101571220:  e0 03 17 aa   mov	x0, x23
0x101571224:  df 71 00 94   bl	j__objc_msgSend(x0, "findMyBeaconIdentifier")
0x101571228:  fd 03 1d aa   mov	fp, fp
0x10157122c:  31 68 00 94   bl	j__objc_retainAutoreleasedReturnValue
0x101571230:  a8 c3 00 d1   sub	x8, fp, #0x30
0x101571234:  14 01 50 f8   ldur	x20, [x8, #-0x100]
0x101571238:  e0 00 00 b4   cbz	x0, loc_101571254 ; ⤵ 0x1c
0x10157123c:  e8 03 14 aa   mov	x8, x20
0x101571240:  f3 03 00 aa   mov	x19, x0
0x101571244:  6b 51 00 94   bl	j__$s10Foundation4UUIDV36_unconditionallyBridgeFromObjectiveCyACSo6NSUUIDCSgFZ
0x101571248:  f2 67 00 94   bl	j__objc_release_x19
0x10157124c:  01 00 80 52   mov	w1, #0
0x101571250:  02 00 00 14   b	loc_101571258 ; ⤵ 0x8
0x101571254:  ; loc_101571254
0x101571254:  21 00 80 52   mov	w1, #0x1
0x101571258:  ; loc_101571258
0x101571258:  ba 03 57 f8   ldur	x26, [fp, #-0x90]
0x10157125c:  a8 a3 01 d1   sub	x8, fp, #0x68
0x101571260:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x101571264:  16 01 40 f9   ldr	x22, [x8]
0x101571268:  e9 03 08 aa   mov	x9, x8
0x10157126c:  29 1a f4 f2   movk	x9, #0xa0d1, lsl #0x30
0x101571270:  a9 83 10 f8   stur	x9, [fp, #-0xf8]
0x101571274:  e0 03 14 aa   mov	x0, x20
0x101571278:  22 00 80 52   mov	w2, #0x1
0x10157127c:  e3 03 1a aa   mov	x3, x26
0x101571280:  f1 03 08 aa   mov	x17, x8
0x101571284:  31 1a f4 f2   movk	x17, #0xa0d1, lsl #0x30

