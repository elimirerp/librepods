
-[NIServerItemLocalizerSession findMyAccessoryManager:didInitRangingOnDevice:withStatus:error:]:
0x100332c40:  7f 23 03 d5   pacibsp
0x100332c44:  ff 83 03 d1   sub	sp, sp, #0xe0
0x100332c48:  fc 6f 08 a9   stp	x28, x27, [sp, #0x80]
0x100332c4c:  fa 67 09 a9   stp	x26, x25, [sp, #0x90]
0x100332c50:  f8 5f 0a a9   stp	x24, x23, [sp, #0xa0]
0x100332c54:  f6 57 0b a9   stp	x22, x21, [sp, #0xb0]
0x100332c58:  f4 4f 0c a9   stp	x20, x19, [sp, #0xc0]
0x100332c5c:  fd 7b 0d a9   stp	fp, lr, [sp, #0xd0]
0x100332c60:  fd 43 03 91   add	fp, sp, #0xd0
0x100332c64:  f5 03 05 aa   mov	x21, x5
0x100332c68:  f8 03 04 aa   mov	x24, x4
0x100332c6c:  f4 03 03 aa   mov	x20, x3
0x100332c70:  f3 03 02 aa   mov	x19, x2
0x100332c74:  f6 03 00 aa   mov	x22, x0
0x100332c78:  08 34 00 f0   adrp	x8, 0x1009b5000
0x100332c7c:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x100332c80:  08 01 40 f9   ldr	x8, [x8]
0x100332c84:  a8 83 1a f8   stur	x8, [fp, #-0x58]
0x100332c88:  c7 fa 06 94   bl	j__objc_retain_x19
0x100332c8c:  ce fa 06 94   bl	j__objc_retain_x20
0x100332c90:  d1 fa 06 94   bl	j__objc_retain_x21
0x100332c94:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332c98:  08 3d 82 b9   ldrsw	x8, [x8, #0x23c]
0x100332c9c:  c8 6a 68 f8   ldr	x8, [x22, x8]
0x100332ca0:  a8 07 00 b4   cbz	x8, loc_100332d94 ; ⤵ 0xf4
0x100332ca4:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332ca8:  1a a9 82 b9   ldrsw	x26, [x8, #0x2a8]
0x100332cac:  c8 6a 7a f8   ldr	x8, [x22, x26]
0x100332cb0:  1f 01 13 eb   cmp	x8, x19
0x100332cb4:  c1 20 00 54   b.ne	loc_1003330cc ; ⤵ 0x418
0x100332cb8:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332cbc:  1c 91 82 b9   ldrsw	x28, [x8, #0x290]
0x100332cc0:  c0 6a 7c f8   ldr	x0, [x22, x28]
0x100332cc4:  2f fd 06 94   bl	j__objc_msgSend(x0, "UUID")
0x100332cc8:  fd 03 1d aa   mov	fp, fp
0x100332ccc:  aa fa 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100332cd0:  f7 03 00 aa   mov	x23, x0
0x100332cd4:  e0 03 14 aa   mov	x0, x20
0x100332cd8:  e2 03 17 aa   mov	x2, x23
0x100332cdc:  71 2a 07 94   bl	j__objc_msgSend(x0, "isEqual:")
0x100332ce0:  f9 03 00 aa   mov	x25, x0
0x100332ce4:  78 fa 06 94   bl	j__objc_release_x23
0x100332ce8:  39 1f 00 36   tbz	w25, #0, loc_1003330cc ; ⤵ 0x3e4
0x100332cec:  bb 37 00 f0   adrp	x27, 0x100a29000
0x100332cf0:  7b 43 38 91   add	x27, x27, #0xe10 ; "CreateConfigRTTTypes"
0x100332cf4:  77 03 40 f9   ldr	x23, [x27]
0x100332cf8:  e0 03 17 aa   mov	x0, x23
0x100332cfc:  01 00 80 52   mov	w1, #0
0x100332d00:  01 fb 06 94   bl	j__os_log_type_enabled
0x100332d04:  20 02 00 34   cbz	w0, loc_100332d48 ; ⤵ 0x44
0x100332d08:  c8 11 00 90   adrp	x8, 0x10056a000
0x100332d0c:  00 41 42 fd   ldr	d0, [x8, #0x480]
0x100332d10:  e0 63 00 bd   str	s0, [sp, #0x60]
0x100332d14:  f5 43 06 f8   stur	x21, [sp, #0x64]
0x100332d18:  08 80 80 52   mov	w8, #0x400
0x100332d1c:  e8 db 00 79   strh	w8, [sp, #0x6c]
0x100332d20:  f8 e3 06 b8   stur	w24, [sp, #0x6e]
0x100332d24:  60 e6 ff d0   adrp	x0, 0x100000000
0x100332d28:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100332d2c:  03 31 00 b0   adrp	x3, 0x100953000
0x100332d30:  63 fc 06 91   add	x3, x3, #0x1bf ; "#ses-item-loc,[CL cb] didInitRoseOnDevice error:%@, status:%d"
0x100332d34:  e4 83 01 91   add	x4, sp, #0x60
0x100332d38:  e1 03 17 aa   mov	x1, x23
0x100332d3c:  02 00 80 52   mov	w2, #0
0x100332d40:  45 02 80 52   mov	w5, #0x12
0x100332d44:  24 f8 06 94   bl	j___os_log_impl
0x100332d48:  ; loc_100332d48
0x100332d48:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332d4c:  08 55 82 b9   ldrsw	x8, [x8, #0x254]
0x100332d50:  c8 6a 68 b8   ldr	w8, [x22, x8]
0x100332d54:  1f 05 00 71   cmp	w8, #0x1
0x100332d58:  21 03 00 54   b.ne	loc_100332dbc ; ⤵ 0x64
0x100332d5c:  77 03 40 f9   ldr	x23, [x27]
0x100332d60:  e0 03 17 aa   mov	x0, x23
0x100332d64:  d5 07 00 b4   cbz	x21, loc_100332e5c ; ⤵ 0xf8
0x100332d68:  01 02 80 52   mov	w1, #0x10
0x100332d6c:  e6 fa 06 94   bl	j__os_log_type_enabled
0x100332d70:  a0 00 00 34   cbz	w0, loc_100332d84 ; ⤵ 0x14
0x100332d74:  e0 03 14 aa   mov	x0, x20
0x100332d78:  e1 03 15 aa   mov	x1, x21
0x100332d7c:  e2 03 17 aa   mov	x2, x23
0x100332d80:  dc ac 06 94   bl	0x1004de0f0
0x100332d84:  ; loc_100332d84
0x100332d84:  e0 03 16 aa   mov	x0, x22
0x100332d88:  e2 03 15 aa   mov	x2, x21
0x100332d8c:  35 03 07 94   bl	j__objc_msgSend(x0, "_handleError:")
0x100332d90:  cf 00 00 14   b	loc_1003330cc ; ⤵ 0x33c
0x100332d94:  ; loc_100332d94
0x100332d94:  a8 37 00 f0   adrp	x8, 0x100a29000
0x100332d98:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x100332d9c:  16 01 40 f9   ldr	x22, [x8]
0x100332da0:  e0 03 16 aa   mov	x0, x22
0x100332da4:  01 02 80 52   mov	w1, #0x10
0x100332da8:  d7 fa 06 94   bl	j__os_log_type_enabled
0x100332dac:  00 19 00 34   cbz	w0, loc_1003330cc ; ⤵ 0x320
0x100332db0:  e0 03 16 aa   mov	x0, x22
0x100332db4:  fa ac 06 94   bl	0x1004de19c
0x100332db8:  c5 00 00 14   b	loc_1003330cc ; ⤵ 0x314
0x100332dbc:  ; loc_100332dbc
0x100332dbc:  08 34 00 f0   adrp	x8, 0x1009b5000
0x100332dc0:  17 a9 44 f9   ldr	x23, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x100332dc4:  08 34 00 f0   adrp	x8, 0x1009b5000
0x100332dc8:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x100332dcc:  09 01 40 f9   ldr	x9, [x8]
0x100332dd0:  c8 35 00 d0   adrp	x8, 0x1009ec000
0x100332dd4:  08 a1 1a 91   add	x8, x8, #0x6a8 ; "Unexpected didInitRoseOnDevice"
0x100332dd8:  e9 23 05 a9   stp	x9, x8, [sp, #0x50]
0x100332ddc:  08 34 00 f0   adrp	x8, 0x1009b5000
0x100332de0:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x100332de4:  e2 63 01 91   add	x2, sp, #0x58
0x100332de8:  e3 43 01 91   add	x3, sp, #0x50
0x100332dec:  24 00 80 52   mov	w4, #0x1
0x100332df0:  5c 1c 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x100332df4:  fd 03 1d aa   mov	fp, fp
0x100332df8:  5f fa 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100332dfc:  f8 03 00 aa   mov	x24, x0
0x100332e00:  c8 34 00 90   adrp	x8, 0x1009ca000
0x100332e04:  08 21 23 91   add	x8, x8, #0x8c8
0x100332e08:  02 01 40 f9   ldr	x2, [x8]
0x100332e0c:  e0 03 17 aa   mov	x0, x23
0x100332e10:  a3 25 80 52   mov	w3, #0x12d
0x100332e14:  e4 03 18 aa   mov	x4, x24
0x100332e18:  72 20 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x100332e1c:  fd 03 1d aa   mov	fp, fp
0x100332e20:  55 fa 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100332e24:  f7 03 00 aa   mov	x23, x0
0x100332e28:  2b fa 06 94   bl	j__objc_release_x24
0x100332e2c:  78 03 40 f9   ldr	x24, [x27]
0x100332e30:  e0 03 18 aa   mov	x0, x24
0x100332e34:  01 02 80 52   mov	w1, #0x10
0x100332e38:  b3 fa 06 94   bl	j__os_log_type_enabled
0x100332e3c:  60 00 00 34   cbz	w0, loc_100332e48 ; ⤵ 0xc
0x100332e40:  e0 03 18 aa   mov	x0, x24
0x100332e44:  a0 ac 06 94   bl	0x1004de0c4
0x100332e48:  ; loc_100332e48
0x100332e48:  e0 03 16 aa   mov	x0, x22
0x100332e4c:  e2 03 17 aa   mov	x2, x23
0x100332e50:  04 03 07 94   bl	j__objc_msgSend(x0, "_handleError:")
0x100332e54:  1c fa 06 94   bl	j__objc_release_x23
0x100332e58:  9d 00 00 14   b	loc_1003330cc ; ⤵ 0x274
0x100332e5c:  ; loc_100332e5c
0x100332e5c:  01 00 80 52   mov	w1, #0
0x100332e60:  a9 fa 06 94   bl	j__os_log_type_enabled
0x100332e64:  c0 01 00 34   cbz	w0, loc_100332e9c ; ⤵ 0x38
0x100332e68:  c8 11 00 90   adrp	x8, 0x10056a000
0x100332e6c:  00 3d 42 fd   ldr	d0, [x8, #0x478]
0x100332e70:  e0 63 00 bd   str	s0, [sp, #0x60]
0x100332e74:  f8 67 00 b9   str	w24, [sp, #0x64]
0x100332e78:  60 e6 ff d0   adrp	x0, 0x100000000
0x100332e7c:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100332e80:  03 31 00 b0   adrp	x3, 0x100953000
0x100332e84:  63 b4 08 91   add	x3, x3, #0x22d ; "#ses-item-loc,Remote Device Ready with ROSE_STATUS: 0x%x"
0x100332e88:  e4 83 01 91   add	x4, sp, #0x60
0x100332e8c:  e1 03 17 aa   mov	x1, x23
0x100332e90:  02 00 80 52   mov	w2, #0
0x100332e94:  05 01 80 52   mov	w5, #0x8
0x100332e98:  cf f7 06 94   bl	j___os_log_impl
0x100332e9c:  ; loc_100332e9c
0x100332e9c:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332ea0:  19 71 82 b9   ldrsw	x25, [x8, #0x270]
0x100332ea4:  c8 6a 79 38   ldrb	w8, [x22, x25]
0x100332ea8:  1f 05 00 71   cmp	w8, #0x1
0x100332eac:  01 05 00 54   b.ne	loc_100332f4c ; ⤵ 0xa0
0x100332eb0:  77 03 40 f9   ldr	x23, [x27]
0x100332eb4:  e0 03 17 aa   mov	x0, x23
0x100332eb8:  01 00 80 52   mov	w1, #0
0x100332ebc:  92 fa 06 94   bl	j__os_log_type_enabled
0x100332ec0:  60 01 00 34   cbz	w0, loc_100332eec ; ⤵ 0x2c
0x100332ec4:  ff c3 00 79   strh	wzr, [sp, #0x60]
0x100332ec8:  60 e6 ff d0   adrp	x0, 0x100000000
0x100332ecc:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x100332ed0:  03 31 00 b0   adrp	x3, 0x100953000
0x100332ed4:  63 98 09 91   add	x3, x3, #0x266 ; "#ses-item-loc,Resume session - accessory no longer in use"
0x100332ed8:  e4 83 01 91   add	x4, sp, #0x60
0x100332edc:  e1 03 17 aa   mov	x1, x23
0x100332ee0:  02 00 80 52   mov	w2, #0
0x100332ee4:  45 00 80 52   mov	w5, #0x2
0x100332ee8:  bb f7 06 94   bl	j___os_log_impl
0x100332eec:  ; loc_100332eec
0x100332eec:  df 6a 39 38   strb	wzr, [x22, x25]
0x100332ef0:  08 37 00 d0   adrp	x8, 0x100a14000
0x100332ef4:  08 39 82 b9   ldrsw	x8, [x8, #0x238]
0x100332ef8:  c0 6a 68 f8   ldr	x0, [x22, x8]
0x100332efc:  e8 23 00 91   add	x8, sp, #0x8
0x100332f00:  10 34 00 f0   adrp	x16, 0x1009b5000
0x100332f04:  10 b2 45 f9   ldr	x16, [x16, #0xb60] ; __got.__NSConcreteStackBlock
0x100332f08:  f1 03 08 aa   mov	x17, x8
0x100332f0c:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x100332f10:  30 0a c1 da   pacda	x16, x17
0x100332f14:  f0 07 00 f9   str	x16, [sp, #0x8]
0x100332f18:  c9 11 00 90   adrp	x9, 0x10056a000
0x100332f1c:  20 39 42 fd   ldr	d0, [x9, #0x470]
0x100332f20:  e0 0b 00 fd   str	d0, [sp, #0x10]
0x100332f24:  08 41 00 91   add	x8, x8, #0x10
0x100332f28:  10 00 00 b0   adrp	x16, 0x100333000
0x100332f2c:  10 f2 08 91   add	x16, x16, #0x23c
0x100332f30:  10 01 c1 da   pacia	x16, x8
0x100332f34:  28 34 00 d0   adrp	x8, 0x1009b8000
0x100332f38:  08 21 03 91   add	x8, x8, #0xc8 ; data_1009b80c8 (__DATA_CONST.__const)
0x100332f3c:  f0 a3 01 a9   stp	x16, x8, [sp, #0x18]
0x100332f40:  f6 17 00 f9   str	x22, [sp, #0x28]
0x100332f44:  e1 23 00 91   add	x1, sp, #0x8
0x100332f48:  2b f8 06 94   bl	j__dispatch_async
0x100332f4c:  ; loc_100332f4c
0x100332f4c:  28 34 00 90   adrp	x8, 0x1009b6000
0x100332f50:  00 25 40 f9   ldr	x0, [x8, #0x48] ; __got._OBJC_CLASS_$_NSUserDefaults
0x100332f54:  eb 45 07 94   bl	j__objc_msgSend(x0, "standardUserDefaults")
0x100332f58:  fd 03 1d aa   mov	fp, fp
0x100332f5c:  06 fa 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100332f60:  f7 03 00 aa   mov	x23, x0
0x100332f64:  c2 35 00 d0   adrp	x2, 0x1009ec000
0x100332f68:  42 20 1b 91   add	x2, x2, #0x6c8 ; "B389_SimulateLowPower"
0x100332f6c:  cd 13 07 94   bl	j__objc_msgSend(x0, "boolForKey:")
0x100332f70:  1f 07 00 71   cmp	w24, #0x1
0x100332f74:  08 14 9f 1a   csinc	w8, w0, wzr, ne
0x100332f78:  48 05 00 36   tbz	w8, #0, loc_100333020 ; ⤵ 0xa8
0x100332f7c:  08 34 00 f0   adrp	x8, 0x1009b5000
0x100332f80:  19 a9 44 f9   ldr	x25, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x100332f84:  08 34 00 f0   adrp	x8, 0x1009b5000
0x100332f88:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x100332f8c:  09 01 40 f9   ldr	x9, [x8]
0x100332f90:  c8 35 00 d0   adrp	x8, 0x1009ec000
0x100332f94:  08 a1 1b 91   add	x8, x8, #0x6e8 ; "Failed to initialize ranging on tag"
0x100332f98:  e9 23 04 a9   stp	x9, x8, [sp, #0x40]
0x100332f9c:  08 34 00 f0   adrp	x8, 0x1009b5000
0x100332fa0:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x100332fa4:  e2 23 01 91   add	x2, sp, #0x48
0x100332fa8:  e3 03 01 91   add	x3, sp, #0x40
0x100332fac:  24 00 80 52   mov	w4, #0x1
0x100332fb0:  ec 1b 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x100332fb4:  fd 03 1d aa   mov	fp, fp
0x100332fb8:  ef f9 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100332fbc:  fa 03 00 aa   mov	x26, x0
0x100332fc0:  c8 34 00 90   adrp	x8, 0x1009ca000
0x100332fc4:  08 21 23 91   add	x8, x8, #0x8c8
0x100332fc8:  02 01 40 f9   ldr	x2, [x8]
0x100332fcc:  e0 03 19 aa   mov	x0, x25
0x100332fd0:  83 25 80 52   mov	w3, #0x12c
0x100332fd4:  e4 03 1a aa   mov	x4, x26
0x100332fd8:  02 20 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x100332fdc:  fd 03 1d aa   mov	fp, fp
0x100332fe0:  e5 f9 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100332fe4:  f9 03 00 aa   mov	x25, x0
0x100332fe8:  c3 f9 06 94   bl	j__objc_release_x26
0x100332fec:  7a 03 40 f9   ldr	x26, [x27]
0x100332ff0:  e0 03 1a aa   mov	x0, x26
0x100332ff4:  01 02 80 52   mov	w1, #0x10
0x100332ff8:  43 fa 06 94   bl	j__os_log_type_enabled
0x100332ffc:  a0 00 00 34   cbz	w0, loc_100333010 ; ⤵ 0x14
0x100333000:  e0 03 14 aa   mov	x0, x20
0x100333004:  e1 03 18 aa   mov	x1, x24
0x100333008:  e2 03 1a aa   mov	x2, x26
0x10033300c:  4c ac 06 94   bl	0x1004de13c
0x100333010:  ; loc_100333010
0x100333010:  e0 03 16 aa   mov	x0, x22
0x100333014:  e2 03 19 aa   mov	x2, x25
0x100333018:  92 02 07 94   bl	j__objc_msgSend(x0, "_handleError:")
0x10033301c:  2a 00 00 14   b	loc_1003330c4 ; ⤵ 0xa8
0x100333020:  ; loc_100333020
0x100333020:  98 07 00 34   cbz	w24, loc_100333110 ; ⤵ 0xf0
0x100333024:  08 34 00 d0   adrp	x8, 0x1009b5000
0x100333028:  19 a9 44 f9   ldr	x25, [x8, #0x950] ; __got._OBJC_CLASS_$_NSError
0x10033302c:  08 34 00 d0   adrp	x8, 0x1009b5000
0x100333030:  08 8d 44 f9   ldr	x8, [x8, #0x918] ; __got._NSLocalizedDescriptionKey
0x100333034:  09 01 40 f9   ldr	x9, [x8]
0x100333038:  c8 35 00 b0   adrp	x8, 0x1009ec000
0x10033303c:  08 21 1c 91   add	x8, x8, #0x708 ; "Error from R1 while initializing"
0x100333040:  e9 23 03 a9   stp	x9, x8, [sp, #0x30]
0x100333044:  08 34 00 d0   adrp	x8, 0x1009b5000
0x100333048:  00 f5 47 f9   ldr	x0, [x8, #0xfe8] ; __got._OBJC_CLASS_$_NSDictionary
0x10033304c:  e2 e3 00 91   add	x2, sp, #0x38
0x100333050:  e3 c3 00 91   add	x3, sp, #0x30
0x100333054:  24 00 80 52   mov	w4, #0x1
0x100333058:  c2 1b 07 94   bl	j__objc_msgSend(x0, "dictionaryWithObjects:forKeys:count:")
0x10033305c:  fd 03 1d aa   mov	fp, fp
0x100333060:  c5 f9 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x100333064:  fa 03 00 aa   mov	x26, x0
0x100333068:  a8 34 00 f0   adrp	x8, 0x1009ca000
0x10033306c:  08 21 23 91   add	x8, x8, #0x8c8
0x100333070:  02 01 40 f9   ldr	x2, [x8]
0x100333074:  e0 03 19 aa   mov	x0, x25
0x100333078:  a3 25 80 52   mov	w3, #0x12d
0x10033307c:  e4 03 1a aa   mov	x4, x26
0x100333080:  d8 1f 07 94   bl	j__objc_msgSend(x0, "errorWithDomain:code:userInfo:")
0x100333084:  fd 03 1d aa   mov	fp, fp
0x100333088:  bb f9 06 94   bl	j__objc_retainAutoreleasedReturnValue
0x10033308c:  f9 03 00 aa   mov	x25, x0
0x100333090:  99 f9 06 94   bl	j__objc_release_x26
0x100333094:  7a 03 40 f9   ldr	x26, [x27]
0x100333098:  e0 03 1a aa   mov	x0, x26
0x10033309c:  01 02 80 52   mov	w1, #0x10
0x1003330a0:  19 fa 06 94   bl	j__os_log_type_enabled
0x1003330a4:  a0 00 00 34   cbz	w0, loc_1003330b8 ; ⤵ 0x14
0x1003330a8:  e0 03 14 aa   mov	x0, x20
0x1003330ac:  e1 03 18 aa   mov	x1, x24
0x1003330b0:  e2 03 1a aa   mov	x2, x26
0x1003330b4:  22 ac 06 94   bl	0x1004de13c
0x1003330b8:  ; loc_1003330b8
0x1003330b8:  e0 03 16 aa   mov	x0, x22
0x1003330bc:  e2 03 19 aa   mov	x2, x25
0x1003330c0:  68 02 07 94   bl	j__objc_msgSend(x0, "_handleError:")
0x1003330c4:  ; loc_1003330c4
0x1003330c4:  88 f9 06 94   bl	j__objc_release_x25
0x1003330c8:  7f f9 06 94   bl	j__objc_release_x23
0x1003330cc:  ; loc_1003330cc
0x1003330cc:  76 f9 06 94   bl	j__objc_release_x21
0x1003330d0:  71 f9 06 94   bl	j__objc_release_x20
0x1003330d4:  6c f9 06 94   bl	j__objc_release_x19
0x1003330d8:  a8 83 5a f8   ldur	x8, [fp, #-0x58]
0x1003330dc:  09 34 00 d0   adrp	x9, 0x1009b5000
0x1003330e0:  29 b5 45 f9   ldr	x9, [x9, #0xb68] ; __got.___stack_chk_guard
0x1003330e4:  29 01 40 f9   ldr	x9, [x9]
0x1003330e8:  3f 01 08 eb   cmp	x9, x8
0x1003330ec:  81 05 00 54   b.ne	loc_10033319c ; ⤵ 0xb0

