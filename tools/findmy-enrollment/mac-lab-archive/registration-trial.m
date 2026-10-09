#import <Foundation/Foundation.h>
#import <Security/Authorization.h>
#import <Security/AuthorizationTags.h>
#import <notify.h>
#import <signal.h>
#import <sys/stat.h>
#import <unistd.h>

static NSString *const Domain = @"com.apple.icloud.findmydeviced";
static NSString *const Key = @"deviceInfoOverrides";
static NSString *const RefreshDomain = @"com.apple.icloud.findmydeviced.notbackedup";
static NSString *const Target = @"REDACTED_OWNED_IDENTIFIER";
static volatile sig_atomic_t interrupted = 0;
static void stopTrial(int sig) { (void)sig; interrupted = 1; }

static id readOverride(void) {
    CFPreferencesAppSynchronize((__bridge CFStringRef)Domain);
    return CFBridgingRelease(CFPreferencesCopyAppValue((__bridge CFStringRef)Key, (__bridge CFStringRef)Domain));
}
static BOOL writeOverride(id value) {
    CFPreferencesSetAppValue((__bridge CFStringRef)Key, (__bridge CFPropertyListRef)value, (__bridge CFStringRef)Domain);
    return CFPreferencesAppSynchronize((__bridge CFStringRef)Domain);
}
static id readStoredOverride(void) {
    return CFBridgingRelease(CFPreferencesCopyValue((__bridge CFStringRef)Key, (__bridge CFStringRef)Domain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost));
}
static NSDictionary *loadCandidate(NSString *path) {
    NSData *data = [NSData dataWithContentsOfFile:path];
    if (!data || data.length > 65536) return nil;
    id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
    if (![json isKindOfClass:NSDictionary.class]) return nil;
    id addition = json[@"hostDeviceInfoAddition"];
    if (![addition isKindOfClass:NSDictionary.class] || [addition count] != 1) return nil;
    id devices = addition[@"otherDevices"];
    if (![devices isKindOfClass:NSArray.class] || [devices count] != 1) return nil;
    id record = devices[0];
    if (![record isKindOfClass:NSDictionary.class]) return nil;
    NSSet *allowed = [NSSet setWithArray:@[@"deviceName", @"udid", @"productType", @"connectionStatus", @"beacons", @"lastActiveTime", @"deviceClass", @"platform", @"accessoryRSSITimestamp", @"deviceDiscoveryId", @"baUUID", @"firmwareVersion", @"serialNumbers", @"findMyiPhone", @"locationServicesEnabled", @"activationLock", @"aps-token"]];
    if (![[NSSet setWithArray:[record allKeys]] isSubsetOfSet:allowed]) return nil;
    if (![record[@"udid"] isEqual:Target] || ![record[@"deviceClass"] isEqual:@"Accessory"] ||
        ![@[@"macosx_proxy", @"iphoneos_proxy"] containsObject:record[@"platform"]] || ![record[@"productType"] isEqual:@"76_8231"] ||
        ![record[@"deviceName"] isKindOfClass:NSString.class]) return nil;
    if (record[@"baUUID"] && ![record[@"baUUID"] isEqual:@"REDACTED_OWNED_IDENTIFIER"]) return nil;
    if (record[@"deviceDiscoveryId"] && ![record[@"deviceDiscoveryId"] isEqual:@"REDACTED_OWNED_IDENTIFIER"]) return nil;
    return record;
}
static id readRefresh(NSString *key) {
    CFPreferencesAppSynchronize((__bridge CFStringRef)RefreshDomain);
    return CFBridgingRelease(CFPreferencesCopyAppValue((__bridge CFStringRef)key, (__bridge CFStringRef)RefreshDomain));
}
static BOOL writeRefresh(NSString *key, id value) {
    CFPreferencesSetAppValue((__bridge CFStringRef)key, (__bridge CFPropertyListRef)value, (__bridge CFStringRef)RefreshDomain);
    return CFPreferencesAppSynchronize((__bridge CFStringRef)RefreshDomain);
}
static NSString *refreshKey(void) {
    CFPreferencesAppSynchronize((__bridge CFStringRef)RefreshDomain);
    NSArray *keys = CFBridgingRelease(CFPreferencesCopyKeyList((__bridge CFStringRef)RefreshDomain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost));
    NSMutableArray *matches = [NSMutableArray array];
    for (NSString *key in keys) if ([key hasPrefix:@"LastForcedRegisterTime-FMDFMMAccount-"]) [matches addObject:key];
    if (matches.count != 1) {
        fprintf(stderr, "Expected one existing Mac registration refresh marker; found %lu. Nothing changed.\n", (unsigned long)matches.count);
        return nil;
    }
    return matches[0];
}
static BOOL restoreRefresh(NSString *key, id stamp, id original) {
    if (!key) return YES;
    if (![readRefresh(key) isEqual:stamp]) { puts("Native service updated its refresh marker; retaining its newer value."); return YES; }
    BOOL written = writeRefresh(key, original);
    id restored = readRefresh(key);
    return written && (original ? [restored isEqual:original] : !restored);
}
static int runTrial(NSString *path, BOOL refresh, int duration) {
    if (geteuid() != 0) { fputs("The trial needs administrator authentication to write the system service's preference.\n", stderr); return 3; }
    NSDictionary *record = loadCandidate(path);
    if (!record) { fputs("Invalid candidate; nothing changed.\n", stderr); return 4; }
    NSString *markerKey = refresh ? refreshKey() : nil;
    if (refresh && !markerKey) return 12;
    id markerOriginal = markerKey ? readRefresh(markerKey) : nil;
    if (markerKey && ![markerOriginal isKindOfClass:NSDate.class]) return 12;
    NSDate *markerStamp = [NSDate date];
    id original = readOverride();
    id originalStored = readStoredOverride();
    if (original && ![original isKindOfClass:NSDictionary.class]) return 5;
    NSMutableDictionary *updated = original ? [original mutableCopy] : [NSMutableDictionary dictionary];
    id existing = updated[@"otherDevices"];
    if (existing && ![existing isKindOfClass:NSArray.class]) return 5;
    NSMutableArray *devices = existing ? [existing mutableCopy] : [NSMutableArray array];
    for (id device in devices) {
        if (![device isKindOfClass:NSDictionary.class]) return 5;
        if ([device[@"udid"] isEqual:Target]) { puts("Target already present in the override; nothing changed."); return 0; }
    }
    [devices addObject:record];
    updated[@"otherDevices"] = devices;
    char directory[] = "/private/var/tmp/airpods-registration.XXXXXX";
    if (!mkdtemp(directory)) return 6;
    chmod(directory, 0700);
    NSString *backupPath = [@(directory) stringByAppendingPathComponent:@"original.plist"];
    NSMutableDictionary *backup = [@{@"domain": Domain, @"key": Key, @"hadValue": @(originalStored != nil), @"value": originalStored ?: @{}, @"trialValue": updated} mutableCopy];
    if (markerKey) backup[@"refresh"] = @{@"domain": RefreshDomain, @"key": markerKey, @"value": markerOriginal, @"trialValue": markerStamp};
    NSData *backupData = [NSPropertyListSerialization dataWithPropertyList:backup format:NSPropertyListBinaryFormat_v1_0 options:0 error:NULL];
    if (![backupData writeToFile:backupPath options:NSDataWritingAtomic error:NULL]) return 6;
    chmod(backupPath.fileSystemRepresentation, 0600);
    printf("Recovery backup: %s\n", backupPath.UTF8String);
    signal(SIGTERM, stopTrial); signal(SIGINT, stopTrial); signal(SIGHUP, stopTrial);
    BOOL written = writeOverride(updated);
    if (!written || ![readOverride() isEqual:updated]) {
        BOOL restored = writeOverride(originalStored);
        fprintf(stderr, "Preference verification failed; restore write=%d.\n", restored);
        return 7;
    }
    puts("Added only this AirPods record to the service's otherDevices preference.");
    if (markerKey) {
        if (!writeRefresh(markerKey, markerStamp) || ![readRefresh(markerKey) isEqual:markerStamp]) {
            writeOverride(originalStored); restoreRefresh(markerKey, markerStamp, markerOriginal);
            fputs("Refresh marker verification failed; restoration attempted.\n", stderr); return 13;
        }
        puts("Updated the existing registration refresh timestamp so the service detects a change.");
    }
    uint32_t result = notify_post("com.apple.icloud.searchparty.selfbeaconchanged");
    printf("Native registration notification status=%u. This does not confirm server acceptance.\n", result);
    printf("The previous preference will be restored automatically after %d seconds.\n", duration);
    for (int i = 0; i < duration && !interrupted; i++) sleep(1);
    BOOL refreshRestored = restoreRefresh(markerKey, markerStamp, markerOriginal);
    if (![readOverride() isEqual:updated]) {
        fprintf(stderr, "Preference changed during the trial; retained backup for a manual merge rather than overwrite newer changes.\n");
        return 8;
    }
    BOOL restored = writeOverride(originalStored);
    id current = readOverride();
    if (!refreshRestored || !restored || (original ? ![current isEqual:original] : current != nil)) {
        fputs("Automatic restoration failed; use the recovery backup.\n", stderr); return 9;
    }
    puts("Original preference restored and verified. Check Find My to determine the server result.");
    return 0;
}

int main(int argc, const char **argv) {
    @autoreleasepool {
        setbuf(stdout, NULL);
        if (argc != 3) { fprintf(stderr, "Usage: registration-trial --check|--authorize|--run|--run-refresh candidate.json\n"); return 2; }
        NSString *mode = @(argv[1]);
        NSString *path = [@(argv[2]) stringByStandardizingPath];
        if (![path isAbsolutePath]) path = [NSFileManager.defaultManager.currentDirectoryPath stringByAppendingPathComponent:path];
        if (!loadCandidate(path)) { fputs("Invalid registration candidate.\n", stderr); return 4; }
        if ([mode isEqual:@"--check"]) { puts("Candidate valid. One real AirPods record; Mac identity fields are absent. No changes made."); return 0; }
        if ([mode isEqual:@"--run"]) return runTrial(path, NO, 90);
        if ([mode isEqual:@"--run-refresh"]) return runTrial(path, YES, 90);
        if ([mode isEqual:@"--run-refresh-short"]) return runTrial(path, YES, 15);
        if (![mode isEqual:@"--authorize"]) return 2;
        AuthorizationRef authorization = NULL;
        OSStatus status = AuthorizationCreate(NULL, kAuthorizationEmptyEnvironment, kAuthorizationFlagDefaults, &authorization);
        if (status != errAuthorizationSuccess) {
            fprintf(stderr, "Could not initialize macOS administrator authentication: %d. No changes made.\n", (int)status);
            return 10;
        }
        NSString *executable = [NSProcessInfo.processInfo.arguments[0] stringByStandardizingPath];
        if (![executable isAbsolutePath]) executable = [NSFileManager.defaultManager.currentDirectoryPath stringByAppendingPathComponent:executable];
        char *arguments[] = {"--run", (char *)path.fileSystemRepresentation, NULL};
        FILE *pipe = NULL;
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        status = AuthorizationExecuteWithPrivileges(authorization, executable.fileSystemRepresentation, kAuthorizationFlagDefaults, arguments, &pipe);
#pragma clang diagnostic pop
        if (status == errAuthorizationSuccess && pipe) {
            char buffer[4096];
            while (fgets(buffer, sizeof(buffer), pipe)) fputs(buffer, stdout);
            fclose(pipe);
        } else fprintf(stderr, "Administrator authorization returned %d; trial not started.\n", (int)status);
        AuthorizationFree(authorization, kAuthorizationFlagDestroyRights);
        return status == errAuthorizationSuccess ? 0 : 11;
    }
}
