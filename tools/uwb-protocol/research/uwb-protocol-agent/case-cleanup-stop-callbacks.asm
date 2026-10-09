000261a4 10b5       push     {r4, lr}
000261a6 0c46       mov      r4, r1
000261a8 49b1       cbz      r1, #0x261be
000261aa 094a       ldr      r2, [pc, #0x24] ; [0x261d0]=0x4f16f 'Range complete failed'
000261ac 0021       movs     r1, #0
000261ae 0720       movs     r0, #7
000261b0 10f0bcfc   bl       #0x36b2c
000261b4 0021       movs     r1, #0
000261b6 074a       ldr      r2, [pc, #0x1c] ; [0x261d4]=0x26d35
000261b8 0846       mov      r0, r1
000261ba 02f02ff8   bl       #0x2821c
000261be 2146       mov      r1, r4
000261c0 2020       movs     r0, #0x20
000261c2 12f01ffb   bl       #0x38804
000261c6 201e       subs     r0, r4, #0
000261c8 18bf       it       ne
000261ca 0120       movne    r0, #1
000261cc 10bd       pop      {r4, pc}
000261ce 00bf       nop      
000261d0 6ff10400   sbc      r0, pc, #4
000261d4 356d       ldr      r5, [r6, #0x50]
000261d6 0200       movs     r2, r0
