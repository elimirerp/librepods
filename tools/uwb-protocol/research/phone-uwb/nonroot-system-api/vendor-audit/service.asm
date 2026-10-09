 (in Lcom/android/server/bluetooth/BluetoothManagerService;)
      name          : 'readFile'
      type          : '(I)Ljava/lang/String;'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 7
      ins           : 2
      outs          : 3
      insns size    : 198 16-bit code units
01fdbc:                                        |[01fdbc] com.android.server.bluetooth.BluetoothManagerService.readFile:(I)Ljava/lang/String;
01fdcc: 7100 d700 0000                         |0000: invoke-static {}, Landroid/os/Binder;.getCallingUid:()I // method@00d7
01fdd2: 0a00                                   |0003: move-result v0
01fdd4: 1301 e803                              |0004: const/16 v1, #int 1000 // #3e8
01fdd8: 1202                                   |0006: const/4 v2, #int 0 // #0
01fdda: 3210 1200                              |0007: if-eq v0, v1, 0019 // +0012
01fdde: 7100 d700 0000                         |0009: invoke-static {}, Landroid/os/Binder;.getCallingUid:()I // method@00d7
01fde4: 0a00                                   |000c: move-result v0
01fde6: 1301 ea03                              |000d: const/16 v1, #int 1002 // #3ea
01fdea: 3210 0a00                              |000f: if-eq v0, v1, 0019 // +000a
01fdee: 6205 a600                              |0011: sget-object v5, Lcom/android/server/bluetooth/BluetoothManagerService;.TAG:Ljava/lang/String; // field@00a6
01fdf2: 1a06 840d                              |0013: const-string v6, "getFileService(): No System UID" // string@0d84
01fdf6: 7120 d503 6500                         |0015: invoke-static {v5, v6}, Lcom/android/server/bluetooth/Log;.d:(Ljava/lang/String;Ljava/lang/String;)I // method@03d5
01fdfc: 1102                                   |0018: return-object v2
01fdfe: 7010 df02 0500                         |0019: invoke-direct {v5}, Lcom/android/server/bluetooth/BluetoothManagerService;.initSecBluetoothService:()Z // method@02df
01fe04: 0a00                                   |001c: move-result v0
01fe06: 3900 0a00                              |001d: if-nez v0, 0027 // +000a
01fe0a: 6205 a600                              |001f: sget-object v5, Lcom/android/server/bluetooth/BluetoothManagerService;.TAG:Ljava/lang/String; // field@00a6
01fe0e: 1a06 810d                              |0021: const-string v6, "getFileService(): Bluetooth Vendor HIDL service failed" // string@0d81
01fe12: 7120 d503 6500                         |0023: invoke-static {v5, v6}, Lcom/android/server/bluetooth/Log;.d:(Ljava/lang/String;Ljava/lang/String;)I // method@03d5
01fe18: 1102                                   |0026: return-object v2
01fe1a: 2200 5100                              |0027: new-instance v0, Landroid/os/HidlSupport$Mutable; // type@0051
01fe1e: 7010 ed00 0000                         |0029: invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;.<init>:()V // method@00ed
01fe24: 5551 c200                              |002c: iget-boolean v1, v5, Lcom/android/server/bluetooth/BluetoothManagerService;.mHIDL_enable:Z // field@00c2
01fe28: 1213                                   |002e: const/4 v3, #int 1 // #1
01fe2a: 3331 1700                              |002f: if-ne v1, v3, 0046 // +0017
01fe2e: 6201 a600                              |0031: sget-object v1, Lcom/android/server/bluetooth/BluetoothManagerService;.TAG:Ljava/lang/String; // field@00a6
01fe32: 1a04 800d                              |0033: const-string v4, "getFileService(): Bluetooth Vendor HIDL service" // string@0d80
01fe36: 7120 d503 4100                         |0035: invoke-static {v1, v4}, Lcom/android/server/bluetooth/Log;.d:(Ljava/lang/String;Ljava/lang/String;)I // method@03d5
01fe3c: 5451 d000                              |0038: iget-object v1, v5, Lcom/android/server/bluetooth/BluetoothManagerService;.mSehBluetoothHidl:Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth; // field@00d0
01fe40: 2204 b200                              |003a: new-instance v4, Lcom/android/server/bluetooth/BluetoothManagerService$$ExternalSyntheticLambda6; // type@00b2
01fe44: 7020 3b02 0400                         |003c: invoke-direct {v4, v0}, Lcom/android/server/bluetooth/BluetoothManagerService$$ExternalSyntheticLambda6;.<init>:(Landroid/os/HidlSupport$Mutable;)V // method@023b
01fe4a: 7230 2f10 6104                         |003f: invoke-interface {v1, v6, v4}, Lvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth;.readFile:(ILvendor/samsung/hardware/bluetooth/V2_0/ISehBluetooth$readFileCallback;)V // method@102f
01fe50: 281e                                   |0042: goto 0060 // +001e
01fe52: 0d05                                   |0043: move-exception v5
01fe54: 2900 7a00                              |0044: goto/16 00be // +007a
01fe58: 5551 aa00                              |0046: iget-boolean v1, v5, Lcom/android/server/bluetooth/BluetoothManagerService;.mAIDL_enable:Z // field@00aa
01fe5c: 3331 1100                              |0048: if-ne v1, v3, 0059 // +0011
01fe60: 6201 a600                              |004a: sget-object v1, Lcom/android/server/bluetooth/BluetoothManagerService;.TAG:Ljava/lang/String; // field@00a6
01fe64: 1a04 7f0d                              |004c: const-string v4, "getFileService(): Bluetooth Vendor AIDL service" // string@0d7f
01fe68: 7120 d503 4100                         |004e: invoke-static {v1, v4}, Lcom/android/server/bluetooth/Log;.d:(Ljava/lang/String;Ljava/lang/String;)I // method@03d5
01fe6e: 5451 cf00                              |0051: iget-object v1, v5, Lcom/android/server/bluetooth/BluetoothManagerService;.mSehBluetoothAidl:Lvendor/samsung/hardware/bluetooth/ISehBluetooth; // field@00cf
01fe72: 8d66                                   |0053: int-to-byte v6, v6
01fe74: 7220 1a10 6100                         |0054: invoke-interface {v1, v6}, Lvendor/samsung/hardware/bluetooth/ISehBluetooth;.readFile:(B)Ljava/lang/String; // method@101a
01fe7a: 0c06                                   |0057: move-result-object v6
01fe7c: 280a                                   |0058: goto 0062 // +000a
01fe7e: 6206 a600                              |0059: sget-object v6, Lcom/android/server/bluetooth/BluetoothManagerService;.TAG:Ljava/lang/String; // field@00a6
01fe82: 1a01 820d                              |005b: const-string v1, "getFileService(): NOT start Bluetooth Vendor HIDL & AIDL service" // string@0d82
01fe86: 7120 d503 1600                         |005d: invoke-static {v6, v1}, Lcom/android/server/bluetooth/Log;.d:(Ljava/lang/String;Ljava/lang/String;)I // method@03d5
01fe8c: 1a06 0000                              |0060: const-string v6, "" // string@0000
01fe90: 5551 c200                              |0062: iget-boolean v1, v5, Lcom/android/server/bluetooth/BluetoothManagerService;.mHIDL_enable:Z // field@00c2
01fe94: 3331 2200                              |0064: if-ne v1, v3, 0086 // +0022
01fe98: 6305 9800                              |0066: sget-boolean v5, Lcom/android/server/bluetooth/BluetoothManagerService;.DBG:Z // field@0098
01fe9c: 3805 1900                              |0068: if-eqz v5, 0081 // +0019
01fea0: 6205 a600                              |006a: sget-object v5, Lcom/android/server/bluetooth/BluetoothManagerService;.TAG:Ljava/lang/String; // field@00a6
01fea4: 2206 6103                              |006c: new-instance v6, Ljava/lang/StringBuilder; // type@0361
01fea8: 1a01 860d                              |006e: const-string v1, "getFileService(): mgetfileinfo.value = " // string@0d86
01feac: 7020 160f 1600                         |0070: invoke-direct {v6, v1}, Ljava/lang/StringBuilder;.<init>:(Ljava/lang/String;)V // method@0f16
01feb2: 5401 1400                              |0073: iget-object v1, v0, Landroid/os/HidlSupport$Mutable;.value:Ljava/lang/Object; // field@0014
01feb6: 1f01 6003                              |0075: check-cast v1, Ljava/lang/String; // type@0360
01feba: 6e20 1d0f 1600                         |0077: invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;.append:(Ljava/lang/String;)Ljava/lang/StringBuilder; // method@0f1d
01fec0: 6e10 210f 0600                         |007a: invoke-virtual {v6}, Ljava/lang/StringBuilder;.toString:()Ljava/lang/String; // method@0f21
01fec6: 0c06                                   |007d: move-result-object v6
01fec8: 7120 d503 6500                         |007e: invoke-static {v5, v6}, Lcom/android/server/bluetooth/Log;.d:(Ljava/lang/String;Ljava/lang/String;)I // method@03d5
01fece: 5405 1400                              |0081: iget-object v5, v0, Landroid/os/HidlSupport$Mutable;.value:Ljava/lang/Object; // field@0014
01fed2: 1f05 6003                              |0083: check-cast v5, Ljava/lang/String; // type@0360
01fed6: 1105                                   |0085: return-object v5
01fed8: 5555 aa00                              |0086: iget-boolean v5, v5, Lcom/android/server/bluetooth/BluetoothManagerService;.mAIDL_enable:Z // field@00aa
01fedc: 3335 2a00                              |0088: if-ne v5, v3, 00b2 // +002a
01fee0: 6305 9800                              |008a: sget-boolean v5, Lcom/android/server/bluetooth/BluetoothManagerService;.DBG:Z // field@0098
01fee4: 3805 2500                              |008c: if-eqz v5, 00b1 // +0025
01fee8: 3806 2300                              |008e: if-eqz v6, 00b1 // +0023
01feec: 6e10 030f 0600                         |0090: invoke-virtual {v6}, Ljava/lang/String;.isEmpty:()Z // method@0f03
01fef2: 0a05                                   |0093: move-result v5
01fef4: 3905 1d00                              |0094: if-nez v5, 00b1 // +001d
01fef8: 6205 a600                              |0096: sget-object v5, Lcom/android/server/bluetooth/BluetoothManagerService;.TAG:Ljava/lang/String; // field@00a6
01fefc: 2200 6103                              |0098: new-instance v0, Ljava/lang/StringBuilder; // type@0361
01ff00: 1a01 850d                              |009a: const-string v1, "getFileService(): getfileinfo = " // string@0d85
01ff04: 7020 160f 1000                         |009c: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;.<init>:(Ljava/lang/String;)V // method@0f16
01ff0a: 1a01 8301                              |009f: const-string v1, "..:..:..$" // string@0183
01ff0e: 1a02 1c01                              |00a1: const-string v2, "**:**:**" // string@011c
01ff12: 6e30 0a0f 1602                         |00a3: invoke-virtual {v6, v1, v2}, Ljava/lang/String;.replaceAll:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; // method@0f0a
01ff18: 0c01                                   |00a6: move-result-object v1
01ff1a: 6e20 1d0f 1000                         |00a7: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;.append:(Ljava/lang/String;)Ljava/lang/StringBuilder; // method@0f1d
01ff20: 6e10 210f 0000                         |00aa: invoke-virtual {v0}, Ljava/lang/StringBuilder;.toString:()Ljava/lang/String; // method@0f21
01ff26: 0c00                                   |00ad: move-result-object v0
01ff28: 7120 d503 0500                         |00ae: invoke-static {v5, v0}, Lcom/android/server/bluetooth/Log;.d:(Ljava/lang/String;Ljava/lang/String;)I // method@03d5
01ff2e: 1106                                   |00b1: return-object v6
01ff30: 6305 9800                              |00b2: sget-boolean v5, Lcom/android/server/bluetooth/BluetoothManagerService;.DBG:Z // field@0098
01ff34: 3805 0900                              |00b4: if-eqz v5, 00bd // +0009
01ff38: 6205 a600                              |00b6: sget-object v5, Lcom/android/server/bluetooth/BluetoothManagerService;.TAG:Ljava/lang/String; // field@00a6
01ff3c: 1a06 830d                              |00b8: const-string v6, "getFileService(): NOT start HIDL & AIDL service" // string@0d83
01ff40: 7120 d503 6500                         |00ba: invoke-static {v5, v6}, Lcom/android/server/bluetooth/Log;.d:(Ljava/lang/String;Ljava/lang/String;)I // method@03d5
01ff46: 1102                                   |00bd: return-object v2
01ff48: 6206 a600                              |00be: sget-object v6, Lcom/android/server/bluetooth/BluetoothManagerService;.TAG:Ljava/lang/String; // field@00a6
01ff4c: 1a00 7e0d                              |00c0: const-string v0, "getFileService() : exception = " // string@0d7e
01ff50: 7130 d703 0605                         |00c2: invoke-static {v6, v0, v5}, Lcom/android/server/bluetooth/Log;.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I // method@03d7
01ff56: 1102                                   |00c5: return-object v2
      catches       : 1
        0x002c - 0x0060
          Landroid/os/RemoteException; -> 0x0043
      positions     :
        0x0000 line=3315
        0x0011 line=3316
        0x0019 line=3320
        0x001f line=3321
        0x0027 line=3327
        0x002c line=3330
        0x0031 line=3331
        0x0038 line=3332
        0x0046 line=3337
        0x004a line=3338
        0x0051 line=3339
        0x0059 line=3341
        0x0060 line=3346
        0x0062 line=3348
        0x0066 line=3349
        0x006a line=3350
        0x0081 line=3351
        0x0086 line=3352
        0x008a line=3353
        0x0096 line=3354
        0x00b2 line=3357
        0x00b6 line=3358
        0x00be line=3344
      locals        :
        0x0000 - 0x00c6 reg=5 this Lcom/android/server/bluetooth/BluetoothManagerService;
        0x0000 - 0x00c6 reg=6 (null) I

 (in Lcom/android/server/bluetooth/ServerBinder;)
      name          : 'getProperty'
      type          : '(I)Ljava/lang/String;'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 4
      ins           : 2
      outs          : 4
      insns size    : 25 16-bit code units
0290ac:                                        |[0290ac] com.android.server.bluetooth.ServerBinder.getProperty:(I)Ljava/lang/String;
0290bc: 1a00 3f08                              |0000: const-string v0, "ServerBinder" // string@083f
0290c0: 1a01 eb0d                              |0002: const-string v1, "getProperty in BluetoothServiceBinder" // string@0deb
0290c4: 7120 db03 1000                         |0004: invoke-static {v0, v1}, Lcom/android/server/bluetooth/Log;.w:(Ljava/lang/String;Ljava/lang/String;)I // method@03db
0290ca: 5420 7801                              |0007: iget-object v0, v2, Lcom/android/server/bluetooth/ServerBinder;.checker:Lcom/android/server/bluetooth/PermissionChecker; // field@0178
0290ce: 6e10 ea03 0000                         |0009: invoke-virtual {v0}, Lcom/android/server/bluetooth/PermissionChecker;.enforcePrivileged:()V // method@03ea
0290d4: 2200 ed00                              |000c: new-instance v0, Lcom/android/server/bluetooth/ServerBinder$getProperty$1; // type@00ed
0290d8: 1201                                   |000e: const/4 v1, #int 0 // #0
0290da: 7040 4a04 2013                         |000f: invoke-direct {v0, v2, v3, v1}, Lcom/android/server/bluetooth/ServerBinder$getProperty$1;.<init>:(Lcom/android/server/bluetooth/ServerBinder;ILcom/android/server/bluetooth/jarjar/kotlin/coroutines/Continuation;)V // method@044a
0290e0: 7020 bc04 0200                         |0012: invoke-direct {v2, v0}, Lcom/android/server/bluetooth/ServerBinder;.runOnServerThread:(Lcom/android/server/bluetooth/jarjar/kotlin/jvm/functions/Function1;)Ljava/lang/Object; // method@04bc
0290e6: 0c02                                   |0015: move-result-object v2
0290e8: 1f02 6003                              |0016: check-cast v2, Ljava/lang/String; // type@0360
0290ec: 1102                                   |0018: return-object v2
      catches       : (none)
      positions     :
        0x0000 line=325
        0x0007 line=326
        0x000c line=327
      locals        :
        0x0000 - 0x0019 reg=2 this Lcom/android/server/bluetooth/ServerBinder;
        0x0000 - 0x0019 reg=3 (null) I

 (in Lcom/android/server/bluetooth/ServerBinder;)
      name          : 'readFile'
      type          : '(I)Ljava/lang/String;'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 4
      ins           : 2
      outs          : 4
      insns size    : 25 16-bit code units
02911c:                                        |[02911c] com.android.server.bluetooth.ServerBinder.readFile:(I)Ljava/lang/String;
02912c: 1a00 3f08                              |0000: const-string v0, "ServerBinder" // string@083f
029130: 1a01 2011                              |0002: const-string v1, "readFile in BluetoothServiceBinder" // string@1120
029134: 7120 db03 1000                         |0004: invoke-static {v0, v1}, Lcom/android/server/bluetooth/Log;.w:(Ljava/lang/String;Ljava/lang/String;)I // method@03db
02913a: 5420 7801                              |0007: iget-object v0, v2, Lcom/android/server/bluetooth/ServerBinder;.checker:Lcom/android/server/bluetooth/PermissionChecker; // field@0178
02913e: 6e10 ea03 0000                         |0009: invoke-virtual {v0}, Lcom/android/server/bluetooth/PermissionChecker;.enforcePrivileged:()V // method@03ea
029144: 2200 f300                              |000c: new-instance v0, Lcom/android/server/bluetooth/ServerBinder$readFile$1; // type@00f3
029148: 1201                                   |000e: const/4 v1, #int 0 // #0
02914a: 7040 6604 2013                         |000f: invoke-direct {v0, v2, v3, v1}, Lcom/android/server/bluetooth/ServerBinder$readFile$1;.<init>:(Lcom/android/server/bluetooth/ServerBinder;ILcom/android/server/bluetooth/jarjar/kotlin/coroutines/Continuation;)V // method@0466
029150: 7020 bc04 0200                         |0012: invoke-direct {v2, v0}, Lcom/android/server/bluetooth/ServerBinder;.runOnServerThread:(Lcom/android/server/bluetooth/jarjar/kotlin/jvm/functions/Function1;)Ljava/lang/Object; // method@04bc
029156: 0c02                                   |0015: move-result-object v2
029158: 1f02 6003                              |0016: check-cast v2, Ljava/lang/String; // type@0360
02915c: 1102                                   |0018: return-object v2
      catches       : (none)
      positions     :
        0x0000 line=313
        0x0007 line=314
        0x000c line=315
      locals        :
        0x0000 - 0x0019 reg=2 this Lcom/android/server/bluetooth/ServerBinder;
        0x0000 - 0x0019 reg=3 (null) I

 (in Lcom/android/server/bluetooth/ServerBinder;)
      name          : 'writeFile'
      type          : '(ILjava/lang/String;)Z'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 5
      ins           : 3
      outs          : 5
      insns size    : 34 16-bit code units
028e24:                                        |[028e24] com.android.server.bluetooth.ServerBinder.writeFile:(ILjava/lang/String;)Z
028e34: 1a00 3b0b                              |0000: const-string v0, "cmd" // string@0b3b
028e38: 7120 e008 0400                         |0002: invoke-static {v4, v0}, Lcom/android/server/bluetooth/jarjar/kotlin/jvm/internal/Intrinsics;.checkNotNullParameter:(Ljava/lang/Object;Ljava/lang/String;)V // method@08e0
028e3e: 1a00 3f08                              |0005: const-string v0, "ServerBinder" // string@083f
028e42: 1a01 5313                              |0007: const-string v1, "writeFile in BluetoothServiceBinder" // string@1353
028e46: 7120 db03 1000                         |0009: invoke-static {v0, v1}, Lcom/android/server/bluetooth/Log;.w:(Ljava/lang/String;Ljava/lang/String;)I // method@03db
028e4c: 5420 7801                              |000c: iget-object v0, v2, Lcom/android/server/bluetooth/ServerBinder;.checker:Lcom/android/server/bluetooth/PermissionChecker; // field@0178
028e50: 6e10 ea03 0000                         |000e: invoke-virtual {v0}, Lcom/android/server/bluetooth/PermissionChecker;.enforcePrivileged:()V // method@03ea
028e56: 2200 fe00                              |0011: new-instance v0, Lcom/android/server/bluetooth/ServerBinder$writeFile$1; // type@00fe
028e5a: 1201                                   |0013: const/4 v1, #int 0 // #0
028e5c: 7051 9d04 2043                         |0014: invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/server/bluetooth/ServerBinder$writeFile$1;.<init>:(Lcom/android/server/bluetooth/ServerBinder;ILjava/lang/String;Lcom/android/server/bluetooth/jarjar/kotlin/coroutines/Continuation;)V // method@049d
028e62: 7020 bc04 0200                         |0017: invoke-direct {v2, v0}, Lcom/android/server/bluetooth/ServerBinder;.runOnServerThread:(Lcom/android/server/bluetooth/jarjar/kotlin/jvm/functions/Function1;)Ljava/lang/Object; // method@04bc
028e68: 0c02                                   |001a: move-result-object v2
028e6a: 1f02 3b03                              |001b: check-cast v2, Ljava/lang/Boolean; // type@033b
028e6e: 6e10 8a0e 0200                         |001d: invoke-virtual {v2}, Ljava/lang/Boolean;.booleanValue:()Z // method@0e8a
028e74: 0a02                                   |0020: move-result v2
028e76: 0f02                                   |0021: return v2
      catches       : (none)
      positions     :
        0x0005 line=307
        0x000c line=308
        0x0011 line=309
      locals        :
        0x0000 - 0x0022 reg=2 this Lcom/android/server/bluetooth/ServerBinder;
        0x0000 - 0x0022 reg=3 (null) I
        0x0000 - 0x0022 reg=4 (null) Ljava/lang/String;

  source_file_idx   : 2112 (ServerBinder.kt)

Class #170            -
  Class descriptor  : 'Lcom/android/server/bluetooth/ServerBinderKt;'
  Access flags      : 0x0401 (PUBLIC ABSTRACT)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
  Static fields     -
  Instance fields   -
  Direct methods    -