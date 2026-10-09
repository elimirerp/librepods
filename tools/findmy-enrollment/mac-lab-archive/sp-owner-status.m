#import <Foundation/Foundation.h>
#import <dlfcn.h>

@interface NSObject (OwnerProbe)
- (void)fetchFindMyNetworkStatusForMACAddress:(NSData *)address completion:(void (^)(BOOL, NSError *))completion;
- (void)setInvalidationBlock:(void (^)(void))block;
- (id)serviceDescription;
- (id)userAgentServiceDescription;
@end

int main(int argc, const char **argv) {
    @autoreleasepool {
        setbuf(stdout, NULL);
        if (argc != 2) return 2;
        NSArray *parts = [@(argv[1]) componentsSeparatedByString:@":"];
        if (parts.count != 6) return 2;
        uint8_t bytes[6];
        for (NSUInteger i = 0; i < 6; i++) {
            unsigned value = 0;
            NSScanner *scanner = [NSScanner scannerWithString:parts[i]];
            if ([parts[i] length] != 2 || ![scanner scanHexInt:&value] || !scanner.isAtEnd || value > 255) return 2;
            bytes[i] = (uint8_t)value;
        }
        NSData *address = [NSData dataWithBytes:bytes length:6];
        if (!dlopen("/System/Library/PrivateFrameworks/SPOwner.framework/SPOwner", RTLD_LAZY)) return 5;
        id owner = [NSClassFromString(@"SPOwnerSession") new];
        for (id service in @[[owner serviceDescription], [owner userAgentServiceDescription]])
            printf("service=%s options=%s\n", [[service valueForKey:@"machService"] UTF8String], [[service valueForKey:@"options"] description].UTF8String);
        id description = [owner userAgentServiceDescription];
        NSXPCConnection *connection = [[NSXPCConnection alloc] initWithMachServiceName:[description valueForKey:@"machService"] options:0];
        connection.remoteObjectInterface = [description valueForKey:@"remoteObjectInterface"];
        connection.exportedInterface = [description valueForKey:@"exportedInterface"];
        connection.exportedObject = [description valueForKey:@"exportedObject"];
        __block BOOL finished = NO;
        __block int exitCode = 0;
        [connection resume];
        id proxy = [connection remoteObjectProxyWithErrorHandler:^(NSError *error) {
            printf("XPC rejected: domain=%s code=%ld description=%s\n", error.domain.UTF8String, (long)error.code, error.localizedDescription.UTF8String);
            exitCode = 7;
            finished = YES;
        }];
        [proxy fetchFindMyNetworkStatusForMACAddress:address completion:^(BOOL enabled, NSError *error) {
            if (error) printf("error domain=%s code=%ld description=%s\n", error.domain.UTF8String, (long)error.code, error.localizedDescription.UTF8String);
            else printf("Find My network enabled=%d\n", enabled);
            if (error) exitCode = 8;
            finished = YES;
        }];
        NSDate *deadline = [NSDate dateWithTimeIntervalSinceNow:12];
        while (!finished && deadline.timeIntervalSinceNow > 0) [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
        [connection invalidate];
        if (!finished) { puts("Owner status request timed out"); return 6; }
        return exitCode;
    }
}
