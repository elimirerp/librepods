0x1002F793C   movl     $0x0, (%rdx)         
0x1002F7942   cmpb     $0x1, 0x69(%rsi)     
0x1002F7946   jne      0x1002f79ff          
0x1002F794C   pushq    %rbp                 
0x1002F794D   movq     %rsp, %rbp           
0x1002F7950   pushq    %r15                 
0x1002F7952   pushq    %r14                 
0x1002F7954   pushq    %rbx                 
0x1002F7955   pushq    %rax                 
0x1002F7956   movq     %rdx, %rbx           
0x1002F7959   movq     %rsi, %r15           
0x1002F795C   movq     %rdi, %r14           
0x1002F795F   movzbl   0x68(%rsi), %edi     
0x1002F7963   movl     $0x1, %esi           
0x1002F7968   callq    0x100407de1          
0x1002F796D   movb     0x1(%rbx), %cl       
0x1002F7970   shlb     $0x2, %al            
0x1002F7973   andb     $0xc, %al            
0x1002F7975   andb     $-0xd, %cl           
0x1002F7978   orb      %al, %cl             
0x1002F797A   movb     %cl, 0x1(%rbx)       
0x1002F797D   cmpb     $0x1, 0x6b(%r15)     
0x1002F7982   jne      0x1002f79f2          
0x1002F7984   movzbl   0x6a(%r15), %edi     
0x1002F7989   movl     $0x1, %esi           
0x1002F798E   callq    0x100407de1          
0x1002F7993   movb     0x1(%rbx), %cl       
0x1002F7996   shlb     $0x4, %al            
0x1002F7999   andb     $0x30, %al           
0x1002F799B   andb     $-0x31, %cl          
0x1002F799E   orb      %al, %cl             
0x1002F79A0   movb     %cl, 0x1(%rbx)       
0x1002F79A3   cmpb     $0x1, 0xae(%r15)     
0x1002F79AB   jne      0x1002f79f2          
0x1002F79AD   movzwl   0xac(%r15), %eax     
0x1002F79B5   movw     %ax, 0x2(%rbx)       
0x1002F79B9   cmpb     $0x1, 0x99(%r15)     
0x1002F79C1   jne      0x1002f79f2          
0x1002F79C3   movzbl   0x98(%r15), %edi     
0x1002F79CB   movl     $0x1, %esi           
0x1002F79D0   callq    0x100408cee          
0x1002F79D5   movb     0x1(%rbx), %cl       
0x1002F79D8   andb     $0x3, %al            
0x1002F79DA   andb     $-0x4, %cl           
0x1002F79DD   orb      %al, %cl             
0x1002F79DF   movb     %cl, 0x1(%rbx)       
0x1002F79E2   movq     0x8(%r14), %rdi      
0x1002F79E6   movq     (%rdi), %rax         
0x1002F79E9   callq    *0x40(%rax)          
0x1002F79EC   btl      $0x8, %eax           
0x1002F79F0   jb       0x1002f7a02          
0x1002F79F2   xorl     %eax, %eax           
0x1002F79F4   addq     $0x8, %rsp           
0x1002F79F8   popq     %rbx                 
0x1002F79F9   popq     %r14                 
0x1002F79FB   popq     %r15                 
0x1002F79FD   popq     %rbp                 
0x1002F79FE   retq                          
0x1002F79FF   xorl     %eax, %eax           
0x1002F7A01   retq                          
0x1002F7A02   movb     %al, (%rbx)          
0x1002F7A04   movb     $0x1, %al            
0x1002F7A06   jmp      0x1002f79f4          
