
work/uwb-session-agent/nearbyd-x86_64:	file format mach-o 64-bit x86-64

Disassembly of section __TEXT,__text:

0000000100001ea0 <__text>:
10016b454: 8b 4e 3c                    	movl	0x3c(%rsi), %ecx
10016b457: b0 01                       	movb	$0x1, %al
10016b459: 48 83 f9 03                 	cmpq	$0x3, %rcx
10016b45d: 77 39                       	ja	0x10016b498 <__text+0x1695f8>
10016b45f: 48 8d 15 4a 00 00 00        	leaq	0x4a(%rip), %rdx        ## 0x10016b4b0 <__text+0x169610>
10016b466: 48 63 0c 8a                 	movslq	(%rdx,%rcx,4), %rcx
10016b46a: 48 01 d1                    	addq	%rdx, %rcx
10016b46d: ff e1                       	jmpq	*%rcx
10016b46f: 55                          	pushq	%rbp
10016b470: 48 89 e5                    	movq	%rsp, %rbp
10016b473: 53                          	pushq	%rbx
10016b474: 50                          	pushq	%rax
10016b475: 48 8d 05 44 28 85 00        	leaq	0x852844(%rip), %rax    ## 0x1009bdcc0 <_xpc_uint64_get_value+0x1009bdcc0>
10016b47c: 48 8b 18                    	movq	(%rax), %rbx
10016b47f: 48 89 df                    	movq	%rbx, %rdi
10016b482: be 10 00 00 00              	movl	$0x10, %esi
10016b487: e8 68 d9 33 00              	callq	0x1004a8df4 <_xpc_uint64_get_value+0x1004a8df4>
10016b48c: 84 c0                       	testb	%al, %al
10016b48e: 75 15                       	jne	0x10016b4a5 <__text+0x169605>
10016b490: 31 c0                       	xorl	%eax, %eax
10016b492: 48 83 c4 08                 	addq	$0x8, %rsp
10016b496: 5b                          	popq	%rbx
10016b497: 5d                          	popq	%rbp
10016b498: c3                          	retq
10016b499: c6 07 01                    	movb	$0x1, (%rdi)
10016b49c: c3                          	retq
10016b49d: c6 07 02                    	movb	$0x2, (%rdi)
10016b4a0: c3                          	retq
10016b4a1: c6 07 00                    	movb	$0x0, (%rdi)
10016b4a4: c3                          	retq
10016b4a5: 48 89 df                    	movq	%rbx, %rdi
10016b4a8: e8 2e ff 30 00              	callq	0x10047b3db <__text+0x47953b>
10016b4ad: eb e1                       	jmp	0x10016b490 <__text+0x1695f0>
