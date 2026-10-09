004231c6 b9f85400   ldrh.w   r0, [sb, #0x54]
004231ca 30b1       cbz      r0, #0x4231da
004231cc 99f83410   ldrb.w   r1, [sb, #0x34]
004231d0 0029       cmp      r1, #0
004231d2 7bd0       beq      #0x4232cc
004231d4 0429       cmp      r1, #4
004231d6 7cd2       bhs      #0x4232d2
004231d8 83e0       b        #0x4232e2
004231da 4ff02208   mov.w    r8, #0x22
004231de cae4       b        #0x422b76
004231e0 08a8       add      r0, sp, #0x20
004231e2 0ecd       ldm      r5!, {r1, r2, r3}
004231e4 0ec0       stm      r0!, {r1, r2, r3}
004231e6 2978       ldrb     r1, [r5]
004231e8 0170       strb     r1, [r0]
004231ea 1ea8       add      r0, sp, #0x78
004231ec c11c       adds     r1, r0, #3
004231ee 0798       ldr      r0, [sp, #0x1c]
004231f0 b0f82d00   ldrh.w   r0, [r0, #0x2d]
004231f4 f2f714fd   bl       #0x415c20
004231f8 40b3       cbz      r0, #0x42324c
004231fa 0798       ldr      r0, [sp, #0x1c]
004231fc 90f82c00   ldrb.w   r0, [r0, #0x2c]
00423200 2028       cmp      r0, #0x20
00423202 05d1       bne      #0x423210
00423204 9df87900   ldrb.w   r0, [sp, #0x79]
00423208 411e       subs     r1, r0, #1
0042320a 0840       ands     r0, r1
0042320c 0006       lsls     r0, r0, #0x18
0042320e 1dd1       bne      #0x42324c
00423210 1ea8       add      r0, sp, #0x78
00423212 10ad       add      r5, sp, #0x40
00423214 3af0d3fa   bl       #0x45d7be
00423218 c0b1       cbz      r0, #0x42324c
0042321a 0798       ldr      r0, [sp, #0x1c]
0042321c 90f82f00   ldrb.w   r0, [r0, #0x2f]
00423220 0028       cmp      r0, #0
00423222 00f09380   beq.w    #0x42334c
00423226 0798       ldr      r0, [sp, #0x1c]
00423228 90f82c00   ldrb.w   r0, [r0, #0x2c]
0042322c 2028       cmp      r0, #0x20
0042322e 02d1       bne      #0x423236
00423230 601e       subs     r0, r4, #1
00423232 2040       ands     r0, r4
00423234 0ad1       bne      #0x42324c
00423236 bdf87b00   ldrh.w   r0, [sp, #0x7b]
0042323a adf86f00   strh.w   r0, [sp, #0x6f]
0042323e 1ba8       add      r0, sp, #0x6c
00423240 0ca9       add      r1, sp, #0x30
00423242 13f0b7fc   bl       #0x436bb4
00423246 0028       cmp      r0, #0
00423248 40f08580   bne.w    #0x423356
0042324c 2026       movs     r6, #0x20
0042324e dae6       b        #0x423006
00423250 01f066fb   bl       #0x424920
00423254 0028       cmp      r0, #0
00423256 5cd0       beq      #0x423312
00423258 8246       mov      sl, r0
0042325a 2888       ldrh     r0, [r5]
0042325c 0438       subs     r0, #4
0042325e 4a28       cmp      r0, #0x4a
00423260 40f07881   bne.w    #0x423554
00423264 0020       movs     r0, #0
00423266 2146       mov      r1, r4
00423268 4a22       movs     r2, #0x4a
0042326a caf80400   str.w    r0, [sl, #4]
0042326e 0af19000   add.w    r0, sl, #0x90
00423272 e3f76dfb   bl       #0x406950
00423276 0af11200   add.w    r0, sl, #0x12
0042327a 3146       mov      r1, r6
0042327c 39f0fcf8   bl       #0x45c478
00423280 95f82900   ldrb.w   r0, [r5, #0x29]
00423284 10ac       add      r4, sp, #0x40
00423286 0028       cmp      r0, #0
00423288 08bf       it       eq
0042328a 3446       moveq    r4, r6
0042328c 14a9       add      r1, sp, #0x50
0042328e 0af11f00   add.w    r0, sl, #0x1f
00423292 08bf       it       eq
00423294 3146       moveq    r1, r6
00423296 39f0eff8   bl       #0x45c478
0042329a 0af12c00   add.w    r0, sl, #0x2c
0042329e 2146       mov      r1, r4
004232a0 39f0eaf8   bl       #0x45c478
004232a4 1120       movs     r0, #0x11
004232a6 ddf81490   ldr.w    sb, [sp, #0x14]
004232aa 8af84800   strb.w   r0, [sl, #0x48]
004232ae baf89000   ldrh.w   r0, [sl, #0x90]
004232b2 aaf84600   strh.w   r0, [sl, #0x46]
004232b6 9af89200   ldrb.w   r0, [sl, #0x92]
004232ba 8af84900   strb.w   r0, [sl, #0x49]
004232be 5046       mov      r0, sl
004232c0 39f80c1c   ldrh     r1, [sb, #-0xc]
004232c4 01f0dafb   bl       #0x424a7c
004232c8 8046       mov      r8, r0
004232ca 4de5       b        #0x422d68
004232cc 0421       movs     r1, #4
004232ce 89f83410   strb.w   r1, [sb, #0x34]
004232d2 99f82620   ldrb.w   r2, [sb, #0x26]
004232d6 99f83530   ldrb.w   r3, [sb, #0x35]
004232da 941c       adds     r4, r2, #2
004232dc a400       lsls     r4, r4, #2
004232de 9c42       cmp      r4, r3
004232e0 03d9       bls      #0x4232ea
004232e2 4ff03308   mov.w    r8, #0x33
004232e6 fff746bc   b.w      #0x422b76
004232ea 4ff47a74   mov.w    r4, #0x3e8
004232ee 01eb       .byte    0x01, 0xeb
