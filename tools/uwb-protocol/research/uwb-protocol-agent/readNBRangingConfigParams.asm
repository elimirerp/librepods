
-[CLDurianDevice readNBRangingConfigParams:]:
0x101467ea4:  7f 23 03 d5   pacibsp
0x101467ea8:  ff 03 01 d1   sub	sp, sp, #0x40
0x101467eac:  f4 4f 02 a9   stp	x20, x19, [sp, #0x20]
0x101467eb0:  fd 7b 03 a9   stp	fp, lr, [sp, #0x30]
0x101467eb4:  fd c3 00 91   add	fp, sp, #0x30
0x101467eb8:  f3 03 02 aa   mov	x19, x2
0x101467ebc:  48 79 00 f0   adrp	x8, 0x102392000
0x101467ec0:  08 c5 41 f9   ldr	x8, [x8, #0x388] ; __got.___stack_chk_guard
0x101467ec4:  08 01 40 f9   ldr	x8, [x8]
0x101467ec8:  e8 0f 00 f9   str	x8, [sp, #0x18]
0x101467ecc:  48 79 00 d0   adrp	x8, 0x102391000
0x101467ed0:  08 a9 46 f9   ldr	x8, [x8, #0xd50] ; __got._CLDurianNBRangingVersionKey
0x101467ed4:  02 01 40 f9   ldr	x2, [x8]
0x101467ed8:  e0 03 13 aa   mov	x0, x19
0x101467edc:  f9 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467ee0:  58 d2 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101467ee4:  e0 17 00 39   strb	w0, [sp, #0x5]
0x101467ee8:  48 79 00 d0   adrp	x8, 0x102391000
0x101467eec:  08 81 46 f9   ldr	x8, [x8, #0xd00] ; __got._CLDurianNBRangingMMSFragCountryCodeKey
0x101467ef0:  02 01 40 f9   ldr	x2, [x8]
0x101467ef4:  e0 03 13 aa   mov	x0, x19
0x101467ef8:  f2 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467efc:  51 d2 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101467f00:  e0 1b 00 39   strb	w0, [sp, #0x6]
0x101467f04:  48 79 00 d0   adrp	x8, 0x102391000
0x101467f08:  08 99 46 f9   ldr	x8, [x8, #0xd30] ; __got._CLDurianNBRangingNBCountryCodesKey
0x101467f0c:  02 01 40 f9   ldr	x2, [x8]
0x101467f10:  e0 03 13 aa   mov	x0, x19
0x101467f14:  eb 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467f18:  4a d2 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101467f1c:  e0 1f 00 39   strb	w0, [sp, #0x7]
0x101467f20:  48 79 00 d0   adrp	x8, 0x102391000
0x101467f24:  08 a5 46 f9   ldr	x8, [x8, #0xd48] ; __got._CLDurianNBRangingSarCountryCodesKey
0x101467f28:  02 01 40 f9   ldr	x2, [x8]
0x101467f2c:  e0 03 13 aa   mov	x0, x19
0x101467f30:  e4 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467f34:  43 d2 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101467f38:  e0 23 00 39   strb	w0, [sp, #0x8]
0x101467f3c:  48 79 00 d0   adrp	x8, 0x102391000
0x101467f40:  08 75 46 f9   ldr	x8, [x8, #0xce8] ; __got._CLDurianNBRangingAcqTimeoutKey
0x101467f44:  02 01 40 f9   ldr	x2, [x8]
0x101467f48:  e0 03 13 aa   mov	x0, x19
0x101467f4c:  dd 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467f50:  3c d2 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101467f54:  e0 27 00 39   strb	w0, [sp, #0x9]
0x101467f58:  48 79 00 d0   adrp	x8, 0x102391000
0x101467f5c:  08 71 46 f9   ldr	x8, [x8, #0xce0] ; __got._CLDurianNBRangingAcqRetryIntervalKey
0x101467f60:  02 01 40 f9   ldr	x2, [x8]
0x101467f64:  e0 03 13 aa   mov	x0, x19
0x101467f68:  d6 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467f6c:  35 d2 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101467f70:  e0 2b 00 39   strb	w0, [sp, #0xa]
0x101467f74:  48 79 00 d0   adrp	x8, 0x102391000
0x101467f78:  08 6d 46 f9   ldr	x8, [x8, #0xcd8] ; __got._CLDurianNBRangingAcqDitherMaxKey
0x101467f7c:  02 01 40 f9   ldr	x2, [x8]
0x101467f80:  e0 03 13 aa   mov	x0, x19
0x101467f84:  cf 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467f88:  2e d2 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101467f8c:  e0 2f 00 39   strb	w0, [sp, #0xb]
0x101467f90:  48 79 00 d0   adrp	x8, 0x102391000
0x101467f94:  08 a1 46 f9   ldr	x8, [x8, #0xd40] ; __got._CLDurianNBRangingRangingTimeoutKey
0x101467f98:  02 01 40 f9   ldr	x2, [x8]
0x101467f9c:  e0 03 13 aa   mov	x0, x19
0x101467fa0:  c8 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467fa4:  27 d2 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101467fa8:  e0 33 00 39   strb	w0, [sp, #0xc]
0x101467fac:  48 79 00 d0   adrp	x8, 0x102391000
0x101467fb0:  08 9d 46 f9   ldr	x8, [x8, #0xd38] ; __got._CLDurianNBRangingNBMaskNapChannelKey
0x101467fb4:  14 01 40 f9   ldr	x20, [x8]
0x101467fb8:  e0 03 13 aa   mov	x0, x19
0x101467fbc:  e2 03 14 aa   mov	x2, x20
0x101467fc0:  c0 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467fc4:  47 d2 1b 94   bl	j__objc_msgSend(x0, "unsignedShortValue")
0x101467fc8:  e0 37 00 39   strb	w0, [sp, #0xd]
0x101467fcc:  e0 03 13 aa   mov	x0, x19
0x101467fd0:  e2 03 14 aa   mov	x2, x20
0x101467fd4:  bb 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467fd8:  42 d2 1b 94   bl	j__objc_msgSend(x0, "unsignedShortValue")
0x101467fdc:  08 7c 08 53   lsr	w8, w0, #0x8
0x101467fe0:  e8 3b 00 39   strb	w8, [sp, #0xe]
0x101467fe4:  48 79 00 d0   adrp	x8, 0x102391000
0x101467fe8:  08 95 46 f9   ldr	x8, [x8, #0xd28] ; __got._CLDurianNBRangingNBChannelSelectMaskKey
0x101467fec:  14 01 40 f9   ldr	x20, [x8]
0x101467ff0:  e0 03 13 aa   mov	x0, x19
0x101467ff4:  e2 03 14 aa   mov	x2, x20
0x101467ff8:  b2 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101467ffc:  39 d2 1b 94   bl	j__objc_msgSend(x0, "unsignedShortValue")
0x101468000:  e0 3f 00 39   strb	w0, [sp, #0xf]
0x101468004:  e0 03 13 aa   mov	x0, x19
0x101468008:  e2 03 14 aa   mov	x2, x20
0x10146800c:  ad 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101468010:  34 d2 1b 94   bl	j__objc_msgSend(x0, "unsignedShortValue")
0x101468014:  08 7c 08 53   lsr	w8, w0, #0x8
0x101468018:  e8 43 00 39   strb	w8, [sp, #0x10]
0x10146801c:  48 79 00 b0   adrp	x8, 0x102391000
0x101468020:  08 89 46 f9   ldr	x8, [x8, #0xd10] ; __got._CLDurianNBRangingMMSPSRKey
0x101468024:  02 01 40 f9   ldr	x2, [x8]
0x101468028:  e0 03 13 aa   mov	x0, x19
0x10146802c:  a5 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101468030:  04 d2 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101468034:  e0 47 00 39   strb	w0, [sp, #0x11]
0x101468038:  48 79 00 b0   adrp	x8, 0x102391000
0x10146803c:  08 85 46 f9   ldr	x8, [x8, #0xd08] ; __got._CLDurianNBRangingMMSGapKey
0x101468040:  02 01 40 f9   ldr	x2, [x8]
0x101468044:  e0 03 13 aa   mov	x0, x19
0x101468048:  9e 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x10146804c:  fd d1 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101468050:  e0 4b 00 39   strb	w0, [sp, #0x12]
0x101468054:  48 79 00 b0   adrp	x8, 0x102391000
0x101468058:  08 8d 46 f9   ldr	x8, [x8, #0xd18] ; __got._CLDurianNBRangingMMSSequenceIdxKey
0x10146805c:  02 01 40 f9   ldr	x2, [x8]
0x101468060:  e0 03 13 aa   mov	x0, x19
0x101468064:  97 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101468068:  f6 d1 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x10146806c:  e0 4f 00 39   strb	w0, [sp, #0x13]
0x101468070:  48 79 00 b0   adrp	x8, 0x102391000
0x101468074:  08 91 46 f9   ldr	x8, [x8, #0xd20] ; __got._CLDurianNBRangingMMSSlotSizeKey
0x101468078:  02 01 40 f9   ldr	x2, [x8]
0x10146807c:  e0 03 13 aa   mov	x0, x19
0x101468080:  90 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x101468084:  ef d1 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x101468088:  e0 53 00 39   strb	w0, [sp, #0x14]
0x10146808c:  48 79 00 b0   adrp	x8, 0x102391000
0x101468090:  08 7d 46 f9   ldr	x8, [x8, #0xcf8] ; __got._CLDurianNBRangingIntervalKey
0x101468094:  14 01 40 f9   ldr	x20, [x8]
0x101468098:  e0 03 13 aa   mov	x0, x19
0x10146809c:  e2 03 14 aa   mov	x2, x20
0x1014680a0:  88 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x1014680a4:  0f d2 1b 94   bl	j__objc_msgSend(x0, "unsignedShortValue")
0x1014680a8:  e0 57 00 39   strb	w0, [sp, #0x15]
0x1014680ac:  e0 03 13 aa   mov	x0, x19
0x1014680b0:  e2 03 14 aa   mov	x2, x20
0x1014680b4:  83 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x1014680b8:  0a d2 1b 94   bl	j__objc_msgSend(x0, "unsignedShortValue")
0x1014680bc:  08 7c 08 53   lsr	w8, w0, #0x8
0x1014680c0:  e8 5b 00 39   strb	w8, [sp, #0x16]
0x1014680c4:  48 79 00 b0   adrp	x8, 0x102391000
0x1014680c8:  08 79 46 f9   ldr	x8, [x8, #0xcf0] ; __got._CLDurianNBRangingDebugFlagsKey
0x1014680cc:  02 01 40 f9   ldr	x2, [x8]
0x1014680d0:  e0 03 13 aa   mov	x0, x19
0x1014680d4:  7b 53 1b 94   bl	j__objc_msgSend(x0, "objectForKeyedSubscript:")
0x1014680d8:  da d1 1b 94   bl	j__objc_msgSend(x0, "unsignedCharValue")
0x1014680dc:  e0 5f 00 39   strb	w0, [sp, #0x17]
0x1014680e0:  48 79 00 b0   adrp	x8, 0x102391000
0x1014680e4:  00 21 44 f9   ldr	x0, [x8, #0x840] ; __got._OBJC_CLASS_$_NSData
0x1014680e8:  e2 17 00 91   add	x2, sp, #0x5
0x1014680ec:  63 02 80 52   mov	w3, #0x13
0x1014680f0:  54 eb 1a 94   bl	j__objc_msgSend(x0, "dataWithBytes:length:")
0x1014680f4:  e8 0f 40 f9   ldr	x8, [sp, #0x18]
0x1014680f8:  49 79 00 d0   adrp	x9, 0x102392000
0x1014680fc:  29 c5 41 f9   ldr	x9, [x9, #0x388] ; __got.___stack_chk_guard
0x101468100:  29 01 40 f9   ldr	x9, [x9]
0x101468104:  3f 01 08 eb   cmp	x9, x8
0x101468108:  a1 00 00 54   b.ne	loc_10146811c ; ⤵ 0x14
0x10146810c:  fd 7b 43 a9   ldp	fp, lr, [sp, #0x30]
0x101468110:  f4 4f 42 a9   ldp	x20, x19, [sp, #0x20]
0x101468114:  ff 03 01 91   add	sp, sp, #0x40
0x101468118:  ff 0f 5f d6   retab
0x10146811c:  ; loc_10146811c
0x10146811c:  09 b4 1a 94   bl	j____stack_chk_fail

-[CLDurianDevice uuid]:
0x101468120:  00 b0 40 f9   ldr	x0, [x0, #0x160]
0x101468124:  c0 03 5f d6   ret

-[CLDurianDevice leashState]:
0x101468128:  00 b4 40 f9   ldr	x0, [x0, #0x168]
0x10146812c:  c0 03 5f d6   ret

-[CLDurianDevice setLeashState:]:
0x101468130:  02 b4 00 f9   str	x2, [x0, #0x168]
0x101468134:  c0 03 5f d6   ret

-[CLDurianDevice retrievingPersonalizationInformation]:
0x101468138:  08 a0 44 39   ldrb	w8, [x0, #0x128]
0x10146813c:  00 01 00 12   and	w0, w8, #0x1
0x101468140:  c0 03 5f d6   ret

-[CLDurianDevice firmwareUpdateInProgress]:
0x101468144:  08 a4 44 39   ldrb	w8, [x0, #0x129]
0x101468148:  00 01 00 12   and	w0, w8, #0x1
0x10146814c:  c0 03 5f d6   ret

-[CLDurianDevice firmwareUpdateReboot]:
0x101468150:  08 a8 44 39   ldrb	w8, [x0, #0x12a]
0x101468154:  00 01 00 12   and	w0, w8, #0x1
0x101468158:  c0 03 5f d6   ret

-[CLDurianDevice abortingFirmwareUpdate]:
0x10146815c:  08 ac 44 39   ldrb	w8, [x0, #0x12b]
0x101468160:  00 01 00 12   and	w0, w8, #0x1
0x101468164:  c0 03 5f d6   ret

-[CLDurianDevice firmwareUpdateMode]:
0x101468168:  08 b0 44 39   ldrb	w8, [x0, #0x12c]
0x10146816c:  00 01 00 12   and	w0, w8, #0x1
0x101468170:  c0 03 5f d6   ret

-[CLDurianDevice activePeripheral]:
0x101468174:  00 0c 40 f9   ldr	x0, [x0, #0x18]
0x101468178:  c0 03 5f d6   ret

-[CLDurianDevice activePeripheralMaterial]:
0x10146817c:  00 10 40 f9   ldr	x0, [x0, #0x20]
0x101468180:  c0 03 5f d6   ret

-[CLDurianDevice setActivePeripheralMaterial:]:
0x101468184:  03 04 80 52   mov	w3, #0x20
0x101468188:  22 b8 1a 14   b	j__objc_setProperty_nonatomic

-[CLDurianDevice activePeripheralReady]:
0x10146818c:  00 b4 44 39   ldrb	w0, [x0, #0x12d]
0x101468190:  c0 03 5f d6   ret

-[CLDurianDevice connectCondition]:
0x101468194:  00 34 40 f9   ldr	x0, [x0, #0x68]
0x101468198:  c0 03 5f d6   ret

-[CLDurianDevice setConnectCondition:]:
0x10146819c:  02 34 00 f9   str	x2, [x0, #0x68]
0x1014681a0:  c0 03 5f d6   ret

-[CLDurianDevice proactiveMaintenanceCount]:
0x1014681a4:  00 40 41 b9   ldr	w0, [x0, #0x140]
0x1014681a8:  c0 03 5f d6   ret

-[CLDurianDevice setProactiveMaintenanceCount:]:
0x1014681ac:  02 40 01 b9   str	w2, [x0, #0x140]
0x1014681b0:  c0 03 5f d6   ret

-[CLDurianDevice isMultiConnectionEnabled]:
0x1014681b4:  00 40 42 39   ldrb	w0, [x0, #0x90]
0x1014681b8:  c0 03 5f d6   ret

-[CLDurianDevice setIsMultiConnectionEnabled:]:
0x1014681bc:  02 40 02 39   strb	w2, [x0, #0x90]
0x1014681c0:  c0 03 5f d6   ret

-[CLDurianDevice lastMaxConnectionsSent]:
0x1014681c4:  00 b8 44 39   ldrb	w0, [x0, #0x12e]
0x1014681c8:  c0 03 5f d6   ret

-[CLDurianDevice setLastMaxConnectionsSent:]:
0x1014681cc:  02 b8 04 39   strb	w2, [x0, #0x12e]
0x1014681d0:  c0 03 5f d6   ret

-[CLDurianDevice nearOwnerTimeout]:
0x1014681d4:  00 78 42 79   ldrh	w0, [x0, #0x13c]
0x1014681d8:  c0 03 5f d6   ret

-[CLDurianDevice setNearOwnerTimeout:]:
0x1014681dc:  02 78 02 79   strh	w2, [x0, #0x13c]
0x1014681e0:  c0 03 5f d6   ret

-[CLDurianDevice mutexState]:
0x1014681e4:  00 4c 40 f9   ldr	x0, [x0, #0x98]
0x1014681e8:  c0 03 5f d6   ret

-[CLDurianDevice setMutexState:]:
0x1014681ec:  02 4c 00 f9   str	x2, [x0, #0x98]
0x1014681f0:  c0 03 5f d6   ret

-[CLDurianDevice isPlayingSound]:
0x1014681f4:  00 bc 44 39   ldrb	w0, [x0, #0x12f]
0x1014681f8:  c0 03 5f d6   ret

-[CLDurianDevice setIsPlayingSound:]:
0x1014681fc:  02 bc 04 39   strb	w2, [x0, #0x12f]
0x101468200:  c0 03 5f d6   ret

-[CLDurianDevice isRoseInitialized]:
0x101468204:  08 c0 44 39   ldrb	w8, [x0, #0x130]
0x101468208:  00 01 00 12   and	w0, w8, #0x1
0x10146820c:  c0 03 5f d6   ret

-[CLDurianDevice isRanging]:
0x101468210:  00 c4 44 39   ldrb	w0, [x0, #0x131]
0x101468214:  c0 03 5f d6   ret

-[CLDurianDevice setIsRanging:]:
0x101468218:  02 c4 04 39   strb	w2, [x0, #0x131]
0x10146821c:  c0 03 5f d6   ret

-[CLDurianDevice btFindingState]:
0x101468220:  00 b8 40 f9   ldr	x0, [x0, #0x170]
0x101468224:  c0 03 5f d6   ret

-[CLDurianDevice activeTaskAcknowledged]:
0x101468228:  00 60 41 39   ldrb	w0, [x0, #0x58]
0x10146822c:  c0 03 5f d6   ret

-[CLDurianDevice beacon]:
0x101468230:  00 bc 40 f9   ldr	x0, [x0, #0x178]
0x101468234:  c0 03 5f d6   ret

-[CLDurianDevice unownedBeacon]:
0x101468238:  02 30 80 52   mov	w2, #0x180
0x10146823c:  23 00 80 52   mov	w3, #0x1
0x101468240:  3c b7 1a 14   b	j__objc_getProperty

-[CLDurianDevice setUnownedBeacon:]:
0x101468244:  03 30 80 52   mov	w3, #0x180
0x101468248:  ea b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice lastAlertDate]:
0x10146824c:  00 c4 40 f9   ldr	x0, [x0, #0x188]
0x101468250:  c0 03 5f d6   ret

-[CLDurianDevice setLastAlertDate:]:
0x101468254:  03 31 80 52   mov	w3, #0x188
0x101468258:  ee b7 1a 14   b	j__objc_setProperty_nonatomic

-[CLDurianDevice quarterHourDisconnect]:
0x10146825c:  00 44 c2 39   ldrsb	w0, [x0, #0x91]
0x101468260:  c0 03 5f d6   ret

-[CLDurianDevice setQuarterHourDisconnect:]:
0x101468264:  02 44 02 39   strb	w2, [x0, #0x91]
0x101468268:  c0 03 5f d6   ret

-[CLDurianDevice lastReconciledCriteria]:
0x10146826c:  00 c8 40 f9   ldr	x0, [x0, #0x190]
0x101468270:  c0 03 5f d6   ret

-[CLDurianDevice setLastReconciledCriteria:]:
0x101468274:  03 32 80 52   mov	w3, #0x190
0x101468278:  e6 b7 1a 14   b	j__objc_setProperty_nonatomic

-[CLDurianDevice lastReconciledAddress]:
0x10146827c:  00 cc 40 f9   ldr	x0, [x0, #0x198]
0x101468280:  c0 03 5f d6   ret

-[CLDurianDevice setLastReconciledAddress:]:
0x101468284:  03 33 80 52   mov	w3, #0x198
0x101468288:  e2 b7 1a 14   b	j__objc_setProperty_nonatomic

-[CLDurianDevice lastObservedIndex]:
0x10146828c:  00 44 41 b9   ldr	w0, [x0, #0x144]
0x101468290:  c0 03 5f d6   ret

-[CLDurianDevice setLastObservedIndex:]:
0x101468294:  02 44 01 b9   str	w2, [x0, #0x144]
0x101468298:  c0 03 5f d6   ret

-[CLDurianDevice lastObservationTime]:
0x10146829c:  00 d0 40 fd   ldr	d0, [x0, #0x1a0]
0x1014682a0:  c0 03 5f d6   ret

-[CLDurianDevice setLastObservationTime:]:
0x1014682a4:  00 d0 00 fd   str	d0, [x0, #0x1a0]
0x1014682a8:  c0 03 5f d6   ret

-[CLDurianDevice lastConnectionTime]:
0x1014682ac:  00 d4 40 f9   ldr	x0, [x0, #0x1a8]
0x1014682b0:  c0 03 5f d6   ret

-[CLDurianDevice setLastConnectionTime:]:
0x1014682b4:  02 d4 00 f9   str	x2, [x0, #0x1a8]
0x1014682b8:  c0 03 5f d6   ret

-[CLDurianDevice lastDisconnectionTime]:
0x1014682bc:  00 d8 40 f9   ldr	x0, [x0, #0x1b0]
0x1014682c0:  c0 03 5f d6   ret

-[CLDurianDevice setLastDisconnectionTime:]:
0x1014682c4:  02 d8 00 f9   str	x2, [x0, #0x1b0]
0x1014682c8:  c0 03 5f d6   ret

-[CLDurianDevice lastProactiveMaintenanceTime]:
0x1014682cc:  00 dc 40 f9   ldr	x0, [x0, #0x1b8]
0x1014682d0:  c0 03 5f d6   ret

-[CLDurianDevice setLastProactiveMaintenanceTime:]:
0x1014682d4:  02 dc 00 f9   str	x2, [x0, #0x1b8]
0x1014682d8:  c0 03 5f d6   ret

-[CLDurianDevice keyRollInterval]:
0x1014682dc:  00 48 41 b9   ldr	w0, [x0, #0x148]
0x1014682e0:  c0 03 5f d6   ret

-[CLDurianDevice setKeyRollInterval:]:
0x1014682e4:  02 48 01 b9   str	w2, [x0, #0x148]
0x1014682e8:  c0 03 5f d6   ret

-[CLDurianDevice nearOwnerTimeoutOverride]:
0x1014682ec:  00 4c 41 b9   ldr	w0, [x0, #0x14c]
0x1014682f0:  c0 03 5f d6   ret

-[CLDurianDevice setNearOwnerTimeoutOverride:]:
0x1014682f4:  02 4c 01 b9   str	w2, [x0, #0x14c]
0x1014682f8:  c0 03 5f d6   ret

-[CLDurianDevice connectionLoiType]:
0x1014682fc:  00 e0 40 f9   ldr	x0, [x0, #0x1c0]
0x101468300:  c0 03 5f d6   ret

-[CLDurianDevice setConnectionLoiType:]:
0x101468304:  03 38 80 52   mov	w3, #0x1c0
0x101468308:  c6 b7 1a 14   b	j__objc_setProperty_nonatomic_copy

-[CLDurianDevice connectionVisitState]:
0x10146830c:  00 e4 40 f9   ldr	x0, [x0, #0x1c8]
0x101468310:  c0 03 5f d6   ret

-[CLDurianDevice setConnectionVisitState:]:
0x101468314:  02 e4 00 f9   str	x2, [x0, #0x1c8]
0x101468318:  c0 03 5f d6   ret

-[CLDurianDevice uarpFirmwareVersion]:
0x10146831c:  00 e8 40 f9   ldr	x0, [x0, #0x1d0]
0x101468320:  c0 03 5f d6   ret

-[CLDurianDevice setUarpFirmwareVersion:]:
0x101468324:  03 3a 80 52   mov	w3, #0x1d0
0x101468328:  be b7 1a 14   b	j__objc_setProperty_nonatomic_copy

-[CLDurianDevice beaconUARPFWVersionUpdateFailure]:
0x10146832c:  00 c8 44 39   ldrb	w0, [x0, #0x132]
0x101468330:  c0 03 5f d6   ret

-[CLDurianDevice setBeaconUARPFWVersionUpdateFailure:]:
0x101468334:  02 c8 04 39   strb	w2, [x0, #0x132]
0x101468338:  c0 03 5f d6   ret

-[CLDurianDevice isUnknownPoshAirTag]:
0x10146833c:  08 cc 44 39   ldrb	w8, [x0, #0x133]
0x101468340:  00 01 00 12   and	w0, w8, #0x1
0x101468344:  c0 03 5f d6   ret

-[CLDurianDevice aggressiveAdvertisingTimeout]:
0x101468348:  00 50 41 b9   ldr	w0, [x0, #0x150]
0x10146834c:  c0 03 5f d6   ret

-[CLDurianDevice setAggressiveAdvertisingTimeout:]:
0x101468350:  02 50 01 b9   str	w2, [x0, #0x150]
0x101468354:  c0 03 5f d6   ret

-[CLDurianDevice hawkeyeTestMode]:
0x101468358:  00 d0 44 39   ldrb	w0, [x0, #0x134]
0x10146835c:  c0 03 5f d6   ret

-[CLDurianDevice setHawkeyeTestMode:]:
0x101468360:  02 d0 04 39   strb	w2, [x0, #0x134]
0x101468364:  c0 03 5f d6   ret

-[CLDurianDevice outsideVisitStartTime]:
0x101468368:  00 ec 40 fd   ldr	d0, [x0, #0x1d8]
0x10146836c:  c0 03 5f d6   ret

-[CLDurianDevice setOutsideVisitStartTime:]:
0x101468370:  00 ec 00 fd   str	d0, [x0, #0x1d8]
0x101468374:  c0 03 5f d6   ret

-[CLDurianDevice totalDailyTimeSpentTraveling]:
0x101468378:  00 f0 40 fd   ldr	d0, [x0, #0x1e0]
0x10146837c:  c0 03 5f d6   ret

-[CLDurianDevice setTotalDailyTimeSpentTraveling:]:
0x101468380:  00 f0 00 fd   str	d0, [x0, #0x1e0]
0x101468384:  c0 03 5f d6   ret

-[CLDurianDevice soundCount]:
0x101468388:  00 54 41 b9   ldr	w0, [x0, #0x154]
0x10146838c:  c0 03 5f d6   ret

-[CLDurianDevice rangingCount]:
0x101468390:  00 58 41 b9   ldr	w0, [x0, #0x158]
0x101468394:  c0 03 5f d6   ret

-[CLDurianDevice findingCount]:
0x101468398:  00 5c 41 b9   ldr	w0, [x0, #0x15c]
0x10146839c:  c0 03 5f d6   ret

-[CLDurianDevice leashStartTime]:
0x1014683a0:  00 f4 40 fd   ldr	d0, [x0, #0x1e8]
0x1014683a4:  c0 03 5f d6   ret

-[CLDurianDevice setLeashStartTime:]:
0x1014683a8:  00 f4 00 fd   str	d0, [x0, #0x1e8]
0x1014683ac:  c0 03 5f d6   ret

-[CLDurianDevice leashedInsideVisitStartTime]:
0x1014683b0:  00 f8 40 fd   ldr	d0, [x0, #0x1f0]
0x1014683b4:  c0 03 5f d6   ret

-[CLDurianDevice setLeashedInsideVisitStartTime:]:
0x1014683b8:  00 f8 00 fd   str	d0, [x0, #0x1f0]
0x1014683bc:  c0 03 5f d6   ret

-[CLDurianDevice leashedOutsideVisitStartTime]:
0x1014683c0:  00 fc 40 fd   ldr	d0, [x0, #0x1f8]
0x1014683c4:  c0 03 5f d6   ret

-[CLDurianDevice setLeashedOutsideVisitStartTime:]:
0x1014683c8:  00 fc 00 fd   str	d0, [x0, #0x1f8]
0x1014683cc:  c0 03 5f d6   ret

-[CLDurianDevice totalDailyTimeLeashed]:
0x1014683d0:  00 00 41 fd   ldr	d0, [x0, #0x200]
0x1014683d4:  c0 03 5f d6   ret

-[CLDurianDevice setTotalDailyTimeLeashed:]:
0x1014683d8:  00 00 01 fd   str	d0, [x0, #0x200]
0x1014683dc:  c0 03 5f d6   ret

-[CLDurianDevice totalDailyTimeLeashedInsideVisit]:
0x1014683e0:  00 04 41 fd   ldr	d0, [x0, #0x208]
0x1014683e4:  c0 03 5f d6   ret

-[CLDurianDevice setTotalDailyTimeLeashedInsideVisit:]:
0x1014683e8:  00 04 01 fd   str	d0, [x0, #0x208]
0x1014683ec:  c0 03 5f d6   ret

-[CLDurianDevice totalDailyTimeLeashedOutsideVisit]:
0x1014683f0:  00 08 41 fd   ldr	d0, [x0, #0x210]
0x1014683f4:  c0 03 5f d6   ret

-[CLDurianDevice setTotalDailyTimeLeashedOutsideVisit:]:
0x1014683f8:  00 08 01 fd   str	d0, [x0, #0x210]
0x1014683fc:  c0 03 5f d6   ret

-[CLDurianDevice currentLatency]:
0x101468400:  00 60 40 f9   ldr	x0, [x0, #0xc0]
0x101468404:  c0 03 5f d6   ret

-[CLDurianDevice commandedLatency]:
0x101468408:  00 6c 40 f9   ldr	x0, [x0, #0xd8]
0x10146840c:  c0 03 5f d6   ret

-[CLDurianDevice currentConnectionInterval]:
0x101468410:  00 64 40 fd   ldr	d0, [x0, #0xc8]
0x101468414:  c0 03 5f d6   ret

-[CLDurianDevice setCurrentConnectionInterval:]:
0x101468418:  00 64 00 fd   str	d0, [x0, #0xc8]
0x10146841c:  c0 03 5f d6   ret

-[CLDurianDevice firmwareUpdater]:
0x101468420:  00 0c 41 f9   ldr	x0, [x0, #0x218]
0x101468424:  c0 03 5f d6   ret

-[CLDurianDevice setFirmwareUpdater:]:
0x101468428:  03 43 80 52   mov	w3, #0x218
0x10146842c:  79 b7 1a 14   b	j__objc_setProperty_nonatomic

-[CLDurianDevice activeConnectionAttempt]:
0x101468430:  02 0c 80 52   mov	w2, #0x60
0x101468434:  23 00 80 52   mov	w3, #0x1
0x101468438:  be b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setActiveConnectionAttempt:]:
0x10146843c:  03 0c 80 52   mov	w3, #0x60
0x101468440:  6c b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice pendingConnectionAttempt]:
0x101468444:  02 44 80 52   mov	w2, #0x220
0x101468448:  23 00 80 52   mov	w3, #0x1
0x10146844c:  b9 b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setPendingConnectionAttempt:]:
0x101468450:  03 44 80 52   mov	w3, #0x220
0x101468454:  67 b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice lastReconciliationTime]:
0x101468458:  00 14 41 f9   ldr	x0, [x0, #0x228]
0x10146845c:  c0 03 5f d6   ret

-[CLDurianDevice setLastReconciliationTime:]:
0x101468460:  02 14 01 f9   str	x2, [x0, #0x228]
0x101468464:  c0 03 5f d6   ret

-[CLDurianDevice numProactiveAttempts]:
0x101468468:  00 d4 44 39   ldrb	w0, [x0, #0x135]
0x10146846c:  c0 03 5f d6   ret

-[CLDurianDevice setNumProactiveAttempts:]:
0x101468470:  02 d4 04 39   strb	w2, [x0, #0x135]
0x101468474:  c0 03 5f d6   ret

-[CLDurianDevice numProactiveConnects]:
0x101468478:  00 d8 44 39   ldrb	w0, [x0, #0x136]
0x10146847c:  c0 03 5f d6   ret

-[CLDurianDevice setNumProactiveConnects:]:
0x101468480:  02 d8 04 39   strb	w2, [x0, #0x136]
0x101468484:  c0 03 5f d6   ret

-[CLDurianDevice isProactiveAttempt]:
0x101468488:  00 dc 44 39   ldrb	w0, [x0, #0x137]
0x10146848c:  c0 03 5f d6   ret

-[CLDurianDevice setIsProactiveAttempt:]:
0x101468490:  02 dc 04 39   strb	w2, [x0, #0x137]
0x101468494:  c0 03 5f d6   ret

-[CLDurianDevice lastGroupMaintenance]:
0x101468498:  00 18 41 f9   ldr	x0, [x0, #0x230]
0x10146849c:  c0 03 5f d6   ret

-[CLDurianDevice setLastGroupMaintenance:]:
0x1014684a0:  02 18 01 f9   str	x2, [x0, #0x230]
0x1014684a4:  c0 03 5f d6   ret

-[CLDurianDevice lastAdvertisementDelta]:
0x1014684a8:  00 1c 41 f9   ldr	x0, [x0, #0x238]
0x1014684ac:  c0 03 5f d6   ret

-[CLDurianDevice setLastAdvertisementDelta:]:
0x1014684b0:  02 1c 01 f9   str	x2, [x0, #0x238]
0x1014684b4:  c0 03 5f d6   ret

-[CLDurianDevice lastGroupClassicDisconnectionTime]:
0x1014684b8:  00 20 41 f9   ldr	x0, [x0, #0x240]
0x1014684bc:  c0 03 5f d6   ret

-[CLDurianDevice setLastGroupClassicDisconnectionTime:]:
0x1014684c0:  02 20 01 f9   str	x2, [x0, #0x240]
0x1014684c4:  c0 03 5f d6   ret

-[CLDurianDevice lastGroupClassicDisconnectionDelta]:
0x1014684c8:  00 24 41 fd   ldr	d0, [x0, #0x248]
0x1014684cc:  c0 03 5f d6   ret

-[CLDurianDevice setLastGroupClassicDisconnectionDelta:]:
0x1014684d0:  00 24 01 fd   str	d0, [x0, #0x248]
0x1014684d4:  c0 03 5f d6   ret

-[CLDurianDevice isClassicallyConnected]:
0x1014684d8:  00 e0 44 39   ldrb	w0, [x0, #0x138]
0x1014684dc:  c0 03 5f d6   ret

-[CLDurianDevice setIsClassicallyConnected:]:
0x1014684e0:  02 e0 04 39   strb	w2, [x0, #0x138]
0x1014684e4:  c0 03 5f d6   ret

-[CLDurianDevice lastVisitStateTallyTime]:
0x1014684e8:  00 28 41 fd   ldr	d0, [x0, #0x250]
0x1014684ec:  c0 03 5f d6   ret

-[CLDurianDevice setLastVisitStateTallyTime:]:
0x1014684f0:  00 28 01 fd   str	d0, [x0, #0x250]
0x1014684f4:  c0 03 5f d6   ret

-[CLDurianDevice numInsideVisit]:
0x1014684f8:  00 e4 44 39   ldrb	w0, [x0, #0x139]
0x1014684fc:  c0 03 5f d6   ret

-[CLDurianDevice setNumInsideVisit:]:
0x101468500:  02 e4 04 39   strb	w2, [x0, #0x139]
0x101468504:  c0 03 5f d6   ret

-[CLDurianDevice numOutsideVisit]:
0x101468508:  00 e8 44 39   ldrb	w0, [x0, #0x13a]
0x10146850c:  c0 03 5f d6   ret

-[CLDurianDevice setNumOutsideVisit:]:
0x101468510:  02 e8 04 39   strb	w2, [x0, #0x13a]
0x101468514:  c0 03 5f d6   ret

-[CLDurianDevice durianNonOwnerPreciseFindingCharacteristic]:
0x101468518:  02 4b 80 52   mov	w2, #0x258
0x10146851c:  23 00 80 52   mov	w3, #0x1
0x101468520:  84 b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setDurianNonOwnerPreciseFindingCharacteristic:]:
0x101468524:  03 4b 80 52   mov	w3, #0x258
0x101468528:  32 b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice durianUarpFirmwareUpdateCharacteristic]:
0x10146852c:  02 4c 80 52   mov	w2, #0x260
0x101468530:  23 00 80 52   mov	w3, #0x1
0x101468534:  7f b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setDurianUarpFirmwareUpdateCharacteristic:]:
0x101468538:  03 4c 80 52   mov	w3, #0x260
0x10146853c:  2d b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice poshNonOwnerCharacteristic]:
0x101468540:  02 4d 80 52   mov	w2, #0x268
0x101468544:  23 00 80 52   mov	w3, #0x1
0x101468548:  7a b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setPoshNonOwnerCharacteristic:]:
0x10146854c:  03 4d 80 52   mov	w3, #0x268
0x101468550:  28 b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice poshBtTxPowerCharacteristic]:
0x101468554:  02 4e 80 52   mov	w2, #0x270
0x101468558:  23 00 80 52   mov	w3, #0x1
0x10146855c:  75 b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setPoshBtTxPowerCharacteristic:]:
0x101468560:  03 4e 80 52   mov	w3, #0x270
0x101468564:  23 b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice pendingDisconnect]:
0x101468568:  00 ec 44 39   ldrb	w0, [x0, #0x13b]
0x10146856c:  c0 03 5f d6   ret

-[CLDurianDevice setPendingDisconnect:]:
0x101468570:  02 ec 04 39   strb	w2, [x0, #0x13b]
0x101468574:  c0 03 5f d6   ret

-[CLDurianDevice taUnknownBeacon]:
0x101468578:  00 3c 41 f9   ldr	x0, [x0, #0x278]
0x10146857c:  c0 03 5f d6   ret

-[CLDurianDevice setTaUnknownBeacon:]:
0x101468580:  03 4f 80 52   mov	w3, #0x278
0x101468584:  27 b7 1a 14   b	j__objc_setProperty_nonatomic_copy

-[CLDurianDevice lastMaintenanceCategory]:
0x101468588:  00 40 41 f9   ldr	x0, [x0, #0x280]
0x10146858c:  c0 03 5f d6   ret

-[CLDurianDevice setLastMaintenanceCategory:]:
0x101468590:  02 40 01 f9   str	x2, [x0, #0x280]
0x101468594:  c0 03 5f d6   ret

-[CLDurianDevice hawkeyeConfigurationCharacteristic]:
0x101468598:  02 51 80 52   mov	w2, #0x288
0x10146859c:  23 00 80 52   mov	w3, #0x1
0x1014685a0:  64 b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setHawkeyeConfigurationCharacteristic:]:
0x1014685a4:  03 51 80 52   mov	w3, #0x288
0x1014685a8:  12 b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice hawkeyePairedOwnerInformationCharacteristic]:
0x1014685ac:  02 52 80 52   mov	w2, #0x290
0x1014685b0:  23 00 80 52   mov	w3, #0x1
0x1014685b4:  5f b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setHawkeyePairedOwnerInformationCharacteristic:]:
0x1014685b8:  03 52 80 52   mov	w3, #0x290
0x1014685bc:  0d b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice hawkeyeDebugCharacteristic]:
0x1014685c0:  02 53 80 52   mov	w2, #0x298
0x1014685c4:  23 00 80 52   mov	w3, #0x1
0x1014685c8:  5a b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setHawkeyeDebugCharacteristic:]:
0x1014685cc:  03 53 80 52   mov	w3, #0x298
0x1014685d0:  08 b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice hawkeyePreciseFindingCharacteristic]:
0x1014685d4:  02 54 80 52   mov	w2, #0x2a0
0x1014685d8:  23 00 80 52   mov	w3, #0x1
0x1014685dc:  55 b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setHawkeyePreciseFindingCharacteristic:]:
0x1014685e0:  03 54 80 52   mov	w3, #0x2a0
0x1014685e4:  03 b7 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice hawkeyeFirmwareUpdateCharacteristic]:
0x1014685e8:  02 55 80 52   mov	w2, #0x2a8
0x1014685ec:  23 00 80 52   mov	w3, #0x1
0x1014685f0:  50 b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setHawkeyeFirmwareUpdateCharacteristic:]:
0x1014685f4:  03 55 80 52   mov	w3, #0x2a8
0x1014685f8:  fe b6 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice hawkeyeNonOwnerCharacteristic]:
0x1014685fc:  02 56 80 52   mov	w2, #0x2b0
0x101468600:  23 00 80 52   mov	w3, #0x1
0x101468604:  4b b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setHawkeyeNonOwnerCharacteristic:]:
0x101468608:  03 56 80 52   mov	w3, #0x2b0
0x10146860c:  f9 b6 1a 14   b	j__objc_setProperty_atomic

-[CLDurianDevice systemUtils]:
0x101468610:  00 5c 41 f9   ldr	x0, [x0, #0x2b8]
0x101468614:  c0 03 5f d6   ret

-[CLDurianDevice findingCapabilities]:
0x101468618:  00 8c 40 f9   ldr	x0, [x0, #0x118]
0x10146861c:  c0 03 5f d6   ret

-[CLDurianDevice setFindingCapabilities:]:
0x101468620:  03 23 80 52   mov	w3, #0x118
0x101468624:  fb b6 1a 14   b	j__objc_setProperty_nonatomic

-[CLDurianDevice delegate]:
0x101468628:  00 60 41 f9   ldr	x0, [x0, #0x2c0]
0x10146862c:  c0 03 5f d6   ret

-[CLDurianDevice setDelegate:]:
0x101468630:  02 60 01 f9   str	x2, [x0, #0x2c0]
0x101468634:  c0 03 5f d6   ret

-[CLDurianDevice speakerNotTamperedDailyAdvertisementCount]:
0x101468638:  00 64 41 f9   ldr	x0, [x0, #0x2c8]
0x10146863c:  c0 03 5f d6   ret

-[CLDurianDevice setSpeakerNotTamperedDailyAdvertisementCount:]:
0x101468640:  02 64 01 f9   str	x2, [x0, #0x2c8]
0x101468644:  c0 03 5f d6   ret

-[CLDurianDevice speakerTamperedDailyAdvertisementCount]:
0x101468648:  00 68 41 f9   ldr	x0, [x0, #0x2d0]
0x10146864c:  c0 03 5f d6   ret

-[CLDurianDevice setSpeakerTamperedDailyAdvertisementCount:]:
0x101468650:  02 68 01 f9   str	x2, [x0, #0x2d0]
0x101468654:  c0 03 5f d6   ret

-[CLDurianDevice activeTask]:
0x101468658:  02 5b 80 52   mov	w2, #0x2d8
0x10146865c:  23 00 80 52   mov	w3, #0x1
0x101468660:  34 b6 1a 14   b	j__objc_getProperty

-[CLDurianDevice setActiveTask:]:
0x101468664:  03 5b 80 52   mov	w3, #0x2d8
0x101468668:  e2 b6 1a 14   b	j__objc_setProperty_atomic

sub_10146866c:
0x10146866c:  7f 23 03 d5   pacibsp
0x101468670:  fd 7b bf a9   stp	fp, lr, [sp, #-0x10]!

