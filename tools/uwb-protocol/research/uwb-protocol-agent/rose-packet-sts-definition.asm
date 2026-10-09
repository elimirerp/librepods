0041a500 5046       mov      r0, sl
0041a502 fef787fa   bl       #0x418a14
0041a506 2068       ldr      r0, [r4]
0041a508 b0b3       cbz      r0, #0x41a578
0041a50a 6068       ldr      r0, [r4, #4]
0041a50c 0228       cmp      r0, #2
0041a50e 0fd1       bne      #0x41a530
0041a510 44f68430   movw     r0, #0x4b84
0041a514 0121       movs     r1, #1
0041a516 2950       str      r1, [r5, r0]
0041a518 0020       movs     r0, #0
0041a51a caf80000   str.w    r0, [sl]
0041a51e 2be0       b        #0x41a578
0041a520 1820       movs     r0, #0x18
0041a522 0040       ands     r0, r0
0041a524 08a5       adr      r5, #0x20
0041a526 0210       asrs     r2, r0, #0x20
0041a528 a812       asrs     r0, r5, #0xa
0041a52a 1144       add      r1, r2
0041a52c 8219       adds     r2, r0, r6
0041a52e 0410       asrs     r4, r0, #0x20
0041a530 059a       ldr      r2, [sp, #0x14]
0041a532 44f68831   movw     r1, #0x4b88
0041a536 44f69833   movw     r3, #0x4b98
0041a53a 6a50       str      r2, [r5, r1]
0041a53c a169       ldr      r1, [r4, #0x18]
0041a53e a26c       ldr      r2, [r4, #0x48]
0041a540 ea50       str      r2, [r5, r3]
0041a542 c1f3c001   ubfx     r1, r1, #3, #1
0041a546 44f69c32   movw     r2, #0x4b9c
0041a54a a950       str      r1, [r5, r2]
0041a54c c11e       subs     r1, r0, #3
0041a54e 0138       subs     r0, #1
0041a550 44f69432   movw     r2, #0x4b94
0041a554 43f08df8   bl       #0x45d672
0041a558 a950       str      r1, [r5, r2]
0041a55a 44f68c31   movw     r1, #0x4b8c
0041a55e 6850       str      r0, [r5, r1]
0041a560 0120       movs     r0, #1
0041a562 44f68431   movw     r1, #0x4b84
0041a566 caf80000   str.w    r0, [sl]
0041a56a 2944       add      r1, r5
0041a56c 98f8d321   ldrb.w   r2, [r8, #0x1d3]
0041a570 d206       lsls     r2, r2, #0x1b
0041a572 48bf       it       mi
0041a574 0220       movmi    r0, #2
0041a576 0860       str      r0, [r1]
0041a578 0020       movs     r0, #0
0041a57a b9f1000f   cmp.w    sb, #0
0041a57e 3075       strb     r0, [r6, #0x14]
0041a580 08bf       it       eq
0041a582 fef7e5f8   bleq     #0x418750
0041a586 0c98       ldr      r0, [sp, #0x30]
0041a588 4146       mov      r1, r8
0041a58a fef717fe   bl       #0x4191bc
0041a58e 30e6       b        #0x41a1f2
0041a590 1349       ldr      r1, [pc, #0x4c] ; [0x41a5e0]=0x44800030
0041a592 0968       ldr      r1, [r1]
0041a594 40f050ff   bl       #0x45b438
0041a598 41f2b531   movw     r1, #0x13b5
0041a59c 1648       ldr      r0, [pc, #0x58] ; [0x41a5f8]=0x46d8d5 'hmd.c'
0041a59e 1e4a       ldr      r2, [pc, #0x78] ; [0x41a618]=0x46dcbf '!HMD_RX_STATUS_SW_BUSY'
0041a5a0 1df01af8   bl       #0x4375d8
0041a5a4 1448       ldr      r0, [pc, #0x50] ; [0x41a5f8]=0x46d8d5 'hmd.c'
0041a5a6 154a       ldr      r2, [pc, #0x54] ; [0x41a5fc]=0x4700bb
0041a5a8 41f2d101   movw     r1, #0x10d1
0041a5ac 1df00af8   bl       #0x4375c4
0041a5b0 1148       ldr      r0, [pc, #0x44] ; [0x41a5f8]=0x46d8d5 'hmd.c'
0041a5b2 1d4a       ldr      r2, [pc, #0x74] ; [0x41a628]=0x46de84 'dsp_acfg'
0041a5b4 41f2bd01   movw     r1, #0x10bd
0041a5b8 1df004f8   bl       #0x4375c4
0041a5bc 0021       movs     r1, #0
0041a5be 05f13802   add.w    r2, r5, #0x38
0041a5c2 8de80700   stm.w    sp, {r0, r1, r2}
0041a5c6 0391       str      r1, [sp, #0xc]
0041a5c8 41f2ed01   movw     r1, #0x10ed
0041a5cc 0a48       ldr      r0, [pc, #0x28] ; [0x41a5f8]=0x46d8d5 'hmd.c'
0041a5ce 174a       ldr      r2, [pc, #0x5c] ; [0x41a62c]=0x46de54 '!hmd_cb.hwacc_cfg'
0041a5d0 1df002f8   bl       #0x4375d8
0041a5d4 0848       ldr      r0, [pc, #0x20] ; [0x41a5f8]=0x46d8d5 'hmd.c'
0041a5d6 124a       ldr      r2, [pc, #0x48] ; [0x41a620]=0x46df32 'hmd_pkt_get_sts_seg_len_snd(pkt_type,(hmd_sts_seg_len_t * const)&sts_seg_len)'
0041a5d8 41f2ad01   movw     r1, #0x10ad
0041a5dc 1cf0f2ff   bl       #0x4375c4
0041a5e0 3000       movs     r0, r6
0041a5e2 8044       add      r8, r0
0041a5e4 885b       ldrh     r0, [r1, r6]
0041a5e6 0010       asrs     r0, r0, #0x20
0041a5e8 dc5a       ldrh     r4, [r3, r3]
0041a5ea 0010       asrs     r0, r0, #0x20
0041a5ec d0fe0310   cdp2     p0, #0xd, c1, c0, c3, #0
0041a5f0 7071       strb     r0, [r6, #5]
0041a5f2 4600       lsls     r6, r0, #1
0041a5f4 f884       strh     r0, [r7, #0x26]
0041a5f6 4600       lsls     r6, r0, #1
0041a5f8 d5d8       bhi      #0x41a5a6
0041a5fa 4600       lsls     r6, r0, #1
0041a5fc bb00       lsls     r3, r7, #2
0041a5fe 4700       lsls     r7, r0, #1
0041a600 6887       strh     r0, [r5, #0x3a]
0041a602 4600       lsls     r6, r0, #1
0041a604 6cfc0310   stc2l    p0, c1, [ip], #-0xc
0041a608 28a6       adr      r6, #0xa0
0041a60a 0210       asrs     r2, r0, #0x20
0041a60c 86dc       bgt      #0x41a51c
0041a60e 4600       lsls     r6, r0, #1
0041a610 75e0       b        #0x41a6fe
0041a612 4600       lsls     r6, r0, #1
0041a614 5fdc       bgt      #0x41a6d6
0041a616 4600       lsls     r6, r0, #1
0041a618 bfdc       bgt      #0x41a59a
0041a61a 4600       lsls     r6, r0, #1
0041a61c f4de       udf      #0xf4
0041a61e 4600       lsls     r6, r0, #1
0041a620 32df       svc      #0x32
0041a622 4600       lsls     r6, r0, #1
0041a624 80df       svc      #0x80
0041a626 4600       lsls     r6, r0, #1
