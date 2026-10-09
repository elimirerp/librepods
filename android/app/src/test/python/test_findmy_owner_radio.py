"""Synthetic owner selection, public query and diagnostic cleanup; no radio/account calls."""
import asyncio
import hashlib
import json
from pathlib import Path
import sys
from types import SimpleNamespace as NS
import unittest
from unittest.mock import AsyncMock,patch

sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'main/python'))
import findmy_owner_radio as owner
from findmy_owner_radio import radio,codec

class Generator:
    def __init__(self):self.secret_reads=[]
    def __getitem__(self,index):
        return NS(adv_key_bytes=bytes([index])+bytes(range(1,28)),
            mac_address=f'C{index}:01:02:03:04:05')
    def _get_sk(self,index):
        self.secret_reads.append(index)
        return hashlib.sha256(bytes(range(32))+b'\0\0\0\1update').digest()

class Accessory:
    def __init__(self):self._primary_gen=Generator()
    def get_min_index(self,_):return 5
    def get_max_index(self,_):return 7
    def _primary_key_at(self,index):return self._primary_gen[index]
    def _secondary_keys_at(self,index):
        return [NS(adv_key_bytes=bytes([n])+bytes(27),mac_address=f'D{n}:01:02:03:04:05') for n in (1,2)]

class SelectionTests(unittest.TestCase):
    def test_native_kdf_after_full_primary_match(self):
        accessory=Accessory();rows,primary=owner.candidate_window(accessory)
        self.assertEqual(len(rows),5)
        result=owner.resolve_ltk(accessory,primary[1][1],primary)
        self.assertEqual(result.hex(),'23e319f8011baeb5f69fb53088d0a859')
        self.assertEqual(accessory._primary_gen.secret_reads,[6])

    def test_matching_mac_prefix_is_insufficient(self):
        accessory=Accessory();_,primary=owner.candidate_window(accessory)
        key=primary[0][1];wrong=key[:6]+bytes(22)
        with self.assertRaisesRegex(owner.OwnerRadioError,'current_primary_not'):
            owner.resolve_ltk(accessory,wrong,primary)
        self.assertEqual(accessory._primary_gen.secret_reads,[])

    def test_ambiguous_primary_never_loads_secret(self):
        accessory=Accessory();_,primary=owner.candidate_window(accessory)
        with self.assertRaisesRegex(owner.OwnerRadioError,'current_primary_not'):
            owner.resolve_ltk(accessory,primary[0][1],primary+[(8,primary[0][1])])
        self.assertEqual(accessory._primary_gen.secret_reads,[])

    def test_window_bound_is_checked_before_derivation(self):
        accessory=Accessory();accessory.get_max_index=lambda _:400
        with self.assertRaisesRegex(owner.OwnerRadioError,'window_too_wide'):
            owner.candidate_window(accessory)

    def test_parser_distinguishes_four_byte_config_from_five_byte_start(self):
        self.assertEqual(codec.parse(bytes.fromhex('01070700000000'))['configuration_status'],0)
        with self.assertRaises(ValueError):codec.parse(bytes.fromhex('0107070000000000'))
        with self.assertRaises(ValueError):codec.parse(bytes.fromhex('0108070000000000'))

class CleanupTests(unittest.IsolatedAsyncioTestCase):
    async def test_verified_proof_and_cleanup_only_fixed_fields(self):
        accessory=Accessory();recovery=NS(radio_accessory=lambda:accessory)
        connection=NS(handle=1,disconnect=AsyncMock())
        device=NS(power_on=AsyncMock(),power_off=AsyncMock(),connect=AsyncMock(return_value=connection),
            lookup_connection=lambda _:connection)
        transport=NS(source=None,sink=None,close=AsyncMock(return_value={'restoreConfirmed':True}))
        async def factory(_):return transport
        async def probe(c,k,report,**kwargs):
            self.assertEqual(len(k),16)
            self.assertEqual(kwargs,{'timeout':12})
            report('encryption_confirmed');report('initialization_response',status=0)
            report('capabilities',raw=3)
        with patch('bumble.device.Device.from_config_with_hci',return_value=device),\
             patch.object(radio,'configure_owner_host'),\
             patch.object(radio,'scan_case',AsyncMock(return_value=('address',{},-30))),\
             patch.object(owner,'query_primary',AsyncMock(return_value=accessory._primary_gen[6].adv_key_bytes)),\
             patch.object(radio,'probe_connection',probe):
            result=await owner._diagnostic(recovery,None,factory)
        self.assertEqual(result['state'],'owner_link_verified')
        self.assertTrue(result['encryptionConfirmed']);self.assertTrue(result['bluetoothRestored'])
        self.assertFalse(result['rangingProven']);self.assertEqual(result['capabilitiesRaw'],3)
        self.assertNotIn('address',json.dumps(result));self.assertNotIn('secret',json.dumps(result))
        connection.disconnect.assert_awaited_once();device.power_off.assert_awaited_once()
        transport.close.assert_awaited_once()

    async def test_failure_does_not_echo_exception_and_always_restores(self):
        transport=NS(source=None,sink=None,close=AsyncMock(return_value={'restoreConfirmed':False}))
        async def factory(_):return transport
        with patch('bumble.device.Device.from_config_with_hci',side_effect=RuntimeError('PRIVATE SECRET')):
            result=await owner._diagnostic(NS(radio_accessory=Accessory),None,factory)
        self.assertEqual(result['state'],'restore_unconfirmed')
        self.assertNotIn('PRIVATE',json.dumps(result));self.assertFalse(result['encryptionConfirmed'])
        transport.close.assert_awaited_once()

    async def test_expired_selection_fails_before_opening_root(self):
        def missing():raise RuntimeError('expired private record')
        factory=AsyncMock()
        result=await owner._diagnostic(NS(radio_accessory=missing),None,factory)
        self.assertEqual(result['state'],'error');factory.assert_not_awaited()
        self.assertNotIn('private',json.dumps(result))

if __name__=='__main__':unittest.main()
