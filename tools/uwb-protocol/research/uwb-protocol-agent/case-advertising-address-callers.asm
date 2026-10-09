0003a978 31a6       adr      r6, #0xc4
0003a97a 0300       movs     r3, r0
0003a97c d4fb       .byte    0xd4, 0xfb
0003a97e 0020       movs     r0, #0
0003a980 f0b5       push     {r4, r5, r6, r7, lr}
0003a982 2a4a       ldr      r2, [pc, #0xa8] ; [0x3aa2c]=0x5ced0 'Init Wild'
0003a984 2a4f       ldr      r7, [pc, #0xa8] ; [0x3aa30]=0x2001458c
0003a986 adb0       sub      sp, #0xb4
0003a988 0446       mov      r4, r0
0003a98a 0d46       mov      r5, r1
0003a98c 1820       movs     r0, #0x18
0003a98e 0121       movs     r1, #1
0003a990 fcf7ccf8   bl       #0x36b2c
0003a994 ac22       movs     r2, #0xac
0003a996 0021       movs     r1, #0
0003a998 01a8       add      r0, sp, #4
0003a99a 09f07afe   bl       #0x44692
0003a99e 254a       ldr      r2, [pc, #0x94] ; [0x3aa34]=0x5ce8a 'Stopping adv due to %s'
0003a9a0 254b       ldr      r3, [pc, #0x94] ; [0x3aa38]=0x5cfdc 'advManagerInitWild'
0003a9a2 0221       movs     r1, #2
0003a9a4 1820       movs     r0, #0x18
0003a9a6 fcf7c1f8   bl       #0x36b2c
0003a9aa fff7bdfe   bl       #0x3a728
0003a9ae 2046       mov      r0, r4
0003a9b0 fff756fe   bl       #0x3a660
0003a9b4 3b68       ldr      r3, [r7]
0003a9b6 0026       movs     r6, #0
0003a9b8 5b68       ldr      r3, [r3, #4]
0003a9ba 8df80460   strb.w   r6, [sp, #4]
0003a9be 2946       mov      r1, r5
0003a9c0 8df80660   strb.w   r6, [sp, #6]
0003a9c4 2046       mov      r0, r4
0003a9c6 9847       blx      r3
0003a9c8 3b68       ldr      r3, [r7]
0003a9ca 0a90       str      r0, [sp, #0x28]
0003a9cc db68       ldr      r3, [r3, #0xc]
0003a9ce 2946       mov      r1, r5
0003a9d0 0caa       add      r2, sp, #0x30
0003a9d2 2046       mov      r0, r4
0003a9d4 9847       blx      r3
0003a9d6 3023       movs     r3, #0x30
0003a9d8 2393       str      r3, [sp, #0x8c]
0003a9da 184b       ldr      r3, [pc, #0x60] ; [0x3aa3c]=0x2000fbf4
0003a9dc 0b90       str      r0, [sp, #0x2c]
0003a9de 1b68       ldr      r3, [r3]
0003a9e0 2493       str      r3, [sp, #0x90]
0003a9e2 40f20113   movw     r3, #0x101
0003a9e6 adf88030   strh.w   r3, [sp, #0x80]
0003a9ea 4ff44863   mov.w    r3, #0xc80
0003a9ee cde92536   strd     r3, r6, [sp, #0x94]
0003a9f2 134b       ldr      r3, [pc, #0x4c] ; [0x3aa40]=0x3a631
0003a9f4 2a93       str      r3, [sp, #0xa8]
0003a9f6 1348       ldr      r0, [pc, #0x4c] ; [0x3aa44]=0x20014494
0003a9f8 0123       movs     r3, #1
0003a9fa 01a9       add      r1, sp, #4
0003a9fc 8df87c30   strb.w   r3, [sp, #0x7c]
0003aa00 f0f725ff   bl       #0x2b84e
0003aa04 08b1       cbz      r0, #0x3aa0a
0003aa06 edf7d7fb   bl       #0x281b8
0003aa0a 0f4b       ldr      r3, [pc, #0x3c] ; [0x3aa48]=0x2000fbd4
0003aa0c 93f90000   ldrsb.w  r0, [r3]
0003aa10 fff7d4fe   bl       #0x3a7bc
0003aa14 08b1       cbz      r0, #0x3aa1a
0003aa16 edf7cffb   bl       #0x281b8
0003aa1a 0121       movs     r1, #1
0003aa1c 0948       ldr      r0, [pc, #0x24] ; [0x3aa44]=0x20014494
0003aa1e f0f713ff   bl       #0x2b848
0003aa22 0120       movs     r0, #1
0003aa24 faf77efa   bl       #0x34f24
0003aa28 2db0       add      sp, #0xb4
0003aa2a f0bd       pop      {r4, r5, r6, r7, pc}
0003aa2c d0ce       ldm      r6, {r4, r6, r7}
0003aa2e 0500       movs     r5, r0
0003aa30 8c45       cmp      ip, r1
0003aa32 0120       movs     r0, #1
0003aa34 8ace       ldm      r6!, {r1, r3, r7}
0003aa36 0500       movs     r5, r0
0003aa38 dccf       ldm      r7, {r2, r3, r4, r6, r7}
0003aa3a 0500       movs     r5, r0
0003aa3c f4fb       .byte    0xf4, 0xfb
0003aa3e 0020       movs     r0, #0
0003aa40 31a6       adr      r6, #0xc4
0003aa42 0300       movs     r3, r0
0003aa44 9444       add      ip, r2
0003aa46 0120       movs     r0, #1
0003aa48 d4fb       .byte    0xd4, 0xfb
0003aa4a 0020       movs     r0, #0
0003aa4c 70b5       push     {r4, r5, r6, lr}
0003aa4e 4d4a       ldr      r2, [pc, #0x134] ; [0x3ab84]=0x5ceda 'Init N.O.'
0003aa50 4d4d       ldr      r5, [pc, #0x134] ; [0x3ab88]=0x2001458c
0003aa52 acb0       sub      sp, #0xb0
0003aa54 0446       mov      r4, r0
0003aa56 0e46       mov      r6, r1
0003aa58 1820       movs     r0, #0x18
0003aa5a 0121       movs     r1, #1
0003aa5c fcf766f8   bl       #0x36b2c
0003aa60 ac22       movs     r2, #0xac
0003aa62 0021       movs     r1, #0
0003aa64 01a8       add      r0, sp, #4
0003aa66 09f014fe   bl       #0x44692
0003aa6a 484b       ldr      r3, [pc, #0x120] ; [0x3ab8c]=0x5cfc0 'advManagerNearOwnerAdvStart'
0003aa6c 484a       ldr      r2, [pc, #0x120] ; [0x3ab90]=0x5ce8a 'Stopping adv due to %s'
0003aa6e 0221       movs     r1, #2
0003aa70 1820       movs     r0, #0x18
0003aa72 fcf75bf8   bl       #0x36b2c
0003aa76 fff757fe   bl       #0x3a728
0003aa7a 2046       mov      r0, r4
0003aa7c fff7f0fd   bl       #0x3a660
0003aa80 0023       movs     r3, #0
0003aa82 8df80430   strb.w   r3, [sp, #4]
0003aa86 8df80630   strb.w   r3, [sp, #6]
0003aa8a 05f061fc   bl       #0x40350
0003aa8e 2b68       ldr      r3, [r5]
0003aa90 0028       cmp      r0, #0
0003aa92 41d0       beq      #0x3ab18
0003aa94 1b68       ldr      r3, [r3]
0003aa96 2046       mov      r0, r4
0003aa98 9847       blx      r3
0003aa9a 2b68       ldr      r3, [r5]
0003aa9c 0a90       str      r0, [sp, #0x28]
0003aa9e 9b68       ldr      r3, [r3, #8]
0003aaa0 0ca9       add      r1, sp, #0x30
0003aaa2 2046       mov      r0, r4
0003aaa4 9847       blx      r3
0003aaa6 3023       movs     r3, #0x30
0003aaa8 2393       str      r3, [sp, #0x8c]
0003aaaa 3a4b       ldr      r3, [pc, #0xe8] ; [0x3ab94]=0x2000fbec
0003aaac 0b90       str      r0, [sp, #0x2c]
0003aaae 1b68       ldr      r3, [r3]
0003aab0 2493       str      r3, [sp, #0x90]
0003aab2 40f20113   movw     r3, #0x101
0003aab6 adf88030   strh.w   r3, [sp, #0x80]
0003aaba 4ff44862   mov.w    r2, #0xc80
0003aabe 0023       movs     r3, #0
