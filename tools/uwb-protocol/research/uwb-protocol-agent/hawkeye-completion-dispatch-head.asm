0x10141fdd0:  e0 83 01 ad   stp	q0, q0, [sp, #0x30]
0x10141fdd4:  e0 83 00 ad   stp	q0, q0, [sp, #0x10]
0x10141fdd8:  b6 1a 40 f9   ldr	x22, [x21, #0x30]
0x10141fddc:  e2 43 00 91   add	x2, sp, #0x10
0x10141fde0:  e3 83 05 91   add	x3, sp, #0x160
0x10141fde4:  e0 03 16 aa   mov	x0, x22
0x10141fde8:  04 02 80 52   mov	w4, #0x10
0x10141fdec:  45 06 1c 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10141fdf0:  80 04 00 b4   cbz	x0, loc_10141fe80 ; ⤵ 0x90
0x10141fdf4:  f7 03 00 aa   mov	x23, x0
0x10141fdf8:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10141fdfc:  1b 01 40 f9   ldr	x27, [x8]
0x10141fe00:  ; loc_10141fe00
0x10141fe00:  1c 00 80 d2   mov	x28, #0
0x10141fe04:  ; loc_10141fe04
0x10141fe04:  e8 13 40 f9   ldr	x8, [sp, #0x20]
0x10141fe08:  08 01 40 f9   ldr	x8, [x8]
0x10141fe0c:  1f 01 1b eb   cmp	x8, x27
0x10141fe10:  60 00 00 54   b.eq	loc_10141fe1c ; ⤵ 0xc
0x10141fe14:  e0 03 16 aa   mov	x0, x22
0x10141fe18:  3a d8 1b 94   bl	j__objc_enumerationMutation
0x10141fe1c:  ; loc_10141fe1c
0x10141fe1c:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x10141fe20:  18 79 7c f8   ldr	x24, [x8, x28, lsl #0x3]
0x10141fe24:  b9 9a 40 f9   ldr	x25, [x21, #0x130]
0x10141fe28:  e0 03 14 aa   mov	x0, x20
0x10141fe2c:  c5 ff 1b 94   bl	j__objc_msgSend(x0, "command")
0x10141fe30:  2c 7b 1c 94   bl	j__objc_msgSend(x0, "opcode")
0x10141fe34:  fa 03 00 aa   mov	x26, x0
0x10141fe38:  e0 03 13 aa   mov	x0, x19
0x10141fe3c:  e1 f8 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141fe40:  e3 03 00 aa   mov	x3, x0
0x10141fe44:  e0 03 19 aa   mov	x0, x25
0x10141fe48:  e2 03 1a aa   mov	x2, x26
0x10141fe4c:  04 00 80 d2   mov	x4, #0
0x10141fe50:  e5 03 18 aa   mov	x5, x24
0x10141fe54:  63 12 1c 94   bl	j__objc_msgSend(x0, "didCompleteHawkeyeTaskWithOpcode:fromDevice:withError:forClient:")
0x10141fe58:  9c 07 00 91   add	x28, x28, #0x1
0x10141fe5c:  ff 02 1c eb   cmp	x23, x28
0x10141fe60:  21 fd ff 54   b.ne	loc_10141fe04 ; ⤴ -0x5c
0x10141fe64:  e2 43 00 91   add	x2, sp, #0x10
0x10141fe68:  e3 83 05 91   add	x3, sp, #0x160
0x10141fe6c:  e0 03 16 aa   mov	x0, x22
0x10141fe70:  04 02 80 52   mov	w4, #0x10
0x10141fe74:  23 06 1c 94   bl	j__objc_msgSend(x0, "countByEnumeratingWithState:objects:count:")
0x10141fe78:  f7 03 00 aa   mov	x23, x0
0x10141fe7c:  20 fc ff b5   cbnz	x0, loc_10141fe00 ; ⤴ -0x7c
0x10141fe80:  ; loc_10141fe80
0x10141fe80:  40 54 00 b0   adrp	x0, 0x101ea8000
0x10141fe84:  00 dc 10 91   add	x0, x0, #0x437 ; "AirTag"
0x10141fe88:  41 54 00 b0   adrp	x1, 0x101ea8000
0x10141fe8c:  21 f8 10 91   add	x1, x1, #0x43e ; "Distribution"
0x10141fe90:  cc d4 1b 94   bl	j___os_feature_enabled_impl
0x10141fe94:  e0 00 00 34   cbz	w0, loc_10141feb0 ; ⤵ 0x1c
0x10141fe98:  b6 96 40 f9   ldr	x22, [x21, #0x128]
0x10141fe9c:  e0 03 13 aa   mov	x0, x19
0x10141fea0:  c8 f8 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141fea4:  e2 03 00 aa   mov	x2, x0
0x10141fea8:  e0 03 16 aa   mov	x0, x22
0x10141feac:  85 12 1c 94   bl	j__objc_msgSend(x0, "didCompleteTaskWithDeviceUuid:")
0x10141feb0:  ; loc_10141feb0
0x10141feb0:  b6 16 40 f9   ldr	x22, [x21, #0x28]
0x10141feb4:  e0 03 14 aa   mov	x0, x20
0x10141feb8:  c2 f8 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141febc:  e2 03 00 aa   mov	x2, x0
0x10141fec0:  e0 03 16 aa   mov	x0, x22
0x10141fec4:  a7 90 1c 94   bl	j__objc_msgSend(x0, "removeObjectForKey:")
0x10141fec8:  b6 46 40 f9   ldr	x22, [x21, #0x88]
0x10141fecc:  e0 03 14 aa   mov	x0, x20
0x10141fed0:  bc f8 1c 94   bl	j__objc_msgSend(x0, "uuid")
0x10141fed4:  e2 03 00 aa   mov	x2, x0
0x10141fed8:  e0 03 16 aa   mov	x0, x22
0x10141fedc:  a1 90 1c 94   bl	j__objc_msgSend(x0, "removeObjectForKey:")
0x10141fee0:  a0 0a 40 f9   ldr	x0, [x21, #0x10]
0x10141fee4:  63 83 00 f0   adrp	x3, 0x10248e000
0x10141fee8:  63 40 32 91   add	x3, x3, #0xc90 ; "taskdone"
0x10141feec:  e2 03 13 aa   mov	x2, x19
0x10141fef0:  34 9a 1c 94   bl	j__objc_msgSend(x0, "scheduleDebounceForDevice:reason:")
0x10141fef4:  a0 36 40 f9   ldr	x0, [x21, #0x68]
0x10141fef8:  e2 03 13 aa   mov	x2, x19
0x10141fefc:  e3 03 14 aa   mov	x3, x20
0x10141ff00:  24 00 80 52   mov	w4, #0x1
0x10141ff04:  05 00 80 92   mov	x5, #0xffffffffffffffff
0x10141ff08:  d6 e2 1c 94   bl	j__objc_msgSend(x0, "submitTaskMetricsForDevice:task:completed:errorCode:")
0x10141ff0c:  19 00 00 14   b	loc_10141ff70 ; ⤵ 0x64
0x10141ff10:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141ff14:  08 39 46 f9   ldr	x8, [x8, #0xc70] ; data_102582c70 (__DATA.__data)
0x10141ff18:  1f 05 00 b1   cmn	x8, #0x1
0x10141ff1c:  81 7e 01 54   b.ne	loc_101422eec ; ⤵ 0x2fd0
0x10141ff20:  08 8b 00 f0   adrp	x8, 0x102582000
0x10141ff24:  13 3d 46 f9   ldr	x19, [x8, #0xc78] ; data_102582c78 (__DATA.__data)
0x10141ff28:  e0 03 13 aa   mov	x0, x19
0x10141ff2c:  41 00 80 52   mov	w1, #0x2
0x10141ff30:  f0 d8 1b 94   bl	j__os_log_type_enabled
0x10141ff34:  60 01 00 34   cbz	w0, loc_10141ff60 ; ⤵ 0x2c
0x10141ff38:  bf 03 12 78   sturh	wzr, [fp, #-0xe0]
0x10141ff3c:  00 5f ff b0   adrp	x0, 0x100000000
0x10141ff40:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x10141ff44:  23 72 00 b0   adrp	x3, 0x102264000
0x10141ff48:  63 f4 0b 91   add	x3, x3, #0x2fd ; "#durian didCompleteTask task is nil"

