004296bc 4368       ldr      r3, [r0, #4]
004296be 022b       cmp      r3, #2
004296c0 45d1       bne      #0x42974e
004296c2 90f84830   ldrb.w   r3, [r0, #0x48]
004296c6 1b2b       cmp      r3, #0x1b
004296c8 41d1       bne      #0x42974e
004296ca b1f84610   ldrh.w   r1, [r1, #0x46]
004296ce b0f84630   ldrh.w   r3, [r0, #0x46]
004296d2 8b42       cmp      r3, r1
004296d4 3bd0       beq      #0x42974e
004296d6 70b5       push     {r4, r5, r6, lr}
004296d8 2de90003   push.w   {r8, sb}
004296dc 90f84910   ldrb.w   r1, [r0, #0x49]
004296e0 8668       ldr      r6, [r0, #8]
004296e2 1c48       ldr      r0, [pc, #0x70] ; [0x429754]=0x40002018
004296e4 d0f800c0   ldr.w    ip, [r0]
004296e8 d0f804e0   ldr.w    lr, [r0, #4]
004296ec d6f81480   ldr.w    r8, [r6, #0x14]
004296f0 06f52955   add.w    r5, r6, #0x2a40
004296f4 29b1       cbz      r1, #0x429702
004296f6 d5f80890   ldr.w    sb, [r5, #8]
004296fa ed68       ldr      r5, [r5, #0xc]
004296fc b6f88810   ldrh.w   r1, [r6, #0x88]
00429700 04e0       b        #0x42970c
00429702 d5f80090   ldr.w    sb, [r5]
00429706 6d68       ldr      r5, [r5, #4]
00429708 b6f88010   ldrh.w   r1, [r6, #0x80]
0042970c c907       lsls     r1, r1, #0x1f
0042970e 04d1       bne      #0x42971a
00429710 19eb0809   adds.w   sb, sb, r8
00429714 45f10001   adc      r1, r5, #0
00429718 8db2       uxth     r5, r1
0042971a 0f48       ldr      r0, [pc, #0x3c] ; [0x429758]=0x17700
0042971c b9eb4801   subs.w   r1, sb, r8, lsl #1
00429720 65f10006   sbc      r6, r5, #0
00429724 b9eb0c03   subs.w   r3, sb, ip
00429728 4ff0000c   mov.w    ip, #0
0042972c 00eb4800   add.w    r0, r0, r8, lsl #1
00429730 65eb0e04   sbc.w    r4, r5, lr
00429734 c01a       subs     r0, r0, r3
00429736 7ceb0400   sbcs.w   r0, ip, r4
0042973a 28bf       it       hs
0042973c 2e46       movhs    r6, r5
0042973e 5660       str      r6, [r2, #4]
00429740 28bf       it       hs
00429742 4946       movhs    r1, sb
00429744 1160       str      r1, [r2]
00429746 bde80003   pop.w    {r8, sb}
0042974a bde87040   pop.w    {r4, r5, r6, lr}
0042974e 0020       movs     r0, #0
00429750 7047       bx       lr
00429752 00bf       nop      
00429754 1820       movs     r0, #0x18
00429756 0040       ands     r0, r0
00429758 0077       strb     r0, [r0, #0x1c]
0042975a 0100       movs     r1, r0
0042975c f0b5       push     {r4, r5, r6, r7, lr}
0042975e 03af       add      r7, sp, #0xc
00429760 4df804bd   str      fp, [sp, #-0x4]!
00429764 84b0       sub      sp, #0x10
00429766 1446       mov      r4, r2
00429768 1278       ldrb     r2, [r2]
0042976a 012a       cmp      r2, #1
0042976c 29d1       bne      #0x4297c2
0042976e 4268       ldr      r2, [r0, #4]
00429770 022a       cmp      r2, #2
00429772 28d1       bne      #0x4297c6
00429774 90f84820   ldrb.w   r2, [r0, #0x48]
00429778 1b2a       cmp      r2, #0x1b
0042977a 24d1       bne      #0x4297c6
0042977c b1f84620   ldrh.w   r2, [r1, #0x46]
00429780 b0f84630   ldrh.w   r3, [r0, #0x46]
00429784 9342       cmp      r3, r2
00429786 1ed0       beq      #0x4297c6
00429788 114a       ldr      r2, [pc, #0x44] ; [0x4297d0]=0x10005b88
0042978a 4ff41643   mov.w    r3, #0x9600
0042978e d1f850c0   ldr.w    ip, [r1, #0x50]
00429792 4d6d       ldr      r5, [r1, #0x54]
00429794 d1f81011   ldr.w    r1, [r1, #0x110]
00429798 92f84521   ldrb.w   r2, [r2, #0x145]
0042979c 5a43       muls     r2, r3, r2
0042979e 0b4b       ldr      r3, [pc, #0x2c] ; [0x4297cc]=0x8ca00
004297a0 1a44       add      r2, r3
004297a2 d0f81031   ldr.w    r3, [r0, #0x110]
004297a6 5618       adds     r6, r2, r1
004297a8 8168       ldr      r1, [r0, #8]
004297aa 1a44       add      r2, r3
004297ac 8868       ldr      r0, [r1, #8]
004297ae c968       ldr      r1, [r1, #0xc]
004297b0 0296       str      r6, [sp, #8]
004297b2 cde900c5   strd     ip, r5, [sp]
004297b6 fff759ff   bl       #0x42966c
004297ba 20b1       cbz      r0, #0x4297c6
004297bc 0020       movs     r0, #0
004297be 2070       strb     r0, [r4]
004297c0 02e0       b        #0x4297c8
004297c2 0020       movs     r0, #0
004297c4 00e0       b        #0x4297c8
004297c6 0120       movs     r0, #1
004297c8 32f09ab9   b.w      #0x45bb00
004297cc 00ca       .byte    0x00, 0xca
004297ce 0800       movs     r0, r1
004297d0 885b       ldrh     r0, [r1, r6]
004297d2 0010       asrs     r0, r0, #0x20
004297d4 f0b5       push     {r4, r5, r6, r7, lr}
004297d6 03af       add      r7, sp, #0xc
004297d8 2de9f80f   push.w   {r3, r4, r5, r6, r7, r8, sb, sl, fp}
004297dc 1446       mov      r4, r2
004297de 1278       ldrb     r2, [r2]
004297e0 6ab9       cbnz     r2, #0x4297fe
004297e2 4268       ldr      r2, [r0, #4]
004297e4 022a       cmp      r2, #2
004297e6 09d1       bne      #0x4297fc
004297e8 90f84820   ldrb.w   r2, [r0, #0x48]
004297ec 1b2a       cmp      r2, #0x1b
004297ee 05d1       bne      #0x4297fc
004297f0 b1f84620   ldrh.w   r2, [r1, #0x46]
004297f4 b0f84630   ldrh.w   r3, [r0, #0x46]
004297f8 9342       cmp      r3, r2
004297fa 03d1       bne      #0x429804
004297fc 0022       movs     r2, #0
004297fe 1046       mov      r0, r2
00429800 31f0b6bf   b.w      #0x45b770
00429804 1b4a       ldr      r2, [pc, #0x6c] ; [0x429874]=0x10005b88
00429806 4ff41643   mov.w    r3, #0x9600
0042980a 8e68       ldr      r6, [r1, #8]
0042980c d1f81011   ldr.w    r1, [r1, #0x110]
00429810 92f84521   ldrb.w   r2, [r2, #0x145]
00429814 d6f808b0   ldr.w    fp, [r6, #8]
00429818 d6f80c80   ldr.w    r8, [r6, #0xc]
0042981c 5a43       muls     r2, r3, r2
0042981e 144b       ldr      r3, [pc, #0x50] ; [0x429870]=0x5dc00
00429820 1a44       add      r2, r3
00429822 d0f81031   ldr.w    r3, [r0, #0x110]
00429826 02eb010a   add.w    sl, r2, r1
0042982a 8168       ldr      r1, [r0, #8]
0042982c d518       adds     r5, r2, r3
0042982e d1f80c90   ldr.w    sb, [r1, #0xc]
00429832 8868       ldr      r0, [r1, #8]
00429834 2a46       mov      r2, r5
00429836 cdf808a0   str.w    sl, [sp, #8]
0042983a cde900b8   strd     fp, r8, [sp]
0042983e 4946       mov      r1, sb
00429840 0490       str      r0, [sp, #0x10]
00429842 fff713ff   bl       #0x42966c
00429846 78b9       cbnz     r0, #0x429868
00429848 7069       ldr      r0, [r6, #0x14]
0042984a 2a46       mov      r2, r5
0042984c cdf808a0   str.w    sl, [sp, #8]
00429850 1beb4000   adds.w   r0, fp, r0, lsl #1
00429854 48f10001   adc      r1, r8, #0
00429858 cde90001   strd     r0, r1, [sp]
0042985c 0498       ldr      r0, [sp, #0x10]
0042985e 4946       mov      r1, sb
00429860 fff704ff   bl       #0x42966c
00429864 0028       cmp      r0, #0
00429866 c9d0       beq      #0x4297fc
00429868 0122       movs     r2, #1
0042986a 2270       strb     r2, [r4]
0042986c c7e7       b        #0x4297fe
0042986e 00bf       nop      
00429870 00dc       bgt      #0x429874
00429872 0500       movs     r5, r0
00429874 885b       ldrh     r0, [r1, r6]
00429876 0010       asrs     r0, r0, #0x20
00429878 01eb4000   add.w    r0, r1, r0, lsl #1
0042987c c0f13200   rsb.w    r0, r0, #0x32
00429880 81b2       uxth     r1, r0
00429882 b1fbf2f0   udiv     r0, r1, r2
00429886 00b2       sxth     r0, r0
00429888 0128       cmp      r0, #1
0042988a 14db       blt      #0x4298b6
0042988c 4243       muls     r2, r0, r2
0042988e 92b2       uxth     r2, r2
00429890 9142       cmp      r1, r2
00429892 18bf       it       ne
00429894 0130       addne    r0, #1
00429896 3328       cmp      r0, #0x33
00429898 0ed3       blo      #0x4298b8
0042989a f8b5       push     {r3, r4, r5, r6, r7, lr}
0042989c 04af       add      r7, sp, #0x10
0042989e 0020       movs     r0, #0
004298a0 3221       movs     r1, #0x32
004298a2 cde90101   strd     r0, r1, [sp, #4]
004298a6 0390       str      r0, [sp, #0xc]
004298a8 3320       movs     r0, #0x33
004298aa ec21       movs     r1, #0xec
004298ac 0090       str      r0, [sp]
004298ae 0348       ldr      r0, [pc, #0xc] ; [0x4298bc]=0x46f23e 'nmmac.c'
004298b0 034a       ldr      r2, [pc, #0xc] ; [0x4298c0]=0x46f246 'unii3_nch <= MAX_NB_UNII3_P25_FRAC_CHANNELS'
004298b2 0df091fe   bl       #0x4375d8
004298b6 0020       movs     r0, #0
004298b8 00b2       sxth     r0, r0
004298ba 7047       bx       lr
004298bc 3ef2       .byte    0x3e, 0xf2
004298be 4600       lsls     r6, r0, #1
004298c0 46f24600   movw     r0, #0x6046
004298c4 0844       add      r0, r1
004298c6 52fa80f0   uxtab    r0, r2, r0
004298ca c0f1c801   rsb.w    r1, r0, #0xc8
004298ce 91fbf3f0   sdiv     r0, r1, r3
004298d2 00b2       sxth     r0, r0
004298d4 0128       cmp      r0, #1
004298d6 17db       blt      #0x429908
004298d8 00fb03f2   mul      r2, r0, r3
004298dc 89b2       uxth     r1, r1
004298de 92b2       uxth     r2, r2
