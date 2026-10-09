0x10015D5B1   movq     %rsp, %rbp           
0x10015D5B4   popq     %rbp                 
0x10015D5B5   jmp      0x10015d22c          
0x10015D5BA   pushq    %rbp                 
0x10015D5BB   movq     %rsp, %rbp           
0x10015D5BE   movl     (%rdi), %eax         
0x10015D5C0   cmpl     $0xc7, %eax          
0x10015D5C5   jg       0x10015d66a          
0x10015D5CB   cmpl     $0x7e, %eax          
0x10015D5CE   ja       0x10015d64c          
0x10015D5D0   movl     %eax, %ecx           
0x10015D5D2   leaq     0x183(%rip), %r8     ; 
0x10015D5D9   movslq   (%r8,%rcx,4), %rcx   
0x10015D5DD   addq     %r8, %rcx            
0x10015D5E0   jmpq     *%rcx                
0x10015D5E2   movd     0xc(%rdi), %xmm0     
0x10015D5E7   pshufb   0x485850(%rip), %xmm0  ; 
0x10015D5F0   movd     %xmm0, 0x4(%rdi)     
0x10015D5F5   xorl     %ecx, %ecx           
0x10015D5F7   movb     %cl, 0x8(%rdi)       
0x10015D5FA   movb     %cl, 0xb(%rdi)       
0x10015D5FD   jmp      0x10015d64c          
0x10015D5FF   testb    %sil, %sil           
0x10015D602   je       0x10015d626          
0x10015D604   movl     0xc(%rdi), %ecx      
0x10015D607   movd     %ecx, %xmm0          
0x10015D60B   movl     %ecx, %edx           
0x10015D60D   shrl     $0x18, %edx          
0x10015D610   movb     %dl, 0x4(%rdi)       
0x10015D613   pshufb   0x485834(%rip), %xmm0  ; 
0x10015D61C   movd     %xmm0, 0x5(%rdi)     
0x10015D621   movb     %ch, 0xb(%rdi)       
0x10015D624   jmp      0x10015d64c          
0x10015D626   xorb     $0x1, %dl            
0x10015D629   movzbl   %dl, %ecx            
0x10015D62C   movzbl   0xc(%rdi,%rcx,2), %edx 
0x10015D631   movzbl   0xd(%rdi,%rcx,2), %ecx 
0x10015D636   movb     %cl, 0x4(%rdi)       
0x10015D639   movd     %edx, %xmm0          
0x10015D63D   pinsrb   $0x1, %ecx, %xmm0    
0x10015D643   movd     %xmm0, 0x5(%rdi)     
0x10015D648   movb     $0x0, 0xb(%rdi)      
0x10015D64C   leal     -0x71(%rax), %ecx    
0x10015D64F   cmpl     $0xe, %ecx           
0x10015D652   jb       0x10015d65c          
0x10015D654   addl     $-0xf, %eax          
0x10015D657   cmpl     $0xc, %eax           
0x10015D65A   ja       0x10015d668          
0x10015D65C   movzwl   0x10(%rdi), %eax     
0x10015D660   rolw     $0x8, %ax            
0x10015D664   movw     %ax, 0x9(%rdi)       
0x10015D668   popq     %rbp                 
0x10015D669   retq                          
0x10015D66A   cmpl     $0xc9, %eax          
0x10015D66F   jle      0x10015d6c8          
0x10015D671   cmpl     $0xca, %eax          
0x10015D676   je       0x10015d5e2          
0x10015D67C   cmpl     $0x3e5, %eax         
0x10015D681   je       0x10015d68a          
0x10015D683   cmpl     $0x3e7, %eax         
0x10015D688   jne      0x10015d64c          
0x10015D68A   xorl     %ecx, %ecx           
0x10015D68C   movb     %cl, 0xb(%rdi)       
0x10015D68F   movb     %cl, 0x8(%rdi)       
0x10015D692   movl     $0x0, 0x4(%rdi)      
0x10015D699   jmp      0x10015d64c          
0x10015D69B   testb    %sil, %sil           
0x10015D69E   je       0x10015d629          
0x10015D6A0   movzbl   0xf(%rdi), %ecx      
0x10015D6A4   movd     0xc(%rdi), %xmm0     
0x10015D6A9   pshufb   0x48577e(%rip), %xmm0  ; 
0x10015D6B2   pinsrb   $0x3, %ecx, %xmm0    
0x10015D6B8   movd     %xmm0, 0x4(%rdi)     
0x10015D6BD   movb     0xe(%rdi), %dl       
0x10015D6C0   movb     %dl, 0x8(%rdi)       
0x10015D6C3   jmp      0x10015d5fa          
0x10015D6C8   cmpl     $0xc8, %eax          
0x10015D6CD   je       0x10015d5e2          
0x10015D6D3   cmpl     $0xc9, %eax          
0x10015D6D8   jne      0x10015d64c          
0x10015D6DE   testb    %sil, %sil           
0x10015D6E1   je       0x10015d72e          
0x10015D6E3   movzbl   0xf(%rdi), %eax      
0x10015D6E7   movd     0xc(%rdi), %xmm0     
0x10015D6EC   pshufb   0x48573b(%rip), %xmm0  ; 
0x10015D6F5   pinsrb   $0x3, %eax, %xmm0    
0x10015D6FB   movd     %xmm0, 0x4(%rdi)     
0x10015D700   movb     0xe(%rdi), %cl       
0x10015D703   movb     %cl, 0x8(%rdi)       
0x10015D706   movb     %al, 0xb(%rdi)       
0x10015D709   jmp      0x10015d668          
0x10015D70E   movd     0xc(%rdi), %xmm0     
0x10015D713   pshufb   0x485724(%rip), %xmm0  ; 
0x10015D71C   movd     %xmm0, 0x4(%rdi)     
0x10015D721   xorl     %eax, %eax           
0x10015D723   movb     %al, 0x8(%rdi)       
0x10015D726   movb     %al, 0xb(%rdi)       
0x10015D729   jmp      0x10015d65c          
0x10015D72E   xorb     $0x1, %dl            
0x10015D731   movzbl   %dl, %eax            
0x10015D734   movzbl   0xc(%rdi,%rax,2), %ecx 
0x10015D739   movzbl   0xd(%rdi,%rax,2), %eax 
0x10015D73E   movb     %al, 0x4(%rdi)       
0x10015D741   movd     %ecx, %xmm0          
0x10015D745   pinsrb   $0x1, %eax, %xmm0    
0x10015D74B   movd     %xmm0, 0x5(%rdi)     
0x10015D750   movb     $0x0, 0xb(%rdi)      
0x10015D754   jmp      0x10015d668          
0x10015D759   nopl     (%rax)               
0x10015D75C   movabsl  %eax, -0x5c0000015c000002 
0x10015D959   movq     %rsp, %rbp           
0x10015D95C   pushq    %rbx                 
0x10015D95D   pushq    %rax                 
0x10015D95E   movq     %rdi, %rbx           
0x10015D961   callq    0x10015d5ba          
0x10015D966   movq     %rbx, %rdi           
0x10015D969   xorl     %esi, %esi           
0x10015D96B   callq    0x10015d980          
0x10015D970   testb    %al, %al             
0x10015D972   je       0x10015d97b          
0x10015D974   addq     $0x8, %rsp           
0x10015D978   popq     %rbx                 
0x10015D979   popq     %rbp                 
0x10015D97A   retq                          
0x10015D97B   callq    0x100479ed3          
0x10015D980   pushq    %rbp                 
0x10015D981   movq     %rsp, %rbp           
0x10015D984   pushq    %r14                 
0x10015D986   pushq    %rbx                 
0x10015D987   movq     %rdi, %rbx           
0x10015D98A   movl     (%rdi), %eax         
0x10015D98C   cmpl     $0xc7, %eax          
0x10015D991   jle      0x10015d9b9          
0x10015D993   cmpl     $0xc9, %eax          
0x10015D998   jle      0x10015d9d7          
0x10015D99A   cmpl     $0xca, %eax          
0x10015D99F   je       0x10015d9ef          
0x10015D9A1   cmpl     $0x3e5, %eax         
0x10015D9A6   je       0x10015d9af          
0x10015D9A8   cmpl     $0x3e7, %eax         
0x10015D9AD   jne      0x10015da2a          
0x10015D9AF   movq     %rbx, %rdi           
0x10015D9B2   callq    0x10015e0fc          
0x10015D9B7   jmp      0x10015d9f7          
0x10015D9B9   leal     -0x64(%rax), %ecx    
0x10015D9BC   cmpl     $0x1b, %ecx          
0x10015D9BF   jb       0x10015d9ef          
0x10015D9C1   leal     -0xb(%rax), %ecx     
0x10015D9C4   cmpl     $0x11, %ecx          
0x10015D9C7   jae      0x10015da05          
0x10015D9C9   movq     %rbx, %rdi           
0x10015D9CC   callq    0x10015dfd2          
0x10015D9D1   testb    %al, %al             
0x10015D9D3   jne      0x10015da1e          
0x10015D9D5   jmp      0x10015da2e          
0x10015D9D7   cmpl     $0xc8, %eax          
0x10015D9DC   je       0x10015d9ef          
0x10015D9DE   cmpl     $0xc9, %eax          
0x10015D9E3   jne      0x10015da2a          
0x10015D9E5   movq     %rbx, %rdi           
0x10015D9E8   callq    0x10015dfd2          
0x10015D9ED   jmp      0x10015da26          
0x10015D9EF   movq     %rbx, %rdi           
0x10015D9F2   callq    0x10015dfd2          
0x10015D9F7   testb    %al, %al             
0x10015D9F9   je       0x10015da2e          
0x10015D9FB   movq     %rbx, %rdi           
0x10015D9FE   callq    0x10015e146          
0x10015DA03   jmp      0x10015da26          
0x10015DA05   cmpl     $0xb, %eax           
0x10015DA08   jae      0x10015da2a          
0x10015DA0A   movl     %esi, %r14d          
0x10015DA0D   movq     %rbx, %rdi           
0x10015DA10   callq    0x10015dfd2          
0x10015DA15   testb    %al, %al             
0x10015DA17   je       0x10015da2e          
0x10015DA19   testb    %r14b, %r14b         
0x10015DA1C   je       0x10015da35          
0x10015DA1E   movq     %rbx, %rdi           
0x10015DA21   callq    0x10015e0a6          
0x10015DA26   testb    %al, %al             
0x10015DA28   je       0x10015da2e          
0x10015DA2A   movb     $0x1, %al            
0x10015DA2C   jmp      0x10015da30          
0x10015DA2E   xorl     %eax, %eax           
0x10015DA30   popq     %rbx                 
0x10015DA31   popq     %r14                 
0x10015DA33   popq     %rbp                 
0x10015DA34   retq                          
0x10015DA35   movq     %rbx, %rdi           
0x10015DA38   callq    0x10015e05e          
0x10015DA3D   jmp      0x10015d9d1          
0x10015DA3F   nop                           
0x10015DA40   pushq    %rbp                 
0x10015DA41   movq     %rsp, %rbp           
0x10015DA44   pushq    %rbx                 
0x10015DA45   pushq    %rax                 
0x10015DA46   movq     %rdi, %rbx           
0x10015DA49   callq    0x10015d5ba          
0x10015DA4E   movq     %rbx, %rdi           
0x10015DA51   xorl     %esi, %esi           
0x10015DA53   callq    0x10015d980          
0x10015DA58   testb    %al, %al             
0x10015DA5A   je       0x10015da63          
0x10015DA5C   addq     $0x8, %rsp           
0x10015DA60   popq     %rbx                 
0x10015DA61   popq     %rbp                 
0x10015DA62   retq                          
0x10015DA63   callq    0x100479ef6          
0x10015DA68   pushq    %rbp                 
0x10015DA69   movq     %rsp, %rbp           
0x10015DA6C   pushq    %rbx                 
0x10015DA6D   pushq    %rax                 
0x10015DA6E   movq     %rdi, %rbx           
0x10015DA71   movl     $0x1, %edx           
0x10015DA76   callq    0x10015d5ba          
0x10015DA7B   movq     %rbx, %rdi           
0x10015DA7E   xorl     %esi, %esi           
0x10015DA80   callq    0x10015d980          
0x10015DA85   testb    %al, %al             
0x10015DA87   je       0x10015da90          
0x10015DA89   addq     $0x8, %rsp           
0x10015DA8D   popq     %rbx                 
0x10015DA8E   popq     %rbp                 
0x10015DA8F   retq                          
0x10015DA90   callq    0x100479f19          
0x10015DA95   nop                           
0x10015DA96   pushq    %rbp                 
0x10015DA97   movq     %rsp, %rbp           
0x10015DA9A   pushq    %rbx                 
0x10015DA9B   pushq    %rax                 
0x10015DA9C   movq     %rdi, %rbx           
0x10015DA9F   movl     $0x1, %edx           
0x10015DAA4   callq    0x10015d5ba          
0x10015DAA9   movq     %rbx, %rdi           
0x10015DAAC   xorl     %esi, %esi           
0x10015DAAE   callq    0x10015d980          
0x10015DAB3   testb    %al, %al             
0x10015DAB5   je       0x10015dabe          
0x10015DAB7   addq     $0x8, %rsp           
0x10015DABB   popq     %rbx                 
0x10015DABC   popq     %rbp                 
0x10015DABD   retq                          
0x10015DABE   callq    0x100479f3c          
0x10015DAC3   nop                           
0x10015DAC4   pushq    %rbp                 
0x10015DAC5   movq     %rsp, %rbp           
0x10015DAC8   movl     (%rdi), %eax         
0x10015DACA   cmpl     $0xc7, %eax          
0x10015DACF   jg       0x10015db4e          
0x10015DAD1   cmpl     $0x7e, %eax          
0x10015DAD4   ja       0x10015db3d          
0x10015DAD6   movl     %eax, %eax           
0x10015DAD8   leaq     0x15d(%rip), %rcx    ; 
0x10015DADF   movslq   (%rcx,%rax,4), %rax  
0x10015DAE3   addq     %rcx, %rax           
0x10015DAE6   jmpq     *%rax                
0x10015DAE8   movd     0xc(%rdi), %xmm0     
0x10015DAED   pshufb   0x48534a(%rip), %xmm0  ; 
0x10015DAF6   jmp      0x10015db30          
0x10015DAF8   testb    %sil, %sil           
0x10015DAFB   je       0x10015db1f          
0x10015DAFD   movl     0xc(%rdi), %eax      
0x10015DB00   movd     %eax, %xmm0          
0x10015DB04   movl     %eax, %ecx           
0x10015DB06   shrl     $0x18, %ecx          
0x10015DB09   movb     %cl, 0x4(%rdi)       
0x10015DB0C   pshufb   0x48533b(%rip), %xmm0  ; 
0x10015DB15   movd     %xmm0, 0x5(%rdi)     
0x10015DB1A   movb     %ah, 0xb(%rdi)       
0x10015DB1D   jmp      0x10015db3d          
0x10015DB1F   movzbl   0xd(%rdi), %eax      
0x10015DB23   movd     %eax, %xmm0          
0x10015DB27   pshufb   0x485330(%rip), %xmm0  ; 
0x10015DB30   movd     %xmm0, 0x4(%rdi)     
0x10015DB35   xorl     %eax, %eax           
0x10015DB37   movb     %al, 0x8(%rdi)       
0x10015DB3A   movb     %al, 0xb(%rdi)       
0x10015DB3D   xorl     %esi, %esi           
0x10015DB3F   callq    0x10015d980          
0x10015DB44   testb    %al, %al             
0x10015DB46   je       0x10015dc36          
0x10015DB4C   popq     %rbp                 
0x10015DB4D   retq                          
0x10015DB4E   cmpl     $0xc9, %eax          
0x10015DB53   jle      0x10015dbae          
0x10015DB55   cmpl     $0xca, %eax          
0x10015DB5A   je       0x10015dae8          
0x10015DB5C   cmpl     $0x3e5, %eax         
0x10015DB61   je       0x10015db6a          
0x10015DB63   cmpl     $0x3e7, %eax         
0x10015DB68   jne      0x10015db3d          
0x10015DB6A   xorl     %eax, %eax           
0x10015DB6C   movb     %al, 0xb(%rdi)       
0x10015DB6F   movb     %al, 0x8(%rdi)       
0x10015DB72   movl     $0x0, 0x4(%rdi)      
0x10015DB79   jmp      0x10015db3d          
0x10015DB7B   testb    %sil, %sil           
0x10015DB7E   je       0x10015dba5          
0x10015DB80   movzbl   0xf(%rdi), %eax      
0x10015DB84   movd     0xc(%rdi), %xmm0     
0x10015DB89   pshufb   0x48529e(%rip), %xmm0  ; 
0x10015DB92   pinsrb   $0x3, %eax, %xmm0    
0x10015DB98   movd     %xmm0, 0x4(%rdi)     
0x10015DB9D   movb     0xe(%rdi), %cl       
0x10015DBA0   movb     %cl, 0x8(%rdi)       
0x10015DBA3   jmp      0x10015db3a          
0x10015DBA5   movzbl   0xf(%rdi), %eax      
0x10015DBA9   jmp      0x10015db23          
0x10015DBAE   cmpl     $0xc8, %eax          
0x10015DBB3   je       0x10015dae8          
0x10015DBB9   cmpl     $0xc9, %eax          
0x10015DBBE   jne      0x10015db3d          
0x10015DBC4   movb     0xc(%rdi), %al       
0x10015DBC7   movb     0xd(%rdi), %cl       
0x10015DBCA   movb     %cl, 0x4(%rdi)       
0x10015DBCD   movb     %al, 0x5(%rdi)       
0x10015DBD0   movb     %cl, 0x6(%rdi)       
0x10015DBD3   testb    %sil, %sil           
0x10015DBD6   je       0x10015dc27          
0x10015DBD8   movb     0xe(%rdi), %al       
0x10015DBDB   movb     0xf(%rdi), %cl       
0x10015DBDE   movb     %cl, 0x7(%rdi)       
0x10015DBE1   movb     %al, 0x8(%rdi)       
0x10015DBE4   movb     %cl, 0xb(%rdi)       
0x10015DBE7   jmp      0x10015db3d          
0x10015DBEC   testb    %sil, %sil           
0x10015DBEF   je       0x10015dc13          
0x10015DBF1   movb     0xf(%rdi), %al       
0x10015DBF4   movb     %al, 0x4(%rdi)       
0x10015DBF7   movb     0xc(%rdi), %cl       
0x10015DBFA   movb     0xe(%rdi), %dl       
0x10015DBFD   movb     %dl, 0x5(%rdi)       
0x10015DC00   movb     %al, 0x6(%rdi)       
0x10015DC03   movb     $0x8, %al            
0x10015DC05   movb     %al, 0x7(%rdi)       
0x10015DC08   movb     %cl, 0x8(%rdi)       
0x10015DC0B   movb     %al, 0xb(%rdi)       
0x10015DC0E   jmp      0x10015db3d          
0x10015DC13   movd     0x485255(%rip), %xmm0  ; 
0x10015DC1B   pinsrb   $0x1, 0xc(%rdi), %xmm0 
0x10015DC22   jmp      0x10015db30          
0x10015DC27   movw     $0x0, 0x7(%rdi)      
0x10015DC2D   movb     $0x0, 0xb(%rdi)      
0x10015DC31   jmp      0x10015db3d          
0x10015DC36   callq    0x100479f5f          
0x10015DC3B   nop                           
0x10015DC3C   movb     $-0x1, %al           
0x10015DE3A   movl     %esp, %ebp           
0x10015DE3C   pushq    %rbx                 
0x10015DE3D   pushq    %rax                 
0x10015DE3E   movq     %rdi, %rbx           
0x10015DE41   callq    0x10015d5ba          
0x10015DE46   movq     %rbx, %rdi           
0x10015DE49   movl     $0x1, %esi           
0x10015DE4E   callq    0x10015d980          
0x10015DE53   testb    %al, %al             
0x10015DE55   je       0x10015de5e          
0x10015DE57   addq     $0x8, %rsp           
0x10015DE5B   popq     %rbx                 
0x10015DE5C   popq     %rbp                 
0x10015DE5D   retq                          
0x10015DE5E   callq    0x100479f82          
0x10015DE63   nop                           
0x10015DE64   pushq    %rbp                 
0x10015DE65   movq     %rsp, %rbp           
0x10015DE68   pushq    %rbx                 
0x10015DE69   pushq    %rax                 
0x10015DE6A   movq     %rdi, %rbx           
0x10015DE6D   callq    0x10015d5ba          
0x10015DE72   movq     %rbx, %rdi           
0x10015DE75   xorl     %esi, %esi           
0x10015DE77   callq    0x10015d980          
0x10015DE7C   testb    %al, %al             
0x10015DE7E   je       0x10015de87          
0x10015DE80   addq     $0x8, %rsp           
0x10015DE84   popq     %rbx                 
0x10015DE85   popq     %rbp                 
0x10015DE86   retq                          
0x10015DE87   callq    0x100479fa5          
0x10015DE8C   pushq    %rbp                 
0x10015DE8D   movq     %rsp, %rbp           
0x10015DE90   pushq    %rbx                 
0x10015DE91   pushq    %rax                 
0x10015DE92   movq     %rdi, %rbx           
0x10015DE95   callq    0x10015d5ba          
0x10015DE9A   movq     %rbx, %rdi           
0x10015DE9D   xorl     %esi, %esi           
0x10015DE9F   callq    0x10015d980          
0x10015DEA4   testb    %al, %al             
0x10015DEA6   je       0x10015deaf          
0x10015DEA8   addq     $0x8, %rsp           
0x10015DEAC   popq     %rbx                 
0x10015DEAD   popq     %rbp                 
0x10015DEAE   retq                          
0x10015DEAF   callq    0x100479fc8          
0x10015DEB4   pushq    %rbp                 
0x10015DEB5   movq     %rsp, %rbp           
0x10015DEB8   pushq    %rbx                 
0x10015DEB9   pushq    %rax                 
0x10015DEBA   movq     %rdi, %rbx           
0x10015DEBD   callq    0x10015d5ba          
0x10015DEC2   movq     %rbx, %rdi           
0x10015DEC5   xorl     %esi, %esi           
0x10015DEC7   callq    0x10015d980          
0x10015DECC   testb    %al, %al             
0x10015DECE   je       0x10015ded7          
0x10015DED0   addq     $0x8, %rsp           
0x10015DED4   popq     %rbx                 
0x10015DED5   popq     %rbp                 
0x10015DED6   retq                          
0x10015DED7   callq    0x100479fee          
0x10015DEDC   pushq    %rbp                 
0x10015DEDD   movq     %rsp, %rbp           
0x10015DEE0   pushq    %rbx                 
0x10015DEE1   pushq    %rax                 
0x10015DEE2   movq     %rdi, %rbx           
0x10015DEE5   callq    0x10015d5ba          
0x10015DEEA   movq     %rbx, %rdi           
0x10015DEED   xorl     %esi, %esi           
0x10015DEEF   callq    0x10015d980          
0x10015DEF4   testb    %al, %al             
0x10015DEF6   je       0x10015deff          
0x10015DEF8   addq     $0x8, %rsp           
0x10015DEFC   popq     %rbx                 
0x10015DEFD   popq     %rbp                 
0x10015DEFE   retq                          
0x10015DEFF   callq    0x10047a011          
0x10015DF04   pushq    %rbp                 
0x10015DF05   movq     %rsp, %rbp           
0x10015DF08   popq     %rbp                 
0x10015DF09   jmp      0x10015d5ba          
0x10015DF0E   pushq    %rbp                 
0x10015DF0F   movq     %rsp, %rbp           
0x10015DF12   movb     0x10(%rbp), %al      
0x10015DF15   movb     %sil, 0x4(%rdi)      
0x10015DF19   movb     %dl, 0x5(%rdi)       
0x10015DF1C   movb     %cl, 0x6(%rdi)       
0x10015DF1F   movb     %r8b, 0x7(%rdi)      
0x10015DF23   movb     %r9b, 0x8(%rdi)      
0x10015DF27   movb     %al, 0xb(%rdi)       
0x10015DF2A   xorl     %esi, %esi           
0x10015DF2C   callq    0x10015d980          
0x10015DF31   testb    %al, %al             
0x10015DF33   je       0x10015df37          
0x10015DF35   popq     %rbp                 
0x10015DF36   retq                          
0x10015DF37   callq    0x10047a034          
0x10015DF3C   pushq    %rbp                 
0x10015DF3D   movq     %rsp, %rbp           
0x10015DF40   movl     (%rdi), %ecx         
0x10015DF42   movw     $0xfe68, %ax         
0x10015DF46   cmpl     $0xc7, %ecx          
0x10015DF4C   jle      0x10015df6b          
0x10015DF4E   leal     -0xc8(%rcx), %edx    
0x10015DF54   cmpl     $0x3, %edx           
0x10015DF57   jb       0x10015df7b          
0x10015DF59   cmpl     $0x3e5, %ecx         
0x10015DF5F   je       0x10015df7b          
0x10015DF61   cmpl     $0x3e7, %ecx         
0x10015DF67   je       0x10015df7b          
0x10015DF69   jmp      0x10015df7f          
0x10015DF6B   leal     -0x64(%rcx), %edx    
0x10015DF6E   cmpl     $0x1b, %edx          
0x10015DF71   jb       0x10015df7b          
0x10015DF73   addl     $-0x3, %ecx          
0x10015DF76   cmpl     $0x19, %ecx          
0x10015DF79   jae      0x10015df7f          
0x10015DF7B   movw     $0xfe5c, %ax         
0x10015DF7F   cwtl                          
0x10015DF80   popq     %rbp                 
0x10015DF81   retq                          
0x10015DF82   pushq    %rbp                 
0x10015DF83   movq     %rsp, %rbp           
0x10015DF86   movzbl   0x4(%rdi), %eax      
0x10015DF8A   popq     %rbp                 
0x10015DF8B   retq                          
0x10015DF8C   pushq    %rbp                 
0x10015DF8D   movq     %rsp, %rbp           
0x10015DF90   movzbl   0x5(%rdi), %eax      
0x10015DF94   popq     %rbp                 
0x10015DF95   retq                          
0x10015DF96   pushq    %rbp                 
0x10015DF97   movq     %rsp, %rbp           
0x10015DF9A   movzbl   0x6(%rdi), %eax      
0x10015DF9E   popq     %rbp                 
0x10015DF9F   retq                          
0x10015DFA0   pushq    %rbp                 
0x10015DFA1   movq     %rsp, %rbp           
0x10015DFA4   movzbl   0x7(%rdi), %eax      
0x10015DFA8   popq     %rbp                 
0x10015DFA9   retq                          
0x10015DFAA   pushq    %rbp                 
0x10015DFAB   movq     %rsp, %rbp           
0x10015DFAE   movzbl   0x8(%rdi), %eax      
0x10015DFB2   popq     %rbp                 
0x10015DFB3   retq                          
0x10015DFB4   pushq    %rbp                 
0x10015DFB5   movq     %rsp, %rbp           
0x10015DFB8   movzbl   0xb(%rdi), %eax      
0x10015DFBC   popq     %rbp                 
0x10015DFBD   retq                          
