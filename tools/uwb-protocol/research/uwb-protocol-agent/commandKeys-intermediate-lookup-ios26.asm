0x100765d00:  ff 23 03 d5   autibsp
0x100765d04:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100765d08:  50 00 f0 b6   tbz	x16, #0x3e, loc_100765d10 ; ⤵ 0x8
0x100765d0c:  20 8e 38 d4   brk	#0xc471
0x100765d10:  ; loc_100765d10
0x100765d10:  f0 03 00 aa   mov	x16, x0
0x100765d14:  f0 e0 fa f2   movk	x16, #0xd707, lsl #0x30
0x100765d18:  30 08 1f d7   braa	x1, x16

sub_100765d1c:
0x100765d1c:  7f 23 03 d5   pacibsp
0x100765d20:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x100765d24:  ff 03 04 d1   sub	sp, sp, #0x100
0x100765d28:  fc ef 0a a9   stp	x28, x27, [sp, #0xa8]
0x100765d2c:  fa e7 0b a9   stp	x26, x25, [sp, #0xb8]
0x100765d30:  f8 df 0c a9   stp	x24, x23, [sp, #0xc8]
0x100765d34:  f5 cf 0d a9   stp	x21, x19, [sp, #0xd8]
0x100765d38:  fd 7b 0f a9   stp	fp, lr, [sp, #0xf0]
0x100765d3c:  f0 a3 03 91   add	x16, sp, #0xe8
0x100765d40:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x100765d44:  f1 03 16 aa   mov	x17, x22
0x100765d48:  11 0e c1 da   pacdb	x17, x16
0x100765d4c:  f1 77 00 f9   str	x17, [sp, #0xe8]
0x100765d50:  fd c3 03 91   add	fp, sp, #0xf0
0x100765d54:  d4 36 41 f9   ldr	x20, [x22, #0x268]
0x100765d58:  d3 32 41 f9   ldr	x19, [x22, #0x260]
0x100765d5c:  d9 2a 41 f9   ldr	x25, [x22, #0x250]
0x100765d60:  d7 26 41 f9   ldr	x23, [x22, #0x248]
0x100765d64:  d5 fa 40 f9   ldr	x21, [x22, #0x1f0]
0x100765d68:  c0 de 40 f9   ldr	x0, [x22, #0x1b8]
0x100765d6c:  c9 c6 40 f9   ldr	x9, [x22, #0x188]
0x100765d70:  d8 be 40 f9   ldr	x24, [x22, #0x178]
0x100765d74:  c8 b2 40 f9   ldr	x8, [x22, #0x160]
0x100765d78:  a9 a3 3a a9   stp	x9, x8, [fp, #-0x58]
0x100765d7c:  da 7e 40 f9   ldr	x26, [x22, #0xf8]
0x100765d80:  db 72 40 f9   ldr	x27, [x22, #0xe0]
0x100765d84:  dc 5a 40 f9   ldr	x28, [x22, #0xb0]
0x100765d88:  4e 97 38 94   bl	j__swift_release
0x100765d8c:  e0 03 13 aa   mov	x0, x19
0x100765d90:  e1 03 14 aa   mov	x1, x20
0x100765d94:  90 82 e2 97   bl	0x1000067d4
0x100765d98:  e0 03 15 aa   mov	x0, x21
0x100765d9c:  49 97 38 94   bl	j__swift_release
0x100765da0:  d0 c5 ff f0   adrp	x16, 0x100020000
0x100765da4:  10 c2 18 91   add	x16, x16, #0x630
0x100765da8:  11 06 93 d2   mov	x17, #0x9830
0x100765dac:  30 02 c1 da   pacia	x16, x17
0x100765db0:  e1 03 10 aa   mov	x1, x16
0x100765db4:  e0 03 1c aa   mov	x0, x28
0x100765db8:  28 bd 01 94   bl	0x1007d5258
0x100765dbc:  e0 03 1a aa   mov	x0, x26
0x100765dc0:  e1 03 1b aa   mov	x1, x27
0x100765dc4:  f9 0a 3f d7   blraa	x23, x25
0x100765dc8:  d0 c5 ff d0   adrp	x16, 0x10001f000
0x100765dcc:  10 e2 31 91   add	x16, x16, #0xc78
0x100765dd0:  11 06 93 d2   mov	x17, #0x9830
0x100765dd4:  30 02 c1 da   pacia	x16, x17
0x100765dd8:  e1 03 10 aa   mov	x1, x16
0x100765ddc:  e0 03 18 aa   mov	x0, x24
0x100765de0:  1e bd 01 94   bl	0x1007d5258
0x100765de4:  e1 8d 00 b0   adrp	x1, 0x101922000
0x100765de8:  21 80 0b 91   add	x1, x1, #0x2e0 ; data_1019222e0 (__DATA.__data)
0x100765dec:  a2 76 00 90   adrp	x2, 0x101639000
0x100765df0:  42 00 2b 91   add	x2, x2, #0xac0
0x100765df4:  a0 83 5a f8   ldur	x0, [fp, #-0x58]
0x100765df8:  de 96 e2 97   bl	0x10000b970
0x100765dfc:  c1 8d 00 d0   adrp	x1, 0x10191f000
0x100765e00:  21 c0 12 91   add	x1, x1, #0x4b0 ; data_10191f4b0 (__DATA.__data)
0x100765e04:  82 74 00 b0   adrp	x2, 0x1015f6000
0x100765e08:  42 80 10 91   add	x2, x2, #0x420 ; "\xc6\xc6\f"
0x100765e0c:  a0 03 5b f8   ldur	x0, [fp, #-0x50]
0x100765e10:  d8 96 e2 97   bl	0x10000b970
0x100765e14:  c8 4a 41 f9   ldr	x8, [x22, #0x290]
0x100765e18:  a8 03 1b f8   stur	x8, [fp, #-0x50]
0x100765e1c:  d5 02 58 a9   ldp	x21, x0, [x22, #0x180]
0x100765e20:  d7 be 40 f9   ldr	x23, [x22, #0x178]
0x100765e24:  d9 e2 55 a9   ldp	x25, x24, [x22, #0x158]
0x100765e28:  db ea 54 a9   ldp	x27, x26, [x22, #0x148]
0x100765e2c:  d3 f2 53 a9   ldp	x19, x28, [x22, #0x138]
0x100765e30:  d4 96 40 f9   ldr	x20, [x22, #0x128]
0x100765e34:  c8 a6 50 a9   ldp	x8, x9, [x22, #0x108]
0x100765e38:  e9 a3 00 a9   stp	x9, x8, [sp, #0x8]
0x100765e3c:  c8 a6 4f a9   ldp	x8, x9, [x22, #0xf8]
0x100765e40:  e9 a3 01 a9   stp	x9, x8, [sp, #0x18]
0x100765e44:  c9 7a 40 f9   ldr	x9, [x22, #0xf0]
0x100765e48:  cb 2a 4d a9   ldp	x11, x10, [x22, #0xd0]
0x100765e4c:  e9 ab 02 a9   stp	x9, x10, [sp, #0x28]
0x100765e50:  ca 26 4c a9   ldp	x10, x9, [x22, #0xc0]
0x100765e54:  eb a7 03 a9   stp	x11, x9, [sp, #0x38]
0x100765e58:  cb 26 4b a9   ldp	x11, x9, [x22, #0xb0]
0x100765e5c:  ea a7 04 a9   stp	x10, x9, [sp, #0x48]
0x100765e60:  ca a6 49 a9   ldp	x10, x9, [x22, #0x98]
0x100765e64:  eb a7 05 a9   stp	x11, x9, [sp, #0x58]
0x100765e68:  c8 a6 48 a9   ldp	x8, x9, [x22, #0x88]
0x100765e6c:  ea a7 06 a9   stp	x10, x9, [sp, #0x68]
0x100765e70:  e8 3f 00 f9   str	x8, [sp, #0x78]
0x100765e74:  c8 a6 47 a9   ldp	x8, x9, [x22, #0x78]
0x100765e78:  a9 23 39 a9   stp	x9, x8, [fp, #-0x70]
0x100765e7c:  c9 32 40 f9   ldr	x9, [x22, #0x60]
0x100765e80:  c8 26 40 f9   ldr	x8, [x22, #0x48]
0x100765e84:  a9 23 3a a9   stp	x9, x8, [fp, #-0x60]
0x100765e88:  46 97 38 94   bl	j__swift_task_dealloc
0x100765e8c:  e0 03 15 aa   mov	x0, x21
0x100765e90:  44 97 38 94   bl	j__swift_task_dealloc
0x100765e94:  e0 03 17 aa   mov	x0, x23
0x100765e98:  42 97 38 94   bl	j__swift_task_dealloc
0x100765e9c:  e0 03 18 aa   mov	x0, x24
0x100765ea0:  40 97 38 94   bl	j__swift_task_dealloc
0x100765ea4:  e0 03 19 aa   mov	x0, x25
0x100765ea8:  3e 97 38 94   bl	j__swift_task_dealloc
0x100765eac:  e0 03 1a aa   mov	x0, x26
0x100765eb0:  3c 97 38 94   bl	j__swift_task_dealloc
0x100765eb4:  e0 03 1b aa   mov	x0, x27
0x100765eb8:  3a 97 38 94   bl	j__swift_task_dealloc
0x100765ebc:  e0 03 1c aa   mov	x0, x28
0x100765ec0:  38 97 38 94   bl	j__swift_task_dealloc
0x100765ec4:  e0 03 13 aa   mov	x0, x19
0x100765ec8:  36 97 38 94   bl	j__swift_task_dealloc
0x100765ecc:  e0 03 14 aa   mov	x0, x20
0x100765ed0:  34 97 38 94   bl	j__swift_task_dealloc
0x100765ed4:  e0 07 40 f9   ldr	x0, [sp, #0x8]
0x100765ed8:  32 97 38 94   bl	j__swift_task_dealloc
0x100765edc:  e0 0b 40 f9   ldr	x0, [sp, #0x10]
0x100765ee0:  30 97 38 94   bl	j__swift_task_dealloc
0x100765ee4:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x100765ee8:  2e 97 38 94   bl	j__swift_task_dealloc
0x100765eec:  e0 13 40 f9   ldr	x0, [sp, #0x20]
0x100765ef0:  2c 97 38 94   bl	j__swift_task_dealloc
0x100765ef4:  e0 17 40 f9   ldr	x0, [sp, #0x28]
0x100765ef8:  2a 97 38 94   bl	j__swift_task_dealloc
0x100765efc:  e0 1b 40 f9   ldr	x0, [sp, #0x30]
0x100765f00:  28 97 38 94   bl	j__swift_task_dealloc
0x100765f04:  e0 1f 40 f9   ldr	x0, [sp, #0x38]
0x100765f08:  26 97 38 94   bl	j__swift_task_dealloc
0x100765f0c:  e0 23 40 f9   ldr	x0, [sp, #0x40]
0x100765f10:  24 97 38 94   bl	j__swift_task_dealloc
0x100765f14:  e0 27 40 f9   ldr	x0, [sp, #0x48]
0x100765f18:  22 97 38 94   bl	j__swift_task_dealloc
0x100765f1c:  e0 2b 40 f9   ldr	x0, [sp, #0x50]
0x100765f20:  20 97 38 94   bl	j__swift_task_dealloc
0x100765f24:  e0 2f 40 f9   ldr	x0, [sp, #0x58]
0x100765f28:  1e 97 38 94   bl	j__swift_task_dealloc
0x100765f2c:  e0 33 40 f9   ldr	x0, [sp, #0x60]
0x100765f30:  1c 97 38 94   bl	j__swift_task_dealloc
0x100765f34:  e0 37 40 f9   ldr	x0, [sp, #0x68]
0x100765f38:  1a 97 38 94   bl	j__swift_task_dealloc
0x100765f3c:  e0 3b 40 f9   ldr	x0, [sp, #0x70]
0x100765f40:  18 97 38 94   bl	j__swift_task_dealloc
0x100765f44:  e0 3f 40 f9   ldr	x0, [sp, #0x78]
0x100765f48:  16 97 38 94   bl	j__swift_task_dealloc
0x100765f4c:  a0 03 59 f8   ldur	x0, [fp, #-0x70]
0x100765f50:  14 97 38 94   bl	j__swift_task_dealloc
0x100765f54:  a0 83 59 f8   ldur	x0, [fp, #-0x68]
0x100765f58:  12 97 38 94   bl	j__swift_task_dealloc
0x100765f5c:  a0 03 5a f8   ldur	x0, [fp, #-0x60]
0x100765f60:  10 97 38 94   bl	j__swift_task_dealloc
0x100765f64:  a0 83 5a f8   ldur	x0, [fp, #-0x58]
0x100765f68:  0e 97 38 94   bl	j__swift_task_dealloc
0x100765f6c:  e0 03 16 aa   mov	x0, x22
0x100765f70:  01 8c 40 f8   ldr	x1, [x0, #0x8]!
0x100765f74:  b4 03 5b f8   ldur	x20, [fp, #-0x50]
0x100765f78:  fd 7b 4f a9   ldp	fp, lr, [sp, #0xf0]
0x100765f7c:  f5 cf 4d a9   ldp	x21, x19, [sp, #0xd8]
0x100765f80:  f8 df 4c a9   ldp	x24, x23, [sp, #0xc8]
0x100765f84:  fa e7 4b a9   ldp	x26, x25, [sp, #0xb8]
0x100765f88:  fc ef 4a a9   ldp	x28, x27, [sp, #0xa8]
0x100765f8c:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x100765f90:  ff 03 04 91   add	sp, sp, #0x100
0x100765f94:  ff 23 03 d5   autibsp
0x100765f98:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x100765f9c:  50 00 f0 b6   tbz	x16, #0x3e, loc_100765fa4 ; ⤵ 0x8
0x100765fa0:  20 8e 38 d4   brk	#0xc471
0x100765fa4:  ; loc_100765fa4
0x100765fa4:  f0 03 00 aa   mov	x16, x0
0x100765fa8:  f0 e0 fa f2   movk	x16, #0xd707, lsl #0x30
0x100765fac:  30 08 1f d7   braa	x1, x16

sub_100765fb0:
0x100765fb0:  7f 23 03 d5   pacibsp
0x100765fb4:  fc 0f 1a f8   str	x28, [sp, #-0x60]!
0x100765fb8:  fb 6b 01 a9   stp	x27, x26, [sp, #0x10]
0x100765fbc:  f9 63 02 a9   stp	x25, x24, [sp, #0x20]
0x100765fc0:  f7 5b 03 a9   stp	x23, x22, [sp, #0x30]
0x100765fc4:  f4 4f 04 a9   stp	x20, x19, [sp, #0x40]
0x100765fc8:  fd 7b 05 a9   stp	fp, lr, [sp, #0x50]
0x100765fcc:  fd 43 01 91   add	fp, sp, #0x50
0x100765fd0:  ff 43 01 d1   sub	sp, sp, #0x50
0x100765fd4:  b5 83 1b f8   stur	x21, [fp, #-0x48]
0x100765fd8:  fc 03 02 aa   mov	x28, x2
0x100765fdc:  f4 03 01 aa   mov	x20, x1
0x100765fe0:  f9 03 00 aa   mov	x25, x0
0x100765fe4:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x100765fe8:  00 00 80 d2   mov	x0, #0
0x100765fec:  11 7e 38 94   bl	j__$s10Foundation4UUIDVMa
0x100765ff0:  f8 03 00 aa   mov	x24, x0
0x100765ff4:  e9 03 00 aa   mov	x9, x0
0x100765ff8:  28 8d 5f f8   ldr	x8, [x9, #-0x8]!
0x100765ffc:  f0 03 08 aa   mov	x16, x8
0x100766000:  f1 03 09 aa   mov	x17, x9
0x100766004:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100766008:  30 1a c1 da   autda	x16, x17
0x10076600c:  f1 03 10 aa   mov	x17, x16
0x100766010:  f1 47 c1 da   xpacd	x17
0x100766014:  1f 02 11 eb   cmp	x16, x17
0x100766018:  40 00 00 54   b.eq	loc_100766020 ; ⤵ 0x8
0x10076601c:  40 8e 38 d4   brk	#0xc472
0x100766020:  ; loc_100766020
0x100766020:  fb 03 10 aa   mov	x27, x16
0x100766024:  f0 03 08 aa   mov	x16, x8
0x100766028:  f1 03 09 aa   mov	x17, x9
0x10076602c:  f1 c7 e5 f2   movk	x17, #0x2e3f, lsl #0x30
0x100766030:  30 1a c1 da   autda	x16, x17
0x100766034:  08 22 40 f9   ldr	x8, [x16, #0x40]
0x100766038:  e9 03 08 aa   mov	x9, x8
0x10076603c:  11 89 00 f0   adrp	x17, 0x101889000
0x100766040:  31 62 1f 91   add	x17, x17, #0x7d8 ; __got.___chkstk_darwin
0x100766044:  30 02 40 f9   ldr	x16, [x17]
0x100766048:  11 0a 3f d7   blraa	x16, x17
0x10076604c:  e9 03 00 91   mov	x9, sp
0x100766050:  08 3d 00 91   add	x8, x8, #0xf
0x100766054:  08 ed 7c 92   and	x8, x8, #0xfffffffffffffff0
0x100766058:  33 01 08 cb   sub	x19, x9, x8
0x10076605c:  7f 02 00 91   mov	sp, x19
0x100766060:  00 00 80 d2   mov	x0, #0
0x100766064:  ef 83 27 94   bl	0x101147020
0x100766068:  08 18 80 b9   ldrsw	x8, [x0, #0x18]
0x10076606c:  3a 03 08 8b   add	x26, x25, x8
0x100766070:  57 07 40 f9   ldr	x23, [x26, #0x8]
0x100766074:  e8 fe 7c d3   lsr	x8, x23, #0x3c
0x100766078:  1f 39 00 f1   cmp	x8, #0xe
0x10076607c:  09 09 00 54   b.ls	loc_10076619c ; ⤵ 0x120
0x100766080:  3c 8d 38 94   bl	j__$sSo13os_log_type_ta0A0E5errorABvgZ
0x100766084:  a0 03 1a b8   stur	w0, [fp, #-0x60]
0x100766088:  08 8f 00 90   adrp	x8, 0x101946000
0x10076608c:  08 a1 42 f9   ldr	x8, [x8, #0x540] ; data_101946540 (__DATA.__data)
0x100766090:  1f 05 00 b1   cmn	x8, #0x1
0x100766094:  81 1b 00 54   b.ne	loc_100766404 ; ⤵ 0x370
0x100766098:  08 95 00 d0   adrp	x8, 0x101a08000
0x10076609c:  1a 25 40 f9   ldr	x26, [x8, #0x48]
0x1007660a0:  a0 8d 00 d0   adrp	x0, 0x10191c000
0x1007660a4:  00 40 15 91   add	x0, x0, #0x550 ; data_10191c550 (__DATA.__data)
0x1007660a8:  21 74 00 f0   adrp	x1, 0x1015ed000
0x1007660ac:  21 00 19 91   add	x1, x1, #0x640
0x1007660b0:  d1 48 e5 97   bl	0x1000b83f4
0x1007660b4:  01 0e 80 52   mov	w1, #0x70
0x1007660b8:  e2 00 80 52   mov	w2, #0x7
0x1007660bc:  3d 95 38 94   bl	j__swift_allocObject

