#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <dlfcn.h>

static void methods(Class cls, const char *prefix) {
    unsigned count = 0;
    Method *list = class_copyMethodList(cls, &count);
    for (unsigned i = 0; i < count; i++)
        printf("%s %s %s\n", prefix, sel_getName(method_getName(list[i])), method_getTypeEncoding(list[i]));
    free(list);
}

int main(int argc, const char **argv) {
    @autoreleasepool {
        if (argc < 3) return 2;
        if (!dlopen(argv[1], RTLD_LAZY)) { fprintf(stderr, "%s\n", dlerror()); return 1; }
        for (int n = 2; n < argc; n++) {
            Class cls = objc_getClass(argv[n]);
            if (!cls) { printf("Missing %s\n", argv[n]); continue; }
            printf("\nCLASS %s : %s\n", class_getName(cls), class_getName(class_getSuperclass(cls)));
            methods(object_getClass(cls), "+"); methods(cls, "-");
            unsigned count = 0;
            objc_property_t *props = class_copyPropertyList(cls, &count);
            for (unsigned i = 0; i < count; i++) printf("property %s %s\n", property_getName(props[i]), property_getAttributes(props[i]));
            free(props);
            Protocol *__unsafe_unretained *protocols = class_copyProtocolList(cls, &count);
            for (unsigned i = 0; i < count; i++) printf("protocol %s\n", protocol_getName(protocols[i]));
            free(protocols);
        }
    }
}
