0x100408CEE   pushq    %rbp                 
0x100408CEF   movq     %rsp, %rbp           
0x100408CF2   pushq    %r14                 
0x100408CF4   pushq    %rbx                 
0x100408CF5   cmpl     $0x2, %esi           
0x100408CF8   je       0x100408d08          
0x100408CFA   cmpl     $0x1, %esi           
0x100408CFD   jne      0x100408d1c          
0x100408CFF   cmpb     $0x5, %dil           
0x100408D03   setne    %al                  
0x100408D06   jmp      0x100408d14          
0x100408D08   cmpb     $0x5, %dil           
0x100408D0C   setne    %al                  
0x100408D0F   shlb     $0x2, %al            
0x100408D12   addb     $0x5, %al            
0x100408D14   movzbl   %al, %eax            
0x100408D17   popq     %rbx                 
0x100408D18   popq     %r14                 
0x100408D1A   popq     %rbp                 
0x100408D1B   retq                          
0x100408D1C   movl     $0x10, %edi          
0x100408D21   callq    ___cxa_allocate_exception 
0x100408D26   movq     %rax, %rbx           
0x100408D29   leaq     0x136926(%rip), %rsi  ; string literal: "Unknown HSI version"
0x100408D30   movq     %rax, %rdi           
0x100408D33   callq    0x1004028f6          
0x100408D38   movq     %rbx, %rdi           
0x100408D3B   callq    0x1004a3879          
0x100408D40   movq     %rax, %r14           
0x100408D43   movq     %rbx, %rdi           
0x100408D46   callq    ___cxa_free_exception 
0x100408D4B   movq     %r14, %rdi           
0x100408D4E   callq    __Unwind_Resume      
