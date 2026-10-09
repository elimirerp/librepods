004197cc 70b5       push     {r4, r5, r6, lr}
004197ce 2de90003   push.w   {r8, sb}
004197d2 c2f30728   ubfx     r8, r2, #8, #8
004197d6 d2b2       uxtb     r2, r2
004197d8 b8f10504   subs.w   r4, r8, #5
004197dc c2ebc202   rsb      r2, r2, r2, lsl #3
004197e0 18bf       it       ne
004197e2 0124       movne    r4, #1
004197e4 0026       movs     r6, #0
004197e6 b8f1010f   cmp.w    r8, #1
004197ea 88bf       it       hi
004197ec 0126       movhi    r6, #1
004197ee 8d69       ldr      r5, [r1, #0x18]
004197f0 d1f800e0   ldr.w    lr, [r1]
004197f4 d1f81cc0   ldr.w    ip, [r1, #0x1c]
004197f8 3440       ands     r4, r6
004197fa 4e68       ldr      r6, [r1, #4]
004197fc 25f00105   bic      r5, r5, #1
00419800 05eb0409   add.w    sb, r5, r4
00419804 40f6ff74   movw     r4, #0xfff
00419808 4ff47e65   mov.w    r5, #0xfe0
0041980c c1f81890   str.w    sb, [r1, #0x18]
00419810 18bf       it       ne
00419812 4ff43665   movne.w  r5, #0xb60
00419816 1733       adds     r3, #0x17
00419818 2eea0404   bic.w    r4, lr, r4
0041981c 2c44       add      r4, r5
0041981e 03f01f03   and      r3, r3, #0x1f
00419822 b8f1000f   cmp.w    r8, #0
00419826 04eb030e   add.w    lr, r4, r3
0041982a 2cf47044   bic      r4, ip, #0xf000
0041982e c1f800e0   str.w    lr, [r1]
00419832 634b       ldr      r3, [pc, #0x18c] ; [0x4199c0]=0x4684f8
00419834 53f82830   ldr.w    r3, [r3, r8, lsl #2]
00419838 03ebc202   add.w    r2, r3, r2, lsl #3
0041983c 136b       ldr      r3, [r2, #0x30]
0041983e 1b68       ldr      r3, [r3]
00419840 63f38209   bfi      sb, r3, #2, #1
00419844 c1f81890   str.w    sb, [r1, #0x18]
00419848 136b       ldr      r3, [r2, #0x30]
0041984a 5b68       ldr      r3, [r3, #4]
0041984c 63f39a66   bfi      r6, r3, #0x1a, #1
00419850 4e60       str      r6, [r1, #4]
00419852 136b       ldr      r3, [r2, #0x30]
00419854 9b68       ldr      r3, [r3, #8]
00419856 63f34109   bfi      sb, r3, #1, #1
0041985a c1f81890   str.w    sb, [r1, #0x18]
0041985e 136b       ldr      r3, [r2, #0x30]
00419860 1b7b       ldrb     r3, [r3, #0xc]
00419862 03f00f03   and      r3, r3, #0xf
00419866 44ea0333   orr.w    r3, r4, r3, lsl #12
0041986a cb61       str      r3, [r1, #0x1c]
0041986c 23f48033   bic      r3, r3, #0x10000
00419870 146b       ldr      r4, [r2, #0x30]
00419872 647b       ldrb     r4, [r4, #0xd]
00419874 64f30306   bfi      r6, r4, #0, #4
00419878 4e60       str      r6, [r1, #4]
0041987a 146b       ldr      r4, [r2, #0x30]
0041987c a47b       ldrb     r4, [r4, #0xe]
0041987e 64f30616   bfi      r6, r4, #4, #3
00419882 4e60       str      r6, [r1, #4]
00419884 146b       ldr      r4, [r2, #0x30]
00419886 e47b       ldrb     r4, [r4, #0xf]
00419888 04f00104   and      r4, r4, #1
0041988c 43ea0443   orr.w    r3, r3, r4, lsl #16
00419890 cb61       str      r3, [r1, #0x1c]
00419892 23f40033   bic      r3, r3, #0x20000
00419896 146b       ldr      r4, [r2, #0x30]
00419898 247c       ldrb     r4, [r4, #0x10]
0041989a 04f00104   and      r4, r4, #1
0041989e 43ea4443   orr.w    r3, r3, r4, lsl #17
004198a2 cb61       str      r3, [r1, #0x1c]
004198a4 23f47013   bic      r3, r3, #0x3c0000
004198a8 146b       ldr      r4, [r2, #0x30]
004198aa 647c       ldrb     r4, [r4, #0x11]
004198ac 04f00f04   and      r4, r4, #0xf
004198b0 43ea8444   orr.w    r4, r3, r4, lsl #18
004198b4 26f47053   bic      r3, r6, #0x3c00
004198b8 4e69       ldr      r6, [r1, #0x14]
004198ba cc61       str      r4, [r1, #0x1c]
004198bc 24f48004   bic      r4, r4, #0x400000
004198c0 156b       ldr      r5, [r2, #0x30]
004198c2 26f06046   bic      r6, r6, #0xe0000000
004198c6 ad7c       ldrb     r5, [r5, #0x12]
004198c8 05f00f05   and      r5, r5, #0xf
004198cc 43ea8523   orr.w    r3, r3, r5, lsl #10
004198d0 4b60       str      r3, [r1, #4]
004198d2 23f4e033   bic      r3, r3, #0x1c000
004198d6 156b       ldr      r5, [r2, #0x30]
004198d8 ed7c       ldrb     r5, [r5, #0x13]
004198da 05f00705   and      r5, r5, #7
004198de 43ea8533   orr.w    r3, r3, r5, lsl #14
004198e2 4b60       str      r3, [r1, #4]
004198e4 156b       ldr      r5, [r2, #0x30]
004198e6 2d7d       ldrb     r5, [r5, #0x14]
004198e8 05f00105   and      r5, r5, #1
004198ec 44ea8554   orr.w    r4, r4, r5, lsl #22
004198f0 cc61       str      r4, [r1, #0x1c]
004198f2 24f0e044   bic      r4, r4, #0x70000000
004198f6 156b       ldr      r5, [r2, #0x30]
004198f8 6d7d       ldrb     r5, [r5, #0x15]
004198fa 05f00705   and      r5, r5, #7
004198fe 44ea0574   orr.w    r4, r4, r5, lsl #28
00419902 cc61       str      r4, [r1, #0x1c]
00419904 24f07864   bic      r4, r4, #0xf800000
00419908 156b       ldr      r5, [r2, #0x30]
0041990a ad7d       ldrb     r5, [r5, #0x16]
0041990c 46ea457c   orr.w    ip, r6, r5, lsl #29
00419910 c1f814c0   str.w    ip, [r1, #0x14]
00419914 156b       ldr      r5, [r2, #0x30]
00419916 ed7d       ldrb     r5, [r5, #0x17]
00419918 05f01f05   and      r5, r5, #0x1f
0041991c 44eac554   orr.w    r4, r4, r5, lsl #23
00419920 cc61       str      r4, [r1, #0x1c]
00419922 5468       ldr      r4, [r2, #4]
00419924 64f3d443   bfi      r3, r4, #0x13, #2
00419928 4b60       str      r3, [r1, #4]
0041992a 9468       ldr      r4, [r2, #8]
0041992c ceea0446   pkhbt    r6, lr, r4, lsl #0x10
00419930 0e60       str      r6, [r1]
00419932 01d0       beq      #0x419938
00419934 d568       ldr      r5, [r2, #0xc]
00419936 0de0       b        #0x419954
00419938 224c       ldr      r4, [pc, #0x88] ; [0x4199c4]=0x10005b88
0041993a 94f83d50   ldrb.w   r5, [r4, #0x3d]
0041993e ff2d       cmp      r5, #0xff
00419940 05d1       bne      #0x41994e
00419942 006a       ldr      r0, [r0, #0x20]
00419944 c407       lsls     r4, r0, #0x1f
00419946 f5d0       beq      #0x419934
00419948 00f00205   and      r5, r0, #2
0041994c 02e0       b        #0x419954
0041994e 002d       cmp      r5, #0
00419950 18bf       it       ne
00419952 0225       movne    r5, #2
00419954 65f3d953   bfi      r3, r5, #0x17, #3
00419958 4b60       str      r3, [r1, #4]
0041995a 5069       ldr      r0, [r2, #0x14]
0041995c 60f3c409   bfi      sb, r0, #3, #2
00419960 c1f81890   str.w    sb, [r1, #0x18]
00419964 9069       ldr      r0, [r2, #0x18]
00419966 60f34619   bfi      sb, r0, #5, #2
0041996a c1f81890   str.w    sb, [r1, #0x18]
0041996e d069       ldr      r0, [r2, #0x1c]
00419970 8881       strh     r0, [r1, #0xc]
00419972 506a       ldr      r0, [r2, #0x24]
00419974 60f35243   bfi      r3, r0, #0x11, #2
00419978 4b60       str      r3, [r1, #4]
0041997a 906a       ldr      r0, [r2, #0x28]
0041997c 60f30e36   bfi      r6, r0, #0xc, #3
00419980 0e60       str      r6, [r1]
00419982 d06a       ldr      r0, [r2, #0x2c]
00419984 60f3c913   bfi      r3, r0, #7, #3
00419988 886d       ldr      r0, [r1, #0x58]
0041998a 4b60       str      r3, [r1, #4]
0041998c 536b       ldr      r3, [r2, #0x34]
0041998e 63f30a00   bfi      r0, r3, #0, #0xb
00419992 8865       str      r0, [r1, #0x58]
00419994 0020       movs     r0, #0
00419996 127c       ldrb     r2, [r2, #0x10]
00419998 52b9       cbnz     r2, #0x4199b0
0041999a 8a68       ldr      r2, [r1, #8]
0041999c 4ff0ff33   mov.w    r3, #-1
004199a0 03eb5273   add.w    r3, r3, r2, lsr #29
004199a4 83ea5272   eor.w    r2, r3, r2, lsr #29
004199a8 9a42       cmp      r2, r3
004199aa 88bf       it       hi
004199ac 4ff08050   movhi.w  r0, #0x10000000
004199b0 2cf08052   bic      r2, ip, #0x10000000
004199b4 1043       orrs     r0, r2
004199b6 4861       str      r0, [r1, #0x14]
004199b8 bde80003   pop.w    {r8, sb}
004199bc 70bd       pop      {r4, r5, r6, pc}
004199be 00bf       nop      
004199c0 f884       strh     r0, [r7, #0x26]
004199c2 4600       lsls     r6, r0, #1
004199c4 885b       ldrh     r0, [r1, r6]
004199c6 0010       asrs     r0, r0, #0x20
004199c8 f0b5       push     {r4, r5, r6, r7, lr}
004199ca 03af       add      r7, sp, #0xc
004199cc 2de9000b   push.w   {r8, sb, fp}
004199d0 174c       ldr      r4, [pc, #0x5c] ; [0x419a30]=0x40002018
004199d2 2568       ldr      r5, [r4]
004199d4 6468       ldr      r4, [r4, #4]
004199d6 5219       adds     r2, r2, r5
004199d8 6341       adcs     r3, r4
004199da 12f56068   adds.w   r8, r2, #0xe00
004199de 40f20d72   movw     r2, #0x70d
004199e2 43f10005   adc      r5, r3, #0
004199e6 861a       subs     r6, r0, r2
004199e8 61f10004   sbc      r4, r1, #0
004199ec b8eb0600   subs.w   r0, r8, r6
004199f0 75eb0400   sbcs.w   r0, r5, r4
004199f4 12d3       blo      #0x419a1c
004199f6 0f48       ldr      r0, [pc, #0x3c] ; [0x419a34]=0x1004181a
004199f8 0f49       ldr      r1, [pc, #0x3c] ; [0x419a38]=0x434261
004199fa 4246       mov      r2, r8
004199fc 2b46       mov      r3, r5
004199fe 8946       mov      sb, r1
00419a00 8021       movs     r1, #0x80
00419a02 c847       blx      sb
00419a04 0d48       ldr      r0, [pc, #0x34] ; [0x419a3c]=0x10041841
00419a06 8021       movs     r1, #0x80
00419a08 3246       mov      r2, r6
00419a0a 2346       mov      r3, r4
00419a0c c847       blx      sb
00419a0e b8eb0602   subs.w   r2, r8, r6
00419a12 0b48       ldr      r0, [pc, #0x2c] ; [0x419a40]=0x10041868
00419a14 65eb0403   sbc.w    r3, r5, r4
00419a18 8021       movs     r1, #0x80
00419a1a c847       blx      sb
00419a1c 0020       movs     r0, #0
00419a1e b8eb0601   subs.w   r1, r8, r6
00419a22 75eb0401   sbcs.w   r1, r5, r4
00419a26 28bf       it       hs
00419a28 0120       movhs    r0, #1
00419a2a 42f0dcbb   b.w      #0x45c1e6
00419a2e 00bf       nop      
00419a30 1820       movs     r0, #0x18
00419a32 0040       ands     r0, r0
00419a34 1a18       adds     r2, r3, r0
00419a36 0410       asrs     r4, r0, #0x20
00419a38 6142       rsbs     r1, r4, #0
00419a3a 4300       lsls     r3, r0, #1
00419a3c 4118       adds     r1, r0, r1
00419a3e 0410       asrs     r4, r0, #0x20
00419a40 6818       adds     r0, r5, r1
00419a42 0410       asrs     r4, r0, #0x20
00419a44 f0b5       push     {r4, r5, r6, r7, lr}
00419a46 03af       add      r7, sp, #0xc
00419a48 2de9000b   push.w   {r8, sb, fp}
00419a4c f1f7a6fd   bl       #0x40b59c
00419a50 8046       mov      r8, r0
00419a52 06f01dfd   bl       #0x420490
00419a56 46f63811   movw     r1, #0x6938
00419a5a 50f80190   ldr.w    sb, [r0, r1]
00419a5e 46f63c11   movw     r1, #0x693c
00419a62 465a       ldrh     r6, [r0, r1]
00419a64 5a4c       ldr      r4, [pc, #0x168] ; [0x419bd0]=0x1002a508
00419a66 617f       ldrb     r1, [r4, #0x1d]
00419a68 1029       cmp      r1, #0x10
00419a6a 59d1       bne      #0x419b20
00419a6c a16a       ldr      r1, [r4, #0x28]
00419a6e 0723       movs     r3, #7
00419a70 4ff6ff75   movw     r5, #0xffff
00419a74 8968       ldr      r1, [r1, #8]
00419a76 8a6d       ldr      r2, [r1, #0x58]
00419a78 63f3de62   bfi      r2, r3, #0x1b, #4
00419a7c 0123       movs     r3, #1
00419a7e 8a65       str      r2, [r1, #0x58]
00419a80 4f49       ldr      r1, [pc, #0x13c] ; [0x419bc0]=0x441086dc
00419a82 0a68       ldr      r2, [r1]
00419a84 63f30102   bfi      r2, r3, #0, #2
00419a88 0a60       str      r2, [r1]
00419a8a 0a68       ldr      r2, [r1]
00419a8c 63f38302   bfi      r2, r3, #2, #2
00419a90 0a60       str      r2, [r1]
00419a92 0a68       ldr      r2, [r1]
00419a94 63f30512   bfi      r2, r3, #4, #2
00419a98 0a60       str      r2, [r1]
00419a9a 0a68       ldr      r2, [r1]
00419a9c 42f04002   orr      r2, r2, #0x40
00419aa0 0a60       str      r2, [r1]
00419aa2 0a68       ldr      r2, [r1]
00419aa4 42f08002   orr      r2, r2, #0x80
00419aa8 0a60       str      r2, [r1]
00419aaa 0a68       ldr      r2, [r1]
00419aac 42f48072   orr      r2, r2, #0x100
00419ab0 0a60       str      r2, [r1]
00419ab2 a26a       ldr      r2, [r4, #0x28]
00419ab4 b2f80e22   ldrh.w   r2, [r2, #0x20e]
00419ab8 8b68       ldr      r3, [r1, #8]
00419aba ab43       bics     r3, r5
00419abc 1a44       add      r2, r3
00419abe 8a60       str      r2, [r1, #8]
00419ac0 a26a       ldr      r2, [r4, #0x28]
00419ac2 b2f81022   ldrh.w   r2, [r2, #0x210]
00419ac6 8b68       ldr      r3, [r1, #8]
00419ac8 c3ea0242   pkhbt    r2, r3, r2, lsl #0x10
00419acc 8a60       str      r2, [r1, #8]
00419ace a26a       ldr      r2, [r4, #0x28]
00419ad0 b2f81222   ldrh.w   r2, [r2, #0x212]
00419ad4 cb68       ldr      r3, [r1, #0xc]
00419ad6 6ff30f03   bfc      r3, #0, #0x10
00419ada 1a44       add      r2, r3
00419adc ca60       str      r2, [r1, #0xc]
00419ade a26a       ldr      r2, [r4, #0x28]
00419ae0 92f81422   ldrb.w   r2, [r2, #0x214]
00419ae4 0b68       ldr      r3, [r1]
00419ae6 02f01f02   and      r2, r2, #0x1f
00419aea 23f47853   bic      r3, r3, #0x3e00
00419aee 43ea4222   orr.w    r2, r3, r2, lsl #9
00419af2 0a60       str      r2, [r1]
00419af4 a26a       ldr      r2, [r4, #0x28]
00419af6 92f81522   ldrb.w   r2, [r2, #0x215]
00419afa 0b68       ldr      r3, [r1]
00419afc 02f01f02   and      r2, r2, #0x1f
00419b00 23f4f813   bic      r3, r3, #0x1f0000
00419b04 43ea0242   orr.w    r2, r3, r2, lsl #16
00419b08 0a60       str      r2, [r1]
00419b0a a26a       ldr      r2, [r4, #0x28]
00419b0c 92f81622   ldrb.w   r2, [r2, #0x216]
00419b10 0b68       ldr      r3, [r1]
00419b12 02f01f02   and      r2, r2, #0x1f
00419b16 23f0f853   bic      r3, r3, #0x1f000000
00419b1a 43ea0262   orr.w    r2, r3, r2, lsl #24
00419b1e 0a60       str      r2, [r1]
00419b20 46f64011   movw     r1, #0x6940
00419b24 4058       ldr      r0, [r0, r1]
00419b26 a16a       ldr      r1, [r4, #0x28]
00419b28 c1f81403   str.w    r0, [r1, #0x314]
00419b2c 2548       ldr      r0, [pc, #0x94] ; [0x419bc4]=0x44111800
00419b2e a1f81263   strh.w   r6, [r1, #0x312]
00419b32 4ff0ff31   mov.w    r1, #-1
00419b36 c0f85811   str.w    r1, [r0, #0x158]
00419b3a 0168       ldr      r1, [r0]
00419b3c 69f30701   bfi      r1, sb, #0, #8
