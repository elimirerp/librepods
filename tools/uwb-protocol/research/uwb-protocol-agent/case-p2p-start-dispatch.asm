000241f0 8f4b       ldr      r3, [pc, #0x23c] ; [0x24430]=0x20010160
000241f2 1b68       ldr      r3, [r3]
000241f4 002b       cmp      r3, #0
000241f6 00f01881   beq.w    #0x2442a
000241fa 1b78       ldrb     r3, [r3]
000241fc 9a07       lsls     r2, r3, #0x1e
000241fe 40f11481   bpl.w    #0x2442a
00024202 0421       movs     r1, #4
00024204 2846       mov      r0, r5
00024206 17f099f9   bl       #0x3b53c
0002420a 0028       cmp      r0, #0
0002420c 00f00b81   beq.w    #0x24426
00024210 0025       movs     r5, #0
00024212 adf82550   strh.w   r5, [sp, #0x25]
00024216 217c       ldrb     r1, [r4, #0x10]
00024218 9df82520   ldrb.w   r2, [sp, #0x25]
0002421c 9df82600   ldrb.w   r0, [sp, #0x26]
00024220 e37b       ldrb     r3, [r4, #0xf]
00024222 8df82430   strb.w   r3, [sp, #0x24]
00024226 01f00107   and      r7, r1, #1
0002422a c1f3420c   ubfx     ip, r1, #1, #3
0002422e 67f30002   bfi      r2, r7, #0, #1
00024232 6cf34302   bfi      r2, ip, #1, #3
00024236 c1f30011   ubfx     r1, r1, #4, #1
0002423a 61f30412   bfi      r2, r1, #4, #1
0002423e 8df82520   strb.w   r2, [sp, #0x25]
00024242 627c       ldrb     r2, [r4, #0x11]
00024244 02f00f0e   and      lr, r2, #0xf
00024248 6ef30300   bfi      r0, lr, #0, #4
0002424c 1209       lsrs     r2, r2, #4
0002424e 62f30710   bfi      r0, r2, #4, #4
00024252 8df82600   strb.w   r0, [sp, #0x26]
00024256 a07c       ldrb     r0, [r4, #0x12]
00024258 00f00f08   and      r8, r0, #0xf
0002425c 4646       mov      r6, r8
0002425e 0009       lsrs     r0, r0, #4
00024260 60f30716   bfi      r6, r0, #4, #4
00024264 8df82760   strb.w   r6, [sp, #0x27]
00024268 e67c       ldrb     r6, [r4, #0x13]
0002426a 8df82860   strb.w   r6, [sp, #0x28]
0002426e 267d       ldrb     r6, [r4, #0x14]
00024270 8df82960   strb.w   r6, [sp, #0x29]
00024274 667d       ldrb     r6, [r4, #0x15]
00024276 8df82a60   strb.w   r6, [sp, #0x2a]
0002427a a67d       ldrb     r6, [r4, #0x16]
0002427c 8df82b60   strb.w   r6, [sp, #0x2b]
00024280 94f81890   ldrb.w   sb, [r4, #0x18]
00024284 e67d       ldrb     r6, [r4, #0x17]
00024286 46ea0926   orr.w    r6, r6, sb, lsl #8
0002428a adf82c60   strh.w   r6, [sp, #0x2c]
0002428e 94f81a90   ldrb.w   sb, [r4, #0x1a]
00024292 667e       ldrb     r6, [r4, #0x19]
00024294 46ea0926   orr.w    r6, r6, sb, lsl #8
00024298 adf82e60   strh.w   r6, [sp, #0x2e]
0002429c e67e       ldrb     r6, [r4, #0x1b]
0002429e 8df83060   strb.w   r6, [sp, #0x30]
000242a2 267f       ldrb     r6, [r4, #0x1c]
000242a4 8df83160   strb.w   r6, [sp, #0x31]
000242a8 667f       ldrb     r6, [r4, #0x1d]
000242aa 8df83260   strb.w   r6, [sp, #0x32]
000242ae a67f       ldrb     r6, [r4, #0x1e]
000242b0 8df83360   strb.w   r6, [sp, #0x33]
000242b4 94f82090   ldrb.w   sb, [r4, #0x20]
000242b8 e67f       ldrb     r6, [r4, #0x1f]
000242ba 94f82140   ldrb.w   r4, [r4, #0x21]
000242be 0097       str      r7, [sp]
000242c0 cde903e2   strd     lr, r2, [sp, #0xc]
000242c4 cde901c1   strd     ip, r1, [sp, #4]
000242c8 cde90580   strd     r8, r0, [sp, #0x14]
000242cc 594a       ldr      r2, [pc, #0x164] ; [0x24434]=0x4e095 'Set NB Range Params1: ver: 0x%x, mms_frag_count=%u, uwb_country_code=%u, mms_mode=%u, nb_country_code_3: %u,  nb_country_code_5: %u,               sar_country_code_3: 0x%x, sar_cou'
000242ce 8df83640   strb.w   r4, [sp, #0x36]
000242d2 46ea0926   orr.w    r6, r6, sb, lsl #8
000242d6 0121       movs     r1, #1
000242d8 0f20       movs     r0, #0xf
000242da adf83460   strh.w   r6, [sp, #0x34]
000242de 12f025fc   bl       #0x36b2c
000242e2 bdf82e30   ldrh.w   r3, [sp, #0x2e]
000242e6 0493       str      r3, [sp, #0x10]
000242e8 bdf82c30   ldrh.w   r3, [sp, #0x2c]
000242ec 0393       str      r3, [sp, #0xc]
000242ee 9df82b30   ldrb.w   r3, [sp, #0x2b]
000242f2 0293       str      r3, [sp, #8]
000242f4 9df82a30   ldrb.w   r3, [sp, #0x2a]
000242f8 0193       str      r3, [sp, #4]
000242fa 9df82930   ldrb.w   r3, [sp, #0x29]
000242fe 0093       str      r3, [sp]
