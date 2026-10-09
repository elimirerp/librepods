0x10045f4cc: pacibsp 
0x10045f4d0: stp x22, x21, [sp, #-0x30]!
0x10045f4d4: stp x20, x19, [sp, #0x10]
0x10045f4d8: stp x29, x30, [sp, #0x20]
0x10045f4dc: add x29, sp, #0x20
0x10045f4e0: mov x19, x0
0x10045f4e4: mov x21, x0
0x10045f4e8: str xzr, [x21, #8]!
0x10045f4ec: str xzr, [x0, #0x10]
0x10045f4f0: str x21, [x0]
0x10045f4f4: cbz x2, #0x10045f520
0x10045f4f8: mov x20, x1
0x10045f4fc: add x22, x2, x2, lsl #1
0x10045f500: mov x0, x19
0x10045f504: mov x1, x21
0x10045f508: mov x2, x20
0x10045f50c: mov x3, x20
0x10045f510: bl #0x10045edd8
0x10045f514: add x20, x20, #3
0x10045f518: subs x22, x22, #3
0x10045f51c: b.ne #0x10045f500
0x10045f520: mov x0, x19
0x10045f524: ldp x29, x30, [sp, #0x20]
0x10045f528: ldp x20, x19, [sp, #0x10]
0x10045f52c: ldp x22, x21, [sp], #0x30
0x10045f530: retab 
0x10045f534: mov x20, x0
0x10045f538: ldr x1, [x19, #8]
0x10045f53c: mov x0, x19
0x10045f540: bl #0x100024524
0x10045f544: mov x0, x20
0x10045f548: bl #0x1004effd4
