#include <dlfcn.h>
#include <stdint.h>
#include <stdio.h>
#include <stddef.h>
int main(void) {
    void *lib = dlopen("/System/Library/PrivateFrameworks/CoreUtils.framework/CoreUtils", RTLD_NOW | RTLD_LOCAL);
    if (!lib) return 1;
    uint64_t (*hash)(const void *, const void *, size_t) = dlsym(lib, "SipHash");
    if (!hash) return 2;
    const unsigned char message[8] = {1,0x23,0x45,0x67,0x89,0xab,0xcd,0xef};
    for (int n = 0; n < 3; n++) {
        unsigned char key[16];
        for (int i = 0; i < 16; i++) key[i] = n == 0 ? i : n == 1 ? 0 : 255;
        printf("synthetic_key_%d %016llx\n", n, (unsigned long long)hash(key, message, sizeof(message)));
    }
    dlclose(lib);
    return 0;
}
