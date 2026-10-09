#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <dlfcn.h>
__attribute__((noinline)) void ready(void) { __asm__ volatile(""); }
int main(void) { @autoreleasepool {
 dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", RTLD_LAZY);
 dlopen("/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice", RTLD_LAZY);
 Class cls=NSClassFromString(@"ACAccount");
 SEL sel=NSSelectorFromString(@"fmipAccountInfoWithTokens:");
 Method method=class_getInstanceMethod(cls,sel);
 printf("class=%s method=%p implementation=%p\n",class_getName(cls),method,method?method_getImplementation(method):NULL);
 fflush(stdout); ready(); return 0;
}}
