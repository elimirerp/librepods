0x100760e80:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100760e84:  30 1a c1 da   autda	x16, x17
0x100760e88:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100760e8c:  08 3d 00 91   add	x8, x8, #0xf
0x100760e90:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x100760e94:  37 ab 38 94   bl	j__swift_task_alloc
0x100760e98:  c0 96 00 f9   str	x0, [x22, #0x128]
0x100760e9c:  40 8e 00 f0   adrp	x0, 0x10192b000
0x100760ea0:  00 40 3a 91   add	x0, x0, #0xe90 ; data_10192be90 (__DATA.__data)
0x100760ea4:  c1 75 00 90   adrp	x1, 0x101618000
0x100760ea8:  21 a0 2a 91   add	x1, x1, #0xaa8 ; "fA\v"
0x100760eac:  52 5d e5 97   bl	0x1000b83f4
0x100760eb0:  c0 9a 00 f9   str	x0, [x22, #0x130]
0x100760eb4:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x100760eb8:  f1 03 00 aa   mov	x17, x0
0x100760ebc:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100760ec0:  30 1a c1 da   autda	x16, x17
0x100760ec4:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100760ec8:  08 3d 00 91   add	x8, x8, #0xf
0x100760ecc:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x100760ed0:  28 ab 38 94   bl	j__swift_task_alloc
0x100760ed4:  c0 9e 00 f9   str	x0, [x22, #0x138]
0x100760ed8:  e0 8d 00 f0   adrp	x0, 0x10191f000
0x100760edc:  00 c0 12 91   add	x0, x0, #0x4b0 ; data_10191f4b0 (__DATA.__data)
0x100760ee0:  a1 74 00 d0   adrp	x1, 0x1015f6000
0x100760ee4:  21 80 10 91   add	x1, x1, #0x420 ; "\xc6\xc6\f"
0x100760ee8:  43 5d e5 97   bl	0x1000b83f4
0x100760eec:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x100760ef0:  f1 03 00 aa   mov	x17, x0
0x100760ef4:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100760ef8:  30 1a c1 da   autda	x16, x17
0x100760efc:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100760f00:  14 3d 00 91   add	x20, x8, #0xf
0x100760f04:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x100760f08:  1a ab 38 94   bl	j__swift_task_alloc
0x100760f0c:  c0 a2 00 f9   str	x0, [x22, #0x140]
0x100760f10:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x100760f14:  17 ab 38 94   bl	j__swift_task_alloc
0x100760f18:  c0 a6 00 f9   str	x0, [x22, #0x148]
0x100760f1c:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x100760f20:  14 ab 38 94   bl	j__swift_task_alloc
0x100760f24:  c0 aa 00 f9   str	x0, [x22, #0x150]
0x100760f28:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x100760f2c:  11 ab 38 94   bl	j__swift_task_alloc
0x100760f30:  c0 ae 00 f9   str	x0, [x22, #0x158]
0x100760f34:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x100760f38:  0e ab 38 94   bl	j__swift_task_alloc
0x100760f3c:  c0 b2 00 f9   str	x0, [x22, #0x160]
0x100760f40:  00 00 80 d2   mov	x0, #0
0x100760f44:  4d fb e2 97   bl	0x10001fc78
0x100760f48:  c0 b6 00 f9   str	x0, [x22, #0x168]
0x100760f4c:  08 8c 5f f8   ldr	x8, [x0, #-0x8]!
0x100760f50:  f0 03 08 aa   mov	x16, x8
0x100760f54:  f1 03 00 aa   mov	x17, x0
0x100760f58:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100760f5c:  30 1a c1 da   autda	x16, x17
0x100760f60:  f1 03 10 aa   mov	x17, x16
0x100760f64:  f1 47 c1 da   xpacd	x17
0x100760f68:  1f 02 11 eb   cmp	x16, x17
0x100760f6c:  40 00 00 54   b.eq	loc_100760f74 ; ⤵ 0x8
0x100760f70:  40 8e 38 d4   brk	#0xc472
0x100760f74:  ; loc_100760f74
0x100760f74:  d0 ba 00 f9   str	x16, [x22, #0x170]
0x100760f78:  f0 03 08 aa   mov	x16, x8
0x100760f7c:  f1 03 00 aa   mov	x17, x0
0x100760f80:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100760f84:  30 1a c1 da   autda	x16, x17
0x100760f88:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100760f8c:  08 3d 00 91   add	x8, x8, #0xf
0x100760f90:  00 ed 7c 92   and	x0, x8, #0xfffffffffffffff0
0x100760f94:  f7 aa 38 94   bl	j__swift_task_alloc
0x100760f98:  c0 be 00 f9   str	x0, [x22, #0x178]
0x100760f9c:  00 8e 00 d0   adrp	x0, 0x101922000
0x100760fa0:  00 80 0b 91   add	x0, x0, #0x2e0 ; data_1019222e0 (__DATA.__data)
0x100760fa4:  c1 76 00 b0   adrp	x1, 0x101639000
0x100760fa8:  21 00 2b 91   add	x1, x1, #0xac0
0x100760fac:  12 5d e5 97   bl	0x1000b83f4
0x100760fb0:  10 8c 5f f8   ldr	x16, [x0, #-0x8]!
0x100760fb4:  f1 03 00 aa   mov	x17, x0
0x100760fb8:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100760fbc:  30 1a c1 da   autda	x16, x17
0x100760fc0:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100760fc4:  14 3d 00 91   add	x20, x8, #0xf
0x100760fc8:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x100760fcc:  e9 aa 38 94   bl	j__swift_task_alloc
0x100760fd0:  c0 c2 00 f9   str	x0, [x22, #0x180]
0x100760fd4:  80 ee 7c 92   and	x0, x20, #0xfffffffffffffff0
0x100760fd8:  e6 aa 38 94   bl	j__swift_task_alloc
0x100760fdc:  c0 c6 00 f9   str	x0, [x22, #0x188]
0x100760fe0:  28 89 00 d0   adrp	x8, 0x101886000
0x100760fe4:  08 25 41 f9   ldr	x8, [x8, #0x248] ; __got._$s19FindMyDaemonSupport6daemonAA0C0CvgTu
0x100760fe8:  00 05 40 b9   ldr	w0, [x8, #0x4]
0x100760fec:  e1 aa 38 94   bl	j__swift_task_alloc
0x100760ff0:  f1 03 16 aa   mov	x17, x22
0x100760ff4:  c0 ca 00 f9   str	x0, [x22, #0x190]
0x100760ff8:  f0 03 00 aa   mov	x16, x0
0x100760ffc:  50 b4 f7 f2   movk	x16, #0xbda2, lsl #0x30
0x100761000:  11 0a c1 da   pacda	x17, x16
0x100761004:  11 00 00 f9   str	x17, [x0]
0x100761008:  08 20 00 91   add	x8, x0, #0x8
0x10076100c:  10 00 00 90   adrp	x16, 0x100761000
0x100761010:  10 22 01 91   add	x16, x16, #0x48
0x100761014:  f1 03 08 aa   mov	x17, x8
0x100761018:  f1 e0 fa f2   movk	x17, #0xd707, lsl #0x30
0x10076101c:  30 02 c1 da   pacia	x16, x17
0x100761020:  10 04 00 f9   str	x16, [x0, #0x8]
0x100761024:  f6 03 00 aa   mov	x22, x0
0x100761028:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x10076102c:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x100761030:  ff 83 00 91   add	sp, sp, #0x20
0x100761034:  ff 23 03 d5   autibsp
0x100761038:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10076103c:  50 00 f0 b6   tbz	x16, #0x3e, loc_100761044 ; ⤵ 0x8
0x100761040:  20 8e 38 d4   brk	#0xc471
0x100761044:  ; loc_100761044
0x100761044:  0b 9a 38 14   b	j__$s19FindMyDaemonSupport6daemonAA0C0Cvg

sub_100761048:
0x100761048:  7f 23 03 d5   pacibsp
0x10076104c:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x100761050:  f9 0f 1c f8   str	x25, [sp, #-0x40]!
0x100761054:  f8 df 00 a9   stp	x24, x23, [sp, #0x8]
0x100761058:  f5 cf 01 a9   stp	x21, x19, [sp, #0x18]
0x10076105c:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x100761060:  f0 a3 00 91   add	x16, sp, #0x28
0x100761064:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x100761068:  f1 03 16 aa   mov	x17, x22
0x10076106c:  11 0e c1 da   pacdb	x17, x16
0x100761070:  f1 17 00 f9   str	x17, [sp, #0x28]
0x100761074:  fd c3 00 91   add	fp, sp, #0x30
0x100761078:  f4 03 00 aa   mov	x20, x0
0x10076107c:  f1 03 16 aa   mov	x17, x22
0x100761080:  c8 02 40 f9   ldr	x8, [x22]
0x100761084:  f0 03 08 aa   mov	x16, x8
0x100761088:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x10076108c:  30 1a c1 da   autda	x16, x17
0x100761090:  f1 03 10 aa   mov	x17, x16
0x100761094:  f1 47 c1 da   xpacd	x17
0x100761098:  1f 02 11 eb   cmp	x16, x17
0x10076109c:  40 00 00 54   b.eq	loc_1007610a4 ; ⤵ 0x8
0x1007610a0:  40 8e 38 d4   brk	#0xc472
0x1007610a4:  ; loc_1007610a4
0x1007610a4:  f3 03 10 aa   mov	x19, x16
0x1007610a8:  a9 23 00 d1   sub	x9, fp, #0x8
0x1007610ac:  b0 23 00 d1   sub	x16, fp, #0x8
0x1007610b0:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x1007610b4:  f1 03 13 aa   mov	x17, x19
0x1007610b8:  11 0a c1 da   pacda	x17, x16
0x1007610bc:  31 01 00 f9   str	x17, [x9]
0x1007610c0:  f0 03 08 aa   mov	x16, x8
0x1007610c4:  f1 03 16 aa   mov	x17, x22
0x1007610c8:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x1007610cc:  30 1a c1 da   autda	x16, x17
0x1007610d0:  00 ca 40 f9   ldr	x0, [x16, #0x190]
0x1007610d4:  d0 02 40 f9   ldr	x16, [x22]
0x1007610d8:  f1 03 16 aa   mov	x17, x22
0x1007610dc:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x1007610e0:  30 1a c1 da   autda	x16, x17
0x1007610e4:  f1 03 10 aa   mov	x17, x16
0x1007610e8:  f1 47 c1 da   xpacd	x17
0x1007610ec:  1f 02 11 eb   cmp	x16, x17
0x1007610f0:  40 00 00 54   b.eq	loc_1007610f8 ; ⤵ 0x8
0x1007610f4:  40 8e 38 d4   brk	#0xc472
0x1007610f8:  ; loc_1007610f8
0x1007610f8:  f6 03 10 aa   mov	x22, x16
0x1007610fc:  74 ce 00 f9   str	x20, [x19, #0x198]
0x100761100:  a8 aa 38 94   bl	j__swift_task_dealloc
0x100761104:  28 89 00 b0   adrp	x8, 0x101886000
0x100761108:  08 89 40 f9   ldr	x8, [x8, #0x110] ; __got._$s19FindMyDaemonSupport012ActorServiceC0PAAE03getF0qd__yYaKAA0eF8ProtocolRd__lFTu
0x10076110c:  00 05 40 b9   ldr	w0, [x8, #0x4]
0x100761110:  98 aa 38 94   bl	j__swift_task_alloc
0x100761114:  f5 03 00 aa   mov	x21, x0
0x100761118:  60 d2 00 f9   str	x0, [x19, #0x1a0]
0x10076111c:  00 00 80 d2   mov	x0, #0
0x100761120:  50 99 38 94   bl	j__$s19FindMyDaemonSupport0C0CMa
0x100761124:  f7 03 00 aa   mov	x23, x0
0x100761128:  60 d6 00 f9   str	x0, [x19, #0x1a8]
0x10076112c:  00 00 80 d2   mov	x0, #0
0x100761130:  8a ea e2 97   bl	0x10001bb58
0x100761134:  f8 03 00 aa   mov	x24, x0
0x100761138:  c0 8d 00 b0   adrp	x0, 0x10191a000
0x10076113c:  00 80 05 91   add	x0, x0, #0x160 ; data_10191a160 (__DATA.__data)
0x100761140:  30 89 00 b0   adrp	x16, 0x101886000
0x100761144:  10 a6 40 f9   ldr	x16, [x16, #0x148] ; __got._$s19FindMyDaemonSupport0C0CMa
0x100761148:  f1 a1 85 d2   mov	x17, #0x2d0f
0x10076114c:  30 02 c1 da   pacia	x16, x17
0x100761150:  e1 03 10 aa   mov	x1, x16
0x100761154:  30 89 00 b0   adrp	x16, 0x101886000
0x100761158:  10 a2 40 f9   ldr	x16, [x16, #0x140] ; __got._$s19FindMyDaemonSupport0C0CAA012ActorServiceC0AAMc
0x10076115c:  71 dd 98 d2   mov	x17, #0xc6eb
0x100761160:  30 0a c1 da   pacda	x16, x17
0x100761164:  e2 03 10 aa   mov	x2, x16
0x100761168:  7a 8b e2 97   bl	0x100003f50
0x10076116c:  f9 03 00 aa   mov	x25, x0
0x100761170:  60 da 00 f9   str	x0, [x19, #0x1b0]
0x100761174:  a0 8e 00 90   adrp	x0, 0x101935000
0x100761178:  00 40 26 91   add	x0, x0, #0x990 ; data_101935990 (__DATA.__data)
0x10076117c:  d0 c5 ff d0   adrp	x16, 0x10001b000
0x100761180:  10 62 2d 91   add	x16, x16, #0xb58
0x100761184:  f1 a1 85 d2   mov	x17, #0x2d0f
0x100761188:  30 02 c1 da   pacia	x16, x17
0x10076118c:  e1 03 10 aa   mov	x1, x16
0x100761190:  70 76 00 b0   adrp	x16, 0x10162e000
0x100761194:  10 82 1c 91   add	x16, x16, #0x720 ; "\xe9\x8c%"
0x100761198:  71 dd 98 d2   mov	x17, #0xc6eb
0x10076119c:  30 0a c1 da   pacda	x16, x17
0x1007611a0:  e2 03 10 aa   mov	x2, x16
0x1007611a4:  6b 8b e2 97   bl	0x100003f50
0x1007611a8:  e3 03 00 aa   mov	x3, x0
0x1007611ac:  f1 03 16 aa   mov	x17, x22
0x1007611b0:  f0 03 15 aa   mov	x16, x21
0x1007611b4:  50 b4 f7 f2   movk	x16, #0xbda2, lsl #0x30
0x1007611b8:  11 0a c1 da   pacda	x17, x16
0x1007611bc:  b1 02 00 f9   str	x17, [x21]
0x1007611c0:  a8 22 00 91   add	x8, x21, #0x8
0x1007611c4:  10 00 00 90   adrp	x16, 0x100761000
0x1007611c8:  10 52 08 91   add	x16, x16, #0x214
0x1007611cc:  f1 03 08 aa   mov	x17, x8
0x1007611d0:  f1 e0 fa f2   movk	x17, #0xd707, lsl #0x30
0x1007611d4:  30 02 c1 da   pacia	x16, x17
0x1007611d8:  b0 06 00 f9   str	x16, [x21, #0x8]
0x1007611dc:  f6 03 15 aa   mov	x22, x21
0x1007611e0:  e0 03 17 aa   mov	x0, x23
0x1007611e4:  e1 03 18 aa   mov	x1, x24
0x1007611e8:  e2 03 19 aa   mov	x2, x25
0x1007611ec:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x1007611f0:  f5 cf 41 a9   ldp	x21, x19, [sp, #0x18]
0x1007611f4:  f8 df 40 a9   ldp	x24, x23, [sp, #0x8]
0x1007611f8:  f9 07 44 f8   ldr	x25, [sp], #0x40
0x1007611fc:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x100761200:  ff 23 03 d5   autibsp
0x100761204:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100761208:  50 00 f0 b6   tbz	x16, #0x3e, loc_100761210 ; ⤵ 0x8
0x10076120c:  20 8e 38 d4   brk	#0xc471
0x100761210:  ; loc_100761210
0x100761210:  00 99 38 14   b	j__$s19FindMyDaemonSupport012ActorServiceC0PAAE03getF0qd__yYaKAA0eF8ProtocolRd__lF

sub_100761214:
0x100761214:  7f 23 03 d5   pacibsp
0x100761218:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x10076121c:  ff 03 04 d1   sub	sp, sp, #0x100
0x100761220:  fc ef 0a a9   stp	x28, x27, [sp, #0xa8]
0x100761224:  fa e7 0b a9   stp	x26, x25, [sp, #0xb8]
0x100761228:  f8 df 0c a9   stp	x24, x23, [sp, #0xc8]
0x10076122c:  f5 cf 0d a9   stp	x21, x19, [sp, #0xd8]
0x100761230:  fd 7b 0f a9   stp	fp, lr, [sp, #0xf0]
0x100761234:  f0 a3 03 91   add	x16, sp, #0xe8
0x100761238:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x10076123c:  f1 03 16 aa   mov	x17, x22
0x100761240:  11 0e c1 da   pacdb	x17, x16
0x100761244:  f1 77 00 f9   str	x17, [sp, #0xe8]
0x100761248:  fd c3 03 91   add	fp, sp, #0xf0
0x10076124c:  f5 03 00 aa   mov	x21, x0
0x100761250:  f1 03 16 aa   mov	x17, x22
0x100761254:  c8 02 40 f9   ldr	x8, [x22]
0x100761258:  f0 03 08 aa   mov	x16, x8
0x10076125c:  51 b4 f7 f2   movk	x17, #0xbda2, lsl #0x30
0x100761260:  30 1a c1 da   autda	x16, x17
0x100761264:  f1 03 10 aa   mov	x17, x16
0x100761268:  f1 47 c1 da   xpacd	x17
0x10076126c:  1f 02 11 eb   cmp	x16, x17
0x100761270:  40 00 00 54   b.eq	loc_100761278 ; ⤵ 0x8
0x100761274:  40 8e 38 d4   brk	#0xc472
0x100761278:  ; loc_100761278
0x100761278:  f3 03 10 aa   mov	x19, x16
0x10076127c:  a9 23 00 d1   sub	x9, fp, #0x8
0x100761280:  b0 23 00 d1   sub	x16, fp, #0x8
0x100761284:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x100761288:  f1 03 13 aa   mov	x17, x19
0x10076128c:  11 0a c1 da   pacda	x17, x16

