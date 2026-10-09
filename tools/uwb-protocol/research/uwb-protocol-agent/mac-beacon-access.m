#import <Foundation/Foundation.h>
#import <dlfcn.h>

@interface NSObject (BeaconMetadataProbe)
- (id)userAgentServiceDescription;
- (void)allBeaconsWithCompletion:(void (^)(id, NSError *))completion;
@end

// Bounded, read-only service-access check. Do not describe returned objects:
// their descriptions may contain identifiers or owner key material.
int main(void) {
    @autoreleasepool {
        setbuf(stdout, NULL);
        if (!dlopen("/System/Library/PrivateFrameworks/SPOwner.framework/SPOwner", RTLD_LAZY)) return 2;
        id manager = [NSClassFromString(@"SPBeaconManager") new];
        if (!manager) return 3;
        id description = [manager userAgentServiceDescription];
        NSString *service = [description valueForKey:@"machService"];
        if (![service isKindOfClass:NSString.class]) return 4;
        printf("read_only=1 service=%s operation=allBeaconsWithCompletion\n", service.UTF8String);
        NSXPCConnection *connection = [[NSXPCConnection alloc] initWithMachServiceName:service options:0];
        connection.remoteObjectInterface = [description valueForKey:@"remoteObjectInterface"];
        __block BOOL finished = NO;
        __block int result = 5;
        [connection resume];
        id proxy = [connection remoteObjectProxyWithErrorHandler:^(NSError *error) {
            printf("xpc_error_domain=%s code=%ld\n", error.domain.UTF8String, (long)error.code);
            result = 6;
            finished = YES;
        }];
        [proxy allBeaconsWithCompletion:^(id beacons, NSError *error) {
            if (error) {
                printf("reply_error_domain=%s code=%ld\n", error.domain.UTF8String, (long)error.code);
                result = 7;
            } else if ([beacons isKindOfClass:NSArray.class] || [beacons isKindOfClass:NSSet.class]) {
                printf("reply_received=1 beacon_count=%lu\n", (unsigned long)[beacons count]);
                result = 0;
            } else {
                printf("reply_received=1 recognized_collection=0\n");
                result = 8;
            }
            finished = YES;
        }];
        NSDate *deadline = [NSDate dateWithTimeIntervalSinceNow:10];
        while (!finished && deadline.timeIntervalSinceNow > 0)
            [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
        [connection invalidate];
        if (!finished) puts("timeout=1");
        return result;
    }
}
