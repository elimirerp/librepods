000387c0 07b5       push     {r0, r1, r2, lr}
000387c2 0020       movs     r0, #0
000387c4 8df80700   strb.w   r0, [sp, #7]
000387c8 09f03af9   bl       #0x41a40
000387cc 38b9       cbnz     r0, #0x387de
000387ce 0123       movs     r3, #1
000387d0 8df80730   strb.w   r3, [sp, #7]
000387d4 0df10700   add.w    r0, sp, #7
000387d8 fff7ecff   bl       #0x387b4
000387dc 05e0       b        #0x387ea
000387de 08f0bfff   bl       #0x41760
000387e2 8df80700   strb.w   r0, [sp, #7]
000387e6 0028       cmp      r0, #0
000387e8 f4d1       bne      #0x387d4
000387ea 0020       movs     r0, #0
000387ec 03b0       add      sp, #0xc
000387ee 5df804fb   ldr      pc, [sp], #4
000387f2 0000       movs     r0, r0
000387f4 0021       movs     r1, #0
000387f6 024a       ldr      r2, [pc, #8] ; [0x38800]=0x3894b
000387f8 0846       mov      r0, r1
000387fa eff70fbd   b.w      #0x2821c
000387fe 00bf       nop      
00038800 4b89       ldrh     r3, [r1, #0xa]
00038802 0300       movs     r3, r0
00038804 2de9f043   push.w   {r4, r5, r6, r7, r8, sb, lr}
00038808 384d       ldr      r5, [pc, #0xe0] ; [0x388ec]=0x200142ee
0003880a 394a       ldr      r2, [pc, #0xe4] ; [0x388f0]=0x5c298
0003880c 2b78       ldrb     r3, [r5]
0003880e 394e       ldr      r6, [pc, #0xe4] ; [0x388f4]=0x5c584
00038810 52f82090   ldr.w    sb, [r2, r0, lsl #2]
00038814 56f82330   ldr.w    r3, [r6, r3, lsl #2]
00038818 374a       ldr      r2, [pc, #0xdc] ; [0x388f8]=0x5bb76 '%s | Current State %s Event %s'
0003881a 85b0       sub      sp, #0x14
0003881c 0746       mov      r7, r0
0003881e 0093       str      r3, [sp]
00038820 1120       movs     r0, #0x11
00038822 364b       ldr      r3, [pc, #0xd8] ; [0x388fc]=0x5c23c 'findMySmEventHandler'
00038824 cdf80490   str.w    sb, [sp, #4]
00038828 8846       mov      r8, r1
0003882a 0121       movs     r1, #1
0003882c fef77ef9   bl       #0x36b2c
00038830 334b       ldr      r3, [pc, #0xcc] ; [0x38900]=0x200141c8
00038832 1868       ldr      r0, [r3]
00038834 30b3       cbz      r0, #0x38884
00038836 0179       ldrb     r1, [r0, #4]
00038838 2a78       ldrb     r2, [r5]
0003883a 0068       ldr      r0, [r0]
0003883c 3b46       mov      r3, r7
0003883e fff719fb   bl       #0x37e74
00038842 0446       mov      r4, r0
00038844 f0b1       cbz      r0, #0x38884
00038846 2d4b       ldr      r3, [pc, #0xb4] ; [0x388fc]=0x5c23c 'findMySmEventHandler'
00038848 2e4a       ldr      r2, [pc, #0xb8] ; [0x38904]=0x5bb95 '%s | Extension handler selected (%p)'
0003884a 0090       str      r0, [sp]
0003884c 0221       movs     r1, #2
0003884e 1120       movs     r0, #0x11
00038850 fef76cf9   bl       #0x36b2c
00038854 6368       ldr      r3, [r4, #4]
00038856 4146       mov      r1, r8
00038858 3846       mov      r0, r7
0003885a 9847       blx      r3
0003885c f0b1       cbz      r0, #0x3889c
0003885e a378       ldrb     r3, [r4, #2]
00038860 0e2b       cmp      r3, #0xe
00038862 3fd0       beq      #0x388e4
00038864 2a78       ldrb     r2, [r5]
00038866 56f82330   ldr.w    r3, [r6, r3, lsl #2]
0003886a 0193       str      r3, [sp, #4]
0003886c 56f82230   ldr.w    r3, [r6, r2, lsl #2]
00038870 0290       str      r0, [sp, #8]
00038872 0093       str      r3, [sp]
00038874 244a       ldr      r2, [pc, #0x90] ; [0x38908]=0x5bbfe '%s fail transition old %s new %s err %d'
00038876 214b       ldr      r3, [pc, #0x84] ; [0x388fc]=0x5c23c 'findMySmEventHandler'
00038878 0121       movs     r1, #1
0003887a 1120       movs     r0, #0x11
0003887c fef756f9   bl       #0x36b2c
00038880 a378       ldrb     r3, [r4, #2]
00038882 1ce0       b        #0x388be
00038884 2a78       ldrb     r2, [r5]
00038886 2148       ldr      r0, [pc, #0x84] ; [0x3890c]=0x5c3e0
00038888 3b46       mov      r3, r7
0003888a 0b21       movs     r1, #0xb
0003888c fff7f2fa   bl       #0x37e74
00038890 0446       mov      r4, r0
00038892 d8b1       cbz      r0, #0x388cc
00038894 194b       ldr      r3, [pc, #0x64] ; [0x388fc]=0x5c23c 'findMySmEventHandler'
00038896 1e4a       ldr      r2, [pc, #0x78] ; [0x38910]=0x5bbba '%s | Core handler selected (%p)'
00038898 0090       str      r0, [sp]
0003889a d7e7       b        #0x3884c
0003889c 6378       ldrb     r3, [r4, #1]
0003889e 0e2b       cmp      r3, #0xe
000388a0 20d0       beq      #0x388e4
000388a2 2a78       ldrb     r2, [r5]
000388a4 56f82330   ldr.w    r3, [r6, r3, lsl #2]
000388a8 0193       str      r3, [sp, #4]
000388aa 56f82230   ldr.w    r3, [r6, r2, lsl #2]
000388ae 0093       str      r3, [sp]
000388b0 184a       ldr      r2, [pc, #0x60] ; [0x38914]=0x5bbda '%s success transition old %s new %s'
000388b2 124b       ldr      r3, [pc, #0x48] ; [0x388fc]=0x5c23c 'findMySmEventHandler'
000388b4 0121       movs     r1, #1
000388b6 1120       movs     r0, #0x11
000388b8 fef738f9   bl       #0x36b2c
000388bc 6378       ldrb     r3, [r4, #1]
000388be 2b70       strb     r3, [r5]
000388c0 2878       ldrb     r0, [r5]
000388c2 05b0       add      sp, #0x14
000388c4 bde8f043   pop.w    {r4, r5, r6, r7, r8, sb, lr}
000388c8 fff79cbc   b.w      #0x38204
000388cc 2b78       ldrb     r3, [r5]
000388ce 124a       ldr      r2, [pc, #0x48] ; [0x38918]=0x5bc26 '%s | Unhandled Event! State %s Event %s'
000388d0 56f82330   ldr.w    r3, [r6, r3, lsl #2]
000388d4 0093       str      r3, [sp]
000388d6 0146       mov      r1, r0
000388d8 084b       ldr      r3, [pc, #0x20] ; [0x388fc]=0x5c23c 'findMySmEventHandler'
000388da cdf80490   str.w    sb, [sp, #4]
000388de 1120       movs     r0, #0x11
