"""Offline models of confirmed Apple ranging primitives.

No Bluetooth, account access, or ranging transport. See EVIDENCE.md for scope.
"""

from dataclasses import dataclass
import struct

_MASK = (1 << 64) - 1
_ADDRESS_MESSAGE = bytes.fromhex("0123456789abcdef")


def _rotate(value: int, count: int) -> int:
    return ((value << count) | (value >> (64 - count))) & _MASK


def siphash24(key: bytes, message: bytes) -> int:
    """SipHash-2-4, returning an unsigned 64-bit integer."""
    if len(key) != 16:
        raise ValueError("SipHash key must contain exactly 16 bytes")
    k0, k1 = struct.unpack("<QQ", key)
    v = [0x736F6D6570736575 ^ k0, 0x646F72616E646F6D ^ k1,
         0x6C7967656E657261 ^ k0, 0x7465646279746573 ^ k1]

    def rounds(count):
        for _ in range(count):
            v[0] = (v[0] + v[1]) & _MASK
            v[1] = _rotate(v[1], 13) ^ v[0]
            v[0] = _rotate(v[0], 32)
            v[2] = (v[2] + v[3]) & _MASK
            v[3] = _rotate(v[3], 16) ^ v[2]
            v[0] = (v[0] + v[3]) & _MASK
            v[3] = _rotate(v[3], 21) ^ v[0]
            v[2] = (v[2] + v[1]) & _MASK
            v[1] = _rotate(v[1], 17) ^ v[2]
            v[2] = _rotate(v[2], 32)

    end = len(message) - len(message) % 8
    for offset in range(0, end, 8):
        word = struct.unpack_from("<Q", message, offset)[0]
        v[3] ^= word
        rounds(2)
        v[0] ^= word
    tail = ((len(message) & 0xFF) << 56) | int.from_bytes(message[end:], "little")
    v[3] ^= tail
    rounds(2)
    v[0] ^= tail
    v[2] ^= 0xFF
    rounds(4)
    return v[0] ^ v[1] ^ v[2] ^ v[3]


def ranging_address(session_irk: bytes) -> int:
    """Native macAddressForIRK result; not a Bluetooth MAC or a FiRa STS key.

    ItemLocalizer generates this 16-byte key freshly for NBAMMS. Generic Finding
    instead receives a shared key from its discovery token. Do not conflate them.
    """
    return siphash24(session_irk, _ADDRESS_MESSAGE)


def _unsigned(name: str, value: int, bits: int):
    if type(value) is not int or not 0 <= value < (1 << bits):
        raise ValueError(f"{name} must be an unsigned {bits}-bit integer")


def legacy_channel_code(channel: int) -> int:
    """Convert supported IEEE channel numbers to Apple's HSI 1 compact code.

    Reject other channels rather than copying the native converter's unchecked
    'anything except 5 becomes 1' behavior. This is not regulatory authorization.
    """
    if type(channel) is not int or channel not in (5, 9):
        raise ValueError("Legacy channel must be 5 or 9")
    return {5: 0, 9: 1}[channel]


def legacy_preamble_code(preamble: int) -> int:
    """Convert the four preambles accepted by Apple's HSI 1 converter."""
    if type(preamble) is not int or preamble not in (9, 10, 11, 12):
        raise ValueError("Legacy preamble must be 9, 10, 11 or 12")
    return preamble - 9


@dataclass(frozen=True)
class LegacyP2PConfig:
    """Four-byte internal companion configuration, before transport framing.

    Channel/preambles are compact Apple codes, not IEEE channel numbers or
    Android preamble indexes; use the explicit conversion functions above.
    This represents the internal four bytes, not the framed Hawkeye BLE write.
    """

    country_code: int
    channel_code: int
    tx_preamble_code: int
    rx_preamble_code: int
    interval_ms: int

    def encode(self) -> bytes:
        _unsigned("country_code", self.country_code, 8)
        for name in ("channel_code", "tx_preamble_code", "rx_preamble_code"):
            _unsigned(name, getattr(self, name), 2)
        _unsigned("interval_ms", self.interval_ms, 16)
        flags = self.channel_code | self.tx_preamble_code << 2 | self.rx_preamble_code << 4
        return struct.pack("<BBH", self.country_code, flags, self.interval_ms)

    @classmethod
    def decode(cls, data: bytes):
        if len(data) != 4:
            raise ValueError("Legacy companion configuration must contain exactly 4 bytes")
        country, flags, interval = struct.unpack("<BBH", data)
        if flags & 0xC0:
            raise ValueError("Unrecognized reserved configuration bits")
        return cls(country, flags & 3, (flags >> 2) & 3, (flags >> 4) & 3, interval)


def select_item_localizer_mode(*, extended_feature: bool, local_support: bool,
                               accessory_nbamms: bool, slot_unavailable: bool) -> str:
    """Model the observed default mode gate (without Apple debug overrides).

    P2P here is Apple's legacy mode, not evidence of FiRa compatibility.
    """
    if extended_feature and local_support and accessory_nbamms and not slot_unavailable:
        return "nbamms"
    return "apple_p2p"
