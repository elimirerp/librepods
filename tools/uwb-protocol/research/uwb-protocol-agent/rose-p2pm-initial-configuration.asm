004257b4 f649       ldr      r1, [pc, #0x3d8] ; [0x425b90]=0x40002018
004257b6 f74a       ldr      r2, [pc, #0x3dc] ; [0x425b94]=0x249f000
004257b8 36f099f9   bl       #0x45baee
004257bc f648       ldr      r0, [pc, #0x3d8] ; [0x425b98]=0x16e36000
004257be c5f840a0   str.w    sl, [r5, #0x40]
004257c2 a865       str      r0, [r5, #0x58]
004257c4 0121       movs     r1, #1
004257c6 0d22       movs     r2, #0xd
004257c8 b9f81000   ldrh.w   r0, [sb, #0x10]
004257cc 8bf87c18   strb.w   r1, [fp, #0x87c]
004257d0 37f075f9   bl       #0x45cabe
004257d4 abf81e08   strh.w   r0, [fp, #0x81e]
004257d8 0bf50060   add.w    r0, fp, #0x800
004257dc e1f7b8f8   bl       #0x406950
004257e0 36f010fb   bl       #0x45be04
004257e4 05f16809   add.w    sb, r5, #0x68
004257e8 36f0b5fd   bl       #0x45c356
004257ec 36f03cfd   bl       #0x45c268
004257f0 b5f87a00   ldrh.w   r0, [r5, #0x7a]
004257f4 9bf80218   ldrb.w   r1, [fp, #0x802]
004257f8 9bf80928   ldrb.w   r2, [fp, #0x809]
004257fc 41ea0040   orr.w    r0, r1, r0, lsl #16
00425800 0bf2dc71   addw     r1, fp, #0x7dc
00425804 40ea0220   orr.w    r0, r0, r2, lsl #8
00425808 a867       str      r0, [r5, #0x78]
0042580a 36f04bfa   bl       #0x45bca4
0042580e 37f022f8   bl       #0x45c856
00425812 37f0e1fa   bl       #0x45cdd8
00425816 20b1       cbz      r0, #0x425822
00425818 36f01dfd   bl       #0x45c256
0042581c 2c6c       ldr      r4, [r5, #0x40]
0042581e b4f8a860   ldrh.w   r6, [r4, #0xa8]
00425822 36f033f8   bl       #0x45b88c
00425826 88bf       it       hi
00425828 0146       movhi    r1, r0
0042582a 2961       str      r1, [r5, #0x10]
0042582c faf730fe   bl       #0x420490
00425830 37f073f8   bl       #0x45c91a
00425834 d949       ldr      r1, [pc, #0x364] ; [0x425b9c]=0x426485
00425836 05f1d403   add.w    r3, r5, #0xd4
0042583a 06f63804   addw     r4, r6, #0x838
0042583e c5f86091   str.w    sb, [r5, #0x160]
00425842 c5f84093   str.w    sb, [r5, #0x340]
00425846 4ff0020e   mov.w    lr, #2
0042584a c5f8f444   str.w    r4, [r5, #0x4f4]
0042584e c5f86831   str.w    r3, [r5, #0x168]
00425852 c5f84833   str.w    r3, [r5, #0x348]
00425856 41f6d704   movw     r4, #0x18d7
0042585a c5f81c13   str.w    r1, [r5, #0x31c]
0042585e 8c46       mov      ip, r1
00425860 0021       movs     r1, #0
00425862 2c44       add      r4, r5
00425864 c5f8f814   str.w    r1, [r5, #0x4f8]
00425868 05f6cc41   addw     r1, r5, #0xccc
0042586c cc4b       ldr      r3, [pc, #0x330] ; [0x425ba0]=0x4264d1
0042586e c5f8641d   str.w    r1, [r5, #0xd64]
00425872 c5f8fc44   str.w    r4, [r5, #0x4fc]
00425876 c5f80435   str.w    r3, [r5, #0x504]
0042587a ca4c       ldr      r4, [pc, #0x328] ; [0x425ba4]=0x42ca8d
0042587c 9bf80028   ldrb.w   r2, [fp, #0x800]
00425880 c5f858ed   str.w    lr, [r5, #0xd58]
00425884 c5f8488d   str.w    r8, [r5, #0xd48]
00425888 c5f87451   str.w    r5, [r5, #0x174]
0042588c c5f85453   str.w    r5, [r5, #0x354]
00425890 c5f85c5d   str.w    r5, [r5, #0xd5c]
00425894 c5f8441f   str.w    r1, [r5, #0xf44]
00425898 c5f804cf   str.w    ip, [r5, #0xf04]
0042589c c5f84c6d   str.w    r6, [r5, #0xd4c]
004258a0 c5f8288f   str.w    r8, [r5, #0xf28]
004258a4 c5f838ef   str.w    lr, [r5, #0xf38]
004258a8 c5f82c6f   str.w    r6, [r5, #0xf2c]
004258ac cbf81830   str.w    r3, [fp, #0x18]
004258b0 85f81023   strb.w   r2, [r5, #0x310]
004258b4 d5f8cc2c   ldr.w    r2, [r5, #0xccc]
004258b8 c5f8f44e   str.w    r4, [r5, #0xef4]
004258bc cbf80040   str.w    r4, [fp]
004258c0 22f00b02   bic      r2, r2, #0xb
004258c4 0244       add      r2, r0
004258c6 36f036f8   bl       #0x45b936
004258ca 36f0effd   bl       #0x45c4ac
004258ce 0020       movs     r0, #0
004258d0 2866       str      r0, [r5, #0x60]
004258d2 c5f83c5f   str.w    r5, [r5, #0xf3c]
004258d6 a1e0       b        #0x425a1c
004258d8 1820       movs     r0, #0x18
004258da 0040       ands     r0, r0
004258dc 00f04902   and      r2, r0, #0x49
004258e0 8564       str      r5, [r0, #0x48]
004258e2 4200       lsls     r2, r0, #1
004258e4 d164       str      r1, [r2, #0x4c]
004258e6 4200       lsls     r2, r0, #1
004258e8 756e       ldr      r5, [r6, #0x64]
004258ea 4200       lsls     r2, r0, #1
004258ec 6088       ldrh     r0, [r4, #2]
004258ee 0010       asrs     r0, r0, #0x20
004258f0 a749       ldr      r1, [pc, #0x29c] ; [0x425b90]=0x40002018
004258f2 a84a       ldr      r2, [pc, #0x2a0] ; [0x425b94]=0x249f000
004258f4 36f0fbf8   bl       #0x45baee
004258f8 a748       ldr      r0, [pc, #0x29c] ; [0x425b98]=0x16e36000
004258fa c5f840a0   str.w    sl, [r5, #0x40]
004258fe e865       str      r0, [r5, #0x5c]
00425900 0121       movs     r1, #1
00425902 0d22       movs     r2, #0xd
00425904 b9f81000   ldrh.w   r0, [sb, #0x10]
00425908 84f85c18   strb.w   r1, [r4, #0x85c]
0042590c 37f0d7f8   bl       #0x45cabe
00425910 a4f80208   strh.w   r0, [r4, #0x802]
00425914 04f2e470   addw     r0, r4, #0x7e4
00425918 e1f71af8   bl       #0x406950
0042591c baf89700   ldrh.w   r0, [sl, #0x97]
00425920 05f54d61   add.w    r1, r5, #0xcd0
00425924 f0f77cf9   bl       #0x415c20
00425928 05f16c09   add.w    sb, r5, #0x6c
0042592c b5f8d01c   ldrh.w   r1, [r5, #0xcd0]
00425930 4846       mov      r0, sb
00425932 f5f79dfd   bl       #0x41b470
00425936 36f07cfc   bl       #0x45c232
0042593a b5f87e00   ldrh.w   r0, [r5, #0x7e]
0042593e 94f8e617   ldrb.w   r1, [r4, #0x7e6]
00425942 94f8ed27   ldrb.w   r2, [r4, #0x7ed]
00425946 41ea0040   orr.w    r0, r1, r0, lsl #16
0042594a 04f2d471   addw     r1, r4, #0x7d4
0042594e 40ea0220   orr.w    r0, r0, r2, lsl #8
00425952 e867       str      r0, [r5, #0x7c]
00425954 36f0a6f9   bl       #0x45bca4
00425958 05f6d848   addw     r8, r5, #0xcd8
0042595c 37f09dfc   bl       #0x45d29a
00425960 37f034fa   bl       #0x45cdcc
00425964 20b1       cbz      r0, #0x425970
00425966 36f05bfc   bl       #0x45c220
0042596a 2e6c       ldr      r6, [r5, #0x40]
0042596c b6f8a8b0   ldrh.w   fp, [r6, #0xa8]
00425970 a4f8feb7   strh.w   fp, [r4, #0x7fe]
00425974 4ff41651   mov.w    r1, #0x2580
00425978 36f014f9   bl       #0x45bba4
0042597c 2865       str      r0, [r5, #0x50]
0042597e 2861       str      r0, [r5, #0x10]
00425980 faf786fd   bl       #0x420490
00425984 36f0d0ff   bl       #0x45c928
00425988 844b       ldr      r3, [pc, #0x210] ; [0x425b9c]=0x426485
0042598a 05f1d802   add.w    r2, r5, #0xd8
0042598e 4ff0000c   mov.w    ip, #0
00425992 06f63801   addw     r1, r6, #0x838
00425996 c5f86891   str.w    sb, [r5, #0x168]
0042599a c5f84893   str.w    sb, [r5, #0x348]
0042599e c5f87021   str.w    r2, [r5, #0x170]
004259a2 c5f85023   str.w    r2, [r5, #0x350]
004259a6 41f6cb02   movw     r2, #0x18cb
004259aa c5f800c5   str.w    ip, [r5, #0x500]
004259ae c5f8fc14   str.w    r1, [r5, #0x4fc]
004259b2 c5f82433   str.w    r3, [r5, #0x324]
004259b6 2a44       add      r2, r5
004259b8 7949       ldr      r1, [pc, #0x1e4] ; [0x425ba0]=0x4264d1
004259ba c5f80425   str.w    r2, [r5, #0x504]
004259be 94f8e427   ldrb.w   r2, [r4, #0x7e4]
004259c2 c5f80c3f   str.w    r3, [r5, #0xf0c]
004259c6 c5f8508d   str.w    r8, [r5, #0xd50]
004259ca c5f87c51   str.w    r5, [r5, #0x17c]
004259ce c5f85c53   str.w    r5, [r5, #0x35c]
004259d2 c5f8645d   str.w    r5, [r5, #0xd64]
004259d6 c5f8308f   str.w    r8, [r5, #0xf30]
004259da c5f864c0   str.w    ip, [r5, #0x64]
004259de c5f8445f   str.w    r5, [r5, #0xf44]
004259e2 85f81823   strb.w   r2, [r5, #0x318]
004259e6 d5f8d42c   ldr.w    r2, [r5, #0xcd4]
004259ea 8e46       mov      lr, r1
004259ec c5f80c15   str.w    r1, [r5, #0x50c]
004259f0 05f6d441   addw     r1, r5, #0xcd4
004259f4 c5f86c1d   str.w    r1, [r5, #0xd6c]
004259f8 c5f84c1f   str.w    r1, [r5, #0xf4c]
004259fc 0221       movs     r1, #2
004259fe c4f810e0   str.w    lr, [r4, #0x10]
00425a02 22f00b02   bic      r2, r2, #0xb
00425a06 c5f8601d   str.w    r1, [r5, #0xd60]
00425a0a c5f8401f   str.w    r1, [r5, #0xf40]
00425a0e 0244       add      r2, r0
00425a10 35f091ff   bl       #0x45b936
00425a14 c5f8d40c   str.w    r0, [r5, #0xcd4]
00425a18 37f029fd   bl       #0x45d46e
00425a1c caf80850   str.w    r5, [sl, #8]
00425a20 6148       ldr      r0, [pc, #0x184] ; [0x425ba8]=0x10008860
00425a22 817a       ldrb     r1, [r0, #0xa]
00425a24 0131       adds     r1, #1
00425a26 8172       strb     r1, [r0, #0xa]
00425a28 6be0       b        #0x425b02
00425a2a 4ff00311   mov.w    r1, #0x30003
00425a2e c6f8da10   str.w    r1, [r6, #0xda]
00425a32 0021       movs     r1, #0
00425a34 90f8a820   ldrb.w   r2, [r0, #0xa8]
00425a38 4ff41653   mov.w    r3, #0x2580
00425a3c 4ff00009   mov.w    sb, #0
00425a40 5a43       muls     r2, r3, r2
00425a42 0023       movs     r3, #0
00425a44 37f072f8   bl       #0x45cb2c
00425a48 0a22       movs     r2, #0xa
00425a4a 37f00bfb   bl       #0x45d064
00425a4e 4ff47a71   mov.w    r1, #0x3e8
00425a52 a6f89a01   strh.w   r0, [r6, #0x19a]
00425a56 baf8d000   ldrh.w   r0, [sl, #0xd0]
00425a5a 35f02dfe   bl       #0x45b6b8
00425a5e 6861       str      r0, [r5, #0x14]
00425a60 37f031fd   bl       #0x45d4c6
00425a64 04d1       bne      #0x425a70
00425a66 4a49       ldr      r1, [pc, #0x128] ; [0x425b90]=0x40002018
00425a68 4a4a       ldr      r2, [pc, #0x128] ; [0x425b94]=0x249f000
00425a6a 36f0fbfa   bl       #0x45c064
00425a6e 89b2       uxth     r1, r1
00425a70 37f06efa   bl       #0x45cf50
00425a74 7060       str      r0, [r6, #4]
00425a76 b6f8da00   ldrh.w   r0, [r6, #0xda]
00425a7a f4f72dfe   bl       #0x41a6d8
00425a7e 2c46       mov      r4, r5
00425a80 54f8641f   ldr      r1, [r4, #0x64]!
00425a84 35f0aefd   bl       #0x45b5e4
00425a88 2060       str      r0, [r4]
00425a8a 41f2d040   movw     r0, #0x14d0
00425a8e dbf80820   ldr.w    r2, [fp, #8]
00425a92 dbf80c30   ldr.w    r3, [fp, #0xc]
00425a96 2918       adds     r1, r5, r0
00425a98 05f5ac70   add.w    r0, r5, #0x158
00425a9c 22f0ff02   bic      r2, r2, #0xff
00425aa0 06f054f9   bl       #0x42bd4c
00425aa4 3d48       ldr      r0, [pc, #0xf4] ; [0x425b9c]=0x426485
00425aa6 8221       movs     r1, #0x82
00425aa8 c5f86089   str.w    r8, [r5, #0x960]
00425aac c5f87c49   str.w    r4, [r5, #0x97c]
00425ab0 c5f85c4b   str.w    r4, [r5, #0xb5c]
00425ab4 c5f8408b   str.w    r8, [r5, #0xb40]
00425ab8 a5f84c1b   strh.w   r1, [r5, #0xb4c]
00425abc c5f81c0b   str.w    r0, [r5, #0xb1c]
00425ac0 05f1d400   add.w    r0, r5, #0xd4
00425ac4 c5f86809   str.w    r0, [r5, #0x968]
00425ac8 c5f8480b   str.w    r0, [r5, #0xb48]
00425acc 3448       ldr      r0, [pc, #0xd0] ; [0x425ba0]=0x4264d1
00425ace 85f85d90   strb.w   sb, [r5, #0x5d]
00425ad2 c5f87459   str.w    r5, [r5, #0x974]
00425ad6 c5f8545b   str.w    r5, [r5, #0xb54]
00425ada caf80850   str.w    r5, [sl, #8]
00425ade c5f8040d   str.w    r0, [r5, #0xd04]
00425ae2 286c       ldr      r0, [r5, #0x40]
00425ae4 817c       ldrb     r1, [r0, #0x12]
00425ae6 1530       adds     r0, #0x15
00425ae8 c5f8fc0c   str.w    r0, [r5, #0xcfc]
00425aec 85f8101b   strb.w   r1, [r5, #0xb10]
00425af0 7168       ldr      r1, [r6, #4]
00425af2 01f6cc02   addw     r2, r1, #0x8cc
00425af6 01f50061   add.w    r1, r1, #0x800
00425afa c5f8f82c   str.w    r2, [r5, #0xcf8]
00425afe c5f8f41c   str.w    r1, [r5, #0xcf4]
00425b02 fef749ff   bl       #0x424998
00425b06 a868       ldr      r0, [r5, #8]
00425b08 e968       ldr      r1, [r5, #0xc]
00425b0a 50ea0102   orrs.w   r2, r0, r1
00425b0e 1fd0       beq      #0x425b50
00425b10 1f4b       ldr      r3, [pc, #0x7c] ; [0x425b90]=0x40002018
00425b12 1a68       ldr      r2, [r3]
00425b14 5b68       ldr      r3, [r3, #4]
00425b16 101a       subs     r0, r2, r0
00425b18 73eb0100   sbcs.w   r0, r3, r1
00425b1c 18d2       bhs      #0x425b50
00425b1e e869       ldr      r0, [r5, #0x1c]
00425b20 1f38       subs     r0, #0x1f
00425b22 10f11b0f   cmn.w    r0, #0x1b
00425b26 1fd9       bls      #0x425b68
00425b28 2869       ldr      r0, [r5, #0x10]
00425b2a 18b3       cbz      r0, #0x425b74
00425b2c 2846       mov      r0, r5
00425b2e 00f0b3fb   bl       #0x426298
00425b32 00f0edf9   bl       #0x425f10
00425b36 0120       movs     r0, #1
00425b38 caf80400   str.w    r0, [sl, #4]
00425b3c 0898       ldr      r0, [sp, #0x20]
00425b3e c07e       ldrb     r0, [r0, #0x1b]
00425b40 0238       subs     r0, #2
00425b42 18bf       it       ne
00425b44 0120       movne    r0, #1
00425b46 1949       ldr      r1, [pc, #0x64] ; [0x425bac]=0x10008908
00425b48 0871       strb     r0, [r1, #4]
00425b4a 0020       movs     r0, #0
00425b4c 35f020bf   b.w      #0x45b990
00425b50 1a48       ldr      r0, [pc, #0x68] ; [0x425bbc]=0x46eefe 'ms.c'
00425b52 1b4a       ldr      r2, [pc, #0x6c] ; [0x425bc0]=0x46f01d 'task->start_time && task->start_time > hmd_get_ctime()'
00425b54 40f24721   movw     r1, #0x247
00425b58 11f034fd   bl       #0x4375c4
00425b5c 1448       ldr      r0, [pc, #0x50] ; [0x425bb0]=0x46ee58 'mac_ses.c'
00425b5e 154a       ldr      r2, [pc, #0x54] ; [0x425bb4]=0x46eeb4 '!ses->task'
00425b60 4ff49271   mov.w    r1, #0x124
00425b64 11f02efd   bl       #0x4375c4
00425b68 1448       ldr      r0, [pc, #0x50] ; [0x425bbc]=0x46eefe 'ms.c'
00425b6a 164a       ldr      r2, [pc, #0x58] ; [0x425bc4]=0x46f054 'task->priority >= MS_TASK_PRIORITY_MIN && task->priority <= MS_TASK_PRIORITY_MAX'
00425b6c 4ff41271   mov.w    r1, #0x248
00425b70 11f028fd   bl       #0x4375c4
00425b74 1148       ldr      r0, [pc, #0x44] ; [0x425bbc]=0x46eefe 'ms.c'
00425b76 144a       ldr      r2, [pc, #0x50] ; [0x425bc8]=0x46f0a5 'task->quantum'
00425b78 40f24921   movw     r1, #0x249
00425b7c 11f022fd   bl       #0x4375c4
00425b80 35f03ffc   bl       #0x45b402
00425b84 40f2f911   movw     r1, #0x1f9
00425b88 0948       ldr      r0, [pc, #0x24] ; [0x425bb0]=0x46ee58 'mac_ses.c'
00425b8a 0b4a       ldr      r2, [pc, #0x2c] ; [0x425bb8]=0x4700bb
00425b8c 11f024fd   bl       #0x4375d8
00425b90 1820       movs     r0, #0x18
00425b92 0040       ands     r0, r0
00425b94 00f04902   and      r2, r0, #0x49
00425b98 0060       str      r0, [r0]
00425b9a e316       asrs     r3, r4, #0x1b
00425b9c 8564       str      r5, [r0, #0x48]
00425b9e 4200       lsls     r2, r0, #1
00425ba0 d164       str      r1, [r2, #0x4c]
00425ba2 4200       lsls     r2, r0, #1
00425ba4 8dca       ldm      r2, {r0, r2, r3, r7}
00425ba6 4200       lsls     r2, r0, #1
00425ba8 6088       ldrh     r0, [r4, #2]
00425baa 0010       asrs     r0, r0, #0x20
00425bac 0889       ldrh     r0, [r1, #8]
00425bae 0010       asrs     r0, r0, #0x20
00425bb0 58ee4600   cdp      p0, #5, c0, c8, c6, #2
00425bb4 b4ee4600   cdp      p0, #0xb, c0, c4, c6, #2
00425bb8 bb00       lsls     r3, r7, #2
