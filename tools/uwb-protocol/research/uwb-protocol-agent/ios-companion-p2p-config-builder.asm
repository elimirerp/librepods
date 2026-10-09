0x10033a97c: str wzr, [x2]
0x10033a980: ldrb w8, [x1, #0x69]
0x10033a984: cmp w8, #1
0x10033a988: b.ne #0x10033aa6c
0x10033a98c: pacibsp 
0x10033a990: stp x22, x21, [sp, #-0x30]!
0x10033a994: stp x20, x19, [sp, #0x10]
0x10033a998: stp x29, x30, [sp, #0x20]
0x10033a99c: add x29, sp, #0x20
0x10033a9a0: mov x19, x2
0x10033a9a4: mov x21, x1
0x10033a9a8: mov x20, x0
0x10033a9ac: ldrb w0, [x1, #0x68]
0x10033a9b0: mov w1, #1
0x10033a9b4: bl #0x10044c598
0x10033a9b8: ldrb w8, [x19, #1]
0x10033a9bc: ubfiz w9, w0, #2, #2
0x10033a9c0: and w8, w8, #0xfffffff3
0x10033a9c4: orr w8, w8, w9
0x10033a9c8: strb w8, [x19, #1]
0x10033a9cc: ldrb w8, [x21, #0x6b]
0x10033a9d0: cmp w8, #1
0x10033a9d4: b.ne #0x10033aa54
0x10033a9d8: ldrb w0, [x21, #0x6a]
0x10033a9dc: mov w1, #1
0x10033a9e0: bl #0x10044c598
0x10033a9e4: ldrb w8, [x19, #1]
0x10033a9e8: ubfiz w9, w0, #4, #2
0x10033a9ec: and w8, w8, #0xffffffcf
0x10033a9f0: orr w8, w8, w9
0x10033a9f4: strb w8, [x19, #1]
0x10033a9f8: ldrb w8, [x21, #0xae]
0x10033a9fc: cmp w8, #1
0x10033aa00: b.ne #0x10033aa54
0x10033aa04: ldrh w8, [x21, #0xac]
0x10033aa08: strh w8, [x19, #2]
0x10033aa0c: ldrb w8, [x21, #0x99]
0x10033aa10: cmp w8, #1
0x10033aa14: b.ne #0x10033aa54
0x10033aa18: ldrb w0, [x21, #0x98]
0x10033aa1c: mov w1, #1
0x10033aa20: bl #0x10044d4c0
0x10033aa24: ldrb w8, [x19, #1]
0x10033aa28: bfxil w8, w0, #0, #2
0x10033aa2c: strb w8, [x19, #1]
0x10033aa30: ldr x0, [x20, #8]
0x10033aa34: ldr x16, [x0]
0x10033aa38: mov x17, x0
0x10033aa3c: movk x17, #0x966f, lsl #48
0x10033aa40: autda x16, x17
0x10033aa44: ldr x8, [x16, #0x40]!
0x10033aa48: movk x16, #0xe931, lsl #48
0x10033aa4c: blraa x8, x16
0x10033aa50: tbnz w0, #8, #0x10033aa74
0x10033aa54: mov w0, #0
0x10033aa58: ldp x29, x30, [sp, #0x20]
0x10033aa5c: ldp x20, x19, [sp, #0x10]
0x10033aa60: ldp x22, x21, [sp], #0x30
0x10033aa64: autibsp 
0x10033aa68: ret 
0x10033aa6c: mov w0, #0
0x10033aa70: ret 
0x10033aa74: strb w0, [x19]
0x10033aa78: mov w0, #1
0x10033aa7c: b #0x10033aa58
0x10033aa80: pacibsp 
0x10033aa84: stp x20, x19, [sp, #-0x20]!
0x10033aa88: stp x29, x30, [sp, #0x10]
0x10033aa8c: add x29, sp, #0x10
0x10033aa90: mov x19, x8
0x10033aa94: ldr x0, [x0, #8]
0x10033aa98: ldr x16, [x0]
0x10033aa9c: mov x17, x0
0x10033aaa0: movk x17, #0x966f, lsl #48
0x10033aaa4: autda x16, x17
0x10033aaa8: ldr x8, [x16, #0x40]!
0x10033aaac: movk x16, #0xe931, lsl #48
0x10033aab0: blraa x8, x16
0x10033aab4: tbnz w0, #8, #0x10033aae0
0x10033aab8: adrp x1, #0x1008e8000
0x10033aabc: add x1, x1, #0x6a8
0x10033aac0: mov x0, x19
0x10033aac4: ldp x29, x30, [sp, #0x10]
0x10033aac8: ldp x20, x19, [sp], #0x20
0x10033aacc: autibsp 
0x10033aad0: eor x16, x30, x30, lsl #1
0x10033aad4: tbz x16, #0x3e, #0x10033aadc
0x10033aad8: brk #0xc471
0x10033aadc: b #0x10001ad1c
0x10033aae0: and w0, w0, #0xff
0x10033aae4: mov x8, x19
0x10033aae8: ldp x29, x30, [sp, #0x10]
0x10033aaec: ldp x20, x19, [sp], #0x20
0x10033aaf0: autibsp 
0x10033aaf4: eor x16, x30, x30, lsl #1
0x10033aaf8: tbz x16, #0x3e, #0x10033ab00
0x10033aafc: brk #0xc471
0x10033ab00: b #0x10047ccf0
0x10033ab04: ldr x0, [x0, #8]
0x10033ab08: ldr x16, [x0]
0x10033ab0c: mov x17, x0
0x10033ab10: movk x17, #0x966f, lsl #48
0x10033ab14: autda x16, x17
0x10033ab18: ldr x1, [x16, #0x48]!
0x10033ab1c: movk x16, #0xdaa7, lsl #48
0x10033ab20: braa x1, x16
0x10033ab24: pacibsp 
0x10033ab28: stp x26, x25, [sp, #-0x50]!
0x10033ab2c: stp x24, x23, [sp, #0x10]
0x10033ab30: stp x22, x21, [sp, #0x20]
0x10033ab34: stp x20, x19, [sp, #0x30]
0x10033ab38: stp x29, x30, [sp, #0x40]
0x10033ab3c: add x29, sp, #0x40
0x10033ab40: mov x21, x6
0x10033ab44: mov x22, x5
0x10033ab48: mov x23, x4
0x10033ab4c: mov x25, x3
0x10033ab50: mov x19, x0
0x10033ab54: strb w1, [x0]
0x10033ab58: mov x20, x0
0x10033ab5c: str xzr, [x20, #8]!
0x10033ab60: stp xzr, xzr, [x0, #0x10]
0x10033ab64: ldp x1, x2, [x2]
0x10033ab68: sub x8, x2, x1
0x10033ab6c: asr x3, x8, #3
0x10033ab70: mov x0, x20
0x10033ab74: bl #0x10027959c
0x10033ab78: mov x24, x19
0x10033ab7c: stp xzr, xzr, [x24, #0x20]!
0x10033ab80: str xzr, [x24, #0x10]
0x10033ab84: ldp x1, x2, [x25]
0x10033ab88: sub x8, x2, x1
0x10033ab8c: asr x3, x8, #3
0x10033ab90: mov x0, x24
0x10033ab94: bl #0x1002796a0
0x10033ab98: mov x0, x19
0x10033ab9c: stp xzr, xzr, [x0, #0x38]!
0x10033aba0: str xzr, [x0, #0x10]
0x10033aba4: ldp x1, x2, [x23]
0x10033aba8: sub x8, x2, x1
0x10033abac: asr x3, x8, #3
0x10033abb0: bl #0x10027971c
0x10033abb4: ldrh w8, [x22]
0x10033abb8: strh w8, [x19, #0x50]
0x10033abbc: ldr x8, [x21]
0x10033abc0: ldrb w9, [x21, #8]
0x10033abc4: strb w9, [x19, #0x5a]
0x10033abc8: stur x8, [x19, #0x52]
0x10033abcc: mov x0, x19
0x10033abd0: ldp x29, x30, [sp, #0x40]
0x10033abd4: ldp x20, x19, [sp, #0x30]
0x10033abd8: ldp x22, x21, [sp, #0x20]
0x10033abdc: ldp x24, x23, [sp, #0x10]
0x10033abe0: ldp x26, x25, [sp], #0x50
0x10033abe4: retab 
0x10033abe8: mov x21, x0
0x10033abec: ldr x0, [x24]
0x10033abf0: cbz x0, #0x10033ac04
0x10033abf4: str x0, [x19, #0x28]
0x10033abf8: bl #0x1004f0bd4
0x10033abfc: b #0x10033ac04
0x10033ac00: mov x21, x0
0x10033ac04: ldr x0, [x20]
0x10033ac08: cbz x0, #0x10033ac14
0x10033ac0c: str x0, [x19, #0x10]
0x10033ac10: bl #0x1004f0bd4
0x10033ac14: mov x0, x21
0x10033ac18: bl #0x1004effd4
0x10033ac1c: pacibsp 
0x10033ac20: stp x22, x21, [sp, #-0x30]!
0x10033ac24: stp x20, x19, [sp, #0x10]
0x10033ac28: stp x29, x30, [sp, #0x20]
0x10033ac2c: add x29, sp, #0x20
0x10033ac30: mov x21, x1
0x10033ac34: mov x19, x0
0x10033ac38: ldrb w8, [x1]
0x10033ac3c: strb w8, [x0]
0x10033ac40: mov x20, x0
0x10033ac44: str xzr, [x20, #8]!
0x10033ac48: stp xzr, xzr, [x0, #0x10]
0x10033ac4c: ldr x1, [x1, #8]
0x10033ac50: ldr x2, [x21, #0x10]
0x10033ac54: sub x8, x2, x1
0x10033ac58: asr x3, x8, #3
0x10033ac5c: mov x0, x20
0x10033ac60: bl #0x10027959c
0x10033ac64: mov x22, x19
0x10033ac68: stp xzr, xzr, [x22, #0x20]!
0x10033ac6c: str xzr, [x22, #0x10]
0x10033ac70: ldp x1, x2, [x21, #0x20]
0x10033ac74: sub x8, x2, x1
0x10033ac78: asr x3, x8, #3
0x10033ac7c: mov x0, x22
0x10033ac80: bl #0x1002796a0
0x10033ac84: mov x0, x19
0x10033ac88: stp xzr, xzr, [x0, #0x38]!
0x10033ac8c: str xzr, [x0, #0x10]
0x10033ac90: ldp x1, x2, [x21, #0x38]
0x10033ac94: sub x8, x2, x1
0x10033ac98: asr x3, x8, #3
0x10033ac9c: bl #0x10027971c
0x10033aca0: ldr x8, [x21, #0x50]
0x10033aca4: ldur w9, [x21, #0x57]
0x10033aca8: stur w9, [x19, #0x57]
0x10033acac: str x8, [x19, #0x50]
0x10033acb0: mov x0, x19
0x10033acb4: ldp x29, x30, [sp, #0x20]
0x10033acb8: ldp x20, x19, [sp, #0x10]
0x10033acbc: ldp x22, x21, [sp], #0x30
0x10033acc0: retab 
0x10033acc4: mov x21, x0
0x10033acc8: ldr x0, [x22]
0x10033accc: cbz x0, #0x10033ace0
0x10033acd0: str x0, [x19, #0x28]
0x10033acd4: bl #0x1004f0bd4
0x10033acd8: b #0x10033ace0
0x10033acdc: mov x21, x0
0x10033ace0: ldr x0, [x20]
0x10033ace4: cbz x0, #0x10033acf0
0x10033ace8: str x0, [x19, #0x10]
0x10033acec: bl #0x1004f0bd4
0x10033acf0: mov x0, x21
0x10033acf4: bl #0x1004effd4
0x10033acf8: adrp x9, #0x1009d1000
0x10033acfc: add x9, x9, #0xb70
0x10033ad00: ldr x1, [x9, w0, uxtw #3]
0x10033ad04: mov x0, x8
0x10033ad08: b #0x10001ad1c
0x10033ad0c: adrp x9, #0x1009d1000
0x10033ad10: add x9, x9, #0xbd8
0x10033ad14: ldr x1, [x9, w0, uxtw #3]
0x10033ad18: mov x0, x8
0x10033ad1c: b #0x10001ad1c
0x10033ad20: adrp x9, #0x1009d1000
0x10033ad24: add x9, x9, #0xc28
0x10033ad28: ldr x1, [x9, w0, uxtw #3]
0x10033ad2c: mov x0, x8
0x10033ad30: b #0x10001ad1c
0x10033ad34: adrp x9, #0x1009d1000
0x10033ad38: add x9, x9, #0xc48
0x10033ad3c: ldr x1, [x9, w0, uxtw #3]
0x10033ad40: mov x0, x8
0x10033ad44: b #0x10001ad1c
0x10033ad48: pacibsp 
0x10033ad4c: sub sp, sp, #0xe0
0x10033ad50: stp x28, x27, [sp, #0x80]
0x10033ad54: stp x26, x25, [sp, #0x90]
0x10033ad58: stp x24, x23, [sp, #0xa0]
0x10033ad5c: stp x22, x21, [sp, #0xb0]
0x10033ad60: stp x20, x19, [sp, #0xc0]
0x10033ad64: stp x29, x30, [sp, #0xd0]
0x10033ad68: add x29, sp, #0xd0
0x10033ad6c: mov x22, x4
0x10033ad70: mov x23, x3
0x10033ad74: mov x19, x2
0x10033ad78: str x1, [sp, #8]
0x10033ad7c: mov x20, x0
0x10033ad80: adrp x8, #0x1009b5000
0x10033ad84: ldr x8, [x8, #0xb68]
0x10033ad88: ldr x8, [x8]
0x10033ad8c: stur x8, [x29, #-0x58]
0x10033ad90: bl #0x1004f17a4
0x10033ad94: bl #0x1004f17f4
0x10033ad98: adrp x8, #0x100a29000
0x10033ad9c: add x8, x8, #0xe10
0x10033ada0: ldr x21, [x8]
0x10033ada4: mov x0, x21
0x10033ada8: mov w1, #0
0x10033adac: bl #0x1004f1904
0x10033adb0: cbz w0, #0x10033addc
0x10033adb4: strh wzr, [sp, #0x60]
0x10033adb8: adrp x0, #0x100000000
0x10033adbc: add x0, x0, #0
0x10033adc0: adrp x3, #0x100954000
0x10033adc4: add x3, x3, #0x49c
0x10033adc8: add x4, sp, #0x60
0x10033adcc: mov x1, x21
0x10033add0: mov w2, #0
0x10033add4: mov w5, #2
0x10033add8: bl #0x1004f0dd4
0x10033addc: adrp x8, #0x1009f1000
0x10033ade0: ldr x8, [x8, #0xa78]
0x10033ade4: stp x20, x8, [sp, #0x50]
0x10033ade8: adrp x8, #0x100a0f000
0x10033adec: ldr x1, [x8, #0x720]
0x10033adf0: mov x21, #0
0x10033adf4: add x0, sp, #0x50
0x10033adf8: str x19, [sp, #0x30]
0x10033adfc: mov x2, x19
