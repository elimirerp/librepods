
-[CLHawkeyeDevice createConfigureNBRangingTaskOnDevice:withParams:]:
0x101488ff8:  7f 23 03 d5   pacibsp
0x101488ffc:  ff c3 01 d1   sub	sp, sp, #0x70
0x101489000:  f8 5f 03 a9   stp	x24, x23, [sp, #0x30]
0x101489004:  f6 57 04 a9   stp	x22, x21, [sp, #0x40]
0x101489008:  f4 4f 05 a9   stp	x20, x19, [sp, #0x50]
0x10148900c:  fd 7b 06 a9   stp	fp, lr, [sp, #0x60]
0x101489010:  fd 83 01 91   add	fp, sp, #0x60
0x101489014:  f3 03 03 aa   mov	x19, x3
0x101489018:  f4 03 00 aa   mov	x20, x0
0x10148901c:  48 78 00 b0   adrp	x8, 0x102392000
0x101489020:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101489024:  08 01 40 f9   ldr	x8, [x8]
0x101489028:  e8 17 00 f9   str	x8, [sp, #0x28]
0x10148902c:  d7 87 00 b0   adrp	x23, 0x102582000
0x101489030:  e8 3a 46 f9   ldr	x8, [x23, #0xc70] ; data_102582c70 (__DATA.__data)
0x101489034:  1f 05 00 b1   cmn	x8, #0x1
0x101489038:  41 0b 00 54   b.ne	loc_1014891a0 ; ⤵ 0x168
0x10148903c:  ; loc_10148903c
0x10148903c:  d8 87 00 b0   adrp	x24, 0x102582000
0x101489040:  15 3f 46 f9   ldr	x21, [x24, #0xc78] ; data_102582c78 (__DATA.__data)
0x101489044:  e0 03 15 aa   mov	x0, x21
0x101489048:  01 00 80 52   mov	w1, #0
0x10148904c:  a9 34 1a 94   bl	j__os_log_type_enabled
0x101489050:  60 02 00 34   cbz	w0, loc_10148909c ; ⤵ 0x4c
0x101489054:  48 43 00 f0   adrp	x8, 0x101cf4000
0x101489058:  00 81 44 fd   ldr	d0, [x8, #0x900]
0x10148905c:  e0 03 00 bd   str	s0, [sp]
0x101489060:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101489064:  48 04 81 52   mov	w8, #0x822
0x101489068:  e8 13 00 79   strh	w8, [sp, #0x8]
0x10148906c:  28 51 00 b0   adrp	x8, 0x101eae000
0x101489070:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101489074:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x101489078:  a0 5b ff f0   adrp	x0, 0x100000000
0x10148907c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101489080:  e3 6f 00 d0   adrp	x3, 0x102287000
0x101489084:  63 f0 19 91   add	x3, x3, #0x67c ; "{\"msg%{public}.0s\":\"#durian #hawkeye creating ConfigureR2RangingTask\"}"
0x101489088:  e4 03 00 91   mov	x4, sp
0x10148908c:  e1 03 15 aa   mov	x1, x21
0x101489090:  02 00 80 52   mov	w2, #0
0x101489094:  45 02 80 52   mov	w5, #0x12
0x101489098:  56 30 1a 94   bl	j___os_log_impl
0x10148909c:  ; loc_10148909c
0x10148909c:  e0 03 14 aa   mov	x0, x20
0x1014890a0:  e2 03 13 aa   mov	x2, x19
0x1014890a4:  9f 55 1a 94   bl	j__objc_msgSend(x0, "checkNBRangingConfigKeys:")
0x1014890a8:  f5 03 00 aa   mov	x21, x0
0x1014890ac:  e0 03 14 aa   mov	x0, x20
0x1014890b0:  e2 03 13 aa   mov	x2, x19
0x1014890b4:  93 55 1a 94   bl	j__objc_msgSend(x0, "checkNBRangingConfigFields:")
0x1014890b8:  f6 03 00 aa   mov	x22, x0
0x1014890bc:  75 01 00 34   cbz	w21, loc_1014890e8 ; ⤵ 0x2c
0x1014890c0:  56 01 00 34   cbz	w22, loc_1014890e8 ; ⤵ 0x28
0x1014890c4:  e0 03 14 aa   mov	x0, x20
0x1014890c8:  e2 03 13 aa   mov	x2, x19
0x1014890cc:  05 e5 1a 94   bl	j__objc_msgSend(x0, "readNBRangingConfigParams:")
0x1014890d0:  c0 00 00 b4   cbz	x0, loc_1014890e8 ; ⤵ 0x18
0x1014890d4:  e2 03 00 aa   mov	x2, x0
0x1014890d8:  a8 84 00 d0   adrp	x8, 0x10251f000
0x1014890dc:  00 c1 27 91   add	x0, x8, #0x9f0 ; CLDurianTask
0x1014890e0:  20 5d 1a 94   bl	j__objc_msgSend(x0, "configureNBRangingHawkeyeTaskWithParameters:")
0x1014890e4:  23 00 00 14   b	loc_101489170 ; ⤵ 0x8c
0x1014890e8:  ; loc_1014890e8
0x1014890e8:  e8 3a 46 f9   ldr	x8, [x23, #0xc70]
0x1014890ec:  1f 05 00 b1   cmn	x8, #0x1
0x1014890f0:  c1 05 00 54   b.ne	loc_1014891a8 ; ⤵ 0xb8
0x1014890f4:  ; loc_1014890f4
0x1014890f4:  13 3f 46 f9   ldr	x19, [x24, #0xc78]
0x1014890f8:  e0 03 13 aa   mov	x0, x19
0x1014890fc:  01 00 80 52   mov	w1, #0
0x101489100:  7c 34 1a 94   bl	j__os_log_type_enabled
0x101489104:  40 03 00 34   cbz	w0, loc_10148916c ; ⤵ 0x68
0x101489108:  48 43 00 f0   adrp	x8, 0x101cf4000
0x10148910c:  00 95 44 fd   ldr	d0, [x8, #0x928]
0x101489110:  e0 03 00 bd   str	s0, [sp]
0x101489114:  ff 07 00 b9   str	wzr, [sp, #0x4]
0x101489118:  48 04 81 52   mov	w8, #0x822
0x10148911c:  e8 13 00 79   strh	w8, [sp, #0x8]
0x101489120:  28 51 00 b0   adrp	x8, 0x101eae000
0x101489124:  08 e1 02 91   add	x8, x8, #0xb8 ; data_101eae0b8 (__TEXT.__cstring)
0x101489128:  e8 a3 00 f8   stur	x8, [sp, #0xa]
0x10148912c:  48 80 80 52   mov	w8, #0x402
0x101489130:  e8 27 00 79   strh	w8, [sp, #0x12]
0x101489134:  f5 17 00 b9   str	w21, [sp, #0x14]
0x101489138:  e8 33 00 79   strh	w8, [sp, #0x18]
0x10148913c:  f6 a3 01 b8   stur	w22, [sp, #0x1a]
0x101489140:  e8 3f 00 79   strh	w8, [sp, #0x1e]
0x101489144:  ff 23 00 b9   str	wzr, [sp, #0x20]
0x101489148:  a0 5b ff f0   adrp	x0, 0x100000000
0x10148914c:  00 00 00 91   add	x0, x0, #0 ; "\xcf\xfa\xed\xfe\f"
0x101489150:  e3 6f 00 d0   adrp	x3, 0x102287000
0x101489154:  63 0c 1b 91   add	x3, x3, #0x6c3 ; "{\"msg%{public}.0s\":\"#durian #hawkeye unable create task\", \"keys\":%{public}hhd, \"values\":%{public}hhd, \"params\":%{public}hhd}"
0x101489158:  e4 03 00 91   mov	x4, sp
0x10148915c:  e1 03 13 aa   mov	x1, x19
0x101489160:  02 00 80 52   mov	w2, #0
0x101489164:  85 04 80 52   mov	w5, #0x24
0x101489168:  22 30 1a 94   bl	j___os_log_impl
0x10148916c:  ; loc_10148916c
0x10148916c:  00 00 80 d2   mov	x0, #0
0x101489170:  ; loc_101489170
0x101489170:  e8 17 40 f9   ldr	x8, [sp, #0x28]
0x101489174:  49 78 00 b0   adrp	x9, 0x102392000
0x101489178:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x10148917c:  29 01 40 f9   ldr	x9, [x9]
0x101489180:  3f 01 08 eb   cmp	x9, x8
0x101489184:  61 01 00 54   b.ne	loc_1014891b0 ; ⤵ 0x2c
0x101489188:  fd 7b 46 a9   ldp	fp, lr, [sp, #0x60]
0x10148918c:  f4 4f 45 a9   ldp	x20, x19, [sp, #0x50]
0x101489190:  f6 57 44 a9   ldp	x22, x21, [sp, #0x40]
0x101489194:  f8 5f 43 a9   ldp	x24, x23, [sp, #0x30]
0x101489198:  ff c3 01 91   add	sp, sp, #0x70
0x10148919c:  ff 0f 5f d6   retab
0x1014891a0:  ; loc_1014891a0
0x1014891a0:  34 1c 1a 94   bl	0x101b10270
0x1014891a4:  a6 ff ff 17   b	loc_10148903c ; ⤴ -0x168
0x1014891a8:  ; loc_1014891a8
0x1014891a8:  33 1c 1a 94   bl	0x101b10274
0x1014891ac:  d2 ff ff 17   b	loc_1014890f4 ; ⤴ -0xb8

