#import <Foundation/Foundation.h>
#import <dlfcn.h>

@interface NSObject (PairingProbe)
- (id)initWithIdentifier:(NSUUID *)identifier;
- (void)pairingStatusWithRequest:(id)request completion:(void (^)(id, NSError *))completion;
- (void)stop;
@end

int main(int argc, const char **argv) {
    @autoreleasepool {
        if (argc != 2) return 2;
        if (!dlopen("/System/Library/PrivateFrameworks/SPOwner.framework/SPOwner", RTLD_LAZY)) return 3;
        NSUUID *identifier = [[NSUUID alloc] initWithUUIDString:@(argv[1])];
        if (!identifier) return 4;
        id session = [NSClassFromString(@"SPAccessoryDiscoveryAndPairingSession") new];
        id request = [[NSClassFromString(@"SPAccessoryDiscoveryPairingStatusRequest") alloc] initWithIdentifier:identifier];
        __block BOOL finished = NO;
        [session pairingStatusWithRequest:request completion:^(id result, NSError *error) {
            if (error) printf("error domain=%s code=%ld description=%s\n", error.domain.UTF8String, (long)error.code, error.localizedDescription.UTF8String);
            if (result) printf("result class=%s pairingStatus=%s\n", NSStringFromClass([result class]).UTF8String, [[result valueForKey:@"pairingStatus"] description].UTF8String);
            if (!error && !result) printf("No result and no error\n");
            finished = YES;
        }];
        NSDate *deadline = [NSDate dateWithTimeIntervalSinceNow:12];
        while (!finished && deadline.timeIntervalSinceNow > 0) [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
        [session stop];
        if (!finished) { printf("Timed out after 12 seconds\n"); return 5; }
    }
}
