#import <Foundation/Foundation.h>
#import <IOBluetooth/IOBluetooth.h>

int main(int argc, const char **argv) {
    @autoreleasepool {
        setbuf(stdout, NULL);
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 30 * NSEC_PER_SEC), dispatch_get_global_queue(QOS_CLASS_UTILITY, 0), ^{ puts("Bluetooth operation timed out"); exit(6); });
        if (argc != 3) { fprintf(stderr,"Usage: airpods-helper status|connect|reconnect MAC\n"); return 2; }
        NSString *mode = @(argv[1]), *address = @(argv[2]);
        IOBluetoothDevice *device = [IOBluetoothDevice deviceWithAddressString:address];
        if (!device || !device.isPaired) { puts("Target is not paired with this Mac"); return 3; }
        printf("Bluetooth paired=%d connected=%d\n", device.isPaired, device.isConnected);
        if ([mode isEqualToString:@"reconnect"]) {
            IOReturn closed = [device closeConnection];
            printf("disconnect result=%d\n", closed);
            if (closed != kIOReturnSuccess) return 4;
            [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:1.0]];
        }
        if ([mode isEqualToString:@"connect"] || [mode isEqualToString:@"reconnect"]) {
            IOReturn result = [device openConnection];
            NSDate *deadline = [NSDate dateWithTimeIntervalSinceNow:10];
            while (result == kIOReturnSuccess && !device.isConnected && deadline.timeIntervalSinceNow > 0)
                [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
            printf("connect result=%d connected=%d\n", result, device.isConnected);
            return result == kIOReturnSuccess && device.isConnected ? 0 : 4;
        }
        if (![mode isEqualToString:@"status"]) return 2;
    }
}
