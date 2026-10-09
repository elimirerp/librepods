#import <Foundation/Foundation.h>
#import <dlfcn.h>
#import <objc/runtime.h>
#import <mach-o/dyld.h>
// Read one format string from the local framework, inside this process only.
int main() { @autoreleasepool {
    dlopen("/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice", RTLD_LAZY);
    Class cls = NSClassFromString(@"FMDAccessoryIdentifier");
    const char *path = class_getImageName(cls);
    if (!path) return 1;
    for (uint32_t i=0; i<_dyld_image_count(); i++) {
        if (strcmp(path,_dyld_get_image_name(i))) continue;
        intptr_t slide = _dyld_get_image_vmaddr_slide(i);
        // Address verified in this Mac's computeAccessoryIdentifierWithAddress:.
        NSString *format = (NSString *)(0x1f0dd1f30ULL + slide);
        if (![format isKindOfClass:NSString.class]) return 2;
        puts(format.UTF8String);
        return 0;
    }
    return 3;
} }
