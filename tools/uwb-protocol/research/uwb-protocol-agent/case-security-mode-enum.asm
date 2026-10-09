0002c12c aadf       svc      #0xaa
0002c12e 7047       bx       lr
0002c130 0023       movs     r3, #0
0002c132 0138       subs     r0, #1
0002c134 0b70       strb     r3, [r1]
0002c136 0428       cmp      r0, #4
0002c138 06d8       bhi      #0x2c148
0002c13a dfe800f0   tbb      [pc, r0] ; [0x2c13c]=0x603f000
0002c13e 0306       lsls     r3, r0, #0x18
0002c140 080a       lsrs     r0, r1, #8
0002c142 0c00       movs     r4, r1
0002c144 1123       movs     r3, #0x11
0002c146 0b70       strb     r3, [r1]
0002c148 7047       bx       lr
0002c14a 2123       movs     r3, #0x21
0002c14c fbe7       b        #0x2c146
0002c14e 3123       movs     r3, #0x31
0002c150 f9e7       b        #0x2c146
0002c152 1223       movs     r3, #0x12
0002c154 f7e7       b        #0x2c146
0002c156 2223       movs     r3, #0x22
0002c158 f5e7       b        #0x2c146
0002c15a 0088       ldrh     r0, [r0]
0002c15c 00f00100   and      r0, r0, #1
0002c160 7047       bx       lr
