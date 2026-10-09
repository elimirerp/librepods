0x100407DE3   movl     %esp, %ebp           
0x100407DE5   pushq    %r14                 
0x100407DE7   pushq    %rbx                 
0x100407DE8   cmpl     $0x1, %esi           
0x100407DEB   je       0x100407dfb          
0x100407DED   cmpl     $0x2, %esi           
0x100407DF0   jne      0x100407e5a          
0x100407DF2   movzbl   %dil, %eax           
0x100407DF6   popq     %rbx                 
0x100407DF7   popq     %r14                 
0x100407DF9   popq     %rbp                 
0x100407DFA   retq                          
0x100407DFB   cmpb     $0x20, %dil          
0x100407DFF   ja       0x100407e36          
0x100407E01   movzbl   %dil, %eax           
0x100407E05   leaq     0x8c(%rip), %rcx     ; 
0x100407E0C   movslq   (%rcx,%rax,4), %rax  
0x100407E10   addq     %rcx, %rax           
0x100407E13   jmpq     *%rax                
0x100407E15   xorl     %edi, %edi           
0x100407E17   jmp      0x100407df2          
0x100407E19   movb     $0x1, %dil           
0x100407E1C   jmp      0x100407df2          
0x100407E1E   movb     $0x3, %dil           
0x100407E21   jmp      0x100407df2          
0x100407E23   movb     $0x2, %dil           
0x100407E26   jmp      0x100407df2          
0x100407E28   leaq     0x138aa0(%rip), %rdi  ; string literal: "Preambles not supported in HSI 1.x"
0x100407E2F   xorl     %eax, %eax           
0x100407E31   callq    0x1004095e4          
0x100407E36   movl     $0x10, %edi          
0x100407E3B   callq    ___cxa_allocate_exception 
0x100407E40   movq     %rax, %rbx           
0x100407E43   leaq     0x138aa8(%rip), %rsi  ; string literal: "Invalid extended preamble"
0x100407E4A   movq     %rax, %rdi           
0x100407E4D   callq    0x1004028f6          
0x100407E52   movq     %rbx, %rdi           
0x100407E55   callq    0x1004a3879          
0x100407E5A   testl    %esi, %esi           
0x100407E5C   jne      0x100407e36          
0x100407E5E   movl     $0x10, %edi          
0x100407E63   callq    ___cxa_allocate_exception 
0x100407E68   movq     %rax, %rbx           
0x100407E6B   leaq     0x1377e4(%rip), %rsi  ; string literal: "Unknown HSI version"
0x100407E72   movq     %rax, %rdi           
0x100407E75   callq    0x1004028f6          
0x100407E7A   movq     %rbx, %rdi           
0x100407E7D   callq    0x1004a3879          
0x100407E82   jmp      0x100407e84          
0x100407E84   movq     %rax, %r14           
0x100407E87   movq     %rbx, %rdi           
0x100407E8A   callq    ___cxa_free_exception 
0x100407E8F   movq     %r14, %rdi           
0x100407E92   callq    __Unwind_Resume      
0x100407E97   nop                           
