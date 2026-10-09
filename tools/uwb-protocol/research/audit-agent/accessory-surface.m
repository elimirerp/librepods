#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <dlfcn.h>
static void methods(Class c,const char *scope) {
 unsigned n=0;Method *ms=class_copyMethodList(c,&n);
 for(unsigned j=0;j<n;j++) {
  const char *s=sel_getName(method_getName(ms[j]));
  if(strstr(s,"ccessory")||strstr(s,"egister")||strstr(s,"ClientAccess"))
   printf("  %s %s %s\n",scope,s,method_getTypeEncoding(ms[j]));
 }
 free(ms);
}
int main(void){@autoreleasepool{
 if(!dlopen("/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice",RTLD_LAZY))return 1;
 unsigned n=0;Class *cs=objc_copyClassList(&n);
 for(unsigned i=0;i<n;i++){const char *name=class_getName(cs[i]);
  if(strncmp(name,"FMD",3))continue;
  printf("CLASS %s\n",name);methods(cs[i],"-");methods(object_getClass(cs[i]),"+");
 }
 free(cs);
 Protocol *__unsafe_unretained *ps=objc_copyProtocolList(&n);
 for(unsigned i=0;i<n;i++){const char *name=protocol_getName(ps[i]);
  if(strncmp(name,"FMD",3))continue; printf("PROTOCOL %s\n",name);
  for(int req=0;req<2;req++)for(int inst=0;inst<2;inst++){
   unsigned c=0;struct objc_method_description *ms=protocol_copyMethodDescriptionList(ps[i],req,inst,&c);
   for(unsigned j=0;j<c;j++)printf("  %s %s %s\n",inst?"-":"+",sel_getName(ms[j].name),ms[j].types);
   free(ms);
  }
 }
 free(ps);
}return 0;}
