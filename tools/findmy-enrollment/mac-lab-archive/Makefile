CC = xcrun clang
CFLAGS = -fobjc-arc -Wall -Wextra

all: bin/owner-status bin/bluetooth-helper bin/gatt-probe bin/runtime-inspect bin/registration-record bin/registration-trial

bin:
	mkdir -p bin

bin/owner-status: sp-owner-status.m | bin
	$(CC) $(CFLAGS) -framework Foundation $< -o $@

bin/bluetooth-helper: airpods-helper.m bluetooth-info.plist | bin
	$(CC) $(CFLAGS) -framework Foundation -framework IOBluetooth $< -o $@ -Wl,-sectcreate,__TEXT,__info_plist,bluetooth-info.plist

bin/gatt-probe: airpods-gatt.swift bluetooth-info.plist | bin
	xcrun swiftc $< -o $@ -Xlinker -sectcreate -Xlinker __TEXT -Xlinker __info_plist -Xlinker bluetooth-info.plist

bin/runtime-inspect: sp-inspect.m | bin
	$(CC) $(CFLAGS) -framework Foundation $< -o $@

bin/registration-record: registration-record.m bluetooth-info.plist | bin
	$(CC) $(CFLAGS) -framework Foundation -framework IOBluetooth $< -o $@ -Wl,-sectcreate,__TEXT,__info_plist,bluetooth-info.plist

bin/registration-trial: registration-trial.m | bin
	$(CC) $(CFLAGS) -framework Foundation -framework Security $< -o $@

.PHONY: all
