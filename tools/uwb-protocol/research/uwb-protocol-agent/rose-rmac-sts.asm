0042bd50 2de90007   push.w   {r8, sb, sl}
0042bd54 0d46       mov      r5, r1
0042bd56 01f1a106   add.w    r6, r1, #0xa1
0042bd5a 1d49       ldr      r1, [pc, #0x74] ; [0x42bdd0]=0x469cf8
0042bd5c 9146       mov      sb, r2
0042bd5e 8246       mov      sl, r0
0042bd60 1022       movs     r2, #0x10
0042bd62 9846       mov      r8, r3
0042bd64 30f07dfc   bl       #0x45c662
0042bd68 05f18104   add.w    r4, r5, #0x81
0042bd6c 0021       movs     r1, #0
0042bd6e 1022       movs     r2, #0x10
0042bd70 30f0dffc   bl       #0x45c732
0042bd74 1349       ldr      r1, [pc, #0x4c] ; [0x42bdc4]=0x2056c539
0042bd76 1448       ldr      r0, [pc, #0x50] ; [0x42bdc8]=0x44005000
0042bd78 4ff0b052   mov.w    r2, #0x16000000
0042bd7c c5f88580   str.w    r8, [r5, #0x85]
0042bd80 c5f88190   str.w    sb, [r5, #0x81]
0042bd84 c5f8c8a0   str.w    sl, [r5, #0xc8]
0042bd88 c5f8c410   str.w    r1, [r5, #0xc4]
0042bd8c 0262       str      r2, [r0, #0x20]
0042bd8e 0f4a       ldr      r2, [pc, #0x3c] ; [0x42bdcc]=0x26020000
0042bd90 0662       str      r6, [r0, #0x20]
0042bd92 0262       str      r2, [r0, #0x20]
0042bd94 0462       str      r4, [r0, #0x20]
0042bd96 0162       str      r1, [r0, #0x20]
0042bd98 c0f820a0   str.w    sl, [r0, #0x20]
0042bd9c 30f0ccf8   bl       #0x45bf38
0042bda0 4169       ldr      r1, [r0, #0x14]
0042bda2 c907       lsls     r1, r1, #0x1f
0042bda4 fcd0       beq      #0x42bda0
0042bda6 4ff0ff31   mov.w    r1, #-1
0042bdaa 4161       str      r1, [r0, #0x14]
0042bdac 5fea8a70   lsls.w   r0, sl, #0x1e
0042bdb0 04bf       itt      eq
0042bdb2 bde80007   popeq.w  {r8, sb, sl}
0042bdb6 f0bd       popeq    {r4, r5, r6, r7, pc}
0042bdb8 0648       ldr      r0, [pc, #0x18] ; [0x42bdd4]=0x46e73c 'uwbsec.c'
0042bdba 074a       ldr      r2, [pc, #0x1c] ; [0x42bdd8]=0x46e745 '((uint32_t)sts_output & 0x03) == 0'
0042bdbc 4ff40c71   mov.w    r1, #0x230
0042bdc0 0bf000fc   bl       #0x4375c4
0042bdc4 39c5       stm      r5!, {r0, r3, r4, r5}
0042bdc6 5620       movs     r0, #0x56
0042bdc8 0050       str      r0, [r0, r0]
0042bdca 0044       add      r0, r0
0042bdcc 0000       movs     r0, r0
0042bdce 0226       movs     r6, #2
0042bdd0 f89c       ldr      r4, [sp, #0x3e0]
0042bdd2 4600       lsls     r6, r0, #1
0042bdd4 3ce7       b        #0x42bc50
0042bdd6 4600       lsls     r6, r0, #1
0042bdd8 45e7       b        #0x42bc66
0042bdda 4600       lsls     r6, r0, #1
0042bddc f0b5       push     {r4, r5, r6, r7, lr}
0042bdde 03af       add      r7, sp, #0xc
0042bde0 4df804bd   str      fp, [sp, #-0x4]!
0042bde4 0d46       mov      r5, r1
0042bde6 0446       mov      r4, r0
0042bde8 0320       movs     r0, #3
0042bdea 0021       movs     r1, #0
0042bdec 2922       movs     r2, #0x29
0042bdee 0823       movs     r3, #8
0042bdf0 0026       movs     r6, #0
0042bdf2 07f077f8   bl       #0x432ee4
0042bdf6 8681       strh     r6, [r0, #0xc]
0042bdf8 4ff48072   mov.w    r2, #0x100
0042bdfc b4f84610   ldrh.w   r1, [r4, #0x46]
0042be00 0582       strh     r5, [r0, #0x10]
0042be02 c181       strh     r1, [r0, #0xe]
0042be04 94f88d10   ldrb.w   r1, [r4, #0x8d]
0042be08 8174       strb     r1, [r0, #0x12]
0042be0a 94f88e10   ldrb.w   r1, [r4, #0x8e]
0042be0e c174       strb     r1, [r0, #0x13]
0042be10 4ff44071   mov.w    r1, #0x300
0042be14 07f0a4f8   bl       #0x432f60
0042be18 94f88e00   ldrb.w   r0, [r4, #0x8e]
0042be1c 84f88f60   strb.w   r6, [r4, #0x8f]
0042be20 84f88d00   strb.w   r0, [r4, #0x8d]
0042be24 5df804bb   ldr      fp, [sp], #4
0042be28 f0bd       pop      {r4, r5, r6, r7, pc}
0042be2a f0b5       push     {r4, r5, r6, r7, lr}
0042be2c 03af       add      r7, sp, #0xc
0042be2e 4df8048d   str      r8, [sp, #-0x4]!
0042be32 0446       mov      r4, r0
0042be34 41f6cc08   movw     r8, #0x18cc
0042be38 2ff0f4fd   bl       #0x45ba24
0042be3c 04f6c840   addw     r0, r4, #0xcc8
0042be40 44f80850   str.w    r5, [r4, r8]
0042be44 7060       str      r0, [r6, #4]
0042be46 5df8048b   ldr      r8, [sp], #4
0042be4a f0bd       pop      {r4, r5, r6, r7, pc}
0042be4c f0b5       push     {r4, r5, r6, r7, lr}
0042be4e 03af       add      r7, sp, #0xc
0042be50 2de9000b   push.w   {r8, sb, fp}
0042be54 0446       mov      r4, r0
0042be56 8846       mov      r8, r1
0042be58 006c       ldr      r0, [r0, #0x40]
0042be5a 31f07dfa   bl       #0x45d358
0042be5e 04f57165   add.w    r5, r4, #0xf10
0042be62 95f8b409   ldrb.w   r0, [r5, #0x9b4]
0042be66 2028       cmp      r0, #0x20
0042be68 03d1       bne      #0x42be72
0042be6a 41f6b400   movw     r0, #0x18b4
0042be6e 2ff03cff   bl       #0x45bcea
0042be72 95f8500a   ldrb.w   r0, [r5, #0xa50]
0042be76 0128       cmp      r0, #1
0042be78 0ad1       bne      #0x42be90
0042be7a 0020       movs     r0, #0
0042be7c 0221       movs     r1, #2
0042be7e 85f8500a   strb.w   r0, [r5, #0xa50]
0042be82 206c       ldr      r0, [r4, #0x40]
0042be84 4160       str      r1, [r0, #4]
0042be86 94f85810   ldrb.w   r1, [r4, #0x58]
0042be8a 0029       cmp      r1, #0
0042be8c 00f0cd80   beq.w    #0x42c02a
0042be90 b8f1160f   cmp.w    r8, #0x16
0042be94 02d0       beq      #0x42be9c
0042be96 b8f1000f   cmp.w    r8, #0
0042be9a 4ad1       bne      #0x42bf32
0042be9c 6b48       ldr      r0, [pc, #0x1ac] ; [0x42c04c]=0x10005b88
0042be9e 807e       ldrb     r0, [r0, #0x1a]
0042bea0 0228       cmp      r0, #2
0042bea2 36d3       blo      #0x42bf12
0042bea4 30f094fb   bl       #0x45c5d0
0042bea8 2ff010fb   bl       #0x45b4cc
0042beac 216e       ldr      r1, [r4, #0x60]
0042beae 4674       strb     r6, [r0, #0x11]
0042beb0 a0f80f10   strh.w   r1, [r0, #0xf]
0042beb4 2968       ldr      r1, [r5]
0042beb6 6a68       ldr      r2, [r5, #4]
0042beb8 a1fb0c13   umull    r1, r3, r1, ip
0042bebc 4161       str      r1, [r0, #0x14]
0042bebe 02fb0c31   mla      r1, r2, ip, r3
0042bec2 8161       str      r1, [r0, #0x18]
0042bec4 d5f8f011   ldr.w    r1, [r5, #0x1f0]
0042bec8 d5f8162a   ldr.w    r2, [r5, #0xa16]
0042becc d5f8f4e1   ldr.w    lr, [r5, #0x1f4]
0042bed0 d5f81a9a   ldr.w    sb, [r5, #0xa1a]
0042bed4 a1fb0c13   umull    r1, r3, r1, ip
0042bed8 8918       adds     r1, r1, r2
0042beda c162       str      r1, [r0, #0x2c]
0042bedc 0efb0c31   mla      r1, lr, ip, r3
0042bee0 41eb0901   adc.w    r1, r1, sb
0042bee4 0163       str      r1, [r0, #0x30]
0042bee6 b5f8e219   ldrh.w   r1, [r5, #0x9e2]
0042beea 2ff088fc   bl       #0x45b7fe
0042beee 05f50671   add.w    r1, r5, #0x218
0042bef2 0266       str      r2, [r0, #0x60]
0042bef4 032e       cmp      r6, #3
0042bef6 0ad0       beq      #0x42bf0e
0042bef8 d5f8d429   ldr.w    r2, [r5, #0x9d4]
0042befc 9279       ldrb     r2, [r2, #6]
0042befe f240       lsrs     r2, r6
0042bf00 d207       lsls     r2, r2, #0x1f
0042bf02 01d0       beq      #0x42bf08
0042bf04 30f0e9fd   bl       #0x45cada
0042bf08 0231       adds     r1, #2
0042bf0a 0136       adds     r6, #1
0042bf0c f2e7       b        #0x42bef4
0042bf0e 2ff026fb   bl       #0x45b55e
0042bf12 30f026ff   bl       #0x45cd62
0042bf16 0cd5       bpl      #0x42bf32
0042bf18 d5f8d819   ldr.w    r1, [r5, #0x9d8]
0042bf1c 44f6a463   movw     r3, #0x4ea4
0042bf20 d5f8442a   ldr.w    r2, [r5, #0xa44]
0042bf24 b0f84600   ldrh.w   r0, [r0, #0x46]
0042bf28 0b44       add      r3, r1
0042bf2a b4f86010   ldrh.w   r1, [r4, #0x60]
0042bf2e fff75afe   bl       #0x42bbe6
0042bf32 2ff003fc   bl       #0x45b73c
0042bf36 30f0baff   bl       #0x45ceae
0042bf3a a0f80c80   strh.w   r8, [r0, #0xc]
0042bf3e 0646       mov      r6, r0
0042bf40 206c       ldr      r0, [r4, #0x40]
0042bf42 b0f84600   ldrh.w   r0, [r0, #0x46]
0042bf46 f081       strh     r0, [r6, #0xe]
0042bf48 206c       ldr      r0, [r4, #0x40]
0042bf4a 90f84800   ldrb.w   r0, [r0, #0x48]
0042bf4e 3074       strb     r0, [r6, #0x10]
0042bf50 2ff01afd   bl       #0x45b988
0042bf54 31f09ef8   bl       #0x45d094
0042bf58 206e       ldr      r0, [r4, #0x60]
0042bf5a 30f019fc   bl       #0x45c790
0042bf5e b5f8e209   ldrh.w   r0, [r5, #0x9e2]
0042bf62 b083       strh     r0, [r6, #0x1c]
0042bf64 b5f8e209   ldrh.w   r0, [r5, #0x9e2]
0042bf68 c6f84790   str.w    sb, [r6, #0x47]
0042bf6c c6f84300   str.w    r0, [r6, #0x43]
0042bf70 d5f8d409   ldr.w    r0, [r5, #0x9d4]
0042bf74 2ff040fd   bl       #0x45b9f8
0042bf78 41f23e11   movw     r1, #0x113e
0042bf7c f084       strh     r0, [r6, #0x26]
0042bf7e d5f8d409   ldr.w    r0, [r5, #0x9d4]
0042bf82 2ff039fd   bl       #0x45b9f8
0042bf86 31f07df8   bl       #0x45d084
0042bf8a 95f8cb19   ldrb.w   r1, [r5, #0x9cb]
0042bf8e fff7a3fe   bl       #0x42bcd8
0042bf92 d5f8d409   ldr.w    r0, [r5, #0x9d4]
0042bf96 2ff0ffff   bl       #0x45bf98
0042bf9a 95f8f809   ldrb.w   r0, [r5, #0x9f8]
0042bf9e 95f8f919   ldrb.w   r1, [r5, #0x9f9]
0042bfa2 0840       ands     r0, r1
0042bfa4 b8f1000f   cmp.w    r8, #0
0042bfa8 86f86c00   strb.w   r0, [r6, #0x6c]
0042bfac 1dd1       bne      #0x42bfea
0042bfae d5f8002a   ldr.w    r2, [r5, #0xa00]
0042bfb2 d5f8043a   ldr.w    r3, [r5, #0xa04]
0042bfb6 2648       ldr      r0, [pc, #0x98] ; [0x42c050]=0x10044328
0042bfb8 30f079fb   bl       #0x45c6ae
0042bfbc d5f8000a   ldr.w    r0, [r5, #0xa00]
0042bfc0 3146       mov      r1, r6
0042bfc2 c6f81e00   str.w    r0, [r6, #0x1e]
0042bfc6 d5f8440a   ldr.w    r0, [r5, #0xa44]
0042bfca b063       str      r0, [r6, #0x38]
0042bfcc 41f61810   movw     r0, #0x1918
0042bfd0 2ff08afb   bl       #0x45b6e8
0042bfd4 95f8dc09   ldrb.w   r0, [r5, #0x9dc]
0042bfd8 28b1       cbz      r0, #0x42bfe6
0042bfda 41f63d10   movw     r0, #0x193d
0042bfde 3146       mov      r1, r6
0042bfe0 2ff0f6fa   bl       #0x45b5d0
0042bfe4 01e0       b        #0x42bfea
0042bfe6 ff20       movs     r0, #0xff
0042bfe8 3086       strh     r0, [r6, #0x30]
0042bfea 30f0abfc   bl       #0x45c944
0042bfee 6069       ldr      r0, [r4, #0x14]
0042bff0 a16c       ldr      r1, [r4, #0x48]
0042bff2 e26c       ldr      r2, [r4, #0x4c]
0042bff4 c5f8049a   str.w    sb, [r5, #0xa04]
0042bff8 c5f8009a   str.w    sb, [r5, #0xa00]
0042bffc c5f8f499   str.w    sb, [r5, #0x9f4]
0042c000 c5f8f099   str.w    sb, [r5, #0x9f0]
0042c004 c5f8ec99   str.w    sb, [r5, #0x9ec]
0042c008 c5f8e899   str.w    sb, [r5, #0x9e8]
0042c00c a5f8f899   strh.w   sb, [r5, #0x9f8]
0042c010 2ff0fcfa   bl       #0x45b60c
0042c014 0020       movs     r0, #0
0042c016 e065       str      r0, [r4, #0x5c]
0042c018 84f85800   strb.w   r0, [r4, #0x58]
0042c01c 2046       mov      r0, r4
0042c01e bde8000b   pop.w    {r8, sb, fp}
0042c022 bde8f040   pop.w    {r4, r5, r6, r7, lr}
0042c026 faf703ba   b.w      #0x426430
0042c02a a8f15901   sub.w    r1, r8, #0x59
0042c02e 0829       cmp      r1, #8
0042c030 02d8       bhi      #0x42c038
0042c032 2ff08dfd   bl       #0x45bb50
0042c036 02d1       bne      #0x42c03e
0042c038 b8f10e0f   cmp.w    r8, #0xe
0042c03c 01d1       bne      #0x42c042
0042c03e 4ff00d08   mov.w    r8, #0xd
0042c042 4146       mov      r1, r8
0042c044 fff75efd   bl       #0x42bb04
0042c048 e4e7       b        #0x42c014
0042c04a 00bf       nop      
0042c04c 885b       ldrh     r0, [r1, r6]
0042c04e 0010       asrs     r0, r0, #0x20
0042c050 2843       orrs     r0, r5
0042c052 0410       asrs     r4, r0, #0x20
0042c054 dcb5       push     {r2, r3, r4, r6, r7, lr}
0042c056 04af       add      r7, sp, #0x10
0042c058 0446       mov      r4, r0
0042c05a d869       ldr      r0, [r3, #0x1c]
0042c05c 036e       ldr      r3, [r0, #0x60]
0042c05e b868       ldr      r0, [r7, #8]
0042c060 cde90012   strd     r1, r2, [sp]
0042c064 0028       cmp      r0, #0
0042c066 08bf       it       eq
0042c068 83f00043   eoreq    r3, r3, #0x80000000
0042c06c 0149       ldr      r1, [pc, #4] ; [0x42c074]=0x10005b88
0042c06e 30f0       .byte    0x30, 0xf0
