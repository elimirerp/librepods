00419030 1c68       ldr      r4, [r3]
00419032 44f48074   orr      r4, r4, #0x100
00419036 1c60       str      r4, [r3]
00419038 1c68       ldr      r4, [r3]
0041903a c4f38024   ubfx     r4, r4, #0xa, #1
0041903e 0194       str      r4, [sp, #4]
00419040 019c       ldr      r4, [sp, #4]
00419042 012c       cmp      r4, #1
00419044 f8d1       bne      #0x419038
00419046 1c68       ldr      r4, [r3]
00419048 44f48064   orr      r4, r4, #0x400
0041904c 1c60       str      r4, [r3]
0041904e 1c68       ldr      r4, [r3]
00419050 24f40064   bic      r4, r4, #0x800
00419054 1c60       str      r4, [r3]
00419056 5c68       ldr      r4, [r3, #4]
00419058 9b68       ldr      r3, [r3, #8]
0041905a 0d68       ldr      r5, [r1]
0041905c 45f08075   orr      r5, r5, #0x1000000
00419060 0d60       str      r5, [r1]
00419062 0d68       ldr      r5, [r1]
00419064 45f08065   orr      r5, r5, #0x4000000
00419068 0d60       str      r5, [r1]
0041906a 0d68       ldr      r5, [r1]
0041906c 45f00075   orr      r5, r5, #0x2000000
00419070 0d60       str      r5, [r1]
00419072 0d68       ldr      r5, [r1]
00419074 25f08075   bic      r5, r5, #0x1000000
00419078 0d60       str      r5, [r1]
0041907a 0d68       ldr      r5, [r1]
0041907c 25f08065   bic      r5, r5, #0x4000000
00419080 0d60       str      r5, [r1]
00419082 0199       ldr      r1, [sp, #4]
00419084 89b3       cbz      r1, #0x4190ea
00419086 90f85119   ldrb.w   r1, [r0, #0x951]
0041908a d0f84459   ldr.w    r5, [r0, #0x944]
0041908e 0131       adds     r1, #1
00419090 80f85119   strb.w   r1, [r0, #0x951]
00419094 d0f84019   ldr.w    r1, [r0, #0x940]
00419098 11fa84f1   uxtah    r1, r1, r4
0041909c c0f84019   str.w    r1, [r0, #0x940]
004190a0 05eb1441   add.w    r1, r5, r4, lsr #16
004190a4 5468       ldr      r4, [r2, #4]
004190a6 c0f84419   str.w    r1, [r0, #0x944]
004190aa 90f85009   ldrb.w   r0, [r0, #0x950]
004190ae 1168       ldr      r1, [r2]
004190b0 00ee104a   vmov     s0, r4
004190b4 1cb2       sxth     r4, r3
004190b6 01ee104a   vmov     s2, r4
004190ba b8eec11a   vcvt.f32.s32 s2, s2
004190be 30ee010a   vadd.f32 s0, s0, s2
004190c2 01ee100a   vmov     s2, r0
004190c6 180c       lsrs     r0, r3, #0x10
004190c8 02ee100a   vmov     s4, r0
004190cc 10ee104a   vmov     r4, s0
004190d0 00ee101a   vmov     s0, r1
004190d4 b8ee411a   vcvt.f32.u32 s2, s2
004190d8 b8ee422a   vcvt.f32.u32 s4, s4
004190dc 5460       str      r4, [r2, #4]
004190de 02ee010a   vmla.f32 s0, s4, s2
004190e2 10ee100a   vmov     r0, s0
004190e6 1060       str      r0, [r2]
004190e8 bcbd       pop      {r2, r3, r4, r5, r7, pc}
004190ea 3348       ldr      r0, [pc, #0xcc] ; [0x4191b8]=0x10041c82
004190ec 43f05dfa   bl       #0x45c5aa
004190f0 02b0       add      sp, #8
004190f2 bde8b040   pop.w    {r4, r5, r7, lr}
004190f6 1bf0b3b8   b.w      #0x434260
004190fa 2448       ldr      r0, [pc, #0x90] ; [0x41918c]=0x46d5e4 'clib.c'
004190fc 244a       ldr      r2, [pc, #0x90] ; [0x419190]=0x46d5eb 'post_trig_cnt_capt == post_trig_cnt'
004190fe 40f25f31   movw     r1, #0x35f
00419102 1ef05ffa   bl       #0x4375c4
00419106 2148       ldr      r0, [pc, #0x84] ; [0x41918c]=0x46d5e4 'clib.c'
00419108 224a       ldr      r2, [pc, #0x88] ; [0x419194]=0x46d60f 'uwb_sc_rx->scsr.cap_cnt >= post_trig_cnt'
0041910a 40f26231   movw     r1, #0x362
0041910e 1ef059fa   bl       #0x4375c4
00419112 1e48       ldr      r0, [pc, #0x78] ; [0x41918c]=0x46d5e4 'clib.c'
00419114 204a       ldr      r2, [pc, #0x80] ; [0x419198]=0x46d638 'uwb_sc_rx->scsr.cnt_done == 1'
00419116 40f26531   movw     r1, #0x365
0041911a 1ef053fa   bl       #0x4375c4
0041911e 1b48       ldr      r0, [pc, #0x6c] ; [0x41918c]=0x46d5e4 'clib.c'
00419120 214a       ldr      r2, [pc, #0x84] ; [0x4191a8]=0x46d6af 'GET_PHY_AUX_REG_FLD(HW_ACC, U_2X_CLK_EN)'
00419122 4ff40071   mov.w    r1, #0x200
00419126 1ef04dfa   bl       #0x4375c4
0041912a 1848       ldr      r0, [pc, #0x60] ; [0x41918c]=0x46d5e4 'clib.c'
0041912c 1b4a       ldr      r2, [pc, #0x6c] ; [0x41919c]=0x46d656 'uwb_sc_rx->scsr.timeout == 0'
0041912e 40f26a31   movw     r1, #0x36a
00419132 1ef047fa   bl       #0x4375c4
00419136 1548       ldr      r0, [pc, #0x54] ; [0x41918c]=0x46d5e4 'clib.c'
00419138 1c4a       ldr      r2, [pc, #0x70] ; [0x4191ac]=0x46d6d8 'GET_PHY_AUX_REG_FLD(HW_ACC, SLC_CIR_MEM_READY)'
0041913a 40f20121   movw     r1, #0x201
0041913e 1ef041fa   bl       #0x4375c4
00419142 1248       ldr      r0, [pc, #0x48] ; [0x41918c]=0x46d5e4 'clib.c'
00419144 164a       ldr      r2, [pc, #0x58] ; [0x4191a0]=0x46d673 'uwb_sc_rx->scsr.bus_err == 0'
00419146 40f26f31   movw     r1, #0x36f
0041914a 1ef03bfa   bl       #0x4375c4
0041914e 0f48       ldr      r0, [pc, #0x3c] ; [0x41918c]=0x46d5e4 'clib.c'
00419150 174a       ldr      r2, [pc, #0x5c] ; [0x4191b0]=0x46d707 'GET_PHY_AUX_REG_FLD(HW_ACC, STS_SEQ_MEM_READY)'
00419152 40f20221   movw     r1, #0x202
00419156 1ef035fa   bl       #0x4375c4
0041915a 0c48       ldr      r0, [pc, #0x30] ; [0x41918c]=0x46d5e4 'clib.c'
0041915c 114a       ldr      r2, [pc, #0x44] ; [0x4191a4]=0x46d690 'uwb_sc_rx->scsr.triggered == 1'
0041915e 40f27231   movw     r1, #0x372
00419162 1ef02ffa   bl       #0x4375c4
00419166 0948       ldr      r0, [pc, #0x24] ; [0x41918c]=0x46d5e4 'clib.c'
00419168 124a       ldr      r2, [pc, #0x48] ; [0x4191b4]=0x46d736 'GET_PHY_AUX_REG_FLD(PHY_STAT3,UWB_PMGR_U2X_CLK_REQ)'
0041916a 40f20321   movw     r1, #0x203
0041916e 1ef029fa   bl       #0x4375c4
00419172 00bf       nop      
00419174 1050       str      r0, [r2, r0]
00419176 1144       add      r1, r2
00419178 1882       strh     r0, [r3, #0x10]
0041917a 1044       add      r0, r2
0041917c b460       str      r4, [r6, #8]
0041917e 0044       add      r0, r0
00419180 0018       adds     r0, r0, r0
00419182 1144       add      r1, r2
00419184 cc10       asrs     r4, r1, #3
00419186 1144       add      r1, r2
00419188 08a5       adr      r5, #0x20
0041918a 0210       asrs     r2, r0, #0x20
0041918c e4d5       bpl      #0x419158
0041918e 4600       lsls     r6, r0, #1
00419190 ebd5       bpl      #0x41916a
00419192 4600       lsls     r6, r0, #1
00419194 0fd6       bvs      #0x4191b6
00419196 4600       lsls     r6, r0, #1
00419198 38d6       bvs      #0x41920c
0041919a 4600       lsls     r6, r0, #1
0041919c 56d6       bvs      #0x41924c
0041919e 4600       lsls     r6, r0, #1
004191a0 73d6       bvs      #0x41928a
004191a2 4600       lsls     r6, r0, #1
004191a4 90d6       bvs      #0x4190c8
004191a6 4600       lsls     r6, r0, #1
004191a8 afd6       bvs      #0x41910a
004191aa 4600       lsls     r6, r0, #1
004191ac d8d6       bvs      #0x419160
004191ae 4600       lsls     r6, r0, #1
004191b0 07d7       bvc      #0x4191c2
004191b2 4600       lsls     r6, r0, #1
