#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <dlfcn.h>
int main(int argc, const char **argv) {@autoreleasepool {
 for(int a=1;a<argc;a++){void *h=dlopen(argv[a],RTLD_LAZY);printf("LOAD %s %s\n",argv[a],h?"ok":dlerror());}
 unsigned n=0;Class *cs=objc_copyClassList(&n);
 for(unsigned i=0;i<n;i++){const char *name=class_getName(cs[i]);if(!(strstr(name,"Durian")||strstr(name,"Rang")||strstr(name,"Finding")||strstr(name,"NISession")||strstr(name,"NIDiscovery")||strstr(name,"NIConfiguration")))continue;
 printf("CLASS %s\n",name);for(int meta=0;meta<2;meta++){unsigned m=0;Method*ms=class_copyMethodList(meta?object_getClass(cs[i]):cs[i],&m);for(unsigned k=0;k<m;k++)printf("%c %s %s\n",meta?'+':'-',sel_getName(method_getName(ms[k])),method_getTypeEncoding(ms[k]));free(ms);}}
 free(cs);
}}
