00025bd0 38b5       push     {r3, r4, r5, lr}
00025bd2 0446       mov      r4, r0
00025bd4 144a       ldr      r2, [pc, #0x50] ; [0x25c28]=0x4ee81 'roseRangingConnectionEventTriggerStop'
00025bd6 0121       movs     r1, #1
00025bd8 0720       movs     r0, #7
00025bda 10f0a7ff   bl       #0x36b2c
00025bde 2088       ldrh     r0, [r4]
00025be0 fff704ff   bl       #0x259ec
00025be4 0446       mov      r4, r0
00025be6 28b1       cbz      r0, #0x25bf4
00025be8 0346       mov      r3, r0
00025bea 104a       ldr      r2, [pc, #0x40] ; [0x25c2c]=0x4eea7 'Range start failure: sd_ble_gap_conn_evt_trigger_stop err %d'
00025bec 0021       movs     r1, #0
00025bee 0720       movs     r0, #7
00025bf0 10f09cff   bl       #0x36b2c
00025bf4 0e4b       ldr      r3, [pc, #0x38] ; [0x25c30]=0x20011048
00025bf6 0f4d       ldr      r5, [pc, #0x3c] ; [0x25c34]=0x20011010
00025bf8 1878       ldrb     r0, [r3]
00025bfa 05f06dfa   bl       #0x2b0d8
00025bfe 0346       mov      r3, r0
00025c00 70b1       cbz      r0, #0x25c20
00025c02 0d4a       ldr      r2, [pc, #0x34] ; [0x25c38]=0x4eee4 'Range start failure. nrfx_ppi_channel_free err %d'
00025c04 0021       movs     r1, #0
00025c06 0720       movs     r0, #7
00025c08 10f090ff   bl       #0x36b2c
00025c0c fef742ff   bl       #0x24a94
00025c10 2b78       ldrb     r3, [r5]
00025c12 13b1       cbz      r3, #0x25c1a
00025c14 0320       movs     r0, #3
00025c16 01f0eff9   bl       #0x26ff8
00025c1a 0023       movs     r3, #0
00025c1c 2b70       strb     r3, [r5]
00025c1e 38bd       pop      {r3, r4, r5, pc}
00025c20 002c       cmp      r4, #0
00025c22 f3d1       bne      #0x25c0c
00025c24 f9e7       b        #0x25c1a
00025c26 00bf       nop      
00025c28 81ee0400   cdp      p0, #8, c0, c1, c4, #0
00025c2c a7ee0400   cdp      p0, #0xa, c0, c7, c4, #0
00025c30 4810       asrs     r0, r1, #1
00025c32 0120       movs     r0, #1
00025c34 1010       asrs     r0, r2, #0x20
00025c36 0120       movs     r0, #1
00025c38 e4ee0400   cdp      p0, #0xe, c0, c4, c4, #0
