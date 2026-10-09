
-[CBPeripheral discoverServices:]:
0x1999de9d8:  7f 23 03 d5   pacibsp
0x1999de9dc:  ff 03 01 d1   sub	sp, sp, #0x40
0x1999de9e0:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x1999de9e4:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x1999de9e8:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x1999de9ec:  fd c3 00 91   add	fp, sp, #0x30
0x1999de9f0:  f3 03 02 aa   mov	x19, x2
0x1999de9f4:  f4 03 00 aa   mov	x20, x0
0x1999de9f8:  e0 03 02 aa   mov	x0, x2
0x1999de9fc:  bb ef 01 94   bl	0x199a5a8e8
0x1999dea00:  88 1a 28 d0   adrp	x8, 0x1e9d30000
0x1999dea04:  08 ed 88 b9   ldrsw	x8, [x8, #0x8ec] ; OBJC_IVAR_$_CBPeripheral._delegateFlags
0x1999dea08:  88 6a 68 38   ldrb	w8, [x20, x8]
0x1999dea0c:  a8 01 20 37   tbnz	w8, #0x4, loc_1999dea40 ; ⤵ 0x34
0x1999dea10:  28 50 29 b0   adrp	x8, 0x1ec3e3000
0x1999dea14:  08 41 3e 91   add	x8, x8, #0xf90 ; _CBLogInitOnce
0x1999dea18:  08 01 40 f9   ldr	x8, [x8]
0x1999dea1c:  1f 05 00 b1   cmn	x8, #0x1
0x1999dea20:  c1 04 00 54   b.ne	loc_1999deab8 ; ⤵ 0x98
0x1999dea24:  ; loc_1999dea24
0x1999dea24:  28 50 29 b0   adrp	x8, 0x1ec3e3000
0x1999dea28:  08 61 3e 91   add	x8, x8, #0xf98 ; _CBLogComponent
0x1999dea2c:  15 01 40 f9   ldr	x21, [x8]
0x1999dea30:  e0 03 15 aa   mov	x0, x21
0x1999dea34:  01 02 80 52   mov	w1, #0x10
0x1999dea38:  f8 ef 01 94   bl	0x199a5aa18
0x1999dea3c:  60 03 00 35   cbnz	w0, loc_1999deaa8 ; ⤵ 0x6c
0x1999dea40:  ; loc_1999dea40
0x1999dea40:  28 d6 25 d0   adrp	x8, 0x1e54a4000
0x1999dea44:  00 09 44 f9   ldr	x0, [x8, #0x810]
0x1999dea48:  28 d6 25 d0   adrp	x8, 0x1e54a4000
0x1999dea4c:  08 d9 44 f9   ldr	x8, [x8, #0x9b0]
0x1999dea50:  7f 02 00 f1   cmp	x19, #0
0x1999dea54:  02 01 93 9a   csel	x2, x8, x19, eq
0x1999dea58:  c8 ee 2a b0   adrp	x8, 0x1ef7b7000
0x1999dea5c:  08 01 1d 91   add	x8, x8, #0x740 ; "kCBMsgArgUUIDs"
0x1999dea60:  e8 7f 00 a9   stp	x8, xzr, [sp]
0x1999dea64:  87 02 03 94   bl	_objc_msgSend$dictionaryWithObjectsAndKeys:
0x1999dea68:  fd 03 1d aa   mov	fp, fp
0x1999dea6c:  a7 ef 01 94   bl	0x199a5a908
0x1999dea70:  f5 03 00 aa   mov	x21, x0
0x1999dea74:  e0 03 14 aa   mov	x0, x20
0x1999dea78:  62 17 80 52   mov	w2, #0xbb
0x1999dea7c:  e3 03 15 aa   mov	x3, x21
0x1999dea80:  98 13 03 94   bl	_objc_msgSend$sendMsg:args:
0x1999dea84:  e0 03 15 aa   mov	x0, x21
0x1999dea88:  94 ef 01 94   bl	0x199a5a8d8
0x1999dea8c:  e0 03 13 aa   mov	x0, x19
0x1999dea90:  92 ef 01 94   bl	0x199a5a8d8
0x1999dea94:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x1999dea98:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x1999dea9c:  f6 57 41 a9   ldp	x22, x21, [sp, #0x10]
0x1999deaa0:  ff 03 01 91   add	sp, sp, #0x40
0x1999deaa4:  ff 0f 5f d6   retab
0x1999deaa8:  ; loc_1999deaa8
0x1999deaa8:  e0 03 14 aa   mov	x0, x20
0x1999deaac:  e1 03 15 aa   mov	x1, x21
0x1999deab0:  c0 bd 01 94   bl	-[CBPeripheral discoverServices:].cold.2
0x1999deab4:  e3 ff ff 17   b	loc_1999dea40 ; ⤴ -0x74
0x1999deab8:  ; loc_1999deab8
0x1999deab8:  d0 a4 01 94   bl	-[CBClassicPeer dealloc].cold.1
0x1999deabc:  da ff ff 17   b	loc_1999dea24 ; ⤴ -0x98

-[CBPeripheral discoverIncludedServices:forService:]:
0x1999deac0:  7f 23 03 d5   pacibsp
0x1999deac4:  ff 03 02 d1   sub	sp, sp, #0x80
0x1999deac8:  fa 67 03 a9   stp	x26, x25, [sp, #0x30]
0x1999deacc:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x1999dead0:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x1999dead4:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x1999dead8:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x1999deadc:  fd c3 01 91   add	fp, sp, #0x70
0x1999deae0:  f4 03 03 aa   mov	x20, x3
0x1999deae4:  f3 03 02 aa   mov	x19, x2
0x1999deae8:  f6 03 01 aa   mov	x22, x1
0x1999deaec:  f5 03 00 aa   mov	x21, x0
0x1999deaf0:  e0 03 02 aa   mov	x0, x2
0x1999deaf4:  7d ef 01 94   bl	0x199a5a8e8
0x1999deaf8:  e0 03 14 aa   mov	x0, x20
0x1999deafc:  7b ef 01 94   bl	0x199a5a8e8
0x1999deb00:  54 0b 00 b4   cbz	x20, loc_1999dec68 ; ⤵ 0x168
0x1999deb04:  ; loc_1999deb04
0x1999deb04:  88 1a 28 d0   adrp	x8, 0x1e9d30000
0x1999deb08:  08 ed 88 b9   ldrsw	x8, [x8, #0x8ec] ; OBJC_IVAR_$_CBPeripheral._delegateFlags
0x1999deb0c:  a8 6a 68 38   ldrb	w8, [x21, x8]
0x1999deb10:  38 50 29 b0   adrp	x24, 0x1ec3e3000
0x1999deb14:  18 43 3e 91   add	x24, x24, #0xf90 ; _CBLogInitOnce
0x1999deb18:  37 50 29 b0   adrp	x23, 0x1ec3e3000
0x1999deb1c:  f7 62 3e 91   add	x23, x23, #0xf98 ; _CBLogComponent
0x1999deb20:  28 01 28 37   tbnz	w8, #0x5, loc_1999deb44 ; ⤵ 0x24
0x1999deb24:  08 03 40 f9   ldr	x8, [x24]
0x1999deb28:  1f 05 00 b1   cmn	x8, #0x1
0x1999deb2c:  41 0b 00 54   b.ne	loc_1999dec94 ; ⤵ 0x168
0x1999deb30:  f6 02 40 f9   ldr	x22, [x23]
0x1999deb34:  e0 03 16 aa   mov	x0, x22
0x1999deb38:  01 02 80 52   mov	w1, #0x10
0x1999deb3c:  b7 ef 01 94   bl	0x199a5aa18
0x1999deb40:  60 0b 00 35   cbnz	w0, loc_1999decac ; ⤵ 0x16c
0x1999deb44:  ; loc_1999deb44
0x1999deb44:  e0 03 14 aa   mov	x0, x20
0x1999deb48:  f6 0e 03 94   bl	_objc_msgSend$peripheral
0x1999deb4c:  fd 03 1d aa   mov	fp, fp
0x1999deb50:  6e ef 01 94   bl	0x199a5a908
0x1999deb54:  f6 03 00 aa   mov	x22, x0
0x1999deb58:  60 ef 01 94   bl	0x199a5a8d8
0x1999deb5c:  df 02 15 eb   cmp	x22, x21
0x1999deb60:  c0 01 00 54   b.eq	loc_1999deb98 ; ⤵ 0x38
0x1999deb64:  08 03 40 f9   ldr	x8, [x24]
0x1999deb68:  1f 05 00 b1   cmn	x8, #0x1
0x1999deb6c:  61 08 00 54   b.ne	loc_1999dec78 ; ⤵ 0x10c
0x1999deb70:  f6 02 40 f9   ldr	x22, [x23]
0x1999deb74:  e0 03 16 aa   mov	x0, x22
0x1999deb78:  01 02 80 52   mov	w1, #0x10
0x1999deb7c:  a7 ef 01 94   bl	0x199a5aa18
0x1999deb80:  e0 05 00 34   cbz	w0, loc_1999dec3c ; ⤵ 0xbc
0x1999deb84:  ; loc_1999deb84
0x1999deb84:  e0 03 14 aa   mov	x0, x20
0x1999deb88:  e1 03 15 aa   mov	x1, x21
0x1999deb8c:  e2 03 16 aa   mov	x2, x22
0x1999deb90:  c4 bd 01 94   bl	-[CBPeripheral discoverIncludedServices:forService:].cold.5
0x1999deb94:  2a 00 00 14   b	loc_1999dec3c ; ⤵ 0xa8
0x1999deb98:  ; loc_1999deb98
0x1999deb98:  28 d6 25 d0   adrp	x8, 0x1e54a4000
0x1999deb9c:  16 09 44 f9   ldr	x22, [x8, #0x810]
0x1999deba0:  28 d6 25 d0   adrp	x8, 0x1e54a4000
0x1999deba4:  08 d9 44 f9   ldr	x8, [x8, #0x9b0]
0x1999deba8:  7f 02 00 f1   cmp	x19, #0
0x1999debac:  17 01 93 9a   csel	x23, x8, x19, eq
0x1999debb0:  e0 03 14 aa   mov	x0, x20
0x1999debb4:  8b 1e 03 94   bl	_objc_msgSend$startHandle
0x1999debb8:  fd 03 1d aa   mov	fp, fp
0x1999debbc:  53 ef 01 94   bl	0x199a5a908
0x1999debc0:  f8 03 00 aa   mov	x24, x0
0x1999debc4:  e0 03 14 aa   mov	x0, x20
0x1999debc8:  4e 03 03 94   bl	_objc_msgSend$endHandle
0x1999debcc:  fd 03 1d aa   mov	fp, fp
0x1999debd0:  4e ef 01 94   bl	0x199a5a908
0x1999debd4:  f9 03 00 aa   mov	x25, x0
0x1999debd8:  c8 ee 2a f0   adrp	x8, 0x1ef7b9000
0x1999debdc:  08 81 26 91   add	x8, x8, #0x9a0 ; "kCBMsgArgServiceEndHandle"
0x1999debe0:  e8 7f 02 a9   stp	x8, xzr, [sp, #0x20]
0x1999debe4:  c8 ee 2a f0   adrp	x8, 0x1ef7b9000
0x1999debe8:  08 01 26 91   add	x8, x8, #0x980 ; "kCBMsgArgServiceStartHandle"
0x1999debec:  e8 03 01 a9   stp	x8, x0, [sp, #0x10]
0x1999debf0:  c8 ee 2a b0   adrp	x8, 0x1ef7b7000
0x1999debf4:  08 01 1d 91   add	x8, x8, #0x740 ; "kCBMsgArgUUIDs"
0x1999debf8:  e8 63 00 a9   stp	x8, x24, [sp]
0x1999debfc:  e0 03 16 aa   mov	x0, x22
0x1999dec00:  e2 03 17 aa   mov	x2, x23
0x1999dec04:  1f 02 03 94   bl	_objc_msgSend$dictionaryWithObjectsAndKeys:
0x1999dec08:  fd 03 1d aa   mov	fp, fp
0x1999dec0c:  3f ef 01 94   bl	0x199a5a908
0x1999dec10:  f6 03 00 aa   mov	x22, x0
0x1999dec14:  e0 03 15 aa   mov	x0, x21
0x1999dec18:  e2 18 80 52   mov	w2, #0xc7
0x1999dec1c:  e3 03 16 aa   mov	x3, x22
0x1999dec20:  30 13 03 94   bl	_objc_msgSend$sendMsg:args:
0x1999dec24:  e0 03 16 aa   mov	x0, x22
0x1999dec28:  2c ef 01 94   bl	0x199a5a8d8
0x1999dec2c:  e0 03 19 aa   mov	x0, x25
0x1999dec30:  2a ef 01 94   bl	0x199a5a8d8
0x1999dec34:  e0 03 18 aa   mov	x0, x24
0x1999dec38:  28 ef 01 94   bl	0x199a5a8d8
0x1999dec3c:  ; loc_1999dec3c
0x1999dec3c:  e0 03 14 aa   mov	x0, x20
0x1999dec40:  26 ef 01 94   bl	0x199a5a8d8
0x1999dec44:  e0 03 13 aa   mov	x0, x19
0x1999dec48:  24 ef 01 94   bl	0x199a5a8d8
0x1999dec4c:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x1999dec50:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x1999dec54:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x1999dec58:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x1999dec5c:  fa 67 43 a9   ldp	x26, x25, [sp, #0x30]
0x1999dec60:  ff 03 02 91   add	sp, sp, #0x80
0x1999dec64:  ff 0f 5f d6   retab
0x1999dec68:  ; loc_1999dec68
0x1999dec68:  e0 03 16 aa   mov	x0, x22
0x1999dec6c:  e1 03 15 aa   mov	x1, x21
0x1999dec70:  61 bd 01 94   bl	-[CBPeripheral discoverIncludedServices:forService:].cold.1
0x1999dec74:  a4 ff ff 17   b	loc_1999deb04 ; ⤴ -0x170
0x1999dec78:  ; loc_1999dec78
0x1999dec78:  c7 a4 01 94   bl	-[CBClassicPeer handlePeerUpdated:].cold.3
0x1999dec7c:  f6 02 40 f9   ldr	x22, [x23]
0x1999dec80:  e0 03 16 aa   mov	x0, x22
0x1999dec84:  01 02 80 52   mov	w1, #0x10
0x1999dec88:  64 ef 01 94   bl	0x199a5aa18
0x1999dec8c:  80 fd ff 34   cbz	w0, loc_1999dec3c ; ⤴ -0x50
0x1999dec90:  bd ff ff 17   b	loc_1999deb84 ; ⤴ -0x10c
0x1999dec94:  ; loc_1999dec94
0x1999dec94:  59 a4 01 94   bl	-[CBClassicPeer dealloc].cold.1
0x1999dec98:  f6 02 40 f9   ldr	x22, [x23]
0x1999dec9c:  e0 03 16 aa   mov	x0, x22
0x1999deca0:  01 02 80 52   mov	w1, #0x10
0x1999deca4:  5d ef 01 94   bl	0x199a5aa18
0x1999deca8:  e0 f4 ff 34   cbz	w0, loc_1999deb44 ; ⤴ -0x164
0x1999decac:  ; loc_1999decac
0x1999decac:  e0 03 15 aa   mov	x0, x21
0x1999decb0:  e1 03 16 aa   mov	x1, x22
0x1999decb4:  6a bd 01 94   bl	-[CBPeripheral discoverIncludedServices:forService:].cold.3
0x1999decb8:  a3 ff ff 17   b	loc_1999deb44 ; ⤴ -0x174

-[CBPeripheral discoverCharacteristics:forService:]:
0x1999decbc:  7f 23 03 d5   pacibsp
0x1999decc0:  ff 03 02 d1   sub	sp, sp, #0x80
0x1999decc4:  fa 67 03 a9   stp	x26, x25, [sp, #0x30]
0x1999decc8:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x1999deccc:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]

