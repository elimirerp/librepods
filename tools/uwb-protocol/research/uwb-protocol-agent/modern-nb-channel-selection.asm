0x10044d1c4: pacibsp 
0x10044d1c8: stp x29, x30, [sp, #-0x10]!
0x10044d1cc: mov x29, sp
0x10044d1d0: ldp x8, x9, [x0]
0x10044d1d4: cmp x8, x9
0x10044d1d8: b.eq #0x10044d21c
0x10044d1dc: mov w10, #0
0x10044d1e0: mov w11, #0
0x10044d1e4: ldrb w12, [x8], #1
0x10044d1e8: sub w13, w12, #2
0x10044d1ec: orr w14, w10, #2
0x10044d1f0: cmp w12, #1
0x10044d1f4: orr w12, w10, #1
0x10044d1f8: csel w10, w10, w12, ne
0x10044d1fc: cmp w13, #4
0x10044d200: cinc w11, w11, lo
0x10044d204: csel w10, w14, w10, lo
0x10044d208: cmp x8, x9
0x10044d20c: b.ne #0x10044d1e4
0x10044d210: tst w11, #0xfffffffb
0x10044d214: b.eq #0x10044d220
0x10044d218: bl #0x1004eca0c
0x10044d21c: mov w10, #0
0x10044d220: and w0, w10, #0xff
0x10044d224: ldp x29, x30, [sp], #0x10
0x10044d228: retab 
0x10044d22c: cmp w0, #4
0x10044d230: b.hs #0x10044d23c
0x10044d234: and w0, w0, #1
0x10044d238: ret 
0x10044d23c: pacibsp 
0x10044d240: stp x29, x30, [sp, #-0x10]!
0x10044d244: mov x29, sp
0x10044d248: bl #0x1004eca38
0x10044d24c: cmp w0, #4
0x10044d250: b.hs #0x10044d260
0x10044d254: cmp w0, #1
0x10044d258: cset w0, hi
0x10044d25c: ret 
0x10044d260: pacibsp 
0x10044d264: stp x29, x30, [sp, #-0x10]!
0x10044d268: mov x29, sp
0x10044d26c: bl #0x1004eca64
