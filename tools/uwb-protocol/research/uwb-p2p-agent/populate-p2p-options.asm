0x1002F15A2   pushq    %rbp                 
0x1002F15A3   movq     %rsp, %rbp           
0x1002F15A6   pushq    %r15                 
0x1002F15A8   pushq    %r14                 
0x1002F15AA   pushq    %r13                 
0x1002F15AC   pushq    %r12                 
0x1002F15AE   pushq    %rbx                 
0x1002F15AF   subq     $0x68, %rsp          
0x1002F15B3   movq     %rsi, %r12           
0x1002F15B6   movq     %rdi, %r15           
0x1002F15B9   movq     0x64d430(%rip), %rax  ; ___stack_chk_guard
0x1002F15C0   movq     (%rax), %rax         
0x1002F15C3   movq     %rax, -0x30(%rbp)    
0x1002F15C7   movq     0x6b800a(%rip), %r14  ; 
0x1002F15CE   cmpb     $0x0, (%rsi,%r14)    
0x1002F15D3   je       0x1002f1621          
0x1002F15D5   leaq     0x6cc6e4(%rip), %rax  ; 
0x1002F15DC   movq     (%rax), %rbx         
0x1002F15DF   movq     %rbx, %rdi           
0x1002F15E2   xorl     %esi, %esi           
0x1002F15E4   callq    _os_log_type_enabled 
0x1002F15E9   testb    %al, %al             
0x1002F15EB   je       0x1002f1615          
0x1002F15ED   leaq     -0x60(%rbp), %r8     
0x1002F15F1   movw     $0x0, (%r8)          
0x1002F15F7   leaq     -0x2f15fe(%rip), %rdi  ; 
0x1002F15FE   leaq     0x29248b(%rip), %rcx  ; string literal: "#ses-item-loc,Using conservative start time offset"
0x1002F1605   movq     %rbx, %rsi           
0x1002F1608   xorl     %edx, %edx           
0x1002F160A   movl     $0x2, %r9d           
0x1002F1610   callq    __os_log_impl        
0x1002F1615   movb     $0x0, (%r12,%r14)    
0x1002F161A   movl     $0x16e360, %eax      
0x1002F161F   jmp      0x1002f1626          
0x1002F1621   movl     $0x7c830, %eax       
0x1002F1626   movq     %rax, -0x80(%rbp)    
0x1002F162A   movq     0x64e32f(%rip), %rdi  ; _OBJC_CLASS_$_NSUserDefaults
0x1002F1631   movq     0x6b10a0(%rip), %rsi  ; selector "standardUserDefaults"
0x1002F1638   callq    *0x64db92(%rip)      ; _objc_msgSend
0x1002F163E   movq     %rax, %rdi           
0x1002F1641   callq    _objc_retainAutoreleasedReturnValue 
0x1002F1646   movq     %rax, -0x78(%rbp)    
0x1002F164A   movq     0x6b1007(%rip), %rsi  ; selector "objectForKey:"
0x1002F1651   leaq     0x67ac60(%rip), %rdx  ; @"TimeSyncPathListeningWindowMSec"
0x1002F1658   movq     -0x78(%rbp), %rdi    
0x1002F165C   callq    *0x64db6e(%rip)      ; _objc_msgSend
0x1002F1662   movq     %rax, %rdi           
0x1002F1665   callq    _objc_retainAutoreleasedReturnValue 
0x1002F166A   testq    %rax, %rax           
0x1002F166D   movq     %rax, -0x88(%rbp)    
0x1002F1674   je       0x1002f16d8          
0x1002F1676   movq     0x6b0fe3(%rip), %rsi  ; selector "intValue"
0x1002F167D   movq     %rax, %rdi           
0x1002F1680   callq    *0x64db4a(%rip)      ; _objc_msgSend
0x1002F1686   imull    $0x3e8, %eax, %r14d  
0x1002F168D   leaq     0x6cc62c(%rip), %rax  ; 
0x1002F1694   movq     (%rax), %rbx         
0x1002F1697   movq     %rbx, %rdi           
0x1002F169A   xorl     %esi, %esi           
0x1002F169C   callq    _os_log_type_enabled 
0x1002F16A1   testb    %al, %al             
0x1002F16A3   movl     %r14d, -0x64(%rbp)   
0x1002F16A7   je       0x1002f16df          
0x1002F16A9   leaq     -0x60(%rbp), %r8     
0x1002F16AD   movl     $0x4000100, (%r8)    
0x1002F16B4   movl     %r14d, 0x4(%r8)      
0x1002F16B8   leaq     -0x2f16bf(%rip), %rdi  ; 
0x1002F16BF   leaq     0x29240a(%rip), %rcx  ; string literal: "#ses-item-loc,listeningWindowSizeUsec overridden by defaults writes to %u"
0x1002F16C6   movq     %rbx, %rsi           
0x1002F16C9   xorl     %edx, %edx           
0x1002F16CB   movl     $0x8, %r9d           
0x1002F16D1   callq    __os_log_impl        
0x1002F16D6   jmp      0x1002f16df          
0x1002F16D8   movl     $0xbb8, -0x64(%rbp)  
0x1002F16DF   movq     0x6b7e6a(%rip), %r13  ; 
0x1002F16E6   movq     (%r12,%r13), %rdi    
0x1002F16EA   movq     0x6b22ef(%rip), %r14  ; selector "debugParameters"
0x1002F16F1   movq     %r14, %rsi           
0x1002F16F4   callq    *0x64dad6(%rip)      ; _objc_msgSend
0x1002F16FA   movq     %rax, %rdi           
0x1002F16FD   callq    _objc_retainAutoreleasedReturnValue 
0x1002F1702   testq    %rax, %rax           
0x1002F1705   sete     %bl                  
0x1002F1708   movq     %rax, %rdi           
0x1002F170B   callq    *0x64daf7(%rip)      ; _objc_release
0x1002F1711   testb    %bl, %bl             
0x1002F1713   jne      0x1002f18bf          
0x1002F1719   movq     (%r12,%r13), %rdi    
0x1002F171D   movq     %r14, %rsi           
0x1002F1720   callq    *0x64daaa(%rip)      ; _objc_msgSend
0x1002F1726   movq     %rax, %rdi           
0x1002F1729   callq    _objc_retainAutoreleasedReturnValue 
0x1002F172E   movq     %rax, %rbx           
0x1002F1731   movq     0x64d1a0(%rip), %rax  ; _PRP2PArgsStartTimeOffsetUsec
0x1002F1738   movq     (%rax), %rdx         
0x1002F173B   movq     %rbx, %rdi           
0x1002F173E   movq     0x6b0f13(%rip), %rsi  ; selector "objectForKey:"
0x1002F1745   callq    *0x64da85(%rip)      ; _objc_msgSend
0x1002F174B   movq     %rax, %rdi           
0x1002F174E   callq    _objc_retainAutoreleasedReturnValue 
0x1002F1753   movq     %rax, -0x70(%rbp)    
0x1002F1757   movq     %rbx, %rdi           
0x1002F175A   callq    *0x64daa8(%rip)      ; _objc_release
0x1002F1760   cmpq     $0x0, -0x70(%rbp)    
0x1002F1765   je       0x1002f17eb          
0x1002F176B   movq     0x64cece(%rip), %rdi  ; _OBJC_CLASS_$_NSNumber
0x1002F1772   callq    _objc_opt_class      
0x1002F1777   movq     -0x70(%rbp), %rdi    
0x1002F177B   movq     %rax, %rsi           
0x1002F177E   callq    _objc_opt_isKindOfClass 
0x1002F1783   testb    %al, %al             
0x1002F1785   je       0x1002f17eb          
0x1002F1787   movq     0x6b0ed2(%rip), %rsi  ; selector "intValue"
0x1002F178E   movq     -0x70(%rbp), %rdi    
0x1002F1792   callq    *0x64da38(%rip)      ; _objc_msgSend
0x1002F1798   movslq   %eax, %r14           
0x1002F179B   leaq     0x6cc51e(%rip), %rax  ; 
0x1002F17A2   movq     (%rax), %rbx         
0x1002F17A5   movq     %rbx, %rdi           
0x1002F17A8   xorl     %esi, %esi           
0x1002F17AA   callq    _os_log_type_enabled 
0x1002F17AF   testb    %al, %al             
0x1002F17B1   movq     %r14, -0x80(%rbp)    
0x1002F17B5   je       0x1002f17e4          
0x1002F17B7   leaq     -0x60(%rbp), %r8     
0x1002F17BB   movl     $0x8000100, (%r8)    
0x1002F17C2   movq     %r14, 0x4(%r8)       
0x1002F17C6   leaq     -0x2f17cd(%rip), %rdi  ; 
0x1002F17CD   leaq     0x29234c(%rip), %rcx  ; string literal: "#ses-item-loc,Client override startTimeOffsetUsec: %llu"
0x1002F17D4   movq     %rbx, %rsi           
0x1002F17D7   xorl     %edx, %edx           
0x1002F17D9   movl     $0xc, %r9d           
0x1002F17DF   callq    __os_log_impl        
0x1002F17E4   movq     0x6b21f5(%rip), %r14  ; selector "debugParameters"
0x1002F17EB   movq     (%r12,%r13), %rdi    
0x1002F17EF   movq     %r14, %rsi           
0x1002F17F2   callq    *0x64d9d8(%rip)      ; _objc_msgSend
0x1002F17F8   movq     %rax, %rdi           
0x1002F17FB   callq    _objc_retainAutoreleasedReturnValue 
0x1002F1800   movq     %rax, %rbx           
0x1002F1803   movq     0x64d08e(%rip), %rax  ; _PRP2PArgsListeningWindowSizeUsec
0x1002F180A   movq     (%rax), %rdx         
0x1002F180D   movq     %rbx, %rdi           
0x1002F1810   movq     0x6b0e41(%rip), %rsi  ; selector "objectForKey:"
0x1002F1817   callq    *0x64d9b3(%rip)      ; _objc_msgSend
0x1002F181D   movq     %rax, %rdi           
0x1002F1820   callq    _objc_retainAutoreleasedReturnValue 
0x1002F1825   movq     %rax, %r14           
0x1002F1828   movq     %rbx, %rdi           
0x1002F182B   callq    *0x64d9d7(%rip)      ; _objc_release
0x1002F1831   testq    %r14, %r14           
0x1002F1834   je       0x1002f18ac          
0x1002F1836   movq     0x64ce03(%rip), %rdi  ; _OBJC_CLASS_$_NSNumber
0x1002F183D   callq    _objc_opt_class      
0x1002F1842   movq     %r14, %rdi           
0x1002F1845   movq     %rax, %rsi           
0x1002F1848   callq    _objc_opt_isKindOfClass 
0x1002F184D   testb    %al, %al             
0x1002F184F   je       0x1002f18ac          
0x1002F1851   movq     0x6b0e08(%rip), %rsi  ; selector "intValue"
0x1002F1858   movq     %r14, %rdi           
0x1002F185B   callq    *0x64d96f(%rip)      ; _objc_msgSend
0x1002F1861   movl     %eax, -0x64(%rbp)    
0x1002F1864   leaq     0x6cc455(%rip), %rax  ; 
0x1002F186B   movq     (%rax), %rbx         
0x1002F186E   movq     %rbx, %rdi           
0x1002F1871   xorl     %esi, %esi           
0x1002F1873   callq    _os_log_type_enabled 
0x1002F1878   testb    %al, %al             
0x1002F187A   je       0x1002f18ac          
0x1002F187C   leaq     -0x60(%rbp), %r8     
0x1002F1880   movl     $0x4000100, (%r8)    
0x1002F1887   movl     -0x64(%rbp), %eax    
0x1002F188A   movl     %eax, 0x4(%r8)       
0x1002F188E   leaq     -0x2f1895(%rip), %rdi  ; 
0x1002F1895   leaq     0x2922c4(%rip), %rcx  ; string literal: "#ses-item-loc,Client override listeningWindowSizeUsec: %u"
0x1002F189C   movq     %rbx, %rsi           
0x1002F189F   xorl     %edx, %edx           
0x1002F18A1   movl     $0x8, %r9d           
0x1002F18A7   callq    __os_log_impl        
0x1002F18AC   movq     %r14, %rdi           
0x1002F18AF   callq    *0x64d953(%rip)      ; _objc_release
0x1002F18B5   movq     -0x70(%rbp), %rdi    
0x1002F18B9   callq    *0x64d949(%rip)      ; _objc_release
0x1002F18BF   movq     0x6b7d92(%rip), %rax  ; 
0x1002F18C6   movl     $0x7530, %r14d       
0x1002F18CC   cmpb     $0x1, 0x8(%r12,%rax) 
0x1002F18D2   jne      0x1002f18d8          
0x1002F18D4   movq     (%r12,%rax), %r14    
0x1002F18D8   leaq     0x67a9f9(%rip), %rdx  ; @"connectionIntervalOverride"
0x1002F18DF   movq     -0x78(%rbp), %rdi    
0x1002F18E3   movq     0x6b0d6e(%rip), %rsi  ; selector "objectForKey:"
0x1002F18EA   callq    *0x64d8e0(%rip)      ; _objc_msgSend
0x1002F18F0   movq     %rax, %rdi           
0x1002F18F3   callq    _objc_retainAutoreleasedReturnValue 
0x1002F18F8   movq     %rax, %r13           
0x1002F18FB   testq    %rax, %rax           
0x1002F18FE   je       0x1002f1958          
0x1002F1900   movq     0x6b0d59(%rip), %rsi  ; selector "intValue"
0x1002F1907   movq     %r13, %rdi           
0x1002F190A   callq    *0x64d8c0(%rip)      ; _objc_msgSend
0x1002F1910   movslq   %eax, %r14           
0x1002F1913   leaq     0x6cc3a6(%rip), %rax  ; 
0x1002F191A   movq     (%rax), %rbx         
0x1002F191D   movq     %rbx, %rdi           
0x1002F1920   xorl     %esi, %esi           
0x1002F1922   callq    _os_log_type_enabled 
0x1002F1927   testb    %al, %al             
0x1002F1929   je       0x1002f1958          
0x1002F192B   leaq     -0x60(%rbp), %r8     
0x1002F192F   movl     $0x8000100, (%r8)    
0x1002F1936   movq     %r14, 0x4(%r8)       
0x1002F193A   leaq     -0x2f1941(%rip), %rdi  ; 
0x1002F1941   leaq     0x292258(%rip), %rcx  ; string literal: "#ses-item-loc,connection interval value overridden to %llu us"
0x1002F1948   movq     %rbx, %rsi           
0x1002F194B   xorl     %edx, %edx           
0x1002F194D   movl     $0xc, %r9d           
0x1002F1953   callq    __os_log_impl        
0x1002F1958   movq     0x6b4871(%rip), %rdx  ; selector "_getCompanionDescriptor"
0x1002F195F   leaq     -0x60(%rbp), %rdi    
0x1002F1963   movq     %r12, %rsi           
0x1002F1966   callq    _objc_msgSend_stret  
0x1002F196B   movsd    -0x80(%rbp), %xmm0   
0x1002F1970   movsd    0x2d37c8(%rip), %xmm1  ; 
0x1002F1978   unpcklps %xmm1, %xmm0         
0x1002F197B   movapd   0x2d37cd(%rip), %xmm2  ; 
0x1002F1983   subpd    %xmm2, %xmm0         
0x1002F1987   haddpd   %xmm0, %xmm0         
0x1002F198B   movq     %r14, %xmm3          
0x1002F1990   punpckldq %xmm1, %xmm3         
0x1002F1994   subpd    %xmm2, %xmm3         
0x1002F1998   haddpd   %xmm3, %xmm3         
0x1002F199C   divsd    %xmm3, %xmm0         
0x1002F19A0   movapd   0x2d3ac8(%rip), %xmm1  ; 
0x1002F19A8   andpd    %xmm0, %xmm1         
0x1002F19AC   orpd     0x2f8b7c(%rip), %xmm1  ; 
0x1002F19B4   addsd    %xmm0, %xmm1         
0x1002F19B8   xorps    %xmm0, %xmm0         
0x1002F19BB   roundsd  $0xb, %xmm1, %xmm0   
0x1002F19C1   cvttsd2si %xmm0, %rax          
0x1002F19C6   movq     %rax, %rcx           
0x1002F19C9   sarq     $0x3f, %rcx          
0x1002F19CD   subsd    0x2f5b8b(%rip), %xmm0  ; 
0x1002F19D5   cvttsd2si %xmm0, %rdx          
0x1002F19DA   andl     %ecx, %edx           
0x1002F19DC   orl      %edx, %eax           
0x1002F19DE   imull    %r14d, %eax          
0x1002F19E2   movq     -0x40(%rbp), %rcx    
0x1002F19E6   movq     %rcx, 0x20(%r15)     
0x1002F19EA   movups   -0x60(%rbp), %xmm0   
0x1002F19EE   movups   -0x50(%rbp), %xmm1   
0x1002F19F2   movups   %xmm1, 0x10(%r15)    
0x1002F19F7   movups   %xmm0, (%r15)        
0x1002F19FB   movl     %r14d, %ecx          
0x1002F19FE   btsq     $0x20, %rcx          
0x1002F1A03   movb     $0x1, 0x28(%r15)     
0x1002F1A08   movq     %rax, 0x30(%r15)     
0x1002F1A0C   movb     $0x2, 0x38(%r15)     
0x1002F1A11   movl     -0x64(%rbp), %eax    
0x1002F1A14   movl     %eax, 0x3c(%r15)     
0x1002F1A18   movq     $0x0, 0x40(%r15)     
0x1002F1A20   movq     %rcx, 0x48(%r15)     
0x1002F1A24   xorps    %xmm0, %xmm0         
0x1002F1A27   movups   %xmm0, 0x50(%r15)    
0x1002F1A2C   movups   %xmm0, 0x60(%r15)    
0x1002F1A31   movq     %r13, %rdi           
0x1002F1A34   callq    *0x64d7ce(%rip)      ; _objc_release
0x1002F1A3A   movq     -0x88(%rbp), %rdi    
0x1002F1A41   callq    *0x64d7c1(%rip)      ; _objc_release
0x1002F1A47   movq     -0x78(%rbp), %rdi    
0x1002F1A4B   callq    *0x64d7b7(%rip)      ; _objc_release
0x1002F1A51   movq     0x64cf98(%rip), %rax  ; ___stack_chk_guard
0x1002F1A58   movq     (%rax), %rax         
0x1002F1A5B   cmpq     -0x30(%rbp), %rax    
0x1002F1A5F   jne      0x1002f1a73          
0x1002F1A61   movq     %r15, %rax           
0x1002F1A64   addq     $0x68, %rsp          
0x1002F1A68   popq     %rbx                 
0x1002F1A69   popq     %r12                 
0x1002F1A6B   popq     %r13                 
0x1002F1A6D   popq     %r14                 
0x1002F1A6F   popq     %r15                 
0x1002F1A71   popq     %rbp                 
0x1002F1A72   retq                          
0x1002F1A73   callq    ___stack_chk_fail    
0x1002F1A78   jmp      0x1002f1a9a          
0x1002F1A7A   movq     %rax, %r15           
0x1002F1A7D   movq     %rbx, %rdi           
0x1002F1A80   callq    *0x64d782(%rip)      ; _objc_release
0x1002F1A86   jmp      0x1002f1ac0          
0x1002F1A88   jmp      0x1002f1abd          
0x1002F1A8A   movq     %rax, %r15           
0x1002F1A8D   movq     %rbx, %rdi           
0x1002F1A90   callq    *0x64d772(%rip)      ; _objc_release
0x1002F1A96   jmp      0x1002f1acf          
0x1002F1A98   jmp      0x1002f1acc          
0x1002F1A9A   movq     %rax, %r15           
0x1002F1A9D   movq     %r13, %rdi           
0x1002F1AA0   callq    *0x64d762(%rip)      ; _objc_release
0x1002F1AA6   jmp      0x1002f1acf          
0x1002F1AA8   jmp      0x1002f1acc          
0x1002F1AAA   movq     %rax, %r15           
0x1002F1AAD   jmp      0x1002f1adc          
0x1002F1AAF   movq     %rax, %r15           
0x1002F1AB2   movq     %r14, %rdi           
0x1002F1AB5   callq    *0x64d74d(%rip)      ; _objc_release
0x1002F1ABB   jmp      0x1002f1ac0          
0x1002F1ABD   movq     %rax, %r15           
0x1002F1AC0   movq     -0x70(%rbp), %rdi    
0x1002F1AC4   callq    *0x64d73e(%rip)      ; _objc_release
0x1002F1ACA   jmp      0x1002f1acf          
0x1002F1ACC   movq     %rax, %r15           
0x1002F1ACF   movq     -0x88(%rbp), %rdi    
0x1002F1AD6   callq    *0x64d72c(%rip)      ; _objc_release
0x1002F1ADC   movq     -0x78(%rbp), %rdi    
0x1002F1AE0   callq    *0x64d722(%rip)      ; _objc_release
0x1002F1AE6   jmp      0x1002f1aeb          
0x1002F1AE8   movq     %rax, %r15           
0x1002F1AEB   movq     %r15, %rdi           
0x1002F1AEE   callq    __Unwind_Resume      
0x1002F1AF3   pushq    %rbp                 
0x1002F1AF4   movq     %rsp, %rbp           
0x1002F1AF7   pushq    %r15                 
0x1002F1AF9   pushq    %r14                 
0x1002F1AFB   pushq    %r13                 
0x1002F1AFD   pushq    %r12                 
0x1002F1AFF   pushq    %rbx                 
