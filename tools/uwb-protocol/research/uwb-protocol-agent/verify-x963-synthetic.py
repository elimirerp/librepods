"""Synthetic only. Compare native CommonCrypto with the indexed KDF primitive.
No account/session/keys/files are read. No radio calls are made.
"""
import ctypes,hashlib,json
cc=ctypes.CDLL('/usr/lib/system/libcommonCrypto.dylib')
cc.CCKDFParametersCreateAnsiX963.argtypes=[ctypes.POINTER(ctypes.c_void_p),ctypes.c_void_p,ctypes.c_size_t]
cc.CCKDFParametersCreateAnsiX963.restype=ctypes.c_int
cc.CCDeriveKey.argtypes=[ctypes.c_void_p,ctypes.c_uint32,ctypes.c_void_p,ctypes.c_size_t,ctypes.c_void_p,ctypes.c_size_t]
cc.CCDeriveKey.restype=ctypes.c_int
cc.CCKDFParametersDestroy.argtypes=[ctypes.c_void_p]
def native(key,info,n=32):
    params=ctypes.c_void_p();out=ctypes.create_string_buffer(n)
    assert cc.CCKDFParametersCreateAnsiX963(ctypes.byref(params),info,len(info))==0
    try:assert cc.CCDeriveKey(params,10,key,len(key),out,n)==0
    finally:cc.CCKDFParametersDestroy(params)
    return out.raw
def model(key,info,n=32):
    return b''.join(hashlib.sha256(key+i.to_bytes(4,'big')+info).digest() for i in range(1,(n+31)//32+1))[:n]
seed=bytes(range(32));rows=[]
for step in range(1,4):
    updated=native(seed,b'update');assert updated==model(seed,b'update')
    intermediate=native(updated,b'intermediate');assert intermediate==model(updated,b'intermediate')
    connection=native(intermediate,b'connect');assert connection==model(intermediate,b'connect')
    diversify=native(updated,b'diversify',72);assert diversify==model(updated,b'diversify',72)
    rows.append({'synthetic_step':step,'update_matches':True,'intermediate_matches':True,'connection_matches':True,'diversify72_matches':True,'connection_token':connection.hex(),'temporary_ltk':connection[:16].hex()})
    seed=updated
print(json.dumps({'synthetic_input':bytes(range(32)).hex(),'native_digest':10,'formula':'SHA256(Z || counterBE32 || sharedinfo)','rows':rows},indent=2))
