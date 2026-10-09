
work/phone-uwb/android-key-api-audit/libbluetooth_jni.so:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000348000 <.text>:
  3f304c: d503233f     	paciasp
  3f3050: f800865e     	str	x30, [x18], #0x8
  3f3054: d10343ff     	sub	sp, sp, #0xd0
  3f3058: a9077bfd     	stp	x29, x30, [sp, #0x70]
  3f305c: a9086ffc     	stp	x28, x27, [sp, #0x80]
  3f3060: a90967fa     	stp	x26, x25, [sp, #0x90]
  3f3064: a90a5ff8     	stp	x24, x23, [sp, #0xa0]
  3f3068: a90b57f6     	stp	x22, x21, [sp, #0xb0]
  3f306c: a90c4ff4     	stp	x20, x19, [sp, #0xc0]
  3f3070: 9101c3fd     	add	x29, sp, #0x70
  3f3074: d53bd05c     	mrs	x28, TPIDR_EL0
  3f3078: aa0003f4     	mov	x20, x0
  3f307c: f00055c0     	adrp	x0, 0xeae000
  3f3080: 91110000     	add	x0, x0, #0x440
  3f3084: f9401788     	ldr	x8, [x28, #0x28]
  3f3088: aa0403f3     	mov	x19, x4
  3f308c: aa0303f5     	mov	x21, x3
  3f3090: 2a0203fa     	mov	w26, w2
  3f3094: f81f83a8     	stur	x8, [x29, #-0x8]
  3f3098: 97fd8c27     	bl	0x356134 <.text+0xe134>
  3f309c: 52801688     	mov	w8, #0xb4               // =180
  3f30a0: 90ffe7e9     	adrp	x9, 0xef000
  3f30a4: 9138b929     	add	x9, x9, #0xe2e
  3f30a8: b81e03a8     	stur	w8, [x29, #-0x20]
  3f30ac: 90ffe428     	adrp	x8, 0x77000
  3f30b0: 910c9908     	add	x8, x8, #0x326
  3f30b4: 90ffe7e1     	adrp	x1, 0xef000
  3f30b8: 913c3021     	add	x1, x1, #0xf0c
  3f30bc: 90ffe263     	adrp	x3, 0x3f000
  3f30c0: 911fd863     	add	x3, x3, #0x7f6
  3f30c4: d10083a2     	sub	x2, x29, #0x20
  3f30c8: 9100e3e5     	add	x5, sp, #0x38
  3f30cc: 52800040     	mov	w0, #0x2                // =2
  3f30d0: aa1f03e4     	mov	x4, xzr
  3f30d4: a93ea3a9     	stp	x9, x8, [x29, #-0x18]
  3f30d8: f9001fff     	str	xzr, [sp, #0x38]
  3f30dc: 9429ae12     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  3f30e0: f00055d7     	adrp	x23, 0xeae000
  3f30e4: f942bee8     	ldr	x8, [x23, #0x578]
  3f30e8: b4000c88     	cbz	x8, 0x3f3278 <.text+0xab278>
  3f30ec: f9400288     	ldr	x8, [x20]
  3f30f0: aa1403e0     	mov	x0, x20
  3f30f4: aa1503e1     	mov	x1, x21
  3f30f8: aa1f03e2     	mov	x2, xzr
  3f30fc: f942e108     	ldr	x8, [x8, #0x5c0]
  3f3100: d63f0100     	blr	x8
  3f3104: f9400288     	ldr	x8, [x20]
  3f3108: aa0003f8     	mov	x24, x0
  3f310c: aa1403e0     	mov	x0, x20
  3f3110: aa1303e1     	mov	x1, x19
  3f3114: aa1f03e2     	mov	x2, xzr
  3f3118: f942e108     	ldr	x8, [x8, #0x5c0]
  3f311c: d63f0100     	blr	x8
  3f3120: aa0003f6     	mov	x22, x0
  3f3124: b4000cd8     	cbz	x24, 0x3f32bc <.text+0xab2bc>
  3f3128: b4000cb6     	cbz	x22, 0x3f32bc <.text+0xab2bc>
  3f312c: f9400288     	ldr	x8, [x20]
  3f3130: aa1403e0     	mov	x0, x20
  3f3134: aa1303e1     	mov	x1, x19
  3f3138: f942ad08     	ldr	x8, [x8, #0x558]
  3f313c: d63f0100     	blr	x8
  3f3140: 7100401f     	cmp	w0, #0x10
  3f3144: 54000c41     	b.ne	0x3f32cc <.text+0xab2cc>
  3f3148: f9400288     	ldr	x8, [x20]
  3f314c: aa1403e0     	mov	x0, x20
  3f3150: aa1503e1     	mov	x1, x21
  3f3154: f942ad08     	ldr	x8, [x8, #0x558]
  3f3158: d63f0100     	blr	x8
  3f315c: 93407c19     	sxtw	x25, w0
  3f3160: 34000380     	cbz	w0, 0x3f31d0 <.text+0xab1d0>
  3f3164: b9001ffa     	str	w26, [sp, #0x1c]
  3f3168: 37f80bb9     	tbnz	w25, #0x1f, 0x3f32dc <.text+0xab2dc>
  3f316c: aa1903e0     	mov	x0, x25
  3f3170: 9429bd04     	bl	0xe62580
  3f3174: aa1803e1     	mov	x1, x24
  3f3178: aa1903e2     	mov	x2, x25
  3f317c: aa0003fa     	mov	x26, x0
  3f3180: 9429c6ee     	bl	0xe64d38 <memcpy@plt>
  3f3184: f942befb     	ldr	x27, [x23, #0x578]
  3f3188: b400073b     	cbz	x27, 0x3f326c <.text+0xab26c>
  3f318c: f94006c8     	ldr	x8, [x22, #0x8]
  3f3190: aa1903e0     	mov	x0, x25
  3f3194: a900d7e8     	stp	x8, x21, [sp, #0x8]
  3f3198: f94002d5     	ldr	x21, [x22]
  3f319c: 9429bcf9     	bl	0xe62580
  3f31a0: aa1303f7     	mov	x23, x19
  3f31a4: 8b190013     	add	x19, x0, x25
  3f31a8: aa1803e1     	mov	x1, x24
  3f31ac: aa1903e2     	mov	x2, x25
  3f31b0: f90013e0     	str	x0, [sp, #0x20]
  3f31b4: f9001bf3     	str	x19, [sp, #0x30]
  3f31b8: 9429c6e0     	bl	0xe64d38 <memcpy@plt>
  3f31bc: aa1503e3     	mov	x3, x21
  3f31c0: a940d7e4     	ldp	x4, x21, [sp, #0x8]
  3f31c4: f90017f3     	str	x19, [sp, #0x28]
  3f31c8: aa1703f3     	mov	x19, x23
  3f31cc: 14000008     	b	0x3f31ec <.text+0xab1ec>
  3f31d0: f942befb     	ldr	x27, [x23, #0x578]
  3f31d4: b400053b     	cbz	x27, 0x3f3278 <.text+0xab278>
  3f31d8: a94012c3     	ldp	x3, x4, [x22]
  3f31dc: b9001ffa     	str	w26, [sp, #0x1c]
  3f31e0: aa1f03fa     	mov	x26, xzr
  3f31e4: a9027fff     	stp	xzr, xzr, [sp, #0x20]
  3f31e8: f9001bff     	str	xzr, [sp, #0x30]
  3f31ec: f9400368     	ldr	x8, [x27]
  3f31f0: b9401fe1     	ldr	w1, [sp, #0x1c]
  3f31f4: 910083e2     	add	x2, sp, #0x20
  3f31f8: aa1b03e0     	mov	x0, x27
  3f31fc: f9400d08     	ldr	x8, [x8, #0x18]
  3f3200: d63f0100     	blr	x8
  3f3204: f94013e0     	ldr	x0, [sp, #0x20]
  3f3208: b40000a0     	cbz	x0, 0x3f321c <.text+0xab21c>
  3f320c: f9401be8     	ldr	x8, [sp, #0x30]
  3f3210: f90017e0     	str	x0, [sp, #0x28]
  3f3214: cb000101     	sub	x1, x8, x0
  3f3218: 97fd5d5d     	bl	0x34a78c <.text+0x278c>
  3f321c: b400009a     	cbz	x26, 0x3f322c <.text+0xab22c>
  3f3220: aa1a03e0     	mov	x0, x26
  3f3224: aa1903e1     	mov	x1, x25
  3f3228: 97fd5d59     	bl	0x34a78c <.text+0x278c>
  3f322c: f9400288     	ldr	x8, [x20]
  3f3230: aa1403e0     	mov	x0, x20
  3f3234: aa1503e1     	mov	x1, x21
  3f3238: aa1803e2     	mov	x2, x24
  3f323c: 2a1f03e3     	mov	w3, wzr
  3f3240: f9430108     	ldr	x8, [x8, #0x600]
  3f3244: d63f0100     	blr	x8
  3f3248: b4000196     	cbz	x22, 0x3f3278 <.text+0xab278>
  3f324c: f9400288     	ldr	x8, [x20]
  3f3250: aa1403e0     	mov	x0, x20
  3f3254: aa1303e1     	mov	x1, x19
  3f3258: aa1603e2     	mov	x2, x22
  3f325c: 2a1f03e3     	mov	w3, wzr
  3f3260: f9430108     	ldr	x8, [x8, #0x600]
  3f3264: d63f0100     	blr	x8
  3f3268: 14000004     	b	0x3f3278 <.text+0xab278>
  3f326c: aa1a03e0     	mov	x0, x26
  3f3270: aa1903e1     	mov	x1, x25
  3f3274: 97fd5d46     	bl	0x34a78c <.text+0x278c>
  3f3278: f00055c0     	adrp	x0, 0xeae000
  3f327c: 91110000     	add	x0, x0, #0x440
  3f3280: 97fd8bd9     	bl	0x3561e4 <.text+0xe1e4>
  3f3284: f9401788     	ldr	x8, [x28, #0x28]
  3f3288: f85f83a9     	ldur	x9, [x29, #-0x8]
  3f328c: eb09011f     	cmp	x8, x9
  3f3290: 54000241     	b.ne	0x3f32d8 <.text+0xab2d8>
  3f3294: a94c4ff4     	ldp	x20, x19, [sp, #0xc0]
  3f3298: a94b57f6     	ldp	x22, x21, [sp, #0xb0]
  3f329c: a94a5ff8     	ldp	x24, x23, [sp, #0xa0]
  3f32a0: a94967fa     	ldp	x26, x25, [sp, #0x90]
  3f32a4: a9486ffc     	ldp	x28, x27, [sp, #0x80]
  3f32a8: a9477bfd     	ldp	x29, x30, [sp, #0x70]
  3f32ac: 910343ff     	add	sp, sp, #0xd0
  3f32b0: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  3f32b4: d50323bf     	autiasp
  3f32b8: d65f03c0     	ret
  3f32bc: aa1403e0     	mov	x0, x20
  3f32c0: 9400056f     	bl	0x3f487c <.text+0xac87c>
  3f32c4: b5fffb58     	cbnz	x24, 0x3f322c <.text+0xab22c>
  3f32c8: 17ffffe0     	b	0x3f3248 <.text+0xab248>
  3f32cc: aa1403e0     	mov	x0, x20
  3f32d0: 9400056b     	bl	0x3f487c <.text+0xac87c>
  3f32d4: 17ffffd6     	b	0x3f322c <.text+0xab22c>
  3f32d8: 9429c5d8     	bl	0xe64a38 <__stack_chk_fail@plt>
  3f32dc: 94000588     	bl	0x3f48fc <.text+0xac8fc>
  3f32e0: d503233f     	paciasp
  3f32e4: f800865e     	str	x30, [x18], #0x8
  3f32e8: d10143ff     	sub	sp, sp, #0x50
  3f32ec: a9047bfd     	stp	x29, x30, [sp, #0x40]
  3f32f0: 910103fd     	add	x29, sp, #0x40
  3f32f4: 3dc00000     	ldr	q0, [x0]
  3f32f8: f9400808     	ldr	x8, [x0, #0x10]
  3f32fc: 90ffe7e1     	adrp	x1, 0xef000
  3f3300: 913c3021     	add	x1, x1, #0xf0c
  3f3304: 90ffe7e3     	adrp	x3, 0xef000
  3f3308: 913b1463     	add	x3, x3, #0xec5
  3f330c: 910083e2     	add	x2, sp, #0x20
  3f3310: 910023e5     	add	x5, sp, #0x8
  3f3314: 528000e0     	mov	w0, #0x7                // =7
  3f3318: 528008c4     	mov	w4, #0x46               // =70
  3f331c: f90007ff     	str	xzr, [sp, #0x8]
  3f3320: 3d800be0     	str	q0, [sp, #0x20]
  3f3324: f9001be8     	str	x8, [sp, #0x30]
  3f3328: 9429ad7f     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  3f332c: 9429bcf9     	bl	0xe62710 <abort@plt>
  3f3330: d503245f     	bti	c
  3f3334: d65f03c0     	ret
  3f3338: d503245f     	bti	c
  3f333c: 52800101     	mov	w1, #0x8                // =8
  3f3340: 17fd5d13     	b	0x34a78c <.text+0x278c>
