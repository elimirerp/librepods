000257b4 054a       ldr      r2, [pc, #0x14] ; [0x257cc]=0x20010da8
000257b6 0023       movs     r3, #0
000257b8 1370       strb     r3, [r2]
000257ba 054a       ldr      r2, [pc, #0x14] ; [0x257d0]=0x20010daa
000257bc 1370       strb     r3, [r2]
000257be 054a       ldr      r2, [pc, #0x14] ; [0x257d4]=0x20010dab
000257c0 1370       strb     r3, [r2]
000257c2 054a       ldr      r2, [pc, #0x14] ; [0x257d8]=0x20010da9
000257c4 1370       strb     r3, [r2]
000257c6 01f00dbd   b.w      #0x271e4
000257ca 00bf       nop      
000257cc a80d       lsrs     r0, r5, #0x16
000257ce 0120       movs     r0, #1
000257d0 aa0d       lsrs     r2, r5, #0x16
000257d2 0120       movs     r0, #1
000257d4 ab0d       lsrs     r3, r5, #0x16
000257d6 0120       movs     r0, #1
000257d8 a90d       lsrs     r1, r5, #0x16
000257da 0120       movs     r0, #1
000257dc 044b       ldr      r3, [pc, #0x10] ; [0x257f0]=0x20010f95
000257de 00f12002   add.w    r2, r0, #0x20
000257e2 50f8041b   ldr      r1, [r0], #4
000257e6 43f8041b   str      r1, [r3], #4
000257ea 9042       cmp      r0, r2
000257ec f9d1       bne      #0x257e2
000257ee 7047       bx       lr
000257f0 950f       lsrs     r5, r2, #0x1e
000257f2 0120       movs     r0, #1
000257f4 08b5       push     {r3, lr}
000257f6 0146       mov      r1, r0
000257f8 7122       movs     r2, #0x71
000257fa 0248       ldr      r0, [pc, #8] ; [0x25804]=0x20010f24
000257fc 1ef00eff   bl       #0x4461c
00025800 08bd       pop      {r3, pc}
00025802 00bf       nop      
00025804 240f       lsrs     r4, r4, #0x1c
00025806 0120       movs     r0, #1
