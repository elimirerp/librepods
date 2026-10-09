#import <Foundation/Foundation.h>
#import <dlfcn.h>
@interface NSObject (FMRead)
+ (id)sharedInstance;
- (id)retrieveFMMAccount:(NSError **)error;
- (NSString *)fmmAuthToken;
- (NSString *)fmdServerHost;
@end
int main(){@autoreleasepool {
 dlopen("/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice",RTLD_LAZY);
 id manager=[NSClassFromString(@"FMDFMMManager") sharedInstance];NSError *error=nil;
 id account=[manager retrieveFMMAccount:&error];
 printf("Account accessible: %d; authentication available: %d; error code: %ld\n",account!=nil,[[account fmmAuthToken] length]>0,(long)error.code);
 if(error)printf("Error domain: %s\n",error.domain.UTF8String);
 return account?0:3;
}}
