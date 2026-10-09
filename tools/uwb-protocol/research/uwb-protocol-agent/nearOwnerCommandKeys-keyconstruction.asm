0x10077af18:  70 4e 00 b0   adrp	x16, 0x101147000
0x10077af1c:  10 82 00 91   add	x16, x16, #0x20
0x10077af20:  f1 5c 80 d2   mov	x17, #0x2e7
0x10077af24:  30 02 c1 da   pacia	x16, x17
0x10077af28:  e2 03 10 aa   mov	x2, x16
0x10077af2c:  e0 03 18 aa   mov	x0, x24
0x10077af30:  e1 03 1c aa   mov	x1, x28
0x10077af34:  2d dc e2 97   bl	0x100031fe8
0x10077af38:  fb 06 40 f9   ldr	x27, [x23, #0x8]
0x10077af3c:  68 ff 7c d3   lsr	x8, x27, #0x3c
0x10077af40:  1f 39 00 f1   cmp	x8, #0xe
0x10077af44:  e8 f3 ff 54   b.hi	loc_10077adc0 ; ⤴ -0x184
0x10077af48:  b8 83 10 f8   stur	x24, [fp, #-0xf8]
0x10077af4c:  f8 02 40 f9   ldr	x24, [x23]
0x10077af50:  a8 43 01 d1   sub	x8, fp, #0x50
0x10077af54:  08 01 50 f8   ldur	x8, [x8, #-0x100]
0x10077af58:  19 15 80 b9   ldrsw	x25, [x8, #0x14]
0x10077af5c:  f3 52 41 a9   ldp	x19, x20, [x23, #0x10]
0x10077af60:  e0 03 18 aa   mov	x0, x24
0x10077af64:  e1 03 1b aa   mov	x1, x27
0x10077af68:  a3 77 e2 97   bl	0x100018df4
0x10077af6c:  e0 03 13 aa   mov	x0, x19
0x10077af70:  e1 03 14 aa   mov	x1, x20
0x10077af74:  b3 7d f6 97   bl	0x10051a640
0x10077af78:  f3 03 00 aa   mov	x19, x0
0x10077af7c:  f5 03 01 aa   mov	x21, x1
0x10077af80:  48 88 00 f0   adrp	x8, 0x101885000
0x10077af84:  00 8d 41 f9   ldr	x0, [x8, #0x318] ; __got._OBJC_CLASS_$_SPBeaconingKey
0x10077af88:  86 40 38 94   bl	j__objc_allocWithZone
0x10077af8c:  f6 03 00 aa   mov	x22, x0
0x10077af90:  94 03 19 8b   add	x20, x28, x25
0x10077af94:  6b 27 38 94   bl	j__$s10Foundation12DateIntervalV19_bridgeToObjectiveCSo06NSDateC0CyF
0x10077af98:  ba 03 11 f8   stur	x26, [fp, #-0xf0]
0x10077af9c:  fa 03 00 aa   mov	x26, x0
0x10077afa0:  e0 03 13 aa   mov	x0, x19
0x10077afa4:  e1 03 15 aa   mov	x1, x21
0x10077afa8:  5a 29 38 94   bl	j__$s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF
0x10077afac:  fc 03 00 aa   mov	x28, x0
0x10077afb0:  e0 03 16 aa   mov	x0, x22
0x10077afb4:  e2 03 1a aa   mov	x2, x26
0x10077afb8:  e3 03 1c aa   mov	x3, x28
0x10077afbc:  69 4c 38 94   bl	j__objc_msgSend(x0, "initWithDateInterval:key:")
0x10077afc0:  a8 23 00 d1   sub	x8, fp, #0x8
0x10077afc4:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10077afc8:  ae 40 38 94   bl	j__objc_release_x26
0x10077afcc:  b5 40 38 94   bl	j__objc_release_x28
0x10077afd0:  e0 03 13 aa   mov	x0, x19
0x10077afd4:  e1 03 15 aa   mov	x1, x21
0x10077afd8:  f2 6f e2 97   bl	0x100016fa0
0x10077afdc:  f3 03 18 aa   mov	x19, x24
0x10077afe0:  e0 03 18 aa   mov	x0, x24
0x10077afe4:  e1 03 1b aa   mov	x1, x27
0x10077afe8:  33 8a f6 97   bl	0x10051d8b4
0x10077afec:  a0 83 12 f8   stur	x0, [fp, #-0xd8]
0x10077aff0:  fa 03 01 aa   mov	x26, x1
0x10077aff4:  a8 83 00 d1   sub	x8, fp, #0x20
0x10077aff8:  01 01 10 f8   stur	x1, [x8, #-0x100]
0x10077affc:  e0 03 18 aa   mov	x0, x24
0x10077b000:  b8 03 10 f8   stur	x24, [fp, #-0x100]
0x10077b004:  b8 83 50 f8   ldur	x24, [fp, #-0xf8]
0x10077b008:  e1 03 1b aa   mov	x1, x27
0x10077b00c:  f8 80 f6 97   bl	0x10051b3ec
0x10077b010:  a8 43 00 d1   sub	x8, fp, #0x10
0x10077b014:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10077b018:  a8 63 00 d1   sub	x8, fp, #0x18
0x10077b01c:  01 01 10 f8   stur	x1, [x8, #-0x100]
0x10077b020:  e0 06 41 a9   ldp	x0, x1, [x23, #0x10]
0x10077b024:  87 7d f6 97   bl	0x10051a640
0x10077b028:  f6 03 00 aa   mov	x22, x0
0x10077b02c:  f9 03 01 aa   mov	x25, x1
0x10077b030:  e0 03 13 aa   mov	x0, x19
0x10077b034:  e1 03 1b aa   mov	x1, x27
0x10077b038:  1f 8a f6 97   bl	0x10051d8b4
0x10077b03c:  f4 03 00 aa   mov	x20, x0
0x10077b040:  f5 03 01 aa   mov	x21, x1
0x10077b044:  e2 03 16 aa   mov	x2, x22
0x10077b048:  e3 03 19 aa   mov	x3, x25
0x10077b04c:  61 87 f6 97   bl	0x10051cdd0
0x10077b050:  f7 03 00 aa   mov	x23, x0
0x10077b054:  a8 c3 00 d1   sub	x8, fp, #0x30
0x10077b058:  00 01 10 f8   stur	x0, [x8, #-0x100]
0x10077b05c:  a8 a3 00 d1   sub	x8, fp, #0x28
0x10077b060:  01 01 10 f8   stur	x1, [x8, #-0x100]
0x10077b064:  e0 03 14 aa   mov	x0, x20
0x10077b068:  e1 03 15 aa   mov	x1, x21
0x10077b06c:  cd 6f e2 97   bl	0x100016fa0
0x10077b070:  e0 03 16 aa   mov	x0, x22
0x10077b074:  e1 03 19 aa   mov	x1, x25
0x10077b078:  ca 6f e2 97   bl	0x100016fa0
0x10077b07c:  48 88 00 d0   adrp	x8, 0x101885000
0x10077b080:  00 a5 41 f9   ldr	x0, [x8, #0x348] ; __got._OBJC_CLASS_$_SPCommandKeys
0x10077b084:  47 40 38 94   bl	j__objc_allocWithZone
0x10077b088:  f4 03 00 aa   mov	x20, x0
0x10077b08c:  a0 83 52 f8   ldur	x0, [fp, #-0xd8]
0x10077b090:  e1 03 1a aa   mov	x1, x26
0x10077b094:  1f 29 38 94   bl	j__$s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF
0x10077b098:  fc 03 00 aa   mov	x28, x0
0x10077b09c:  a8 43 00 d1   sub	x8, fp, #0x10
0x10077b0a0:  1a 01 50 f8   ldur	x26, [x8, #-0x100]
0x10077b0a4:  e0 03 1a aa   mov	x0, x26
0x10077b0a8:  a8 63 00 d1   sub	x8, fp, #0x18
0x10077b0ac:  13 01 50 f8   ldur	x19, [x8, #-0x100]
0x10077b0b0:  e1 03 13 aa   mov	x1, x19
0x10077b0b4:  17 29 38 94   bl	j__$s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF
0x10077b0b8:  f9 03 00 aa   mov	x25, x0
0x10077b0bc:  e0 03 17 aa   mov	x0, x23
0x10077b0c0:  a8 a3 00 d1   sub	x8, fp, #0x28
0x10077b0c4:  17 01 50 f8   ldur	x23, [x8, #-0x100]
0x10077b0c8:  e1 03 17 aa   mov	x1, x23
0x10077b0cc:  11 29 38 94   bl	j__$s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF
0x10077b0d0:  f6 03 00 aa   mov	x22, x0
0x10077b0d4:  e0 03 14 aa   mov	x0, x20
0x10077b0d8:  a8 23 00 d1   sub	x8, fp, #0x8
0x10077b0dc:  14 01 50 f8   ldur	x20, [x8, #-0x100]
0x10077b0e0:  e2 03 14 aa   mov	x2, x20
0x10077b0e4:  e3 03 1c aa   mov	x3, x28
0x10077b0e8:  e4 03 19 aa   mov	x4, x25
0x10077b0ec:  e5 03 16 aa   mov	x5, x22
0x10077b0f0:  a4 4b 38 94   bl	j__objc_msgSend(x0, "initWithBeaconingKey:commandKey:connectionToken:nearbyToken:")
0x10077b0f4:  f5 03 00 aa   mov	x21, x0
0x10077b0f8:  6a 40 38 94   bl	j__objc_release_x28
0x10077b0fc:  5d 40 38 94   bl	j__objc_release_x25
0x10077b100:  50 40 38 94   bl	j__objc_release_x22
0x10077b104:  a8 c3 00 d1   sub	x8, fp, #0x30
0x10077b108:  00 01 50 f8   ldur	x0, [x8, #-0x100]
0x10077b10c:  a8 63 01 d1   sub	x8, fp, #0x58
0x10077b110:  1c 01 50 f8   ldur	x28, [x8, #-0x100]
0x10077b114:  e1 03 17 aa   mov	x1, x23
0x10077b118:  a2 6f e2 97   bl	0x100016fa0
0x10077b11c:  e0 03 1a aa   mov	x0, x26
0x10077b120:  e1 03 13 aa   mov	x1, x19
0x10077b124:  ba 03 51 f8   ldur	x26, [fp, #-0xf0]
0x10077b128:  9e 6f e2 97   bl	0x100016fa0
0x10077b12c:  a0 83 52 f8   ldur	x0, [fp, #-0xd8]
0x10077b130:  a8 83 00 d1   sub	x8, fp, #0x20
0x10077b134:  01 01 50 f8   ldur	x1, [x8, #-0x100]
0x10077b138:  9a 6f e2 97   bl	0x100016fa0
0x10077b13c:  39 40 38 94   bl	j__objc_release_x20
0x10077b140:  a0 03 50 f8   ldur	x0, [fp, #-0x100]
0x10077b144:  e1 03 1b aa   mov	x1, x27
0x10077b148:  a3 2d e2 97   bl	0x1000067d4
0x10077b14c:  70 4e 00 90   adrp	x16, 0x101147000
0x10077b150:  10 82 00 91   add	x16, x16, #0x20
0x10077b154:  11 06 93 d2   mov	x17, #0x9830
0x10077b158:  30 02 c1 da   pacia	x16, x17
0x10077b15c:  e1 03 10 aa   mov	x1, x16
0x10077b160:  e0 03 1c aa   mov	x0, x28
0x10077b164:  3d 68 01 94   bl	0x1007d5258
0x10077b168:  15 ed ff b4   cbz	x21, loc_10077af08 ; ⤴ -0x260
0x10077b16c:  b4 23 03 d1   sub	x20, fp, #0xc8

