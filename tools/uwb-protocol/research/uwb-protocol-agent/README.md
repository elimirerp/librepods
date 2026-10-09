# AirPods UWB bootstrap research

2026-10-08. Read-only analysis and a synthetic local token fixture. Existing AirPods pairing/enrollment was not changed. No credentials, native account data, session key material, Bluetooth traffic, or protected service stores were read. No NISession instance was created or run.

## Concrete findings

### 1. Private Find My discovery token

Local macOS NearbyInteraction metadata and complete disassembly of pure token-generation methods establish:

- NISession(Finding).generateFindingDiscoveryTokenWithSharedSecret accepts exactly 16 bytes, otherwise returns nil. It directly calls NIDiscoveryToken.generateFindingTokenWithIRK with the supplied bytes.
- generateFindingDiscoveryTokenWithIdentityResolvingKey delegates to the same method.
- NIDiscoveryToken packs an OPACK dictionary with integer keys: `{1: Data([0x12,0x34,0x56]), 2: IRK_Data_16_bytes, 7: 1}`. There is no key derivation in this wrapper.
- `initWithDiscoveryToken:requestedUpdateRate:requestedMeasaurementQuality:` forwards `configType=1`, `isFinder=true`, `isObserver=false` to NIFindingConfiguration's internal initializer.

Evidence: `local-imp-disassembly.txt:926`, `token-disassembly.txt:926`, `token-constants.txt`, `runtime-inventory.txt:278`. Method symbols are resolved in the locally loaded Apple framework by LLDB. Some LLDB import-stub labels are incorrect due to shared-cache symbol resolution; conclusions use named objc_msgSend stubs, instructions, constants, and a synthetic fixture rather than those import labels.

The local fixture uses dummy IRK `000102030405060708090a0b0c0d0e0f` and produces:

    e309731234560f090a80000102030405060708090a0b0c0d0e0f

It verifies the decoded dictionary keys above (`synthetic-token.m`, `synthetic-token.txt`). This token is an Apple framework representation, **not** established as the AirPods Bluetooth write payload, Android discovery data, or FiRa STS session key.

### 2. Native controller path

Local CoreLocation runtime metadata exposes CLFindMyAccessoryRangingManager with:

    prepareForStartRangingOnDevice:
    connectToDevice:
    initRoseWithParameters:onDevice:
    setRoseRangingParameters:onDevice:
    startRangingWithParameters:onDevice:
    stopRangingOnDevice:
    stopRoseWithParameters:onDevice:

CLFindMyAccessoryFindingCapabilities includes supportsFC1ND, supportsNBAMMS, supportsUnii5, and supportsSimultaneousRanging. See runtime-inventory.txt:59–97. These are relevant capability probes/schema names; their existence does not prove what the specific AirPods Pro 3 firmware returns.

### 3. iOS Hawkeye and NBAMMS leads

Public binary-derived Apple iOS18.5 -> iOS26.0 metadata from [blacktop/ipsw-diffs locationd](https://github.com/blacktop/ipsw-diffs/blob/main/iOS/18_5_22F76__vs_26_0_23A5260n/MACHOS/locationd.md) has native method names:

    configureNBRangingHawkeyeTaskWithParameters:
    startNBRangingHawkeyeTaskWithIRK:

Native log metadata indicates NB ranging exits early if IRK is nil, supports NB configure/start task handling, and constructs a ConfigureR2RangingTask. locationd's Durian leash logging has an isAirPodsCase field, tying the daemon/device-family investigation to cases, but this does not establish that every Hawkeye task is specifically an AirPods task. Local copies: locationd.md:3671, :4834, :5924–5946.

The corresponding [nearbyd binary diff](https://github.com/blacktop/ipsw-diffs/blob/main/iOS/18_5_22F76__vs_26_0_23A5260n/MACHOS/nearbyd.md) exposes NIServerFindingRangingProvider and its NBAMMS service request builder. It negotiates MMS fragment counts and private finding discovery tokens. Relevant local lines: nearbyd.md:236–243, :401–413, :614–616, :649, :1301, :1316.

### 4. Recovered internal parameter schema

Native type encoding says OOBRangingParameters is:

    nbAcqChIdx: UInt8
    nbMask: UInt8
    mmsNumFragmentsOOB: UInt8
    useLowPriorityDutyCycle: Bool

This is an internal C++/ObjC type encoding, not a proven BLE byte layout.

RangeEnableParameters has separate GR/FiRa/localization/NBAMMS fields. The NBAMMS block includes NB/MMS antenna masks, packet types, channels, slot sizes, preamble/repetition settings, fragment count, acquisition channel mask, NAP/data slot sizes, an IRK[16], antenna diversity and misc settings. GR has sts_cipher_blob[16] and a config controlling BLE-advertisement-triggered ranging. FiRa has distinct channel/preamble/uwb_ses_id/static_sts_iv/vendor/address fields. Full decoded type string is `rose-internal-schema.txt`.

RoseStartRangingOptions separately contains start_time_or_offset_usec, start_time_type, listening_window_usec, scheduling_interval_usec, duty_cycle, BLE connection event trigger descriptor (connection_interval_us), dither_constant_msec, nb_uwb_band_channel, cross_session_offset_msec, and secondary scheduling interval/delay/duty cycle.

The schema demonstrates multiple private modes. It does not prove Samsung's public UWB API can execute Apple's selected mode. Do not replace NBAMMS parameters with a generic FiRa profile without confirming the accessory's negotiated mode and phone controller support.

## Unknowns requiring further reverse engineering

1. Which precise IRK source the AirPods case Find My caller supplies, including how it relates to existing owner pairing material.
2. AirPods case GATT characteristic UUID, owner authentication, opcode framing, task byte serialization and responses for Rose/NB configure/init/start.
3. AirPods Pro 3's actual capability response and chosen FC1ND/NBAMMS/legacy ranging mode.
4. How IRK/STS blobs are transformed inside the selected ranging provider/controller, including session ID/address/time synchronization values.
5. Whether Samsung S25 Ultra firmware/API exposes the exact selected over-the-air mode and angle measurements.

Public Nearby Interaction custom accessory TLVs and third-party NXP examples do not answer these AirPods Find My questions.

## Next focused experiment

Acquire Apple iOS locationd/nearbyd with UWB code and trace `startNBRangingHawkeyeTaskWithIRK:`, `configureNBRangingHawkeyeTaskWithParameters:`, `ConfigureR2RangingTask`, and their serializers. Then trace the Find My application caller to the key source and capability/mode selection. Validate resulting packet schema against a passive capture from an owner iPhone performing case Precision Finding if one becomes available; avoid replaying unknown task payloads to the enrolled case.

The same public iOS26 OTA .022 payload used for findmydeviced was downloaded and decompressed, but contains neither a locationd executable record nor CLDurianTask/Hawkeye/RoseStart strings. Adjacent initial payload samples did not identify it. This is an extraction limitation, not evidence the iOS protocol lacks those classes. Large public OTA scratch files are in this directory and contain no user data.

## Follow-up: target binaries and wire codec recovered

The daemon extraction limitation has been resolved. See `HAWKEYE-WIRE.md` for the new primary-code evidence, exact native GATT UUIDs, P2P/NB packets, capability bits, temporary-LTK connection path, provenance, and remaining Android gates. `locationd-ios26` came from official OTA payload.011; `nearbyd-ios26` from payload.018. `hawkeye_codec.py` and `hawkeye-fixtures.json` provide an offline parser and instruction-derived synthetic verification. No real ranging profile was submitted and no live connection material was accessed.

The preceding unavailable-target notes describe the earlier stage. Current remaining unknowns concern live link authorization and Samsung controller support, not the native Hawkeye frame layout. The read-only cryptex image and downloaded patch were removed after retaining exact targets/frameworks, returning about6GB of disk space.
