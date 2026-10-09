"""Offline codec derived from Apple locationd 26.7.1; no Bluetooth/account I/O.

Byte layouts: configureNBRangingHawkeye 0x10144a35c, startNB 0x10144a610,
readNBRangingConfigParams 0x101467ea4, createConfigureRanging 0x101488bd8.
Values are encoded wire fields, not controller enum values. In particular
nearbyd subtracts one from controller MMS PSR before this wire field.
See hawkeye-evidence.md for native ordering and authorization limits. This
parser handles complete packets, not the native inbound fragmentation path.
"""
import struct
from dataclasses import asdict, dataclass

from apple_ranging import LegacyP2PConfig, _unsigned

SERVICE = "0000fd44-0000-1000-8000-00805f9b34fb"
CHARACTERISTIC = "4f860006-943b-49ef-bed4-2f730304427a"
NB_FORMAT = "<8B2H4BHB"


@dataclass(frozen=True)
class NBConfig:
    version: int
    mms_frag_country_code: int
    nb_country_codes: int
    sar_country_codes: int
    acq_timeout: int
    acq_retry_interval: int
    acq_dither_max: int
    ranging_timeout: int
    nb_mask_nap_channel: int
    nb_channel_select_mask: int
    wire_mms_psr: int
    mms_gap: int
    mms_sequence_index: int
    mms_slot_size: int
    interval: int
    debug_flags: int

    def encode(self) -> bytes:
        fields = asdict(self)
        for name, value in fields.items():
            bits = 16 if name in (
                "nb_mask_nap_channel", "nb_channel_select_mask", "interval"
            ) else 8
            _unsigned(name, value, bits)
        return struct.pack(NB_FORMAT, *fields.values())

    @classmethod
    def decode(cls, data: bytes) -> "NBConfig":
        if len(data) != 19:
            raise ValueError("NB config body must be 19 bytes")
        return cls(*struct.unpack(NB_FORMAT, data))


def frame(opcode: int, body: bytes = b"") -> bytes:
    _unsigned("opcode", opcode, 16)
    return b"\x01" + struct.pack("<H", opcode) + body


def configure_nb(config: NBConfig) -> bytes:
    return frame(0x070D, config.encode())


def start_nb(irk: bytes) -> bytes:
    if len(irk) != 16:
        raise ValueError("ranging IRK must be 16 bytes")
    return frame(0x070E, irk)


def configure_p2p(config: LegacyP2PConfig, rose_mac: bytes) -> bytes:
    if len(rose_mac) != 8:
        raise ValueError("Rose MAC must be 8 bytes")
    compact = bytearray(config.encode())
    compact[1] |= 0x80
    return frame(0x0702, bytes(compact) + rose_mac)


def start_p2p(target_event_counter: int) -> bytes:
    _unsigned("target event counter", target_event_counter, 16)
    return frame(0x0703, struct.pack("<H", target_event_counter))


def capabilities_query() -> bytes:
    return frame(0x0710, bytes(4))


def parse_capabilities(data: bytes) -> dict:
    if len(data) != 4:
        raise ValueError("capabilities body must be LE32")
    value = int.from_bytes(data, "little")
    return {
        "raw": value,
        "supports_fc1nd": bool(value & 1),
        "supports_nbamms": bool(value & 2),
        "supports_unii5": bool(value & 4),
        "supports_simultaneous_ranging": bool(value & 8),
    }


def parse(packet: bytes) -> dict:
    if len(packet) < 3 or packet[0] != 1:
        raise ValueError("expected complete Hawkeye packet marker 1 and LE16 opcode")
    opcode = struct.unpack("<H", packet[1:3])[0]
    body = packet[3:]
    if opcode == 0x0711:
        return {"opcode": opcode, "capabilities": parse_capabilities(body)}
    if opcode == 0x0706:
        if len(body) != 4:
            raise ValueError("init response body must be statusLE32")
        return {"opcode": opcode, "ranging_status": int.from_bytes(body, "little")}
    if opcode == 0x0707:
        if len(body) != 4:
            raise ValueError("configure response body must be statusLE32")
        return {"opcode": opcode, "configuration_status": int.from_bytes(body, "little")}
    if opcode == 0x0700:
        if len(body) != 4:
            raise ValueError("Hawkeye ACK body must be opcodeLE16/statusLE16")
        acknowledged, status = struct.unpack("<HH", body)
        return {
            "opcode": opcode,
            "acknowledged_opcode": acknowledged,
            "status": status,
        }
    if opcode == 0x070D:
        return {"opcode": opcode, "nb_config": asdict(NBConfig.decode(body))}
    if opcode == 0x070E:
        if len(body) != 16:
            raise ValueError("NB start body must be 16 bytes")
        return {"opcode": opcode, "ranging_irk_hex": body.hex()}
    if opcode == 0x0702:
        if len(body) != 12:
            raise ValueError("P2P config body must be 12 bytes")
        country, flags, interval = struct.unpack("<BBH", body[:4])
        if flags & 0xC0 != 0x80:
            raise ValueError("expected native Hawkeye config bit7 and reserved bit6 clear")
        LegacyP2PConfig.decode(bytes([country, flags & 0x3F]) + body[2:4])
        return {
            "opcode": opcode,
            "country": country,
            "flags": flags,
            "channel": flags & 3,
            "acq_preamble": (flags >> 2) & 3,
            "tracking_preamble": (flags >> 4) & 3,
            "interval": interval,
            "rose_mac_hex": body[4:].hex(),
        }
    if opcode == 0x0703:
        if len(body) != 2:
            raise ValueError("P2P start body must be LE16 counter")
        return {"opcode": opcode, "target_event_counter": int.from_bytes(body, "little")}
    if opcode == 0x0710:
        if len(body) != 4:
            raise ValueError("capabilities query body must be 4 bytes")
        return {"opcode": opcode, "capabilities_query_mask": int.from_bytes(body, "little")}
    return {"opcode": opcode, "body_hex": body.hex()}
