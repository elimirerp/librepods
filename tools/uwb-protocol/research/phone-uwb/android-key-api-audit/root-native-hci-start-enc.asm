
work/phone-uwb/android-key-api-audit/libbluetooth_jni.so:	file format elf64-littleaarch64

Disassembly of section .text:

00000000004148f0 <JNI_OnLoad>:
  a7930c: d503233f     	paciasp
  a79310: f800865e     	str	x30, [x18], #0x8
  a79314: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
  a79318: a90157f6     	stp	x22, x21, [sp, #0x10]
  a7931c: a9024ff4     	stp	x20, x19, [sp, #0x20]
  a79320: 910003fd     	mov	x29, sp
  a79324: 2a0003f6     	mov	w22, w0
  a79328: 52805280     	mov	w0, #0x294              // =660
  a7932c: aa0303f3     	mov	x19, x3
  a79330: 2a0203f4     	mov	w20, w2
  a79334: aa0103f5     	mov	x21, x1
  a79338: 940ddd7d     	bl	0xdf092c <JNI_OnLoad+0x9dc03c>
  a7933c: 528003e8     	mov	w8, #0x1f               // =31
  a79340: 39002c16     	strb	w22, [x0, #0xb]
  a79344: aa0003e1     	mov	x1, x0
  a79348: b8002008     	stur	w8, [x0, #0x2]
  a7934c: 52840328     	mov	w8, #0x2019             // =8217
  a79350: 79001008     	strh	w8, [x0, #0x8]
  a79354: 52800388     	mov	w8, #0x1c               // =28
  a79358: 39002808     	strb	w8, [x0, #0xa]
  a7935c: 53087ec8     	lsr	w8, w22, #8
  a79360: f800d015     	stur	x21, [x0, #0xd]
  a79364: 39003008     	strb	w8, [x0, #0xc]
  a79368: 53087e88     	lsr	w8, w20, #8
  a7936c: 39005414     	strb	w20, [x0, #0x15]
  a79370: 39005808     	strb	w8, [x0, #0x16]
  a79374: 39400268     	ldrb	w8, [x19]
  a79378: 39005c08     	strb	w8, [x0, #0x17]
  a7937c: 39400668     	ldrb	w8, [x19, #0x1]
  a79380: 39006008     	strb	w8, [x0, #0x18]
  a79384: 39400a68     	ldrb	w8, [x19, #0x2]
  a79388: 39006408     	strb	w8, [x0, #0x19]
  a7938c: 39400e68     	ldrb	w8, [x19, #0x3]
  a79390: 39006808     	strb	w8, [x0, #0x1a]
  a79394: 39401268     	ldrb	w8, [x19, #0x4]
  a79398: 39006c08     	strb	w8, [x0, #0x1b]
  a7939c: 39401668     	ldrb	w8, [x19, #0x5]
  a793a0: 39007008     	strb	w8, [x0, #0x1c]
  a793a4: 39401a68     	ldrb	w8, [x19, #0x6]
  a793a8: 39007408     	strb	w8, [x0, #0x1d]
  a793ac: 39401e68     	ldrb	w8, [x19, #0x7]
  a793b0: 39007808     	strb	w8, [x0, #0x1e]
  a793b4: 39402268     	ldrb	w8, [x19, #0x8]
  a793b8: 39007c08     	strb	w8, [x0, #0x1f]
  a793bc: 39402668     	ldrb	w8, [x19, #0x9]
  a793c0: 39008008     	strb	w8, [x0, #0x20]
  a793c4: 39402a68     	ldrb	w8, [x19, #0xa]
  a793c8: 39008408     	strb	w8, [x0, #0x21]
  a793cc: 39402e68     	ldrb	w8, [x19, #0xb]
  a793d0: 39008808     	strb	w8, [x0, #0x22]
  a793d4: 39403268     	ldrb	w8, [x19, #0xc]
  a793d8: 39008c08     	strb	w8, [x0, #0x23]
  a793dc: 39403668     	ldrb	w8, [x19, #0xd]
  a793e0: 39009008     	strb	w8, [x0, #0x24]
  a793e4: 39403a68     	ldrb	w8, [x19, #0xe]
  a793e8: 39009408     	strb	w8, [x0, #0x25]
  a793ec: 2a1f03e0     	mov	w0, wzr
  a793f0: 39403e68     	ldrb	w8, [x19, #0xf]
  a793f4: 39009828     	strb	w8, [x1, #0x26]
  a793f8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
  a793fc: a94157f6     	ldp	x22, x21, [sp, #0x10]
  a79400: a8c37bfd     	ldp	x29, x30, [sp], #0x30
  a79404: f85f8e5e     	ldr	x30, [x18, #-0x8]!
  a79408: d50323bf     	autiasp
  a7940c: 17feb9fc     	b	0xa27bfc <JNI_OnLoad+0x61330c>
  a79410: d503233f     	paciasp
  a79414: f800865e     	str	x30, [x18], #0x8
  a79418: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
  a7941c: a9014ff4     	stp	x20, x19, [sp, #0x10]
  a79420: 910003fd     	mov	x29, sp
  a79424: 2a0003f4     	mov	w20, w0
  a79428: 52805280     	mov	w0, #0x294              // =660
  a7942c: aa0103f3     	mov	x19, x1
  a79430: 940ddd3f     	bl	0xdf092c <JNI_OnLoad+0x9dc03c>
  a79434: 528002a8     	mov	w8, #0x15               // =21
  a79438: 39002c14     	strb	w20, [x0, #0xb]
  a7943c: aa0003e1     	mov	x1, x0
  a79440: b8002008     	stur	w8, [x0, #0x2]
  a79444: 52840348     	mov	w8, #0x201a             // =8218
  a79448: 79001008     	strh	w8, [x0, #0x8]
  a7944c: 52800248     	mov	w8, #0x12               // =18
  a79450: 39002808     	strb	w8, [x0, #0xa]
  a79454: 53087e88     	lsr	w8, w20, #8
  a79458: 39003008     	strb	w8, [x0, #0xc]
  a7945c: 39400268     	ldrb	w8, [x19]
  a79460: 39003408     	strb	w8, [x0, #0xd]
  a79464: 39400668     	ldrb	w8, [x19, #0x1]
  a79468: 39003808     	strb	w8, [x0, #0xe]
  a7946c: 39400a68     	ldrb	w8, [x19, #0x2]
  a79470: 39003c08     	strb	w8, [x0, #0xf]
  a79474: 39400e68     	ldrb	w8, [x19, #0x3]
  a79478: 39004008     	strb	w8, [x0, #0x10]
  a7947c: 39401268     	ldrb	w8, [x19, #0x4]
  a79480: 39004408     	strb	w8, [x0, #0x11]
  a79484: 39401668     	ldrb	w8, [x19, #0x5]
  a79488: 39004808     	strb	w8, [x0, #0x12]
  a7948c: 39401a68     	ldrb	w8, [x19, #0x6]
  a79490: 39004c08     	strb	w8, [x0, #0x13]
  a79494: 39401e68     	ldrb	w8, [x19, #0x7]
  a79498: 39005008     	strb	w8, [x0, #0x14]
  a7949c: 39402268     	ldrb	w8, [x19, #0x8]
  a794a0: 39005408     	strb	w8, [x0, #0x15]
  a794a4: 39402668     	ldrb	w8, [x19, #0x9]
  a794a8: 39005808     	strb	w8, [x0, #0x16]
  a794ac: 39402a68     	ldrb	w8, [x19, #0xa]
