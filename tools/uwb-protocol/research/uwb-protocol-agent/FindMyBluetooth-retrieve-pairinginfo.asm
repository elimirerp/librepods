0x2522f4920:  b7 5b 33 a9   stp	x23, x22, [fp, #-0xd0]
0x2522f4924:  60 10 00 34   cbz	w0, loc_2522f4b30 ; ⤵ 0x20c
0x2522f4928:  80 01 80 52   mov	w0, #0xc
0x2522f492c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4930:  84 42 ca 94   bl	0x255585340
0x2522f4934:  f4 03 00 aa   mov	x20, x0
0x2522f4938:  00 04 80 52   mov	w0, #0x20
0x2522f493c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4940:  80 42 ca 94   bl	0x255585340
0x2522f4944:  a0 83 12 f8   stur	x0, [fp, #-0xd8]
0x2522f4948:  a0 03 19 f8   stur	x0, [fp, #-0x70]
0x2522f494c:  c8 02 00 b0   adrp	x8, 0x25234d000
0x2522f4950:  00 5d 40 fd   ldr	d0, [x8, #0xb8]
0x2522f4954:  80 02 00 bd   str	s0, [x20]
0x2522f4958:  41 22 13 f0   adrp	x1, 0x27873f000
0x2522f495c:  21 50 44 f9   ldr	x1, [x1, #0x8a0]
0x2522f4960:  43 22 13 f0   adrp	x3, 0x27873f000
0x2522f4964:  63 58 44 f9   ldr	x3, [x3, #0x8b0]
0x2522f4968:  68 22 13 90   adrp	x8, 0x278740000
0x2522f496c:  08 fd 47 f9   ldr	x8, [x8, #0xff8]
0x2522f4970:  02 21 00 91   add	x2, x8, #0x8
0x2522f4974:  e0 03 1b aa   mov	x0, x27
0x2522f4978:  82 3e ca 94   bl	0x255584380
0x2522f497c:  f7 03 01 aa   mov	x23, x1
0x2522f4980:  a2 c3 01 d1   sub	x2, fp, #0x70
0x2522f4984:  2b 9d fe 97   bl	0x25229be30
0x2522f4988:  f6 03 13 aa   mov	x22, x19
0x2522f498c:  f3 03 18 aa   mov	x19, x24
0x2522f4990:  f8 03 00 aa   mov	x24, x0
0x2522f4994:  e0 03 17 aa   mov	x0, x23
0x2522f4998:  aa 41 ca 94   bl	0x255585040
0x2522f499c:  98 42 00 f8   stur	x24, [x20, #0x4]
0x2522f49a0:  f8 03 13 aa   mov	x24, x19
0x2522f49a4:  f3 03 16 aa   mov	x19, x22
0x2522f49a8:  e0 03 1b aa   mov	x0, x27
0x2522f49ac:  a5 41 ca 94   bl	0x255585040
0x2522f49b0:  a0 fc ff b0   adrp	x0, 0x252289000
0x2522f49b4:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x2522f49b8:  23 03 00 f0   adrp	x3, 0x25235b000
0x2522f49bc:  63 40 21 91   add	x3, x3, #0x850 ; "Pairing info: %s"
0x2522f49c0:  22 1f 00 12   and	w2, w25, #0xff
0x2522f49c4:  e1 03 1c aa   mov	x1, x28
0x2522f49c8:  e4 03 14 aa   mov	x4, x20
0x2522f49cc:  85 01 80 52   mov	w5, #0xc
0x2522f49d0:  d4 40 ca 94   bl	0x255584d20
0x2522f49d4:  b6 83 52 f8   ldur	x22, [fp, #-0xd8]
0x2522f49d8:  e0 03 16 aa   mov	x0, x22
0x2522f49dc:  2b 9e fe 97   bl	___swift_destroy_boxed_opaque_existential_1
0x2522f49e0:  e0 03 16 aa   mov	x0, x22
0x2522f49e4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f49e8:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x2522f49ec:  59 42 ca 94   bl	0x255585350
0x2522f49f0:  e0 03 14 aa   mov	x0, x20
0x2522f49f4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f49f8:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x2522f49fc:  55 42 ca 94   bl	0x255585350
0x2522f4a00:  20 41 ca 94   bl	0x255584e80
0x2522f4a04:  4e 00 00 14   b	loc_2522f4b3c ; ⤵ 0x138
0x2522f4a08:  08 2d 45 f9   ldr	x8, [x8, #0xa58]
0x2522f4a0c:  1f 05 00 b1   cmn	x8, #0x1
0x2522f4a10:  c1 38 00 54   b.ne	loc_2522f5128 ; ⤵ 0x718
0x2522f4a14:  61 89 17 b0   adrp	x1, 0x281421000
0x2522f4a18:  21 80 29 91   add	x1, x1, #0xa60 ; data_281421a60 (__DATA_DIRTY.__data)
0x2522f4a1c:  e0 03 18 aa   mov	x0, x24
0x2522f4a20:  f4 7e fe 97   bl	___swift_project_value_buffer
0x2522f4a24:  e1 03 00 aa   mov	x1, x0
0x2522f4a28:  e8 03 13 aa   mov	x8, x19
0x2522f4a2c:  09 0d 41 f8   ldr	x9, [x8, #0x10]!
0x2522f4a30:  e0 03 19 aa   mov	x0, x25
0x2522f4a34:  e2 03 18 aa   mov	x2, x24
0x2522f4a38:  f1 03 08 aa   mov	x17, x8
0x2522f4a3c:  51 77 fc f2   movk	x17, #0xe3ba, lsl #0x30
0x2522f4a40:  31 09 3f d7   blraa	x9, x17
0x2522f4a44:  f4 03 19 aa   mov	x20, x25
0x2522f4a48:  26 3e ca 94   bl	0x2555842e0
0x2522f4a4c:  f4 03 00 aa   mov	x20, x0
0x2522f4a50:  4c 3f ca 94   bl	0x255584780
0x2522f4a54:  f7 03 00 aa   mov	x23, x0
0x2522f4a58:  01 1c 00 12   and	w1, w0, #0xff
0x2522f4a5c:  e0 03 14 aa   mov	x0, x20
0x2522f4a60:  50 41 ca 94   bl	0x255584fa0
0x2522f4a64:  40 22 00 34   cbz	w0, loc_2522f4eac ; ⤵ 0x448
0x2522f4a68:  80 01 80 52   mov	w0, #0xc
0x2522f4a6c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4a70:  34 42 ca 94   bl	0x255585340
0x2522f4a74:  f6 03 00 aa   mov	x22, x0
0x2522f4a78:  00 04 80 52   mov	w0, #0x20
0x2522f4a7c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4a80:  30 42 ca 94   bl	0x255585340
0x2522f4a84:  fa 03 13 aa   mov	x26, x19
0x2522f4a88:  f3 03 18 aa   mov	x19, x24
0x2522f4a8c:  f8 03 00 aa   mov	x24, x0
0x2522f4a90:  a0 03 19 f8   stur	x0, [fp, #-0x70]
0x2522f4a94:  c8 02 00 b0   adrp	x8, 0x25234d000
0x2522f4a98:  00 65 40 fd   ldr	d0, [x8, #0xc8]
0x2522f4a9c:  c0 02 00 bd   str	s0, [x22]
0x2522f4aa0:  e8 02 00 d0   adrp	x8, 0x252352000
0x2522f4aa4:  08 81 3e 91   add	x8, x8, #0xfa0 ; "retrievePairingInfo(_:)"
0x2522f4aa8:  08 81 00 d1   sub	x8, x8, #0x20
0x2522f4aac:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x2522f4ab0:  a2 c3 01 d1   sub	x2, fp, #0x70
0x2522f4ab4:  e0 02 80 d2   mov	x0, #0x17
0x2522f4ab8:  00 00 fa f2   movk	x0, #0xd000, lsl #0x30
0x2522f4abc:  dd 9c fe 97   bl	0x25229be30
0x2522f4ac0:  c0 42 00 f8   stur	x0, [x22, #0x4]
0x2522f4ac4:  a0 fc ff b0   adrp	x0, 0x252289000
0x2522f4ac8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x2522f4acc:  23 03 00 f0   adrp	x3, 0x25235b000
0x2522f4ad0:  63 00 1f 91   add	x3, x3, #0x7c0 ; "%{public}s Missing pairing info!"
0x2522f4ad4:  e2 1e 00 12   and	w2, w23, #0xff
0x2522f4ad8:  e1 03 14 aa   mov	x1, x20
0x2522f4adc:  e4 03 16 aa   mov	x4, x22
0x2522f4ae0:  85 01 80 52   mov	w5, #0xc
0x2522f4ae4:  8f 40 ca 94   bl	0x255584d20
0x2522f4ae8:  e0 03 18 aa   mov	x0, x24
0x2522f4aec:  e7 9d fe 97   bl	___swift_destroy_boxed_opaque_existential_1
0x2522f4af0:  e0 03 18 aa   mov	x0, x24
0x2522f4af4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4af8:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x2522f4afc:  15 42 ca 94   bl	0x255585350
0x2522f4b00:  e0 03 16 aa   mov	x0, x22
0x2522f4b04:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4b08:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x2522f4b0c:  11 42 ca 94   bl	0x255585350
0x2522f4b10:  bc 40 ca 94   bl	0x255584e00
0x2522f4b14:  48 8f 40 f8   ldr	x8, [x26, #0x8]!
0x2522f4b18:  e0 03 19 aa   mov	x0, x25
0x2522f4b1c:  e1 03 13 aa   mov	x1, x19
0x2522f4b20:  f1 03 1a aa   mov	x17, x26
0x2522f4b24:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x2522f4b28:  11 09 3f d7   blraa	x8, x17
0x2522f4b2c:  31 01 00 14   b	loc_2522f4ff0 ; ⤵ 0x4c4
0x2522f4b30:  ; loc_2522f4b30
0x2522f4b30:  d4 40 ca 94   bl	0x255584e80
0x2522f4b34:  e0 03 1b aa   mov	x0, x27
0x2522f4b38:  42 41 ca 94   bl	0x255585040
0x2522f4b3c:  ; loc_2522f4b3c
0x2522f4b3c:  e8 03 13 aa   mov	x8, x19
0x2522f4b40:  1c 8d 40 f8   ldr	x28, [x8, #0x8]!
0x2522f4b44:  e0 03 1a aa   mov	x0, x26
0x2522f4b48:  e1 03 18 aa   mov	x1, x24
0x2522f4b4c:  f1 03 08 aa   mov	x17, x8
0x2522f4b50:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x2522f4b54:  91 0b 3f d7   blraa	x28, x17
0x2522f4b58:  b9 83 57 f8   ldur	x25, [fp, #-0x88]
0x2522f4b5c:  59 77 fc f2   movk	x25, #0xe3ba, lsl #0x30
0x2522f4b60:  f6 02 80 d2   mov	x22, #0x17
0x2522f4b64:  16 00 fa f2   movk	x22, #0xd000, lsl #0x30
0x2522f4b68:  68 0b 40 f9   ldr	x8, [x27, #0x10]
0x2522f4b6c:  68 1b 00 b4   cbz	x8, loc_2522f4ed8 ; ⤵ 0x36c
0x2522f4b70:  e8 02 00 d0   adrp	x8, 0x252352000
0x2522f4b74:  08 01 3f 91   add	x8, x8, #0xfc0 ; "kCBMsgArgRemoteAddress"
0x2522f4b78:  08 81 00 d1   sub	x8, x8, #0x20
0x2522f4b7c:  c0 06 00 d1   sub	x0, x22, #0x1
0x2522f4b80:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x2522f4b84:  f4 03 1b aa   mov	x20, x27
0x2522f4b88:  d7 9f fe 97   bl	0x25229cae4
0x2522f4b8c:  61 1a 00 36   tbz	w1, #0, loc_2522f4ed8 ; ⤵ 0x34c
0x2522f4b90:  68 1f 40 f9   ldr	x8, [x27, #0x38]
0x2522f4b94:  00 15 00 8b   add	x0, x8, x0, lsl #0x5
0x2522f4b98:  a1 c3 01 d1   sub	x1, fp, #0x70
0x2522f4b9c:  25 a3 fe 97   bl	0x25229d830
0x2522f4ba0:  83 1c 13 b0   adrp	x3, 0x278685000
0x2522f4ba4:  63 78 43 f9   ldr	x3, [x3, #0x6f0]
0x2522f4ba8:  a0 03 02 d1   sub	x0, fp, #0x80
0x2522f4bac:  a1 c3 01 d1   sub	x1, fp, #0x70
0x2522f4bb0:  68 22 13 90   adrp	x8, 0x278740000
0x2522f4bb4:  08 fd 47 f9   ldr	x8, [x8, #0xff8]
0x2522f4bb8:  02 21 00 91   add	x2, x8, #0x8
0x2522f4bbc:  c4 00 80 52   mov	w4, #0x6
0x2522f4bc0:  70 41 ca 94   bl	0x255585180
0x2522f4bc4:  a0 18 00 36   tbz	w0, #0, loc_2522f4ed8 ; ⤵ 0x314
0x2522f4bc8:  b7 6b 78 a9   ldp	x23, x26, [fp, #-0x80]
0x2522f4bcc:  68 0b 40 f9   ldr	x8, [x27, #0x10]
0x2522f4bd0:  e8 17 00 b4   cbz	x8, loc_2522f4ecc ; ⤵ 0x2fc
0x2522f4bd4:  e8 02 00 d0   adrp	x8, 0x252352000
0x2522f4bd8:  08 81 3f 91   add	x8, x8, #0xfe0 ; "kCBMsgArgRemoteAddressType"
0x2522f4bdc:  08 81 00 d1   sub	x8, x8, #0x20
0x2522f4be0:  c0 0e 00 91   add	x0, x22, #0x3
0x2522f4be4:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x2522f4be8:  f4 03 1b aa   mov	x20, x27
0x2522f4bec:  be 9f fe 97   bl	0x25229cae4
0x2522f4bf0:  e1 16 00 36   tbz	w1, #0, loc_2522f4ecc ; ⤵ 0x2dc
0x2522f4bf4:  68 1f 40 f9   ldr	x8, [x27, #0x38]
0x2522f4bf8:  00 15 00 8b   add	x0, x8, x0, lsl #0x5
0x2522f4bfc:  a1 c3 01 d1   sub	x1, fp, #0x70
0x2522f4c00:  0c a3 fe 97   bl	0x25229d830
0x2522f4c04:  63 22 13 90   adrp	x3, 0x278740000
0x2522f4c08:  63 38 45 f9   ldr	x3, [x3, #0xa70]
0x2522f4c0c:  a0 03 02 d1   sub	x0, fp, #0x80
0x2522f4c10:  a1 c3 01 d1   sub	x1, fp, #0x70
0x2522f4c14:  68 22 13 90   adrp	x8, 0x278740000
0x2522f4c18:  08 fd 47 f9   ldr	x8, [x8, #0xff8]
0x2522f4c1c:  02 21 00 91   add	x2, x8, #0x8
0x2522f4c20:  c4 00 80 52   mov	w4, #0x6
0x2522f4c24:  57 41 ca 94   bl	0x255585180
0x2522f4c28:  20 15 00 36   tbz	w0, #0, loc_2522f4ecc ; ⤵ 0x2a4
0x2522f4c2c:  b7 83 17 f8   stur	x23, [fp, #-0x88]
0x2522f4c30:  68 0b 40 f9   ldr	x8, [x27, #0x10]
0x2522f4c34:  88 22 00 b4   cbz	x8, loc_2522f5084 ; ⤵ 0x450
0x2522f4c38:  b7 03 58 f8   ldur	x23, [fp, #-0x80]
0x2522f4c3c:  e8 02 00 f0   adrp	x8, 0x252353000
0x2522f4c40:  08 01 00 91   add	x8, x8, #0 ; "kCBMsgArgRemoteIRK"
0x2522f4c44:  08 81 00 d1   sub	x8, x8, #0x20
0x2522f4c48:  c0 16 00 d1   sub	x0, x22, #0x5
0x2522f4c4c:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x2522f4c50:  f4 03 1b aa   mov	x20, x27
0x2522f4c54:  a4 9f fe 97   bl	0x25229cae4
0x2522f4c58:  61 21 00 36   tbz	w1, #0, loc_2522f5084 ; ⤵ 0x42c
0x2522f4c5c:  68 1f 40 f9   ldr	x8, [x27, #0x38]
0x2522f4c60:  00 15 00 8b   add	x0, x8, x0, lsl #0x5
0x2522f4c64:  a1 c3 01 d1   sub	x1, fp, #0x70
0x2522f4c68:  f2 a2 fe 97   bl	0x25229d830
0x2522f4c6c:  e0 03 1b aa   mov	x0, x27
0x2522f4c70:  f4 40 ca 94   bl	0x255585040
0x2522f4c74:  83 1c 13 b0   adrp	x3, 0x278685000
0x2522f4c78:  63 78 43 f9   ldr	x3, [x3, #0x6f0]
0x2522f4c7c:  a0 03 02 d1   sub	x0, fp, #0x80
0x2522f4c80:  a1 c3 01 d1   sub	x1, fp, #0x70
0x2522f4c84:  68 22 13 90   adrp	x8, 0x278740000
0x2522f4c88:  08 fd 47 f9   ldr	x8, [x8, #0xff8]
0x2522f4c8c:  02 21 00 91   add	x2, x8, #0x8
0x2522f4c90:  c4 00 80 52   mov	w4, #0x6
0x2522f4c94:  3b 41 ca 94   bl	0x255585180
0x2522f4c98:  a0 1f 00 36   tbz	w0, #0, loc_2522f508c ; ⤵ 0x3f4
0x2522f4c9c:  a9 23 78 a9   ldp	x9, x8, [fp, #-0x80]
0x2522f4ca0:  a9 83 1b f8   stur	x9, [fp, #-0x48]
0x2522f4ca4:  b8 23 32 a9   stp	x24, x8, [fp, #-0xe0]
0x2522f4ca8:  ff 02 00 f1   cmp	x23, #0
0x2522f4cac:  f4 07 9f 1a   cset	w20, ne
0x2522f4cb0:  bb 83 57 f8   ldur	x27, [fp, #-0x88]
0x2522f4cb4:  e0 03 1b aa   mov	x0, x27
0x2522f4cb8:  e1 03 1a aa   mov	x1, x26
0x2522f4cbc:  d7 10 ff 97   bl	0x2522b9018
0x2522f4cc0:  b6 03 56 f8   ldur	x22, [fp, #-0xa0]
0x2522f4cc4:  e8 03 16 aa   mov	x8, x22
0x2522f4cc8:  e0 03 1b aa   mov	x0, x27
0x2522f4ccc:  e1 03 1a aa   mov	x1, x26
0x2522f4cd0:  e2 03 14 aa   mov	x2, x20
0x2522f4cd4:  87 3c ca 94   bl	0x255583ef0
0x2522f4cd8:  b8 5f 75 a9   ldp	x24, x23, [fp, #-0xb0]
0x2522f4cdc:  e8 03 18 aa   mov	x8, x24
0x2522f4ce0:  09 0d 43 f8   ldr	x9, [x8, #0x30]!
0x2522f4ce4:  e0 03 16 aa   mov	x0, x22
0x2522f4ce8:  21 00 80 52   mov	w1, #0x1
0x2522f4cec:  e2 03 17 aa   mov	x2, x23
0x2522f4cf0:  f1 03 08 aa   mov	x17, x8
0x2522f4cf4:  11 1e ec f2   movk	x17, #0x60f0, lsl #0x30
0x2522f4cf8:  31 09 3f d7   blraa	x9, x17
0x2522f4cfc:  1f 04 00 71   cmp	w0, #0x1
0x2522f4d00:  e1 1c 00 54   b.ne	loc_2522f509c ; ⤵ 0x39c
0x2522f4d04:  bb 83 52 f8   ldur	x27, [fp, #-0xd8]
0x2522f4d08:  ba 83 15 f8   stur	x26, [fp, #-0xa8]
0x2522f4d0c:  61 74 16 b0   adrp	x1, 0x27f181000
0x2522f4d10:  21 40 2d 91   add	x1, x1, #0xb50 ; data_27f181b50 (__DATA.__data)
0x2522f4d14:  c2 02 00 d0   adrp	x2, 0x25234e000
0x2522f4d18:  42 c0 2b 91   add	x2, x2, #0xaf0
0x2522f4d1c:  e0 03 16 aa   mov	x0, x22
0x2522f4d20:  ff 75 fe 97   bl	0x25229251c
0x2522f4d24:  b8 03 53 f8   ldur	x24, [fp, #-0xd0]
0x2522f4d28:  e0 03 18 aa   mov	x0, x24
0x2522f4d2c:  a1 a3 76 a9   ldp	x1, x8, [fp, #-0x98]
0x2522f4d30:  ba 03 52 f8   ldur	x26, [fp, #-0xe0]
0x2522f4d34:  e2 03 1a aa   mov	x2, x26
0x2522f4d38:  19 09 3f d7   blraa	x8, x25
0x2522f4d3c:  f4 03 18 aa   mov	x20, x24
0x2522f4d40:  68 3d ca 94   bl	0x2555842e0
0x2522f4d44:  f4 03 00 aa   mov	x20, x0
0x2522f4d48:  8e 3e ca 94   bl	0x255584780
0x2522f4d4c:  f7 03 00 aa   mov	x23, x0
0x2522f4d50:  01 1c 00 12   and	w1, w0, #0xff
0x2522f4d54:  e0 03 14 aa   mov	x0, x20
0x2522f4d58:  92 40 ca 94   bl	0x255584fa0
0x2522f4d5c:  20 05 00 34   cbz	w0, loc_2522f4e00 ; ⤵ 0xa4
0x2522f4d60:  80 01 80 52   mov	w0, #0xc
0x2522f4d64:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4d68:  76 41 ca 94   bl	0x255585340
0x2522f4d6c:  f6 03 00 aa   mov	x22, x0
0x2522f4d70:  00 04 80 52   mov	w0, #0x20
0x2522f4d74:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4d78:  72 41 ca 94   bl	0x255585340
0x2522f4d7c:  f9 03 00 aa   mov	x25, x0
0x2522f4d80:  a0 03 19 f8   stur	x0, [fp, #-0x70]
0x2522f4d84:  c8 02 00 b0   adrp	x8, 0x25234d000
0x2522f4d88:  00 65 40 fd   ldr	d0, [x8, #0xc8]
0x2522f4d8c:  c0 02 00 bd   str	s0, [x22]
0x2522f4d90:  e8 02 00 d0   adrp	x8, 0x252352000
0x2522f4d94:  08 81 3e 91   add	x8, x8, #0xfa0 ; "retrievePairingInfo(_:)"
0x2522f4d98:  08 81 00 d1   sub	x8, x8, #0x20
0x2522f4d9c:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x2522f4da0:  a2 c3 01 d1   sub	x2, fp, #0x70
0x2522f4da4:  e0 02 80 d2   mov	x0, #0x17
0x2522f4da8:  00 00 fa f2   movk	x0, #0xd000, lsl #0x30
0x2522f4dac:  21 9c fe 97   bl	0x25229be30
0x2522f4db0:  c0 42 00 f8   stur	x0, [x22, #0x4]
0x2522f4db4:  a0 fc ff b0   adrp	x0, 0x252289000
0x2522f4db8:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x2522f4dbc:  23 03 00 f0   adrp	x3, 0x25235b000
0x2522f4dc0:  63 80 20 91   add	x3, x3, #0x820 ; "%{public}s Invalid remote address!"
0x2522f4dc4:  e2 1e 00 12   and	w2, w23, #0xff
0x2522f4dc8:  e1 03 14 aa   mov	x1, x20
0x2522f4dcc:  e4 03 16 aa   mov	x4, x22
0x2522f4dd0:  85 01 80 52   mov	w5, #0xc
0x2522f4dd4:  d3 3f ca 94   bl	0x255584d20
0x2522f4dd8:  e0 03 19 aa   mov	x0, x25
0x2522f4ddc:  2b 9d fe 97   bl	___swift_destroy_boxed_opaque_existential_1
0x2522f4de0:  e0 03 19 aa   mov	x0, x25
0x2522f4de4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4de8:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x2522f4dec:  59 41 ca 94   bl	0x255585350
0x2522f4df0:  e0 03 16 aa   mov	x0, x22
0x2522f4df4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4df8:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x2522f4dfc:  55 41 ca 94   bl	0x255585350
0x2522f4e00:  ; loc_2522f4e00
0x2522f4e00:  00 40 ca 94   bl	0x255584e00
0x2522f4e04:  68 22 00 91   add	x8, x19, #0x8
0x2522f4e08:  e0 03 18 aa   mov	x0, x24
0x2522f4e0c:  e1 03 1a aa   mov	x1, x26
0x2522f4e10:  f1 03 08 aa   mov	x17, x8
0x2522f4e14:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x2522f4e18:  91 0b 3f d7   blraa	x28, x17
0x2522f4e1c:  b7 83 5b f8   ldur	x23, [fp, #-0x48]
0x2522f4e20:  00 00 80 d2   mov	x0, #0
0x2522f4e24:  0d 06 01 94   bl	0x252336658
0x2522f4e28:  f3 03 00 aa   mov	x19, x0
0x2522f4e2c:  60 74 16 b0   adrp	x0, 0x27f181000
0x2522f4e30:  00 80 18 91   add	x0, x0, #0x620 ; data_27f181620 (__DATA.__data)
0x2522f4e34:  10 02 00 d0   adrp	x16, 0x252336000
0x2522f4e38:  10 62 19 91   add	x16, x16, #0x658
0x2522f4e3c:  51 94 83 d2   mov	x17, #0x1ca2
0x2522f4e40:  30 02 c1 da   pacia	x16, x17
0x2522f4e44:  e1 03 10 aa   mov	x1, x16
0x2522f4e48:  f0 02 00 90   adrp	x16, 0x252350000
0x2522f4e4c:  10 02 3f 91   add	x16, x16, #0xfc0 ; "I-\xe5/\xf4]"
0x2522f4e50:  71 dd 98 d2   mov	x17, #0xc6eb
0x2522f4e54:  30 0a c1 da   pacda	x16, x17
0x2522f4e58:  e2 03 10 aa   mov	x2, x16
0x2522f4e5c:  c7 83 00 94   bl	0x252315d78
0x2522f4e60:  e1 03 00 aa   mov	x1, x0
0x2522f4e64:  e0 03 13 aa   mov	x0, x19
0x2522f4e68:  02 00 80 d2   mov	x2, #0
0x2522f4e6c:  03 00 80 52   mov	w3, #0
0x2522f4e70:  54 40 ca 94   bl	0x255584fc0
0x2522f4e74:  f4 03 00 aa   mov	x20, x0
0x2522f4e78:  e0 03 01 aa   mov	x0, x1
0x2522f4e7c:  e1 03 13 aa   mov	x1, x19
0x2522f4e80:  62 03 80 52   mov	w2, #0x1b
0x2522f4e84:  3b 41 ca 94   bl	0x255585370
0x2522f4e88:  f5 03 14 aa   mov	x21, x20
0x2522f4e8c:  71 41 ca 94   bl	0x255585450
0x2522f4e90:  e0 03 17 aa   mov	x0, x23
0x2522f4e94:  e1 03 1b aa   mov	x1, x27
0x2522f4e98:  7a 10 ff 97   bl	0x2522b9080
0x2522f4e9c:  a0 83 57 f8   ldur	x0, [fp, #-0x88]
0x2522f4ea0:  a1 83 55 f8   ldur	x1, [fp, #-0xa8]
0x2522f4ea4:  77 10 ff 97   bl	0x2522b9080
0x2522f4ea8:  6e 00 00 14   b	loc_2522f5060 ; ⤵ 0x1b8
0x2522f4eac:  ; loc_2522f4eac
0x2522f4eac:  d5 3f ca 94   bl	0x255584e00
0x2522f4eb0:  68 8e 40 f8   ldr	x8, [x19, #0x8]!
0x2522f4eb4:  e0 03 19 aa   mov	x0, x25
0x2522f4eb8:  e1 03 18 aa   mov	x1, x24
0x2522f4ebc:  f1 03 13 aa   mov	x17, x19
0x2522f4ec0:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x2522f4ec4:  11 09 3f d7   blraa	x8, x17
0x2522f4ec8:  4a 00 00 14   b	loc_2522f4ff0 ; ⤵ 0x128
0x2522f4ecc:  ; loc_2522f4ecc
0x2522f4ecc:  e0 03 17 aa   mov	x0, x23
0x2522f4ed0:  e1 03 1a aa   mov	x1, x26
0x2522f4ed4:  6b 10 ff 97   bl	0x2522b9080
0x2522f4ed8:  ; loc_2522f4ed8
0x2522f4ed8:  e0 03 1b aa   mov	x0, x27
0x2522f4edc:  59 40 ca 94   bl	0x255585040
0x2522f4ee0:  ba 83 5b f8   ldur	x26, [fp, #-0x48]
0x2522f4ee4:  e0 03 1a aa   mov	x0, x26
0x2522f4ee8:  a1 a3 76 a9   ldp	x1, x8, [fp, #-0x98]
0x2522f4eec:  e2 03 18 aa   mov	x2, x24
0x2522f4ef0:  19 09 3f d7   blraa	x8, x25
0x2522f4ef4:  f4 03 1a aa   mov	x20, x26
0x2522f4ef8:  fa 3c ca 94   bl	0x2555842e0
0x2522f4efc:  f4 03 00 aa   mov	x20, x0
0x2522f4f00:  20 3e ca 94   bl	0x255584780
0x2522f4f04:  f7 03 00 aa   mov	x23, x0
0x2522f4f08:  01 1c 00 12   and	w1, w0, #0xff
0x2522f4f0c:  e0 03 14 aa   mov	x0, x20
0x2522f4f10:  24 40 ca 94   bl	0x255584fa0
0x2522f4f14:  00 06 00 34   cbz	w0, loc_2522f4fd4 ; ⤵ 0xc0
0x2522f4f18:  80 01 80 52   mov	w0, #0xc
0x2522f4f1c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4f20:  08 41 ca 94   bl	0x255585340
0x2522f4f24:  f6 03 00 aa   mov	x22, x0
0x2522f4f28:  00 04 80 52   mov	w0, #0x20
0x2522f4f2c:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4f30:  04 41 ca 94   bl	0x255585340
0x2522f4f34:  f9 03 13 aa   mov	x25, x19
0x2522f4f38:  f3 03 18 aa   mov	x19, x24
0x2522f4f3c:  f8 03 00 aa   mov	x24, x0
0x2522f4f40:  a0 03 19 f8   stur	x0, [fp, #-0x70]
0x2522f4f44:  c8 02 00 b0   adrp	x8, 0x25234d000
0x2522f4f48:  00 65 40 fd   ldr	d0, [x8, #0xc8]
0x2522f4f4c:  c0 02 00 bd   str	s0, [x22]
0x2522f4f50:  e8 02 00 d0   adrp	x8, 0x252352000
0x2522f4f54:  08 81 3e 91   add	x8, x8, #0xfa0 ; "retrievePairingInfo(_:)"
0x2522f4f58:  08 81 00 d1   sub	x8, x8, #0x20
0x2522f4f5c:  01 01 41 b2   orr	x1, x8, #0x8000000000000000
0x2522f4f60:  a2 c3 01 d1   sub	x2, fp, #0x70
0x2522f4f64:  e0 02 80 d2   mov	x0, #0x17
0x2522f4f68:  00 00 fa f2   movk	x0, #0xd000, lsl #0x30
0x2522f4f6c:  b1 9b fe 97   bl	0x25229be30
0x2522f4f70:  c0 42 00 f8   stur	x0, [x22, #0x4]
0x2522f4f74:  a0 fc ff b0   adrp	x0, 0x252289000
0x2522f4f78:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x2522f4f7c:  23 03 00 f0   adrp	x3, 0x25235b000
0x2522f4f80:  63 c0 1f 91   add	x3, x3, #0x7f0 ; "%{public}s Invalid pairing info!"
0x2522f4f84:  e2 1e 00 12   and	w2, w23, #0xff
0x2522f4f88:  e1 03 14 aa   mov	x1, x20
0x2522f4f8c:  e4 03 16 aa   mov	x4, x22
0x2522f4f90:  85 01 80 52   mov	w5, #0xc
0x2522f4f94:  63 3f ca 94   bl	0x255584d20
0x2522f4f98:  e0 03 18 aa   mov	x0, x24
0x2522f4f9c:  bb 9c fe 97   bl	___swift_destroy_boxed_opaque_existential_1
0x2522f4fa0:  e0 03 18 aa   mov	x0, x24
0x2522f4fa4:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x2522f4fa8:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x2522f4fac:  e9 40 ca 94   bl	0x255585350

