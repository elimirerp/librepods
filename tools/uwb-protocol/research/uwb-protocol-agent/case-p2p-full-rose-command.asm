00020628 f7b5       push     {r0, r1, r2, r4, r5, r6, r7, lr}
0002062a c14c       ldr      r4, [pc, #0x304] ; [0x20930]=0x2000fd30
0002062c 6378       ldrb     r3, [r4, #1]
0002062e 03f0fd02   and      r2, r3, #0xfd
00020632 0c2a       cmp      r2, #0xc
00020634 07d0       beq      #0x20646
00020636 0720       movs     r0, #7
00020638 be4a       ldr      r2, [pc, #0x2f8] ; [0x20934]=0x4bfdf 'invalid state for ranging: %u'
0002063a 0021       movs     r1, #0
0002063c 16f076fa   bl       #0x36b2c
00020640 0820       movs     r0, #8
00020642 03b0       add      sp, #0xc
00020644 f0bd       pop      {r4, r5, r6, r7, pc}
00020646 d4f81c61   ldr.w    r6, [r4, #0x11c]
0002064a 3eb1       cbz      r6, #0x2065c
0002064c 0720       movs     r0, #7
0002064e ba4a       ldr      r2, [pc, #0x2e8] ; [0x20938]=0x4a5e0 'Unexpected mp tx len: %u. Expected: 0'
00020650 3346       mov      r3, r6
00020652 0021       movs     r1, #0
00020654 16f06afa   bl       #0x36b2c
00020658 1a20       movs     r0, #0x1a
0002065a f2e7       b        #0x20642
0002065c 8822       movs     r2, #0x88
0002065e 3146       mov      r1, r6
00020660 04f17900   add.w    r0, r4, #0x79
00020664 24f015f8   bl       #0x44692
00020668 94f87a30   ldrb.w   r3, [r4, #0x7a]
0002066c 84f8b060   strb.w   r6, [r4, #0xb0]
00020670 0125       movs     r5, #1
00020672 65f38713   bfi      r3, r5, #6, #2
00020676 03f0fc03   and      r3, r3, #0xfc
0002067a 84f87a30   strb.w   r3, [r4, #0x7a]
0002067e 40f20113   movw     r3, #0x101
00020682 a4f88030   strh.w   r3, [r4, #0x80]
00020686 a37e       ldrb     r3, [r4, #0x1a]
00020688 84f88250   strb.w   r5, [r4, #0x82]
0002068c 1022       movs     r2, #0x10
0002068e 84f87920   strb.w   r2, [r4, #0x79]
00020692 03f00f02   and      r2, r3, #0xf
00020696 1b09       lsrs     r3, r3, #4
00020698 a4f88730   strh.w   r3, [r4, #0x87]
0002069c e37e       ldrb     r3, [r4, #0x1b]
0002069e 84f89530   strb.w   r3, [r4, #0x95]
000206a2 237f       ldrb     r3, [r4, #0x1c]
000206a4 84f89630   strb.w   r3, [r4, #0x96]
000206a8 637e       ldrb     r3, [r4, #0x19]
000206aa a4f88520   strh.w   r2, [r4, #0x85]
000206ae c3f30012   ubfx     r2, r3, #4, #1
000206b2 84f89920   strb.w   r2, [r4, #0x99]
000206b6 b4f81d20   ldrh.w   r2, [r4, #0x1d]
000206ba a4f8bd20   strh.w   r2, [r4, #0xbd]
000206be a26d       ldr      r2, [r4, #0x58]
000206c0 c4f8bf20   str.w    r2, [r4, #0xbf]
000206c4 e26d       ldr      r2, [r4, #0x5c]
000206c6 c4f8c320   str.w    r2, [r4, #0xc3]
000206ca 03f00302   and      r2, r3, #3
000206ce aa42       cmp      r2, r5
000206d0 84f8af50   strb.w   r5, [r4, #0xaf]
000206d4 40f0f080   bne.w    #0x208b8
000206d8 0923       movs     r3, #9
000206da 84f89730   strb.w   r3, [r4, #0x97]
000206de 84f89860   strb.w   r6, [r4, #0x98]
000206e2 e17f       ldrb     r1, [r4, #0x1f]
000206e4 9548       ldr      r0, [pc, #0x254] ; [0x2093c]=0x2000fdb3
000206e6 01f00f01   and      r1, r1, #0xf
000206ea fff773ff   bl       #0x205d4
000206ee 0028       cmp      r0, #0
000206f0 a7d1       bne      #0x20642
000206f2 e17f       ldrb     r1, [r4, #0x1f]
000206f4 9248       ldr      r0, [pc, #0x248] ; [0x20940]=0x2000fdb4
000206f6 0909       lsrs     r1, r1, #4
000206f8 fff76cff   bl       #0x205d4
000206fc 0028       cmp      r0, #0
000206fe a0d1       bne      #0x20642
00020700 6378       ldrb     r3, [r4, #1]
00020702 904d       ldr      r5, [pc, #0x240] ; [0x20944]=0x2000fde1
00020704 0c2b       cmp      r3, #0xc
00020706 40f0e780   bne.w    #0x208d8
0002070a 236e       ldr      r3, [r4, #0x60]
0002070c c4f8b130   str.w    r3, [r4, #0xb1]
00020710 636e       ldr      r3, [r4, #0x64]
00020712 6b60       str      r3, [r5, #4]
00020714 8c4a       ldr      r2, [pc, #0x230] ; [0x20948]=0x4c306 'startTime:'
00020716 0221       movs     r1, #2
00020718 0720       movs     r0, #7
0002071a 16f007fa   bl       #0x36b2c
0002071e 8b4b       ldr      r3, [pc, #0x22c] ; [0x2094c]=0x2000fab0
00020720 1b78       ldrb     r3, [r3]
00020722 022b       cmp      r3, #2
00020724 04d9       bls      #0x20730
00020726 8a4a       ldr      r2, [pc, #0x228] ; [0x20950]=0x4a5be
00020728 0121       movs     r1, #1
0002072a 0020       movs     r0, #0
0002072c 16f0fef9   bl       #0x36b2c
00020730 d4e91810   ldrd     r1, r0, [r4, #0x60]
00020734 d4f8b130   ldr.w    r3, [r4, #0xb1]
00020738 d4f8b520   ldr.w    r2, [r4, #0xb5]
0002073c 5b1a       subs     r3, r3, r1
0002073e 62eb0002   sbc.w    r2, r2, r0
00020742 cde90032   strd     r3, r2, [sp]
00020746 0121       movs     r1, #1
00020748 824a       ldr      r2, [pc, #0x208] ; [0x20954]=0x4c311 'start time delta: %u'
0002074a 0720       movs     r0, #7
0002074c 16f0eef9   bl       #0x36b2c
00020750 b4f87020   ldrh.w   r2, [r4, #0x70]
00020754 238c       ldrh     r3, [r4, #0x20]
00020756 9a42       cmp      r2, r3
00020758 40f0a280   bne.w    #0x208a0
0002075c b4f87d30   ldrh.w   r3, [r4, #0x7d]
00020760 7d4a       ldr      r2, [pc, #0x1f4] ; [0x20958]=0x4c326 'sessionId: %u'
00020762 0121       movs     r1, #1
00020764 0720       movs     r0, #7
00020766 16f0e1f9   bl       #0x36b2c
0002076a 94f87f30   ldrb.w   r3, [r4, #0x7f]
0002076e 7b4a       ldr      r2, [pc, #0x1ec] ; [0x2095c]=0x4c334 'sessionRole: %u'
00020770 0121       movs     r1, #1
00020772 0720       movs     r0, #7
00020774 16f0daf9   bl       #0x36b2c
00020778 94f88030   ldrb.w   r3, [r4, #0x80]
0002077c 784a       ldr      r2, [pc, #0x1e0] ; [0x20960]=0x4c344 'txAntennaMask: %u'
0002077e 0121       movs     r1, #1
00020780 0720       movs     r0, #7
00020782 16f0d3f9   bl       #0x36b2c
00020786 94f88130   ldrb.w   r3, [r4, #0x81]
0002078a 764a       ldr      r2, [pc, #0x1d8] ; [0x20964]=0x4c356 'rxAntennaMask: %u'
0002078c 0121       movs     r1, #1
0002078e 0720       movs     r0, #7
00020790 16f0ccf9   bl       #0x36b2c
00020794 94f88230   ldrb.w   r3, [r4, #0x82]
00020798 734a       ldr      r2, [pc, #0x1cc] ; [0x20968]=0x4c368 'rxSyncAntennaMask: %u'
0002079a 0121       movs     r1, #1
0002079c 0720       movs     r0, #7
0002079e 16f0c5f9   bl       #0x36b2c
000207a2 94f88330   ldrb.w   r3, [r4, #0x83]
000207a6 714a       ldr      r2, [pc, #0x1c4] ; [0x2096c]=0x4c37e 'firstCyclePreamble: %u'
000207a8 0121       movs     r1, #1
000207aa 0720       movs     r0, #7
000207ac 16f0bef9   bl       #0x36b2c
000207b0 94f88430   ldrb.w   r3, [r4, #0x84]
000207b4 6e4a       ldr      r2, [pc, #0x1b8] ; [0x20970]=0x4c395 'subsequentPreamble: %u'
000207b6 0121       movs     r1, #1
000207b8 0720       movs     r0, #7
000207ba 16f0b7f9   bl       #0x36b2c
000207be b4f88530   ldrh.w   r3, [r4, #0x85]
000207c2 6c4a       ldr      r2, [pc, #0x1b0] ; [0x20974]=0x4c3ac 'txPacketType: %u'
000207c4 0121       movs     r1, #1
000207c6 0720       movs     r0, #7
000207c8 16f0b0f9   bl       #0x36b2c
000207cc b4f88730   ldrh.w   r3, [r4, #0x87]
000207d0 694a       ldr      r2, [pc, #0x1a4] ; [0x20978]=0x4c3bd 'rxPacketType: %u'
000207d2 0121       movs     r1, #1
000207d4 0720       movs     r0, #7
000207d6 16f0a9f9   bl       #0x36b2c
000207da 94f89530   ldrb.w   r3, [r4, #0x95]
000207de 674a       ldr      r2, [pc, #0x19c] ; [0x2097c]=0x4c3ce 'txMiniSlotSize: %u'
000207e0 0121       movs     r1, #1
000207e2 0720       movs     r0, #7
000207e4 16f0a2f9   bl       #0x36b2c
000207e8 94f89630   ldrb.w   r3, [r4, #0x96]
000207ec 644a       ldr      r2, [pc, #0x190] ; [0x20980]=0x4c3e1 'rxMiniSlotSize: %u'
000207ee 0121       movs     r1, #1
000207f0 0720       movs     r0, #7
000207f2 16f09bf9   bl       #0x36b2c
000207f6 b4f89730   ldrh.w   r3, [r4, #0x97]
000207fa 624a       ldr      r2, [pc, #0x188] ; [0x20984]=0x4c3f4 'channel: %u'
000207fc 0121       movs     r1, #1
000207fe 0720       movs     r0, #7
00020800 16f094f9   bl       #0x36b2c
00020804 94f89930   ldrb.w   r3, [r4, #0x99]
00020808 5f4a       ldr      r2, [pc, #0x17c] ; [0x20988]=0x4c400 'dualRangingEnable: %u'
0002080a 0121       movs     r1, #1
0002080c 0720       movs     r0, #7
0002080e 16f08df9   bl       #0x36b2c
00020812 94f89a30   ldrb.w   r3, [r4, #0x9a]
00020816 5d4a       ldr      r2, [pc, #0x174] ; [0x2098c]=0x4c416 'txAntennaMask2: %u'
00020818 0121       movs     r1, #1
0002081a 0720       movs     r0, #7
0002081c 16f086f9   bl       #0x36b2c
00020820 94f89b30   ldrb.w   r3, [r4, #0x9b]
00020824 5a4a       ldr      r2, [pc, #0x168] ; [0x20990]=0x4c429 'rxAntennaMask2: %u'
00020826 0121       movs     r1, #1
00020828 0720       movs     r0, #7
0002082a 16f07ff9   bl       #0x36b2c
0002082e 94f89c30   ldrb.w   r3, [r4, #0x9c]
00020832 584a       ldr      r2, [pc, #0x160] ; [0x20994]=0x4c43c 'rxSyncAntennaMask2: %u'
00020834 0121       movs     r1, #1
00020836 0720       movs     r0, #7
00020838 16f078f9   bl       #0x36b2c
0002083c b4f99d30   ldrsh.w  r3, [r4, #0x9d]
00020840 554a       ldr      r2, [pc, #0x154] ; [0x20998]=0x4c453 'pingPongSoiRssiThresh: %u'
00020842 0121       movs     r1, #1
00020844 0720       movs     r0, #7
00020846 16f071f9   bl       #0x36b2c
0002084a b4f8af30   ldrh.w   r3, [r4, #0xaf]
0002084e 534a       ldr      r2, [pc, #0x14c] ; [0x2099c]=0x4c46d 'debugFlags: %u'
00020850 0121       movs     r1, #1
00020852 0720       movs     r0, #7
00020854 16f06af9   bl       #0x36b2c
00020858 d4f8b120   ldr.w    r2, [r4, #0xb1]
0002085c d4f8b530   ldr.w    r3, [r4, #0xb5]
00020860 0121       movs     r1, #1
00020862 cde90023   strd     r2, r3, [sp]
00020866 0720       movs     r0, #7
00020868 4d4a       ldr      r2, [pc, #0x134] ; [0x209a0]=0x4c47c 'startTime: %lu'
0002086a 16f05ff9   bl       #0x36b2c
0002086e d4f8b930   ldr.w    r3, [r4, #0xb9]
00020872 4c4a       ldr      r2, [pc, #0x130] ; [0x209a4]=0x4c48b 'startTimeUncertainty: %u'
00020874 0121       movs     r1, #1
00020876 0720       movs     r0, #7
00020878 16f058f9   bl       #0x36b2c
0002087c b4f8bd30   ldrh.w   r3, [r4, #0xbd]
00020880 494a       ldr      r2, [pc, #0x124] ; [0x209a8]=0x4c4a4 'interval: %u'
00020882 0121       movs     r1, #1
00020884 0720       movs     r0, #7
00020886 16f051f9   bl       #0x36b2c
0002088a d4f8bf20   ldr.w    r2, [r4, #0xbf]
0002088e d4f8c330   ldr.w    r3, [r4, #0xc3]
00020892 0121       movs     r1, #1
00020894 cde90023   strd     r2, r3, [sp]
00020898 0720       movs     r0, #7
0002089a 444a       ldr      r2, [pc, #0x110] ; [0x209ac]=0x4c4b1 'baseMacAddress: %x'
0002089c 16f046f9   bl       #0x36b2c
000208a0 0f23       movs     r3, #0xf
000208a2 6370       strb     r3, [r4, #1]
000208a4 0122       movs     r2, #1
000208a6 0023       movs     r3, #0
000208a8 cde90032   strd     r3, r2, [sp]
000208ac 4049       ldr      r1, [pc, #0x100] ; [0x209b0]=0x2000fda9
000208ae 4e22       movs     r2, #0x4e
000208b0 1846       mov      r0, r3
000208b2 fbf7c9fd   bl       #0x1c448
000208b6 c4e6       b        #0x20642
000208b8 2ab9       cbnz     r2, #0x208c6
000208ba 0523       movs     r3, #5
000208bc 84f89730   strb.w   r3, [r4, #0x97]
000208c0 84f89820   strb.w   r2, [r4, #0x98]
000208c4 0de7       b        #0x206e2
000208c6 0720       movs     r0, #7
000208c8 3a4a       ldr      r2, [pc, #0xe8] ; [0x209b4]=0x4c180 'Invalid channel value: %u'
000208ca 03f00303   and      r3, r3, #3
000208ce 3146       mov      r1, r6
000208d0 16f02cf9   bl       #0x36b2c
000208d4 2846       mov      r0, r5
000208d6 b4e6       b        #0x20642
000208d8 19f0abfc   bl       #0x3a232
000208dc d4e91a31   ldrd     r3, r1, [r4, #0x68]
000208e0 d3f13203   rsbs.w   r3, r3, #0x32
000208e4 61eb4101   sbc.w    r1, r1, r1, lsl #1
000208e8 1818       adds     r0, r3, r0
000208ea 41f10001   adc      r1, r1, #0
000208ee 28f013ff   bl       #0x49718
000208f2 0da3       adr      r3, #0x34
000208f4 d3e90023   ldrd     r2, r3, [r3]
000208f8 28f044ff   bl       #0x49784
000208fc 2e4b       ldr      r3, [pc, #0xb8] ; [0x209b8]=0x408f4000
000208fe 0022       movs     r2, #0
00020900 28f040ff   bl       #0x49784
00020904 0646       mov      r6, r0
00020906 0f46       mov      r7, r1
00020908 d4e91801   ldrd     r0, r1, [r4, #0x60]
0002090c 28f004ff   bl       #0x49718
00020910 0246       mov      r2, r0
00020912 0b46       mov      r3, r1
00020914 3046       mov      r0, r6
00020916 3946       mov      r1, r7
00020918 28f07efd   bl       #0x49418
0002091c 29f06afa   bl       #0x49df4
00020920 c4f8b100   str.w    r0, [r4, #0xb1]
00020924 6960       str      r1, [r5, #4]
00020926 f5e6       b        #0x20714
00020928 3333       adds     r3, #0x33
0002092a 3333       adds     r3, #0x33
0002092c 3333       adds     r3, #0x33
0002092e 4340       eors     r3, r0
00020930 30fd0020   ldc2     p0, c2, [r0, #-0]!
00020934 dfbf       itttt    le
00020936 0400       movs     r4, r0
