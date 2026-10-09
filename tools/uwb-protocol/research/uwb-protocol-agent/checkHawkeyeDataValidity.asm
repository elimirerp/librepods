
-[CLDurianDevice checkHawkeyeDataValidity:]:
0x10145ae54:  7f 23 03 d5   pacibsp
0x10145ae58:  ff 43 02 d1   sub	sp, sp, #0x90
0x10145ae5c:  fa 67 04 a9   stp	x26, x25, [sp, #0x40]
0x10145ae60:  f8 5f 05 a9   stp	x24, x23, [sp, #0x50]
0x10145ae64:  f6 57 06 a9   stp	x22, x21, [sp, #0x60]
0x10145ae68:  f4 4f 07 a9   stp	x20, x19, [sp, #0x70]
0x10145ae6c:  fd 7b 08 a9   stp	fp, lr, [sp, #0x80]
0x10145ae70:  fd 03 02 91   add	fp, sp, #0x80
0x10145ae74:  f4 03 02 aa   mov	x20, x2
0x10145ae78:  f3 03 00 aa   mov	x19, x0
0x10145ae7c:  c8 79 00 90   adrp	x8, 0x102392000
0x10145ae80:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x10145ae84:  08 01 40 f9   ldr	x8, [x8]
0x10145ae88:  e8 1f 00 f9   str	x8, [sp, #0x38]
0x10145ae8c:  e0 03 02 aa   mov	x0, x2
0x10145ae90:  54 79 1b 94   bl	j__objc_msgSend(x0, "length")
0x10145ae94:  1f 08 00 f1   cmp	x0, #0x2
0x10145ae98:  88 00 00 54   b.hi	loc_10145aea8 ; ⤵ 0x10
0x10145ae9c:  e0 03 13 aa   mov	x0, x19
0x10145aea0:  22 03 80 52   mov	w2, #0x19
0x10145aea4:  d6 00 00 14   b	loc_10145b1fc ; ⤵ 0x358
0x10145aea8:  ; loc_10145aea8
0x10145aea8:  e0 03 14 aa   mov	x0, x20
0x10145aeac:  65 09 1b 94   bl	j__objc_msgSend(x0, "bytes")
0x10145aeb0:  17 10 40 78   ldurh	w23, [x0, #0x1]
0x10145aeb4:  ff 06 14 71   cmp	w23, #0x501
0x10145aeb8:  ad 02 00 54   b.le	loc_10145af0c ; ⤵ 0x54
0x10145aebc:  e9 02 1c 51   sub	w9, w23, #0x700
0x10145aec0:  3f 45 00 71   cmp	w9, #0x11
0x10145aec4:  28 00 80 52   mov	w8, #0x1
0x10145aec8:  09 21 c9 1a   lsl	w9, w8, w9
0x10145aecc:  2a f8 93 52   mov	w10, #0x9fc1
0x10145aed0:  4a 00 a0 72   movk	w10, #0x2, lsl #0x10
0x10145aed4:  29 01 0a 0a   and	w9, w9, w10
0x10145aed8:  24 99 40 7a   ccmp	w9, #0, #0x4, ls
0x10145aedc:  21 04 00 54   b.ne	loc_10145af60 ; ⤵ 0x84
0x10145aee0:  e9 02 20 51   sub	w9, w23, #0x800
0x10145aee4:  3f 39 00 71   cmp	w9, #0xe
0x10145aee8:  08 21 c9 1a   lsl	w8, w8, w9
0x10145aeec:  29 f8 8b 52   mov	w9, #0x5fc1
0x10145aef0:  08 01 09 0a   and	w8, w8, w9
0x10145aef4:  04 99 40 7a   ccmp	w8, #0, #0x4, ls
0x10145aef8:  41 03 00 54   b.ne	loc_10145af60 ; ⤵ 0x68
0x10145aefc:  e8 0a 14 51   sub	w8, w23, #0x502
0x10145af00:  1f 09 00 71   cmp	w8, #0x2
0x10145af04:  e3 02 00 54   b.lo	loc_10145af60 ; ⤵ 0x5c
0x10145af08:  cc 00 00 14   b	loc_10145b238 ; ⤵ 0x330
0x10145af0c:  ; loc_10145af0c
0x10145af0c:  e9 0a 0c 51   sub	w9, w23, #0x302
0x10145af10:  3f 5d 00 71   cmp	w9, #0x17
0x10145af14:  28 00 80 52   mov	w8, #0x1
0x10145af18:  09 21 c9 1a   lsl	w9, w8, w9
0x10145af1c:  29 5d 00 12   and	w9, w9, #0xffffff
0x10145af20:  29 4d 12 12   and	w9, w9, #0xffffc003
0x10145af24:  24 99 40 7a   ccmp	w9, #0, #0x4, ls
0x10145af28:  c1 01 00 54   b.ne	loc_10145af60 ; ⤵ 0x38
0x10145af2c:  e9 2a 08 51   sub	w9, w23, #0x20a
0x10145af30:  3f 79 00 71   cmp	w9, #0x1e
0x10145af34:  08 21 c9 1a   lsl	w8, w8, w9
0x10145af38:  e9 a3 80 52   mov	w9, #0x51f
0x10145af3c:  09 60 aa 72   movk	w9, #0x5300, lsl #0x10
0x10145af40:  08 01 09 0a   and	w8, w8, w9
0x10145af44:  04 99 40 7a   ccmp	w8, #0, #0x4, ls
0x10145af48:  c1 00 00 54   b.ne	loc_10145af60 ; ⤵ 0x18
0x10145af4c:  e8 0a 10 51   sub	w8, w23, #0x402
0x10145af50:  1f 11 00 71   cmp	w8, #0x4
0x10145af54:  28 17 00 54   b.hi	loc_10145b238 ; ⤵ 0x2e4
0x10145af58:  1f 09 00 71   cmp	w8, #0x2
0x10145af5c:  e0 16 00 54   b.eq	loc_10145b238 ; ⤵ 0x2dc
0x10145af60:  ; loc_10145af60
0x10145af60:  20 00 80 52   mov	w0, #0x1
0x10145af64:  f8 00 80 52   mov	w24, #0x7
0x10145af68:  ff 12 10 71   cmp	w23, #0x404
0x10145af6c:  ac 01 00 54   b.gt	loc_10145afa0 ; ⤵ 0x34
0x10145af70:  ff 0a 0c 71   cmp	w23, #0x302
0x10145af74:  0d 03 00 54   b.le	loc_10145afd4 ; ⤵ 0x60
0x10145af78:  ff 06 10 71   cmp	w23, #0x401
0x10145af7c:  ec 0b 00 54   b.gt	loc_10145b0f8 ; ⤵ 0x17c
0x10145af80:  e8 46 0c 51   sub	w8, w23, #0x311
0x10145af84:  1f 25 00 71   cmp	w8, #0x9
0x10145af88:  e3 13 00 54   b.lo	loc_10145b204 ; ⤵ 0x27c
0x10145af8c:  ff 0e 0c 71   cmp	w23, #0x303
0x10145af90:  40 0c 00 54   b.eq	loc_10145b118 ; ⤵ 0x188
0x10145af94:  ff 42 0c 71   cmp	w23, #0x310
0x10145af98:  c0 0a 00 54   b.eq	loc_10145b0f0 ; ⤵ 0x158
0x10145af9c:  d2 00 00 14   b	loc_10145b2e4 ; ⤵ 0x348
0x10145afa0:  ; loc_10145afa0
0x10145afa0:  ff fe 1f 71   cmp	w23, #0x7ff
0x10145afa4:  8c 02 00 54   b.gt	loc_10145aff4 ; ⤵ 0x50
0x10145afa8:  ff 1e 1c 71   cmp	w23, #0x707
0x10145afac:  8c 03 00 54   b.gt	loc_10145b01c ; ⤵ 0x70
0x10145afb0:  ff 0a 14 71   cmp	w23, #0x502
0x10145afb4:  ec 08 00 54   b.gt	loc_10145b0d0 ; ⤵ 0x11c
0x10145afb8:  ff 16 10 71   cmp	w23, #0x405
0x10145afbc:  40 12 00 54   b.eq	loc_10145b204 ; ⤵ 0x248
0x10145afc0:  ff 1a 10 71   cmp	w23, #0x406
0x10145afc4:  00 0b 00 54   b.eq	loc_10145b124 ; ⤵ 0x160
0x10145afc8:  ff 0a 14 71   cmp	w23, #0x502
0x10145afcc:  c0 11 00 54   b.eq	loc_10145b204 ; ⤵ 0x238
0x10145afd0:  c5 00 00 14   b	loc_10145b2e4 ; ⤵ 0x314
0x10145afd4:  ; loc_10145afd4
0x10145afd4:  ff 4e 08 71   cmp	w23, #0x213
0x10145afd8:  ec 03 00 54   b.gt	loc_10145b054 ; ⤵ 0x7c
0x10145afdc:  ff 32 08 71   cmp	w23, #0x20c
0x10145afe0:  cc 05 00 54   b.gt	loc_10145b098 ; ⤵ 0xb8
0x10145afe4:  e8 2a 08 51   sub	w8, w23, #0x20a
0x10145afe8:  1f 0d 00 71   cmp	w8, #0x3
0x10145afec:  c3 09 00 54   b.lo	loc_10145b124 ; ⤵ 0x138
0x10145aff0:  bd 00 00 14   b	loc_10145b2e4 ; ⤵ 0x2f4
0x10145aff4:  ; loc_10145aff4
0x10145aff4:  ff 22 20 71   cmp	w23, #0x808
0x10145aff8:  ed 03 00 54   b.le	loc_10145b074 ; ⤵ 0x7c
0x10145affc:  ff 2e 20 71   cmp	w23, #0x80b
0x10145b000:  4c 08 00 54   b.gt	loc_10145b108 ; ⤵ 0x108
0x10145b004:  e8 2a 20 51   sub	w8, w23, #0x80a
0x10145b008:  1f 09 00 71   cmp	w8, #0x2
0x10145b00c:  c3 08 00 54   b.lo	loc_10145b124 ; ⤵ 0x118
0x10145b010:  ff 26 20 71   cmp	w23, #0x809
0x10145b014:  60 08 00 54   b.eq	loc_10145b120 ; ⤵ 0x10c
0x10145b018:  b3 00 00 14   b	loc_10145b2e4 ; ⤵ 0x2cc
0x10145b01c:  ; loc_10145b01c
0x10145b01c:  e8 26 1c 51   sub	w8, w23, #0x709
0x10145b020:  1f 21 00 71   cmp	w8, #0x8
0x10145b024:  28 01 00 54   b.hi	loc_10145b048 ; ⤵ 0x24
0x10145b028:  29 00 80 52   mov	w9, #0x1
0x10145b02c:  29 21 c8 1a   lsl	w9, w9, w8
0x10145b030:  ca 28 80 52   mov	w10, #0x146
0x10145b034:  3f 01 0a 6a   tst	w9, w10
0x10145b038:  61 07 00 54   b.ne	loc_10145b124 ; ⤵ 0xec
0x10145b03c:  28 07 00 34   cbz	w8, loc_10145b120 ; ⤵ 0xe4
0x10145b040:  1f 0d 00 71   cmp	w8, #0x3
0x10145b044:  a0 06 00 54   b.eq	loc_10145b118 ; ⤵ 0xd4
0x10145b048:  ; loc_10145b048
0x10145b048:  ff 22 1c 71   cmp	w23, #0x708
0x10145b04c:  20 02 00 54   b.eq	loc_10145b090 ; ⤵ 0x44
0x10145b050:  a5 00 00 14   b	loc_10145b2e4 ; ⤵ 0x294
0x10145b054:  ; loc_10145b054
0x10145b054:  ff 96 08 71   cmp	w23, #0x225
0x10145b058:  ec 02 00 54   b.gt	loc_10145b0b4 ; ⤵ 0x5c
0x10145b05c:  e8 8a 08 51   sub	w8, w23, #0x222
0x10145b060:  1f 09 00 71   cmp	w8, #0x2
0x10145b064:  03 06 00 54   b.lo	loc_10145b124 ; ⤵ 0xc0
0x10145b068:  ff 52 08 71   cmp	w23, #0x214
0x10145b06c:  60 05 00 54   b.eq	loc_10145b118 ; ⤵ 0xac
0x10145b070:  9d 00 00 14   b	loc_10145b2e4 ; ⤵ 0x274
0x10145b074:  ; loc_10145b074
0x10145b074:  e8 1a 20 51   sub	w8, w23, #0x806
0x10145b078:  1f 09 00 71   cmp	w8, #0x2
0x10145b07c:  43 05 00 54   b.lo	loc_10145b124 ; ⤵ 0xa8
0x10145b080:  ff 02 20 71   cmp	w23, #0x800

