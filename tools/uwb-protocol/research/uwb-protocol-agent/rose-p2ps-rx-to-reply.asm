0042b0c4 f0b5       push     {r4, r5, r6, r7, lr}
0042b0c6 03af       add      r7, sp, #0xc
0042b0c8 2de9f80f   push.w   {r3, r4, r5, r6, r7, r8, sb, sl, fp}
0042b0cc 0129       cmp      r1, #1
0042b0ce 40f09d81   bne.w    #0x42b40c
0042b0d2 00f55265   add.w    r5, r0, #0xd20
0042b0d6 0446       mov      r4, r0
0042b0d8 8021       movs     r1, #0x80
0042b0da 2a68       ldr      r2, [r5]
0042b0dc 6b68       ldr      r3, [r5, #4]
0042b0de d048       ldr      r0, [pc, #0x340] ; [0x42b420]=0x100440f7
0042b0e0 d04e       ldr      r6, [pc, #0x340] ; [0x42b424]=0x434261
0042b0e2 b047       blx      r6
0042b0e4 aa68       ldr      r2, [r5, #8]
0042b0e6 eb68       ldr      r3, [r5, #0xc]
0042b0e8 cf48       ldr      r0, [pc, #0x33c] ; [0x42b428]=0x1004411e
0042b0ea 8021       movs     r1, #0x80
0042b0ec b047       blx      r6
0042b0ee 94f83c0d   ldrb.w   r0, [r4, #0xd3c]
0042b0f2 b4f8561b   ldrh.w   r1, [r4, #0xb56]
0042b0f6 d4f8f82c   ldr.w    r2, [r4, #0xcf8]
0042b0fa 41ea0040   orr.w    r0, r1, r0, lsl #16
0042b0fe d4f8401d   ldr.w    r1, [r4, #0xd40]
0042b102 40ea0163   orr.w    r3, r0, r1, lsl #24
0042b106 c948       ldr      r0, [pc, #0x324] ; [0x42b42c]=0x10044145
0042b108 e821       movs     r1, #0xe8
0042b10a b047       blx      r6
0042b10c d4f83c0d   ldr.w    r0, [r4, #0xd3c]
0042b110 08b9       cbnz     r0, #0x42b116
0042b112 0021       movs     r1, #0
0042b114 e165       str      r1, [r4, #0x5c]
0042b116 94f86410   ldrb.w   r1, [r4, #0x64]
0042b11a 0629       cmp      r1, #6
0042b11c 48d0       beq      #0x42b1b0
0042b11e 04f5346a   add.w    sl, r4, #0xb40
0042b122 0429       cmp      r1, #4
0042b124 23d0       beq      #0x42b16e
0042b126 0129       cmp      r1, #1
0042b128 40f07281   bne.w    #0x42b410
0042b12c d4f8643d   ldr.w    r3, [r4, #0xd64]
0042b130 d4f8481d   ldr.w    r1, [r4, #0xd48]
0042b134 41f26a66   movw     r6, #0x166a
0042b138 6a68       ldr      r2, [r5, #4]
0042b13a 85f84809   strb.w   r0, [r5, #0x948]
0042b13e a151       str      r1, [r4, r6]
0042b140 2968       ldr      r1, [r5]
0042b142 c5f85839   str.w    r3, [r5, #0x958]
0042b146 a319       adds     r3, r4, r6
0042b148 b4f84c6d   ldrh.w   r6, [r4, #0xd4c]
0042b14c c5f8a428   str.w    r2, [r5, #0x8a4]
0042b150 0028       cmp      r0, #0
0042b152 c5f8a018   str.w    r1, [r5, #0x8a0]
0042b156 9e80       strh     r6, [r3, #4]
0042b158 7cd0       beq      #0x42b254
0042b15a 206c       ldr      r0, [r4, #0x40]
0042b15c e264       str      r2, [r4, #0x4c]
0042b15e a164       str      r1, [r4, #0x48]
0042b160 30f045fb   bl       #0x45b7ee
0042b164 31f0dbf8   bl       #0x45c31e
0042b168 2046       mov      r0, r4
0042b16a 0121       movs     r1, #1
0042b16c 23e0       b        #0x42b1b6
0042b16e 6b68       ldr      r3, [r5, #4]
0042b170 d4f8481d   ldr.w    r1, [r4, #0xd48]
0042b174 41f27e62   movw     r2, #0x167e
0042b178 85f85c09   strb.w   r0, [r5, #0x95c]
0042b17c c5f8b438   str.w    r3, [r5, #0x8b4]
0042b180 d4f8643d   ldr.w    r3, [r4, #0xd64]
0042b184 a150       str      r1, [r4, r2]
0042b186 2244       add      r2, r4
0042b188 2968       ldr      r1, [r5]
0042b18a c5f86c39   str.w    r3, [r5, #0x96c]
0042b18e b4f84c3d   ldrh.w   r3, [r4, #0xd4c]
0042b192 c5f8b018   str.w    r1, [r5, #0x8b0]
0042b196 9380       strh     r3, [r2, #4]
0042b198 a26c       ldr      r2, [r4, #0x48]
0042b19a 891a       subs     r1, r1, r2
0042b19c c5f84419   str.w    r1, [r5, #0x944]
0042b1a0 58b1       cbz      r0, #0x42b1ba
0042b1a2 206c       ldr      r0, [r4, #0x40]
0042b1a4 30f023fb   bl       #0x45b7ee
0042b1a8 0120       movs     r0, #1
0042b1aa f6f797fa   bl       #0x4216dc
0042b1ae 00e0       b        #0x42b1b2
0042b1b0 60b3       cbz      r0, #0x42b20c
0042b1b2 2046       mov      r0, r4
0042b1b4 0221       movs     r1, #2
0042b1b6 0e22       movs     r2, #0xe
0042b1b8 13e1       b        #0x42b3e2
0042b1ba 95f88808   ldrb.w   r0, [r5, #0x888]
0042b1be 0028       cmp      r0, #0
0042b1c0 40f01781   bne.w    #0x42b3f2
0042b1c4 d4f8508b   ldr.w    r8, [r4, #0xb50]
0042b1c8 8021       movs     r1, #0x80
0042b1ca c346       mov      fp, r8
0042b1cc d8f80f30   ldr.w    r3, [r8, #0xf]
0042b1d0 5bf80b2f   ldr      r2, [fp, #0xb]!
0042b1d4 9648       ldr      r0, [pc, #0x258] ; [0x42b430]=0x1004400e
0042b1d6 09f043f8   bl       #0x434260
0042b1da 94f86800   ldrb.w   r0, [r4, #0x68]
0042b1de 94f8569b   ldrb.w   sb, [r4, #0xb56]
0042b1e2 3221       movs     r1, #0x32
0042b1e4 0091       str      r1, [sp]
0042b1e6 41f2b851   movw     r1, #0x15b8
0042b1ea 0130       adds     r0, #1
0042b1ec 6318       adds     r3, r4, r1
0042b1ee 4946       mov      r1, sb
0042b1f0 c2b2       uxtb     r2, r0
0042b1f2 4046       mov      r0, r8
0042b1f4 00f096fb   bl       #0x42b924
0042b1f8 0646       mov      r6, r0
0042b1fa 0028       cmp      r0, #0
0042b1fc 40f0e080   bne.w    #0x42b3c0
0042b200 98f81500   ldrb.w   r0, [r8, #0x15]
0042b204 0028       cmp      r0, #0
0042b206 53d0       beq      #0x42b2b0
0042b208 f826       movs     r6, #0xf8
0042b20a d9e0       b        #0x42b3c0
0042b20c d4f8508b   ldr.w    r8, [r4, #0xb50]
0042b210 8021       movs     r1, #0x80
0042b212 c146       mov      sb, r8
0042b214 d8f80f30   ldr.w    r3, [r8, #0xf]
0042b218 59f80b2f   ldr      r2, [sb, #0xb]!
0042b21c 8548       ldr      r0, [pc, #0x214] ; [0x42b434]=0x1004402b
0042b21e 09f01ff8   bl       #0x434260
0042b222 94f86800   ldrb.w   r0, [r4, #0x68]
0042b226 b4f8561b   ldrh.w   r1, [r4, #0xb56]
0042b22a 3322       movs     r2, #0x33
0042b22c 0092       str      r2, [sp]
0042b22e 41f2b852   movw     r2, #0x15b8
0042b232 ceb2       uxtb     r6, r1
0042b234 0130       adds     r0, #1
0042b236 a318       adds     r3, r4, r2
0042b238 c2b2       uxtb     r2, r0
0042b23a 4046       mov      r0, r8
0042b23c 3146       mov      r1, r6
0042b23e 00f071fb   bl       #0x42b924
0042b242 0106       lsls     r1, r0, #0x18
0042b244 2bd0       beq      #0x42b29e
0042b246 c0b2       uxtb     r0, r0
0042b248 f528       cmp      r0, #0xf5
0042b24a c4f83c0d   str.w    r0, [r4, #0xd3c]
0042b24e 67d1       bne      #0x42b320
0042b250 1622       movs     r2, #0x16
0042b252 c4e0       b        #0x42b3de
0042b254 95f88808   ldrb.w   r0, [r5, #0x888]
0042b258 d5f80890   ldr.w    sb, [r5, #8]
0042b25c e968       ldr      r1, [r5, #0xc]
0042b25e 0028       cmp      r0, #0
0042b260 e164       str      r1, [r4, #0x4c]
0042b262 c4f84890   str.w    sb, [r4, #0x48]
0042b266 40f09180   bne.w    #0x42b38c
0042b26a 94f86800   ldrb.w   r0, [r4, #0x68]
0042b26e 0491       str      r1, [sp, #0x10]
0042b270 94f8568b   ldrb.w   r8, [r4, #0xb56]
0042b274 d4f850bb   ldr.w    fp, [r4, #0xb50]
0042b278 3021       movs     r1, #0x30
0042b27a 0091       str      r1, [sp]
0042b27c 41f2b851   movw     r1, #0x15b8
0042b280 0130       adds     r0, #1
0042b282 6318       adds     r3, r4, r1
0042b284 4146       mov      r1, r8
0042b286 c2b2       uxtb     r2, r0
0042b288 5846       mov      r0, fp
0042b28a 00f04bfb   bl       #0x42b924
0042b28e 0646       mov      r6, r0
0042b290 0028       cmp      r0, #0
0042b292 69d1       bne      #0x42b368
0042b294 9bf81500   ldrb.w   r0, [fp, #0x15]
0042b298 40b3       cbz      r0, #0x42b2ec
0042b29a f826       movs     r6, #0xf8
0042b29c 64e0       b        #0x42b368
0042b29e 98f81500   ldrb.w   r0, [r8, #0x15]
0042b2a2 08b1       cbz      r0, #0x42b2a8
0042b2a4 f820       movs     r0, #0xf8
0042b2a6 39e0       b        #0x42b31c
0042b2a8 232e       cmp      r6, #0x23
0042b2aa 06d2       bhs      #0x42b2ba
0042b2ac f620       movs     r0, #0xf6
0042b2ae 35e0       b        #0x42b31c
0042b2b0 b9f1230f   cmp.w    sb, #0x23
0042b2b4 1fd2       bhs      #0x42b2f6
0042b2b6 f626       movs     r6, #0xf6
0042b2b8 82e0       b        #0x42b3c0
0042b2ba d9f80000   ldr.w    r0, [sb]
0042b2be d9f80410   ldr.w    r1, [sb, #4]
0042b2c2 30f06ffa   bl       #0x45b7a4
0042b2c6 28d3       blo      #0x42b31a
0042b2c8 31f0f4fe   bl       #0x45d0b4
0042b2cc 47d1       bne      #0x42b35e
0042b2ce d8f81700   ldr.w    r0, [r8, #0x17]
0042b2d2 41f2d851   movw     r1, #0x15d8
0042b2d6 30f0ecfd   bl       #0x45beb2
0042b2da 0020       movs     r0, #0
0042b2dc c4f83c0d   str.w    r0, [r4, #0xd3c]
0042b2e0 2046       mov      r0, r4
0042b2e2 fff77dfb   bl       #0x42a9e0
0042b2e6 31f05bfd   bl       #0x45cda0
0042b2ea 7ae0       b        #0x42b3e2
0042b2ec b8f1190f   cmp.w    r8, #0x19
0042b2f0 18d2       bhs      #0x42b324
0042b2f2 f626       movs     r6, #0xf6
0042b2f4 38e0       b        #0x42b368
0042b2f6 dbf80000   ldr.w    r0, [fp]
0042b2fa dbf80410   ldr.w    r1, [fp, #4]
0042b2fe 30f051fa   bl       #0x45b7a4
0042b302 2ad3       blo      #0x42b35a
0042b304 31f0d6fe   bl       #0x45d0b4
0042b308 59d1       bne      #0x42b3be
0042b30a d8f81700   ldr.w    r0, [r8, #0x17]
0042b30e 41f2d851   movw     r1, #0x15d8
0042b312 0026       movs     r6, #0
0042b314 30f0cdfd   bl       #0x45beb2
0042b318 52e0       b        #0x42b3c0
0042b31a e120       movs     r0, #0xe1
0042b31c c4f83c0d   str.w    r0, [r4, #0xd3c]
0042b320 0e22       movs     r2, #0xe
0042b322 5ce0       b        #0x42b3de
0042b324 dbf80be0   ldr.w    lr, [fp, #0xb]
0042b328 dbf80f10   ldr.w    r1, [fp, #0xf]
0042b32c 6ff00200   mvn      r0, #2
0042b330 4ff0ff3c   mov.w    ip, #-1
0042b334 bef10102   subs.w   r2, lr, #1
0042b338 61f10003   sbc      r3, r1, #0
0042b33c 801a       subs     r0, r0, r2
0042b33e 7ceb0300   sbcs.w   r0, ip, r3
0042b342 10d3       blo      #0x42b366
0042b344 d5f89008   ldr.w    r0, [r5, #0x890]
0042b348 d5f89428   ldr.w    r2, [r5, #0x894]
0042b34c 5140       eors     r1, r2
0042b34e 80ea0e00   eor.w    r0, r0, lr
0042b352 0843       orrs     r0, r1
0042b354 18bf       it       ne
0042b356 f526       movne    r6, #0xf5
0042b358 06e0       b        #0x42b368
0042b35a e126       movs     r6, #0xe1
0042b35c 30e0       b        #0x42b3c0
0042b35e f520       movs     r0, #0xf5
0042b360 c4f83c0d   str.w    r0, [r4, #0xd3c]
0042b364 74e7       b        #0x42b250
0042b366 e126       movs     r6, #0xe1
0042b368 0499       ldr      r1, [sp, #0x10]
0042b36a 85f84869   strb.w   r6, [r5, #0x948]
0042b36e c4f83c6d   str.w    r6, [r4, #0xd3c]
0042b372 5eb1       cbz      r6, #0x42b38c
0042b374 206c       ldr      r0, [r4, #0x40]
0042b376 30f03afa   bl       #0x45b7ee
0042b37a 30f0d0ff   bl       #0x45c31e
0042b37e 0e22       movs     r2, #0xe
0042b380 2046       mov      r0, r4
0042b382 f52e       cmp      r6, #0xf5
0042b384 08bf       it       eq
0042b386 1622       moveq    r2, #0x16
0042b388 0121       movs     r1, #1
0042b38a 2ae0       b        #0x42b3e2
0042b38c a06d       ldr      r0, [r4, #0x58]
0042b38e 10eb0900   adds.w   r0, r0, sb
0042b392 2065       str      r0, [r4, #0x50]
0042b394 41f10000   adc      r0, r1, #0
0042b398 80b2       uxth     r0, r0
0042b39a 6065       str      r0, [r4, #0x54]
0042b39c 2046       mov      r0, r4
0042b39e fff719fd   bl       #0x42add4
0042b3a2 98bb       cbnz     r0, #0x42b40c
0042b3a4 95f87c09   ldrb.w   r0, [r5, #0x97c]
0042b3a8 0f22       movs     r2, #0xf
0042b3aa 0028       cmp      r0, #0
0042b3ac 18bf       it       ne
0042b3ae 1f22       movne    r2, #0x1f
0042b3b0 d5f87819   ldr.w    r1, [r5, #0x978]
0042b3b4 2046       mov      r0, r4
0042b3b6 f8f7f3fa   bl       #0x4239a0
0042b3ba 0220       movs     r0, #2
0042b3bc 24e0       b        #0x42b408
0042b3be f526       movs     r6, #0xf5
0042b3c0 85f85c69   strb.w   r6, [r5, #0x95c]
0042b3c4 c4f83c6d   str.w    r6, [r4, #0xd3c]
0042b3c8 9eb1       cbz      r6, #0x42b3f2
0042b3ca 206c       ldr      r0, [r4, #0x40]
0042b3cc 30f00ffa   bl       #0x45b7ee
0042b3d0 0120       movs     r0, #1
0042b3d2 f6f783f9   bl       #0x4216dc
0042b3d6 0e22       movs     r2, #0xe
0042b3d8 f52e       cmp      r6, #0xf5
0042b3da 08bf       it       eq
0042b3dc 1622       moveq    r2, #0x16
0042b3de 2046       mov      r0, r4
0042b3e0 0221       movs     r1, #2
0042b3e2 0023       movs     r3, #0
0042b3e4 05b0       add      sp, #0x14
0042b3e6 bde8000f   pop.w    {r8, sb, sl, fp}
0042b3ea bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042b3ee fff73dbb   b.w      #0x42aa6c
0042b3f2 2046       mov      r0, r4
0042b3f4 fff7eefc   bl       #0x42add4
0042b3f8 40b9       cbnz     r0, #0x42b40c
0042b3fa d5f87819   ldr.w    r1, [r5, #0x978]
0042b3fe 2046       mov      r0, r4
0042b400 0f22       movs     r2, #0xf
0042b402 f8f7cdfa   bl       #0x4239a0
0042b406 0520       movs     r0, #5
0042b408 84f86400   strb.w   r0, [r4, #0x64]
0042b40c 30f087bb   b.w      #0x45bb1e
0042b410 30f00efc   bl       #0x45bc30
0042b414 40f2ee31   movw     r1, #0x3ee
0042b418 0748       ldr      r0, [pc, #0x1c] ; [0x42b438]=0x46f2ff 'p2ps_task.c'
0042b41a 084a       ldr      r2, [pc, #0x20] ; [0x42b43c]=0x4700bb
0042b41c 0cf0dcf8   bl       #0x4375d8
0042b420 f740       lsrs     r7, r6
0042b422 0410       asrs     r4, r0, #0x20
0042b424 6142       rsbs     r1, r4, #0
0042b426 4300       lsls     r3, r0, #1
0042b428 1e41       asrs     r6, r3
0042b42a 0410       asrs     r4, r0, #0x20
0042b42c 4541       adcs     r5, r0
0042b42e 0410       asrs     r4, r0, #0x20
0042b430 0e40       ands     r6, r1
0042b432 0410       asrs     r4, r0, #0x20
0042b434 2b40       ands     r3, r5
0042b436 0410       asrs     r4, r0, #0x20
0042b438 fff2       .byte    0xff, 0xf2
0042b43a 4600       lsls     r6, r0, #1
0042b43c bb00       lsls     r3, r7, #2
0042b43e 4700       lsls     r7, r0, #1
0042b440 f0b5       push     {r4, r5, r6, r7, lr}
0042b442 03af       add      r7, sp, #0xc
0042b444 2de9fe0f   push.w   {r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp}
0042b448 0028       cmp      r0, #0
0042b44a 00f02f82   beq.w    #0x42b8ac
0042b44e 0029       cmp      r1, #0
0042b450 40f03282   bne.w    #0x42b8b8
0042b454 1546       mov      r5, r2
0042b456 002a       cmp      r2, #0
0042b458 00f03482   beq.w    #0x42b8c4
0042b45c ab46       mov      fp, r5
0042b45e 8046       mov      r8, r0
0042b460 00f51669   add.w    sb, r0, #0x960
0042b464 d5f81330   ldr.w    r3, [r5, #0x13]
0042b468 8021       movs     r1, #0x80
0042b46a 5bf80f2f   ldr      r2, [fp, #0xf]!
0042b46e db48       ldr      r0, [pc, #0x36c] ; [0x42b7dc]=0x1004418a
0042b470 db4c       ldr      r4, [pc, #0x36c] ; [0x42b7e0]=0x434261
0042b472 a047       blx      r4
0042b474 30f057fb   bl       #0x45bb26
0042b478 da48       ldr      r0, [pc, #0x368] ; [0x42b7e4]=0x100441b2
0042b47a a821       movs     r1, #0xa8
0042b47c a047       blx      r4
0042b47e 31f04bfc   bl       #0x45cd18
0042b482 d948       ldr      r0, [pc, #0x364] ; [0x42b7e8]=0x100441f1
0042b484 aa21       movs     r1, #0xaa
0042b486 a047       blx      r4
0042b488 b9f84aac   ldrh.w   sl, [sb, #0xc4a]
0042b48c 5046       mov      r0, sl
0042b48e ecf709fa   bl       #0x4178a4
0042b492 60b1       cbz      r0, #0x42b4ae
0042b494 a87b       ldrb     r0, [r5, #0xe]
0042b496 0e24       movs     r4, #0xe
0042b498 50b9       cbnz     r0, #0x42b4b0
0042b49a f120       movs     r0, #0xf1
0042b49c c8f83c0d   str.w    r0, [r8, #0xd3c]
0042b4a0 5046       mov      r0, sl
0042b4a2 ecf735fa   bl       #0x417910
0042b4a6 0028       cmp      r0, #0
0042b4a8 18bf       it       ne
0042b4aa 1624       movne    r4, #0x16
0042b4ac 00e0       b        #0x42b4b0
0042b4ae 0e24       movs     r4, #0xe
0042b4b0 98f86400   ldrb.w   r0, [r8, #0x64]
0042b4b4 0528       cmp      r0, #5
0042b4b6 41d0       beq      #0x42b53c
0042b4b8 0228       cmp      r0, #2
0042b4ba 40f00982   bne.w    #0x42b8d0
0042b4be d8f83c0d   ldr.w    r0, [r8, #0xd3c]
0042b4c2 5946       mov      r1, fp
0042b4c4 2522       movs     r2, #0x25
0042b4c6 89f8080d   strb.w   r0, [sb, #0xd08]
0042b4ca 08f5b050   add.w    r0, r8, #0x1600
0042b4ce dbf73ffa   bl       #0x406950
0042b4d2 d9f8740b   ldr.w    r0, [sb, #0xb74]
0042b4d6 44f6a866   movw     r6, #0x4ea8
0042b4da 32f05cf8   bl       #0x45d596
0042b4de c348       ldr      r0, [pc, #0x30c] ; [0x42b7ec]=0x10044229
0042b4e0 31f073f9   bl       #0x45c7ca
0042b4e4 d8f85e1d   ldr.w    r1, [r8, #0xd5e]
0042b4e8 41f27062   movw     r2, #0x1670
0042b4ec d8f8480d   ldr.w    r0, [r8, #0xd48]
0042b4f0 48f80210   str.w    r1, [r8, r2]
0042b4f4 41f26a61   movw     r1, #0x166a
0042b4f8 48f80100   str.w    r0, [r8, r1]
0042b4fc 31f01af8   bl       #0x45c534
0042b500 b5f85300   ldrh.w   r0, [r5, #0x53]
0042b504 a9f8300d   strh.w   r0, [sb, #0xd30]
0042b508 d9f8740b   ldr.w    r0, [sb, #0xb74]
0042b50c 32f043f8   bl       #0x45d596
0042b510 b748       ldr      r0, [pc, #0x2dc] ; [0x42b7f0]=0x10044258
0042b512 31f05af9   bl       #0x45c7ca
0042b516 d8f84000   ldr.w    r0, [r8, #0x40]
0042b51a b9f84a1c   ldrh.w   r1, [sb, #0xc4a]
0042b51e 08f53463   add.w    r3, r8, #0xb40
0042b522 027e       ldrb     r2, [r0, #0x18]
0042b524 d9f8740b   ldr.w    r0, [sb, #0xb74]
0042b528 30f0affb   bl       #0x45bc8a
0042b52c d8f83c0d   ldr.w    r0, [r8, #0xd3c]
0042b530 0028       cmp      r0, #0
0042b532 00f0dd80   beq.w    #0x42b6f0
0042b536 4046       mov      r0, r8
0042b538 0121       movs     r1, #1
0042b53a 34e0       b        #0x42b5a6
0042b53c d8f83c0d   ldr.w    r0, [r8, #0xd3c]
0042b540 5946       mov      r1, fp
0042b542 2522       movs     r2, #0x25
0042b544 89f81c0d   strb.w   r0, [sb, #0xd1c]
0042b548 41f22560   movw     r0, #0x1625
0042b54c 4044       add      r0, r8
0042b54e dbf7fff9   bl       #0x406950
0042b552 41f24a60   movw     r0, #0x164a
0042b556 3146       mov      r1, r6
0042b558 1722       movs     r2, #0x17
0042b55a 4044       add      r0, r8
0042b55c dbf7f8f9   bl       #0x406950
0042b560 d8f8480d   ldr.w    r0, [r8, #0xd48]
0042b564 41f27e61   movw     r1, #0x167e
0042b568 41f28462   movw     r2, #0x1684
0042b56c 08f53463   add.w    r3, r8, #0xb40
0042b570 48f80100   str.w    r0, [r8, r1]
0042b574 d8f85e0d   ldr.w    r0, [r8, #0xd5e]
0042b578 48f80200   str.w    r0, [r8, r2]
0042b57c 30f0daff   bl       #0x45c534
0042b580 5146       mov      r1, sl
0042b582 b5f85300   ldrh.w   r0, [r5, #0x53]
0042b586 a9f8320d   strh.w   r0, [sb, #0xd32]
0042b58a d8f84000   ldr.w    r0, [r8, #0x40]
0042b58e 027e       ldrb     r2, [r0, #0x18]
0042b590 d9f8740b   ldr.w    r0, [sb, #0xb74]
0042b594 0090       str      r0, [sp]
0042b596 0120       movs     r0, #1
0042b598 f6f7a0f8   bl       #0x4216dc
0042b59c d8f83c0d   ldr.w    r0, [r8, #0xd3c]
0042b5a0 50b1       cbz      r0, #0x42b5b8
0042b5a2 4046       mov      r0, r8
0042b5a4 0221       movs     r1, #2
0042b5a6 2246       mov      r2, r4
0042b5a8 0023       movs     r3, #0
0042b5aa 07b0       add      sp, #0x1c
0042b5ac bde8000f   pop.w    {r8, sb, sl, fp}
0042b5b0 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042b5b4 fff75aba   b.w      #0x42aa6c
0042b5b8 b9f84a0c   ldrh.w   r0, [sb, #0xc4a]
0042b5bc f0f7dcf9   bl       #0x41b978
0042b5c0 4ff47a71   mov.w    r1, #0x3e8
0042b5c4 d9f8ae3c   ldr.w    r3, [sb, #0xcae]
0042b5c8 d9f8b22c   ldr.w    r2, [sb, #0xcb2]
0042b5cc d9f8606c   ldr.w    r6, [sb, #0xc60]
0042b5d0 d9f8644c   ldr.w    r4, [sb, #0xc64]
0042b5d4 d9f86c5c   ldr.w    r5, [sb, #0xc6c]
0042b5d8 46f2905a   movw     sl, #0x6590
0042b5dc a0fb0101   umull    r0, r1, r0, r1
0042b5e0 b0eb030e   subs.w   lr, r0, r3
0042b5e4 61eb020c   sbc.w    ip, r1, r2
0042b5e8 d9f8682c   ldr.w    r2, [sb, #0xc68]
0042b5ec 961b       subs     r6, r2, r6
0042b5ee a6fb0a63   umull    r6, r3, r6, sl
0042b5f2 65eb0404   sbc.w    r4, r5, r4
0042b5f6 16eb0e06   adds.w   r6, r6, lr
0042b5fa 04fb0a33   mla      r3, r4, sl, r3
0042b5fe d9f8d74c   ldr.w    r4, [sb, #0xcd7]
0042b602 c9f8906c   str.w    r6, [sb, #0xc90]
0042b606 d9f8d36c   ldr.w    r6, [sb, #0xcd3]
0042b60a 43eb0c03   adc.w    r3, r3, ip
0042b60e 301a       subs     r0, r6, r0
0042b610 d9f8706c   ldr.w    r6, [sb, #0xc70]
0042b614 64eb0101   sbc.w    r1, r4, r1
0042b618 d9f8744c   ldr.w    r4, [sb, #0xc74]
0042b61c b21a       subs     r2, r6, r2
0042b61e 09f54966   add.w    r6, sb, #0xc90
0042b622 ac41       sbcs     r4, r5
0042b624 a2fb0a25   umull    r2, r5, r2, sl
0042b628 c9f8943c   str.w    r3, [sb, #0xc94]
0042b62c 1218       adds     r2, r2, r0
0042b62e 04fb0a50   mla      r0, r4, sl, r5
0042b632 c9f8882c   str.w    r2, [sb, #0xc88]
0042b636 41eb0003   adc.w    r3, r1, r0
0042b63a 99f8470c   ldrb.w   r0, [sb, #0xc47]
0042b63e c9f88c3c   str.w    r3, [sb, #0xc8c]
0042b642 0128       cmp      r0, #1
0042b644 7bd1       bne      #0x42b73e
0042b646 32f0bdf8   bl       #0x45d7c4
0042b64a 10eb8200   adds.w   r0, r0, r2, lsl #2
0042b64e c8f85000   str.w    r0, [r8, #0x50]
0042b652 41f10000   adc      r0, r1, #0
0042b656 31f034fc   bl       #0x45cec2
0042b65a 0028       cmp      r0, #0
0042b65c 40f02481   bne.w    #0x42b8a8
0042b660 d8f84c00   ldr.w    r0, [r8, #0x4c]
0042b664 d8f87059   ldr.w    r5, [r8, #0x970]
0042b668 d8f848b0   ldr.w    fp, [r8, #0x48]
0042b66c d8f858a0   ldr.w    sl, [r8, #0x58]
0042b670 0021       movs     r1, #0
0042b672 2322       movs     r2, #0x23
0042b674 09f68844   addw     r4, sb, #0xc88
0042b678 0490       str      r0, [sp, #0x10]
0042b67a 30f0f7fe   bl       #0x45c46c
0042b67e 9b49       ldr      r1, [pc, #0x26c] ; [0x42b8ec]=0xffffa5a5
0042b680 98f86800   ldrb.w   r0, [r8, #0x68]
0042b684 01f52771   add.w    r1, r1, #0x29c
0042b688 0130       adds     r0, #1
0042b68a 2980       strh     r1, [r5]
0042b68c a870       strb     r0, [r5, #2]
0042b68e 31f07bff   bl       #0x45d588
0042b692 9749       ldr      r1, [pc, #0x25c] ; [0x42b8f0]=0x3300a5a5
0042b694 c5f80720   str.w    r2, [r5, #7]
0042b698 c5f81310   str.w    r1, [r5, #0x13]
0042b69c d9f8580c   ldr.w    r0, [sb, #0xc58]
0042b6a0 d9f85c1c   ldr.w    r1, [sb, #0xc5c]
0042b6a4 c5f80f10   str.w    r1, [r5, #0xf]
0042b6a8 c5f80b00   str.w    r0, [r5, #0xb]
0042b6ac 0499       ldr      r1, [sp, #0x10]
0042b6ae 2068       ldr      r0, [r4]
0042b6b0 c5f81700   str.w    r0, [r5, #0x17]
0042b6b4 2079       ldrb     r0, [r4, #4]
0042b6b6 e876       strb     r0, [r5, #0x1b]
0042b6b8 3068       ldr      r0, [r6]
0042b6ba e861       str      r0, [r5, #0x1c]
0042b6bc 3079       ldrb     r0, [r6, #4]
0042b6be 85f82000   strb.w   r0, [r5, #0x20]
0042b6c2 2120       movs     r0, #0x21
0042b6c4 a8f87609   strh.w   r0, [r8, #0x976]
0042b6c8 0aeb4a00   add.w    r0, sl, sl, lsl #1
0042b6cc 10eb0b00   adds.w   r0, r0, fp
0042b6d0 41f10001   adc      r1, r1, #0
0042b6d4 c9f80000   str.w    r0, [sb]
0042b6d8 b9f84c0c   ldrh.w   r0, [sb, #0xc4c]
0042b6dc 89b2       uxth     r1, r1
0042b6de c9f80410   str.w    r1, [sb, #4]
0042b6e2 ecf7dff8   bl       #0x4178a4
0042b6e6 0028       cmp      r0, #0
0042b6e8 3ed0       beq      #0x42b768
0042b6ea 30f0c5fc   bl       #0x45c078
0042b6ee 3ee0       b        #0x42b76e
0042b6f0 32f068f8   bl       #0x45d7c4
0042b6f4 10eb4200   adds.w   r0, r0, r2, lsl #1
0042b6f8 c8f85000   str.w    r0, [r8, #0x50]
0042b6fc 41f10000   adc      r0, r1, #0
0042b700 31f0dffb   bl       #0x45cec2
0042b704 0028       cmp      r0, #0
0042b706 40f0cf80   bne.w    #0x42b8a8
0042b70a d9f8741b   ldr.w    r1, [sb, #0xb74]
0042b70e 44f6a462   movw     r2, #0x4ea4
0042b712 885c       ldrb     r0, [r1, r2]
0042b714 1144       add      r1, r2
0042b716 99f83c2d   ldrb.w   r2, [sb, #0xd3c]
0042b71a 0979       ldrb     r1, [r1, #4]
0042b71c 0ab3       cbz      r2, #0x42b762
0042b71e d8f84030   ldr.w    r3, [r8, #0x40]
0042b722 0125       movs     r5, #1
0042b724 13f8124f   ldrb     r4, [r3, #0x12]!
0042b728 03f10d02   add.w    r2, r3, #0xd
0042b72c 1678       ldrb     r6, [r2]
0042b72e 05fa06f6   lsl.w    r6, r5, r6
0042b732 f6b2       uxtb     r6, r6
0042b734 b142       cmp      r1, r6
0042b736 5dd1       bne      #0x42b7f4
0042b738 c9f8382d   str.w    r2, [sb, #0xd38]
0042b73c 62e0       b        #0x42b804
0042b73e 7248       ldr      r0, [pc, #0x1c8] ; [0x42b908]=0x10044288
0042b740 30f0b5ff   bl       #0x45c6ae
0042b744 3268       ldr      r2, [r6]
0042b746 7368       ldr      r3, [r6, #4]
0042b748 7048       ldr      r0, [pc, #0x1c0] ; [0x42b90c]=0x1004429a
0042b74a 30f0b0ff   bl       #0x45c6ae
0042b74e 99f8480c   ldrb.w   r0, [sb, #0xc48]
0042b752 10b9       cbnz     r0, #0x42b75a
0042b754 4046       mov      r0, r8
0042b756 fff743f9   bl       #0x42a9e0
0042b75a 4046       mov      r0, r8
0042b75c 0021       movs     r1, #0
0042b75e 0022       movs     r2, #0
0042b760 22e7       b        #0x42b5a8
0042b762 d9f8382d   ldr.w    r2, [sb, #0xd38]
0042b766 4de0       b        #0x42b804
0042b768 0020       movs     r0, #0
0042b76a c8f86c09   str.w    r0, [r8, #0x96c]
0042b76e 99f8450c   ldrb.w   r0, [sb, #0xc45]
0042b772 b0b1       cbz      r0, #0x42b7a2
0042b774 0120       movs     r0, #1
0042b776 0022       movs     r2, #0
0042b778 88f8190b   strb.w   r0, [r8, #0xb19]
0042b77c 0020       movs     r0, #0
0042b77e a8f8200b   strh.w   r0, [r8, #0xb20]
0042b782 5e48       ldr      r0, [pc, #0x178] ; [0x42b8fc]=0x10005adc
0042b784 30f0f6f8   bl       #0x45b974
0042b788 a7f12201   sub.w    r1, r7, #0x22
0042b78c c06b       ldr      r0, [r0, #0x3c]
0042b78e c8f81c0b   str.w    r0, [r8, #0xb1c]
0042b792 5848       ldr      r0, [pc, #0x160] ; [0x42b8f4]=0x20005959
0042b794 31f020ff   bl       #0x45d5d8
0042b798 d8f86809   ldr.w    r0, [r8, #0x968]
0042b79c edf796ff   bl       #0x4196cc
0042b7a0 02e0       b        #0x42b7a8
0042b7a2 0020       movs     r0, #0
0042b7a4 88f8190b   strb.w   r0, [r8, #0xb19]
0042b7a8 30f024fa   bl       #0x45bbf4
0042b7ac b9f84c0c   ldrh.w   r0, [sb, #0xc4c]
0042b7b0 eef708fc   bl       #0x419fc4
0042b7b4 0720       movs     r0, #7
0042b7b6 2268       ldr      r2, [r4]
0042b7b8 6368       ldr      r3, [r4, #4]
0042b7ba 8021       movs     r1, #0x80
0042b7bc 88f86400   strb.w   r0, [r8, #0x64]
0042b7c0 4f48       ldr      r0, [pc, #0x13c] ; [0x42b900]=0x10044288
0042b7c2 08f04dfd   bl       #0x434260
0042b7c6 3268       ldr      r2, [r6]
0042b7c8 7368       ldr      r3, [r6, #4]
0042b7ca 4e48       ldr      r0, [pc, #0x138] ; [0x42b904]=0x1004429a
0042b7cc 8021       movs     r1, #0x80
0042b7ce 07b0       add      sp, #0x1c
0042b7d0 bde8000f   pop.w    {r8, sb, sl, fp}
0042b7d4 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042b7d8 08f042bd   b.w      #0x434260
0042b7dc 8a41       sbcs     r2, r1
0042b7de 0410       asrs     r4, r0, #0x20
0042b7e0 6142       rsbs     r1, r4, #0
0042b7e2 4300       lsls     r3, r0, #1
0042b7e4 b241       sbcs     r2, r6
0042b7e6 0410       asrs     r4, r0, #0x20
0042b7e8 f141       rors     r1, r6
0042b7ea 0410       asrs     r4, r0, #0x20
0042b7ec 2942       tst      r1, r5
0042b7ee 0410       asrs     r4, r0, #0x20
0042b7f0 5842       rsbs     r0, r3, #0
0042b7f2 0410       asrs     r4, r0, #0x20
0042b7f4 05fa04f2   lsl.w    r2, r5, r4
0042b7f8 d2b2       uxtb     r2, r2
0042b7fa 9142       cmp      r1, r2
0042b7fc 70d1       bne      #0x42b8e0
0042b7fe 1a46       mov      r2, r3
0042b800 c9f8383d   str.w    r3, [sb, #0xd38]
0042b804 89f8360d   strb.w   r0, [sb, #0xd36]
0042b808 9079       ldrb     r0, [r2, #6]
0042b80a 89f8371d   strb.w   r1, [sb, #0xd37]
0042b80e 5521       movs     r1, #0x55
0042b810 d8f87059   ldr.w    r5, [r8, #0x970]
0042b814 d8f848b0   ldr.w    fp, [r8, #0x48]
0042b818 d8f84c60   ldr.w    r6, [r8, #0x4c]
0042b81c d8f85840   ldr.w    r4, [r8, #0x58]
0042b820 1922       movs     r2, #0x19
0042b822 4ff0000a   mov.w    sl, #0
0042b826 30f0e4ff   bl       #0x45c7f2
0042b82a 0021       movs     r1, #0
0042b82c 31f033fa   bl       #0x45cc96
0042b830 89f8460c   strb.w   r0, [sb, #0xc46]
0042b834 30f01afe   bl       #0x45c46c
0042b838 2c49       ldr      r1, [pc, #0xb0] ; [0x42b8ec]=0xffffa5a5
0042b83a 98f86800   ldrb.w   r0, [r8, #0x68]
0042b83e 01f52771   add.w    r1, r1, #0x29c
0042b842 2980       strh     r1, [r5]
0042b844 31f0a0fe   bl       #0x45d588
0042b848 2b49       ldr      r1, [pc, #0xac] ; [0x42b8f8]=0x3100a5a5
0042b84a c5f80720   str.w    r2, [r5, #7]
0042b84e c5f81310   str.w    r1, [r5, #0x13]
0042b852 1beb0401   adds.w   r1, fp, r4
0042b856 46f10002   adc      r2, r6, #0
0042b85a 0130       adds     r0, #1
0042b85c c9f80010   str.w    r1, [sb]
0042b860 1721       movs     r1, #0x17
0042b862 a870       strb     r0, [r5, #2]
0042b864 d9f8580c   ldr.w    r0, [sb, #0xc58]
0042b868 a8f87619   strh.w   r1, [r8, #0x976]
0042b86c d9f85c1c   ldr.w    r1, [sb, #0xc5c]
0042b870 92b2       uxth     r2, r2
0042b872 c9f80420   str.w    r2, [sb, #4]
0042b876 c5f80b00   str.w    r0, [r5, #0xb]
0042b87a 99f8440c   ldrb.w   r0, [sb, #0xc44]
0042b87e c5f80f10   str.w    r1, [r5, #0xf]
0042b882 0128       cmp      r0, #1
0042b884 02d1       bne      #0x42b88c
0042b886 c8f86ca9   str.w    sl, [r8, #0x96c]
0042b88a 01e0       b        #0x42b890
0042b88c 30f0f4fb   bl       #0x45c078
0042b890 0020       movs     r0, #0
0042b892 88f8190b   strb.w   r0, [r8, #0xb19]
0042b896 30f0adf9   bl       #0x45bbf4
0042b89a b9f84a0c   ldrh.w   r0, [sb, #0xc4a]
0042b89e eef791fb   bl       #0x419fc4
0042b8a2 0320       movs     r0, #3
0042b8a4 88f86400   strb.w   r0, [r8, #0x64]
0042b8a8 30f0b8b8   b.w      #0x45ba1c
0042b8ac 1848       ldr      r0, [pc, #0x60] ; [0x42b910]=0x46f2ff 'p2ps_task.c'
0042b8ae 1a4a       ldr      r2, [pc, #0x68] ; [0x42b918]=0x46f4ea 'task'
0042b8b0 4ff47e71   mov.w    r1, #0x3f8
0042b8b4 0bf086fe   bl       #0x4375c4
0042b8b8 1548       ldr      r0, [pc, #0x54] ; [0x42b910]=0x46f2ff 'p2ps_task.c'
0042b8ba 184a       ldr      r2, [pc, #0x60] ; [0x42b91c]=0x46f4ef 'evt == MS_OS_EVT_FG_DSP_RESULT'
0042b8bc 40f2f931   movw     r1, #0x3f9
0042b8c0 0bf080fe   bl       #0x4375c4
0042b8c4 1248       ldr      r0, [pc, #0x48] ; [0x42b910]=0x46f2ff 'p2ps_task.c'
0042b8c6 164a       ldr      r2, [pc, #0x58] ; [0x42b920]=0x46f50e 'evt_param'
0042b8c8 40f2fa31   movw     r1, #0x3fa
0042b8cc 0bf07afe   bl       #0x4375c4
0042b8d0 2ff097fd   bl       #0x45b402
0042b8d4 40f25b41   movw     r1, #0x45b
0042b8d8 0d48       ldr      r0, [pc, #0x34] ; [0x42b910]=0x46f2ff 'p2ps_task.c'
0042b8da 0e4a       ldr      r2, [pc, #0x38] ; [0x42b914]=0x4700bb
0042b8dc 0bf07cfe   bl       #0x4375d8
0042b8e0 31f0acf8   bl       #0x45ca3c
0042b8e4 40f27121   movw     r1, #0x271
0042b8e8 f6e7       b        #0x42b8d8
0042b8ea 00bf       nop      
0042b8ec a5a5       adr      r5, #0x294
0042b8ee ffff       .byte    0xff, 0xff
0042b8f0 a5a5       adr      r5, #0x294
0042b8f2 0033       adds     r3, #0
0042b8f4 5959       ldr      r1, [r3, r5]
0042b8f6 0020       movs     r0, #0
0042b8f8 a5a5       adr      r5, #0x294
0042b8fa 0031       adds     r1, #0
0042b8fc dc5a       ldrh     r4, [r3, r3]
0042b8fe 0010       asrs     r0, r0, #0x20
0042b900 8842       cmp      r0, r1
0042b902 0410       asrs     r4, r0, #0x20
0042b904 9a42       cmp      r2, r3
0042b906 0410       asrs     r4, r0, #0x20
0042b908 8842       cmp      r0, r1
0042b90a 0410       asrs     r4, r0, #0x20
0042b90c 9a42       cmp      r2, r3
0042b90e 0410       asrs     r4, r0, #0x20
0042b910 fff2       .byte    0xff, 0xf2
0042b912 4600       lsls     r6, r0, #1
0042b914 bb00       lsls     r3, r7, #2
0042b916 4700       lsls     r7, r0, #1
0042b918 eaf4       .byte    0xea, 0xf4
0042b91a 4600       lsls     r6, r0, #1
0042b91c eff4       .byte    0xef, 0xf4
0042b91e 4600       lsls     r6, r0, #1
0042b920 0ef54600   add.w    r0, lr, #0xc60000
0042b924 1929       cmp      r1, #0x19
0042b926 01d2       bhs      #0x42b92c
0042b928 f620       movs     r0, #0xf6
0042b92a 2ae0       b        #0x42b982
0042b92c 10b5       push     {r4, lr}
0042b92e b0f81340   ldrh.w   r4, [r0, #0x13]
0042b932 4af2a551   movw     r1, #0xa5a5
0042b936 8c42       cmp      r4, r1
0042b938 1ad1       bne      #0x42b970
0042b93a 01f52771   add.w    r1, r1, #0x29c
0042b93e 0488       ldrh     r4, [r0]
