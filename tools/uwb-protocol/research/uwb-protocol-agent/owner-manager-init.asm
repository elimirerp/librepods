
-[CLDurianDeviceManager initWithQueue:universe:meDeviceMonitor:systemUtils:]:
0x101469e68:  7f 23 03 d5   pacibsp
0x101469e6c:  ff 83 05 d1   sub	sp, sp, #0x160
0x101469e70:  e9 23 10 6d   stp	d9, d8, [sp, #0x100]
0x101469e74:  fa 67 11 a9   stp	x26, x25, [sp, #0x110]
0x101469e78:  f8 5f 12 a9   stp	x24, x23, [sp, #0x120]
0x101469e7c:  f6 57 13 a9   stp	x22, x21, [sp, #0x130]
0x101469e80:  f4 4f 14 a9   stp	x20, x19, [sp, #0x140]
0x101469e84:  fd 7b 15 a9   stp	fp, lr, [sp, #0x150]
0x101469e88:  fd 43 05 91   add	fp, sp, #0x150
0x101469e8c:  f4 03 05 aa   mov	x20, x5
0x101469e90:  f6 03 04 aa   mov	x22, x4
0x101469e94:  f5 03 03 aa   mov	x21, x3
0x101469e98:  f7 03 02 aa   mov	x23, x2
0x101469e9c:  48 79 00 b0   adrp	x8, 0x102392000
0x101469ea0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101469ea4:  08 01 40 f9   ldr	x8, [x8]
0x101469ea8:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x101469eac:  88 81 00 f0   adrp	x8, 0x10249c000
0x101469eb0:  08 29 46 f9   ldr	x8, [x8, #0xc50] ; class_CLDurianDeviceManager
0x101469eb4:  e0 23 0a a9   stp	x0, x8, [sp, #0xa0]
0x101469eb8:  a8 84 00 d0   adrp	x8, 0x1024ff000
0x101469ebc:  01 8d 42 f9   ldr	x1, [x8, #0x518] ; sel_init
0x101469ec0:  e0 83 02 91   add	x0, sp, #0xa0
0x101469ec4:  2b b0 1a 94   bl	j__objc_msgSendSuper2
0x101469ec8:  f3 03 00 aa   mov	x19, x0
0x101469ecc:  80 26 00 b4   cbz	x0, loc_10146a39c ; ⤵ 0x4d0
0x101469ed0:  a0 b0 1a 94   bl	j__objc_retain_x23
0x101469ed4:  60 8a 00 f9   str	x0, [x19, #0x110]
0x101469ed8:  9a b0 1a 94   bl	j__objc_retain_x22
0x101469edc:  60 4a 00 f9   str	x0, [x19, #0x90]
0x101469ee0:  90 b0 1a 94   bl	j__objc_retain_x20
0x101469ee4:  60 9a 00 f9   str	x0, [x19, #0x130]
0x101469ee8:  28 79 00 f0   adrp	x8, 0x102390000
0x101469eec:  00 cd 41 f9   ldr	x0, [x8, #0x398] ; __got._OBJC_CLASS_$_SPBeaconManager
0x101469ef0:  e0 af 1a 94   bl	j__objc_alloc_init
0x101469ef4:  60 0a 00 f9   str	x0, [x19, #0x10]
0x101469ef8:  28 79 00 f0   adrp	x8, 0x102390000
0x101469efc:  00 e1 41 f9   ldr	x0, [x8, #0x3c0] ; __got._OBJC_CLASS_$_SPOwnerSession
0x101469f00:  28 b0 1a 94   bl	j__objc_opt_new
0x101469f04:  60 0e 00 f9   str	x0, [x19, #0x18]
0x101469f08:  28 79 00 f0   adrp	x8, 0x102390000
0x101469f0c:  00 dd 41 f9   ldr	x0, [x8, #0x3b8] ; __got._OBJC_CLASS_$_SPOwnerInterface
0x101469f10:  d8 af 1a 94   bl	j__objc_alloc_init
0x101469f14:  db af 1a 94   bl	j__objc_autorelease
0x101469f18:  f6 03 00 aa   mov	x22, x0
0x101469f1c:  40 81 00 d0   adrp	x0, 0x102493000
0x101469f20:  00 c0 1d 91   add	x0, x0, #0x770 ; "persistentConnectionSession"
0x101469f24:  77 a2 1a 94   bl	j__NSSelectorFromString
0x101469f28:  f7 03 00 aa   mov	x23, x0
0x101469f2c:  e0 03 16 aa   mov	x0, x22
0x101469f30:  e1 03 17 aa   mov	x1, x23
0x101469f34:  1f b0 1a 94   bl	j__objc_opt_respondsToSelector
0x101469f38:  59 44 00 f0   adrp	x25, 0x101cf4000
0x101469f3c:  e0 04 00 36   tbz	w0, #0, loc_101469fd8 ; ⤵ 0x9c
0x101469f40:  e0 03 16 aa   mov	x0, x22
0x101469f44:  e2 03 17 aa   mov	x2, x23
0x101469f48:  46 56 1b 94   bl	j__objc_msgSend(x0, "performSelector:")
0x101469f4c:  59 b0 1a 94   bl	j__objc_retain
0x101469f50:  60 12 00 f9   str	x0, [x19, #0x20]
0x101469f54:  e8 e3 01 91   add	x8, sp, #0x78
0x101469f58:  50 79 00 b0   adrp	x16, 0x102392000
0x101469f5c:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got.__NSConcreteStackBlock
0x101469f60:  f1 03 08 aa   mov	x17, x8
0x101469f64:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x101469f68:  30 0a c1 da   pacda	x16, x17
0x101469f6c:  f0 3f 00 f9   str	x16, [sp, #0x78]
0x101469f70:  20 47 44 fd   ldr	d0, [x25, #0x888]
0x101469f74:  e0 43 00 fd   str	d0, [sp, #0x80]
0x101469f78:  08 41 00 91   add	x8, x8, #0x10
0x101469f7c:  10 00 00 b0   adrp	x16, 0x10146a000
0x101469f80:  10 b2 0f 91   add	x16, x16, #0x3ec
0x101469f84:  10 01 c1 da   pacia	x16, x8
0x101469f88:  48 7e 00 d0   adrp	x8, 0x102433000
0x101469f8c:  08 01 3b 91   add	x8, x8, #0xec0 ; data_102433ec0 (__DATA_CONST.__const)
0x101469f90:  f0 a3 08 a9   stp	x16, x8, [sp, #0x88]
0x101469f94:  f3 4f 00 f9   str	x19, [sp, #0x98]
0x101469f98:  40 81 00 d0   adrp	x0, 0x102493000
0x101469f9c:  00 40 1e 91   add	x0, x0, #0x790 ; "beaconsToMaintainPersistentConnection:"
0x101469fa0:  58 a2 1a 94   bl	j__NSSelectorFromString
0x101469fa4:  f7 03 00 aa   mov	x23, x0
0x101469fa8:  40 81 00 d0   adrp	x0, 0x102493000
0x101469fac:  00 c0 1e 91   add	x0, x0, #0x7b0 ; "startRefreshingPersistentConnectionWithBlock:"
0x101469fb0:  54 a2 1a 94   bl	j__NSSelectorFromString
0x101469fb4:  f8 03 00 aa   mov	x24, x0
0x101469fb8:  60 12 40 f9   ldr	x0, [x19, #0x20]
0x101469fbc:  e3 e3 01 91   add	x3, sp, #0x78
0x101469fc0:  e2 03 17 aa   mov	x2, x23
0x101469fc4:  2f 56 1b 94   bl	j__objc_msgSend(x0, "performSelector:withObject:")
0x101469fc8:  60 12 40 f9   ldr	x0, [x19, #0x20]
0x101469fcc:  e3 e3 01 91   add	x3, sp, #0x78
0x101469fd0:  e2 03 18 aa   mov	x2, x24
0x101469fd4:  2b 56 1b 94   bl	j__objc_msgSend(x0, "performSelector:withObject:")
0x101469fd8:  ; loc_101469fd8
0x101469fd8:  e0 03 16 aa   mov	x0, x22
0x101469fdc:  a9 c0 1b 94   bl	j__objc_msgSend(x0, "tagSeparationSession")
0x101469fe0:  34 b0 1a 94   bl	j__objc_retain
0x101469fe4:  60 1a 00 f9   str	x0, [x19, #0x30]
0x101469fe8:  7f 26 00 f9   str	xzr, [x19, #0x48]
0x101469fec:  28 79 00 f0   adrp	x8, 0x102390000
0x101469ff0:  00 29 46 f9   ldr	x0, [x8, #0xc50] ; __got._OBJC_CLASS_$_CBCentralManager
0x101469ff4:  97 af 1a 94   bl	j__objc_alloc
0x101469ff8:  f6 03 00 aa   mov	x22, x0
0x101469ffc:  28 79 00 f0   adrp	x8, 0x102390000
0x10146a000:  08 05 46 f9   ldr	x8, [x8, #0xc08] ; __got._CBCentralManagerOptionReceiveIncomingObjectDiscoveryData
0x10146a004:  77 8a 40 f9   ldr	x23, [x19, #0x110]
0x10146a008:  08 01 40 f9   ldr	x8, [x8]
0x10146a00c:  29 79 00 f0   adrp	x9, 0x102391000
0x10146a010:  29 7d 44 f9   ldr	x9, [x9, #0x8f8] ; __got.___kCFBooleanTrue
0x10146a014:  2a 79 00 d0   adrp	x10, 0x102390000
0x10146a018:  4a 09 46 f9   ldr	x10, [x10, #0xc10] ; __got._CBCentralManagerOptionReceiveSystemEvents
0x10146a01c:  4a 01 40 f9   ldr	x10, [x10]
0x10146a020:  a8 ab 37 a9   stp	x8, x10, [fp, #-0x88]
0x10146a024:  28 79 00 d0   adrp	x8, 0x102390000
0x10146a028:  08 21 46 f9   ldr	x8, [x8, #0xc40] ; __got._CBManagerNeedsRestrictedStateOperation
0x10146a02c:  a9 27 39 a9   stp	x9, x9, [fp, #-0x70]
0x10146a030:  08 01 40 f9   ldr	x8, [x8]
0x10146a034:  a8 83 18 f8   stur	x8, [fp, #-0x78]
0x10146a038:  a9 03 1a f8   stur	x9, [fp, #-0x60]
0x10146a03c:  28 79 00 f0   adrp	x8, 0x102391000
0x10146a040:  00 2d 44 f9   ldr	x0, [x8, #0x858] ; __got._OBJC_CLASS_$_NSDictionary
0x10146a044:  a2 c3 01 d1   sub	x2, fp, #0x70
0x10146a048:  a3 23 02 d1   sub	x3, fp, #0x88
0x10146a04c:  64 00 80 52   mov	w4, #0x3
0x10146a050:  94 e9 1a 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10146a054:  e4 03 00 aa   mov	x4, x0
0x10146a058:  e0 03 16 aa   mov	x0, x22
0x10146a05c:  e2 03 13 aa   mov	x2, x19
0x10146a060:  e3 03 17 aa   mov	x3, x23
0x10146a064:  a7 21 1b 94   bl	j__objc_msgSend(x0, "initWithDelegate:queue:options:")
0x10146a068:  60 6e 00 f9   str	x0, [x19, #0xd8]
0x10146a06c:  7f 06 00 f9   str	xzr, [x19, #0x8]
0x10146a070:  36 79 00 f0   adrp	x22, 0x102391000
0x10146a074:  c0 4a 44 f9   ldr	x0, [x22, #0x890] ; __got._OBJC_CLASS_$_NSMutableDictionary
0x10146a078:  7e af 1a 94   bl	j__objc_alloc_init
0x10146a07c:  60 72 00 f9   str	x0, [x19, #0xe0]
0x10146a080:  c0 4a 44 f9   ldr	x0, [x22, #0x890]
0x10146a084:  7b af 1a 94   bl	j__objc_alloc_init
0x10146a088:  60 76 00 f9   str	x0, [x19, #0xe8]
0x10146a08c:  c0 4a 44 f9   ldr	x0, [x22, #0x890]
0x10146a090:  78 af 1a 94   bl	j__objc_alloc_init
0x10146a094:  60 82 00 f9   str	x0, [x19, #0x100]
0x10146a098:  c0 4a 44 f9   ldr	x0, [x22, #0x890]
0x10146a09c:  75 af 1a 94   bl	j__objc_alloc_init
0x10146a0a0:  60 7e 00 f9   str	x0, [x19, #0xf8]
0x10146a0a4:  a8 85 00 b0   adrp	x8, 0x10251f000
0x10146a0a8:  00 81 03 91   add	x0, x8, #0xe0 ; CLDurianLocationMonitor
0x10146a0ac:  69 af 1a 94   bl	j__objc_alloc
0x10146a0b0:  e2 03 15 aa   mov	x2, x21
0x10146a0b4:  e3 03 14 aa   mov	x3, x20
0x10146a0b8:  72 2c 1b 94   bl	j__objc_msgSend(x0, "initWithUniverse:systemUtils:")
0x10146a0bc:  60 1e 00 f9   str	x0, [x19, #0x38]
0x10146a0c0:  a8 85 00 b0   adrp	x8, 0x10251f000
0x10146a0c4:  00 41 11 91   add	x0, x8, #0x450 ; CLDurianSettings
0x10146a0c8:  6e cf 1b 94   bl	j__objc_msgSend(x0, "useCLDurianBluetoothMonitor")
0x10146a0cc:  40 07 00 34   cbz	w0, loc_10146a1b4 ; ⤵ 0xe8
0x10146a0d0:  c8 88 00 90   adrp	x8, 0x102582000
0x10146a0d4:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10146a0d8:  1f 05 00 b1   cmn	x8, #0x1
0x10146a0dc:  21 18 00 54   b.ne	loc_10146a3e0 ; ⤵ 0x304
0x10146a0e0:  ; loc_10146a0e0
0x10146a0e0:  c8 88 00 90   adrp	x8, 0x102582000
0x10146a0e4:  14 3d 46 f9   ldr	x20, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10146a0e8:  e0 03 14 aa   mov	x0, x20
0x10146a0ec:  41 00 80 52   mov	w1, #0x2
0x10146a0f0:  80 b0 1a 94   bl	j__os_log_type_enabled
0x10146a0f4:  60 02 00 34   cbz	w0, loc_10146a140 ; ⤵ 0x4c
0x10146a0f8:  48 44 00 d0   adrp	x8, 0x101cf4000
0x10146a0fc:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10146a100:  a0 03 16 bc   stur	s0, [fp, #-0xa0]
0x10146a104:  bf 43 16 b8   stur	wzr, [fp, #-0x9c]
0x10146a108:  48 04 81 52   mov	w8, #0x822
0x10146a10c:  a8 83 16 78   sturh	w8, [fp, #-0x98]
0x10146a110:  28 52 00 90   adrp	x8, 0x101eae000
0x10146a114:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x10146a118:  a8 a3 16 f8   stur	x8, [fp, #-0x96]
0x10146a11c:  a0 5c ff d0   adrp	x0, 0x100000000
0x10146a120:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10146a124:  83 70 00 d0   adrp	x3, 0x10227c000
0x10146a128:  63 0c 11 91   add	x3, x3, #0x443 ; "{\"msg%{public}.0s\":\"#durian #system #bt using durian bluetooth monitor for connection state\"}"
0x10146a12c:  a4 83 02 d1   sub	x4, fp, #0xa0
0x10146a130:  e1 03 14 aa   mov	x1, x20
0x10146a134:  42 00 80 52   mov	w2, #0x2
0x10146a138:  45 02 80 52   mov	w5, #0x12
0x10146a13c:  2d ac 1a 94   bl	j___os_log_impl
0x10146a140:  ; loc_10146a140
0x10146a140:  a8 85 00 b0   adrp	x8, 0x10251f000
0x10146a144:  00 01 06 91   add	x0, x8, #0x180 ; CLDurianBluetoothMonitor
0x10146a148:  42 af 1a 94   bl	j__objc_alloc
0x10146a14c:  f4 03 00 aa   mov	x20, x0
0x10146a150:  e0 03 13 aa   mov	x0, x19
0x10146a154:  6b 5f 1b 94   bl	j__objc_msgSend(x0, "queue")
0x10146a158:  e2 03 00 aa   mov	x2, x0
0x10146a15c:  e0 03 14 aa   mov	x0, x20
0x10146a160:  60 27 1b 94   bl	j__objc_msgSend(x0, "initWithQueue:")
0x10146a164:  60 22 00 f9   str	x0, [x19, #0x40]
0x10146a168:  e8 43 01 91   add	x8, sp, #0x50
0x10146a16c:  50 79 00 90   adrp	x16, 0x102392000
0x10146a170:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got.__NSConcreteStackBlock
0x10146a174:  f1 03 08 aa   mov	x17, x8
0x10146a178:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x10146a17c:  30 0a c1 da   pacda	x16, x17
0x10146a180:  f0 2b 00 f9   str	x16, [sp, #0x50]
0x10146a184:  20 47 44 fd   ldr	d0, [x25, #0x888]
0x10146a188:  e0 2f 00 fd   str	d0, [sp, #0x58]
0x10146a18c:  08 41 00 91   add	x8, x8, #0x10
0x10146a190:  10 00 00 90   adrp	x16, 0x10146a000
0x10146a194:  10 b2 11 91   add	x16, x16, #0x46c
0x10146a198:  10 01 c1 da   pacia	x16, x8
0x10146a19c:  48 7e 00 b0   adrp	x8, 0x102433000
0x10146a1a0:  08 a1 3b 91   add	x8, x8, #0xee8 ; data_102433ee8 (__DATA_CONST.__const)
0x10146a1a4:  f0 23 06 a9   stp	x16, x8, [sp, #0x60]
0x10146a1a8:  f3 3b 00 f9   str	x19, [sp, #0x70]
0x10146a1ac:  e2 43 01 91   add	x2, sp, #0x50
0x10146a1b0:  c4 7e 1b 94   bl	j__objc_msgSend(x0, "setConnectionStateupdateHandler:")
0x10146a1b4:  ; loc_10146a1b4
0x10146a1b4:  7f a2 02 39   strb	wzr, [x19, #0xa8]
0x10146a1b8:  60 1e 40 f9   ldr	x0, [x19, #0x38]
0x10146a1bc:  e2 03 13 aa   mov	x2, x19
0x10146a1c0:  d8 80 1b 94   bl	j__objc_msgSend(x0, "setDelegate:")
0x10146a1c4:  c0 4a 44 f9   ldr	x0, [x22, #0x890]
0x10146a1c8:  2a af 1a 94   bl	j__objc_alloc_init
0x10146a1cc:  60 5e 00 f9   str	x0, [x19, #0xb8]
0x10146a1d0:  28 79 00 f0   adrp	x8, 0x102391000
0x10146a1d4:  00 19 44 f9   ldr	x0, [x8, #0x830] ; __got._OBJC_CLASS_$_NSArray
0x10146a1d8:  26 af 1a 94   bl	j__objc_alloc_init
0x10146a1dc:  60 96 00 f9   str	x0, [x19, #0x128]
0x10146a1e0:  28 79 00 f0   adrp	x8, 0x102391000
0x10146a1e4:  00 4d 44 f9   ldr	x0, [x8, #0x898] ; __got._OBJC_CLASS_$_NSMutableSet
0x10146a1e8:  22 af 1a 94   bl	j__objc_alloc_init
0x10146a1ec:  60 8e 00 f9   str	x0, [x19, #0x118]
0x10146a1f0:  a8 85 00 d0   adrp	x8, 0x102520000
0x10146a1f4:  00 01 16 91   add	x0, x8, #0x580 ; CLDurianMaintenance
0x10146a1f8:  16 af 1a 94   bl	j__objc_alloc
0x10146a1fc:  62 8a 40 f9   ldr	x2, [x19, #0x110]
0x10146a200:  63 9a 40 f9   ldr	x3, [x19, #0x130]
0x10146a204:  e4 03 13 aa   mov	x4, x19
0x10146a208:  ae 27 1b 94   bl	j__objc_msgSend(x0, "initWithQueue:systemUtils:andDelegate:")
0x10146a20c:  60 2a 00 f9   str	x0, [x19, #0x50]
0x10146a210:  a8 85 00 b0   adrp	x8, 0x10251f000
0x10146a214:  00 01 24 91   add	x0, x8, #0x900 ; CLDurianMetricManager
0x10146a218:  0e af 1a 94   bl	j__objc_alloc
0x10146a21c:  62 8a 40 f9   ldr	x2, [x19, #0x110]
0x10146a220:  30 27 1b 94   bl	j__objc_msgSend(x0, "initWithQueue:")
0x10146a224:  60 7a 00 f9   str	x0, [x19, #0xf0]
0x10146a228:  a8 85 00 b0   adrp	x8, 0x10251f000
0x10146a22c:  00 c1 0e 91   add	x0, x8, #0x3b0 ; CLDurianZoneMonitorWrapper
0x10146a230:  08 af 1a 94   bl	j__objc_alloc
0x10146a234:  c8 7d 00 b0   adrp	x8, 0x102423000
0x10146a238:  08 41 0f 91   add	x8, x8, #0x3d0
0x10146a23c:  02 01 40 f9   ldr	x2, [x8]
0x10146a240:  28 3f 00 d0   adrp	x8, 0x101c50000
0x10146a244:  08 61 2b 91   add	x8, x8, #0xad8
0x10146a248:  00 05 40 6d   ldp	d0, d1, [x8]
0x10146a24c:  02 0d 41 6d   ldp	d2, d3, [x8, #0x10]
0x10146a250:  6c 2a 1b 94   bl	j__objc_msgSend(x0, "initWithTimeZone:zoneBoundary:")
0x10146a254:  60 32 00 f9   str	x0, [x19, #0x60]
0x10146a258:  68 8a 00 90   adrp	x8, 0x1025b6000
0x10146a25c:  08 d5 43 f9   ldr	x8, [x8, #0x7a8]
0x10146a260:  1f 05 00 b1   cmn	x8, #0x1
0x10146a264:  a1 0b 00 54   b.ne	loc_10146a3d8 ; ⤵ 0x174
0x10146a268:  ; loc_10146a268
0x10146a268:  68 8a 00 90   adrp	x8, 0x1025b6000
0x10146a26c:  08 81 5e 39   ldrb	w8, [x8, #0x7a0]
0x10146a270:  1f 05 00 71   cmp	w8, #0x1
0x10146a274:  01 01 00 54   b.ne	loc_10146a294 ; ⤵ 0x20
0x10146a278:  80 4b 00 b0   adrp	x0, 0x101ddb000
0x10146a27c:  00 18 01 91   add	x0, x0, #0x46 ; "FindMy"
0x10146a280:  81 4b 00 b0   adrp	x1, 0x101ddb000
0x10146a284:  21 34 01 91   add	x1, x1, #0x4d ; "TravelingPenguin"
0x10146a288:  ce ab 1a 94   bl	j___os_feature_enabled_impl
0x10146a28c:  08 00 00 52   eor	w8, w0, #0x1
0x10146a290:  02 00 00 14   b	loc_10146a298 ; ⤵ 0x8
0x10146a294:  ; loc_10146a294
0x10146a294:  08 00 80 52   mov	w8, #0
0x10146a298:  ; loc_10146a298
0x10146a298:  68 a2 01 39   strb	w8, [x19, #0x68]
0x10146a29c:  a8 85 00 d0   adrp	x8, 0x102520000
0x10146a2a0:  00 41 08 91   add	x0, x8, #0x210 ; CLDurianConnectionsWatchdog
0x10146a2a4:  eb ae 1a 94   bl	j__objc_alloc
0x10146a2a8:  62 8a 40 f9   ldr	x2, [x19, #0x110]
0x10146a2ac:  63 6e 40 f9   ldr	x3, [x19, #0xd8]
0x10146a2b0:  64 7a 40 f9   ldr	x4, [x19, #0xf0]
0x10146a2b4:  65 9a 40 f9   ldr	x5, [x19, #0x130]
0x10146a2b8:  22 27 1b 94   bl	j__objc_msgSend(x0, "initWithQueue:centralManager:metricManager:systemUtils:")
0x10146a2bc:  7d af 1a 94   bl	j__objc_retain
0x10146a2c0:  60 92 00 f9   str	x0, [x19, #0x120]
0x10146a2c4:  28 79 00 d0   adrp	x8, 0x102390000
0x10146a2c8:  08 51 44 f9   ldr	x8, [x8, #0x8a0] ; __got._GEOCountryConfigurationCountryCodeChangedDarwinNotification
0x10146a2cc:  00 01 40 f9   ldr	x0, [x8]
0x10146a2d0:  62 8a 40 f9   ldr	x2, [x19, #0x110]
0x10146a2d4:  e8 a3 00 91   add	x8, sp, #0x28
0x10146a2d8:  50 79 00 90   adrp	x16, 0x102392000
0x10146a2dc:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got.__NSConcreteStackBlock
0x10146a2e0:  f1 03 08 aa   mov	x17, x8
0x10146a2e4:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x10146a2e8:  30 0a c1 da   pacda	x16, x17
0x10146a2ec:  f0 17 00 f9   str	x16, [sp, #0x28]
0x10146a2f0:  28 47 44 fd   ldr	d8, [x25, #0x888]
0x10146a2f4:  e8 1b 00 fd   str	d8, [sp, #0x30]
0x10146a2f8:  08 41 00 91   add	x8, x8, #0x10
0x10146a2fc:  10 00 00 90   adrp	x16, 0x10146a000
0x10146a300:  10 f2 11 91   add	x16, x16, #0x47c
0x10146a304:  10 01 c1 da   pacia	x16, x8
0x10146a308:  d4 79 00 b0   adrp	x20, 0x1023a3000
0x10146a30c:  94 02 29 91   add	x20, x20, #0xa40 ; data_1023a3a40 (__DATA_CONST.__const)
0x10146a310:  f0 d3 03 a9   stp	x16, x20, [sp, #0x38]
0x10146a314:  f3 27 00 f9   str	x19, [sp, #0x48]
0x10146a318:  61 b2 01 91   add	x1, x19, #0x6c
0x10146a31c:  e3 a3 00 91   add	x3, sp, #0x28
0x10146a320:  c8 ae 1a 94   bl	j__notify_register_dispatch
0x10146a324:  62 8a 40 f9   ldr	x2, [x19, #0x110]
0x10146a328:  e8 03 00 91   mov	x8, sp
0x10146a32c:  50 79 00 90   adrp	x16, 0x102392000
0x10146a330:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got.__NSConcreteStackBlock
0x10146a334:  f1 03 08 aa   mov	x17, x8
0x10146a338:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x10146a33c:  30 0a c1 da   pacda	x16, x17
0x10146a340:  f0 03 00 f9   str	x16, [sp]
0x10146a344:  e8 07 00 fd   str	d8, [sp, #0x8]
0x10146a348:  08 41 00 91   add	x8, x8, #0x10
0x10146a34c:  10 00 00 90   adrp	x16, 0x10146a000
0x10146a350:  10 12 13 91   add	x16, x16, #0x4c4
0x10146a354:  10 01 c1 da   pacia	x16, x8
0x10146a358:  f0 53 01 a9   stp	x16, x20, [sp, #0x10]
0x10146a35c:  f3 13 00 f9   str	x19, [sp, #0x20]
0x10146a360:  00 52 00 d0   adrp	x0, 0x101eac000
0x10146a364:  00 c8 2b 91   add	x0, x0, #0xaf2 ; "com.apple.locationd.durian.restart-connection"
0x10146a368:  61 e2 01 91   add	x1, x19, #0x78
0x10146a36c:  e3 03 00 91   mov	x3, sp
0x10146a370:  b4 ae 1a 94   bl	j__notify_register_dispatch
0x10146a374:  7f 1a 01 79   strh	wzr, [x19, #0x8c]
0x10146a378:  e0 03 13 aa   mov	x0, x19
0x10146a37c:  79 18 1b 94   bl	j__objc_msgSend(x0, "hydrateBeacons")
0x10146a380:  42 7f 00 d0   adrp	x2, 0x102454000
0x10146a384:  42 c0 1a 91   add	x2, x2, #0x6b0 ; "Unknown"
0x10146a388:  e0 03 13 aa   mov	x0, x19
0x10146a38c:  dd 8f 1b 94   bl	j__objc_msgSend(x0, "setLoiType:")
0x10146a390:  7f 86 00 f9   str	xzr, [x19, #0x108]
0x10146a394:  0f 9d 1a 94   bl	j__CFAbsoluteTimeGetCurrent
0x10146a398:  60 52 00 fd   str	d0, [x19, #0xa0]
0x10146a39c:  ; loc_10146a39c
0x10146a39c:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x10146a3a0:  49 79 00 90   adrp	x9, 0x102392000
0x10146a3a4:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10146a3a8:  29 01 40 f9   ldr	x9, [x9]
0x10146a3ac:  3f 01 08 eb   cmp	x9, x8
0x10146a3b0:  c1 01 00 54   b.ne	loc_10146a3e8 ; ⤵ 0x38
0x10146a3b4:  e0 03 13 aa   mov	x0, x19
0x10146a3b8:  fd 7b 55 a9   ldp	fp, lr, [sp, #0x150]
0x10146a3bc:  f4 4f 54 a9   ldp	x20, x19, [sp, #0x140]
0x10146a3c0:  f6 57 53 a9   ldp	x22, x21, [sp, #0x130]
0x10146a3c4:  f8 5f 52 a9   ldp	x24, x23, [sp, #0x120]
0x10146a3c8:  fa 67 51 a9   ldp	x26, x25, [sp, #0x110]
0x10146a3cc:  e9 23 50 6d   ldp	d9, d8, [sp, #0x100]
0x10146a3d0:  ff 83 05 91   add	sp, sp, #0x160
0x10146a3d4:  ff 0f 5f d6   retab
0x10146a3d8:  ; loc_10146a3d8
0x10146a3d8:  87 97 1a 94   bl	0x101b101f4
0x10146a3dc:  a3 ff ff 17   b	loc_10146a268 ; ⤴ -0x174
0x10146a3e0:  ; loc_10146a3e0
0x10146a3e0:  7f 97 1a 94   bl	0x101b101dc
0x10146a3e4:  3f ff ff 17   b	loc_10146a0e0 ; ⤴ -0x304
0x10146a3e8:  ; loc_10146a3e8
0x10146a3e8:  56 ab 1a 94   bl	j____stack_chk_fail

sub_10146a3ec:
0x10146a3ec:  7f 23 03 d5   pacibsp
0x10146a3f0:  ff 03 01 d1   sub	sp, sp, #0x40
0x10146a3f4:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x10146a3f8:  fd c3 00 91   add	fp, sp, #0x30
0x10146a3fc:  08 10 40 f9   ldr	x8, [x0, #0x20]
0x10146a400:  00 89 40 f9   ldr	x0, [x8, #0x110]
0x10146a404:  e9 03 00 91   mov	x9, sp
0x10146a408:  50 79 00 90   adrp	x16, 0x102392000
0x10146a40c:  10 c2 41 f9   ldr	x16, [x16, #0x380] ; __got.__NSConcreteStackBlock
0x10146a410:  f1 03 09 aa   mov	x17, x9
0x10146a414:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x10146a418:  30 0a c1 da   pacda	x16, x17
0x10146a41c:  f0 03 00 f9   str	x16, [sp]
0x10146a420:  4a 44 00 d0   adrp	x10, 0x101cf4000
0x10146a424:  40 45 44 fd   ldr	d0, [x10, #0x888]
0x10146a428:  e0 07 00 fd   str	d0, [sp, #0x8]
0x10146a42c:  29 41 00 91   add	x9, x9, #0x10
0x10146a430:  2a 7f 00 b0   adrp	x10, 0x10244f000
0x10146a434:  4a 81 27 91   add	x10, x10, #0x9e0 ; data_10244f9e0 (__DATA_CONST.__const)
0x10146a438:  10 00 00 90   adrp	x16, 0x10146a000
0x10146a43c:  10 82 11 91   add	x16, x16, #0x460
0x10146a440:  30 01 c1 da   pacia	x16, x9
0x10146a444:  f0 2b 01 a9   stp	x16, x10, [sp, #0x10]
0x10146a448:  e8 07 02 a9   stp	x8, x1, [sp, #0x20]
0x10146a44c:  e1 03 00 91   mov	x1, sp
0x10146a450:  70 ac 1a 94   bl	j__dispatch_async
0x10146a454:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x10146a458:  ff 03 01 91   add	sp, sp, #0x40
0x10146a45c:  ff 0f 5f d6   retab

sub_10146a460:
0x10146a460:  08 08 42 a9   ldp	x8, x2, [x0, #0x20]
0x10146a464:  e0 03 08 aa   mov	x0, x8
0x10146a468:  26 ef 1a 14   b	j__objc_msgSend(x0, "didUpdatePersistentConnectionList:")

sub_10146a46c:
0x10146a46c:  e3 03 02 aa   mov	x3, x2
0x10146a470:  00 10 40 f9   ldr	x0, [x0, #0x20]
0x10146a474:  e2 03 01 aa   mov	x2, x1
0x10146a478:  6a ca 1b 14   b	j__objc_msgSend(x0, "updateDeviceConnectionState:state:")

sub_10146a47c:
0x10146a47c:  7f 23 03 d5   pacibsp
0x10146a480:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10146a484:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10146a488:  fd 43 00 91   add	fp, sp, #0x10
0x10146a48c:  f3 03 00 aa   mov	x19, x0
0x10146a490:  28 79 00 d0   adrp	x8, 0x102390000
0x10146a494:  00 59 44 f9   ldr	x0, [x8, #0x8b0] ; __got._OBJC_CLASS_$_GEOCountryConfiguration
0x10146a498:  02 a9 1b 94   bl	j__objc_msgSend(x0, "sharedConfiguration")
0x10146a49c:  e9 dc 1a 94   bl	j__objc_msgSend(x0, "countryCode")
0x10146a4a0:  e2 03 00 aa   mov	x2, x0
0x10146a4a4:  60 12 40 f9   ldr	x0, [x19, #0x20]
0x10146a4a8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10146a4ac:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10146a4b0:  ff 23 03 d5   autibsp
0x10146a4b4:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10146a4b8:  50 00 f0 b6   tbz	x16, #0x3e, loc_10146a4c0 ; ⤵ 0x8
0x10146a4bc:  20 8e 38 d4   brk	#0xc471
0x10146a4c0:  ; loc_10146a4c0
0x10146a4c0:  d0 4d 1b 14   b	j__objc_msgSend(x0, "onGeoCountryConfigurationChanged:")

sub_10146a4c4:
0x10146a4c4:  00 10 40 f9   ldr	x0, [x0, #0x20]
0x10146a4c8:  0e 6c 1b 14   b	j__objc_msgSend(x0, "restartActiveConnectionAttempts")

-[CLDurianDeviceManager dealloc]:
0x10146a4cc:  7f 23 03 d5   pacibsp
0x10146a4d0:  ff c3 00 d1   sub	sp, sp, #0x30
0x10146a4d4:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x10146a4d8:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10146a4dc:  fd 83 00 91   add	fp, sp, #0x20
0x10146a4e0:  f3 03 00 aa   mov	x19, x0
0x10146a4e4:  00 6c 40 b9   ldr	w0, [x0, #0x6c]
0x10146a4e8:  42 ae 1a 94   bl	j__notify_cancel
0x10146a4ec:  60 72 40 b9   ldr	w0, [x19, #0x70]
0x10146a4f0:  40 ae 1a 94   bl	j__notify_cancel
0x10146a4f4:  60 76 40 b9   ldr	w0, [x19, #0x74]
0x10146a4f8:  3e ae 1a 94   bl	j__notify_cancel
0x10146a4fc:  60 0a 40 f9   ldr	x0, [x19, #0x10]
0x10146a500:  42 7e 00 b0   adrp	x2, 0x102433000
0x10146a504:  42 20 3c 91   add	x2, x2, #0xf08 ; __NSConcreteGlobalBlock
0x10146a508:  ce b5 1b 94   bl	j__objc_msgSend(x0, "stopUpdatingSimpleBeaconsWithCompletion:")
0x10146a50c:  68 22 40 f9   ldr	x8, [x19, #0x40]
0x10146a510:  48 00 00 b4   cbz	x8, loc_10146a518 ; ⤵ 0x8
0x10146a514:  df ae 1a 94   bl	j__objc_release_x8
0x10146a518:  ; loc_10146a518
0x10146a518:  68 9a 40 f9   ldr	x8, [x19, #0x130]
0x10146a51c:  dd ae 1a 94   bl	j__objc_release_x8
0x10146a520:  68 26 40 f9   ldr	x8, [x19, #0x48]
0x10146a524:  db ae 1a 94   bl	j__objc_release_x8
0x10146a528:  68 5e 40 f9   ldr	x8, [x19, #0xb8]
0x10146a52c:  d9 ae 1a 94   bl	j__objc_release_x8
0x10146a530:  68 96 40 f9   ldr	x8, [x19, #0x128]
0x10146a534:  d7 ae 1a 94   bl	j__objc_release_x8
0x10146a538:  68 2a 40 f9   ldr	x8, [x19, #0x50]
0x10146a53c:  d5 ae 1a 94   bl	j__objc_release_x8
0x10146a540:  60 1e 40 f9   ldr	x0, [x19, #0x38]
0x10146a544:  7f b3 1b 94   bl	j__objc_msgSend(x0, "stopLeechingLocation")
0x10146a548:  68 1e 40 f9   ldr	x8, [x19, #0x38]
0x10146a54c:  d1 ae 1a 94   bl	j__objc_release_x8
0x10146a550:  68 32 40 f9   ldr	x8, [x19, #0x60]
0x10146a554:  cf ae 1a 94   bl	j__objc_release_x8
0x10146a558:  68 82 40 f9   ldr	x8, [x19, #0x100]
0x10146a55c:  cd ae 1a 94   bl	j__objc_release_x8
0x10146a560:  68 7e 40 f9   ldr	x8, [x19, #0xf8]
0x10146a564:  cb ae 1a 94   bl	j__objc_release_x8
0x10146a568:  68 76 40 f9   ldr	x8, [x19, #0xe8]
0x10146a56c:  c9 ae 1a 94   bl	j__objc_release_x8
0x10146a570:  68 72 40 f9   ldr	x8, [x19, #0xe0]
0x10146a574:  c7 ae 1a 94   bl	j__objc_release_x8
0x10146a578:  68 12 40 f9   ldr	x8, [x19, #0x20]
0x10146a57c:  c5 ae 1a 94   bl	j__objc_release_x8
0x10146a580:  68 0e 40 f9   ldr	x8, [x19, #0x18]
0x10146a584:  c3 ae 1a 94   bl	j__objc_release_x8
0x10146a588:  68 1a 40 f9   ldr	x8, [x19, #0x30]
0x10146a58c:  c1 ae 1a 94   bl	j__objc_release_x8
0x10146a590:  68 0a 40 f9   ldr	x8, [x19, #0x10]
0x10146a594:  bf ae 1a 94   bl	j__objc_release_x8
0x10146a598:  68 8a 40 f9   ldr	x8, [x19, #0x110]
0x10146a59c:  bd ae 1a 94   bl	j__objc_release_x8
0x10146a5a0:  68 8e 40 f9   ldr	x8, [x19, #0x118]
0x10146a5a4:  bb ae 1a 94   bl	j__objc_release_x8
0x10146a5a8:  68 9e 40 f9   ldr	x8, [x19, #0x138]
0x10146a5ac:  b9 ae 1a 94   bl	j__objc_release_x8
0x10146a5b0:  68 92 40 f9   ldr	x8, [x19, #0x120]
0x10146a5b4:  b7 ae 1a 94   bl	j__objc_release_x8
0x10146a5b8:  68 4a 40 f9   ldr	x8, [x19, #0x90]
0x10146a5bc:  b5 ae 1a 94   bl	j__objc_release_x8
0x10146a5c0:  88 81 00 d0   adrp	x8, 0x10249c000
0x10146a5c4:  08 29 46 f9   ldr	x8, [x8, #0xc50] ; class_CLDurianDeviceManager
0x10146a5c8:  f3 23 00 a9   stp	x19, x8, [sp]
0x10146a5cc:  88 84 00 b0   adrp	x8, 0x1024fb000
0x10146a5d0:  01 f5 46 f9   ldr	x1, [x8, #0xde8] ; sel_dealloc
0x10146a5d4:  e0 03 00 91   mov	x0, sp
0x10146a5d8:  66 ae 1a 94   bl	j__objc_msgSendSuper2
0x10146a5dc:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x10146a5e0:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x10146a5e4:  ff c3 00 91   add	sp, sp, #0x30
0x10146a5e8:  ff 0f 5f d6   retab

sub_10146a5ec:
0x10146a5ec:  c0 03 5f d6   ret

-[CLDurianDeviceManager getMachContinuousTime]:
0x10146a5f0:  9c ad 1a 14   b	j__mach_continuous_time

-[CLDurianDeviceManager getDeltaSecondsFromMachTime:]:
0x10146a5f4:  7f 23 03 d5   pacibsp
0x10146a5f8:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10146a5fc:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x10146a600:  fd 43 00 91   add	fp, sp, #0x10
0x10146a604:  f3 03 02 aa   mov	x19, x2
0x10146a608:  66 0a 1b 94   bl	j__objc_msgSend(x0, "getMachContinuousTime")
0x10146a60c:  00 00 13 cb   sub	x0, x0, x19
0x10146a610:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10146a614:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x10146a618:  ff 23 03 d5   autibsp
0x10146a61c:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10146a620:  50 00 f0 b6   tbz	x16, #0x3e, loc_10146a628 ; ⤵ 0x8

