
-[CBCentralManager createPeripheralWithAddress:andIdentifier:]:
0x1999b5cfc:  7f 23 03 d5   pacibsp
0x1999b5d00:  f8 5f bc a9   stp	x24, x23, [sp, #-0x40]!
0x1999b5d04:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x1999b5d08:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x1999b5d0c:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x1999b5d10:  fd c3 00 91   add	fp, sp, #0x30
0x1999b5d14:  f3 03 03 aa   mov	x19, x3
0x1999b5d18:  f6 03 02 aa   mov	x22, x2
0x1999b5d1c:  f5 03 00 aa   mov	x21, x0
0x1999b5d20:  e0 03 03 aa   mov	x0, x3
0x1999b5d24:  f1 92 02 94   bl	0x199a5a8e8
0x1999b5d28:  68 d7 25 f0   adrp	x8, 0x1e54a4000
0x1999b5d2c:  14 09 44 f9   ldr	x20, [x8, #0x810]
0x1999b5d30:  e0 03 16 aa   mov	x0, x22
0x1999b5d34:  ed 92 02 94   bl	0x199a5a8e8
0x1999b5d38:  e0 03 14 aa   mov	x0, x20
0x1999b5d3c:  a1 a5 03 94   bl	_objc_msgSend$dictionary
0x1999b5d40:  fd 03 1d aa   mov	fp, fp
0x1999b5d44:  f1 92 02 94   bl	0x199a5a908
0x1999b5d48:  f4 03 00 aa   mov	x20, x0
0x1999b5d4c:  03 f0 2a d0   adrp	x3, 0x1ef7b7000
0x1999b5d50:  63 00 3e 91   add	x3, x3, #0xf80 ; "kCBAdvOptionInstanceRandomAddressBytes"
0x1999b5d54:  e2 03 16 aa   mov	x2, x22
0x1999b5d58:  ba bd 03 94   bl	_objc_msgSend$setObject:forKeyedSubscript:
0x1999b5d5c:  e0 03 16 aa   mov	x0, x22
0x1999b5d60:  de 92 02 94   bl	0x199a5a8d8
0x1999b5d64:  d3 00 00 b4   cbz	x19, loc_1999b5d7c ; ⤵ 0x18
0x1999b5d68:  03 f0 2a b0   adrp	x3, 0x1ef7b6000
0x1999b5d6c:  63 00 2a 91   add	x3, x3, #0xa80 ; "kCBMsgArgDeviceUUID"
0x1999b5d70:  e0 03 14 aa   mov	x0, x20
0x1999b5d74:  e2 03 13 aa   mov	x2, x19
0x1999b5d78:  b2 bd 03 94   bl	_objc_msgSend$setObject:forKeyedSubscript:
0x1999b5d7c:  ; loc_1999b5d7c
0x1999b5d7c:  e0 03 15 aa   mov	x0, x21
0x1999b5d80:  42 0a 80 52   mov	w2, #0x52
0x1999b5d84:  e3 03 14 aa   mov	x3, x20
0x1999b5d88:  f6 b6 03 94   bl	_objc_msgSend$sendSyncMsg:args:
0x1999b5d8c:  fd 03 1d aa   mov	fp, fp
0x1999b5d90:  de 92 02 94   bl	0x199a5a908
0x1999b5d94:  f6 03 00 aa   mov	x22, x0
0x1999b5d98:  02 f0 2a d0   adrp	x2, 0x1ef7b7000
0x1999b5d9c:  42 80 1d 91   add	x2, x2, #0x760 ; "kCBMsgArgDevices"
0x1999b5da0:  38 b1 03 94   bl	_objc_msgSend$objectForKeyedSubscript:
0x1999b5da4:  fd 03 1d aa   mov	fp, fp
0x1999b5da8:  d8 92 02 94   bl	0x199a5a908
0x1999b5dac:  f7 03 00 aa   mov	x23, x0
0x1999b5db0:  00 01 00 b4   cbz	x0, loc_1999b5dd0 ; ⤵ 0x20
0x1999b5db4:  e0 03 15 aa   mov	x0, x21
0x1999b5db8:  e2 03 17 aa   mov	x2, x23
0x1999b5dbc:  71 b3 03 94   bl	_objc_msgSend$peripheralWithInfo:
0x1999b5dc0:  fd 03 1d aa   mov	fp, fp
0x1999b5dc4:  d1 92 02 94   bl	0x199a5a908
0x1999b5dc8:  f5 03 00 aa   mov	x21, x0
0x1999b5dcc:  02 00 00 14   b	loc_1999b5dd4 ; ⤵ 0x8
0x1999b5dd0:  ; loc_1999b5dd0
0x1999b5dd0:  15 00 80 d2   mov	x21, #0
0x1999b5dd4:  ; loc_1999b5dd4
0x1999b5dd4:  e0 03 17 aa   mov	x0, x23
0x1999b5dd8:  c0 92 02 94   bl	0x199a5a8d8
0x1999b5ddc:  e0 03 16 aa   mov	x0, x22
0x1999b5de0:  be 92 02 94   bl	0x199a5a8d8
0x1999b5de4:  e0 03 14 aa   mov	x0, x20
0x1999b5de8:  bc 92 02 94   bl	0x199a5a8d8
0x1999b5dec:  e0 03 13 aa   mov	x0, x19
0x1999b5df0:  ba 92 02 94   bl	0x199a5a8d8
0x1999b5df4:  e0 03 15 aa   mov	x0, x21
0x1999b5df8:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x1999b5dfc:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x1999b5e00:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x1999b5e04:  f8 5f c4 a8   ldp	x24, x23, [sp], #0x40
0x1999b5e08:  ff 23 03 d5   autibsp
0x1999b5e0c:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1999b5e10:  50 00 f0 b6   tbz	x16, #0x3e, loc_1999b5e18 ; ⤵ 0x8
0x1999b5e14:  20 8e 38 d4   brk	#0xc471
0x1999b5e18:  ; loc_1999b5e18
0x1999b5e18:  78 92 02 14   b	0x199a5a7f8

-[CBCentralManager createPeripheralFromIdentifier:completion:]:
0x1999b5e1c:  7f 23 03 d5   pacibsp
0x1999b5e20:  ff 83 01 d1   sub	sp, sp, #0x60
0x1999b5e24:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x1999b5e28:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x1999b5e2c:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x1999b5e30:  fd 43 01 91   add	fp, sp, #0x50
0x1999b5e34:  f3 03 03 aa   mov	x19, x3
0x1999b5e38:  f4 03 02 aa   mov	x20, x2
0x1999b5e3c:  f5 03 00 aa   mov	x21, x0
0x1999b5e40:  e0 03 03 aa   mov	x0, x3
0x1999b5e44:  a9 92 02 94   bl	0x199a5a8e8
0x1999b5e48:  68 d7 25 f0   adrp	x8, 0x1e54a4000
0x1999b5e4c:  16 09 44 f9   ldr	x22, [x8, #0x810]
0x1999b5e50:  e0 03 14 aa   mov	x0, x20
0x1999b5e54:  a5 92 02 94   bl	0x199a5a8e8
0x1999b5e58:  e0 03 16 aa   mov	x0, x22
0x1999b5e5c:  59 a5 03 94   bl	_objc_msgSend$dictionary
0x1999b5e60:  fd 03 1d aa   mov	fp, fp
0x1999b5e64:  a9 92 02 94   bl	0x199a5a908
0x1999b5e68:  f6 03 00 aa   mov	x22, x0
0x1999b5e6c:  03 f0 2a b0   adrp	x3, 0x1ef7b6000
0x1999b5e70:  63 00 2a 91   add	x3, x3, #0xa80 ; "kCBMsgArgDeviceUUID"
0x1999b5e74:  e2 03 14 aa   mov	x2, x20
0x1999b5e78:  72 bd 03 94   bl	_objc_msgSend$setObject:forKeyedSubscript:
0x1999b5e7c:  e0 03 14 aa   mov	x0, x20
0x1999b5e80:  96 92 02 94   bl	0x199a5a8d8
0x1999b5e84:  e8 03 00 91   mov	x8, sp
0x1999b5e88:  70 db 25 b0   adrp	x16, 0x1e5522000
0x1999b5e8c:  10 ae 41 f9   ldr	x16, [x16, #0x358]
0x1999b5e90:  f1 03 08 aa   mov	x17, x8
0x1999b5e94:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x1999b5e98:  30 0a c1 da   pacda	x16, x17
0x1999b5e9c:  f0 03 00 f9   str	x16, [sp]
0x1999b5ea0:  69 05 00 f0   adrp	x9, 0x199a64000
0x1999b5ea4:  20 a1 44 fd   ldr	d0, [x9, #0x940]
0x1999b5ea8:  e0 07 00 fd   str	d0, [sp, #0x8]
0x1999b5eac:  08 41 00 91   add	x8, x8, #0x10
0x1999b5eb0:  09 f0 2a 90   adrp	x9, 0x1ef7b5000
0x1999b5eb4:  29 01 1c 91   add	x9, x9, #0x700 ; ___block_descriptor_48_e8_32s40bs_e34_v24?0"NSDictionary"8"NSError"16l
0x1999b5eb8:  10 00 00 90   adrp	x16, 0x1999b5000
0x1999b5ebc:  10 52 3c 91   add	x16, x16, #0xf14 ; ___62-[CBCentralManager createPeripheralFromIdentifier:completion:]_block_invoke
0x1999b5ec0:  10 01 c1 da   pacia	x16, x8
0x1999b5ec4:  f0 27 01 a9   stp	x16, x9, [sp, #0x10]
0x1999b5ec8:  f5 4f 02 a9   stp	x21, x19, [sp, #0x20]
0x1999b5ecc:  e0 03 13 aa   mov	x0, x19
0x1999b5ed0:  86 92 02 94   bl	0x199a5a8e8
0x1999b5ed4:  e4 03 00 91   mov	x4, sp
0x1999b5ed8:  e0 03 15 aa   mov	x0, x21
0x1999b5edc:  62 0a 80 52   mov	w2, #0x53
0x1999b5ee0:  e3 03 16 aa   mov	x3, x22
0x1999b5ee4:  87 b6 03 94   bl	_objc_msgSend$sendMsg:args:withReply:
0x1999b5ee8:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x1999b5eec:  7b 92 02 94   bl	0x199a5a8d8
0x1999b5ef0:  e0 03 13 aa   mov	x0, x19
0x1999b5ef4:  79 92 02 94   bl	0x199a5a8d8
0x1999b5ef8:  e0 03 16 aa   mov	x0, x22
0x1999b5efc:  77 92 02 94   bl	0x199a5a8d8
0x1999b5f00:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x1999b5f04:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x1999b5f08:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x1999b5f0c:  ff 83 01 91   add	sp, sp, #0x60
0x1999b5f10:  ff 0f 5f d6   retab

___62-[CBCentralManager createPeripheralFromIdentifier:completion:]_block_invoke:
0x1999b5f14:  7f 23 03 d5   pacibsp
0x1999b5f18:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x1999b5f1c:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x1999b5f20:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x1999b5f24:  fd 83 00 91   add	fp, sp, #0x20
0x1999b5f28:  f4 03 00 aa   mov	x20, x0
0x1999b5f2c:  a2 01 00 b4   cbz	x2, loc_1999b5f60 ; ⤵ 0x34
0x1999b5f30:  80 16 40 f9   ldr	x0, [x20, #0x28]
0x1999b5f34:  e2 03 00 aa   mov	x2, x0
0x1999b5f38:  43 0c 41 f8   ldr	x3, [x2, #0x10]!
0x1999b5f3c:  01 00 80 d2   mov	x1, #0
0x1999b5f40:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x1999b5f44:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x1999b5f48:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x1999b5f4c:  ff 23 03 d5   autibsp
0x1999b5f50:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1999b5f54:  50 00 f0 b6   tbz	x16, #0x3e, loc_1999b5f5c ; ⤵ 0x8
0x1999b5f58:  20 8e 38 d4   brk	#0xc471
0x1999b5f5c:  ; loc_1999b5f5c
0x1999b5f5c:  62 08 1f d7   braa	x3, x2
0x1999b5f60:  ; loc_1999b5f60
0x1999b5f60:  02 f0 2a d0   adrp	x2, 0x1ef7b7000
0x1999b5f64:  42 80 1d 91   add	x2, x2, #0x760 ; "kCBMsgArgDevices"
0x1999b5f68:  e0 03 01 aa   mov	x0, x1
0x1999b5f6c:  c5 b0 03 94   bl	_objc_msgSend$objectForKeyedSubscript:
0x1999b5f70:  fd 03 1d aa   mov	fp, fp
0x1999b5f74:  65 92 02 94   bl	0x199a5a908
0x1999b5f78:  f3 03 00 aa   mov	x19, x0
0x1999b5f7c:  00 01 00 b4   cbz	x0, loc_1999b5f9c ; ⤵ 0x20
0x1999b5f80:  80 12 40 f9   ldr	x0, [x20, #0x20]
0x1999b5f84:  e2 03 13 aa   mov	x2, x19
0x1999b5f88:  fe b2 03 94   bl	_objc_msgSend$peripheralWithInfo:
0x1999b5f8c:  fd 03 1d aa   mov	fp, fp
0x1999b5f90:  5e 92 02 94   bl	0x199a5a908
0x1999b5f94:  f5 03 00 aa   mov	x21, x0
0x1999b5f98:  02 00 00 14   b	loc_1999b5fa0 ; ⤵ 0x8
0x1999b5f9c:  ; loc_1999b5f9c
0x1999b5f9c:  15 00 80 d2   mov	x21, #0
0x1999b5fa0:  ; loc_1999b5fa0
0x1999b5fa0:  80 16 40 f9   ldr	x0, [x20, #0x28]
0x1999b5fa4:  e8 03 00 aa   mov	x8, x0
0x1999b5fa8:  09 0d 41 f8   ldr	x9, [x8, #0x10]!
0x1999b5fac:  e1 03 15 aa   mov	x1, x21
0x1999b5fb0:  28 09 3f d7   blraa	x9, x8
0x1999b5fb4:  e0 03 15 aa   mov	x0, x21
0x1999b5fb8:  48 92 02 94   bl	0x199a5a8d8
0x1999b5fbc:  e0 03 13 aa   mov	x0, x19
0x1999b5fc0:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x1999b5fc4:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x1999b5fc8:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x1999b5fcc:  ff 23 03 d5   autibsp
0x1999b5fd0:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1999b5fd4:  50 00 f0 b6   tbz	x16, #0x3e, loc_1999b5fdc ; ⤵ 0x8
0x1999b5fd8:  20 8e 38 d4   brk	#0xc471
0x1999b5fdc:  ; loc_1999b5fdc
0x1999b5fdc:  3f 92 02 14   b	0x199a5a8d8

-[CBCentralManager readLocalFastLeConnectionCachedControllerInfoWithcompletion:]:
0x1999b5fe0:  7f 23 03 d5   pacibsp
0x1999b5fe4:  ff 43 01 d1   sub	sp, sp, #0x50
0x1999b5fe8:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x1999b5fec:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x1999b5ff0:  fd 03 01 91   add	fp, sp, #0x40
0x1999b5ff4:  f3 03 02 aa   mov	x19, x2
0x1999b5ff8:  f4 03 00 aa   mov	x20, x0
0x1999b5ffc:  e0 03 02 aa   mov	x0, x2
0x1999b6000:  3a 92 02 94   bl	0x199a5a8e8
0x1999b6004:  e8 23 00 91   add	x8, sp, #0x8
0x1999b6008:  70 db 25 90   adrp	x16, 0x1e5522000
0x1999b600c:  10 ae 41 f9   ldr	x16, [x16, #0x358]
0x1999b6010:  f1 03 08 aa   mov	x17, x8
0x1999b6014:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x1999b6018:  30 0a c1 da   pacda	x16, x17
0x1999b601c:  f0 07 00 f9   str	x16, [sp, #0x8]
0x1999b6020:  69 05 00 d0   adrp	x9, 0x199a64000
0x1999b6024:  20 a1 44 fd   ldr	d0, [x9, #0x940]
0x1999b6028:  e0 0b 00 fd   str	d0, [sp, #0x10]
0x1999b602c:  08 41 00 91   add	x8, x8, #0x10
0x1999b6030:  10 00 00 90   adrp	x16, 0x1999b6000
0x1999b6034:  10 32 02 91   add	x16, x16, #0x8c ; ___80-[CBCentralManager readLocalFastLeConnectionCachedControllerInfoWithcompletion:]_block_invoke
0x1999b6038:  10 01 c1 da   pacia	x16, x8
0x1999b603c:  e8 ef 2a f0   adrp	x8, 0x1ef7b5000
0x1999b6040:  08 41 1b 91   add	x8, x8, #0x6d0 ; ___block_descriptor_40_e8_32bs_e34_v24?0"NSDictionary"8"NSError"16l
0x1999b6044:  f0 a3 01 a9   stp	x16, x8, [sp, #0x18]
0x1999b6048:  f3 17 00 f9   str	x19, [sp, #0x28]
0x1999b604c:  e0 03 13 aa   mov	x0, x19
0x1999b6050:  26 92 02 94   bl	0x199a5a8e8
0x1999b6054:  63 d7 25 d0   adrp	x3, 0x1e54a4000
0x1999b6058:  63 e8 44 f9   ldr	x3, [x3, #0x9d0]
0x1999b605c:  e4 23 00 91   add	x4, sp, #0x8
0x1999b6060:  e0 03 14 aa   mov	x0, x20
0x1999b6064:  22 0b 80 52   mov	w2, #0x59
0x1999b6068:  26 b6 03 94   bl	_objc_msgSend$sendMsg:args:withReply:
0x1999b606c:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x1999b6070:  1a 92 02 94   bl	0x199a5a8d8
0x1999b6074:  e0 03 13 aa   mov	x0, x19
0x1999b6078:  18 92 02 94   bl	0x199a5a8d8
0x1999b607c:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x1999b6080:  f4 4f 43 a9   ldp	x20, x19, [sp, #0x30]
0x1999b6084:  ff 43 01 91   add	sp, sp, #0x50
0x1999b6088:  ff 0f 5f d6   retab

___80-[CBCentralManager readLocalFastLeConnectionCachedControllerInfoWithcompletion:]_block_invoke:
0x1999b608c:  7f 23 03 d5   pacibsp
0x1999b6090:  f8 5f bc a9   stp	x24, x23, [sp, #-0x40]!
0x1999b6094:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x1999b6098:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x1999b609c:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x1999b60a0:  fd c3 00 91   add	fp, sp, #0x30
0x1999b60a4:  f4 03 02 aa   mov	x20, x2
0x1999b60a8:  f3 03 01 aa   mov	x19, x1
0x1999b60ac:  f5 03 00 aa   mov	x21, x0
0x1999b60b0:  e0 03 01 aa   mov	x0, x1
0x1999b60b4:  0d 92 02 94   bl	0x199a5a8e8
0x1999b60b8:  e0 03 14 aa   mov	x0, x20
0x1999b60bc:  0b 92 02 94   bl	0x199a5a8e8
0x1999b60c0:  b5 12 40 f9   ldr	x21, [x21, #0x20]
0x1999b60c4:  b8 42 00 91   add	x24, x21, #0x10
0x1999b60c8:  74 01 00 b4   cbz	x20, loc_1999b60f4 ; ⤵ 0x2c
0x1999b60cc:  68 d7 25 d0   adrp	x8, 0x1e54a4000
0x1999b60d0:  00 b5 43 f9   ldr	x0, [x8, #0x768]
0x1999b60d4:  f9 91 02 94   bl	0x199a5a8b8
0x1999b60d8:  f6 03 00 aa   mov	x22, x0
0x1999b60dc:  a8 0a 40 f9   ldr	x8, [x21, #0x10]
0x1999b60e0:  e0 03 15 aa   mov	x0, x21
0x1999b60e4:  e1 03 14 aa   mov	x1, x20
0x1999b60e8:  e2 03 16 aa   mov	x2, x22
0x1999b60ec:  18 09 3f d7   blraa	x8, x24
0x1999b60f0:  16 00 00 14   b	loc_1999b6148 ; ⤵ 0x58
0x1999b60f4:  ; loc_1999b60f4
0x1999b60f4:  c8 d7 25 f0   adrp	x8, 0x1e54b1000
0x1999b60f8:  00 e5 44 f9   ldr	x0, [x8, #0x9c8]
0x1999b60fc:  e2 03 13 aa   mov	x2, x19
0x1999b6100:  40 a6 03 94   bl	_objc_msgSend$errorWithInfo:
0x1999b6104:  fd 03 1d aa   mov	fp, fp
0x1999b6108:  00 92 02 94   bl	0x199a5a908
0x1999b610c:  f6 03 00 aa   mov	x22, x0
0x1999b6110:  02 f0 2a b0   adrp	x2, 0x1ef7b7000
0x1999b6114:  42 80 3e 91   add	x2, x2, #0xfa0 ; "kCBFastLeConnectionInfoData"
0x1999b6118:  e0 03 13 aa   mov	x0, x19
0x1999b611c:  59 b0 03 94   bl	_objc_msgSend$objectForKeyedSubscript:
0x1999b6120:  fd 03 1d aa   mov	fp, fp
0x1999b6124:  f9 91 02 94   bl	0x199a5a908
0x1999b6128:  f7 03 00 aa   mov	x23, x0
0x1999b612c:  a8 0a 40 f9   ldr	x8, [x21, #0x10]
0x1999b6130:  e0 03 15 aa   mov	x0, x21
0x1999b6134:  e1 03 16 aa   mov	x1, x22
0x1999b6138:  e2 03 17 aa   mov	x2, x23
0x1999b613c:  18 09 3f d7   blraa	x8, x24
0x1999b6140:  e0 03 17 aa   mov	x0, x23
0x1999b6144:  e5 91 02 94   bl	0x199a5a8d8
0x1999b6148:  ; loc_1999b6148
0x1999b6148:  e0 03 16 aa   mov	x0, x22
0x1999b614c:  e3 91 02 94   bl	0x199a5a8d8
0x1999b6150:  e0 03 14 aa   mov	x0, x20
0x1999b6154:  e1 91 02 94   bl	0x199a5a8d8
0x1999b6158:  e0 03 13 aa   mov	x0, x19
0x1999b615c:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x1999b6160:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x1999b6164:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x1999b6168:  f8 5f c4 a8   ldp	x24, x23, [sp], #0x40
0x1999b616c:  ff 23 03 d5   autibsp
0x1999b6170:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1999b6174:  50 00 f0 b6   tbz	x16, #0x3e, loc_1999b617c ; ⤵ 0x8
0x1999b6178:  20 8e 38 d4   brk	#0xc471
0x1999b617c:  ; loc_1999b617c
0x1999b617c:  d7 91 02 14   b	0x199a5a8d8

-[CBCentralManager handleDidSendBytesToPeripheralwithError:]:
0x1999b6180:  7f 23 03 d5   pacibsp
0x1999b6184:  f8 5f bc a9   stp	x24, x23, [sp, #-0x40]!
0x1999b6188:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x1999b618c:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x1999b6190:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x1999b6194:  fd c3 00 91   add	fp, sp, #0x30
0x1999b6198:  f7 03 02 aa   mov	x23, x2
0x1999b619c:  f4 03 00 aa   mov	x20, x0
0x1999b61a0:  e0 03 02 aa   mov	x0, x2
0x1999b61a4:  d1 91 02 94   bl	0x199a5a8e8
0x1999b61a8:  02 f0 2a 90   adrp	x2, 0x1ef7b6000
0x1999b61ac:  42 00 2a 91   add	x2, x2, #0xa80 ; "kCBMsgArgDeviceUUID"
0x1999b61b0:  e0 03 17 aa   mov	x0, x23
0x1999b61b4:  33 b0 03 94   bl	_objc_msgSend$objectForKeyedSubscript:
0x1999b61b8:  fd 03 1d aa   mov	fp, fp
0x1999b61bc:  d3 91 02 94   bl	0x199a5a908
0x1999b61c0:  f5 03 00 aa   mov	x21, x0
0x1999b61c4:  e0 03 14 aa   mov	x0, x20
0x1999b61c8:  e2 03 15 aa   mov	x2, x21
0x1999b61cc:  65 b2 03 94   bl	_objc_msgSend$peripheralWithIdentifier:
0x1999b61d0:  fd 03 1d aa   mov	fp, fp
0x1999b61d4:  cd 91 02 94   bl	0x199a5a908
0x1999b61d8:  f3 03 00 aa   mov	x19, x0
0x1999b61dc:  e0 03 15 aa   mov	x0, x21
0x1999b61e0:  be 91 02 94   bl	0x199a5a8d8
0x1999b61e4:  02 f0 2a b0   adrp	x2, 0x1ef7b7000
0x1999b61e8:  42 00 3f 91   add	x2, x2, #0xfc0 ; "kCBMsgArgBytesSent"
0x1999b61ec:  e0 03 17 aa   mov	x0, x23
0x1999b61f0:  24 b0 03 94   bl	_objc_msgSend$objectForKeyedSubscript:
0x1999b61f4:  fd 03 1d aa   mov	fp, fp
0x1999b61f8:  c4 91 02 94   bl	0x199a5a908
0x1999b61fc:  f5 03 00 aa   mov	x21, x0
0x1999b6200:  c8 d7 25 f0   adrp	x8, 0x1e54b1000
0x1999b6204:  00 e5 44 f9   ldr	x0, [x8, #0x9c8]
0x1999b6208:  e2 03 17 aa   mov	x2, x23
0x1999b620c:  fd a5 03 94   bl	_objc_msgSend$errorWithInfo:
0x1999b6210:  fd 03 1d aa   mov	fp, fp
0x1999b6214:  bd 91 02 94   bl	0x199a5a908
0x1999b6218:  f6 03 00 aa   mov	x22, x0
0x1999b621c:  e0 03 17 aa   mov	x0, x23
0x1999b6220:  ae 91 02 94   bl	0x199a5a8d8
0x1999b6224:  53 02 00 b4   cbz	x19, loc_1999b626c ; ⤵ 0x48
0x1999b6228:  c8 1b 28 d0   adrp	x8, 0x1e9d30000
0x1999b622c:  08 2d 84 b9   ldrsw	x8, [x8, #0x42c] ; OBJC_IVAR_$_CBCentralManager._delegateFlags
0x1999b6230:  88 02 08 8b   add	x8, x20, x8
0x1999b6234:  08 05 40 39   ldrb	w8, [x8, #0x1]
0x1999b6238:  a8 01 20 36   tbz	w8, #0x4, loc_1999b626c ; ⤵ 0x34
0x1999b623c:  e0 03 14 aa   mov	x0, x20
0x1999b6240:  f0 a3 03 94   bl	_objc_msgSend$delegate
0x1999b6244:  fd 03 1d aa   mov	fp, fp
0x1999b6248:  b0 91 02 94   bl	0x199a5a908
0x1999b624c:  f7 03 00 aa   mov	x23, x0
0x1999b6250:  e2 03 14 aa   mov	x2, x20
0x1999b6254:  e3 03 15 aa   mov	x3, x21
0x1999b6258:  e4 03 13 aa   mov	x4, x19
0x1999b625c:  e5 03 16 aa   mov	x5, x22
0x1999b6260:  30 a1 03 94   bl	_objc_msgSend$centralManager:didSendBytes:toPeripheral:withError:
0x1999b6264:  e0 03 17 aa   mov	x0, x23
0x1999b6268:  9c 91 02 94   bl	0x199a5a8d8
0x1999b626c:  ; loc_1999b626c
0x1999b626c:  e0 03 16 aa   mov	x0, x22
0x1999b6270:  9a 91 02 94   bl	0x199a5a8d8

