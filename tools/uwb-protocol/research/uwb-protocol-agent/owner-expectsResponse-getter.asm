
-[CLDurianTask expectsResponse]:
0x1014437f0:  08 80 40 39   ldrb	w8, [x0, #0x20]
0x1014437f4:  00 01 00 12   and	w0, w8, #0x1
0x1014437f8:  c0 03 5f d6   ret

-[CLDurianTask setExpectsResponse:]:
0x1014437fc:  02 80 00 39   strb	w2, [x0, #0x20]
0x101443800:  c0 03 5f d6   ret

-[CLDurianTask requiresMutex]:
0x101443804:  08 84 40 39   ldrb	w8, [x0, #0x21]
0x101443808:  00 01 00 12   and	w0, w8, #0x1
0x10144380c:  c0 03 5f d6   ret

-[CLDurianTask setRequiresMutex:]:
0x101443810:  02 84 00 39   strb	w2, [x0, #0x21]
0x101443814:  c0 03 5f d6   ret

-[CLDurianTask completeOnPreemption]:
0x101443818:  08 88 40 39   ldrb	w8, [x0, #0x22]
0x10144381c:  00 01 00 12   and	w0, w8, #0x1

