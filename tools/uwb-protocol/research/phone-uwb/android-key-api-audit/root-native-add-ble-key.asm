
work/phone-uwb/android-key-api-audit/libbluetooth_jni.so:	file format elf64-littleaarch64

Disassembly of section .text:

00000000004148f0 <JNI_OnLoad>:
  9dd978: d503233f     	paciasp
  9dd97c: f800865e     	str	x30, [x18], #0x8
  9dd980: d102c3ff     	sub	sp, sp, #0xb0
  9dd984: a9077bfd     	stp	x29, x30, [sp, #0x70]
  9dd988: a9085ff8     	stp	x24, x23, [sp, #0x80]
  9dd98c: a90957f6     	stp	x22, x21, [sp, #0x90]
  9dd990: a90a4ff4     	stp	x20, x19, [sp, #0xa0]
  9dd994: 9101c3fd     	add	x29, sp, #0x70
  9dd998: d53bd057     	mrs	x23, TPIDR_EL0
  9dd99c: aa0203f5     	mov	x21, x2
  9dd9a0: 2a0103f3     	mov	w19, w1
  9dd9a4: f94016e8     	ldr	x8, [x23, #0x28]
  9dd9a8: aa0003f4     	mov	x20, x0
  9dd9ac: f81f83a8     	stur	x8, [x29, #-0x8]
  9dd9b0: 94001f1f     	bl	0x9e562c <JNI_OnLoad+0x5d0d3c>
  9dd9b4: b4000660     	cbz	x0, 0x9dda80 <JNI_OnLoad+0x5c9190>
  9dd9b8: 12001e68     	and	w8, w19, #0xff
  9dd9bc: 51000508     	sub	w8, w8, #0x1
  9dd9c0: 7100fd1f     	cmp	w8, #0x3f
  9dd9c4: 540005e8     	b.hi	0x9dda80 <JNI_OnLoad+0x5c9190>
  9dd9c8: 52800029     	mov	w9, #0x1                // =1
  9dd9cc: 9ac82128     	lsl	x8, x9, x8
  9dd9d0: b20103e9     	mov	x9, #-0x7fffffff80000000 // =-9223372034707292160
  9dd9d4: f2900169     	movk	x9, #0x800b
  9dd9d8: ea09011f     	tst	x8, x9
  9dd9dc: 54000520     	b.eq	0x9dda80 <JNI_OnLoad+0x5c9190>
  9dd9e0: 52801488     	mov	w8, #0xa4               // =164
  9dd9e4: f0ffb569     	adrp	x9, 0x8c000
  9dd9e8: 910b7929     	add	x9, x9, #0x2de
  9dd9ec: b9001be8     	str	w8, [sp, #0x18]
  9dd9f0: d0ffb628     	adrp	x8, 0xa3000
  9dd9f4: 913c0508     	add	x8, x8, #0xf01
  9dd9f8: a90223e9     	stp	x9, x8, [sp, #0x20]
  9dd9fc: 2a1303e9     	mov	w9, w19
  9dda00: 90ffd0e8     	adrp	x8, 0x3f9000 <.text+0xb1000>
  9dda04: 91042108     	add	x8, x8, #0x108
  9dda08: 92401d29     	and	x9, x9, #0xff
  9dda0c: aa0003f6     	mov	x22, x0
  9dda10: a90323f4     	stp	x20, x8, [sp, #0x30]
  9dda14: 528019e8     	mov	w8, #0xcf               // =207
  9dda18: 9100c3ea     	add	x10, sp, #0x30
  9dda1c: f90023e9     	str	x9, [sp, #0x40]
  9dda20: 52800049     	mov	w9, #0x2                // =2
  9dda24: f0ffb421     	adrp	x1, 0x64000
  9dda28: 912b2021     	add	x1, x1, #0xac8
  9dda2c: 90ffb843     	adrp	x3, 0xe5000
  9dda30: 910bc863     	add	x3, x3, #0x2f2
  9dda34: 910063e2     	add	x2, sp, #0x18
  9dda38: 910003e5     	mov	x5, sp
  9dda3c: 52800060     	mov	w0, #0x3                // =3
  9dda40: 52800484     	mov	w4, #0x24               // =36
  9dda44: a904a3ff     	stp	xzr, x8, [sp, #0x48]
  9dda48: 12001e78     	and	w24, w19, #0xff
  9dda4c: a9002be9     	stp	x9, x10, [sp]
  9dda50: f9000be8     	str	x8, [sp, #0x10]
  9dda54: 941203b4     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  9dda58: aa1403e0     	mov	x0, x20
  9dda5c: 2a1303e1     	mov	w1, w19
  9dda60: aa1503e2     	mov	x2, x21
  9dda64: 2a1f03e3     	mov	w3, wzr
  9dda68: 9400002e     	bl	0x9ddb20 <JNI_OnLoad+0x5c9230>
  9dda6c: 71000b1f     	cmp	w24, #0x2
  9dda70: 540003e1     	b.ne	0x9ddaec <JNI_OnLoad+0x5c91fc>
  9dda74: aa1603e0     	mov	x0, x22
  9dda78: 97fff64c     	bl	0x9db3a8 <JNI_OnLoad+0x5c6ab8>
  9dda7c: 1400001c     	b	0x9ddaec <JNI_OnLoad+0x5c91fc>
  9dda80: 52801408     	mov	w8, #0xa0               // =160
  9dda84: f0ffb569     	adrp	x9, 0x8c000
  9dda88: 910b7929     	add	x9, x9, #0x2de
  9dda8c: b9001be8     	str	w8, [sp, #0x18]
  9dda90: d0ffb628     	adrp	x8, 0xa3000
  9dda94: 913c0508     	add	x8, x8, #0xf01
  9dda98: a90223e9     	stp	x9, x8, [sp, #0x20]
  9dda9c: 90ffd0e8     	adrp	x8, 0x3f9000 <.text+0xb1000>
  9ddaa0: 91042108     	add	x8, x8, #0x108
  9ddaa4: 92401e69     	and	x9, x19, #0xff
  9ddaa8: a90323f4     	stp	x20, x8, [sp, #0x30]
  9ddaac: 528019e8     	mov	w8, #0xcf               // =207
  9ddab0: f90023e9     	str	x9, [sp, #0x40]
  9ddab4: 52800049     	mov	w9, #0x2                // =2
  9ddab8: 9100c3ea     	add	x10, sp, #0x30
  9ddabc: f0ffb421     	adrp	x1, 0x64000
  9ddac0: 912b2021     	add	x1, x1, #0xac8
  9ddac4: f0ffb763     	adrp	x3, 0xcc000
  9ddac8: 9123ac63     	add	x3, x3, #0x8eb
  9ddacc: 910063e2     	add	x2, sp, #0x18
  9ddad0: 910003e5     	mov	x5, sp
  9ddad4: 528000a0     	mov	w0, #0x5                // =5
  9ddad8: 528006e4     	mov	w4, #0x37               // =55
  9ddadc: a904a3ff     	stp	xzr, x8, [sp, #0x48]
  9ddae0: a9002be9     	stp	x9, x10, [sp]
  9ddae4: f9000be8     	str	x8, [sp, #0x10]
  9ddae8: 9412038f     	bl	0xe5e924 <JNI_OnLoad+0xa4a034>
  9ddaec: f94016e8     	ldr	x8, [x23, #0x28]
  9ddaf0: f85f83a9     	ldur	x9, [x29, #-0x8]
  9ddaf4: eb09011f     	cmp	x8, x9
  9ddaf8: 54000121     	b.ne	0x9ddb1c <JNI_OnLoad+0x5c922c>
  9ddafc: a94a4ff4     	ldp	x20, x19, [sp, #0xa0]
  9ddb00: a94957f6     	ldp	x22, x21, [sp, #0x90]
  9ddb04: a9485ff8     	ldp	x24, x23, [sp, #0x80]
  9ddb08: a9477bfd     	ldp	x29, x30, [sp, #0x70]
  9ddb0c: 9102c3ff     	add	sp, sp, #0xb0
  9ddb10: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  9ddb14: d50323bf     	autiasp
  9ddb18: d65f03c0     	ret
  9ddb1c: 94121bc7     	bl	0xe64a38 <__stack_chk_fail@plt>
  9ddb20: d503233f     	paciasp
  9ddb24: f800865e     	str	x30, [x18], #0x8
