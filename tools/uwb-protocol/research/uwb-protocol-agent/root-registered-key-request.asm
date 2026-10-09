
sub_1007880c4:
0x1007880c4:  7f 23 03 d5   pacibsp
0x1007880c8:  ff 43 01 d1   sub	sp, sp, #0x50
0x1007880cc:  f4 4f 03 a9   stp	x20, x19, [sp, #0x30]
0x1007880d0:  fd 7b 04 a9   stp	fp, lr, [sp, #0x40]
0x1007880d4:  fd 03 01 91   add	fp, sp, #0x40
0x1007880d8:  08 04 40 39   ldrb	w8, [x0, #0x1]
0x1007880dc:  08 5d 58 d3   lsl	x8, x8, #0x28
0x1007880e0:  09 08 40 39   ldrb	w9, [x0, #0x2]
0x1007880e4:  08 81 09 aa   orr	x8, x8, x9, lsl #0x20
0x1007880e8:  09 0c 40 39   ldrb	w9, [x0, #0x3]
0x1007880ec:  08 61 09 aa   orr	x8, x8, x9, lsl #0x18
0x1007880f0:  09 10 40 39   ldrb	w9, [x0, #0x4]
0x1007880f4:  08 41 09 aa   orr	x8, x8, x9, lsl #0x10
0x1007880f8:  09 14 40 39   ldrb	w9, [x0, #0x5]
0x1007880fc:  08 21 09 aa   orr	x8, x8, x9, lsl #0x8
0x100788100:  09 18 40 39   ldrb	w9, [x0, #0x6]
0x100788104:  08 01 09 aa   orr	x8, x8, x9
0x100788108:  09 00 40 39   ldrb	w9, [x0]
0x10078810c:  13 c1 09 aa   orr	x19, x8, x9, lsl #0x30
0x100788110:  2f 53 f5 97   bl	0x1004dcdcc
0x100788114:  e8 23 00 91   add	x8, sp, #0x8
0x100788118:  50 15 00 d0   adrp	x16, 0x100a32000
0x10078811c:  10 56 43 f9   ldr	x16, [x16, #0x6a8] ; __got.__NSConcreteStackBlock
0x100788120:  f1 03 08 aa   mov	x17, x8
0x100788124:  31 5c ed f2   movk	x17, #0x6ae1, lsl #0x30
0x100788128:  30 0a c1 da   pacda	x16, x17
0x10078812c:  f0 07 00 f9   str	x16, [sp, #0x8]
0x100788130:  49 08 00 b0   adrp	x9, 0x100891000
0x100788134:  20 85 44 fd   ldr	d0, [x9, #0x908]
0x100788138:  e0 0b 00 fd   str	d0, [sp, #0x10]
0x10078813c:  08 41 00 91   add	x8, x8, #0x10
0x100788140:  10 00 00 90   adrp	x16, 0x100788000
0x100788144:  10 d2 0c 91   add	x16, x16, #0x334
0x100788148:  10 01 c1 da   pacia	x16, x8
0x10078814c:  48 15 00 d0   adrp	x8, 0x100a32000
0x100788150:  08 61 36 91   add	x8, x8, #0xd98 ; data_100a32d98 (__DATA_CONST.__const)
0x100788154:  f0 a3 01 a9   stp	x16, x8, [sp, #0x18]
0x100788158:  f3 17 00 f9   str	x19, [sp, #0x28]
0x10078815c:  e1 23 00 91   add	x1, sp, #0x8
0x100788160:  32 54 f5 97   bl	0x1004dd228
0x100788164:  fd 7b 44 a9   ldp	fp, lr, [sp, #0x40]
0x100788168:  f4 4f 43 a9   ldp	x20, x19, [sp, #0x30]
0x10078816c:  ff 43 01 91   add	sp, sp, #0x50
0x100788170:  ff 0f 5f d6   retab

