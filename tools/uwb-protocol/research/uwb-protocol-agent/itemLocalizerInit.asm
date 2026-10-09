
-[NIServerItemLocalizerSession initWithResourcesManager:configuration:error:]:
0x100326f68:  7f 23 03 d5   pacibsp
0x100326f6c:  ff c3 06 d1   sub	sp, sp, #0x1b0
0x100326f70:  e9 23 14 6d   stp	d9, d8, [sp, #0x140]
0x100326f74:  fc 6f 15 a9   stp	x28, x27, [sp, #0x150]
0x100326f78:  fa 67 16 a9   stp	x26, x25, [sp, #0x160]
0x100326f7c:  f8 5f 17 a9   stp	x24, x23, [sp, #0x170]
0x100326f80:  f6 57 18 a9   stp	x22, x21, [sp, #0x180]
0x100326f84:  f4 4f 19 a9   stp	x20, x19, [sp, #0x190]
0x100326f88:  fd 7b 1a a9   stp	fp, lr, [sp, #0x1a0]
0x100326f8c:  fd 83 06 91   add	fp, sp, #0x1a0
0x100326f90:  f5 03 04 aa   mov	x21, x4
0x100326f94:  f4 03 03 aa   mov	x20, x3
0x100326f98:  f3 03 02 aa   mov	x19, x2
0x100326f9c:  f7 03 01 aa   mov	x23, x1
0x100326fa0:  f6 03 00 aa   mov	x22, x0
0x100326fa4:  68 34 00 f0   adrp	x8, 0x1009b5000
0x100326fa8:  08 b5 45 f9   ldr	x8, [x8, #0xb68] ; __got.___stack_chk_guard
0x100326fac:  08 01 40 f9   ldr	x8, [x8]
0x100326fb0:  a8 83 18 f8   stur	x8, [fp, #-0x78]
0x100326fb4:  fc 29 07 94   bl	j__objc_retain_x19
0x100326fb8:  03 2a 07 94   bl	j__objc_retain_x20
0x100326fbc:  e0 03 14 aa   mov	x0, x20
0x100326fc0:  95 29 07 94   bl	j__objc_opt_class
0x100326fc4:  f8 03 00 aa   mov	x24, x0
0x100326fc8:  88 37 00 b0   adrp	x8, 0x100a17000
0x100326fcc:  00 21 2b 91   add	x0, x8, #0xac8 ; NIFindingConfiguration
0x100326fd0:  91 29 07 94   bl	j__objc_opt_class
0x100326fd4:  1f 03 00 eb   cmp	x24, x0
0x100326fd8:  01 55 00 54   b.ne	loc_100327a78 ; ⤵ 0xaa0
0x100326fdc:  e0 03 13 aa   mov	x0, x19
0x100326fe0:  58 68 07 94   bl	j__objc_msgSend(x0, "serverSessionIdentifier")
0x100326fe4:  fd 03 1d aa   mov	fp, fp
0x100326fe8:  e3 29 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x100326fec:  f8 03 00 aa   mov	x24, x0
0x100326ff0:  b9 29 07 94   bl	j__objc_release_x24
0x100326ff4:  38 56 00 b4   cbz	x24, loc_100327ab8 ; ⤵ 0xac4
0x100326ff8:  82 7c f3 97   bl	0x100006200
0x100326ffc:  ae 7a 05 94   bl	0x100485ab4
0x100327000:  60 11 00 36   tbz	w0, #0, loc_10032722c ; ⤵ 0x22c
0x100327004:  48 36 00 d0   adrp	x8, 0x1009f1000
0x100327008:  08 2d 45 f9   ldr	x8, [x8, #0xa58] ; class_NIServerItemLocalizerSession
0x10032700c:  b6 23 36 a9   stp	x22, x8, [fp, #-0xa0]
0x100327010:  48 37 00 90   adrp	x8, 0x100a0f000
0x100327014:  01 91 43 f9   ldr	x1, [x8, #0x720] ; sel_initWithResourcesManager:configuration:error:
0x100327018:  16 00 80 d2   mov	x22, #0
0x10032701c:  a0 83 02 d1   sub	x0, fp, #0xa0
0x100327020:  e2 03 13 aa   mov	x2, x19
0x100327024:  e3 03 14 aa   mov	x3, x20
0x100327028:  e4 03 15 aa   mov	x4, x21
0x10032702c:  76 29 07 94   bl	j__objc_msgSendSuper2
0x100327030:  f5 03 00 aa   mov	x21, x0
0x100327034:  20 11 00 b4   cbz	x0, loc_100327258 ; ⤵ 0x224
0x100327038:  f6 03 15 aa   mov	x22, x21
0x10032703c:  e0 03 13 aa   mov	x0, x19
0x100327040:  68 45 07 94   bl	j__objc_msgSend(x0, "clientConnectionQueue")
0x100327044:  fd 03 1d aa   mov	fp, fp
0x100327048:  cb 29 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032704c:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327050:  1c 39 82 b9   ldrsw	x28, [x8, #0x238]
0x100327054:  a8 6a 7c f8   ldr	x8, [x21, x28]
0x100327058:  a0 6a 3c f8   str	x0, [x21, x28]
0x10032705c:  b2 29 07 94   bl	j__objc_release_x8
0x100327060:  f6 03 15 aa   mov	x22, x21
0x100327064:  e0 03 14 aa   mov	x0, x20
0x100327068:  56 47 07 94   bl	j__objc_msgSend(x0, "copy")
0x10032706c:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327070:  19 3d 82 b9   ldrsw	x25, [x8, #0x23c]
0x100327074:  a8 6a 79 f8   ldr	x8, [x21, x25]
0x100327078:  a0 6a 39 f8   str	x0, [x21, x25]
0x10032707c:  aa 29 07 94   bl	j__objc_release_x8
0x100327080:  a0 6a 79 f8   ldr	x0, [x21, x25]
0x100327084:  f6 03 15 aa   mov	x22, x21
0x100327088:  ce 69 07 94   bl	j__objc_msgSend(x0, "sessionDiscoveryToken")
0x10032708c:  fd 03 1d aa   mov	fp, fp
0x100327090:  b9 29 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x100327094:  1f 00 00 f1   cmp	x0, #0
0x100327098:  f6 17 9f 1a   cset	w22, eq
0x10032709c:  72 29 07 94   bl	j__objc_release
0x1003270a0:  36 53 00 35   cbnz	w22, loc_100327b04 ; ⤵ 0xa64
0x1003270a4:  08 38 00 d0   adrp	x8, 0x100a29000
0x1003270a8:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x1003270ac:  16 01 40 f9   ldr	x22, [x8]
0x1003270b0:  cd 29 07 94   bl	j__objc_retain_x22
0x1003270b4:  e0 03 16 aa   mov	x0, x22
0x1003270b8:  01 00 80 52   mov	w1, #0
0x1003270bc:  12 2a 07 94   bl	j__os_log_type_enabled
0x1003270c0:  a0 02 00 34   cbz	w0, loc_100327114 ; ⤵ 0x54
0x1003270c4:  a0 6a 79 f8   ldr	x0, [x21, x25]
0x1003270c8:  ce 4a 07 94   bl	j__objc_msgSend(x0, "descriptionInternal")
0x1003270cc:  fd 03 1d aa   mov	fp, fp
0x1003270d0:  a9 29 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003270d4:  f7 03 00 aa   mov	x23, x0
0x1003270d8:  08 12 00 f0   adrp	x8, 0x10056a000
0x1003270dc:  00 59 42 fd   ldr	d0, [x8, #0x4b0]
0x1003270e0:  a0 03 17 bc   stur	s0, [fp, #-0x90]
0x1003270e4:  a8 43 02 d1   sub	x8, fp, #0x90
0x1003270e8:  00 41 00 f8   stur	x0, [x8, #0x4]
0x1003270ec:  c0 e6 ff b0   adrp	x0, 0x100000000
0x1003270f0:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1003270f4:  43 31 00 b0   adrp	x3, 0x100950000
0x1003270f8:  63 50 25 91   add	x3, x3, #0x954 ; "#ses-item-loc,NI item localizer configuration %@"
0x1003270fc:  a4 43 02 d1   sub	x4, fp, #0x90
0x100327100:  e1 03 16 aa   mov	x1, x22
0x100327104:  02 00 80 52   mov	w2, #0
0x100327108:  85 01 80 52   mov	w5, #0xc
0x10032710c:  32 27 07 94   bl	j___os_log_impl
0x100327110:  6d 29 07 94   bl	j__objc_release_x23
0x100327114:  ; loc_100327114
0x100327114:  68 29 07 94   bl	j__objc_release_x22
0x100327118:  f6 03 15 aa   mov	x22, x21
0x10032711c:  e0 03 13 aa   mov	x0, x19
0x100327120:  08 68 07 94   bl	j__objc_msgSend(x0, "serverSessionIdentifier")
0x100327124:  fd 03 1d aa   mov	fp, fp
0x100327128:  93 29 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032712c:  f7 03 00 aa   mov	x23, x0
0x100327130:  1c 2c 07 94   bl	j__objc_msgSend(x0, "UUIDString")
0x100327134:  fd 03 1d aa   mov	fp, fp
0x100327138:  8f 29 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032713c:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327140:  08 41 82 b9   ldrsw	x8, [x8, #0x240]
0x100327144:  a9 6a 68 f8   ldr	x9, [x21, x8]
0x100327148:  a0 6a 28 f8   str	x0, [x21, x8]
0x10032714c:  7a 29 07 94   bl	j__objc_release_x9
0x100327150:  5d 29 07 94   bl	j__objc_release_x23
0x100327154:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327158:  00 41 3a 91   add	x0, x8, #0xe90 ; class_NIPlatformInfo
0x10032715c:  f6 03 15 aa   mov	x22, x21
0x100327160:  20 79 07 94   bl	j__objc_msgSend(x0, "supportsSyntheticAperture")
0x100327164:  e2 03 00 aa   mov	x2, x0
0x100327168:  a0 6a 79 f8   ldr	x0, [x21, x25]
0x10032716c:  f6 03 15 aa   mov	x22, x21
0x100327170:  cc 72 07 94   bl	j__objc_msgSend(x0, "setSupportsCameraAssistance:")
0x100327174:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327178:  08 45 82 b9   ldrsw	x8, [x8, #0x244]
0x10032717c:  bf 6a 28 38   strb	wzr, [x21, x8]
0x100327180:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327184:  08 49 82 b9   ldrsw	x8, [x8, #0x248]
0x100327188:  29 00 80 52   mov	w9, #0x1
0x10032718c:  a9 6a 28 38   strb	w9, [x21, x8]
0x100327190:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327194:  08 4d 82 b9   ldrsw	x8, [x8, #0x24c]
0x100327198:  bf 6a 28 38   strb	wzr, [x21, x8]
0x10032719c:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003271a0:  08 51 82 b9   ldrsw	x8, [x8, #0x250]
0x1003271a4:  bf 6a 28 b8   str	wzr, [x21, x8]
0x1003271a8:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003271ac:  08 55 82 b9   ldrsw	x8, [x8, #0x254]
0x1003271b0:  bf 6a 28 b8   str	wzr, [x21, x8]
0x1003271b4:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003271b8:  08 59 82 b9   ldrsw	x8, [x8, #0x258]
0x1003271bc:  bf 6a 28 b8   str	wzr, [x21, x8]
0x1003271c0:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003271c4:  08 5d 82 b9   ldrsw	x8, [x8, #0x25c]
0x1003271c8:  bf 6a 28 b8   str	wzr, [x21, x8]
0x1003271cc:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003271d0:  08 61 82 b9   ldrsw	x8, [x8, #0x260]
0x1003271d4:  a9 6a 28 b8   str	w9, [x21, x8]
0x1003271d8:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003271dc:  08 65 82 b9   ldrsw	x8, [x8, #0x264]
0x1003271e0:  bf 6a 28 b8   str	wzr, [x21, x8]
0x1003271e4:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003271e8:  08 69 82 b9   ldrsw	x8, [x8, #0x268]
0x1003271ec:  bf 6a 28 b8   str	wzr, [x21, x8]
0x1003271f0:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003271f4:  08 6d 82 b9   ldrsw	x8, [x8, #0x26c]
0x1003271f8:  bf 6a 28 38   strb	wzr, [x21, x8]
0x1003271fc:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327200:  08 71 82 b9   ldrsw	x8, [x8, #0x270]
0x100327204:  bf 6a 28 38   strb	wzr, [x21, x8]
0x100327208:  68 37 00 b0   adrp	x8, 0x100a14000
0x10032720c:  08 75 82 b9   ldrsw	x8, [x8, #0x274]
0x100327210:  bf 6a 28 38   strb	wzr, [x21, x8]
0x100327214:  73 02 00 b4   cbz	x19, loc_100327260 ; ⤵ 0x4c
0x100327218:  a8 43 02 d1   sub	x8, fp, #0x90
0x10032721c:  e0 03 13 aa   mov	x0, x19
0x100327220:  28 62 07 94   bl	j__objc_msgSend(x0, "protobufLogger")
0x100327224:  a0 03 d7 3c   ldur	q0, [fp, #-0x90]
0x100327228:  0f 00 00 14   b	loc_100327264 ; ⤵ 0x3c
0x10032722c:  ; loc_10032722c
0x10032722c:  08 38 00 d0   adrp	x8, 0x100a29000
0x100327230:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x100327234:  15 01 40 f9   ldr	x21, [x8]
0x100327238:  e0 03 15 aa   mov	x0, x21
0x10032723c:  01 02 80 52   mov	w1, #0x10
0x100327240:  b1 29 07 94   bl	j__os_log_type_enabled
0x100327244:  60 00 00 34   cbz	w0, loc_100327250 ; ⤵ 0xc
0x100327248:  e0 03 15 aa   mov	x0, x21
0x10032724c:  38 d8 06 94   bl	0x1004dd32c
0x100327250:  ; loc_100327250
0x100327250:  1a 00 80 d2   mov	x26, #0
0x100327254:  f6 01 00 14   b	loc_100327a2c ; ⤵ 0x7d8
0x100327258:  ; loc_100327258
0x100327258:  1a 00 80 d2   mov	x26, #0
0x10032725c:  f5 01 00 14   b	loc_100327a30 ; ⤵ 0x7d4
0x100327260:  ; loc_100327260
0x100327260:  00 e4 00 6f   movi	v0.2d, #0
0x100327264:  ; loc_100327264
0x100327264:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327268:  08 79 82 b9   ldrsw	x8, [x8, #0x278]
0x10032726c:  a8 02 08 8b   add	x8, x21, x8
0x100327270:  bf 7f 37 a9   stp	xzr, xzr, [fp, #-0x90]
0x100327274:  00 05 40 f9   ldr	x0, [x8, #0x8]
0x100327278:  00 01 80 3d   str	q0, [x8]
0x10032727c:  40 00 00 b4   cbz	x0, loc_100327284 ; ⤵ 0x8
0x100327280:  5b fe f3 97   bl	0x100026bec
0x100327284:  ; loc_100327284
0x100327284:  a0 83 57 f8   ldur	x0, [fp, #-0x88]
0x100327288:  40 00 00 b4   cbz	x0, loc_100327290 ; ⤵ 0x8
0x10032728c:  58 fe f3 97   bl	0x100026bec
0x100327290:  ; loc_100327290
0x100327290:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327294:  08 7d 82 b9   ldrsw	x8, [x8, #0x27c]
0x100327298:  a8 02 08 8b   add	x8, x21, x8
0x10032729c:  09 01 49 39   ldrb	w9, [x8, #0x240]
0x1003272a0:  3f 05 00 71   cmp	w9, #0x1
0x1003272a4:  41 00 00 54   b.ne	loc_1003272ac ; ⤵ 0x8
0x1003272a8:  1f 01 09 39   strb	wzr, [x8, #0x240]
0x1003272ac:  ; loc_1003272ac
0x1003272ac:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003272b0:  08 81 82 b9   ldrsw	x8, [x8, #0x280]
0x1003272b4:  bf 6a 28 38   strb	wzr, [x21, x8]
0x1003272b8:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003272bc:  08 85 82 b9   ldrsw	x8, [x8, #0x284]
0x1003272c0:  bf 6a 28 b8   str	wzr, [x21, x8]
0x1003272c4:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003272c8:  08 89 82 b9   ldrsw	x8, [x8, #0x288]
0x1003272cc:  bf 6a 28 f8   str	xzr, [x21, x8]
0x1003272d0:  68 37 00 b0   adrp	x8, 0x100a14000
0x1003272d4:  08 8d 82 b9   ldrsw	x8, [x8, #0x28c]
0x1003272d8:  bf 6a 28 f8   str	xzr, [x21, x8]
0x1003272dc:  a0 6a 79 f8   ldr	x0, [x21, x25]
0x1003272e0:  38 69 07 94   bl	j__objc_msgSend(x0, "sessionDiscoveryToken")
0x1003272e4:  fd 03 1d aa   mov	fp, fp
0x1003272e8:  23 29 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003272ec:  f7 03 00 aa   mov	x23, x0
0x1003272f0:  e9 a3 ff 97   bl	0x100310294
0x1003272f4:  fd 03 1d aa   mov	fp, fp
0x1003272f8:  1f 29 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003272fc:  e0 0f 00 f9   str	x0, [sp, #0x18]
0x100327300:  f1 28 07 94   bl	j__objc_release_x23
0x100327304:  68 34 00 d0   adrp	x8, 0x1009b5000
0x100327308:  00 e1 44 f9   ldr	x0, [x8, #0x9c0] ; __got._OBJC_CLASS_$_NSString
0x10032730c:  7e 28 07 94   bl	j__objc_alloc
0x100327310:  f7 03 00 aa   mov	x23, x0
0x100327314:  42 36 00 f0   adrp	x2, 0x1009f2000
0x100327318:  42 20 22 91   add	x2, x2, #0x888 ; _OBJC_CLASS_$_NSConstantIntegerNumber
0x10032731c:  e0 0f 40 f9   ldr	x0, [sp, #0x18]
0x100327320:  78 5e 07 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x100327324:  fd 03 1d aa   mov	fp, fp
0x100327328:  13 29 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x10032732c:  f8 03 00 aa   mov	x24, x0
0x100327330:  e0 03 17 aa   mov	x0, x23
0x100327334:  e2 03 18 aa   mov	x2, x24
0x100327338:  83 00 80 52   mov	w3, #0x4
0x10032733c:  51 54 07 94   bl	j__objc_msgSend(x0, "initWithData:encoding:")
0x100327340:  e0 0b 00 f9   str	x0, [sp, #0x10]
0x100327344:  e4 28 07 94   bl	j__objc_release_x24
0x100327348:  68 34 00 d0   adrp	x8, 0x1009b5000
0x10032734c:  00 f1 44 f9   ldr	x0, [x8, #0x9e0] ; __got._OBJC_CLASS_$_NSUUID
0x100327350:  6d 28 07 94   bl	j__objc_alloc
0x100327354:  e2 0b 40 f9   ldr	x2, [sp, #0x10]
0x100327358:  32 57 07 94   bl	j__objc_msgSend(x0, "initWithUUIDString:")
0x10032735c:  e0 07 00 f9   str	x0, [sp, #0x8]
0x100327360:  68 37 00 f0   adrp	x8, 0x100a16000
0x100327364:  00 a1 3b 91   add	x0, x8, #0xee8 ; CompanionDevice
0x100327368:  67 28 07 94   bl	j__objc_alloc
0x10032736c:  e2 07 40 f9   ldr	x2, [sp, #0x8]
0x100327370:  e4 53 07 94   bl	j__objc_msgSend(x0, "initWithCompanionUUID:")
0x100327374:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327378:  16 91 82 b9   ldrsw	x22, [x8, #0x290]
0x10032737c:  a8 6a 76 f8   ldr	x8, [x21, x22]
0x100327380:  a0 6a 36 f8   str	x0, [x21, x22]
0x100327384:  e8 28 07 94   bl	j__objc_release_x8
0x100327388:  08 38 00 d0   adrp	x8, 0x100a29000
0x10032738c:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x100327390:  19 01 40 f9   ldr	x25, [x8]
0x100327394:  20 29 07 94   bl	j__objc_retain_x25
0x100327398:  e0 03 19 aa   mov	x0, x25
0x10032739c:  01 00 80 52   mov	w1, #0
0x1003273a0:  59 29 07 94   bl	j__os_log_type_enabled
0x1003273a4:  a0 02 00 34   cbz	w0, loc_1003273f8 ; ⤵ 0x54
0x1003273a8:  a0 6a 76 f8   ldr	x0, [x21, x22]
0x1003273ac:  75 2b 07 94   bl	j__objc_msgSend(x0, "UUID")
0x1003273b0:  fd 03 1d aa   mov	fp, fp
0x1003273b4:  f0 28 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x1003273b8:  fa 03 00 aa   mov	x26, x0
0x1003273bc:  08 12 00 f0   adrp	x8, 0x10056a000
0x1003273c0:  00 59 42 fd   ldr	d0, [x8, #0x4b0]
0x1003273c4:  a0 03 17 bc   stur	s0, [fp, #-0x90]
0x1003273c8:  a8 43 02 d1   sub	x8, fp, #0x90
0x1003273cc:  00 41 00 f8   stur	x0, [x8, #0x4]
0x1003273d0:  c0 e6 ff b0   adrp	x0, 0x100000000
0x1003273d4:  00 00 00 91   add	x0, x0, #0 ; __mh_execute_header
0x1003273d8:  43 31 00 b0   adrp	x3, 0x100950000
0x1003273dc:  63 14 26 91   add	x3, x3, #0x985 ; "#ses-item-loc,Session initialized for %@"
0x1003273e0:  a4 43 02 d1   sub	x4, fp, #0x90
0x1003273e4:  e1 03 19 aa   mov	x1, x25
0x1003273e8:  02 00 80 52   mov	w2, #0
0x1003273ec:  85 01 80 52   mov	w5, #0xc
0x1003273f0:  79 26 07 94   bl	j___os_log_impl
0x1003273f4:  c0 28 07 94   bl	j__objc_release_x26
0x1003273f8:  ; loc_1003273f8
0x1003273f8:  bb 28 07 94   bl	j__objc_release_x25
0x1003273fc:  68 37 00 b0   adrp	x8, 0x100a14000
0x100327400:  08 95 82 b9   ldrsw	x8, [x8, #0x294]
0x100327404:  bf 6a 28 38   strb	wzr, [x21, x8]
0x100327408:  68 37 00 b0   adrp	x8, 0x100a14000
0x10032740c:  17 99 82 b9   ldrsw	x23, [x8, #0x298]
0x100327410:  28 00 80 52   mov	w8, #0x1
0x100327414:  a8 6a 37 38   strb	w8, [x21, x23]
0x100327418:  69 37 00 b0   adrp	x9, 0x100a14000
0x10032741c:  36 9d 82 b9   ldrsw	x22, [x9, #0x29c]
0x100327420:  a8 6a 36 38   strb	w8, [x21, x22]
0x100327424:  68 34 00 f0   adrp	x8, 0x1009b6000
0x100327428:  00 25 40 f9   ldr	x0, [x8, #0x48] ; __got._OBJC_CLASS_$_NSUserDefaults
0x10032742c:  b5 74 07 94   bl	j__objc_msgSend(x0, "standardUserDefaults")
0x100327430:  fd 03 1d aa   mov	fp, fp
0x100327434:  d0 28 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x100327438:  f9 03 00 aa   mov	x25, x0
0x10032743c:  22 36 00 b0   adrp	x2, 0x1009ec000
0x100327440:  42 20 05 91   add	x2, x2, #0x148 ; "NBTimeDitheringForItemFinding"
0x100327444:  1f 5e 07 94   bl	j__objc_msgSend(x0, "objectForKey:")
0x100327448:  fd 03 1d aa   mov	fp, fp
0x10032744c:  ca 28 07 94   bl	j__objc_retainAutoreleasedReturnValue
0x100327450:  1f 00 00 f1   cmp	x0, #0
0x100327454:  f8 17 9f 1a   cset	w24, eq
0x100327458:  83 28 07 94   bl	j__objc_release
0x10032745c:  58 04 00 37   tbnz	w24, #0, loc_1003274e4 ; ⤵ 0x88
0x100327460:  22 36 00 b0   adrp	x2, 0x1009ec000
0x100327464:  42 20 05 91   add	x2, x2, #0x148 ; "NBTimeDitheringForItemFinding"
0x100327468:  e0 03 19 aa   mov	x0, x25
0x10032746c:  8d 42 07 94   bl	j__objc_msgSend(x0, "boolForKey:")
0x100327470:  fa 03 00 aa   mov	x26, x0
0x100327474:  08 38 00 d0   adrp	x8, 0x100a29000
0x100327478:  08 41 38 91   add	x8, x8, #0xe10 ; "CreateConfigRTTTypes"
0x10032747c:  1b 01 40 f9   ldr	x27, [x8]
0x100327480:  e0 03 1b aa   mov	x0, x27
0x100327484:  01 00 80 52   mov	w1, #0
0x100327488:  1f 29 07 94   bl	j__os_log_type_enabled
0x10032748c:  a0 02 00 34   cbz	w0, loc_1003274e0 ; ⤵ 0x54

