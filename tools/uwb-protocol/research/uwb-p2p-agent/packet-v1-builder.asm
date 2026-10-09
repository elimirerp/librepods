0x100163D40   popq     %rbx                 
0x100163D41   popq     %r14                 
0x100163D43   popq     %r15                 
0x100163D45   popq     %rbp                 
0x100163D46   retq                          
0x100163D47   movq     %r14, %rdi           
0x100163D4A   callq    0x10047a5d9          
0x100163D4F   jmp      0x100163d1b          
0x100163D51   movq     %r14, %rdi           
0x100163D54   callq    0x10047a571          
0x100163D59   jmp      0x100163d00          
0x100163D5B   callq    ___stack_chk_fail    
0x100163D60   adcb     %al, %bh             
0x100163D8A   pushq    %rbp                 
0x100163D8B   movq     %rsp, %rbp           
0x100163D8E   pushq    %r15                 
0x100163D90   pushq    %r14                 
0x100163D92   pushq    %r13                 
0x100163D94   pushq    %r12                 
0x100163D96   pushq    %rbx                 
0x100163D97   subq     $0x98, %rsp          
0x100163D9E   movq     %rsi, %r14           
0x100163DA1   movq     %rdi, %rbx           
0x100163DA4   movq     0x7dac45(%rip), %rax  ; ___stack_chk_guard
0x100163DAB   movq     (%rax), %rax         
0x100163DAE   movq     %rax, -0x30(%rbp)    
0x100163DB2   leaq     0x859f07(%rip), %r12  ; 
0x100163DB9   movq     (%r12), %r15         
0x100163DBD   movq     %r15, %rdi           
0x100163DC0   movl     $0x2, %esi           
0x100163DC5   callq    _os_log_type_enabled 
0x100163DCA   testb    %al, %al             
0x100163DCC   jne      0x10016429a          
0x100163DD2   cmpb     $0x1, 0x61(%r14)     
0x100163DD7   jne      0x10016425d          
0x100163DDD   cmpb     $0x1, 0x63(%r14)     
0x100163DE2   jne      0x10016425d          
0x100163DE8   cmpb     $0x1, 0xa3(%r14)     
0x100163DF0   jne      0x10016425d          
0x100163DF6   cmpb     $0x1, 0x65(%r14)     
0x100163DFB   jne      0x10016425d          
0x100163E01   cmpb     $0x1, 0xa5(%r14)     
0x100163E09   jne      0x10016425d          
0x100163E0F   cmpb     $0x1, 0x67(%r14)     
0x100163E14   jne      0x10016425d          
0x100163E1A   cmpb     $0x1, 0xa7(%r14)     
0x100163E22   jne      0x10016425d          
0x100163E28   cmpb     $0x1, 0x69(%r14)     
0x100163E2D   jne      0x10016425d          
0x100163E33   cmpb     $0x1, 0x6b(%r14)     
0x100163E38   jne      0x10016425d          
0x100163E3E   cmpb     $0x1, 0x6e(%r14)     
0x100163E43   jne      0x10016425d          
0x100163E49   cmpb     $0x1, 0x71(%r14)     
0x100163E4E   jne      0x10016425d          
0x100163E54   cmpb     $0x1, 0x73(%r14)     
0x100163E59   jne      0x10016425d          
0x100163E5F   cmpb     $0x1, 0x75(%r14)     
0x100163E64   jne      0x10016425d          
0x100163E6A   cmpb     $0x1, 0xa1(%r14)     
0x100163E72   jne      0x10016425d          
0x100163E78   cmpb     $0x1, 0x78(%r14)     
0x100163E7D   jne      0x10016425d          
0x100163E83   cmpb     $0x1, 0xaa(%r14)     
0x100163E8B   jne      0x10016425d          
0x100163E91   cmpb     $0x1, 0xae(%r14)     
0x100163E99   jne      0x10016425d          
0x100163E9F   cmpb     $0x0, 0x99(%r14)     
0x100163EA7   je       0x10016425d          
0x100163EAD   movw     $0x4010, 0x10(%rbx)  
0x100163EB3   cmpb     $0x0, 0x61(%r14)     
0x100163EB8   je       0x1001642ca          
0x100163EBE   movb     0x60(%r14), %al      
0x100163EC2   movb     %al, 0x16(%rbx)      
0x100163EC5   cmpb     $0x0, 0x63(%r14)     
0x100163ECA   je       0x1001642ca          
0x100163ED0   movb     0x62(%r14), %al      
0x100163ED4   movb     %al, 0x17(%rbx)      
0x100163ED7   cmpb     $0x0, 0xa3(%r14)     
0x100163EDF   je       0x1001642ca          
0x100163EE5   movb     0xa2(%r14), %al      
0x100163EEC   movb     %al, 0x23(%rbx)      
0x100163EEF   cmpb     $0x0, 0x65(%r14)     
0x100163EF4   je       0x1001642ca          
0x100163EFA   movb     0x64(%r14), %al      
0x100163EFE   movb     %al, 0x18(%rbx)      
0x100163F01   cmpb     $0x0, 0xa5(%r14)     
0x100163F09   je       0x1001642ca          
0x100163F0F   movb     0xa4(%r14), %al      
0x100163F16   movb     %al, 0x24(%rbx)      
0x100163F19   cmpb     $0x0, 0x67(%r14)     
0x100163F1E   je       0x1001642ca          
0x100163F24   movb     0x66(%r14), %al      
0x100163F28   movb     %al, 0x19(%rbx)      
0x100163F2B   cmpb     $0x0, 0xa7(%r14)     
0x100163F33   je       0x1001642ca          
0x100163F39   movb     0xa6(%r14), %al      
0x100163F40   movb     %al, 0x25(%rbx)      
0x100163F43   cmpb     $0x0, 0x69(%r14)     
0x100163F48   je       0x1001642ca          
0x100163F4E   movzbl   0x68(%r14), %edi     
0x100163F53   callq    0x100407d4a          
0x100163F58   testb    %al, %al             
0x100163F5A   je       0x1001642b6          
0x100163F60   cmpb     $0x0, 0x6b(%r14)     
0x100163F65   je       0x1001642ca          
0x100163F6B   movzbl   0x6a(%r14), %edi     
0x100163F70   callq    0x100407d4a          
0x100163F75   testb    %al, %al             
0x100163F77   je       0x1001642bb          
0x100163F7D   cmpb     $0x0, 0x6e(%r14)     
0x100163F82   je       0x1001642ca          
0x100163F88   leaq     0x6c(%r14), %rdi     
0x100163F8C   callq    0x100408ef0          
0x100163F91   testb    %al, %al             
0x100163F93   je       0x1001642c0          
0x100163F99   cmpb     $0x0, 0x71(%r14)     
0x100163F9E   je       0x1001642ca          
0x100163FA4   leaq     0x6f(%r14), %rdi     
0x100163FA8   callq    0x100408ef0          
0x100163FAD   testb    %al, %al             
0x100163FAF   je       0x1001642c5          
0x100163FB5   cmpb     $0x0, 0x69(%r14)     
0x100163FBA   je       0x1001642ca          
0x100163FC0   movzbl   0x68(%r14), %edi     
0x100163FC5   movl     $0x1, %esi           
0x100163FCA   callq    0x100407de1          
0x100163FCF   movb     %al, 0x1a(%rbx)      
0x100163FD2   cmpb     $0x0, 0x6b(%r14)     
0x100163FD7   je       0x1001642ca          
0x100163FDD   movzbl   0x6a(%r14), %edi     
0x100163FE2   movl     $0x1, %esi           
0x100163FE7   callq    0x100407de1          
0x100163FEC   movb     %al, 0x1b(%rbx)      
0x100163FEF   cmpb     $0x0, 0x6e(%r14)     
0x100163FF4   je       0x1001642ca          
0x100163FFA   movb     0x6d(%r14), %al      
0x100163FFE   movb     %al, 0x1c(%rbx)      
0x100164001   cmpb     $0x0, 0x71(%r14)     
0x100164006   je       0x1001642ca          
0x10016400C   movb     0x70(%r14), %al      
0x100164010   movb     %al, 0x1d(%rbx)      
0x100164013   cmpb     $0x0, 0x73(%r14)     
0x100164018   je       0x1001642ca          
0x10016401E   movb     0x72(%r14), %al      
0x100164022   movb     %al, 0x1e(%rbx)      
0x100164025   cmpb     $0x0, 0x75(%r14)     
0x10016402A   je       0x1001642ca          
0x100164030   movb     0x74(%r14), %al      
0x100164034   movb     %al, 0x1f(%rbx)      
0x100164037   cmpb     $0x0, 0xa1(%r14)     
0x10016403F   je       0x1001642ca          
0x100164045   movb     0xa0(%r14), %al      
0x10016404C   movb     %al, 0x22(%rbx)      
0x10016404F   cmpb     $0x0, 0x78(%r14)     
0x100164054   je       0x1001642ca          
0x10016405A   movzwl   0x76(%r14), %eax     
0x10016405F   orl      $0x2, %eax           
0x100164062   movw     %ax, 0x28(%rbx)      
0x100164066   cmpb     $0x0, 0xaa(%r14)     
0x10016406E   je       0x1001642ca          
0x100164074   movzwl   0xa8(%r14), %eax     
0x10016407C   movw     %ax, 0x26(%rbx)      
0x100164080   cmpb     $0x0, 0xae(%r14)     
0x100164088   je       0x1001642ca          
0x10016408E   movzwl   0xac(%r14), %eax     
0x100164096   movw     %ax, 0x36(%rbx)      
0x10016409A   cmpb     $0x0, 0x99(%r14)     
0x1001640A2   je       0x1001642ca          
0x1001640A8   movzbl   0x98(%r14), %edi     
0x1001640B0   movl     $0x1, %esi           
0x1001640B5   callq    0x100408cee          
0x1001640BA   movb     %al, 0x20(%rbx)      
0x1001640BD   movq     $0x0, 0x38(%rbx)     
0x1001640C5   movq     (%r12), %r15         
0x1001640C9   movq     %r15, %rdi           
0x1001640CC   xorl     %esi, %esi           
0x1001640CE   callq    _os_log_type_enabled 
0x1001640D3   movb     $0x1, %r14b          
0x1001640D6   testb    %al, %al             
0x1001640D8   je       0x100164275          
0x1001640DE   movzbl   0x16(%rbx), %r10d    
0x1001640E3   movzbl   0x17(%rbx), %eax     
0x1001640E7   movzbl   0x18(%rbx), %ecx     
0x1001640EB   movzbl   0x19(%rbx), %edx     
0x1001640EF   movzbl   0x1a(%rbx), %esi     
0x1001640F3   movzbl   0x1b(%rbx), %edi     
0x1001640F7   movzbl   0x1c(%rbx), %r9d     
0x1001640FC   movzbl   0x1d(%rbx), %r11d    
0x100164101   movzbl   0x1e(%rbx), %r12d    
0x100164106   movzbl   0x1f(%rbx), %r13d    
0x10016410B   movzbl   0x22(%rbx), %r8d     
0x100164110   movl     %r8d, -0xa4(%rbp)    
0x100164117   movzbl   0x23(%rbx), %r8d     
0x10016411C   movl     %r8d, -0xa8(%rbp)    
0x100164123   movzbl   0x24(%rbx), %r8d     
0x100164128   movl     %r8d, -0xac(%rbp)    
0x10016412F   movzbl   0x25(%rbx), %r8d     
0x100164134   movl     %r8d, -0xb0(%rbp)    
0x10016413B   movswl   0x26(%rbx), %r8d     
0x100164140   movl     %r8d, -0xb4(%rbp)    
0x100164147   movzwl   0x28(%rbx), %r8d     
0x10016414C   movl     %r8d, -0xb8(%rbp)    
0x100164153   movzwl   0x36(%rbx), %r8d     
0x100164158   movl     %r8d, -0xbc(%rbp)    
0x10016415F   movzbl   0x20(%rbx), %ebx     
0x100164163   leaq     -0xa0(%rbp), %r8     
0x10016416A   movl     $0x4001200, (%r8)    
0x100164171   movl     %r10d, 0x4(%r8)      
0x100164175   movw     $0x400, %r10w        
0x10016417A   movw     %r10w, 0x8(%r8)      
0x10016417F   movl     %eax, 0xa(%r8)       
0x100164183   movw     %r10w, 0xe(%r8)      
0x100164188   movl     %ecx, 0x10(%r8)      
0x10016418C   movw     %r10w, 0x14(%r8)     
0x100164191   movl     %edx, 0x16(%r8)      
0x100164195   movw     %r10w, 0x1a(%r8)     
0x10016419A   movl     %esi, 0x1c(%r8)      
0x10016419E   movw     %r10w, 0x20(%r8)     
0x1001641A3   movl     %edi, 0x22(%r8)      
0x1001641A7   movw     %r10w, 0x26(%r8)     
0x1001641AC   movl     %r9d, 0x28(%r8)      
0x1001641B0   movw     %r10w, 0x2c(%r8)     
0x1001641B5   movl     %r11d, 0x2e(%r8)     
0x1001641B9   movw     %r10w, 0x32(%r8)     
0x1001641BE   movl     %r12d, 0x34(%r8)     
0x1001641C2   movw     %r10w, 0x38(%r8)     
0x1001641C7   movl     %r13d, 0x3a(%r8)     
0x1001641CB   movw     %r10w, 0x3e(%r8)     
0x1001641D0   movl     -0xa4(%rbp), %eax    
0x1001641D6   movl     %eax, 0x40(%r8)      
0x1001641DA   movw     %r10w, 0x44(%r8)     
0x1001641DF   movl     -0xa8(%rbp), %eax    
0x1001641E5   movl     %eax, 0x46(%r8)      
0x1001641E9   movw     %r10w, 0x4a(%r8)     
0x1001641EE   movl     -0xac(%rbp), %eax    
0x1001641F4   movl     %eax, 0x4c(%r8)      
0x1001641F8   movw     %r10w, 0x50(%r8)     
0x1001641FD   movl     -0xb0(%rbp), %eax    
0x100164203   movl     %eax, 0x52(%r8)      
0x100164207   movw     %r10w, 0x56(%r8)     
0x10016420C   movl     -0xb4(%rbp), %eax    
0x100164212   movl     %eax, 0x58(%r8)      
0x100164216   movw     %r10w, 0x5c(%r8)     
0x10016421B   movl     -0xb8(%rbp), %eax    
0x100164221   movl     %eax, 0x5e(%r8)      
0x100164225   movw     %r10w, 0x62(%r8)     
0x10016422A   movl     -0xbc(%rbp), %eax    
0x100164230   movl     %eax, 0x64(%r8)      
0x100164234   movw     %r10w, 0x68(%r8)     
0x100164239   movl     %ebx, 0x6a(%r8)      
0x10016423D   leaq     -0x164244(%rip), %rdi  ; 
0x100164244   leaq     0x3f2c25(%rip), %rcx  ; string literal: "Built P2P packet V1: { \nses_role: %d\n tx_ant_mask: %d\n rx_ant_mask: %d\n rx_sync_search_ant_mask: %d\n tx_preamble: %d\n rx_preamble: %d\n tx_pkt_type: %d\n rx_pkt_type: %d\n tx_mslot_sz_250us: %d\n rx_m
0x10016424B   movq     %r15, %rsi           
0x10016424E   xorl     %edx, %edx           
0x100164250   movl     $0x6e, %r9d          
0x100164256   callq    __os_log_impl        
0x10016425B   jmp      0x100164275          
0x10016425D   movq     (%r12), %rbx         
0x100164261   movq     %rbx, %rdi           
0x100164264   movl     $0x11, %esi          
0x100164269   callq    _os_log_type_enabled 
0x10016426E   testb    %al, %al             
0x100164270   jne      0x1001642a7          
0x100164272   xorl     %r14d, %r14d         
0x100164275   movq     0x7da774(%rip), %rax  ; ___stack_chk_guard
0x10016427C   movq     (%rax), %rax         
0x10016427F   cmpq     -0x30(%rbp), %rax    
0x100164283   jne      0x1001642b1          
0x100164285   movl     %r14d, %eax          
0x100164288   addq     $0x98, %rsp          
0x10016428F   popq     %rbx                 
0x100164290   popq     %r12                 
0x100164292   popq     %r13                 
0x100164294   popq     %r14                 
0x100164296   popq     %r15                 
0x100164298   popq     %rbp                 
0x100164299   retq                          
0x10016429A   movq     %r15, %rdi           
0x10016429D   callq    0x10047a849          
0x1001642A2   jmp      0x100163dd2          
0x1001642A7   movq     %rbx, %rdi           
0x1001642AA   callq    0x10047a87c          
0x1001642AF   jmp      0x100164272          
0x1001642B1   callq    ___stack_chk_fail    
0x1001642B6   callq    0x10047a8b0          
0x1001642BB   callq    0x10047a8d3          
0x1001642C0   callq    0x10047a8f6          
0x1001642C5   callq    0x10047a919          
0x1001642CA   callq    0x1001394f0          
0x1001642CF   nop                           
