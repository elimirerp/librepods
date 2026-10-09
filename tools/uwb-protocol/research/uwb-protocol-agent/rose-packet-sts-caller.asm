0041a260 f4f9       .byte    0xf4, 0xf9
0041a262 4046       mov      r0, r8
0041a264 5946       mov      r1, fp
0041a266 2246       mov      r2, r4
0041a268 5346       mov      r3, sl
0041a26a fff7affa   bl       #0x4197cc
0041a26e 2046       mov      r0, r4
0041a270 00f0def9   bl       #0x41a630
0041a274 dbf81400   ldr.w    r0, [fp, #0x14]
0041a278 0421       movs     r1, #4
0041a27a 61f30200   bfi      r0, r1, #0, #3
0041a27e cbf81400   str.w    r0, [fp, #0x14]
0041a282 d84c       ldr      r4, [pc, #0x360] ; [0x41a5e4]=0x10005b88
0041a284 94f82010   ldrb.w   r1, [r4, #0x20]
0041a288 69b1       cbz      r1, #0x41a2a6
0041a28a dbf80810   ldr.w    r1, [fp, #8]
0041a28e c1f38072   ubfx     r2, r1, #0x1e, #1
0041a292 c2eb5171   rsb      r1, r2, r1, lsr #29
0041a296 41f057fe   bl       #0x45bf48
0041a29a 0322       movs     r2, #3
0041a29c 02eb1161   add.w    r1, r2, r1, lsr #24
0041a2a0 0843       orrs     r0, r1
0041a2a2 cbf81400   str.w    r0, [fp, #0x14]
0041a2a6 5846       mov      r0, fp
0041a2a8 fff744f8   bl       #0x419334
0041a2ac b9f1000f   cmp.w    sb, #0
0041a2b0 02d0       beq      #0x41a2b8
0041a2b2 5846       mov      r0, fp
0041a2b4 fff75cf8   bl       #0x419370
0041a2b8 cb48       ldr      r0, [pc, #0x32c] ; [0x41a5e8]=0x10005adc
0041a2ba 94f8a920   ldrb.w   r2, [r4, #0xa9]
0041a2be 0994       str      r4, [sp, #0x24]
0041a2c0 41f058fb   bl       #0x45b974
0041a2c4 416b       ldr      r1, [r0, #0x34]
0041a2c6 42f08dfd   bl       #0x45cde4
0041a2ca d8f80800   ldr.w    r0, [r8, #8]
0041a2ce 0890       str      r0, [sp, #0x20]
0041a2d0 0c9c       ldr      r4, [sp, #0x30]
0041a2d2 2046       mov      r0, r4
0041a2d4 01f006fa   bl       #0x41b6e4
0041a2d8 0546       mov      r5, r0
0041a2da 2046       mov      r0, r4
0041a2dc 01f01cfa   bl       #0x41b718
0041a2e0 d8f824a0   ldr.w    sl, [r8, #0x24]
0041a2e4 0446       mov      r4, r0
0041a2e6 06f0d3f8   bl       #0x420490
0041a2ea 45f23871   movw     r1, #0x5738
0041a2ee 002d       cmp      r5, #0
0041a2f0 00eb010b   add.w    fp, r0, r1
0041a2f4 bd48       ldr      r0, [pc, #0x2f4] ; [0x41a5ec]=0x1003fed0
0041a2f6 c0f850b0   str.w    fp, [r0, #0x50]
0041a2fa 00f05381   beq.w    #0x41a5a4
0041a2fe 0546       mov      r5, r0
0041a300 4cb1       cbz      r4, #0x41a316
0041a302 0c98       ldr      r0, [sp, #0x30]
0041a304 01f008fa   bl       #0x41b718
0041a308 48bb       cbnz     r0, #0x41a35e
0041a30a bb48       ldr      r0, [pc, #0x2ec] ; [0x41a5f8]=0x46d8d5 'hmd.c'
0041a30c c34a       ldr      r2, [pc, #0x30c] ; [0x41a61c]=0x46def4 '_get_prf_mode_snd(pkt_type,(hmd_prf_mode_t * const)&prf_mode)'
0041a30e 41f2ab01   movw     r1, #0x10ab
0041a312 1df057f9   bl       #0x4375c4
0041a316 0c98       ldr      r0, [sp, #0x30]
0041a318 01f0e4f9   bl       #0x41b6e4
0041a31c 40bb       cbnz     r0, #0x41a370
0041a31e b648       ldr      r0, [pc, #0x2d8] ; [0x41a5f8]=0x46d8d5 'hmd.c'
0041a320 c04a       ldr      r2, [pc, #0x300] ; [0x41a624]=0x46df80 '_get_prf_mode_uwb(pkt_type,(hmd_prf_mode_t * const)&prf_mode)'
0041a322 41f2b501   movw     r1, #0x10b5
0041a326 1df04df9   bl       #0x4375c4
0041a32a b348       ldr      r0, [pc, #0x2cc] ; [0x41a5f8]=0x46d8d5 'hmd.c'
0041a32c b74a       ldr      r2, [pc, #0x2dc] ; [0x41a60c]=0x46dc86 'rx->common.psdu_buff_sz >= hmd_pkt_get_max_len(pkt_type)'
0041a32e 41f2a631   movw     r1, #0x13a6
0041a332 1df047f9   bl       #0x4375c4
0041a336 0020       movs     r0, #0
0041a338 41f2af31   movw     r1, #0x13af
0041a33c 43f0a3f8   bl       #0x45d486
0041a340 ad48       ldr      r0, [pc, #0x2b4] ; [0x41a5f8]=0x46d8d5 'hmd.c'
0041a342 b34a       ldr      r2, [pc, #0x2cc] ; [0x41a610]=0x46e075 'hmd_pkt_valid_uwb(pkt_type)'
0041a344 1df048f9   bl       #0x4375d8
0041a348 0020       movs     r0, #0
0041a34a 41f2b031   movw     r1, #0x13b0
0041a34e cde90250   strd     r5, r0, [sp, #8]
0041a352 cde900a0   strd     sl, r0, [sp]
0041a356 a848       ldr      r0, [pc, #0x2a0] ; [0x41a5f8]=0x46d8d5 'hmd.c'
0041a358 ae4a       ldr      r2, [pc, #0x2b8] ; [0x41a614]=0x46dc5f 'hsi_preamble_valid(preamble, pkt_type)'
0041a35a 1df03df9   bl       #0x4375d8
0041a35e 0a98       ldr      r0, [sp, #0x28]
0041a360 c0f30720   ubfx     r0, r0, #8, #8
0041a364 0528       cmp      r0, #5
0041a366 16d0       beq      #0x41a396
0041a368 0628       cmp      r0, #6
0041a36a ced1       bne      #0x41a30a
0041a36c 0124       movs     r4, #1
0041a36e 13e0       b        #0x41a398
0041a370 0a98       ldr      r0, [sp, #0x28]
0041a372 c0f30720   ubfx     r0, r0, #8, #8
0041a376 0428       cmp      r0, #4
0041a378 d1d8       bhi      #0x41a31e
0041a37a 1721       movs     r1, #0x17
0041a37c 21fa00f0   lsr.w    r0, r1, r0
0041a380 c007       lsls     r0, r0, #0x1f
0041a382 ccd0       beq      #0x41a31e
0041a384 0a9a       ldr      r2, [sp, #0x28]
0041a386 9a49       ldr      r1, [pc, #0x268] ; [0x41a5f0]=0x467170
0041a388 2b46       mov      r3, r5
0041a38a 100a       lsrs     r0, r2, #8
0041a38c 00f00700   and      r0, r0, #7
0041a390 51f820c0   ldr.w    ip, [r1, r0, lsl #2]
0041a394 0be0       b        #0x41a3ae
0041a396 0024       movs     r4, #0
0041a398 0c98       ldr      r0, [sp, #0x30]
0041a39a 01f0bdf9   bl       #0x41b718
0041a39e 0028       cmp      r0, #0
0041a3a0 00f01881   beq.w    #0x41a5d4
0041a3a4 0a9a       ldr      r2, [sp, #0x28]
0041a3a6 2b46       mov      r3, r5
0041a3a8 a446       mov      ip, r4
0041a3aa 100a       lsrs     r0, r2, #8
0041a3ac c0b2       uxtb     r0, r0
0041a3ae 9149       ldr      r1, [pc, #0x244] ; [0x41a5f4]=0x4684f8
0041a3b0 baf1000f   cmp.w    sl, #0
0041a3b4 0791       str      r1, [sp, #0x1c]
0041a3b6 51f82000   ldr.w    r0, [r1, r0, lsl #2]
0041a3ba d1b2       uxtb     r1, r2
0041a3bc c1ebc104   rsb      r4, r1, r1, lsl #3
0041a3c0 00ebc401   add.w    r1, r0, r4, lsl #3
0041a3c4 4869       ldr      r0, [r1, #0x14]
0041a3c6 8969       ldr      r1, [r1, #0x18]
0041a3c8 d963       str      r1, [r3, #0x3c]
0041a3ca 00f0f180   beq.w    #0x41a5b0
0041a3ce 9af80020   ldrb.w   r2, [sl]
0041a3d2 cdf818b0   str.w    fp, [sp, #0x18]
0041a3d6 bcf1000f   cmp.w    ip, #0
0041a3da c2f34002   ubfx     r2, r2, #1, #1
0041a3de 83f84e20   strb.w   r2, [r3, #0x4e]
0041a3e2 9af80020   ldrb.w   r2, [sl]
0041a3e6 a246       mov      sl, r4
0041a3e8 c2f3c002   ubfx     r2, r2, #3, #1
0041a3ec 83f84f20   strb.w   r2, [r3, #0x4f]
0041a3f0 0fbf       iteee    eq
0041a3f2 0420       moveq    r0, #4
0041a3f4 824a       ldrne    r2, [pc, #0x208] ; [0x41a600]=0x468768
0041a3f6 02eb4101   addne.w  r1, r2, r1, lsl #1
0041a3fa 085c       ldrbne   r0, [r1, r0]
0041a3fc 0590       str      r0, [sp, #0x14]
0041a3fe 0320       movs     r0, #3
0041a400 0a9c       ldr      r4, [sp, #0x28]
0041a402 1864       str      r0, [r3, #0x40]
0041a404 d8f8c401   ldr.w    r0, [r8, #0x1c4]
0041a408 1c87       strh     r4, [r3, #0x38]
0041a40a 5864       str      r0, [r3, #0x44]
0041a40c b8f82a00   ldrh.w   r0, [r8, #0x2a]
0041a410 a3f84800   strh.w   r0, [r3, #0x48]
0041a414 0898       ldr      r0, [sp, #0x20]
0041a416 d0f814b0   ldr.w    fp, [r0, #0x14]
0041a41a 0998       ldr      r0, [sp, #0x24]
0041a41c 90f8ad00   ldrb.w   r0, [r0, #0xad]
0041a420 83f84b00   strb.w   r0, [r3, #0x4b]
0041a424 cbf3c060   ubfx     r0, fp, #0x1b, #1
0041a428 83f84a00   strb.w   r0, [r3, #0x4a]
0041a42c cbf30070   ubfx     r0, fp, #0x1c, #1
0041a430 83f84c00   strb.w   r0, [r3, #0x4c]
0041a434 0c98       ldr      r0, [sp, #0x30]
0041a436 01f055f9   bl       #0x41b6e4
0041a43a 0021       movs     r1, #0
0041a43c 0022       movs     r2, #0
0041a43e 50b1       cbz      r0, #0x41a456
0041a440 079a       ldr      r2, [sp, #0x1c]
0041a442 c4f30720   ubfx     r0, r4, #8, #8
0041a446 52f82000   ldr.w    r0, [r2, r0, lsl #2]
0041a44a 00ebca00   add.w    r0, r0, sl, lsl #3
0041a44e 8069       ldr      r0, [r0, #0x18]
0041a450 b0fa80f0   clz      r0, r0
0041a454 4209       lsrs     r2, r0, #5
0041a456 6b48       ldr      r0, [pc, #0x1ac] ; [0x41a604]=0x1003fc6c
0041a458 9246       mov      sl, r2
0041a45a 4160       str      r1, [r0, #4]
0041a45c 85f84d20   strb.w   r2, [r5, #0x4d]
