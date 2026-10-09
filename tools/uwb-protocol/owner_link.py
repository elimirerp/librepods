"""Native owner-link KDF, isolated from authentication and radio operations.

The secret must be the one that generated the exact observed beacon key.
No additional update is applied here. Live link acceptance remains a separate
test. Evidence: INDEXED-INTERMEDIATE-KEY.md and CASE-IDENTITY-AND-OWNER-LINK.md.
"""
from dataclasses import dataclass, field
import hashlib
import hmac
import re


@dataclass(frozen=True)
class OwnerLinkMaterial:
    connection_token: bytes = field(repr=False)
    temporary_ltk: bytes = field(repr=False)


def derive_from_matched_secret(secret: bytes) -> OwnerLinkMaterial:
    if not isinstance(secret, bytes) or len(secret) != 32:
        raise ValueError("matched secret must be 32 bytes")
    intermediate = hashlib.sha256(secret + b"\0\0\0\1intermediate").digest()
    token = hashlib.sha256(intermediate + b"\0\0\0\1connect").digest()
    return OwnerLinkMaterial(token, token[:16])


def derive_for_observed_candidate(accessory, sequence: str, branch_index: int,
                                  observed_address: str) -> OwnerLinkMaterial:
    if sequence not in ("primary", "secondary"):
        raise ValueError("explicit key sequence required")
    if type(branch_index) is not int or not 0 <= branch_index <= 100_000:
        raise ValueError("branch index outside diagnostic bound")
    if (not isinstance(observed_address, str)
            or re.fullmatch(r"(?:[0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}", observed_address) is None):
        raise ValueError("invalid observed address")
    # These generator internals belong to the pinned FindMy dependency. Recompute
    # the key/address from this same generator before deriving its owner token.
    generator = accessory._primary_gen if sequence == "primary" else accessory._secondary_gen
    address = generator[branch_index].mac_address
    if not hmac.compare_digest(address.upper(), observed_address.upper()):
        raise ValueError("observed address does not match this branch")
    return derive_from_matched_secret(generator._get_sk(branch_index))
