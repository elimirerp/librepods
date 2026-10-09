
work/phone-uwb/android-key-api-audit/libbluetooth_jni.so:	file format elf64-littleaarch64

Disassembly of section .text:

00000000004148f0 <JNI_OnLoad>:
  9e0a7c: d503233f     	paciasp
  9e0a80: f800865e     	str	x30, [x18], #0x8
  9e0a84: d10303ff     	sub	sp, sp, #0xc0
  9e0a88: a9077bfd     	stp	x29, x30, [sp, #0x70]
  9e0a8c: f90043f9     	str	x25, [sp, #0x80]
  9e0a90: a9095ff8     	stp	x24, x23, [sp, #0x90]
  9e0a94: a90a57f6     	stp	x22, x21, [sp, #0xa0]
  9e0a98: a90b4ff4     	stp	x20, x19, [sp, #0xb0]
  9e0a9c: 9101c3fd     	add	x29, sp, #0x70
  9e0aa0: d53bd057     	mrs	x23, TPIDR_EL0
  9e0aa4: aa0203f4     	mov	x20, x2
  9e0aa8: 2a0103f5     	mov	w21, w1
  9e0aac: f94016e8     	ldr	x8, [x23, #0x28]
  9e0ab0: aa0003f6     	mov	x22, x0
  9e0ab4: f81f83a8     	stur	x8, [x29, #-0x8]
  9e0ab8: 940012dd     	bl	0x9e562c <JNI_OnLoad+0x5d0d3c>
  9e0abc: 52807568     	mov	w8, #0x3ab              // =939
  9e0ac0: 924002a9     	and	x9, x21, #0x1
  9e0ac4: aa0003f3     	mov	x19, x0
  9e0ac8: b9001be8     	str	w8, [sp, #0x18]
  9e0acc: b0ffd0c8     	adrp	x8, 0x3f9000 <.text+0xb1000>
  9e0ad0: 91042108     	add	x8, x8, #0x108
  9e0ad4: 90ffb579     	adrp	x25, 0x8c000
  9e0ad8: 910b7b39     	add	x25, x25, #0x2de
  9e0adc: d0ffb238     	adrp	x24, 0x26000
  9e0ae0: 911e3318     	add	x24, x24, #0x78c
  9e0ae4: a90323f6     	stp	x22, x8, [sp, #0x30]
  9e0ae8: 528005e8     	mov	w8, #0x2f               // =47
  9e0aec: f90023e9     	str	x9, [sp, #0x40]
  9e0af0: 52800049     	mov	w9, #0x2                // =2
  9e0af4: 9100c3ea     	add	x10, sp, #0x30
  9e0af8: 90ffb421     	adrp	x1, 0x64000
  9e0afc: 912b2021     	add	x1, x1, #0xac8
  9e0b00: 90ffb8a3     	adrp	x3, 0xf4000
  9e0b04: 91348863     	add	x3, x3, #0xd22
  9e0b08: 910063e2     	add	x2, sp, #0x18
  9e0b0c: 910003e5     	mov	x5, sp
  9e0b10: 52800040     	mov	w0, #0x2                // =2
  9e0b14: 528002c4     	mov	w4, #0x16               // =22
  9e0b18: a90263f9     	stp	x25, x24, [sp, #0x20]
  9e0b1c: a904a3ff     	stp	xzr, x8, [sp, #0x48]
  9e0b20: a9002be9     	stp	x9, x10, [sp]
  9e0b24: f9000be8     	str	x8, [sp, #0x10]
  9e0b28: 9411f77f     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  9e0b2c: b4000273     	cbz	x19, 0x9e0b78 <JNI_OnLoad+0x5cc288>
  9e0b30: 39452668     	ldrb	w8, [x19, #0x149]
  9e0b34: 7100091f     	cmp	w8, #0x2
  9e0b38: 540003e1     	b.ne	0x9e0bb4 <JNI_OnLoad+0x5cc2c4>
  9e0b3c: 52807668     	mov	w8, #0x3b3              // =947
  9e0b40: 90ffb421     	adrp	x1, 0x64000
  9e0b44: 912b2021     	add	x1, x1, #0xac8
  9e0b48: 90ffb563     	adrp	x3, 0x8c000
  9e0b4c: 910db463     	add	x3, x3, #0x36d
  9e0b50: 9100c3e2     	add	x2, sp, #0x30
  9e0b54: 910063e5     	add	x5, sp, #0x18
  9e0b58: 528000a0     	mov	w0, #0x5                // =5
  9e0b5c: 52800464     	mov	w4, #0x23               // =35
  9e0b60: b90033e8     	str	w8, [sp, #0x30]
  9e0b64: a903e3f9     	stp	x25, x24, [sp, #0x38]
  9e0b68: f9000fff     	str	xzr, [sp, #0x18]
  9e0b6c: 9411f76e     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  9e0b70: 52800053     	mov	w19, #0x2               // =2
  9e0b74: 14000047     	b	0x9e0c90 <JNI_OnLoad+0x5cc3a0>
  9e0b78: 528075c8     	mov	w8, #0x3ae              // =942
  9e0b7c: 90ffb421     	adrp	x1, 0x64000
  9e0b80: 912b2021     	add	x1, x1, #0xac8
  9e0b84: 90ffb723     	adrp	x3, 0xc4000
  9e0b88: 91306463     	add	x3, x3, #0xc19
  9e0b8c: 9100c3e2     	add	x2, sp, #0x30
  9e0b90: 910063e5     	add	x5, sp, #0x18
  9e0b94: 528000c0     	mov	w0, #0x6                // =6
  9e0b98: 52800484     	mov	w4, #0x24               // =36
  9e0b9c: b90033e8     	str	w8, [sp, #0x30]
  9e0ba0: 528000d3     	mov	w19, #0x6               // =6
  9e0ba4: a903e3f9     	stp	x25, x24, [sp, #0x38]
  9e0ba8: f9000fff     	str	xzr, [sp, #0x18]
  9e0bac: 9411f75e     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  9e0bb0: 14000038     	b	0x9e0c90 <JNI_OnLoad+0x5cc3a0>
  9e0bb4: 97f78f8a     	bl	0x7c49dc <JNI_OnLoad+0x3b00ec>
  9e0bb8: 37000220     	tbnz	w0, #0x0, 0x9e0bfc <JNI_OnLoad+0x5cc30c>
  9e0bbc: 39452268     	ldrb	w8, [x19, #0x148]
  9e0bc0: 7100091f     	cmp	w8, #0x2
  9e0bc4: 540001c1     	b.ne	0x9e0bfc <JNI_OnLoad+0x5cc30c>
  9e0bc8: 52807748     	mov	w8, #0x3ba              // =954
  9e0bcc: a903e3f9     	stp	x25, x24, [sp, #0x38]
  9e0bd0: 90ffb421     	adrp	x1, 0x64000
  9e0bd4: 912b2021     	add	x1, x1, #0xac8
  9e0bd8: b90033e8     	str	w8, [sp, #0x30]
  9e0bdc: 90ffb463     	adrp	x3, 0x6c000
  9e0be0: 912b4c63     	add	x3, x3, #0xad3
  9e0be4: f9000fff     	str	xzr, [sp, #0x18]
  9e0be8: 9100c3e2     	add	x2, sp, #0x30
  9e0bec: 910063e5     	add	x5, sp, #0x18
  9e0bf0: 528000a0     	mov	w0, #0x5                // =5
  9e0bf4: 528004e4     	mov	w4, #0x27               // =39
  9e0bf8: 17ffffdd     	b	0x9e0b6c <JNI_OnLoad+0x5cc27c>
  9e0bfc: 79424676     	ldrh	w22, [x19, #0x122]
  9e0c00: 940111d4     	bl	0xa25350 <JNI_OnLoad+0x610a60>
  9e0c04: 79029816     	strh	w22, [x0, #0x14c]
  9e0c08: 360000d5     	tbz	w21, #0x0, 0x9e0c20 <JNI_OnLoad+0x5cc330>
  9e0c0c: 79424660     	ldrh	w0, [x19, #0x122]
  9e0c10: aa1f03e1     	mov	x1, xzr
  9e0c14: 2a1f03e2     	mov	w2, wzr
  9e0c18: aa1403e3     	mov	x3, x20
  9e0c1c: 14000017     	b	0x9e0c78 <JNI_OnLoad+0x5cc388>
  9e0c20: 3947b268     	ldrb	w8, [x19, #0x1ec]
  9e0c24: 37000208     	tbnz	w8, #0x0, 0x9e0c64 <JNI_OnLoad+0x5cc374>
  9e0c28: 528078c8     	mov	w8, #0x3c6              // =966
  9e0c2c: 90ffb421     	adrp	x1, 0x64000
  9e0c30: 912b2021     	add	x1, x1, #0xac8
  9e0c34: 90ffb2e3     	adrp	x3, 0x3c000
  9e0c38: 913dec63     	add	x3, x3, #0xf7b
  9e0c3c: 9100c3e2     	add	x2, sp, #0x30
  9e0c40: 910063e5     	add	x5, sp, #0x18
  9e0c44: 528000c0     	mov	w0, #0x6                // =6
  9e0c48: 52800484     	mov	w4, #0x24               // =36
  9e0c4c: b90033e8     	str	w8, [sp, #0x30]
  9e0c50: a903e3f9     	stp	x25, x24, [sp, #0x38]
  9e0c54: f9000fff     	str	xzr, [sp, #0x18]
  9e0c58: 9411f733     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  9e0c5c: 528002d3     	mov	w19, #0x16              // =22
  9e0c60: 1400000c     	b	0x9e0c90 <JNI_OnLoad+0x5cc3a0>
  9e0c64: 91075268     	add	x8, x19, #0x1d4
  9e0c68: 7943ba62     	ldrh	w2, [x19, #0x1dc]
  9e0c6c: 79424660     	ldrh	w0, [x19, #0x122]
  9e0c70: f9400101     	ldr	x1, [x8]
  9e0c74: 91065263     	add	x3, x19, #0x194
  9e0c78: 940261a5     	bl	0xa7930c <JNI_OnLoad+0x664a1c>
  9e0c7c: 39452668     	ldrb	w8, [x19, #0x149]
  9e0c80: 35000068     	cbnz	w8, 0x9e0c8c <JNI_OnLoad+0x5cc39c>
  9e0c84: 52800048     	mov	w8, #0x2                // =2
  9e0c88: 39052668     	strb	w8, [x19, #0x149]
  9e0c8c: 52800033     	mov	w19, #0x1               // =1
  9e0c90: f94016e8     	ldr	x8, [x23, #0x28]
  9e0c94: f85f83a9     	ldur	x9, [x29, #-0x8]
  9e0c98: eb09011f     	cmp	x8, x9
  9e0c9c: 54000161     	b.ne	0x9e0cc8 <JNI_OnLoad+0x5cc3d8>
  9e0ca0: 2a1303e0     	mov	w0, w19
  9e0ca4: a94b4ff4     	ldp	x20, x19, [sp, #0xb0]
  9e0ca8: f94043f9     	ldr	x25, [sp, #0x80]
  9e0cac: a94a57f6     	ldp	x22, x21, [sp, #0xa0]
  9e0cb0: a9495ff8     	ldp	x24, x23, [sp, #0x90]
  9e0cb4: a9477bfd     	ldp	x29, x30, [sp, #0x70]
  9e0cb8: 910303ff     	add	sp, sp, #0xc0
  9e0cbc: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  9e0cc0: d50323bf     	autiasp
  9e0cc4: d65f03c0     	ret
  9e0cc8: 94120f5c     	bl	0xe64a38 <__stack_chk_fail@plt>
  9e0ccc: d503233f     	paciasp
  9e0cd0: f800865e     	str	x30, [x18], #0x8
  9e0cd4: d102c3ff     	sub	sp, sp, #0xb0
  9e0cd8: a9077bfd     	stp	x29, x30, [sp, #0x70]
  9e0cdc: f90043f7     	str	x23, [sp, #0x80]
  9e0ce0: a90957f6     	stp	x22, x21, [sp, #0x90]
  9e0ce4: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
  9e0ce8: 9101c3fd     	add	x29, sp, #0x70
  9e0cec: d53bd057     	mrs	x23, TPIDR_EL0
  9e0cf0: 2a0203f5     	mov	w21, w2
  9e0cf4: aa0103f6     	mov	x22, x1
  9e0cf8: f94016e8     	ldr	x8, [x23, #0x28]
  9e0cfc: 2a0003f3     	mov	w19, w0
  9e0d00: f81f83a8     	stur	x8, [x29, #-0x8]
  9e0d04: 9400158d     	bl	0x9e6338 <JNI_OnLoad+0x5d1a48>
  9e0d08: aa0003f4     	mov	x20, x0
  9e0d0c: 94011191     	bl	0xa25350 <JNI_OnLoad+0x610a60>
  9e0d10: 7902ac15     	strh	w21, [x0, #0x156]
  9e0d14: 9401118f     	bl	0xa25350 <JNI_OnLoad+0x610a60>
  9e0d18: 91053808     	add	x8, x0, #0x14e
  9e0d1c: f9000116     	str	x22, [x8]
  9e0d20: b40003d4     	cbz	x20, 0x9e0d98 <JNI_OnLoad+0x5cc4a8>
  9e0d24: 91000694     	add	x20, x20, #0x1
  9e0d28: aa1403e0     	mov	x0, x20
  9e0d2c: 9403c569     	bl	0xad22d0 <JNI_OnLoad+0x6bd9e0>
  9e0d30: 36000660     	tbz	w0, #0x0, 0x9e0dfc <JNI_OnLoad+0x5cc50c>
  9e0d34: 52807388     	mov	w8, #0x39c              // =924
  9e0d38: 90ffb569     	adrp	x9, 0x8c000
  9e0d3c: 910b7929     	add	x9, x9, #0x2de
  9e0d40: b9001be8     	str	w8, [sp, #0x18]
  9e0d44: 90ffb368     	adrp	x8, 0x4c000
  9e0d48: 913e4908     	add	x8, x8, #0xf92
  9e0d4c: a90223e9     	stp	x9, x8, [sp, #0x20]
  9e0d50: b0ffd0c8     	adrp	x8, 0x3f9000 <.text+0xb1000>
  9e0d54: 91042108     	add	x8, x8, #0x108
  9e0d58: 92403e69     	and	x9, x19, #0xffff
  9e0d5c: a90323f4     	stp	x20, x8, [sp, #0x30]
  9e0d60: 528019e8     	mov	w8, #0xcf               // =207
  9e0d64: f90023e9     	str	x9, [sp, #0x40]
  9e0d68: 52800049     	mov	w9, #0x2                // =2
  9e0d6c: 9100c3ea     	add	x10, sp, #0x30
  9e0d70: 90ffb421     	adrp	x1, 0x64000
  9e0d74: 912b2021     	add	x1, x1, #0xac8
  9e0d78: b0ffb323     	adrp	x3, 0x45000
  9e0d7c: 9112d463     	add	x3, x3, #0x4b5
