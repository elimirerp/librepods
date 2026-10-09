0041b630 7a70       strb     r2, [r7, #1]
0041b632 4843       muls     r0, r1, r0
0041b634 d4f8bc61   ldr.w    r6, [r4, #0x1bc]
0041b638 90fbf2fb   sdiv     fp, r0, r2
0041b63c b4f81803   ldrh.w   r0, [r4, #0x318]
0041b640 faf77afb   bl       #0x415d38
0041b644 8046       mov      r8, r0
0041b646 608d       ldrh     r0, [r4, #0x2a]
0041b648 8946       mov      sb, r1
0041b64a faf775fb   bl       #0x415d38
0041b64e 8a46       mov      sl, r1
0041b650 d4f81a13   ldr.w    r1, [r4, #0x31a]
0041b654 0546       mov      r5, r0
0041b656 c4f81eb3   str.w    fp, [r4, #0x31e]
0041b65a a0fb0102   umull    r0, r2, r0, r1
0041b65e cb17       asrs     r3, r1, #0x1f
0041b660 05fb0322   mla      r2, r5, r3, r2
0041b664 4b46       mov      r3, sb
0041b666 0afb0121   mla      r1, sl, r1, r2
0041b66a 4246       mov      r2, r8
0041b66c ebf710fe   bl       #0x407290
0041b670 5844       add      r0, fp
0041b672 0023       movs     r3, #0
0041b674 c4f82802   str.w    r0, [r4, #0x228]
0041b678 800c       lsrs     r0, r0, #0x12
0041b67a 36f8051f   ldrh     r1, [r6, #5]!
0041b67e d6f80320   ldr.w    r2, [r6, #3]
0041b682 01f03f01   and      r1, r1, #0x3f
0041b686 60f30102   bfi      r2, r0, #0, #2
0041b68a c6f80320   str.w    r2, [r6, #3]
0041b68e d4f82802   ldr.w    r0, [r4, #0x228]
0041b692 820a       lsrs     r2, r0, #0xa
0041b694 41ea8010   orr.w    r0, r1, r0, lsl #6
0041b698 5146       mov      r1, sl
0041b69a b270       strb     r2, [r6, #2]
0041b69c 3080       strh     r0, [r6]
0041b69e 2846       mov      r0, r5
0041b6a0 4ff47a72   mov.w    r2, #0x3e8
0041b6a4 ebf7f4fd   bl       #0x407290
0041b6a8 0546       mov      r5, r0
0041b6aa 0c4a       ldr      r2, [pc, #0x30] ; [0x41b6dc]=0x3b9aca00
0041b6ac d4f82802   ldr.w    r0, [r4, #0x228]
0041b6b0 0e46       mov      r6, r1
0041b6b2 d4f81e83   ldr.w    r8, [r4, #0x31e]
0041b6b6 41f0fff8   bl       #0x45c8b8
0041b6ba 0446       mov      r4, r0
0041b6bc 88fb0901   smull    r0, r1, r8, sb
0041b6c0 2a46       mov      r2, r5
0041b6c2 3346       mov      r3, r6
0041b6c4 ebf7e4fd   bl       #0x407290
0041b6c8 0346       mov      r3, r0
0041b6ca 0548       ldr      r0, [pc, #0x14] ; [0x41b6e0]=0x10041bbd
0041b6cc 8821       movs     r1, #0x88
0041b6ce 2246       mov      r2, r4
0041b6d0 18f0c6fd   bl       #0x434260
0041b6d4 2046       mov      r0, r4
0041b6d6 bde8080f   pop.w    {r3, r8, sb, sl, fp}
0041b6da f0bd       pop      {r4, r5, r6, r7, pc}
0041b6dc 00ca       .byte    0x00, 0xca
0041b6de 9a3b       subs     r3, #0x9a
0041b6e0 bd1b       subs     r5, r7, r6
0041b6e2 0410       asrs     r4, r0, #0x20
0041b6e4 c0f30721   ubfx     r1, r0, #8, #8
0041b6e8 0629       cmp      r1, #6
0041b6ea 0cd8       bhi      #0x41b706
0041b6ec 084a       ldr      r2, [pc, #0x20] ; [0x41b710]=0x468514
0041b6ee c0b2       uxtb     r0, r0
0041b6f0 525c       ldrb     r2, [r2, r1]
0041b6f2 9042       cmp      r0, r2
0041b6f4 07d2       bhs      #0x41b706
0041b6f6 074a       ldr      r2, [pc, #0x1c] ; [0x41b714]=0x4684f8
0041b6f8 c0ebc000   rsb      r0, r0, r0, lsl #3
0041b6fc 52f82110   ldr.w    r1, [r2, r1, lsl #2]
0041b700 11f83000   ldrb.w   r0, [r1, r0, lsl #3]
0041b704 00e0       b        #0x41b708
0041b706 0020       movs     r0, #0
0041b708 00f00100   and      r0, r0, #1
0041b70c 7047       bx       lr
0041b70e 00bf       nop      
0041b710 1485       strh     r4, [r2, #0x28]
0041b712 4600       lsls     r6, r0, #1
0041b714 f884       strh     r0, [r7, #0x26]
0041b716 4600       lsls     r6, r0, #1
0041b718 80b2       uxth     r0, r0
0041b71a 6ff00401   mvn      r1, #4
0041b71e 01eb1021   add.w    r1, r1, r0, lsr #8
0041b722 0129       cmp      r1, #1
0041b724 98bf       it       ls
0041b726 fff7ddbf   bls.w    #0x41b6e4
0041b72a 0020       movs     r0, #0
0041b72c 7047       bx       lr
0041b72e c1b2       uxtb     r1, r0
0041b730 c0f30720   ubfx     r0, r0, #8, #8
0041b734 0728       cmp      r0, #7
0041b736 03d1       bne      #0x41b740
0041b738 0729       cmp      r1, #7
0041b73a 3cbf       itt      lo
0041b73c 0120       movlo    r0, #1
0041b73e 7047       bxlo     lr
0041b740 0022       movs     r2, #0
0041b742 0d29       cmp      r1, #0xd
0041b744 38bf       it       lo
0041b746 0122       movlo    r2, #1
0041b748 0838       subs     r0, #8
0041b74a 7146       mov      r1, lr
0041b74c 41f01cfb   bl       #0x45cd88
0041b750 8e46       mov      lr, r1
0041b752 1040       ands     r0, r2
0041b754 7047       bx       lr
0041b756 00bf       nop      
0041b758 f0b5       push     {r4, r5, r6, r7, lr}
0041b75a 03af       add      r7, sp, #0xc
0041b75c 4df804bd   str      fp, [sp, #-0x4]!
0041b760 0546       mov      r5, r0
0041b762 80b2       uxth     r0, r0
0041b764 0c46       mov      r4, r1
0041b766 42f046f9   bl       #0x45d9f6
0041b76a 0ad0       beq      #0x41b782
0041b76c 164a       ldr      r2, [pc, #0x58] ; [0x41b7c8]=0x10000fb8
0041b76e 1748       ldr      r0, [pc, #0x5c] ; [0x41b7cc]=0x100013fc
0041b770 41f097f9   bl       #0x45caa2
0041b774 08bf       it       eq
0041b776 11fb0326   smlabbeq r6, r1, r3, r2
0041b77a 3168       ldr      r1, [r6]
0041b77c b1f1ff3f   cmp.w    r1, #-1
0041b780 02dd       ble      #0x41b788
0041b782 0020       movs     r0, #0
0041b784 40f01cbc   b.w      #0x45bfc0
0041b788 41f05efe   bl       #0x45d448
0041b78c 02d8       bhi      #0x41b794
0041b78e b0f5006f   cmp.w    r0, #0x800
0041b792 f6d1       bne      #0x41b782
0041b794 032c       cmp      r4, #3
0041b796 02d8       bhi      #0x41b79e
0041b798 b0f5006f   cmp.w    r0, #0x800
0041b79c f1d0       beq      #0x41b782
0041b79e 280a       lsrs     r0, r5, #8
0041b7a0 c3b2       uxtb     r3, r0
0041b7a2 202c       cmp      r4, #0x20
0041b7a4 01d8       bhi      #0x41b7aa
0041b7a6 082b       cmp      r3, #8
0041b7a8 04d1       bne      #0x41b7b4
0041b7aa 0020       movs     r0, #0
0041b7ac 302c       cmp      r4, #0x30
0041b7ae e9d8       bhi      #0x41b784
0041b7b0 082b       cmp      r3, #8
0041b7b2 e7d1       bne      #0x41b784
0041b7b4 0020       movs     r0, #0
0041b7b6 102c       cmp      r4, #0x10
0041b7b8 88bf       it       hi
0041b7ba 0120       movhi    r0, #1
0041b7bc e2d8       bhi      #0x41b784
0041b7be 9142       cmp      r1, r2
0041b7c0 88bf       it       hi
0041b7c2 0120       movhi    r0, #1
0041b7c4 dee7       b        #0x41b784
0041b7c6 00bf       nop      
0041b7c8 b80f       lsrs     r0, r7, #0x1e
0041b7ca 0010       asrs     r0, r0, #0x20
0041b7cc fc13       asrs     r4, r7, #0xf
0041b7ce 0010       asrs     r0, r0, #0x20
0041b7d0 f0b5       push     {r4, r5, r6, r7, lr}
0041b7d2 03af       add      r7, sp, #0xc
0041b7d4 4df804bd   str      fp, [sp, #-0x4]!
0041b7d8 0546       mov      r5, r0
0041b7da 80b2       uxth     r0, r0
0041b7dc 0c46       mov      r4, r1
0041b7de 42f00af9   bl       #0x45d9f6
0041b7e2 0ad0       beq      #0x41b7fa
0041b7e4 164a       ldr      r2, [pc, #0x58] ; [0x41b840]=0x10000fb8
0041b7e6 1748       ldr      r0, [pc, #0x5c] ; [0x41b844]=0x100013fc
0041b7e8 41f05bf9   bl       #0x45caa2
0041b7ec 08bf       it       eq
0041b7ee 11fb0326   smlabbeq r6, r1, r3, r2
0041b7f2 3168       ldr      r1, [r6]
0041b7f4 b1f1ff3f   cmp.w    r1, #-1
0041b7f8 02dd       ble      #0x41b800
0041b7fa 0020       movs     r0, #0
0041b7fc 40f0e0bb   b.w      #0x45bfc0
0041b800 41f022fe   bl       #0x45d448
0041b804 02d8       bhi      #0x41b80c
0041b806 b0f5006f   cmp.w    r0, #0x800
0041b80a f6d1       bne      #0x41b7fa
0041b80c 012c       cmp      r4, #1
0041b80e 02d8       bhi      #0x41b816
0041b810 b0f5006f   cmp.w    r0, #0x800
0041b814 f1d0       beq      #0x41b7fa
0041b816 280a       lsrs     r0, r5, #8
0041b818 c3b2       uxtb     r3, r0
0041b81a 202c       cmp      r4, #0x20
0041b81c 01d8       bhi      #0x41b822
0041b81e 082b       cmp      r3, #8
0041b820 04d1       bne      #0x41b82c
0041b822 0020       movs     r0, #0
0041b824 302c       cmp      r4, #0x30
0041b826 e9d8       bhi      #0x41b7fc
0041b828 082b       cmp      r3, #8
0041b82a e7d1       bne      #0x41b7fc
0041b82c 0020       movs     r0, #0
0041b82e 102c       cmp      r4, #0x10
0041b830 88bf       it       hi
0041b832 0120       movhi    r0, #1
0041b834 e2d8       bhi      #0x41b7fc
0041b836 9142       cmp      r1, r2
0041b838 88bf       it       hi
0041b83a 0120       movhi    r0, #1
0041b83c dee7       b        #0x41b7fc
0041b83e 00bf       nop      
0041b840 b80f       lsrs     r0, r7, #0x1e
0041b842 0010       asrs     r0, r0, #0x20
0041b844 fc13       asrs     r4, r7, #0xf
0041b846 0010       asrs     r0, r0, #0x20
0041b848 d0b5       push     {r4, r6, r7, lr}
0041b84a 02af       add      r7, sp, #8
0041b84c 0446       mov      r4, r0
0041b84e 80b2       uxth     r0, r0
0041b850 42f0d1f8   bl       #0x45d9f6
0041b854 10d0       beq      #0x41b878
0041b856 0949       ldr      r1, [pc, #0x24] ; [0x41b87c]=0x10000fb8
0041b858 094b       ldr      r3, [pc, #0x24] ; [0x41b880]=0x100013fc
0041b85a e0b2       uxtb     r0, r4
0041b85c 9c22       movs     r2, #0x9c
0041b85e 04f47f44   and      r4, r4, #0xff00
0041b862 b4f5e06f   cmp.w    r4, #0x700
0041b866 10fb0233   smlabb   r3, r0, r2, r3
0041b86a 08bf       it       eq
0041b86c 10fb0213   smlabbeq r3, r0, r2, r1
0041b870 5879       ldrb     r0, [r3, #5]
0041b872 c0f3c000   ubfx     r0, r0, #3, #1
0041b876 d0bd       pop      {r4, r6, r7, pc}
0041b878 0020       movs     r0, #0
0041b87a d0bd       pop      {r4, r6, r7, pc}
0041b87c b80f       lsrs     r0, r7, #0x1e
0041b87e 0010       asrs     r0, r0, #0x20
0041b880 fc13       asrs     r4, r7, #0xf
0041b882 0010       asrs     r0, r0, #0x20
0041b884 f0b5       push     {r4, r5, r6, r7, lr}
0041b886 03af       add      r7, sp, #0xc
0041b888 4df8048d   str      r8, [sp, #-0x4]!
0041b88c 0446       mov      r4, r0
0041b88e 80b2       uxth     r0, r0
0041b890 1d46       mov      r5, r3
0041b892 1646       mov      r6, r2
0041b894 8846       mov      r8, r1
0041b896 fff7d7ff   bl       #0x41b848
0041b89a 0146       mov      r1, r0
0041b89c 0020       movs     r0, #0
0041b89e 302d       cmp      r5, #0x30
0041b8a0 98bf       it       ls
0041b8a2 402e       cmpls    r6, #0x40
0041b8a4 01d9       bls      #0x41b8aa
0041b8a6 40f0a7bb   b.w      #0x45bff8
0041b8aa 0029       cmp      r1, #0
0041b8ac fbd0       beq      #0x41b8a6
0041b8ae 092d       cmp      r5, #9
0041b8b0 f9d3       blo      #0x41b8a6
0041b8b2 174a       ldr      r2, [pc, #0x5c] ; [0x41b910]=0x10000fb8
0041b8b4 1748       ldr      r0, [pc, #0x5c] ; [0x41b914]=0x100013fc
0041b8b6 e1b2       uxtb     r1, r4
0041b8b8 9c23       movs     r3, #0x9c
0041b8ba 04f47f44   and      r4, r4, #0xff00
0041b8be b4f5e06f   cmp.w    r4, #0x700
0041b8c2 11fb0300   smlabb   r0, r1, r3, r0
0041b8c6 08bf       it       eq
0041b8c8 11fb0320   smlabbeq r0, r1, r3, r2
0041b8cc 8168       ldr      r1, [r0, #8]
0041b8ce 06b1       cbz      r6, #0x41b8d2
0041b8d0 71b9       cbnz     r1, #0x41b8f0
0041b8d2 202d       cmp      r5, #0x20
0041b8d4 00d8       bhi      #0x41b8d8
0041b8d6 59b1       cbz      r1, #0x41b8f0
0041b8d8 182d       cmp      r5, #0x18
0041b8da 01d8       bhi      #0x41b8e0
0041b8dc 0229       cmp      r1, #2
0041b8de 07d0       beq      #0x41b8f0
0041b8e0 212d       cmp      r5, #0x21
0041b8e2 01d3       blo      #0x41b8e8
0041b8e4 0229       cmp      r1, #2
0041b8e6 03d0       beq      #0x41b8f0
0041b8e8 192d       cmp      r5, #0x19
0041b8ea 03d3       blo      #0x41b8f4
0041b8ec 0129       cmp      r1, #1
0041b8ee 01d1       bne      #0x41b8f4
0041b8f0 0020       movs     r0, #0
0041b8f2 d8e7       b        #0x41b8a6
0041b8f4 b8f11e0f   cmp.w    r8, #0x1e
0041b8f8 01d9       bls      #0x41b8fe
0041b8fa 0120       movs     r0, #1
0041b8fc d3e7       b        #0x41b8a6
0041b8fe 4079       ldrb     r0, [r0, #5]
0041b900 b8fa88f1   clz      r1, r8
0041b904 4909       lsrs     r1, r1, #5
0041b906 00f01000   and      r0, r0, #0x10
0041b90a 01ea1010   and.w    r0, r1, r0, lsr #4
0041b90e cae7       b        #0x41b8a6
0041b910 b80f       lsrs     r0, r7, #0x1e
0041b912 0010       asrs     r0, r0, #0x20
0041b914 fc13       asrs     r4, r7, #0xf
0041b916 0010       asrs     r0, r0, #0x20
0041b918 d0b5       push     {r4, r6, r7, lr}
0041b91a 02af       add      r7, sp, #8
0041b91c 0446       mov      r4, r0
0041b91e 80b2       uxth     r0, r0
0041b920 fff7e0fe   bl       #0x41b6e4
0041b924 60b1       cbz      r0, #0x41b940
0041b926 0849       ldr      r1, [pc, #0x20] ; [0x41b948]=0x4684f8
0041b928 c4f30720   ubfx     r0, r4, #8, #8
0041b92c 51f82000   ldr.w    r0, [r1, r0, lsl #2]
0041b930 e1b2       uxtb     r1, r4
0041b932 c1ebc101   rsb      r1, r1, r1, lsl #3
0041b936 00ebc100   add.w    r0, r0, r1, lsl #3
0041b93a 90f82000   ldrb.w   r0, [r0, #0x20]
0041b93e 00e0       b        #0x41b942
0041b940 0020       movs     r0, #0
0041b942 00f00100   and      r0, r0, #1
0041b946 d0bd       pop      {r4, r6, r7, pc}
0041b948 f884       strh     r0, [r7, #0x26]
0041b94a 4600       lsls     r6, r0, #1
0041b94c d0b5       push     {r4, r6, r7, lr}
0041b94e 02af       add      r7, sp, #8
0041b950 0446       mov      r4, r0
0041b952 80b2       uxth     r0, r0
0041b954 fbf7dcff   bl       #0x417910
0041b958 08b1       cbz      r0, #0x41b95e
0041b95a 0020       movs     r0, #0
0041b95c d0bd       pop      {r4, r6, r7, pc}
0041b95e 6ff00100   mvn      r0, #1
0041b962 6ff00202   mvn      r2, #2
0041b966 50fa94f1   uxtab    r1, r0, r4, ror #8
0041b96a 7f20       movs     r0, #0x7f
0041b96c 1142       tst      r1, r2
0041b96e 08bf       it       eq
0041b970 40f6ff70   movweq   r0, #0xfff
0041b974 d0bd       pop      {r4, r6, r7, pc}
0041b976 00bf       nop      
0041b978 d0b5       push     {r4, r6, r7, lr}
0041b97a 02af       add      r7, sp, #8
