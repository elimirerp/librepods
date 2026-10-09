00424a70 73ee4600   cdp      p0, #7, c0, c3, c6, #2
00424a74 8cee4600   cdp      p0, #8, c0, c12, c6, #2
00424a78 93ee4600   cdp      p0, #9, c0, c3, c6, #2
00424a7c f0b5       push     {r4, r5, r6, r7, lr}
00424a7e 03af       add      r7, sp, #0xc
00424a80 2de9000f   push.w   {r8, sb, sl, fp}
00424a84 89b0       sub      sp, #0x24
00424a86 8246       mov      sl, r0
00424a88 4068       ldr      r0, [r0, #4]
00424a8a 10b1       cbz      r0, #0x424a92
00424a8c 1220       movs     r0, #0x12
00424a8e 01f05db8   b.w      #0x425b4c
00424a92 daf80800   ldr.w    r0, [sl, #8]
00424a96 0028       cmp      r0, #0
00424a98 41f06080   bne.w    #0x425b5c
00424a9c 0120       movs     r0, #1
00424a9e 0d46       mov      r5, r1
00424aa0 0af1ca09   add.w    sb, sl, #0xca
00424aa4 fef70cff   bl       #0x4238c0
00424aa8 9af84800   ldrb.w   r0, [sl, #0x48]
00424aac aaf81050   strh.w   r5, [sl, #0x10]
00424ab0 d249       ldr      r1, [pc, #0x348] ; [0x424dfc]=0x10005b88
00424ab2 1b28       cmp      r0, #0x1b
00424ab4 0891       str      r1, [sp, #0x20]
00424ab6 65d0       beq      #0x424b84
00424ab8 1a28       cmp      r0, #0x1a
00424aba 2fd0       beq      #0x424b1c
00424abc 1128       cmp      r0, #0x11
00424abe 41f05f80   bne.w    #0x425b80
00424ac2 9af84900   ldrb.w   r0, [sl, #0x49]
00424ac6 0028       cmp      r0, #0
00424ac8 00f0e481   beq.w    #0x424e94
00424acc 4ff4b550   mov.w    r0, #0x16a0
00424ad0 01f0b4fd   bl       #0x42663c
00424ad4 0546       mov      r5, r0
00424ad6 ca48       ldr      r0, [pc, #0x328] ; [0x424e00]=0x42b441
00424ad8 38f0e4fa   bl       #0x45d0a4
00424adc c948       ldr      r0, [pc, #0x324] ; [0x424e04]=0x42b0c5
00424ade 6863       str      r0, [r5, #0x34]
00424ae0 c948       ldr      r0, [pc, #0x324] ; [0x424e08]=0x42af79
00424ae2 2863       str      r0, [r5, #0x30]
00424ae4 c948       ldr      r0, [pc, #0x324] ; [0x424e0c]=0x42af1d
00424ae6 e862       str      r0, [r5, #0x2c]
00424ae8 c948       ldr      r0, [pc, #0x324] ; [0x424e10]=0x42af09
00424aea a862       str      r0, [r5, #0x28]
00424aec c948       ldr      r0, [pc, #0x324] ; [0x424e14]=0x42aef5
00424aee 6862       str      r0, [r5, #0x24]
00424af0 c948       ldr      r0, [pc, #0x324] ; [0x424e18]=0x42ae61
00424af2 2862       str      r0, [r5, #0x20]
00424af4 baf8d000   ldrh.w   r0, [sl, #0xd0]
00424af8 4843       muls     r0, r1, r0
00424afa 37f0a4f8   bl       #0x45bc46
00424afe 6861       str      r0, [r5, #0x14]
00424b00 41f2d040   movw     r0, #0x14d0
00424b04 2e18       adds     r6, r5, r0
00424b06 38f0defc   bl       #0x45d4c6
00424b0a 00f0b482   beq.w    #0x425076
00424b0e 38f08dfe   bl       #0x45d82c
00424b12 daf8cc00   ldr.w    r0, [sl, #0xcc]
00424b16 37f096f8   bl       #0x45bc46
00424b1a b1e2       b        #0x425080
00424b1c baf8ca10   ldrh.w   r1, [sl, #0xca]
00424b20 9af84900   ldrb.w   r0, [sl, #0x49]
00424b24 c907       lsls     r1, r1, #0x1f
00424b26 40f0dc80   bne.w    #0x424ce2
00424b2a 0028       cmp      r0, #0
00424b2c 00f0f782   beq.w    #0x42511e
00424b30 41f65810   movw     r0, #0x1958
00424b34 01f082fd   bl       #0x42663c
00424b38 0546       mov      r5, r0
00424b3a b848       ldr      r0, [pc, #0x2e0] ; [0x424e1c]=0x42d135
00424b3c 38f0b2fa   bl       #0x45d0a4
00424b40 b748       ldr      r0, [pc, #0x2dc] ; [0x424e20]=0x42cced
00424b42 6863       str      r0, [r5, #0x34]
00424b44 b748       ldr      r0, [pc, #0x2dc] ; [0x424e24]=0x42cba1
00424b46 2863       str      r0, [r5, #0x30]
00424b48 b748       ldr      r0, [pc, #0x2dc] ; [0x424e28]=0x42cb6d
00424b4a e862       str      r0, [r5, #0x2c]
00424b4c b748       ldr      r0, [pc, #0x2dc] ; [0x424e2c]=0x42cb49
00424b4e a862       str      r0, [r5, #0x28]
00424b50 b748       ldr      r0, [pc, #0x2dc] ; [0x424e30]=0x42cb45
00424b52 6862       str      r0, [r5, #0x24]
00424b54 b748       ldr      r0, [pc, #0x2dc] ; [0x424e34]=0x42cab1
00424b56 2862       str      r0, [r5, #0x20]
00424b58 baf8d800   ldrh.w   r0, [sl, #0xd8]
00424b5c 4843       muls     r0, r1, r0
00424b5e 37f072f8   bl       #0x45bc46
00424b62 6861       str      r0, [r5, #0x14]
00424b64 41f2d400   movw     r0, #0x10d4
00424b68 05eb000b   add.w    fp, r5, r0
00424b6c 36f0afff   bl       #0x45bace
00424b70 00f02086   beq.w    #0x4257b4
00424b74 38f05afe   bl       #0x45d82c
00424b78 daf8d400   ldr.w    r0, [sl, #0xd4]
00424b7c 37f063f8   bl       #0x45bc46
00424b80 00f01dbe   b.w      #0x4257be
00424b84 9af84900   ldrb.w   r0, [sl, #0x49]
00424b88 0028       cmp      r0, #0
00424b8a 00f00981   beq.w    #0x424da0
00424b8e 42f62030   movw     r0, #0x2b20
00424b92 c846       mov      r8, sb
00424b94 01f052fd   bl       #0x42663c
00424b98 38f0ddfe   bl       #0x45d956
00424b9c 42f62e21   movw     r1, #0x2a2e
00424ba0 a548       ldr      r0, [pc, #0x294] ; [0x424e38]=0x429515
00424ba2 05eb010b   add.w    fp, r5, r1
00424ba6 a863       str      r0, [r5, #0x38]
00424ba8 a448       ldr      r0, [pc, #0x290] ; [0x424e3c]=0x428b75
00424baa 6863       str      r0, [r5, #0x34]
00424bac a448       ldr      r0, [pc, #0x290] ; [0x424e40]=0x428949
00424bae 2863       str      r0, [r5, #0x30]
00424bb0 a448       ldr      r0, [pc, #0x290] ; [0x424e44]=0x4288d9
00424bb2 e862       str      r0, [r5, #0x2c]
00424bb4 a448       ldr      r0, [pc, #0x290] ; [0x424e48]=0x4288b5
00424bb6 a862       str      r0, [r5, #0x28]
00424bb8 a448       ldr      r0, [pc, #0x290] ; [0x424e4c]=0x4288a1
00424bba 6862       str      r0, [r5, #0x24]
00424bbc a448       ldr      r0, [pc, #0x290] ; [0x424e50]=0x42866d
00424bbe 2862       str      r0, [r5, #0x20]
00424bc0 41f2fc00   movw     r0, #0x10fc
00424bc4 baf8c810   ldrh.w   r1, [sl, #0xc8]
00424bc8 ca07       lsls     r2, r1, #0x1f
00424bca 0ad1       bne      #0x424be2
00424bcc baf8d810   ldrh.w   r1, [sl, #0xd8]
00424bd0 42f63222   movw     r2, #0x2a32
00424bd4 a952       strh     r1, [r5, r2]
00424bd6 a918       adds     r1, r5, r2
00424bd8 9af8da20   ldrb.w   r2, [sl, #0xda]
00424bdc 8a70       strb     r2, [r1, #2]
00424bde baf8c810   ldrh.w   r1, [sl, #0xc8]
00424be2 05eb0009   add.w    sb, r5, r0
00424be6 0807       lsls     r0, r1, #0x1c
00424be8 5cbf       itt      pl
00424bea 0120       movpl    r0, #1
00424bec 8bf8a300   strbpl.w r0, [fp, #0xa3]
00424bf0 2846       mov      r0, r5
00424bf2 03f0f9fc   bl       #0x4285e8
00424bf6 aa6f       ldr      r2, [r5, #0x78]
00424bf8 0121       movs     r1, #1
00424bfa 286c       ldr      r0, [r5, #0x40]
00424bfc 8bf8a210   strb.w   r1, [fp, #0xa2]
00424c00 ea67       str      r2, [r5, #0x7c]
00424c02 9bf89a20   ldrb.w   r2, [fp, #0x9a]
00424c06 02f0f602   and      r2, r2, #0xf6
00424c0a 8bf89a20   strb.w   r2, [fp, #0x9a]
00424c0e 90f8c720   ldrb.w   r2, [r0, #0xc7]
00424c12 d207       lsls     r2, r2, #0x1f
00424c14 07d0       beq      #0x424c26
00424c16 80f88d10   strb.w   r1, [r0, #0x8d]
00424c1a 9bf89a10   ldrb.w   r1, [fp, #0x9a]
00424c1e 41f01001   orr      r1, r1, #0x10
00424c22 8bf89a10   strb.w   r1, [fp, #0x9a]
00424c26 38f047fc   bl       #0x45d4b8
00424c2a 05f54f66   add.w    r6, r5, #0xcf0
00424c2e 37f00ef9   bl       #0x45be4e
00424c32 05f18c04   add.w    r4, r5, #0x8c
00424c36 b5f8f01c   ldrh.w   r1, [r5, #0xcf0]
00424c3a 2046       mov      r0, r4
00424c3c f6f718fc   bl       #0x41b470
00424c40 d9f80008   ldr.w    r0, [sb, #0x800]
00424c44 0794       str      r4, [sp, #0x1c]
00424c46 38f0d1f8   bl       #0x45cdec
00424c4a d9f80018   ldr.w    r1, [sb, #0x800]
00424c4e b5f89e00   ldrh.w   r0, [r5, #0x9e]
00424c52 36f060fc   bl       #0x45b516
00424c56 09f2dc71   addw     r1, sb, #0x7dc
00424c5a c5f89c00   str.w    r0, [r5, #0x9c]
00424c5e 38f04efb   bl       #0x45d2fe
00424c62 b9f8dc17   ldrh.w   r1, [sb, #0x7dc]
00424c66 05f6f840   addw     r0, r5, #0xcf8
00424c6a 0690       str      r0, [sp, #0x18]
00424c6c f6f712fc   bl       #0x41b494
00424c70 286c       ldr      r0, [r5, #0x40]
00424c72 c9f8fc67   str.w    r6, [sb, #0x7fc]
00424c76 4ff41656   mov.w    r6, #0x2580
00424c7a b0f8ae10   ldrh.w   r1, [r0, #0xae]
00424c7e 21f0ff0c   bic      ip, r1, #0xff
00424c82 abf80010   strh.w   r1, [fp]
00424c86 acf50061   sub.w    r1, ip, #0x800
00424c8a b1fa81f1   clz      r1, r1
00424c8e 4909       lsrs     r1, r1, #5
00424c90 89f8f117   strb.w   r1, [sb, #0x7f1]
00424c94 90f8b010   ldrb.w   r1, [r0, #0xb0]
00424c98 89f8f017   strb.w   r1, [sb, #0x7f0]
00424c9c b0f89f20   ldrh.w   r2, [r0, #0x9f]
00424ca0 abf80220   strh.w   r2, [fp, #2]
00424ca4 90f8bc20   ldrb.w   r2, [r0, #0xbc]
00424ca8 02fb06f4   mul      r4, r2, r6
00424cac 2c66       str      r4, [r5, #0x60]
00424cae 90f8       .byte    0x90, 0xf8
