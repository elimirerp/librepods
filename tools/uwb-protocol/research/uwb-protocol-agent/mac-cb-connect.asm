
-[CBCentralManager connectPeripheral:options:]:
0x1999adbb4:  7f 23 03 d5   pacibsp
0x1999adbb8:  ff 03 02 d1   sub	sp, sp, #0x80
0x1999adbbc:  f8 5f 04 a9   stp	x24, x23, [sp, #0x40]
0x1999adbc0:  f6 57 05 a9   stp	x22, x21, [sp, #0x50]
0x1999adbc4:  f4 4f 06 a9   stp	x20, x19, [sp, #0x60]
0x1999adbc8:  fd 7b 07 a9   stp	fp, lr, [sp, #0x70]
0x1999adbcc:  fd c3 01 91   add	fp, sp, #0x70
0x1999adbd0:  f4 03 03 aa   mov	x20, x3
0x1999adbd4:  f3 03 02 aa   mov	x19, x2
0x1999adbd8:  f6 03 01 aa   mov	x22, x1
0x1999adbdc:  f5 03 00 aa   mov	x21, x0
0x1999adbe0:  e0 03 02 aa   mov	x0, x2
0x1999adbe4:  41 b3 02 94   bl	0x199a5a8e8
0x1999adbe8:  e0 03 14 aa   mov	x0, x20
0x1999adbec:  3f b3 02 94   bl	0x199a5a8e8
0x1999adbf0:  42 f0 2a d0   adrp	x2, 0x1ef7b7000
0x1999adbf4:  42 00 23 91   add	x2, x2, #0x8c0 ; "kCBConnectOptionAutoReconnect"
0x1999adbf8:  e0 03 14 aa   mov	x0, x20
0x1999adbfc:  61 e4 03 94   bl	_objc_msgSend$valueForKey:
0x1999adc00:  fd 03 1d aa   mov	fp, fp
0x1999adc04:  41 b3 02 94   bl	0x199a5a908
0x1999adc08:  f7 03 00 aa   mov	x23, x0
0x1999adc0c:  33 b3 02 94   bl	0x199a5a8d8
0x1999adc10:  77 03 00 b4   cbz	x23, loc_1999adc7c ; ⤵ 0x6c
0x1999adc14:  08 1c 28 f0   adrp	x8, 0x1e9d30000
0x1999adc18:  08 2d 84 b9   ldrsw	x8, [x8, #0x42c] ; OBJC_IVAR_$_CBCentralManager._delegateFlags
0x1999adc1c:  a8 6a 68 b8   ldr	w8, [x21, x8]
0x1999adc20:  e8 02 28 37   tbnz	w8, #0x5, loc_1999adc7c ; ⤵ 0x5c
0x1999adc24:  48 09 18 36   tbz	w8, #0x3, loc_1999add4c ; ⤵ 0x128
0x1999adc28:  28 d8 25 90   adrp	x8, 0x1e54b1000
0x1999adc2c:  00 e5 44 f9   ldr	x0, [x8, #0x9c8]
0x1999adc30:  42 f1 2a 90   adrp	x2, 0x1ef7d5000
0x1999adc34:  42 e0 03 91   add	x2, x2, #0xf8
0x1999adc38:  72 c7 03 94   bl	_objc_msgSend$errorWithInfo:
0x1999adc3c:  fd 03 1d aa   mov	fp, fp
0x1999adc40:  32 b3 02 94   bl	0x199a5a908
0x1999adc44:  f6 03 00 aa   mov	x22, x0
0x1999adc48:  08 1c 28 f0   adrp	x8, 0x1e9d30000
0x1999adc4c:  08 39 84 b9   ldrsw	x8, [x8, #0x438] ; OBJC_IVAR_$_CBCentralManager._delegate
0x1999adc50:  a0 02 08 8b   add	x0, x21, x8
0x1999adc54:  05 b3 02 94   bl	0x199a5a868
0x1999adc58:  f7 03 00 aa   mov	x23, x0
0x1999adc5c:  e2 03 15 aa   mov	x2, x21
0x1999adc60:  e3 03 13 aa   mov	x3, x19
0x1999adc64:  e4 03 16 aa   mov	x4, x22
0x1999adc68:  6e c2 03 94   bl	_objc_msgSend$centralManager:didFailToConnectPeripheral:error:
0x1999adc6c:  e0 03 17 aa   mov	x0, x23
0x1999adc70:  1a b3 02 94   bl	0x199a5a8d8
0x1999adc74:  e0 03 16 aa   mov	x0, x22
0x1999adc78:  34 00 00 14   b	loc_1999add48 ; ⤵ 0xd0
0x1999adc7c:  ; loc_1999adc7c
0x1999adc7c:  d3 07 00 b4   cbz	x19, loc_1999add74 ; ⤵ 0xf8
0x1999adc80:  ; loc_1999adc80
0x1999adc80:  e8 23 00 91   add	x8, sp, #0x8
0x1999adc84:  b0 db 25 b0   adrp	x16, 0x1e5522000
0x1999adc88:  10 ae 41 f9   ldr	x16, [x16, #0x358]
0x1999adc8c:  f1 03 08 aa   mov	x17, x8
0x1999adc90:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x1999adc94:  30 0a c1 da   pacda	x16, x17
0x1999adc98:  f0 07 00 f9   str	x16, [sp, #0x8]
0x1999adc9c:  a9 05 00 f0   adrp	x9, 0x199a64000
0x1999adca0:  20 a1 44 fd   ldr	d0, [x9, #0x940]
0x1999adca4:  e0 0b 00 fd   str	d0, [sp, #0x10]
0x1999adca8:  08 41 00 91   add	x8, x8, #0x10
0x1999adcac:  10 00 00 90   adrp	x16, 0x1999ad000
0x1999adcb0:  10 12 36 91   add	x16, x16, #0xd84 ; ___46-[CBCentralManager connectPeripheral:options:]_block_invoke
0x1999adcb4:  10 01 c1 da   pacia	x16, x8
0x1999adcb8:  48 f0 2a 90   adrp	x8, 0x1ef7b5000
0x1999adcbc:  08 c1 1c 91   add	x8, x8, #0x730 ; ___block_descriptor_56_e8_32s40s48s_e5_v8?0l
0x1999adcc0:  f0 a3 01 a9   stp	x16, x8, [sp, #0x18]
0x1999adcc4:  f5 17 00 f9   str	x21, [sp, #0x28]
0x1999adcc8:  e0 03 13 aa   mov	x0, x19
0x1999adccc:  07 b3 02 94   bl	0x199a5a8e8
0x1999adcd0:  f3 1b 00 f9   str	x19, [sp, #0x30]
0x1999adcd4:  e0 03 14 aa   mov	x0, x20
0x1999adcd8:  04 b3 02 94   bl	0x199a5a8e8
0x1999adcdc:  f4 1f 00 f9   str	x20, [sp, #0x38]
0x1999adce0:  e0 23 00 91   add	x0, sp, #0x8
0x1999adce4:  0d b3 02 94   bl	0x199a5a918
0x1999adce8:  f6 03 00 aa   mov	x22, x0
0x1999adcec:  42 f0 2a d0   adrp	x2, 0x1ef7b7000
0x1999adcf0:  42 00 24 91   add	x2, x2, #0x900 ; "kCBConnectOptionUseWHB"
0x1999adcf4:  e0 03 14 aa   mov	x0, x20
0x1999adcf8:  22 e4 03 94   bl	_objc_msgSend$valueForKey:
0x1999adcfc:  fd 03 1d aa   mov	fp, fp
0x1999add00:  02 b3 02 94   bl	0x199a5a908
0x1999add04:  f7 03 00 aa   mov	x23, x0
0x1999add08:  f4 b2 02 94   bl	0x199a5a8d8
0x1999add0c:  d7 00 00 b4   cbz	x23, loc_1999add24 ; ⤵ 0x18
0x1999add10:  e0 03 15 aa   mov	x0, x21
0x1999add14:  e2 03 13 aa   mov	x2, x19
0x1999add18:  e3 03 16 aa   mov	x3, x22
0x1999add1c:  29 c4 03 94   bl	_objc_msgSend$connectWhbCBPeripheral:withCompletion:
0x1999add20:  05 00 00 14   b	loc_1999add34 ; ⤵ 0x14
0x1999add24:  ; loc_1999add24
0x1999add24:  e8 03 16 aa   mov	x8, x22
0x1999add28:  09 0d 41 f8   ldr	x9, [x8, #0x10]!
0x1999add2c:  e0 03 16 aa   mov	x0, x22
0x1999add30:  28 09 3f d7   blraa	x9, x8
0x1999add34:  ; loc_1999add34
0x1999add34:  e0 03 16 aa   mov	x0, x22
0x1999add38:  e8 b2 02 94   bl	0x199a5a8d8
0x1999add3c:  e0 1f 40 f9   ldr	x0, [sp, #0x38]
0x1999add40:  e6 b2 02 94   bl	0x199a5a8d8
0x1999add44:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x1999add48:  ; loc_1999add48
0x1999add48:  e4 b2 02 94   bl	0x199a5a8d8
0x1999add4c:  ; loc_1999add4c
0x1999add4c:  e0 03 14 aa   mov	x0, x20
0x1999add50:  e2 b2 02 94   bl	0x199a5a8d8
0x1999add54:  e0 03 13 aa   mov	x0, x19
0x1999add58:  e0 b2 02 94   bl	0x199a5a8d8
0x1999add5c:  fd 7b 47 a9   ldp	fp, lr, [sp, #0x70]
0x1999add60:  f4 4f 46 a9   ldp	x20, x19, [sp, #0x60]
0x1999add64:  f6 57 45 a9   ldp	x22, x21, [sp, #0x50]
0x1999add68:  f8 5f 44 a9   ldp	x24, x23, [sp, #0x40]
0x1999add6c:  ff 03 02 91   add	sp, sp, #0x80
0x1999add70:  ff 0f 5f d6   retab
0x1999add74:  ; loc_1999add74
0x1999add74:  e0 03 16 aa   mov	x0, x22
0x1999add78:  e1 03 15 aa   mov	x1, x21
0x1999add7c:  9e 6a 02 94   bl	-[CBCentralManager connectPeripheral:options:].cold.1
0x1999add80:  c0 ff ff 17   b	loc_1999adc80 ; ⤴ -0x100

___46-[CBCentralManager connectPeripheral:options:]_block_invoke:
0x1999add84:  7f 23 03 d5   pacibsp
0x1999add88:  ff 83 01 d1   sub	sp, sp, #0x60
0x1999add8c:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x1999add90:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x1999add94:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x1999add98:  fd 43 01 91   add	fp, sp, #0x50
0x1999add9c:  f3 03 00 aa   mov	x19, x0
0x1999adda0:  a8 db 25 b0   adrp	x8, 0x1e5522000
0x1999adda4:  08 bd 41 f9   ldr	x8, [x8, #0x378]
0x1999adda8:  08 01 40 f9   ldr	x8, [x8]
0x1999addac:  e8 17 00 f9   str	x8, [sp, #0x28]
0x1999addb0:  48 f0 2a b0   adrp	x8, 0x1ef7b6000
0x1999addb4:  08 01 2a 91   add	x8, x8, #0xa80 ; "kCBMsgArgDeviceUUID"
0x1999addb8:  e8 07 00 f9   str	x8, [sp, #0x8]
0x1999addbc:  14 00 42 a9   ldp	x20, x0, [x0, #0x20]
0x1999addc0:  60 ca 03 94   bl	_objc_msgSend$identifier
0x1999addc4:  fd 03 1d aa   mov	fp, fp
0x1999addc8:  d0 b2 02 94   bl	0x199a5a908
0x1999addcc:  f5 03 00 aa   mov	x21, x0
0x1999addd0:  48 f0 2a d0   adrp	x8, 0x1ef7b7000
0x1999addd4:  08 01 17 91   add	x8, x8, #0x5c0 ; "kCBMsgArgOptions"
0x1999addd8:  e8 0b 00 f9   str	x8, [sp, #0x10]
0x1999adddc:  68 1a 40 f9   ldr	x8, [x19, #0x30]
0x1999adde0:  a9 d7 25 f0   adrp	x9, 0x1e54a4000
0x1999adde4:  29 e9 44 f9   ldr	x9, [x9, #0x9d0]
0x1999adde8:  1f 01 00 f1   cmp	x8, #0
0x1999addec:  28 01 88 9a   csel	x8, x9, x8, eq
0x1999addf0:  e0 a3 01 a9   stp	x0, x8, [sp, #0x18]
0x1999addf4:  a8 d7 25 f0   adrp	x8, 0x1e54a4000
0x1999addf8:  00 c9 43 f9   ldr	x0, [x8, #0x790]
0x1999addfc:  e2 63 00 91   add	x2, sp, #0x18
0x1999ade00:  e3 23 00 91   add	x3, sp, #0x8
0x1999ade04:  44 00 80 52   mov	w4, #0x2
0x1999ade08:  96 c5 03 94   bl	_objc_msgSend$dictionaryWithObjects:forKeys:count:
0x1999ade0c:  fd 03 1d aa   mov	fp, fp
0x1999ade10:  be b2 02 94   bl	0x199a5a908
0x1999ade14:  f6 03 00 aa   mov	x22, x0
0x1999ade18:  e0 03 14 aa   mov	x0, x20
0x1999ade1c:  e2 09 80 52   mov	w2, #0x4f
0x1999ade20:  e3 03 16 aa   mov	x3, x22
0x1999ade24:  af d6 03 94   bl	_objc_msgSend$sendMsg:args:
0x1999ade28:  f4 03 00 aa   mov	x20, x0
0x1999ade2c:  e0 03 16 aa   mov	x0, x22
0x1999ade30:  aa b2 02 94   bl	0x199a5a8d8
0x1999ade34:  e0 03 15 aa   mov	x0, x21
0x1999ade38:  a8 b2 02 94   bl	0x199a5a8d8
0x1999ade3c:  34 01 00 34   cbz	w20, loc_1999ade60 ; ⤵ 0x24
0x1999ade40:  60 16 40 f9   ldr	x0, [x19, #0x28]
0x1999ade44:  f7 e1 03 94   bl	_objc_msgSend$state
0x1999ade48:  1f 0c 00 f1   cmp	x0, #0x3
0x1999ade4c:  40 00 00 54   b.eq	loc_1999ade54 ; ⤵ 0x8
0x1999ade50:  80 00 00 b5   cbnz	x0, loc_1999ade60 ; ⤵ 0x10
0x1999ade54:  ; loc_1999ade54
0x1999ade54:  60 16 40 f9   ldr	x0, [x19, #0x28]
0x1999ade58:  22 00 80 52   mov	w2, #0x1
0x1999ade5c:  09 e0 03 94   bl	_objc_msgSend$setState:
0x1999ade60:  ; loc_1999ade60
0x1999ade60:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x1999ade64:  a9 db 25 b0   adrp	x9, 0x1e5522000
0x1999ade68:  29 bd 41 f9   ldr	x9, [x9, #0x378]
0x1999ade6c:  29 01 40 f9   ldr	x9, [x9]
0x1999ade70:  3f 01 08 eb   cmp	x9, x8
0x1999ade74:  c1 00 00 54   b.ne	loc_1999ade8c ; ⤵ 0x18
0x1999ade78:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x1999ade7c:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x1999ade80:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x1999ade84:  ff 83 01 91   add	sp, sp, #0x60
0x1999ade88:  ff 0f 5f d6   retab
0x1999ade8c:  ; loc_1999ade8c
0x1999ade8c:  93 b1 02 94   bl	0x199a5a4d8

___copy_helper_block_e8_32s40s48s:
0x1999ade90:  7f 23 03 d5   pacibsp
0x1999ade94:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x1999ade98:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]
0x1999ade9c:  fd 43 00 91   add	fp, sp, #0x10
0x1999adea0:  f3 03 01 aa   mov	x19, x1
0x1999adea4:  20 10 40 f9   ldr	x0, [x1, #0x20]
0x1999adea8:  90 b2 02 94   bl	0x199a5a8e8
0x1999adeac:  60 16 40 f9   ldr	x0, [x19, #0x28]
0x1999adeb0:  8e b2 02 94   bl	0x199a5a8e8
0x1999adeb4:  60 1a 40 f9   ldr	x0, [x19, #0x30]
0x1999adeb8:  fd 7b 41 a9   ldp	fp, lr, [sp, #0x10]
0x1999adebc:  f4 4f c2 a8   ldp	x20, x19, [sp], #0x20
0x1999adec0:  ff 23 03 d5   autibsp
0x1999adec4:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1999adec8:  50 00 f0 b6   tbz	x16, #0x3e, loc_1999aded0 ; ⤵ 0x8
0x1999adecc:  20 8e 38 d4   brk	#0xc471
0x1999aded0:  ; loc_1999aded0
0x1999aded0:  86 b2 02 14   b	0x199a5a8e8

-[CBCentralManager enableMrc:options:]:
0x1999aded4:  7f 23 03 d5   pacibsp
0x1999aded8:  ff c3 01 d1   sub	sp, sp, #0x70
0x1999adedc:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x1999adee0:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x1999adee4:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x1999adee8:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x1999adeec:  fd 83 01 91   add	fp, sp, #0x60
0x1999adef0:  f4 03 03 aa   mov	x20, x3
0x1999adef4:  f3 03 02 aa   mov	x19, x2
0x1999adef8:  f6 03 01 aa   mov	x22, x1
0x1999adefc:  f5 03 00 aa   mov	x21, x0
0x1999adf00:  a8 db 25 b0   adrp	x8, 0x1e5522000
0x1999adf04:  08 bd 41 f9   ldr	x8, [x8, #0x378]
0x1999adf08:  08 01 40 f9   ldr	x8, [x8]
0x1999adf0c:  e8 17 00 f9   str	x8, [sp, #0x28]
0x1999adf10:  e0 03 02 aa   mov	x0, x2
0x1999adf14:  75 b2 02 94   bl	0x199a5a8e8
0x1999adf18:  e0 03 14 aa   mov	x0, x20
0x1999adf1c:  73 b2 02 94   bl	0x199a5a8e8
0x1999adf20:  53 06 00 b4   cbz	x19, loc_1999adfe8 ; ⤵ 0xc8
0x1999adf24:  ; loc_1999adf24
0x1999adf24:  48 f0 2a b0   adrp	x8, 0x1ef7b6000
0x1999adf28:  08 01 2a 91   add	x8, x8, #0xa80 ; "kCBMsgArgDeviceUUID"
0x1999adf2c:  e8 07 00 f9   str	x8, [sp, #0x8]
0x1999adf30:  e0 03 13 aa   mov	x0, x19
0x1999adf34:  03 ca 03 94   bl	_objc_msgSend$identifier
0x1999adf38:  fd 03 1d aa   mov	fp, fp
0x1999adf3c:  73 b2 02 94   bl	0x199a5a908
0x1999adf40:  f6 03 00 aa   mov	x22, x0
0x1999adf44:  48 f0 2a d0   adrp	x8, 0x1ef7b7000
0x1999adf48:  08 01 17 91   add	x8, x8, #0x5c0 ; "kCBMsgArgOptions"
0x1999adf4c:  e8 0b 00 f9   str	x8, [sp, #0x10]
0x1999adf50:  a8 d7 25 f0   adrp	x8, 0x1e54a4000
0x1999adf54:  08 e9 44 f9   ldr	x8, [x8, #0x9d0]
0x1999adf58:  9f 02 00 f1   cmp	x20, #0
0x1999adf5c:  08 01 94 9a   csel	x8, x8, x20, eq
0x1999adf60:  e0 a3 01 a9   stp	x0, x8, [sp, #0x18]
0x1999adf64:  a8 d7 25 f0   adrp	x8, 0x1e54a4000
0x1999adf68:  00 c9 43 f9   ldr	x0, [x8, #0x790]
0x1999adf6c:  e2 63 00 91   add	x2, sp, #0x18
0x1999adf70:  e3 23 00 91   add	x3, sp, #0x8
0x1999adf74:  44 00 80 52   mov	w4, #0x2
0x1999adf78:  3a c5 03 94   bl	_objc_msgSend$dictionaryWithObjects:forKeys:count:
0x1999adf7c:  fd 03 1d aa   mov	fp, fp
0x1999adf80:  62 b2 02 94   bl	0x199a5a908
0x1999adf84:  f7 03 00 aa   mov	x23, x0
0x1999adf88:  e0 03 15 aa   mov	x0, x21
0x1999adf8c:  02 1d 80 52   mov	w2, #0xe8
0x1999adf90:  e3 03 17 aa   mov	x3, x23
0x1999adf94:  53 d6 03 94   bl	_objc_msgSend$sendMsg:args:
0x1999adf98:  e0 03 17 aa   mov	x0, x23
0x1999adf9c:  4f b2 02 94   bl	0x199a5a8d8
0x1999adfa0:  e0 03 16 aa   mov	x0, x22
0x1999adfa4:  4d b2 02 94   bl	0x199a5a8d8
0x1999adfa8:  e0 03 14 aa   mov	x0, x20
0x1999adfac:  4b b2 02 94   bl	0x199a5a8d8
0x1999adfb0:  e0 03 13 aa   mov	x0, x19
0x1999adfb4:  49 b2 02 94   bl	0x199a5a8d8
0x1999adfb8:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x1999adfbc:  a9 db 25 b0   adrp	x9, 0x1e5522000
0x1999adfc0:  29 bd 41 f9   ldr	x9, [x9, #0x378]
0x1999adfc4:  29 01 40 f9   ldr	x9, [x9]
0x1999adfc8:  3f 01 08 eb   cmp	x9, x8
0x1999adfcc:  61 01 00 54   b.ne	loc_1999adff8 ; ⤵ 0x2c
0x1999adfd0:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x1999adfd4:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x1999adfd8:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x1999adfdc:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x1999adfe0:  ff c3 01 91   add	sp, sp, #0x70
0x1999adfe4:  ff 0f 5f d6   retab
0x1999adfe8:  ; loc_1999adfe8
0x1999adfe8:  e0 03 16 aa   mov	x0, x22
0x1999adfec:  e1 03 15 aa   mov	x1, x21
0x1999adff0:  18 6a 02 94   bl	-[CBCentralManager enableMrc:options:].cold.1
0x1999adff4:  cc ff ff 17   b	loc_1999adf24 ; ⤴ -0xd0
0x1999adff8:  ; loc_1999adff8
0x1999adff8:  38 b1 02 94   bl	0x199a5a4d8

-[CBCentralManager retrieveWhbCBPeripheralWithInfo:]:
0x1999adffc:  7f 23 03 d5   pacibsp
0x1999ae000:  ff 43 02 d1   sub	sp, sp, #0x90
0x1999ae004:  fc 6f 03 a9   stp	x28, x27, [sp, #0x30]
0x1999ae008:  fa 67 04 a9   stp	x26, x25, [sp, #0x40]
0x1999ae00c:  f8 5f 05 a9   stp	x24, x23, [sp, #0x50]
0x1999ae010:  f6 57 06 a9   stp	x22, x21, [sp, #0x60]
0x1999ae014:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x1999ae018:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x1999ae01c:  fd 03 02 91   add	fp, sp, #0x80
0x1999ae020:  f3 03 02 aa   mov	x19, x2
0x1999ae024:  fa 03 00 aa   mov	x26, x0
0x1999ae028:  a8 db 25 90   adrp	x8, 0x1e5522000
0x1999ae02c:  08 bd 41 f9   ldr	x8, [x8, #0x378]
0x1999ae030:  08 01 40 f9   ldr	x8, [x8]
0x1999ae034:  e8 17 00 f9   str	x8, [sp, #0x28]
0x1999ae038:  e0 03 02 aa   mov	x0, x2
0x1999ae03c:  2b b2 02 94   bl	0x199a5a8e8
0x1999ae040:  42 f0 2a 90   adrp	x2, 0x1ef7b6000
0x1999ae044:  42 00 2a 91   add	x2, x2, #0xa80 ; "kCBMsgArgDeviceUUID"
0x1999ae048:  e0 03 13 aa   mov	x0, x19
0x1999ae04c:  8d d0 03 94   bl	_objc_msgSend$objectForKeyedSubscript:
0x1999ae050:  fd 03 1d aa   mov	fp, fp
0x1999ae054:  2d b2 02 94   bl	0x199a5a908
0x1999ae058:  f4 03 00 aa   mov	x20, x0
0x1999ae05c:  57 f0 2a b0   adrp	x23, 0x1ef7b7000
0x1999ae060:  f7 82 24 91   add	x23, x23, #0x920 ; "kCBMsgArgWhbStableIdentifier"

