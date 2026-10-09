0x100408E00   movq     %rbx, %rdi           
0x100408E03   callq    0x1004a3879          
0x100408E08   movl     $0x10, %edi          
0x100408E0D   callq    ___cxa_allocate_exception 
0x100408E12   movq     %rax, %rbx           
0x100408E15   leaq     0x1384fd(%rip), %rsi  ; string literal: "Missing channel-select for band"
0x100408E1C   movq     %rax, %rdi           
0x100408E1F   callq    0x1004028f6          
0x100408E24   movq     %rbx, %rdi           
0x100408E27   callq    0x1004a3879          
0x100408E2C   jmp      0x100408e2e          
0x100408E2E   movq     %rax, %r14           
0x100408E31   movq     %rbx, %rdi           
0x100408E34   callq    ___cxa_free_exception 
0x100408E39   movq     %r14, %rdi           
0x100408E3C   callq    __Unwind_Resume      
0x100408E41   btl      $0x10, %edi          
0x100408E45   jae      0x100408e6d          
0x100408E47   pushq    %rbp                 
0x100408E48   movq     %rsp, %rbp           
0x100408E4B   movzwl   %di, %edi            
0x100408E4E   callq    0x100408d53          
0x100408E53   testb    %al, %al             
0x100408E55   sete     %cl                  
0x100408E58   andb     %dl, %cl             
0x100408E5A   cmpb     $0x1, %cl            
0x100408E5D   popq     %rbp                 
0x100408E5E   jne      0x100408e6d          
0x100408E60   movzbl   %ah, %ecx            
0x100408E63   shrl     $0x8, %eax           
0x100408E66   andl     $0xff00, %eax        
0x100408E6B   jmp      0x100408e71          
0x100408E6D   xorl     %ecx, %ecx           
0x100408E6F   xorl     %eax, %eax           
0x100408E71   movzwl   %cx, %ecx            
0x100408E74   orl      %eax, %ecx           
0x100408E76   movl     %ecx, %eax           
0x100408E78   retq                          
0x100408E79   addb     %al, (%rax)          
0x100408E7B   addb     %dl, 0x48(%rbp)      
0x100408E7E   movl     %esp, %ebp           
0x100408E80   cmpl     $0x1, %edi           
0x100408E83   sete     %al                  
0x100408E86   shlb     $0x5, %al            
0x100408E89   testl    %edi, %edi           
0x100408E8B   movzbl   %al, %eax            
0x100408E8E   movl     $0x10, %ecx          
0x100408E93   cmovnel  %eax, %ecx           
0x100408E96   movzbl   %cl, %eax            
0x100408E99   popq     %rbp                 
0x100408E9A   retq                          
0x100408E9B   pushq    %rbp                 
0x100408E9C   movq     %rsp, %rbp           
0x100408E9F   xorl     %eax, %eax           
0x100408EA1   cmpl     $0x20, %edi          
0x100408EA4   setne    %al                  
0x100408EA7   leal     (%rax,%rax,2), %ecx  
0x100408EAA   incl     %ecx                 
0x100408EAC   xorl     %eax, %eax           
0x100408EAE   cmpl     $0x10, %edi          
0x100408EB1   cmovnel  %ecx, %eax           
0x100408EB4   popq     %rbp                 
0x100408EB5   retq                          
0x100408EB6   addb     %al, (%rax)          
0x100408EB8   pushq    %rbp                 
0x100408EB9   movq     %rsp, %rbp           
0x100408EBC   movl     %edi, %eax           
0x100408EBE   cmpl     $0x1, %edi           
0x100408EC1   sete     %cl                  
0x100408EC4   shlb     $0x5, %cl            
0x100408EC7   testl    %edi, %edi           
0x100408EC9   movzbl   %cl, %ecx            
0x100408ECC   movl     $0x10, %edx          
0x100408ED1   cmovel   %edx, %ecx           
0x100408ED4   cmpl     $0x1, %esi           
0x100408ED7   sete     %dil                 
0x100408EDB   shlb     $0x5, %dil           
0x100408EDF   testl    %esi, %esi           
0x100408EE1   movzbl   %dil, %edi           
0x100408EE5   cmovel   %edx, %edi           
0x100408EE8   cmpb     %dil, %cl            
0x100408EEB   cmoval   %esi, %eax           
0x100408EEE   popq     %rbp                 
0x100408EEF   retq                          
0x100408EF0   pushq    %rbp                 
0x100408EF1   movq     %rsp, %rbp           
0x100408EF4   cmpb     $0x0, (%rdi)         
0x100408EF7   sete     %al                  
0x100408EFA   popq     %rbp                 
0x100408EFB   retq                          
0x100408EFC   pushq    %rbp                 
0x100408EFD   movq     %rsp, %rbp           
0x100408F00   movl     %edi, %edx           
0x100408F02   shrl     $0x8, %edx           
0x100408F05   xorl     %eax, %eax           
0x100408F07   xorl     %ecx, %ecx           
0x100408F09   cmpb     $0x10, %dl           
0x100408F0C   ja       0x100408f20          
0x100408F0E   movl     $0x101f7, %esi       
0x100408F13   btl      %edx, %esi           
0x100408F16   jae      0x100408f20          
0x100408F18   rolw     $0x8, %di            
0x100408F1C   movb     $0x1, %cl            
0x100408F1E   movl     %edi, %eax           
0x100408F20   movzbl   %cl, %ecx            
0x100408F23   shll     $0x10, %ecx          
0x100408F26   movzwl   %ax, %eax            
0x100408F29   orl      %ecx, %eax           
0x100408F2B   popq     %rbp                 
0x100408F2C   retq                          
0x100408F2D   pushq    %rbp                 
0x100408F2E   movq     %rsp, %rbp           
0x100408F31   movzwl   (%rdi), %eax         
0x100408F34   rolw     $0x8, %ax            
0x100408F38   movzwl   %ax, %eax            
0x100408F3B   popq     %rbp                 
0x100408F3C   retq                          
0x100408F3D   pushq    %rbp                 
0x100408F3E   movq     %rsp, %rbp           
0x100408F41   movzbl   0x1(%rdi), %ecx      
0x100408F45   movzbl   (%rdi), %eax         
0x100408F48   testw    %ax, %ax             
0x100408F4B   je       0x100408f67          
0x100408F4D   movl     %eax, %edx           
0x100408F4F   xorb     $0x10, %dl           
0x100408F52   movl     %ecx, %esi           
0x100408F54   xorb     $0x1, %sil           
0x100408F58   orb      %dl, %sil            
0x100408F5B   jne      0x100408f7e          
0x100408F5D   movw     $0x1000, %ax         
0x100408F61   movw     $0x1, %cx            
0x100408F65   jmp      0x100408f8a          
0x100408F67   leal     -0x1(%rcx), %eax     
0x100408F6A   cmpb     $0xd, %al            
0x100408F6C   jae      0x100408f86          
0x100408F6E   movzbl   %al, %eax            
0x100408F71   leaq     0x1f07ec(%rip), %rcx  ; 
0x100408F78   movzwl   (%rcx,%rax,2), %ecx  
0x100408F7C   jmp      0x100408f88          
0x100408F7E   movzwl   %ax, %eax            
0x100408F81   shll     $0x8, %eax           
0x100408F84   jmp      0x100408f8a          
0x100408F86   xorl     %ecx, %ecx           
0x100408F88   xorl     %eax, %eax           
0x100408F8A   orl      %ecx, %eax           
0x100408F8C   popq     %rbp                 
0x100408F8D   retq                          
0x100408F8E   pushq    %rbp                 
0x100408F8F   movq     %rsp, %rbp           
0x100408F92   pushq    %r14                 
0x100408F94   pushq    %rbx                 
0x100408F95   subq     $0x120, %rsp         
0x100408F9C   movq     %rsi, %r14           
0x100408F9F   movq     %rdi, %rbx           
0x100408FA2   leaq     -0x128(%rbp), %rdi   
0x100408FA9   callq    0x10023977c          
0x100408FAE   movzbl   (%r14), %eax         
0x100408FB2   cmpq     $0x10, %rax          
0x100408FB6   ja       0x1004090e4          
0x100408FBC   leaq     0x209(%rip), %rcx    ; 
0x100408FC3   movslq   (%rcx,%rax,4), %rax  
0x100408FC7   addq     %rcx, %rax           
0x100408FCA   jmpq     *%rax                
0x100408FCC   movl     $0x7, %edx           
0x100408FD1   leaq     0x138361(%rip), %rsi  ; string literal: "Legacy_"
0x100408FD8   jmp      0x100409020          
0x100408FDA   movl     $0x5, %edx           
0x100408FDF   leaq     0x138360(%rip), %rsi  ; string literal: "IEEE_"
0x100408FE6   jmp      0x100409072          
0x100408FEB   leaq     -0x118(%rbp), %rdi   
0x100408FF2   leaq     0x138365(%rip), %rsi  ; string literal: "Split"
0x100408FF9   movl     $0x5, %edx           
0x100408FFE   callq    0x100311350          
0x100409003   movq     %rax, %rdi           
0x100409006   movl     $0x3, %edx           
0x10040900B   leaq     0x138352(%rip), %rsi  ; string literal: "ND_"
0x100409012   jmp      0x100409079          
0x100409014   movl     $0x5, %edx           
0x100409019   leaq     0x138326(%rip), %rsi  ; string literal: "IEEE_"
0x100409020   leaq     -0x118(%rbp), %rdi   
0x100409027   jmp      0x1004090b6          
0x10040902C   movl     $0x3, %edx           
0x100409031   leaq     0x138330(%rip), %rsi  ; string literal: "MMS"
0x100409038   jmp      0x1004090d8          
0x10040903D   leaq     -0x118(%rbp), %rdi   
0x100409044   leaq     0x138321(%rip), %rsi  ; string literal: "Mixed_"
0x10040904B   movl     $0x6, %edx           
0x100409050   callq    0x100311350          
0x100409055   movq     %rax, %rdi           
0x100409058   movl     $0x3, %edx           
0x10040905D   leaq     0x138304(%rip), %rsi  ; string literal: "MMS"
0x100409064   jmp      0x1004090df          
0x100409066   movl     $0xc, %edx           
0x10040906B   leaq     0x1382df(%rip), %rsi  ; string literal: "Proprietary_"
0x100409072   leaq     -0x118(%rbp), %rdi   
0x100409079   callq    0x100311350          
0x10040907E   movq     %rax, %rdi           
0x100409081   movl     $0x4, %edx           
0x100409086   leaq     0x1382bf(%rip), %rsi  ; string literal: "HPRF"
0x10040908D   jmp      0x1004090df          
0x10040908F   leaq     -0x118(%rbp), %rdi   
0x100409096   leaq     0x1382c1(%rip), %rsi  ; string literal: "Split"
0x10040909D   movl     $0x5, %edx           
0x1004090A2   callq    0x100311350          
0x1004090A7   movq     %rax, %rdi           
0x1004090AA   movl     $0x3, %edx           
0x1004090AF   leaq     0x1382ae(%rip), %rsi  ; string literal: "ND_"
0x1004090B6   callq    0x100311350          
0x1004090BB   movq     %rax, %rdi           
0x1004090BE   movl     $0x4, %edx           
0x1004090C3   leaq     0x138277(%rip), %rsi  ; string literal: "BPRF"
0x1004090CA   jmp      0x1004090df          
0x1004090CC   movl     $0x2, %edx           
0x1004090D1   leaq     0x13829b(%rip), %rsi  ; string literal: "NB"
0x1004090D8   leaq     -0x118(%rbp), %rdi   
0x1004090DF   callq    0x100311350          
0x1004090E4   leaq     -0x118(%rbp), %rdi   
0x1004090EB   leaq     0x138284(%rip), %rsi  ; string literal: " PktIdx "
0x1004090F2   movl     $0x8, %edx           
0x1004090F7   callq    0x100311350          
0x1004090FC   movzbl   0x1(%r14), %esi      
0x100409101   movq     %rax, %rdi           
0x100409104   callq    __ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi 
0x100409109   leaq     -0x110(%rbp), %rsi   
0x100409110   movq     %rbx, %rdi           
0x100409113   callq    __ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv 
0x100409118   movq     0x536589(%rip), %r14  ; __ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE
0x10040911F   movq     (%r14), %rax         
0x100409122   movq     0x40(%r14), %rcx     
0x100409126   movq     %rax, -0x128(%rbp)   
0x10040912D   movq     -0x18(%rax), %rax    
0x100409131   movq     %rcx, -0x128(%rbp,%rax) 
0x100409139   movq     0x48(%r14), %rax     
0x10040913D   movq     %rax, -0x118(%rbp)   
0x100409144   movq     0x536595(%rip), %rax  ; __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE
0x10040914B   addq     $0x10, %rax          
0x10040914F   movq     %rax, -0x110(%rbp)   
0x100409156   testb    $0x1, -0xd0(%rbp)    
0x10040915D   je       0x10040916b          
0x10040915F   movq     -0xc0(%rbp), %rdi    
0x100409166   callq    __ZdlPv              
0x10040916B   movq     0x536566(%rip), %rax  ; __ZTVNSt3__115basic_streambufIcNS_11char_traitsIcEEEE
0x100409172   addq     $0x10, %rax          
0x100409176   leaq     -0x108(%rbp), %rdi   
0x10040917D   movq     %rax, -0x8(%rdi)     
0x100409181   callq    __ZNSt3__16localeD1Ev 
0x100409186   addq     $0x8, %r14           
0x10040918A   leaq     -0x128(%rbp), %rdi   
0x100409191   movq     %r14, %rsi           
0x100409194   callq    __ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev 
0x100409199   leaq     -0xa8(%rbp), %rdi    
0x1004091A0   callq    __ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev 
0x1004091A5   movq     %rbx, %rax           
0x1004091A8   addq     $0x120, %rsp         
0x1004091AF   popq     %rbx                 
0x1004091B0   popq     %r14                 
0x1004091B2   popq     %rbp                 
0x1004091B3   retq                          
0x1004091B4   movq     %rax, %rbx           
0x1004091B7   leaq     -0x128(%rbp), %rdi   
0x1004091BE   callq    0x1003fcee8          
0x1004091C3   movq     %rbx, %rdi           
0x1004091C6   callq    __Unwind_Resume      
0x1004091CB   nop                           
0x1004091CC   addb     %bh, %dh             
0x100409212   movl     %esp, %ebp           
0x100409214   pushq    %rbx                 
0x100409215   subq     $0x118, %rsp         
0x10040921C   movq     %rdi, %rbx           
0x10040921F   leaq     -0x120(%rbp), %rdi   
0x100409226   movq     %rsi, 0x8(%rdi)      
0x10040922A   movq     %rdx, 0x10(%rdi)     
0x10040922E   movq     %rcx, 0x18(%rdi)     
0x100409232   movq     %r8, 0x20(%rdi)      
0x100409236   movq     %r9, 0x28(%rdi)      
0x10040923A   testb    %al, %al             
0x10040923C   je       0x100409273          
0x10040923E   movaps   %xmm0, -0xf0(%rbp)   
0x100409245   movaps   %xmm1, -0xe0(%rbp)   
0x10040924C   movaps   %xmm2, -0xd0(%rbp)   
