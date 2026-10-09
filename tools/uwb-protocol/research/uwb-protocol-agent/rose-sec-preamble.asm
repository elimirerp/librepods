00423ed0 37f05cfb   bl       #0x45b58c
00423ed4 44f2190a   movw     sl, #0x4019
00423ed8 0024       movs     r4, #0
00423eda 0ee0       b        #0x423efa
00423edc a89f       ldr      r7, [sp, #0x2a0]
00423ede 0310       asrs     r3, r0, #0x20
00423ee0 20a1       adr      r1, #0x80
00423ee2 0700       movs     r7, r0
00423ee4 262e       cmp      r6, #0x26
00423ee6 0410       asrs     r4, r0, #0x20
00423ee8 3401       lsls     r4, r6, #4
00423eea 0410       asrs     r4, r0, #0x20
00423eec b327       movs     r7, #0xb3
00423eee 0410       asrs     r4, r0, #0x20
00423ef0 9d40       lsls     r5, r3
00423ef2 4200       lsls     r2, r0, #1
00423ef4 4ff0000a   mov.w    sl, #0
00423ef8 0124       movs     r4, #1
00423efa 5846       mov      r0, fp
00423efc e7f75afb   bl       #0x40b5b4
00423f00 94b3       cbz      r4, #0x423f68
00423f02 0a98       ldr      r0, [sp, #0x28]
00423f04 0021       movs     r1, #0
00423f06 00f0e3f9   bl       #0x4242d0
00423f0a 3168       ldr      r1, [r6]
00423f0c 38f0aafc   bl       #0x45c864
00423f10 3068       ldr      r0, [r6]
00423f12 38f09df8   bl       #0x45c050
00423f16 30f8106c   ldrh     r6, [r0, #-0x10]
00423f1a 40f20711   movw     r1, #0x107
00423f1e 8e42       cmp      r6, r1
00423f20 03d1       bne      #0x423f2a
00423f22 0c9e       ldr      r6, [sp, #0x30]
00423f24 08f10108   add.w    r8, r8, #1
00423f28 12e7       b        #0x423d50
00423f2a 40f20f11   movw     r1, #0x10f
00423f2e 8e42       cmp      r6, r1
00423f30 24d1       bne      #0x423f7c
00423f32 0021       movs     r1, #0
00423f34 0022       movs     r2, #0
00423f36 00f0e3f9   bl       #0x424300
00423f3a 0c98       ldr      r0, [sp, #0x30]
00423f3c 0221       movs     r1, #2
00423f3e 40f20712   movw     r2, #0x107
00423f42 4ff48373   mov.w    r3, #0x106
00423f46 0068       ldr      r0, [r0]
00423f48 fdf750fa   bl       #0x4213ec
00423f4c 0dad       add      r5, sp, #0x34
00423f4e 4ff4e271   mov.w    r1, #0x1c4
00423f52 38f038f8   bl       #0x45bfc6
00423f56 2a48       ldr      r0, [pc, #0xa8] ; [0x424000]=0x10040134
00423f58 334a       ldr      r2, [pc, #0xcc] ; [0x424028]=0x100427b3
00423f5a 37f02bfb   bl       #0x45b5b4
00423f5e 44f20e0a   movw     sl, #0x400e
00423f62 40f20f16   movw     r6, #0x10f
00423f66 19e0       b        #0x423f9c
00423f68 0dad       add      r5, sp, #0x34
00423f6a 40f2a311   movw     r1, #0x1a3
00423f6e 38f02af8   bl       #0x45bfc6
00423f72 2348       ldr      r0, [pc, #0x8c] ; [0x424000]=0x10040134
00423f74 2b4a       ldr      r2, [pc, #0xac] ; [0x424024]=0x100427b3
00423f76 37f01dfb   bl       #0x45b5b4
00423f7a 0de0       b        #0x423f98
00423f7c 0dad       add      r5, sp, #0x34
00423f7e 40f2c711   movw     r1, #0x1c7
00423f82 38f020f8   bl       #0x45bfc6
00423f86 1e48       ldr      r0, [pc, #0x78] ; [0x424000]=0x10040134
00423f88 284a       ldr      r2, [pc, #0xa0] ; [0x42402c]=0x100427b3
00423f8a 37f013fb   bl       #0x45b5b4
00423f8e 44f20e0a   movw     sl, #0x400e
00423f92 03e0       b        #0x423f9c
00423f94 4ff0000a   mov.w    sl, #0
00423f98 40f20716   movw     r6, #0x107
00423f9c 0c9c       ldr      r4, [sp, #0x30]
00423f9e 4ff48371   mov.w    r1, #0x106
00423fa2 2068       ldr      r0, [r4]
00423fa4 38f0cefb   bl       #0x45c744
00423fa8 fdf770f9   bl       #0x42128c
00423fac f5f716fe   bl       #0x419bdc
00423fb0 38f0a5ff   bl       #0x45cefe
00423fb4 44f20e00   movw     r0, #0x400e
00423fb8 5146       mov      r1, sl
00423fba 8245       cmp      sl, r0
00423fbc 18bf       it       ne
00423fbe 0026       movne    r6, #0
00423fc0 3246       mov      r2, r6
00423fc2 4846       mov      r0, sb
00423fc4 2646       mov      r6, r4
00423fc6 00f09bf9   bl       #0x424300
00423fca 3068       ldr      r0, [r6]
00423fcc 4ff48071   mov.w    r1, #0x100
00423fd0 38f0b8fb   bl       #0x45c744
00423fd4 0fb0       add      sp, #0x3c
00423fd6 bde8000f   pop.w    {r8, sb, sl, fp}
00423fda bde8f040   pop.w    {r4, r5, r6, r7, lr}
00423fde fcf7e5bd   b.w      #0x420bac
00423fe2 1348       ldr      r0, [pc, #0x4c] ; [0x424030]=0x46dfbe 'hmd_pkt.c'
00423fe4 134a       ldr      r2, [pc, #0x4c] ; [0x424034]=0x46e00f 'hmd_pkt_valid_uwb(pkt_type) || hmd_pkt_valid_mms_tx(pkt_type, nfragments)'
00423fe6 40f66a11   movw     r1, #0x96a
00423fea 13f0ebfa   bl       #0x4375c4
00423fee 00bf       nop      
00423ff0 ff4b       ldr      r3, [pc, #0x3fc] ; [0x4243f0]=0xf8d51140
00423ff2 1d00       movs     r5, r3
00423ff4 1820       movs     r0, #0x18
00423ff6 0040       ands     r0, r0
00423ff8 0198       ldr      r0, [sp, #4]
00423ffa 3a00       movs     r2, r7
00423ffc 00b4       .byte    0x00, 0xb4
00423ffe e2ff3401   vsra.u32 d16, d20, #0x1e
00424002 0410       asrs     r4, r0, #0x20
00424004 b80f       lsrs     r0, r7, #0x1e
00424006 0010       asrs     r0, r0, #0x20
00424008 fc13       asrs     r4, r7, #0xf
0042400a 0010       asrs     r0, r0, #0x20
0042400c f884       strh     r0, [r7, #0x26]
0042400e 4600       lsls     r6, r0, #1
00424010 d540       lsrs     r5, r2
00424012 4200       lsls     r2, r0, #1
00424014 6cfc0310   stc2l    p0, c1, [ip], #-0xc
00424018 4f2e       cmp      r6, #0x4f
0042401a 0410       asrs     r4, r0, #0x20
0042401c b327       movs     r7, #0xb3
0042401e 0410       asrs     r4, r0, #0x20
00424020 b327       movs     r7, #0xb3
00424022 0410       asrs     r4, r0, #0x20
00424024 b327       movs     r7, #0xb3
00424026 0410       asrs     r4, r0, #0x20
00424028 b327       movs     r7, #0xb3
0042402a 0410       asrs     r4, r0, #0x20
0042402c b327       movs     r7, #0xb3
0042402e 0410       asrs     r4, r0, #0x20
00424030 bedf       svc      #0xbe
00424032 4600       lsls     r6, r0, #1
00424034 0fe0       b        #0x424056
00424036 4600       lsls     r6, r0, #1
00424038 f0b5       push     {r4, r5, r6, r7, lr}
0042403a 03af       add      r7, sp, #0xc
0042403c 4df8048d   str      r8, [sp, #-0x4]!
00424040 82b0       sub      sp, #8
00424042 0546       mov      r5, r0
00424044 0820       movs     r0, #8
00424046 0e46       mov      r6, r1
00424048 4ff00808   mov.w    r8, #8
0042404c fcf77efe   bl       #0x420d4c
00424050 38f0e0fd   bl       #0x45cc14
00424054 04d1       bne      #0x424060
00424056 0e48       ldr      r0, [pc, #0x38] ; [0x424090]=0x10039fa8
00424058 0068       ldr      r0, [r0]
0042405a 37f03bfb   bl       #0x45b6d4
0042405e 00e0       b        #0x424062
00424060 0020       movs     r0, #0
00424062 35f80c1c   ldrh     r1, [r5, #-0xc]
00424066 6060       str      r0, [r4, #4]
00424068 48f24210   movw     r0, #0x8142
0042406c 4ff48072   mov.w    r2, #0x100
00424070 2346       mov      r3, r4
00424072 cdf80080   str.w    r8, [sp]
00424076 fcf7a5fe   bl       #0x420dc4
0042407a 10b9       cbnz     r0, #0x424082
0042407c 02b0       add      sp, #8
0042407e 38f0b5b8   b.w      #0x45c1ec
00424082 0448       ldr      r0, [pc, #0x10] ; [0x424094]=0x46eca9 'mac_f.c'
00424084 044a       ldr      r2, [pc, #0x10] ; [0x424098]=0x46ed27 'fsm_send_evt(MAC_CMD_CFM_EVT, (fsm_param2evt(param)->src), MAC_OBJ_ID, evt, sizeof(mac_f_cmd_cfm_t)) == FSM_OK'
00424086 40f24931   movw     r1, #0x349
0042408a 13f09bfa   bl       #0x4375c4
0042408e 00bf       nop      
00424090 a89f       ldr      r7, [sp, #0x2a0]
00424092 0310       asrs     r3, r0, #0x20
00424094 a9ec4600   stc      p0, c0, [sb], #0x118
00424098 27ed4600   stc      p0, c0, [r7, #-0x118]!
0042409c e0b5       push     {r5, r6, r7, lr}
0042409e 02af       add      r7, sp, #8
004240a0 07f8010c   strb     r0, [r7, #-0x1]
004240a4 0120       movs     r0, #1
004240a6 7b1e       subs     r3, r7, #1
004240a8 4ff48071   mov.w    r1, #0x100
004240ac 4ff47062   mov.w    r2, #0xf00
004240b0 0090       str      r0, [sp]
004240b2 40f20710   movw     r0, #0x107
004240b6 fcf785fe   bl       #0x420dc4
004240ba 00b9       cbnz     r0, #0x4240be
004240bc 8cbd       pop      {r2, r3, r7, pc}
004240be 0348       ldr      r0, [pc, #0xc] ; [0x4240cc]=0x46eca9 'mac_f.c'
004240c0 034a       ldr      r2, [pc, #0xc] ; [0x4240d0]=0x46ee05 'fsm_send_evt(MAC_TX_DONE_EVT, MAC_OBJ_ID, HMD_OBJ_ID, &evt, sizeof(evt)) == FSM_OK'
004240c2 40f27231   movw     r1, #0x372
004240c6 13f07dfa   bl       #0x4375c4
004240ca 00bf       nop      
004240cc a9ec4600   stc      p0, c0, [sb], #0x118
004240d0 05ee4600   cdp      p0, #0, c0, c5, c6, #2
004240d4 bcb5       push     {r2, r3, r4, r5, r7, lr}
004240d6 04af       add      r7, sp, #0x10
004240d8 0d46       mov      r5, r1
004240da 1749       ldr      r1, [pc, #0x5c] ; [0x424138]=0x10039fa8
004240dc 0446       mov      r4, r0
004240de 91f84301   ldrb.w   r0, [r1, #0x143]
004240e2 0128       cmp      r0, #1
004240e4 0bd1       bne      #0x4240fe
004240e6 d1f83831   ldr.w    r3, [r1, #0x138]
004240ea cde90052   strd     r5, r2, [sp]
004240ee 01f21510   addw     r0, r1, #0x115
004240f2 f531       adds     r1, #0xf5
004240f4 1a46       mov      r2, r3
004240f6 2346       mov      r3, r4
004240f8 fbf752ff   bl       #0x41ffa0
004240fc 0ae0       b        #0x424114
004240fe 2846       mov      r0, r5
00424100 6ff3df20   bfc      r0, #0xb, #0x15
00424104 8118       adds     r1, r0, r2
00424106 b1f5006f   cmp.w    r1, #0x800
0042410a 0ed8       bhi      #0x42412a
0042410c 0b49       ldr      r1, [pc, #0x2c] ; [0x42413c]=0x4694a4
0042410e 0144       add      r1, r0
00424110 38f0d3fa   bl       #0x45c6ba
00424114 05b1       cbz      r5, #0x424118
00424116 bcbd       pop      {r2, r3, r4, r5, r7, pc}
00424118 2268       ldr      r2, [r4]
0042411a 6368       ldr      r3, [r4, #4]
0042411c 0a48       ldr      r0, [pc, #0x28] ; [0x424148]=0x10042f2e
0042411e ff21       movs     r1, #0xff
00424120 02b0       add      sp, #8
00424122 bde8b040   pop.w    {r4, r5, r7, lr}
00424126 10f09bb8   b.w      #0x434260
0042412a 0548       ldr      r0, [pc, #0x14] ; [0x424140]=0x46eca9 'mac_f.c'
0042412c 054a       ldr      r2, [pc, #0x14] ; [0x424144]=0x46ecfb '(src_ofs + sts_len) <= sizeof(sec_preamble)'
0042412e 40f22b31   movw     r1, #0x32b
00424132 13f047fa   bl       #0x4375c4
00424136 00bf       nop      
00424138 a89f       ldr      r7, [sp, #0x2a0]
0042413a 0310       asrs     r3, r0, #0x20
0042413c a494       str      r4, [sp, #0x290]
0042413e 4600       lsls     r6, r0, #1
00424140 a9ec4600   stc      p0, c0, [sb], #0x118
00424144 fbec4600   ldcl     p0, c0, [fp], #0x118
00424148 2e2f       cmp      r7, #0x2e
0042414a 0410       asrs     r4, r0, #0x20
0042414c f0b5       push     {r4, r5, r6, r7, lr}
0042414e 03af       add      r7, sp, #0xc
00424150 2de9fe0f   push.w   {r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp}
00424154 0591       str      r1, [sp, #0x14]
00424156 9946       mov      sb, r3
00424158 8246       mov      sl, r0
0042415a 574e       ldr      r6, [pc, #0x15c] ; [0x4242b8]=0x10039fa8
0042415c 574b       ldr      r3, [pc, #0x15c] ; [0x4242bc]=0x1003fc6c
0042415e 50b3       cbz      r0, #0x4241b6
00424160 42f26610   movw     r0, #0x2166
00424164 3146       mov      r1, r6
00424166 4bf68f4b   movw     fp, #0xbc8f
0042416a 365a       ldrh     r6, [r6, r0]
0042416c 586b       ldr      r0, [r3, #0x34]
0042416e 8846       mov      r8, r1
00424170 01f5a275   add.w    r5, r1, #0x144
00424174 b4b2       uxth     r4, r6
00424176 042c       cmp      r4, #4
00424178 0cd3       blo      #0x424194
0042417a 1c46       mov      r4, r3
0042417c a0fb0b01   umull    r0, r1, r0, fp
00424180 6ff00042   mvn      r2, #0x80000000
00424184 0023       movs     r3, #0
00424186 e3f748fc   bl       #0x407a1a
0042418a 2346       mov      r3, r4
0042418c 6063       str      r0, [r4, #0x34]
0042418e 01c5       stm      r5!, {r0}
00424190 043e       subs     r6, #4
00424192 efe7       b        #0x424174
00424194 3104       lsls     r1, r6, #0x10
00424196 4646       mov      r6, r8
00424198 10d0       beq      #0x4241bc
0042419a 4bf68f41   movw     r1, #0xbc8f
0042419e 9846       mov      r8, r3
004241a0 37f083fa   bl       #0x45b6aa
004241a4 c8f83400   str.w    r0, [r8, #0x34]
004241a8 0690       str      r0, [sp, #0x18]
004241aa 06a9       add      r1, sp, #0x18
004241ac 2846       mov      r0, r5
004241ae 38f0b0f8   bl       #0x45c312
004241b2 4346       mov      r3, r8
004241b4 02e0       b        #0x4241bc
004241b6 b9f1000f   cmp.w    sb, #0
004241ba 0fd0       beq      #0x4241dc
004241bc b6f84051   ldrh.w   r5, [r6, #0x140]
004241c0 55b1       cbz      r5, #0x4241d8
004241c2 baf1000f   cmp.w    sl, #0
004241c6 04d0       beq      #0x4241d2
004241c8 0598       ldr      r0, [sp, #0x14]
004241ca 28b3       cbz      r0, #0x424218
004241cc 3c48       ldr      r0, [pc, #0xf0] ; [0x4242c0]=0x10005b88
004241ce 016b       ldr      r1, [r0, #0x30]
004241d0 2ae0       b        #0x424228
004241d2 b9f1000f   cmp.w    sb, #0
004241d6 32d0       beq      #0x42423e
004241d8 37f020bc   b.w      #0x45ba1c
004241dc b868       ldr      r0, [r7, #8]
004241de 42f26611   movw     r1, #0x2166
004241e2 755a       ldrh     r5, [r6, r1]
004241e4 a8b3       cbz      r0, #0x424252
004241e6 b046       mov      r8, r6
004241e8 3e69       ldr      r6, [r7, #0x10]
004241ea f968       ldr      r1, [r7, #0xc]
004241ec 9b46       mov      fp, r3
004241ee 08f5a270   add.w    r0, r8, #0x144
004241f2 3446       mov      r4, r6
004241f4 b542       cmp      r5, r6
004241f6 38bf       it       lo
004241f8 2c46       movlo    r4, r5
004241fa 38f08af8   bl       #0x45c312
004241fe ae42       cmp      r6, r5
00424200 5b46       mov      r3, fp
00424202 4646       mov      r6, r8
00424204 dad2       bhs      #0x4241bc
00424206 3019       adds     r0, r6, r4
00424208 2a1b       subs     r2, r5, r4
0042420a 0021       movs     r1, #0
0042420c 00f5a270   add.w    r0, r0, #0x144
00424210 e2f72efc   bl       #0x406a70
00424214 5b46       mov      r3, fp
00424216 d1e7       b        #0x4241bc
00424218 586b       ldr      r0, [r3, #0x34]
0042421a 4bf68f41   movw     r1, #0xbc8f
0042421e 1c46       mov      r4, r3
00424220 37f043fa   bl       #0x45b6aa
00424224 0146       mov      r1, r0
00424226 6063       str      r0, [r4, #0x34]
00424228 42f25c10   movw     r0, #0x215c
0042422c 4a46       mov      r2, sb
0042422e 3058       ldr      r0, [r6, r0]
00424230 07b0       add      sp, #0x1c
00424232 bde8000f   pop.w    {r8, sb, sl, fp}
00424236 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042423a 00f08fb8   b.w      #0x42435c
0042423e 42f25c10   movw     r0, #0x215c
00424242 3458       ldr      r4, [r6, r0]
00424244 0598       ldr      r0, [sp, #0x14]
00424246 48b1       cbz      r0, #0x42425c
00424248 1d48       ldr      r0, [pc, #0x74] ; [0x4242c0]=0x10005b88
0042424a 0022       movs     r2, #0
0042424c 016b       ldr      r1, [r0, #0x30]
0042424e 2046       mov      r0, r4
00424250 eee7       b        #0x424230
00424252 042d       cmp      r5, #4
00424254 1ad1       bne      #0x42428c
00424256 c6f84421   str.w    r2, [r6, #0x144]
0042425a afe7       b        #0x4241bc
0042425c 96f84201   ldrb.w   r0, [r6, #0x142]
00424260 0028       cmp      r0, #0
00424262 b9d1       bne      #0x4241d8
00424264 b5f5006f   cmp.w    r5, #0x800
00424268 19d8       bhi      #0x42429e
0042426a 1648       ldr      r0, [pc, #0x58] ; [0x4242c4]=0x4694a4
0042426c 8046       mov      r8, r0
0042426e 012d       cmp      r5, #1
00424270 b2db       blt      #0x4241d8
00424272 2e46       mov      r6, r5
00424274 b5f5006f   cmp.w    r5, #0x800
00424278 2046       mov      r0, r4
0042427a 4146       mov      r1, r8
0042427c 28bf       it       hs
0042427e 4ff40066   movhs.w  r6, #0x800
00424282 38f0f6f8   bl       #0x45c472
00424286 ad1b       subs     r5, r5, r6
00424288 3444       add      r4, r6
0042428a f0e7       b        #0x42426e
0042428c d1b2       uxtb     r1, r2
0042428e 06f5a270   add.w    r0, r6, #0x144
00424292 2a46       mov      r2, r5
00424294 1c46       mov      r4, r3
00424296 e2f7ebfb   bl       #0x406a70
0042429a 2346       mov      r3, r4
0042429c 8ee7       b        #0x4241bc
0042429e 0020       movs     r0, #0
004242a0 4ff40061   mov.w    r1, #0x800
004242a4 0291       str      r1, [sp, #8]
004242a6 0390       str      r0, [sp, #0xc]
004242a8 cde90050   strd     r5, r0, [sp]
004242ac 40f20531   movw     r1, #0x305
004242b0 0548       ldr      r0, [pc, #0x14] ; [0x4242c8]=0x46eca9 'mac_f.c'
004242b2 064a       ldr      r2, [pc, #0x18] ; [0x4242cc]=0x46ecde 'mac_f.sts_len <= MAX_STS_LEN'
004242b4 13f090f9   bl       #0x4375d8
004242b8 a89f       ldr      r7, [sp, #0x2a0]
004242ba 0310       asrs     r3, r0, #0x20
004242bc 6cfc0310   stc2l    p0, c1, [ip], #-0xc
004242c0 885b       ldrh     r0, [r1, r6]
004242c2 0010       asrs     r0, r0, #0x20
004242c4 a494       str      r4, [sp, #0x290]
004242c6 4600       lsls     r6, r0, #1
004242c8 a9ec4600   stc      p0, c0, [sb], #0x118
004242cc deec4600   ldcl     p0, c0, [lr], {0x46}
004242d0 0246       mov      r2, r0
004242d2 0848       ldr      r0, [pc, #0x20] ; [0x4242f4]=0x10006538
004242d4 0068       ldr      r0, [r0]
004242d6 d0f81cc0   ldr.w    ip, [r0, #0x1c]
004242da bcf1000f   cmp.w    ip, #0
004242de 02d0       beq      #0x4242e6
004242e0 0448       ldr      r0, [pc, #0x10] ; [0x4242f4]=0x10006538
004242e2 0b46       mov      r3, r1
004242e4 6047       bx       ip
004242e6 80b5       push     {r7, lr}
004242e8 6f46       mov      r7, sp
004242ea 0348       ldr      r0, [pc, #0xc] ; [0x4242f8]=0x46ffc0 'RTK_device_methods.h'
004242ec 034a       ldr      r2, [pc, #0xc] ; [0x4242fc]=0x46ffd5 '_fn != 0'
004242ee 38f087fd   bl       #0x45ce00
004242f2 00bf       nop      
004242f4 3865       str      r0, [r7, #0x50]
004242f6 0010       asrs     r0, r0, #0x20
004242f8 c0ff       .byte    0xc0, 0xff
004242fa 4600       lsls     r6, r0, #1
004242fc d5ff       .byte    0xd5, 0xff
004242fe 4600       lsls     r6, r0, #1
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
