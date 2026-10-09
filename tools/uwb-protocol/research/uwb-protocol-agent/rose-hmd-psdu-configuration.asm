00419578 f0b5       push     {r4, r5, r6, r7, lr}
0041957a 03af       add      r7, sp, #0xc
0041957c 2de9000b   push.w   {r8, sb, fp}
00419580 8eb0       sub      sp, #0x38
00419582 8046       mov      r8, r0
00419584 91f8b901   ldrb.w   r0, [r1, #0x1b9]
00419588 4c8d       ldrh     r4, [r1, #0x2a]
0041958a d1f80890   ldr.w    sb, [r1, #8]
0041958e 10b1       cbz      r0, #0x419596
00419590 05f030fd   bl       #0x41eff4
00419594 2ae0       b        #0x4195ec
00419596 91f8b801   ldrb.w   r0, [r1, #0x1b8]
0041959a 0d46       mov      r5, r1
0041959c adf81440   strh.w   r4, [sp, #0x14]
004195a0 adf81880   strh.w   r8, [sp, #0x18]
004195a4 8df81600   strb.w   r0, [sp, #0x16]
004195a8 99f85400   ldrb.w   r0, [sb, #0x54]
004195ac 00f00f00   and      r0, r0, #0xf
004195b0 8df81700   strb.w   r0, [sp, #0x17]
004195b4 8869       ldr      r0, [r1, #0x18]
004195b6 0328       cmp      r0, #3
004195b8 67d2       bhs      #0x41968a
004195ba 3949       ldr      r1, [pc, #0xe4] ; [0x4196a0]=0x1010190
004195bc 0791       str      r1, [sp, #0x1c]
004195be 3b49       ldr      r1, [pc, #0xec] ; [0x4196ac]=0x46daca
004195c0 085c       ldrb     r0, [r1, r0]
004195c2 e98a       ldrh     r1, [r5, #0x16]
004195c4 0844       add      r0, r1
004195c6 adf81a00   strh.w   r0, [sp, #0x1a]
004195ca 05a8       add      r0, sp, #0x14
004195cc 08ae       add      r6, sp, #0x20
004195ce 3146       mov      r1, r6
004195d0 04f0d2fe   bl       #0x41e378
004195d4 0b98       ldr      r0, [sp, #0x2c]
004195d6 b21d       adds     r2, r6, #6
004195d8 3146       mov      r1, r6
004195da c5f8bc01   str.w    r0, [r5, #0x1bc]
004195de bdf83000   ldrh.w   r0, [sp, #0x30]
004195e2 a5f8c001   strh.w   r0, [r5, #0x1c0]
004195e6 a868       ldr      r0, [r5, #8]
004195e8 00f070f8   bl       #0x4196cc
004195ec 0020       movs     r0, #0
004195ee b0eb943f   cmp.w    r0, r4, lsr #14
004195f2 47d1       bne      #0x419684
004195f4 1ffa88f0   uxth.w   r0, r8
004195f8 04f088fd   bl       #0x41e10c
004195fc 4ff0c041   mov.w    r1, #0x60000000
00419600 0028       cmp      r0, #0
00419602 08bf       it       eq
00419604 4ff00051   moveq.w  r1, #0x20000000
00419608 d9f80400   ldr.w    r0, [sb, #4]
0041960c 20f0c040   bic      r0, r0, #0x60000000
00419610 0844       add      r0, r1
00419612 c9f80400   str.w    r0, [sb, #4]
00419616 2fd0       beq      #0x419678
00419618 04f46051   and      r1, r4, #0x3800
0041961c 244a       ldr      r2, [pc, #0x90] ; [0x4196b0]=0x468aa4
0041961e 2548       ldr      r0, [pc, #0x94] ; [0x4196b4]=0x1002dec4
00419620 b1f5c05f   cmp.w    r1, #0x1800
00419624 a1f5c051   sub.w    r1, r1, #0x1800
00419628 08bf       it       eq
0041962a 1046       moveq    r0, r2
0041962c b1fa81f1   clz      r1, r1
00419630 0022       movs     r2, #0
00419632 b4f5006f   cmp.w    r4, #0x800
00419636 38bf       it       lo
00419638 0122       movlo    r2, #1
0041963a 4fea5111   lsr.w    r1, r1, #5
0041963e 41ea0201   orr.w    r1, r1, r2
00419642 1d4a       ldr      r2, [pc, #0x74] ; [0x4196b8]=0x1003faf4
00419644 1176       strb     r1, [r2, #0x18]
00419646 d175       strb     r1, [r2, #0x17]
00419648 1c4c       ldr      r4, [pc, #0x70] ; [0x4196bc]=0x46890c
0041964a 28bf       it       hs
0041964c 0446       movhs    r4, r0
0041964e 04f063fd   bl       #0x41e118
00419652 1448       ldr      r0, [pc, #0x50] ; [0x4196a4]=0x40002018
00419654 0168       ldr      r1, [r0]
00419656 1a49       ldr      r1, [pc, #0x68] ; [0x4196c0]=0x1003fc6c
00419658 0a6a       ldr      r2, [r1, #0x20]
0041965a a242       cmp      r2, r4
0041965c 12d0       beq      #0x419684
0041965e 124b       ldr      r3, [pc, #0x48] ; [0x4196a8]=0x44000b34
00419660 0022       movs     r2, #0
00419662 662a       cmp      r2, #0x66
00419664 05d0       beq      #0x419672
00419666 54f82250   ldr.w    r5, [r4, r2, lsl #2]
0041966a 43f82250   str.w    r5, [r3, r2, lsl #2]
0041966e 0132       adds     r2, #1
00419670 f7e7       b        #0x419662
00419672 0c62       str      r4, [r1, #0x20]
00419674 0068       ldr      r0, [r0]
00419676 05e0       b        #0x419684
00419678 0f48       ldr      r0, [pc, #0x3c] ; [0x4196b8]=0x1003faf4
0041967a 0021       movs     r1, #0
0041967c a0f81710   strh.w   r1, [r0, #0x17]
00419680 04f04afd   bl       #0x41e118
00419684 0eb0       add      sp, #0x38
00419686 42f0e5be   b.w      #0x45c454
0041968a 43f05ff8   bl       #0x45c74c
0041968e cde90051   strd     r5, r1, [sp]
00419692 41f29061   movw     r1, #0x1690
00419696 0b48       ldr      r0, [pc, #0x2c] ; [0x4196c4]=0x46d8d5 'hmd.c'
00419698 0b4a       ldr      r2, [pc, #0x2c] ; [0x4196c8]=0x46de0d 'common->crc_mode < HMD_CRC_MODE_MAX'
0041969a 1df09dff   bl       #0x4375d8
0041969e 00bf       nop      
004196a0 9001       lsls     r0, r2, #6
004196a2 0101       lsls     r1, r0, #4
004196a4 1820       movs     r0, #0x18
004196a6 0040       ands     r0, r0
004196a8 340b       lsrs     r4, r6, #0xc
004196aa 0044       add      r0, r0
004196ac cada       bge      #0x419644
004196ae 4600       lsls     r6, r0, #1
004196b0 a48a       ldrh     r4, [r4, #0x14]
004196b2 4600       lsls     r6, r0, #1
004196b4 c4de       udf      #0xc4
004196b6 0210       asrs     r2, r0, #0x20
004196b8 f4fa       .byte    0xf4, 0xfa
004196ba 0310       asrs     r3, r0, #0x20
004196bc 0c89       ldrh     r4, [r1, #8]
004196be 4600       lsls     r6, r0, #1
004196c0 6cfc0310   stc2l    p0, c1, [ip], #-0xc
004196c4 d5d8       bhi      #0x419672
004196c6 4600       lsls     r6, r0, #1
004196c8 0dde       udf      #0xd
004196ca 4600       lsls     r6, r0, #1
004196cc f0b5       push     {r4, r5, r6, r7, lr}
004196ce 03af       add      r7, sp, #0xc
004196d0 4df804bd   str      fp, [sp, #-0x4]!
004196d4 0b88       ldrh     r3, [r1]
004196d6 8568       ldr      r5, [r0, #8]
004196d8 0c46       mov      r4, r1
004196da d0f80cc0   ldr.w    ip, [r0, #0xc]
004196de 8669       ldr      r6, [r0, #0x18]
004196e0 c16d       ldr      r1, [r0, #0x5c]
004196e2 002a       cmp      r2, #0
004196e4 6ff31f33   bfc      r3, #0xc, #0x14
004196e8 6ff35c45   bfc      r5, #0x11, #0xc
004196ec 6ff35426   bfc      r6, #9, #0xc
004196f0 45ea4343   orr.w    r3, r5, r3, lsl #17
004196f4 8360       str      r3, [r0, #8]
004196f6 2cf0fe53   bic      r3, ip, #0x1fc00000
004196fa 6579       ldrb     r5, [r4, #5]
004196fc 05f07f05   and      r5, r5, #0x7f
00419700 43ea8553   orr.w    r3, r3, r5, lsl #22
00419704 c360       str      r3, [r0, #0xc]
00419706 08bf       it       eq
00419708 2246       moveq    r2, r4
0041970a 1388       ldrh     r3, [r2]
0041970c 6ff31f33   bfc      r3, #0xc, #0x14
00419710 46ea4323   orr.w    r3, r6, r3, lsl #9
00419714 8361       str      r3, [r0, #0x18]
00419716 23f07e63   bic      r3, r3, #0xfe00000
0041971a 5579       ldrb     r5, [r2, #5]
0041971c 05f07f05   and      r5, r5, #0x7f
00419720 43ea4553   orr.w    r3, r3, r5, lsl #21
00419724 8361       str      r3, [r0, #0x18]
00419726 a378       ldrb     r3, [r4, #2]
00419728 63f30601   bfi      r1, r3, #0, #7
0041972c c165       str      r1, [r0, #0x5c]
0041972e 21f47e51   bic      r1, r1, #0x3f80
00419732 e378       ldrb     r3, [r4, #3]
00419734 03f07f03   and      r3, r3, #0x7f
00419738 41eac311   orr.w    r1, r1, r3, lsl #7
0041973c c165       str      r1, [r0, #0x5c]
0041973e 21f48041   bic      r1, r1, #0x4000
00419742 2379       ldrb     r3, [r4, #4]
00419744 03f00103   and      r3, r3, #1
00419748 41ea8331   orr.w    r1, r1, r3, lsl #14
0041974c c165       str      r1, [r0, #0x5c]
0041974e 21f4fe01   bic      r1, r1, #0x7f0000
00419752 9378       ldrb     r3, [r2, #2]
00419754 03f07f03   and      r3, r3, #0x7f
00419758 41ea0341   orr.w    r1, r1, r3, lsl #16
0041975c c165       str      r1, [r0, #0x5c]
0041975e 21f07e51   bic      r1, r1, #0x3f800000
00419762 d378       ldrb     r3, [r2, #3]
00419764 03f07f03   and      r3, r3, #0x7f
00419768 41eac351   orr.w    r1, r1, r3, lsl #23
0041976c c165       str      r1, [r0, #0x5c]
0041976e 21f08041   bic      r1, r1, #0x40000000
00419772 1279       ldrb     r2, [r2, #4]
00419774 02f00102   and      r2, r2, #1
00419778 41ea8271   orr.w    r1, r1, r2, lsl #30
0041977c c165       str      r1, [r0, #0x5c]
0041977e 4069       ldr      r0, [r0, #0x14]
00419780 a188       ldrh     r1, [r4, #4]
00419782 0f4a       ldr      r2, [pc, #0x3c] ; [0x4197c0]=0x1003fce8
00419784 a2f87810   strh.w   r1, [r2, #0x78]
00419788 2168       ldr      r1, [r4]
0041978a 5167       str      r1, [r2, #0x74]
0041978c 4ff4c071   mov.w    r1, #0x180
00419790 21ea0000   bic.w    r0, r1, r0
00419794 0b49       ldr      r1, [pc, #0x2c] ; [0x4197c4]=0x1003faf4
00419796 43f0f7fa   bl       #0x45cd88
0041979a c876       strb     r0, [r1, #0x1b]
0041979c 05f02afc   bl       #0x41eff4
004197a0 6179       ldrb     r1, [r4, #5]
004197a2 2288       ldrh     r2, [r4]
004197a4 2079       ldrb     r0, [r4, #4]
004197a6 42ea0142   orr.w    r2, r2, r1, lsl #16
004197aa 6188       ldrh     r1, [r4, #2]
004197ac 41ea0043   orr.w    r3, r1, r0, lsl #16
004197b0 0548       ldr      r0, [pc, #0x14] ; [0x4197c8]=0x10041b74
004197b2 fa21       movs     r1, #0xfa
004197b4 5df804bb   ldr      fp, [sp], #4
004197b8 bde8f040   pop.w    {r4, r5, r6, r7, lr}
004197bc 1af050bd   b.w      #0x434260
004197c0 e8fc0310   stc2l    p0, c1, [r8], #0xc
004197c4 f4fa       .byte    0xf4, 0xfa
004197c6 0310       asrs     r3, r0, #0x20
004197c8 741b       subs     r4, r6, r5
004197ca 0410       asrs     r4, r0, #0x20
