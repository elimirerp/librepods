#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <dlfcn.h>

// Calls only the capability-query API. No ranging initialization, connection-key
// API, radio configuration, ownership change, pairing action, or entitlement.
@interface NSObject (CapabilityAPI)
- (id)initWithDelegate:(id)delegate delegateQueue:(dispatch_queue_t)queue;
- (void)fetchFindingCapabilities:(NSUUID *)device;
- (BOOL)supportsFC1ND;
- (BOOL)supportsNBAMMS;
- (BOOL)supportsUnii5;
- (BOOL)supportsSimultaneousRanging;
@end

@interface CapabilityProbe : NSObject
@property BOOL done;
@property int result;
@end
@implementation CapabilityProbe
- (void)findMyAccessoryManager:(id)manager didFetchFindingCapabilitiesOnDevice:(id)device
      withFindingCapabilities:(id)capabilities error:(NSError *)error {
    if (error) {
        printf("capability_error domain=%s code=%ld\n", error.domain.UTF8String, (long)error.code);
        self.result = 4;
    } else if (capabilities) {
        for (NSString *selector in @[@"supportsFC1ND", @"supportsNBAMMS", @"supportsUnii5", @"supportsSimultaneousRanging"]) {
            SEL sel = NSSelectorFromString(selector);
            if ([capabilities respondsToSelector:sel]) {
                BOOL value = ((BOOL (*)(id, SEL))[capabilities methodForSelector:sel])(capabilities, sel);
                printf("%s=%d\n", selector.UTF8String, value);
            } else printf("%s=unavailable\n", selector.UTF8String);
        }
    } else { puts("capability_response_empty"); self.result = 5; }
    self.done = YES;
}
- (void)findMyAccessoryManager:(id)manager didFailWithError:(NSError *)error forDevice:(id)device {
    printf("manager_error domain=%s code=%ld\n", error.domain.UTF8String, (long)error.code);
    self.result = 6; self.done = YES;
}
- (void)findMyAccessoryManager:(id)manager didConnectDevice:(id)device error:(NSError *)error {
    if (error) {
        printf("connection_error domain=%s code=%ld\n", error.domain.UTF8String, (long)error.code);
        self.result = 7; self.done = YES;
    } else puts("connection_callback_success; no initialization requested");
}
@end

int main(int argc, const char **argv) {
    @autoreleasepool {
        setbuf(stdout, NULL);
        if (!dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", RTLD_LAZY)) return 2;
        if (argc == 2 && !strcmp(argv[1], "--inspect")) {
            Protocol *p = objc_getProtocol("CLFindMyAccessoryManagerDelegate");
            if (!p) { puts("delegate_protocol_unavailable"); return 3; }
            for (int required = 0; required < 2; required++) {
                unsigned count = 0;
                struct objc_method_description *methods = protocol_copyMethodDescriptionList(p, required, YES, &count);
                for (unsigned i = 0; i < count; i++)
                    if (strstr(sel_getName(methods[i].name), "Capabilities") || strstr(sel_getName(methods[i].name), "Fail") || strstr(sel_getName(methods[i].name), "Connect"))
                        printf("%s %s\n", sel_getName(methods[i].name), methods[i].types);
                free(methods);
            }
            return 0;
        }
        if (argc != 3 || strcmp(argv[1], "--query-metadata-file")) return 2;
        NSDictionary *graph = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:@(argv[2])] options:0 error:NULL];
        NSDictionary *snapshot = graph[@"latest_verified_bluetooth_snapshot"];
        if (![snapshot[@"target_case_serial_present"] boolValue]) return 3;
        NSUUID *caseIdentifier = [[NSUUID alloc] initWithUUIDString:snapshot[@"fmCI"]];
        if (!caseIdentifier) return 3;
        CapabilityProbe *probe = [CapabilityProbe new];
        @try {
            id manager = [[NSClassFromString(@"CLFindMyAccessoryManager") alloc] initWithDelegate:probe delegateQueue:dispatch_get_main_queue()];
            if (!manager || ![manager respondsToSelector:@selector(fetchFindingCapabilities:)]) return 3;
            puts("capability_api_available; querying known case metadata identifier");
            [manager fetchFindingCapabilities:caseIdentifier];
            NSDate *deadline = [NSDate dateWithTimeIntervalSinceNow:12];
            while (!probe.done && deadline.timeIntervalSinceNow > 0)
                [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
            if (!probe.done) { puts("capability_query_timeout"); return 8; }
            return probe.result;
        } @catch (NSException *exception) {
            printf("api_exception type=%s\n", exception.name.UTF8String);
            return 9;
        }
    }
}
