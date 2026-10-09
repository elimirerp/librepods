 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)
      name          : 'DESCRIPTOR'
      type          : 'Ljava/lang/String;'
      access        : 0x0019 (PUBLIC STATIC FINAL)
      hiddenapi     : 0x0002 (BLOCKED)
      value         : "android.bluetooth.IBluetoothHciVendorSpecificCallback"
  Instance fields   -
  Direct methods    -
  Virtual methods   -
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)
      name          : 'onAclEvent'
      type          : '(I[B)V'
      access        : 0x0401 (PUBLIC ABSTRACT)
      hiddenapi     : 0x0002 (BLOCKED)
      code          : (none)

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)
      name          : 'onCommandComplete'
      type          : '(I[B)V'
      access        : 0x0401 (PUBLIC ABSTRACT)
      hiddenapi     : 0x0002 (BLOCKED)
      code          : (none)

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)
      name          : 'onCommandStatus'
      type          : '(II)V'
      access        : 0x0401 (PUBLIC ABSTRACT)
      hiddenapi     : 0x0002 (BLOCKED)
      code          : (none)

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)
      name          : 'onEvent'
      type          : '(I[B)V'
      access        : 0x0401 (PUBLIC ABSTRACT)
      hiddenapi     : 0x0002 (BLOCKED)
      code          : (none)

  source_file_idx   : 2987 (IBluetoothHciVendorSpecificCallback.java)

Class #176            -
  Class descriptor  : 'Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;'
  Access flags      : 0x0401 (PUBLIC ABSTRACT)
  Superclass        : 'Landroid/os/Binder;'
  Interfaces        -
 'Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;'
  Static fields     -
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;)
      name          : 'TRANSACTION_onAclEvent'
      type          : 'I'
      access        : 0x0018 (STATIC FINAL)
      hiddenapi     : 0x0002 (BLOCKED)
      value         : 4
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;)
      name          : 'TRANSACTION_onCommandComplete'
      type          : 'I'
      access        : 0x0018 (STATIC FINAL)
      hiddenapi     : 0x0002 (BLOCKED)
      value         : 2
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;)
      name          : 'TRANSACTION_onCommandStatus'
      type          : 'I'
      access        : 0x0018 (STATIC FINAL)
      hiddenapi     : 0x0002 (BLOCKED)
      value         : 1
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;)
      name          : 'TRANSACTION_onEvent'
      type          : 'I'
      access        : 0x0018 (STATIC FINAL)
      hiddenapi     : 0x0002 (BLOCKED)
      value         : 3
  Instance fields   -
  Direct methods    -
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;)
      name          : '<init>'
      type          : '()V'
      access        : 0x10001 (PUBLIC CONSTRUCTOR)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 2
      ins           : 1
      outs          : 3
      insns size    : 9 16-bit code units
0a1a54:                                        |[0a1a54] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub.<init>:()V
0a1a64: 7010 8a22 0100                         |0000: invoke-direct {v1}, Landroid/os/Binder;.<init>:()V // method@228a
0a1a6a: 1a00 c91c                              |0003: const-string v0, "android.bluetooth.IBluetoothHciVendorSpecificCallback" // string@1cc9
0a1a6e: 6e30 ac16 1100                         |0005: invoke-virtual {v1, v1, v0}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;.attachInterface:(Landroid/os/IInterface;Ljava/lang/String;)V // method@16ac
0a1a74: 0e00                                   |0008: return-void
      catches       : (none)
      positions     :
        0x0000 line=40
        0x0003 line=41
        0x0008 line=42
      locals        :
        0x0000 - 0x0009 reg=1 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;)
      name          : 'asInterface'
      type          : '(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;'
      access        : 0x0009 (PUBLIC STATIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 3
      ins           : 1
      outs          : 2
      insns size    : 26 16-bit code units
0a18dc:                                        |[0a18dc] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub.asInterface:(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
0a18ec: 3902 0400                              |0000: if-nez v2, 0004 // +0004
0a18f0: 1200                                   |0002: const/4 v0, #int 0 // #0
0a18f2: 1100                                   |0003: return-object v0
0a18f4: 1a00 c91c                              |0004: const-string v0, "android.bluetooth.IBluetoothHciVendorSpecificCallback" // string@1cc9
0a18f8: 7220 9c22 0200                         |0006: invoke-interface {v2, v0}, Landroid/os/IBinder;.queryLocalInterface:(Ljava/lang/String;)Landroid/os/IInterface; // method@229c
0a18fe: 0c00                                   |0009: move-result-object v0
0a1900: 3800 0a00                              |000a: if-eqz v0, 0014 // +000a
0a1904: 2001 1e03                              |000c: instance-of v1, v0, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // type@031e
0a1908: 3801 0600                              |000e: if-eqz v1, 0014 // +0006
0a190c: 0701                                   |0010: move-object v1, v0
0a190e: 1f01 1e03                              |0011: check-cast v1, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // type@031e
0a1912: 1101                                   |0013: return-object v1
0a1914: 2201 1c03                              |0014: new-instance v1, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy; // type@031c
0a1918: 7020 a216 2100                         |0016: invoke-direct {v1, v2}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.<init>:(Landroid/os/IBinder;)V // method@16a2
0a191e: 1101                                   |0019: return-object v1
      catches       : (none)
      positions     :
        0x0000 line=49
        0x0002 line=50
        0x0004 line=52
        0x000a line=53
        0x0010 line=54
        0x0014 line=56
      locals        :
        0x000a - 0x001a reg=0 iin Landroid/os/IInterface;
        0x0000 - 0x001a reg=2 obj Landroid/os/IBinder;

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;)
      name          : 'getDefaultTransactionName'
      type          : '(I)Ljava/lang/String;'
      access        : 0x0009 (PUBLIC STATIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 2
      ins           : 1
      outs          : 0
      insns size    : 30 16-bit code units
0a19ec:                                        |[0a19ec] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub.getDefaultTransactionName:(I)Ljava/lang/String;
0a19fc: 2b01 1200 0000                         |0000: packed-switch v1, 00000012 // +00000012
0a1a02: 1200                                   |0003: const/4 v0, #int 0 // #0
0a1a04: 1100                                   |0004: return-object v0
0a1a06: 1a00 ce2b                              |0005: const-string v0, "onAclEvent" // string@2bce
0a1a0a: 1100                                   |0007: return-object v0
0a1a0c: 1a00 2d2c                              |0008: const-string v0, "onEvent" // string@2c2d
0a1a10: 1100                                   |000a: return-object v0
0a1a12: 1a00 112c                              |000b: const-string v0, "onCommandComplete" // string@2c11
0a1a16: 1100                                   |000d: return-object v0
0a1a18: 1a00 122c                              |000e: const-string v0, "onCommandStatus" // string@2c12
0a1a1c: 1100                                   |0010: return-object v0
0a1a1e: 0000                                   |0011: nop // spacer
0a1a20: 0001 0400 0100 0000 0e00 0000 0b00 ... |0012: packed-switch-data (12 units)
      catches       : (none)
      positions     :
        0x0000 line=65
        0x0003 line=85
        0x0005 line=81
        0x0008 line=77
        0x000b line=73
        0x000e line=69
      locals        :
        0x0000 - 0x001e reg=1 transactionCode I

  Virtual methods   -
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;)
      name          : 'asBinder'
      type          : '()Landroid/os/IBinder;'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0020 (SDK,TEST-API)
      code          -
      registers     : 1
      ins           : 1
      outs          : 0
      insns size    : 1 16-bit code units
0d74d8:                                        |[0d74d8] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub.asBinder:()Landroid/os/IBinder;
0d74e8: 1100                                   |0000: return-object v0
      catches       : (none)
      positions     :
        0x0000 line=60
      locals        :
        0x0000 - 0x0001 reg=0 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;)
      name          : 'getTransactionName'
      type          : '(I)Ljava/lang/String;'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 3
      ins           : 2
      outs          : 1
      insns size    : 5 16-bit code units
0a1a38:                                        |[0a1a38] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub.getTransactionName:(I)Ljava/lang/String;
0a1a48: 7110 ad16 0200                         |0000: invoke-static {v2}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;.getDefaultTransactionName:(I)Ljava/lang/String; // method@16ad
0a1a4e: 0c00                                   |0003: move-result-object v0
0a1a50: 1100                                   |0004: return-object v0
      catches       : (none)
      positions     :
        0x0000 line=92
      locals        :
        0x0000 - 0x0005 reg=1 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;
        0x0000 - 0x0005 reg=2 transactionCode I

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;)
      name          : 'onTransact'
      type          : '(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0020 (SDK,TEST-API)
      code          -
      registers     : 8
      ins           : 5
      outs          : 5
      insns size    : 94 16-bit code units
0a1920:                                        |[0a1920] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub.onTransact:(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
0a1930: 1210                                   |0000: const/4 v0, #int 1 // #1
0a1932: 3404 0c00                              |0001: if-lt v4, v0, 000d // +000c
0a1936: 1401 ffff ff00                         |0003: const v1, #float 2.35099e-38 // #00ffffff
0a193c: 3614 0700                              |0006: if-gt v4, v1, 000d // +0007
0a1940: 1a01 c91c                              |0008: const-string v1, "android.bluetooth.IBluetoothHciVendorSpecificCallback" // string@1cc9
0a1944: 6e20 aa22 1500                         |000a: invoke-virtual {v5, v1}, Landroid/os/Parcel;.enforceInterface:(Ljava/lang/String;)V // method@22aa
0a194a: 2b04 4500 0000                         |000d: packed-switch v4, 00000052 // +00000045
0a1950: 6f57 8d22 4365                         |0010: invoke-super {v3, v4, v5, v6, v7}, Landroid/os/Binder;.onTransact:(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z // method@228d
0a1956: 0a00                                   |0013: move-result v0
0a1958: 0f00                                   |0014: return v0
0a195a: 6e10 b722 0500                         |0015: invoke-virtual {v5}, Landroid/os/Parcel;.readInt:()I // method@22b7
0a1960: 0a01                                   |0018: move-result v1
0a1962: 6e10 a422 0500                         |0019: invoke-virtual {v5}, Landroid/os/Parcel;.createByteArray:()[B // method@22a4
0a1968: 0c02                                   |001c: move-result-object v2
0a196a: 6e10 ab22 0500                         |001d: invoke-virtual {v5}, Landroid/os/Parcel;.enforceNoDataAvail:()V // method@22ab
0a1970: 6e30 af16 1302                         |0020: invoke-virtual {v3, v1, v2}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;.onAclEvent:(I[B)V // method@16af
0a1976: 282e                                   |0023: goto 0051 // +002e
0a1978: 6e10 b722 0500                         |0024: invoke-virtual {v5}, Landroid/os/Parcel;.readInt:()I // method@22b7
0a197e: 0a01                                   |0027: move-result v1
0a1980: 6e10 a422 0500                         |0028: invoke-virtual {v5}, Landroid/os/Parcel;.createByteArray:()[B // method@22a4
0a1986: 0c02                                   |002b: move-result-object v2
0a1988: 6e10 ab22 0500                         |002c: invoke-virtual {v5}, Landroid/os/Parcel;.enforceNoDataAvail:()V // method@22ab
0a198e: 6e30 b216 1302                         |002f: invoke-virtual {v3, v1, v2}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;.onEvent:(I[B)V // method@16b2
0a1994: 281f                                   |0032: goto 0051 // +001f
0a1996: 6e10 b722 0500                         |0033: invoke-virtual {v5}, Landroid/os/Parcel;.readInt:()I // method@22b7
0a199c: 0a01                                   |0036: move-result v1
0a199e: 6e10 a422 0500                         |0037: invoke-virtual {v5}, Landroid/os/Parcel;.createByteArray:()[B // method@22a4
0a19a4: 0c02                                   |003a: move-result-object v2
0a19a6: 6e10 ab22 0500                         |003b: invoke-virtual {v5}, Landroid/os/Parcel;.enforceNoDataAvail:()V // method@22ab
0a19ac: 6e30 b016 1302                         |003e: invoke-virtual {v3, v1, v2}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;.onCommandComplete:(I[B)V // method@16b0
0a19b2: 2810                                   |0041: goto 0051 // +0010
0a19b4: 6e10 b722 0500                         |0042: invoke-virtual {v5}, Landroid/os/Parcel;.readInt:()I // method@22b7
0a19ba: 0a01                                   |0045: move-result v1
0a19bc: 6e10 b722 0500                         |0046: invoke-virtual {v5}, Landroid/os/Parcel;.readInt:()I // method@22b7
0a19c2: 0a02                                   |0049: move-result v2
0a19c4: 6e10 ab22 0500                         |004a: invoke-virtual {v5}, Landroid/os/Parcel;.enforceNoDataAvail:()V // method@22ab
0a19ca: 6e30 b116 1302                         |004d: invoke-virtual {v3, v1, v2}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;.onCommandStatus:(II)V // method@16b1
0a19d0: 0000                                   |0050: nop // spacer
0a19d2: 0f00                                   |0051: return v0
0a19d4: 0001 0400 0100 0000 3500 0000 2600 ... |0052: packed-switch-data (12 units)
      catches       : (none)
      positions     :
        0x0000 line=96
        0x0008 line=97
        0x000d line=99
        0x0010 line=143
        0x0015 line=134
        0x0019 line=136
        0x001d line=137
        0x0020 line=138
        0x0023 line=139
        0x0024 line=124
        0x0028 line=126
        0x002c line=127
        0x002f line=128
        0x0032 line=129
        0x0033 line=114
        0x0037 line=116
        0x003b line=117
        0x003e line=118
        0x0041 line=119
        0x0042 line=104
        0x0046 line=106
        0x004a line=107
        0x004d line=108
        0x0050 line=109
        0x0051 line=146
      locals        :
        0x0019 - 0x0024 reg=1 _arg0 I
        0x001d - 0x0024 reg=2 _arg1 [B
        0x0028 - 0x0033 reg=1 _arg0 I
        0x002c - 0x0033 reg=2 _arg1 [B
        0x0037 - 0x0042 reg=1 _arg0 I
        0x003b - 0x0042 reg=2 _arg1 [B
        0x0046 - 0x0051 reg=1 _arg0 I
        0x004a - 0x0051 reg=2 _arg1 I
        0x0000 - 0x005e reg=3 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;
        0x0000 - 0x005e reg=4 code I
        0x0000 - 0x005e reg=5 data Landroid/os/Parcel;
        0x0000 - 0x005e reg=6 reply Landroid/os/Parcel;
        0x0000 - 0x005e reg=7 flags I

  source_file_idx   : 2987 (IBluetoothHciVendorSpecificCallback.java)

Class #177            -
  Class descriptor  : 'Landroid/bluetooth/BluetoothAdapter$15;'
  Access flags      : 0x0000 ()
  Superclass        : 'Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub;'
  Interfaces        -
  Static fields     -
  Instance fields   -
 (in Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;)
      name          : 'unregisterFromService'
      type          : '(Landroid/bluetooth/IBluetooth;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0008 (STATIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 4
      ins           : 2
      outs          : 2
      insns size    : 16 16-bit code units
0456e4:                                        |[0456e4] android.bluetooth.BluetoothAdapter$HciVendorSpecificCallbackRegistration.unregisterFromService:(Landroid/bluetooth/IBluetooth;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
0456f4: 3902 0300                              |0000: if-nez v2, 0003 // +0003
0456f8: 0e00                                   |0002: return-void
0456fa: 7220 1013 3200                         |0003: invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;.unregisterHciVendorSpecificCallback:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V // method@1310
045700: 2809                                   |0006: goto 000f // +0009
045702: 0d00                                   |0007: move-exception v0
045704: 7100 8c02 0000                         |0008: invoke-static {}, Landroid/bluetooth/BluetoothAdapter;.-$$Nest$sfgetTAG:()Ljava/lang/String; // method@028c
04570a: 0c01                                   |000b: move-result-object v1
04570c: 7120 700e 0100                         |000c: invoke-static {v1, v0}, Landroid/bluetooth/BluetoothUtils;.logRemoteException:(Ljava/lang/String;Landroid/os/RemoteException;)V // method@0e70
045712: 0e00                                   |000f: return-void
      catches       : 1
        0x0003 - 0x0006
          Landroid/os/RemoteException; -> 0x0007
      positions     :
        0x0000 line=7328
        0x0002 line=7329
        0x0003 line=7332
        0x0006 line=7335
        0x0007 line=7333
        0x0008 line=7334
        0x000f line=7336
      locals        :
        0x0008 - 0x000f reg=0 e Landroid/os/RemoteException;
        0x0000 - 0x0010 reg=2 service Landroid/bluetooth/IBluetooth;
        0x0000 - 0x0010 reg=3 stub Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

  Virtual methods   -
 (in Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;)
      name          : 'registerToService'
      type          : '(Landroid/bluetooth/IBluetooth;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0000 ()
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 7
      ins           : 3
      outs          : 4
      insns size    : 61 16-bit code units
045600:                                        |[045600] android.bluetooth.BluetoothAdapter$HciVendorSpecificCallbackRegistration.registerToService:(Landroid/bluetooth/IBluetooth;Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
045610: 3805 3c00                              |0000: if-eqz v5, 003c // +003c
045614: 6e10 1a02 0400                         |0002: invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;.isSet:()Z // method@021a
04561a: 0a00                                   |0005: move-result v0
04561c: 3900 0300                              |0006: if-nez v0, 0009 // +0003
045620: 2834                                   |0008: goto 003c // +0034
045622: 5440 f100                              |0009: iget-object v0, v4, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;.mEventCodeSet:Ljava/util/Set; // field@00f1
045626: 7210 db29 0000                         |000b: invoke-interface {v0}, Ljava/util/Set;.stream:()Ljava/util/stream/Stream; // method@29db
04562c: 0c00                                   |000e: move-result-object v0
04562e: 2201 c100                              |000f: new-instance v1, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration$$ExternalSyntheticLambda1; // type@00c1
045632: 7010 1302 0100                         |0011: invoke-direct {v1}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration$$ExternalSyntheticLambda1;.<init>:()V // method@0213
045638: 7220 0d2a 1000                         |0014: invoke-interface {v0, v1}, Ljava/util/stream/Stream;.mapToInt:(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream; // method@2a0d
04563e: 0c00                                   |0017: move-result-object v0
045640: 7210 092a 0000                         |0018: invoke-interface {v0}, Ljava/util/stream/IntStream;.toArray:()[I // method@2a09
045646: 0c00                                   |001b: move-result-object v0
045648: 5441 ef00                              |001c: iget-object v1, v4, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;.mAclHandleSet:Ljava/util/Set; // field@00ef
04564c: 7210 db29 0100                         |001e: invoke-interface {v1}, Ljava/util/Set;.stream:()Ljava/util/stream/Stream; // method@29db
045652: 0c01                                   |0021: move-result-object v1
045654: 2202 c200                              |0022: new-instance v2, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration$$ExternalSyntheticLambda2; // type@00c2
045658: 7010 1502 0200                         |0024: invoke-direct {v2}, Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration$$ExternalSyntheticLambda2;.<init>:()V // method@0215
04565e: 7220 0d2a 2100                         |0027: invoke-interface {v1, v2}, Ljava/util/stream/Stream;.mapToInt:(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream; // method@2a0d
045664: 0c01                                   |002a: move-result-object v1
045666: 7210 092a 0100                         |002b: invoke-interface {v1}, Ljava/util/stream/IntStream;.toArray:()[I // method@2a09
04566c: 0c01                                   |002e: move-result-object v1
04566e: 7240 cf12 6510                         |002f: invoke-interface {v5, v6, v0, v1}, Landroid/bluetooth/IBluetooth;.registerHciVendorSpecificCallback:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;[I[I)V // method@12cf
045674: 2809                                   |0032: goto 003b // +0009
045676: 0d02                                   |0033: move-exception v2
045678: 7100 8c02 0000                         |0034: invoke-static {}, Landroid/bluetooth/BluetoothAdapter;.-$$Nest$sfgetTAG:()Ljava/lang/String; // method@028c
04567e: 0c03                                   |0037: move-result-object v3
045680: 7120 700e 2300                         |0038: invoke-static {v3, v2}, Landroid/bluetooth/BluetoothUtils;.logRemoteException:(Ljava/lang/String;Landroid/os/RemoteException;)V // method@0e70
045686: 0e00                                   |003b: return-void
045688: 0e00                                   |003c: return-void
      catches       : 1
        0x002f - 0x0032
          Landroid/os/RemoteException; -> 0x0033
      positions     :
        0x0000 line=7312
        0x0009 line=7316
        0x001c line=7317
        0x002f line=7319
        0x0032 line=7322
        0x0033 line=7320
        0x0034 line=7321
        0x003b line=7323
        0x003c line=7313
      locals        :
        0x0034 - 0x003b reg=2 e Landroid/os/RemoteException;
        0x001c - 0x003c reg=0 eventCodes [I
        0x002f - 0x003c reg=1 aclHandles [I
        0x0000 - 0x003d reg=4 this Landroid/bluetooth/BluetoothAdapter$HciVendorSpecificCallbackRegistration;
        0x0000 - 0x003d reg=5 service Landroid/bluetooth/IBluetooth;
        0x0000 - 0x003d reg=6 stub Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Landroid/bluetooth/BluetoothAdapter;)
      name          : 'mHciVendorSpecificCallbackStub'
      type          : 'Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;'
      access        : 0x0012 (PRIVATE FINAL)
      hiddenapi     : 0x0002 (BLOCKED)
 (in Landroid/bluetooth/BluetoothAdapter;)
      name          : '-$$Nest$fgetmHciVendorSpecificCallbackStub'
      type          : '(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;'
      access        : 0x1048 (STATIC BRIDGE SYNTHETIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 1
      ins           : 1
      outs          : 0
      insns size    : 3 16-bit code units
046e48:                                        |[046e48] android.bluetooth.BluetoothAdapter.-$$Nest$fgetmHciVendorSpecificCallbackStub:(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
046e58: 5400 8001                              |0000: iget-object v0, v0, Landroid/bluetooth/BluetoothAdapter;.mHciVendorSpecificCallbackStub:Landroid/bluetooth/IBluetoothHciVendorSpecificCallback; // field@0180
046e5c: 1100                                   |0002: return-object v0
      catches       : (none)
      positions     :
      locals        :

 (in Landroid/bluetooth/IBluetooth;)
      name          : 'registerHciVendorSpecificCallback'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;[I[I)V'
      access        : 0x0401 (PUBLIC ABSTRACT)
      hiddenapi     : 0x0002 (BLOCKED)
      code          : (none)

 (in Landroid/bluetooth/IBluetooth;)
      name          : 'sendHciVendorSpecificCommand'
      type          : '(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0401 (PUBLIC ABSTRACT)
      hiddenapi     : 0x0002 (BLOCKED)
      code          : (none)

 (in Landroid/bluetooth/IBluetooth;)
      name          : 'unregisterHciVendorSpecificCallback'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0401 (PUBLIC ABSTRACT)
      hiddenapi     : 0x0002 (BLOCKED)
      code          : (none)

 (in Landroid/bluetooth/IBluetooth$Default;)
      name          : 'registerHciVendorSpecificCallback'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;[I[I)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 4
      ins           : 4
      outs          : 0
      insns size    : 1 16-bit code units
08bc3c:                                        |[08bc3c] android.bluetooth.IBluetooth$Default.registerHciVendorSpecificCallback:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;[I[I)V
08bc4c: 0e00                                   |0000: return-void
      catches       : (none)
      positions     :
        0x0000 line=589
      locals        :
        0x0000 - 0x0001 reg=0 this Landroid/bluetooth/IBluetooth$Default;
        0x0000 - 0x0001 reg=1 callback Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
        0x0000 - 0x0001 reg=2 eventCodes [I
        0x0000 - 0x0001 reg=3 aclHandles [I

 (in Landroid/bluetooth/IBluetooth$Default;)
      name          : 'sendHciVendorSpecificCommand'
      type          : '(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 4
      ins           : 4
      outs          : 0
      insns size    : 1 16-bit code units
08bca0:                                        |[08bca0] android.bluetooth.IBluetooth$Default.sendHciVendorSpecificCommand:(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
08bcb0: 0e00                                   |0000: return-void
      catches       : (none)
      positions     :
        0x0000 line=595
      locals        :
        0x0000 - 0x0001 reg=0 this Landroid/bluetooth/IBluetooth$Default;
        0x0000 - 0x0001 reg=1 ocf I
        0x0000 - 0x0001 reg=2 parameters [B
        0x0000 - 0x0001 reg=3 callback Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Landroid/bluetooth/IBluetooth$Default;)
      name          : 'unregisterHciVendorSpecificCallback'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 2
      ins           : 2
      outs          : 0
      insns size    : 1 16-bit code units
08bcf0:                                        |[08bcf0] android.bluetooth.IBluetooth$Default.unregisterHciVendorSpecificCallback:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
08bd00: 0e00                                   |0000: return-void
      catches       : (none)
      positions     :
        0x0000 line=592
      locals        :
        0x0000 - 0x0001 reg=0 this Landroid/bluetooth/IBluetooth$Default;
        0x0000 - 0x0001 reg=1 callback Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Landroid/bluetooth/IBluetooth$Stub$Proxy;)
      name          : 'registerHciVendorSpecificCallback'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;[I[I)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 9
      ins           : 4
      outs          : 5
      insns size    : 54 16-bit code units
0929ec:                                        |[0929ec] android.bluetooth.IBluetooth$Stub$Proxy.registerHciVendorSpecificCallback:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;[I[I)V
0929fc: 6e10 9310 0500                         |0000: invoke-virtual {v5}, Landroid/bluetooth/IBluetooth$Stub$Proxy;.asBinder:()Landroid/os/IBinder; // method@1093
092a02: 0c00                                   |0003: move-result-object v0
092a04: 7110 ad22 0000                         |0004: invoke-static {v0}, Landroid/os/Parcel;.obtain:(Landroid/os/IBinder;)Landroid/os/Parcel; // method@22ad
092a0a: 0c00                                   |0007: move-result-object v0
092a0c: 7100 ac22 0000                         |0008: invoke-static {}, Landroid/os/Parcel;.obtain:()Landroid/os/Parcel; // method@22ac
092a12: 0c01                                   |000b: move-result-object v1
092a14: 1a02 b91c                              |000c: const-string v2, "android.bluetooth.IBluetooth" // string@1cb9
092a18: 6e20 c622 2000                         |000e: invoke-virtual {v0, v2}, Landroid/os/Parcel;.writeInterfaceToken:(Ljava/lang/String;)V // method@22c6
092a1e: 6e20 ce22 6000                         |0011: invoke-virtual {v0, v6}, Landroid/os/Parcel;.writeStrongInterface:(Landroid/os/IInterface;)V // method@22ce
092a24: 6e20 c522 7000                         |0014: invoke-virtual {v0, v7}, Landroid/os/Parcel;.writeIntArray:([I)V // method@22c5
092a2a: 6e20 c522 8000                         |0017: invoke-virtual {v0, v8}, Landroid/os/Parcel;.writeIntArray:([I)V // method@22c5
092a30: 5452 ca0c                              |001a: iget-object v2, v5, Landroid/bluetooth/IBluetooth$Stub$Proxy;.mRemote:Landroid/os/IBinder; // field@0cca
092a34: 1303 8900                              |001c: const/16 v3, #int 137 // #89
092a38: 1204                                   |001e: const/4 v4, #int 0 // #0
092a3a: 7254 9d22 3210                         |001f: invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;.transact:(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z // method@229d
092a40: 0a02                                   |0022: move-result v2
092a42: 6e10 b422 0100                         |0023: invoke-virtual {v1}, Landroid/os/Parcel;.readException:()V // method@22b4
092a48: 6e10 bd22 0100                         |0026: invoke-virtual {v1}, Landroid/os/Parcel;.recycle:()V // method@22bd
092a4e: 6e10 bd22 0000                         |0029: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
092a54: 0000                                   |002c: nop // spacer
092a56: 0e00                                   |002d: return-void
092a58: 0d02                                   |002e: move-exception v2
092a5a: 6e10 bd22 0100                         |002f: invoke-virtual {v1}, Landroid/os/Parcel;.recycle:()V // method@22bd
092a60: 6e10 bd22 0000                         |0032: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
092a66: 2702                                   |0035: throw v2
      catches       : 1
        0x000c - 0x0026
          <any> -> 0x002e
      positions     :
        0x0000 line=6761
        0x0008 line=6762
        0x000c line=6764
        0x0011 line=6765
        0x0014 line=6766
        0x0017 line=6767
        0x001a line=6768
        0x0023 line=6769
        0x0026 line=6772
        0x0029 line=6773
        0x002c line=6774
        0x002d line=6775
        0x002e line=6772
        0x0032 line=6773
        0x0035 line=6774
      locals        :
        0x0023 - 0x0026 reg=2 _status Z
        0x0008 - 0x0036 reg=0 _data Landroid/os/Parcel;
        0x000c - 0x0036 reg=1 _reply Landroid/os/Parcel;
        0x0000 - 0x0036 reg=5 this Landroid/bluetooth/IBluetooth$Stub$Proxy;
        0x0000 - 0x0036 reg=6 callback Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;
        0x0000 - 0x0036 reg=7 eventCodes [I
        0x0000 - 0x0036 reg=8 aclHandles [I

 (in Landroid/bluetooth/IBluetooth$Stub$Proxy;)
      name          : 'sendHciVendorSpecificCommand'
      type          : '(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 9
      ins           : 4
      outs          : 5
      insns size    : 54 16-bit code units
092c58:                                        |[092c58] android.bluetooth.IBluetooth$Stub$Proxy.sendHciVendorSpecificCommand:(I[BLandroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
092c68: 6e10 9310 0500                         |0000: invoke-virtual {v5}, Landroid/bluetooth/IBluetooth$Stub$Proxy;.asBinder:()Landroid/os/IBinder; // method@1093
092c6e: 0c00                                   |0003: move-result-object v0
092c70: 7110 ad22 0000                         |0004: invoke-static {v0}, Landroid/os/Parcel;.obtain:(Landroid/os/IBinder;)Landroid/os/Parcel; // method@22ad
092c76: 0c00                                   |0007: move-result-object v0
092c78: 7100 ac22 0000                         |0008: invoke-static {}, Landroid/os/Parcel;.obtain:()Landroid/os/Parcel; // method@22ac
092c7e: 0c01                                   |000b: move-result-object v1
092c80: 1a02 b91c                              |000c: const-string v2, "android.bluetooth.IBluetooth" // string@1cb9
092c84: 6e20 c622 2000                         |000e: invoke-virtual {v0, v2}, Landroid/os/Parcel;.writeInterfaceToken:(Ljava/lang/String;)V // method@22c6
092c8a: 6e20 c422 6000                         |0011: invoke-virtual {v0, v6}, Landroid/os/Parcel;.writeInt:(I)V // method@22c4
092c90: 6e20 c122 7000                         |0014: invoke-virtual {v0, v7}, Landroid/os/Parcel;.writeByteArray:([B)V // method@22c1
092c96: 6e20 ce22 8000                         |0017: invoke-virtual {v0, v8}, Landroid/os/Parcel;.writeStrongInterface:(Landroid/os/IInterface;)V // method@22ce
092c9c: 5452 ca0c                              |001a: iget-object v2, v5, Landroid/bluetooth/IBluetooth$Stub$Proxy;.mRemote:Landroid/os/IBinder; // field@0cca
092ca0: 1303 8b00                              |001c: const/16 v3, #int 139 // #8b
092ca4: 1204                                   |001e: const/4 v4, #int 0 // #0
092ca6: 7254 9d22 3210                         |001f: invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;.transact:(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z // method@229d
092cac: 0a02                                   |0022: move-result v2
092cae: 6e10 b422 0100                         |0023: invoke-virtual {v1}, Landroid/os/Parcel;.readException:()V // method@22b4
092cb4: 6e10 bd22 0100                         |0026: invoke-virtual {v1}, Landroid/os/Parcel;.recycle:()V // method@22bd
092cba: 6e10 bd22 0000                         |0029: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
092cc0: 0000                                   |002c: nop // spacer
092cc2: 0e00                                   |002d: return-void
092cc4: 0d02                                   |002e: move-exception v2
092cc6: 6e10 bd22 0100                         |002f: invoke-virtual {v1}, Landroid/os/Parcel;.recycle:()V // method@22bd
092ccc: 6e10 bd22 0000                         |0032: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
092cd2: 2702                                   |0035: throw v2
      catches       : 1
        0x000c - 0x0026
          <any> -> 0x002e
      positions     :
        0x0000 line=6793
        0x0008 line=6794
        0x000c line=6796
        0x0011 line=6797
        0x0014 line=6798
        0x0017 line=6799
        0x001a line=6800
        0x0023 line=6801
        0x0026 line=6804
        0x0029 line=6805
        0x002c line=6806
        0x002d line=6807
        0x002e line=6804
        0x0032 line=6805
        0x0035 line=6806
      locals        :
        0x0023 - 0x0026 reg=2 _status Z
        0x0008 - 0x0036 reg=0 _data Landroid/os/Parcel;
        0x000c - 0x0036 reg=1 _reply Landroid/os/Parcel;
        0x0000 - 0x0036 reg=5 this Landroid/bluetooth/IBluetooth$Stub$Proxy;
        0x0000 - 0x0036 reg=6 ocf I
        0x0000 - 0x0036 reg=7 parameters [B
        0x0000 - 0x0036 reg=8 callback Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 (in Landroid/bluetooth/IBluetooth$Stub$Proxy;)
      name          : 'unregisterHciVendorSpecificCallback'
      type          : '(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 7
      ins           : 2
      outs          : 5
      insns size    : 48 16-bit code units
092e58:                                        |[092e58] android.bluetooth.IBluetooth$Stub$Proxy.unregisterHciVendorSpecificCallback:(Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;)V
092e68: 6e10 9310 0500                         |0000: invoke-virtual {v5}, Landroid/bluetooth/IBluetooth$Stub$Proxy;.asBinder:()Landroid/os/IBinder; // method@1093
092e6e: 0c00                                   |0003: move-result-object v0
092e70: 7110 ad22 0000                         |0004: invoke-static {v0}, Landroid/os/Parcel;.obtain:(Landroid/os/IBinder;)Landroid/os/Parcel; // method@22ad
092e76: 0c00                                   |0007: move-result-object v0
092e78: 7100 ac22 0000                         |0008: invoke-static {}, Landroid/os/Parcel;.obtain:()Landroid/os/Parcel; // method@22ac
092e7e: 0c01                                   |000b: move-result-object v1
092e80: 1a02 b91c                              |000c: const-string v2, "android.bluetooth.IBluetooth" // string@1cb9
092e84: 6e20 c622 2000                         |000e: invoke-virtual {v0, v2}, Landroid/os/Parcel;.writeInterfaceToken:(Ljava/lang/String;)V // method@22c6
092e8a: 6e20 ce22 6000                         |0011: invoke-virtual {v0, v6}, Landroid/os/Parcel;.writeStrongInterface:(Landroid/os/IInterface;)V // method@22ce
092e90: 5452 ca0c                              |0014: iget-object v2, v5, Landroid/bluetooth/IBluetooth$Stub$Proxy;.mRemote:Landroid/os/IBinder; // field@0cca
092e94: 1303 8a00                              |0016: const/16 v3, #int 138 // #8a
092e98: 1204                                   |0018: const/4 v4, #int 0 // #0
092e9a: 7254 9d22 3210                         |0019: invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;.transact:(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z // method@229d
092ea0: 0a02                                   |001c: move-result v2
092ea2: 6e10 b422 0100                         |001d: invoke-virtual {v1}, Landroid/os/Parcel;.readException:()V // method@22b4
092ea8: 6e10 bd22 0100                         |0020: invoke-virtual {v1}, Landroid/os/Parcel;.recycle:()V // method@22bd
092eae: 6e10 bd22 0000                         |0023: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
092eb4: 0000                                   |0026: nop // spacer
092eb6: 0e00                                   |0027: return-void
092eb8: 0d02                                   |0028: move-exception v2
092eba: 6e10 bd22 0100                         |0029: invoke-virtual {v1}, Landroid/os/Parcel;.recycle:()V // method@22bd
092ec0: 6e10 bd22 0000                         |002c: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
092ec6: 2702                                   |002f: throw v2
      catches       : 1
        0x000c - 0x0020
          <any> -> 0x0028
      positions     :
        0x0000 line=6778
        0x0008 line=6779
        0x000c line=6781
        0x0011 line=6782
        0x0014 line=6783
        0x001d line=6784
        0x0020 line=6787
        0x0023 line=6788
        0x0026 line=6789
        0x0027 line=6790
        0x0028 line=6787
        0x002c line=6788
        0x002f line=6789
      locals        :
        0x001d - 0x0020 reg=2 _status Z
        0x0008 - 0x0030 reg=0 _data Landroid/os/Parcel;
        0x000c - 0x0030 reg=1 _reply Landroid/os/Parcel;
        0x0000 - 0x0030 reg=5 this Landroid/bluetooth/IBluetooth$Stub$Proxy;
        0x0000 - 0x0030 reg=6 callback Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;

 'Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;'
  Static fields     -
  Instance fields   -
  Direct methods    -
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;)
      name          : '<init>'
      type          : '()V'
      access        : 0x10001 (PUBLIC CONSTRUCTOR)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 1
      ins           : 1
      outs          : 1
      insns size    : 4 16-bit code units
0d7ad0:                                        |[0d7ad0] android.bluetooth.IBluetoothHciVendorSpecificCallback$Default.<init>:()V
0d7ae0: 7010 1529 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@2915
0d7ae6: 0e00                                   |0003: return-void
      catches       : (none)
      positions     :
        0x0000 line=15
      locals        :
        0x0000 - 0x0004 reg=0 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;

  Virtual methods   -
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;)
      name          : 'asBinder'
      type          : '()Landroid/os/IBinder;'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0020 (SDK,TEST-API)
      code          -
      registers     : 2
      ins           : 1
      outs          : 0
      insns size    : 2 16-bit code units
0d74c4:                                        |[0d74c4] android.bluetooth.IBluetoothHciVendorSpecificCallback$Default.asBinder:()Landroid/os/IBinder;
0d74d4: 1200                                   |0000: const/4 v0, #int 0 // #0
0d74d6: 1100                                   |0001: return-object v0
      catches       : (none)
      positions     :
        0x0000 line=31
      locals        :
        0x0000 - 0x0002 reg=1 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;)
      name          : 'onAclEvent'
      type          : '(I[B)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 3
      ins           : 3
      outs          : 0
      insns size    : 1 16-bit code units
0a16a4:                                        |[0a16a4] android.bluetooth.IBluetoothHciVendorSpecificCallback$Default.onAclEvent:(I[B)V
0a16b4: 0e00                                   |0000: return-void
      catches       : (none)
      positions     :
        0x0000 line=28
      locals        :
        0x0000 - 0x0001 reg=0 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;
        0x0000 - 0x0001 reg=1 handle I
        0x0000 - 0x0001 reg=2 data [B

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;)
      name          : 'onCommandComplete'
      type          : '(I[B)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 3
      ins           : 3
      outs          : 0
      insns size    : 1 16-bit code units
0a16b8:                                        |[0a16b8] android.bluetooth.IBluetoothHciVendorSpecificCallback$Default.onCommandComplete:(I[B)V
0a16c8: 0e00                                   |0000: return-void
      catches       : (none)
      positions     :
        0x0000 line=22
      locals        :
        0x0000 - 0x0001 reg=0 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;
        0x0000 - 0x0001 reg=1 ocf I
        0x0000 - 0x0001 reg=2 returnParameters [B

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;)
      name          : 'onCommandStatus'
      type          : '(II)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 3
      ins           : 3
      outs          : 0
      insns size    : 1 16-bit code units
0a16cc:                                        |[0a16cc] android.bluetooth.IBluetoothHciVendorSpecificCallback$Default.onCommandStatus:(II)V
0a16dc: 0e00                                   |0000: return-void
      catches       : (none)
      positions     :
        0x0000 line=19
      locals        :
        0x0000 - 0x0001 reg=0 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;
        0x0000 - 0x0001 reg=1 ocf I
        0x0000 - 0x0001 reg=2 status I

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;)
      name          : 'onEvent'
      type          : '(I[B)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 3
      ins           : 3
      outs          : 0
      insns size    : 1 16-bit code units
0a16e0:                                        |[0a16e0] android.bluetooth.IBluetoothHciVendorSpecificCallback$Default.onEvent:(I[B)V
0a16f0: 0e00                                   |0000: return-void
      catches       : (none)
      positions     :
        0x0000 line=25
      locals        :
        0x0000 - 0x0001 reg=0 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Default;
        0x0000 - 0x0001 reg=1 code I
        0x0000 - 0x0001 reg=2 data [B

  source_file_idx   : 2987 (IBluetoothHciVendorSpecificCallback.java)

Class #817            -
  Class descriptor  : 'Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;'
  Access flags      : 0x0010 (FINAL)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
 'Landroid/bluetooth/IBluetoothHciVendorSpecificCallback;'
  Static fields     -
  Instance fields   -
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;)
      name          : 'mRemote'
      type          : 'Landroid/os/IBinder;'
      access        : 0x0002 (PRIVATE)
      hiddenapi     : 0x0002 (BLOCKED)
  Direct methods    -
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;)
      name          : '<init>'
      type          : '(Landroid/os/IBinder;)V'
      access        : 0x10000 (CONSTRUCTOR)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 2
      ins           : 2
      outs          : 1
      insns size    : 6 16-bit code units
0a1724:                                        |[0a1724] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub$Proxy.<init>:(Landroid/os/IBinder;)V
0a1734: 7010 1529 0000                         |0000: invoke-direct {v0}, Ljava/lang/Object;.<init>:()V // method@2915
0a173a: 5b01 830e                              |0003: iput-object v1, v0, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.mRemote:Landroid/os/IBinder; // field@0e83
0a173e: 0e00                                   |0005: return-void
      catches       : (none)
      positions     :
        0x0000 line=152
        0x0003 line=153
        0x0005 line=154
      locals        :
        0x0000 - 0x0006 reg=0 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;
        0x0000 - 0x0006 reg=1 remote Landroid/os/IBinder;

  Virtual methods   -
 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;)
      name          : 'asBinder'
      type          : '()Landroid/os/IBinder;'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0020 (SDK,TEST-API)
      code          -
      registers     : 2
      ins           : 1
      outs          : 0
      insns size    : 3 16-bit code units
0a16f4:                                        |[0a16f4] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub$Proxy.asBinder:()Landroid/os/IBinder;
0a1704: 5410 830e                              |0000: iget-object v0, v1, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.mRemote:Landroid/os/IBinder; // field@0e83
0a1708: 1100                                   |0002: return-object v0
      catches       : (none)
      positions     :
        0x0000 line=157
      locals        :
        0x0000 - 0x0003 reg=1 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;)
      name          : 'getInterfaceDescriptor'
      type          : '()Ljava/lang/String;'
      access        : 0x0011 (PUBLIC FINAL)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 2
      ins           : 1
      outs          : 0
      insns size    : 3 16-bit code units
0a170c:                                        |[0a170c] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub$Proxy.getInterfaceDescriptor:()Ljava/lang/String;
0a171c: 1a00 c91c                              |0000: const-string v0, "android.bluetooth.IBluetoothHciVendorSpecificCallback" // string@1cc9
0a1720: 1100                                   |0002: return-object v0
      catches       : (none)
      positions     :
        0x0000 line=161
      locals        :
        0x0000 - 0x0003 reg=1 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;)
      name          : 'onAclEvent'
      type          : '(I[B)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 8
      ins           : 3
      outs          : 5
      insns size    : 37 16-bit code units
0a1740:                                        |[0a1740] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub$Proxy.onAclEvent:(I[B)V
0a1750: 6e10 a316 0500                         |0000: invoke-virtual {v5}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.asBinder:()Landroid/os/IBinder; // method@16a3
0a1756: 0c00                                   |0003: move-result-object v0
0a1758: 7110 ad22 0000                         |0004: invoke-static {v0}, Landroid/os/Parcel;.obtain:(Landroid/os/IBinder;)Landroid/os/Parcel; // method@22ad
0a175e: 0c00                                   |0007: move-result-object v0
0a1760: 1a01 c91c                              |0008: const-string v1, "android.bluetooth.IBluetoothHciVendorSpecificCallback" // string@1cc9
0a1764: 6e20 c622 1000                         |000a: invoke-virtual {v0, v1}, Landroid/os/Parcel;.writeInterfaceToken:(Ljava/lang/String;)V // method@22c6
0a176a: 6e20 c422 6000                         |000d: invoke-virtual {v0, v6}, Landroid/os/Parcel;.writeInt:(I)V // method@22c4
0a1770: 6e20 c122 7000                         |0010: invoke-virtual {v0, v7}, Landroid/os/Parcel;.writeByteArray:([B)V // method@22c1
0a1776: 5451 830e                              |0013: iget-object v1, v5, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.mRemote:Landroid/os/IBinder; // field@0e83
0a177a: 1202                                   |0015: const/4 v2, #int 0 // #0
0a177c: 1213                                   |0016: const/4 v3, #int 1 // #1
0a177e: 1244                                   |0017: const/4 v4, #int 4 // #4
0a1780: 7253 9d22 4120                         |0018: invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;.transact:(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z // method@229d
0a1786: 6e10 bd22 0000                         |001b: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
0a178c: 0000                                   |001e: nop // spacer
0a178e: 0e00                                   |001f: return-void
0a1790: 0d01                                   |0020: move-exception v1
0a1792: 6e10 bd22 0000                         |0021: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
0a1798: 2701                                   |0024: throw v1
      catches       : 1
        0x0008 - 0x001b
          <any> -> 0x0020
      positions     :
        0x0000 line=204
        0x0008 line=206
        0x000d line=207
        0x0010 line=208
        0x0013 line=209
        0x001b line=212
        0x001e line=213
        0x001f line=214
        0x0020 line=212
        0x0024 line=213
      locals        :
        0x0008 - 0x0025 reg=0 _data Landroid/os/Parcel;
        0x0000 - 0x0025 reg=5 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;
        0x0000 - 0x0025 reg=6 handle I
        0x0000 - 0x0025 reg=7 data [B

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;)
      name          : 'onCommandComplete'
      type          : '(I[B)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 8
      ins           : 3
      outs          : 5
      insns size    : 37 16-bit code units
0a17a8:                                        |[0a17a8] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub$Proxy.onCommandComplete:(I[B)V
0a17b8: 6e10 a316 0500                         |0000: invoke-virtual {v5}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.asBinder:()Landroid/os/IBinder; // method@16a3
0a17be: 0c00                                   |0003: move-result-object v0
0a17c0: 7110 ad22 0000                         |0004: invoke-static {v0}, Landroid/os/Parcel;.obtain:(Landroid/os/IBinder;)Landroid/os/Parcel; // method@22ad
0a17c6: 0c00                                   |0007: move-result-object v0
0a17c8: 1a01 c91c                              |0008: const-string v1, "android.bluetooth.IBluetoothHciVendorSpecificCallback" // string@1cc9
0a17cc: 6e20 c622 1000                         |000a: invoke-virtual {v0, v1}, Landroid/os/Parcel;.writeInterfaceToken:(Ljava/lang/String;)V // method@22c6
0a17d2: 6e20 c422 6000                         |000d: invoke-virtual {v0, v6}, Landroid/os/Parcel;.writeInt:(I)V // method@22c4
0a17d8: 6e20 c122 7000                         |0010: invoke-virtual {v0, v7}, Landroid/os/Parcel;.writeByteArray:([B)V // method@22c1
0a17de: 5451 830e                              |0013: iget-object v1, v5, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.mRemote:Landroid/os/IBinder; // field@0e83
0a17e2: 1202                                   |0015: const/4 v2, #int 0 // #0
0a17e4: 1213                                   |0016: const/4 v3, #int 1 // #1
0a17e6: 1224                                   |0017: const/4 v4, #int 2 // #2
0a17e8: 7253 9d22 4120                         |0018: invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;.transact:(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z // method@229d
0a17ee: 6e10 bd22 0000                         |001b: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
0a17f4: 0000                                   |001e: nop // spacer
0a17f6: 0e00                                   |001f: return-void
0a17f8: 0d01                                   |0020: move-exception v1
0a17fa: 6e10 bd22 0000                         |0021: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
0a1800: 2701                                   |0024: throw v1
      catches       : 1
        0x0008 - 0x001b
          <any> -> 0x0020
      positions     :
        0x0000 line=178
        0x0008 line=180
        0x000d line=181
        0x0010 line=182
        0x0013 line=183
        0x001b line=186
        0x001e line=187
        0x001f line=188
        0x0020 line=186
        0x0024 line=187
      locals        :
        0x0008 - 0x0025 reg=0 _data Landroid/os/Parcel;
        0x0000 - 0x0025 reg=5 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;
        0x0000 - 0x0025 reg=6 ocf I
        0x0000 - 0x0025 reg=7 returnParameters [B

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;)
      name          : 'onCommandStatus'
      type          : '(II)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 7
      ins           : 3
      outs          : 5
      insns size    : 36 16-bit code units
0a1810:                                        |[0a1810] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub$Proxy.onCommandStatus:(II)V
0a1820: 6e10 a316 0400                         |0000: invoke-virtual {v4}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.asBinder:()Landroid/os/IBinder; // method@16a3
0a1826: 0c00                                   |0003: move-result-object v0
0a1828: 7110 ad22 0000                         |0004: invoke-static {v0}, Landroid/os/Parcel;.obtain:(Landroid/os/IBinder;)Landroid/os/Parcel; // method@22ad
0a182e: 0c00                                   |0007: move-result-object v0
0a1830: 1a01 c91c                              |0008: const-string v1, "android.bluetooth.IBluetoothHciVendorSpecificCallback" // string@1cc9
0a1834: 6e20 c622 1000                         |000a: invoke-virtual {v0, v1}, Landroid/os/Parcel;.writeInterfaceToken:(Ljava/lang/String;)V // method@22c6
0a183a: 6e20 c422 5000                         |000d: invoke-virtual {v0, v5}, Landroid/os/Parcel;.writeInt:(I)V // method@22c4
0a1840: 6e20 c422 6000                         |0010: invoke-virtual {v0, v6}, Landroid/os/Parcel;.writeInt:(I)V // method@22c4
0a1846: 5441 830e                              |0013: iget-object v1, v4, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.mRemote:Landroid/os/IBinder; // field@0e83
0a184a: 1202                                   |0015: const/4 v2, #int 0 // #0
0a184c: 1213                                   |0016: const/4 v3, #int 1 // #1
0a184e: 7253 9d22 3120                         |0017: invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;.transact:(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z // method@229d
0a1854: 6e10 bd22 0000                         |001a: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
0a185a: 0000                                   |001d: nop // spacer
0a185c: 0e00                                   |001e: return-void
0a185e: 0d01                                   |001f: move-exception v1
0a1860: 6e10 bd22 0000                         |0020: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
0a1866: 2701                                   |0023: throw v1
      catches       : 1
        0x0008 - 0x001a
          <any> -> 0x001f
      positions     :
        0x0000 line=165
        0x0008 line=167
        0x000d line=168
        0x0010 line=169
        0x0013 line=170
        0x001a line=173
        0x001d line=174
        0x001e line=175
        0x001f line=173
        0x0023 line=174
      locals        :
        0x0008 - 0x0024 reg=0 _data Landroid/os/Parcel;
        0x0000 - 0x0024 reg=4 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;
        0x0000 - 0x0024 reg=5 ocf I
        0x0000 - 0x0024 reg=6 status I

 (in Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;)
      name          : 'onEvent'
      type          : '(I[B)V'
      access        : 0x0001 (PUBLIC)
      hiddenapi     : 0x0002 (BLOCKED)
      code          -
      registers     : 8
      ins           : 3
      outs          : 5
      insns size    : 37 16-bit code units
0a1874:                                        |[0a1874] android.bluetooth.IBluetoothHciVendorSpecificCallback$Stub$Proxy.onEvent:(I[B)V
0a1884: 6e10 a316 0500                         |0000: invoke-virtual {v5}, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.asBinder:()Landroid/os/IBinder; // method@16a3
0a188a: 0c00                                   |0003: move-result-object v0
0a188c: 7110 ad22 0000                         |0004: invoke-static {v0}, Landroid/os/Parcel;.obtain:(Landroid/os/IBinder;)Landroid/os/Parcel; // method@22ad
0a1892: 0c00                                   |0007: move-result-object v0
0a1894: 1a01 c91c                              |0008: const-string v1, "android.bluetooth.IBluetoothHciVendorSpecificCallback" // string@1cc9
0a1898: 6e20 c622 1000                         |000a: invoke-virtual {v0, v1}, Landroid/os/Parcel;.writeInterfaceToken:(Ljava/lang/String;)V // method@22c6
0a189e: 6e20 c422 6000                         |000d: invoke-virtual {v0, v6}, Landroid/os/Parcel;.writeInt:(I)V // method@22c4
0a18a4: 6e20 c122 7000                         |0010: invoke-virtual {v0, v7}, Landroid/os/Parcel;.writeByteArray:([B)V // method@22c1
0a18aa: 5451 830e                              |0013: iget-object v1, v5, Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;.mRemote:Landroid/os/IBinder; // field@0e83
0a18ae: 1202                                   |0015: const/4 v2, #int 0 // #0
0a18b0: 1213                                   |0016: const/4 v3, #int 1 // #1
0a18b2: 1234                                   |0017: const/4 v4, #int 3 // #3
0a18b4: 7253 9d22 4120                         |0018: invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;.transact:(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z // method@229d
0a18ba: 6e10 bd22 0000                         |001b: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
0a18c0: 0000                                   |001e: nop // spacer
0a18c2: 0e00                                   |001f: return-void
0a18c4: 0d01                                   |0020: move-exception v1
0a18c6: 6e10 bd22 0000                         |0021: invoke-virtual {v0}, Landroid/os/Parcel;.recycle:()V // method@22bd
0a18cc: 2701                                   |0024: throw v1
      catches       : 1
        0x0008 - 0x001b
          <any> -> 0x0020
      positions     :
        0x0000 line=191
        0x0008 line=193
        0x000d line=194
        0x0010 line=195
        0x0013 line=196
        0x001b line=199
        0x001e line=200
        0x001f line=201
        0x0020 line=199
        0x0024 line=200
      locals        :
        0x0008 - 0x0025 reg=0 _data Landroid/os/Parcel;
        0x0000 - 0x0025 reg=5 this Landroid/bluetooth/IBluetoothHciVendorSpecificCallback$Stub$Proxy;
        0x0000 - 0x0025 reg=6 code I
        0x0000 - 0x0025 reg=7 data [B

  source_file_idx   : 2987 (IBluetoothHciVendorSpecificCallback.java)

Class #818            -
  Class descriptor  : 'Landroid/bluetooth/IBluetoothHeadset;'
  Access flags      : 0x0601 (PUBLIC INTERFACE ABSTRACT)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -