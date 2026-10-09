#import <Foundation/Foundation.h>
#import <IOBluetooth/IOBluetooth.h>
#import <dlfcn.h>
#import <objc/runtime.h>

// Read-only use of the same identifier conversion that iOS uses for an
// FMDBluetoothAccessory. This program does not submit a registration.
@interface NSObject (FindMyReadOnly)
- (instancetype)initWithAddress:(NSString *)address;
- (NSString *)stringValue;
- (long long)fm_epoch;
@end

int main(int argc, const char **argv) {
    @autoreleasepool {
        if (argc != 3) {
            fprintf(stderr, "Usage: registration-record BLUETOOTH_MAC BEACON_GROUP_UUID\n");
            return 2;
        }
        void *framework = dlopen("/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice", RTLD_LAZY);
        Class identifierClass = NSClassFromString(@"FMDAccessoryIdentifier");
        NSString *address = [@(argv[1]) uppercaseString];
        NSUUID *group = [[NSUUID alloc] initWithUUIDString:@(argv[2])];
        IOBluetoothDevice *device = [IOBluetoothDevice deviceWithAddressString:address];
        if (!framework || !identifierClass || !group || !device.isPaired) {
            fprintf(stderr, "Requires the native framework, a valid group UUID, and an already paired device.\n");
            return 3;
        }
        id identifier = [[identifierClass alloc] initWithAddress:address];
        NSString *udid = [identifier stringValue];
        if (!udid.length || !device.name.length) return 4;

        // Hardware fields verified from this Mac's Bluetooth record. Refuse
        // another target rather than attaching these values to another device.
        if (![address isEqualToString:@"REDACTED_OWNED_IDENTIFIER"]) return 5;
        long long lastActive = 0;
        NSDate *now = [NSDate date];
        if (device.isConnected && [now respondsToSelector:@selector(fm_epoch)])
            lastActive = now.fm_epoch;
        NSDictionary *hostRecord = @{
            @"deviceName": device.name,
            @"udid": udid,
            @"productType": @"76_8231",
            @"connectionStatus": device.isConnected ? @"connected" : @"disconnected",
            @"beacons": @[],
            @"lastActiveTime": @(lastActive),
            @"deviceClass": @"Accessory",
            @"platform": @"macosx_proxy",
            @"accessoryRSSITimestamp": @0
        };
        NSMutableDictionary *accessoryIdentity = [hostRecord mutableCopy];
        accessoryIdentity[@"deviceDiscoveryId"] = address;
        accessoryIdentity[@"baUUID"] = group.UUIDString;
        accessoryIdentity[@"firmwareVersion"] = @"9A348";
        accessoryIdentity[@"serialNumbers"] = @{
            @"systemSerialNumber": @"REDACTED_OWNED_IDENTIFIER",
            @"leftSerialNumber": @"REDACTED_OWNED_IDENTIFIER",
            @"rightSerialNumber": @"REDACTED_OWNED_IDENTIFIER"
        };
        NSDictionary *result = @{
            @"hostDeviceInfoAddition": @{@"otherDevices": @[hostRecord]},
            @"accessoryIdentity": accessoryIdentity,
            @"submitted": @NO
        };
        NSError *error = nil;
        NSData *data = [NSJSONSerialization dataWithJSONObject:result
            options:NSJSONWritingPrettyPrinted | NSJSONWritingSortedKeys error:&error];
        if (!data) { fprintf(stderr, "%s\n", error.localizedDescription.UTF8String); return 6; }
        fwrite(data.bytes, 1, data.length, stdout);
        putchar('\n');
        return 0;
    }
}
