#import <Foundation/Foundation.h>
#import <IOBluetooth/IOBluetooth.h>

int main(int argc, const char **argv) {
    @autoreleasepool {
        setbuf(stdout, NULL);
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 30 * NSEC_PER_SEC), dispatch_get_global_queue(QOS_CLASS_UTILITY, 0), ^{ puts("Bluetooth operation timed out"); exit(6); });
        if (argc != 3) { fprintf(stderr,"Usage: airpods-helper status|connect MAC\n"); return 2; }
        NSString *mode = @(argv[1]), *address = @(argv[2]);
        IOBluetoothDevice *device = [IOBluetoothDevice deviceWithAddressString:address];
        if (!device || !device.isPaired) { puts("Target is not paired with this Mac"); return 3; }
        printf("Bluetooth paired=%d connected=%d\n", device.isPaired, device.isConnected);
        if ([mode isEqualToString:@"connect"]) {
            IOReturn result = [device openConnection];
            printf("connect result=%d connected=%d\n", result, device.isConnected);
            return result == kIOReturnSuccess ? 0 : 4;
        }
        if (![mode isEqualToString:@"status"]) return 2;
    }
}
