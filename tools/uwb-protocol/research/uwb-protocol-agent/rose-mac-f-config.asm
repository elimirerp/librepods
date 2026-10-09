00424300 f0b5       push     {r4, r5, r6, r7, lr}
00424302 03af       add      r7, sp, #0xc
00424304 2de9c00b   push.w   {r6, r7, r8, sb, fp}
00424308 0546       mov      r5, r0
0042430a 0820       movs     r0, #8
0042430c 9046       mov      r8, r2
0042430e 0e46       mov      r6, r1
00424310 4ff00809   mov.w    sb, #8
00424314 fcf71afd   bl       #0x420d4c
00424318 38f07cfc   bl       #0x45cc14
0042431c 04d1       bne      #0x424328
0042431e 0c48       ldr      r0, [pc, #0x30] ; [0x424350]=0x10039fa8
00424320 0068       ldr      r0, [r0]
00424322 37f0d7f9   bl       #0x45b6d4
00424326 8046       mov      r8, r0
00424328 35f80c1c   ldrh     r1, [r5, #-0xc]
0042432c 48f24310   movw     r0, #0x8143
00424330 4ff48072   mov.w    r2, #0x100
00424334 2346       mov      r3, r4
00424336 c4f80480   str.w    r8, [r4, #4]
0042433a 38f022f9   bl       #0x45c582
0042433e 08b9       cbnz     r0, #0x424344
00424340 38f087bd   b.w      #0x45ce52
00424344 0348       ldr      r0, [pc, #0xc] ; [0x424354]=0x46eca9 'mac_f.c'
00424346 044a       ldr      r2, [pc, #0x10] ; [0x424358]=0x46ed96 'fsm_send_evt(MAC_CMD_CMP_EVT, (fsm_param2evt(param)->src), MAC_OBJ_ID, evt, sizeof(mac_f_cmd_cmp_t)) == FSM_OK'
00424348 40f25f31   movw     r1, #0x35f
0042434c 13f03af9   bl       #0x4375c4
00424350 a89f       ldr      r7, [sp, #0x2a0]
00424352 0310       asrs     r3, r0, #0x20
00424354 a9ec4600   stc      p0, c0, [sb], #0x118
00424358 96ed4600   ldc      p0, c0, [r6, #0x118]
0042435c f0b5       push     {r4, r5, r6, r7, lr}
0042435e 03af       add      r7, sp, #0xc
00424360 2de9f80f   push.w   {r3, r4, r5, r6, r7, r8, sb, sl, fp}
00424364 8146       mov      sb, r0
00424366 3048       ldr      r0, [pc, #0xc0] ; [0x424428]=0x40002018
00424368 9046       mov      r8, r2
0042436a 8a46       mov      sl, r1
0042436c 1022       movs     r2, #0x10
0042436e 0068       ldr      r0, [r0]
00424370 0490       str      r0, [sp, #0x10]
00424372 2f4d       ldr      r5, [pc, #0xbc] ; [0x424430]=0x10039fa8
00424374 2f4c       ldr      r4, [pc, #0xbc] ; [0x424434]=0x10005b88
00424376 05f21516   addw     r6, r5, #0x115
0042437a 04f1ae01   add.w    r1, r4, #0xae
0042437e 38f070f9   bl       #0x45c662
00424382 05f1f50b   add.w    fp, r5, #0xf5
00424386 04f1be01   add.w    r1, r4, #0xbe
0042438a 1022       movs     r2, #0x10
0042438c 38f0b4fd   bl       #0x45cef8
00424390 2648       ldr      r0, [pc, #0x98] ; [0x42442c]=0x44005000
00424392 4ff0b051   mov.w    r1, #0x16000000
00424396 0162       str      r1, [r0, #0x20]
00424398 0662       str      r6, [r0, #0x20]
0042439a 37f0cdfd   bl       #0x45bf38
0042439e 4169       ldr      r1, [r0, #0x14]
004243a0 c907       lsls     r1, r1, #0x1f
004243a2 fcd0       beq      #0x42439e
004243a4 4ff0ff31   mov.w    r1, #-1
004243a8 08eb0a02   add.w    r2, r8, sl
004243ac 4161       str      r1, [r0, #0x14]
004243ae c5f83821   str.w    r2, [r5, #0x138]
004243b2 c5f83c91   str.w    sb, [r5, #0x13c]
004243b6 95f84201   ldrb.w   r0, [r5, #0x142]
004243ba 38bb       cbnz     r0, #0x42440c
004243bc b5f84001   ldrh.w   r0, [r5, #0x140]
004243c0 b0f5006f   cmp.w    r0, #0x800
004243c4 24d8       bhi      #0x424410
004243c6 0190       str      r0, [sp, #4]
004243c8 0020       movs     r0, #0
004243ca 5946       mov      r1, fp
004243cc 4b46       mov      r3, sb
004243ce 0090       str      r0, [sp]
004243d0 3046       mov      r0, r6
004243d2 fbf7e5fd   bl       #0x41ffa0
004243d6 1448       ldr      r0, [pc, #0x50] ; [0x424428]=0x40002018
004243d8 b8f1010f   cmp.w    r8, #1
004243dc 0068       ldr      r0, [r0]
004243de 15dc       bgt      #0x42440c
004243e0 0499       ldr      r1, [sp, #0x10]
004243e2 38f05df9   bl       #0x45c6a0
004243e6 401a       subs     r0, r0, r1
004243e8 0a21       movs     r1, #0xa
004243ea 37f0cafb   bl       #0x45bb82
004243ee b5f84011   ldrh.w   r1, [r5, #0x140]
004243f2 d5f83821   ldr.w    r2, [r5, #0x138]
004243f6 41ea0043   orr.w    r3, r1, r0, lsl #16
004243fa 1148       ldr      r0, [pc, #0x44] ; [0x424440]=0x10042efe
004243fc a821       movs     r1, #0xa8
004243fe 05b0       add      sp, #0x14
00424400 bde8000f   pop.w    {r8, sb, sl, fp}
00424404 bde8f040   pop.w    {r4, r5, r6, r7, lr}
00424408 0ff02abf   b.w      #0x434260
0042440c 37f087bb   b.w      #0x45bb1e
00424410 0021       movs     r1, #0
00424412 4ff40062   mov.w    r2, #0x800
00424416 8de80700   stm.w    sp, {r0, r1, r2}
0042441a 0391       str      r1, [sp, #0xc]
0042441c 4ff44671   mov.w    r1, #0x318
00424420 0548       ldr      r0, [pc, #0x14] ; [0x424438]=0x46eca9 'mac_f.c'
00424422 064a       ldr      r2, [pc, #0x18] ; [0x42443c]=0x46ecde 'mac_f.sts_len <= MAX_STS_LEN'
00424424 13f0d8f8   bl       #0x4375d8
00424428 1820       movs     r0, #0x18
0042442a 0040       ands     r0, r0
0042442c 0050       str      r0, [r0, r0]
0042442e 0044       add      r0, r0
00424430 a89f       ldr      r7, [sp, #0x2a0]
00424432 0310       asrs     r3, r0, #0x20
00424434 885b       ldrh     r0, [r1, r6]
00424436 0010       asrs     r0, r0, #0x20
00424438 a9ec4600   stc      p0, c0, [sb], #0x118
0042443c deec4600   ldcl     p0, c0, [lr], {0x46}
00424440 fe2e       cmp      r6, #0xfe
00424442 0410       asrs     r4, r0, #0x20
00424444 f0b5       push     {r4, r5, r6, r7, lr}
00424446 03af       add      r7, sp, #0xc
00424448 2de9000f   push.w   {r8, sb, sl, fp}
0042444c 8db0       sub      sp, #0x34
0042444e 8346       mov      fp, r0
00424450 ed48       ldr      r0, [pc, #0x3b4] ; [0x424808]=0x10005b88
00424452 4ff00009   mov.w    sb, #0
00424456 a0f82191   strh.w   sb, [r0, #0x121]
0042445a 0590       str      r0, [sp, #0x14]
0042445c bbf83480   ldrh.w   r8, [fp, #0x34]
00424460 ea4d       ldr      r5, [pc, #0x3a8] ; [0x42480c]=0x10039fa8
00424462 2868       ldr      r0, [r5]
00424464 37f036f9   bl       #0x45b6d4
00424468 b0f5807f   cmp.w    r0, #0x100
0042446c 40f04981   bne.w    #0x424702
00424470 5846       mov      r0, fp
00424472 0021       movs     r1, #0
00424474 fff7e0fd   bl       #0x424038
00424478 2868       ldr      r0, [r5]
0042447a 40f20311   movw     r1, #0x103
0042447e 38f061f9   bl       #0x45c744
00424482 fcf793fb   bl       #0x420bac
00424486 2e1d       adds     r6, r5, #4
00424488 bbf80010   ldrh.w   r1, [fp]
0042448c 3046       mov      r0, r6
0042448e f6f7efff   bl       #0x41b470
00424492 38f03cf8   bl       #0x45c50e
00424496 e049       ldr      r1, [pc, #0x380] ; [0x424818]=0x42409d
00424498 42f21430   movw     r0, #0x2314
0042449c 0022       movs     r2, #0
0042449e 39f062f8   bl       #0x45d566
004244a2 42f25810   movw     r0, #0x2158
004244a6 0121       movs     r1, #1
004244a8 2e50       str      r6, [r5, r0]
004244aa 42f20930   movw     r0, #0x2309
004244ae 2954       strb     r1, [r5, r0]
004244b0 42f21030   movw     r0, #0x2310
004244b4 42f20c31   movw     r1, #0x230c
004244b8 25f80090   strh.w   sb, [r5, r0]
004244bc dbf81000   ldr.w    r0, [fp, #0x10]
004244c0 6850       str      r0, [r5, r1]
004244c2 42f21231   movw     r1, #0x2312
004244c6 bbf83a00   ldrh.w   r0, [fp, #0x3a]
004244ca 6852       strh     r0, [r5, r1]
004244cc 0bf10401   add.w    r1, fp, #4
004244d0 3046       mov      r0, r6
004244d2 f5f7fbf8   bl       #0x4196cc
004244d6 e88a       ldrh     r0, [r5, #0x16]
004244d8 9bf81e10   ldrb.w   r1, [fp, #0x1e]
004244dc 9bf82520   ldrb.w   r2, [fp, #0x25]
004244e0 b8f1000f   cmp.w    r8, #0
004244e4 41ea0040   orr.w    r0, r1, r0, lsl #16
004244e8 40ea0220   orr.w    r0, r0, r2, lsl #8
004244ec 6861       str      r0, [r5, #0x14]
004244ee 03d1       bne      #0x4244f8
004244f0 42f26810   movw     r0, #0x2168
004244f4 0221       movs     r1, #2
004244f6 2950       str      r1, [r5, r0]
004244f8 42f26610   movw     r0, #0x2166
004244fc 25f80080   strh.w   r8, [r5, r0]
00424500 0020       movs     r0, #0
00424502 a5f84001   strh.w   r0, [r5, #0x140]
00424506 bbf83a00   ldrh.w   r0, [fp, #0x3a]
0042450a 40b1       cbz      r0, #0x42451e
0042450c 9bf81d20   ldrb.w   r2, [fp, #0x1d]
00424510 0120       movs     r0, #1
00424512 0323       movs     r3, #3
00424514 9040       lsls     r0, r2
00424516 c1b2       uxtb     r1, r0
00424518 3046       mov      r0, r6
0042451a f6f7c9ff   bl       #0x41b4b0
0042451e 0020       movs     r0, #0
00424520 4ff0000a   mov.w    sl, #0
00424524 0890       str      r0, [sp, #0x20]
00424526 cde90600   strd     r0, r0, [sp, #0x18]
0042452a bbf82e00   ldrh.w   r0, [fp, #0x2e]
0042452e 8245       cmp      sl, r0
00424530 02d3       blo      #0x424538
00424532 0028       cmp      r0, #0
00424534 40f03581   bne.w    #0x4247a2
00424538 dbf83020   ldr.w    r2, [fp, #0x30]
0042453c 9bf83900   ldrb.w   r0, [fp, #0x39]
00424540 0021       movs     r1, #0
00424542 5346       mov      r3, sl
00424544 0291       str      r1, [sp, #8]
00424546 cde90011   strd     r1, r1, [sp]
0042454a fff7fffd   bl       #0x42414c
0042454e e7f725f8   bl       #0x40b59c
00424552 0a90       str      r0, [sp, #0x28]
00424554 baf1000f   cmp.w    sl, #0
00424558 b04e       ldr      r6, [pc, #0x2c0] ; [0x42481c]=0x1003cd40
0042455a 1fd0       beq      #0x42459c
0042455c bbf82c00   ldrh.w   r0, [fp, #0x2c]
00424560 37f034fd   bl       #0x45bfcc
00424564 4ff43353   mov.w    r3, #0x2cc0
00424568 05f53354   add.w    r4, r5, #0x2cc0
0042456c ea58       ldr      r2, [r5, r3]
0042456e 8018       adds     r0, r0, r2
00424570 6268       ldr      r2, [r4, #4]
00424572 e850       str      r0, [r5, r3]
00424574 5141       adcs     r1, r2
00424576 6160       str      r1, [r4, #4]
00424578 9bf83820   ldrb.w   r2, [fp, #0x38]
0042457c 012a       cmp      r2, #1
0042457e 65d1       bne      #0x42464c
00424580 a946       mov      sb, r5
00424582 b26c       ldr      r2, [r6, #0x48]
00424584 089d       ldr      r5, [sp, #0x20]
00424586 f36c       ldr      r3, [r6, #0x4c]
00424588 5219       adds     r2, r2, r5
0042458a 079d       ldr      r5, [sp, #0x1c]
0042458c 6b41       adcs     r3, r5
0042458e 821a       subs     r2, r0, r2
00424590 71eb0302   sbcs.w   r2, r1, r3
00424594 30d2       bhs      #0x4245f8
00424596 099c       ldr      r4, [sp, #0x24]
00424598 4d46       mov      r5, sb
0042459a 58e0       b        #0x42464e
0042459c 9849       ldr      r1, [pc, #0x260] ; [0x424800]=0x40002018
0042459e 4ff43352   mov.w    r2, #0x2cc0
004245a2 05f53354   add.w    r4, r5, #0x2cc0
004245a6 0868       ldr      r0, [r1]
004245a8 4968       ldr      r1, [r1, #4]
004245aa 10f57050   adds.w   r0, r0, #0x3c00
004245ae 41f10001   adc      r1, r1, #0
004245b2 a850       str      r0, [r5, r2]
004245b4 6160       str      r1, [r4, #4]
004245b6 9bf83820   ldrb.w   r2, [fp, #0x38]
004245ba 012a       cmp      r2, #1
004245bc 46d1       bne      #0x42464c
004245be bbf80200   ldrh.w   r0, [fp, #2]
004245c2 40f2ff71   movw     r1, #0x7ff
004245c6 8843       bics     r0, r1
004245c8 0699       ldr      r1, [sp, #0x18]
004245ca 3144       add      r1, r6
004245cc 049e       ldr      r6, [sp, #0x10]
004245ce 4978       ldrb     r1, [r1, #1]
004245d0 0844       add      r0, r1
004245d2 5946       mov      r1, fp
004245d4 c0ea0606   pkhbt    r6, r0, r6
004245d8 abf80200   strh.w   r0, [fp, #2]
004245dc 3046       mov      r0, r6
004245de f1f71ffb   bl       #0x415c20
004245e2 0028       cmp      r0, #0
004245e4 00f00281   beq.w    #0x4247ec
004245e8 4ff43350   mov.w    r0, #0x2cc0
004245ec 6168       ldr      r1, [r4, #4]
004245ee 0496       str      r6, [sp, #0x10]
004245f0 2858       ldr      r0, [r5, r0]
004245f2 cde90710   strd     r1, r0, [sp, #0x1c]
004245f6 29e0       b        #0x42464c
004245f8 bbf80200   ldrh.w   r0, [fp, #2]
004245fc 069a       ldr      r2, [sp, #0x18]
004245fe 40f2ff71   movw     r1, #0x7ff
00424602 8843       bics     r0, r1
00424604 3178       ldrb     r1, [r6]
00424606 0132       adds     r2, #1
00424608 92fbf1f3   sdiv     r3, r2, r1
0042460c 03fb1121   mls      r1, r3, r1, r2
00424610 0691       str      r1, [sp, #0x18]
00424612 3144       add      r1, r6
00424614 4978       ldrb     r1, [r1, #1]
00424616 0144       add      r1, r0
00424618 0398       ldr      r0, [sp, #0xc]
0042461a abf80210   strh.w   r1, [fp, #2]
0042461e c1ea0000   pkhbt    r0, r1, r0
00424622 5946       mov      r1, fp
00424624 0390       str      r0, [sp, #0xc]
00424626 f1f7fbfa   bl       #0x415c20
0042462a 0028       cmp      r0, #0
0042462c 00f0e280   beq.w    #0x4247f4
00424630 b06c       ldr      r0, [r6, #0x48]
00424632 089a       ldr      r2, [sp, #0x20]
00424634 f16c       ldr      r1, [r6, #0x4c]
00424636 4d46       mov      r5, sb
00424638 1218       adds     r2, r2, r0
0042463a 0892       str      r2, [sp, #0x20]
0042463c 0798       ldr      r0, [sp, #0x1c]
0042463e 4841       adcs     r0, r1
00424640 6168       ldr      r1, [r4, #4]
00424642 0790       str      r0, [sp, #0x1c]
00424644 4ff43350   mov.w    r0, #0x2cc0
00424648 59f80000   ldr.w    r0, [sb, r0]
0042464c 099c       ldr      r4, [sp, #0x24]
0042464e 42f25012   movw     r2, #0x2150
00424652 42f20833   movw     r3, #0x2308
00424656 6ff30f08   bfc      r8, #0, #0x10
0042465a a850       str      r0, [r5, r2]
0042465c 2a44       add      r2, r5
0042465e 9bf81c00   ldrb.w   r0, [fp, #0x1c]
00424662 5160       str      r1, [r2, #4]
00424664 e854       strb     r0, [r5, r3]
00424666 4ff6ff70   movw     r0, #0xffff
0042466a bbf82a10   ldrh.w   r1, [fp, #0x2a]
0042466e 24ea0000   bic.w    r0, r4, r0
00424672 0844       add      r0, r1
00424674 bbf80010   ldrh.w   r1, [fp]
00424678 0990       str      r0, [sp, #0x24]
0042467a 8844       add      r8, r1
0042467c 4146       mov      r1, r8
0042467e f6f72ffb   bl       #0x41ace0
00424682 0646       mov      r6, r0
00424684 58b1       cbz      r0, #0x42469e
00424686 0bac       add      r4, sp, #0x2c
00424688 40f24121   movw     r1, #0x241
0042468c 37f051fc   bl       #0x45bf32
00424690 5f48       ldr      r0, [pc, #0x17c] ; [0x424810]=0x10040134
00424692 634a       ldr      r2, [pc, #0x18c] ; [0x424820]=0x100427b3
00424694 36f07aff   bl       #0x45b58c
00424698 44f21909   movw     sb, #0x4019
0042469c 01e0       b        #0x4246a2
0042469e 4ff00009   mov.w    sb, #0
004246a2 0a98       ldr      r0, [sp, #0x28]
004246a4 e6f786ff   bl       #0x40b5b4
004246a8 002e       cmp      r6, #0
004246aa 60d1       bne      #0x42476e
004246ac bbf82c00   ldrh.w   r0, [fp, #0x2c]
004246b0 5449       ldr      r1, [pc, #0x150] ; [0x424804]=0x7a120
004246b2 4ff47a72   mov.w    r2, #0x3e8
004246b6 00fb0210   mla      r0, r0, r2, r1
004246ba 0021       movs     r1, #0
004246bc fff708fe   bl       #0x4242d0
004246c0 2968       ldr      r1, [r5]
004246c2 38f0cff8   bl       #0x45c864
004246c6 2868       ldr      r0, [r5]
004246c8 37f0c2fc   bl       #0x45c050
004246cc 30f8106c   ldrh     r6, [r0, #-0x10]
004246d0 40f20711   movw     r1, #0x107
004246d4 8e42       cmp      r6, r1
004246d6 2cd1       bne      #0x424732
004246d8 42f22830   movw     r0, #0x2328
004246dc 2a58       ldr      r2, [r5, r0]
004246de 6ab1       cbz      r2, #0x4246fc
004246e0 5248       ldr      r0, [pc, #0x148] ; [0x42482c]=0x10042e70
004246e2 37f011f8   bl       #0x45b708
004246e6 42f22830   movw     r0, #0x2328
004246ea 2858       ldr      r0, [r5, r0]
004246ec 0628       cmp      r0, #6
004246ee 05d1       bne      #0x4246fc
004246f0 0599       ldr      r1, [sp, #0x14]
004246f2 b1f82101   ldrh.w   r0, [r1, #0x121]
004246f6 0130       adds     r0, #1
004246f8 a1f82101   strh.w   r0, [r1, #0x121]
004246fc 0af1010a   add.w    sl, sl, #1
00424700 13e7       b        #0x42452a
00424702 0bae       add      r6, sp, #0x2c
00424704 4ff4fd71   mov.w    r1, #0x1fa
00424708 37f07bfe   bl       #0x45c402
0042470c 4048       ldr      r0, [pc, #0x100] ; [0x424810]=0x10040134
0042470e 414a       ldr      r2, [pc, #0x104] ; [0x424814]=0x100427b3
00424710 37f00df9   bl       #0x45b92e
00424714 5846       mov      r0, fp
00424716 44f20d01   movw     r1, #0x400d
0042471a fff78dfc   bl       #0x424038
0042471e 2868       ldr      r0, [r5]
00424720 36f0d8ff   bl       #0x45b6d4
00424724 40f20311   movw     r1, #0x103
00424728 8842       cmp      r0, r1
0042472a 53d0       beq      #0x4247d4
0042472c 0db0       add      sp, #0x34
0042472e 37f074bc   b.w      #0x45c01a
00424732 40f20f11   movw     r1, #0x10f
00424736 8e42       cmp      r6, r1
00424738 23d1       bne      #0x424782
0042473a 0021       movs     r1, #0
0042473c 0022       movs     r2, #0
0042473e fff7dffd   bl       #0x424300
00424742 2868       ldr      r0, [r5]
00424744 0221       movs     r1, #2
00424746 40f20712   movw     r2, #0x107
0042474a 4ff48373   mov.w    r3, #0x106
0042474e fcf74dfe   bl       #0x4213ec
00424752 0bae       add      r6, sp, #0x2c
00424754 4ff41a71   mov.w    r1, #0x268
00424758 37f053fe   bl       #0x45c402
0042475c 2c48       ldr      r0, [pc, #0xb0] ; [0x424810]=0x10040134
0042475e 324a       ldr      r2, [pc, #0xc8] ; [0x424828]=0x100427b3
00424760 37f0e5f8   bl       #0x45b92e
00424764 44f20e09   movw     sb, #0x400e
00424768 40f20f16   movw     r6, #0x10f
0042476c 1de0       b        #0x4247aa
0042476e 0bae       add      r6, sp, #0x2c
00424770 4ff41271   mov.w    r1, #0x248
00424774 37f045fe   bl       #0x45c402
00424778 2548       ldr      r0, [pc, #0x94] ; [0x424810]=0x10040134
0042477a 2a4a       ldr      r2, [pc, #0xa8] ; [0x424824]=0x100427b3
0042477c 37f0d7f8   bl       #0x45b92e
00424780 11e0       b        #0x4247a6
00424782 0df12c08   add.w    r8, sp, #0x2c
00424786 40f26b21   movw     r1, #0x26b
0042478a 4046       mov      r0, r8
0042478c e6f72afe   bl       #0x40b3e4
00424790 1f48       ldr      r0, [pc, #0x7c] ; [0x424810]=0x10040134
00424792 274a       ldr      r2, [pc, #0x9c] ; [0x424830]=0x100427b3
00424794 0721       movs     r1, #7
00424796 4346       mov      r3, r8
00424798 24f02afb   bl       #0x448df0
0042479c 44f20e09   movw     sb, #0x400e
004247a0 03e0       b        #0x4247aa
004247a2 4ff00009   mov.w    sb, #0
004247a6 40f20716   movw     r6, #0x107
004247aa 2868       ldr      r0, [r5]
004247ac 4ff48371   mov.w    r1, #0x106
004247b0 37f0c8ff   bl       #0x45c744
004247b4 fcf76afd   bl       #0x42128c
004247b8 f5f710fa   bl       #0x419bdc
004247bc 38f09ffb   bl       #0x45cefe
004247c0 44f20e00   movw     r0, #0x400e
004247c4 4946       mov      r1, sb
004247c6 8145       cmp      sb, r0
004247c8 18bf       it       ne
004247ca 0026       movne    r6, #0
004247cc 5846       mov      r0, fp
004247ce 3246       mov      r2, r6
004247d0 fff796fd   bl       #0x424300
004247d4 2868       ldr      r0, [r5]
004247d6 4ff48071   mov.w    r1, #0x100
004247da 37f0b3ff   bl       #0x45c744
004247de 0db0       add      sp, #0x34
004247e0 bde8000f   pop.w    {r8, sb, sl, fp}
004247e4 bde8f040   pop.w    {r4, r5, r6, r7, lr}
004247e8 fcf7e0b9   b.w      #0x420bac
004247ec 1148       ldr      r0, [pc, #0x44] ; [0x424834]=0x46eca9 'mac_f.c'
004247ee 124a       ldr      r2, [pc, #0x48] ; [0x424838]=0x46ecb1 'hsi_bchannel_to(param->hsi_bch, &param->bch)'
004247f0 38f0bdfb   bl       #0x45cf6e
004247f4 0f48       ldr      r0, [pc, #0x3c] ; [0x424834]=0x46eca9 'mac_f.c'
004247f6 104a       ldr      r2, [pc, #0x40] ; [0x424838]=0x46ecb1 'hsi_bchannel_to(param->hsi_bch, &param->bch)'
004247f8 40f23621   movw     r1, #0x236
004247fc 12f0e2fe   bl       #0x4375c4
00424800 1820       movs     r0, #0x18
00424802 0040       ands     r0, r0
00424804 20a1       adr      r1, #0x80
00424806 0700       movs     r7, r0
00424808 885b       ldrh     r0, [r1, r6]
0042480a 0010       asrs     r0, r0, #0x20
0042480c a89f       ldr      r7, [sp, #0x2a0]
0042480e 0310       asrs     r3, r0, #0x20
00424810 3401       lsls     r4, r6, #4
00424812 0410       asrs     r4, r0, #0x20
00424814 b327       movs     r7, #0xb3
00424816 0410       asrs     r4, r0, #0x20
00424818 9d40       lsls     r5, r3
0042481a 4200       lsls     r2, r0, #1
0042481c 40cd       ldm      r5!, {r6}
0042481e 0310       asrs     r3, r0, #0x20
00424820 b327       movs     r7, #0xb3
00424822 0410       asrs     r4, r0, #0x20
00424824 b327       movs     r7, #0xb3
00424826 0410       asrs     r4, r0, #0x20
00424828 b327       movs     r7, #0xb3
0042482a 0410       asrs     r4, r0, #0x20
0042482c 702e       cmp      r6, #0x70
0042482e 0410       asrs     r4, r0, #0x20
00424830 b327       movs     r7, #0xb3
00424832 0410       asrs     r4, r0, #0x20
00424834 a9ec4600   stc      p0, c0, [sb], #0x118
00424838 b1ec4600   ldc      p0, c0, [r1], #0x118
0042483c d0b5       push     {r4, r6, r7, lr}
0042483e 02af       add      r7, sp, #8
00424840 0446       mov      r4, r0
00424842 0648       ldr      r0, [pc, #0x18] ; [0x42485c]=0x10039fa8
00424844 0068       ldr      r0, [r0]
00424846 36f045ff   bl       #0x45b6d4
0042484a 0246       mov      r2, r0
0042484c 2046       mov      r0, r4
0042484e 44f20d01   movw     r1, #0x400d
00424852 bde8d040   pop.w    {r4, r6, r7, lr}
00424856 fff753bd   b.w      #0x424300
0042485a 00bf       nop      
0042485c a89f       ldr      r7, [sp, #0x2a0]
0042485e 0310       asrs     r3, r0, #0x20
00424860 7047       bx       lr
00424862 0189       ldrh     r1, [r0, #8]
00424864 29b1       cbz      r1, #0x424872
00424866 0168       ldr      r1, [r0]
00424868 4068       ldr      r0, [r0, #4]
0042486a 0843       orrs     r0, r1
0042486c 1cbf       itt      ne
0042486e 0120       movne    r0, #1
