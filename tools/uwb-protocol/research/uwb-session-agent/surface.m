#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <dlfcn.h>
int main(void){@autoreleasepool{
const char *paths[]={"/System/Library/Frameworks/NearbyInteraction.framework/NearbyInteraction","/System/Library/PrivateFrameworks/FindMyBluetooth.framework/FindMyBluetooth","/System/Library/PrivateFrameworks/NearbySessions.framework/NearbySessions"};
for(int p=0;p<3;p++){void *h=dlopen(paths[p],RTLD_LAZY);printf("LOAD %s %s\n",paths[p],h?"ok":dlerror());}
unsigned n=0;Class *cs=objc_copyClassList(&n);
for(unsigned i=0;i<n;i++){const char *img=class_getImageName(cs[i]);if(!img||(!strstr(img,"NearbyInteraction")&&!strstr(img,"FindMyBluetooth")&&!strstr(img,"NearbySessions")))continue;
printf("CLASS %s IMAGE %s\n",class_getName(cs[i]),img);
for(int meta=0;meta<2;meta++){unsigned m=0;Method *ms=class_copyMethodList(meta?object_getClass(cs[i]):cs[i],&m);for(unsigned j=0;j<m;j++)printf(" %c %s %s\n",meta?'+':'-',sel_getName(method_getName(ms[j])),method_getTypeEncoding(ms[j]));free(ms);}
}free(cs);
}return 0;}
