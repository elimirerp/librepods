0x100150DF2   pushq    %rbp                 
0x100150DF3   movq     %rsp, %rbp           
0x100150DF6   pushq    %r15                 
0x100150DF8   pushq    %r14                 
0x100150DFA   pushq    %rbx                 
0x100150DFB   pushq    %rax                 
0x100150DFC   movl     %edx, %r14d          
0x100150DFF   movl     %esi, %r15d          
0x100150E02   movq     %rdi, %rbx           
0x100150E05   movq     0x20(%rbp), %rsi     
0x100150E09   movl     0x18(%rbp), %eax     
0x100150E0C   movl     0x10(%rbp), %edx     
0x100150E0F   xorl     %edi, %edi           
0x100150E11   movb     %dil, (%rbx)         
0x100150E14   movb     %r15b, 0x1(%rbx)     
0x100150E18   movl     %r14d, 0x4(%rbx)     
0x100150E1C   movups   (%rcx), %xmm0        
0x100150E1F   movups   0x10(%rcx), %xmm1    
0x100150E23   movups   0x1c(%rcx), %xmm2    
0x100150E27   movups   %xmm0, 0x8(%rbx)     
0x100150E2B   movups   %xmm1, 0x18(%rbx)    
0x100150E2F   movups   %xmm2, 0x24(%rbx)    
0x100150E33   movb     %r9b, 0x34(%rbx)     
0x100150E37   movl     %r8d, 0x38(%rbx)     
0x100150E3B   movl     %edx, 0x3c(%rbx)     
0x100150E3E   movl     %eax, 0x40(%rbx)     
0x100150E41   movl     %edi, 0x44(%rbx)     
0x100150E44   movq     $-0x1, %rax          
0x100150E4B   movq     %rax, 0x48(%rbx)     
0x100150E4F   movw     $0xffff, 0x50(%rbx)  
0x100150E55   movb     %dil, 0x52(%rbx)     
0x100150E59   movq     %rax, 0x53(%rbx)     
0x100150E5D   movl     %edi, 0x5b(%rbx)     
0x100150E60   leaq     0x60(%rbx), %rdi     
0x100150E64   movl     $0x1e0, %edx         
0x100150E69   callq    _memcpy              
0x100150E6E   cmpl     $0x64, %r15d         
0x100150E72   je       0x100150ec6          
0x100150E74   testl    %r14d, %r14d         
0x100150E77   je       0x100150ecb          
0x100150E79   cmpb     $0x0, 0x99(%rbx)     
0x100150E80   jne      0x100150ea6          
0x100150E82   cmpb     $0x0, 0xcf(%rbx)     
0x100150E89   jne      0x100150ea6          
0x100150E8B   cmpb     $0x0, 0xd1(%rbx)     
0x100150E92   jne      0x100150ea6          
0x100150E94   cmpb     $0x0, 0x161(%rbx)    
0x100150E9B   jne      0x100150ea6          
0x100150E9D   cmpb     $0x1, 0x1c1(%rbx)    
0x100150EA4   jne      0x100150ebb          
0x100150EA6   movb     $0x1, (%rbx)         
0x100150EA9   movq     %rbx, %rdi           
0x100150EAC   addq     $0x8, %rsp           
0x100150EB0   popq     %rbx                 
0x100150EB1   popq     %r14                 
0x100150EB3   popq     %r15                 
0x100150EB5   popq     %rbp                 
0x100150EB6   jmp      0x100150ed0          
0x100150EBB   addq     $0x8, %rsp           
0x100150EBF   popq     %rbx                 
0x100150EC0   popq     %r14                 
0x100150EC2   popq     %r15                 
0x100150EC4   popq     %rbp                 
0x100150EC5   retq                          
0x100150EC6   callq    0x1004788d0          
0x100150ECB   callq    0x1004788af          
0x100150ED0   pushq    %rbp                 
0x100150ED1   movq     %rsp, %rbp           
0x100150ED4   pushq    %r15                 
0x100150ED6   pushq    %r14                 
0x100150ED8   pushq    %rbx                 
0x100150ED9   subq     $0x38, %rsp          
0x100150EDD   movq     %rdi, %rbx           
0x100150EE0   leaq     0x86cdd9(%rip), %r15  ; 
0x100150EE7   movq     (%r15), %r14         
0x100150EEA   movq     %r14, %rdi           
0x100150EED   xorl     %esi, %esi           
0x100150EEF   callq    _os_log_type_enabled 
0x100150EF4   testb    %al, %al             
0x100150EF6   je       0x100150f20          
0x100150EF8   leaq     -0x50(%rbp), %r8     
0x100150EFC   movw     $0x0, (%r8)          
0x100150F02   leaq     -0x150f09(%rip), %rdi  ; 
0x100150F09   leaq     0x403850(%rip), %rcx  ; string literal: "RoseServiceRequest::assignChannelDiversitySettings"
0x100150F10   movq     %r14, %rsi           
0x100150F13   xorl     %edx, %edx           
0x100150F15   movl     $0x2, %r9d           
0x100150F1B   callq    __os_log_impl        
0x100150F20   movb     0xcf(%rbx), %al      
0x100150F26   cmpb     $0x1, 0xd1(%rbx)     
0x100150F2D   jne      0x100150fa7          
0x100150F2F   testb    %al, %al             
0x100150F31   je       0x100150fb9          
0x100150F37   movl     0x40(%rbx), %eax     
0x100150F3A   testl    %eax, %eax           
0x100150F3C   je       0x100150fab          
0x100150F3E   movb     0xd0(%rbx), %cl      
0x100150F44   cmpb     %cl, 0xce(%rbx)      
0x100150F4A   je       0x100150fab          
0x100150F4C   cmpl     $0x1, %eax           
0x100150F4F   je       0x100151014          
0x100150F55   cmpl     $0x2, %eax           
0x100150F58   jne      0x100151009          
0x100150F5E   movq     (%r15), %r14         
0x100150F61   movq     %r14, %rdi           
0x100150F64   xorl     %esi, %esi           
0x100150F66   callq    _os_log_type_enabled 
0x100150F6B   testb    %al, %al             
0x100150F6D   je       0x100150f97          
0x100150F6F   leaq     -0x30(%rbp), %r8     
0x100150F73   movw     $0x0, (%r8)          
0x100150F79   leaq     -0x150f80(%rip), %rdi  ; 
0x100150F80   leaq     0x403879(%rip), %rcx  ; string literal: "RoseServiceRequest::assignChannelDiversitySettings - Channel diversity preference RoundRobin_P2S"
0x100150F87   movq     %r14, %rsi           
0x100150F8A   xorl     %edx, %edx           
0x100150F8C   movl     $0x2, %r9d           
0x100150F92   callq    __os_log_impl        
0x100150F97   cmpb     $0x1, 0x78(%rbx)     
0x100150F9B   jne      0x10015103f          
0x100150FA1   orb      $0x4, 0x76(%rbx)     
0x100150FA5   jmp      0x100151009          
0x100150FA7   testb    %al, %al             
0x100150FA9   je       0x100150fb9          
0x100150FAB   movzwl   0xce(%rbx), %eax     
0x100150FB2   movw     %ax, 0xd0(%rbx)      
0x100150FB9   cmpb     $0x0, 0xd3(%rbx)     
0x100150FC0   jne      0x100150fc9          
0x100150FC2   movb     $0x1, 0xd3(%rbx)     
0x100150FC9   movb     $0x0, 0xd2(%rbx)     
0x100150FD0   movq     (%r15), %rbx         
0x100150FD3   movq     %rbx, %rdi           
0x100150FD6   xorl     %esi, %esi           
0x100150FD8   callq    _os_log_type_enabled 
0x100150FDD   testb    %al, %al             
0x100150FDF   je       0x100151009          
0x100150FE1   leaq     -0x40(%rbp), %r8     
0x100150FE5   movw     $0x0, (%r8)          
0x100150FEB   leaq     -0x150ff2(%rip), %rdi  ; 
0x100150FF2   leaq     0x4037a7(%rip), %rcx  ; string literal: "RoseServiceRequest::assignChannelDiversitySettings - channelDiversityPrecondition is false"
0x100150FF9   movq     %rbx, %rsi           
0x100150FFC   xorl     %edx, %edx           
0x100150FFE   movl     $0x2, %r9d           
0x100151004   callq    __os_log_impl        
0x100151009   addq     $0x38, %rsp          
0x10015100D   popq     %rbx                 
0x10015100E   popq     %r14                 
0x100151010   popq     %r15                 
0x100151012   popq     %rbp                 
0x100151013   retq                          
0x100151014   movq     (%r15), %rbx         
0x100151017   movq     %rbx, %rdi           
0x10015101A   xorl     %esi, %esi           
0x10015101C   callq    _os_log_type_enabled 
0x100151021   testb    %al, %al             
0x100151023   je       0x100151009          
0x100151025   leaq     -0x20(%rbp), %r8     
0x100151029   movw     $0x0, (%r8)          
0x10015102F   leaq     -0x151036(%rip), %rdi  ; 
0x100151036   leaq     0x403833(%rip), %rcx  ; string literal: "RoseServiceRequest::assignChannelDiversitySettings - Channel diversity preference RoundRobin"
0x10015103D   jmp      0x100150ff9          
0x10015103F   movw     $0x4, 0x76(%rbx)     
0x100151045   movb     $0x1, 0x78(%rbx)     
0x100151049   jmp      0x100151009          
0x10015104B   nop                           
0x10015104C   pushq    %rbp                 
0x10015104D   movq     %rsp, %rbp           
0x100151050   popq     %rbp                 
0x100151051   jmp      0x100150df2          
