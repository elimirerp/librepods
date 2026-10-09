00422a40 0028       cmp      r0, #0
00422a42 00f07f84   beq.w    #0x423344
00422a46 e97b       ldrb     r1, [r5, #0xf]
00422a48 0020       movs     r0, #0
00422a4a 2a7c       ldrb     r2, [r5, #0x10]
00422a4c 95f82a80   ldrb.w   r8, [r5, #0x2a]
00422a50 3af0e8fa   bl       #0x45d024
00422a54 0a90       str      r0, [sp, #0x28]
00422a56 adf82600   strh.w   r0, [sp, #0x26]
00422a5a 8df82500   strb.w   r0, [sp, #0x25]
00422a5e adf82300   strh.w   r0, [sp, #0x23]
00422a62 2390       str      r0, [sp, #0x8c]
00422a64 adf88a00   strh.w   r0, [sp, #0x8a]
00422a68 8df88900   strb.w   r0, [sp, #0x89]
00422a6c 95f82900   ldrb.w   r0, [r5, #0x29]
00422a70 8df83010   strb.w   r1, [sp, #0x30]
00422a74 95f82110   ldrb.w   r1, [r5, #0x21]
00422a78 8df83220   strb.w   r2, [sp, #0x32]
00422a7c 8df83120   strb.w   r2, [sp, #0x31]
00422a80 8df88580   strb.w   r8, [sp, #0x85]
00422a84 8df88400   strb.w   r0, [sp, #0x84]
00422a88 8df82010   strb.w   r1, [sp, #0x20]
00422a8c 698c       ldrh     r1, [r5, #0x22]
00422a8e adf82110   strh.w   r1, [sp, #0x21]
00422a92 95f82b10   ldrb.w   r1, [r5, #0x2b]
00422a96 8df88610   strb.w   r1, [sp, #0x86]
00422a9a 0ca8       add      r0, sp, #0x30
00422a9c c11c       adds     r1, r0, #3
00422a9e 2046       mov      r0, r4
00422aa0 f3f7bef8   bl       #0x415c20
00422aa4 a0b3       cbz      r0, #0x422b10
00422aa6 0ca8       add      r0, sp, #0x30
00422aa8 24a9       add      r1, sp, #0x90
00422aaa 14f083f8   bl       #0x436bb4
00422aae 78b3       cbz      r0, #0x422b10
00422ab0 08a8       add      r0, sp, #0x20
00422ab2 c11c       adds     r1, r0, #3
00422ab4 b5f82700   ldrh.w   r0, [r5, #0x27]
00422ab8 f3f7b2f8   bl       #0x415c20
00422abc 40b3       cbz      r0, #0x422b10
00422abe 95f82600   ldrb.w   r0, [r5, #0x26]
00422ac2 2028       cmp      r0, #0x20
00422ac4 05d1       bne      #0x422ad2
00422ac6 9df82100   ldrb.w   r0, [sp, #0x21]
00422aca 411e       subs     r1, r0, #1
00422acc 0840       ands     r0, r1
00422ace 0006       lsls     r0, r0, #0x18
00422ad0 1ed1       bne      #0x422b10
00422ad2 08a8       add      r0, sp, #0x20
00422ad4 14ac       add      r4, sp, #0x50
00422ad6 2146       mov      r1, r4
00422ad8 14f06cf8   bl       #0x436bb4
00422adc c0b1       cbz      r0, #0x422b10
00422ade 95f82900   ldrb.w   r0, [r5, #0x29]
00422ae2 0028       cmp      r0, #0
00422ae4 00f06a83   beq.w    #0x4231bc
00422ae8 99f82600   ldrb.w   r0, [sb, #0x26]
00422aec 2028       cmp      r0, #0x20
00422aee 04d1       bne      #0x422afa
00422af0 a8f10100   sub.w    r0, r8, #1
00422af4 10ea0800   ands.w   r0, r0, r8
00422af8 0ad1       bne      #0x422b10
00422afa bdf82300   ldrh.w   r0, [sp, #0x23]
00422afe adf88700   strh.w   r0, [sp, #0x87]
00422b02 21a8       add      r0, sp, #0x84
00422b04 10a9       add      r1, sp, #0x40
00422b06 14f055f8   bl       #0x436bb4
00422b0a 0028       cmp      r0, #0
00422b0c 40f05b83   bne.w    #0x4231c6
00422b10 4ff02008   mov.w    r8, #0x20
00422b14 2fe0       b        #0x422b76
00422b16 dde92401   ldrd     r0, r1, [sp, #0x90]
00422b1a c5f8bc10   str.w    r1, [r5, #0xbc]
00422b1e c5f8b800   str.w    r0, [r5, #0xb8]
00422b22 d8f81600   ldr.w    r0, [r8, #0x16]
00422b26 c5f8c000   str.w    r0, [r5, #0xc0]
00422b2a d8f81a00   ldr.w    r0, [r8, #0x1a]
00422b2e c5f8c400   str.w    r0, [r5, #0xc4]
00422b32 2846       mov      r0, r5
00422b34 39f80c1c   ldrh     r1, [sb, #-0xc]
00422b38 01f0a0ff   bl       #0x424a7c
00422b3c 0546       mov      r5, r0
00422b3e b8f80c20   ldrh.w   r2, [r8, #0xc]
00422b42 0a48       ldr      r0, [pc, #0x28] ; [0x422b6c]=0x1004295f
00422b44 39f09bf9   bl       #0x45be7e
00422b48 3af007f8   bl       #0x45cb5a
00422b4c 0221       movs     r1, #2
00422b4e 2b46       mov      r3, r5
00422b50 3de1       b        #0x422dce
00422b52 00bf       nop      
00422b54 4b2b       cmp      r3, #0x4b
00422b56 0410       asrs     r4, r0, #0x20
00422b58 6142       rsbs     r1, r4, #0
00422b5a 4300       lsls     r3, r0, #1
00422b5c a12b       cmp      r3, #0xa1
00422b5e 0410       asrs     r4, r0, #0x20
00422b60 e72b       cmp      r3, #0xe7
00422b62 0410       asrs     r4, r0, #0x20
00422b64 482c       cmp      r4, #0x48
00422b66 0410       asrs     r4, r0, #0x20
00422b68 9b2c       cmp      r4, #0x9b
00422b6a 0410       asrs     r4, r0, #0x20
00422b6c 5f29       cmp      r1, #0x5f
00422b6e 0410       asrs     r4, r0, #0x20
00422b70 c146       mov      sb, r8
00422b72 4ff02708   mov.w    r8, #0x27
00422b76 b9f80c00   ldrh.w   r0, [sb, #0xc]
00422b7a 99f82740   ldrb.w   r4, [sb, #0x27]
00422b7e 99f80f10   ldrb.w   r1, [sb, #0xf]
00422b82 99f81030   ldrb.w   r3, [sb, #0x10]
00422b86 40ea0842   orr.w    r2, r0, r8, lsl #16
00422b8a 99f80e00   ldrb.w   r0, [sb, #0xe]
00422b8e 40ea       .byte    0x40, 0xea
