 (in Lcom/android/bluetooth/btservice/AdapterService;)
      name          : 'mBluetoothHciVendorSpecificDispatcher'
      type          : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;'
      access        : 0x0011 (PUBLIC FINAL)
 (in Lcom/android/bluetooth/btservice/AdapterService;)
      name          : 'mBluetoothHciVendorSpecificNativeInterface'
      type          : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;'
      access        : 0x0011 (PUBLIC FINAL)
 (in Lcom/android/bluetooth/btservice/AdapterService;)
      name          : '$r8$lambda$K1ITGbQwyVvEiDqG93Byue8JJQk'
      type          : '(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;'
      access        : 0x1009 (PUBLIC STATIC SYNTHETIC)
      code          -
      registers     : 1
      ins           : 1
      outs          : 1
      insns size    : 5 16-bit code units
1c8820:                                        |[1c8820] com.android.bluetooth.btservice.AdapterService.$r8$lambda$K1ITGbQwyVvEiDqG93Byue8JJQk:(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
1c8830: 6e10 a130 0000                         |0000: invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;.lambda$new$1:()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface; // method@30a1
1c8836: 0c00                                   |0003: move-result-object v0
1c8838: 1100                                   |0004: return-object v0
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0005 reg=0 (null) Lcom/android/bluetooth/btservice/AdapterService;

 (in Lcom/android/bluetooth/btservice/AdapterService;)
      name          : '<init>'
      type          : '(Landroid/os/Looper;Landroid/content/Context;Lcom/android/bluetooth/btservice/AdapterNativeInterface;Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeInterface;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;Lcom/android/bluetooth/le_scan/ScanNativeInterface;Lcom/android/bluetooth/le_scan/PeriodicScanNativeInterface;Lcom/android/bluetooth/gatt/GattNativeInterface;Lcom/android/bluetooth/gatt/AdvertiseManagerNativeInterface;Lcom/android/bluetooth/gatt/DistanceMeasurementNativeInterface;Lcom/android/bluetooth/sdp/SdpManagerNativeInterface;)V'
      access        : 0x10001 (PUBLIC CONSTRUCTOR)
      code          -
      registers     : 25
      ins           : 13
      outs          : 12
      insns size    : 28 16-bit code units
1cc268:                                        |[1cc268] com.android.bluetooth.btservice.AdapterService.<init>:(Landroid/os/Looper;Landroid/content/Context;Lcom/android/bluetooth/btservice/AdapterNativeInterface;Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeInterface;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;Lcom/android/bluetooth/le_scan/ScanNativeInterface;Lcom/android/bluetooth/le_scan/PeriodicScanNativeInterface;Lcom/android/bluetooth/gatt/GattNativeInterface;Lcom/android/bluetooth/gatt/AdvertiseManagerNativeInterface;Lcom/android/bluetooth/gatt/DistanceMeasurementNativeInterface;Lcom/android/bluetooth/sdp/SdpManagerNativeInterface;)V
1cc278: 07c0                                   |0000: move-object v0, v12
1cc27a: 07d1                                   |0001: move-object v1, v13
1cc27c: 07f2                                   |0002: move-object v2, v15
1cc27e: 0803 1000                              |0003: move-object/from16 v3, v16
1cc282: 0804 1100                              |0005: move-object/from16 v4, v17
1cc286: 0805 1200                              |0007: move-object/from16 v5, v18
1cc28a: 0806 1300                              |0009: move-object/from16 v6, v19
1cc28e: 0807 1400                              |000b: move-object/from16 v7, v20
1cc292: 0808 1500                              |000d: move-object/from16 v8, v21
1cc296: 0809 1600                              |000f: move-object/from16 v9, v22
1cc29a: 080a 1700                              |0011: move-object/from16 v10, v23
1cc29e: 080b 1800                              |0013: move-object/from16 v11, v24
1cc2a2: 760c 6c2f 0000                         |0015: invoke-direct/range {v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11}, Lcom/android/bluetooth/btservice/AdapterService;.<init>:(Landroid/os/Looper;Lcom/android/bluetooth/btservice/AdapterNativeInterface;Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeInterface;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;Lcom/android/bluetooth/le_scan/ScanNativeInterface;Lcom/android/bluetooth/le_scan/PeriodicScanNativeInterface;Lcom/android/bluetooth/gatt/GattNativeInterface;Lcom/android/bluetooth/gatt/AdvertiseManagerNativeInterface;Lcom/android/bluetooth/gatt/DistanceMeasurementNativeInterface;Lcom/android/bluetooth/sdp/SdpManagerNativeInterface;)V // method@2f6c
1cc2a8: 6e20 d100 ec00                         |0018: invoke-virtual {v12, v14}, Landroid/app/Service;.attachBaseContext:(Landroid/content/Context;)V // method@00d1
1cc2ae: 0e00                                   |001b: return-void
      catches       : (none)
      positions     :
        0x0015 line=741
        0x0018 line=753
      locals        :
        0x0000 - 0x001c reg=12 this Lcom/android/bluetooth/btservice/AdapterService;
        0x0000 - 0x001c reg=13 (null) Landroid/os/Looper;
        0x0000 - 0x001c reg=14 (null) Landroid/content/Context;
        0x0000 - 0x001c reg=15 (null) Lcom/android/bluetooth/btservice/AdapterNativeInterface;
        0x0000 - 0x001c reg=16 (null) Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;
        0x0000 - 0x001c reg=17 (null) Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeInterface;
        0x0000 - 0x001c reg=18 (null) Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
        0x0000 - 0x001c reg=19 (null) Lcom/android/bluetooth/le_scan/ScanNativeInterface;
        0x0000 - 0x001c reg=20 (null) Lcom/android/bluetooth/le_scan/PeriodicScanNativeInterface;
        0x0000 - 0x001c reg=21 (null) Lcom/android/bluetooth/gatt/GattNativeInterface;
        0x0000 - 0x001c reg=22 (null) Lcom/android/bluetooth/gatt/AdvertiseManagerNativeInterface;
        0x0000 - 0x001c reg=23 (null) Lcom/android/bluetooth/gatt/DistanceMeasurementNativeInterface;
        0x0000 - 0x001c reg=24 (null) Lcom/android/bluetooth/sdp/SdpManagerNativeInterface;

 (in Lcom/android/bluetooth/btservice/AdapterService;)
      name          : '<init>'
      type          : '(Landroid/os/Looper;Lcom/android/bluetooth/btservice/AdapterNativeInterface;Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeInterface;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;Lcom/android/bluetooth/le_scan/ScanNativeInterface;Lcom/android/bluetooth/le_scan/PeriodicScanNativeInterface;Lcom/android/bluetooth/gatt/GattNativeInterface;Lcom/android/bluetooth/gatt/AdvertiseManagerNativeInterface;Lcom/android/bluetooth/gatt/DistanceMeasurementNativeInterface;Lcom/android/bluetooth/sdp/SdpManagerNativeInterface;)V'
      access        : 0x10001 (PUBLIC CONSTRUCTOR)
      code          -
      registers     : 16
      ins           : 12
      outs          : 3
      insns size    : 517 16-bit code units
1cc2b0:                                        |[1cc2b0] com.android.bluetooth.btservice.AdapterService.<init>:(Landroid/os/Looper;Lcom/android/bluetooth/btservice/AdapterNativeInterface;Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeInterface;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;Lcom/android/bluetooth/le_scan/ScanNativeInterface;Lcom/android/bluetooth/le_scan/PeriodicScanNativeInterface;Lcom/android/bluetooth/gatt/GattNativeInterface;Lcom/android/bluetooth/gatt/AdvertiseManagerNativeInterface;Lcom/android/bluetooth/gatt/DistanceMeasurementNativeInterface;Lcom/android/bluetooth/sdp/SdpManagerNativeInterface;)V
1cc2c0: 7010 d000 0400                         |0000: invoke-direct {v4}, Landroid/app/Service;.<init>:()V // method@00d0
1cc2c6: 2200 d117                              |0003: new-instance v0, Ljava/lang/Object; // type@17d1
1cc2ca: 7010 759f 0000                         |0005: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1cc2d0: 5b40 0823                              |0008: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mEnergyInfoLock:Ljava/lang/Object; // field@2308
1cc2d4: 2200 0303                              |000a: new-instance v0, Landroid/util/SparseArray; // type@0303
1cc2d8: 7010 af0e 0000                         |000c: invoke-direct {v0}, Landroid/util/SparseArray;.<init>:()V // method@0eaf
1cc2de: 5b40 6d23                              |000f: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mUidTraffic:Landroid/util/SparseArray; // field@236d
1cc2e2: 2200 6d18                              |0011: new-instance v0, Ljava/util/HashMap; // type@186d
1cc2e6: 7010 21a2 0000                         |0013: invoke-direct {v0}, Ljava/util/HashMap;.<init>:()V // method@a221
1cc2ec: 5b40 6523                              |0016: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mStartedProfiles:Ljava/util/Map; // field@2365
1cc2f0: 2200 5a18                              |0018: new-instance v0, Ljava/util/ArrayList; // type@185a
1cc2f4: 7010 83a1 0000                         |001a: invoke-direct {v0}, Ljava/util/ArrayList;.<init>:()V // method@a183
1cc2fa: 5b40 4623                              |001d: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mRegisteredProfiles:Ljava/util/List; // field@2346
1cc2fe: 2200 5a18                              |001f: new-instance v0, Ljava/util/ArrayList; // type@185a
1cc302: 7010 83a1 0000                         |0021: invoke-direct {v0}, Ljava/util/ArrayList;.<init>:()V // method@a183
1cc308: 5b40 4a23                              |0024: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mRunningProfiles:Ljava/util/List; // field@234a
1cc30c: 2200 6d18                              |0026: new-instance v0, Ljava/util/HashMap; // type@186d
1cc310: 7010 21a2 0000                         |0028: invoke-direct {v0}, Ljava/util/HashMap;.<init>:()V // method@a221
1cc316: 5b40 0423                              |002b: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mDiscoveringPackages:Ljava/util/Map; // field@2304
1cc31a: 2200 6e18                              |002d: new-instance v0, Ljava/util/HashSet; // type@186e
1cc31e: 7010 32a2 0000                         |002f: invoke-direct {v0}, Ljava/util/HashSet;.<init>:()V // method@a232
1cc324: 5b40 0323                              |0032: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mDiscoveredDevices:Ljava/util/Set; // field@2303
1cc328: 2200 6d18                              |0034: new-instance v0, Ljava/util/HashMap; // type@186d
1cc32c: 7010 21a2 0000                         |0036: invoke-direct {v0}, Ljava/util/HashMap;.<init>:()V // method@a221
1cc332: 5b40 3a23                              |0039: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mMetadataListeners:Ljava/util/Map; // field@233a
1cc336: 2200 6d18                              |003b: new-instance v0, Ljava/util/HashMap; // type@186d
1cc33a: 7010 21a2 0000                         |003d: invoke-direct {v0}, Ljava/util/HashMap;.<init>:()V // method@a221
1cc340: 5b40 fe22                              |0040: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mCsipGroupsPendingAudioProfileChanges:Ljava/util/Map; // field@22fe
1cc344: 2200 9518                              |0042: new-instance v0, Ljava/util/concurrent/ConcurrentHashMap; // type@1895
1cc348: 7010 51a3 0000                         |0044: invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;.<init>:()V // method@a351
1cc34e: 5b40 2d23                              |0047: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLocalCallbacks:Ljava/util/Map; // field@232d
1cc352: 2200 9518                              |0049: new-instance v0, Ljava/util/concurrent/ConcurrentHashMap; // type@1895
1cc356: 7010 51a3 0000                         |004b: invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;.<init>:()V // method@a351
1cc35c: 5b40 f522                              |004e: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mBluetoothServerSockets:Ljava/util/Map; // field@22f5
1cc360: 2200 5918                              |0050: new-instance v0, Ljava/util/ArrayDeque; // type@1859
1cc364: 7010 70a1 0000                         |0052: invoke-direct {v0}, Ljava/util/ArrayDeque;.<init>:()V // method@a170
1cc36a: 5b40 3d23                              |0055: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mOobDataCallbackQueue:Ljava/util/ArrayDeque; // field@233d
1cc36e: 2200 3102                              |0057: new-instance v0, Landroid/os/RemoteCallbackList; // type@0231
1cc372: 7010 630a 0000                         |0059: invoke-direct {v0}, Landroid/os/RemoteCallbackList;.<init>:()V // method@0a63
1cc378: 5b40 4323                              |005c: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mPreferredAudioProfilesCallbacks:Landroid/os/RemoteCallbackList; // field@2343
1cc37c: 2200 3102                              |005e: new-instance v0, Landroid/os/RemoteCallbackList; // type@0231
1cc380: 7010 630a 0000                         |0060: invoke-direct {v0}, Landroid/os/RemoteCallbackList;.<init>:()V // method@0a63
1cc386: 5b40 f322                              |0063: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mBluetoothQualityReportReadyCallbacks:Landroid/os/RemoteCallbackList; // field@22f3
1cc38a: 2200 3102                              |0065: new-instance v0, Landroid/os/RemoteCallbackList; // type@0231
1cc38e: 7010 630a 0000                         |0067: invoke-direct {v0}, Landroid/os/RemoteCallbackList;.<init>:()V // method@0a63
1cc394: 5b40 6823                              |006a: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mSystemServerCallbacks:Landroid/os/RemoteCallbackList; // field@2368
1cc398: 2200 3102                              |006c: new-instance v0, Landroid/os/RemoteCallbackList; // type@0231
1cc39c: 7010 630a 0000                         |006e: invoke-direct {v0}, Landroid/os/RemoteCallbackList;.<init>:()V // method@0a63
1cc3a2: 5b40 ed22                              |0071: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mBluetoothConnectionCallbacks:Landroid/os/RemoteCallbackList; // field@22ed
1cc3a6: 2200 9c05                              |0073: new-instance v0, Lcom/android/bluetooth/BluetoothEventLogger; // type@059c
1cc3aa: 1301 0a00                              |0075: const/16 v1, #int 10 // #a
1cc3ae: 1a02 ab79                              |0077: const-string v2, "Scan Mode Changes" // string@79ab
1cc3b2: 7030 9c1a 1002                         |0079: invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/BluetoothEventLogger;.<init>:(ILjava/lang/String;)V // method@1a9c
1cc3b8: 5b40 5423                              |007c: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScanModeChanges:Lcom/android/bluetooth/BluetoothEventLogger; // field@2354
1cc3bc: 2200 2108                              |007e: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$DeviceConfigListener; // type@0821
1cc3c0: 7020 bf2e 4000                         |0080: invoke-direct {v0, v4}, Lcom/android/bluetooth/btservice/AdapterService$DeviceConfigListener;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2ebf
1cc3c6: 5b40 0023                              |0083: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mDeviceConfigListener:Lcom/android/bluetooth/btservice/AdapterService$DeviceConfigListener; // field@2300
1cc3ca: 2200 5908                              |0085: new-instance v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // type@0859
1cc3ce: 7010 fe32 0000                         |0087: invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.<init>:()V // method@32fe
1cc3d4: 5b40 ef22                              |008a: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mBluetoothHciVendorSpecificDispatcher:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@22ef
1cc3d8: 2200 1308                              |008c: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$1; // type@0813
1cc3dc: 7020 8d2e 4000                         |008e: invoke-direct {v0, v4}, Lcom/android/bluetooth/btservice/AdapterService$1;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2e8d
1cc3e2: 5b40 7023                              |0091: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mWakeLockListener:Landroid/os/PowerManager$WakeLockStateListener; // field@2370
1cc3e6: 7100 c7a2 0000                         |0093: invoke-static {}, Ljava/util/Optional;.empty:()Ljava/util/Optional; // method@a2c7
1cc3ec: 0c00                                   |0096: move-result-object v0
1cc3ee: 5b40 3923                              |0097: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mMediaAudioServer:Ljava/util/Optional; // field@2339
1cc3f2: 7100 45a1 0000                         |0099: invoke-static {}, Ljava/time/Instant;.now:()Ljava/time/Instant; // method@a145
1cc3f8: 0c00                                   |009c: move-result-object v0
1cc3fa: 5b40 2223                              |009d: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLastActivityReport:Ljava/time/Instant; // field@2322
1cc3fe: 7100 5ba3 0000                         |009f: invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;.newKeySet:()Ljava/util/concurrent/ConcurrentHashMap$KeySetView; // method@a35b
1cc404: 0c00                                   |00a2: move-result-object v0
1cc406: 5b40 2a23                              |00a3: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLeAudioAllowDevices:Ljava/util/Set; // field@232a
1cc40a: 2200 5a18                              |00a5: new-instance v0, Ljava/util/ArrayList; // type@185a
1cc40e: 7010 83a1 0000                         |00a7: invoke-direct {v0}, Ljava/util/ArrayList;.<init>:()V // method@a183
1cc414: 5b40 2c23                              |00aa: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLeGattClientsControllingAutoActiveMode:Ljava/util/List; // field@232c
1cc418: 7100 c7a2 0000                         |00ac: invoke-static {}, Ljava/util/Optional;.empty:()Ljava/util/Optional; // method@a2c7
1cc41e: 0c00                                   |00af: move-result-object v0
1cc420: 5b40 e822                              |00b0: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mAdapterSuspend:Ljava/util/Optional; // field@22e8
1cc424: 7100 c7a2 0000                         |00b2: invoke-static {}, Ljava/util/Optional;.empty:()Ljava/util/Optional; // method@a2c7
1cc42a: 0c00                                   |00b5: move-result-object v0
1cc42c: 5b40 5e23                              |00b6: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mSdpManager:Ljava/util/Optional; // field@235e
1cc430: 1200                                   |00b8: const/4 v0, #int 0 // #0
1cc432: 5c40 4523                              |00b9: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mQuietMode:Z // field@2345
1cc436: 2201 9518                              |00bb: new-instance v1, Ljava/util/concurrent/ConcurrentHashMap; // type@1895
1cc43a: 7010 51a3 0100                         |00bd: invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;.<init>:()V // method@a351
1cc440: 5b41 f722                              |00c0: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mBondAttemptCallerInfo:Ljava/util/Map; // field@22f7
1cc444: 7100 c7a2 0000                         |00c2: invoke-static {}, Ljava/util/Optional;.empty:()Ljava/util/Optional; // method@a2c7
1cc44a: 0c01                                   |00c5: move-result-object v1
1cc44c: 5b41 4023                              |00c6: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mPhonePolicy:Ljava/util/Optional; // field@2340
1cc450: 5c40 6b23                              |00c8: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mTestModeEnabled:Z // field@236b
1cc454: 2201 3308                              |00ca: new-instance v1, Lcom/android/bluetooth/btservice/AdapterServiceBinder; // type@0833
1cc458: 7020 6631 4100                         |00cc: invoke-direct {v1, v4}, Lcom/android/bluetooth/btservice/AdapterServiceBinder;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@3166
1cc45e: 5b41 e622                              |00cf: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mAdapterServiceBinder:Lcom/android/bluetooth/btservice/AdapterServiceBinder; // field@22e6
1cc462: 2201 b307                              |00d1: new-instance v1, Lcom/android/bluetooth/btservice/AdapterBinder; // type@07b3
1cc466: 7020 7f2c 4100                         |00d3: invoke-direct {v1, v4}, Lcom/android/bluetooth/btservice/AdapterBinder;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2c7f
1cc46c: 5b41 e422                              |00d6: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mAdapterBinder:Lcom/android/bluetooth/btservice/AdapterBinder; // field@22e4
1cc470: 5c40 6723                              |00d8: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mSuspend:Z // field@2367
1cc474: 2201 9518                              |00da: new-instance v1, Ljava/util/concurrent/ConcurrentHashMap; // type@1895
1cc478: 7010 51a3 0100                         |00dc: invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;.<init>:()V // method@a351
1cc47e: 5b41 0223                              |00df: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mDisconnectReasons:Ljava/util/Map; // field@2302
1cc482: 1201                                   |00e1: const/4 v1, #int 0 // #0
1cc484: 5b41 4d23                              |00e2: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mSamsungCloudRPCSettingV2:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2; // field@234d
1cc488: 5c40 1223                              |00e4: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mIsChinaModel:Z // field@2312
1cc48c: 5940 4c23                              |00e6: iput v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mSCLibVersion:I // field@234c
1cc490: 5b41 0a23                              |00e8: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mGapDisableFeatures:Ljava/util/List; // field@230a
1cc494: 2202 5a18                              |00ea: new-instance v2, Ljava/util/ArrayList; // type@185a
1cc498: 7010 83a1 0200                         |00ec: invoke-direct {v2}, Ljava/util/ArrayList;.<init>:()V // method@a183
1cc49e: 5b42 3e23                              |00ef: iput-object v2, v4, Lcom/android/bluetooth/btservice/AdapterService;.mPackageList:Ljava/util/List; // field@233e
1cc4a2: 12f2                                   |00f1: const/4 v2, #int -1 // #ff
1cc4a4: 5942 7e23                              |00f2: iput v2, v4, Lcom/android/bluetooth/btservice/AdapterService;.rawHciCmdStatus:I // field@237e
1cc4a8: 5b41 7d23                              |00f4: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.rawHciCmdResults:[B // field@237d
1cc4ac: 5c40 1b23                              |00f6: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mIsRCVOn:Z // field@231b
1cc4b0: 5c40 1e23                              |00f8: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mIsWifi5G:Z // field@231e
1cc4b4: 5c40 1f23                              |00fa: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mIsWifi6G:Z // field@231f
1cc4b8: 5c40 1723                              |00fc: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mIsMainGrip:Z // field@2317
1cc4bc: 5c40 2023                              |00fe: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mIsWifiGrip:Z // field@2320
1cc4c0: 1213                                   |0100: const/4 v3, #int 1 // #1
1cc4c2: 5943 6223                              |0101: iput v3, v4, Lcom/android/bluetooth/btservice/AdapterService;.mSensorMode:I // field@2362
1cc4c6: 5940 4423                              |0103: iput v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mPrev5GFreqRange:I // field@2344
1cc4ca: 5940 8323                              |0105: iput v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.wifiState:I // field@2383
1cc4ce: 5c40 1a23                              |0107: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mIsNrSarActive:Z // field@231a
1cc4d2: 5c40 fa22                              |0109: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mBtSarReceiverRegistered:Z // field@22fa
1cc4d6: 5942 2523                              |010b: iput v2, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLastTasAverage:I // field@2325
1cc4da: 5942 2323                              |010d: iput v2, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLastSetTasLevel:I // field@2323
1cc4de: 5b41 7423                              |010f: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mWifiManager:Landroid/net/wifi/WifiManager; // field@2374
1cc4e2: 5b41 8223                              |0111: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.wifiInfo:Landroid/net/wifi/WifiInfo; // field@2382
1cc4e6: 5b41 7823                              |0113: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.networkInfo:Landroid/net/NetworkInfo; // field@2378
1cc4ea: 7100 0a94 0000                         |0115: invoke-static {}, Lcom/samsung/bt/data/BluetoothDataManager;.getDataManager:()Lcom/samsung/bt/data/BluetoothDataManager; // method@940a
1cc4f0: 0c01                                   |0118: move-result-object v1
1cc4f2: 5b41 ff22                              |0119: iput-object v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mDataManager:Lcom/samsung/bt/data/BluetoothDataManager; // field@22ff
1cc4f6: 5940 4923                              |011b: iput v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mRssiThreshold:I // field@2349
1cc4fa: 5940 4823                              |011d: iput v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mRssiNearThreshold:I // field@2348
1cc4fe: 1301 baff                              |011f: const/16 v1, #int -70 // #ffba
1cc502: 5941 7623                              |0121: iput v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mdlLowRssi:I // field@2376
1cc506: 1301 c4ff                              |0123: const/16 v1, #int -60 // #ffc4
1cc50a: 5941 7723                              |0125: iput v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mdlMidRssi:I // field@2377
1cc50e: 1301 7f00                              |0127: const/16 v1, #int 127 // #7f
1cc512: 5941 7523                              |0129: iput v1, v4, Lcom/android/bluetooth/btservice/AdapterService;.mdlHighRssi:I // field@2375
1cc516: 5c40 1423                              |012b: iput-boolean v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mIsGattDutMode:Z // field@2314
1cc51a: 2200 6e18                              |012d: new-instance v0, Ljava/util/HashSet; // type@186e
1cc51e: 7010 32a2 0000                         |012f: invoke-direct {v0}, Ljava/util/HashSet;.<init>:()V // method@a232
1cc524: 5b40 0723                              |0132: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mDutApps:Ljava/util/HashSet; // field@2307
1cc528: 2200 d117                              |0134: new-instance v0, Ljava/lang/Object; // type@17d1
1cc52c: 7010 759f 0000                         |0136: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1cc532: 5b40 0123                              |0139: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mDeviceConfigLock:Ljava/lang/Object; // field@2301
1cc536: 2200 c907                              |013b: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda22; // type@07c9
1cc53a: 7010 f92d 0000                         |013d: invoke-direct {v0}, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda22;.<init>:()V // method@2df9
1cc540: 5b40 3123                              |0140: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLocationDenylistName:Ljava/util/function/Predicate; // field@2331
1cc544: 2200 ca07                              |0142: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda23; // type@07ca
1cc548: 7010 fb2d 0000                         |0144: invoke-direct {v0}, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda23;.<init>:()V // method@2dfb
1cc54e: 5b40 3023                              |0147: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLocationDenylistMac:Ljava/util/function/Predicate; // field@2330
1cc552: 2200 cb07                              |0149: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda24; // type@07cb
1cc556: 7010 fd2d 0000                         |014b: invoke-direct {v0}, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda24;.<init>:()V // method@2dfd
1cc55c: 5b40 2f23                              |014e: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLocationDenylistAdvertisingData:Ljava/util/function/Predicate; // field@232f
1cc560: 1250                                   |0150: const/4 v0, #int 5 // #5
1cc562: 5940 5623                              |0151: iput v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScanQuotaCount:I // field@2356
1cc566: 6200 c73b                              |0153: sget-object v0, Lcom/android/bluetooth/le_scan/ScanUtil;.DEFAULT_SCAN_QUOTA_WINDOW:Ljava/time/Duration; // field@3bc7
1cc56a: 5b40 5723                              |0155: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScanQuotaWindow:Ljava/time/Duration; // field@2357
1cc56e: 6200 c93b                              |0157: sget-object v0, Lcom/android/bluetooth/le_scan/ScanUtil;.DEFAULT_SCAN_TIMEOUT:Ljava/time/Duration; // field@3bc9
1cc572: 5b40 5823                              |0159: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScanTimeout:Ljava/time/Duration; // field@2358
1cc576: 6200 ca3b                              |015b: sget-object v0, Lcom/android/bluetooth/le_scan/ScanUtil;.DEFAULT_SCAN_UPGRADE_DURATION:Ljava/time/Duration; // field@3bca
1cc57a: 5b40 5923                              |015d: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScanUpgradeDuration:Ljava/time/Duration; // field@2359
1cc57e: 6200 c53b                              |015f: sget-object v0, Lcom/android/bluetooth/le_scan/ScanUtil;.DEFAULT_SCAN_DOWNGRADE_DURATION_BT_CONNECTING:Ljava/time/Duration; // field@3bc5
1cc582: 5b40 4f23                              |0161: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScanDowngradeDuration:Ljava/time/Duration; // field@234f
1cc586: 6200 e53b                              |0163: sget-object v0, Lcom/android/bluetooth/le_scan/ScanUtil;.SCAN_MODE_SCREEN_OFF_LOW_POWER_WINDOW:Ljava/time/Duration; // field@3be5
1cc58a: 5b40 5d23                              |0165: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScreenOffLowPowerWindow:Ljava/time/Duration; // field@235d
1cc58e: 6200 e43b                              |0167: sget-object v0, Lcom/android/bluetooth/le_scan/ScanUtil;.SCAN_MODE_SCREEN_OFF_LOW_POWER_INTERVAL:Ljava/time/Duration; // field@3be4
1cc592: 5b40 5c23                              |0169: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScreenOffLowPowerInterval:Ljava/time/Duration; // field@235c
1cc596: 6200 e33b                              |016b: sget-object v0, Lcom/android/bluetooth/le_scan/ScanUtil;.SCAN_MODE_SCREEN_OFF_BALANCED_WINDOW:Ljava/time/Duration; // field@3be3
1cc59a: 5b40 5b23                              |016d: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScreenOffBalancedWindow:Ljava/time/Duration; // field@235b
1cc59e: 6200 e23b                              |016f: sget-object v0, Lcom/android/bluetooth/le_scan/ScanUtil;.SCAN_MODE_SCREEN_OFF_BALANCED_INTERVAL:Ljava/time/Duration; // field@3be2
1cc5a2: 5b40 5a23                              |0171: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScreenOffBalancedInterval:Ljava/time/Duration; // field@235a
1cc5a6: 2200 1702                              |0173: new-instance v0, Landroid/os/Handler; // type@0217
1cc5aa: 2201 1708                              |0175: new-instance v1, Lcom/android/bluetooth/btservice/AdapterService$5; // type@0817
1cc5ae: 7020 9a2e 4100                         |0177: invoke-direct {v1, v4}, Lcom/android/bluetooth/btservice/AdapterService$5;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2e9a
1cc5b4: 7020 9609 1000                         |017a: invoke-direct {v0, v1}, Landroid/os/Handler;.<init>:(Landroid/os/Handler$Callback;)V // method@0996
1cc5ba: 5b40 8123                              |017d: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.syncHandler:Landroid/os/Handler; // field@2381
1cc5be: 2200 1808                              |017f: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$6; // type@0818
1cc5c2: 7020 9c2e 4000                         |0181: invoke-direct {v0, v4}, Lcom/android/bluetooth/btservice/AdapterService$6;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2e9c
1cc5c8: 5b40 f922                              |0184: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mBtSarReceiver:Landroid/content/BroadcastReceiver; // field@22f9
1cc5cc: 2200 1908                              |0186: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$7; // type@0819
1cc5d0: 7020 9e2e 4000                         |0188: invoke-direct {v0, v4}, Lcom/android/bluetooth/btservice/AdapterService$7;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2e9e
1cc5d6: 5b40 3423                              |018b: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mMainAccelerSensorListener:Landroid/hardware/SensorEventListener; // field@2334
1cc5da: 2200 1a08                              |018d: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$8; // type@081a
1cc5de: 7020 a12e 4000                         |018f: invoke-direct {v0, v4}, Lcom/android/bluetooth/btservice/AdapterService$8;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2ea1
1cc5e4: 5b40 3823                              |0192: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mMainGripSensorListener:Landroid/hardware/SensorEventListener; // field@2338
1cc5e8: 2200 1b08                              |0194: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$9; // type@081b
1cc5ec: 7020 a42e 4000                         |0196: invoke-direct {v0, v4}, Lcom/android/bluetooth/btservice/AdapterService$9;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2ea4
1cc5f2: 5b40 7323                              |0199: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mWifiGripSensorListener:Landroid/hardware/SensorEventListener; // field@2373
1cc5f6: 2200 1208                              |019b: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$10; // type@0812
1cc5fa: 7020 8b2e 4000                         |019d: invoke-direct {v0, v4}, Lcom/android/bluetooth/btservice/AdapterService$10;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2e8b
1cc600: 5b40 4123                              |01a0: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mPhoneStateListener:Landroid/telephony/PhoneStateListener; // field@2341
1cc604: 7110 c2a2 0500                         |01a2: invoke-static {v5}, Ljava/util/Objects;.requireNonNull:(Ljava/lang/Object;)Ljava/lang/Object; // method@a2c2
1cc60a: 0750                                   |01a5: move-object v0, v5
1cc60c: 1f00 2302                              |01a6: check-cast v0, Landroid/os/Looper; // type@0223
1cc610: 5b45 3323                              |01a8: iput-object v5, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLooper:Landroid/os/Looper; // field@2333
1cc614: 2200 1c08                              |01aa: new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler; // type@081c
1cc618: 7030 a72e 4005                         |01ac: invoke-direct {v0, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Looper;)V // method@2ea7
1cc61e: 5b40 0d23                              |01af: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mHandler:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler; // field@230d
1cc622: 2200 3c08                              |01b1: new-instance v0, Lcom/android/bluetooth/btservice/AdapterState; // type@083c
1cc626: 7030 7632 4005                         |01b3: invoke-direct {v0, v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Looper;)V // method@3276
1cc62c: 5b40 e722                              |01b6: iput-object v0, v4, Lcom/android/bluetooth/btservice/AdapterService;.mAdapterState:Lcom/android/bluetooth/btservice/AdapterState; // field@22e7
1cc630: 7110 c2a2 0600                         |01b8: invoke-static {v6}, Ljava/util/Objects;.requireNonNull:(Ljava/lang/Object;)Ljava/lang/Object; // method@a2c2
1cc636: 5b46 3c23                              |01bb: iput-object v6, v4, Lcom/android/bluetooth/btservice/AdapterService;.mNativeInterface:Lcom/android/bluetooth/btservice/AdapterNativeInterface; // field@233c
1cc63a: 2206 a908                              |01bd: new-instance v6, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService; // type@08a9
1cc63e: 7020 6d35 7600                         |01bf: invoke-direct {v6, v7}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;.<init>:(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;)V // method@356d
1cc644: 5b46 f122                              |01c2: iput-object v6, v4, Lcom/android/bluetooth/btservice/AdapterService;.mBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService; // field@22f1
1cc648: 2206 5f08                              |01c4: new-instance v6, Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeCallback; // type@085f
1cc64c: 7020 1d33 4600                         |01c6: invoke-direct {v6, v4}, Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeCallback;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@331d
1cc652: 2207 cc07                              |01c9: new-instance v7, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda25; // type@07cc
1cc656: 7020 ff2d 6700                         |01cb: invoke-direct {v7, v6}, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda25;.<init>:(Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeCallback;)V // method@2dff
1cc65c: 7120 c5a2 7800                         |01ce: invoke-static {v8, v7}, Ljava/util/Objects;.requireNonNullElseGet:(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object; // method@a2c5
1cc662: 0c06                                   |01d1: move-result-object v6
1cc664: 1f06 6108                              |01d2: check-cast v6, Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeInterface; // type@0861
1cc668: 5b46 f222                              |01d4: iput-object v6, v4, Lcom/android/bluetooth/btservice/AdapterService;.mBluetoothQualityReportNativeInterface:Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeInterface; // field@22f2
1cc66c: 2206 cd07                              |01d6: new-instance v6, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda26; // type@07cd
1cc670: 7020 012e 4600                         |01d8: invoke-direct {v6, v4}, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda26;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2e01
1cc676: 7120 c5a2 6900                         |01db: invoke-static {v9, v6}, Ljava/util/Objects;.requireNonNullElseGet:(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object; // method@a2c5
1cc67c: 0c06                                   |01de: move-result-object v6
1cc67e: 1f06 5e08                              |01df: check-cast v6, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface; // type@085e
1cc682: 5b46 f022                              |01e1: iput-object v6, v4, Lcom/android/bluetooth/btservice/AdapterService;.mBluetoothHciVendorSpecificNativeInterface:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface; // field@22f0
1cc686: 5b4a 5523                              |01e3: iput-object v10, v4, Lcom/android/bluetooth/btservice/AdapterService;.mScanNativeInterface:Lcom/android/bluetooth/le_scan/ScanNativeInterface; // field@2355
1cc68a: 5b4b 3f23                              |01e5: iput-object v11, v4, Lcom/android/bluetooth/btservice/AdapterService;.mPeriodicScanNativeInterface:Lcom/android/bluetooth/le_scan/PeriodicScanNativeInterface; // field@233f
1cc68e: 5b4c 0b23                              |01e7: iput-object v12, v4, Lcom/android/bluetooth/btservice/AdapterService;.mGattNativeInterface:Lcom/android/bluetooth/gatt/GattNativeInterface; // field@230b
1cc692: 5b4d e922                              |01e9: iput-object v13, v4, Lcom/android/bluetooth/btservice/AdapterService;.mAdvertiseManagerNativeInterface:Lcom/android/bluetooth/gatt/AdvertiseManagerNativeInterface; // field@22e9
1cc696: 5b4e 0623                              |01eb: iput-object v14, v4, Lcom/android/bluetooth/btservice/AdapterService;.mDistanceMeasurementNativeInterface:Lcom/android/bluetooth/gatt/DistanceMeasurementNativeInterface; // field@2306
1cc69a: 5b4f 5f23                              |01ed: iput-object v15, v4, Lcom/android/bluetooth/btservice/AdapterService;.mSdpManagerNativeInterface:Lcom/android/bluetooth/sdp/SdpManagerNativeInterface; // field@235f
1cc69e: 2206 a008                              |01ef: new-instance v6, Lcom/android/bluetooth/btservice/SilenceDeviceManager; // type@08a0
1cc6a2: 7030 3c35 4605                         |01f1: invoke-direct {v6, v4, v5}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Looper;)V // method@353c
1cc6a8: 5b46 6323                              |01f4: iput-object v6, v4, Lcom/android/bluetooth/btservice/AdapterService;.mSilenceDeviceManager:Lcom/android/bluetooth/btservice/SilenceDeviceManager; // field@2363
1cc6ac: 2205 7310                              |01f6: new-instance v5, Lcom/android/bluetooth/storage/BluetoothStorageManager; // type@1073
1cc6b0: 7020 2b72 4500                         |01f8: invoke-direct {v5, v4}, Lcom/android/bluetooth/storage/BluetoothStorageManager;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@722b
1cc6b6: 5b45 6623                              |01fb: iput-object v5, v4, Lcom/android/bluetooth/btservice/AdapterService;.mStorage:Lcom/android/bluetooth/storage/BluetoothStorageManager; // field@2366
1cc6ba: 2205 ce07                              |01fd: new-instance v5, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda27; // type@07ce
1cc6be: 7020 032e 4500                         |01ff: invoke-direct {v5, v4}, Lcom/android/bluetooth/btservice/AdapterService$$ExternalSyntheticLambda27;.<init>:(Lcom/android/bluetooth/btservice/AdapterService;)V // method@2e03
1cc6c4: 5b45 3223                              |0202: iput-object v5, v4, Lcom/android/bluetooth/btservice/AdapterService;.mLocationDenylistPredicate:Ljava/util/function/Predicate; // field@2332
1cc6c8: 0e00                                   |0204: return-void
      catches       : (none)
      positions     :
        0x0000 line=767
        0x0003 line=374
        0x000a line=375
        0x0011 line=377
        0x0018 line=378
        0x001f line=379
        0x0026 line=381
        0x002d line=384
        0x0034 line=387
        0x003b line=391
        0x0042 line=395
        0x0049 line=396
        0x0050 line=397
        0x0057 line=399
        0x005e line=401
        0x0065 line=403
        0x006c line=405
        0x0073 line=408
        0x007e line=411
        0x0085 line=413
        0x008c line=416
        0x0093 line=449
        0x0099 line=454
        0x009f line=471
        0x00a5 line=474
        0x00ac line=482
        0x00b2 line=486
        0x00b9 line=490
        0x00bb line=491
        0x00c2 line=500
        0x00c8 line=511
        0x00ca line=514
        0x00d1 line=516
        0x00d8 line=520
        0x00da line=526
        0x00e2 line=557
        0x00e4 line=558
        0x00e6 line=559
        0x00e8 line=567
        0x00ea line=573
        0x00f2 line=577
        0x00f4 line=578
        0x00f6 line=606
        0x00f8 line=607
        0x00fa line=608
        0x00fc line=630
        0x00fe line=631
        0x0101 line=640
        0x0103 line=643
        0x0105 line=644
        0x0107 line=645
        0x0109 line=646
        0x010b line=654
        0x010d line=657
        0x010f line=669
        0x0111 line=670
        0x0113 line=671
        0x0115 line=709
        0x011b line=825
        0x011d line=826
        0x0121 line=827
        0x0125 line=828
        0x0129 line=829
        0x012b line=1020
        0x012d line=1021
        0x0134 line=7219
        0x013b line=7225
        0x0142 line=7232
        0x0149 line=7239
        0x0151 line=7242
        0x0153 line=7245
        0x0157 line=7248
        0x015b line=7251
        0x015f line=7254
        0x0163 line=7258
        0x0167 line=7261
        0x016b line=7264
        0x016f line=7267
        0x0173 line=8124
        0x017f line=8611
        0x0186 line=8968
        0x018d line=9118
        0x0194 line=9156
        0x019b line=9381
        0x01a2 line=768
        0x01aa line=769
        0x01b1 line=770
        0x01b8 line=771
        0x01bd line=772
        0x01c4 line=773
        0x01c9 line=774
        0x01ce line=775
        0x01d6 line=778
        0x01db line=779
        0x01e3 line=784
        0x01e5 line=785
        0x01e7 line=786
        0x01e9 line=787
        0x01eb line=788
        0x01ed line=789
        0x01ef line=790
        0x01f6 line=791
        0x01fd line=792
      locals        :
        0x0000 - 0x0205 reg=4 this Lcom/android/bluetooth/btservice/AdapterService;
        0x0000 - 0x0205 reg=5 (null) Landroid/os/Looper;
        0x0000 - 0x0205 reg=6 (null) Lcom/android/bluetooth/btservice/AdapterNativeInterface;
        0x0000 - 0x0205 reg=7 (null) Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;
        0x0000 - 0x0205 reg=8 (null) Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeInterface;
        0x0000 - 0x0205 reg=9 (null) Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
        0x0000 - 0x0205 reg=10 (null) Lcom/android/bluetooth/le_scan/ScanNativeInterface;
        0x0000 - 0x0205 reg=11 (null) Lcom/android/bluetooth/le_scan/PeriodicScanNativeInterface;
        0x0000 - 0x0205 reg=12 (null) Lcom/android/bluetooth/gatt/GattNativeInterface;
        0x0000 - 0x0205 reg=13 (null) Lcom/android/bluetooth/gatt/AdvertiseManagerNativeInterface;
        0x0000 - 0x0205 reg=14 (null) Lcom/android/bluetooth/gatt/DistanceMeasurementNativeInterface;
        0x0000 - 0x0205 reg=15 (null) Lcom/android/bluetooth/sdp/SdpManagerNativeInterface;

 (in Lcom/android/bluetooth/btservice/AdapterService;)
      name          : 'getBluetoothHciVendorSpecificDispatcher'
      type          : '()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 1
      ins           : 1
      outs          : 0
      insns size    : 3 16-bit code units
1c8808:                                        |[1c8808] com.android.bluetooth.btservice.AdapterService.getBluetoothHciVendorSpecificDispatcher:()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;
1c8818: 5400 ef22                              |0000: iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;.mBluetoothHciVendorSpecificDispatcher:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@22ef
1c881c: 1100                                   |0002: return-object v0
      catches       : (none)
      positions     :
        0x0000 line=1440
      locals        :
        0x0000 - 0x0003 reg=0 this Lcom/android/bluetooth/btservice/AdapterService;

 (in Lcom/android/bluetooth/btservice/AdapterService;)
      name          : 'getBluetoothHciVendorSpecificNativeInterface'
      type          : '()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 1
      ins           : 1
      outs          : 0
      insns size    : 3 16-bit code units
1c883c:                                        |[1c883c] com.android.bluetooth.btservice.AdapterService.getBluetoothHciVendorSpecificNativeInterface:()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
1c884c: 5400 f022                              |0000: iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;.mBluetoothHciVendorSpecificNativeInterface:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface; // field@22f0
1c8850: 1100                                   |0002: return-object v0
      catches       : (none)
      positions     :
        0x0000 line=1444
      locals        :
        0x0000 - 0x0003 reg=0 this Lcom/android/bluetooth/btservice/AdapterService;

 (in Lcom/android/bluetooth/btservice/AdapterService;)
      name          : 'lambda$new$1'
      type          : '()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
      code          -
      registers     : 2
      ins           : 1
      outs          : 2
      insns size    : 8 16-bit code units
1c8854:                                        |[1c8854] com.android.bluetooth.btservice.AdapterService.lambda$new$1:()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
1c8864: 2200 5e08                              |0000: new-instance v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface; // type@085e
1c8868: 5411 ef22                              |0002: iget-object v1, v1, Lcom/android/bluetooth/btservice/AdapterService;.mBluetoothHciVendorSpecificDispatcher:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@22ef
1c886c: 7020 1233 1000                         |0004: invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.<init>:(Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)V // method@3312
1c8872: 1100                                   |0007: return-object v0
      catches       : (none)
      positions     :
        0x0000 line=782
      locals        :
        0x0000 - 0x0008 reg=1 this Lcom/android/bluetooth/btservice/AdapterService;

 (in Lcom/android/bluetooth/btservice/AdapterServiceBinder;)
      name          : 'registerHciVendorSpecificCallback'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;[I[I)V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 6
      ins           : 4
      outs          : 4
      insns size    : 126 16-bit code units
1c370c:                                        |[1c370c] com.android.bluetooth.btservice.AdapterServiceBinder.registerHciVendorSpecificCallback:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;[I[I)V
1c371c: 6e10 c431 0200                         |0000: invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterServiceBinder;.getService:()Lcom/android/bluetooth/btservice/AdapterService; // method@31c4
1c3722: 0c02                                   |0003: move-result-object v2
1c3724: 3902 0300                              |0004: if-nez v2, 0007 // +0003
1c3728: 0e00                                   |0006: return-void
1c372a: 6200 9323                              |0007: sget-object v0, Lcom/android/bluetooth/btservice/AdapterServiceBinder;.TAG:Ljava/lang/String; // field@2393
1c372e: 1a01 e7df                              |0009: const-string v1, "registerHciVendorSpecificCallback" // string@dfe7
1c3732: 7130 871c 0201                         |000b: invoke-static {v2, v0, v1}, Lcom/android/bluetooth/Util;.callerIsSystemOrActiveOrManagedUser:(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z // method@1c87
1c3738: 0a00                                   |000e: move-result v0
1c373a: 3800 6700                              |000f: if-eqz v0, 0076 // +0067
1c373e: 1a00 7a8d                              |0011: const-string v0, "android.permission.BLUETOOTH_PRIVILEGED" // string@8d7a
1c3742: 1201                                   |0013: const/4 v1, #int 0 // #0
1c3744: 6e30 d200 0201                         |0014: invoke-virtual {v2, v0, v1}, Landroid/app/Service;.enforceCallingOrSelfPermission:(Ljava/lang/String;Ljava/lang/String;)V // method@00d2
1c374a: 7110 c2a2 0300                         |0017: invoke-static {v3}, Ljava/util/Objects;.requireNonNull:(Ljava/lang/Object;)Ljava/lang/Object; // method@a2c2
1c3750: 7110 c2a2 0400                         |001a: invoke-static {v4}, Ljava/util/Objects;.requireNonNull:(Ljava/lang/Object;)Ljava/lang/Object; // method@a2c2
1c3756: 7110 c2a2 0500                         |001d: invoke-static {v5}, Ljava/util/Objects;.requireNonNull:(Ljava/lang/Object;)Ljava/lang/Object; // method@a2c2
1c375c: 7110 bda1 0400                         |0020: invoke-static {v4}, Ljava/util/Arrays;.stream:([I)Ljava/util/stream/IntStream; // method@a1bd
1c3762: 0c04                                   |0023: move-result-object v4
1c3764: 7210 14a4 0400                         |0024: invoke-interface {v4}, Ljava/util/stream/IntStream;.boxed:()Ljava/util/stream/Stream; // method@a414
1c376a: 0c04                                   |0027: move-result-object v4
1c376c: 7100 10a4 0000                         |0028: invoke-static {}, Ljava/util/stream/Collectors;.toSet:()Ljava/util/stream/Collector; // method@a410
1c3772: 0c00                                   |002b: move-result-object v0
1c3774: 7220 1ba4 0400                         |002c: invoke-interface {v4, v0}, Ljava/util/stream/Stream;.collect:(Ljava/util/stream/Collector;)Ljava/lang/Object; // method@a41b
1c377a: 0c04                                   |002f: move-result-object v4
1c377c: 1f04 8518                              |0030: check-cast v4, Ljava/util/Set; // type@1885
1c3780: 7110 bda1 0500                         |0032: invoke-static {v5}, Ljava/util/Arrays;.stream:([I)Ljava/util/stream/IntStream; // method@a1bd
1c3786: 0c05                                   |0035: move-result-object v5
1c3788: 7210 14a4 0500                         |0036: invoke-interface {v5}, Ljava/util/stream/IntStream;.boxed:()Ljava/util/stream/Stream; // method@a414
1c378e: 0c05                                   |0039: move-result-object v5
1c3790: 7100 10a4 0000                         |003a: invoke-static {}, Ljava/util/stream/Collectors;.toSet:()Ljava/util/stream/Collector; // method@a410
1c3796: 0c00                                   |003d: move-result-object v0
1c3798: 7220 1ba4 0500                         |003e: invoke-interface {v5, v0}, Ljava/util/stream/Stream;.collect:(Ljava/util/stream/Collector;)Ljava/lang/Object; // method@a41b
1c379e: 0c05                                   |0041: move-result-object v5
1c37a0: 1f05 8518                              |0042: check-cast v5, Ljava/util/Set; // type@1885
1c37a4: 7210 01a3 0400                         |0044: invoke-interface {v4}, Ljava/util/Set;.stream:()Ljava/util/stream/Stream; // method@a301
1c37aa: 0c00                                   |0047: move-result-object v0
1c37ac: 2201 2b08                              |0048: new-instance v1, Lcom/android/bluetooth/btservice/AdapterServiceBinder$$ExternalSyntheticLambda1; // type@082b
1c37b0: 7010 4d31 0100                         |004a: invoke-direct {v1}, Lcom/android/bluetooth/btservice/AdapterServiceBinder$$ExternalSyntheticLambda1;.<init>:()V // method@314d
1c37b6: 7220 1aa4 1000                         |004d: invoke-interface {v0, v1}, Ljava/util/stream/Stream;.anyMatch:(Ljava/util/function/Predicate;)Z // method@a41a
1c37bc: 0a00                                   |0050: move-result v0
1c37be: 3900 1f00                              |0051: if-nez v0, 0070 // +001f
1c37c2: 7210 01a3 0500                         |0053: invoke-interface {v5}, Ljava/util/Set;.stream:()Ljava/util/stream/Stream; // method@a301
1c37c8: 0c00                                   |0056: move-result-object v0
1c37ca: 2201 2c08                              |0057: new-instance v1, Lcom/android/bluetooth/btservice/AdapterServiceBinder$$ExternalSyntheticLambda2; // type@082c
1c37ce: 7010 4f31 0100                         |0059: invoke-direct {v1}, Lcom/android/bluetooth/btservice/AdapterServiceBinder$$ExternalSyntheticLambda2;.<init>:()V // method@314f
1c37d4: 7220 1aa4 1000                         |005c: invoke-interface {v0, v1}, Ljava/util/stream/Stream;.anyMatch:(Ljava/util/function/Predicate;)Z // method@a41a
1c37da: 0a00                                   |005f: move-result v0
1c37dc: 3900 0a00                              |0060: if-nez v0, 006a // +000a
1c37e0: 6e10 c82f 0200                         |0062: invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;.getBluetoothHciVendorSpecificDispatcher:()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // method@2fc8
1c37e6: 0c02                                   |0065: move-result-object v2
1c37e8: 6e40 0333 3254                         |0066: invoke-virtual {v2, v3, v4, v5}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.register:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;Ljava/util/Set;Ljava/util/Set;)V // method@3303
1c37ee: 0e00                                   |0069: return-void
1c37f0: 1a02 20b8                              |006a: const-string v2, "invalid acl handle" // string@b820
1c37f4: 7110 ea15 0200                         |006c: invoke-static {v2}, Landroidx/room/Room$$ExternalSyntheticBUOutline0;.m:(Ljava/lang/String;)V // method@15ea
1c37fa: 0e00                                   |006f: return-void
1c37fc: 1a02 2ab8                              |0070: const-string v2, "invalid vendor-specific event code" // string@b82a
1c3800: 7110 ea15 0200                         |0072: invoke-static {v2}, Landroidx/room/Room$$ExternalSyntheticBUOutline0;.m:(Ljava/lang/String;)V // method@15ea
1c3806: 0e00                                   |0075: return-void
1c3808: 2202 db17                              |0076: new-instance v2, Ljava/lang/SecurityException; // type@17db
1c380c: 1a03 fed0                              |0078: const-string v3, "not allowed" // string@d0fe
1c3810: 7020 949f 3200                         |007a: invoke-direct {v2, v3}, Ljava/lang/SecurityException;.<init>:(Ljava/lang/String;)V // method@9f94
1c3816: 2702                                   |007d: throw v2
      catches       : (none)
      positions     :
        0x0000 line=2132
        0x0007 line=2136
        0x0011 line=2140
        0x0017 line=2141
        0x001a line=2142
        0x001d line=2143
        0x0020 line=2145
        0x0032 line=2146
        0x0044 line=2147
        0x004d line=2148
        0x0053 line=2152
        0x0062 line=2156
        0x0066 line=2157
        0x006a line=2153
        0x0070 line=2149
        0x0076 line=2138
      locals        :
        0x0000 - 0x007e reg=2 this Lcom/android/bluetooth/btservice/AdapterServiceBinder;
        0x0000 - 0x007e reg=3 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
        0x0000 - 0x007e reg=4 (null) [I
        0x0000 - 0x007e reg=5 (null) [I

 (in Lcom/android/bluetooth/btservice/AdapterServiceBinder;)
      name          : 'sendHciVendorSpecificCommand'
      type          : '(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 7
      ins           : 4
      outs          : 4
      insns size    : 108 16-bit code units
1c38f0:                                        |[1c38f0] com.android.bluetooth.btservice.AdapterServiceBinder.sendHciVendorSpecificCommand:(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
1c3900: 6e10 c431 0300                         |0000: invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterServiceBinder;.getService:()Lcom/android/bluetooth/btservice/AdapterService; // method@31c4
1c3906: 0c03                                   |0003: move-result-object v3
1c3908: 3903 0300                              |0004: if-nez v3, 0007 // +0003
1c390c: 0e00                                   |0006: return-void
1c390e: 6200 9323                              |0007: sget-object v0, Lcom/android/bluetooth/btservice/AdapterServiceBinder;.TAG:Ljava/lang/String; // field@2393
1c3912: 1a01 aee5                              |0009: const-string v1, "sendHciVendorSpecificCommand" // string@e5ae
1c3916: 7130 871c 0301                         |000b: invoke-static {v3, v0, v1}, Lcom/android/bluetooth/Util;.callerIsSystemOrActiveOrManagedUser:(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z // method@1c87
1c391c: 0a01                                   |000e: move-result v1
1c391e: 3801 5500                              |000f: if-eqz v1, 0064 // +0055
1c3922: 1a01 7a8d                              |0011: const-string v1, "android.permission.BLUETOOTH_PRIVILEGED" // string@8d7a
1c3926: 1202                                   |0013: const/4 v2, #int 0 // #0
1c3928: 6e30 d200 1302                         |0014: invoke-virtual {v3, v1, v2}, Landroid/app/Service;.enforceCallingOrSelfPermission:(Ljava/lang/String;Ljava/lang/String;)V // method@00d2
1c392e: 3a04 4700                              |0017: if-ltz v4, 005e // +0047
1c3932: 1301 5001                              |0019: const/16 v1, #int 336 // #150
1c3936: 3414 0a00                              |001b: if-lt v4, v1, 0025 // +000a
1c393a: 1301 6001                              |001d: const/16 v1, #int 352 // #160
1c393e: 3514 0600                              |001f: if-ge v4, v1, 0025 // +0006
1c3942: 1301 5301                              |0021: const/16 v1, #int 339 // #153
1c3946: 3314 3b00                              |0023: if-ne v4, v1, 005e // +003b
1c394a: 1301 ff03                              |0025: const/16 v1, #int 1023 // #3ff
1c394e: 3614 3700                              |0027: if-gt v4, v1, 005e // +0037
1c3952: 7110 c2a2 0500                         |0029: invoke-static {v5}, Ljava/util/Objects;.requireNonNull:(Ljava/lang/Object;)Ljava/lang/Object; // method@a2c2
1c3958: 2151                                   |002c: array-length v1, v5
1c395a: 1302 ff00                              |002d: const/16 v2, #int 255 // #ff
1c395e: 3621 2900                              |002f: if-gt v1, v2, 0058 // +0029
1c3962: 6e10 c82f 0300                         |0031: invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;.getBluetoothHciVendorSpecificDispatcher:()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // method@2fc8
1c3968: 0c01                                   |0034: move-result-object v1
1c396a: 6e20 0233 6100                         |0035: invoke-virtual {v1, v6}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.getRegisteredCookie:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)Ljava/util/Optional; // method@3302
1c3970: 0c06                                   |0038: move-result-object v6
1c3972: 6e10 cda2 0600                         |0039: invoke-virtual {v6}, Ljava/util/Optional;.isEmpty:()Z // method@a2cd
1c3978: 0a01                                   |003c: move-result v1
1c397a: 3901 1000                              |003d: if-nez v1, 004d // +0010
1c397e: 6e10 c92f 0300                         |003f: invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;.getBluetoothHciVendorSpecificNativeInterface:()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface; // method@2fc9
1c3984: 0c03                                   |0042: move-result-object v3
1c3986: 6e10 caa2 0600                         |0043: invoke-virtual {v6}, Ljava/util/Optional;.get:()Ljava/lang/Object; // method@a2ca
1c398c: 0c06                                   |0046: move-result-object v6
1c398e: 1f06 501b                              |0047: check-cast v6, [B // type@1b50
1c3992: 6e40 1b33 4365                         |0049: invoke-virtual {v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.sendCommand:(I[B[B)V // method@331b
1c3998: 0e00                                   |004c: return-void
1c399a: 1a03 11e5                              |004d: const-string v3, "send command without registered callback" // string@e511
1c399e: 7120 a00e 3000                         |004f: invoke-static {v0, v3}, Landroid/util/Log;.e:(Ljava/lang/String;Ljava/lang/String;)I // method@0ea0
1c39a4: 1a03 4493                              |0052: const-string v3, "callback not registered" // string@9344
1c39a8: 7110 0d16 0300                         |0054: invoke-static {v3}, Landroidx/room/RoomDatabase$$ExternalSyntheticBUOutline0;.m:(Ljava/lang/String;)V // method@160d
1c39ae: 0e00                                   |0057: return-void
1c39b0: 1a03 d771                              |0058: const-string v3, "Parameters size is too big" // string@71d7
1c39b4: 7110 ea15 0300                         |005a: invoke-static {v3}, Landroidx/room/Room$$ExternalSyntheticBUOutline0;.m:(Ljava/lang/String;)V // method@15ea
1c39ba: 0e00                                   |005d: return-void
1c39bc: 1a03 2ab8                              |005e: const-string v3, "invalid vendor-specific event code" // string@b82a
1c39c0: 7110 ea15 0300                         |0060: invoke-static {v3}, Landroidx/room/Room$$ExternalSyntheticBUOutline0;.m:(Ljava/lang/String;)V // method@15ea
1c39c6: 0e00                                   |0063: return-void
1c39c8: 2203 db17                              |0064: new-instance v3, Ljava/lang/SecurityException; // type@17db
1c39cc: 1a04 fed0                              |0066: const-string v4, "not allowed" // string@d0fe
1c39d0: 7020 949f 4300                         |0068: invoke-direct {v3, v4}, Ljava/lang/SecurityException;.<init>:(Ljava/lang/String;)V // method@9f94
1c39d6: 2703                                   |006b: throw v3
      catches       : (none)
      positions     :
        0x0000 line=2179
        0x0007 line=2183
        0x0011 line=2186
        0x0029 line=2195
        0x002c line=2196
        0x0031 line=2201
        0x0039 line=2202
        0x003f line=2207
        0x0043 line=2208
        0x004d line=2203
        0x0052 line=2204
        0x0058 line=2197
        0x005e line=2193
        0x0064 line=2184
      locals        :
        0x0000 - 0x006c reg=3 this Lcom/android/bluetooth/btservice/AdapterServiceBinder;
        0x0000 - 0x006c reg=4 (null) I
        0x0000 - 0x006c reg=5 (null) [B
        0x0000 - 0x006c reg=6 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Lcom/android/bluetooth/btservice/AdapterServiceBinder;)
      name          : 'unregisterHciVendorSpecificCallback'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 4
      ins           : 2
      outs          : 3
      insns size    : 42 16-bit code units
1c3a7c:                                        |[1c3a7c] com.android.bluetooth.btservice.AdapterServiceBinder.unregisterHciVendorSpecificCallback:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
1c3a8c: 6e10 c431 0200                         |0000: invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterServiceBinder;.getService:()Lcom/android/bluetooth/btservice/AdapterService; // method@31c4
1c3a92: 0c02                                   |0003: move-result-object v2
1c3a94: 3902 0300                              |0004: if-nez v2, 0007 // +0003
1c3a98: 0e00                                   |0006: return-void
1c3a9a: 6200 9323                              |0007: sget-object v0, Lcom/android/bluetooth/btservice/AdapterServiceBinder;.TAG:Ljava/lang/String; // field@2393
1c3a9e: 1a01 28f6                              |0009: const-string v1, "unregisterHciVendorSpecificCallback" // string@f628
1c3aa2: 7130 871c 0201                         |000b: invoke-static {v2, v0, v1}, Lcom/android/bluetooth/Util;.callerIsSystemOrActiveOrManagedUser:(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z // method@1c87
1c3aa8: 0a00                                   |000e: move-result v0
1c3aaa: 3800 1300                              |000f: if-eqz v0, 0022 // +0013
1c3aae: 1a00 7a8d                              |0011: const-string v0, "android.permission.BLUETOOTH_PRIVILEGED" // string@8d7a
1c3ab2: 1201                                   |0013: const/4 v1, #int 0 // #0
1c3ab4: 6e30 d200 0201                         |0014: invoke-virtual {v2, v0, v1}, Landroid/app/Service;.enforceCallingOrSelfPermission:(Ljava/lang/String;Ljava/lang/String;)V // method@00d2
1c3aba: 7110 c2a2 0300                         |0017: invoke-static {v3}, Ljava/util/Objects;.requireNonNull:(Ljava/lang/Object;)Ljava/lang/Object; // method@a2c2
1c3ac0: 6e10 c82f 0200                         |001a: invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;.getBluetoothHciVendorSpecificDispatcher:()Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // method@2fc8
1c3ac6: 0c02                                   |001d: move-result-object v2
1c3ac8: 6e20 0433 3200                         |001e: invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.unregister:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V // method@3304
1c3ace: 0e00                                   |0021: return-void
1c3ad0: 2202 db17                              |0022: new-instance v2, Ljava/lang/SecurityException; // type@17db
1c3ad4: 1a03 fed0                              |0024: const-string v3, "not allowed" // string@d0fe
1c3ad8: 7020 949f 3200                         |0026: invoke-direct {v2, v3}, Ljava/lang/SecurityException;.<init>:(Ljava/lang/String;)V // method@9f94
1c3ade: 2702                                   |0029: throw v2
      catches       : (none)
      positions     :
        0x0000 line=2162
        0x0007 line=2166
        0x0011 line=2171
        0x0017 line=2172
        0x001a line=2173
        0x0022 line=2168
      locals        :
        0x0000 - 0x002a reg=2 this Lcom/android/bluetooth/btservice/AdapterServiceBinder;
        0x0000 - 0x002a reg=3 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0;)
      name          : 'f$0'
      type          : 'Ljava/util/UUID;'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0;)
      name          : '<init>'
      type          : '(Ljava/util/UUID;)V'
      access        : 0x11001 (PUBLIC SYNTHETIC CONSTRUCTOR)
      code          -
      registers     : 2
      ins           : 2
      outs          : 1
      insns size    : 6 16-bit code units
1d5f68:                                        |[1d5f68] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0.<init>:(Ljava/util/UUID;)V
1d5f78: 7010 759f 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d5f7e: 5b01 f823                              |0003: iput-object v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0;.f$0:Ljava/util/UUID; // field@23f8
1d5f82: 0e00                                   |0005: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0006 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0;
        0x0000 - 0x0006 reg=1 (null) Ljava/util/UUID;

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0;)
      name          : 'test'
      type          : '(Ljava/lang/Object;)Z'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 2
      ins           : 2
      outs          : 2
      insns size    : 9 16-bit code units
1d5f44:                                        |[1d5f44] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0.test:(Ljava/lang/Object;)Z
1d5f54: 5400 f823                              |0000: iget-object v0, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0;.f$0:Ljava/util/UUID; // field@23f8
1d5f58: 1f01 5808                              |0002: check-cast v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration; // type@0858
1d5f5c: 7120 fa32 1000                         |0004: invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.$r8$lambda$mOF5WSo7Z2N4PJ8XT0KJt6t1n8E:(Ljava/util/UUID;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)Z // method@32fa
1d5f62: 0a00                                   |0007: move-result v0
1d5f64: 0f00                                   |0008: return v0
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0009 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0;
        0x0000 - 0x0009 reg=1 (null) Ljava/lang/Object;

  source_file_idx   : 29454 (R8$$SyntheticClass)

Class #1512            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1;'
  Access flags      : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1;)
      name          : 'f$0'
      type          : 'I'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1;)
      name          : '<init>'
      type          : '(I)V'
      access        : 0x11001 (PUBLIC SYNTHETIC CONSTRUCTOR)
      code          -
      registers     : 2
      ins           : 2
      outs          : 1
      insns size    : 6 16-bit code units
1d5fa8:                                        |[1d5fa8] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1.<init>:(I)V
1d5fb8: 7010 759f 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d5fbe: 5901 f923                              |0003: iput v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1;.f$0:I // field@23f9
1d5fc2: 0e00                                   |0005: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0006 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1;
        0x0000 - 0x0006 reg=1 (null) I

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1;)
      name          : 'test'
      type          : '(Ljava/lang/Object;)Z'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 2
      ins           : 2
      outs          : 2
      insns size    : 9 16-bit code units
1d5f84:                                        |[1d5f84] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1.test:(Ljava/lang/Object;)Z
1d5f94: 5200 f923                              |0000: iget v0, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1;.f$0:I // field@23f9
1d5f98: 1f01 5808                              |0002: check-cast v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration; // type@0858
1d5f9c: 7120 f832 1000                         |0004: invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.$r8$lambda$L4-tVI1jNAcSlSNXuD4pKg-rviM:(ILcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)Z // method@32f8
1d5fa2: 0a00                                   |0007: move-result v0
1d5fa4: 0f00                                   |0008: return v0
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0009 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1;
        0x0000 - 0x0009 reg=1 (null) Ljava/lang/Object;

  source_file_idx   : 29454 (R8$$SyntheticClass)

Class #1513            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2;'
  Access flags      : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2;)
      name          : 'f$0'
      type          : 'Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2;)
      name          : '<init>'
      type          : '(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V'
      access        : 0x11001 (PUBLIC SYNTHETIC CONSTRUCTOR)
      code          -
      registers     : 2
      ins           : 2
      outs          : 1
      insns size    : 6 16-bit code units
1d5fc4:                                        |[1d5fc4] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2.<init>:(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V
1d5fd4: 7010 759f 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d5fda: 5b01 fa23                              |0003: iput-object v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2;.f$0:Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer; // field@23fa
1d5fde: 0e00                                   |0005: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0006 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2;
        0x0000 - 0x0006 reg=1 (null) Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2;)
      name          : 'accept'
      type          : '(Ljava/lang/Object;)V'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 2
      ins           : 2
      outs          : 2
      insns size    : 8 16-bit code units
1d5fe0:                                        |[1d5fe0] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2.accept:(Ljava/lang/Object;)V
1d5ff0: 5400 fa23                              |0000: iget-object v0, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2;.f$0:Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer; // field@23fa
1d5ff4: 1f01 5808                              |0002: check-cast v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration; // type@0858
1d5ff8: 7120 f932 1000                         |0004: invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.$r8$lambda$WWDgJKMBi98heq2PVuWlzjru-p4:(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)V // method@32f9
1d5ffe: 0e00                                   |0007: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0008 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2;
        0x0000 - 0x0008 reg=1 (null) Ljava/lang/Object;

  source_file_idx   : 29454 (R8$$SyntheticClass)

Class #1514            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3;'
  Access flags      : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3;)
      name          : 'f$0'
      type          : 'I'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3;)
      name          : '<init>'
      type          : '(I)V'
      access        : 0x11001 (PUBLIC SYNTHETIC CONSTRUCTOR)
      code          -
      registers     : 2
      ins           : 2
      outs          : 1
      insns size    : 6 16-bit code units
1d6024:                                        |[1d6024] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3.<init>:(I)V
1d6034: 7010 759f 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d603a: 5901 fb23                              |0003: iput v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3;.f$0:I // field@23fb
1d603e: 0e00                                   |0005: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0006 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3;
        0x0000 - 0x0006 reg=1 (null) I

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3;)
      name          : 'test'
      type          : '(Ljava/lang/Object;)Z'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 2
      ins           : 2
      outs          : 2
      insns size    : 9 16-bit code units
1d6000:                                        |[1d6000] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3.test:(Ljava/lang/Object;)Z
1d6010: 5200 fb23                              |0000: iget v0, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3;.f$0:I // field@23fb
1d6014: 1f01 5808                              |0002: check-cast v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration; // type@0858
1d6018: 7120 f732 1000                         |0004: invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.$r8$lambda$EQE0cp-FCiwyEOPjx_YlfoG2KTE:(ILcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)Z // method@32f7
1d601e: 0a00                                   |0007: move-result v0
1d6020: 0f00                                   |0008: return v0
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0009 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3;
        0x0000 - 0x0009 reg=1 (null) Ljava/lang/Object;

  source_file_idx   : 29454 (R8$$SyntheticClass)

Class #1515            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4;'
  Access flags      : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4;)
      name          : 'f$0'
      type          : 'Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4;)
      name          : '<init>'
      type          : '(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V'
      access        : 0x11001 (PUBLIC SYNTHETIC CONSTRUCTOR)
      code          -
      registers     : 2
      ins           : 2
      outs          : 1
      insns size    : 6 16-bit code units
1d6040:                                        |[1d6040] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4.<init>:(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V
1d6050: 7010 759f 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d6056: 5b01 fc23                              |0003: iput-object v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4;.f$0:Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer; // field@23fc
1d605a: 0e00                                   |0005: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0006 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4;
        0x0000 - 0x0006 reg=1 (null) Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4;)
      name          : 'accept'
      type          : '(Ljava/lang/Object;)V'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 2
      ins           : 2
      outs          : 2
      insns size    : 8 16-bit code units
1d605c:                                        |[1d605c] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4.accept:(Ljava/lang/Object;)V
1d606c: 5400 fc23                              |0000: iget-object v0, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4;.f$0:Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer; // field@23fc
1d6070: 1f01 5808                              |0002: check-cast v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration; // type@0858
1d6074: 7120 fb32 1000                         |0004: invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.$r8$lambda$mVpLszjv2TlBlG85tkpNpb9-SEI:(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)V // method@32fb
1d607a: 0e00                                   |0007: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0008 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4;
        0x0000 - 0x0008 reg=1 (null) Ljava/lang/Object;

  source_file_idx   : 29454 (R8$$SyntheticClass)

Class #1516            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;'
  Access flags      : 0x0011 (PUBLIC FINAL)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)
      name          : 'mAclHandles'
      type          : 'Ljava/util/Set;'
      access        : 0x0011 (PUBLIC FINAL)
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)
      name          : 'mCallback'
      type          : 'Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;'
      access        : 0x0011 (PUBLIC FINAL)
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)
      name          : 'mEventCodes'
      type          : 'Ljava/util/Set;'
      access        : 0x0011 (PUBLIC FINAL)
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)
      name          : 'mUuid'
      type          : 'Ljava/util/UUID;'
      access        : 0x0011 (PUBLIC FINAL)
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)
      name          : 'this$0'
      type          : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)
      name          : '<init>'
      type          : '(Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;Ljava/util/Set;Ljava/util/Set;)V'
      access        : 0x10001 (PUBLIC CONSTRUCTOR)
      code          -
      registers     : 5
      ins           : 5
      outs          : 1
      insns size    : 18 16-bit code units
1d607c:                                        |[1d607c] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$Registration.<init>:(Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;Ljava/util/Set;Ljava/util/Set;)V
1d608c: 5b01 0124                              |0000: iput-object v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.this$0:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@2401
1d6090: 7010 759f 0000                         |0002: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d6096: 5b02 fe23                              |0005: iput-object v2, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mCallback:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // field@23fe
1d609a: 5b03 ff23                              |0007: iput-object v3, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mEventCodes:Ljava/util/Set; // field@23ff
1d609e: 5b04 fd23                              |0009: iput-object v4, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mAclHandles:Ljava/util/Set; // field@23fd
1d60a2: 7100 31a3 0000                         |000b: invoke-static {}, Ljava/util/UUID;.randomUUID:()Ljava/util/UUID; // method@a331
1d60a8: 0c01                                   |000e: move-result-object v1
1d60aa: 5b01 0024                              |000f: iput-object v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mUuid:Ljava/util/UUID; // field@2400
1d60ae: 0e00                                   |0011: return-void
      catches       : (none)
      positions     :
        0x0000 line=47
        0x0005 line=48
        0x0007 line=49
        0x0009 line=50
        0x000b line=51
      locals        :
        0x0000 - 0x0012 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;
        0x0000 - 0x0012 reg=1 (null) Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;
        0x0000 - 0x0012 reg=2 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
        0x0000 - 0x0012 reg=3 (null) Ljava/util/Set;
        0x0000 - 0x0012 reg=4 (null) Ljava/util/Set;

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)
      name          : 'binderDied'
      type          : '()V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 3
      ins           : 1
      outs          : 2
      insns size    : 27 16-bit code units
1d60b0:                                        |[1d60b0] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher$Registration.binderDied:()V
1d60c0: 5420 0124                              |0000: iget-object v0, v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.this$0:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@2401
1d60c4: 7110 fc32 0000                         |0002: invoke-static {v0}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.-$$Nest$fgetmRegistrations:(Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)Landroid/util/ArrayMap; // method@32fc
1d60ca: 0c00                                   |0005: move-result-object v0
1d60cc: 1d00                                   |0006: monitor-enter v0
1d60ce: 5421 0124                              |0007: iget-object v1, v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.this$0:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@2401
1d60d2: 7110 fc32 0100                         |0009: invoke-static {v1}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.-$$Nest$fgetmRegistrations:(Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)Landroid/util/ArrayMap; // method@32fc
1d60d8: 0c01                                   |000c: move-result-object v1
1d60da: 5422 fe23                              |000d: iget-object v2, v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mCallback:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // field@23fe
1d60de: 7210 e002 0200                         |000f: invoke-interface {v2}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;.asBinder:()Landroid/os/IBinder; // method@02e0
1d60e4: 0c02                                   |0012: move-result-object v2
1d60e6: 6e20 7a0e 2100                         |0013: invoke-virtual {v1, v2}, Landroid/util/ArrayMap;.remove:(Ljava/lang/Object;)Ljava/lang/Object; // method@0e7a
1d60ec: 1e00                                   |0016: monitor-exit v0
1d60ee: 0e00                                   |0017: return-void
1d60f0: 0d02                                   |0018: move-exception v2
1d60f2: 1e00                                   |0019: monitor-exit v0
1d60f4: 2702                                   |001a: throw v2
      catches       : 1
        0x0007 - 0x001a
          <any> -> 0x0018
      positions     :
        0x0000 line=55
        0x0007 line=56
        0x0016 line=57
      locals        :
        0x0000 - 0x001b reg=2 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;

  source_file_idx   : 12345 (BluetoothHciVendorSpecificDispatcher.java)

Class #1517            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;'
  Access flags      : 0x0001 (PUBLIC)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
  Static fields     -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : 'TAG'
      type          : 'Ljava/lang/String;'
      access        : 0x0019 (PUBLIC STATIC FINAL)
      value         : "BluetoothHciVendorSpecificDispatcher"
  Instance fields   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : 'mRegistrations'
      type          : 'Landroid/util/ArrayMap;'
      access        : 0x0011 (PUBLIC FINAL)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : '$r8$lambda$EQE0cp-FCiwyEOPjx_YlfoG2KTE'
      type          : '(ILcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)Z'
      access        : 0x1009 (PUBLIC STATIC SYNTHETIC)
      code          -
      registers     : 2
      ins           : 2
      outs          : 2
      insns size    : 11 16-bit code units
1d611c:                                        |[1d611c] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.$r8$lambda$EQE0cp-FCiwyEOPjx_YlfoG2KTE:(ILcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)Z
1d612c: 5411 fd23                              |0000: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mAclHandles:Ljava/util/Set; // field@23fd
1d6130: 7110 3b9f 0000                         |0002: invoke-static {v0}, Ljava/lang/Integer;.valueOf:(I)Ljava/lang/Integer; // method@9f3b
1d6136: 0c00                                   |0005: move-result-object v0
1d6138: 7220 f3a2 0100                         |0006: invoke-interface {v1, v0}, Ljava/util/Set;.contains:(Ljava/lang/Object;)Z // method@a2f3
1d613e: 0a00                                   |0009: move-result v0
1d6140: 0f00                                   |000a: return v0
      catches       : (none)
      positions     :
        0x0000 line=143
      locals        :
        0x0000 - 0x000b reg=0 (null) I
        0x0000 - 0x000b reg=1 (null) Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : '$r8$lambda$L4-tVI1jNAcSlSNXuD4pKg-rviM'
      type          : '(ILcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)Z'
      access        : 0x1009 (PUBLIC STATIC SYNTHETIC)
      code          -
      registers     : 2
      ins           : 2
      outs          : 2
      insns size    : 11 16-bit code units
1d6144:                                        |[1d6144] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.$r8$lambda$L4-tVI1jNAcSlSNXuD4pKg-rviM:(ILcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)Z
1d6154: 5411 ff23                              |0000: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mEventCodes:Ljava/util/Set; // field@23ff
1d6158: 7110 3b9f 0000                         |0002: invoke-static {v0}, Ljava/lang/Integer;.valueOf:(I)Ljava/lang/Integer; // method@9f3b
1d615e: 0c00                                   |0005: move-result-object v0
1d6160: 7220 f3a2 0100                         |0006: invoke-interface {v1, v0}, Ljava/util/Set;.contains:(Ljava/lang/Object;)Z // method@a2f3
1d6166: 0a00                                   |0009: move-result v0
1d6168: 0f00                                   |000a: return v0
      catches       : (none)
      positions     :
        0x0000 line=133
      locals        :
        0x0000 - 0x000b reg=0 (null) I
        0x0000 - 0x000b reg=1 (null) Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : '$r8$lambda$WWDgJKMBi98heq2PVuWlzjru-p4'
      type          : '(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)V'
      access        : 0x1009 (PUBLIC STATIC SYNTHETIC)
      code          -
      registers     : 2
      ins           : 2
      outs          : 2
      insns size    : 6 16-bit code units
1d6230:                                        |[1d6230] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.$r8$lambda$WWDgJKMBi98heq2PVuWlzjru-p4:(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)V
1d6240: 5411 fe23                              |0000: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mCallback:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // field@23fe
1d6244: 7220 8202 1000                         |0002: invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;.accept:(Ljava/lang/Object;)V // method@0282
1d624a: 0e00                                   |0005: return-void
      catches       : (none)
      positions     :
        0x0000 line=134
      locals        :
        0x0000 - 0x0006 reg=0 (null) Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;
        0x0000 - 0x0006 reg=1 (null) Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : '$r8$lambda$mOF5WSo7Z2N4PJ8XT0KJt6t1n8E'
      type          : '(Ljava/util/UUID;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)Z'
      access        : 0x1009 (PUBLIC STATIC SYNTHETIC)
      code          -
      registers     : 2
      ins           : 2
      outs          : 2
      insns size    : 7 16-bit code units
1d616c:                                        |[1d616c] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.$r8$lambda$mOF5WSo7Z2N4PJ8XT0KJt6t1n8E:(Ljava/util/UUID;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)Z
1d617c: 5411 0024                              |0000: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mUuid:Ljava/util/UUID; // field@2400
1d6180: 6e20 2ca3 0100                         |0002: invoke-virtual {v1, v0}, Ljava/util/UUID;.equals:(Ljava/lang/Object;)Z // method@a32c
1d6186: 0a00                                   |0005: move-result v0
1d6188: 0f00                                   |0006: return v0
      catches       : (none)
      positions     :
        0x0000 line=118
      locals        :
        0x0000 - 0x0007 reg=0 (null) Ljava/util/UUID;
        0x0000 - 0x0007 reg=1 (null) Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : '$r8$lambda$mVpLszjv2TlBlG85tkpNpb9-SEI'
      type          : '(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)V'
      access        : 0x1009 (PUBLIC STATIC SYNTHETIC)
      code          -
      registers     : 2
      ins           : 2
      outs          : 2
      insns size    : 6 16-bit code units
1d624c:                                        |[1d624c] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.$r8$lambda$mVpLszjv2TlBlG85tkpNpb9-SEI:(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;)V
1d625c: 5411 fe23                              |0000: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mCallback:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // field@23fe
1d6260: 7220 8202 1000                         |0002: invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;.accept:(Ljava/lang/Object;)V // method@0282
1d6266: 0e00                                   |0005: return-void
      catches       : (none)
      positions     :
        0x0000 line=144
      locals        :
        0x0000 - 0x0006 reg=0 (null) Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;
        0x0000 - 0x0006 reg=1 (null) Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : '-$$Nest$fgetmRegistrations'
      type          : '(Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)Landroid/util/ArrayMap;'
      access        : 0x1049 (PUBLIC STATIC BRIDGE SYNTHETIC)
      code          -
      registers     : 1
      ins           : 1
      outs          : 0
      insns size    : 3 16-bit code units
1d6104:                                        |[1d6104] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.-$$Nest$fgetmRegistrations:(Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)Landroid/util/ArrayMap;
1d6114: 5400 0324                              |0000: iget-object v0, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d6118: 1100                                   |0002: return-object v0
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0003 reg=0 (null) Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : '<clinit>'
      type          : '()V'
      access        : 0x10008 (STATIC CONSTRUCTOR)
      code          -
      registers     : 0
      ins           : 0
      outs          : 0
      insns size    : 1 16-bit code units
45eed8:                                        |[45eed8] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.<clinit>:()V
45eee8: 0e00                                   |0000: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : '<init>'
      type          : '()V'
      access        : 0x10001 (PUBLIC CONSTRUCTOR)
      code          -
      registers     : 2
      ins           : 1
      outs          : 1
      insns size    : 11 16-bit code units
1d6268:                                        |[1d6268] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.<init>:()V
1d6278: 7010 759f 0100                         |0000: invoke-direct {v1}, Ljava/lang/Object;.<init>:()V // method@9f75
1d627e: 2200 f702                              |0003: new-instance v0, Landroid/util/ArrayMap; // type@02f7
1d6282: 7010 760e 0000                         |0005: invoke-direct {v0}, Landroid/util/ArrayMap;.<init>:()V // method@0e76
1d6288: 5b10 0324                              |0008: iput-object v0, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d628c: 0e00                                   |000a: return-void
      catches       : (none)
      positions     :
        0x0000 line=35
        0x0003 line=61
      locals        :
        0x0000 - 0x000b reg=1 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : 'broadcastAclEvent'
      type          : '(ILandroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 5
      ins           : 3
      outs          : 2
      insns size    : 35 16-bit code units
1d6290:                                        |[1d6290] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.broadcastAclEvent:(ILandroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V
1d62a0: 5420 0324                              |0000: iget-object v0, v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d62a4: 1d00                                   |0002: monitor-enter v0
1d62a6: 5422 0324                              |0003: iget-object v2, v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d62aa: 6e10 7b0e 0200                         |0005: invoke-virtual {v2}, Landroid/util/ArrayMap;.values:()Ljava/util/Collection; // method@0e7b
1d62b0: 0c02                                   |0008: move-result-object v2
1d62b2: 7210 eda1 0200                         |0009: invoke-interface {v2}, Ljava/util/Collection;.stream:()Ljava/util/stream/Stream; // method@a1ed
1d62b8: 0c02                                   |000c: move-result-object v2
1d62ba: 2201 5608                              |000d: new-instance v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3; // type@0856
1d62be: 7020 f132 3100                         |000f: invoke-direct {v1, v3}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda3;.<init>:(I)V // method@32f1
1d62c4: 7220 1da4 1200                         |0012: invoke-interface {v2, v1}, Ljava/util/stream/Stream;.filter:(Ljava/util/function/Predicate;)Ljava/util/stream/Stream; // method@a41d
1d62ca: 0c02                                   |0015: move-result-object v2
1d62cc: 2203 5708                              |0016: new-instance v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4; // type@0857
1d62d0: 7020 f332 4300                         |0018: invoke-direct {v3, v4}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda4;.<init>:(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V // method@32f3
1d62d6: 7220 21a4 3200                         |001b: invoke-interface {v2, v3}, Ljava/util/stream/Stream;.forEach:(Ljava/util/function/Consumer;)V // method@a421
1d62dc: 1e00                                   |001e: monitor-exit v0
1d62de: 0e00                                   |001f: return-void
1d62e0: 0d02                                   |0020: move-exception v2
1d62e2: 1e00                                   |0021: monitor-exit v0
1d62e4: 2702                                   |0022: throw v2
      catches       : 1
        0x0003 - 0x0022
          <any> -> 0x0020
      positions     :
        0x0000 line=141
        0x0003 line=142
        0x0012 line=143
        0x001b line=144
        0x001e line=145
      locals        :
        0x0000 - 0x0023 reg=2 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;
        0x0000 - 0x0023 reg=3 (null) I
        0x0000 - 0x0023 reg=4 (null) Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : 'broadcastEvent'
      type          : '(ILandroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 5
      ins           : 3
      outs          : 2
      insns size    : 35 16-bit code units
1d62f4:                                        |[1d62f4] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.broadcastEvent:(ILandroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V
1d6304: 5420 0324                              |0000: iget-object v0, v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d6308: 1d00                                   |0002: monitor-enter v0
1d630a: 5422 0324                              |0003: iget-object v2, v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d630e: 6e10 7b0e 0200                         |0005: invoke-virtual {v2}, Landroid/util/ArrayMap;.values:()Ljava/util/Collection; // method@0e7b
1d6314: 0c02                                   |0008: move-result-object v2
1d6316: 7210 eda1 0200                         |0009: invoke-interface {v2}, Ljava/util/Collection;.stream:()Ljava/util/stream/Stream; // method@a1ed
1d631c: 0c02                                   |000c: move-result-object v2
1d631e: 2201 5408                              |000d: new-instance v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1; // type@0854
1d6322: 7020 ed32 3100                         |000f: invoke-direct {v1, v3}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda1;.<init>:(I)V // method@32ed
1d6328: 7220 1da4 1200                         |0012: invoke-interface {v2, v1}, Ljava/util/stream/Stream;.filter:(Ljava/util/function/Predicate;)Ljava/util/stream/Stream; // method@a41d
1d632e: 0c02                                   |0015: move-result-object v2
1d6330: 2203 5508                              |0016: new-instance v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2; // type@0855
1d6334: 7020 ef32 4300                         |0018: invoke-direct {v3, v4}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda2;.<init>:(Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V // method@32ef
1d633a: 7220 21a4 3200                         |001b: invoke-interface {v2, v3}, Ljava/util/stream/Stream;.forEach:(Ljava/util/function/Consumer;)V // method@a421
1d6340: 1e00                                   |001e: monitor-exit v0
1d6342: 0e00                                   |001f: return-void
1d6344: 0d02                                   |0020: move-exception v2
1d6346: 1e00                                   |0021: monitor-exit v0
1d6348: 2702                                   |0022: throw v2
      catches       : 1
        0x0003 - 0x0022
          <any> -> 0x0020
      positions     :
        0x0000 line=131
        0x0003 line=132
        0x0012 line=133
        0x001b line=134
        0x001e line=135
      locals        :
        0x0000 - 0x0023 reg=2 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;
        0x0000 - 0x0023 reg=3 (null) I
        0x0000 - 0x0023 reg=4 (null) Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : 'dispatchCommandStatusOrComplete'
      type          : '([BLandroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 8
      ins           : 3
      outs          : 5
      insns size    : 68 16-bit code units
1d6358:                                        |[1d6358] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.dispatchCommandStatusOrComplete:([BLandroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V
1d6368: 7110 d5a0 0600                         |0000: invoke-static {v6}, Ljava/nio/ByteBuffer;.wrap:([B)Ljava/nio/ByteBuffer; // method@a0d5
1d636e: 0c06                                   |0003: move-result-object v6
1d6370: 2200 8d18                              |0004: new-instance v0, Ljava/util/UUID; // type@188d
1d6374: 6e10 bfa0 0600                         |0006: invoke-virtual {v6}, Ljava/nio/ByteBuffer;.getLong:()J // method@a0bf
1d637a: 0b01                                   |0009: move-result-wide v1
1d637c: 6e10 bfa0 0600                         |000a: invoke-virtual {v6}, Ljava/nio/ByteBuffer;.getLong:()J // method@a0bf
1d6382: 0b03                                   |000d: move-result-wide v3
1d6384: 7054 2ba3 1032                         |000e: invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;.<init>:(JJ)V // method@a32b
1d638a: 5456 0324                              |0011: iget-object v6, v5, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d638e: 1d06                                   |0013: monitor-enter v6
1d6390: 5455 0324                              |0014: iget-object v5, v5, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d6394: 6e10 7b0e 0500                         |0016: invoke-virtual {v5}, Landroid/util/ArrayMap;.values:()Ljava/util/Collection; // method@0e7b
1d639a: 0c05                                   |0019: move-result-object v5
1d639c: 7210 eda1 0500                         |001a: invoke-interface {v5}, Ljava/util/Collection;.stream:()Ljava/util/stream/Stream; // method@a1ed
1d63a2: 0c05                                   |001d: move-result-object v5
1d63a4: 2201 5308                              |001e: new-instance v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0; // type@0853
1d63a8: 7020 eb32 0100                         |0020: invoke-direct {v1, v0}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$$ExternalSyntheticLambda0;.<init>:(Ljava/util/UUID;)V // method@32eb
1d63ae: 7220 1da4 1500                         |0023: invoke-interface {v5, v1}, Ljava/util/stream/Stream;.filter:(Ljava/util/function/Predicate;)Ljava/util/stream/Stream; // method@a41d
1d63b4: 0c05                                   |0026: move-result-object v5
1d63b6: 7210 1ea4 0500                         |0027: invoke-interface {v5}, Ljava/util/stream/Stream;.findAny:()Ljava/util/Optional; // method@a41e
1d63bc: 0c05                                   |002a: move-result-object v5
1d63be: 6e10 caa2 0500                         |002b: invoke-virtual {v5}, Ljava/util/Optional;.get:()Ljava/lang/Object; // method@a2ca
1d63c4: 0c05                                   |002e: move-result-object v5
1d63c6: 1f05 5808                              |002f: check-cast v5, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration; // type@0858
1d63ca: 5455 fe23                              |0031: iget-object v5, v5, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mCallback:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // field@23fe
1d63ce: 7220 8202 5700                         |0033: invoke-interface {v7, v5}, Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;.accept:(Ljava/lang/Object;)V // method@0282
1d63d4: 280a                                   |0036: goto 0040 // +000a
1d63d6: 0d05                                   |0037: move-exception v5
1d63d8: 280a                                   |0038: goto 0042 // +000a
1d63da: 6205 0224                              |0039: sget-object v5, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.TAG:Ljava/lang/String; // field@2402
1d63de: 1a07 e935                              |003b: const-string v7, "Command status or complete owner not registered" // string@35e9
1d63e2: 7120 a00e 7500                         |003d: invoke-static {v5, v7}, Landroid/util/Log;.e:(Ljava/lang/String;Ljava/lang/String;)I // method@0ea0
1d63e8: 1e06                                   |0040: monitor-exit v6
1d63ea: 0e00                                   |0041: return-void
1d63ec: 1e06                                   |0042: monitor-exit v6
1d63ee: 2705                                   |0043: throw v5
      catches       : 2
        0x0014 - 0x0036
          Ljava/util/NoSuchElementException; -> 0x0039
          <any> -> 0x0037
        0x0039 - 0x0043
          <any> -> 0x0037
      positions     :
        0x0000 line=112
        0x0004 line=113
        0x0011 line=114
        0x0014 line=116
        0x0016 line=117
        0x0023 line=118
        0x0027 line=119
        0x002b line=120
        0x0031 line=121
        0x0039 line=123
        0x0040 line=125
      locals        :
        0x0000 - 0x0044 reg=5 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;
        0x0000 - 0x0044 reg=6 (null) [B
        0x0000 - 0x0044 reg=7 (null) Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : 'getRegisteredCookie'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)Ljava/util/Optional;'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 5
      ins           : 2
      outs          : 3
      insns size    : 67 16-bit code units
1d618c:                                        |[1d618c] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.getRegisteredCookie:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)Ljava/util/Optional;
1d619c: 7210 e002 0400                         |0000: invoke-interface {v4}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;.asBinder:()Landroid/os/IBinder; // method@02e0
1d61a2: 0c04                                   |0003: move-result-object v4
1d61a4: 5430 0324                              |0004: iget-object v0, v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d61a8: 1d00                                   |0006: monitor-enter v0
1d61aa: 5431 0324                              |0007: iget-object v1, v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d61ae: 6e20 770e 4100                         |0009: invoke-virtual {v1, v4}, Landroid/util/ArrayMap;.containsKey:(Ljava/lang/Object;)Z // method@0e77
1d61b4: 0a01                                   |000c: move-result v1
1d61b6: 3901 0a00                              |000d: if-nez v1, 0017 // +000a
1d61ba: 7100 c7a2 0000                         |000f: invoke-static {}, Ljava/util/Optional;.empty:()Ljava/util/Optional; // method@a2c7
1d61c0: 0c03                                   |0012: move-result-object v3
1d61c2: 1e00                                   |0013: monitor-exit v0
1d61c4: 1103                                   |0014: return-object v3
1d61c6: 0d03                                   |0015: move-exception v3
1d61c8: 282b                                   |0016: goto 0041 // +002b
1d61ca: 5433 0324                              |0017: iget-object v3, v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d61ce: 6e20 780e 4300                         |0019: invoke-virtual {v3, v4}, Landroid/util/ArrayMap;.get:(Ljava/lang/Object;)Ljava/lang/Object; // method@0e78
1d61d4: 0c03                                   |001c: move-result-object v3
1d61d6: 1f03 5808                              |001d: check-cast v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration; // type@0858
1d61da: 1304 1000                              |001f: const/16 v4, #int 16 // #10
1d61de: 7110 b0a0 0400                         |0021: invoke-static {v4}, Ljava/nio/ByteBuffer;.allocate:(I)Ljava/nio/ByteBuffer; // method@a0b0
1d61e4: 0c04                                   |0024: move-result-object v4
1d61e6: 5431 0024                              |0025: iget-object v1, v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mUuid:Ljava/util/UUID; // field@2400
1d61ea: 6e10 2fa3 0100                         |0027: invoke-virtual {v1}, Ljava/util/UUID;.getMostSignificantBits:()J // method@a32f
1d61f0: 0b01                                   |002a: move-result-wide v1
1d61f2: 6e30 d0a0 1402                         |002b: invoke-virtual {v4, v1, v2}, Ljava/nio/ByteBuffer;.putLong:(J)Ljava/nio/ByteBuffer; // method@a0d0
1d61f8: 5433 0024                              |002e: iget-object v3, v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.mUuid:Ljava/util/UUID; // field@2400
1d61fc: 6e10 2ea3 0300                         |0030: invoke-virtual {v3}, Ljava/util/UUID;.getLeastSignificantBits:()J // method@a32e
1d6202: 0b01                                   |0033: move-result-wide v1
1d6204: 6e30 d0a0 1402                         |0034: invoke-virtual {v4, v1, v2}, Ljava/nio/ByteBuffer;.putLong:(J)Ljava/nio/ByteBuffer; // method@a0d0
1d620a: 6e10 b1a0 0400                         |0037: invoke-virtual {v4}, Ljava/nio/ByteBuffer;.array:()[B // method@a0b1
1d6210: 0c03                                   |003a: move-result-object v3
1d6212: 7110 d0a2 0300                         |003b: invoke-static {v3}, Ljava/util/Optional;.of:(Ljava/lang/Object;)Ljava/util/Optional; // method@a2d0
1d6218: 0c03                                   |003e: move-result-object v3
1d621a: 1e00                                   |003f: monitor-exit v0
1d621c: 1103                                   |0040: return-object v3
1d621e: 1e00                                   |0041: monitor-exit v0
1d6220: 2703                                   |0042: throw v3
      catches       : 1
        0x0007 - 0x0042
          <any> -> 0x0015
      positions     :
        0x0000 line=97
        0x0004 line=98
        0x0007 line=99
        0x0017 line=101
        0x0021 line=102
        0x0025 line=103
        0x002e line=104
        0x0037 line=105
        0x0041 line=106
      locals        :
        0x0000 - 0x0043 reg=3 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;
        0x0000 - 0x0043 reg=4 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : 'register'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;Ljava/util/Set;Ljava/util/Set;)V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 7
      ins           : 4
      outs          : 5
      insns size    : 52 16-bit code units
1d6408:                                        |[1d6408] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.register:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;Ljava/util/Set;Ljava/util/Set;)V
1d6418: 7210 e002 0400                         |0000: invoke-interface {v4}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;.asBinder:()Landroid/os/IBinder; // method@02e0
1d641e: 0c00                                   |0003: move-result-object v0
1d6420: 5431 0324                              |0004: iget-object v1, v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d6424: 1d01                                   |0006: monitor-enter v1
1d6426: 5432 0324                              |0007: iget-object v2, v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d642a: 6e20 770e 0200                         |0009: invoke-virtual {v2, v0}, Landroid/util/ArrayMap;.containsKey:(Ljava/lang/Object;)Z // method@0e77
1d6430: 0a02                                   |000c: move-result v2
1d6432: 3902 1d00                              |000d: if-nez v2, 002a // +001d
1d6436: 2202 5808                              |000f: new-instance v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration; // type@0858
1d643a: 7056 f532 3254                         |0011: invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration;.<init>:(Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;Ljava/util/Set;Ljava/util/Set;)V // method@32f5
1d6440: 1204                                   |0014: const/4 v4, #int 0 // #0
1d6442: 7230 f809 2004                         |0015: invoke-interface {v0, v2, v4}, Landroid/os/IBinder;.linkToDeath:(Landroid/os/IBinder$DeathRecipient;I)V // method@09f8
1d6448: 5433 0324                              |0018: iget-object v3, v3, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d644c: 6e30 790e 0302                         |001a: invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; // method@0e79
1d6452: 280b                                   |001d: goto 0028 // +000b
1d6454: 0d03                                   |001e: move-exception v3
1d6456: 2813                                   |001f: goto 0032 // +0013
1d6458: 0d03                                   |0020: move-exception v3
1d645a: 6204 0224                              |0021: sget-object v4, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.TAG:Ljava/lang/String; // field@2402
1d645e: 1a05 4ac0                              |0023: const-string v5, "link to death" // string@c04a
1d6462: 7130 a10e 5403                         |0025: invoke-static {v4, v5, v3}, Landroid/util/Log;.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I // method@0ea1
1d6468: 1e01                                   |0028: monitor-exit v1
1d646a: 0e00                                   |0029: return-void
1d646c: 2203 c117                              |002a: new-instance v3, Ljava/lang/IllegalStateException; // type@17c1
1d6470: 1a04 4293                              |002c: const-string v4, "callback already registered" // string@9342
1d6474: 7020 1d9f 4300                         |002e: invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;.<init>:(Ljava/lang/String;)V // method@9f1d
1d647a: 2703                                   |0031: throw v3
1d647c: 1e01                                   |0032: monitor-exit v1
1d647e: 2703                                   |0033: throw v3
      catches       : 3
        0x0007 - 0x000d
          <any> -> 0x001e
        0x000f - 0x001d
          Landroid/os/RemoteException; -> 0x0020
          <any> -> 0x001e
        0x0021 - 0x0033
          <any> -> 0x001e
      positions     :
        0x0000 line=80
        0x0004 line=81
        0x0007 line=82
        0x000f line=87
        0x0015 line=88
        0x0018 line=89
        0x0021 line=91
        0x0028 line=93
        0x002a line=83
        0x0032 line=93
      locals        :
        0x0000 - 0x0034 reg=3 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;
        0x0000 - 0x0034 reg=4 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
        0x0000 - 0x0034 reg=5 (null) Ljava/util/Set;
        0x0000 - 0x0034 reg=6 (null) Ljava/util/Set;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)
      name          : 'unregister'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 4
      ins           : 2
      outs          : 3
      insns size    : 35 16-bit code units
1d64a0:                                        |[1d64a0] com.android.bluetooth.btservice.BluetoothHciVendorSpecificDispatcher.unregister:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
1d64b0: 7210 e002 0300                         |0000: invoke-interface {v3}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;.asBinder:()Landroid/os/IBinder; // method@02e0
1d64b6: 0c03                                   |0003: move-result-object v3
1d64b8: 5420 0324                              |0004: iget-object v0, v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d64bc: 1d00                                   |0006: monitor-enter v0
1d64be: 5422 0324                              |0007: iget-object v2, v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.mRegistrations:Landroid/util/ArrayMap; // field@2403
1d64c2: 6e20 7a0e 3200                         |0009: invoke-virtual {v2, v3}, Landroid/util/ArrayMap;.remove:(Ljava/lang/Object;)Ljava/lang/Object; // method@0e7a
1d64c8: 0c02                                   |000c: move-result-object v2
1d64ca: 1f02 5808                              |000d: check-cast v2, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher$Registration; // type@0858
1d64ce: 3802 0a00                              |000f: if-eqz v2, 0019 // +000a
1d64d2: 1201                                   |0011: const/4 v1, #int 0 // #0
1d64d4: 7230 fb09 2301                         |0012: invoke-interface {v3, v2, v1}, Landroid/os/IBinder;.unlinkToDeath:(Landroid/os/IBinder$DeathRecipient;I)Z // method@09fb
1d64da: 1e00                                   |0015: monitor-exit v0
1d64dc: 0e00                                   |0016: return-void
1d64de: 0d02                                   |0017: move-exception v2
1d64e0: 2809                                   |0018: goto 0021 // +0009
1d64e2: 2202 c117                              |0019: new-instance v2, Ljava/lang/IllegalStateException; // type@17c1
1d64e6: 1a03 4593                              |001b: const-string v3, "callback was never registered" // string@9345
1d64ea: 7020 1d9f 3200                         |001d: invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;.<init>:(Ljava/lang/String;)V // method@9f1d
1d64f0: 2702                                   |0020: throw v2
1d64f2: 1e00                                   |0021: monitor-exit v0
1d64f4: 2702                                   |0022: throw v2
      catches       : 1
        0x0007 - 0x0022
          <any> -> 0x0017
      positions     :
        0x0000 line=65
        0x0004 line=66
        0x0007 line=67
        0x0012 line=72
        0x0015 line=73
        0x0019 line=69
        0x0021 line=73
      locals        :
        0x0000 - 0x0023 reg=2 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;
        0x0000 - 0x0023 reg=3 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

  source_file_idx   : 12345 (BluetoothHciVendorSpecificDispatcher.java)

Class #1518            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;'
  Access flags      : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;)
      name          : 'f$0'
      type          : 'I'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;)
      name          : 'f$1'
      type          : '[B'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;)
      name          : '<init>'
      type          : '(I[B)V'
      access        : 0x11001 (PUBLIC SYNTHETIC CONSTRUCTOR)
      code          -
      registers     : 3
      ins           : 3
      outs          : 1
      insns size    : 8 16-bit code units
1d6504:                                        |[1d6504] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0.<init>:(I[B)V
1d6514: 7010 759f 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d651a: 5901 0424                              |0003: iput v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;.f$0:I // field@2404
1d651e: 5b02 0524                              |0005: iput-object v2, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;.f$1:[B // field@2405
1d6522: 0e00                                   |0007: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0008 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;
        0x0000 - 0x0008 reg=1 (null) I
        0x0000 - 0x0008 reg=2 (null) [B

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;)
      name          : 'acceptOrThrow'
      type          : '(Ljava/lang/Object;)V'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 3
      ins           : 2
      outs          : 3
      insns size    : 10 16-bit code units
1d6524:                                        |[1d6524] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0.acceptOrThrow:(Ljava/lang/Object;)V
1d6534: 5210 0424                              |0000: iget v0, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;.f$0:I // field@2404
1d6538: 5411 0524                              |0002: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;.f$1:[B // field@2405
1d653c: 1f02 9b00                              |0004: check-cast v2, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // type@009b
1d6540: 7130 1033 1002                         |0006: invoke-static {v0, v1, v2}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.$r8$lambda$gIkUuqZHePovB-QKueS9rvEleZ4:(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V // method@3310
1d6546: 0e00                                   |0009: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x000a reg=1 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;
        0x0000 - 0x000a reg=2 (null) Ljava/lang/Object;

  source_file_idx   : 29454 (R8$$SyntheticClass)

Class #1519            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;'
  Access flags      : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;)
      name          : 'f$0'
      type          : 'I'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;)
      name          : 'f$1'
      type          : '[B'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;)
      name          : '<init>'
      type          : '(I[B)V'
      access        : 0x11001 (PUBLIC SYNTHETIC CONSTRUCTOR)
      code          -
      registers     : 3
      ins           : 3
      outs          : 1
      insns size    : 8 16-bit code units
1d6548:                                        |[1d6548] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1.<init>:(I[B)V
1d6558: 7010 759f 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d655e: 5901 0624                              |0003: iput v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;.f$0:I // field@2406
1d6562: 5b02 0724                              |0005: iput-object v2, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;.f$1:[B // field@2407
1d6566: 0e00                                   |0007: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0008 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;
        0x0000 - 0x0008 reg=1 (null) I
        0x0000 - 0x0008 reg=2 (null) [B

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;)
      name          : 'acceptOrThrow'
      type          : '(Ljava/lang/Object;)V'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 3
      ins           : 2
      outs          : 3
      insns size    : 10 16-bit code units
1d6568:                                        |[1d6568] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1.acceptOrThrow:(Ljava/lang/Object;)V
1d6578: 5210 0624                              |0000: iget v0, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;.f$0:I // field@2406
1d657c: 5411 0724                              |0002: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;.f$1:[B // field@2407
1d6580: 1f02 9b00                              |0004: check-cast v2, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // type@009b
1d6584: 7130 0d33 1002                         |0006: invoke-static {v0, v1, v2}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.$r8$lambda$-6Lf_G90NQ-J_cUxTsEYnBKRa4c:(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V // method@330d
1d658a: 0e00                                   |0009: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x000a reg=1 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;
        0x0000 - 0x000a reg=2 (null) Ljava/lang/Object;

  source_file_idx   : 29454 (R8$$SyntheticClass)

Class #1520            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;'
  Access flags      : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;)
      name          : 'f$0'
      type          : 'I'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;)
      name          : 'f$1'
      type          : 'I'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;)
      name          : '<init>'
      type          : '(II)V'
      access        : 0x11001 (PUBLIC SYNTHETIC CONSTRUCTOR)
      code          -
      registers     : 3
      ins           : 3
      outs          : 1
      insns size    : 8 16-bit code units
1d658c:                                        |[1d658c] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2.<init>:(II)V
1d659c: 7010 759f 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d65a2: 5901 0824                              |0003: iput v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;.f$0:I // field@2408
1d65a6: 5902 0924                              |0005: iput v2, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;.f$1:I // field@2409
1d65aa: 0e00                                   |0007: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0008 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;
        0x0000 - 0x0008 reg=1 (null) I
        0x0000 - 0x0008 reg=2 (null) I

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;)
      name          : 'acceptOrThrow'
      type          : '(Ljava/lang/Object;)V'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 3
      ins           : 2
      outs          : 3
      insns size    : 10 16-bit code units
1d65ac:                                        |[1d65ac] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2.acceptOrThrow:(Ljava/lang/Object;)V
1d65bc: 5210 0824                              |0000: iget v0, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;.f$0:I // field@2408
1d65c0: 5211 0924                              |0002: iget v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;.f$1:I // field@2409
1d65c4: 1f02 9b00                              |0004: check-cast v2, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // type@009b
1d65c8: 7130 0e33 1002                         |0006: invoke-static {v0, v1, v2}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.$r8$lambda$3YEvX9kJVtWRaUS-NH37LNbeyV4:(IILandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V // method@330e
1d65ce: 0e00                                   |0009: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x000a reg=1 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;
        0x0000 - 0x000a reg=2 (null) Ljava/lang/Object;

  source_file_idx   : 29454 (R8$$SyntheticClass)

Class #1521            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;'
  Access flags      : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;)
      name          : 'f$0'
      type          : 'I'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;)
      name          : 'f$1'
      type          : '[B'
      access        : 0x1011 (PUBLIC FINAL SYNTHETIC)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;)
      name          : '<init>'
      type          : '(I[B)V'
      access        : 0x11001 (PUBLIC SYNTHETIC CONSTRUCTOR)
      code          -
      registers     : 3
      ins           : 3
      outs          : 1
      insns size    : 8 16-bit code units
1d65d0:                                        |[1d65d0] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3.<init>:(I[B)V
1d65e0: 7010 759f 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d65e6: 5901 0a24                              |0003: iput v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;.f$0:I // field@240a
1d65ea: 5b02 0b24                              |0005: iput-object v2, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;.f$1:[B // field@240b
1d65ee: 0e00                                   |0007: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x0008 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;
        0x0000 - 0x0008 reg=1 (null) I
        0x0000 - 0x0008 reg=2 (null) [B

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;)
      name          : 'acceptOrThrow'
      type          : '(Ljava/lang/Object;)V'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 3
      ins           : 2
      outs          : 3
      insns size    : 10 16-bit code units
1d65f0:                                        |[1d65f0] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3.acceptOrThrow:(Ljava/lang/Object;)V
1d6600: 5210 0a24                              |0000: iget v0, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;.f$0:I // field@240a
1d6604: 5411 0b24                              |0002: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;.f$1:[B // field@240b
1d6608: 1f02 9b00                              |0004: check-cast v2, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // type@009b
1d660c: 7130 0f33 1002                         |0006: invoke-static {v0, v1, v2}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.$r8$lambda$Qz6vvf2e7qIRzuJ70CeOAsnzTQ4:(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V // method@330f
1d6612: 0e00                                   |0009: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :
        0x0000 - 0x000a reg=1 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;
        0x0000 - 0x000a reg=2 (null) Ljava/lang/Object;

  source_file_idx   : 29454 (R8$$SyntheticClass)

Class #1522            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;'
  Access flags      : 0x0001 (PUBLIC)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
  Static fields     -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'TAG'
      type          : 'Ljava/lang/String;'
      access        : 0x0019 (PUBLIC STATIC FINAL)
      value         : "BluetoothHciVendorSpecificNativeInterface"
  Instance fields   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'mDispatcher'
      type          : 'Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;'
      access        : 0x0011 (PUBLIC FINAL)
  Direct methods    -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : '$r8$lambda$-6Lf_G90NQ-J_cUxTsEYnBKRa4c'
      type          : '(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x1009 (PUBLIC STATIC SYNTHETIC)
      code          -
      registers     : 3
      ins           : 3
      outs          : 3
      insns size    : 4 16-bit code units
1d6614:                                        |[1d6614] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.$r8$lambda$-6Lf_G90NQ-J_cUxTsEYnBKRa4c:(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
1d6624: 7230 e102 0201                         |0000: invoke-interface {v2, v0, v1}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;.onAclEvent:(I[B)V // method@02e1
1d662a: 0e00                                   |0003: return-void
      catches       : (none)
      positions     :
        0x0000 line=58
      locals        :
        0x0000 - 0x0004 reg=0 (null) I
        0x0000 - 0x0004 reg=1 (null) [B
        0x0000 - 0x0004 reg=2 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : '$r8$lambda$3YEvX9kJVtWRaUS-NH37LNbeyV4'
      type          : '(IILandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x1009 (PUBLIC STATIC SYNTHETIC)
      code          -
      registers     : 3
      ins           : 3
      outs          : 3
      insns size    : 4 16-bit code units
1d662c:                                        |[1d662c] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.$r8$lambda$3YEvX9kJVtWRaUS-NH37LNbeyV4:(IILandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
1d663c: 7230 e302 0201                         |0000: invoke-interface {v2, v0, v1}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;.onCommandStatus:(II)V // method@02e3
1d6642: 0e00                                   |0003: return-void
      catches       : (none)
      positions     :
        0x0000 line=45
      locals        :
        0x0000 - 0x0004 reg=0 (null) I
        0x0000 - 0x0004 reg=1 (null) I
        0x0000 - 0x0004 reg=2 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : '$r8$lambda$Qz6vvf2e7qIRzuJ70CeOAsnzTQ4'
      type          : '(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x1009 (PUBLIC STATIC SYNTHETIC)
      code          -
      registers     : 3
      ins           : 3
      outs          : 3
      insns size    : 4 16-bit code units
1d6644:                                        |[1d6644] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.$r8$lambda$Qz6vvf2e7qIRzuJ70CeOAsnzTQ4:(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
1d6654: 7230 e402 0201                         |0000: invoke-interface {v2, v0, v1}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;.onEvent:(I[B)V // method@02e4
1d665a: 0e00                                   |0003: return-void
      catches       : (none)
      positions     :
        0x0000 line=54
      locals        :
        0x0000 - 0x0004 reg=0 (null) I
        0x0000 - 0x0004 reg=1 (null) [B
        0x0000 - 0x0004 reg=2 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : '$r8$lambda$gIkUuqZHePovB-QKueS9rvEleZ4'
      type          : '(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x1009 (PUBLIC STATIC SYNTHETIC)
      code          -
      registers     : 3
      ins           : 3
      outs          : 3
      insns size    : 4 16-bit code units
1d665c:                                        |[1d665c] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.$r8$lambda$gIkUuqZHePovB-QKueS9rvEleZ4:(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
1d666c: 7230 e202 0201                         |0000: invoke-interface {v2, v0, v1}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;.onCommandComplete:(I[B)V // method@02e2
1d6672: 0e00                                   |0003: return-void
      catches       : (none)
      positions     :
        0x0000 line=50
      locals        :
        0x0000 - 0x0004 reg=0 (null) I
        0x0000 - 0x0004 reg=1 (null) [B
        0x0000 - 0x0004 reg=2 (null) Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : '<clinit>'
      type          : '()V'
      access        : 0x10008 (STATIC CONSTRUCTOR)
      code          -
      registers     : 0
      ins           : 0
      outs          : 0
      insns size    : 1 16-bit code units
45eed8:                                        |[45eed8] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.<clinit>:()V
45eee8: 0e00                                   |0000: return-void
      catches       : (none)
      positions     :
        0x0000 line=0
      locals        :

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : '<init>'
      type          : '(Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)V'
      access        : 0x10001 (PUBLIC CONSTRUCTOR)
      code          -
      registers     : 2
      ins           : 2
      outs          : 1
      insns size    : 6 16-bit code units
1d6674:                                        |[1d6674] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.<init>:(Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;)V
1d6684: 7010 759f 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@9f75
1d668a: 5b01 0d24                              |0003: iput-object v1, v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.mDispatcher:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@240d
1d668e: 0e00                                   |0005: return-void
      catches       : (none)
      positions     :
        0x0000 line=25
        0x0003 line=26
      locals        :
        0x0000 - 0x0006 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
        0x0000 - 0x0006 reg=1 (null) Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'cleanupNative'
      type          : '()V'
      access        : 0x0102 (PRIVATE NATIVE)
      code          : (none)

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'initNative'
      type          : '()V'
      access        : 0x0102 (PRIVATE NATIVE)
      code          : (none)

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'sendCommandNative'
      type          : '(I[B[B)V'
      access        : 0x0102 (PRIVATE NATIVE)
      code          : (none)

  Virtual methods   -
 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'cleanup'
      type          : '()V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 1
      ins           : 1
      outs          : 1
      insns size    : 4 16-bit code units
1d6690:                                        |[1d6690] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.cleanup:()V
1d66a0: 7010 1433 0000                         |0000: invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.cleanupNative:()V // method@3314
1d66a6: 0e00                                   |0003: return-void
      catches       : (none)
      positions     :
        0x0000 line=34
      locals        :
        0x0000 - 0x0004 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'init'
      type          : '()V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 1
      ins           : 1
      outs          : 1
      insns size    : 4 16-bit code units
1d66a8:                                        |[1d66a8] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.init:()V
1d66b8: 7010 1633 0000                         |0000: invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.initNative:()V // method@3316
1d66be: 0e00                                   |0003: return-void
      catches       : (none)
      positions     :
        0x0000 line=30
      locals        :
        0x0000 - 0x0004 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'onAclEvent'
      type          : '(I[B)V'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 4
      ins           : 3
      outs          : 3
      insns size    : 11 16-bit code units
1d66c0:                                        |[1d66c0] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.onAclEvent:(I[B)V
1d66d0: 5411 0d24                              |0000: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.mDispatcher:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@240d
1d66d4: 2200 5b08                              |0002: new-instance v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1; // type@085b
1d66d8: 7030 0733 2003                         |0004: invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda1;.<init>:(I[B)V // method@3307
1d66de: 6e30 ff32 2100                         |0007: invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.broadcastAclEvent:(ILandroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V // method@32ff
1d66e4: 0e00                                   |000a: return-void
      catches       : (none)
      positions     :
        0x0000 line=58
      locals        :
        0x0000 - 0x000b reg=1 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
        0x0000 - 0x000b reg=2 (null) I
        0x0000 - 0x000b reg=3 (null) [B

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'onCommandComplete'
      type          : '(I[B[B)V'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 5
      ins           : 4
      outs          : 3
      insns size    : 11 16-bit code units
1d66e8:                                        |[1d66e8] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.onCommandComplete:(I[B[B)V
1d66f8: 5411 0d24                              |0000: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.mDispatcher:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@240d
1d66fc: 2200 5a08                              |0002: new-instance v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0; // type@085a
1d6700: 7030 0533 2003                         |0004: invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda0;.<init>:(I[B)V // method@3305
1d6706: 6e30 0133 4100                         |0007: invoke-virtual {v1, v4, v0}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.dispatchCommandStatusOrComplete:([BLandroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V // method@3301
1d670c: 0e00                                   |000a: return-void
      catches       : (none)
      positions     :
        0x0000 line=49
      locals        :
        0x0000 - 0x000b reg=1 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
        0x0000 - 0x000b reg=2 (null) I
        0x0000 - 0x000b reg=3 (null) [B
        0x0000 - 0x000b reg=4 (null) [B

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'onCommandStatus'
      type          : '(II[B)V'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 5
      ins           : 4
      outs          : 3
      insns size    : 11 16-bit code units
1d6710:                                        |[1d6710] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.onCommandStatus:(II[B)V
1d6720: 5411 0d24                              |0000: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.mDispatcher:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@240d
1d6724: 2200 5c08                              |0002: new-instance v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2; // type@085c
1d6728: 7030 0933 2003                         |0004: invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda2;.<init>:(II)V // method@3309
1d672e: 6e30 0133 4100                         |0007: invoke-virtual {v1, v4, v0}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.dispatchCommandStatusOrComplete:([BLandroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V // method@3301
1d6734: 0e00                                   |000a: return-void
      catches       : (none)
      positions     :
        0x0000 line=44
      locals        :
        0x0000 - 0x000b reg=1 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
        0x0000 - 0x000b reg=2 (null) I
        0x0000 - 0x000b reg=3 (null) I
        0x0000 - 0x000b reg=4 (null) [B

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'onEvent'
      type          : '(I[B)V'
      access        : 0x0011 (PUBLIC FINAL)
      code          -
      registers     : 4
      ins           : 3
      outs          : 3
      insns size    : 11 16-bit code units
1d6738:                                        |[1d6738] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.onEvent:(I[B)V
1d6748: 5411 0d24                              |0000: iget-object v1, v1, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.mDispatcher:Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher; // field@240d
1d674c: 2200 5d08                              |0002: new-instance v0, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3; // type@085d
1d6750: 7030 0b33 2003                         |0004: invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface$$ExternalSyntheticLambda3;.<init>:(I[B)V // method@330b
1d6756: 6e30 0033 2100                         |0007: invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificDispatcher;.broadcastEvent:(ILandroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V // method@3300
1d675c: 0e00                                   |000a: return-void
      catches       : (none)
      positions     :
        0x0000 line=54
      locals        :
        0x0000 - 0x000b reg=1 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
        0x0000 - 0x000b reg=2 (null) I
        0x0000 - 0x000b reg=3 (null) [B

 (in Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;)
      name          : 'sendCommand'
      type          : '(I[B[B)V'
      access        : 0x0001 (PUBLIC)
      code          -
      registers     : 4
      ins           : 4
      outs          : 4
      insns size    : 4 16-bit code units
1d6760:                                        |[1d6760] com.android.bluetooth.btservice.BluetoothHciVendorSpecificNativeInterface.sendCommand:(I[B[B)V
1d6770: 7040 1c33 1032                         |0000: invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;.sendCommandNative:(I[B[B)V // method@331c
1d6776: 0e00                                   |0003: return-void
      catches       : (none)
      positions     :
        0x0000 line=38
      locals        :
        0x0000 - 0x0004 reg=0 this Lcom/android/bluetooth/btservice/BluetoothHciVendorSpecificNativeInterface;
        0x0000 - 0x0004 reg=1 (null) I
        0x0000 - 0x0004 reg=2 (null) [B
        0x0000 - 0x0004 reg=3 (null) [B

  source_file_idx   : 12347 (BluetoothHciVendorSpecificNativeInterface.java)

Class #1523            -
  Class descriptor  : 'Lcom/android/bluetooth/btservice/BluetoothQualityReportNativeCallback;'
  Access flags      : 0x0011 (PUBLIC FINAL)
  Superclass        : 'Lcom/android/bluetooth/profile/NativeCallback;'
  Interfaces        -
  Static fields     -
  Instance fields   -
  Direct methods    -