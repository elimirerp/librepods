#import <Foundation/Foundation.h>
#import <IOBluetooth/IOBluetooth.h>
#import <CoreBluetooth/CoreBluetooth.h>
@interface IOBluetoothDevice (Cached) -(CBPeripheral *)peripheral; @end
@interface CBPeripheral (Cached) -(NSUUID *)findMyBeaconIdentifier; @end
int main(int argc,const char **argv){ @autoreleasepool {
 if(argc!=3)return 2;
 NSDictionary *c=[NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:@(argv[1])] options:0 error:NULL];
 NSDictionary *g=[NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:@(argv[2])] options:0 error:NULL];
 NSString *a=c[@"accessoryIdentity"][@"deviceDiscoveryId"];
 if(![a isKindOfClass:NSString.class])return 3;
 IOBluetoothDevice *d=[IOBluetoothDevice deviceWithAddressString:a];
 if(!d.isPaired)return 4;
 CBPeripheral *p=d.peripheral;
 printf("owned_cached_peripheral_present=%d\n",p!=nil);
 BOOL available=[p respondsToSelector:@selector(findMyBeaconIdentifier)];
 printf("beacon_identifier_getter_available=%d\n",available);
 if(!available)return 0;
 NSUUID *b=p.findMyBeaconIdentifier;
 printf("beacon_identifier_present=%d\n",b!=nil);
 NSDictionary *s=g[@"latest_verified_bluetooth_snapshot"];
 NSUUID *ci=[[NSUUID alloc]initWithUUIDString:s[@"fmCI"]];
 NSUUID *gi=[[NSUUID alloc]initWithUUIDString:s[@"fmGI"]];
 printf("cached_beacon_equals_fmCI=%d\n",b&&[b isEqual:ci]);
 printf("cached_beacon_equals_fmGI=%d\n",b&&[b isEqual:gi]);
 return 0;
} }
