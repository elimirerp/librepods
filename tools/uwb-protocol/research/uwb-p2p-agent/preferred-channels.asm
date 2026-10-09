0x1002F71E6   pushq    %rbp                 
0x1002F71E7   movq     %rsp, %rbp           
0x1002F71EA   pushq    %r15                 
0x1002F71EC   pushq    %r14                 
0x1002F71EE   pushq    %r13                 
0x1002F71F0   pushq    %r12                 
0x1002F71F2   pushq    %rbx                 
0x1002F71F3   subq     $0xa8, %rsp          
0x1002F71FA   movl     %ecx, -0x80(%rbp)    
0x1002F71FD   movq     %rdx, %rbx           
0x1002F7200   movq     %rsi, -0x90(%rbp)    
0x1002F7207   movq     0x6477e2(%rip), %rax  ; ___stack_chk_guard
0x1002F720E   movq     (%rax), %rax         
0x1002F7211   movq     %rax, -0x30(%rbp)    
0x1002F7215   movq     0x8(%rdi), %rsi      
0x1002F7219   movq     (%rsi), %rax         
0x1002F721C   leaq     -0xb0(%rbp), %rdi    
0x1002F7223   callq    *0x30(%rax)          
0x1002F7226   movq     -0xb0(%rbp), %r15    
0x1002F722D   movq     -0xa8(%rbp), %r14    
0x1002F7234   cmpq     %r15, %r14           
0x1002F7237   je       0x1002f73fe          
0x1002F723D   movq     %rbx, -0x88(%rbp)    
0x1002F7244   movl     $0x0, -0x74(%rbp)    
0x1002F724B   leaq     -0x2f7252(%rip), %rbx  ; 
0x1002F7252   leaq     -0x50(%rbp), %r12    
0x1002F7256   movl     $0x0, -0x78(%rbp)    
0x1002F725D   movq     %r15, -0xb8(%rbp)    
0x1002F7264   movzbl   (%r15), %eax         
0x1002F7268   cmpl     $0x9, %eax           
0x1002F726B   je       0x1002f72a6          
0x1002F726D   cmpl     $0x5, %eax           
0x1002F7270   jne      0x1002f72e6          
0x1002F7272   leaq     0x6c6a47(%rip), %rax  ; 
0x1002F7279   movq     (%rax), %r13         
0x1002F727C   movq     %r13, %rdi           
0x1002F727F   xorl     %esi, %esi           
0x1002F7281   callq    _os_log_type_enabled 
0x1002F7286   movb     $0x1, %cl            
0x1002F7288   movl     %ecx, -0x74(%rbp)    
0x1002F728B   testb    %al, %al             
0x1002F728D   je       0x1002f72e6          
0x1002F728F   movw     $0x0, -0x50(%rbp)    
0x1002F7295   movq     %rbx, %rdi           
0x1002F7298   movq     %r13, %rsi           
0x1002F729B   xorl     %edx, %edx           
0x1002F729D   leaq     0x28cd6c(%rip), %rcx  ; string literal: "[PRConfigurationManager] RF channel 5 ALLOWED."
0x1002F72A4   jmp      0x1002f72d8          
0x1002F72A6   leaq     0x6c6a13(%rip), %rax  ; 
0x1002F72AD   movq     (%rax), %r13         
0x1002F72B0   movq     %r13, %rdi           
0x1002F72B3   xorl     %esi, %esi           
0x1002F72B5   callq    _os_log_type_enabled 
0x1002F72BA   movb     $0x1, %cl            
0x1002F72BC   movl     %ecx, -0x78(%rbp)    
0x1002F72BF   testb    %al, %al             
0x1002F72C1   je       0x1002f72e6          
0x1002F72C3   movw     $0x0, -0x50(%rbp)    
0x1002F72C9   movq     %rbx, %rdi           
0x1002F72CC   movq     %r13, %rsi           
0x1002F72CF   xorl     %edx, %edx           
0x1002F72D1   leaq     0x28cd68(%rip), %rcx  ; string literal: "[PRConfigurationManager] RF channel 9 ALLOWED."
0x1002F72D8   movq     %r12, %r8            
0x1002F72DB   movl     $0x2, %r9d           
0x1002F72E1   callq    __os_log_impl        
0x1002F72E6   incq     %r15                 
0x1002F72E9   cmpq     %r14, %r15           
0x1002F72EC   jne      0x1002f7264          
0x1002F72F2   movl     -0x74(%rbp), %eax    
0x1002F72F5   orb      -0x78(%rbp), %al     
0x1002F72F8   testb    $0x1, %al            
0x1002F72FA   je       0x1002f766e          
0x1002F7300   movq     0x648659(%rip), %rdi  ; _OBJC_CLASS_$_NSUserDefaults
0x1002F7307   movq     0x6ab3ca(%rip), %rsi  ; selector "standardUserDefaults"
0x1002F730E   callq    *0x647ebc(%rip)      ; _objc_msgSend
0x1002F7314   movq     %rax, %rdi           
0x1002F7317   callq    _objc_retainAutoreleasedReturnValue 
0x1002F731C   movq     0x6ab335(%rip), %rsi  ; selector "objectForKey:"
0x1002F7323   leaq     0x6753ce(%rip), %rdx  ; @"PreferredUWBChannelOverride"
0x1002F732A   movq     %rax, -0x98(%rbp)    
0x1002F7331   movq     %rax, %rdi           
0x1002F7334   callq    *0x647e96(%rip)      ; _objc_msgSend
0x1002F733A   movq     %rax, %rdi           
0x1002F733D   callq    _objc_retainAutoreleasedReturnValue 
0x1002F7342   movq     -0xb8(%rbp), %r15    
0x1002F7349   movq     %rax, %r12           
0x1002F734C   movl     -0x80(%rbp), %eax    
0x1002F734F   btl      $0x8, %eax           
0x1002F7353   jb       0x1002f742a          
0x1002F7359   movb     $0x9, %r13b          
0x1002F735C   movb     $0x5, %bl            
0x1002F735E   testq    %r12, %r12           
0x1002F7361   je       0x1002f7440          
0x1002F7367   movq     0x6472d2(%rip), %rdi  ; _OBJC_CLASS_$_NSNumber
0x1002F736E   callq    _objc_opt_class      
0x1002F7373   movq     %r12, %rdi           
0x1002F7376   movq     %rax, %rsi           
0x1002F7379   callq    _objc_opt_isKindOfClass 
0x1002F737E   testb    %al, %al             
0x1002F7380   je       0x1002f7440          
0x1002F7386   movq     0x6ab843(%rip), %rsi  ; selector "integerValue"
0x1002F738D   movq     %r12, %rdi           
0x1002F7390   callq    *0x647e3a(%rip)      ; _objc_msgSend
0x1002F7396   movq     %rax, -0x80(%rbp)    
0x1002F739A   movl     $0x5, %edi           
0x1002F739F   movl     $0x1, %esi           
0x1002F73A4   callq    0x100408cee          
0x1002F73A9   movzbl   %al, %eax            
0x1002F73AC   cmpl     %eax, -0x80(%rbp)    
0x1002F73AF   jne      0x1002f760c          
0x1002F73B5   leaq     0x6c6904(%rip), %rax  ; 
0x1002F73BC   movq     (%rax), %rdi         
0x1002F73BF   movq     %rdi, -0x80(%rbp)    
0x1002F73C3   xorl     %esi, %esi           
0x1002F73C5   callq    _os_log_type_enabled 
0x1002F73CA   movb     $0x5, %r13b          
0x1002F73CD   movb     $0x9, %bl            
0x1002F73CF   testb    %al, %al             
0x1002F73D1   je       0x1002f7433          
0x1002F73D3   leaq     -0x50(%rbp), %r8     
0x1002F73D7   movw     $0x0, (%r8)          
0x1002F73DD   leaq     -0x2f73e4(%rip), %rdi  ; 
0x1002F73E4   leaq     0x28ccd5(%rip), %rcx  ; string literal: "[PRConfigurationManager] Ch5 set as preferred in default write. Override preference for channel 9."
0x1002F73EB   movq     -0x80(%rbp), %rsi    
0x1002F73EF   xorl     %edx, %edx           
0x1002F73F1   movl     $0x2, %r9d           
0x1002F73F7   callq    __os_log_impl        
0x1002F73FC   jmp      0x1002f7433          
0x1002F73FE   leaq     0x6c68bb(%rip), %rax  ; 
0x1002F7405   movq     (%rax), %rbx         
0x1002F7408   movq     %rbx, %rdi           
0x1002F740B   movl     $0x10, %esi          
0x1002F7410   callq    _os_log_type_enabled 
0x1002F7415   testb    %al, %al             
0x1002F7417   je       0x1002f75c8          
0x1002F741D   movq     %rbx, %rdi           
0x1002F7420   callq    0x100494cb8          
0x1002F7425   jmp      0x1002f75c8          
0x1002F742A   cmpb     $0x5, %al            
0x1002F742C   jne      0x1002f743b          
0x1002F742E   movb     $0x5, %r13b          
0x1002F7431   movb     $0x9, %bl            
0x1002F7433   movl     -0x78(%rbp), %eax    
0x1002F7436   movl     -0x74(%rbp), %ecx    
0x1002F7439   jmp      0x1002f7446          
0x1002F743B   movb     $0x9, %r13b          
0x1002F743E   movb     $0x5, %bl            
0x1002F7440   movl     -0x74(%rbp), %eax    
0x1002F7443   movl     -0x78(%rbp), %ecx    
0x1002F7446   testb    $0x1, %cl            
0x1002F7449   je       0x1002f746d          
0x1002F744B   movq     -0x90(%rbp), %rcx    
0x1002F7452   movb     %r13b, (%rcx)        
0x1002F7455   testb    $0x1, %al            
0x1002F7457   je       0x1002f747e          
0x1002F7459   movzbl   %bl, %eax            
0x1002F745C   orl      $0x100, %eax         
0x1002F7461   movq     -0x88(%rbp), %rcx    
0x1002F7468   movw     %ax, (%rcx)          
0x1002F746B   jmp      0x1002f748f          
0x1002F746D   testb    $0x1, %al            
0x1002F746F   je       0x1002f7675          
0x1002F7475   movq     -0x90(%rbp), %rax    
0x1002F747C   movb     %bl, (%rax)          
0x1002F747E   movq     -0x88(%rbp), %rax    
0x1002F7485   cmpb     $0x1, 0x1(%rax)      
0x1002F7489   jne      0x1002f748f          
0x1002F748B   movb     $0x0, 0x1(%rax)      
0x1002F748F   leaq     0x6c682a(%rip), %rax  ; 
0x1002F7496   movq     (%rax), %r13         
0x1002F7499   movq     %r13, %rdi           
0x1002F749C   callq    *0x647d6e(%rip)      ; _objc_retain
0x1002F74A2   movq     %r13, %rdi           
0x1002F74A5   xorl     %esi, %esi           
0x1002F74A7   callq    _os_log_type_enabled 
0x1002F74AC   testb    %al, %al             
0x1002F74AE   je       0x1002f75a9          
0x1002F74B4   movq     -0x90(%rbp), %rax    
0x1002F74BB   movzbl   (%rax), %esi         
0x1002F74BE   leaq     -0x50(%rbp), %rdi    
0x1002F74C2   callq    0x100408b13          
0x1002F74C7   testb    $0x1, -0x50(%rbp)    
0x1002F74CB   je       0x1002f74d3          
0x1002F74CD   movq     -0x40(%rbp), %rbx    
0x1002F74D1   jmp      0x1002f74d7          
0x1002F74D3   leaq     -0x4f(%rbp), %rbx    
0x1002F74D7   movq     -0x88(%rbp), %rax    
0x1002F74DE   cmpb     $0x1, 0x1(%rax)      
0x1002F74E2   jne      0x1002f7505          
0x1002F74E4   movzbl   (%rax), %esi         
0x1002F74E7   leaq     -0xd0(%rbp), %rdi    
0x1002F74EE   callq    0x100408b13          
0x1002F74F3   testb    $0x1, -0xd0(%rbp)    
0x1002F74FA   je       0x1002f7546          
0x1002F74FC   movq     -0xc0(%rbp), %rax    
0x1002F7503   jmp      0x1002f754d          
0x1002F7505   leaq     -0x70(%rbp), %r8     
0x1002F7509   movl     $0x8200202, (%r8)    
0x1002F7510   movq     %rbx, 0x4(%r8)       
0x1002F7514   movw     $0x820, 0xc(%r8)     
0x1002F751B   leaq     0x21eb27(%rip), %rax  ; string literal: "None"
0x1002F7522   movq     %rax, 0xe(%r8)       
0x1002F7526   leaq     -0x2f752d(%rip), %rdi  ; 
0x1002F752D   leaq     0x28cccc(%rip), %rcx  ; string literal: "[PRConfigurationManager] Primary channel %s. Alternate channel %s"
0x1002F7534   movq     %r13, %rsi           
0x1002F7537   xorl     %edx, %edx           
0x1002F7539   movl     $0x16, %r9d          
0x1002F753F   callq    __os_log_impl        
0x1002F7544   jmp      0x1002f759a          
0x1002F7546   leaq     -0xcf(%rbp), %rax    
0x1002F754D   leaq     -0x70(%rbp), %r8     
0x1002F7551   movl     $0x8200202, (%r8)    
0x1002F7558   movq     %rbx, 0x4(%r8)       
0x1002F755C   movw     $0x820, 0xc(%r8)     
0x1002F7563   movq     %rax, 0xe(%r8)       
0x1002F7567   leaq     -0x2f756e(%rip), %rdi  ; 
0x1002F756E   leaq     0x28cc8b(%rip), %rcx  ; string literal: "[PRConfigurationManager] Primary channel %s. Alternate channel %s"
0x1002F7575   movq     %r13, %rsi           
0x1002F7578   xorl     %edx, %edx           
0x1002F757A   movl     $0x16, %r9d          
0x1002F7580   callq    __os_log_impl        
0x1002F7585   testb    $0x1, -0xd0(%rbp)    
0x1002F758C   je       0x1002f759a          
0x1002F758E   movq     -0xc0(%rbp), %rdi    
0x1002F7595   callq    __ZdlPv              
0x1002F759A   testb    $0x1, -0x50(%rbp)    
0x1002F759E   je       0x1002f75a9          
0x1002F75A0   movq     -0x40(%rbp), %rdi    
0x1002F75A4   callq    __ZdlPv              
0x1002F75A9   movq     %r13, %rdi           
0x1002F75AC   callq    *0x647c56(%rip)      ; _objc_release
0x1002F75B2   movq     %r12, %rdi           
0x1002F75B5   callq    *0x647c4d(%rip)      ; _objc_release
0x1002F75BB   movq     -0x98(%rbp), %rdi    
0x1002F75C2   callq    *0x647c40(%rip)      ; _objc_release
0x1002F75C8   movq     -0xb0(%rbp), %rdi    
0x1002F75CF   testq    %rdi, %rdi           
0x1002F75D2   je       0x1002f75e0          
0x1002F75D4   movq     %rdi, -0xa8(%rbp)    
0x1002F75DB   callq    __ZdlPv              
0x1002F75E0   cmpq     %r15, %r14           
0x1002F75E3   setne    %al                  
0x1002F75E6   movq     0x647403(%rip), %rcx  ; ___stack_chk_guard
0x1002F75ED   movq     (%rcx), %rcx         
0x1002F75F0   cmpq     -0x30(%rbp), %rcx    
0x1002F75F4   jne      0x1002f7696          
0x1002F75FA   addq     $0xa8, %rsp          
0x1002F7601   popq     %rbx                 
0x1002F7602   popq     %r12                 
0x1002F7604   popq     %r13                 
0x1002F7606   popq     %r14                 
0x1002F7608   popq     %r15                 
0x1002F760A   popq     %rbp                 
0x1002F760B   retq                          
0x1002F760C   movl     $0x9, %edi           
0x1002F7611   movl     $0x1, %esi           
0x1002F7616   callq    0x100408cee          
0x1002F761B   movzbl   %al, %eax            
0x1002F761E   leaq     0x6c669b(%rip), %rcx  ; 
0x1002F7625   movq     (%rcx), %rdi         
0x1002F7628   cmpl     %eax, -0x80(%rbp)    
0x1002F762B   jne      0x1002f769b          
0x1002F762D   movq     %rdi, -0x80(%rbp)    
0x1002F7631   xorl     %esi, %esi           
0x1002F7633   callq    _os_log_type_enabled 
0x1002F7638   testb    %al, %al             
0x1002F763A   je       0x1002f7440          
0x1002F7640   leaq     -0x50(%rbp), %r8     
0x1002F7644   movw     $0x0, (%r8)          
0x1002F764A   leaq     -0x2f7651(%rip), %rdi  ; 
0x1002F7651   leaq     0x28cad8(%rip), %rcx  ; string literal: "[PRConfigurationManager] Ch 9 set as preferred in default write. This is already the preference. Do nothing."
0x1002F7658   movq     -0x80(%rbp), %rsi    
0x1002F765C   xorl     %edx, %edx           
0x1002F765E   movl     $0x2, %r9d           
0x1002F7664   callq    __os_log_impl        
0x1002F7669   jmp      0x1002f7440          
0x1002F766E   callq    0x100494cec          
0x1002F7673   jmp      0x1002f7694          
0x1002F7675   leaq     0x23d4c4(%rip), %rdi  ; string literal: "getPreferredChannels"
0x1002F767C   leaq     0x23d4ee(%rip), %rsi  ; string literal: "PRConfigurationManager.mm"
0x1002F7683   leaq     0x23d501(%rip), %rcx  ; string literal: "leastPreferredChannelAllowed"
0x1002F768A   movl     $0xb8, %edx          
0x1002F768F   callq    ___assert_rtn        
0x1002F7694   ud2                           
0x1002F7696   callq    ___stack_chk_fail    
0x1002F769B   movq     %rdi, %rbx           
0x1002F769E   movl     $0x11, %esi          
0x1002F76A3   callq    _os_log_type_enabled 
0x1002F76A8   testb    %al, %al             
0x1002F76AA   je       0x1002f76b8          
0x1002F76AC   movq     -0x80(%rbp), %rdi    
0x1002F76B0   movq     %rbx, %rsi           
0x1002F76B3   callq    0x100494da1          
0x1002F76B8   leaq     0x6c6601(%rip), %rax  ; 
0x1002F76BF   movq     (%rax), %rbx         
0x1002F76C2   movq     %rbx, %rdi           
0x1002F76C5   movl     $0x1, %esi           
0x1002F76CA   callq    _os_log_type_enabled 
0x1002F76CF   testb    %al, %al             
0x1002F76D1   je       0x1002f772b          
0x1002F76D3   leaq     -0x50(%rbp), %r8     
0x1002F76D7   movl     $0x8200302, (%r8)    
0x1002F76DE   leaq     0x23d397(%rip), %rax  ; string literal: "/AppleInternal/Library/BuildRoots/4~CJn6ugAfTsVHwNBTMJZhrsgFECudd-NBHwM3moE/Library/Caches/com.apple.xbs/TemporaryDirectory.RAIpEv/Sources/Proximity/Libraries/DaemonCore/PRConfigurationManager.mm"
0x1002F76E5   movq     %rax, 0x4(%r8)       
0x1002F76E9   movw     $0x400, 0xc(%r8)     
0x1002F76F0   movl     $0xa8, 0xe(%r8)      
0x1002F76F8   movw     $0x820, 0x12(%r8)    
0x1002F76FF   leaq     0x23d43a(%rip), %rax  ; string literal: "getPreferredChannels"
0x1002F7706   movq     %rax, 0x14(%r8)      
0x1002F770A   leaq     -0x2f7711(%rip), %rdi  ; 
0x1002F7711   leaq     0x2576d8(%rip), %rcx  ; string literal: "%s:%d: assertion failure in %s"
0x1002F7718   movq     %rbx, %rsi           
0x1002F771B   movl     $0x1, %edx           
0x1002F7720   movl     $0x1c, %r9d          
0x1002F7726   callq    __os_log_impl        
0x1002F772B   callq    _abort               
0x1002F7730   movq     %rax, %r15           
0x1002F7733   testb    $0x1, -0x50(%rbp)    
0x1002F7737   je       0x1002f7749          
0x1002F7739   movq     -0x40(%rbp), %rdi    
0x1002F773D   callq    __ZdlPv              
0x1002F7742   jmp      0x1002f7749          
0x1002F7744   jmp      0x1002f775e          
0x1002F7746   movq     %rax, %r15           
0x1002F7749   movq     %r13, %rdi           
0x1002F774C   callq    *0x647ab6(%rip)      ; _objc_release
0x1002F7752   jmp      0x1002f7761          
0x1002F7754   movq     %rax, %r15           
0x1002F7757   jmp      0x1002f776a          
0x1002F7759   movq     %rax, %r15           
0x1002F775C   jmp      0x1002f7777          
0x1002F775E   movq     %rax, %r15           
0x1002F7761   movq     %r12, %rdi           
0x1002F7764   callq    *0x647a9e(%rip)      ; _objc_release
0x1002F776A   movq     -0x98(%rbp), %rdi    
0x1002F7771   callq    *0x647a91(%rip)      ; _objc_release
0x1002F7777   movq     -0xb0(%rbp), %rdi    
0x1002F777E   testq    %rdi, %rdi           
0x1002F7781   je       0x1002f7794          
0x1002F7783   movq     %rdi, -0xa8(%rbp)    
0x1002F778A   callq    __ZdlPv              
0x1002F778F   jmp      0x1002f7794          
0x1002F7791   movq     %rax, %r15           
0x1002F7794   movq     %r15, %rdi           
0x1002F7797   callq    __Unwind_Resume      
