0x10048ccf0:  a0 db ff 90   adrp	x0, 0x100000000
0x10048ccf4:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x10048ccf8:  c3 8f 00 d0   adrp	x3, 0x101686000
0x10048ccfc:  63 80 24 91   add	x3, x3, #0x920 ; "Failed to generate %{public}s key for %{private,mask.hash}s"
0x10048cd00:  e8 0b 40 b9   ldr	w8, [sp, #0x8]
0x10048cd04:  02 1d 00 12   and	w2, w8, #0xff
0x10048cd08:  e1 03 17 aa   mov	x1, x23
0x10048cd0c:  e4 03 1a aa   mov	x4, x26
0x10048cd10:  05 04 80 52   mov	w5, #0x20
0x10048cd14:  af f8 43 94   bl	j___os_log_impl
0x10048cd18:  c8 9f 00 d0   adrp	x8, 0x101886000
0x10048cd1c:  08 65 47 f9   ldr	x8, [x8, #0xec8] ; __got._$sypN
0x10048cd20:  02 21 00 91   add	x2, x8, #0x8
0x10048cd24:  f4 0b 40 f9   ldr	x20, [sp, #0x10]
0x10048cd28:  e0 03 14 aa   mov	x0, x20
0x10048cd2c:  41 00 80 52   mov	w1, #0x2
0x10048cd30:  28 fa 43 94   bl	j__swift_arrayDestroy
0x10048cd34:  e0 03 14 aa   mov	x0, x20
0x10048cd38:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10048cd3c:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x10048cd40:  7c fb 43 94   bl	j__swift_slowDealloc
0x10048cd44:  e0 03 1a aa   mov	x0, x26
0x10048cd48:  01 00 80 92   mov	x1, #0xffffffffffffffff
0x10048cd4c:  02 00 80 92   mov	x2, #0xffffffffffffffff
0x10048cd50:  78 fb 43 94   bl	j__swift_slowDealloc
0x10048cd54:  3f f9 43 94   bl	j__objc_release_x23
0x10048cd58:  28 8f 40 f8   ldr	x8, [x25, #0x8]!
0x10048cd5c:  e0 87 41 a9   ldp	x0, x1, [sp, #0x18]
0x10048cd60:  f1 03 19 aa   mov	x17, x25
0x10048cd64:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10048cd68:  11 09 3f d7   blraa	x8, x17
0x10048cd6c:  0c 00 00 14   b	loc_10048cd9c ; ⤵ 0x30
0x10048cd70:  38 f9 43 94   bl	j__objc_release_x23
0x10048cd74:  e0 03 1c aa   mov	x0, x28
0x10048cd78:  ce 00 00 94   bl	0x10048d0b0
0x10048cd7c:  28 8f 40 f8   ldr	x8, [x25, #0x8]!
0x10048cd80:  e0 03 14 aa   mov	x0, x20
0x10048cd84:  e1 03 15 aa   mov	x1, x21
0x10048cd88:  f1 03 19 aa   mov	x17, x25
0x10048cd8c:  11 9f e0 f2   movk	x17, #0x4f8, lsl #0x30
0x10048cd90:  11 09 3f d7   blraa	x8, x17
0x10048cd94:  60 c2 00 91   add	x0, x19, #0x30
0x10048cd98:  61 ec ed 97   bl	0x100007f1c
0x10048cd9c:  ; loc_10048cd9c
0x10048cd9c:  da 00 00 94   bl	0x10048d104
0x10048cda0:  e1 03 00 aa   mov	x1, x0
0x10048cda4:  80 a0 00 90   adrp	x0, 0x10189c000
0x10048cda8:  00 a0 27 91   add	x0, x0, #0x9e8
0x10048cdac:  02 00 80 d2   mov	x2, #0
0x10048cdb0:  03 00 80 52   mov	w3, #0
0x10048cdb4:  fb f9 43 94   bl	j__swift_allocError
0x10048cdb8:  f4 03 00 aa   mov	x20, x0
0x10048cdbc:  3f 00 00 39   strb	wzr, [x1]
0x10048cdc0:  f5 03 00 aa   mov	x21, x0
0x10048cdc4:  db fb 43 94   bl	j__swift_willThrow
0x10048cdc8:  c0 72 40 f9   ldr	x0, [x22, #0xe0]
0x10048cdcc:  d5 4e 4c a9   ldp	x21, x19, [x22, #0xc0]
0x10048cdd0:  74 fb 43 94   bl	j__swift_task_dealloc
0x10048cdd4:  e0 03 13 aa   mov	x0, x19
0x10048cdd8:  72 fb 43 94   bl	j__swift_task_dealloc
0x10048cddc:  e0 03 15 aa   mov	x0, x21
0x10048cde0:  70 fb 43 94   bl	j__swift_task_dealloc
0x10048cde4:  e0 03 16 aa   mov	x0, x22
0x10048cde8:  01 8c 40 f8   ldr	x1, [x0, #0x8]!
0x10048cdec:  64 00 00 14   b	loc_10048cf7c ; ⤵ 0x190
0x10048cdf0:  79 0a 40 f9   ldr	x25, [x19, #0x10]
0x10048cdf4:  d4 52 40 f9   ldr	x20, [x22, #0xa0]
0x10048cdf8:  c8 42 40 f9   ldr	x8, [x22, #0x80]
0x10048cdfc:  e8 13 00 f9   str	x8, [sp, #0x20]
0x10048ce00:  9a ee 41 a9   ldp	x26, x27, [x20, #0x18]
0x10048ce04:  e0 03 14 aa   mov	x0, x20
0x10048ce08:  e1 03 1a aa   mov	x1, x26
0x10048ce0c:  c9 d9 ed 97   bl	0x100003530
0x10048ce10:  e0 03 15 aa   mov	x0, x21
0x10048ce14:  e1 03 17 aa   mov	x1, x23
0x10048ce18:  f7 2f ee 97   bl	0x100018df4
0x10048ce1c:  e0 03 1a aa   mov	x0, x26
0x10048ce20:  e1 03 1b aa   mov	x1, x27
0x10048ce24:  e0 83 ee 97   bl	0x10002dda4
0x10048ce28:  1c 1c 00 12   and	w28, w0, #0xff
0x10048ce2c:  9a ee 41 a9   ldp	x26, x27, [x20, #0x18]
0x10048ce30:  e0 03 14 aa   mov	x0, x20
0x10048ce34:  e1 03 1a aa   mov	x1, x26
0x10048ce38:  be d9 ed 97   bl	0x100003530
0x10048ce3c:  9f 07 00 71   cmp	w28, #0x1
0x10048ce40:  e1 02 00 54   b.ne	loc_10048ce9c ; ⤵ 0x5c
0x10048ce44:  61 1f 40 f9   ldr	x1, [x27, #0x38]
0x10048ce48:  68 82 01 91   add	x8, x19, #0x60
0x10048ce4c:  f4 03 00 aa   mov	x20, x0
0x10048ce50:  e0 03 1a aa   mov	x0, x26
0x10048ce54:  0f f0 43 94   bl	j__$sSY8rawValue03RawB0QzvgTj
0x10048ce58:  68 02 46 f8   ldur	x8, [x19, #0x60]
0x10048ce5c:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x10048ce60:  e0 03 19 aa   mov	x0, x25
0x10048ce64:  e1 03 18 aa   mov	x1, x24
0x10048ce68:  f6 35 02 94   bl	0x10051a640
0x10048ce6c:  e1 83 00 a9   stp	x1, x0, [sp, #0x8]
0x10048ce70:  e0 03 15 aa   mov	x0, x21
0x10048ce74:  e1 03 17 aa   mov	x1, x23
0x10048ce78:  5d 39 02 94   bl	0x10051b3ec
0x10048ce7c:  e0 03 00 f9   str	x0, [sp]
0x10048ce80:  fa 03 01 aa   mov	x26, x1
0x10048ce84:  9b a0 00 90   adrp	x27, 0x10189c000
0x10048ce88:  7b a3 24 91   add	x27, x27, #0x928 ; data_10189c928 (__DATA_CONST.__const)
0x10048ce8c:  f4 a0 00 90   adrp	x20, 0x1018a8000
0x10048ce90:  94 42 3b 91   add	x20, x20, #0xed0 ; data_1018a8ed0 (__DATA_CONST.__const)
0x10048ce94:  30 01 00 94   bl	0x10048d354
0x10048ce98:  16 00 00 14   b	loc_10048cef0 ; ⤵ 0x58
0x10048ce9c:  ; loc_10048ce9c
0x10048ce9c:  61 1f 40 f9   ldr	x1, [x27, #0x38]
0x10048cea0:  68 a2 01 91   add	x8, x19, #0x68
0x10048cea4:  f4 03 00 aa   mov	x20, x0
0x10048cea8:  e0 03 1a aa   mov	x0, x26
0x10048ceac:  f9 ef 43 94   bl	j__$sSY8rawValue03RawB0QzvgTj
0x10048ceb0:  68 82 46 f8   ldur	x8, [x19, #0x68]
0x10048ceb4:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x10048ceb8:  e0 03 19 aa   mov	x0, x25
0x10048cebc:  e1 03 18 aa   mov	x1, x24
0x10048cec0:  e0 35 02 94   bl	0x10051a640
0x10048cec4:  e1 83 00 a9   stp	x1, x0, [sp, #0x8]
0x10048cec8:  e0 03 15 aa   mov	x0, x21
0x10048cecc:  e1 03 17 aa   mov	x1, x23
0x10048ced0:  47 39 02 94   bl	0x10051b3ec
0x10048ced4:  e0 03 00 f9   str	x0, [sp]
0x10048ced8:  fa 03 01 aa   mov	x26, x1
0x10048cedc:  9b a0 00 90   adrp	x27, 0x10189c000
0x10048cee0:  7b 43 25 91   add	x27, x27, #0x950 ; data_10189c950 (__DATA_CONST.__const)
0x10048cee4:  f4 a0 00 90   adrp	x20, 0x1018a8000
0x10048cee8:  94 62 3d 91   add	x20, x20, #0xf58 ; data_1018a8f58 (__DATA_CONST.__const)
0x10048ceec:  2f 01 00 94   bl	0x10048d3a8
0x10048cef0:  ; loc_10048cef0
0x10048cef0:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10048cef4:  14 0d 00 f9   str	x20, [x8, #0x18]
0x10048cef8:  dc 72 40 f9   ldr	x28, [x22, #0xe0]
0x10048cefc:  d8 52 4c a9   ldp	x24, x20, [x22, #0xc0]
0x10048cf00:  d9 42 40 f9   ldr	x25, [x22, #0x80]
0x10048cf04:  20 13 00 f9   str	x0, [x25, #0x20]
0x10048cf08:  e0 03 1b aa   mov	x0, x27
0x10048cf0c:  01 07 80 52   mov	w1, #0x38
0x10048cf10:  e2 00 80 52   mov	w2, #0x7
0x10048cf14:  a7 f9 43 94   bl	j__swift_allocObject
0x10048cf18:  fb 03 00 aa   mov	x27, x0
0x10048cf1c:  e0 03 15 aa   mov	x0, x21
0x10048cf20:  e1 03 17 aa   mov	x1, x23
0x10048cf24:  2c e6 ed 97   bl	0x1000067d4
0x10048cf28:  a1 a4 00 f0   adrp	x1, 0x101923000
0x10048cf2c:  21 80 37 91   add	x1, x1, #0xde0 ; data_101923de0 (__DATA.__data)
0x10048cf30:  42 8c 00 b0   adrp	x2, 0x101615000
0x10048cf34:  42 c0 15 91   add	x2, x2, #0x570
0x10048cf38:  e0 03 13 aa   mov	x0, x19
0x10048cf3c:  8d fa ed 97   bl	0x10000b970
0x10048cf40:  e8 27 41 a9   ldp	x8, x9, [sp, #0x10]
0x10048cf44:  69 23 01 a9   stp	x9, x8, [x27, #0x10]
0x10048cf48:  e8 27 40 a9   ldp	x8, x9, [sp]
0x10048cf4c:  69 23 02 a9   stp	x9, x8, [x27, #0x20]
0x10048cf50:  7a 1b 00 f9   str	x26, [x27, #0x30]
0x10048cf54:  3b 03 00 f9   str	x27, [x25]
0x10048cf58:  e0 03 1c aa   mov	x0, x28
0x10048cf5c:  11 fb 43 94   bl	j__swift_task_dealloc
0x10048cf60:  e0 03 14 aa   mov	x0, x20
0x10048cf64:  0f fb 43 94   bl	j__swift_task_dealloc
0x10048cf68:  e0 03 18 aa   mov	x0, x24
0x10048cf6c:  0d fb 43 94   bl	j__swift_task_dealloc
0x10048cf70:  e0 03 16 aa   mov	x0, x22
0x10048cf74:  01 8c 40 f8   ldr	x1, [x0, #0x8]!
0x10048cf78:  14 00 80 d2   mov	x20, #0
0x10048cf7c:  ; loc_10048cf7c
0x10048cf7c:  fd 7b 49 a9   ldp	fp, lr, [sp, #0x90]
0x10048cf80:  f5 cf 47 a9   ldp	x21, x19, [sp, #0x78]
0x10048cf84:  f8 df 46 a9   ldp	x24, x23, [sp, #0x68]
0x10048cf88:  fa e7 45 a9   ldp	x26, x25, [sp, #0x58]
0x10048cf8c:  fc ef 44 a9   ldp	x28, x27, [sp, #0x48]
0x10048cf90:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x10048cf94:  ff 83 02 91   add	sp, sp, #0xa0
0x10048cf98:  ff 23 03 d5   autibsp
0x10048cf9c:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10048cfa0:  50 00 f0 b6   tbz	x16, #0x3e, loc_10048cfa8 ; ⤵ 0x8
0x10048cfa4:  20 8e 38 d4   brk	#0xc471
0x10048cfa8:  ; loc_10048cfa8
0x10048cfa8:  f0 03 00 aa   mov	x16, x0
0x10048cfac:  f0 e0 fa f2   movk	x16, #0xd707, lsl #0x30
0x10048cfb0:  30 08 1f d7   braa	x1, x16
0x10048cfb4:  40 a5 00 f0   adrp	x0, 0x101937000
0x10048cfb8:  00 60 10 91   add	x0, x0, #0x418 ; data_101937418 (__DATA.__data)
0x10048cfbc:  90 35 00 d0   adrp	x16, 0x100b3e000
0x10048cfc0:  10 92 02 91   add	x16, x16, #0xa4
0x10048cfc4:  f0 23 c1 da   paciza	x16
0x10048cfc8:  e1 03 10 aa   mov	x1, x16
0x10048cfcc:  b1 fa 43 94   bl	j__swift_once
0x10048cfd0:  bd fe ff 17   b	loc_10048cac4 ; ⤴ -0x50c

sub_10048cfd4:
0x10048cfd4:  7f 23 03 d5   pacibsp
0x10048cfd8:  bd 03 44 b2   orr	fp, fp, #0x1000000000000000
0x10048cfdc:  ff c3 00 d1   sub	sp, sp, #0x30
0x10048cfe0:  f5 cf 00 a9   stp	x21, x19, [sp, #0x8]
0x10048cfe4:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10048cfe8:  f0 63 00 91   add	x16, sp, #0x18
0x10048cfec:  50 63 f8 f2   movk	x16, #0xc31a, lsl #0x30
0x10048cff0:  f1 03 16 aa   mov	x17, x22
0x10048cff4:  11 0e c1 da   pacdb	x17, x16
0x10048cff8:  f1 0f 00 f9   str	x17, [sp, #0x18]
0x10048cffc:  fd 83 00 91   add	fp, sp, #0x20
0x10048d000:  d4 7a 40 f9   ldr	x20, [x22, #0xf0]
0x10048d004:  c0 72 40 f9   ldr	x0, [x22, #0xe0]
0x10048d008:  d5 4e 4c a9   ldp	x21, x19, [x22, #0xc0]
0x10048d00c:  e5 fa 43 94   bl	j__swift_task_dealloc
0x10048d010:  e0 03 13 aa   mov	x0, x19
0x10048d014:  e3 fa 43 94   bl	j__swift_task_dealloc
0x10048d018:  e0 03 15 aa   mov	x0, x21
0x10048d01c:  e1 fa 43 94   bl	j__swift_task_dealloc
0x10048d020:  e0 03 16 aa   mov	x0, x22
0x10048d024:  01 8c 40 f8   ldr	x1, [x0, #0x8]!
0x10048d028:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x10048d02c:  f5 cf 40 a9   ldp	x21, x19, [sp, #0x8]
0x10048d030:  bd fb 43 92   and	fp, fp, #0xefffffffffffffff
0x10048d034:  ff c3 00 91   add	sp, sp, #0x30
0x10048d038:  ff 23 03 d5   autibsp
0x10048d03c:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10048d040:  50 00 f0 b6   tbz	x16, #0x3e, loc_10048d048 ; ⤵ 0x8
0x10048d044:  20 8e 38 d4   brk	#0xc471
0x10048d048:  ; loc_10048d048
0x10048d048:  f0 03 00 aa   mov	x16, x0
0x10048d04c:  f0 e0 fa f2   movk	x16, #0xd707, lsl #0x30
0x10048d050:  30 08 1f d7   braa	x1, x16

sub_10048d054:
0x10048d054:  7f 23 03 d5   pacibsp
0x10048d058:  f4 4f be a9   stp	x20, x19, [sp, #-0x20]!
0x10048d05c:  fd 7b 01 a9   stp	fp, lr, [sp, #0x10]

