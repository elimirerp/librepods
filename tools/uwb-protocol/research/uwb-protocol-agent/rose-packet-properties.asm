0041b9dc f0b5       push     {r4, r5, r6, r7, lr}
0041b9de 03af       add      r7, sp, #0xc
0041b9e0 4df804bd   str      fp, [sp, #-0x4]!
0041b9e4 0c46       mov      r4, r1
0041b9e6 0546       mov      r5, r0
0041b9e8 80b2       uxth     r0, r0
0041b9ea 0421       movs     r1, #4
0041b9ec fff7b4fe   bl       #0x41b758
0041b9f0 70b1       cbz      r0, #0x41ba10
0041b9f2 084a       ldr      r2, [pc, #0x20] ; [0x41ba14]=0x10000fb8
0041b9f4 084e       ldr      r6, [pc, #0x20] ; [0x41ba18]=0x100013fc
0041b9f6 e9b2       uxtb     r1, r5
0041b9f8 9c23       movs     r3, #0x9c
0041b9fa 05f47f45   and      r5, r5, #0xff00
0041b9fe b5f5e06f   cmp.w    r5, #0x700
0041ba02 11fb0366   smlabb   r6, r1, r3, r6
0041ba06 08bf       it       eq
0041ba08 11fb0326   smlabbeq r6, r1, r3, r2
0041ba0c 3169       ldr      r1, [r6, #0x10]
0041ba0e 2160       str      r1, [r4]
0041ba10 40f0d6ba   b.w      #0x45bfc0
0041ba14 b80f       lsrs     r0, r7, #0x1e
0041ba16 0010       asrs     r0, r0, #0x20
0041ba18 fc13       asrs     r4, r7, #0xf
0041ba1a 0010       asrs     r0, r0, #0x20
0041ba1c f0b5       push     {r4, r5, r6, r7, lr}
0041ba1e 03af       add      r7, sp, #0xc
0041ba20 2de9000f   push.w   {r8, sb, sl, fp}
0041ba24 91b0       sub      sp, #0x44
0041ba26 1446       mov      r4, r2
0041ba28 b74a       ldr      r2, [pc, #0x2dc] ; [0x41bd08]=0x1003faf4
0041ba2a 8146       mov      sb, r0
0041ba2c 85b2       uxth     r5, r0
0041ba2e 9846       mov      r8, r3
0041ba30 8a46       mov      sl, r1
0041ba32 b2f86400   ldrh.w   r0, [r2, #0x64]
0041ba36 b54e       ldr      r6, [pc, #0x2d4] ; [0x41bd0c]=0x1003fbf0
0041ba38 b54b       ldr      r3, [pc, #0x2d4] ; [0x41bd10]=0x1003fc6c
0041ba3a a842       cmp      r0, r5
0041ba3c 07d1       bne      #0x41ba4e
0041ba3e b2f86600   ldrh.w   r0, [r2, #0x66]
0041ba42 5045       cmp      r0, sl
0041ba44 03d1       bne      #0x41ba4e
0041ba46 1968       ldr      r1, [r3]
0041ba48 0029       cmp      r1, #0
0041ba4a 40f03c81   bne.w    #0x41bcc6
0041ba4e 2846       mov      r0, r5
0041ba50 0821       movs     r1, #8
0041ba52 cde90f23   strd     r2, r3, [sp, #0x3c]
0041ba56 fff77ffe   bl       #0x41b758
0041ba5a 40b3       cbz      r0, #0x41baae
0041ba5c ad4a       ldr      r2, [pc, #0x2b4] ; [0x41bd14]=0x10000fb8
0041ba5e ae48       ldr      r0, [pc, #0x2b8] ; [0x41bd18]=0x100013fc
0041ba60 5ffa89f1   uxtb.w   r1, sb
0041ba64 9c23       movs     r3, #0x9c
0041ba66 09f47f45   and      r5, sb, #0xff00
0041ba6a b5f5e06f   cmp.w    r5, #0x700
0041ba6e 11fb0300   smlabb   r0, r1, r3, r0
0041ba72 08bf       it       eq
0041ba74 11fb0320   smlabbeq r0, r1, r3, r2
0041ba78 0268       ldr      r2, [r0]
0041ba7a 4579       ldrb     r5, [r0, #5]
0041ba7c c2f38943   ubfx     r3, r2, #0x12, #0xa
0041ba80 c2f30271   ubfx     r1, r2, #0x1c, #3
0041ba84 6ff35f22   bfc      r2, #9, #0x17
0041ba88 0132       adds     r2, #1
0041ba8a 0133       adds     r3, #1
0041ba8c 8a40       lsls     r2, r1
0041ba8e 01ee103a   vmov     s2, r3
0041ba92 00ee102a   vmov     s0, r2
0041ba96 b8ee411a   vcvt.f32.u32 s2, s2
0041ba9a ed06       lsls     r5, r5, #0x1b
0041ba9c b8ee400a   vcvt.f32.u32 s0, s0
0041baa0 81ee000a   vdiv.f32 s0, s2, s0
0041baa4 00f1bf80   bmi.w    #0x41bc26
0041baa8 9fed961a   vldr     s2, [pc, #0x258] ; [0x41bd04]=0x0
0041baac d9e0       b        #0x41bc62
0041baae 2846       mov      r0, r5
0041bab0 fff718fe   bl       #0x41b6e4
0041bab4 0028       cmp      r0, #0
0041bab6 00f01c81   beq.w    #0x41bcf2
0041baba 0d96       str      r6, [sp, #0x34]
0041babc cde90b84   strd     r8, r4, [sp, #0x2c]
0041bac0 280a       lsrs     r0, r5, #8
0041bac2 4ff0510c   mov.w    ip, #0x51
0041bac6 9549       ldr      r1, [pc, #0x254] ; [0x41bd1c]=0x4684f8
0041bac8 51f82000   ldr.w    r0, [r1, r0, lsl #2]
0041bacc 5ffa89f1   uxtb.w   r1, sb
0041bad0 c1ebc101   rsb      r1, r1, r1, lsl #3
0041bad4 00ebc103   add.w    r3, r0, r1, lsl #3
0041bad8 9868       ldr      r0, [r3, #8]
0041bada d968       ldr      r1, [r3, #0xc]
0041badc 904a       ldr      r2, [pc, #0x240] ; [0x41bd20]=0x467184
0041bade 525c       ldrb     r2, [r2, r1]
0041bae0 8418       adds     r4, r0, r2
0041bae2 0029       cmp      r1, #0
0041bae4 0a94       str      r4, [sp, #0x28]
0041bae6 08bf       it       eq
0041bae8 00eb5204   addeq.w  r4, r0, r2, lsr #1
0041baec 6ff00402   mvn      r2, #4
0041baf0 0021       movs     r1, #0
0041baf2 0994       str      r4, [sp, #0x24]
0041baf4 02eb1522   add.w    r2, r2, r5, lsr #8
0041baf8 0020       movs     r0, #0
0041bafa b5f5007f   cmp.w    r5, #0x200
0041bafe b2fa82f2   clz      r2, r2
0041bb02 38bf       it       lo
0041bb04 0121       movlo    r1, #1
0041bb06 5209       lsrs     r2, r2, #5
0041bb08 1143       orrs     r1, r2
0041bb0a 4ff05b02   mov.w    r2, #0x5b
0041bb0e 0891       str      r1, [sp, #0x20]
0041bb10 6ff00601   mvn      r1, #6
0041bb14 18bf       it       ne
0041bb16 4ff0400c   movne.w  ip, #0x40
0041bb1a 18bf       it       ne
0041bb1c 7f22       movne    r2, #0x7f
0041bb1e d3f82880   ldr.w    r8, [r3, #0x28]
0041bb22 93f820e0   ldrb.w   lr, [r3, #0x20]
0041bb26 01eb1521   add.w    r1, r1, r5, lsr #8
0041bb2a 0e91       str      r1, [sp, #0x38]
0041bb2c 197c       ldrb     r1, [r3, #0x10]
0041bb2e 0129       cmp      r1, #1
0041bb30 4ff00001   mov.w    r1, #0
0041bb34 20d1       bne      #0x41bb78
0041bb36 5446       mov      r4, sl
0041bb38 d3f814a0   ldr.w    sl, [r3, #0x14]
0041bb3c 9d69       ldr      r5, [r3, #0x18]
0041bb3e 1021       movs     r1, #0x10
0041bb40 de6a       ldr      r6, [r3, #0x2c]
0041bb42 4ff4007b   mov.w    fp, #0x200
0041bb46 a940       lsls     r1, r5
0041bb48 0af10105   add.w    r5, sl, #1
0041bb4c 2bfa06fb   lsr.w    fp, fp, r6
0041bb50 01fb05f6   mul      r6, r1, r5
0041bb54 06fb0bfa   mul      sl, r6, fp
0041bb58 0e9e       ldr      r6, [sp, #0x38]
0041bb5a 16f1020f   cmn.w    r6, #2
0041bb5e 38bf       it       lo
0041bb60 0120       movlo    r0, #1
0041bb62 00ea0e06   and.w    r6, r0, lr
0041bb66 86f00106   eor      r6, r6, #1
0041bb6a 0131       adds     r1, #1
0041bb6c 801b       subs     r0, r0, r6
0041bb6e 01fb0500   mla      r0, r1, r5, r0
0041bb72 4102       lsls     r1, r0, #9
0041bb74 5046       mov      r0, sl
0041bb76 a246       mov      sl, r4
0041bb78 0025       movs     r5, #0
0041bb7a 02fa08f6   lsl.w    r6, r2, r8
0041bb7e 0022       movs     r2, #0
0041bb80 bef1000f   cmp.w    lr, #0
0041bb84 3fd0       beq      #0x41bc06
0041bb86 0796       str      r6, [sp, #0x1c]
0041bb88 1e6b       ldr      r6, [r3, #0x30]
0041bb8a 0123       movs     r3, #1
0041bb8c 40f2491e   movw     lr, #0x149
0041bb90 ddf820b0   ldr.w    fp, [sp, #0x20]
0041bb94 5446       mov      r4, sl
0041bb96 0eebca0e   add.w    lr, lr, sl, lsl #3
0041bb9a 4ff4a57a   mov.w    sl, #0x14a
0041bb9e f27b       ldrb     r2, [r6, #0xf]
0041bba0 d6f80080   ldr.w    r8, [r6]
0041bba4 03fa02f2   lsl.w    r2, r3, r2
0041bba8 2a23       movs     r3, #0x2a
0041bbaa 0692       str      r2, [sp, #0x18]
0041bbac 727c       ldrb     r2, [r6, #0x11]
0041bbae bbf1000f   cmp.w    fp, #0
0041bbb2 0592       str      r2, [sp, #0x14]
0041bbb4 327b       ldrb     r2, [r6, #0xc]
0041bbb6 b668       ldr      r6, [r6, #8]
0041bbb8 0492       str      r2, [sp, #0x10]
0041bbba befbfaf2   udiv     r2, lr, sl
0041bbbe 18bf       it       ne
0041bbc0 1523       movne    r3, #0x15
0041bbc2 002e       cmp      r6, #0
0041bbc4 a246       mov      sl, r4
0041bbc6 02eb4202   add.w    r2, r2, r2, lsl #1
0041bbca 08bf       it       eq
0041bbcc 1501       lsleq    r5, r2, #4
0041bbce e200       lsls     r2, r4, #3
0041bbd0 0632       adds     r2, #6
0041bbd2 b8f1000f   cmp.w    r8, #0
0041bbd6 0cbf       ite      eq
0041bbd8 e200       lsleq    r2, r4, #3
0041bbda 1923       movne    r3, #0x19
0041bbdc 002c       cmp      r4, #0
0041bbde 18bf       it       ne
0041bbe0 1544       addne    r5, r2
0041bbe2 059a       ldr      r2, [sp, #0x14]
0041bbe4 049c       ldr      r4, [sp, #0x10]
0041bbe6 bbf1000f   cmp.w    fp, #0
0041bbea 05fa02f2   lsl.w    r2, r5, r2
0041bbee 03fa04f3   lsl.w    r3, r3, r4
0041bbf2 1a44       add      r2, r3
0041bbf4 069b       ldr      r3, [sp, #0x18]
0041bbf6 0cbf       ite      eq
0041bbf8 0225       moveq    r5, #2
0041bbfa 0825       movne    r5, #8
0041bbfc 079e       ldr      r6, [sp, #0x1c]
0041bbfe 92fbf3f3   sdiv     r3, r2, r3
0041bc02 93fbf5f5   sdiv     r5, r3, r5
0041bc06 0a9c       ldr      r4, [sp, #0x28]
0041bc08 099b       ldr      r3, [sp, #0x24]
0041bc0a 6643       muls     r6, r4, r6
0041bc0c 0e9c       ldr      r4, [sp, #0x38]
0041bc0e 03fb0cf3   mul      r3, r3, ip
0041bc12 14f1020f   cmn.w    r4, #2
0041bc16 2fd2       bhs      #0x41bc78
0041bc18 3144       add      r1, r6
0041bc1a 1844       add      r0, r3
0041bc1c 1144       add      r1, r2
0041bc1e 109a       ldr      r2, [sp, #0x40]
0041bc20 2844       add      r0, r5
0041bc22 1160       str      r1, [r2]
0041bc24 46e0       b        #0x41bcb4
0041bc26 c568       ldr      r5, [r0, #0xc]
0041bc28 b446       mov      ip, r6
0041bc2a 0669       ldr      r6, [r0, #0x10]
0041bc2c 1020       movs     r0, #0x10
0041bc2e c1f10901   rsb.w    r1, r1, #9
0041bc32 0135       adds     r5, #1
0041bc34 b040       lsls     r0, r6
0041bc36 05fa01f1   lsl.w    r1, r5, r1
0041bc3a 4843       muls     r0, r1, r0
0041bc3c 4ff40051   mov.w    r1, #0x2000
0041bc40 b140       lsls     r1, r6
0041bc42 01ee100a   vmov     s2, r0
0041bc46 6646       mov      r6, ip
0041bc48 01f50071   add.w    r1, r1, #0x200
0041bc4c b8eec11a   vcvt.f32.s32 s2, s2
0041bc50 6943       muls     r1, r5, r1
0041bc52 a1f50071   sub.w    r1, r1, #0x200
0041bc56 02ee101a   vmov     s4, r1
0041bc5a b8eec22a   vcvt.f32.s32 s4, s4
0041bc5e 81ee021a   vdiv.f32 s2, s2, s4
0041bc62 b4ee410a   vcmp.f32 s0, s2
0041bc66 f1ee10fa   vmrs     apsr_nzcv, fpscr
0041bc6a c8bf       it       gt
0041bc6c 1146       movgt    r1, r2
0041bc6e 109a       ldr      r2, [sp, #0x40]
0041bc70 1160       str      r1, [r2]
0041bc72 c8bf       it       gt
0041bc74 1846       movgt    r0, r3
0041bc76 20e0       b        #0x41bcba
0041bc78 00ee101a   vmov     s0, r1
0041bc7c 01ee100a   vmov     s2, r0
0041bc80 02ee103a   vmov     s4, r3
0041bc84 b8eec00a   vcvt.f32.s32 s0, s0
0041bc88 b8eec11a   vcvt.f32.s32 s2, s2
0041bc8c b8eec22a   vcvt.f32.s32 s4, s4
0041bc90 81ee000a   vdiv.f32 s0, s2, s0
0041bc94 01ee106a   vmov     s2, r6
0041bc98 b8eec11a   vcvt.f32.s32 s2, s2
0041bc9c 82ee011a   vdiv.f32 s2, s4, s2
0041bca0 b4ee401a   vcmp.f32 s2, s0
0041bca4 f1ee10fa   vmrs     apsr_nzcv, fpscr
0041bca8 c8bf       it       gt
0041bcaa 3146       movgt    r1, r6
0041bcac 109a       ldr      r2, [sp, #0x40]
0041bcae 1160       str      r1, [r2]
0041bcb0 c8bf       it       gt
0041bcb2 1846       movgt    r0, r3
0041bcb4 0d9e       ldr      r6, [sp, #0x34]
0041bcb6 dde90b84   ldrd     r8, r4, [sp, #0x2c]
0041bcba 0f9a       ldr      r2, [sp, #0x3c]
0041bcbc b067       str      r0, [r6, #0x78]
0041bcbe a2f866a0   strh.w   sl, [r2, #0x66]
0041bcc2 a2f86490   strh.w   sb, [r2, #0x64]
0041bcc6 0cb1       cbz      r4, #0x41bccc
0041bcc8 b06f       ldr      r0, [r6, #0x78]
0041bcca 2060       str      r0, [r4]
0041bccc b8f1000f   cmp.w    r8, #0
0041bcd0 18bf       it       ne
0041bcd2 c8f80010   strne.w  r1, [r8]
0041bcd6 00ee101a   vmov     s0, r1
0041bcda 96ed1e1a   vldr     s2, [r6, #0x78]
0041bcde b8ee400a   vcvt.f32.u32 s0, s0
0041bce2 b8ee411a   vcvt.f32.u32 s2, s2
0041bce6 81ee000a   vdiv.f32 s0, s2, s0
0041bcea 11b0       add      sp, #0x44
0041bcec bde8000f   pop.w    {r8, sb, sl, fp}
0041bcf0 f0bd       pop      {r4, r5, r6, r7, pc}
0041bcf2 0020       movs     r0, #0
0041bcf4 40f6a511   movw     r1, #0x9a5
0041bcf8 41f0c5fb   bl       #0x45d486
0041bcfc 0948       ldr      r0, [pc, #0x24] ; [0x41bd24]=0x46dfbe 'hmd_pkt.c'
0041bcfe 0a4a       ldr      r2, [pc, #0x28] ; [0x41bd28]=0x46e075 'hmd_pkt_valid_uwb(pkt_type)'
0041bd00 1bf06afc   bl       #0x4375d8
0041bd04 0000       movs     r0, r0
0041bd06 0000       movs     r0, r0
0041bd08 f4fa       .byte    0xf4, 0xfa
0041bd0a 0310       asrs     r3, r0, #0x20
0041bd0c f0fb       .byte    0xf0, 0xfb
0041bd0e 0310       asrs     r3, r0, #0x20
0041bd10 6cfc0310   stc2l    p0, c1, [ip], #-0xc
0041bd14 b80f       lsrs     r0, r7, #0x1e
0041bd16 0010       asrs     r0, r0, #0x20
0041bd18 fc13       asrs     r4, r7, #0xf
0041bd1a 0010       asrs     r0, r0, #0x20
0041bd1c f884       strh     r0, [r7, #0x26]
0041bd1e 4600       lsls     r6, r0, #1
0041bd20 8471       strb     r4, [r0, #6]
0041bd22 4600       lsls     r6, r0, #1
0041bd24 bedf       svc      #0xbe
0041bd26 4600       lsls     r6, r0, #1
0041bd28 75e0       b        #0x41be16
0041bd2a 4600       lsls     r6, r0, #1
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
0041bd42 11fb       .byte    0x11, 0xfb
