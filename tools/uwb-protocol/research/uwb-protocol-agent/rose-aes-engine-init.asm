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
