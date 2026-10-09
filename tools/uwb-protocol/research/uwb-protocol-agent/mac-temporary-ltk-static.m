#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import <objc/runtime.h>
#import <dlfcn.h>
int main(void) { @autoreleasepool {
Class c = objc_getClass("CBCentralManager");
NSArray *methods = @[@"createPeripheralWithAddress:andIdentifier:", @"retrievePeripheralWithAddress:", @"retrievePeripheralsWithIdentifiers:", @"connectPeripheral:options:"];
for (NSString *s in methods) { Method m=class_getInstanceMethod(c,NSSelectorFromString(s)); printf("%s present=%d encoding=%s\n",s.UTF8String,m!=NULL,m?method_getTypeEncoding(m):"none"); }
const char *symbols[] = {"CBConnectPeripheralOptionUseTempLTK","CBConnectPeripheralOptionTemporaryIRKValue","CBConnectPeripheralOptionTemporaryIdentityAddress",NULL};
for(int i=0;symbols[i];i++) printf("%s exported=%d\n",symbols[i],dlsym(RTLD_DEFAULT,symbols[i])!=NULL);
} return 0; }
