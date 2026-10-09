#import <Foundation/Foundation.h>
#import <dlfcn.h>
#import <objc/runtime.h>
#import <mach-o/dyld.h>
@interface NSObject(Probe)
-(id)initWithAddress:(id)a;
-(id)stringValue;
@end
int main(){@autoreleasepool {
dlopen("/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice",RTLD_LAZY);
Class c=NSClassFromString(@"FMDAccessoryIdentifier");
for(NSString *a in @[@"REDACTED_OWNED_IDENTIFIER",@"REDACTED_OWNED_IDENTIFIER",@"F4-33-B7-EA-46-57",@"f4-33-b7-ea-46-57"]){
id x=[[c alloc] initWithAddress:a]; printf("%s: %s\n",a.UTF8String,[[x stringValue] UTF8String]);}
}}
