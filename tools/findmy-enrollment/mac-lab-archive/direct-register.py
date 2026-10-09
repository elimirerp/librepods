#!/usr/bin/env python3
"""Experimental, target-limited AirPods registration. Credentials stay in memory."""
import argparse
import asyncio
import datetime as dt
import ctypes
import getpass
import json
import logging
import os
import plistlib
import pwd
from urllib.parse import urlparse
from pathlib import Path
import re
import socket
import struct
import subprocess
import sys
import time
import uuid

import aiohttp
from findmy import AsyncAppleAccount, LocalAnisetteProvider, LoginState
from findmy.util.tls import apple_trust_context

BASE = Path(__file__).resolve().parent
STATE = BASE / '.direct-state'
TARGET = 'REDACTED_OWNED_IDENTIFIER'
GROUP = 'REDACTED_OWNED_IDENTIFIER'
ADDRESS = 'REDACTED_OWNED_IDENTIFIER'
SERIAL = 'REDACTED_OWNED_IDENTIFIER'
HOST_RE = re.compile(r'(?:p[0-9]+-)?fmip(?:mobile)?\.icloud\.com\Z')
logging.disable(logging.CRITICAL)


def save_private(path, obj):
    temporary = path.with_suffix('.tmp')
    fd = os.open(temporary, os.O_WRONLY | os.O_CREAT | os.O_TRUNC | os.O_NOFOLLOW, 0o600)
    with os.fdopen(fd, 'w') as f:
        json.dump(obj, f)
    temporary.replace(path)


def note(event, **data):
    record = {'time': dt.datetime.now(dt.timezone.utc).isoformat(), 'event': event, **data}
    print(json.dumps(record), flush=True)
    fd = os.open(STATE / 'results.jsonl', os.O_WRONLY | os.O_CREAT | os.O_APPEND | os.O_NOFOLLOW, 0o600)
    with os.fdopen(fd, 'a') as f:
        f.write(json.dumps(record) + '\n')


def host_reference(last_active):
    # FMDSystemConfig_macosx.deviceUDID calls gethostuuid, then CFUUIDCreateString.
    # FMDBluetoothAccessory.otherDeviceInfo returns a one-element HOST array.
    class Timespec(ctypes.Structure):
        _fields_ = [('seconds', ctypes.c_long), ('nanoseconds', ctypes.c_long)]
    host_bytes = (ctypes.c_ubyte * 16)()
    timeout = Timespec(3, 0)
    libc = ctypes.CDLL('/usr/lib/libSystem.B.dylib', use_errno=True)
    libc.gethostuuid.argtypes = [ctypes.POINTER(ctypes.c_ubyte), ctypes.POINTER(Timespec)]
    libc.gethostuuid.restype = ctypes.c_int
    if libc.gethostuuid(host_bytes, ctypes.byref(timeout)):
        raise OSError('Cannot read this Mac\'s Find My host identifier')
    host_id = str(uuid.UUID(bytes=bytes(host_bytes))).upper()
    hardware = json.loads(subprocess.check_output(
        ['/usr/sbin/system_profiler','-json','SPHardwareDataType'], timeout=15))
    model_name = hardware['SPHardwareDataType'][0]['machine_model']
    return {'deviceName':subprocess.check_output(['/usr/sbin/scutil','--get','ComputerName'],text=True).strip(),
            'udid':host_id,'deviceClass':model_name,'platform':'macosx',
            'productType':subprocess.check_output(['/usr/sbin/sysctl','-n','hw.model'],text=True).strip(),
            'lastActiveTime':last_active}


def payload(platform, profile='bluetooth'):
    if platform not in ('macosx_proxy', 'iphoneos_proxy'):
        raise ValueError('Unknown platform')
    try:
        raw = subprocess.check_output([str(BASE/'bin/registration-record'), ADDRESS, GROUP], timeout=10,stderr=subprocess.DEVNULL)
        info = json.loads(raw)['accessoryIdentity']
    except subprocess.CalledProcessError:
        if os.stat('/dev/console').st_uid == os.getuid():
            raise
        # Fast user switching hides this user's pairing. Keep the already verified
        # accessory identity; do not read the other user's Bluetooth/account data.
        info = json.loads((BASE/'registration-candidate.json').read_text())['accessoryIdentity']
        info['connectionStatus']='disconnected'
        note('using_verified_cached_identity',reason='different_console_user')
    if info.get('udid') != TARGET or info.get('baUUID') != GROUP or info.get('deviceDiscoveryId') != ADDRESS:
        raise ValueError('Target identity mismatch')
    info.update(platform=platform, findMyiPhone=True, locationServicesEnabled=True,
                activationLock=False, batteryInfo=[], audioChannels=[], otherDevices=[])
    info['otherDevices'] = [host_reference(info.get('lastActiveTime',0))]
    info['aps-token'] = 'TOKEN'  # Literal in Apple's accessory registration implementation.
    # The proxy's productVersion is the host version, not the earbud firmware.
    info['productVersion'] = subprocess.check_output(['/usr/bin/sw_vers','-productVersion'], text=True).strip()
    if profile == 'extension':
        # FMDExtHelper uses SHA256(BT_<vendor>_<product>) for product type,
        # retaining SHA256(BT_<address>) as the accessory's own identity.
        product_type = 'd698de70c4177995dbe15a33e3985e66db0bfa044dfd70dd38e82262394bac0d'
        configurations = json.loads((STATE/'airpods-product-configuration.json').read_text())
        matches = [item for item in configurations
                   if item.get('type') == product_type and str(item.get('statusCode')) == '200']
        if len(matches) != 1 or not matches[0].get('version'):
            raise ValueError('Missing verified AirPods product configuration')
        info.update(productType=product_type, cachedConfigVersion=matches[0]['version'],
                    accessoryRSSITimestamp=-1)
        for key in ('beacons','accessoryRSSI','accessoryStyle','colorCode'):
            info.pop(key, None)
        if info.get('connectionStatus') != 'connected':
            info['lastActiveTime'] = -1
            info['otherDevices'][0]['lastActiveTime'] = -1
    elif profile != 'bluetooth':
        raise ValueError('Unknown registration profile')
    return {'deviceInfo': info, 'deviceContext': {
        'deviceTS': dt.datetime.now(dt.timezone.utc).isoformat(timespec='milliseconds').replace('+00:00','Z'),
        'cause': 'accessoryRegistryUpdate'}}


def valid_host(host):
    if not isinstance(host, str) or not HOST_RE.fullmatch(host):
        raise ValueError('Registration redirect was not an expected Apple Find My host')
    return host


async def identity():
    STATE.mkdir(mode=0o700, exist_ok=True)
    os.chmod(STATE, 0o700)
    path = STATE/'client-identity.json'
    profile = json.loads(path.read_text()) if path.exists() else {
        'ids': {'uid': str(uuid.uuid4()), 'devid': str(uuid.uuid4())},
        'anisette': {'type':'aniLocal','prov_data':None}}
    ani = LocalAnisetteProvider.from_json(profile['anisette'], libs_path=STATE/'anisette-libs.bin')
    # This file contains only stable client/provisioning state, never account credentials.
    await ani.get_headers(profile['ids']['uid'], profile['ids']['devid'])
    profile['anisette'] = ani.to_json()
    save_private(path, profile)
    return ani, profile


class RegistrationClient:
    def __init__(self, account):
        self.account = account
        data = account._login_state_data  # Version pinned to FindMy.py 0.10.2.
        self.dsid = str(data['dsid'])
        if not self.dsid.isdecimal():
            raise ValueError('Invalid account identifier')
        tokens = data['mobileme_data']['tokens']
        self.token = tokens.get('mmeFMIPToken')
        self.app_token = tokens.get('mmeFMIPAppToken')
        if not self.token:
            raise ValueError('Apple did not return mmeFMIPToken')
        self.device_id = account._devid
        self.register_host = 'fmip.icloud.com'
        self.viewer_host = 'fmipmobile.icloud.com'
        self.session = aiohttp.ClientSession(timeout=aiohttp.ClientTimeout(total=25),
            connector=aiohttp.TCPConnector(ssl=apple_trust_context()))
        self.attempts = 0
        self.response_contexts = {}
        model=subprocess.check_output(['/usr/sbin/sysctl','-n','hw.model'],text=True).strip()
        build=subprocess.check_output(['/usr/bin/sw_vers','-buildVersion'],text=True).strip()
        self.user_agent=f'FMDClient/6.0 {model}/{build}'

    async def post(self, host, path, body, token, headers):
        host = valid_host(host)
        headers = dict(headers)
        family = 'viewer' if 'fmipservice/device/' in path else 'registration'
        contexts = getattr(self, 'response_contexts', {})
        self.response_contexts = contexts
        if contexts.get(family):
            headers['X-Apple-Ctx'] = contexts[family]
        # Native FMDRequest's registration headers do not include Anisette or
        # the sign-in client's synthetic device ID. Keep viewer auth unchanged.
        if 'fmipservice/device/' in path:
            headers.update(await self.account.get_anisette_headers(with_client_info=True))
        headers['Authorization'] = aiohttp.encode_basic_auth(self.dsid, token)
        headers.setdefault('X-Apple-PrsId', self.dsid)
        if 'fmipservice/device/' in path:
            headers['X-Apple-AuthScheme'] = 'Forever'
        for _ in range(3):
            async with self.session.post('https://'+host+path, json=body,
                    headers=headers,
                    allow_redirects=False) as response:
                content = await response.read()
                redirect = response.headers.get('X-Apple-MME-Host')
                status = response.status
                # Inspect protocol shape without recording opaque header values.
                self.last_response_header_names = sorted(response.headers.keys())
                context = response.headers.get('X-Apple-Ctx')
                self.last_response_context_present = bool(context)
                if context:
                    contexts[family] = context
                if redirect and status in (301,302,307,308,330):
                    host = valid_host(redirect)
                    continue
                try:
                    data = json.loads(content) if content else {}
                except (ValueError, UnicodeError):
                    data = {}
                if status >= 400:
                    clean = content.decode('utf-8',errors='replace')[:500]
                    secrets = [self.dsid, self.account._username or '', token]
                    secrets += list(self.account._login_state_data['mobileme_data']['tokens'].values())
                    for secret in secrets:
                        if isinstance(secret,str) and secret:
                            clean=clean.replace(secret,'[redacted]')
                    clean=re.sub(r'[A-Za-z0-9+/=_-]{30,}', '[redacted]', clean)
                    note('http_diagnostic',http_status=status,host=host,response_excerpt=clean,
                         redirect_present=bool(redirect))
                # Raw credentials and locations never enter logs.
                return status, data, host, len(content)
        raise RuntimeError('Too many Apple redirects')

    async def register(self, platform, cause='deviceDidPair', profile='bluetooth'):
        if self.attempts >= 8:
            return {'error':'Registration attempt limit reached'}
        if cause not in ('deviceDidPair','accessoryRegistryUpdate'):
            raise ValueError('Unsupported registration cause')
        body = payload(platform, profile)
        body['deviceContext']['cause'] = cause
        self.attempts += 1
        headers = {'X-Apple-PrsId': self.dsid, 'X-Apple-Find-API-Ver':'6.0',
            'X-Apple-Realm-Support':'1.0','X-Apple-PushEnv':'production',
            'User-Agent':self.user_agent, 'Content-Type':'application/json'}
        status, data, host, size = await self.post(self.register_host,
            f'/fmipservice/findme/{self.dsid}/{TARGET}/register', body, self.token, headers)
        self.register_host = host
        result = {'http_status':status,'platform':platform,'cause':cause,'profile':profile,'response_bytes':size,
                  'registration_confirmed':False,
                  'host_reference_present':bool(body['deviceInfo']['otherDevices']),
                  'response_header_names':self.last_response_header_names}
        for key in ('statusCode','errorCode'):
            if isinstance(data.get(key), (int,float)) or (isinstance(data.get(key),str) and data[key].isdecimal()):
                result[key] = data[key]
        if data.get('alert'):
            result['server_alert_present'] = True
        note('accessory_registration_response', **result)
        return result

    async def refresh_configuration(self):
        service=self.account._login_state_data['mobileme_data']
        token=service['tokens'].get('mmeAuthToken')
        if not token:
            note('configuration',error='No general iCloud service token')
            return
        headers=await self.account.get_anisette_headers(with_client_info=True)
        headers['Authorization']=aiohttp.encode_basic_auth(self.dsid,token)
        headers['Accept']='application/x-apple-plist'
        async with self.session.get('https://setup.icloud.com/setup/get_account_settings',
                headers=headers,allow_redirects=False) as response:
            content=await response.read()
            status=response.status
        if status != 200:
            note('configuration',http_status=status,response_bytes=len(content))
            return
        data=plistlib.loads(content)
        fresh=data.get('tokens',{})
        changed={name: bool(fresh.get(name) and fresh.get(name)!=service['tokens'].get(name))
                 for name in ('mmeFMIPToken','mmeFMIPAppToken')}
        service['tokens'].update(fresh)
        self.token=service['tokens'].get('mmeFMIPToken',self.token)
        self.app_token=service['tokens'].get('mmeFMIPAppToken',self.app_token)
        hosts=set()
        def find_hosts(value):
            if isinstance(value,dict):
                for item in value.values(): find_hosts(item)
            elif isinstance(value,list):
                for item in value: find_hosts(item)
            elif isinstance(value,str) and value.startswith('https://'):
                hostname=urlparse(value).hostname
                if hostname and HOST_RE.fullmatch(hostname): hosts.add(hostname)
        find_hosts(data)
        for host in sorted(hosts):
            if 'fmipmobile.' in host: self.viewer_host=host
            elif 'fmip.' in host: self.register_host=host
        self.configuration_checked = True
        note('configuration',http_status=status,findmy_hosts=sorted(hosts),tokens_refreshed=changed)

    async def device_list(self):
        if not getattr(self,'configuration_checked',False):
            await self.refresh_configuration()
        if not self.app_token:
            return {'error':'No Find My application token returned'}
        body = {'clientContext': {'appName':'FindMyiPhone','appVersion':'7.0',
             'fmly':False,'shouldLocate':False,'deviceUDID':self.device_id,
            'productType':subprocess.check_output(['/usr/sbin/sysctl','-n','hw.model'],text=True).strip(),
            'osVersion':subprocess.check_output(['/usr/bin/sw_vers','-productVersion'],text=True).strip(),
            'osBuild':subprocess.check_output(['/usr/bin/sw_vers','-buildVersion'],text=True).strip(),
            'buildVersion':'517','clientTimestamp':int(time.time()*1000),
            'lastSllTimestamp':0,'showSllCount':0,'inactiveTime':0,'push':False,
            'geoCountryCode':'US'}, 'serverContext':{}}
        status, data, host, _ = await self.post(self.viewer_host,
            f'/fmipservice/device/{self.dsid}/initClient', body, self.app_token,
            {'X-Apple-Find-API-Ver':'3.0','X-Apple-Realm-Support':'1.0',
             'User-Agent':'FindMyiPhone/7.0','Content-Type':'application/json'})
        self.viewer_host = host
        devices = data.get('content',[])
        if not isinstance(devices,list): devices=[]
        matches = []
        for device in devices:
            if not isinstance(device,dict): continue
            identity_values = [device.get(k) for k in ('id','baUUID','serialNumber','deviceDiscoveryId','udid')]
            serials = device.get('serialNumbers', {})
            if isinstance(serials, dict): identity_values.extend(serials.values())
            elif isinstance(serials, list): identity_values.extend(serials)
            if any(str(v).upper() in (GROUP,SERIAL,ADDRESS,TARGET.upper()) for v in identity_values):
                matches.append({'name':device.get('name'),'deviceClass':device.get('deviceClass')})
        result={'http_status':status,'device_count':len(devices),'target_found':bool(matches),
            'target_matches':matches,
            'airpods_named_entry':any('airpod' in str(d.get('name','')).lower() for d in devices if isinstance(d,dict)),
            'airpods_class_entry':any('airpod' in str(d.get('deviceClass','')).lower() for d in devices if isinstance(d,dict)),
            'response_header_names':getattr(self,'last_response_header_names',[]),
            'response_context_present':getattr(self,'last_response_context_present',False)}
        note('device_list', **result)
        return result


async def serve(client, lifetime_seconds=900):
    path=STATE/'control.sock'
    if path.exists(): path.unlink()
    stop=asyncio.Event()
    lock=asyncio.Lock()
    async def handle(reader, writer):
        try:
            conn = writer.get_extra_info('socket')
            uid_value, gid_value = ctypes.c_uint(), ctypes.c_uint()
            libc = ctypes.CDLL('/usr/lib/libSystem.B.dylib', use_errno=True)
            if libc.getpeereid(conn.fileno(), ctypes.byref(uid_value), ctypes.byref(gid_value)):
                raise OSError('Cannot verify socket peer')
            uid = uid_value.value
            if uid != os.getuid(): raise ValueError('Wrong socket peer')
            request=json.loads(await asyncio.wait_for(reader.readline(),5))
            async with lock:
                action=request.get('action')
                if action=='status': result={'authenticated':True,'attempts':client.attempts}
                elif action=='list': result=await client.device_list()
                elif action=='register': result=await client.register(request.get('platform','macosx_proxy'),
                    request.get('cause','deviceDidPair'),request.get('profile','bluetooth'))
                elif action=='stop': result={'stopped':True}; stop.set()
                else: result={'error':'Unknown command'}
        except Exception as e:
            result={'error':type(e).__name__}
        writer.write(json.dumps(result).encode()+b'\n')
        await writer.drain()
        writer.close()
        await writer.wait_closed()
    server=await asyncio.start_unix_server(handle,path=path,limit=4096)
    os.chmod(path,0o600)
    note('ready', lifetime_seconds=lifetime_seconds)
    print('Leave this window open while I inspect the result. Control-C stops it.',flush=True)
    try:
        async with server:
            try: await asyncio.wait_for(stop.wait(),lifetime_seconds)
            except asyncio.TimeoutError: pass
    finally:
        path.unlink(missing_ok=True)


async def main(mode, session_minutes=15):
    if os.geteuid()==0:
        print('Run this as your normal Mac user, without sudo.'); return 2
    if mode=='check':
        value=payload('macosx_proxy')
        print('Request validated: real AirPods ID in accessory URL and body; no Mac identity override.')
        return 0
    ani, profile = await identity()
    if mode=='prepare':
        print('Local authentication provider prepared. No Apple Account sign-in attempted.')
        await ani.close()
        return 0
    if not sys.stdin.isatty():
        await ani.close()
        raise RuntimeError('Run the sign-in command in your own Terminal')
    print('\nAirPods enrollment experiment — Apple Account sign-in\n')
    print('Use the Apple Account signed into this Mac. Sign-in goes directly to Apple.')
    print('Apple may show a new sign-in or device entry. Password and service tokens stay in memory.')
    print('After sign-in, this sends one registration for your real AirPods. Success is not guaranteed.\n')
    account=AsyncAppleAccount(ani)
    account._uid=profile['ids']['uid']; account._devid=profile['ids']['devid']
    client=None
    try:
        username=input('Apple Account email: ').strip()
        password=getpass.getpass('Apple Account password (hidden): ')
        state=await account.login(username,password)
        del password
        if state==LoginState.REQUIRE_2FA:
            methods=list(await account.get_2fa_methods())
            if not methods: raise RuntimeError('Apple returned no supported verification methods')
            for i, method in enumerate(methods,1):
                print(f'{i}. '+('Text message to '+method.phone_number if hasattr(method,'phone_number') else 'Verification on this Mac / trusted Apple device'))
            choice=input('Verification method [1]: ').strip() or '1'
            if not choice.isdecimal() or not 1<=int(choice)<=len(methods): raise ValueError('Invalid method')
            method=methods[int(choice)-1]
            await method.request()
            code=getpass.getpass('Apple verification code (hidden): ').strip()
            state=await method.submit(code)
            del code
        if state!=LoginState.LOGGED_IN: raise RuntimeError('Sign-in did not finish')
        account._password=None
        note('signed_in')
        client=RegistrationClient(account)
        try:
            baseline=await client.device_list()
        except Exception as e:
            note('device_list_error',error_type=type(e).__name__)
            baseline={}
        if baseline.get('http_status') == 200 and not baseline.get('target_found'):
            try:
                await client.register('macosx_proxy')
                await asyncio.sleep(3)
                await client.device_list()
            except Exception as e:
                note('registration_error',error_type=type(e).__name__)
                print('Sign-in worked; keeping the session available for diagnosis.',flush=True)
        await serve(client, session_minutes * 60)
    finally:
        account._password=None
        if client: await client.session.close()
        await account.close()
    return 0

if __name__=='__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--mode',choices=['check','prepare','run'],default='run')
    parser.add_argument('--session-minutes',type=int,choices=[15,60,120],default=15,
                        help='Lifetime of the in-memory sign-in session (default: 15)')
    try:
        args=parser.parse_args()
        raise SystemExit(asyncio.run(main(args.mode,args.session_minutes)))
    except (KeyboardInterrupt,EOFError):
        print('\nStopped.'); raise SystemExit(130)
    except Exception as e:
        # Library errors can contain full server responses. Never echo them with credentials.
        print('Stopped at '+type(e).__name__+'. No credentials were written to disk.',flush=True)
        if STATE.exists(): note('error',error_type=type(e).__name__)
        raise SystemExit(1)
