#import <Foundation/Foundation.h>
#import <objc/message.h>
#import <dlfcn.h>
int main(void){@autoreleasepool{
dlopen("/System/Library/Frameworks/NearbyInteraction.framework/NearbyInteraction",RTLD_LAZY);
Class session=NSClassFromString(@"NISession");
uint8_t dummy[16]; for(int i=0;i<16;i++)dummy[i]=i;
NSData *k=[NSData dataWithBytes:dummy length:16];
id token=((id(*)(id,SEL,id))objc_msgSend)(session,NSSelectorFromString(@"generateFindingDiscoveryTokenWithSharedSecret:"),k);
for(NSString *sel in @[@"rawToken",@"getIRK",@"getSessionIdentifier",@"tokenVariant"]){
 if([sel isEqualToString:@"tokenVariant"]){printf("%s %lld\n",sel.UTF8String,((long long(*)(id,SEL))objc_msgSend)(token,NSSelectorFromString(sel)));continue;}
 id v=((id(*)(id,SEL))objc_msgSend)(token,NSSelectorFromString(sel));printf("%s %s\n",sel.UTF8String,[[v description] UTF8String]);}
NSData *raw=((id(*)(id,SEL))objc_msgSend)(token,NSSelectorFromString(@"rawToken")); printf("rawHex ");const uint8_t *b=raw.bytes;for(NSUInteger i=0;i<raw.length;i++)printf("%02x",b[i]);printf("\n");
for(int i=0;i<10;i++){id v=((id(*)(id,SEL,id))objc_msgSend)(token,NSSelectorFromString(@"objectInRawTokenOPACKDictForKey:"),@(i));if(v)printf("key%d %s\n",i,[[v description] UTF8String]);}
}return 0;}
