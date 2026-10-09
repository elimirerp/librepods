
-[CBCentralManager retrievePeripheralWithAddress:]:
0x1999b5878:  7f 23 03 d5   pacibsp
0x1999b587c:  ff 83 01 d1   sub	sp, sp, #0x60
0x1999b5880:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x1999b5884:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x1999b5888:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x1999b588c:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x1999b5890:  fd 43 01 91   add	fp, sp, #0x50
0x1999b5894:  f3 03 02 aa   mov	x19, x2
0x1999b5898:  f4 03 00 aa   mov	x20, x0
0x1999b589c:  68 db 25 b0   adrp	x8, 0x1e5522000
0x1999b58a0:  08 bd 41 f9   ldr	x8, [x8, #0x378]
0x1999b58a4:  08 01 40 f9   ldr	x8, [x8]
0x1999b58a8:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x1999b58ac:  e0 03 02 aa   mov	x0, x2
0x1999b58b0:  0e 94 02 94   bl	0x199a5a8e8
0x1999b58b4:  e0 03 13 aa   mov	x0, x19
0x1999b58b8:  4a af 03 94   bl	_objc_msgSend$length
0x1999b58bc:  00 07 00 b4   cbz	x0, loc_1999b599c ; ⤵ 0xe0
0x1999b58c0:  08 f0 2a d0   adrp	x8, 0x1ef7b7000
0x1999b58c4:  08 01 10 91   add	x8, x8, #0x400 ; "kCBMsgArgAddressString"
0x1999b58c8:  e8 07 00 f9   str	x8, [sp, #0x8]
0x1999b58cc:  e8 d7 25 90   adrp	x8, 0x1e54b1000
0x1999b58d0:  00 6d 44 f9   ldr	x0, [x8, #0x8d8]
0x1999b58d4:  5b c5 03 94   bl	_objc_msgSend$whitespaceCharacterSet
0x1999b58d8:  fd 03 1d aa   mov	fp, fp
0x1999b58dc:  0b 94 02 94   bl	0x199a5a908
0x1999b58e0:  f6 03 00 aa   mov	x22, x0
0x1999b58e4:  e0 03 13 aa   mov	x0, x19
0x1999b58e8:  e2 03 16 aa   mov	x2, x22
0x1999b58ec:  75 c3 03 94   bl	_objc_msgSend$stringByTrimmingCharactersInSet:
0x1999b58f0:  fd 03 1d aa   mov	fp, fp
0x1999b58f4:  05 94 02 94   bl	0x199a5a908
0x1999b58f8:  f7 03 00 aa   mov	x23, x0
0x1999b58fc:  e0 0b 00 f9   str	x0, [sp, #0x10]
0x1999b5900:  68 d7 25 f0   adrp	x8, 0x1e54a4000
0x1999b5904:  00 c9 43 f9   ldr	x0, [x8, #0x790]
0x1999b5908:  e2 43 00 91   add	x2, sp, #0x10
0x1999b590c:  e3 23 00 91   add	x3, sp, #0x8
0x1999b5910:  24 00 80 52   mov	w4, #0x1
0x1999b5914:  d3 a6 03 94   bl	_objc_msgSend$dictionaryWithObjects:forKeys:count:
0x1999b5918:  fd 03 1d aa   mov	fp, fp
0x1999b591c:  fb 93 02 94   bl	0x199a5a908
0x1999b5920:  f8 03 00 aa   mov	x24, x0
0x1999b5924:  e0 03 14 aa   mov	x0, x20
0x1999b5928:  22 0a 80 52   mov	w2, #0x51
0x1999b592c:  e3 03 18 aa   mov	x3, x24
0x1999b5930:  0c b8 03 94   bl	_objc_msgSend$sendSyncMsg:args:
0x1999b5934:  fd 03 1d aa   mov	fp, fp
0x1999b5938:  f4 93 02 94   bl	0x199a5a908
0x1999b593c:  f5 03 00 aa   mov	x21, x0
0x1999b5940:  e0 03 18 aa   mov	x0, x24
0x1999b5944:  e5 93 02 94   bl	0x199a5a8d8
0x1999b5948:  e0 03 17 aa   mov	x0, x23
0x1999b594c:  e3 93 02 94   bl	0x199a5a8d8
0x1999b5950:  e0 03 16 aa   mov	x0, x22
0x1999b5954:  e1 93 02 94   bl	0x199a5a8d8
0x1999b5958:  02 f0 2a d0   adrp	x2, 0x1ef7b7000
0x1999b595c:  42 80 1d 91   add	x2, x2, #0x760 ; "kCBMsgArgDevices"
0x1999b5960:  e0 03 15 aa   mov	x0, x21
0x1999b5964:  47 b2 03 94   bl	_objc_msgSend$objectForKeyedSubscript:
0x1999b5968:  fd 03 1d aa   mov	fp, fp
0x1999b596c:  e7 93 02 94   bl	0x199a5a908
0x1999b5970:  f6 03 00 aa   mov	x22, x0
0x1999b5974:  00 03 00 b4   cbz	x0, loc_1999b59d4 ; ⤵ 0x60
0x1999b5978:  e0 03 14 aa   mov	x0, x20
0x1999b597c:  e2 03 16 aa   mov	x2, x22
0x1999b5980:  80 b4 03 94   bl	_objc_msgSend$peripheralWithInfo:
0x1999b5984:  fd 03 1d aa   mov	fp, fp
0x1999b5988:  e0 93 02 94   bl	0x199a5a908
0x1999b598c:  f4 03 00 aa   mov	x20, x0
0x1999b5990:  e2 03 13 aa   mov	x2, x19
0x1999b5994:  63 b9 03 94   bl	_objc_msgSend$setBDAddress:
0x1999b5998:  10 00 00 14   b	loc_1999b59d8 ; ⤵ 0x40
0x1999b599c:  ; loc_1999b599c
0x1999b599c:  68 51 29 d0   adrp	x8, 0x1ec3e3000
0x1999b59a0:  08 41 3e 91   add	x8, x8, #0xf90 ; _CBLogInitOnce
0x1999b59a4:  08 01 40 f9   ldr	x8, [x8]
0x1999b59a8:  1f 05 00 b1   cmn	x8, #0x1
0x1999b59ac:  a1 04 00 54   b.ne	loc_1999b5a40 ; ⤵ 0x94
0x1999b59b0:  ; loc_1999b59b0
0x1999b59b0:  68 51 29 d0   adrp	x8, 0x1ec3e3000
0x1999b59b4:  08 61 3e 91   add	x8, x8, #0xf98 ; _CBLogComponent
0x1999b59b8:  14 01 40 f9   ldr	x20, [x8]
0x1999b59bc:  e0 03 14 aa   mov	x0, x20
0x1999b59c0:  01 02 80 52   mov	w1, #0x10
0x1999b59c4:  15 94 02 94   bl	0x199a5aa18
0x1999b59c8:  60 03 00 35   cbnz	w0, loc_1999b5a34 ; ⤵ 0x6c
0x1999b59cc:  ; loc_1999b59cc
0x1999b59cc:  14 00 80 d2   mov	x20, #0
0x1999b59d0:  06 00 00 14   b	loc_1999b59e8 ; ⤵ 0x18
0x1999b59d4:  ; loc_1999b59d4
0x1999b59d4:  14 00 80 d2   mov	x20, #0
0x1999b59d8:  ; loc_1999b59d8
0x1999b59d8:  e0 03 16 aa   mov	x0, x22
0x1999b59dc:  bf 93 02 94   bl	0x199a5a8d8
0x1999b59e0:  e0 03 15 aa   mov	x0, x21
0x1999b59e4:  bd 93 02 94   bl	0x199a5a8d8
0x1999b59e8:  ; loc_1999b59e8
0x1999b59e8:  e0 03 13 aa   mov	x0, x19
0x1999b59ec:  bb 93 02 94   bl	0x199a5a8d8
0x1999b59f0:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x1999b59f4:  69 db 25 b0   adrp	x9, 0x1e5522000
0x1999b59f8:  29 bd 41 f9   ldr	x9, [x9, #0x378]
0x1999b59fc:  29 01 40 f9   ldr	x9, [x9]
0x1999b5a00:  3f 01 08 eb   cmp	x9, x8
0x1999b5a04:  21 02 00 54   b.ne	loc_1999b5a48 ; ⤵ 0x44
0x1999b5a08:  e0 03 14 aa   mov	x0, x20
0x1999b5a0c:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x1999b5a10:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x1999b5a14:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x1999b5a18:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x1999b5a1c:  ff 83 01 91   add	sp, sp, #0x60
0x1999b5a20:  ff 23 03 d5   autibsp
0x1999b5a24:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x1999b5a28:  50 00 f0 b6   tbz	x16, #0x3e, loc_1999b5a30 ; ⤵ 0x8
0x1999b5a2c:  20 8e 38 d4   brk	#0xc471
0x1999b5a30:  ; loc_1999b5a30
0x1999b5a30:  72 93 02 14   b	0x199a5a7f8
0x1999b5a34:  ; loc_1999b5a34
0x1999b5a34:  e0 03 14 aa   mov	x0, x20
0x1999b5a38:  49 4e 02 94   bl	-[CBCentralManager retrievePeripheralWithAddress:].cold.2
0x1999b5a3c:  e4 ff ff 17   b	loc_1999b59cc ; ⤴ -0x70
0x1999b5a40:  ; loc_1999b5a40
0x1999b5a40:  ee 48 02 94   bl	-[CBClassicPeer dealloc].cold.1
0x1999b5a44:  db ff ff 17   b	loc_1999b59b0 ; ⤴ -0x94
0x1999b5a48:  ; loc_1999b5a48
0x1999b5a48:  a4 92 02 94   bl	0x199a5a4d8

-[CBCentralManager addIRKwithBTAddress:irk:]:
0x1999b5a4c:  7f 23 03 d5   pacibsp
0x1999b5a50:  ff 83 01 d1   sub	sp, sp, #0x60
0x1999b5a54:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x1999b5a58:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x1999b5a5c:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x1999b5a60:  fd 43 01 91   add	fp, sp, #0x50
0x1999b5a64:  f3 03 03 aa   mov	x19, x3
0x1999b5a68:  f4 03 02 aa   mov	x20, x2
0x1999b5a6c:  f5 03 00 aa   mov	x21, x0
0x1999b5a70:  68 db 25 b0   adrp	x8, 0x1e5522000
0x1999b5a74:  08 bd 41 f9   ldr	x8, [x8, #0x378]
0x1999b5a78:  08 01 40 f9   ldr	x8, [x8]
0x1999b5a7c:  e8 17 00 f9   str	x8, [sp, #0x28]
0x1999b5a80:  08 f0 2a d0   adrp	x8, 0x1ef7b7000
0x1999b5a84:  08 01 3d 91   add	x8, x8, #0xf40 ; "kCBSetIRKForAddressPublicAddress"
0x1999b5a88:  69 d7 25 f0   adrp	x9, 0x1e54a4000
0x1999b5a8c:  29 d9 44 f9   ldr	x9, [x9, #0x9b0]
0x1999b5a90:  5f 00 00 f1   cmp	x2, #0
0x1999b5a94:  29 01 82 9a   csel	x9, x9, x2, eq
0x1999b5a98:  0a f0 2a d0   adrp	x10, 0x1ef7b7000
0x1999b5a9c:  4a 81 3d 91   add	x10, x10, #0xf60 ; "kCBSetIRKForAddressIRK"
0x1999b5aa0:  e8 ab 00 a9   stp	x8, x10, [sp, #0x8]
0x1999b5aa4:  68 d7 25 f0   adrp	x8, 0x1e54a4000
0x1999b5aa8:  08 e9 44 f9   ldr	x8, [x8, #0x9d0]
0x1999b5aac:  7f 00 00 f1   cmp	x3, #0
0x1999b5ab0:  08 01 83 9a   csel	x8, x8, x3, eq
0x1999b5ab4:  e9 a3 01 a9   stp	x9, x8, [sp, #0x18]
0x1999b5ab8:  68 d7 25 f0   adrp	x8, 0x1e54a4000
0x1999b5abc:  16 c9 43 f9   ldr	x22, [x8, #0x790]
0x1999b5ac0:  e0 03 03 aa   mov	x0, x3
0x1999b5ac4:  89 93 02 94   bl	0x199a5a8e8
0x1999b5ac8:  e0 03 14 aa   mov	x0, x20
0x1999b5acc:  87 93 02 94   bl	0x199a5a8e8
0x1999b5ad0:  e2 63 00 91   add	x2, sp, #0x18
0x1999b5ad4:  e3 23 00 91   add	x3, sp, #0x8
0x1999b5ad8:  e0 03 16 aa   mov	x0, x22
0x1999b5adc:  44 00 80 52   mov	w4, #0x2
0x1999b5ae0:  60 a6 03 94   bl	_objc_msgSend$dictionaryWithObjects:forKeys:count:
0x1999b5ae4:  fd 03 1d aa   mov	fp, fp
0x1999b5ae8:  88 93 02 94   bl	0x199a5a908
0x1999b5aec:  f6 03 00 aa   mov	x22, x0
0x1999b5af0:  e0 03 13 aa   mov	x0, x19
0x1999b5af4:  79 93 02 94   bl	0x199a5a8d8
0x1999b5af8:  e0 03 14 aa   mov	x0, x20
0x1999b5afc:  77 93 02 94   bl	0x199a5a8d8
0x1999b5b00:  e0 03 15 aa   mov	x0, x21
0x1999b5b04:  22 11 80 52   mov	w2, #0x89
0x1999b5b08:  e3 03 16 aa   mov	x3, x22
0x1999b5b0c:  75 b7 03 94   bl	_objc_msgSend$sendMsg:args:
0x1999b5b10:  e0 03 16 aa   mov	x0, x22
0x1999b5b14:  71 93 02 94   bl	0x199a5a8d8
0x1999b5b18:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x1999b5b1c:  69 db 25 b0   adrp	x9, 0x1e5522000
0x1999b5b20:  29 bd 41 f9   ldr	x9, [x9, #0x378]
0x1999b5b24:  29 01 40 f9   ldr	x9, [x9]
0x1999b5b28:  3f 01 08 eb   cmp	x9, x8
0x1999b5b2c:  c1 00 00 54   b.ne	loc_1999b5b44 ; ⤵ 0x18
0x1999b5b30:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x1999b5b34:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x1999b5b38:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x1999b5b3c:  ff 83 01 91   add	sp, sp, #0x60
0x1999b5b40:  ff 0f 5f d6   retab
0x1999b5b44:  ; loc_1999b5b44
0x1999b5b44:  65 92 02 94   bl	0x199a5a4d8

-[CBCentralManager removeIRKwithBTAddress:]:
0x1999b5b48:  7f 23 03 d5   pacibsp
0x1999b5b4c:  ff 43 01 d1   sub	sp, sp, #0x50
0x1999b5b50:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x1999b5b54:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x1999b5b58:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x1999b5b5c:  fd 03 01 91   add	fp, sp, #0x40
0x1999b5b60:  f3 03 02 aa   mov	x19, x2
0x1999b5b64:  f4 03 00 aa   mov	x20, x0
0x1999b5b68:  68 db 25 b0   adrp	x8, 0x1e5522000
0x1999b5b6c:  08 bd 41 f9   ldr	x8, [x8, #0x378]
0x1999b5b70:  08 01 40 f9   ldr	x8, [x8]
0x1999b5b74:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x1999b5b78:  08 f0 2a d0   adrp	x8, 0x1ef7b7000
0x1999b5b7c:  0a 01 3d 91   add	x10, x8, #0xf40 ; "kCBSetIRKForAddressPublicAddress"
0x1999b5b80:  69 d7 25 f0   adrp	x9, 0x1e54a4000
0x1999b5b84:  29 d9 44 f9   ldr	x9, [x9, #0x9b0]
0x1999b5b88:  5f 00 00 f1   cmp	x2, #0
0x1999b5b8c:  28 01 82 9a   csel	x8, x9, x2, eq
0x1999b5b90:  ea a3 00 a9   stp	x10, x8, [sp, #0x8]
0x1999b5b94:  68 d7 25 f0   adrp	x8, 0x1e54a4000
0x1999b5b98:  15 c9 43 f9   ldr	x21, [x8, #0x790]
0x1999b5b9c:  e0 03 02 aa   mov	x0, x2
0x1999b5ba0:  52 93 02 94   bl	0x199a5a8e8
0x1999b5ba4:  e2 43 00 91   add	x2, sp, #0x10
0x1999b5ba8:  e3 23 00 91   add	x3, sp, #0x8
0x1999b5bac:  e0 03 15 aa   mov	x0, x21
0x1999b5bb0:  24 00 80 52   mov	w4, #0x1
0x1999b5bb4:  2b a6 03 94   bl	_objc_msgSend$dictionaryWithObjects:forKeys:count:
0x1999b5bb8:  fd 03 1d aa   mov	fp, fp
0x1999b5bbc:  53 93 02 94   bl	0x199a5a908
0x1999b5bc0:  f5 03 00 aa   mov	x21, x0
0x1999b5bc4:  e0 03 13 aa   mov	x0, x19
0x1999b5bc8:  44 93 02 94   bl	0x199a5a8d8
0x1999b5bcc:  e0 03 14 aa   mov	x0, x20
0x1999b5bd0:  42 11 80 52   mov	w2, #0x8a
0x1999b5bd4:  e3 03 15 aa   mov	x3, x21
0x1999b5bd8:  42 b7 03 94   bl	_objc_msgSend$sendMsg:args:
0x1999b5bdc:  e0 03 15 aa   mov	x0, x21
0x1999b5be0:  3e 93 02 94   bl	0x199a5a8d8
0x1999b5be4:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x1999b5be8:  69 db 25 b0   adrp	x9, 0x1e5522000
0x1999b5bec:  29 bd 41 f9   ldr	x9, [x9, #0x378]
0x1999b5bf0:  29 01 40 f9   ldr	x9, [x9]
0x1999b5bf4:  3f 01 08 eb   cmp	x9, x8
0x1999b5bf8:  c1 00 00 54   b.ne	loc_1999b5c10 ; ⤵ 0x18
0x1999b5bfc:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x1999b5c00:  f4 4f 43 a9   ldp	x20, x19, [sp, #0x30]
0x1999b5c04:  f6 57 42 a9   ldp	x22, x21, [sp, #0x20]
0x1999b5c08:  ff 43 01 91   add	sp, sp, #0x50
0x1999b5c0c:  ff 0f 5f d6   retab
0x1999b5c10:  ; loc_1999b5c10
0x1999b5c10:  32 92 02 94   bl	0x199a5a4d8

-[CBCentralManager deleteDevice:]:
0x1999b5c14:  7f 23 03 d5   pacibsp
0x1999b5c18:  ff 43 01 d1   sub	sp, sp, #0x50
0x1999b5c1c:  f6 57 02 a9   stp	x22, x21, [sp, #0x20]
0x1999b5c20:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x1999b5c24:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x1999b5c28:  fd 03 01 91   add	fp, sp, #0x40
0x1999b5c2c:  f3 03 02 aa   mov	x19, x2
0x1999b5c30:  f4 03 00 aa   mov	x20, x0
0x1999b5c34:  68 db 25 b0   adrp	x8, 0x1e5522000
0x1999b5c38:  08 bd 41 f9   ldr	x8, [x8, #0x378]
0x1999b5c3c:  08 01 40 f9   ldr	x8, [x8]
0x1999b5c40:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x1999b5c44:  08 f0 2a b0   adrp	x8, 0x1ef7b6000
0x1999b5c48:  08 01 2a 91   add	x8, x8, #0xa80 ; "kCBMsgArgDeviceUUID"
0x1999b5c4c:  e8 8b 00 a9   stp	x8, x2, [sp, #0x8]
0x1999b5c50:  68 d7 25 f0   adrp	x8, 0x1e54a4000
0x1999b5c54:  15 c9 43 f9   ldr	x21, [x8, #0x790]
0x1999b5c58:  e0 03 02 aa   mov	x0, x2
0x1999b5c5c:  23 93 02 94   bl	0x199a5a8e8
0x1999b5c60:  e2 43 00 91   add	x2, sp, #0x10
0x1999b5c64:  e3 23 00 91   add	x3, sp, #0x8
0x1999b5c68:  e0 03 15 aa   mov	x0, x21
0x1999b5c6c:  24 00 80 52   mov	w4, #0x1
0x1999b5c70:  fc a5 03 94   bl	_objc_msgSend$dictionaryWithObjects:forKeys:count:
0x1999b5c74:  fd 03 1d aa   mov	fp, fp
0x1999b5c78:  24 93 02 94   bl	0x199a5a908
0x1999b5c7c:  f5 03 00 aa   mov	x21, x0
0x1999b5c80:  e0 03 14 aa   mov	x0, x20
0x1999b5c84:  62 11 80 52   mov	w2, #0x8b
0x1999b5c88:  e3 03 15 aa   mov	x3, x21
0x1999b5c8c:  15 b7 03 94   bl	_objc_msgSend$sendMsg:args:
0x1999b5c90:  e0 03 15 aa   mov	x0, x21
0x1999b5c94:  11 93 02 94   bl	0x199a5a8d8
0x1999b5c98:  c8 1b 28 f0   adrp	x8, 0x1e9d30000
0x1999b5c9c:  15 21 84 b9   ldrsw	x21, [x8, #0x420] ; OBJC_IVAR_$_CBCentralManager.peripheralsMutex
0x1999b5ca0:  80 02 15 8b   add	x0, x20, x21
0x1999b5ca4:  71 93 02 94   bl	0x199a5aa68
0x1999b5ca8:  c8 1b 28 f0   adrp	x8, 0x1e9d30000
0x1999b5cac:  08 25 84 b9   ldrsw	x8, [x8, #0x424] ; OBJC_IVAR_$_CBCentralManager._peripherals
0x1999b5cb0:  80 6a 68 f8   ldr	x0, [x20, x8]
0x1999b5cb4:  e2 03 13 aa   mov	x2, x19
0x1999b5cb8:  82 b5 03 94   bl	_objc_msgSend$removeObjectForKey:
0x1999b5cbc:  e0 03 13 aa   mov	x0, x19
0x1999b5cc0:  06 93 02 94   bl	0x199a5a8d8
0x1999b5cc4:  80 02 15 8b   add	x0, x20, x21
0x1999b5cc8:  6c 93 02 94   bl	0x199a5aa78
0x1999b5ccc:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x1999b5cd0:  69 db 25 b0   adrp	x9, 0x1e5522000
0x1999b5cd4:  29 bd 41 f9   ldr	x9, [x9, #0x378]

