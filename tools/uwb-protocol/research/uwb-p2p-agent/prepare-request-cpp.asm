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
0x100152674   pushq    %rbp                 
0x100152675   movq     %rsp, %rbp           
0x100152678   pushq    %r15                 
0x10015267A   pushq    %r14                 
0x10015267C   pushq    %r13                 
0x10015267E   pushq    %r12                 
0x100152680   pushq    %rbx                 
0x100152681   subq     $0x238, %rsp         
0x100152688   movq     %rsi, %r14           
0x10015268B   movq     %rdi, -0x248(%rbp)   
0x100152692   movq     0x7ec357(%rip), %rax  ; ___stack_chk_guard
0x100152699   movq     (%rax), %rax         
0x10015269C   movq     %rax, -0x30(%rbp)    
0x1001526A0   callq    0x1001a9d70          
0x1001526A5   movl     0x240(%rax), %esi    
0x1001526AB   xorl     %edx, %edx           
0x1001526AD   cmpb     $0x5, (%r14)         
0x1001526B1   setne    %dl                  
0x1001526B4   incl     %edx                 
0x1001526B6   leaq     -0x25c(%rbp), %r15   
0x1001526BD   xorl     %r12d, %r12d         
0x1001526C0   movq     %r15, %rdi           
0x1001526C3   xorl     %ecx, %ecx           
0x1001526C5   movl     $0x1, %r8d           
0x1001526CB   callq    0x10015d5b0          
0x1001526D0   movq     %r15, %rdi           
0x1001526D3   xorl     %esi, %esi           
0x1001526D5   movl     $0x1, %edx           
0x1001526DA   callq    0x10015d958          
0x1001526DF   leaq     -0x210(%rbp), %r13   
0x1001526E6   movw     $0x100, (%r13)       
0x1001526ED   movq     %r15, %rdi           
0x1001526F0   callq    0x10015df82          
0x1001526F5   movb     %al, 0x2(%r13)       
0x1001526F9   movb     $0x1, %bl            
0x1001526FB   movb     %bl, 0x3(%r13)       
0x1001526FF   movq     %r15, %rdi           
0x100152702   callq    0x10015df8c          
0x100152707   movb     %al, 0x4(%r13)       
0x10015270B   movb     %bl, 0x5(%r13)       
0x10015270F   movq     %r15, %rdi           
0x100152712   callq    0x10015df96          
0x100152717   movb     %al, 0x6(%r13)       
0x10015271B   movl     $0xb010b01, 0x7(%r13) 
0x100152723   movb     %bl, 0xb(%r13)       
0x100152727   movw     %r12w, 0xc(%r13)     
0x10015272C   movb     %bl, 0xe(%r13)       
0x100152730   movw     %r12w, 0xf(%r13)     
0x100152735   movl     $0x10001, 0x11(%r13) 
0x10015273D   movb     %bl, 0x15(%r13)      
0x100152741   movw     $0x2, 0x16(%r13)     
0x100152748   movb     %bl, 0x18(%r13)      
0x10015274C   movb     %r12b, 0x20(%r13)    
0x100152750   movb     %r12b, 0x28(%r13)    
0x100152754   movb     %r12b, 0x30(%r13)    
0x100152758   movb     %r12b, 0x34(%r13)    
0x10015275C   movb     (%r14), %al          
0x10015275F   movb     %al, 0x38(%r13)      
0x100152763   movb     %bl, 0x39(%r13)      
0x100152767   movl     %r12d, 0x3c(%r13)    
0x10015276B   movw     $0x101, 0x40(%r13)   
0x100152772   movq     %r15, %rdi           
0x100152775   callq    0x10015dfa0          
0x10015277A   movb     %al, 0x42(%r13)      
0x10015277E   movb     %bl, 0x43(%r13)      
0x100152782   movq     %r15, %rdi           
0x100152785   callq    0x10015dfaa          
0x10015278A   movb     %al, 0x44(%r13)      
0x10015278E   movb     %bl, 0x45(%r13)      
0x100152792   movq     %r15, %rdi           
0x100152795   callq    0x10015dfb4          
0x10015279A   movb     %al, 0x46(%r13)      
0x10015279E   movb     %bl, 0x47(%r13)      
0x1001527A2   movw     %r12w, 0x48(%r13)    
0x1001527A7   movb     %bl, 0x4a(%r13)      
0x1001527AB   movw     $0x32, 0x4c(%r13)    
0x1001527B2   movb     %bl, 0x4e(%r13)      
0x1001527B6   movb     %r12b, 0x50(%r13)    
0x1001527BA   movb     %r12b, 0x58(%r13)    
0x1001527BE   movb     %r12b, 0x60(%r13)    
0x1001527C2   movb     %r12b, 0x62(%r13)    
0x1001527C6   movb     %r12b, 0x64(%r13)    
0x1001527CA   movb     %r12b, 0x66(%r13)    
0x1001527CE   movb     %r12b, 0x76(%r13)    
0x1001527D2   movw     %r12w, 0x78(%r13)    
0x1001527D7   movb     %r12b, 0x7a(%r13)    
0x1001527DB   movw     %r12w, 0x8a(%r13)    
0x1001527E3   movb     %r12b, 0x8d(%r13)    
0x1001527EA   movb     %r12b, 0x90(%r13)    
0x1001527F1   movb     %r12b, 0xb8(%r13)    
0x1001527F8   movb     %r12b, 0xc0(%r13)    
0x1001527FF   movb     %r12b, 0xc2(%r13)    
0x100152806   movb     %r12b, 0xcc(%r13)    
0x10015280D   movb     %r12b, 0xd6(%r13)    
0x100152814   movb     %r12b, 0xd8(%r13)    
0x10015281B   movb     %r12b, 0xda(%r13)    
0x100152822   movb     %r12b, 0xe8(%r13)    
0x100152829   movb     %r12b, 0xec(%r13)    
0x100152830   movb     %r12b, 0xf0(%r13)    
0x100152837   movb     %r12b, 0x108(%r13)   
0x10015283E   movb     %r12b, 0x114(%r13)   
0x100152845   movb     %r12b, 0x116(%r13)   
0x10015284C   movb     %r12b, 0x118(%r13)   
0x100152853   movb     %r12b, 0x11a(%r13)   
0x10015285A   movb     %r12b, 0x11c(%r13)   
0x100152861   movb     %r12b, 0x11e(%r13)   
0x100152868   movb     %r12b, 0x124(%r13)   
0x10015286F   movb     %r12b, 0x126(%r13)   
0x100152876   movb     %r12b, 0x128(%r13)   
0x10015287D   movb     %r12b, 0x130(%r13)   
0x100152884   movb     %r12b, 0x138(%r13)   
0x10015288B   movb     %r12b, 0x140(%r13)   
0x100152892   movb     %r12b, 0x148(%r13)   
0x100152899   movb     %r12b, 0x150(%r13)   
0x1001528A0   movb     %r12b, 0x152(%r13)   
0x1001528A7   movb     %r12b, 0x168(%r13)   
0x1001528AE   movb     %r12b, 0x174(%r13)   
0x1001528B5   movb     %r12b, 0x176(%r13)   
0x1001528BC   movb     %r12b, 0x178(%r13)   
0x1001528C3   movb     %r12b, 0x17a(%r13)   
0x1001528CA   movb     %r12b, 0x17c(%r13)   
0x1001528D1   movb     %r12b, 0x17e(%r13)   
0x1001528D8   movb     %r12b, 0x180(%r13)   
0x1001528DF   movb     %r12b, 0x18a(%r13)   
0x1001528E6   movb     %r12b, 0x1a6(%r13)   
0x1001528ED   movb     %r12b, 0x1a8(%r13)   
0x1001528F4   movb     %r12b, 0x1aa(%r13)   
0x1001528FB   movw     %r12w, 0x1ac(%r13)   
0x100152903   movb     %r12b, 0x1ae(%r13)   
0x10015290A   movb     %r12b, 0x1b0(%r13)   
0x100152911   movb     %r12b, 0x1ba(%r13)   
0x100152918   movb     %r12b, 0x1c2(%r13)   
0x10015291F   movq     %r12, 0x6d(%r13)     
0x100152923   movq     %r12, 0x68(%r13)     
0x100152927   movl     %r12d, 0xc4(%r13)    
0x10015292E   movb     %r12b, 0xc8(%r13)    
0x100152935   movl     %r12d, 0xd0(%r13)    
0x10015293C   movb     %r12b, 0xd4(%r13)    
0x100152943   movq     %r12, 0xdc(%r13)     
0x10015294A   movb     %r12b, 0xe4(%r13)    
0x100152951   movq     %r12, 0xf4(%r13)     
0x100152958   movl     %r12d, 0x100(%r13)   
0x10015295F   movb     %r12b, 0x104(%r13)   
0x100152966   movl     %r12d, 0x10c(%r13)   
0x10015296D   movl     %r12d, 0x10f(%r13)   
0x100152974   movl     %r12d, 0x154(%r13)   
0x10015297B   movw     %r12w, 0x158(%r13)   
0x100152983   movb     %r12b, 0x164(%r13)   
0x10015298A   movl     %r12d, 0x160(%r13)   
0x100152991   movl     %r12d, 0x16f(%r13)   
0x100152998   movl     %r12d, 0x16c(%r13)   
0x10015299F   movl     %r12d, 0x185(%r13)   
0x1001529A6   movl     %r12d, 0x182(%r13)   
0x1001529AD   xorps    %xmm0, %xmm0         
0x1001529B0   movups   %xmm0, 0x195(%r13)   
0x1001529B8   movups   %xmm0, 0x18c(%r13)   
0x1001529C0   movl     %r12d, 0x1b5(%r13)   
0x1001529C7   movl     %r12d, 0x1b2(%r13)   
0x1001529CE   movb     %r12b, 0x1c0(%r13)   
0x1001529D5   movl     %r12d, 0x1bc(%r13)   
0x1001529DC   movq     %r12, 0x1d4(%r13)    
0x1001529E3   movups   %xmm0, 0x1c4(%r13)   
0x1001529EB   movq     0x8(%r14), %rax      
0x1001529EF   movq     0x20(%rax), %rdx     
0x1001529F3   leaq     -0x240(%rbp), %rcx   
0x1001529FA   movq     %rdx, 0x20(%rcx)     
0x1001529FE   movups   (%rax), %xmm0        
0x100152A01   movups   0x10(%rax), %xmm1    
0x100152A05   movaps   %xmm1, 0x10(%rcx)    
0x100152A09   movaps   %xmm0, (%rcx)        
0x100152A0C   movb     %bl, 0x28(%rcx)      
0x100152A0F   movq     -0x248(%rbp), %rbx   
0x100152A16   subq     $0x8, %rsp           
0x100152A1A   movq     %rbx, %rdi           
0x100152A1D   xorl     %esi, %esi           
0x100152A1F   movl     $0x2, %edx           
0x100152A24   movl     $0x1, %r8d           
0x100152A2A   xorl     %r9d, %r9d           
0x100152A2D   pushq    %r13                 
0x100152A2F   pushq    %r12                 
0x100152A31   pushq    $0x3                 
0x100152A33   callq    0x10015104c          
0x100152A38   addq     $0x20, %rsp          
0x100152A3C   movq     0x7ebfad(%rip), %rax  ; ___stack_chk_guard
0x100152A43   movq     (%rax), %rax         
0x100152A46   cmpq     -0x30(%rbp), %rax    
0x100152A4A   jne      0x100152a61          
0x100152A4C   movq     %rbx, %rax           
0x100152A4F   addq     $0x238, %rsp         
0x100152A56   popq     %rbx                 
0x100152A57   popq     %r12                 
0x100152A59   popq     %r13                 
0x100152A5B   popq     %r14                 
0x100152A5D   popq     %r15                 
0x100152A5F   popq     %rbp                 
0x100152A60   retq                          
0x100152A61   callq    ___stack_chk_fail    
0x100152A66   pushq    %rbp                 
0x100152A67   movq     %rsp, %rbp           
0x100152A6A   pushq    %r15                 
0x100152A6C   pushq    %r14                 
0x100152A6E   pushq    %r13                 
0x100152A70   pushq    %r12                 
0x100152A72   pushq    %rbx                 
0x100152A73   subq     $0x238, %rsp         
0x100152A7A   movq     %rsi, %r14           
0x100152A7D   movq     %rdi, -0x248(%rbp)   
0x100152A84   movq     0x7ebf65(%rip), %rax  ; ___stack_chk_guard
0x100152A8B   movq     (%rax), %rax         
0x100152A8E   movq     %rax, -0x30(%rbp)    
0x100152A92   callq    0x1001a9d70          
0x100152A97   movl     0x240(%rax), %esi    
0x100152A9D   xorl     %edx, %edx           
0x100152A9F   cmpb     $0x5, (%r14)         
0x100152AA3   setne    %dl                  
0x100152AA6   incl     %edx                 
0x100152AA8   leaq     -0x25c(%rbp), %r15   
0x100152AAF   xorl     %r12d, %r12d         
0x100152AB2   movq     %r15, %rdi           
0x100152AB5   xorl     %ecx, %ecx           
0x100152AB7   movl     $0x1, %r8d           
0x100152ABD   callq    0x10015d5b0          
0x100152AC2   movq     %r15, %rdi           
0x100152AC5   xorl     %esi, %esi           
0x100152AC7   movl     $0x1, %edx           
0x100152ACC   callq    0x10015da40          
0x100152AD1   movw     $0x101, %ax          
0x100152AD5   leaq     -0x210(%rbp), %r13   
0x100152ADC   movw     %ax, (%r13)          
0x100152AE1   movq     %r15, %rdi           
0x100152AE4   callq    0x10015df82          
0x100152AE9   movb     %al, 0x2(%r13)       
0x100152AED   movb     $0x1, %bl            
0x100152AEF   movb     %bl, 0x3(%r13)       
0x100152AF3   movq     %r15, %rdi           
0x100152AF6   callq    0x10015df8c          
0x100152AFB   movb     %al, 0x4(%r13)       
0x100152AFF   movb     %bl, 0x5(%r13)       
0x100152B03   movq     %r15, %rdi           
0x100152B06   callq    0x10015df96          
0x100152B0B   movb     %al, 0x6(%r13)       
0x100152B0F   movl     $0xb010b01, 0x7(%r13) 
0x100152B17   movb     %bl, 0xb(%r13)       
0x100152B1B   movw     %r12w, 0xc(%r13)     
0x100152B20   movb     %bl, 0xe(%r13)       
0x100152B24   movw     %r12w, 0xf(%r13)     
0x100152B29   movl     $0x10001, 0x11(%r13) 
0x100152B31   movb     %bl, 0x15(%r13)      
0x100152B35   movw     $0x2, 0x16(%r13)     
0x100152B3C   movb     %bl, 0x18(%r13)      
0x100152B40   movb     %r12b, 0x20(%r13)    
0x100152B44   movb     %r12b, 0x28(%r13)    
0x100152B48   movb     %r12b, 0x30(%r13)    
0x100152B4C   movb     %r12b, 0x34(%r13)    
0x100152B50   movb     (%r14), %al          
0x100152B53   movb     %al, 0x38(%r13)      
0x100152B57   movb     %bl, 0x39(%r13)      
0x100152B5B   movl     %r12d, 0x3c(%r13)    
0x100152B5F   movw     $0x101, %ax          
0x100152B63   movw     %ax, 0x40(%r13)      
0x100152B68   movq     %r15, %rdi           
0x100152B6B   callq    0x10015dfa0          
0x100152B70   movb     %al, 0x42(%r13)      
0x100152B74   movb     %bl, 0x43(%r13)      
0x100152B78   movq     %r15, %rdi           
0x100152B7B   callq    0x10015dfaa          
0x100152B80   movb     %al, 0x44(%r13)      
0x100152B84   movb     %bl, 0x45(%r13)      
0x100152B88   movq     %r15, %rdi           
0x100152B8B   callq    0x10015dfb4          
0x100152B90   movb     %al, 0x46(%r13)      
0x100152B94   movb     %bl, 0x47(%r13)      
0x100152B98   movw     %r12w, 0x48(%r13)    
0x100152B9D   movb     %bl, 0x4a(%r13)      
0x100152BA1   movw     $0x32, 0x4c(%r13)    
0x100152BA8   movb     %bl, 0x4e(%r13)      
0x100152BAC   movb     %r12b, 0x50(%r13)    
0x100152BB0   movb     %r12b, 0x58(%r13)    
0x100152BB4   movb     %r12b, 0x60(%r13)    
0x100152BB8   movb     %r12b, 0x62(%r13)    
0x100152BBC   movb     %r12b, 0x64(%r13)    
0x100152BC0   movb     %r12b, 0x66(%r13)    
0x100152BC4   movb     %r12b, 0x76(%r13)    
0x100152BC8   movw     %r12w, 0x78(%r13)    
0x100152BCD   movb     %r12b, 0x7a(%r13)    
0x100152BD1   movw     %r12w, 0x8a(%r13)    
0x100152BD9   movb     %r12b, 0x8d(%r13)    
0x100152BE0   movb     %r12b, 0x90(%r13)    
0x100152BE7   movb     %r12b, 0xb8(%r13)    
0x100152BEE   movb     %r12b, 0xc0(%r13)    
0x100152BF5   movb     %r12b, 0xc2(%r13)    
0x100152BFC   movb     %r12b, 0xcc(%r13)    
0x100152C03   movb     %r12b, 0xd6(%r13)    
0x100152C0A   movb     %r12b, 0xd8(%r13)    
0x100152C11   movb     %r12b, 0xda(%r13)    
0x100152C18   movb     %r12b, 0xe8(%r13)    
0x100152C1F   movb     %r12b, 0xec(%r13)    
0x100152C26   movb     %r12b, 0xf0(%r13)    
0x100152C2D   movb     %r12b, 0x108(%r13)   
0x100152C34   movb     %r12b, 0x114(%r13)   
0x100152C3B   movb     %r12b, 0x116(%r13)   
0x100152C42   movb     %r12b, 0x118(%r13)   
0x100152C49   movb     %r12b, 0x11a(%r13)   
0x100152C50   movb     %r12b, 0x11c(%r13)   
0x100152C57   movb     %r12b, 0x11e(%r13)   
0x100152C5E   movb     %r12b, 0x124(%r13)   
0x100152C65   movb     %r12b, 0x126(%r13)   
0x100152C6C   movb     %r12b, 0x128(%r13)   
0x100152C73   movb     %r12b, 0x130(%r13)   
0x100152C7A   movb     %r12b, 0x138(%r13)   
0x100152C81   movb     %r12b, 0x140(%r13)   
0x100152C88   movb     %r12b, 0x148(%r13)   
0x100152C8F   movb     %r12b, 0x150(%r13)   
0x100152C96   movb     %r12b, 0x152(%r13)   
0x100152C9D   movb     %r12b, 0x168(%r13)   
0x100152CA4   movb     %r12b, 0x174(%r13)   
0x100152CAB   movb     %r12b, 0x176(%r13)   
0x100152CB2   movb     %r12b, 0x178(%r13)   
0x100152CB9   movb     %r12b, 0x17a(%r13)   
0x100152CC0   movb     %r12b, 0x17c(%r13)   
0x100152CC7   movb     %r12b, 0x17e(%r13)   
0x100152CCE   movb     %r12b, 0x180(%r13)   
0x100152CD5   movb     %r12b, 0x18a(%r13)   
0x100152CDC   movb     %r12b, 0x1a6(%r13)   
0x100152CE3   movb     %r12b, 0x1a8(%r13)   
0x100152CEA   movb     %r12b, 0x1aa(%r13)   
0x100152CF1   movw     %r12w, 0x1ac(%r13)   
0x100152CF9   movb     %r12b, 0x1ae(%r13)   
0x100152D00   movb     %r12b, 0x1b0(%r13)   
0x100152D07   movb     %r12b, 0x1ba(%r13)   
0x100152D0E   movb     %r12b, 0x1c2(%r13)   
0x100152D15   movq     %r12, 0x6d(%r13)     
0x100152D19   movq     %r12, 0x68(%r13)     
0x100152D1D   movl     %r12d, 0xc4(%r13)    
0x100152D24   movb     %r12b, 0xc8(%r13)    
0x100152D2B   movl     %r12d, 0xd0(%r13)    
0x100152D32   movb     %r12b, 0xd4(%r13)    
0x100152D39   movq     %r12, 0xdc(%r13)     
0x100152D40   movb     %r12b, 0xe4(%r13)    
0x100152D47   movq     %r12, 0xf4(%r13)     
0x100152D4E   movl     %r12d, 0x100(%r13)   
0x100152D55   movb     %r12b, 0x104(%r13)   
0x100152D5C   movl     %r12d, 0x10c(%r13)   
0x100152D63   movl     %r12d, 0x10f(%r13)   
0x100152D6A   movl     %r12d, 0x154(%r13)   
0x100152D71   movw     %r12w, 0x158(%r13)   
0x100152D79   movb     %r12b, 0x164(%r13)   
0x100152D80   movl     %r12d, 0x160(%r13)   
0x100152D87   movl     %r12d, 0x16f(%r13)   
0x100152D8E   movl     %r12d, 0x16c(%r13)   
0x100152D95   movl     %r12d, 0x185(%r13)   
0x100152D9C   movl     %r12d, 0x182(%r13)   
0x100152DA3   xorps    %xmm0, %xmm0         
0x100152DA6   movups   %xmm0, 0x195(%r13)   
0x100152DAE   movups   %xmm0, 0x18c(%r13)   
0x100152DB6   movl     %r12d, 0x1b5(%r13)   
0x100152DBD   movl     %r12d, 0x1b2(%r13)   
0x100152DC4   movb     %r12b, 0x1c0(%r13)   
0x100152DCB   movl     %r12d, 0x1bc(%r13)   
0x100152DD2   movq     %r12, 0x1d4(%r13)    
0x100152DD9   movups   %xmm0, 0x1c4(%r13)   
0x100152DE1   movq     0x8(%r14), %rax      
0x100152DE5   movq     0x20(%rax), %rdx     
0x100152DE9   leaq     -0x240(%rbp), %rcx   
0x100152DF0   movq     %rdx, 0x20(%rcx)     
0x100152DF4   movups   (%rax), %xmm0        
0x100152DF7   movups   0x10(%rax), %xmm1    
0x100152DFB   movaps   %xmm1, 0x10(%rcx)    
0x100152DFF   movaps   %xmm0, (%rcx)        
0x100152E02   movb     %bl, 0x28(%rcx)      
0x100152E05   movq     -0x248(%rbp), %rbx   
0x100152E0C   subq     $0x8, %rsp           
0x100152E10   movq     %rbx, %rdi           
0x100152E13   movl     $0x1, %esi           
0x100152E18   movl     $0x2, %edx           
0x100152E1D   movl     $0x1, %r8d           
0x100152E23   xorl     %r9d, %r9d           
0x100152E26   pushq    %r13                 
0x100152E28   pushq    %r12                 
0x100152E2A   pushq    $0x3                 
0x100152E2C   callq    0x10015104c          
0x100152E31   addq     $0x20, %rsp          
0x100152E35   movq     0x7ebbb4(%rip), %rax  ; ___stack_chk_guard
0x100152E3C   movq     (%rax), %rax         
0x100152E3F   cmpq     -0x30(%rbp), %rax    
0x100152E43   jne      0x100152e5a          
0x100152E45   movq     %rbx, %rax           
0x100152E48   addq     $0x238, %rsp         
0x100152E4F   popq     %rbx                 
0x100152E50   popq     %r12                 
0x100152E52   popq     %r13                 
0x100152E54   popq     %r14                 
0x100152E56   popq     %r15                 
0x100152E58   popq     %rbp                 
0x100152E59   retq                          
0x100152E5A   callq    ___stack_chk_fail    
0x100152E5F   pushq    %rbp                 
0x100152E60   movq     %rsp, %rbp           
0x100152E63   pushq    %r15                 
0x100152E65   pushq    %r14                 
0x100152E67   pushq    %r13                 
0x100152E69   pushq    %r12                 
0x100152E6B   pushq    %rbx                 
0x100152E6C   subq     $0x248, %rsp         
0x100152E73   movq     %rsi, %r14           
0x100152E76   movq     %rdi, -0x250(%rbp)   
0x100152E7D   movq     0x7ebb6c(%rip), %rax  ; ___stack_chk_guard
0x100152E84   movq     (%rax), %rax         
0x100152E87   movq     %rax, -0x30(%rbp)    
0x100152E8B   callq    0x1001a9d70          
0x100152E90   movl     0x240(%rax), %r15d   
0x100152E97   leaq     0x8(%r14), %rbx      
0x100152E9B   movb     0xb(%r14), %r12b     
0x100152E9F   xorl     %edx, %edx           
0x100152EA1   cmpb     $0x5, (%r14)         
0x100152EA5   setne    %dl                  
0x100152EA8   incl     %edx                 
0x100152EAA   leaq     -0x264(%rbp), %rdi   
0x100152EB1   movl     %r15d, %esi          
0x100152EB4   xorl     %ecx, %ecx           
0x100152EB6   movl     $0x1, %r8d           
0x100152EBC   callq    0x10015d5b0          
0x100152EC1   cmpb     $0x1, 0x57(%r14)     
0x100152EC6   movl     %r15d, -0x244(%rbp)  
0x100152ECD   movb     %r12b, -0x23d(%rbp)  
0x100152ED4   jne      0x100152edc          
0x100152ED6   movb     0x56(%r14), %al      
0x100152EDA   jmp      0x100152eef          
0x100152EDC   cmpb     $0x4, %r12b          
0x100152EE0   sete     %cl                  
0x100152EE3   cmpl     $0xc9, %r15d         
0x100152EEA   sete     %al                  
0x100152EED   andb     %cl, %al             
0x100152EEF   movzbl   0x55(%r14), %edx     
0x100152EF4   movzbl   %al, %esi            
0x100152EF7   leaq     -0x264(%rbp), %r12   
0x100152EFE   movq     %r12, %rdi           
0x100152F01   callq    0x10015de38          
0x100152F06   movw     $0x100, %ax          
0x100152F0A   movw     %ax, -0x210(%rbp)    
0x100152F11   movq     %r12, %rdi           
0x100152F14   callq    0x10015df82          
0x100152F19   movb     %al, -0x20e(%rbp)    
0x100152F1F   movb     $0x1, %r15b          
0x100152F22   movb     %r15b, -0x20d(%rbp)  
0x100152F29   movq     %r12, %rdi           
0x100152F2C   callq    0x10015df8c          
0x100152F31   movb     %al, -0x20c(%rbp)    
0x100152F37   movb     %r15b, -0x20b(%rbp)  
0x100152F3E   movq     %r12, %rdi           
0x100152F41   callq    0x10015df96          
0x100152F46   movb     %al, -0x20a(%rbp)    
0x100152F4C   movl     $0xc010c01, -0x209(%rbp) 
0x100152F56   movw     $0x1, %ax            
0x100152F5A   movw     %ax, -0x205(%rbp)    
0x100152F61   xorl     %r13d, %r13d         
0x100152F64   movw     %r13w, -0x202(%rbp)  
0x100152F6C   movl     $0xc010c00, -0x1ff(%rbp) 
0x100152F76   movb     %r15b, -0x1fb(%rbp)  
0x100152F7D   movw     $0x7, -0x1fa(%rbp)   
0x100152F86   movb     %r15b, -0x1f8(%rbp)  
0x100152F8D   movb     %r13b, -0x1f0(%rbp)  
0x100152F94   movb     %r13b, -0x1e8(%rbp)  
0x100152F9B   movb     %r13b, -0x1e0(%rbp)  
0x100152FA2   movb     %r13b, -0x1dc(%rbp)  
0x100152FA9   movw     %r13w, -0x1d8(%rbp)  
0x100152FB1   movl     0x5c(%r14), %eax     
0x100152FB5   movl     %eax, -0x1d4(%rbp)   
0x100152FBB   movw     %r13w, -0x1d0(%rbp)  
0x100152FC3   movq     %r12, %rdi           
0x100152FC6   callq    0x10015dfa0          
0x100152FCB   movb     %al, -0x1ce(%rbp)    
0x100152FD1   movb     %r15b, -0x1cd(%rbp)  
0x100152FD8   movq     %r12, %rdi           
0x100152FDB   callq    0x10015dfaa          
0x100152FE0   movb     %al, -0x1cc(%rbp)    
0x100152FE6   movb     %r15b, -0x1cb(%rbp)  
0x100152FED   movq     %r12, %rdi           
0x100152FF0   callq    0x10015dfb4          
0x100152FF5   movb     %al, -0x1ca(%rbp)    
0x100152FFB   movw     $0x1, %ax            
0x100152FFF   movw     %ax, -0x1c9(%rbp)    
0x100153006   movw     $0x1, %r12w          
0x10015300B   movb     %r13b, -0x1c6(%rbp)  
0x100153012   movb     %r13b, -0x1c4(%rbp)  
0x100153019   movb     %r13b, -0x1c2(%rbp)  
0x100153020   movb     %r13b, -0x1c0(%rbp)  
0x100153027   movb     %r13b, -0x1b8(%rbp)  
0x10015302E   movb     %r13b, -0x1b0(%rbp)  
0x100153035   movb     %r13b, -0x1ae(%rbp)  
0x10015303C   movb     %r13b, -0x1ac(%rbp)  
0x100153043   movb     %r13b, -0x1aa(%rbp)  
0x10015304A   movl     %r13d, -0x1a8(%rbp)  
0x100153051   movzbl   -0x23d(%rbp), %edi   
0x100153058   callq    0x100153500          
0x10015305D   movb     %al, -0x1a4(%rbp)    
0x100153063   movb     %r15b, -0x1a3(%rbp)  
0x10015306A   movb     (%r14), %al          
0x10015306D   movb     %al, -0x1a2(%rbp)    
0x100153073   movb     %r15b, -0x1a1(%rbp)  
0x10015307A   movzwl   0x1(%r14), %eax      
0x10015307F   movw     %ax, -0x1a0(%rbp)    
0x100153086   movl     $0x100, -0x19e(%rbp) 
0x100153090   movb     %r15b, -0x19a(%rbp)  
0x100153097   movw     $0x100, %ax          
0x10015309B   movw     %ax, -0x198(%rbp)    
0x1001530A2   movups   0x3c(%r14), %xmm0    
0x1001530A7   movups   %xmm0, -0x196(%rbp)  
0x1001530AE   movw     %r12w, -0x186(%rbp)  
0x1001530B6   movb     %r13b, -0x183(%rbp)  
0x1001530BD   movq     0x20(%rbx), %rax     
0x1001530C1   movq     %rax, -0x160(%rbp)   
0x1001530C8   movups   (%rbx), %xmm0        
0x1001530CB   movups   0x10(%rbx), %xmm1    
0x1001530CF   movups   %xmm1, -0x170(%rbp)  
0x1001530D6   movups   %xmm0, -0x180(%rbp)  
0x1001530DD   movb     %r15b, -0x158(%rbp)  
0x1001530E4   movb     %r13b, -0x150(%rbp)  
0x1001530EB   movb     %r13b, -0x14e(%rbp)  
0x1001530F2   movb     %r13b, -0x144(%rbp)  
0x1001530F9   movb     %r13b, -0x13a(%rbp)  
0x100153100   movb     %r13b, -0x138(%rbp)  
0x100153107   movb     %r13b, -0x136(%rbp)  
0x10015310E   movb     %r13b, -0x128(%rbp)  
0x100153115   movb     %r13b, -0x124(%rbp)  
0x10015311C   movb     %r13b, -0x120(%rbp)  
0x100153123   movb     %r13b, -0x108(%rbp)  
0x10015312A   movb     %r13b, -0xfc(%rbp)   
0x100153131   movb     %r13b, -0xfa(%rbp)   
0x100153138   movb     %r13b, -0xf8(%rbp)   
0x10015313F   movb     %r13b, -0xf6(%rbp)   
0x100153146   movb     %r13b, -0xf4(%rbp)   
0x10015314D   movb     %r13b, -0xf2(%rbp)   
0x100153154   movb     %r13b, -0xec(%rbp)   
0x10015315B   movb     %r13b, -0xea(%rbp)   
0x100153162   movb     %r13b, -0xe8(%rbp)   
0x100153169   movb     %r13b, -0xe0(%rbp)   
0x100153170   movb     %r13b, -0xd8(%rbp)   
0x100153177   movb     %r13b, -0xd0(%rbp)   
0x10015317E   movb     %r13b, -0xc8(%rbp)   
0x100153185   movb     %r13b, -0xc0(%rbp)   
0x10015318C   movb     %r13b, -0xbe(%rbp)   
0x100153193   movb     %r13b, -0xa8(%rbp)   
0x10015319A   movb     %r13b, -0x9c(%rbp)   
0x1001531A1   movb     %r13b, -0x9a(%rbp)   
0x1001531A8   movb     %r13b, -0x98(%rbp)   
0x1001531AF   movb     %r13b, -0x96(%rbp)   
0x1001531B6   movb     %r13b, -0x94(%rbp)   
0x1001531BD   movb     %r13b, -0x92(%rbp)   
0x1001531C4   movb     %r13b, -0x90(%rbp)   
0x1001531CB   movb     %r13b, -0x86(%rbp)   
0x1001531D2   movb     %r13b, -0x6a(%rbp)   
0x1001531D6   movb     %r13b, -0x68(%rbp)   
0x1001531DA   movb     %r13b, -0x66(%rbp)   
0x1001531DE   movw     %r13w, -0x64(%rbp)   
0x1001531E3   movb     %r13b, -0x62(%rbp)   
0x1001531E7   movb     %r13b, -0x60(%rbp)   
0x1001531EB   movb     %r13b, -0x56(%rbp)   
0x1001531EF   movb     %r13b, -0x4e(%rbp)   
0x1001531F3   movb     %r13b, -0x148(%rbp)  
0x1001531FA   movl     %r13d, -0x14c(%rbp)  
0x100153201   movl     %r13d, -0x140(%rbp)  
0x100153208   movb     %r13b, -0x13c(%rbp)  
0x10015320F   movq     %r13, -0x134(%rbp)   
0x100153216   movb     %r13b, -0x12c(%rbp)  
0x10015321D   movq     %r13, -0x11c(%rbp)   
0x100153224   movl     %r13d, -0x110(%rbp)  
0x10015322B   movb     %r13b, -0x10c(%rbp)  
0x100153232   movl     %r13d, -0x104(%rbp)  
0x100153239   movl     %r13d, -0x101(%rbp)  
0x100153240   movl     %r13d, -0xbc(%rbp)   
0x100153247   movw     %r13w, -0xb8(%rbp)   
0x10015324F   movl     %r13d, -0xb0(%rbp)   
0x100153256   movb     %r13b, -0xac(%rbp)   
0x10015325D   movl     %r13d, -0xa1(%rbp)   
0x100153264   movl     %r13d, -0xa4(%rbp)   
0x10015326B   movl     %r13d, -0x8b(%rbp)   
0x100153272   movl     %r13d, -0x8e(%rbp)   
0x100153279   xorps    %xmm0, %xmm0         
0x10015327C   movups   %xmm0, -0x7b(%rbp)   
0x100153280   movups   %xmm0, -0x84(%rbp)   
0x100153287   movl     %r13d, -0x5b(%rbp)   
0x10015328B   movl     %r13d, -0x5e(%rbp)   
0x10015328F   movb     %r13b, -0x50(%rbp)   
0x100153293   movl     %r13d, -0x54(%rbp)   
0x100153297   movq     %r13, -0x3c(%rbp)    
0x10015329B   movups   %xmm0, -0x4c(%rbp)   
0x10015329F   movl     0x38(%r14), %edi     
0x1001532A3   testl    %edi, %edi           
0x1001532A5   je       0x1001534ce          
0x1001532AB   cmpb     $0x0, -0x1fb(%rbp)   
0x1001532B2   je       0x1001534d3          
0x1001532B8   cmpb     $0x0, -0x1fd(%rbp)   
0x1001532BF   je       0x1001534d8          
0x1001532C5   movzbl   -0x1fe(%rbp), %edx   
0x1001532CC   cmpq     $0xb, %rdx           
0x1001532D0   jbe      0x1001534dd          
0x1001532D6   movzbl   -0x1fc(%rbp), %ecx   
0x1001532DD   cmpq     $0xb, %rcx           
0x1001532E1   jbe      0x1001534e2          
0x1001532E7   movzbl   0xb(%r14), %eax      
0x1001532EC   cmpl     $0x4, %eax           
0x1001532EF   je       0x100153306          
0x1001532F1   cmpl     $0x5, %eax           
0x1001532F4   jne      0x1001534e7          
0x1001532FA   cmpl     $0x1, 0x50(%r14)     
0x1001532FF   je       0x10015337f          
0x100153301   callq    0x100478a7e          
0x100153306   movl     0x50(%r14), %esi     
0x10015330A   leal     -0xb(%rsi), %eax     
0x10015330D   cmpl     $-0xb, %eax          
0x100153310   jbe      0x1001534fb          
0x100153316   shrl     $0x2, %edx           
0x100153319   shrl     $0x2, %ecx           
0x10015331C   callq    0x10013a4ac          
0x100153321   cmpb     $0x0, -0x1ae(%rbp)   
0x100153328   jne      0x100153331          
0x10015332A   movb     $0x1, -0x1ae(%rbp)   
0x100153331   movl     0x50(%r14), %ecx     
0x100153335   movw     %ax, -0x1b0(%rbp)    
0x10015333C   cmpb     $0x0, -0x1aa(%rbp)   
0x100153343   jne      0x10015334c          
0x100153345   movb     $0x1, -0x1aa(%rbp)   
0x10015334C   movw     %ax, -0x1ac(%rbp)    
0x100153353   cmpb     $0x0, -0x1a7(%rbp)   
0x10015335A   jne      0x100153363          
0x10015335C   movb     $0x1, -0x1a7(%rbp)   
0x100153363   movb     %cl, -0x1a8(%rbp)    
0x100153369   cmpb     $0x0, -0x1a5(%rbp)   
0x100153370   jne      0x100153379          
0x100153372   movb     $0x1, -0x1a5(%rbp)   
0x100153379   movb     %cl, -0x1a6(%rbp)    
0x10015337F   cmpb     $0x1, 0x58(%r14)     
0x100153384   jne      0x1001533b1          
0x100153386   cmpb     $0x0, -0x183(%rbp)   
0x10015338D   jne      0x100153396          
0x10015338F   movb     $0x1, -0x183(%rbp)   
0x100153396   movw     $0x400, -0x185(%rbp) 
0x10015339F   movw     $0x96, -0x1c4(%rbp)  
0x1001533A8   movb     $0x1, -0x1c2(%rbp)   
0x1001533AF   jmp      0x10015342e          
0x1001533B1   movb     -0x202(%rbp), %al    
0x1001533B7   cmpb     $0x1, 0x59(%r14)     
0x1001533BC   jne      0x100153401          
0x1001533BE   testb    %al, %al             
0x1001533C0   jne      0x1001533c9          
0x1001533C2   movb     $0x1, -0x202(%rbp)   
0x1001533C9   movw     $0x300, -0x204(%rbp) 
0x1001533D2   cmpb     $0x0, -0x1ff(%rbp)   
0x1001533D9   jne      0x1001533e2          
0x1001533DB   movb     $0x1, -0x1ff(%rbp)   
0x1001533E2   movw     $0x300, -0x201(%rbp) 
0x1001533EB   movl     $0x1200120, -0x1fe(%rbp) 
0x1001533F5   movl     $0x1090109, -0x208(%rbp) 
0x1001533FF   jmp      0x10015342e          
0x100153401   testb    %al, %al             
0x100153403   jne      0x10015340c          
0x100153405   movb     $0x1, -0x202(%rbp)   
0x10015340C   movw     $0x0, -0x204(%rbp)   
0x100153415   cmpb     $0x0, -0x1ff(%rbp)   
0x10015341C   jne      0x100153425          
0x10015341E   movb     $0x1, -0x1ff(%rbp)   
0x100153425   movw     $0x0, -0x201(%rbp)   
0x10015342E   movl     0x30(%r14), %ebx     
0x100153432   movl     0x34(%r14), %r12d    
0x100153436   movb     0x5a(%r14), %r13b    
0x10015343A   xorl     %r15d, %r15d         
0x10015343D   cmpb     $0x1, 0x54(%r14)     
0x100153442   jne      0x10015346b          
0x100153444   movl     -0x244(%rbp), %edi   
0x10015344A   callq    0x1003fd238          
0x10015344F   testb    %al, %al             
0x100153451   movq     -0x250(%rbp), %r14   
0x100153458   je       0x100153472          
0x10015345A   movw     $0x108, -0x19e(%rbp) 
0x100153463   movl     $0x1, %r15d          
0x100153469   jmp      0x100153472          
0x10015346B   movq     -0x250(%rbp), %r14   
0x100153472   xorl     %eax, %eax           
0x100153474   leaq     -0x23c(%rbp), %rcx   
0x10015347B   movb     %al, (%rcx)          
0x10015347D   movb     %al, 0x28(%rcx)      
0x100153480   subq     $0x8, %rsp           
0x100153484   leaq     -0x210(%rbp), %rax   
0x10015348B   movzbl   %r13b, %r9d          
0x10015348F   movq     %r14, %rdi           
0x100153492   xorl     %esi, %esi           
0x100153494   movl     $0x4, %edx           
0x100153499   movl     %r12d, %r8d          
0x10015349C   pushq    %rax                 
0x10015349D   pushq    %r15                 
0x10015349F   pushq    %rbx                 
0x1001534A0   callq    0x10015104c          
0x1001534A5   addq     $0x20, %rsp          
0x1001534A9   movq     0x7eb540(%rip), %rax  ; ___stack_chk_guard
0x1001534B0   movq     (%rax), %rax         
0x1001534B3   cmpq     -0x30(%rbp), %rax    
0x1001534B7   jne      0x1001534f1          
0x1001534B9   movq     %r14, %rax           
0x1001534BC   addq     $0x248, %rsp         
0x1001534C3   popq     %rbx                 
0x1001534C4   popq     %r12                 
0x1001534C6   popq     %r13                 
0x1001534C8   popq     %r14                 
0x1001534CA   popq     %r15                 
0x1001534CC   popq     %rbp                 
0x1001534CD   retq                          
0x1001534CE   callq    0x100478b50          
0x1001534D3   callq    0x100478a38          
0x1001534D8   callq    0x100478a5b          
0x1001534DD   callq    0x100478b2d          
0x1001534E2   callq    0x100478b0a          
0x1001534E7   cmpl     $0x3, %eax           
0x1001534EA   ja       0x1001534f6          
0x1001534EC   callq    0x100478ac4          
0x1001534F1   callq    ___stack_chk_fail    
0x1001534F6   callq    0x100478ae7          
0x1001534FB   callq    0x100478aa1          
0x100153500   cmpb     $0x6, %dil           
0x100153504   jae      0x10015351d          
0x100153506   shlb     $0x3, %dil           
0x10015350A   movabsq  $0x40403020100, %rax 
0x100153514   movl     %edi, %ecx           
0x100153516   shrq     %cl, %rax            
0x100153519   movzbl   %al, %eax            
0x10015351C   retq                          
0x10015351D   pushq    %rbp                 
0x10015351E   movq     %rsp, %rbp           
0x100153521   callq    0x100478b73          
0x100153526   pushq    %rbp                 
0x100153527   movq     %rsp, %rbp           
0x10015352A   pushq    %r15                 
0x10015352C   pushq    %r14                 
0x10015352E   pushq    %r13                 
0x100153530   pushq    %r12                 
0x100153532   pushq    %rbx                 
0x100153533   subq     $0x248, %rsp         
0x10015353A   movq     %rsi, %r14           
0x10015353D   movq     %rdi, -0x250(%rbp)   
0x100153544   movq     0x7eb4a5(%rip), %rax  ; ___stack_chk_guard
0x10015354B   movq     (%rax), %rax         
0x10015354E   movq     %rax, -0x30(%rbp)    
0x100153552   cmpb     $0x0, 0x4d(%rsi)     
0x100153556   movl     $0xff, %eax          
0x10015355B   je       0x100153561          
0x10015355D   movl     0x4c(%r14), %eax     
0x100153561   movl     %eax, -0x248(%rbp)   
0x100153567   callq    0x1001a9d70          
0x10015356C   movl     0x240(%rax), %esi    
0x100153572   leaq     0x8(%r14), %rax      
0x100153576   movq     %rax, -0x258(%rbp)   
0x10015357D   movb     0xb(%r14), %al       
0x100153581   movb     %al, -0x23d(%rbp)    
0x100153587   xorl     %edx, %edx           
0x100153589   cmpb     $0x5, (%r14)         
0x10015358D   setne    %dl                  
0x100153590   incl     %edx                 
0x100153592   leaq     -0x26c(%rbp), %r12   
0x100153599   xorl     %r13d, %r13d         
0x10015359C   movq     %r12, %rdi           
0x10015359F   movl     %esi, -0x244(%rbp)   
0x1001535A5   xorl     %ecx, %ecx           
0x1001535A7   movl     $0x1, %r8d           
0x1001535AD   callq    0x10015d5b0          
0x1001535B2   movzbl   0x55(%r14), %edx     
0x1001535B7   movq     %r12, %rdi           
0x1001535BA   xorl     %esi, %esi           
0x1001535BC   callq    0x10015de64          
0x1001535C1   movl     0x34(%r14), %eax     
0x1001535C5   movl     $0x0, %ebx           
0x1001535CA   cmpq     $0x6, %rax           
0x1001535CE   ja       0x1001535db          
0x1001535D0   leaq     0x48e5d1(%rip), %rcx  ; 
0x1001535D7   movzwl   (%rcx,%rax,2), %ebx  
0x1001535DB   callq    0x1001a9d70          
0x1001535E0   movl     %ebx, %r15d          
0x1001535E3   orl      $0x20, %r15d         
0x1001535E7   cmpl     $0x1, 0x300(%rax)    
0x1001535EE   cmovnel  %ebx, %r15d          
0x1001535F2   movw     $0x101, -0x210(%rbp) 
0x1001535FB   movq     %r12, %rdi           
0x1001535FE   callq    0x10015df82          
0x100153603   movb     %al, -0x20e(%rbp)    
0x100153609   movb     $0x1, %bl            
0x10015360B   movb     %bl, -0x20d(%rbp)    
0x100153611   movq     %r12, %rdi           
0x100153614   callq    0x10015df8c          
0x100153619   movb     %al, -0x20c(%rbp)    
0x10015361F   movb     %bl, -0x20b(%rbp)    
0x100153625   movq     %r12, %rdi           
0x100153628   callq    0x10015df96          
0x10015362D   movb     %al, -0x20a(%rbp)    
0x100153633   movl     $0xc010c01, %eax     
0x100153638   movl     %eax, -0x209(%rbp)   
0x10015363E   movb     %bl, -0x205(%rbp)    
0x100153644   movw     %r13w, -0x204(%rbp)  
0x10015364C   movb     %bl, -0x202(%rbp)    
0x100153652   movw     %r13w, -0x201(%rbp)  
0x10015365A   movl     %eax, -0x1ff(%rbp)   
0x100153660   movb     %bl, -0x1fb(%rbp)    
0x100153666   movw     %r15w, -0x1fa(%rbp)  
0x10015366E   movb     %bl, -0x1f8(%rbp)    
0x100153674   movb     %r13b, -0x1f0(%rbp)  
0x10015367B   movb     %r13b, -0x1e8(%rbp)  
0x100153682   movb     %r13b, -0x1e0(%rbp)  
0x100153689   movb     %r13b, -0x1dc(%rbp)  
0x100153690   movw     %r13w, -0x1d8(%rbp)  
0x100153698   movl     0x5c(%r14), %eax     
0x10015369C   movl     %eax, -0x1d4(%rbp)   
0x1001536A2   movb     %r13b, -0x1c6(%rbp)  
0x1001536A9   movb     %r13b, -0x1c4(%rbp)  
0x1001536B0   movb     %r13b, -0x1c2(%rbp)  
0x1001536B7   movb     %r13b, -0x1c0(%rbp)  
0x1001536BE   movb     %r13b, -0x1b8(%rbp)  
0x1001536C5   movb     %r13b, -0x1c8(%rbp)  
0x1001536CC   movq     %r13, -0x1d0(%rbp)   
0x1001536D3   movw     $0x1e, -0x1b0(%rbp)  
0x1001536DC   movb     %bl, -0x1ae(%rbp)    
0x1001536E2   movw     $0x1388, -0x1ac(%rbp) 
0x1001536EB   movb     %bl, -0x1aa(%rbp)    
0x1001536F1   movl     $0x1200101, -0x1a8(%rbp) 
0x1001536FB   movzbl   -0x23d(%rbp), %edi   
0x100153702   callq    0x100153500          
0x100153707   movb     %al, -0x1a4(%rbp)    
0x10015370D   movb     %bl, -0x1a3(%rbp)    
0x100153713   movb     (%r14), %al          
0x100153716   movb     %al, -0x1a2(%rbp)    
0x10015371C   movb     %bl, -0x1a1(%rbp)    
0x100153722   movzwl   0x1(%r14), %eax      
0x100153727   movw     %ax, -0x1a0(%rbp)    
0x10015372E   movl     $0x100, -0x19e(%rbp) 
0x100153738   movb     %bl, -0x19a(%rbp)    
0x10015373E   movl     -0x248(%rbp), %eax   
0x100153744   movb     %al, -0x198(%rbp)    
0x10015374A   movb     %bl, -0x197(%rbp)    
0x100153750   movups   0x3c(%r14), %xmm0    
0x100153755   movups   %xmm0, -0x196(%rbp)  
0x10015375C   movw     $0x1, -0x186(%rbp)   
0x100153765   movb     %r13b, -0x183(%rbp)  
0x10015376C   movq     -0x258(%rbp), %rcx   
0x100153773   movq     0x20(%rcx), %rax     
0x100153777   movq     %rax, -0x160(%rbp)   
0x10015377E   movups   (%rcx), %xmm0        
0x100153781   movups   0x10(%rcx), %xmm1    
0x100153785   movups   %xmm1, -0x170(%rbp)  
0x10015378C   movups   %xmm0, -0x180(%rbp)  
0x100153793   movb     %bl, -0x158(%rbp)    
0x100153799   movb     %r13b, -0x150(%rbp)  
0x1001537A0   movb     %r13b, -0x14e(%rbp)  
0x1001537A7   movb     %r13b, -0x144(%rbp)  
0x1001537AE   movb     %r13b, -0x13a(%rbp)  
0x1001537B5   movb     %r13b, -0x138(%rbp)  
0x1001537BC   movb     %r13b, -0x136(%rbp)  
0x1001537C3   movb     %r13b, -0x128(%rbp)  
0x1001537CA   movb     %r13b, -0x124(%rbp)  
0x1001537D1   movb     %r13b, -0x120(%rbp)  
0x1001537D8   movb     %r13b, -0x108(%rbp)  
0x1001537DF   movb     %r13b, -0xfc(%rbp)   
0x1001537E6   movb     %r13b, -0xfa(%rbp)   
0x1001537ED   movb     %r13b, -0xf8(%rbp)   
0x1001537F4   movb     %r13b, -0xf6(%rbp)   
0x1001537FB   movb     %r13b, -0xf4(%rbp)   
0x100153802   movb     %r13b, -0xf2(%rbp)   
0x100153809   movb     %r13b, -0xec(%rbp)   
0x100153810   movb     %r13b, -0xea(%rbp)   
0x100153817   movb     %r13b, -0xe8(%rbp)   
0x10015381E   movb     %r13b, -0xe0(%rbp)   
0x100153825   movb     %r13b, -0xd8(%rbp)   
0x10015382C   movb     %r13b, -0xd0(%rbp)   
0x100153833   movb     %r13b, -0xc8(%rbp)   
0x10015383A   movb     %r13b, -0xc0(%rbp)   
0x100153841   movb     %r13b, -0xbe(%rbp)   
0x100153848   movb     %r13b, -0xa8(%rbp)   
0x10015384F   movb     %r13b, -0x9c(%rbp)   
0x100153856   movb     %r13b, -0x9a(%rbp)   
0x10015385D   movb     %r13b, -0x98(%rbp)   
0x100153864   movb     %r13b, -0x96(%rbp)   
0x10015386B   movb     %r13b, -0x94(%rbp)   
0x100153872   movb     %r13b, -0x92(%rbp)   
0x100153879   movb     %r13b, -0x90(%rbp)   
0x100153880   movb     %r13b, -0x86(%rbp)   
0x100153887   movb     %r13b, -0x6a(%rbp)   
0x10015388B   movb     %r13b, -0x68(%rbp)   
0x10015388F   movb     %r13b, -0x66(%rbp)   
0x100153893   movw     %r13w, -0x64(%rbp)   
0x100153898   movb     %r13b, -0x62(%rbp)   
0x10015389C   movb     %r13b, -0x60(%rbp)   
0x1001538A0   movb     %r13b, -0x56(%rbp)   
0x1001538A4   movb     %r13b, -0x4e(%rbp)   
0x1001538A8   movb     %r13b, -0x148(%rbp)  
0x1001538AF   movl     %r13d, -0x14c(%rbp)  
0x1001538B6   movl     %r13d, -0x140(%rbp)  
0x1001538BD   movb     %r13b, -0x13c(%rbp)  
0x1001538C4   movq     %r13, -0x134(%rbp)   
0x1001538CB   movb     %r13b, -0x12c(%rbp)  
0x1001538D2   movq     %r13, -0x11c(%rbp)   
0x1001538D9   movl     %r13d, -0x110(%rbp)  
0x1001538E0   movb     %r13b, -0x10c(%rbp)  
0x1001538E7   movl     %r13d, -0x104(%rbp)  
0x1001538EE   movl     %r13d, -0x101(%rbp)  
0x1001538F5   movl     %r13d, -0xbc(%rbp)   
0x1001538FC   movw     %r13w, -0xb8(%rbp)   
0x100153904   movl     %r13d, -0xb0(%rbp)   
0x10015390B   movb     %r13b, -0xac(%rbp)   
0x100153912   movl     %r13d, -0xa1(%rbp)   
0x100153919   movl     %r13d, -0xa4(%rbp)   
0x100153920   movl     %r13d, -0x8b(%rbp)   
0x100153927   movl     %r13d, -0x8e(%rbp)   
0x10015392E   xorps    %xmm0, %xmm0         
0x100153931   movups   %xmm0, -0x7b(%rbp)   
0x100153935   movups   %xmm0, -0x84(%rbp)   
0x10015393C   movl     %r13d, -0x5b(%rbp)   
0x100153940   movl     %r13d, -0x5e(%rbp)   
0x100153944   movb     %r13b, -0x50(%rbp)   
0x100153948   movl     %r13d, -0x54(%rbp)   
0x10015394C   movq     %r13, -0x3c(%rbp)    
0x100153950   movups   %xmm0, -0x4c(%rbp)   
0x100153954   cmpb     %bl, 0x58(%r14)      
0x100153958   jne      0x100153985          
0x10015395A   cmpb     $0x0, -0x183(%rbp)   
0x100153961   jne      0x10015396a          
0x100153963   movb     $0x1, -0x183(%rbp)   
0x10015396A   movw     $0x400, -0x185(%rbp) 
0x100153973   movw     $0x96, -0x1c4(%rbp)  
0x10015397C   movb     $0x1, -0x1c2(%rbp)   
0x100153983   jmp      0x100153a02          
0x100153985   movb     -0x202(%rbp), %al    
0x10015398B   cmpb     $0x1, 0x59(%r14)     
0x100153990   jne      0x1001539d5          
0x100153992   testb    %al, %al             
0x100153994   jne      0x10015399d          
0x100153996   movb     $0x1, -0x202(%rbp)   
0x10015399D   movw     $0x300, -0x204(%rbp) 
0x1001539A6   cmpb     $0x0, -0x1ff(%rbp)   
0x1001539AD   jne      0x1001539b6          
0x1001539AF   movb     $0x1, -0x1ff(%rbp)   
0x1001539B6   movw     $0x300, -0x201(%rbp) 
0x1001539BF   movl     $0x1200120, -0x1fe(%rbp) 
0x1001539C9   movl     $0x1090109, -0x208(%rbp) 
0x1001539D3   jmp      0x100153a02          
0x1001539D5   testb    %al, %al             
0x1001539D7   jne      0x1001539e0          
0x1001539D9   movb     $0x1, -0x202(%rbp)   
0x1001539E0   movw     $0x0, -0x204(%rbp)   
0x1001539E9   cmpb     $0x0, -0x1ff(%rbp)   
0x1001539F0   jne      0x1001539f9          
0x1001539F2   movb     $0x1, -0x1ff(%rbp)   
0x1001539F9   movw     $0x0, -0x201(%rbp)   
0x100153A02   movl     0x30(%r14), %ebx     
0x100153A06   movl     0x34(%r14), %r12d    
0x100153A0A   movb     0x5a(%r14), %r13b    
0x100153A0E   xorl     %r15d, %r15d         
0x100153A11   cmpb     $0x1, 0x54(%r14)     
0x100153A16   jne      0x100153a3f          
0x100153A18   movl     -0x244(%rbp), %edi   
0x100153A1E   callq    0x1003fd238          
0x100153A23   testb    %al, %al             
0x100153A25   movq     -0x250(%rbp), %r14   
0x100153A2C   je       0x100153a46          
0x100153A2E   movw     $0x108, -0x19e(%rbp) 
0x100153A37   movl     $0x1, %r15d          
0x100153A3D   jmp      0x100153a46          
0x100153A3F   movq     -0x250(%rbp), %r14   
0x100153A46   xorl     %eax, %eax           
0x100153A48   leaq     -0x23c(%rbp), %rcx   
0x100153A4F   movb     %al, (%rcx)          
0x100153A51   movb     %al, 0x28(%rcx)      
0x100153A54   subq     $0x8, %rsp           
0x100153A58   leaq     -0x210(%rbp), %rax   
0x100153A5F   movzbl   %r13b, %r9d          
0x100153A63   movq     %r14, %rdi           
0x100153A66   movl     $0x1, %esi           
0x100153A6B   movl     $0x4, %edx           
0x100153A70   movl     %r12d, %r8d          
0x100153A73   pushq    %rax                 
0x100153A74   pushq    %r15                 
0x100153A76   pushq    %rbx                 
0x100153A77   callq    0x10015104c          
0x100153A7C   addq     $0x20, %rsp          
0x100153A80   movq     0x7eaf69(%rip), %rax  ; ___stack_chk_guard
0x100153A87   movq     (%rax), %rax         
0x100153A8A   cmpq     -0x30(%rbp), %rax    
0x100153A8E   jne      0x100153aa5          
0x100153A90   movq     %r14, %rax           
0x100153A93   addq     $0x248, %rsp         
0x100153A9A   popq     %rbx                 
0x100153A9B   popq     %r12                 
0x100153A9D   popq     %r13                 
0x100153A9F   popq     %r14                 
0x100153AA1   popq     %r15                 
0x100153AA3   popq     %rbp                 
0x100153AA4   retq                          
0x100153AA5   callq    ___stack_chk_fail    
0x100153AAA   addb     %dl, 0x48(%rbp)      
0x100153AAD   movl     %esp, %ebp           
0x100153AAF   pushq    %r15                 
0x100153AB1   pushq    %r14                 
0x100153AB3   pushq    %r13                 
0x100153AB5   pushq    %r12                 
0x100153AB7   pushq    %rbx                 
0x100153AB8   subq     $0x258, %rsp         
0x100153ABF   movq     %r8, %r15            
0x100153AC2   movq     %rsi, %r12           
0x100153AC5   movq     %rdi, %r14           
0x100153AC8   movq     0x7eaf21(%rip), %rax  ; ___stack_chk_guard
0x100153ACF   movq     (%rax), %rax         
0x100153AD2   movq     %rax, -0x30(%rbp)    
0x100153AD6   cmpl     $0x66, %edx          
0x100153AD9   je       0x100153ae4          
0x100153ADB   cmpl     $0x6a, %edx          
0x100153ADE   jne      0x100154153          
0x100153AE4   movb     0x2(%r15), %al       
0x100153AE8   cmpb     $0x1, (%r15)         
0x100153AEC   jne      0x100153b02          
0x100153AEE   testb    %al, %al             
0x100153AF0   je       0x10015411c          
0x100153AF6   cmpb     $0x0, 0x3(%r15)      
0x100153AFB   jne      0x100153b11          
0x100153AFD   callq    0x100478c22          
0x100153B02   testb    %al, %al             
0x100153B04   jne      0x100154121          
0x100153B0A   cmpb     $0x1, 0x3(%r15)      
0x100153B0F   jne      0x100153b2c          
0x100153B11   cmpb     $0x0, 0x8(%r15)      
0x100153B16   je       0x100154117          
0x100153B1C   movw     $0x1, %ax            
0x100153B20   cmpb     $0x0, 0x10(%r15)     
0x100153B25   jne      0x100153b44          
0x100153B27   callq    0x100478c68          
0x100153B2C   cmpb     $0x1, 0x8(%r15)      
0x100153B31   je       0x100154144          
0x100153B37   cmpb     $0x1, 0x10(%r15)     
0x100153B3C   je       0x100154149          
0x100153B42   xorl     %eax, %eax           
0x100153B44   movzbl   0x1b(%r15), %esi     
0x100153B49   movzwl   %ax, %eax            
0x100153B4C   leal     (%rax,%rsi,2), %eax  
0x100153B4F   movzbl   0x1c(%r15), %esi     
0x100153B54   leal     (%rax,%rsi,4), %edi  
0x100153B57   cmpb     $0x1, 0x13(%r12)     
0x100153B5D   movq     %rcx, -0x278(%rbp)   
0x100153B64   movl     %edx, -0x250(%rbp)   
0x100153B6A   jne      0x100153b90          
0x100153B6C   movzwl   %di, %edi            
0x100153B6F   xorl     %esi, %esi           
0x100153B71   cmpb     $0x1, 0x10(%r12)     
0x100153B77   jne      0x100153ba2          
0x100153B79   orl      $0xc0, %edi          
0x100153B7F   movb     0x11(%r12), %al      
0x100153B84   subb     $0x1, %al            
0x100153B86   movzbl   %al, %eax            
0x100153B89   cmovbl   %esi, %eax           
0x100153B8C   movl     %eax, %esi           
0x100153B8E   jmp      0x100153ba8          
0x100153B90   movl     %edi, -0x244(%rbp)   
0x100153B96   movl     $0x0, -0x248(%rbp)   
0x100153BA0   jmp      0x100153bca          
0x100153BA2   orl      $0x80, %edi          
0x100153BA8   movzbl   0x12(%r12), %eax     
0x100153BAE   testw    %ax, %ax             
0x100153BB1   movl     %esi, -0x248(%rbp)   
0x100153BB7   je       0x100153bc4          
0x100153BB9   movzwl   %ax, %eax            
0x100153BBC   shll     $0x8, %eax           
0x100153BBF   movzwl   %di, %edi            
0x100153BC2   orl      %eax, %edi           
0x100153BC4   movl     %edi, -0x244(%rbp)   
0x100153BCA   movl     (%r12), %eax         
0x100153BCE   movl     %eax, -0x24c(%rbp)   
0x100153BD4   callq    0x1001a9d70          
0x100153BD9   movl     0x240(%rax), %ebx    
0x100153BDF   movzbl   0x4(%r12), %edi      
0x100153BE5   movl     $0x1, %esi           
0x100153BEA   callq    0x100408bc3          
0x100153BEF   xorl     %r13d, %r13d         
0x100153BF2   movb     %al, -0x23d(%rbp)    
0x100153BF8   cmpb     $0x5, %al            
0x100153BFA   setne    %r13b                
0x100153BFE   incl     %r13d                
0x100153C01   leaq     -0x270(%rbp), %rdi   
0x100153C08   movl     %ebx, %esi           
0x100153C0A   movl     %r13d, %edx          
0x100153C0D   xorl     %ecx, %ecx           
0x100153C0F   movl     $0x1, %r8d           
0x100153C15   callq    0x10015d5b0          
0x100153C1A   cmpb     $0x1, 0x14(%r15)     
0x100153C1F   movq     %r14, -0x280(%rbp)   
0x100153C26   jne      0x100153c76          
0x100153C28   cmpb     $0x0, 0x16(%r15)     
0x100153C2D   je       0x100154126          
0x100153C33   cmpb     $0x0, 0x18(%r15)     
0x100153C38   je       0x100154130          
0x100153C3E   cmpb     $0x0, 0x1a(%r15)     
0x100153C43   je       0x10015413a          
0x100153C49   movzbl   0x15(%r15), %esi     
0x100153C4E   movzbl   0x17(%r15), %edx     
0x100153C53   movzbl   0x19(%r15), %ecx     
0x100153C58   subq     $0x8, %rsp           
0x100153C5C   leaq     -0x270(%rbp), %rdi   
0x100153C63   xorl     %r8d, %r8d           
0x100153C66   xorl     %r9d, %r9d           
0x100153C69   pushq    $0x0                 
0x100153C6B   callq    0x10015df0e          
0x100153C70   addq     $0x10, %rsp          
0x100153C74   jmp      0x100153cbc          
0x100153C76   cmpb     $0x1, 0x16(%r15)     
0x100153C7B   je       0x10015412b          
0x100153C81   cmpb     $0x1, 0x18(%r15)     
0x100153C86   je       0x100154135          
0x100153C8C   cmpb     $0x1, 0x1a(%r15)     
0x100153C91   je       0x10015413f          
0x100153C97   leaq     -0x210(%rbp), %rbx   
0x100153C9E   movq     %rbx, %rdi           
0x100153CA1   movl     %r13d, %esi          
0x100153CA4   callq    0x100154158          
0x100153CA9   movl     0x10(%rbx), %eax     
0x100153CAC   movl     %eax, -0x260(%rbp)   
0x100153CB2   movups   (%rbx), %xmm0        
0x100153CB5   movaps   %xmm0, -0x270(%rbp)  
0x100153CBC   movb     (%r15), %al          
0x100153CBF   leaq     -0x210(%rbp), %r13   
0x100153CC6   movb     %al, (%r13)          
0x100153CCA   movb     $0x1, %r14b          
0x100153CCD   movb     %r14b, 0x1(%r13)     
0x100153CD1   leaq     -0x270(%rbp), %rbx   
0x100153CD8   movq     %rbx, %rdi           
0x100153CDB   callq    0x10015df82          
0x100153CE0   movb     %al, 0x2(%r13)       
0x100153CE4   movb     %r14b, 0x3(%r13)     
0x100153CE8   movq     %rbx, %rdi           
0x100153CEB   callq    0x10015df8c          
0x100153CF0   movb     %al, 0x4(%r13)       
0x100153CF4   movb     %r14b, 0x5(%r13)     
0x100153CF8   movq     %rbx, %rdi           
0x100153CFB   callq    0x10015df96          
0x100153D00   movb     %al, 0x6(%r13)       
0x100153D04   movb     %r14b, 0x7(%r13)     
0x100153D08   movzbl   0x5(%r12), %edi      
0x100153D0E   movl     $0x1, %esi           
0x100153D13   callq    0x100407d5b          
0x100153D18   movb     %al, 0x8(%r13)       
0x100153D1C   movb     %r14b, 0x9(%r13)     
0x100153D20   movzbl   0x5(%r12), %edi      
0x100153D26   movl     $0x1, %esi           
0x100153D2B   callq    0x100407d5b          
0x100153D30   movb     %al, 0xa(%r13)       
0x100153D34   movw     $0x1, 0xb(%r13)      
0x100153D3B   xorl     %ebx, %ebx           
0x100153D3D   movw     %bx, 0xe(%r13)       
0x100153D42   movl     %ebx, 0x11(%r13)     
0x100153D46   movb     %bl, 0x15(%r13)      
0x100153D4A   movl     -0x244(%rbp), %eax   
0x100153D50   movw     %ax, 0x16(%r13)      
0x100153D55   movb     %r14b, 0x18(%r13)    
0x100153D59   movb     %bl, 0x20(%r13)      
0x100153D5D   movb     %bl, 0x28(%r13)      
0x100153D61   movb     %bl, 0x30(%r13)      
0x100153D65   movb     %bl, 0x34(%r13)      
0x100153D69   movb     -0x23d(%rbp), %al    
0x100153D6F   movb     %al, 0x38(%r13)      
0x100153D73   movb     %r14b, 0x39(%r13)    
0x100153D77   movl     0x20(%r15), %eax     
0x100153D7B   movl     %eax, 0x3c(%r13)     
0x100153D7F   movb     %bl, 0x4a(%r13)      
0x100153D83   movb     %bl, 0x4c(%r13)      
0x100153D87   movb     %bl, 0x4e(%r13)      
0x100153D8B   movb     %bl, 0x50(%r13)      
0x100153D8F   movb     %bl, 0x58(%r13)      
0x100153D93   movb     %bl, 0x60(%r13)      
0x100153D97   movb     %bl, 0x62(%r13)      
0x100153D9B   movb     %bl, 0x64(%r13)      
0x100153D9F   movb     %bl, 0x66(%r13)      
0x100153DA3   movb     %bl, 0x76(%r13)      
0x100153DA7   movw     %bx, 0x78(%r13)      
0x100153DAC   movb     %bl, 0x7a(%r13)      
0x100153DB0   movw     %bx, 0x8a(%r13)      
0x100153DB8   movb     %bl, 0x8d(%r13)      
0x100153DBF   movb     %bl, 0x90(%r13)      
0x100153DC6   movb     %bl, 0xb8(%r13)      
0x100153DCD   movb     %bl, 0xc0(%r13)      
0x100153DD4   movb     %bl, 0xc2(%r13)      
0x100153DDB   movb     %bl, 0x48(%r13)      
0x100153DDF   movq     %rbx, 0x40(%r13)     
0x100153DE3   movq     %rbx, 0x68(%r13)     
0x100153DE7   movq     %rbx, 0x6d(%r13)     
0x100153DEB   movl     -0x250(%rbp), %eax   
0x100153DF1   movb     %al, 0xc4(%r13)      
0x100153DF8   movb     %r14b, 0xc5(%r13)    
0x100153DFF   movzbl   0x5(%r12), %edi      
0x100153E05   movl     $0x1, %esi           
0x100153E0A   callq    0x100407d5b          
0x100153E0F   movb     %al, 0xc6(%r13)      
0x100153E16   movb     %r14b, 0xc7(%r13)    
0x100153E1D   movl     -0x24c(%rbp), %eax   
0x100153E23   movl     %eax, 0xc8(%r13)     
0x100153E2A   movb     %r14b, 0xcc(%r13)    
0x100153E31   movl     $0x1000100, 0xd0(%r13) 
0x100153E3C   movzwl   0x6(%r12), %eax      
0x100153E42   movw     %ax, 0xd4(%r13)      
0x100153E4A   movb     %r14b, 0xd6(%r13)    
0x100153E51   movzwl   0x8(%r12), %eax      
0x100153E57   movw     %ax, 0xd8(%r13)      
0x100153E5F   movb     %r14b, 0xda(%r13)    
0x100153E66   movb     0xa(%r12), %al       
0x100153E6B   movb     %al, 0xdc(%r13)      
0x100153E72   movb     %r14b, 0xdd(%r13)    
0x100153E79   movb     0xb(%r12), %al       
0x100153E7E   movb     %al, 0xde(%r13)      
0x100153E85   movb     %r14b, 0xdf(%r13)    
0x100153E8C   movb     0xc(%r12), %al       
0x100153E91   movb     %al, 0xe0(%r13)      
0x100153E98   movb     %r14b, 0xe1(%r13)    
0x100153E9F   movb     0xd(%r12), %al       
0x100153EA4   movb     %al, 0xe2(%r13)      
0x100153EAB   movb     %r14b, 0xe3(%r13)    
0x100153EB2   movb     0x8(%r15), %al       
0x100153EB6   movb     %al, 0xe8(%r13)      
0x100153EBD   movl     0x4(%r15), %eax      
0x100153EC1   movl     %eax, 0xe4(%r13)     
0x100153EC8   movl     0xc(%r15), %eax      
0x100153ECC   movl     %eax, 0xec(%r13)     
0x100153ED3   movb     0x10(%r15), %al      
0x100153ED7   movb     %al, 0xf0(%r13)      
0x100153EDE   movzwl   0x1(%r15), %eax      
0x100153EE3   movw     %ax, 0xf4(%r13)      
0x100153EEB   movb     0xe(%r12), %al       
0x100153EF0   movb     %al, 0xf6(%r13)      
0x100153EF7   movb     %r14b, 0xf7(%r13)    
0x100153EFE   movb     0xf(%r12), %al       
0x100153F03   movb     %al, 0xf8(%r13)      
0x100153F0A   movb     %r14b, 0xf9(%r13)    
0x100153F11   movl     -0x248(%rbp), %eax   
0x100153F17   movb     %al, 0xfa(%r13)      
0x100153F1E   movb     %r14b, 0xfb(%r13)    
0x100153F25   movb     %bl, 0x108(%r13)     
0x100153F2C   movb     %bl, 0x114(%r13)     
0x100153F33   movb     %bl, 0x116(%r13)     
0x100153F3A   movb     %bl, 0x118(%r13)     
0x100153F41   movb     %bl, 0x11a(%r13)     
0x100153F48   movb     %bl, 0x11c(%r13)     
0x100153F4F   movb     %bl, 0x11e(%r13)     
0x100153F56   movb     %bl, 0x124(%r13)     
0x100153F5D   movb     %bl, 0x126(%r13)     
0x100153F64   movb     %bl, 0x128(%r13)     
0x100153F6B   movb     %bl, 0x130(%r13)     
0x100153F72   movb     %bl, 0x138(%r13)     
0x100153F79   movb     %bl, 0x140(%r13)     
0x100153F80   movb     %bl, 0x148(%r13)     
0x100153F87   movb     %bl, 0x150(%r13)     
0x100153F8E   movb     %bl, 0x152(%r13)     
0x100153F95   movb     %bl, 0x168(%r13)     
0x100153F9C   movb     %bl, 0x174(%r13)     
0x100153FA3   movb     %bl, 0x176(%r13)     
0x100153FAA   movb     %bl, 0x178(%r13)     
0x100153FB1   movb     %bl, 0x17a(%r13)     
0x100153FB8   movb     %bl, 0x17c(%r13)     
0x100153FBF   movb     %bl, 0x17e(%r13)     
0x100153FC6   movb     %bl, 0x180(%r13)     
0x100153FCD   movb     %bl, 0x18a(%r13)     
0x100153FD4   movb     %bl, 0x1a6(%r13)     
0x100153FDB   movb     %bl, 0x1a8(%r13)     
0x100153FE2   movb     %bl, 0x1aa(%r13)     
0x100153FE9   movw     %bx, 0x1ac(%r13)     
0x100153FF1   movb     %bl, 0x1ae(%r13)     
0x100153FF8   movb     %bl, 0x1b0(%r13)     
0x100153FFF   movb     %bl, 0x1ba(%r13)     
