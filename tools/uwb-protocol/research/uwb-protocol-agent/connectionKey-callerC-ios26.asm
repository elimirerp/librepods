0x100822e70:  80 07 40 a9   ldp	x0, x1, [x28]
0x100822e74:  a0 07 39 a9   stp	x0, x1, [fp, #-0x70]
0x100822e78:  08 01 80 52   mov	w8, #0x8
0x100822e7c:  a8 f3 18 38   sturb	w8, [fp, #-0x71]
0x100822e80:  dd d7 df 97   bl	0x100018df4
0x100822e84:  23 83 00 90   adrp	x3, 0x101886000
0x100822e88:  63 8c 41 f9   ldr	x3, [x3, #0x318] ; __got._$s10Foundation4DataVN
0x100822e8c:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100822e90:  a1 c7 01 d1   sub	x1, fp, #0x71
0x100822e94:  e2 03 1a aa   mov	x2, x26
0x100822e98:  e4 03 19 aa   mov	x4, x25
0x100822e9c:  f5 03 18 aa   mov	x21, x24
0x100822ea0:  48 9d 35 94   bl	j__$ss22KeyedEncodingContainerV6encode_6forKeyyqd___xtKSERd__lF
0x100822ea4:  f8 03 15 aa   mov	x24, x21
0x100822ea8:  95 02 00 b4   cbz	x21, loc_100822ef8 ; ⤵ 0x50
0x100822eac:  ; loc_100822eac
0x100822eac:  a0 07 79 a9   ldp	x0, x1, [fp, #-0x70]
0x100822eb0:  3c d0 df 97   bl	0x100016fa0
0x100822eb4:  a9 03 55 f8   ldur	x9, [fp, #-0xb0]
0x100822eb8:  28 8d 40 f8   ldr	x8, [x9, #0x8]!
0x100822ebc:  e0 03 14 aa   mov	x0, x20
0x100822ec0:  e1 03 1a aa   mov	x1, x26
0x100822ec4:  f1 03 09 aa   mov	x17, x9
0x100822ec8:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x100822ecc:  11 09 3f d7   blraa	x8, x17
0x100822ed0:  f5 03 18 aa   mov	x21, x24
0x100822ed4:  bf 43 01 d1   sub	sp, fp, #0x50
0x100822ed8:  fd 7b 45 a9   ldp	fp, lr, [sp, #0x50]
0x100822edc:  f4 4f 44 a9   ldp	x20, x19, [sp, #0x40]
0x100822ee0:  f7 5b 43 a9   ldp	x23, x22, [sp, #0x30]
0x100822ee4:  f9 63 42 a9   ldp	x25, x24, [sp, #0x20]
0x100822ee8:  fb 6b 41 a9   ldp	x27, x26, [sp, #0x10]
0x100822eec:  fc 07 40 f9   ldr	x28, [sp, #0x8]
0x100822ef0:  e8 07 46 fc   ldr	d8, [sp], #0x60
0x100822ef4:  ff 0f 5f d6   retab
0x100822ef8:  ; loc_100822ef8
0x100822ef8:  a0 07 79 a9   ldp	x0, x1, [fp, #-0x70]
0x100822efc:  29 d0 df 97   bl	0x100016fa0
0x100822f00:  36 03 00 34   cbz	w22, loc_100822f64 ; ⤵ 0x64
0x100822f04:  00 00 80 d2   mov	x0, #0
0x100822f08:  3e 88 35 94   bl	j__$s10Foundation13__DataStorageCMa
0x100822f0c:  fa 03 00 aa   mov	x26, x0
0x100822f10:  01 30 40 b9   ldr	w1, [x0, #0x30]
0x100822f14:  02 68 40 79   ldrh	w2, [x0, #0x34]
0x100822f18:  a6 a1 35 94   bl	j__swift_allocObject
0x100822f1c:  f4 03 00 aa   mov	x20, x0
0x100822f20:  00 04 80 52   mov	w0, #0x20
0x100822f24:  27 88 35 94   bl	j__$s10Foundation13__DataStorageC6lengthACSi_tcfc
0x100822f28:  f3 03 00 aa   mov	x19, x0
0x100822f2c:  cd a2 35 94   bl	j__swift_isUniquelyReferenced_nonNull_native
0x100822f30:  40 0e 00 37   tbnz	w0, #0, loc_1008230f8 ; ⤵ 0x1c8
0x100822f34:  e0 03 13 aa   mov	x0, x19
0x100822f38:  ea a2 35 94   bl	j__swift_retain
0x100822f3c:  f4 03 13 aa   mov	x20, x19
0x100822f40:  1c 88 35 94   bl	j__$s10Foundation13__DataStorageC6_bytesSvSgvg
0x100822f44:  40 0b 00 b4   cbz	x0, loc_1008230ac ; ⤵ 0x168
0x100822f48:  f6 03 00 aa   mov	x22, x0
0x100822f4c:  f4 03 13 aa   mov	x20, x19
0x100822f50:  24 88 35 94   bl	j__$s10Foundation13__DataStorageC7_offsetSivg
0x100822f54:  e8 03 00 eb   negs	x8, x0
0x100822f58:  46 31 00 54   b.vs	loc_100823580 ; ⤵ 0x628
0x100822f5c:  14 01 16 8b   add	x20, x8, x22
0x100822f60:  54 00 00 14   b	loc_1008230b0 ; ⤵ 0x150
0x100822f64:  ; loc_100822f64
0x100822f64:  68 23 80 b9   ldrsw	x8, [x27, #0x20]
0x100822f68:  a9 03 57 f8   ldur	x9, [fp, #-0x90]
0x100822f6c:  28 01 08 8b   add	x8, x9, x8
0x100822f70:  00 05 40 a9   ldp	x0, x1, [x8]
0x100822f74:  a0 07 39 a9   stp	x0, x1, [fp, #-0x70]
0x100822f78:  88 00 80 52   mov	w8, #0x4
0x100822f7c:  a8 f3 18 38   sturb	w8, [fp, #-0x71]
0x100822f80:  9d d7 df 97   bl	0x100018df4
0x100822f84:  23 83 00 90   adrp	x3, 0x101886000
0x100822f88:  63 8c 41 f9   ldr	x3, [x3, #0x318] ; __got._$s10Foundation4DataVN
0x100822f8c:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100822f90:  a1 c7 01 d1   sub	x1, fp, #0x71
0x100822f94:  e2 03 1a aa   mov	x2, x26
0x100822f98:  e4 03 19 aa   mov	x4, x25
0x100822f9c:  b4 03 58 f8   ldur	x20, [fp, #-0x80]
0x100822fa0:  f5 03 18 aa   mov	x21, x24
0x100822fa4:  07 9d 35 94   bl	j__$ss22KeyedEncodingContainerV6encode_6forKeyyqd___xtKSERd__lF
0x100822fa8:  f8 03 15 aa   mov	x24, x21
0x100822fac:  15 f8 ff b5   cbnz	x21, loc_100822eac ; ⤴ -0x100
0x100822fb0:  a0 07 79 a9   ldp	x0, x1, [fp, #-0x70]
0x100822fb4:  fb cf df 97   bl	0x100016fa0
0x100822fb8:  80 07 40 a9   ldp	x0, x1, [x28]
0x100822fbc:  3e ea f3 97   bl	0x10051d8b4
0x100822fc0:  a0 07 39 a9   stp	x0, x1, [fp, #-0x70]
0x100822fc4:  28 01 80 52   mov	w8, #0x9
0x100822fc8:  a8 f3 18 38   sturb	w8, [fp, #-0x71]
0x100822fcc:  23 83 00 90   adrp	x3, 0x101886000
0x100822fd0:  63 8c 41 f9   ldr	x3, [x3, #0x318] ; __got._$s10Foundation4DataVN
0x100822fd4:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100822fd8:  a1 c7 01 d1   sub	x1, fp, #0x71
0x100822fdc:  e2 03 1a aa   mov	x2, x26
0x100822fe0:  e4 03 19 aa   mov	x4, x25
0x100822fe4:  b4 03 58 f8   ldur	x20, [fp, #-0x80]
0x100822fe8:  f5 03 18 aa   mov	x21, x24
0x100822fec:  f5 9c 35 94   bl	j__$ss22KeyedEncodingContainerV6encode_6forKeyyqd___xtKSERd__lF
0x100822ff0:  f8 03 15 aa   mov	x24, x21
0x100822ff4:  d5 f5 ff b5   cbnz	x21, loc_100822eac ; ⤴ -0x148
0x100822ff8:  a0 07 79 a9   ldp	x0, x1, [fp, #-0x70]
0x100822ffc:  e9 cf df 97   bl	0x100016fa0
0x100823000:  80 07 40 a9   ldp	x0, x1, [x28]
0x100823004:  fa e0 f3 97   bl	0x10051b3ec
0x100823008:  a0 07 39 a9   stp	x0, x1, [fp, #-0x70]
0x10082300c:  48 01 80 52   mov	w8, #0xa
0x100823010:  a8 f3 18 38   sturb	w8, [fp, #-0x71]
0x100823014:  03 83 00 f0   adrp	x3, 0x101886000
0x100823018:  63 8c 41 f9   ldr	x3, [x3, #0x318] ; __got._$s10Foundation4DataVN
0x10082301c:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100823020:  a1 c7 01 d1   sub	x1, fp, #0x71
0x100823024:  e2 03 1a aa   mov	x2, x26
0x100823028:  e4 03 19 aa   mov	x4, x25
0x10082302c:  f5 03 18 aa   mov	x21, x24
0x100823030:  e4 9c 35 94   bl	j__$ss22KeyedEncodingContainerV6encode_6forKeyyqd___xtKSERd__lF
0x100823034:  f8 03 15 aa   mov	x24, x21
0x100823038:  b5 f3 ff b5   cbnz	x21, loc_100822eac ; ⤴ -0x18c
0x10082303c:  a0 07 79 a9   ldp	x0, x1, [fp, #-0x70]
0x100823040:  d8 cf df 97   bl	0x100016fa0
0x100823044:  f3 6e 40 a9   ldp	x19, x27, [x23]
0x100823048:  80 07 40 a9   ldp	x0, x1, [x28]
0x10082304c:  1a ea f3 97   bl	0x10051d8b4
0x100823050:  f6 03 00 aa   mov	x22, x0
0x100823054:  f7 03 01 aa   mov	x23, x1
0x100823058:  e2 03 13 aa   mov	x2, x19
0x10082305c:  e3 03 1b aa   mov	x3, x27
0x100823060:  5c e7 f3 97   bl	0x10051cdd0
0x100823064:  f3 03 00 aa   mov	x19, x0
0x100823068:  fb 03 01 aa   mov	x27, x1
0x10082306c:  e0 03 16 aa   mov	x0, x22
0x100823070:  e1 03 17 aa   mov	x1, x23
0x100823074:  cb cf df 97   bl	0x100016fa0
0x100823078:  b3 6f 39 a9   stp	x19, x27, [fp, #-0x70]
0x10082307c:  68 01 80 52   mov	w8, #0xb
0x100823080:  a8 f3 18 38   sturb	w8, [fp, #-0x71]
0x100823084:  03 83 00 f0   adrp	x3, 0x101886000
0x100823088:  63 8c 41 f9   ldr	x3, [x3, #0x318] ; __got._$s10Foundation4DataVN
0x10082308c:  a0 c3 01 d1   sub	x0, fp, #0x70
0x100823090:  a1 c7 01 d1   sub	x1, fp, #0x71
0x100823094:  e2 03 1a aa   mov	x2, x26
0x100823098:  e4 03 19 aa   mov	x4, x25
0x10082309c:  f5 03 18 aa   mov	x21, x24
0x1008230a0:  c8 9c 35 94   bl	j__$ss22KeyedEncodingContainerV6encode_6forKeyyqd___xtKSERd__lF
0x1008230a4:  f8 03 15 aa   mov	x24, x21
0x1008230a8:  81 ff ff 17   b	loc_100822eac ; ⤴ -0x1fc
0x1008230ac:  ; loc_1008230ac
0x1008230ac:  14 00 80 d2   mov	x20, #0
0x1008230b0:  ; loc_1008230b0
0x1008230b0:  41 33 40 b9   ldr	w1, [x26, #0x30]
0x1008230b4:  42 6b 40 79   ldrh	w2, [x26, #0x34]
0x1008230b8:  e0 03 1a aa   mov	x0, x26
0x1008230bc:  3d a1 35 94   bl	j__swift_allocObject
0x1008230c0:  e6 03 00 aa   mov	x6, x0
0x1008230c4:  e0 03 14 aa   mov	x0, x20
0x1008230c8:  01 04 80 52   mov	w1, #0x20
0x1008230cc:  22 00 80 52   mov	w2, #0x1
0x1008230d0:  03 00 80 d2   mov	x3, #0
0x1008230d4:  04 00 80 d2   mov	x4, #0
0x1008230d8:  05 00 80 d2   mov	x5, #0
0x1008230dc:  f4 03 06 aa   mov	x20, x6
0x1008230e0:  ac 87 35 94   bl	j__$s10Foundation13__DataStorageC5bytes6length4copy11deallocator6offsetACSvSg_SiSbySv_SitcSgSitcfc
0x1008230e4:  f4 03 00 aa   mov	x20, x0
0x1008230e8:  e0 03 13 aa   mov	x0, x19
0x1008230ec:  41 00 80 52   mov	w1, #0x2

