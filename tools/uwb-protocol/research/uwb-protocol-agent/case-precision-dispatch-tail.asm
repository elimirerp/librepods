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
00024300 4d4a       ldr      r2, [pc, #0x134] ; [0x24438]=0x4e159 'Set NB Range Params2: acqTimeout_s: %u acq_retry_int_ms=%u, acq_dit_ms=%u, rng_timeout_s: %u,  nb_mask_nap_ch: %u,               nb_ch_sel_mask: %u'
00024302 9df82830   ldrb.w   r3, [sp, #0x28]
00024306 0121       movs     r1, #1
00024308 0f20       movs     r0, #0xf
0002430a 12f00ffc   bl       #0x36b2c
0002430e 9df83630   ldrb.w   r3, [sp, #0x36]
00024312 8df81030   strb.w   r3, [sp, #0x10]
00024316 bdf83430   ldrh.w   r3, [sp, #0x34]
0002431a 0393       str      r3, [sp, #0xc]
0002431c 9df83330   ldrb.w   r3, [sp, #0x33]
00024320 0293       str      r3, [sp, #8]
00024322 9df83230   ldrb.w   r3, [sp, #0x32]
00024326 0193       str      r3, [sp, #4]
00024328 9df83130   ldrb.w   r3, [sp, #0x31]
0002432c 0093       str      r3, [sp]
0002432e 434a       ldr      r2, [pc, #0x10c] ; [0x2443c]=0x4e1ed 'Set NB Range Params3: mms_psr_minus_one: %u mms_gap=%u, mms_seq_idx=%u, mms_slot_size: %u,  rng_int_ms: %u,               misc_settings: %u'
00024330 9df83030   ldrb.w   r3, [sp, #0x30]
00024334 0121       movs     r1, #1
00024336 0f20       movs     r0, #0xf
00024338 12f0f8fb   bl       #0x36b2c
0002433c 09a8       add      r0, sp, #0x24
0002433e 01f04ffe   bl       #0x25fe0
00024342 3de7       b        #0x241c0
00024344 0421       movs     r1, #4
00024346 2846       mov      r0, r5
00024348 17f0f8f8   bl       #0x3b53c
0002434c 0028       cmp      r0, #0
0002434e 6ad0       beq      #0x24426
00024350 0122       movs     r2, #1
00024352 2846       mov      r0, r5
00024354 1146       mov      r1, r2
00024356 17f0d3f9   bl       #0x3b700
0002435a 01f063fb   bl       #0x25a24
0002435e b4f80f00   ldrh.w   r0, [r4, #0xf]
00024362 01f069fb   bl       #0x25a38
00024366 0021       movs     r1, #0
00024368 1f20       movs     r0, #0x1f
0002436a 14f04bfa   bl       #0x38804
0002436e 344b       ldr      r3, [pc, #0xd0] ; [0x24440]=0x2000fc00
00024370 1b68       ldr      r3, [r3]
00024372 da8f       ldrh     r2, [r3, #0x3e]
00024374 0096       str      r6, [sp]
00024376 3b46       mov      r3, r7
00024378 91e6       b        #0x2409e
0002437a 2d4b       ldr      r3, [pc, #0xb4] ; [0x24430]=0x20010160
0002437c 1b68       ldr      r3, [r3]
0002437e 002b       cmp      r3, #0
00024380 53d0       beq      #0x2442a
00024382 1b78       ldrb     r3, [r3]
00024384 9b07       lsls     r3, r3, #0x1e
00024386 50d5       bpl      #0x2442a
00024388 0421       movs     r1, #4
0002438a 2846       mov      r0, r5
0002438c 17f0d6f8   bl       #0x3b53c
00024390 0028       cmp      r0, #0
00024392 48d0       beq      #0x24426
00024394 0122       movs     r2, #1
00024396 2846       mov      r0, r5
00024398 1146       mov      r1, r2
0002439a 17f0b1f9   bl       #0x3b700
0002439e 04f10f00   add.w    r0, r4, #0xf
000243a2 01f03ffe   bl       #0x26024
000243a6 dee7       b        #0x24366
000243a8 0421       movs     r1, #4
000243aa 2846       mov      r0, r5
000243ac 17f0c6f8   bl       #0x3b53c
000243b0 0028       cmp      r0, #0
000243b2 38d0       beq      #0x24426
000243b4 0220       movs     r0, #2
000243b6 01f021fb   bl       #0x259fc
000243ba 0021       movs     r1, #0
000243bc 2120       movs     r0, #0x21
000243be 14f021fa   bl       #0x38804
000243c2 0120       movs     r0, #1
000243c4 0223       movs     r3, #2
000243c6 0090       str      r0, [sp]
000243c8 1a46       mov      r2, r3
000243ca 2621       movs     r1, #0x26
000243cc 10f0d0fb   bl       #0x34b70
000243d0 0020       movs     r0, #0
000243d2 3ae6       b        #0x2404a
000243d4 0421       movs     r1, #4
000243d6 2846       mov      r0, r5
000243d8 17f0b0f8   bl       #0x3b53c
000243dc 18b3       cbz      r0, #0x24426
000243de 0220       movs     r0, #2
000243e0 01f00cfb   bl       #0x259fc
000243e4 0021       movs     r1, #0
000243e6 1c20       movs     r0, #0x1c
000243e8 98e6       b        #0x2411c
000243ea 114b       ldr      r3, [pc, #0x44] ; [0x24430]=0x20010160
000243ec 1b68       ldr      r3, [r3]
000243ee e3b1       cbz      r3, #0x2442a
000243f0 e37b       ldrb     r3, [r4, #0xf]
000243f2 144a       ldr      r2, [pc, #0x50] ; [0x24444]=0x4df79 'TRUE'
000243f4 13f0010f   tst.w    r3, #1
000243f8 4ff00201   mov.w    r1, #2
000243fc 124b       ldr      r3, [pc, #0x48] ; [0x24448]=0x4df7e 'FALSE'
000243fe 4ff00f00   mov.w    r0, #0xf
00024402 18bf       it       ne
00024404 1346       movne    r3, r2
00024406 114a       ldr      r2, [pc, #0x44] ; [0x2444c]=0x4e279 'source finding capability, simultaneous ranging and sound supported = %s'
00024408 12f090fb   bl       #0x36b2c
0002440c 0021       movs     r1, #0
0002440e 40f21170   movw     r0, #0x711
00024412 fff7d3fc   bl       #0x23dbc
00024416 dbe7       b        #0x243d0
00024418 0d4a       ldr      r2, [pc, #0x34] ; [0x24450]=0x4e2c2 'Error - Unknown opcode 0x%x'
0002441a 3b46       mov      r3, r7
0002441c 0021       movs     r1, #0
0002441e 0f20       movs     r0, #0xf
00024420 12f084fb   bl       #0x36b2c
00024424 d4e7       b        #0x243d0
00024426 0126       movs     r6, #1
00024428 a1e7       b        #0x2436e
0002442a 4ff6ff76   movw     r6, #0xffff
0002442e 9ee7       b        #0x2436e
