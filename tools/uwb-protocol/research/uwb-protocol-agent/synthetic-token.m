#import <Foundation/Foundation.h>
#import <objc/message.h>
#import <dlfcn.h>
int main(void){@autoreleasepool{
 if(!dlopen("/System/Library/Frameworks/NearbyInteraction.framework/NearbyInteraction",RTLD_LAZY))return 1;
 uint8_t fixture[16];for(unsigned i=0;i<16;i++)fixture[i]=i;
 NSData *irk=[NSData dataWithBytes:fixture length:16];
 // This method's complete disassembly performs only a local OPACK dictionary pack.
 id token=((id(*)(id,SEL,id))objc_msgSend)(NSClassFromString(@"NIDiscoveryToken"),NSSelectorFromString(@"generateFindingTokenWithIRK:"),irk);
 NSData *raw=((id(*)(id,SEL))objc_msgSend)(token,NSSelectorFromString(@"rawToken"));
 printf("Synthetic IRK fixture only: 000102030405060708090a0b0c0d0e0f\n");
 printf("rawToken %lu bytes: ",(unsigned long)raw.length);const uint8_t*b=raw.bytes;for(unsigned i=0;i<raw.length;i++)printf("%02x",b[i]);printf("\n");
 for(unsigned k=1;k<=7;k++){id value=((id(*)(id,SEL,id))objc_msgSend)(token,NSSelectorFromString(@"objectInRawTokenOPACKDictForKey:"),@(k));if(value)printf("key %u: %s\n",k,[[value description]UTF8String]);}
}}
