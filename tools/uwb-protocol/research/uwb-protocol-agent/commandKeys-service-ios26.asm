
sub_100964994:
0x100964994:  7f 23 03 d5   pacibsp
0x100964998:  fc 6f ba a9   stp	x28, x27, [sp, #-0x60]!
0x10096499c:  fa 67 01 a9   stp	x26, x25, [sp, #0x10]
0x1009649a0:  f8 5f 02 a9   stp	x24, x23, [sp, #0x20]
0x1009649a4:  f6 57 03 a9   stp	x22, x21, [sp, #0x30]
0x1009649a8:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x1009649ac:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x1009649b0:  fd 43 01 91   add	fp, sp, #0x50
0x1009649b4:  ff c3 00 d1   sub	sp, sp, #0x30
0x1009649b8:  f7 03 00 aa   mov	x23, x0
0x1009649bc:  f5 03 08 aa   mov	x21, x8
0x1009649c0:  00 00 80 d2   mov	x0, #0
0x1009649c4:  0b 81 30 94   bl	j__$s10Foundation12DateIntervalVMa
0x1009649c8:  f4 03 00 aa   mov	x20, x0
0x1009649cc:  e9 03 00 aa   mov	x9, x0
0x1009649d0:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x1009649d4:  f0 03 08 aa   mov	x16, x8
0x1009649d8:  f1 03 09 aa   mov	x17, x9
0x1009649dc:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x1009649e0:  30 1a c1 da   autda	x16, x17
0x1009649e4:  f1 03 10 aa   mov	x17, x16
0x1009649e8:  f1 47 c1 da   xpacd	x17
0x1009649ec:  1f 02 11 eb   cmp	x16, x17
0x1009649f0:  40 00 00 54   b.eq	loc_1009649f8 ; ⤵ 0x8
0x1009649f4:  40 8e 38 d4   brk	#0xc472
0x1009649f8:  ; loc_1009649f8
0x1009649f8:  f8 03 10 aa   mov	x24, x16
0x1009649fc:  f0 03 08 aa   mov	x16, x8
0x100964a00:  f1 03 09 aa   mov	x17, x9
0x100964a04:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100964a08:  30 1a c1 da   autda	x16, x17
0x100964a0c:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100964a10:  e9 03 08 aa   mov	x9, x8
0x100964a14:  31 79 00 b0   adrp	x17, 0x101889000
0x100964a18:  31 42 30 91   add	x17, x17, #0xc10 ; __got.___chkstk_darwin
0x100964a1c:  30 02 40 f9   ldr	x16, [x17]
0x100964a20:  11 0a 3f d7   blraa	x16, x17
0x100964a24:  e9 03 00 91   mov	x9, sp
0x100964a28:  0a 3d 00 91   add	x10, x8, #0xf
0x100964a2c:  4c ed 7c 92   and	x12, x10, #0xfffffffffffffff0
0x100964a30:  39 01 0c cb   sub	x25, x9, x12
0x100964a34:  3f 03 00 91   mov	sp, x25
0x100964a38:  e9 03 08 aa   mov	x9, x8
0x100964a3c:  31 79 00 b0   adrp	x17, 0x101889000
0x100964a40:  31 42 30 91   add	x17, x17, #0xc10 ; __got.___chkstk_darwin
0x100964a44:  30 02 40 f9   ldr	x16, [x17]
0x100964a48:  11 0a 3f d7   blraa	x16, x17
0x100964a4c:  e8 03 00 91   mov	x8, sp
0x100964a50:  1a 01 0c cb   sub	x26, x8, x12
0x100964a54:  5f 03 00 91   mov	sp, x26
0x100964a58:  00 00 80 d2   mov	x0, #0
0x100964a5c:  37 02 00 94   bl	0x100965338
0x100964a60:  f3 03 00 aa   mov	x19, x0
0x100964a64:  e9 03 00 aa   mov	x9, x0
0x100964a68:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x100964a6c:  f0 03 08 aa   mov	x16, x8
0x100964a70:  f1 03 09 aa   mov	x17, x9
0x100964a74:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100964a78:  30 1a c1 da   autda	x16, x17
0x100964a7c:  f1 03 10 aa   mov	x17, x16
0x100964a80:  f1 47 c1 da   xpacd	x17
0x100964a84:  1f 02 11 eb   cmp	x16, x17
0x100964a88:  40 00 00 54   b.eq	loc_100964a90 ; ⤵ 0x8
0x100964a8c:  40 8e 38 d4   brk	#0xc472
0x100964a90:  ; loc_100964a90
0x100964a90:  b0 03 1a f8   stur	x16, [fp, #-0x60]
0x100964a94:  f0 03 08 aa   mov	x16, x8
0x100964a98:  f1 03 09 aa   mov	x17, x9
0x100964a9c:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100964aa0:  30 1a c1 da   autda	x16, x17
0x100964aa4:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100964aa8:  e9 03 08 aa   mov	x9, x8
0x100964aac:  31 79 00 b0   adrp	x17, 0x101889000
0x100964ab0:  31 42 30 91   add	x17, x17, #0xc10 ; __got.___chkstk_darwin
0x100964ab4:  30 02 40 f9   ldr	x16, [x17]
0x100964ab8:  11 0a 3f d7   blraa	x16, x17
0x100964abc:  e9 03 00 91   mov	x9, sp
0x100964ac0:  08 3d 00 91   add	x8, x8, #0xf
0x100964ac4:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x100964ac8:  36 01 08 cb   sub	x22, x9, x8
0x100964acc:  df 02 00 91   mov	sp, x22
0x100964ad0:  e0 03 17 aa   mov	x0, x23
0x100964ad4:  3b a1 30 94   bl	j__objc_msgSend(x0, "dateInterval")
0x100964ad8:  fd 03 1d aa   mov	fp, fp
0x100964adc:  05 9a 30 94   bl	j__objc_retainAutoreleasedReturnValue
0x100964ae0:  e0 02 00 b4   cbz	x0, loc_100964b3c ; ⤵ 0x5c
0x100964ae4:  e8 03 19 aa   mov	x8, x25
0x100964ae8:  fb 03 00 aa   mov	x27, x0
0x100964aec:  9d 80 30 94   bl	j__$s10Foundation12DateIntervalV36_unconditionallyBridgeFromObjectiveCyACSo06NSDateC0CSgFZ
0x100964af0:  e8 99 30 94   bl	j__objc_release_x27
0x100964af4:  d7 99 30 94   bl	j__objc_release_x23
0x100964af8:  f7 03 13 aa   mov	x23, x19
0x100964afc:  13 0f 42 f8   ldr	x19, [x24, #0x20]!
0x100964b00:  e0 03 1a aa   mov	x0, x26
0x100964b04:  e1 03 19 aa   mov	x1, x25
0x100964b08:  e2 03 14 aa   mov	x2, x20
0x100964b0c:  f1 03 18 aa   mov	x17, x24
0x100964b10:  11 1b e9 f2   movk	x17, #0x48d8, lsl #0x30
0x100964b14:  71 0a 3f d7   blraa	x19, x17
0x100964b18:  e0 03 16 aa   mov	x0, x22
0x100964b1c:  e1 03 1a aa   mov	x1, x26
0x100964b20:  e2 03 14 aa   mov	x2, x20
0x100964b24:  f1 03 18 aa   mov	x17, x24
0x100964b28:  11 1b e9 f2   movk	x17, #0x48d8, lsl #0x30
0x100964b2c:  71 0a 3f d7   blraa	x19, x17
0x100964b30:  f3 03 17 aa   mov	x19, x23
0x100964b34:  02 00 80 52   mov	w2, #0
0x100964b38:  be 00 00 14   b	loc_100964e30 ; ⤵ 0x2f8
0x100964b3c:  ; loc_100964b3c
0x100964b3c:  e0 03 17 aa   mov	x0, x23
0x100964b40:  70 ae 30 94   bl	j__objc_msgSend(x0, "sequence")
0x100964b44:  fd 03 1d aa   mov	fp, fp
0x100964b48:  ea 99 30 94   bl	j__objc_retainAutoreleasedReturnValue
0x100964b4c:  80 03 00 b4   cbz	x0, loc_100964bbc ; ⤵ 0x70
0x100964b50:  f4 03 00 aa   mov	x20, x0
0x100964b54:  e0 03 17 aa   mov	x0, x23
0x100964b58:  82 a4 30 94   bl	j__objc_msgSend(x0, "index")
0x100964b5c:  fd 03 1d aa   mov	fp, fp
0x100964b60:  e4 99 30 94   bl	j__objc_retainAutoreleasedReturnValue
0x100964b64:  40 02 00 b4   cbz	x0, loc_100964bac ; ⤵ 0x48
0x100964b68:  f8 03 00 aa   mov	x24, x0
0x100964b6c:  e0 03 17 aa   mov	x0, x23
0x100964b70:  3c a4 30 94   bl	j__objc_msgSend(x0, "hint")
0x100964b74:  fd 03 1d aa   mov	fp, fp
0x100964b78:  de 99 30 94   bl	j__objc_retainAutoreleasedReturnValue
0x100964b7c:  c0 01 00 b4   cbz	x0, loc_100964bb4 ; ⤵ 0x38
0x100964b80:  f9 03 00 aa   mov	x25, x0
0x100964b84:  e0 03 14 aa   mov	x0, x20
0x100964b88:  ce a7 30 94   bl	j__objc_msgSend(x0, "integerValue")
0x100964b8c:  1f 04 00 f1   cmp	x0, #0x1
0x100964b90:  40 0d 00 54   b.eq	loc_100964d38 ; ⤵ 0x1a8
0x100964b94:  1f 08 00 f1   cmp	x0, #0x2
0x100964b98:  61 0f 00 54   b.ne	loc_100964d84 ; ⤵ 0x1ec
0x100964b9c:  fc 03 17 aa   mov	x28, x23
0x100964ba0:  f7 03 13 aa   mov	x23, x19
0x100964ba4:  33 00 80 52   mov	w19, #0x1
0x100964ba8:  67 00 00 14   b	loc_100964d44 ; ⤵ 0x19c
0x100964bac:  ; loc_100964bac
0x100964bac:  f8 03 14 aa   mov	x24, x20
0x100964bb0:  02 00 00 14   b	loc_100964bb8 ; ⤵ 0x8
0x100964bb4:  ; loc_100964bb4
0x100964bb4:  9b 99 30 94   bl	j__objc_release_x20
0x100964bb8:  ; loc_100964bb8
0x100964bb8:  aa 99 30 94   bl	j__objc_release_x24
0x100964bbc:  ; loc_100964bbc
0x100964bbc:  e0 03 17 aa   mov	x0, x23
0x100964bc0:  70 a4 30 94   bl	j__objc_msgSend(x0, "indices")
0x100964bc4:  fd 03 1d aa   mov	fp, fp
0x100964bc8:  ca 99 30 94   bl	j__objc_retainAutoreleasedReturnValue
0x100964bcc:  40 08 00 b4   cbz	x0, loc_100964cd4 ; ⤵ 0x108
0x100964bd0:  f4 03 00 aa   mov	x20, x0
0x100964bd4:  00 00 80 d2   mov	x0, #0
0x100964bd8:  d2 21 ea 97   bl	0x1003ed320
0x100964bdc:  e1 03 00 aa   mov	x1, x0
0x100964be0:  e0 03 14 aa   mov	x0, x20
0x100964be4:  1f 91 30 94   bl	j__$sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZ
0x100964be8:  f8 03 00 aa   mov	x24, x0
0x100964bec:  8d 99 30 94   bl	j__objc_release_x20
0x100964bf0:  08 ff 7e d3   lsr	x8, x24, #0x3e
0x100964bf4:  08 10 00 b5   cbnz	x8, loc_100964df4 ; ⤵ 0x200
0x100964bf8:  08 e3 7d 92   and	x8, x24, #0xffffffffffffff8
0x100964bfc:  19 09 40 f9   ldr	x25, [x8, #0x10]
0x100964c00:  b3 83 19 f8   stur	x19, [fp, #-0x68]
0x100964c04:  79 10 00 b4   cbz	x25, loc_100964e10 ; ⤵ 0x20c
0x100964c08:  ; loc_100964c08
0x100964c08:  b7 d7 38 a9   stp	x23, x21, [fp, #-0x78]
0x100964c0c:  08 79 00 d0   adrp	x8, 0x101886000
0x100964c10:  08 71 47 f9   ldr	x8, [x8, #0xee0] ; __got.__swiftEmptyArrayStorage
0x100964c14:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x100964c18:  21 ff b9 8a   bic	x1, x25, x25, asr #0x3f
0x100964c1c:  b4 63 01 d1   sub	x20, fp, #0x58
0x100964c20:  00 00 80 52   mov	w0, #0
0x100964c24:  02 00 80 52   mov	w2, #0
0x100964c28:  ca 8d 27 94   bl	0x101348350
0x100964c2c:  19 13 f8 b7   tbnz	x25, #0x3f, loc_100964e8c ; ⤵ 0x260
0x100964c30:  1a 00 80 d2   mov	x26, #0
0x100964c34:  b3 83 5a f8   ldur	x19, [fp, #-0x58]
0x100964c38:  15 0b 42 92   and	x21, x24, #0xc000000000000001
0x100964c3c:  ; loc_100964c3c
0x100964c3c:  b5 00 00 b4   cbz	x21, loc_100964c50 ; ⤵ 0x14
0x100964c40:  e0 03 1a aa   mov	x0, x26
0x100964c44:  e1 03 18 aa   mov	x1, x24
0x100964c48:  3e 94 30 94   bl	j__$ss12_ArrayBufferV19_getElementSlowPathyyXlSiFyXl_Ts5
0x100964c4c:  04 00 00 14   b	loc_100964c5c ; ⤵ 0x10
0x100964c50:  ; loc_100964c50
0x100964c50:  08 0f 1a 8b   add	x8, x24, x26, lsl #0x3
0x100964c54:  08 11 40 f9   ldr	x8, [x8, #0x20]
0x100964c58:  e2 99 30 94   bl	j__objc_retain_x8
0x100964c5c:  ; loc_100964c5c
0x100964c5c:  f4 03 00 aa   mov	x20, x0
0x100964c60:  e8 b6 30 94   bl	j__objc_msgSend(x0, "unsignedLongLongValue")
0x100964c64:  fb 03 00 aa   mov	x27, x0
0x100964c68:  6e 99 30 94   bl	j__objc_release_x20
0x100964c6c:  b3 83 1a f8   stur	x19, [fp, #-0x58]
0x100964c70:  77 22 41 a9   ldp	x23, x8, [x19, #0x10]
0x100964c74:  fc 06 00 91   add	x28, x23, #0x1
0x100964c78:  ff 06 48 eb   cmp	x23, x8, lsr #0x1
0x100964c7c:  02 01 00 54   b.hs	loc_100964c9c ; ⤵ 0x20
0x100964c80:  ; loc_100964c80
0x100964c80:  5a 07 00 91   add	x26, x26, #0x1
0x100964c84:  7c 0a 00 f9   str	x28, [x19, #0x10]
0x100964c88:  68 0e 17 8b   add	x8, x19, x23, lsl #0x3
0x100964c8c:  1b 11 00 f9   str	x27, [x8, #0x20]
0x100964c90:  3f 03 1a eb   cmp	x25, x26
0x100964c94:  41 fd ff 54   b.ne	loc_100964c3c ; ⤴ -0x58
0x100964c98:  09 00 00 14   b	loc_100964cbc ; ⤵ 0x24
0x100964c9c:  ; loc_100964c9c
0x100964c9c:  1f 05 00 f1   cmp	x8, #0x1
0x100964ca0:  e0 97 9f 1a   cset	w0, hi
0x100964ca4:  b4 63 01 d1   sub	x20, fp, #0x58
0x100964ca8:  e1 03 1c aa   mov	x1, x28
0x100964cac:  22 00 80 52   mov	w2, #0x1
0x100964cb0:  a8 8d 27 94   bl	0x101348350
0x100964cb4:  b3 83 5a f8   ldur	x19, [fp, #-0x58]
0x100964cb8:  f2 ff ff 17   b	loc_100964c80 ; ⤴ -0x38
0x100964cbc:  ; loc_100964cbc
0x100964cbc:  a8 83 58 f8   ldur	x8, [fp, #-0x78]
0x100964cc0:  7c 99 30 94   bl	j__objc_release_x8
0x100964cc4:  e0 03 18 aa   mov	x0, x24
0x100964cc8:  66 9a 30 94   bl	j__swift_bridgeObjectRelease
0x100964ccc:  b5 03 59 f8   ldur	x21, [fp, #-0x70]
0x100964cd0:  55 00 00 14   b	loc_100964e24 ; ⤵ 0x154
0x100964cd4:  ; loc_100964cd4
0x100964cd4:  e0 03 17 aa   mov	x0, x23
0x100964cd8:  22 a4 30 94   bl	j__objc_msgSend(x0, "index")
0x100964cdc:  fd 03 1d aa   mov	fp, fp
0x100964ce0:  84 99 30 94   bl	j__objc_retainAutoreleasedReturnValue
0x100964ce4:  20 08 00 b4   cbz	x0, loc_100964de8 ; ⤵ 0x104
0x100964ce8:  f4 03 00 aa   mov	x20, x0
0x100964cec:  e0 03 17 aa   mov	x0, x23
0x100964cf0:  dc a3 30 94   bl	j__objc_msgSend(x0, "hint")
0x100964cf4:  fd 03 1d aa   mov	fp, fp
0x100964cf8:  7e 99 30 94   bl	j__objc_retainAutoreleasedReturnValue
0x100964cfc:  40 07 00 b4   cbz	x0, loc_100964de4 ; ⤵ 0xe8
0x100964d00:  f8 03 00 aa   mov	x24, x0
0x100964d04:  e0 03 14 aa   mov	x0, x20
0x100964d08:  be b6 30 94   bl	j__objc_msgSend(x0, "unsignedLongLongValue")
0x100964d0c:  f9 03 00 aa   mov	x25, x0
0x100964d10:  e0 03 18 aa   mov	x0, x24
0x100964d14:  ab b6 30 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x100964d18:  fa 03 00 aa   mov	x26, x0
0x100964d1c:  4d 99 30 94   bl	j__objc_release_x23
0x100964d20:  50 99 30 94   bl	j__objc_release_x24
0x100964d24:  3f 99 30 94   bl	j__objc_release_x20
0x100964d28:  d9 02 00 f9   str	x25, [x22]
0x100964d2c:  da 22 00 39   strb	w26, [x22, #0x8]
0x100964d30:  42 00 80 52   mov	w2, #0x2
0x100964d34:  3f 00 00 14   b	loc_100964e30 ; ⤵ 0xfc
0x100964d38:  ; loc_100964d38
0x100964d38:  fc 03 17 aa   mov	x28, x23
0x100964d3c:  f7 03 13 aa   mov	x23, x19
0x100964d40:  13 00 80 52   mov	w19, #0
0x100964d44:  ; loc_100964d44
0x100964d44:  e0 03 18 aa   mov	x0, x24
0x100964d48:  ae b6 30 94   bl	j__objc_msgSend(x0, "unsignedLongLongValue")
0x100964d4c:  fa 03 00 aa   mov	x26, x0
0x100964d50:  e0 03 19 aa   mov	x0, x25
0x100964d54:  9b b6 30 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x100964d58:  fb 03 00 aa   mov	x27, x0
0x100964d5c:  51 99 30 94   bl	j__objc_release_x28
0x100964d60:  44 99 30 94   bl	j__objc_release_x25
0x100964d64:  3f 99 30 94   bl	j__objc_release_x24
0x100964d68:  2e 99 30 94   bl	j__objc_release_x20
0x100964d6c:  d3 02 00 39   strb	w19, [x22]
0x100964d70:  da 06 00 f9   str	x26, [x22, #0x8]
0x100964d74:  62 00 80 52   mov	w2, #0x3
0x100964d78:  db 42 00 39   strb	w27, [x22, #0x10]
0x100964d7c:  f3 03 17 aa   mov	x19, x23
0x100964d80:  2c 00 00 14   b	loc_100964e30 ; ⤵ 0xb0
0x100964d84:  ; loc_100964d84
0x100964d84:  33 99 30 94   bl	j__objc_release_x23
0x100964d88:  26 99 30 94   bl	j__objc_release_x20
0x100964d8c:  35 99 30 94   bl	j__objc_release_x24
0x100964d90:  38 99 30 94   bl	j__objc_release_x25
0x100964d94:  a5 03 5a f8   ldur	x5, [fp, #-0x60]
0x100964d98:  a4 8c 43 f8   ldr	x4, [x5, #0x38]!
0x100964d9c:  e0 03 15 aa   mov	x0, x21
0x100964da0:  21 00 80 52   mov	w1, #0x1
0x100964da4:  22 00 80 52   mov	w2, #0x1
0x100964da8:  e3 03 13 aa   mov	x3, x19
0x100964dac:  bf 43 01 d1   sub	sp, fp, #0x50
0x100964db0:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x100964db4:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x100964db8:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x100964dbc:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x100964dc0:  fa 67 41 a9   ldp	x26, x25, [sp, #0x10]
0x100964dc4:  fc 6f c6 a8   ldp	x28, x27, [sp], #0x60
0x100964dc8:  ff 23 03 d5   autibsp
0x100964dcc:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100964dd0:  50 00 f0 b6   tbz	x16, #0x3e, loc_100964dd8 ; ⤵ 0x8
0x100964dd4:  20 8e 38 d4   brk	#0xc471
0x100964dd8:  ; loc_100964dd8
0x100964dd8:  f0 03 05 aa   mov	x16, x5
0x100964ddc:  30 1a f4 f2   movk	x16, #0xa0d1, lsl #0x30
0x100964de0:  90 08 1f d7   braa	x4, x16
0x100964de4:  ; loc_100964de4
0x100964de4:  0f 99 30 94   bl	j__objc_release_x20
0x100964de8:  ; loc_100964de8
0x100964de8:  1a 99 30 94   bl	j__objc_release_x23
0x100964dec:  82 00 80 52   mov	w2, #0x4
0x100964df0:  10 00 00 14   b	loc_100964e30 ; ⤵ 0x40
0x100964df4:  ; loc_100964df4
0x100964df4:  08 e3 7d 92   and	x8, x24, #0xffffffffffffff8
0x100964df8:  1f 07 00 b1   cmn	x24, #0x1
0x100964dfc:  00 c1 98 9a   csel	x0, x8, x24, gt
0x100964e00:  80 94 30 94   bl	j__$ss18_CocoaArrayWrapperV8endIndexSivg
0x100964e04:  f9 03 00 aa   mov	x25, x0
0x100964e08:  b3 83 19 f8   stur	x19, [fp, #-0x68]
0x100964e0c:  f9 ef ff b5   cbnz	x25, loc_100964c08 ; ⤴ -0x204
0x100964e10:  ; loc_100964e10
0x100964e10:  10 99 30 94   bl	j__objc_release_x23
0x100964e14:  e0 03 18 aa   mov	x0, x24
0x100964e18:  12 9a 30 94   bl	j__swift_bridgeObjectRelease
0x100964e1c:  13 79 00 d0   adrp	x19, 0x101886000
0x100964e20:  73 72 47 f9   ldr	x19, [x19, #0xee0] ; __got.__swiftEmptyArrayStorage
0x100964e24:  ; loc_100964e24
0x100964e24:  d3 02 00 f9   str	x19, [x22]
0x100964e28:  22 00 80 52   mov	w2, #0x1
0x100964e2c:  b3 83 59 f8   ldur	x19, [fp, #-0x68]
0x100964e30:  ; loc_100964e30
0x100964e30:  e0 03 16 aa   mov	x0, x22
0x100964e34:  e1 03 13 aa   mov	x1, x19
0x100964e38:  46 9b 30 94   bl	j__swift_storeEnumTagMultiPayload
0x100964e3c:  e0 03 16 aa   mov	x0, x22
0x100964e40:  e1 03 15 aa   mov	x1, x21
0x100964e44:  e4 04 00 94   bl	0x1009661d4
0x100964e48:  a4 03 5a f8   ldur	x4, [fp, #-0x60]
0x100964e4c:  88 8c 43 f8   ldr	x8, [x4, #0x38]!
0x100964e50:  e0 03 15 aa   mov	x0, x21
0x100964e54:  01 00 80 52   mov	w1, #0
0x100964e58:  22 00 80 52   mov	w2, #0x1
0x100964e5c:  e3 03 13 aa   mov	x3, x19
0x100964e60:  f1 03 04 aa   mov	x17, x4
0x100964e64:  31 1a f4 f2   movk	x17, #0xa0d1, lsl #0x30
0x100964e68:  11 09 3f d7   blraa	x8, x17
0x100964e6c:  bf 43 01 d1   sub	sp, fp, #0x50
0x100964e70:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x100964e74:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x100964e78:  f6 57 43 a9   ldp	x22, x21, [sp, #0x30]
0x100964e7c:  f8 5f 42 a9   ldp	x24, x23, [sp, #0x20]
0x100964e80:  fa 67 41 a9   ldp	x26, x25, [sp, #0x10]
0x100964e84:  fc 6f c6 a8   ldp	x28, x27, [sp], #0x60
0x100964e88:  ff 0f 5f d6   retab
0x100964e8c:  ; loc_100964e8c
0x100964e8c:  20 00 20 d4   brk	#0x1

sub_100964e90:
0x100964e90:  7f 23 03 d5   pacibsp
0x100964e94:  f8 5f bc a9   stp	x24, x23, [sp, #-0x40]!
0x100964e98:  f6 57 01 a9   stp	x22, x21, [sp, #0x10]
0x100964e9c:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x100964ea0:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x100964ea4:  fd c3 00 91   add	fp, sp, #0x30
0x100964ea8:  ff 83 00 d1   sub	sp, sp, #0x20
0x100964eac:  f7 03 14 aa   mov	x23, x20
0x100964eb0:  00 00 80 d2   mov	x0, #0
0x100964eb4:  cf 7f 30 94   bl	j__$s10Foundation12DateIntervalVMa
0x100964eb8:  f3 03 00 aa   mov	x19, x0
0x100964ebc:  e9 03 00 aa   mov	x9, x0
0x100964ec0:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x100964ec4:  f0 03 08 aa   mov	x16, x8
0x100964ec8:  f1 03 09 aa   mov	x17, x9
0x100964ecc:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100964ed0:  30 1a c1 da   autda	x16, x17
0x100964ed4:  f1 03 10 aa   mov	x17, x16
0x100964ed8:  f1 47 c1 da   xpacd	x17
0x100964edc:  1f 02 11 eb   cmp	x16, x17
0x100964ee0:  40 00 00 54   b.eq	loc_100964ee8 ; ⤵ 0x8
0x100964ee4:  40 8e 38 d4   brk	#0xc472
0x100964ee8:  ; loc_100964ee8
0x100964ee8:  f5 03 10 aa   mov	x21, x16
0x100964eec:  f0 03 08 aa   mov	x16, x8
0x100964ef0:  f1 03 09 aa   mov	x17, x9
0x100964ef4:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100964ef8:  30 1a c1 da   autda	x16, x17
0x100964efc:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100964f00:  e9 03 08 aa   mov	x9, x8
0x100964f04:  31 79 00 b0   adrp	x17, 0x101889000
0x100964f08:  31 42 30 91   add	x17, x17, #0xc10 ; __got.___chkstk_darwin
0x100964f0c:  30 02 40 f9   ldr	x16, [x17]
0x100964f10:  11 0a 3f d7   blraa	x16, x17
0x100964f14:  e9 03 00 91   mov	x9, sp
0x100964f18:  08 3d 00 91   add	x8, x8, #0xf
0x100964f1c:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x100964f20:  36 01 08 cb   sub	x22, x9, x8
0x100964f24:  df 02 00 91   mov	sp, x22
0x100964f28:  00 00 80 d2   mov	x0, #0
0x100964f2c:  03 01 00 94   bl	0x100965338
0x100964f30:  f8 03 00 aa   mov	x24, x0
0x100964f34:  e8 03 00 aa   mov	x8, x0
0x100964f38:  10 8d 5f f8   ldr	x16, [x8, #-0x8]!
0x100964f3c:  f1 03 08 aa   mov	x17, x8
0x100964f40:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100964f44:  30 1a c1 da   autda	x16, x17
0x100964f48:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100964f4c:  e9 03 08 aa   mov	x9, x8
0x100964f50:  31 79 00 b0   adrp	x17, 0x101889000
0x100964f54:  31 42 30 91   add	x17, x17, #0xc10 ; __got.___chkstk_darwin
0x100964f58:  30 02 40 f9   ldr	x16, [x17]
0x100964f5c:  11 0a 3f d7   blraa	x16, x17
0x100964f60:  e9 03 00 91   mov	x9, sp
0x100964f64:  08 3d 00 91   add	x8, x8, #0xf
0x100964f68:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x100964f6c:  34 01 08 cb   sub	x20, x9, x8
0x100964f70:  9f 02 00 91   mov	sp, x20
0x100964f74:  e0 03 17 aa   mov	x0, x23
0x100964f78:  e1 03 14 aa   mov	x1, x20
0x100964f7c:  02 01 00 94   bl	0x100965384
0x100964f80:  e0 03 14 aa   mov	x0, x20
0x100964f84:  e1 03 18 aa   mov	x1, x24
0x100964f88:  4e 9a 30 94   bl	j__swift_getEnumCaseMultiPayload
0x100964f8c:  1f 04 00 71   cmp	w0, #0x1
0x100964f90:  cd 08 00 54   b.le	loc_1009650a8 ; ⤵ 0x118
0x100964f94:  1f 08 00 71   cmp	w0, #0x2
0x100964f98:  00 10 00 54   b.eq	loc_100965198 ; ⤵ 0x200
0x100964f9c:  1f 0c 00 71   cmp	w0, #0x3
0x100964fa0:  61 17 00 54   b.ne	loc_10096528c ; ⤵ 0x2ec
0x100964fa4:  96 02 40 39   ldrb	w22, [x20]
0x100964fa8:  97 06 40 f9   ldr	x23, [x20, #0x8]
0x100964fac:  93 42 40 39   ldrb	w19, [x20, #0x10]
0x100964fb0:  c0 7d 00 90   adrp	x0, 0x10191c000
0x100964fb4:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x100964fb8:  41 64 00 b0   adrp	x1, 0x1015ed000
0x100964fbc:  21 00 19 91   add	x1, x1, #0x640
0x100964fc0:  0d 4d dd 97   bl	0x1000b83f4
0x100964fc4:  01 09 80 52   mov	w1, #0x48
0x100964fc8:  e2 00 80 52   mov	w2, #0x7
0x100964fcc:  79 99 30 94   bl	j__swift_allocObject
0x100964fd0:  e2 03 00 aa   mov	x2, x0

