"""Offline codec for nearbyd's four-byte ItemLocalizer P2P companion config.

Evidence: x86_64 nearbyd builder 0x1002f793c; logs at 0x1002edc52.
This payload is a body only. Transport framing, authentication and country-code
assignment are deliberately not inferred here. This module never opens radios.
"""

from dataclasses import dataclass
from apple_ranging import LegacyP2PConfig, legacy_channel_code, legacy_preamble_code


@dataclass(frozen=True)
class CompanionConfig:
    country_code: int
    channel: int
    tx_preamble: int
    rx_preamble: int
    interval_ms: int


def encode_companion_config(config: CompanionConfig) -> bytes:
    """Encode only the physical channel/preamble range evidenced by HSI1."""
    return LegacyP2PConfig(config.country_code, legacy_channel_code(config.channel),
                          legacy_preamble_code(config.tx_preamble),
                          legacy_preamble_code(config.rx_preamble), config.interval_ms).encode()


def decode_companion_config(payload: bytes) -> CompanionConfig:
    compact = LegacyP2PConfig.decode(payload)
    if compact.channel_code not in (0, 1):
        raise ValueError("unsupported native channel code")
    return CompanionConfig(compact.country_code, 9 if compact.channel_code else 5,
                           compact.tx_preamble_code + 9, compact.rx_preamble_code + 9,
                           compact.interval_ms)


RX_PREAMBLE_CHOICES = (9, 11, 12)
ORDINARY_INTERVAL_CHOICES_MS = (51, 52, 53, 54, 56, 57, 58, 59, 61, 62, 63, 64, 66, 67)
GATT_INTERVAL_CHOICES_MS = (71, 72, 73, 74, 76, 77, 78, 79, 81, 82, 83, 84, 86, 87)
