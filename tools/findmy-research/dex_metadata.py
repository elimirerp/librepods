#!/usr/bin/env python3
"""Offline DEX metadata and selected string/invoke references; never executes code."""
import argparse
import json
from pathlib import Path
import re
import struct
from zipfile import ZipFile


class Dex:
    def __init__(self, data):
        self.d = data
        if not data.startswith(b"dex\n"):
            raise ValueError("Expected DEX")
        self.strings = []
        count, offset = self.u32(56), self.u32(60)
        for i in range(count):
            pos = self.u32(offset + i * 4)
            _, pos = self.uleb(pos)
            end = data.index(0, pos)
            self.strings.append(data[pos:end].decode("utf-8", "replace"))
        self.types = [self.strings[self.u32(self.u32(68) + i * 4)] for i in range(self.u32(64))]
        self.protos = []
        for i in range(self.u32(72)):
            pos = self.u32(76) + 12 * i
            ret, args = self.u32(pos + 4), self.u32(pos + 8)
            parameters = [] if not args else [self.types[self.u16(args + 4 + j * 2)] for j in range(self.u32(args))]
            self.protos.append("(" + "".join(parameters) + ")" + self.types[ret])
        self.methods = []
        self.fields = []
        for i in range(self.u32(80)):
            pos = self.u32(84) + i * 8
            cls, typ, name = self.u16(pos), self.u16(pos + 2), self.u32(pos + 4)
            self.fields.append({"class": self.types[cls], "field": self.strings[name], "type": self.types[typ]})
        for i in range(self.u32(88)):
            pos = self.u32(92) + i * 8
            cls, proto, name = self.u16(pos), self.u16(pos + 2), self.u32(pos + 4)
            self.methods.append({"class": self.types[cls], "method": self.strings[name], "signature": self.protos[proto]})
        self.defined = []
        # DEX hiddenapi_class_data_item: class offsets followed by member ULEBs,
        # in class_data order (static/instance fields, direct/virtual methods).
        # Public Java access flags alone do not establish application access.
        hidden_base = None
        map_offset = self.u32(52)
        for i in range(self.u32(map_offset)):
            entry = map_offset + 4 + 12 * i
            if self.u16(entry) == 0xf000:
                hidden_base = self.u32(entry + 8)
        for i in range(self.u32(96)):
            pos = self.u32(100) + i * 32
            class_data = self.u32(pos + 24)
            if not class_data:
                continue
            cursor = class_data
            hidden_offset = self.u32(hidden_base + 4 + i * 4) if hidden_base else 0
            hidden_cursor = hidden_base + hidden_offset if hidden_offset else None
            counts = []
            for _ in range(4):
                n, cursor = self.uleb(cursor)
                counts.append(n)
            for _ in range(counts[0] + counts[1]):
                _, cursor = self.uleb(cursor)
                _, cursor = self.uleb(cursor)
                if hidden_cursor is not None:
                    _, hidden_cursor = self.uleb(hidden_cursor)
            for n in counts[2:]:
                index = 0
                for _ in range(n):
                    delta, cursor = self.uleb(cursor)
                    flags, cursor = self.uleb(cursor)
                    code, cursor = self.uleb(cursor)
                    index += delta
                    hidden_flag = None
                    if hidden_cursor is not None:
                        hidden_flag, hidden_cursor = self.uleb(hidden_cursor)
                    self.defined.append({**self.methods[index], "flags": flags,
                                         "hidden_api_flag": hidden_flag, "code_offset": code})

    def u16(self, p):
        return struct.unpack_from("<H", self.d, p)[0]

    def u32(self, p):
        return struct.unpack_from("<I", self.d, p)[0]

    def uleb(self, p):
        value, shift = 0, 0
        for _ in range(5):
            byte = self.d[p]
            p += 1
            value |= (byte & 127) << shift
            if byte < 128:
                return value, p
            shift += 7
        raise ValueError("Invalid ULEB128")

    def references(self, method):
        pos = method["code_offset"]
        if not pos:
            return {"strings": [], "calls": [], "fields": []}
        size = self.u32(pos + 12)
        code = [self.u16(pos + 16 + i * 2) for i in range(size)]
        # Dalvik instruction widths in 16-bit code units. Payloads are variable.
        width = [1] * 256
        for op in [2,5,8,0x13,0x15,0x16,0x19,0x1a,0x1c,0x1f,0x20,0x22,0x23,0x29,*range(0x2d,0x3e),*range(0x44,0x6e),*range(0x90,0xb0),*range(0xd0,0xe3),0xfe,0xff]:
            width[op] = 2
        for op in [3,6,9,0x14,0x17,0x1b,0x24,0x25,0x26,0x2a,0x2b,0x2c,*range(0x6e,0x73),*range(0x74,0x79),0xfc,0xfd]:
            width[op] = 3
        width[0x18], width[0xfa], width[0xfb] = 5,4,4
        cursor, strings, calls, fields = 0, [], [], []
        while cursor < size:
            op, tag = code[cursor] & 255, code[cursor] >> 8
            w = width[op]
            if op == 0 and tag:
                if tag == 1:
                    w = 4 + 2 * code[cursor + 1]
                elif tag == 2:
                    w = 2 + 4 * code[cursor + 1]
                elif tag == 3:
                    count = code[cursor + 2] | code[cursor + 3] << 16
                    w = 4 + (code[cursor + 1] * count + 1) // 2
                else:
                    raise ValueError("Unknown DEX payload")
            if cursor + w > size:
                raise ValueError("Truncated DEX instruction")
            if op in (0x1a,0x1b):
                index = code[cursor + 1]
                if op == 0x1b:
                    index |= code[cursor + 2] << 16
                value = self.strings[index]
                # Emit metadata and permission labels only, no arbitrary literal buffers.
                if re.search(r"permission|timesync|rawUci|sendUci|SR200|NXP|NBAMMS|MMS", value, re.I) and len(value) < 180:
                    strings.append(value)
            if op in (*range(0x6e,0x73),*range(0x74,0x79),0xfa,0xfb):
                target = self.methods[code[cursor + 1]]
                calls.append(target)
            if op in range(0x52,0x6e):
                fields.append(self.fields[code[cursor + 1]])
            cursor += w
        return {"strings": list(dict.fromkeys(strings)), "calls": calls, "fields": fields}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("jar")
    parser.add_argument("--class-regex", required=True)
    parser.add_argument("--method-regex", default=".*")
    parser.add_argument("--references", action="store_true")
    args = parser.parse_args()
    with ZipFile(Path(args.jar)) as z:
        dex = Dex(z.read("classes.dex"))
    results = []
    for method in dex.defined:
        if re.search(args.class_regex, method["class"]) and re.search(args.method_regex, method["method"]):
            result = {key: value for key,value in method.items() if key != "code_offset"}
            if args.references:
                result.update(dex.references(method))
            results.append(result)
    print(json.dumps(results, indent=2))


if __name__ == "__main__":
    main()
