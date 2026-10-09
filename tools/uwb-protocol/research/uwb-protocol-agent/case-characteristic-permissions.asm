0002c162 f0b5       push     {r4, r5, r6, r7, lr}
0002c164 8b78       ldrb     r3, [r1, #2]
0002c166 91b0       sub      sp, #0x44
0002c168 0c46       mov      r4, r1
0002c16a 012b       cmp      r3, #1
0002c16c 38bf       it       lo
0002c16e 0123       movlo    r3, #1
0002c170 0027       movs     r7, #0
0002c172 8df80e30   strb.w   r3, [sp, #0xe]
0002c176 0546       mov      r5, r0
0002c178 0b88       ldrh     r3, [r1]
0002c17a 607c       ldrb     r0, [r4, #0x11]
0002c17c adf80c30   strh.w   r3, [sp, #0xc]
0002c180 6946       mov      r1, sp
0002c182 adf80070   strh.w   r7, [sp]
0002c186 8df80270   strb.w   r7, [sp, #2]
0002c18a fff7d1ff   bl       #0x2c130
0002c18e a07c       ldrb     r0, [r4, #0x12]
0002c190 0df10101   add.w    r1, sp, #1
0002c194 fff7ccff   bl       #0x2c130
0002c198 1646       mov      r6, r2
0002c19a 237b       ldrb     r3, [r4, #0xc]
0002c19c e27b       ldrb     r2, [r4, #0xf]
0002c19e 217d       ldrb     r1, [r4, #0x14]
0002c1a0 43eac203   orr.w    r3, r3, r2, lsl #3
0002c1a4 227c       ldrb     r2, [r4, #0x10]
0002c1a6 43ea0213   orr.w    r3, r3, r2, lsl #4
0002c1aa 9df80220   ldrb.w   r2, [sp, #2]
0002c1ae b942       cmp      r1, r7
0002c1b0 22f01902   bic      r2, r2, #0x19
0002c1b4 03f01903   and      r3, r3, #0x19
0002c1b8 14bf       ite      ne
0002c1ba 0221       movne    r1, #2
0002c1bc 0121       moveq    r1, #1
0002c1be 1343       orrs     r3, r2
0002c1c0 61f34203   bfi      r3, r1, #1, #2
0002c1c4 1c22       movs     r2, #0x1c
0002c1c6 3946       mov      r1, r7
0002c1c8 09a8       add      r0, sp, #0x24
0002c1ca 8df80230   strb.w   r3, [sp, #2]
0002c1ce 18f060fa   bl       #0x44692
0002c1d2 637b       ldrb     r3, [r4, #0xd]
0002c1d4 13f0300f   tst.w    r3, #0x30
0002c1d8 14d0       beq      #0x2c204
0002c1da 0df10901   add.w    r1, sp, #9
0002c1de e07c       ldrb     r0, [r4, #0x13]
0002c1e0 adf80870   strh.w   r7, [sp, #8]
0002c1e4 8df80a70   strb.w   r7, [sp, #0xa]
0002c1e8 fff7a2ff   bl       #0x2c130
0002c1ec 1123       movs     r3, #0x11
0002c1ee 8df80830   strb.w   r3, [sp, #8]
0002c1f2 9df80a30   ldrb.w   r3, [sp, #0xa]
0002c1f6 0121       movs     r1, #1
0002c1f8 02aa       add      r2, sp, #8
0002c1fa 61f34203   bfi      r3, r1, #1, #2
0002c1fe 8df80a30   strb.w   r3, [sp, #0xa]
0002c202 0e92       str      r2, [sp, #0x38]
0002c204 637b       ldrb     r3, [r4, #0xd]
0002c206 8df82430   strb.w   r3, [sp, #0x24]
0002c20a a37b       ldrb     r3, [r4, #0xe]
0002c20c 8df82530   strb.w   r3, [sp, #0x25]
0002c210 0023       movs     r3, #0
0002c212 cde90633   strd     r3, r3, [sp, #0x18]
0002c216 0893       str      r3, [sp, #0x20]
0002c218 03ab       add      r3, sp, #0xc
0002c21a 0493       str      r3, [sp, #0x10]
0002c21c a388       ldrh     r3, [r4, #4]
0002c21e adf81c30   strh.w   r3, [sp, #0x1c]
0002c222 a368       ldr      r3, [r4, #8]
0002c224 cdf814d0   str.w    sp, [sp, #0x14]
0002c228 1bb1       cbz      r3, #0x2c232
0002c22a e288       ldrh     r2, [r4, #6]
0002c22c adf81820   strh.w   r2, [sp, #0x18]
0002c230 0893       str      r3, [sp, #0x20]
0002c232 a369       ldr      r3, [r4, #0x18]
0002c234 73b3       cbz      r3, #0x2c294
0002c236 01a9       add      r1, sp, #4
0002c238 0022       movs     r2, #0
0002c23a adf80420   strh.w   r2, [sp, #4]
0002c23e 8a70       strb     r2, [r1, #2]
0002c240 1a88       ldrh     r2, [r3]
0002c242 adf82c20   strh.w   r2, [sp, #0x2c]
0002c246 5a88       ldrh     r2, [r3, #2]
0002c248 adf82e20   strh.w   r2, [sp, #0x2e]
0002c24c 5a68       ldr      r2, [r3, #4]
0002c24e 0d91       str      r1, [sp, #0x34]
0002c250 187b       ldrb     r0, [r3, #0xc]
0002c252 0a92       str      r2, [sp, #0x28]
0002c254 fff76cff   bl       #0x2c130
0002c258 a369       ldr      r3, [r4, #0x18]
0002c25a 0df10501   add.w    r1, sp, #5
0002c25e 587b       ldrb     r0, [r3, #0xd]
0002c260 fff766ff   bl       #0x2c130
0002c264 a369       ldr      r3, [r4, #0x18]
0002c266 9a7a       ldrb     r2, [r3, #0xa]
0002c268 197a       ldrb     r1, [r3, #8]
0002c26a 41eac201   orr.w    r1, r1, r2, lsl #3
0002c26e da7a       ldrb     r2, [r3, #0xb]
0002c270 9b7b       ldrb     r3, [r3, #0xe]
0002c272 41ea0211   orr.w    r1, r1, r2, lsl #4
0002c276 9df80620   ldrb.w   r2, [sp, #6]
0002c27a 002b       cmp      r3, #0
0002c27c 01f01901   and      r1, r1, #0x19
0002c280 22f01902   bic      r2, r2, #0x19
0002c284 14bf       ite      ne
0002c286 0223       movne    r3, #2
0002c288 0123       moveq    r3, #1
0002c28a 1143       orrs     r1, r2
0002c28c 63f34201   bfi      r1, r3, #1, #2
0002c290 8df80610   strb.w   r1, [sp, #6]
0002c294 e369       ldr      r3, [r4, #0x1c]
0002c296 03b1       cbz      r3, #0x2c29a
0002c298 0c93       str      r3, [sp, #0x30]
0002c29a 3346       mov      r3, r6
0002c29c 04aa       add      r2, sp, #0x10
0002c29e 09a9       add      r1, sp, #0x24
0002c2a0 2846       mov      r0, r5
0002c2a2 fff743ff   bl       #0x2c12c
0002c2a6 11b0       add      sp, #0x44
0002c2a8 f0bd       pop      {r4, r5, r6, r7, pc}
0002c2aa a0df       svc      #0xa0
0002c2ac 7047       bx       lr
0002c2ae a1df       svc      #0xa1
0002c2b0 7047       bx       lr
0002c2b2 10b5       push     {r4, lr}
0002c2b4 0446       mov      r4, r0
0002c2b6 4088       ldrh     r0, [r0, #2]
0002c2b8 00f098fa   bl       #0x2c7ec
0002c2bc a080       strh     r0, [r4, #4]
0002c2be 2046       mov      r0, r4
0002c2c0 bde81040   pop.w    {r4, lr}
0002c2c4 01f0feba   b.w      #0x2d8c4
0002c2c8 30b5       push     {r4, r5, lr}
0002c2ca 8db0       sub      sp, #0x34
0002c2cc 0546       mov      r5, r0
0002c2ce 1422       movs     r2, #0x14
0002c2d0 0021       movs     r1, #0
0002c2d2 02a8       add      r0, sp, #8
0002c2d4 18f0ddf9   bl       #0x44692
0002c2d8 4ff6ff73   movw     r3, #0xffff
0002c2dc 9d42       cmp      r5, r3
0002c2de adf80a50   strh.w   r5, [sp, #0xa]
0002c2e2 3dd0       beq      #0x2c360
0002c2e4 2846       mov      r0, r5
0002c2e6 00f0cbf9   bl       #0x2c680
0002c2ea 1128       cmp      r0, #0x11
0002c2ec 0446       mov      r4, r0
0002c2ee 31d0       beq      #0x2c354
0002c2f0 19d8       bhi      #0x2c326
0002c2f2 f0b1       cbz      r0, #0x2c332
0002c2f4 0b28       cmp      r0, #0xb
0002c2f6 23d0       beq      #0x2c340
0002c2f8 2046       mov      r0, r4
0002c2fa fef7f1f8   bl       #0x2a4e0
0002c2fe 194a       ldr      r2, [pc, #0x64] ; [0x2c364]=0x58eb0 'gscm_local_db_cache_apply() returned %s which should not happen. conn_handle: %d'
0002c300 0095       str      r5, [sp]
0002c302 0346       mov      r3, r0
0002c304 0121       movs     r1, #1
0002c306 0020       movs     r0, #0
0002c308 0af010fc   bl       #0x36b2c
0002c30c 1422       movs     r2, #0x14
0002c30e 0021       movs     r1, #0
0002c310 07a8       add      r0, sp, #0x1c
0002c312 18f0bef9   bl       #0x44692
0002c316 0723       movs     r3, #7
0002c318 8df81c30   strb.w   r3, [sp, #0x1c]
0002c31c adf81e50   strh.w   r5, [sp, #0x1e]
0002c320 0994       str      r4, [sp, #0x24]
0002c322 07a8       add      r0, sp, #0x1c
0002c324 09e0       b        #0x2c33a
0002c326 43f20203   movw     r3, #0x3002
0002c32a 9842       cmp      r0, r3
0002c32c e4d1       bne      #0x2c2f8
0002c32e 0022       movs     r2, #0
0002c330 11e0       b        #0x2c356
0002c332 0e23       movs     r3, #0xe
0002c334 8df80830   strb.w   r3, [sp, #8]
0002c338 02a8       add      r0, sp, #8
0002c33a fff7baff   bl       #0x2c2b2
0002c33e f6e7       b        #0x2c32e
0002c340 0f23       movs     r3, #0xf
0002c342 8df80830   strb.w   r3, [sp, #8]
0002c346 084a       ldr      r2, [pc, #0x20] ; [0x2c368]=0x58e30 'The local database has changed, so some subscriptions to notifications and indications could not be restored for conn_handle %d'
0002c348 2b46       mov      r3, r5
0002c34a 0121       movs     r1, #1
0002c34c 0020       movs     r0, #0
0002c34e 0af0edfb   bl       #0x36b2c
0002c352 f1e7       b        #0x2c338
0002c354 0122       movs     r2, #1
0002c356 054b       ldr      r3, [pc, #0x14] ; [0x2c36c]=0x200116c3
0002c358 2846       mov      r0, r5
0002c35a 1978       ldrb     r1, [r3]
0002c35c fff7b2fe   bl       #0x2c0c4
0002c360 0db0       add      sp, #0x34
0002c362 30bd       pop      {r4, r5, pc}
0002c364 b08e       ldrh     r0, [r6, #0x34]
0002c366 0500       movs     r5, r0
0002c368 308e       ldrh     r0, [r6, #0x30]
0002c36a 0500       movs     r5, r0
0002c36c c316       asrs     r3, r0, #0x1b
0002c36e 0120       movs     r0, #1
0002c370 fff7aabf   b.w      #0x2c2c8
0002c374 13b5       push     {r0, r1, r4, lr}
0002c376 0446       mov      r4, r0
0002c378 00f038fa   bl       #0x2c7ec
0002c37c 0023       movs     r3, #0
0002c37e 6a46       mov      r2, sp
0002c380 0921       movs     r1, #9
0002c382 00f03ffe   bl       #0x2d004
0002c386 0528       cmp      r0, #5
0002c388 05d1       bne      #0x2c396
0002c38a 044b       ldr      r3, [pc, #0x10] ; [0x2c39c]=0x200116c1
0002c38c 0122       movs     r2, #1
0002c38e 1978       ldrb     r1, [r3]
0002c390 2046       mov      r0, r4
0002c392 fff797fe   bl       #0x2c0c4
0002c396 02b0       add      sp, #8
