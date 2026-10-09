"""Synthetic account boundary tests: no live credentials, network, ADI or Bluetooth."""
import copy
import json
import sys
import unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / 'main/python'))
from findmy_account import AccountSession, _dependencies, _provider, _identity, _close_account

PROFILE = dict(model="MacBookPro13,2", os_name="macOS", os_version="13.1", os_build="22C65", cfnetwork="1404.0.5", darwin="22.2.0")
IDS = dict(uid="synthetic-local-user", devid="SYNTHETIC-DEVICE")

class Bridge:
    def hardwareProfileJson(self): return json.dumps(PROFILE)
    def deviceIdsJson(self): return json.dumps(IDS)
    def serial(self): return '0LIBREPDTEST'
    def otp(self): return 'synthetic-otp'
    def machine(self): return 'synthetic-machine'

class Invalid(Exception): pass
class Unauthorized(Exception): pass
class Unavailable(Exception): pass
from enum import Enum
class State(Enum):
    LOGGED_OUT=0
    REQUIRE_2FA=1
    AUTHENTICATED=2
    LOGGED_IN=3

class Provider:
    def __init__(self, **kwargs): self.kwargs=kwargs
class Identity:
    @classmethod
    def from_json(cls, data): return data
class Sms:
    phone_number='•••• 1234'
    def __init__(self, account): self.account=account; self.requested=False
    def request(self): self.requested=True
    def submit(self, code):
        if code!='123456': raise Unauthorized('DO NOT EXPOSE synthetic session token')
        self.account.login_state=State.LOGGED_IN
        self.account.snapshot['login']['state']=3
        return State.LOGGED_IN
class Trusted:
    def __init__(self, account): self.inner=Sms(account)
    def request(self): return self.inner.request()
    def submit(self, code): return self.inner.submit(code)

class FakeAccount:
    created=[]
    next_state=State.REQUIRE_2FA
    failure=None
    def __init__(self, provider, state_info=None, **kwargs):
        self.provider=provider; self.closed=False
        self.login_state=State.LOGGED_OUT if state_info is None else State(state_info['login']['state'])
        self.snapshot=copy.deepcopy(state_info) if state_info is not None else {
            'type':'account','ids':IDS.copy(),'account':{'username':None,'password':None,'info':None},
            'login':{'state':0,'data':{'synthetic_token':'not-live'}},'anisette':provider.to_json()}
        self.created.append(self)
    def login(self, email, password):
        self.snapshot['account'].update(username=email,password=password)
        if self.failure: raise self.failure
        self.login_state=self.next_state; self.snapshot['login']['state']=self.next_state.value
        return self.login_state
    def get_2fa_methods(self): return [Sms(self),Trusted(self)]
    def to_json(self): return copy.deepcopy(self.snapshot)
    def close(self): self.closed=True
    def fetch_terms(self): return [SimpleNamespace(html='<p>Synthetic terms</p>')]
    def accept_terms(self, terms): self.accepted=terms
    def complete_login(self):
        self.login_state=State.LOGGED_IN; self.snapshot['login']['state']=3; return self.login_state

DEPS=SimpleNamespace(Account=FakeAccount,ProviderBase=Provider,Identity=Identity,State=State,Sms=Sms,Trusted=Trusted,
                     Invalid=Invalid,Unauthorized=Unauthorized,Unavailable=Unavailable)

class AccountBoundaryTests(unittest.TestCase):
    def setUp(self):
        FakeAccount.created.clear(); FakeAccount.next_state=State.REQUIRE_2FA; FakeAccount.failure=None
        self.session=AccountSession(Bridge(),DEPS)
    def tearDown(self): self.session.close()
    def signed_in(self):
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password')
        self.session.request_code('0'); return json.loads(self.session.submit_code('123456'))
    def test_sms_request_and_submit_are_separate(self):
        result=json.loads(self.session.sign_in('synthetic@example.invalid','synthetic-only-password'))
        self.assertEqual(result['state'],'needs_2fa')
        self.assertEqual([m['kind'] for m in result['methods']],['sms','trusted_device'])
        self.assertFalse(self.session.methods['0'].requested)
        self.session.request_code('0'); self.assertTrue(self.session.methods['0'].requested)
        self.assertEqual(self.signed_in()['state'],'signed_in')
    def test_password_never_exported_after_completed_signin(self):
        self.signed_in(); exported=self.session.export_session()
        self.assertNotIn('synthetic-only-password',exported)
        self.assertIsNone(json.loads(exported)['account']['account']['password'])
        self.assertTrue(FakeAccount.created[0].closed)
        self.assertEqual(self.session.methods,{})
    def test_partial_2fa_cannot_be_persisted(self):
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password')
        with self.assertRaises(ValueError): self.session.export_session()
    def test_restore_keeps_ids_and_local_provider(self):
        self.signed_in(); saved=self.session.export_session()
        result=json.loads(self.session.restore(saved))
        self.assertEqual(result['state'],'signed_in')
        self.assertEqual(self.session.account.snapshot['ids'],IDS)
        self.assertEqual(self.session.account.provider.to_json()['type'],'librepodsNativeADI')
    def test_wrong_local_machine_fails_closed(self):
        self.signed_in(); saved=json.loads(self.session.export_session()); saved['identity']['ids']['uid']='other'
        self.assertEqual(json.loads(self.session.restore(json.dumps(saved)))['state'],'reauth_required')
        self.assertIsNone(self.session.account)
    def test_provider_tamper_fails_closed(self):
        self.signed_in(); saved=json.loads(self.session.export_session()); saved['account']['anisette']['type']='aniRemote'
        self.assertEqual(json.loads(self.session.restore(json.dumps(saved)))['state'],'reauth_required')
    def test_corrupt_session_fails_closed(self):
        self.assertEqual(json.loads(self.session.restore('{not json'))['state'],'reauth_required')
    def test_bad_code_preserves_2fa_without_exposing_error(self):
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password'); self.session.request_code('0')
        result=self.session.submit_code('999999')
        self.assertNotIn('synthetic session token',result)
        self.assertEqual(json.loads(result)['state'],'needs_2fa')
        self.assertEqual(json.loads(self.session.submit_code('123456'))['state'],'signed_in')
    def test_six_digit_code_validation_no_call(self):
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password'); self.session.request_code('0')
        self.assertEqual(json.loads(self.session.submit_code('１２３４５６'))['state'],'needs_2fa')
        self.assertEqual(self.session.account.login_state,State.REQUIRE_2FA)
    def test_credentials_failure_closes_account_no_raw_error(self):
        FakeAccount.failure=Invalid('synthetic-only-password')
        result=self.session.sign_in('synthetic@example.invalid','synthetic-only-password')
        self.assertNotIn('synthetic-only-password',result)
        self.assertIsNone(self.session.account)
        self.assertTrue(FakeAccount.created[0].closed)
    def test_terms_require_fetch_before_accept(self):
        FakeAccount.next_state=State.AUTHENTICATED
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password')
        self.assertEqual(json.loads(self.session.accept_terms())['state'],'needs_terms')
        self.assertIn('Synthetic terms',self.session.fetch_terms())
        self.assertEqual(json.loads(self.session.accept_terms())['state'],'signed_in')
    def test_trusted_device_can_complete_signin(self):
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password')
        self.session.request_code('1')
        self.assertEqual(json.loads(self.session.submit_code('123456'))['state'],'signed_in')
    def test_request_failure_keeps_methods_and_can_retry(self):
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password')
        method=self.session.methods['0']
        with patch.object(method,'request',side_effect=Unavailable('private Apple payload')):
            result=json.loads(self.session.request_code('0'))
        self.assertEqual(result['state'],'needs_2fa')
        self.assertEqual(len(result['methods']),2)
        self.assertIsNone(result['selectedMethodId'])
        self.assertNotIn('private Apple payload',json.dumps(result))
        self.assertEqual(json.loads(self.session.request_code('0'))['selectedMethodId'],'0')
    def test_submit_network_failure_keeps_selected_method(self):
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password')
        self.session.request_code('0')
        with patch.object(self.session.methods['0'],'submit',side_effect=TimeoutError('private token')):
            result=json.loads(self.session.submit_code('123456'))
        self.assertEqual(result['state'],'needs_2fa')
        self.assertEqual(result['selectedMethodId'],'0')
        self.assertEqual(len(result['methods']),2)
        self.assertEqual(json.loads(self.session.submit_code('123456'))['state'],'signed_in')
    def test_method_discovery_failure_clears_credentials(self):
        with patch.object(FakeAccount,'get_2fa_methods',side_effect=TimeoutError('private token')):
            result=json.loads(self.session.sign_in('synthetic@example.invalid','synthetic-only-password'))
        self.assertEqual(result['state'],'error')
        self.assertIsNone(self.session.account)
        self.assertTrue(FakeAccount.created[0].closed)
    def test_terms_acceptance_failure_keeps_reviewed_text(self):
        FakeAccount.next_state=State.AUTHENTICATED
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password'); self.session.fetch_terms()
        with patch.object(self.session.account,'accept_terms',side_effect=Unavailable('private token')):
            result=json.loads(self.session.accept_terms())
        self.assertEqual(result['state'],'needs_terms')
        self.assertIn('Synthetic terms',result['termsHtml'])
        self.assertEqual(len(self.session.pending_terms),1)
        self.assertEqual(json.loads(self.session.accept_terms())['state'],'signed_in')
    def test_terms_completion_retry_does_not_accept_again(self):
        FakeAccount.next_state=State.AUTHENTICATED
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password'); self.session.fetch_terms()
        account=self.session.account
        with patch.object(account,'accept_terms',wraps=account.accept_terms) as accept:
            with patch.object(account,'complete_login',side_effect=TimeoutError('private token')):
                result=json.loads(self.session.accept_terms())
            self.assertEqual(result['state'],'needs_terms')
            self.assertIn('Synthetic terms',result['termsHtml'])
            self.assertEqual(json.loads(self.session.accept_terms())['state'],'signed_in')
            self.assertEqual(accept.call_count,1)
    def test_expired_terms_session_closes_password_bearing_account(self):
        FakeAccount.next_state=State.AUTHENTICATED
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password'); self.session.fetch_terms()
        account=self.session.account
        with patch.object(account,'accept_terms',side_effect=Unauthorized('private token')):
            self.assertEqual(json.loads(self.session.accept_terms())['state'],'reauth_required')
        self.assertIsNone(self.session.account)
        self.assertTrue(account.closed)
        self.assertEqual(self.session.terms,[])
    def test_signout_then_signin_drops_prior_verification_method(self):
        self.session.sign_in('synthetic@example.invalid','synthetic-only-password'); self.session.request_code('1')
        self.session.close()
        result=json.loads(self.session.sign_in('synthetic@example.invalid','synthetic-only-password'))
        self.assertEqual(result['state'],'needs_2fa')
        self.assertIsNone(result['selectedMethodId'])
    def test_restore_rejects_password_or_incomplete_login(self):
        self.signed_in(); saved=json.loads(self.session.export_session())
        for field,value in [('password','synthetic-only-password'),('state',State.REQUIRE_2FA.value)]:
            broken=copy.deepcopy(saved)
            if field=='password': broken['account']['account'][field]=value
            else: broken['account']['login'][field]=value
            self.assertEqual(json.loads(self.session.restore(json.dumps(broken)))['state'],'reauth_required')
            self.assertIsNone(self.session.account)
    def test_incomplete_identity_rejected(self):
        bridge=Bridge(); bridge.hardwareProfileJson=lambda:json.dumps({'model':'only'})
        with self.assertRaises(ValueError): AccountSession(bridge,DEPS)

class ActualPinnedDependencyTests(unittest.TestCase):
    def test_supported_constructor_with_custom_native_provider_roundtrip_without_network(self):
        deps=_dependencies(); identity=_identity(Bridge()); provider=_provider(Bridge(),identity,deps)
        # This real FindMy constructor and serialization must work with our native provider.
        # Disallow HTTP requests, ensuring this fixture never reaches a live account endpoint.
        with patch('aiohttp.ClientSession._request', side_effect=AssertionError('network forbidden')):
            account=deps.Account(provider,uid=IDS['uid'],devid=IDS['devid'],timeout=30,device_name='LibrePods')
            state=account.to_json()
            self.assertEqual(state['ids'],IDS)
            self.assertEqual(state['anisette']['type'],'librepodsNativeADI')
            self.assertIsNone(state['account']['password'])
            restored=deps.Account(provider,state_info=state,timeout=30)
            self.assertEqual(restored.to_json()['ids'],IDS)
            _close_account(restored); _close_account(account)
    def test_missing_local_otp_never_uses_remote(self):
        bridge=Bridge(); bridge.otp=lambda:''
        provider=_provider(bridge,_identity(bridge),_dependencies())
        with self.assertRaises(RuntimeError): _=provider.otp

if __name__=='__main__': unittest.main()
