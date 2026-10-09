#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <dlfcn.h>
@interface NSObject (FMDModelOnly)
-(id)initWithIdentifier:(NSUUID*)identifier name:(NSString*)name connected:(BOOL)connected;
-(void)setBaUUID:(NSUUID*)uuid;
-(void)setBtAddress:(NSString*)address;
-(id)accessoryIdentifier;
-(NSUUID*)identifier;
-(NSUUID*)baUUID;
-(NSString*)stringValue;
@end
int main(void){@autoreleasepool{
 if(!dlopen("/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice",RTLD_LAZY))return 1;
 Class c=objc_getClass("FMDLocalFindableAccessory");
 NSUUID *u=[[NSUUID alloc]initWithUUIDString:@"11111111-2222-3333-4444-555555555555"];
 NSUUID *b=[[NSUUID alloc]initWithUUIDString:@"AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE"];
 id a=[[c alloc]initWithIdentifier:u name:@"Synthetic model" connected:NO];
 [a setBaUUID:b];[a setBtAddress:@"AA:BB:CC:DD:EE:FF"];
 id ident=[a accessoryIdentifier];
 NSDictionary *r=@{@"experiment":@"synthetic_local_accessory_identifier",@"identifier_class":NSStringFromClass([ident class])?:@"nil",@"model_exists":@(a!=nil),@"constructor_identifier_preserved":@([[a identifier]isEqual:u]),@"baUUID_preserved":@([[a baUUID]isEqual:b]),@"string_equals_constructor_identifier":@([[ident stringValue]isEqual:u.UUIDString]),@"string_equals_baUUID":@([[ident stringValue]isEqual:b.UUIDString])};
 NSData *j=[NSJSONSerialization dataWithJSONObject:r options:0 error:NULL];
 fwrite(j.bytes,1,j.length,stdout);putchar('\n');
}return 0;}
