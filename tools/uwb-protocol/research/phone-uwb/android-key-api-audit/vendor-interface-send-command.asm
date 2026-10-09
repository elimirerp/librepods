
work/phone-uwb/android-key-api-audit/libbluetooth_jni.so:	file format elf64-littleaarch64

Disassembly of section .text:

00000000004148f0 <JNI_OnLoad>:
  7018c8: d503233f     	paciasp
  7018cc: f800865e     	str	x30, [x18], #0x8
  7018d0: d10283ff     	sub	sp, sp, #0xa0
  7018d4: a9057bfd     	stp	x29, x30, [sp, #0x50]
  7018d8: a90667fa     	stp	x26, x25, [sp, #0x60]
  7018dc: a9075ff8     	stp	x24, x23, [sp, #0x70]
  7018e0: a90857f6     	stp	x22, x21, [sp, #0x80]
  7018e4: a9094ff4     	stp	x20, x19, [sp, #0x90]
  7018e8: 910143fd     	add	x29, sp, #0x50
  7018ec: d53bd056     	mrs	x22, TPIDR_EL0
  7018f0: f94016c8     	ldr	x8, [x22, #0x28]
  7018f4: f81f83a8     	stur	x8, [x29, #-0x8]
  7018f8: f9400408     	ldr	x8, [x0, #0x8]
  7018fc: b4000968     	cbz	x8, 0x701a28 <JNI_OnLoad+0x2ed138>
  701900: 12003c28     	and	w8, w1, #0xffff
  701904: 7110011f     	cmp	w8, #0x400
  701908: 54000ae2     	b.hs	0x701a64 <JNI_OnLoad+0x2ed174>
  70190c: aa0003f9     	mov	x25, x0
  701910: aa0303f8     	mov	x24, x3
  701914: aa0403f7     	mov	x23, x4
  701918: 32165435     	orr	w21, w1, #0xfffffc00
  70191c: aa0203fa     	mov	x26, x2
  701920: 97fafc37     	bl	0x5c09fc <JNI_OnLoad+0x1ac10c>
  701924: aa0003f3     	mov	x19, x0
  701928: 52800700     	mov	w0, #0x38               // =56
  70192c: 941d8315     	bl	0xe62580
  701930: 3dc00340     	ldr	q0, [x26]
  701934: f9400b48     	ldr	x8, [x26, #0x10]
  701938: d10083a1     	sub	x1, x29, #0x20
  70193c: aa0003f4     	mov	x20, x0
  701940: a9007f5f     	stp	xzr, xzr, [x26]
  701944: 3c9e03a0     	stur	q0, [x29, #-0x20]
  701948: f81f03a8     	stur	x8, [x29, #-0x10]
  70194c: f9000b5f     	str	xzr, [x26, #0x10]
  701950: 940f979c     	bl	0xae77c0 <JNI_OnLoad+0x6d2ed0>
  701954: f85e03a0     	ldur	x0, [x29, #-0x20]
  701958: b40000a0     	cbz	x0, 0x70196c <JNI_OnLoad+0x2ed07c>
  70195c: f85f03a8     	ldur	x8, [x29, #-0x10]
  701960: f81e83a0     	stur	x0, [x29, #-0x18]
  701964: cb000101     	sub	x1, x8, x0
  701968: 97f12389     	bl	0x34a78c <.text+0x278c>
  70196c: 52800500     	mov	w0, #0x28               // =40
  701970: 941d8304     	bl	0xe62580
  701974: d0003c48     	adrp	x8, 0xe8b000
  701978: 91022108     	add	x8, x8, #0x88
  70197c: 3900201f     	strb	wzr, [x0, #0x8]
  701980: 9100e109     	add	x9, x8, #0x38
  701984: f9000008     	str	x8, [x0]
  701988: f9000809     	str	x9, [x0, #0x10]
  70198c: 79003015     	strh	w21, [x0, #0x18]
  701990: f9000be0     	str	x0, [sp, #0x10]
  701994: f9001014     	str	x20, [x0, #0x20]
  701998: 90004660     	adrp	x0, 0xfcd000
  70199c: 912f2000     	add	x0, x0, #0xbc8
  7019a0: 9417e72a     	bl	0xcfb648 <JNI_OnLoad+0x8e6d58>
  7019a4: aa0003f4     	mov	x20, x0
  7019a8: 52800800     	mov	w0, #0x40               // =64
  7019ac: 941d82f5     	bl	0xe62580
  7019b0: d503201f     	nop
  7019b4: 10005f61     	adr	x1, 0x7025a0 <JNI_OnLoad+0x2edcb0>
  7019b8: d503201f     	nop
  7019bc: 10008122     	adr	x2, 0x7029e0 <JNI_OnLoad+0x2ee0f0>
  7019c0: aa0003f5     	mov	x21, x0
  7019c4: 94181502     	bl	0xd06dcc <JNI_OnLoad+0x8f24dc>
  7019c8: f9400728     	ldr	x8, [x25, #0x8]
  7019cc: d503201f     	nop
  7019d0: 10003669     	adr	x9, 0x70209c <JNI_OnLoad+0x2ed7ac>
  7019d4: d10083a0     	sub	x0, x29, #0x20
  7019d8: a9035eb8     	stp	x24, x23, [x21, #0x30]
  7019dc: a90222a9     	stp	x9, x8, [x21, #0x20]
  7019e0: f81e03bf     	stur	xzr, [x29, #-0x20]
  7019e4: a90053f5     	stp	x21, x20, [sp]
  7019e8: 9418153c     	bl	0xd06ed8 <JNI_OnLoad+0x8f25e8>
  7019ec: f9400268     	ldr	x8, [x19]
  7019f0: 910043e1     	add	x1, sp, #0x10
  7019f4: 910003e2     	mov	x2, sp
  7019f8: aa1303e0     	mov	x0, x19
  7019fc: f9401108     	ldr	x8, [x8, #0x20]
  701a00: d63f0100     	blr	x8
  701a04: 910003e0     	mov	x0, sp
  701a08: 94181534     	bl	0xd06ed8 <JNI_OnLoad+0x8f25e8>
  701a0c: f9400be0     	ldr	x0, [sp, #0x10]
  701a10: f9000bff     	str	xzr, [sp, #0x10]
  701a14: b40004a0     	cbz	x0, 0x701aa8 <JNI_OnLoad+0x2ed1b8>
  701a18: f9400008     	ldr	x8, [x0]
  701a1c: f9400508     	ldr	x8, [x8, #0x8]
  701a20: d63f0100     	blr	x8
  701a24: 14000021     	b	0x701aa8 <JNI_OnLoad+0x2ed1b8>
  701a28: 52800ca8     	mov	w8, #0x65               // =101
  701a2c: d0ffca09     	adrp	x9, 0x43000
  701a30: 9104e929     	add	x9, x9, #0x13a
  701a34: b81e03a8     	stur	w8, [x29, #-0x20]
  701a38: b0ffcfc8     	adrp	x8, 0xfa000
  701a3c: 9136a508     	add	x8, x8, #0xda9
  701a40: 90ffc901     	adrp	x1, 0x21000
  701a44: 9126c021     	add	x1, x1, #0x9b0
  701a48: b0ffcc43     	adrp	x3, 0x8a000
  701a4c: 91065463     	add	x3, x3, #0x195
  701a50: d10083a2     	sub	x2, x29, #0x20
  701a54: 910063e5     	add	x5, sp, #0x18
  701a58: 528000c0     	mov	w0, #0x6                // =6
  701a5c: 528001e4     	mov	w4, #0xf                // =15
  701a60: 1400000f     	b	0x701a9c <JNI_OnLoad+0x2ed1ac>
  701a64: 52800d48     	mov	w8, #0x6a               // =106
  701a68: d0ffca09     	adrp	x9, 0x43000
  701a6c: 9104e929     	add	x9, x9, #0x13a
  701a70: b81e03a8     	stur	w8, [x29, #-0x20]
  701a74: b0ffcfc8     	adrp	x8, 0xfa000
  701a78: 9136a508     	add	x8, x8, #0xda9
  701a7c: 90ffc901     	adrp	x1, 0x21000
  701a80: 9126c021     	add	x1, x1, #0x9b0
  701a84: f0ffc983     	adrp	x3, 0x34000
  701a88: 91071463     	add	x3, x3, #0x1c5
  701a8c: d10083a2     	sub	x2, x29, #0x20
  701a90: 910063e5     	add	x5, sp, #0x18
  701a94: 528000c0     	mov	w0, #0x6                // =6
  701a98: 528003e4     	mov	w4, #0x1f               // =31
  701a9c: a93ea3a9     	stp	x9, x8, [x29, #-0x18]
  701aa0: f9000fff     	str	xzr, [sp, #0x18]
  701aa4: 941d73a0     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  701aa8: f94016c8     	ldr	x8, [x22, #0x28]
  701aac: f85f83a9     	ldur	x9, [x29, #-0x8]
  701ab0: eb09011f     	cmp	x8, x9
  701ab4: 54000141     	b.ne	0x701adc <JNI_OnLoad+0x2ed1ec>
  701ab8: a9494ff4     	ldp	x20, x19, [sp, #0x90]
  701abc: a94857f6     	ldp	x22, x21, [sp, #0x80]
  701ac0: a9475ff8     	ldp	x24, x23, [sp, #0x70]
  701ac4: a94667fa     	ldp	x26, x25, [sp, #0x60]
  701ac8: a9457bfd     	ldp	x29, x30, [sp, #0x50]
  701acc: 910283ff     	add	sp, sp, #0xa0
  701ad0: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  701ad4: d50323bf     	autiasp
  701ad8: d65f03c0     	ret
  701adc: 941d8bd7     	bl	0xe64a38 <__stack_chk_fail@plt>
  701ae0: d503233f     	paciasp
  701ae4: f800865e     	str	x30, [x18], #0x8
  701ae8: d10403ff     	sub	sp, sp, #0x100
  701aec: a90b7bfd     	stp	x29, x30, [sp, #0xb0]
  701af0: f90063f9     	str	x25, [sp, #0xc0]
  701af4: a90d5ff8     	stp	x24, x23, [sp, #0xd0]
  701af8: a90e57f6     	stp	x22, x21, [sp, #0xe0]
  701afc: a90f4ff4     	stp	x20, x19, [sp, #0xf0]
  701b00: 9102c3fd     	add	x29, sp, #0xb0
  701b04: d53bd056     	mrs	x22, TPIDR_EL0
  701b08: aa0003f3     	mov	x19, x0
  701b0c: aa0103e0     	mov	x0, x1
  701b10: f94016c8     	ldr	x8, [x22, #0x28]
  701b14: aa0103f5     	mov	x21, x1
  701b18: f81f83a8     	stur	x8, [x29, #-0x8]
  701b1c: 97ff21f1     	bl	0x6ca2e0 <JNI_OnLoad+0x2b59f0>
  701b20: 51014808     	sub	w8, w0, #0x52
  701b24: 12001d08     	and	w8, w8, #0xff
  701b28: 7100391f     	cmp	w8, #0xe
  701b2c: 54000ec3     	b.lo	0x701d04 <JNI_OnLoad+0x2ed414>
  701b30: 2a0003f4     	mov	w20, w0
  701b34: 910143e8     	add	x8, sp, #0x50
  701b38: aa1503e0     	mov	x0, x21
  701b3c: a93e7fbf     	stp	xzr, xzr, [x29, #-0x20]
  701b40: f81f03bf     	stur	xzr, [x29, #-0x10]
  701b44: 97ff223d     	bl	0x6ca438 <JNI_OnLoad+0x2b5b48>
  701b48: d10123a8     	sub	x8, x29, #0x48
  701b4c: 910143e0     	add	x0, sp, #0x50
  701b50: 97f3c15a     	bl	0x3f20b8 <.text+0xaa0b8>
  701b54: 910043e8     	add	x8, sp, #0x10
  701b58: aa1503e0     	mov	x0, x21
  701b5c: 97ff2237     	bl	0x6ca438 <JNI_OnLoad+0x2b5b48>
  701b60: 9100a3e8     	add	x8, sp, #0x28
  701b64: 910043e0     	add	x0, sp, #0x10
  701b68: 97f3c175     	bl	0x3f213c <.text+0xaa13c>
  701b6c: d10083a0     	sub	x0, x29, #0x20
  701b70: d10123a1     	sub	x1, x29, #0x48
  701b74: 9100a3e2     	add	x2, sp, #0x28
  701b78: 97faea07     	bl	0x5bc394 <JNI_OnLoad+0x1a7aa4>
  701b7c: f9401bf5     	ldr	x21, [sp, #0x30]
  701b80: 90003c77     	adrp	x23, 0xe8d000
  701b84: 9137e2f7     	add	x23, x23, #0xdf8
  701b88: f90017f7     	str	x23, [sp, #0x28]
  701b8c: b4000175     	cbz	x21, 0x701bb8 <JNI_OnLoad+0x2ed2c8>
  701b90: aa1503e0     	mov	x0, x21
  701b94: f94002b8     	ldr	x24, [x21]
  701b98: f8408c08     	ldr	x8, [x0, #0x8]!
  701b9c: f9400108     	ldr	x8, [x8]
  701ba0: d63f0100     	blr	x8
  701ba4: aa1503e0     	mov	x0, x21
  701ba8: 52800601     	mov	w1, #0x30               // =48
  701bac: 97f122f8     	bl	0x34a78c <.text+0x278c>
  701bb0: aa1803f5     	mov	x21, x24
  701bb4: b5fffef8     	cbnz	x24, 0x701b90 <JNI_OnLoad+0x2ed2a0>
  701bb8: f9400ff5     	ldr	x21, [sp, #0x18]
  701bbc: d0003c58     	adrp	x24, 0xe8b000
  701bc0: 9101a318     	add	x24, x24, #0x68
  701bc4: f9001bff     	str	xzr, [sp, #0x30]
  701bc8: f9000bf8     	str	x24, [sp, #0x10]
  701bcc: b4000175     	cbz	x21, 0x701bf8 <JNI_OnLoad+0x2ed308>
  701bd0: aa1503e0     	mov	x0, x21
  701bd4: f94002b9     	ldr	x25, [x21]
  701bd8: f8408c08     	ldr	x8, [x0, #0x8]!
  701bdc: f9400108     	ldr	x8, [x8]
  701be0: d63f0100     	blr	x8
  701be4: aa1503e0     	mov	x0, x21
  701be8: 52800601     	mov	w1, #0x30               // =48
  701bec: 97f122e8     	bl	0x34a78c <.text+0x278c>
