#!/usr/bin/env python3
"""One owned-case encrypted BLE init/capability trial using external USB HCI.

No SMP pairing, bond persistence, account mutation, or UWB start command.
Keys travel only through a same-user private Unix socket and in-memory keystore.
"""
from __future__ import annotations

import argparse
import asyncio
import base64
from datetime import datetime, timezone
import json
import logging
import os
from pathlib import Path
import re
import stat
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import account_case_identity as identity
import hawkeye
from bumble import gatt, hci, keys, smp
from bumble.device import Device, DeviceConfiguration, Peer

APP_PYTHON = Path(__file__).resolve().parents[3] / "android/app/src/main/python"
sys.path.insert(0, str(APP_PYTHON))
from findmy_owner_radio.radio import (ProbeError, configure_owner_host, candidates_from_document,
    match_advertisement, scan_case, Responses, probe_connection)




def emit(event, **fields):
    print(json.dumps({"event": event, **fields}), flush=True)






async def control_request(path, message):
    path = Path(path)
    for entry in (path.parent, path):
        st = entry.lstat()
        if entry.is_symlink() or st.st_uid != os.getuid() or st.st_mode & 0o077:
            raise ProbeError("private_control_required")
    if not stat.S_ISSOCK(path.lstat().st_mode):
        raise ProbeError("control_socket_required")
    reader, writer = await asyncio.wait_for(asyncio.open_unix_connection(path, limit=16384), 5)
    try:
        if identity.socket_peer_uid(writer.get_extra_info("socket")) != os.getuid():
            raise ProbeError("control_peer_mismatch")
        writer.write(json.dumps(message).encode() + b"\n")
        await writer.drain()
        response = json.loads(await asyncio.wait_for(reader.readline(), 30))
        if response.get("ok") is not True:
            raise ProbeError("account_helper_request_failed")
        return response
    finally:
        writer.close()
        await writer.wait_closed()










def list_adapters():
    import usb1
    from bumble.transport.usb import load_libusb
    load_libusb()
    adapters = []
    with usb1.USBContext() as context:
        for device in context.getDeviceIterator(skip_on_error=True):
            classes = [(device.getDeviceClass(), device.getDeviceSubClass(), device.getDeviceProtocol())]
            classes.extend((s.getClass(), s.getSubClass(), s.getProtocol())
                           for config in device for interface in config for s in interface)
            if (0xE0, 1, 1) in classes:
                adapters.append({"transport": f"usb:{device.getVendorID():04x}:{device.getProductID():04x}"})
    emit("usb_inventory", adapterCount=len(adapters), adapters=adapters)
    return len(adapters)


async def run(args):
    from bumble.transport import open_transport
    if not re.fullmatch(r"usb:[0-9a-fA-F]{4}:[0-9a-fA-F]{4}(?:#[0-9]+)?", args.transport):
        raise ProbeError("explicit_usb_vendor_product_required")
    # Automatic HCI snooping would persist the key-loading command.
    if os.getenv("BUMBLE_SNOOPER"):
        raise ProbeError("disable_hci_snooping_for_owner_trial")
    await control_request(args.control, {"action": "refresh_candidates"})
    document = identity.read_private_json(args.candidate_file)
    candidates = candidates_from_document(document)
    async with await open_transport(args.transport) as transport:
        config = DeviceConfiguration(name="LibrePods owner-link probe", address=hci.Address.generate_static_address())
        device = Device.from_config_with_hci(config, transport.source, transport.sink)
        configure_owner_host(device, emit)
        connection = None
        try:
            await asyncio.wait_for(device.power_on(), 20)
            emit("scanning", candidateCount=len(candidates), seconds=args.scan_seconds)
            address, row, rssi = await scan_case(device, candidates, args.scan_seconds)
            emit("case_matched", keySequence=row["keySequence"], branchIndex=row["branchIndex"], rssi=rssi)
            response = await control_request(args.control, {
                "action": "owner_link", "beaconIdentifier": document["beaconIdentifier"],
                "address": row["address"], "keySequence": row["keySequence"], "branchIndex": row["branchIndex"],
            })
            ltk = base64.b64decode(response.pop("temporaryLtk"), validate=True)
            connection = await device.connect(address, timeout=15)
            emit("connected")
            await probe_connection(connection, ltk, report=emit)
            ltk = None
            emit("trial_complete", rangingProven=False)
        finally:
            if connection is not None:
                try:
                    await asyncio.wait_for(connection.disconnect(), 5)
                    emit("disconnected")
                except Exception:
                    emit("disconnect_unconfirmed")
            await asyncio.wait_for(device.power_off(), 5)


def main():
    logging.disable(logging.CRITICAL)
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--list-adapters", action="store_true")
    parser.add_argument("--libusb", type=Path, help="Optional explicit local libusb shared library")
    parser.add_argument("--transport")
    parser.add_argument("--control", type=Path)
    parser.add_argument("--candidate-file", type=Path)
    parser.add_argument("--scan-seconds", type=int, choices=range(1, 61), default=45)
    args = parser.parse_args()
    try:
        if args.libusb:
            import ctypes
            import usb1
            usb1.loadLibrary(ctypes.CDLL(str(args.libusb.resolve()), use_errno=True, use_last_error=True))
        if args.list_adapters:
            list_adapters()
            return 0
        if not all((args.transport, args.control, args.candidate_file)):
            parser.error("supply --transport, --control and --candidate-file")
        asyncio.run(run(args))
        return 0
    except KeyboardInterrupt:
        emit("stopped")
        return 130
    except Exception as error:
        fields = {"reason": str(error)} if isinstance(error, ProbeError) else {"exceptionType": type(error).__name__}
        if isinstance(getattr(error, "error_code", None), int):
            fields["protocolStatus"] = error.error_code
        emit("trial_failed", **fields)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
