"""Diagnostic address candidates for the three verified owned AirPods components.

Used after explicit authorization to test all three members. Component roles
come from each decoded stable identifier. This module performs no network or
Bluetooth calls and never exports owner keys.
"""
from datetime import datetime, timezone

import account_case_identity as proof


def selection_document(holder, *, case_identifier=None):
    if case_identifier is not None:
        raise proof.ProofError("group-diagnostic-requires-refresh-action")
    records, group, deps = holder["decoded"], holder["group"], holder["deps"]
    matched = sorted((record for record in records
                      if record.record_type == "MasterBeaconRecord"
                      and isinstance(record.values.get("groupIdentifier"), str)
                      and record.values["groupIdentifier"].casefold() == group.casefold()),
                     key=lambda record: record.name)
    if len(matched) != 3 or any(record.undecryptable for record in matched):
        raise proof.ProofError("owned-three-component-group-required")
    now = datetime.now(timezone.utc)
    rows, beacons, sources = [], [], []
    seen = set()
    for ordinal, record in enumerate(matched):
        alignment = [item for item in records if item.record_type == "KeyAlignmentRecord"
                     and item.values.get("beaconIdentifier") == record.name]
        if len(alignment) > 1 or any(item.undecryptable for item in alignment):
            raise proof.ProofError("component-alignment-invalid")
        accessory = deps.accessory_from_record(record, alignment=alignment[0] if alignment else None)
        candidate = proof.candidate_document(record, accessory, now)
        for row in candidate["candidates"]:
            if row["address"] in seen:
                raise proof.ProofError("component-address-collision")
            seen.add(row["address"])
            rows.append({**row, "beaconOrdinal": ordinal})
        beacons.append({"beaconOrdinal": ordinal, "beaconIdentifier": record.name,
                        "role": candidate["component"],
                        "componentPosition": candidate.get("componentPosition")})
        sources.append((record, accessory))
    if len(rows) > proof.MAX_CANDIDATES:
        raise proof.ProofError("candidate-count-invalid")
    holder["groupSources"] = sources
    return {"schemaVersion": 1, "component": "airpods-group",
            "selectionBasis": "exact-owned-group-three-components",
            "groupIdentifier": group, "generatedAt": now.isoformat(),
            "beacons": beacons, "candidates": sorted(rows, key=lambda row: row["address"])}
