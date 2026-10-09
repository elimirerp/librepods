0003c858 73b5       push     {r0, r1, r4, r5, r6, lr}
0003c85a 4b88       ldrh     r3, [r1, #2]
0003c85c 0093       str      r3, [sp]
0003c85e 0c46       mov      r4, r1
0003c860 0b88       ldrh     r3, [r1]
0003c862 884a       ldr      r2, [pc, #0x220] ; [0x3ca84]=0x5d901 'Write handle 0x%x, uuid 0x%x'
0003c864 0546       mov      r5, r0
0003c866 0221       movs     r1, #2
0003c868 0920       movs     r0, #9
0003c86a faf75ff9   bl       #0x36b2c
0003c86e 6288       ldrh     r2, [r4, #2]
0003c870 42f60213   movw     r3, #0x2902
0003c874 9a42       cmp      r2, r3
0003c876 00f0d480   beq.w    #0x3ca22
0003c87a 834e       ldr      r6, [pc, #0x20c] ; [0x3ca88]=0x2000fc00
0003c87c 2388       ldrh     r3, [r4]
0003c87e 3268       ldr      r2, [r6]
0003c880 d18b       ldrh     r1, [r2, #0x1e]
0003c882 9942       cmp      r1, r3
0003c884 41d1       bne      #0x3c90a
0003c886 6389       ldrh     r3, [r4, #0xa]
0003c888 804a       ldr      r2, [pc, #0x200] ; [0x3ca8c]=0x5d984 'Write request (%d bytes)'
0003c88a 0221       movs     r1, #2
0003c88c 0b20       movs     r0, #0xb
0003c88e faf74df9   bl       #0x36b2c
0003c892 6389       ldrh     r3, [r4, #0xa]
0003c894 022b       cmp      r3, #2
0003c896 14d9       bls      #0x3c8c2
0003c898 227b       ldrb     r2, [r4, #0xc]
0003c89a 012a       cmp      r2, #1
0003c89c 2bd0       beq      #0x3c8f6
0003c89e 7c4a       ldr      r2, [pc, #0x1f0] ; [0x3ca90]=0x5d93b 'Command lengths to not exceed mtu'
0003c8a0 0021       movs     r1, #0
0003c8a2 0b20       movs     r0, #0xb
0003c8a4 faf742f9   bl       #0x36b2c
0003c8a8 3368       ldr      r3, [r6]
0003c8aa da8b       ldrh     r2, [r3, #0x1e]
0003c8ac 0323       movs     r3, #3
0003c8ae 0093       str      r3, [sp]
0003c8b0 b4f80d30   ldrh.w   r3, [r4, #0xd]
0003c8b4 2946       mov      r1, r5
0003c8b6 40f20b20   movw     r0, #0x20b
0003c8ba fff79bff   bl       #0x3c7f4
0003c8be 0b20       movs     r0, #0xb
0003c8c0 10e0       b        #0x3c8e4
0003c8c2 744a       ldr      r2, [pc, #0x1d0] ; [0x3ca94]=0x5d91e 'Incomplete packet - len = %d'
0003c8c4 0021       movs     r1, #0
0003c8c6 0b20       movs     r0, #0xb
0003c8c8 faf730f9   bl       #0x36b2c
0003c8cc 3368       ldr      r3, [r6]
0003c8ce da8b       ldrh     r2, [r3, #0x1e]
0003c8d0 4ff6ff73   movw     r3, #0xffff
0003c8d4 0093       str      r3, [sp]
0003c8d6 2946       mov      r1, r5
0003c8d8 0023       movs     r3, #0
0003c8da 40f20b20   movw     r0, #0x20b
0003c8de fff789ff   bl       #0x3c7f4
0003c8e2 0920       movs     r0, #9
0003c8e4 2388       ldrh     r3, [r4]
0003c8e6 0093       str      r3, [sp]
0003c8e8 6b4a       ldr      r2, [pc, #0x1ac] ; [0x3ca98]=0x5d9bd 'Error %d for write handle 0x%x'
0003c8ea 0346       mov      r3, r0
0003c8ec 0021       movs     r1, #0
0003c8ee 0920       movs     r0, #9
0003c8f0 faf71cf9   bl       #0x36b2c
0003c8f4 95e0       b        #0x3ca22
0003c8f6 013b       subs     r3, #1
0003c8f8 9ab2       uxth     r2, r3
0003c8fa 04f10d01   add.w    r1, r4, #0xd
0003c8fe 2846       mov      r0, r5
0003c900 02b0       add      sp, #8
0003c902 bde87040   pop.w    {r4, r5, r6, lr}
0003c906 01f0adb8   b.w      #0x3da64
0003c90a d18c       ldrh     r1, [r2, #0x26]
0003c90c 9942       cmp      r1, r3
0003c90e 3cd1       bne      #0x3c98a
0003c910 1368       ldr      r3, [r2]
0003c912 6249       ldr      r1, [pc, #0x188] ; [0x3ca9c]=0x5d744 'gatt.c'
0003c914 93f84400   ldrb.w   r0, [r3, #0x44]
0003c918 7d22       movs     r2, #0x7d
0003c91a 80f00100   eor      r0, r0, #1
0003c91e fdf7       .byte    0xfd, 0xf7
