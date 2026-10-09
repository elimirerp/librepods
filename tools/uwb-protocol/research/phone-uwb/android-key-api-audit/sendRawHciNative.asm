
work/phone-uwb/android-key-api-audit/libbluetooth_jni.so:	file format elf64-littleaarch64

Disassembly of section .text:

00000000004148f0 <JNI_OnLoad>:
  419364: d503233f     	paciasp
  419368: f800865e     	str	x30, [x18], #0x8
  41936c: d10203ff     	sub	sp, sp, #0x80
  419370: a9047bfd     	stp	x29, x30, [sp, #0x40]
  419374: a9055ff8     	stp	x24, x23, [sp, #0x50]
  419378: a90657f6     	stp	x22, x21, [sp, #0x60]
  41937c: a9074ff4     	stp	x20, x19, [sp, #0x70]
  419380: 910103fd     	add	x29, sp, #0x40
  419384: d53bd058     	mrs	x24, TPIDR_EL0
  419388: 528098a9     	mov	w9, #0x4c5              // =1221
  41938c: 2a0403f6     	mov	w22, w4
  419390: f9401708     	ldr	x8, [x24, #0x28]
  419394: aa0303f3     	mov	x19, x3
  419398: 2a0203f5     	mov	w21, w2
  41939c: aa0003f4     	mov	x20, x0
  4193a0: f0ffe0e1     	adrp	x1, 0x38000
  4193a4: 911f3c21     	add	x1, x1, #0x7cf
  4193a8: f81f83a8     	stur	x8, [x29, #-0x8]
  4193ac: f0ffe668     	adrp	x8, 0xe8000
  4193b0: 91152d08     	add	x8, x8, #0x54b
  4193b4: b90023e9     	str	w9, [sp, #0x20]
  4193b8: 90ffdfc9     	adrp	x9, 0x11000
  4193bc: 910fa129     	add	x9, x9, #0x3e8
  4193c0: d0ffe123     	adrp	x3, 0x3f000
  4193c4: 911fd863     	add	x3, x3, #0x7f6
  4193c8: 910083e2     	add	x2, sp, #0x20
  4193cc: 910023e5     	add	x5, sp, #0x8
  4193d0: 52800040     	mov	w0, #0x2                // =2
  4193d4: aa1f03e4     	mov	x4, xzr
  4193d8: a902a7e8     	stp	x8, x9, [sp, #0x28]
  4193dc: f90007ff     	str	xzr, [sp, #0x8]
  4193e0: 94291551     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  4193e4: b00054a8     	adrp	x8, 0xeae000
  4193e8: f946dd08     	ldr	x8, [x8, #0xdb8]
  4193ec: b4000348     	cbz	x8, 0x419454 <JNI_OnLoad+0x4b64>
  4193f0: 34000376     	cbz	w22, 0x41945c <JNI_OnLoad+0x4b6c>
  4193f4: f9400288     	ldr	x8, [x20]
  4193f8: aa1403e0     	mov	x0, x20
  4193fc: aa1303e1     	mov	x1, x19
  419400: aa1f03e2     	mov	x2, xzr
  419404: f942e108     	ldr	x8, [x8, #0x5c0]
  419408: d63f0100     	blr	x8
  41940c: b4000540     	cbz	x0, 0x4194b4 <JNI_OnLoad+0x4bc4>
  419410: d0005448     	adrp	x8, 0xea3000
  419414: aa0003f7     	mov	x23, x0
  419418: 2a1503e0     	mov	w0, w21
  41941c: f9468d08     	ldr	x8, [x8, #0xd18]
  419420: aa1703e1     	mov	x1, x23
  419424: 2a1603e2     	mov	w2, w22
  419428: f940f508     	ldr	x8, [x8, #0x1e8]
  41942c: d63f0100     	blr	x8
  419430: f9400288     	ldr	x8, [x20]
  419434: 2a0003f5     	mov	w21, w0
  419438: aa1403e0     	mov	x0, x20
  41943c: aa1303e1     	mov	x1, x19
  419440: aa1703e2     	mov	x2, x23
  419444: 2a1f03e3     	mov	w3, wzr
  419448: f9430108     	ldr	x8, [x8, #0x600]
  41944c: d63f0100     	blr	x8
  419450: 1400000b     	b	0x41947c <JNI_OnLoad+0x4b8c>
  419454: 2a1f03e0     	mov	w0, wzr
  419458: 1400000b     	b	0x419484 <JNI_OnLoad+0x4b94>
  41945c: d0005448     	adrp	x8, 0xea3000
  419460: 2a1503e0     	mov	w0, w21
  419464: aa1f03e1     	mov	x1, xzr
  419468: f9468d08     	ldr	x8, [x8, #0xd18]
  41946c: 2a1f03e2     	mov	w2, wzr
  419470: f940f508     	ldr	x8, [x8, #0x1e8]
  419474: d63f0100     	blr	x8
  419478: 2a0003f5     	mov	w21, w0
  41947c: 710002bf     	cmp	w21, #0x0
  419480: 1a9f17e0     	cset	w0, eq
  419484: f9401708     	ldr	x8, [x24, #0x28]
  419488: f85f83a9     	ldur	x9, [x29, #-0x8]
  41948c: eb09011f     	cmp	x8, x9
  419490: 540001a1     	b.ne	0x4194c4 <JNI_OnLoad+0x4bd4>
  419494: a9474ff4     	ldp	x20, x19, [sp, #0x70]
  419498: a94657f6     	ldp	x22, x21, [sp, #0x60]
  41949c: a9455ff8     	ldp	x24, x23, [sp, #0x50]
  4194a0: a9447bfd     	ldp	x29, x30, [sp, #0x40]
  4194a4: 910203ff     	add	sp, sp, #0x80
  4194a8: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  4194ac: d50323bf     	autiasp
  4194b0: d65f03c0     	ret
  4194b4: aa1403e0     	mov	x0, x20
  4194b8: 97ff6cf1     	bl	0x3f487c <.text+0xac87c>
  4194bc: 2a1f03e0     	mov	w0, wzr
  4194c0: 17fffff1     	b	0x419484 <JNI_OnLoad+0x4b94>
  4194c4: 94292d5d     	bl	0xe64a38 <__stack_chk_fail@plt>
  4194c8: d503233f     	paciasp
  4194cc: f800865e     	str	x30, [x18], #0x8
  4194d0: d10183ff     	sub	sp, sp, #0x60
  4194d4: a9047bfd     	stp	x29, x30, [sp, #0x40]
  4194d8: a9054ff4     	stp	x20, x19, [sp, #0x50]
  4194dc: 910103fd     	add	x29, sp, #0x40
  4194e0: d53bd054     	mrs	x20, TPIDR_EL0
  4194e4: 52809ba9     	mov	w9, #0x4dd              // =1245
  4194e8: 2a0203f3     	mov	w19, w2
  4194ec: f9401688     	ldr	x8, [x20, #0x28]
  4194f0: f0ffe0e1     	adrp	x1, 0x38000
  4194f4: 911f3c21     	add	x1, x1, #0x7cf
  4194f8: d0ffe123     	adrp	x3, 0x3f000
  4194fc: 911fd863     	add	x3, x3, #0x7f6
  419500: 910083e2     	add	x2, sp, #0x20
  419504: f81f83a8     	stur	x8, [x29, #-0x8]
  419508: f0ffe668     	adrp	x8, 0xe8000
  41950c: 91152d08     	add	x8, x8, #0x54b
  419510: b90023e9     	str	w9, [sp, #0x20]
  419514: f0ffe629     	adrp	x9, 0xe0000
  419518: 9105f929     	add	x9, x9, #0x17e
  41951c: 910023e5     	add	x5, sp, #0x8
  419520: 52800040     	mov	w0, #0x2                // =2
  419524: aa1f03e4     	mov	x4, xzr
  419528: a902a7e8     	stp	x8, x9, [sp, #0x28]
  41952c: f90007ff     	str	xzr, [sp, #0x8]
  419530: 942914fd     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  419534: b00054a8     	adrp	x8, 0xeae000
  419538: f946dd08     	ldr	x8, [x8, #0xdb8]
  41953c: b4000128     	cbz	x8, 0x419560 <JNI_OnLoad+0x4c70>
  419540: d0005448     	adrp	x8, 0xea3000
  419544: 2a1303e0     	mov	w0, w19
  419548: f9468d08     	ldr	x8, [x8, #0xd18]
  41954c: f940f908     	ldr	x8, [x8, #0x1f0]
  419550: d63f0100     	blr	x8
  419554: 7100001f     	cmp	w0, #0x0
  419558: 1a9f17e0     	cset	w0, eq
  41955c: 14000002     	b	0x419564 <JNI_OnLoad+0x4c74>
  419560: 2a1f03e0     	mov	w0, wzr
  419564: f9401688     	ldr	x8, [x20, #0x28]
  419568: f85f83a9     	ldur	x9, [x29, #-0x8]
  41956c: eb09011f     	cmp	x8, x9
  419570: 540000e1     	b.ne	0x41958c <JNI_OnLoad+0x4c9c>
  419574: a9454ff4     	ldp	x20, x19, [sp, #0x50]
  419578: a9447bfd     	ldp	x29, x30, [sp, #0x40]
  41957c: 910183ff     	add	sp, sp, #0x60
  419580: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  419584: d50323bf     	autiasp
  419588: d65f03c0     	ret
  41958c: 94292d2b     	bl	0xe64a38 <__stack_chk_fail@plt>
  419590: d503233f     	paciasp
  419594: f800865e     	str	x30, [x18], #0x8
  419598: d10183ff     	sub	sp, sp, #0x60
  41959c: a9047bfd     	stp	x29, x30, [sp, #0x40]
  4195a0: a9054ff4     	stp	x20, x19, [sp, #0x50]
  4195a4: 910103fd     	add	x29, sp, #0x40
  4195a8: d53bd054     	mrs	x20, TPIDR_EL0
  4195ac: 5280c3e9     	mov	w9, #0x61f              // =1567
  4195b0: 2a0203f3     	mov	w19, w2
  4195b4: f9401688     	ldr	x8, [x20, #0x28]
  4195b8: f0ffe0e1     	adrp	x1, 0x38000
  4195bc: 911f3c21     	add	x1, x1, #0x7cf
  4195c0: d0ffe123     	adrp	x3, 0x3f000
  4195c4: 911fd863     	add	x3, x3, #0x7f6
  4195c8: 910083e2     	add	x2, sp, #0x20
  4195cc: f81f83a8     	stur	x8, [x29, #-0x8]
  4195d0: f0ffe668     	adrp	x8, 0xe8000
  4195d4: 91152d08     	add	x8, x8, #0x54b
  4195d8: b90023e9     	str	w9, [sp, #0x20]
  4195dc: f0ffe669     	adrp	x9, 0xe8000
  4195e0: 91187529     	add	x9, x9, #0x61d
  4195e4: 910023e5     	add	x5, sp, #0x8
  4195e8: 52800040     	mov	w0, #0x2                // =2
  4195ec: aa1f03e4     	mov	x4, xzr
  4195f0: a902a7e8     	stp	x8, x9, [sp, #0x28]
  4195f4: f90007ff     	str	xzr, [sp, #0x8]
  4195f8: 942914cb     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  4195fc: b00054a8     	adrp	x8, 0xeae000
  419600: f946dd08     	ldr	x8, [x8, #0xdb8]
  419604: b4000128     	cbz	x8, 0x419628 <JNI_OnLoad+0x4d38>
  419608: d0005448     	adrp	x8, 0xea3000
  41960c: 2a1303e0     	mov	w0, w19
  419610: f9468d08     	ldr	x8, [x8, #0xd18]
  419614: f940fd08     	ldr	x8, [x8, #0x1f8]
  419618: d63f0100     	blr	x8
  41961c: 7100001f     	cmp	w0, #0x0
  419620: 1a9f17e0     	cset	w0, eq
  419624: 14000002     	b	0x41962c <JNI_OnLoad+0x4d3c>
  419628: 2a1f03e0     	mov	w0, wzr
  41962c: f9401688     	ldr	x8, [x20, #0x28]
  419630: f85f83a9     	ldur	x9, [x29, #-0x8]
  419634: eb09011f     	cmp	x8, x9
  419638: 540000e1     	b.ne	0x419654 <JNI_OnLoad+0x4d64>
  41963c: a9454ff4     	ldp	x20, x19, [sp, #0x50]
  419640: a9447bfd     	ldp	x29, x30, [sp, #0x40]
  419644: 910183ff     	add	sp, sp, #0x60
  419648: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  41964c: d50323bf     	autiasp
