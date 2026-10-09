000266c0 10f034fa   bl       #0x36b2c
000266c4 2046       mov      r0, r4
000266c6 fff70fff   bl       #0x264e8
000266ca 074b       ldr      r3, [pc, #0x1c] ; [0x266e8]=0x2001104b
000266cc 1a78       ldrb     r2, [r3]
000266ce 3ab1       cbz      r2, #0x266e0
000266d0 0022       movs     r2, #0
000266d2 1a70       strb     r2, [r3]
000266d4 054b       ldr      r3, [pc, #0x14] ; [0x266ec]=0x2001104c
000266d6 bde81040   pop.w    {r4, lr}
000266da 1868       ldr      r0, [r3]
000266dc fdf718bc   b.w      #0x23f10
000266e0 10bd       pop      {r4, pc}
000266e2 00bf       nop      
000266e4 3df3       .byte    0x3d, 0xf3
000266e6 0400       movs     r4, r0
000266e8 4b10       asrs     r3, r1, #1
000266ea 0120       movs     r0, #1
000266ec 4c10       asrs     r4, r1, #1
000266ee 0120       movs     r0, #1
000266f0 10b5       push     {r4, lr}
000266f2 0c46       mov      r4, r1
000266f4 39b1       cbz      r1, #0x26706
000266f6 fef7cbfa   bl       #0x24c90
000266fa 2520       movs     r0, #0x25
000266fc 2146       mov      r1, r4
000266fe 12f081f8   bl       #0x38804
00026702 0120       movs     r0, #1
00026704 10bd       pop      {r4, pc}
00026706 0846       mov      r0, r1
00026708 fce7       b        #0x26704
0002670a 0000       movs     r0, r0
0002670c 13b5       push     {r0, r1, r4, lr}
0002670e 0c46       mov      r4, r1
00026710 89b9       cbnz     r1, #0x26736
00026712 0b4b       ldr      r3, [pc, #0x2c] ; [0x26740]=0x20011056
00026714 0122       movs     r2, #1
00026716 1b78       ldrb     r3, [r3]
00026718 8df80430   strb.w   r3, [sp, #4]
0002671c 01a9       add      r1, sp, #4
0002671e 40f2aa40   movw     r0, #0x4aa
00026722 0df07ffb   bl       #0x33e24
00026726 0749       ldr      r1, [pc, #0x1c] ; [0x26744]=0x4f15a 'rose_state_machine.c'
00026728 40f2ec42   movw     r2, #0x4ec
0002672c 13f092fa   bl       #0x39c54
00026730 2046       mov      r0, r4
00026732 02b0       add      sp, #8
00026734 10bd       pop      {r4, pc}
00026736 fef7abfa   bl       #0x24c90
0002673a 0120       movs     r0, #1
0002673c f9e7       b        #0x26732
0002673e 00bf       nop      
00026740 5610       asrs     r6, r2, #1
00026742 0120       movs     r0, #1
00026744 5af10400   adcs     r0, sl, #4
00026748 10b5       push     {r4, lr}
0002674a 0b4b       ldr      r3, [pc, #0x2c] ; [0x26778]=0x20011054
0002674c 1a78       ldrb     r2, [r3]
0002674e 3ab1       cbz      r2, #0x26760
00026750 0024       movs     r4, #0
00026752 40f2aa40   movw     r0, #0x4aa
00026756 1c70       strb     r4, [r3]
00026758 fff7c6fe   bl       #0x264e8
0002675c 2046       mov      r0, r4
0002675e 10bd       pop      {r4, pc}
00026760 0220       movs     r0, #2
00026762 fef711fb   bl       #0x24d88
00026766 054a       ldr      r2, [pc, #0x14] ; [0x2677c]=0x4f136 'Deinit Rose w/ ST'
00026768 0121       movs     r1, #1
0002676a 0720       movs     r0, #7
0002676c 10f0def9   bl       #0x36b2c
00026770 fef78efa   bl       #0x24c90
00026774 0120       movs     r0, #1
00026776 f2e7       b        #0x2675e
00026778 5410       asrs     r4, r2, #1
0002677a 0120       movs     r0, #1
0002677c 36f1       .byte    0x36, 0xf1
0002677e 0400       movs     r4, r0
00026780 07b5       push     {r0, r1, r2, lr}
00026782 fef7f5fa   bl       #0x24d70
00026786 114b       ldr      r3, [pc, #0x44] ; [0x267cc]=0x20011058
00026788 1b78       ldrb     r3, [r3]
0002678a 8342       cmp      r3, r0
0002678c 03d1       bne      #0x26796
0002678e 104b       ldr      r3, [pc, #0x40] ; [0x267d0]=0x20011056
00026790 1b78       ldrb     r3, [r3]
00026792 062b       cmp      r3, #6
00026794 0ad1       bne      #0x267ac
00026796 fef7abf8   bl       #0x248f0
0002679a 0021       movs     r1, #0
0002679c 0d4a       ldr      r2, [pc, #0x34] ; [0x267d4]=0x26ce9
0002679e 0846       mov      r0, r1
000267a0 01f03cfd   bl       #0x2821c
000267a4 0120       movs     r0, #1
000267a6 03b0       add      sp, #0xc
000267a8 5df804fb   ldr      pc, [sp], #4
000267ac 0122       movs     r2, #1
000267ae 01a9       add      r1, sp, #4
000267b0 40f2aa40   movw     r0, #0x4aa
000267b4 8df80430   strb.w   r3, [sp, #4]
000267b8 0df034fb   bl       #0x33e24
000267bc 0649       ldr      r1, [pc, #0x18] ; [0x267d8]=0x4f15a 'rose_state_machine.c'
000267be 40f22732   movw     r2, #0x327
000267c2 13f047fa   bl       #0x39c54
000267c6 0020       movs     r0, #0
000267c8 ede7       b        #0x267a6
000267ca 00bf       nop      
000267cc 5810       asrs     r0, r3, #1
000267ce 0120       movs     r0, #1
000267d0 5610       asrs     r6, r2, #1
000267d2 0120       movs     r0, #1
000267d4 e96c       ldr      r1, [r5, #0x4c]
000267d6 0200       movs     r2, r0
000267d8 5af10400   adcs     r0, sl, #4
000267dc 10b5       push     {r4, lr}
000267de 0c46       mov      r4, r1
000267e0 39b1       cbz      r1, #0x267f2
000267e2 fef755fa   bl       #0x24c90
000267e6 0a20       movs     r0, #0xa
000267e8 2146       mov      r1, r4
000267ea 12f00bf8   bl       #0x38804
000267ee 0120       movs     r0, #1
000267f0 10bd       pop      {r4, pc}
000267f2 034a       ldr      r2, [pc, #0xc] ; [0x26800]=0x262ff
000267f4 0846       mov      r0, r1
000267f6 01f011fd   bl       #0x2821c
000267fa 2046       mov      r0, r4
000267fc f8e7       b        #0x267f0
000267fe 00bf       nop      
00026800 ff62       str      r7, [r7, #0x2c]
00026802 0200       movs     r2, r0
00026804 10b5       push     {r4, lr}
00026806 0c46       mov      r4, r1
00026808 29b9       cbnz     r1, #0x26816
0002680a 054a       ldr      r2, [pc, #0x14] ; [0x26820]=0x26303
0002680c 0846       mov      r0, r1
0002680e 01f005fd   bl       #0x2821c
00026812 2046       mov      r0, r4
00026814 10bd       pop      {r4, pc}
00026816 fef73bfa   bl       #0x24c90
0002681a 0120       movs     r0, #1
0002681c fae7       b        #0x26814
0002681e 00bf       nop      
00026820 0363       str      r3, [r0, #0x30]
00026822 0200       movs     r2, r0
00026824 10b5       push     {r4, lr}
00026826 0c46       mov      r4, r1
00026828 29b9       cbnz     r1, #0x26836
0002682a 054a       ldr      r2, [pc, #0x14] ; [0x26840]=0x26307
0002682c 0846       mov      r0, r1
0002682e 01f0f5fc   bl       #0x2821c
00026832 2046       mov      r0, r4
00026834 10bd       pop      {r4, pc}
00026836 fef72bfa   bl       #0x24c90
0002683a 0120       movs     r0, #1
0002683c fae7       b        #0x26834
0002683e 00bf       nop      
00026840 0763       str      r7, [r0, #0x30]
00026842 0200       movs     r2, r0
00026844 10b5       push     {r4, lr}
00026846 0c46       mov      r4, r1
00026848 29b9       cbnz     r1, #0x26856
0002684a 054a       ldr      r2, [pc, #0x14] ; [0x26860]=0x2630b
0002684c 0846       mov      r0, r1
0002684e 01f0e5fc   bl       #0x2821c
00026852 2046       mov      r0, r4
00026854 10bd       pop      {r4, pc}
00026856 fef71bfa   bl       #0x24c90
0002685a 0120       movs     r0, #1
0002685c fae7       b        #0x26854
0002685e 00bf       nop      
00026860 0b63       str      r3, [r1, #0x30]
00026862 0200       movs     r2, r0
00026864 10b5       push     {r4, lr}
00026866 0c46       mov      r4, r1
00026868 29b9       cbnz     r1, #0x26876
0002686a 074a       ldr      r2, [pc, #0x1c] ; [0x26888]=0x2631f
0002686c 0846       mov      r0, r1
0002686e 01f0d5fc   bl       #0x2821c
00026872 2046       mov      r0, r4
00026874 10bd       pop      {r4, pc}
00026876 fef70bfa   bl       #0x24c90
0002687a 0d20       movs     r0, #0xd
0002687c 2146       mov      r1, r4
0002687e 11f0c1ff   bl       #0x38804
00026882 0120       movs     r0, #1
00026884 f6e7       b        #0x26874
00026886 00bf       nop      
00026888 1f63       str      r7, [r3, #0x30]
0002688a 0200       movs     r2, r0
0002688c 10b5       push     {r4, lr}
0002688e 0c46       mov      r4, r1
00026890 29b9       cbnz     r1, #0x2689e
00026892 074a       ldr      r2, [pc, #0x1c] ; [0x268b0]=0x2630f
00026894 0846       mov      r0, r1
00026896 01f0c1fc   bl       #0x2821c
0002689a 2046       mov      r0, r4
0002689c 10bd       pop      {r4, pc}
0002689e fef7f7f9   bl       #0x24c90
000268a2 0d20       movs     r0, #0xd
000268a4 2146       mov      r1, r4
000268a6 11f0adff   bl       #0x38804
000268aa 0120       movs     r0, #1
000268ac f6e7       b        #0x2689c
000268ae 00bf       nop      
000268b0 0f63       str      r7, [r1, #0x30]
000268b2 0200       movs     r2, r0
000268b4 10b5       push     {r4, lr}
000268b6 0c46       mov      r4, r1
000268b8 29b9       cbnz     r1, #0x268c6
000268ba 074a       ldr      r2, [pc, #0x1c] ; [0x268d8]=0x2634d
000268bc 0846       mov      r0, r1
000268be 01f0adfc   bl       #0x2821c
000268c2 2046       mov      r0, r4
000268c4 10bd       pop      {r4, pc}
000268c6 fef7e3f9   bl       #0x24c90
000268ca 0d20       movs     r0, #0xd
000268cc 2146       mov      r1, r4
000268ce 11f099ff   bl       #0x38804
000268d2 0120       movs     r0, #1
000268d4 f6e7       b        #0x268c4
000268d6 00bf       nop      
000268d8 4d63       str      r5, [r1, #0x34]
000268da 0200       movs     r2, r0
000268dc 1fb5       push     {r0, r1, r2, r3, r4, lr}
000268de 0c46       mov      r4, r1
000268e0 71bb       cbnz     r1, #0x26940
000268e2 fef797ff   bl       #0x25814
000268e6 0128       cmp      r0, #1
000268e8 05d0       beq      #0x268f6
000268ea 0228       cmp      r0, #2
000268ec 1bd0       beq      #0x26926
000268ee 0120       movs     r0, #1
000268f0 01f062fc   bl       #0x281b8
000268f4 14e0       b        #0x26920
000268f6 fff725f8   bl       #0x25944
000268fa 0390       str      r0, [sp, #0xc]
000268fc fff72af8   bl       #0x25954
00026900 00eb4002   add.w    r2, r0, r0, lsl #1
00026904 c2ebc202   rsb      r2, r2, r2, lsl #3
00026908 0346       mov      r3, r0
0002690a 9200       lsls     r2, r2, #2
0002690c 1148       ldr      r0, [pc, #0x44] ; [0x26954]=0x26f51
0002690e 0399       ldr      r1, [sp, #0xc]
00026910 0090       str      r0, [sp]
00026912 92b2       uxth     r2, r2
00026914 1020       movs     r0, #0x10
00026916 1af073fc   bl       #0x41200
0002691a 0028       cmp      r0, #0
0002691c e8d1       bne      #0x268f0
0002691e 0024       movs     r4, #0
00026920 2046       mov      r0, r4
00026922 04b0       add      sp, #0x10
00026924 10bd       pop      {r4, pc}
00026926 fff711f8   bl       #0x2594c
0002692a 0390       str      r0, [sp, #0xc]
0002692c fff712f8   bl       #0x25954
00026930 4201       lsls     r2, r0, #5
00026932 0346       mov      r3, r0
00026934 0748       ldr      r0, [pc, #0x1c] ; [0x26954]=0x26f51
00026936 0090       str      r0, [sp]
00026938 0399       ldr      r1, [sp, #0xc]
0002693a 92b2       uxth     r2, r2
0002693c 1520       movs     r0, #0x15
0002693e eae7       b        #0x26916
00026940 0020       movs     r0, #0
00026942 fef721fa   bl       #0x24d88
00026946 0020       movs     r0, #0
00026948 fef75eff   bl       #0x25808
0002694c 0124       movs     r4, #1
0002694e fef79ff9   bl       #0x24c90
00026952 e5e7       b        #0x26920
00026954 516f       ldr      r1, [r2, #0x74]
00026956 0200       movs     r2, r0
00026958 37b5       push     {r0, r1, r2, r4, r5, lr}
0002695a 0c46       mov      r4, r1
0002695c 91bb       cbnz     r1, #0x269c4
0002695e fef719fa   bl       #0x24d94
00026962 0028       cmp      r0, #0
00026964 14bf       ite      ne
00026966 0323       movne    r3, #3
00026968 0223       moveq    r3, #2
0002696a 0122       movs     r2, #1
0002696c 6946       mov      r1, sp
0002696e 1a4d       ldr      r5, [pc, #0x68] ; [0x269d8]=0x20011056
00026970 8df80030   strb.w   r3, [sp]
00026974 40f24440   movw     r0, #0x444
00026978 0df054fa   bl       #0x33e24
0002697c 1749       ldr      r1, [pc, #0x5c] ; [0x269dc]=0x4f15a 'rose_state_machine.c'
0002697e 40f2ee22   movw     r2, #0x2ee
00026982 13f067f9   bl       #0x39c54
00026986 2b78       ldrb     r3, [r5]
00026988 062b       cmp      r3, #6
0002698a 05d1       bne      #0x26998
0002698c 144a       ldr      r2, [pc, #0x50] ; [0x269e0]=0x26d8d
0002698e 0421       movs     r1, #4
00026990 2046       mov      r0, r4
00026992 01f043fc   bl       #0x2821c
00026996 12e0       b        #0x269be
00026998 124a       ldr      r2, [pc, #0x48] ; [0x269e4]=0x26d11
0002699a 2146       mov      r1, r4
0002699c 2046       mov      r0, r4
0002699e 01f03dfc   bl       #0x2821c
000269a2 2b78       ldrb     r3, [r5]
000269a4 8df80430   strb.w   r3, [sp, #4]
000269a8 0122       movs     r2, #1
000269aa 01a9       add      r1, sp, #4
000269ac 40f2aa40   movw     r0, #0x4aa
