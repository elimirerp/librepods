0002003c 2de9f041   push.w   {r4, r5, r6, r7, r8, lr}
00020040 494e       ldr      r6, [pc, #0x124] ; [0x20168]=0x2000fd30
00020042 90b0       sub      sp, #0x40
00020044 0446       mov      r4, r0
00020046 1746       mov      r7, r2
00020048 1d46       mov      r5, r3
0002004a 484a       ldr      r2, [pc, #0x120] ; [0x2016c]=0x4bfcd 'current state: %u'
0002004c 7378       ldrb     r3, [r6, #1]
0002004e 9df85880   ldrb.w   r8, [sp, #0x58]
00020052 0221       movs     r1, #2
00020054 0720       movs     r0, #7
00020056 16f069fd   bl       #0x36b2c
0002005a 7378       ldrb     r3, [r6, #1]
0002005c 082b       cmp      r3, #8
0002005e 08d0       beq      #0x20072
00020060 0720       movs     r0, #7
00020062 434a       ldr      r2, [pc, #0x10c] ; [0x20170]=0x4bfdf 'invalid state for ranging: %u'
00020064 0021       movs     r1, #0
00020066 16f061fd   bl       #0x36b2c
0002006a 0820       movs     r0, #8
0002006c 10b0       add      sp, #0x40
0002006e bde8f081   pop.w    {r4, r5, r6, r7, r8, pc}
00020072 96f800c0   ldrb.w   ip, [r6]
00020076 bcf1000f   cmp.w    ip, #0
0002007a 06d0       beq      #0x2008a
0002007c 0720       movs     r0, #7
0002007e 3d4a       ldr      r2, [pc, #0xf4] ; [0x20174]=0x4bffd 'RoseConfigureRanging not permitted in passthrough'
00020080 0021       movs     r1, #0
00020082 16f053fd   bl       #0x36b2c
00020086 0720       movs     r0, #7
00020088 f0e7       b        #0x2006c
0002008a 2cb1       cbz      r4, #0x20098
0002008c b4f80530   ldrh.w   r3, [r4, #5]
00020090 13b1       cbz      r3, #0x20098
00020092 57ea0503   orrs.w   r3, r7, r5
00020096 06d1       bne      #0x200a6
00020098 374a       ldr      r2, [pc, #0xdc] ; [0x20178]=0x4c02f 'invalid parameter'
0002009a 0021       movs     r1, #0
0002009c 0720       movs     r0, #7
0002009e 16f045fd   bl       #0x36b2c
000200a2 0120       movs     r0, #1
000200a4 e2e7       b        #0x2006c
000200a6 6278       ldrb     r2, [r4, #1]
000200a8 02f00303   and      r3, r2, #3
000200ac 012b       cmp      r3, #1
000200ae 05d9       bls      #0x200bc
000200b0 324a       ldr      r2, [pc, #0xc8] ; [0x2017c]=0x4c041 'invalid rf channel parameter: %d'
000200b2 6146       mov      r1, ip
000200b4 0720       movs     r0, #7
000200b6 16f039fd   bl       #0x36b2c
000200ba f2e7       b        #0x200a2
000200bc 02f00c03   and      r3, r2, #0xc
000200c0 082b       cmp      r3, #8
000200c2 03d0       beq      #0x200cc
000200c4 c2f38103   ubfx     r3, r2, #2, #2
000200c8 2d4a       ldr      r2, [pc, #0xb4] ; [0x20180]=0x4c062 'invalid session type: %u'
000200ca f2e7       b        #0x200b2
000200cc a278       ldrb     r2, [r4, #2]
000200ce 02f00f03   and      r3, r2, #0xf
000200d2 0d2b       cmp      r3, #0xd
000200d4 01d9       bls      #0x200da
000200d6 2b4a       ldr      r2, [pc, #0xac] ; [0x20184]=0x4c07b 'invalid tx packet type: %d'
000200d8 ebe7       b        #0x200b2
000200da df2a       cmp      r2, #0xdf
000200dc 4fea1213   lsr.w    r3, r2, #4
000200e0 01d9       bls      #0x200e6
000200e2 294a       ldr      r2, [pc, #0xa4] ; [0x20188]=0x4c096 'invalid rx packet type: %d'
000200e4 e5e7       b        #0x200b2
000200e6 f378       ldrb     r3, [r6, #3]
000200e8 6168       ldr      r1, [r4, #4]
000200ea 284a       ldr      r2, [pc, #0xa0] ; [0x2018c]=0x4c0b1 'UWB MAC address: %x:%x:%x:%x:%x:%x:%x:%x'
000200ec 23f00103   bic      r3, r3, #1
000200f0 f370       strb     r3, [r6, #3]
000200f2 2068       ldr      r0, [r4]
000200f4 06f11803   add.w    r3, r6, #0x18
000200f8 03c3       stm      r3!, {r0, r1}
000200fa a068       ldr      r0, [r4, #8]
000200fc 1860       str      r0, [r3]
000200fe 2b0e       lsrs     r3, r5, #0x18
00020100 0693       str      r3, [sp, #0x18]
00020102 c5f30743   ubfx     r3, r5, #0x10, #8
00020106 0593       str      r3, [sp, #0x14]
00020108 c5f30723   ubfx     r3, r5, #8, #8
0002010c 0493       str      r3, [sp, #0x10]
0002010e 3b0e       lsrs     r3, r7, #0x18
00020110 0293       str      r3, [sp, #8]
00020112 c7f30743   ubfx     r3, r7, #0x10, #8
00020116 c6e91675   strd     r7, r5, [r6, #0x58]
0002011a 0193       str      r3, [sp, #4]
0002011c edb2       uxtb     r5, r5
0002011e c7f30723   ubfx     r3, r7, #8, #8
00020122 0093       str      r3, [sp]
00020124 0395       str      r5, [sp, #0xc]
00020126 fbb2       uxtb     r3, r7
00020128 0121       movs     r1, #1
0002012a 0720       movs     r0, #7
0002012c 86f878c0   strb.w   ip, [r6, #0x78]
00020130 16f0fcfc   bl       #0x36b2c
00020134 b8f1000f   cmp.w    r8, #0
00020138 04d0       beq      #0x20144
0002013a 154a       ldr      r2, [pc, #0x54] ; [0x20190]=0x4c0da 'ignoring custom tx power limit and using regulatory values'
0002013c 0021       movs     r1, #0
0002013e 0720       movs     r0, #7
00020140 16f0f4fc   bl       #0x36b2c
00020144 1922       movs     r2, #0x19
00020146 0021       movs     r1, #0
00020148 09a8       add      r0, sp, #0x24
0002014a 24f0a2fa   bl       #0x44692
0002014e 2378       ldrb     r3, [r4]
00020150 8df82430   strb.w   r3, [sp, #0x24]
00020154 a378       ldrb     r3, [r4, #2]
00020156 0921       movs     r1, #9
00020158 03f00f03   and      r3, r3, #0xf
0002015c 09a8       add      r0, sp, #0x24
0002015e adf82530   strh.w   r3, [sp, #0x25]
00020162 fcf717fc   bl       #0x1c994
00020166 81e7       b        #0x2006c
00020168 30fd0020   ldc2     p0, c2, [r0, #-0]!
0002016c cdbf       iteet    gt
0002016e 0400       movs     r4, r0
00020170 dfbf       itttt    le
00020172 0400       movs     r4, r0
00020174 fdbf       iteet    al
00020176 0400       movs     r4, r0
00020178 2fc0       stmgt    r0!, {r0, r1, r2, r3, r5}
0002017a 0400       movs     r4, r0
0002017c 41c0       stm      r0!, {r0, r6}
0002017e 0400       movs     r4, r0
00020180 62c0       stm      r0!, {r1, r5, r6}
00020182 0400       movs     r4, r0
00020184 7bc0       stm      r0!, {r0, r1, r3, r4, r5, r6}
00020186 0400       movs     r4, r0
00020188 96c0       stm      r0!, {r1, r2, r4, r7}
0002018a 0400       movs     r4, r0
0002018c b1c0       stm      r0!, {r0, r4, r5, r7}
0002018e 0400       movs     r4, r0
00020190 dac0       stm      r0!, {r1, r3, r4, r6, r7}
00020192 0400       movs     r4, r0
00020194 0000       movs     r0, r0
00020196 0000       movs     r0, r0
