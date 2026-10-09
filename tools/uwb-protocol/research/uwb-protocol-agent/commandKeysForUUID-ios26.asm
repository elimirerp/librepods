
-[_TtC12searchpartyd23BeaconManagerTrampoline commandKeysForUUID:withCriteria:completion:]:
0x101138fd8:  50 00 00 f0   adrp	x16, 0x101143000
0x101138fdc:  10 12 17 91   add	x16, x16, #0x5c4
0x101138fe0:  31 77 88 d2   mov	x17, #0x43b9
0x101138fe4:  30 02 c1 da   pacia	x16, x17
0x101138fe8:  e5 03 10 aa   mov	x5, x16
0x101138fec:  86 00 00 14   b	0x101139204

-[_TtC12searchpartyd23BeaconManagerTrampoline fetchAllKeyMapFileDescriptorsWithCompletion:]:
0x101138ff0:  50 00 00 f0   adrp	x16, 0x101143000
0x101138ff4:  10 42 27 91   add	x16, x16, #0x9d0
0x101138ff8:  b1 81 84 d2   mov	x17, #0x240d
0x101138ffc:  30 02 c1 da   pacia	x16, x17
0x101139000:  e3 03 10 aa   mov	x3, x16
0x101139004:  7a 0a 00 14   b	0x10113b9ec

sub_101139008:
0x101139008:  7f 23 03 d5   pacibsp
0x10113900c:  ff c3 01 d1   sub	sp, sp, #0x70
0x101139010:  fc 6f 01 a9   stp	x28, x27, [sp, #0x10]
0x101139014:  fa 67 02 a9   stp	x26, x25, [sp, #0x20]
0x101139018:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x10113901c:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101139020:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x101139024:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101139028:  fd 83 01 91   add	fp, sp, #0x60
0x10113902c:  f5 03 14 aa   mov	x21, x20
0x101139030:  f3 03 01 aa   mov	x19, x1
0x101139034:  fb 03 00 aa   mov	x27, x0
0x101139038:  56 41 11 94   bl	j__$sSo13os_log_type_ta0A0E7defaultABvgZ
0x10113903c:  f6 03 00 aa   mov	x22, x0
0x101139040:  68 40 00 b0   adrp	x8, 0x101946000
0x101139044:  08 a1 42 f9   ldr	x8, [x8, #0x540] ; data_101946540 (__DATA.__data)
0x101139048:  1f 05 00 b1   cmn	x8, #0x1
0x10113904c:  e1 08 00 54   b.ne	loc_101139168 ; ⤵ 0x11c
0x101139050:  ; loc_101139050
0x101139050:  68 46 00 f0   adrp	x8, 0x101a08000
0x101139054:  17 25 40 f9   ldr	x23, [x8, #0x48]
0x101139058:  00 3f 00 f0   adrp	x0, 0x10191c000
0x10113905c:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x101139060:  a1 25 00 90   adrp	x1, 0x1015ed000
0x101139064:  21 00 19 91   add	x1, x1, #0x640
0x101139068:  e3 fc bd 97   bl	0x1000b83f4
0x10113906c:  01 0e 80 52   mov	w1, #0x70
0x101139070:  e2 00 80 52   mov	w2, #0x7
0x101139074:  4f 49 11 94   bl	j__swift_allocObject
0x101139078:  f8 03 00 aa   mov	x24, x0
0x10113907c:  88 25 00 f0   adrp	x8, 0x1015ec000
0x101139080:  00 71 c1 3d   ldr	q0, [x8, #0x5c0]
0x101139084:  00 04 80 3d   str	q0, [x0, #0x10]
0x101139088:  e0 03 15 aa   mov	x0, x21
0x10113908c:  3d 4a 11 94   bl	j__swift_getObjectType
0x101139090:  e0 07 00 f9   str	x0, [sp, #0x8]
0x101139094:  60 40 00 b0   adrp	x0, 0x101946000
0x101139098:  00 00 3e 91   add	x0, x0, #0xf80 ; data_101946f80 (__DATA.__data)
0x10113909c:  21 27 00 90   adrp	x1, 0x10161d000
0x1011390a0:  21 c0 11 91   add	x1, x1, #0x470 ; "Vs\n"
0x1011390a4:  d4 fc bd 97   bl	0x1000b83f4
0x1011390a8:  e1 03 00 aa   mov	x1, x0
0x1011390ac:  e0 23 00 91   add	x0, sp, #0x8
0x1011390b0:  dc 3e 11 94   bl	j__$sSS10describingSSx_tclufC
0x1011390b4:  f9 03 00 aa   mov	x25, x0
0x1011390b8:  fa 03 01 aa   mov	x26, x1
0x1011390bc:  74 3a 00 b0   adrp	x20, 0x101886000
0x1011390c0:  94 46 45 f9   ldr	x20, [x20, #0xa88] ; __got._$sSSN
0x1011390c4:  14 1f 00 f9   str	x20, [x24, #0x38]
0x1011390c8:  ae 3f bb 97   bl	0x100008f80
0x1011390cc:  19 6b 02 a9   stp	x25, x26, [x24, #0x20]
0x1011390d0:  08 24 00 f0   adrp	x8, 0x1015bc000
0x1011390d4:  08 c1 0d 91   add	x8, x8, #0x370 ; "allDurians(completion:)"
0x1011390d8:  08 81 00 d1   sub	x8, x8, #0x20
0x1011390dc:  08 01 41 b2   orr	x8, x8, #0x8000000000000000
0x1011390e0:  14 03 06 a9   stp	x20, x0, [x24, #0x60]
0x1011390e4:  e9 02 80 d2   mov	x9, #0x17
0x1011390e8:  09 00 fa f2   movk	x9, #0xd000, lsl #0x30
0x1011390ec:  00 27 04 a9   stp	x0, x9, [x24, #0x40]
0x1011390f0:  08 2b 00 f9   str	x8, [x24, #0x50]
0x1011390f4:  21 76 ff f0   adrp	x1, 0x100000000
0x1011390f8:  21 00 00 91   add	x1, x1, #0 ; __mh_execute_header
0x1011390fc:  23 24 00 d0   adrp	x3, 0x1015bf000
0x101139100:  63 00 38 91   add	x3, x3, #0xe00 ; "%{public}@: %{public}s"
0x101139104:  e0 03 16 aa   mov	x0, x22
0x101139108:  e2 03 17 aa   mov	x2, x23
0x10113910c:  c4 02 80 52   mov	w4, #0x16
0x101139110:  45 00 80 52   mov	w5, #0x2
0x101139114:  e6 03 18 aa   mov	x6, x24
0x101139118:  5a 3a 11 94   bl	j__$s2os0A4_log_3dso0B0__ySo0a1_B7_type_ta_SVSo03OS_a1_B0Cs12StaticStringVs7CVarArg_pdtF
0x10113911c:  e0 03 18 aa   mov	x0, x24
0x101139120:  68 4a 11 94   bl	j__swift_release
0x101139124:  68 40 00 b0   adrp	x8, 0x101946000
0x101139128:  08 59 47 f9   ldr	x8, [x8, #0xeb0]
0x10113912c:  a0 02 08 8b   add	x0, x21, x8
0x101139130:  01 0c 40 f9   ldr	x1, [x0, #0x18]
0x101139134:  ff 28 bb 97   bl	0x100003530
0x101139138:  14 00 40 f9   ldr	x20, [x0]
0x10113913c:  e0 03 1b aa   mov	x0, x27
0x101139140:  e1 03 13 aa   mov	x1, x19
0x101139144:  34 df d8 97   bl	0x100770e14
0x101139148:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10113914c:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101139150:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101139154:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101139158:  fa 67 42 a9   ldp	x26, x25, [sp, #0x20]
0x10113915c:  fc 6f 41 a9   ldp	x28, x27, [sp, #0x10]
0x101139160:  ff c3 01 91   add	sp, sp, #0x70
0x101139164:  ff 0f 5f d6   retab
0x101139168:  ; loc_101139168
0x101139168:  60 40 00 b0   adrp	x0, 0x101946000
0x10113916c:  00 00 15 91   add	x0, x0, #0x540 ; data_101946540 (__DATA.__data)
0x101139170:  70 fd ff b0   adrp	x16, 0x1010e6000
0x101139174:  10 a2 0c 91   add	x16, x16, #0x328
0x101139178:  f0 23 c1 da   paciza	x16
0x10113917c:  e1 03 10 aa   mov	x1, x16
0x101139180:  44 4a 11 94   bl	j__swift_once
0x101139184:  b3 ff ff 17   b	loc_101139050 ; ⤴ -0x134

-[_TtC12searchpartyd23BeaconManagerTrampoline allDuriansWithCompletion:]:
0x101139188:  23 3d 00 d0   adrp	x3, 0x1018df000
0x10113918c:  63 60 04 91   add	x3, x3, #0x118 ; data_1018df118 (__DATA_CONST.__const)
0x101139190:  90 76 ff d0   adrp	x16, 0x10000b000
0x101139194:  10 22 02 91   add	x16, x16, #0x88 ; "\x81\n@\xf9"
0x101139198:  b1 9b 86 d2   mov	x17, #0x34dd
0x10113919c:  30 02 c1 da   pacia	x16, x17
0x1011391a0:  e4 03 10 aa   mov	x4, x16
0x1011391a4:  10 00 00 90   adrp	x16, 0x101139000
0x1011391a8:  10 22 00 91   add	x16, x16, #0x8
0x1011391ac:  d1 cb 9f d2   mov	x17, #0xfe5e
0x1011391b0:  30 02 c1 da   pacia	x16, x17
0x1011391b4:  e5 03 10 aa   mov	x5, x16
0x1011391b8:  db 1a 00 14   b	0x10113fd24

-[_TtC12searchpartyd23BeaconManagerTrampoline roleCategoriesWithCompletion:]:
0x1011391bc:  50 00 00 d0   adrp	x16, 0x101143000
0x1011391c0:  10 42 2d 91   add	x16, x16, #0xb50
0x1011391c4:  b1 81 84 d2   mov	x17, #0x240d
0x1011391c8:  30 02 c1 da   pacia	x16, x17
0x1011391cc:  e3 03 10 aa   mov	x3, x16
0x1011391d0:  07 0a 00 14   b	0x10113b9ec

-[_TtC12searchpartyd23BeaconManagerTrampoline setRole:beaconId:completion:]:
0x1011391d4:  50 00 00 d0   adrp	x16, 0x101143000
0x1011391d8:  10 42 33 91   add	x16, x16, #0xcd0
0x1011391dc:  d1 fe 9e d2   mov	x17, #0xf7f6
0x1011391e0:  30 02 c1 da   pacia	x16, x17
0x1011391e4:  e5 03 10 aa   mov	x5, x16
0x1011391e8:  9d 01 00 14   b	0x10113985c

-[_TtC12searchpartyd23BeaconManagerTrampoline updateBeacon:updates:completion:]:
0x1011391ec:  50 00 00 d0   adrp	x16, 0x101143000
0x1011391f0:  10 a2 39 91   add	x16, x16, #0xe68
0x1011391f4:  31 77 88 d2   mov	x17, #0x43b9
0x1011391f8:  30 02 c1 da   pacia	x16, x17
0x1011391fc:  e5 03 10 aa   mov	x5, x16
0x101139200:  01 00 00 14   b	0x101139204

sub_101139204:
0x101139204:  7f 23 03 d5   pacibsp
0x101139208:  fa 67 bb a9   stp	x26, x25, [sp, #-0x50]!
0x10113920c:  f8 5f 01 a9   stp	x24, x23, [sp, #0x10]
0x101139210:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x101139214:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x101139218:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x10113921c:  fd 03 01 91   add	fp, sp, #0x40
0x101139220:  f5 03 05 aa   mov	x21, x5
0x101139224:  f6 03 04 aa   mov	x22, x4
0x101139228:  f7 03 03 aa   mov	x23, x3
0x10113922c:  f8 03 02 aa   mov	x24, x2
0x101139230:  f9 03 00 aa   mov	x25, x0
0x101139234:  00 00 80 d2   mov	x0, #0
0x101139238:  7e 31 11 94   bl	j__$s10Foundation4UUIDVMa
0x10113923c:  f3 03 00 aa   mov	x19, x0
0x101139240:  e9 03 00 aa   mov	x9, x0
0x101139244:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x101139248:  f0 03 08 aa   mov	x16, x8
0x10113924c:  f1 03 09 aa   mov	x17, x9
0x101139250:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x101139254:  30 1a c1 da   autda	x16, x17

