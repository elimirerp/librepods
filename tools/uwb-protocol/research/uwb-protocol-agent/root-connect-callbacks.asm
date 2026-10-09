
-[CLDurianDeviceManager centralManager:didFailToConnectPeripheral:error:]:
0x10146aa40:  7f 23 03 d5   pacibsp
0x10146aa44:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x10146aa48:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x10146aa4c:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10146aa50:  fd 83 00 91   add	fp, sp, #0x20
0x10146aa54:  f3 03 04 aa   mov	x19, x4
0x10146aa58:  f4 03 03 aa   mov	x20, x3
0x10146aa5c:  f5 03 00 aa   mov	x21, x0
0x10146aa60:  00 88 40 f9   ldr	x0, [x0, #0x110]
0x10146aa64:  e3 aa 1a 94   bl	j__dispatch_assert_queue$V2
0x10146aa68:  e0 03 15 aa   mov	x0, x21
0x10146aa6c:  e2 03 14 aa   mov	x2, x20
0x10146aa70:  e3 03 13 aa   mov	x3, x19
0x10146aa74:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x10146aa78:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x10146aa7c:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x10146aa80:  ff 23 03 d5   autibsp
0x10146aa84:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10146aa88:  50 00 f0 b6   tbz	x16, #0x3e, loc_10146aa90 ; ⤵ 0x8
0x10146aa8c:  20 8e 38 d4   brk	#0xc471
0x10146aa90:  ; loc_10146aa90
0x10146aa90:  54 0e 1b 14   b	j__objc_msgSend(x0, "handleConnectionFailureForPeripheral:withError:")

-[CLDurianDeviceManager centralManager:didDisconnectPeripheral:error:]:
0x10146aa94:  7f 23 03 d5   pacibsp
0x10146aa98:  f6 57 bd a9   stp	x22, x21, [sp, #-0x30]!
0x10146aa9c:  f4 4f 01 a9   stp	x20, x19, [sp, #0x10]
0x10146aaa0:  fd 7b 02 a9   stp	fp, lr, [sp, #0x20]
0x10146aaa4:  fd 83 00 91   add	fp, sp, #0x20
0x10146aaa8:  f3 03 04 aa   mov	x19, x4
0x10146aaac:  f4 03 03 aa   mov	x20, x3
0x10146aab0:  f5 03 00 aa   mov	x21, x0
0x10146aab4:  00 88 40 f9   ldr	x0, [x0, #0x110]
0x10146aab8:  ce aa 1a 94   bl	j__dispatch_assert_queue$V2
0x10146aabc:  e0 03 15 aa   mov	x0, x21
0x10146aac0:  e2 03 14 aa   mov	x2, x20
0x10146aac4:  e3 03 13 aa   mov	x3, x19
0x10146aac8:  fd 7b 42 a9   ldp	fp, lr, [sp, #0x20]
0x10146aacc:  f4 4f 41 a9   ldp	x20, x19, [sp, #0x10]
0x10146aad0:  f6 57 c3 a8   ldp	x22, x21, [sp], #0x30
0x10146aad4:  ff 23 03 d5   autibsp
0x10146aad8:  d0 07 1e ca   eor	x16, lr, lr, lsl #0x1
0x10146aadc:  50 00 f0 b6   tbz	x16, #0x3e, loc_10146aae4 ; ⤵ 0x8
0x10146aae0:  20 8e 38 d4   brk	#0xc471
0x10146aae4:  ; loc_10146aae4
0x10146aae4:  7f 0e 1b 14   b	j__objc_msgSend(x0, "handleDisconnectedPeripheral:withError:")

-[CLDurianDeviceManager getStateForCentral:]:
0x10146aae8:  e0 03 02 aa   mov	x0, x2
0x10146aaec:  4d b0 1b 14   b	j__objc_msgSend(x0, "state")

-[CLDurianDeviceManager ready]:
0x10146aaf0:  7f 23 03 d5   pacibsp
0x10146aaf4:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!
0x10146aaf8:  fd 03 00 91   mov	fp, sp
0x10146aafc:  00 6c 40 f9   ldr	x0, [x0, #0xd8]
0x10146ab00:  48 b0 1b 94   bl	j__objc_msgSend(x0, "state")
0x10146ab04:  1f 14 00 f1   cmp	x0, #0x5

