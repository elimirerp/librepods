0x1002ED041   movl     $0x2, %esi           
0x1002ED046   callq    _os_log_type_enabled 
0x1002ED04B   testb    %al, %al             
0x1002ED04D   je       0x1002ed057          
0x1002ED04F   movq     %r12, %rdi           
0x1002ED052   callq    0x1004948b5          
0x1002ED057   movl     $0x0, (%r14,%r13)    
0x1002ED05F   movq     0x6bc5f2(%rip), %rax  ; 
0x1002ED066   cmpb     $0x1, 0x8(%r14,%rax) 
0x1002ED06C   jne      0x1002ed074          
0x1002ED06E   movb     $0x0, 0x8(%r14,%rax) 
0x1002ED074   movq     0x6bc545(%rip), %rax  ; 
0x1002ED07B   movb     $0x0, (%r14,%rax)    
0x1002ED080   movq     %r15, %rdi           
0x1002ED083   callq    *0x65217f(%rip)      ; _objc_release
0x1002ED089   movq     %rbx, %rdi           
0x1002ED08C   callq    *0x652176(%rip)      ; _objc_release
0x1002ED092   movq     0x651957(%rip), %rax  ; ___stack_chk_guard
0x1002ED099   movq     (%rax), %rax         
0x1002ED09C   cmpq     -0x30(%rbp), %rax    
0x1002ED0A0   jne      0x1002ed0b1          
0x1002ED0A2   addq     $0x28, %rsp          
0x1002ED0A6   popq     %rbx                 
0x1002ED0A7   popq     %r12                 
0x1002ED0A9   popq     %r13                 
0x1002ED0AB   popq     %r14                 
0x1002ED0AD   popq     %r15                 
0x1002ED0AF   popq     %rbp                 
0x1002ED0B0   retq                          
0x1002ED0B1   callq    ___stack_chk_fail    
0x1002ED0B6   callq    0x1001394f0          
0x1002ED0BB   ud2                           
0x1002ED0BD   movq     %rax, %r14           
0x1002ED0C0   movq     %r15, %rdi           
0x1002ED0C3   callq    *0x65213f(%rip)      ; _objc_release
0x1002ED0C9   jmp      0x1002ed0ea          
0x1002ED0CB   movq     %rax, %r14           
0x1002ED0CE   movq     %r15, %rdi           
0x1002ED0D1   callq    *0x652131(%rip)      ; _objc_release
0x1002ED0D7   jmp      0x1002ed0ea          
0x1002ED0D9   movq     %rax, %r14           
0x1002ED0DC   movq     %r15, %rdi           
0x1002ED0DF   callq    *0x652123(%rip)      ; _objc_release
0x1002ED0E5   jmp      0x1002ed0ea          
0x1002ED0E7   movq     %rax, %r14           
0x1002ED0EA   movq     %rbx, %rdi           
0x1002ED0ED   callq    *0x652115(%rip)      ; _objc_release
0x1002ED0F3   jmp      0x1002ed0f8          
0x1002ED0F5   movq     %rax, %r14           
0x1002ED0F8   movq     %r14, %rdi           
0x1002ED0FB   callq    __Unwind_Resume      
0x1002ED100   pushq    %rbp                 
0x1002ED101   movq     %rsp, %rbp           
0x1002ED104   pushq    %r14                 
0x1002ED106   pushq    %rbx                 
0x1002ED107   movq     %rdi, %rbx           
0x1002ED10A   movq     0x6bc437(%rip), %rax  ; 
0x1002ED111   movq     (%rdi,%rax), %rdi    
0x1002ED115   callq    _dispatch_assert_queue$V2 
0x1002ED11A   movq     0x6b9007(%rip), %rsi  ; selector "_populateRoseStartOptionsAndStartRanging"
0x1002ED121   movq     %rbx, %rdi           
0x1002ED124   callq    *0x6520a6(%rip)      ; _objc_msgSend
0x1002ED12A   movq     %rax, %rdi           
0x1002ED12D   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED132   movq     %rax, %r14           
0x1002ED135   testq    %rax, %rax           
0x1002ED138   je       0x1002ed14d          
0x1002ED13A   movq     0x6b8fd7(%rip), %rsi  ; selector "_handleError:"
0x1002ED141   movq     %rbx, %rdi           
0x1002ED144   movq     %r14, %rdx           
0x1002ED147   callq    *0x652083(%rip)      ; _objc_msgSend
0x1002ED14D   movq     0x6bc424(%rip), %rax  ; 
0x1002ED154   movl     (%rbx,%rax), %eax    
0x1002ED157   testl    %eax, %eax           
0x1002ED159   je       0x1002ed167          
0x1002ED15B   cmpl     $0x1, %eax           
0x1002ED15E   jne      0x1002ed176          
0x1002ED160   movl     $0x3, %eax           
0x1002ED165   jmp      0x1002ed16c          
0x1002ED167   movl     $0x2, %eax           
0x1002ED16C   movq     0x6bc425(%rip), %rcx  ; 
0x1002ED173   movl     %eax, (%rbx,%rcx)    
0x1002ED176   movq     %r14, %rdi           
0x1002ED179   popq     %rbx                 
0x1002ED17A   popq     %r14                 
0x1002ED17C   popq     %rbp                 
0x1002ED17D   jmpq     *0x652085(%rip)      ; _objc_release
0x1002ED183   movq     %rax, %rbx           
0x1002ED186   movq     %r14, %rdi           
0x1002ED189   callq    *0x652079(%rip)      ; _objc_release
0x1002ED18F   movq     %rbx, %rdi           
0x1002ED192   callq    __Unwind_Resume      
0x1002ED197   pushq    %rbp                 
0x1002ED198   movq     %rsp, %rbp           
0x1002ED19B   pushq    %r15                 
0x1002ED19D   pushq    %r14                 
0x1002ED19F   pushq    %r13                 
0x1002ED1A1   pushq    %r12                 
0x1002ED1A3   pushq    %rbx                 
0x1002ED1A4   subq     $0x68, %rsp          
0x1002ED1A8   movl     %ecx, %r15d          
0x1002ED1AB   movq     %rdx, %rbx           
0x1002ED1AE   movq     %rdi, %r14           
0x1002ED1B1   movq     0x651838(%rip), %rax  ; ___stack_chk_guard
0x1002ED1B8   movq     (%rax), %rax         
0x1002ED1BB   movq     %rax, -0x30(%rbp)    
0x1002ED1BF   leaq     0x6d0afa(%rip), %rax  ; 
0x1002ED1C6   movq     (%rax), %r12         
0x1002ED1C9   movq     %r12, %rdi           
0x1002ED1CC   xorl     %esi, %esi           
0x1002ED1CE   callq    _os_log_type_enabled 
0x1002ED1D3   movq     0x6bc3be(%rip), %r13  ; 
0x1002ED1DA   testb    %al, %al             
0x1002ED1DC   je       0x1002ed257          
0x1002ED1DE   movl     (%r14,%r13), %edx    
0x1002ED1E2   decl     %edx                 
0x1002ED1E4   leaq     0x247520(%rip), %rax  ; string literal: "Invalid"
0x1002ED1EB   movq     %rax, %rcx           
0x1002ED1EE   cmpl     $0x4, %edx           
0x1002ED1F1   ja       0x1002ed200          
0x1002ED1F3   movl     %edx, %ecx           
0x1002ED1F5   leaq     0x667734(%rip), %rdx  ; 
0x1002ED1FC   movq     (%rdx,%rcx,8), %rcx  
0x1002ED200   movq     0x6bc389(%rip), %rdx  ; 
0x1002ED207   movl     (%r14,%rdx), %edx    
0x1002ED20B   decl     %edx                 
0x1002ED20D   cmpl     $0x5, %edx           
0x1002ED210   ja       0x1002ed21f          
0x1002ED212   movl     %edx, %eax           
0x1002ED214   leaq     0x66773d(%rip), %rdx  ; 
0x1002ED21B   movq     (%rdx,%rax,8), %rax  
0x1002ED21F   leaq     -0x50(%rbp), %r8     
0x1002ED223   movl     $0x8200202, (%r8)    
0x1002ED22A   movq     %rcx, 0x4(%r8)       
0x1002ED22E   movw     $0x820, 0xc(%r8)     
0x1002ED235   movq     %rax, 0xe(%r8)       
0x1002ED239   leaq     -0x2ed240(%rip), %rdi  ; 
0x1002ED240   leaq     0x295a99(%rip), %rcx  ; string literal: "#ses-item-loc,_stopRangingMangagerAndCompanion, Local Ranging State: %s, Companion Ranging State: %s"
0x1002ED247   movq     %r12, %rsi           
0x1002ED24A   xorl     %edx, %edx           
0x1002ED24C   movl     $0x16, %r9d          
0x1002ED252   callq    __os_log_impl        
0x1002ED257   movl     (%r14,%r13), %eax    
0x1002ED25B   leal     -0x2(%rax), %ecx     
0x1002ED25E   cmpl     $0x2, %ecx           
0x1002ED261   jb       0x1002ed317          
0x1002ED267   movb     $0x1, %r12b          
0x1002ED26A   cmpl     $0x4, %eax           
0x1002ED26D   je       0x1002ed3d7          
0x1002ED273   testl    %eax, %eax           
0x1002ED275   jne      0x1002ed3b1          
0x1002ED27B   testq    %rbx, %rbx           
0x1002ED27E   je       0x1002ed3ae          
0x1002ED284   movq     0x651375(%rip), %r15  ; _OBJC_CLASS_$_NSError
0x1002ED28B   movq     0x65131e(%rip), %rax  ; _NSLocalizedDescriptionKey
0x1002ED292   movq     (%rax), %rax         
0x1002ED295   leaq     -0x60(%rbp), %rcx    
0x1002ED299   movq     %rax, (%rcx)         
0x1002ED29C   leaq     0x67edf5(%rip), %rax  ; @"Local ranging state is not valid, cannot stop."
0x1002ED2A3   leaq     -0x58(%rbp), %rdx    
0x1002ED2A7   movq     %rax, (%rdx)         
0x1002ED2AA   movq     0x65264f(%rip), %rdi  ; _OBJC_CLASS_$_NSDictionary
0x1002ED2B1   movq     0x6b5470(%rip), %rsi  ; selector "dictionaryWithObjects:forKeys:count:"
0x1002ED2B8   movl     $0x1, %r8d           
0x1002ED2BE   callq    *0x651f0c(%rip)      ; _objc_msgSend
0x1002ED2C4   movq     %rax, %rdi           
0x1002ED2C7   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED2CC   movq     %rax, %r14           
0x1002ED2CF   leaq     0x662f22(%rip), %rax  ; 
0x1002ED2D6   movq     (%rax), %rdx         
0x1002ED2D9   movq     0x6b53c0(%rip), %rsi  ; selector "errorWithDomain:code:userInfo:"
0x1002ED2E0   movq     %r15, %rdi           
0x1002ED2E3   movq     $-0x16ff, %rcx       
0x1002ED2EA   movq     %r14, %r8            
0x1002ED2ED   callq    *0x651edd(%rip)      ; _objc_msgSend
0x1002ED2F3   movq     %rax, %rdi           
0x1002ED2F6   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED2FB   movq     %rax, %r15           
0x1002ED2FE   movq     %rax, %rdi           
0x1002ED301   callq    _objc_autorelease    
0x1002ED306   movq     %r15, (%rbx)         
0x1002ED309   movq     %r14, %rdi           
0x1002ED30C   callq    *0x651ef6(%rip)      ; _objc_release
0x1002ED312   jmp      0x1002ed3ae          
0x1002ED317   testq    %rbx, %rbx           
0x1002ED31A   je       0x1002ed3ae          
0x1002ED320   movq     0x6512d9(%rip), %r15  ; _OBJC_CLASS_$_NSError
0x1002ED327   movq     0x651282(%rip), %rax  ; _NSLocalizedDescriptionKey
0x1002ED32E   movq     (%rax), %rax         
0x1002ED331   leaq     -0x70(%rbp), %rcx    
0x1002ED335   movq     %rax, (%rcx)         
0x1002ED338   leaq     0x67ed79(%rip), %rax  ; @"Received stopCompanionRanging while Local ranging is starting."
0x1002ED33F   leaq     -0x68(%rbp), %rdx    
0x1002ED343   movq     %rax, (%rdx)         
0x1002ED346   movq     0x6525b3(%rip), %rdi  ; _OBJC_CLASS_$_NSDictionary
0x1002ED34D   movq     0x6b53d4(%rip), %rsi  ; selector "dictionaryWithObjects:forKeys:count:"
0x1002ED354   movl     $0x1, %r8d           
0x1002ED35A   callq    *0x651e70(%rip)      ; _objc_msgSend
0x1002ED360   movq     %rax, %rdi           
0x1002ED363   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED368   movq     %rax, %r14           
0x1002ED36B   leaq     0x662e86(%rip), %rax  ; 
0x1002ED372   movq     (%rax), %rdx         
0x1002ED375   movq     0x6b5324(%rip), %rsi  ; selector "errorWithDomain:code:userInfo:"
0x1002ED37C   movq     %r15, %rdi           
0x1002ED37F   movq     $-0x16ff, %rcx       
0x1002ED386   movq     %r14, %r8            
0x1002ED389   callq    *0x651e41(%rip)      ; _objc_msgSend
0x1002ED38F   movq     %rax, %rdi           
0x1002ED392   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED397   movq     %rax, %r15           
0x1002ED39A   movq     %rax, %rdi           
0x1002ED39D   callq    _objc_autorelease    
0x1002ED3A2   movq     %r15, (%rbx)         
0x1002ED3A5   movq     %r14, %rdi           
0x1002ED3A8   callq    *0x651e5a(%rip)      ; _objc_release
0x1002ED3AE   xorl     %r12d, %r12d         
0x1002ED3B1   movq     0x651638(%rip), %rax  ; ___stack_chk_guard
0x1002ED3B8   movq     (%rax), %rax         
0x1002ED3BB   cmpq     -0x30(%rbp), %rax    
0x1002ED3BF   jne      0x1002ed50d          
0x1002ED3C5   movl     %r12d, %eax          
0x1002ED3C8   addq     $0x68, %rsp          
0x1002ED3CC   popq     %rbx                 
0x1002ED3CD   popq     %r12                 
0x1002ED3CF   popq     %r13                 
0x1002ED3D1   popq     %r14                 
0x1002ED3D3   popq     %r15                 
0x1002ED3D5   popq     %rbp                 
0x1002ED3D6   retq                          
0x1002ED3D7   movq     0x6b8d12(%rip), %rsi  ; selector "_getRoseServiceRequestTicketId"
0x1002ED3DE   movq     %r14, %rdi           
0x1002ED3E1   callq    *0x651de9(%rip)      ; _objc_msgSend
0x1002ED3E7   btl      $0x10, %eax          
0x1002ED3EB   jb       0x1002ed4a5          
0x1002ED3F1   testq    %rbx, %rbx           
0x1002ED3F4   je       0x1002ed3ae          
0x1002ED3F6   movq     0x651203(%rip), %r15  ; _OBJC_CLASS_$_NSError
0x1002ED3FD   movq     0x6511ac(%rip), %rax  ; _NSLocalizedDescriptionKey
0x1002ED404   movq     (%rax), %rax         
0x1002ED407   leaq     -0x90(%rbp), %rcx    
0x1002ED40E   movq     %rax, (%rcx)         
0x1002ED411   leaq     0x67ecc0(%rip), %rax  ; @"Failed to stop ranging"
0x1002ED418   leaq     -0x80(%rbp), %rdx    
0x1002ED41C   movq     %rax, (%rdx)         
0x1002ED41F   movq     0x651192(%rip), %rax  ; _NSLocalizedFailureReasonErrorKey
0x1002ED426   movq     (%rax), %rax         
0x1002ED429   movq     %rax, 0x8(%rcx)      
0x1002ED42D   leaq     0x67ecc4(%rip), %rax  ; @"No service request."
0x1002ED434   movq     %rax, 0x8(%rdx)      
0x1002ED438   movq     0x6524c1(%rip), %rdi  ; _OBJC_CLASS_$_NSDictionary
0x1002ED43F   movq     0x6b52e2(%rip), %rsi  ; selector "dictionaryWithObjects:forKeys:count:"
0x1002ED446   movl     $0x2, %r8d           
0x1002ED44C   callq    *0x651d7e(%rip)      ; _objc_msgSend
0x1002ED452   movq     %rax, %rdi           
0x1002ED455   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED45A   movq     %rax, %r14           
0x1002ED45D   leaq     0x662d94(%rip), %rax  ; 
0x1002ED464   movq     (%rax), %rdx         
0x1002ED467   movq     0x6b5232(%rip), %rsi  ; selector "errorWithDomain:code:userInfo:"
0x1002ED46E   movq     %r15, %rdi           
0x1002ED471   movq     $-0x16ff, %rcx       
0x1002ED478   movq     %r14, %r8            
0x1002ED47B   callq    *0x651d4f(%rip)      ; _objc_msgSend
0x1002ED481   movq     %rax, %rdi           
0x1002ED484   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED489   movq     %rax, %r15           
0x1002ED48C   movq     %rax, %rdi           
0x1002ED48F   callq    _objc_autorelease    
0x1002ED494   movq     %r15, (%rbx)         
0x1002ED497   movq     %r14, %rdi           
0x1002ED49A   callq    *0x651d68(%rip)      ; _objc_release
0x1002ED4A0   jmp      0x1002ed3ae          
0x1002ED4A5   movl     $0x5, (%r14,%r13)    
0x1002ED4AD   testb    %r15b, %r15b         
0x1002ED4B0   je       0x1002ed4f0          
0x1002ED4B2   movq     0x6b8c77(%rip), %rsi  ; selector "_reconfigureRangingSession"
0x1002ED4B9   movq     %r14, %rdi           
0x1002ED4BC   callq    *0x651d0e(%rip)      ; _objc_msgSend
0x1002ED4C2   movq     %rax, %rdi           
0x1002ED4C5   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED4CA   movq     %rax, %r15           
0x1002ED4CD   testq    %rax, %rax           
0x1002ED4D0   je       0x1002ed500          
0x1002ED4D2   testq    %rbx, %rbx           
0x1002ED4D5   je       0x1002ed4e2          
0x1002ED4D7   movq     %r15, %rdi           
0x1002ED4DA   callq    _objc_retainAutorelease 
0x1002ED4DF   movq     %r15, (%rbx)         
0x1002ED4E2   movq     %r15, %rdi           
0x1002ED4E5   callq    *0x651d1d(%rip)      ; _objc_release
0x1002ED4EB   jmp      0x1002ed3ae          
0x1002ED4F0   movq     0x6b8c09(%rip), %rsi  ; selector "_invalidateRangingSession"
0x1002ED4F7   movq     %r14, %rdi           
0x1002ED4FA   callq    *0x651cd0(%rip)      ; _objc_msgSend
0x1002ED500   movl     $0x1, (%r14,%r13)    
0x1002ED508   jmp      0x1002ed3b1          
0x1002ED50D   callq    ___stack_chk_fail    
0x1002ED512   jmp      0x1002ed516          
0x1002ED514   jmp      0x1002ed516          
0x1002ED516   movq     %rax, %rbx           
0x1002ED519   movq     %r14, %rdi           
0x1002ED51C   callq    *0x651ce6(%rip)      ; _objc_release
0x1002ED522   jmp      0x1002ed527          
0x1002ED524   movq     %rax, %rbx           
0x1002ED527   movq     %rbx, %rdi           
0x1002ED52A   callq    __Unwind_Resume      
0x1002ED52F   pushq    %rbp                 
0x1002ED530   movq     %rsp, %rbp           
0x1002ED533   pushq    %r15                 
0x1002ED535   pushq    %r14                 
0x1002ED537   pushq    %rbx                 
0x1002ED538   subq     $0x18, %rsp          
0x1002ED53C   movq     %rdi, %rbx           
0x1002ED53F   movq     0x6514aa(%rip), %rax  ; ___stack_chk_guard
0x1002ED546   movq     (%rax), %rax         
0x1002ED549   movq     %rax, -0x20(%rbp)    
0x1002ED54D   leaq     0x6d076c(%rip), %r15  ; 
0x1002ED554   movq     (%r15), %r14         
0x1002ED557   movq     %r14, %rdi           
0x1002ED55A   xorl     %esi, %esi           
0x1002ED55C   callq    _os_log_type_enabled 
0x1002ED561   testb    %al, %al             
0x1002ED563   je       0x1002ed58d          
0x1002ED565   leaq     -0x30(%rbp), %r8     
0x1002ED569   movw     $0x0, (%r8)          
0x1002ED56F   leaq     -0x2ed576(%rip), %rdi  ; 
0x1002ED576   leaq     0x2957d3(%rip), %rcx  ; string literal: "#ses-item-loc,================== Print State: Item Localizer Session =================="
0x1002ED57D   movq     %r14, %rsi           
0x1002ED580   xorl     %edx, %edx           
0x1002ED582   movl     $0x2, %r9d           
0x1002ED588   callq    __os_log_impl        
0x1002ED58D   movq     (%r15), %r14         
0x1002ED590   movq     %r14, %rdi           
0x1002ED593   xorl     %esi, %esi           
0x1002ED595   callq    _os_log_type_enabled 
0x1002ED59A   testb    %al, %al             
0x1002ED59C   je       0x1002ed5f5          
0x1002ED59E   movq     0x6bbffb(%rip), %rax  ; 
0x1002ED5A5   movl     (%rbx,%rax), %eax    
0x1002ED5A8   decl     %eax                 
0x1002ED5AA   cmpl     $0x6, %eax           
0x1002ED5AD   ja       0x1002ed5c1          
0x1002ED5AF   movl     %eax, %eax           
0x1002ED5B1   leaq     0x302b7c(%rip), %rcx  ; 
0x1002ED5B8   movslq   (%rcx,%rax,4), %rax  
0x1002ED5BC   addq     %rcx, %rax           
0x1002ED5BF   jmp      0x1002ed5c8          
0x1002ED5C1   leaq     0x2471b6(%rip), %rax  ; string literal: "Client Initialized"
0x1002ED5C8   leaq     -0x30(%rbp), %r8     
0x1002ED5CC   movl     $0x8200102, (%r8)    
0x1002ED5D3   movq     %rax, 0x4(%r8)       
0x1002ED5D7   leaq     -0x2ed5de(%rip), %rdi  ; 
0x1002ED5DE   leaq     0x2957cb(%rip), %rcx  ; string literal: "#ses-item-loc,Client Request State:       %s"
0x1002ED5E5   movq     %r14, %rsi           
0x1002ED5E8   xorl     %edx, %edx           
0x1002ED5EA   movl     $0xc, %r9d           
0x1002ED5F0   callq    __os_log_impl        
0x1002ED5F5   movq     (%r15), %r14         
0x1002ED5F8   movq     %r14, %rdi           
0x1002ED5FB   xorl     %esi, %esi           
0x1002ED5FD   callq    _os_log_type_enabled 
0x1002ED602   testb    %al, %al             
0x1002ED604   je       0x1002ed65a          
0x1002ED606   movq     0x6bbf8b(%rip), %rax  ; 
0x1002ED60D   movl     (%rbx,%rax), %eax    
0x1002ED610   decl     %eax                 
0x1002ED612   cmpl     $0x4, %eax           
0x1002ED615   ja       0x1002ed626          
0x1002ED617   movl     %eax, %eax           
0x1002ED619   leaq     0x667310(%rip), %rcx  ; 
0x1002ED620   movq     (%rcx,%rax,8), %rax  
0x1002ED624   jmp      0x1002ed62d          
0x1002ED626   leaq     0x2470de(%rip), %rax  ; string literal: "Invalid"
0x1002ED62D   leaq     -0x30(%rbp), %r8     
0x1002ED631   movl     $0x8200102, (%r8)    
0x1002ED638   movq     %rax, 0x4(%r8)       
0x1002ED63C   leaq     -0x2ed643(%rip), %rdi  ; 
0x1002ED643   leaq     0x295796(%rip), %rcx  ; string literal: "#ses-item-loc,Local Ranging State:        %s"
0x1002ED64A   movq     %r14, %rsi           
0x1002ED64D   xorl     %edx, %edx           
0x1002ED64F   movl     $0xc, %r9d           
0x1002ED655   callq    __os_log_impl        
0x1002ED65A   movq     (%r15), %r14         
0x1002ED65D   movq     %r14, %rdi           
0x1002ED660   xorl     %esi, %esi           
0x1002ED662   callq    _os_log_type_enabled 
0x1002ED667   testb    %al, %al             
0x1002ED669   je       0x1002ed6c2          
0x1002ED66B   movq     0x6bbf16(%rip), %rax  ; 
0x1002ED672   movl     (%rbx,%rax), %eax    
0x1002ED675   decl     %eax                 
0x1002ED677   cmpl     $0x3, %eax           
0x1002ED67A   ja       0x1002ed68e          
0x1002ED67C   movl     %eax, %eax           
0x1002ED67E   leaq     0x302acb(%rip), %rcx  ; 
0x1002ED685   movslq   (%rcx,%rax,4), %rax  
0x1002ED689   addq     %rcx, %rax           
0x1002ED68C   jmp      0x1002ed695          
0x1002ED68E   leaq     0x230504(%rip), %rax  ; string literal: "Unknown"
0x1002ED695   leaq     -0x30(%rbp), %r8     
0x1002ED699   movl     $0x8200102, (%r8)    
0x1002ED6A0   movq     %rax, 0x4(%r8)       
0x1002ED6A4   leaq     -0x2ed6ab(%rip), %rdi  ; 
0x1002ED6AB   leaq     0x29575e(%rip), %rcx  ; string literal: "#ses-item-loc,Companion Connection State: %s"
0x1002ED6B2   movq     %r14, %rsi           
0x1002ED6B5   xorl     %edx, %edx           
0x1002ED6B7   movl     $0xc, %r9d           
0x1002ED6BD   callq    __os_log_impl        
0x1002ED6C2   movq     (%r15), %r14         
0x1002ED6C5   movq     %r14, %rdi           
0x1002ED6C8   xorl     %esi, %esi           
0x1002ED6CA   callq    _os_log_type_enabled 
0x1002ED6CF   testb    %al, %al             
0x1002ED6D1   je       0x1002ed727          
0x1002ED6D3   movq     0x6bbeb6(%rip), %rax  ; 
0x1002ED6DA   movl     (%rbx,%rax), %eax    
0x1002ED6DD   decl     %eax                 
0x1002ED6DF   cmpl     $0x5, %eax           
0x1002ED6E2   ja       0x1002ed6f3          
0x1002ED6E4   movl     %eax, %eax           
0x1002ED6E6   leaq     0x66726b(%rip), %rcx  ; 
0x1002ED6ED   movq     (%rcx,%rax,8), %rax  
0x1002ED6F1   jmp      0x1002ed6fa          
0x1002ED6F3   leaq     0x247011(%rip), %rax  ; string literal: "Invalid"
0x1002ED6FA   leaq     -0x30(%rbp), %r8     
0x1002ED6FE   movl     $0x8200102, (%r8)    
0x1002ED705   movq     %rax, 0x4(%r8)       
0x1002ED709   leaq     -0x2ed710(%rip), %rdi  ; 
0x1002ED710   leaq     0x295729(%rip), %rcx  ; string literal: "#ses-item-loc,Companion Ranging State:    %s"
0x1002ED717   movq     %r14, %rsi           
0x1002ED71A   xorl     %edx, %edx           
0x1002ED71C   movl     $0xc, %r9d           
0x1002ED722   callq    __os_log_impl        
0x1002ED727   movq     (%r15), %r14         
0x1002ED72A   movq     %r14, %rdi           
0x1002ED72D   xorl     %esi, %esi           
0x1002ED72F   callq    _os_log_type_enabled 
0x1002ED734   testb    %al, %al             
0x1002ED736   je       0x1002ed78f          
0x1002ED738   movq     0x6bbe41(%rip), %rax  ; 
0x1002ED73F   movl     (%rbx,%rax), %eax    
0x1002ED742   decl     %eax                 
0x1002ED744   cmpl     $0x3, %eax           
0x1002ED747   ja       0x1002ed75b          
0x1002ED749   movl     %eax, %eax           
0x1002ED74B   leaq     0x302a0e(%rip), %rcx  ; 
0x1002ED752   movslq   (%rcx,%rax,4), %rax  
0x1002ED756   addq     %rcx, %rax           
0x1002ED759   jmp      0x1002ed762          
0x1002ED75B   leaq     0x24702f(%rip), %rax  ; string literal: "Rose off"
0x1002ED762   leaq     -0x30(%rbp), %r8     
0x1002ED766   movl     $0x8200102, (%r8)    
0x1002ED76D   movq     %rax, 0x4(%r8)       
0x1002ED771   leaq     -0x2ed778(%rip), %rdi  ; 
0x1002ED778   leaq     0x2956f1(%rip), %rcx  ; string literal: "#ses-item-loc,Companion Rose State:       %s"
0x1002ED77F   movq     %r14, %rsi           
0x1002ED782   xorl     %edx, %edx           
0x1002ED784   movl     $0xc, %r9d           
0x1002ED78A   callq    __os_log_impl        
0x1002ED78F   movq     (%r15), %rbx         
0x1002ED792   movq     %rbx, %rdi           
0x1002ED795   xorl     %esi, %esi           
0x1002ED797   callq    _os_log_type_enabled 
0x1002ED79C   testb    %al, %al             
0x1002ED79E   je       0x1002ed7c8          
0x1002ED7A0   leaq     -0x30(%rbp), %r8     
0x1002ED7A4   movw     $0x0, (%r8)          
0x1002ED7AA   leaq     -0x2ed7b1(%rip), %rdi  ; 
0x1002ED7B1   leaq     0x2956e8(%rip), %rcx  ; string literal: "#ses-item-loc,========================================================================="
0x1002ED7B8   movq     %rbx, %rsi           
0x1002ED7BB   xorl     %edx, %edx           
0x1002ED7BD   movl     $0x2, %r9d           
0x1002ED7C3   callq    __os_log_impl        
0x1002ED7C8   movq     0x651221(%rip), %rax  ; ___stack_chk_guard
0x1002ED7CF   movq     (%rax), %rax         
0x1002ED7D2   cmpq     -0x20(%rbp), %rax    
0x1002ED7D6   jne      0x1002ed7e3          
0x1002ED7D8   addq     $0x18, %rsp          
0x1002ED7DC   popq     %rbx                 
0x1002ED7DD   popq     %r14                 
0x1002ED7DF   popq     %r15                 
0x1002ED7E1   popq     %rbp                 
0x1002ED7E2   retq                          
0x1002ED7E3   callq    ___stack_chk_fail    
0x1002ED7E8   pushq    %rbp                 
0x1002ED7E9   movq     %rsp, %rbp           
0x1002ED7EC   pushq    %r15                 
0x1002ED7EE   pushq    %r14                 
0x1002ED7F0   pushq    %rbx                 
0x1002ED7F1   subq     $0x38, %rsp          
0x1002ED7F5   movq     %rdi, %rbx           
0x1002ED7F8   movq     0x6511f1(%rip), %rax  ; ___stack_chk_guard
0x1002ED7FF   movq     (%rax), %rax         
0x1002ED802   movq     %rax, -0x20(%rbp)    
0x1002ED806   movq     0x6b892b(%rip), %rsi  ; selector "_printState"
0x1002ED80D   callq    *0x6519bd(%rip)      ; _objc_msgSend
0x1002ED813   movq     0x6bbd7e(%rip), %rax  ; 
0x1002ED81A   movl     (%rbx,%rax), %eax    
0x1002ED81D   cmpl     $0x4, %eax           
0x1002ED820   je       0x1002ed860          
0x1002ED822   cmpl     $0x1, %eax           
0x1002ED825   jne      0x1002eda7f          
0x1002ED82B   movq     0x6bbd5e(%rip), %rax  ; 
0x1002ED832   cmpl     $0x1, (%rbx,%rax)    
0x1002ED836   jne      0x1002eda7f          
0x1002ED83C   movq     0x6bbd5d(%rip), %rax  ; 
0x1002ED843   movl     (%rbx,%rax), %ecx    
0x1002ED846   cmpl     $0x4, %ecx           
0x1002ED849   je       0x1002ed895          
0x1002ED84B   cmpl     $0x5, %ecx           
0x1002ED84E   jne      0x1002ed93c          
0x1002ED854   movl     $0x6, (%rbx,%rax)    
0x1002ED85B   jmp      0x1002eda7f          
0x1002ED860   movq     0x6bbd29(%rip), %rax  ; 
0x1002ED867   cmpl     $0x5, (%rbx,%rax)    
0x1002ED86B   jne      0x1002eda7f          
0x1002ED871   movq     0x6bbd28(%rip), %rax  ; 
0x1002ED878   movl     (%rbx,%rax), %ecx    
0x1002ED87B   cmpl     $0x4, %ecx           
0x1002ED87E   je       0x1002ed8f3          
0x1002ED880   cmpl     $0x3, %ecx           
0x1002ED883   jne      0x1002ed9e0          
0x1002ED889   movl     $0x4, (%rbx,%rax)    
0x1002ED890   jmp      0x1002eda7f          
0x1002ED895   movq     0x6b584c(%rip), %rsi  ; selector "run"
0x1002ED89C   movq     %rbx, %rdi           
0x1002ED89F   callq    *0x65192b(%rip)      ; _objc_msgSend
0x1002ED8A5   movq     %rax, %rdi           
0x1002ED8A8   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED8AD   testq    %rax, %rax           
0x1002ED8B0   je       0x1002eda7f          
0x1002ED8B6   movq     %rax, %r14           
0x1002ED8B9   movq     0x6b8858(%rip), %rsi  ; selector "_handleError:"
0x1002ED8C0   movq     %rbx, %rdi           
0x1002ED8C3   movq     %rax, %rdx           
0x1002ED8C6   callq    *0x651904(%rip)      ; _objc_msgSend
0x1002ED8CC   movq     0x65111d(%rip), %rax  ; ___stack_chk_guard
0x1002ED8D3   movq     (%rax), %rax         
0x1002ED8D6   cmpq     -0x20(%rbp), %rax    
0x1002ED8DA   jne      0x1002eda9a          
0x1002ED8E0   movq     %r14, %rdi           
0x1002ED8E3   addq     $0x38, %rsp          
0x1002ED8E7   popq     %rbx                 
0x1002ED8E8   popq     %r14                 
0x1002ED8EA   popq     %r15                 
0x1002ED8EC   popq     %rbp                 
0x1002ED8ED   jmpq     *0x651915(%rip)      ; _objc_release
0x1002ED8F3   leaq     0x6d03c6(%rip), %rax  ; 
0x1002ED8FA   movq     (%rax), %rbx         
0x1002ED8FD   movq     %rbx, %rdi           
0x1002ED900   xorl     %esi, %esi           
0x1002ED902   callq    _os_log_type_enabled 
0x1002ED907   testb    %al, %al             
0x1002ED909   je       0x1002eda7f          
0x1002ED90F   leaq     -0x50(%rbp), %r8     
0x1002ED913   movw     $0x0, (%r8)          
0x1002ED919   leaq     -0x2ed920(%rip), %rdi  ; 
0x1002ED920   leaq     0x2955d9(%rip), %rcx  ; string literal: "#ses-item-loc,Absorbing PRRangingRequestStatusDidStart from a retry.  "
0x1002ED927   movq     %rbx, %rsi           
0x1002ED92A   xorl     %edx, %edx           
0x1002ED92C   movl     $0x2, %r9d           
0x1002ED932   callq    __os_log_impl        
0x1002ED937   jmp      0x1002eda7f          
0x1002ED93C   movq     0x650cbd(%rip), %r14  ; _OBJC_CLASS_$_NSError
0x1002ED943   movq     0x650c66(%rip), %rax  ; _NSLocalizedDescriptionKey
0x1002ED94A   movq     (%rax), %rax         
0x1002ED94D   leaq     -0x30(%rbp), %rcx    
0x1002ED951   movq     %rax, (%rcx)         
0x1002ED954   leaq     0x67e7bd(%rip), %rax  ; @"Unexpected new status ServiceRequestStatusUpdate::Type::RangingStopped"
0x1002ED95B   leaq     -0x28(%rbp), %rdx    
0x1002ED95F   movq     %rax, (%rdx)         
0x1002ED962   movq     0x651f97(%rip), %rdi  ; _OBJC_CLASS_$_NSDictionary
0x1002ED969   movq     0x6b4db8(%rip), %rsi  ; selector "dictionaryWithObjects:forKeys:count:"
0x1002ED970   movl     $0x1, %r8d           
0x1002ED976   callq    *0x651854(%rip)      ; _objc_msgSend
0x1002ED97C   movq     %rax, %rdi           
0x1002ED97F   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED984   movq     %rax, %r15           
0x1002ED987   leaq     0x66286a(%rip), %rax  ; 
0x1002ED98E   movq     (%rax), %rdx         
0x1002ED991   movq     0x6b4d08(%rip), %rsi  ; selector "errorWithDomain:code:userInfo:"
0x1002ED998   movq     %r14, %rdi           
0x1002ED99B   movq     $-0x16ff, %rcx       
0x1002ED9A2   movq     %r15, %r8            
0x1002ED9A5   callq    *0x651825(%rip)      ; _objc_msgSend
0x1002ED9AB   movq     %rax, %rdi           
0x1002ED9AE   callq    _objc_retainAutoreleasedReturnValue 
0x1002ED9B3   movq     %rax, %r14           
0x1002ED9B6   movq     %r15, %rdi           
0x1002ED9B9   callq    *0x651849(%rip)      ; _objc_release
0x1002ED9BF   movq     0x6b8752(%rip), %rsi  ; selector "_handleError:"
0x1002ED9C6   movq     %rbx, %rdi           
0x1002ED9C9   movq     %r14, %rdx           
0x1002ED9CC   callq    *0x6517fe(%rip)      ; _objc_msgSend
0x1002ED9D2   movq     %r14, %rdi           
0x1002ED9D5   callq    *0x65182d(%rip)      ; _objc_release
0x1002ED9DB   jmp      0x1002eda7f          
0x1002ED9E0   movq     0x650c19(%rip), %r14  ; _OBJC_CLASS_$_NSError
0x1002ED9E7   movq     0x650bc2(%rip), %rax  ; _NSLocalizedDescriptionKey
0x1002ED9EE   movq     (%rax), %rax         
0x1002ED9F1   leaq     -0x40(%rbp), %rcx    
0x1002ED9F5   movq     %rax, (%rcx)         
0x1002ED9F8   leaq     0x67e739(%rip), %rax  ; @"Unexpected new status ServiceRequestStatusUpdate::Type::RangingDidStart"
0x1002ED9FF   leaq     -0x38(%rbp), %rdx    
0x1002EDA03   movq     %rax, (%rdx)         
0x1002EDA06   movq     0x651ef3(%rip), %rdi  ; _OBJC_CLASS_$_NSDictionary
0x1002EDA0D   movq     0x6b4d14(%rip), %rsi  ; selector "dictionaryWithObjects:forKeys:count:"
0x1002EDA14   movl     $0x1, %r8d           
0x1002EDA1A   callq    *0x6517b0(%rip)      ; _objc_msgSend
0x1002EDA20   movq     %rax, %rdi           
0x1002EDA23   callq    _objc_retainAutoreleasedReturnValue 
0x1002EDA28   movq     %rax, %r15           
0x1002EDA2B   leaq     0x6627c6(%rip), %rax  ; 
0x1002EDA32   movq     (%rax), %rdx         
0x1002EDA35   movq     0x6b4c64(%rip), %rsi  ; selector "errorWithDomain:code:userInfo:"
0x1002EDA3C   movq     %r14, %rdi           
0x1002EDA3F   movq     $-0x16ff, %rcx       
0x1002EDA46   movq     %r15, %r8            
0x1002EDA49   callq    *0x651781(%rip)      ; _objc_msgSend
0x1002EDA4F   movq     %rax, %rdi           
0x1002EDA52   callq    _objc_retainAutoreleasedReturnValue 
0x1002EDA57   movq     %rax, %r14           
0x1002EDA5A   movq     %r15, %rdi           
0x1002EDA5D   callq    *0x6517a5(%rip)      ; _objc_release
0x1002EDA63   movq     0x6b86ae(%rip), %rsi  ; selector "_handleError:"
0x1002EDA6A   movq     %rbx, %rdi           
0x1002EDA6D   movq     %r14, %rdx           
0x1002EDA70   callq    *0x65175a(%rip)      ; _objc_msgSend
0x1002EDA76   movq     %r14, %rdi           
0x1002EDA79   callq    *0x651789(%rip)      ; _objc_release
0x1002EDA7F   movq     0x650f6a(%rip), %rax  ; ___stack_chk_guard
0x1002EDA86   movq     (%rax), %rax         
0x1002EDA89   cmpq     -0x20(%rbp), %rax    
0x1002EDA8D   jne      0x1002eda9a          
0x1002EDA8F   addq     $0x38, %rsp          
0x1002EDA93   popq     %rbx                 
0x1002EDA94   popq     %r14                 
0x1002EDA96   popq     %r15                 
0x1002EDA98   popq     %rbp                 
0x1002EDA99   retq                          
0x1002EDA9A   callq    ___stack_chk_fail    
0x1002EDA9F   movq     %rax, %rbx           
0x1002EDAA2   movq     %r14, %rdi           
0x1002EDAA5   callq    *0x65175d(%rip)      ; _objc_release
0x1002EDAAB   jmp      0x1002edae8          
0x1002EDAAD   movq     %rax, %rbx           
0x1002EDAB0   movq     %r14, %rdi           
0x1002EDAB3   callq    *0x65174f(%rip)      ; _objc_release
0x1002EDAB9   jmp      0x1002edae8          
0x1002EDABB   movq     %rax, %rbx           
0x1002EDABE   movq     %r14, %rdi           
0x1002EDAC1   callq    *0x651741(%rip)      ; _objc_release
0x1002EDAC7   jmp      0x1002edae8          
0x1002EDAC9   movq     %rax, %rbx           
0x1002EDACC   movq     %r15, %rdi           
0x1002EDACF   callq    *0x651733(%rip)      ; _objc_release
0x1002EDAD5   jmp      0x1002edae8          
0x1002EDAD7   movq     %rax, %rbx           
0x1002EDADA   movq     %r15, %rdi           
0x1002EDADD   callq    *0x651725(%rip)      ; _objc_release
0x1002EDAE3   jmp      0x1002edae8          
0x1002EDAE5   movq     %rax, %rbx           
0x1002EDAE8   movq     %rbx, %rdi           
0x1002EDAEB   callq    __Unwind_Resume      
0x1002EDAF0   pushq    %rbp                 
0x1002EDAF1   movq     %rsp, %rbp           
0x1002EDAF4   pushq    %r15                 
0x1002EDAF6   pushq    %r14                 
0x1002EDAF8   pushq    %r12                 
0x1002EDAFA   pushq    %rbx                 
0x1002EDAFB   subq     $0x20, %rsp          
0x1002EDAFF   movq     %rdx, %rbx           
0x1002EDB02   movq     %rdi, %r14           
0x1002EDB05   movq     0x650ee4(%rip), %rax  ; ___stack_chk_guard
0x1002EDB0C   movq     (%rax), %rax         
0x1002EDB0F   movq     %rax, -0x28(%rbp)    
0x1002EDB13   movq     %rdx, %rdi           
0x1002EDB16   callq    *0x6516f4(%rip)      ; _objc_retain
0x1002EDB1C   movq     0x6bba5d(%rip), %rax  ; 
0x1002EDB23   cmpl     $0x0, (%r14,%rax)    
0x1002EDB28   je       0x1002edba7          
0x1002EDB2A   leaq     0x6d018f(%rip), %rax  ; 
0x1002EDB31   movq     (%rax), %r14         
0x1002EDB34   movq     %r14, %rdi           
0x1002EDB37   callq    *0x6516d3(%rip)      ; _objc_retain
0x1002EDB3D   movq     %r14, %rdi           
0x1002EDB40   xorl     %esi, %esi           
0x1002EDB42   callq    _os_log_type_enabled 
0x1002EDB47   testb    %al, %al             
0x1002EDB49   je       0x1002edb9c          
0x1002EDB4B   movq     0x6b6276(%rip), %rsi  ; selector "UUID"
0x1002EDB52   movq     %rbx, %rdi           
0x1002EDB55   callq    *0x651675(%rip)      ; _objc_msgSend
0x1002EDB5B   movq     %rax, %rdi           
0x1002EDB5E   callq    _objc_retainAutoreleasedReturnValue 
0x1002EDB63   movq     %rax, %r15           
0x1002EDB66   leaq     -0x40(%rbp), %r8     
0x1002EDB6A   movl     $0x8400102, (%r8)    
0x1002EDB71   movq     %rax, 0x4(%r8)       
0x1002EDB75   leaq     -0x2edb7c(%rip), %rdi  ; 
0x1002EDB7C   leaq     0x2953cd(%rip), %rcx  ; string literal: "#ses-item-loc,Skipping init companion. UUID: %@"
0x1002EDB83   movq     %r14, %rsi           
0x1002EDB86   xorl     %edx, %edx           
0x1002EDB88   movl     $0xc, %r9d           
0x1002EDB8E   callq    __os_log_impl        
0x1002EDB93   movq     %r15, %rdi           
0x1002EDB96   callq    *0x65166c(%rip)      ; _objc_release
0x1002EDB9C   movq     %r14, %rdi           
0x1002EDB9F   callq    *0x651663(%rip)      ; _objc_release
0x1002EDBA5   jmp      0x1002edbaf          
0x1002EDBA7   movl     $0x1, (%r14,%rax)    
0x1002EDBAF   movq     %rbx, %rdi           
0x1002EDBB2   callq    *0x651650(%rip)      ; _objc_release
0x1002EDBB8   movq     0x650e31(%rip), %rax  ; ___stack_chk_guard
0x1002EDBBF   movq     (%rax), %rax         
0x1002EDBC2   cmpq     -0x28(%rbp), %rax    
0x1002EDBC6   jne      0x1002edbd5          
0x1002EDBC8   addq     $0x20, %rsp          
0x1002EDBCC   popq     %rbx                 
0x1002EDBCD   popq     %r12                 
0x1002EDBCF   popq     %r14                 
0x1002EDBD1   popq     %r15                 
0x1002EDBD3   popq     %rbp                 
0x1002EDBD4   retq                          
0x1002EDBD5   callq    ___stack_chk_fail    
0x1002EDBDA   movq     %rax, %r15           
0x1002EDBDD   movq     0x651624(%rip), %r12  ; _objc_release
0x1002EDBE4   movq     %r14, %rdi           
0x1002EDBE7   callq    *%r12                
0x1002EDBEA   movq     %rbx, %rdi           
0x1002EDBED   callq    *%r12                
0x1002EDBF0   jmp      0x1002edbf5          
0x1002EDBF2   movq     %rax, %r15           
0x1002EDBF5   movq     %r15, %rdi           
0x1002EDBF8   callq    __Unwind_Resume      
0x1002EDBFD   movq     0x6bb97c(%rip), %rax  ; 
0x1002EDC04   cmpl     $0x0, (%rdi,%rax)    
0x1002EDC08   je       0x1002edc20          
0x1002EDC0A   movq     0x6bb97f(%rip), %rcx  ; 
0x1002EDC11   movl     $0x0, (%rdi,%rcx)    
0x1002EDC18   movl     $0x4, (%rdi,%rax)    
0x1002EDC1F   retq                          
0x1002EDC20   pushq    %rbp                 
0x1002EDC21   movq     %rsp, %rbp           
0x1002EDC24   pushq    %rbx                 
0x1002EDC25   pushq    %rax                 
0x1002EDC26   leaq     0x6d0093(%rip), %rax  ; 
0x1002EDC2D   movq     (%rax), %rbx         
0x1002EDC30   movq     %rbx, %rdi           
0x1002EDC33   movl     $0x2, %esi           
0x1002EDC38   callq    _os_log_type_enabled 
0x1002EDC3D   testb    %al, %al             
0x1002EDC3F   jne      0x1002edc48          
0x1002EDC41   addq     $0x8, %rsp           
0x1002EDC45   popq     %rbx                 
0x1002EDC46   popq     %rbp                 
0x1002EDC47   retq                          
0x1002EDC48   movq     %rbx, %rdi           
0x1002EDC4B   callq    0x1004948e8          
0x1002EDC50   jmp      0x1002edc41          
0x1002EDC52   pushq    %rbp                 
0x1002EDC53   movq     %rsp, %rbp           
0x1002EDC56   pushq    %r15                 
0x1002EDC58   pushq    %r14                 
0x1002EDC5A   pushq    %r12                 
0x1002EDC5C   pushq    %rbx                 
0x1002EDC5D   subq     $0x80, %rsp          
0x1002EDC64   movq     %rdi, %r14           
0x1002EDC67   movq     0x650d82(%rip), %rax  ; ___stack_chk_guard
0x1002EDC6E   movq     (%rax), %rax         
0x1002EDC71   movq     %rax, -0x28(%rbp)    
0x1002EDC75   leaq     0x6d0044(%rip), %r12  ; 
0x1002EDC7C   movq     (%r12), %r15         
0x1002EDC80   movq     %r15, %rdi           
0x1002EDC83   callq    *0x651587(%rip)      ; _objc_retain
0x1002EDC89   movq     %r15, %rdi           
0x1002EDC8C   xorl     %esi, %esi           
0x1002EDC8E   callq    _os_log_type_enabled 
0x1002EDC93   testb    %al, %al             
0x1002EDC95   je       0x1002edcf0          
0x1002EDC97   movq     0x6bb95a(%rip), %rax  ; 
0x1002EDC9E   movq     (%r14,%rax), %rdi    
0x1002EDCA2   movq     0x6b611f(%rip), %rsi  ; selector "UUID"
0x1002EDCA9   callq    *0x651521(%rip)      ; _objc_msgSend
0x1002EDCAF   movq     %rax, %rdi           
0x1002EDCB2   callq    _objc_retainAutoreleasedReturnValue 
0x1002EDCB7   movq     %rax, %rbx           
0x1002EDCBA   leaq     -0x70(%rbp), %r8     
0x1002EDCBE   movl     $0x8400102, (%r8)    
0x1002EDCC5   movq     %rax, 0x4(%r8)       
0x1002EDCC9   leaq     -0x2edcd0(%rip), %rdi  ; 
0x1002EDCD0   leaq     0x2952f9(%rip), %rcx  ; string literal: "#ses-item-loc,Configure companion for ranging. UUID: %@"
0x1002EDCD7   movq     %r15, %rsi           
0x1002EDCDA   xorl     %edx, %edx           
0x1002EDCDC   movl     $0xc, %r9d           
0x1002EDCE2   callq    __os_log_impl        
0x1002EDCE7   movq     %rbx, %rdi           
0x1002EDCEA   callq    *0x651518(%rip)      ; _objc_release
0x1002EDCF0   movq     %r15, %rdi           
0x1002EDCF3   callq    *0x65150f(%rip)      ; _objc_release
0x1002EDCF9   callq    0x100328966          
0x1002EDCFE   movq     0xd80(%rax), %rdi    
0x1002EDD05   movq     %rdi, -0x98(%rbp)    
0x1002EDD0C   movq     0xd88(%rax), %rbx    
0x1002EDD13   movq     %rbx, -0x90(%rbp)    
0x1002EDD1A   testq    %rbx, %rbx           
0x1002EDD1D   je       0x1002edd24          
0x1002EDD1F   lock                          
0x1002EDD20   incq     0x8(%rbx)            
0x1002EDD24   testq    %rdi, %rdi           
0x1002EDD27   je       0x1002edfa6          
0x1002EDD2D   movq     0x6bb89c(%rip), %rdx  ; 
0x1002EDD34   cmpb     $0x0, 0x240(%r14,%rdx) 
0x1002EDD3D   je       0x1002ee04a          
0x1002EDD43   addq     %r14, %rdx           
0x1002EDD46   movq     0x6bb82b(%rip), %rax  ; 
0x1002EDD4D   movl     (%r14,%rax), %eax    
0x1002EDD51   cmpl     $0x1, %eax           
0x1002EDD54   je       0x1002ee0ee          
0x1002EDD5A   testl    %eax, %eax           
0x1002EDD5C   jne      0x1002ee26e          
0x1002EDD62   leaq     -0x84(%rbp), %rax    
0x1002EDD69   movl     $0x0, (%rax)         
0x1002EDD6F   movq     %rdx, %rsi           
0x1002EDD72   movq     %rax, %rdx           
0x1002EDD75   callq    0x1002f793c          
0x1002EDD7A   testb    %al, %al             
0x1002EDD7C   je       0x1002ee12b          
0x1002EDD82   movq     (%r12), %r15         
0x1002EDD86   movq     %r15, %rdi           
0x1002EDD89   xorl     %esi, %esi           
0x1002EDD8B   callq    _os_log_type_enabled 
0x1002EDD90   testb    %al, %al             
0x1002EDD92   je       0x1002eddbc          
0x1002EDD94   leaq     -0x70(%rbp), %r8     
0x1002EDD98   movw     $0x0, (%r8)          
0x1002EDD9E   leaq     -0x2edda5(%rip), %rdi  ; 
0x1002EDDA5   leaq     0x295264(%rip), %rcx  ; string literal: "#ses-item-loc,+++++++++++++++++++++++++++++++++++++++++"
0x1002EDDAC   movq     %r15, %rsi           
0x1002EDDAF   xorl     %edx, %edx           
0x1002EDDB1   movl     $0x2, %r9d           
0x1002EDDB7   callq    __os_log_impl        
0x1002EDDBC   movq     (%r12), %r15         
0x1002EDDC0   movq     %r15, %rdi           
0x1002EDDC3   xorl     %esi, %esi           
0x1002EDDC5   callq    _os_log_type_enabled 
0x1002EDDCA   testb    %al, %al             
0x1002EDDCC   je       0x1002eddf6          
0x1002EDDCE   leaq     -0x70(%rbp), %r8     
0x1002EDDD2   movw     $0x0, (%r8)          
0x1002EDDD8   leaq     -0x2edddf(%rip), %rdi  ; 
0x1002EDDDF   leaq     0x29526a(%rip), %rcx  ; string literal: "#ses-item-loc,Sent command to remote device:"
0x1002EDDE6   movq     %r15, %rsi           
0x1002EDDE9   xorl     %edx, %edx           
0x1002EDDEB   movl     $0x2, %r9d           
0x1002EDDF1   callq    __os_log_impl        
0x1002EDDF6   movq     (%r12), %r15         
0x1002EDDFA   movq     %r15, %rdi           
0x1002EDDFD   xorl     %esi, %esi           
0x1002EDDFF   callq    _os_log_type_enabled 
0x1002EDE04   testb    %al, %al             
0x1002EDE06   je       0x1002ede3c          
0x1002EDE08   movzbl   -0x84(%rbp), %eax    
0x1002EDE0F   leaq     -0x70(%rbp), %r8     
0x1002EDE13   movl     $0x4000100, (%r8)    
0x1002EDE1A   movl     %eax, 0x4(%r8)       
0x1002EDE1E   leaq     -0x2ede25(%rip), %rdi  ; 
0x1002EDE25   leaq     0x295254(%rip), %rcx  ; string literal: "#ses-item-loc,   countryCode: 0x%x"
0x1002EDE2C   movq     %r15, %rsi           
0x1002EDE2F   xorl     %edx, %edx           
0x1002EDE31   movl     $0x8, %r9d           
0x1002EDE37   callq    __os_log_impl        
0x1002EDE3C   movq     (%r12), %r15         
0x1002EDE40   movq     %r15, %rdi           
0x1002EDE43   xorl     %esi, %esi           
0x1002EDE45   callq    _os_log_type_enabled 
0x1002EDE4A   testb    %al, %al             
0x1002EDE4C   je       0x1002ede85          
0x1002EDE4E   movzbl   -0x83(%rbp), %eax    
0x1002EDE55   andl     $0x3, %eax           
0x1002EDE58   leaq     -0x70(%rbp), %r8     
0x1002EDE5C   movl     $0x4000100, (%r8)    
0x1002EDE63   movl     %eax, 0x4(%r8)       
0x1002EDE67   leaq     -0x2ede6e(%rip), %rdi  ; 
0x1002EDE6E   leaq     0x29523b(%rip), %rcx  ; string literal: "#ses-item-loc,   channel: 0x%x"
0x1002EDE75   movq     %r15, %rsi           
0x1002EDE78   xorl     %edx, %edx           
0x1002EDE7A   movl     $0x8, %r9d           
0x1002EDE80   callq    __os_log_impl        
0x1002EDE85   movq     (%r12), %r15         
0x1002EDE89   movq     %r15, %rdi           
0x1002EDE8C   xorl     %esi, %esi           
0x1002EDE8E   callq    _os_log_type_enabled 
0x1002EDE93   testb    %al, %al             
0x1002EDE95   je       0x1002eded1          
0x1002EDE97   movzbl   -0x83(%rbp), %eax    
0x1002EDE9E   shrl     $0x2, %eax           
0x1002EDEA1   andl     $0x3, %eax           
0x1002EDEA4   leaq     -0x70(%rbp), %r8     
0x1002EDEA8   movl     $0x4000100, (%r8)    
0x1002EDEAF   movl     %eax, 0x4(%r8)       
0x1002EDEB3   leaq     -0x2edeba(%rip), %rdi  ; 
0x1002EDEBA   leaq     0x29520f(%rip), %rcx  ; string literal: "#ses-item-loc,   txPreamble: 0x%x"
0x1002EDEC1   movq     %r15, %rsi           
0x1002EDEC4   xorl     %edx, %edx           
0x1002EDEC6   movl     $0x8, %r9d           
0x1002EDECC   callq    __os_log_impl        
0x1002EDED1   movq     (%r12), %r15         
0x1002EDED5   movq     %r15, %rdi           
0x1002EDED8   xorl     %esi, %esi           
0x1002EDEDA   callq    _os_log_type_enabled 
0x1002EDEDF   testb    %al, %al             
0x1002EDEE1   je       0x1002edf1d          
0x1002EDEE3   movzbl   -0x83(%rbp), %eax    
0x1002EDEEA   shrl     $0x4, %eax           
0x1002EDEED   andl     $0x3, %eax           
0x1002EDEF0   leaq     -0x70(%rbp), %r8     
0x1002EDEF4   movl     $0x4000100, (%r8)    
0x1002EDEFB   movl     %eax, 0x4(%r8)       
0x1002EDEFF   leaq     -0x2edf06(%rip), %rdi  ; 
0x1002EDF06   leaq     0x2951f3(%rip), %rcx  ; string literal: "#ses-item-loc,   rxPreamble: 0x%x"
0x1002EDF0D   movq     %r15, %rsi           
0x1002EDF10   xorl     %edx, %edx           
0x1002EDF12   movl     $0x8, %r9d           
0x1002EDF18   callq    __os_log_impl        
0x1002EDF1D   movq     (%r12), %r15         
0x1002EDF21   movq     %r15, %rdi           
0x1002EDF24   xorl     %esi, %esi           
0x1002EDF26   callq    _os_log_type_enabled 
0x1002EDF2B   testb    %al, %al             
0x1002EDF2D   je       0x1002edf63          
0x1002EDF2F   movzwl   -0x82(%rbp), %eax    
0x1002EDF36   leaq     -0x70(%rbp), %r8     
0x1002EDF3A   movl     $0x4000100, (%r8)    
0x1002EDF41   movl     %eax, 0x4(%r8)       
0x1002EDF45   leaq     -0x2edf4c(%rip), %rdi  ; 
0x1002EDF4C   leaq     0x2951dd(%rip), %rcx  ; string literal: "#ses-item-loc,   intervalMs: %d"
0x1002EDF53   movq     %r15, %rsi           
0x1002EDF56   xorl     %edx, %edx           
0x1002EDF58   movl     $0x8, %r9d           
0x1002EDF5E   callq    __os_log_impl        
0x1002EDF63   movq     (%r12), %r15         
0x1002EDF67   movq     %r15, %rdi           
0x1002EDF6A   xorl     %esi, %esi           
0x1002EDF6C   callq    _os_log_type_enabled 
0x1002EDF71   testb    %al, %al             
0x1002EDF73   je       0x1002ee117          
0x1002EDF79   leaq     -0x70(%rbp), %r8     
0x1002EDF7D   movw     $0x0, (%r8)          
0x1002EDF83   leaq     -0x2edf8a(%rip), %rdi  ; 
0x1002EDF8A   leaq     0x29507f(%rip), %rcx  ; string literal: "#ses-item-loc,+++++++++++++++++++++++++++++++++++++++++"
0x1002EDF91   movq     %r15, %rsi           
0x1002EDF94   xorl     %edx, %edx           
0x1002EDF96   movl     $0x2, %r9d           
0x1002EDF9C   callq    __os_log_impl        
0x1002EDFA1   jmp      0x1002ee117          
0x1002EDFA6   movq     0x650653(%rip), %r15  ; _OBJC_CLASS_$_NSError
0x1002EDFAD   movq     0x6505fc(%rip), %rax  ; _NSLocalizedDescriptionKey
0x1002EDFB4   movq     (%rax), %rax         
0x1002EDFB7   leaq     -0x38(%rbp), %rcx    
0x1002EDFBB   movq     %rax, (%rcx)         
0x1002EDFBE   leaq     0x670b13(%rip), %rax  ; @"Configuration Manager Error."
0x1002EDFC5   leaq     -0x30(%rbp), %rdx    
0x1002EDFC9   movq     %rax, (%rdx)         
0x1002EDFCC   movq     0x65192d(%rip), %rdi  ; _OBJC_CLASS_$_NSDictionary
0x1002EDFD3   movq     0x6b474e(%rip), %rsi  ; selector "dictionaryWithObjects:forKeys:count:"
0x1002EDFDA   movl     $0x1, %r8d           
0x1002EDFE0   callq    *0x6511ea(%rip)      ; _objc_msgSend
0x1002EDFE6   movq     %rax, %rdi           
0x1002EDFE9   callq    _objc_retainAutoreleasedReturnValue 
0x1002EDFEE   movq     %rax, %r12           
0x1002EDFF1   leaq     0x662200(%rip), %rax  ; 
0x1002EDFF8   movq     (%rax), %rdx         
0x1002EDFFB   movq     0x6b469e(%rip), %rsi  ; selector "errorWithDomain:code:userInfo:"
