// Research hook: only the fixed read-only CORE_GET_CAPS_INFO response.
// Attach to the owned phone's exact verified vendor UWB HAL; unload afterward.
// This observes bytes before Samsung's capability filter, without changing
// arguments, return values, controller settings, sessions, or radio operation.
const mod = Process.getModuleByName('uwb_uci.hal.so');
const target = mod.getExportByName('_Z24phNxpUciHal_print_packet20phNxpUciHal_Pkt_TypePKht');
let captured = false;
Interceptor.attach(target, {
    onEnter(args) {
        if (captured || args[0].toInt32() !== 1) return;
        const length = args[2].toUInt32() & 0xffff;
        if (length < 6 || length > 259) return;
        const header = new Uint8Array(args[1].readByteArray(4));
        if (header[0] !== 0x40 || header[1] !== 3 || header[2] !== 0 ||
            header[3] + 4 !== length) return;
        captured = true;
        send({event: 'raw_caps'}, args[1].readByteArray(length));
    }
});
send({event: 'hook_ready'});
