#import <Foundation/Foundation.h>
#import <dlfcn.h>
int main(){@autoreleasepool {
 void *h=dlopen("/System/Library/PrivateFrameworks/FindMyMac.framework/FindMyMac",RTLD_LAZY);
 CFDataRef(*copy)(CFStringRef)=h?dlsym(h,"FMMCopyTokenForAccount"):NULL;
 if(!copy){puts("Native account reader unavailable");return 2;}
 NSData *data=CFBridgingRelease(copy(CFSTR("FMM")));
 if(!data){puts("Native account read returned no data");return 3;}
 id obj=[NSPropertyListSerialization propertyListWithData:data options:NSPropertyListImmutable format:NULL error:NULL];
 if(![obj isKindOfClass:NSDictionary.class]){puts("Account data was not a dictionary");return 4;}
 for(NSString *key in [[obj allKeys] sortedArrayUsingSelector:@selector(compare:)]) {
  id value=obj[key];printf("%s: %s\n",key.UTF8String,NSStringFromClass([value class]).UTF8String);
 }
}}
