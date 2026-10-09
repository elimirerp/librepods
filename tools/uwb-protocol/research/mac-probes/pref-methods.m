#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <dlfcn.h>
#import <mach-o/dyld.h>
int main() { @autoreleasepool {
 dlopen("/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice",RTLD_LAZY);
 Class cls=NSClassFromString(@"FMPreferencesUtil");
 const char *path=class_getImageName(cls); intptr_t slide=0;
 for(uint32_t i=0;i<_dyld_image_count();i++) if(strcmp(path,_dyld_get_image_name(i))==0) slide=_dyld_get_image_vmaddr_slide(i);
 printf("%s\n",path);
 for(NSString *name in @[@"dictionaryForKey:inDomain:",@"objectForKey:inDomain:",@"objectForKey:inDomain:user:",@"setObject:forKey:inDomain:"]) {
  Method m=class_getClassMethod(cls,NSSelectorFromString(name));
  printf("%s 0x%lx\n",name.UTF8String,(unsigned long)method_getImplementation(m)-slide);
 }
} }
