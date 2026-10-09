"""Only complete owner init/cap responses and optional legacy configuration.
No ranging-start serializer is present in the app radio module.
"""
import struct
CHARACTERISTIC = "4f860006-943b-49ef-bed4-2f730304427a"

def frame(opcode, body=b""):
    if type(opcode) is not int or not 0 <= opcode <= 65535:
        raise ValueError("invalid opcode")
    return b"\x01" + struct.pack("<H", opcode) + body

def capabilities_query():
    return frame(0x0710, bytes(4))

def configure_p2p(config, rose_mac):
    if not isinstance(rose_mac, bytes) or len(rose_mac) != 8:
        raise ValueError("invalid Rose MAC")
    compact = bytearray(config.encode())
    if len(compact) != 4:
        raise ValueError("invalid config")
    compact[1] |= 0x80
    return frame(0x0702, bytes(compact) + rose_mac)

def parse(packet):
    if not isinstance(packet, bytes) or len(packet) < 3 or packet[0] != 1:
        raise ValueError("invalid complete response")
    opcode = int.from_bytes(packet[1:3], "little")
    body = packet[3:]
    if len(body) != 4:
        raise ValueError("invalid response size")
    value = int.from_bytes(body, "little")
    if opcode == 0x0711:
        return {"opcode": opcode, "capabilities": {"raw": value,
            "supports_fc1nd": bool(value & 1), "supports_nbamms": bool(value & 2),
            "supports_unii5": bool(value & 4), "supports_simultaneous_ranging": bool(value & 8)}}
    if opcode == 0x0706:
        return {"opcode": opcode, "ranging_status": value}
    if opcode == 0x0707:
        return {"opcode": opcode, "configuration_status": value}
    if opcode == 0x0700:
        a,status = struct.unpack("<HH", body)
        return {"opcode": opcode, "acknowledged_opcode": a, "status": status}
    raise ValueError("unsupported response")
