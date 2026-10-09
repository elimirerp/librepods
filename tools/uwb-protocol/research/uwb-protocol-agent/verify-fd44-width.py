"""Synthetic ATT-only test: no controller, account, keys, or transport."""
import asyncio
import json
from bumble import att
from bumble.core import UUID
from bumble.gatt import GATT_PRIMARY_SERVICE_ATTRIBUTE_TYPE
from bumble.gatt_server import Server
from bumble.gatt_client import Client

class Declaration:
    handle = 1
    end_group_handle = 8
    type = GATT_PRIMARY_SERVICE_ATTRIBUTE_TYPE
    async def read_value(self, bearer):
        return UUID('FD44').to_pdu_bytes()

class FakeServer:
    attributes = [Declaration()]
    def send_response(self, bearer, response):
        self.response = response

class FakeBearer:
    att_mtu = 23

class FakeClient:
    def __init__(self):
        self.requests = []
        self.server = FakeServer()
    async def send_request(self, request):
        self.requests.append(request.attribute_value.hex())
        await Server.on_att_find_by_type_value_request.__wrapped__(self.server, FakeBearer(), request)
        return self.server.response
    def on_service_discovered(self, service):
        pass

async def main():
    result = []
    for text in ('FD44', '0000fd44-0000-1000-8000-00805f9b34fb'):
        client = FakeClient()
        services = await Client.discover_service(client, text)
        result.append({'input':text, 'first_request_value':client.requests[0], 'services_found':len(services)})
    assert UUID('FD44') == UUID('0000fd44-0000-1000-8000-00805f9b34fb')
    assert [x['services_found'] for x in result] == [1, 0]
    print(json.dumps({'semantic_uuid_equal':True,'synthetic_results':result}, indent=2))

asyncio.run(main())
