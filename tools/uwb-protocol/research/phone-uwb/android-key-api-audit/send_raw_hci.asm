
work/phone-uwb/android-key-api-audit/libbluetooth_jni.so:	file format elf64-littleaarch64

Disassembly of section .text:

00000000004148f0 <JNI_OnLoad>:
  5f6044: d503233f     	paciasp
  5f6048: f800865e     	str	x30, [x18], #0x8
  5f604c: d10183ff     	sub	sp, sp, #0x60
  5f6050: a9047bfd     	stp	x29, x30, [sp, #0x40]
  5f6054: f9002bf3     	str	x19, [sp, #0x50]
  5f6058: 910103fd     	add	x29, sp, #0x40
  5f605c: d53bd053     	mrs	x19, TPIDR_EL0
  5f6060: 528090c9     	mov	w9, #0x486              // =1158
  5f6064: f0ffd4c1     	adrp	x1, 0x91000
  5f6068: 91048c21     	add	x1, x1, #0x123
  5f606c: f9401668     	ldr	x8, [x19, #0x28]
  5f6070: 90ffd7a3     	adrp	x3, 0xea000
  5f6074: 9110a863     	add	x3, x3, #0x42a
  5f6078: 910083e2     	add	x2, sp, #0x20
  5f607c: 910023e5     	add	x5, sp, #0x8
  5f6080: f81f83a8     	stur	x8, [x29, #-0x8]
  5f6084: f0ffd688     	adrp	x8, 0xc9000
  5f6088: 912fb508     	add	x8, x8, #0xbed
  5f608c: b90023e9     	str	w9, [sp, #0x20]
  5f6090: d0ffd589     	adrp	x9, 0xa8000
  5f6094: 91322129     	add	x9, x9, #0xc88
  5f6098: 52800080     	mov	w0, #0x4                // =4
  5f609c: 52800324     	mov	w4, #0x19               // =25
  5f60a0: a902a7e8     	stp	x8, x9, [sp, #0x28]
  5f60a4: f90007ff     	str	xzr, [sp, #0x8]
  5f60a8: 9421a21f     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  5f60ac: f9401668     	ldr	x8, [x19, #0x28]
  5f60b0: f85f83a9     	ldur	x9, [x29, #-0x8]
  5f60b4: eb09011f     	cmp	x8, x9
  5f60b8: 54000101     	b.ne	0x5f60d8 <JNI_OnLoad+0x1e17e8>
  5f60bc: 52800100     	mov	w0, #0x8                // =8
  5f60c0: a9447bfd     	ldp	x29, x30, [sp, #0x40]
  5f60c4: f9402bf3     	ldr	x19, [sp, #0x50]
  5f60c8: 910183ff     	add	sp, sp, #0x60
  5f60cc: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  5f60d0: d50323bf     	autiasp
  5f60d4: d65f03c0     	ret
  5f60d8: 9421ba58     	bl	0xe64a38 <__stack_chk_fail@plt>
  5f60dc: d503245f     	bti	c
  5f60e0: f00048c8     	adrp	x8, 0xf11000
  5f60e4: f9441508     	ldr	x8, [x8, #0x828]
  5f60e8: b4000048     	cbz	x8, 0x5f60f0 <JNI_OnLoad+0x1e1800>
  5f60ec: 1403e2b8     	b	0x6eebcc <JNI_OnLoad+0x2da2dc>
  5f60f0: 52800040     	mov	w0, #0x2                // =2
  5f60f4: d65f03c0     	ret
  5f60f8: d503245f     	bti	c
  5f60fc: f00048c8     	adrp	x8, 0xf11000
  5f6100: f9441508     	ldr	x8, [x8, #0x828]
  5f6104: b4000048     	cbz	x8, 0x5f610c <JNI_OnLoad+0x1e181c>
  5f6108: 1403e7bb     	b	0x6efff4 <JNI_OnLoad+0x2db704>
  5f610c: 52800040     	mov	w0, #0x2                // =2
  5f6110: d65f03c0     	ret
  5f6114: d503245f     	bti	c
  5f6118: f00048c8     	adrp	x8, 0xf11000
  5f611c: f9441508     	ldr	x8, [x8, #0x828]
  5f6120: b4000048     	cbz	x8, 0x5f6128 <JNI_OnLoad+0x1e1838>
  5f6124: 1403e817     	b	0x6f0180 <JNI_OnLoad+0x2db890>
  5f6128: 52800040     	mov	w0, #0x2                // =2
  5f612c: d65f03c0     	ret
  5f6130: d503245f     	bti	c
  5f6134: f00048c8     	adrp	x8, 0xf11000
  5f6138: f9441508     	ldr	x8, [x8, #0x828]
  5f613c: b4000048     	cbz	x8, 0x5f6144 <JNI_OnLoad+0x1e1854>
  5f6140: 1403e898     	b	0x6f03a0 <JNI_OnLoad+0x2dbab0>
  5f6144: 52800040     	mov	w0, #0x2                // =2
  5f6148: d65f03c0     	ret
  5f614c: d503245f     	bti	c
  5f6150: f00048c8     	adrp	x8, 0xf11000
  5f6154: f9441508     	ldr	x8, [x8, #0x828]
  5f6158: b4000048     	cbz	x8, 0x5f6160 <JNI_OnLoad+0x1e1870>
  5f615c: 1403e94f     	b	0x6f0698 <JNI_OnLoad+0x2dbda8>
  5f6160: 52800040     	mov	w0, #0x2                // =2
  5f6164: d65f03c0     	ret
  5f6168: d503245f     	bti	c
  5f616c: f00048c8     	adrp	x8, 0xf11000
  5f6170: f9441508     	ldr	x8, [x8, #0x828]
  5f6174: b4000048     	cbz	x8, 0x5f617c <JNI_OnLoad+0x1e188c>
  5f6178: 1403e9e5     	b	0x6f090c <JNI_OnLoad+0x2dc01c>
  5f617c: 52800040     	mov	w0, #0x2                // =2
  5f6180: d65f03c0     	ret
  5f6184: d503245f     	bti	c
  5f6188: f00048c8     	adrp	x8, 0xf11000
  5f618c: f9441508     	ldr	x8, [x8, #0x828]
  5f6190: b4000048     	cbz	x8, 0x5f6198 <JNI_OnLoad+0x1e18a8>
  5f6194: 1403ea5c     	b	0x6f0b04 <JNI_OnLoad+0x2dc214>
  5f6198: 52800040     	mov	w0, #0x2                // =2
  5f619c: d65f03c0     	ret
  5f61a0: d503233f     	paciasp
  5f61a4: f800865e     	str	x30, [x18], #0x8
  5f61a8: d10183ff     	sub	sp, sp, #0x60
  5f61ac: a9047bfd     	stp	x29, x30, [sp, #0x40]
  5f61b0: f9002bf3     	str	x19, [sp, #0x50]
  5f61b4: 910103fd     	add	x29, sp, #0x40
  5f61b8: d53bd053     	mrs	x19, TPIDR_EL0
  5f61bc: 5280a369     	mov	w9, #0x51b              // =1307
  5f61c0: f0ffd4c1     	adrp	x1, 0x91000
  5f61c4: 91048c21     	add	x1, x1, #0x123
  5f61c8: f9401668     	ldr	x8, [x19, #0x28]
  5f61cc: b0ffd243     	adrp	x3, 0x3f000
  5f61d0: 911fd863     	add	x3, x3, #0x7f6
  5f61d4: 910083e2     	add	x2, sp, #0x20
  5f61d8: 910023e5     	add	x5, sp, #0x8
  5f61dc: f81f83a8     	stur	x8, [x29, #-0x8]
  5f61e0: f0ffd688     	adrp	x8, 0xc9000
  5f61e4: 912fb508     	add	x8, x8, #0xbed
  5f61e8: b90023e9     	str	w9, [sp, #0x20]
  5f61ec: f0ffd649     	adrp	x9, 0xc1000
  5f61f0: 911c0d29     	add	x9, x9, #0x703
  5f61f4: 52800080     	mov	w0, #0x4                // =4
  5f61f8: aa1f03e4     	mov	x4, xzr
  5f61fc: a902a7e8     	stp	x8, x9, [sp, #0x28]
  5f6200: f90007ff     	str	xzr, [sp, #0x8]
  5f6204: 9421a1c8     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  5f6208: f00048c8     	adrp	x8, 0xf11000
  5f620c: f9441508     	ldr	x8, [x8, #0x828]
  5f6210: b4000068     	cbz	x8, 0x5f621c <JNI_OnLoad+0x1e192c>
  5f6214: 94036661     	bl	0x6cfb98 <JNI_OnLoad+0x2bb2a8>
  5f6218: 14000002     	b	0x5f6220 <JNI_OnLoad+0x1e1930>
  5f621c: 52800040     	mov	w0, #0x2                // =2
  5f6220: f9401668     	ldr	x8, [x19, #0x28]
  5f6224: f85f83a9     	ldur	x9, [x29, #-0x8]
  5f6228: eb09011f     	cmp	x8, x9
  5f622c: 540000e1     	b.ne	0x5f6248 <JNI_OnLoad+0x1e1958>
  5f6230: a9447bfd     	ldp	x29, x30, [sp, #0x40]
  5f6234: f9402bf3     	ldr	x19, [sp, #0x50]
  5f6238: 910183ff     	add	sp, sp, #0x60
  5f623c: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  5f6240: d50323bf     	autiasp
  5f6244: d65f03c0     	ret
  5f6248: 9421b9fc     	bl	0xe64a38 <__stack_chk_fail@plt>
  5f624c: d503233f     	paciasp
  5f6250: f800865e     	str	x30, [x18], #0x8
  5f6254: d10183ff     	sub	sp, sp, #0x60
  5f6258: a9047bfd     	stp	x29, x30, [sp, #0x40]
  5f625c: f9002bf3     	str	x19, [sp, #0x50]
  5f6260: 910103fd     	add	x29, sp, #0x40
  5f6264: d53bd053     	mrs	x19, TPIDR_EL0
  5f6268: 5280a4c9     	mov	w9, #0x526              // =1318
  5f626c: f0ffd4c1     	adrp	x1, 0x91000
  5f6270: 91048c21     	add	x1, x1, #0x123
  5f6274: f9401668     	ldr	x8, [x19, #0x28]
  5f6278: b0ffd243     	adrp	x3, 0x3f000
  5f627c: 911fd863     	add	x3, x3, #0x7f6
  5f6280: 910083e2     	add	x2, sp, #0x20
  5f6284: 910023e5     	add	x5, sp, #0x8
  5f6288: f81f83a8     	stur	x8, [x29, #-0x8]
  5f628c: f0ffd688     	adrp	x8, 0xc9000
  5f6290: 912fb508     	add	x8, x8, #0xbed
  5f6294: b90023e9     	str	w9, [sp, #0x20]
  5f6298: f0ffd2c9     	adrp	x9, 0x51000
  5f629c: 912db929     	add	x9, x9, #0xb6e
  5f62a0: 52800080     	mov	w0, #0x4                // =4
  5f62a4: aa1f03e4     	mov	x4, xzr
  5f62a8: a902a7e8     	stp	x8, x9, [sp, #0x28]
  5f62ac: f90007ff     	str	xzr, [sp, #0x8]
  5f62b0: 9421a19d     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  5f62b4: f00048c8     	adrp	x8, 0xf11000
  5f62b8: f9441508     	ldr	x8, [x8, #0x828]
  5f62bc: b4000068     	cbz	x8, 0x5f62c8 <JNI_OnLoad+0x1e19d8>
  5f62c0: 940366a2     	bl	0x6cfd48 <JNI_OnLoad+0x2bb458>
  5f62c4: 14000002     	b	0x5f62cc <JNI_OnLoad+0x1e19dc>
  5f62c8: 52800040     	mov	w0, #0x2                // =2
  5f62cc: f9401668     	ldr	x8, [x19, #0x28]
  5f62d0: f85f83a9     	ldur	x9, [x29, #-0x8]
  5f62d4: eb09011f     	cmp	x8, x9
  5f62d8: 540000e1     	b.ne	0x5f62f4 <JNI_OnLoad+0x1e1a04>
  5f62dc: a9447bfd     	ldp	x29, x30, [sp, #0x40]
  5f62e0: f9402bf3     	ldr	x19, [sp, #0x50]
  5f62e4: 910183ff     	add	sp, sp, #0x60
  5f62e8: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  5f62ec: d50323bf     	autiasp
  5f62f0: d65f03c0     	ret
  5f62f4: 9421b9d1     	bl	0xe64a38 <__stack_chk_fail@plt>
  5f62f8: d503233f     	paciasp
  5f62fc: f800865e     	str	x30, [x18], #0x8
  5f6300: d10183ff     	sub	sp, sp, #0x60
  5f6304: a9047bfd     	stp	x29, x30, [sp, #0x40]
  5f6308: f9002bf3     	str	x19, [sp, #0x50]
  5f630c: 910103fd     	add	x29, sp, #0x40
  5f6310: d53bd053     	mrs	x19, TPIDR_EL0
  5f6314: 5280a789     	mov	w9, #0x53c              // =1340
  5f6318: f0ffd4c1     	adrp	x1, 0x91000
  5f631c: 91048c21     	add	x1, x1, #0x123
