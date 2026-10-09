00023564 89db       blt      #0x2347a
00023566 0400       movs     r4, r0
00023568 5ddb       blt      #0x23626
0002356a 0400       movs     r4, r0
0002356c 10b5       push     {r4, lr}
0002356e 0446       mov      r4, r0
00023570 0038       subs     r0, #0
00023572 0549       ldr      r1, [pc, #0x14] ; [0x23588]=0x4db75 'RosePowerTableUWB.c'
00023574 4ff06702   mov.w    r2, #0x67
00023578 18bf       it       ne
0002357a 0120       movne    r0, #1
0002357c 16f06afb   bl       #0x39c54
00023580 024b       ldr      r3, [pc, #8] ; [0x2358c]=0x2001014c
00023582 1c60       str      r4, [r3]
00023584 10bd       pop      {r4, pc}
00023586 00bf       nop      
00023588 75db       blt      #0x23676
0002358a 0400       movs     r4, r0
0002358c 4c01       lsls     r4, r1, #5
0002358e 0120       movs     r0, #1
00023590 02f0d2b9   b.w      #0x25938
00023594 08b5       push     {r3, lr}
00023596 0120       movs     r0, #1
00023598 01f0e4fb   bl       #0x24d64
0002359c bde80840   pop.w    {r3, lr}
000235a0 0021       movs     r1, #0
000235a2 2020       movs     r0, #0x20
000235a4 03f0b4ba   b.w      #0x26b10
000235a8 08b5       push     {r3, lr}
000235aa 0120       movs     r0, #1
000235ac 01f0dafb   bl       #0x24d64
000235b0 bde80840   pop.w    {r3, lr}
000235b4 0021       movs     r1, #0
000235b6 0e20       movs     r0, #0xe
000235b8 03f0aaba   b.w      #0x26b10
000235bc 0148       ldr      r0, [pc, #4] ; [0x235c4]=0x4dba4
000235be 14f01fbc   b.w      #0x37e00
000235c2 00bf       nop      
000235c4 a4db       blt      #0x23510
000235c6 0400       movs     r4, r0
000235c8 0020       movs     r0, #0
000235ca 7047       bx       lr
000235cc 08b5       push     {r3, lr}
000235ce 03f007fd   bl       #0x26fe0
000235d2 0828       cmp      r0, #8
000235d4 06d0       beq      #0x235e4
000235d6 03f003fd   bl       #0x26fe0
000235da a0f10903   sub.w    r3, r0, #9
000235de 5842       rsbs     r0, r3, #0
000235e0 5841       adcs     r0, r3
000235e2 08bd       pop      {r3, pc}
000235e4 0120       movs     r0, #1
000235e6 fce7       b        #0x235e2
000235e8 10b5       push     {r4, lr}
000235ea 0446       mov      r4, r0
000235ec fff7eeff   bl       #0x235cc
000235f0 28b1       cbz      r0, #0x235fe
000235f2 02f0bbf9   bl       #0x2596c
000235f6 034b       ldr      r3, [pc, #0xc] ; [0x23604]=0x2000fab8
000235f8 0020       movs     r0, #0
000235fa 1c70       strb     r4, [r3]
000235fc 10bd       pop      {r4, pc}
000235fe 0120       movs     r0, #1
00023600 fce7       b        #0x235fc
00023602 00bf       nop      
00023604 b8fa       .byte    0xb8, 0xfa
00023606 0020       movs     r0, #0
00023608 0021       movs     r1, #0
0002360a 1720       movs     r0, #0x17
0002360c 03f080ba   b.w      #0x26b10
00023610 08b5       push     {r3, lr}
00023612 0021       movs     r1, #0
00023614 1820       movs     r0, #0x18
00023616 03f07bfa   bl       #0x26b10
0002361a 0020       movs     r0, #0
0002361c 08bd       pop      {r3, pc}
0002361e 08b5       push     {r3, lr}
00023620 0021       movs     r1, #0
00023622 0720       movs     r0, #7
00023624 03f074fa   bl       #0x26b10
00023628 0020       movs     r0, #0
0002362a 08bd       pop      {r3, pc}
0002362c 08b5       push     {r3, lr}
0002362e 0021       movs     r1, #0
00023630 0a20       movs     r0, #0xa
00023632 03f06dfa   bl       #0x26b10
00023636 0020       movs     r0, #0
00023638 08bd       pop      {r3, pc}
0002363a 0000       movs     r0, r0
0002363c 13b5       push     {r0, r1, r4, lr}
0002363e 0120       movs     r0, #1
00023640 17f085ff   bl       #0x3b54e
00023644 4ff6ff73   movw     r3, #0xffff
00023648 9842       cmp      r0, r3
0002364a 0446       mov      r4, r0
0002364c 0ed0       beq      #0x2366c
0002364e 094a       ldr      r2, [pc, #0x24] ; [0x23674]=0x4dbc0 'Send Ranging Motion Detected'
00023650 0221       movs     r1, #2
00023652 0f20       movs     r0, #0xf
00023654 13f06afa   bl       #0x36b2c
00023658 074b       ldr      r3, [pc, #0x1c] ; [0x23678]=0x2000fc00
0002365a 1b68       ldr      r3, [r3]
0002365c d98f       ldrh     r1, [r3, #0x3e]
0002365e 0023       movs     r3, #0
00023660 0093       str      r3, [sp]
00023662 40f20c72   movw     r2, #0x70c
00023666 2046       mov      r0, r4
00023668 19f034f8   bl       #0x3c6d4
0002366c 0020       movs     r0, #0
0002366e 02b0       add      sp, #8
00023670 10bd       pop      {r4, pc}
00023672 00bf       nop      
00023674 c0db       blt      #0x235f8
00023676 0400       movs     r4, r0
00023678 00fc       .byte    0x00, 0xfc
0002367a 0020       movs     r0, #0
0002367c 1228       cmp      r0, #0x12
0002367e 10b5       push     {r4, lr}
00023680 0cbf       ite      eq
00023682 0224       moveq    r4, #2
00023684 0124       movne    r4, #1
00023686 03f0abfc   bl       #0x26fe0
0002368a 0528       cmp      r0, #5
0002368c 0ad1       bne      #0x236a4
0002368e 094b       ldr      r3, [pc, #0x24] ; [0x236b4]=0x2000fab8
00023690 0320       movs     r0, #3
00023692 1c70       strb     r4, [r3]
00023694 02f0b2f9   bl       #0x259fc
00023698 0a20       movs     r0, #0xa
0002369a 0021       movs     r1, #0
0002369c 03f038fa   bl       #0x26b10
000236a0 0020       movs     r0, #0
000236a2 10bd       pop      {r4, pc}
000236a4 0c20       movs     r0, #0xc
000236a6 15f0bbfe   bl       #0x39420
000236aa 2046       mov      r0, r4
000236ac 13f0d0fe   bl       #0x37450
000236b0 0120       movs     r0, #1
000236b2 f6e7       b        #0x236a2
000236b4 b8fa       .byte    0xb8, 0xfa
000236b6 0020       movs     r0, #0
000236b8 10b5       push     {r4, lr}
000236ba 044c       ldr      r4, [pc, #0x10] ; [0x236cc]=0x2000fab8
000236bc 2078       ldrb     r0, [r4]
000236be 13f0c7fe   bl       #0x37450
000236c2 0523       movs     r3, #5
000236c4 2370       strb     r3, [r4]
000236c6 0020       movs     r0, #0
000236c8 10bd       pop      {r4, pc}
000236ca 00bf       nop      
000236cc b8fa       .byte    0xb8, 0xfa
000236ce 0020       movs     r0, #0
000236d0 08b5       push     {r3, lr}
000236d2 1bf0f3ff   bl       #0x3f6bc
000236d6 0021       movs     r1, #0
000236d8 1820       movs     r0, #0x18
000236da 03f019fa   bl       #0x26b10
000236de 0020       movs     r0, #0
000236e0 08bd       pop      {r3, pc}
000236e2 0000       movs     r0, r0
000236e4 10b5       push     {r4, lr}
000236e6 0c46       mov      r4, r1
000236e8 1bf0e8ff   bl       #0x3f6bc
000236ec 2046       mov      r0, r4
000236ee 00f035fc   bl       #0x23f5c
000236f2 2cb1       cbz      r4, #0x23700
000236f4 094a       ldr      r2, [pc, #0x24] ; [0x2371c]=0x4dbdd 'Range complete error: %u'
000236f6 2346       mov      r3, r4
000236f8 0021       movs     r1, #0
000236fa 0720       movs     r0, #7
000236fc 13f016fa   bl       #0x36b2c
00023700 02f076f9   bl       #0x259f0
00023704 0328       cmp      r0, #3
00023706 04d1       bne      #0x23712
00023708 054a       ldr      r2, [pc, #0x14] ; [0x23720]=0x4dbf6 'Unexpected range end reason'
0002370a 0021       movs     r1, #0
0002370c 0720       movs     r0, #7
0002370e 13f00dfa   bl       #0x36b2c
00023712 201e       subs     r0, r4, #0
00023714 18bf       it       ne
00023716 0120       movne    r0, #1
00023718 10bd       pop      {r4, pc}
0002371a 00bf       nop      
0002371c dddb       blt      #0x236da
0002371e 0400       movs     r4, r0
00023720 f6db       blt      #0x23710
00023722 0400       movs     r4, r0
00023724 08b5       push     {r3, lr}
00023726 1cf041fd   bl       #0x401ac
0002372a 0021       movs     r1, #0
0002372c 0920       movs     r0, #9
0002372e 03f0eff9   bl       #0x26b10
00023732 0020       movs     r0, #0
00023734 08bd       pop      {r3, pc}
00023736 38b5       push     {r3, r4, r5, lr}
00023738 0446       mov      r4, r0
0002373a 0d46       mov      r5, r1
0002373c 4ff6fe70   movw     r0, #0xfffe
00023740 0421       movs     r1, #4
00023742 17f0fbfe   bl       #0x3b53c
00023746 28b9       cbnz     r0, #0x23754
00023748 2946       mov      r1, r5
0002374a 2046       mov      r0, r4
0002374c bde83840   pop.w    {r3, r4, r5, lr}
00023750 15f07abc   b.w      #0x39048
00023754 0120       movs     r0, #1
00023756 38bd       pop      {r3, r4, r5, pc}
00023758 38b5       push     {r3, r4, r5, lr}
0002375a 0446       mov      r4, r0
0002375c 0d46       mov      r5, r1
0002375e 4ff6fe70   movw     r0, #0xfffe
00023762 0221       movs     r1, #2
00023764 17f0eafe   bl       #0x3b53c
00023768 28b9       cbnz     r0, #0x23776
0002376a 2946       mov      r1, r5
0002376c 2046       mov      r0, r4
0002376e bde83840   pop.w    {r3, r4, r5, lr}
00023772 15f069bc   b.w      #0x39048
00023776 0120       movs     r0, #1
00023778 38bd       pop      {r3, r4, r5, pc}
0002377a 08b5       push     {r3, lr}
0002377c 03f036fc   bl       #0x26fec
00023780 03f02efc   bl       #0x26fe0
00023784 0828       cmp      r0, #8
00023786 09d0       beq      #0x2379c
00023788 03f02afc   bl       #0x26fe0
0002378c 0928       cmp      r0, #9
0002378e 05d0       beq      #0x2379c
00023790 bde80840   pop.w    {r3, lr}
00023794 0021       movs     r1, #0
00023796 1720       movs     r0, #0x17
00023798 03f0bab9   b.w      #0x26b10
0002379c 08bd       pop      {r3, pc}
0002379e 0000       movs     r0, r0
000237a0 38b5       push     {r3, r4, r5, lr}
000237a2 0c46       mov      r4, r1
000237a4 1bf08aff   bl       #0x3f6bc
000237a8 2046       mov      r0, r4
000237aa 00f0d7fb   bl       #0x23f5c
000237ae 0c20       movs     r0, #0xc
000237b0 15f036fe   bl       #0x39420
000237b4 4cb1       cbz      r4, #0x237ca
000237b6 094a       ldr      r2, [pc, #0x24] ; [0x237dc]=0x4dc12 'Range Complete Failed!'
000237b8 0021       movs     r1, #0
000237ba 0720       movs     r0, #7
000237bc 13f0b6f9   bl       #0x36b2c
000237c0 0820       movs     r0, #8
000237c2 15f02dfe   bl       #0x39420
000237c6 0120       movs     r0, #1
000237c8 38bd       pop      {r3, r4, r5, pc}
000237ca 054d       ldr      r5, [pc, #0x14] ; [0x237e0]=0x2000fab8
000237cc 2878       ldrb     r0, [r5]
000237ce 13f03ffe   bl       #0x37450
000237d2 0523       movs     r3, #5
000237d4 2b70       strb     r3, [r5]
000237d6 2046       mov      r0, r4
000237d8 f6e7       b        #0x237c8
000237da 00bf       nop      
000237dc 12dc       bgt      #0x23804
000237de 0400       movs     r4, r0
000237e0 b8fa       .byte    0xb8, 0xfa
000237e2 0020       movs     r0, #0
000237e4 38b5       push     {r3, r4, r5, lr}
000237e6 0446       mov      r4, r0
000237e8 0d46       mov      r5, r1
000237ea 4ff6fe70   movw     r0, #0xfffe
000237ee 0421       movs     r1, #4
000237f0 17f0a4fe   bl       #0x3b53c
000237f4 58b1       cbz      r0, #0x2380e
000237f6 0121       movs     r1, #1
000237f8 4ff6fe70   movw     r0, #0xfffe
000237fc 17f09efe   bl       #0x3b53c
00023800 0146       mov      r1, r0
00023802 10b9       cbnz     r0, #0x2380a
00023804 0a20       movs     r0, #0xa
00023806 03f083f9   bl       #0x26b10
0002380a 0120       movs     r0, #1
0002380c 38bd       pop      {r3, r4, r5, pc}
0002380e 2946       mov      r1, r5
00023810 2046       mov      r0, r4
00023812 bde83840   pop.w    {r3, r4, r5, lr}
00023816 15f017bc   b.w      #0x39048
0002381a 10b5       push     {r4, lr}
0002381c fff7d6fe   bl       #0x235cc
00023820 0446       mov      r4, r0
00023822 18b1       cbz      r0, #0x2382c
00023824 02f0a2f8   bl       #0x2596c
00023828 0120       movs     r0, #1
0002382a 10bd       pop      {r4, pc}
0002382c 01f09afa   bl       #0x24d64
00023830 0220       movs     r0, #2
00023832 2146       mov      r1, r4
00023834 03f06cf9   bl       #0x26b10
00023838 2046       mov      r0, r4
0002383a f6e7       b        #0x2382a
0002383c 0020       movs     r0, #0
0002383e 7047       bx       lr
00023840 0148       ldr      r0, [pc, #4] ; [0x23848]=0x4dc2c
00023842 14f007bf   b.w      #0x38654
00023846 00bf       nop      
00023848 2cdc       bgt      #0x238a4
0002384a 0400       movs     r4, r0
0002384c 10b5       push     {r4, lr}
0002384e 044c       ldr      r4, [pc, #0x10] ; [0x23860]=0x20010154
00023850 2068       ldr      r0, [r4]
00023852 18b1       cbz      r0, #0x2385c
00023854 20f0cafe   bl       #0x445ec
00023858 0023       movs     r3, #0
0002385a 2360       str      r3, [r4]
0002385c 10bd       pop      {r4, pc}
0002385e 00bf       nop      
00023860 5401       lsls     r4, r2, #5
00023862 0120       movs     r0, #1
00023864 10b5       push     {r4, lr}
00023866 044c       ldr      r4, [pc, #0x10] ; [0x23878]=0x20010158
00023868 2068       ldr      r0, [r4]
0002386a 18b1       cbz      r0, #0x23874
0002386c 20f0befe   bl       #0x445ec
