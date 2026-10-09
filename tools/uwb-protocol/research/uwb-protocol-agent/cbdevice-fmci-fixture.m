#import <Foundation/Foundation.h>
#import <dlfcn.h>
#import <xpc/xpc.h>
@interface NSObject (OfflineCBDeviceModel)
- (void)setFindMyCaseIdentifier:(NSString *)value;
- (void)setFindMyGroupIdentifier:(NSString *)value;
- (NSString *)findMyCaseIdentifier;
- (NSString *)findMyGroupIdentifier;
- (void)encodeWithXPCObject:(xpc_object_t)object;
- (id)initWithXPCObject:(xpc_object_t)object error:(NSError **)error;
@end
int main(void) { @autoreleasepool {
    // Pure synthetic model serialization. No managers, sessions, real identifiers,
    // pairing state, account data, or radio operations are instantiated or read.
    if (!dlopen("/System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth", RTLD_LAZY)) return 2;
    Class cls = NSClassFromString(@"CBDevice");
    if (!cls) return 3;
    NSString *caseID = @"01234567-89AB-CDEF-0123-456789ABCDEF";
    NSString *groupID = @"FEDCBA98-7654-3210-FEDC-BA9876543210";
    id device = [cls new];
    [device setFindMyCaseIdentifier:caseID];
    [device setFindMyGroupIdentifier:groupID];
    xpc_object_t encoded = xpc_dictionary_create(NULL, NULL, 0);
    [device encodeWithXPCObject:encoded];
    xpc_dictionary_apply(encoded, ^bool(const char *key, xpc_object_t value) {
        printf("encoded_field=%s type=%s\n", key, xpc_type_get_name(xpc_get_type(value)));
        return true;
    });
    NSString *description = [device description];
    printf("description_contains_fmCI=%d fmGI=%d\n", [description containsString:@"fmCI"], [description containsString:@"fmGI"]);
    xpc_object_t nested = xpc_dictionary_get_value(encoded, "dvIn");
    xpc_dictionary_apply(nested, ^bool(const char *key, xpc_object_t value) {
        printf("nested_field=%s type=%s\n", key, xpc_type_get_name(xpc_get_type(value)));
        return true;
    });
    const char *ci = xpc_dictionary_get_string(nested, "fmCI");
    const char *gi = xpc_dictionary_get_string(nested, "fmGI");
    printf("fmCI_encodes_case_identifier=%d\n", ci && !strcmp(ci, caseID.UTF8String));
    printf("fmGI_encodes_group_identifier=%d\n", gi && !strcmp(gi, groupID.UTF8String));
    NSError *error = nil;
    id decoded = [[cls alloc] initWithXPCObject:encoded error:&error];
    printf("synthetic_model_decode_error=%d\n", error != nil);
    printf("fmCI_decodes_case_identifier=%d\n", [[decoded findMyCaseIdentifier] isEqualToString:caseID]);
    printf("fmGI_decodes_group_identifier=%d\n", [[decoded findMyGroupIdentifier] isEqualToString:groupID]);
    return error ? 4 : 0;
} }
