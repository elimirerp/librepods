0041bd2c f0b5       push     {r4, r5, r6, r7, lr}
0041bd2e 03af       add      r7, sp, #0xc
0041bd30 2de9e00f   push.w   {r5, r6, r7, r8, sb, sl, fp}
0041bd34 1546       mov      r5, r2
0041bd36 834a       ldr      r2, [pc, #0x20c] ; [0x41bf44]=0x10000fb8
0041bd38 834c       ldr      r4, [pc, #0x20c] ; [0x41bf48]=0x100013fc
0041bd3a 9a46       mov      sl, r3
0041bd3c 8946       mov      sb, r1
0041bd3e c1b2       uxtb     r1, r0
0041bd40 9c23       movs     r3, #0x9c
0041bd42 11fb0348   smlabb   r8, r1, r3, r4
0041bd46 00f47f44   and      r4, r0, #0xff00
0041bd4a c0f30720   ubfx     r0, r0, #8, #8
0041bd4e b4f5e06f   cmp.w    r4, #0x700
0041bd52 08bf       it       eq
0041bd54 11fb0328   smlabbeq r8, r1, r3, r2
0041bd58 774a       ldr      r2, [pc, #0x1dc] ; [0x41bf38]=0x40002018
0041bd5a 0728       cmp      r0, #7
0041bd5c d2f800b0   ldr.w    fp, [r2]
0041bd60 5468       ldr      r4, [r2, #4]
0041bd62 11d1       bne      #0x41bd88
0041bd64 d8f80000   ldr.w    r0, [r8]
0041bd68 6ff35120   bfc      r0, #9, #9
0041bd6c 40ea4920   orr.w    r0, r0, sb, lsl #9
0041bd70 c8f80000   str.w    r0, [r8]
0041bd74 7548       ldr      r0, [pc, #0x1d4] ; [0x41bf4c]=0x10005b88
0041bd76 90f83401   ldrb.w   r0, [r0, #0x134]
0041bd7a 58b3       cbz      r0, #0x41bdd4
0041bd7c 7448       ldr      r0, [pc, #0x1d0] ; [0x41bf50]=0x46dfbe 'hmd_pkt.c'
0041bd7e 754a       ldr      r2, [pc, #0x1d4] ; [0x41bf54]=0x46e059 '!mac_cfg.mix_mms_worst_case'
0041bd80 40f6ce21   movw     r1, #0xace
0041bd84 1bf01efc   bl       #0x4375c4
0041bd88 0828       cmp      r0, #8
0041bd8a f3d1       bne      #0x41bd74
0041bd8c 0629       cmp      r1, #6
0041bd8e f1d8       bhi      #0x41bd74
0041bd90 6e48       ldr      r0, [pc, #0x1b8] ; [0x41bf4c]=0x10005b88
0041bd92 90f83401   ldrb.w   r0, [r0, #0x134]
0041bd96 28b1       cbz      r0, #0x41bda4
0041bd98 d8f80800   ldr.w    r0, [r8, #8]
0041bd9c 40b1       cbz      r0, #0x41bdb0
0041bd9e 6f48       ldr      r0, [pc, #0x1bc] ; [0x41bf5c]=0x468761
0041bda0 405c       ldrb     r0, [r0, r1]
0041bda2 0de0       b        #0x41bdc0
0041bda4 d8f80410   ldr.w    r1, [r8, #4]
0041bda8 d8f80000   ldr.w    r0, [r8]
0041bdac 890b       lsrs     r1, r1, #0xe
0041bdae 0de0       b        #0x41bdcc
0041bdb0 6948       ldr      r0, [pc, #0x1a4] ; [0x41bf58]=0x468720
0041bdb2 0129       cmp      r1, #1
0041bdb4 405d       ldrb     r0, [r0, r5]
0041bdb6 00f00102   and      r2, r0, #1
0041bdba 08bf       it       eq
0041bdbc 02eb5000   addeq.w  r0, r2, r0, lsr #1
0041bdc0 5e49       ldr      r1, [pc, #0x178] ; [0x41bf3c]=0x3fe00
0041bdc2 01eb4020   add.w    r0, r1, r0, lsl #9
0041bdc6 410a       lsrs     r1, r0, #9
0041bdc8 d8f80000   ldr.w    r0, [r8]
0041bdcc 61f35120   bfi      r0, r1, #9, #9
0041bdd0 c8f80000   str.w    r0, [r8]
0041bdd4 08f11c06   add.w    r6, r8, #0x1c
0041bdd8 0021       movs     r1, #0
0041bdda 8022       movs     r2, #0x80
0041bddc 40f0a2fa   bl       #0x45c324
0041bde0 d8f80800   ldr.w    r0, [r8, #8]
0041bde4 0295       str      r5, [sp, #8]
0041bde6 88f818a0   strb.w   sl, [r8, #0x18]
0041bdea cde900b4   strd     fp, r4, [sp]
0041bdee 0228       cmp      r0, #2
0041bdf0 42d0       beq      #0x41be78
0041bdf2 0128       cmp      r0, #1
0041bdf4 35d0       beq      #0x41be62
0041bdf6 0028       cmp      r0, #0
0041bdf8 40f09780   bne.w    #0x41bf2a
0041bdfc 00ee105a   vmov     s0, r5
0041be00 beee002a   vmov.f32 s4, #-5.000000e-01
0041be04 7f20       movs     r0, #0x7f
0041be06 d8f80010   ldr.w    r1, [r8]
0041be0a b8ee401a   vcvt.f32.u32 s2, s0
0041be0e 9fed4c0a   vldr     s0, [pc, #0x130] ; [0x41bf40]=0x3af9096c
0041be12 00eb4500   add.w    r0, r0, r5, lsl #1
0041be16 60f30801   bfi      r1, r0, #0, #9
0041be1a 21ee000a   vmul.f32 s0, s2, s0
0041be1e c8f80010   str.w    r1, [r8]
0041be22 20ee010a   vmul.f32 s0, s0, s2
0041be26 01ee020a   vmla.f32 s0, s2, s4
0041be2a eaf7bdfc   bl       #0x4067a8
0041be2e d8f80410   ldr.w    r1, [r8, #4]
0041be32 bdeec00a   vcvt.s32.f32 s0, s0
0041be36 0422       movs     r2, #4
0041be38 10ee100a   vmov     r0, s0
0041be3c 00f28760   addw     r0, r0, #0x687
0041be40 c90a       lsrs     r1, r1, #0xb
0041be42 61f3df20   bfi      r0, r1, #0xb, #0x15
0041be46 6900       lsls     r1, r5, #1
0041be48 c8f80400   str.w    r0, [r8, #4]
0041be4c 4448       ldr      r0, [pc, #0x110] ; [0x41bf60]=0x468520
0041be4e 00eb4a10   add.w    r0, r0, sl, lsl #5
0041be52 a0f58460   sub.w    r0, r0, #0x420
0041be56 1306       lsls     r3, r2, #0x18
0041be58 1fd0       beq      #0x41be9a
0041be5a 08c8       ldm      r0!, {r3}
0041be5c 013a       subs     r2, #1
0041be5e 08c6       stm      r6!, {r3}
0041be60 f9e7       b        #0x41be56
0041be62 3548       ldr      r0, [pc, #0xd4] ; [0x41bf38]=0x40002018
0041be64 2022       movs     r2, #0x20
0041be66 8346       mov      fp, r0
0041be68 3e48       ldr      r0, [pc, #0xf8] ; [0x41bf64]=0x10001be8
0041be6a 00eb4a10   add.w    r0, r0, sl, lsl #5
0041be6e a0f59071   sub.w    r1, r0, #0x120
0041be72 40f0f6fb   bl       #0x45c662
0041be76 0ce0       b        #0x41be92
0041be78 2f48       ldr      r0, [pc, #0xbc] ; [0x41bf38]=0x40002018
0041be7a 8346       mov      fp, r0
0041be7c 3948       ldr      r0, [pc, #0xe4] ; [0x41bf64]=0x10001be8
0041be7e 00eb4a10   add.w    r0, r0, sl, lsl #5
0041be82 a0f59070   sub.w    r0, r0, #0x120
0041be86 3ec8       ldm      r0!, {r1, r2, r3, r4, r5}
0041be88 3ec6       stm      r6!, {r1, r2, r3, r4, r5}
0041be8a 0188       ldrh     r1, [r0]
0041be8c 8078       ldrb     r0, [r0, #2]
0041be8e 3180       strh     r1, [r6]
0041be90 b070       strb     r0, [r6, #2]
0041be92 5446       mov      r4, sl
0041be94 4ff0000a   mov.w    sl, #0
0041be98 23e0       b        #0x41bee2
0041be9a 274a       ldr      r2, [pc, #0x9c] ; [0x41bf38]=0x40002018
0041be9c 0023       movs     r3, #0
0041be9e 9346       mov      fp, r2
0041bea0 2a09       lsrs     r2, r5, #4
0041bea2 1406       lsls     r4, r2, #0x18
0041bea4 02d0       beq      #0x41beac
0041bea6 08c6       stm      r6!, {r3}
0041bea8 013a       subs     r2, #1
0041beaa fae7       b        #0x41bea2
0041beac d646       mov      lr, sl
0041beae 01f01e0a   and      sl, r1, #0x1e
0041beb2 0021       movs     r1, #0
0041beb4 0422       movs     r2, #4
0041beb6 0024       movs     r4, #0
0041beb8 8af01f0c   eor      ip, sl, #0x1f
0041bebc 0025       movs     r5, #0
0041bebe 1306       lsls     r3, r2, #0x18
0041bec0 0ad0       beq      #0x41bed8
0041bec2 4358       ldr      r3, [r0, r1]
0041bec4 013a       subs     r2, #1
0041bec6 03fa0af5   lsl.w    r5, r3, sl
0041beca 5b08       lsrs     r3, r3, #1
0041becc 2c43       orrs     r4, r5
0041bece 7450       str      r4, [r6, r1]
0041bed0 23fa0cf4   lsr.w    r4, r3, ip
0041bed4 0431       adds     r1, #4
0041bed6 f1e7       b        #0x41bebc
0041bed8 54ea0500   orrs.w   r0, r4, r5
0041bedc 18bf       it       ne
0041bede 7450       strne    r4, [r6, r1]
0041bee0 7446       mov      r4, lr
0041bee2 dbf80000   ldr.w    r0, [fp]
0041bee6 009a       ldr      r2, [sp]
0041bee8 0a21       movs     r1, #0xa
0041beea 801a       subs     r0, r0, r2
0041beec dbf80420   ldr.w    r2, [fp, #4]
0041bef0 019b       ldr      r3, [sp, #4]
0041bef2 a0fb0101   umull    r0, r1, r0, r1
0041bef6 9a41       sbcs     r2, r3
0041bef8 0023       movs     r3, #0
0041befa 02eb8202   add.w    r2, r2, r2, lsl #2
0041befe 3ff004fb   bl       #0x45b50a
0041bf02 98f80010   ldrb.w   r1, [r8]
0041bf06 c0ea0140   pkhbt    r0, r0, r1, lsl #0x10
0041bf0a fe21       movs     r1, #0xfe
0041bf0c 40ea0962   orr.w    r2, r0, sb, lsl #24
0041bf10 0298       ldr      r0, [sp, #8]
0041bf12 40ea0420   orr.w    r0, r0, r4, lsl #8
0041bf16 40ea0a43   orr.w    r3, r0, sl, lsl #16
0041bf1a 1348       ldr      r0, [pc, #0x4c] ; [0x41bf68]=0x10041bf5
0041bf1c 03b0       add      sp, #0xc
0041bf1e bde8000f   pop.w    {r8, sb, sl, fp}
0041bf22 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0041bf26 18f09bb9   b.w      #0x434260
0041bf2a 0948       ldr      r0, [pc, #0x24] ; [0x41bf50]=0x46dfbe 'hmd_pkt.c'
0041bf2c 0f4a       ldr      r2, [pc, #0x3c] ; [0x41bf6c]=0x4700bb
0041bf2e 40f60131   movw     r1, #0xb01
0041bf32 1bf047fb   bl       #0x4375c4
0041bf36 00bf       nop      
0041bf38 1820       movs     r0, #0x18
0041bf3a 0040       ands     r0, r0
0041bf3c 00fe0300   cdp2     p0, #0, c0, c0, c3, #0
0041bf40 6c09       lsrs     r4, r5, #5
0041bf42 f93a       subs     r2, #0xf9
0041bf44 b80f       lsrs     r0, r7, #0x1e
0041bf46 0010       asrs     r0, r0, #0x20
0041bf48 fc13       asrs     r4, r7, #0xf
0041bf4a 0010       asrs     r0, r0, #0x20
0041bf4c 885b       ldrh     r0, [r1, r6]
0041bf4e 0010       asrs     r0, r0, #0x20
0041bf50 bedf       svc      #0xbe
0041bf52 4600       lsls     r6, r0, #1
0041bf54 59e0       b        #0x41c00a
0041bf56 4600       lsls     r6, r0, #1
0041bf58 2087       strh     r0, [r4, #0x38]
0041bf5a 4600       lsls     r6, r0, #1
0041bf5c 6187       strh     r1, [r4, #0x3a]
0041bf5e 4600       lsls     r6, r0, #1
0041bf60 2085       strh     r0, [r4, #0x28]
0041bf62 4600       lsls     r6, r0, #1
0041bf64 e81b       subs     r0, r5, r7
0041bf66 0010       asrs     r0, r0, #0x20
0041bf68 f51b       subs     r5, r6, r7
0041bf6a 0410       asrs     r4, r0, #0x20
0041bf6c bb00       lsls     r3, r7, #2
0041bf6e 4700       lsls     r7, r0, #1
0041bf70 0328       cmp      r0, #3
0041bf72 13d8       bhi      #0x41bf9c
0041bf74 0246       mov      r2, r0
0041bf76 4ff40060   mov.w    r0, #0x800
0041bf7a dfe802f0   tbb      [pc, r2] ; [0x41bf7c]=0x204f002
0041bf7e 0402       lsls     r4, r0, #8
0041bf80 0508       lsrs     r5, r0, #0x20
0041bf82 4ff48050   mov.w    r0, #0x1000
0041bf86 7047       bx       lr
0041bf88 4ff40050   mov.w    r0, #0x2000
0041bf8c 7047       bx       lr
0041bf8e 4ff40050   mov.w    r0, #0x2000
0041bf92 0129       cmp      r1, #1
0041bf94 08bf       it       eq
0041bf96 4ff48040   moveq.w  r0, #0x4000
0041bf9a 7047       bx       lr
0041bf9c 80b5       push     {r7, lr}
0041bf9e 6f46       mov      r7, sp
0041bfa0 0248       ldr      r0, [pc, #8] ; [0x41bfac]=0x46e091 'hwacc.c'
0041bfa2 034a       ldr      r2, [pc, #0xc] ; [0x41bfb0]=0x4700bb
0041bfa4 40f29911   movw     r1, #0x199
0041bfa8 1bf00cfb   bl       #0x4375c4
0041bfac 91e0       b        #0x41c0d2
0041bfae 4600       lsls     r6, r0, #1
0041bfb0 bb00       lsls     r3, r7, #2
0041bfb2 4700       lsls     r7, r0, #1
0041bfb4 f0b5       push     {r4, r5, r6, r7, lr}
0041bfb6 03af       add      r7, sp, #0xc
0041bfb8 4df804bd   str      fp, [sp, #-0x4]!
0041bfbc 6c4e       ldr      r6, [pc, #0x1b0] ; [0x41c170]=0x1003fed0
0041bfbe 0446       mov      r4, r0
0041bfc0 b6f84800   ldrh.w   r0, [r6, #0x48]
0041bfc4 318f       ldrh     r1, [r6, #0x38]
0041bfc6 b6f84e30   ldrh.w   r3, [r6, #0x4e]
0041bfca 41ea0042   orr.w    r2, r1, r0, lsl #16
0041bfce 96f84b10   ldrb.w   r1, [r6, #0x4b]
0041bfd2 96f84a00   ldrb.w   r0, [r6, #0x4a]
0041bfd6 43ea0141   orr.w    r1, r3, r1, lsl #16
0041bfda 41ea0063   orr.w    r3, r1, r0, lsl #24
0041bfde 6548       ldr      r0, [pc, #0x194] ; [0x41c174]=0x10041c48
0041bfe0 fa21       movs     r1, #0xfa
0041bfe2 18f03df9   bl       #0x434260
0041bfe6 0020       movs     r0, #0
0041bfe8 634d       ldr      r5, [pc, #0x18c] ; [0x41c178]=0x1002a628
0041bfea 002c       cmp      r4, #0
0041bfec a861       str      r0, [r5, #0x18]
0041bfee 00f08d80   beq.w    #0x41c10c
0041bff2 2861       str      r0, [r5, #0x10]
0041bff4 306c       ldr      r0, [r6, #0x40]
0041bff6 811e       subs     r1, r0, #2
0041bff8 0229       cmp      r1, #2
0041bffa 06d3       blo      #0x41c00a
0041bffc 0128       cmp      r0, #1
0041bffe 06d0       beq      #0x41c00e
0041c000 0428       cmp      r0, #4
0041c002 40f0a280   bne.w    #0x41c14a
0041c006 0020       movs     r0, #0
0041c008 00e0       b        #0x41c00c
0041c00a 0120       movs     r0, #1
0041c00c 6861       str      r0, [r5, #0x14]
0041c00e 4ff48060   mov.w    r0, #0x400
0041c012 a862       str      r0, [r5, #0x28]
0041c014 0020       movs     r0, #0
0041c016 a861       str      r0, [r5, #0x18]
0041c018 96f84e00   ldrb.w   r0, [r6, #0x4e]
0041c01c 0128       cmp      r0, #1
0041c01e 0ed1       bne      #0x41c03e
0041c020 308f       ldrh     r0, [r6, #0x38]
0041c022 fff784fb   bl       #0x41b72e
0041c026 96f84f10   ldrb.w   r1, [r6, #0x4f]
0041c02a 0129       cmp      r1, #1
0041c02c 19bf       ittee    ne
0041c02e 564a       ldrne    r2, [pc, #0x158] ; [0x41c188]=0x100026e8
0041c030 5649       ldrne    r1, [pc, #0x158] ; [0x41c18c]=0x10002ae8
0041c032 534a       ldreq    r2, [pc, #0x14c] ; [0x41c180]=0x10001ee8
0041c034 5349       ldreq    r1, [pc, #0x14c] ; [0x41c184]=0x100022e8
0041c036 0028       cmp      r0, #0
0041c038 18bf       it       ne
0041c03a 1146       movne    r1, r2
0041c03c 00e0       b        #0x41c040
0041c03e 4f49       ldr      r1, [pc, #0x13c] ; [0x41c17c]=0x10002ee8
0041c040 e962       str      r1, [r5, #0x2c]
0041c042 04f025fa   bl       #0x420490
0041c046 44f64841   movw     r1, #0x4c48
0041c04a 4158       ldr      r1, [r0, r1]
0041c04c 0029       cmp      r1, #0
0041c04e 5fd0       beq      #0x41c110
0041c050 b6f84810   ldrh.w   r1, [r6, #0x48]
0041c054 4e4a       ldr      r2, [pc, #0x138] ; [0x41c190]=0x10005b88
0041c056 96f84b30   ldrb.w   r3, [r6, #0x4b]
0041c05a 92f8a920   ldrb.w   r2, [r2, #0xa9]
0041c05e 01f07f01   and      r1, r1, #0x7f
0041c062 023a       subs     r2, #2
0041c064 b2fa82f2   clz      r2, r2
0041c068 5209       lsrs     r2, r2, #5
0041c06a 6bb1       cbz      r3, #0x41c088
0041c06c 6423       movs     r3, #0x64
0041c06e 01eb8101   add.w    r1, r1, r1, lsl #2
0041c072 12fb0300   smlabb   r0, r2, r3, r0
0041c076 00eb8100   add.w    r0, r0, r1, lsl #2
0041c07a 44f6dc51   movw     r1, #0x4ddc
0041c07e 4158       ldr      r1, [r0, r1]
0041c080 0020       movs     r0, #0
0041c082 2862       str      r0, [r5, #0x20]
0041c084 e961       str      r1, [r5, #0x1c]
0041c086 1de0       b        #0x41c0c4
0041c088 c823       movs     r3, #0xc8
0041c08a 01eb8101   add.w    r1, r1, r1, lsl #2
0041c08e 12fb0300   smlabb   r0, r2, r3, r0
0041c092 96f84a30   ldrb.w   r3, [r6, #0x4a]
0041c096 00ebc100   add.w    r0, r0, r1, lsl #3
0041c09a 44f64c41   movw     r1, #0x4c4c
0041c09e 0844       add      r0, r1
0041c0a0 716c       ldr      r1, [r6, #0x44]
0041c0a2 0a78       ldrb     r2, [r1]
0041c0a4 00ebc202   add.w    r2, r0, r2, lsl #3
0041c0a8 52f82320   ldr.w    r2, [r2, r3, lsl #2]
0041c0ac ea61       str      r2, [r5, #0x1c]
0041c0ae 4a78       ldrb     r2, [r1, #1]
0041c0b0 00ebc202   add.w    r2, r0, r2, lsl #3
0041c0b4 52f82320   ldr.w    r2, [r2, r3, lsl #2]
0041c0b8 2a62       str      r2, [r5, #0x20]
0041c0ba 8978       ldrb     r1, [r1, #2]
0041c0bc 00ebc100   add.w    r0, r0, r1, lsl #3
0041c0c0 50f82300   ldr.w    r0, [r0, r3, lsl #2]
0041c0c4 6862       str      r0, [r5, #0x24]
0041c0c6 6869       ldr      r0, [r5, #0x14]
0041c0c8 48b1       cbz      r0, #0x41c0de
0041c0ca 0128       cmp      r0, #1
0041c0cc 2cd1       bne      #0x41c128
0041c0ce 2869       ldr      r0, [r5, #0x10]
0041c0d0 0128       cmp      r0, #1
0041c0d2 12d0       beq      #0x41c0fa
0041c0d4 0028       cmp      r0, #0
0041c0d6 3ed1       bne      #0x41c156
0041c0d8 a869       ldr      r0, [r5, #0x18]
0041c0da 0221       movs     r1, #2
0041c0dc 0fe0       b        #0x41c0fe
0041c0de 2969       ldr      r1, [r5, #0x10]
0041c0e0 aa69       ldr      r2, [r5, #0x18]
0041c0e2 42f00200   orr      r0, r2, #2
0041c0e6 0129       cmp      r1, #1
0041c0e8 a861       str      r0, [r5, #0x18]
0041c0ea 03d0       beq      #0x41c0f4
0041c0ec c9bb       cbnz     r1, #0x41c162
0041c0ee 20f00100   bic      r0, r0, #1
0041c0f2 06e0       b        #0x41c102
0041c0f4 42f00300   orr      r0, r2, #3
0041c0f8 03e0       b        #0x41c102
0041c0fa a869       ldr      r0, [r5, #0x18]
0041c0fc 0121       movs     r1, #1
0041c0fe 61f30100   bfi      r0, r1, #0, #2
0041c102 a861       str      r0, [r5, #0x18]
0041c104 00f00900   and      r0, r0, #9
0041c108 0828       cmp      r0, #8
0041c10a 07d0       beq      #0x41c11c
0041c10c 40f023b8   b.w      #0x45c156
0041c110 2048       ldr      r0, [pc, #0x80] ; [0x41c194]=0x46e091 'hwacc.c'
0041c112 224a       ldr      r2, [pc, #0x88] ; [0x41c19c]=0x46e099 'dsp_data->rx_tf_ref_ptr_valid'
0041c114 4ff4f071   mov.w    r1, #0x1e0
0041c118 1bf054fa   bl       #0x4375c4
0041c11c 1d48       ldr      r0, [pc, #0x74] ; [0x41c194]=0x46e091 'hwacc.c'
0041c11e 204a       ldr      r2, [pc, #0x80] ; [0x41c1a0]=0x46e0b7 '(eq_cfg->sc_td_eq_en && !eq_cfg->td_eq_en) == 0'
0041c120 4ff40b71   mov.w    r1, #0x22c
0041c124 1bf04efa   bl       #0x4375c4
0041c128 0228       cmp      r0, #2
0041c12a 0ad1       bne      #0x41c142
0041c12c a869       ldr      r0, [r5, #0x18]
0041c12e 0221       movs     r1, #2
0041c130 61f30100   bfi      r0, r1, #0, #2
0041c134 40f2ff11   movw     r1, #0x1ff
0041c138 a861       str      r0, [r5, #0x18]
0041c13a 1648       ldr      r0, [pc, #0x58] ; [0x41c194]=0x46e091 'hwacc.c'
0041c13c 164a       ldr      r2, [pc, #0x58] ; [0x41c198]=0x4700bb
0041c13e 1bf041fa   bl       #0x4375c4
0041c142 1448       ldr      r0, [pc, #0x50] ; [0x41c194]=0x46e091 'hwacc.c'
0041c144 144a       ldr      r2, [pc, #0x50] ; [0x41c198]=0x4700bb
0041c146 40f012ff   bl       #0x45cf6e
0041c14a 1248       ldr      r0, [pc, #0x48] ; [0x41c194]=0x46e091 'hwacc.c'
0041c14c 124a       ldr      r2, [pc, #0x48] ; [0x41c198]=0x4700bb
0041c14e 40f2c311   movw     r1, #0x1c3
0041c152 1bf037fa   bl       #0x4375c4
0041c156 0f48       ldr      r0, [pc, #0x3c] ; [0x41c194]=0x46e091 'hwacc.c'
0041c158 0f4a       ldr      r2, [pc, #0x3c] ; [0x41c198]=0x4700bb
0041c15a 40f22121   movw     r1, #0x221
0041c15e 1bf031fa   bl       #0x4375c4
0041c162 0c48       ldr      r0, [pc, #0x30] ; [0x41c194]=0x46e091 'hwacc.c'
0041c164 0c4a       ldr      r2, [pc, #0x30] ; [0x41c198]=0x4700bb
0041c166 40f20e21   movw     r1, #0x20e
0041c16a 1bf02bfa   bl       #0x4375c4
0041c16e 00bf       nop      
0041c170 d0fe0310   cdp2     p0, #0xd, c1, c0, c3, #0
0041c174 481c       adds     r0, r1, #1
0041c176 0410       asrs     r4, r0, #0x20
0041c178 28a6       adr      r6, #0xa0
0041c17a 0210       asrs     r2, r0, #0x20
0041c17c e82e       cmp      r6, #0xe8
0041c17e 0010       asrs     r0, r0, #0x20
0041c180 e81e       subs     r0, r5, #3
0041c182 0010       asrs     r0, r0, #0x20
0041c184 e822       movs     r2, #0xe8
0041c186 0010       asrs     r0, r0, #0x20
0041c188 e826       movs     r6, #0xe8
0041c18a 0010       asrs     r0, r0, #0x20
0041c18c e82a       cmp      r2, #0xe8
0041c18e 0010       asrs     r0, r0, #0x20
0041c190 885b       ldrh     r0, [r1, r6]
0041c192 0010       asrs     r0, r0, #0x20
0041c194 91e0       b        #0x41c2ba
0041c196 4600       lsls     r6, r0, #1
0041c198 bb00       lsls     r3, r7, #2
0041c19a 4700       lsls     r7, r0, #1
0041c19c 99e0       b        #0x41c2d2
0041c19e 4600       lsls     r6, r0, #1
0041c1a0 b7e0       b        #0x41c312
0041c1a2 4600       lsls     r6, r0, #1
0041c1a4 b0b5       push     {r4, r5, r7, lr}
0041c1a6 02af       add      r7, sp, #8
0041c1a8 0028       cmp      r0, #0
0041c1aa 00f08480   beq.w    #0x41c2b6
0041c1ae 454a       ldr      r2, [pc, #0x114] ; [0x41c2c4]=0x448000b0
0041c1b0 416d       ldr      r1, [r0, #0x54]
0041c1b2 d2f8ac31   ldr.w    r3, [r2, #0x1ac]
0041c1b6 8908       lsrs     r1, r1, #2
0041c1b8 61f39f03   bfi      r3, r1, #2, #0x1e
0041c1bc 4249       ldr      r1, [pc, #0x108] ; [0x41c2c8]=0x44108690
0041c1be c2f8ac31   str.w    r3, [r2, #0x1ac]
0041c1c2 836d       ldr      r3, [r0, #0x58]
0041c1c4 0c68       ldr      r4, [r1]
0041c1c6 63f31c74   bfi      r4, r3, #0x1c, #1
0041c1ca 0c60       str      r4, [r1]
0041c1cc 8368       ldr      r3, [r0, #8]
0041c1ce 7bb1       cbz      r3, #0x41c1f0
0041c1d0 4ff08944   mov.w    r4, #0x44800000
0041c1d4 2568       ldr      r5, [r4]
0041c1d6 63f38a25   bfi      r5, r3, #0xa, #1
0041c1da 2560       str      r5, [r4]
0041c1dc 8368       ldr      r3, [r0, #8]
0041c1de 0c68       ldr      r4, [r1]
0041c1e0 63f3db64   bfi      r4, r3, #0x1b, #1
0041c1e4 0c60       str      r4, [r1]
0041c1e6 037a       ldrb     r3, [r0, #8]
0041c1e8 0c68       ldr      r4, [r1]
0041c1ea 63f31864   bfi      r4, r3, #0x18, #1
0041c1ee 0c60       str      r4, [r1]
0041c1f0 c368       ldr      r3, [r0, #0xc]
0041c1f2 ebb3       cbz      r3, #0x41c270
0041c1f4 4369       ldr      r3, [r0, #0x14]
0041c1f6 d2f8a441   ldr.w    r4, [r2, #0x1a4]
0041c1fa 4ff6ff75   movw     r5, #0xffff
0041c1fe 63f39754   bfi      r4, r3, #0x16, #2
0041c202 3ff06dff   bl       #0x45c0e0
0041c206 63f39a64   bfi      r4, r3, #0x1a, #1
0041c20a 3ff069ff   bl       #0x45c0e0
0041c20e 5b08       lsrs     r3, r3, #1
0041c210 63f3db64   bfi      r4, r3, #0x1b, #1
0041c214 3ff064ff   bl       #0x45c0e0
0041c218 9b08       lsrs     r3, r3, #2
0041c21a 63f31864   bfi      r4, r3, #0x18, #1
0041c21e 3ff05fff   bl       #0x45c0e0
0041c222 db08       lsrs     r3, r3, #3
0041c224 63f35964   bfi      r4, r3, #0x19, #1
0041c228 c2f8a441   str.w    r4, [r2, #0x1a4]
0041c22c 038d       ldrh     r3, [r0, #0x28]
0041c22e 1468       ldr      r4, [r2]
0041c230 ac43       bics     r4, r5
0041c232 2344       add      r3, r4
0041c234 1360       str      r3, [r2]
0041c236 c36a       ldr      r3, [r0, #0x2c]
0041c238 946a       ldr      r4, [r2, #0x28]
0041c23a 9b08       lsrs     r3, r3, #2
0041c23c 63f39f04   bfi      r4, r3, #2, #0x1e
0041c240 9462       str      r4, [r2, #0x28]
0041c242 8024       movs     r4, #0x80
0041c244 1368       ldr      r3, [r2]
0041c246 64f31743   bfi      r3, r4, #0x10, #8
0041c24a 1360       str      r3, [r2]
0041c24c c369       ldr      r3, [r0, #0x1c]
0041c24e 946b       ldr      r4, [r2, #0x38]
0041c250 9b08       lsrs     r3, r3, #2
0041c252 63f39f04   bfi      r4, r3, #2, #0x1e
0041c256 9463       str      r4, [r2, #0x38]
0041c258 036a       ldr      r3, [r0, #0x20]
0041c25a d46b       ldr      r4, [r2, #0x3c]
0041c25c 9b08       lsrs     r3, r3, #2
0041c25e 63f3       .byte    0x63, 0xf3
