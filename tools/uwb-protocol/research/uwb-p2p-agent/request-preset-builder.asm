0x10015205B   pushq    %rbp                 
0x10015205C   movq     %rsp, %rbp           
0x10015205F   pushq    %r14                 
0x100152061   pushq    %rbx                 
0x100152062   subq     $0x280, %rsp         
0x100152069   movq     %rsi, %r14           
0x10015206C   movq     %rdi, %rbx           
0x10015206F   movq     0x7ec97a(%rip), %rax  ; ___stack_chk_guard
0x100152076   movq     (%rax), %rax         
0x100152079   movq     %rax, -0x18(%rbp)    
0x10015207D   xorl     %eax, %eax           
0x10015207F   movq     %rax, -0x278(%rbp)   
0x100152086   movl     $0xd, %ecx           
0x10015208B   movq     %rcx, -0x270(%rbp)   
0x100152092   movq     %rax, -0x268(%rbp)   
0x100152099   movq     %rcx, -0x260(%rbp)   
0x1001520A0   movq     %rax, -0x258(%rbp)   
0x1001520A7   movq     $0x2, -0x250(%rbp)   
0x1001520B2   movb     0x862d48(%rip), %al  ; 
0x1001520B8   testb    %al, %al             
0x1001520BA   je       0x10015254a          
0x1001520C0   movb     0x862d42(%rip), %al  ; 
0x1001520C6   testb    %al, %al             
0x1001520C8   je       0x1001525ce          
0x1001520CE   leaq     0x85d77b(%rip), %rdi  ; 
0x1001520D5   callq    __ZNSt3__15mutex4lockEv 
0x1001520DA   callq    0x1001a9d70          
0x1001520DF   movl     0x240(%rax), %esi    
0x1001520E5   xorl     %edx, %edx           
0x1001520E7   cmpb     $0x5, (%r14)         
0x1001520EB   setne    %dl                  
0x1001520EE   incl     %edx                 
0x1001520F0   leaq     -0x244(%rbp), %rdi   
0x1001520F7   xorl     %ecx, %ecx           
0x1001520F9   movl     $0x1, %r8d           
0x1001520FF   callq    0x10015d5b0          
0x100152104   leaq     -0x244(%rbp), %rdi   
0x10015210B   movl     $0x1, %esi           
0x100152110   callq    0x10015dac4          
0x100152115   movb     0x862cfd(%rip), %al  ; 
0x10015211B   testb    %al, %al             
0x10015211D   je       0x1001525d8          
0x100152123   movw     $0x101, -0x1f8(%rbp) 
0x10015212C   leaq     -0x244(%rbp), %rdi   
0x100152133   callq    0x10015df82          
0x100152138   movb     %al, -0x1f6(%rbp)    
0x10015213E   movb     $0x1, -0x1f5(%rbp)   
0x100152145   leaq     -0x244(%rbp), %rdi   
0x10015214C   callq    0x10015df8c          
0x100152151   movb     %al, -0x1f4(%rbp)    
0x100152157   movb     $0x1, -0x1f3(%rbp)   
0x10015215E   leaq     -0x244(%rbp), %rdi   
0x100152165   callq    0x10015df96          
0x10015216A   movb     %al, -0x1f2(%rbp)    
0x100152170   movw     $0xa01, -0x1f1(%rbp) 
0x100152179   movb     $0x1, -0x1ef(%rbp)   
0x100152180   leaq     0x8622b1(%rip), %rsi  ; 
0x100152187   leaq     -0x258(%rbp), %rdi   
0x10015218E   movq     %rdi, %rdx           
0x100152191   callq    0x10013a84e          
0x100152196   leaq     0x48f8e1(%rip), %rcx  ; 
0x10015219D   movb     (%rax,%rcx), %al     
0x1001521A0   movb     %al, -0x1ee(%rbp)    
0x1001521A6   movb     $0x1, %al            
0x1001521A8   movb     %al, -0x1ed(%rbp)    
0x1001521AE   movw     $0x400, %cx          
0x1001521B2   movw     %cx, -0x1ec(%rbp)    
0x1001521B9   movb     %al, -0x1ea(%rbp)    
0x1001521BF   movw     %cx, -0x1e9(%rbp)    
0x1001521C6   movl     $0x10001, -0x1e7(%rbp) 
0x1001521D0   movb     %al, -0x1e3(%rbp)    
0x1001521D6   movw     $0x3, -0x1e2(%rbp)   
0x1001521DF   movb     %al, -0x1e0(%rbp)    
0x1001521E5   xorl     %ecx, %ecx           
0x1001521E7   movb     %cl, -0x1d8(%rbp)    
0x1001521ED   movb     %cl, -0x1d0(%rbp)    
0x1001521F3   movb     %cl, -0x1c8(%rbp)    
0x1001521F9   movb     %cl, -0x1c4(%rbp)    
0x1001521FF   movb     (%r14), %cl          
0x100152202   movb     %cl, -0x1c0(%rbp)    
0x100152208   movb     %al, -0x1bf(%rbp)    
0x10015220E   movl     $0x4, -0x1bc(%rbp)   
0x100152218   movw     $0x100, -0x1b8(%rbp) 
0x100152221   leaq     -0x244(%rbp), %rdi   
0x100152228   callq    0x10015dfa0          
0x10015222D   movb     %al, -0x1b6(%rbp)    
0x100152233   movb     $0x1, -0x1b5(%rbp)   
0x10015223A   leaq     -0x244(%rbp), %rdi   
0x100152241   callq    0x10015dfaa          
0x100152246   movb     %al, -0x1b4(%rbp)    
0x10015224C   movb     $0x1, -0x1b3(%rbp)   
0x100152253   leaq     -0x244(%rbp), %rdi   
0x10015225A   callq    0x10015dfb4          
0x10015225F   movb     %al, -0x1b2(%rbp)    
0x100152265   movb     $0x1, %al            
0x100152267   movb     %al, -0x1b1(%rbp)    
0x10015226D   movzwl   0x862b9c(%rip), %ecx  ; 
0x100152274   movw     %cx, -0x1b0(%rbp)    
0x10015227B   movb     %al, -0x1ae(%rbp)    
0x100152281   cmpb     %al, 0x11(%r14)      
0x100152285   jne      0x1001522a6          
0x100152287   leaq     0x8621aa(%rip), %rsi  ; 
0x10015228E   leaq     -0x268(%rbp), %rdi   
0x100152295   movq     %rdi, %rdx           
0x100152298   callq    0x10013a84e          
0x10015229D   leaq     0x48f7be(%rip), %rcx  ; 
0x1001522A4   jmp      0x1001522c3          
0x1001522A6   leaq     0x86218b(%rip), %rsi  ; 
0x1001522AD   leaq     -0x278(%rbp), %rdi   
0x1001522B4   movq     %rdi, %rdx           
0x1001522B7   callq    0x10013a84e          
0x1001522BC   leaq     0x48f783(%rip), %rcx  ; 
0x1001522C3   leaq     (%rcx,%rax,2), %rax  
0x1001522C7   movzwl   (%rax), %ecx         
0x1001522CA   leaq     -0x1f8(%rbp), %rax   
0x1001522D1   movw     %cx, 0x4c(%rax)      
0x1001522D5   movb     $0x1, %sil           
0x1001522D8   movb     %sil, 0x4e(%rax)     
0x1001522DC   xorl     %edx, %edx           
0x1001522DE   movb     %dl, 0x50(%rax)      
0x1001522E1   movb     %dl, 0x58(%rax)      
0x1001522E4   movb     %dl, 0x60(%rax)      
0x1001522E7   movb     %dl, 0x62(%rax)      
0x1001522EA   movb     %dl, 0x64(%rax)      
0x1001522ED   movb     %dl, 0x66(%rax)      
0x1001522F0   movb     %dl, 0x76(%rax)      
0x1001522F3   movw     %dx, 0x78(%rax)      
0x1001522F7   movb     %dl, 0x7a(%rax)      
0x1001522FA   movw     %dx, 0x8a(%rax)      
0x100152301   movb     %dl, 0x8d(%rax)      
0x100152307   movb     %dl, 0x90(%rax)      
0x10015230D   movb     %dl, 0xb8(%rax)      
0x100152313   movb     %dl, 0xc0(%rax)      
0x100152319   movb     %dl, 0xc2(%rax)      
0x10015231F   movb     %dl, 0xcc(%rax)      
0x100152325   movb     %dl, 0xd6(%rax)      
0x10015232B   movb     %dl, 0xd8(%rax)      
0x100152331   movb     %dl, 0xda(%rax)      
0x100152337   movb     %dl, 0xe8(%rax)      
0x10015233D   movb     %dl, 0xec(%rax)      
0x100152343   movb     %dl, 0xf0(%rax)      
0x100152349   movb     %dl, 0x108(%rax)     
0x10015234F   movb     %dl, 0x114(%rax)     
0x100152355   movb     %dl, 0x116(%rax)     
0x10015235B   movb     %dl, 0x118(%rax)     
0x100152361   movb     %dl, 0x11a(%rax)     
0x100152367   movb     %dl, 0x11c(%rax)     
0x10015236D   movb     %dl, 0x11e(%rax)     
0x100152373   movb     %dl, 0x124(%rax)     
0x100152379   movb     %dl, 0x126(%rax)     
0x10015237F   movb     %dl, 0x128(%rax)     
0x100152385   movb     %dl, 0x130(%rax)     
0x10015238B   movb     %dl, 0x138(%rax)     
0x100152391   movb     %dl, 0x140(%rax)     
0x100152397   movb     %dl, 0x148(%rax)     
0x10015239D   movb     %dl, 0x150(%rax)     
0x1001523A3   movb     %dl, 0x152(%rax)     
0x1001523A9   movb     %dl, 0x168(%rax)     
0x1001523AF   movb     %dl, 0x174(%rax)     
0x1001523B5   movb     %dl, 0x176(%rax)     
0x1001523BB   movb     %dl, 0x178(%rax)     
0x1001523C1   movb     %dl, 0x17a(%rax)     
0x1001523C7   movb     %dl, 0x17c(%rax)     
0x1001523CD   movb     %dl, 0x17e(%rax)     
0x1001523D3   movb     %dl, 0x180(%rax)     
0x1001523D9   movb     %dl, 0x18a(%rax)     
0x1001523DF   movb     %dl, 0x1a6(%rax)     
0x1001523E5   movb     %dl, 0x1a8(%rax)     
0x1001523EB   movb     %dl, 0x1aa(%rax)     
0x1001523F1   movw     %dx, 0x1ac(%rax)     
0x1001523F8   movb     %dl, 0x1ae(%rax)     
0x1001523FE   movb     %dl, 0x1b0(%rax)     
0x100152404   movb     %dl, 0x1ba(%rax)     
0x10015240A   movb     %dl, 0x1c2(%rax)     
0x100152410   movq     %rdx, 0x6d(%rax)     
0x100152414   movq     %rdx, 0x68(%rax)     
0x100152418   movb     %dl, 0xc8(%rax)      
0x10015241E   movl     %edx, 0xc4(%rax)     
0x100152424   movb     %dl, 0xd4(%rax)      
0x10015242A   movl     %edx, 0xd0(%rax)     
0x100152430   movb     %dl, 0xe4(%rax)      
0x100152436   movq     %rdx, 0xdc(%rax)     
0x10015243D   movq     %rdx, 0xf4(%rax)     
0x100152444   movb     %dl, 0x104(%rax)     
0x10015244A   movl     %edx, 0x100(%rax)    
0x100152450   movl     %edx, 0x10f(%rax)    
0x100152456   movl     %edx, 0x10c(%rax)    
0x10015245C   movw     %dx, 0x158(%rax)     
0x100152463   movl     %edx, 0x154(%rax)    
0x100152469   movb     %dl, 0x164(%rax)     
0x10015246F   movl     %edx, 0x160(%rax)    
0x100152475   movl     %edx, 0x16f(%rax)    
0x10015247B   movl     %edx, 0x16c(%rax)    
0x100152481   movl     %edx, 0x185(%rax)    
0x100152487   movl     %edx, 0x182(%rax)    
0x10015248D   xorps    %xmm0, %xmm0         
0x100152490   movups   %xmm0, 0x195(%rax)   
0x100152497   movups   %xmm0, 0x18c(%rax)   
0x10015249E   movl     %edx, 0x1b5(%rax)    
0x1001524A4   movl     %edx, 0x1b2(%rax)    
0x1001524AA   movb     %dl, 0x1c0(%rax)     
0x1001524B0   movl     %edx, 0x1bc(%rax)    
0x1001524B6   movq     %rdx, 0x1d4(%rax)    
0x1001524BD   movups   %xmm0, 0x1c4(%rax)   
0x1001524C4   movq     0x8(%r14), %rdi      
0x1001524C8   movq     0x20(%rdi), %r8      
0x1001524CC   leaq     -0x230(%rbp), %rcx   
0x1001524D3   movq     %r8, 0x20(%rcx)      
0x1001524D7   movups   (%rdi), %xmm0        
0x1001524DA   movups   0x10(%rdi), %xmm1    
0x1001524DE   movaps   %xmm1, 0x10(%rcx)    
0x1001524E2   movaps   %xmm0, (%rcx)        
0x1001524E5   movzbl   0x10(%r14), %edi     
0x1001524EA   movb     %sil, 0x28(%rcx)     
0x1001524EE   leal     0x1(,%rdi,4), %r8d   
0x1001524F6   movq     %rax, 0x10(%rsp)     
0x1001524FB   movl     %edx, 0x8(%rsp)      
0x1001524FF   movl     $0x3, (%rsp)         
0x100152506   movq     %rbx, %rdi           
0x100152509   movl     $0x1, %esi           
0x10015250E   movl     $0x2, %edx           
0x100152513   xorl     %r9d, %r9d           
0x100152516   callq    0x10015104c          
0x10015251B   leaq     0x85d32e(%rip), %rdi  ; 
0x100152522   callq    __ZNSt3__15mutex6unlockEv 
0x100152527   movq     0x7ec4c2(%rip), %rax  ; ___stack_chk_guard
0x10015252E   movq     (%rax), %rax         
0x100152531   cmpq     -0x18(%rbp), %rax    
0x100152535   jne      0x100152610          
0x10015253B   movq     %rbx, %rax           
0x10015253E   addq     $0x280, %rsp         
0x100152545   popq     %rbx                 
0x100152546   popq     %r14                 
0x100152548   popq     %rbp                 
0x100152549   retq                          
0x10015254A   leaq     0x8628af(%rip), %rdi  ; 
0x100152551   callq    ___cxa_guard_acquire 
0x100152556   testl    %eax, %eax           
0x100152558   je       0x1001520c0          
0x10015255E   leaq     -0x1f8(%rbp), %rdi   
0x100152565   callq    0x10013a7f0          
0x10015256A   leaq     -0x1f8(%rbp), %rdi   
0x100152571   callq    __ZNSt3__113random_deviceclEv 
0x100152576   movl     %eax, 0x861ebc(%rip)  ; 
0x10015257C   movl     $0x1, %ecx           
0x100152581   leaq     0x861eb0(%rip), %rdx  ; 
0x100152588   movl     %eax, %esi           
0x10015258A   shrl     $0x1e, %esi          
0x10015258D   xorl     %eax, %esi           
0x10015258F   imull    $0x6c078965, %esi, %eax 
0x100152595   addl     %ecx, %eax           
0x100152597   movl     %eax, (%rdx,%rcx,4)  
0x10015259A   incq     %rcx                 
0x10015259D   cmpq     $0x270, %rcx         
0x1001525A4   jne      0x100152588          
0x1001525A6   movq     $0x0, 0x862847(%rip)  ; 
0x1001525B1   leaq     -0x1f8(%rbp), %rdi   
0x1001525B8   callq    __ZNSt3__113random_deviceD1Ev 
0x1001525BD   leaq     0x86283c(%rip), %rdi  ; 
0x1001525C4   callq    ___cxa_guard_release 
0x1001525C9   jmp      0x1001520c0          
0x1001525CE   callq    0x1004789fc          
0x1001525D3   jmp      0x1001520ce          
0x1001525D8   leaq     0x862839(%rip), %rdi  ; 
0x1001525DF   callq    ___cxa_guard_acquire 
0x1001525E4   testl    %eax, %eax           
0x1001525E6   je       0x100152123          
0x1001525EC   leaq     -0x244(%rbp), %rdi   
0x1001525F3   callq    0x10015df3c          
0x1001525F8   movw     %ax, 0x862811(%rip)  ; 
0x1001525FF   leaq     0x862812(%rip), %rdi  ; 
0x100152606   callq    ___cxa_guard_release 
0x10015260B   jmp      0x100152123          
0x100152610   callq    ___stack_chk_fail    
0x100152615   movq     %rax, %rbx           
0x100152618   leaq     0x8627f9(%rip), %rdi  ; 
0x10015261F   callq    ___cxa_guard_abort   
0x100152624   jmp      0x100152660          
0x100152626   movq     %rax, %rbx           
0x100152629   leaq     -0x1f8(%rbp), %rdi   
0x100152630   callq    __ZNSt3__113random_deviceD1Ev 
0x100152635   jmp      0x10015263a          
0x100152637   movq     %rax, %rbx           
0x10015263A   leaq     0x8627bf(%rip), %rdi  ; 
0x100152641   callq    ___cxa_guard_abort   
0x100152646   jmp      0x10015266c          
0x100152648   jmp      0x10015265d          
0x10015264A   jmp      0x10015265d          
0x10015264C   jmp      0x10015265d          
0x10015264E   jmp      0x10015265d          
0x100152650   jmp      0x10015265d          
0x100152652   jmp      0x10015265d          
0x100152654   movq     %rax, %rbx           
0x100152657   jmp      0x10015266c          
0x100152659   jmp      0x10015265d          
0x10015265B   jmp      0x10015265d          
0x10015265D   movq     %rax, %rbx           
0x100152660   leaq     0x85d1e9(%rip), %rdi  ; 
0x100152667   callq    __ZNSt3__15mutex6unlockEv 
0x10015266C   movq     %rbx, %rdi           
0x10015266F   callq    __Unwind_Resume      
