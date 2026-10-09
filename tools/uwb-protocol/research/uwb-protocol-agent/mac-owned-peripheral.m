#import <Foundation/Foundation.h>
#import <IOBluetooth/IOBluetooth.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import <sys/stat.h>
@interface IOBluetoothDevice (CachedPeripheralMetadata)
- (CBPeripheral *)peripheral;
- (NSUUID *)identifier;
- (unsigned short)productID;
@end
static NSString *normalizedAddress(NSString *address) {
    NSCharacterSet *hex = [NSCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEF"];
    return [[[address uppercaseString] componentsSeparatedByCharactersInSet:[hex invertedSet]] componentsJoinedByString:@""];
}
int main(int argc, const char **argv) {
    @autoreleasepool {
        setbuf(stdout, NULL);
        if (argc != 4) return 2;
        NSDictionary *candidate = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:@(argv[1])] options:0 error:NULL];
        NSDictionary *graph = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:@(argv[2])] options:0 error:NULL];
        NSString *address = candidate[@"accessoryIdentity"][@"deviceDiscoveryId"];
        if (![address isKindOfClass:NSString.class]) return 2;
        NSArray *paired = [IOBluetoothDevice pairedDevices];
        NSUInteger connectedCount = 0, exactNameCount = 0, productCount = 0;
        NSString *targetName = candidate[@"accessoryIdentity"][@"deviceName"];
        for (IOBluetoothDevice *item in paired) {
            if (item.isConnected) connectedCount++;
            BOOL exactName = [item.name isEqualToString:targetName];
            BOOL productMatches = item.productID == 8231;
            if (exactName) exactNameCount++;
            if (productMatches) productCount++;
            if (exactName || productMatches) {
                printf("paired_target_candidate name_match=%d product_match=%d connected=%d address_matches_record=%d\n", exactName, productMatches, item.isConnected,
                       [normalizedAddress(item.addressString) isEqualToString:normalizedAddress(address)]);
            }
        }
        printf("paired_device_count=%lu connected_count=%lu target_name_matches=%lu target_product_matches=%lu\n", (unsigned long)paired.count, (unsigned long)connectedCount, (unsigned long)exactNameCount, (unsigned long)productCount);
        IOBluetoothDevice *device = [IOBluetoothDevice deviceWithAddressString:address];
        printf("known_audio_paired=%d connected=%d\n", device.isPaired, device.isConnected);
        if (!device.isPaired) return 3;
        CBPeripheral *peripheral = [device respondsToSelector:@selector(peripheral)] ? [device peripheral] : nil;
        printf("owned_audio_has_cached_peripheral=%d\n", peripheral != nil);
        if (!peripheral) return 4;
        NSString *previous = graph[@"latest_verified_bluetooth_snapshot"][@"CBDevice"];
        printf("peripheral_identifier_equals_prior_CBDevice=%d\n", [peripheral.identifier.UUIDString caseInsensitiveCompare:previous] == NSOrderedSame);
        printf("peripheral_state=%ld\n", (long)peripheral.state);
        NSDictionary *output = @{@"readOnly": @YES, @"source": @"existing paired IOBluetoothDevice peripheral property", @"peripheralIdentifier": peripheral.identifier.UUIDString};
        NSData *data = [NSJSONSerialization dataWithJSONObject:output options:NSJSONWritingPrettyPrinted error:NULL];
        BOOL saved = [data writeToFile:@(argv[3]) atomically:YES];
        if (saved) chmod(argv[3], 0600);
        return saved ? 0 : 5;
    }
}
