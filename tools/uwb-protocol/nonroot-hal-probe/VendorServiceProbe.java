import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.lang.reflect.Field;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.Objects;

/** Shell research probe: one read-only vendor-capabilities command through the
 * running Android Bluetooth host. No HAL ownership, key writes, or pairing.
 */
public final class VendorServiceProbe {
    static final String MANAGER = "android.bluetooth.IBluetoothManager";
    static final String BT = "android.bluetooth.IBluetooth";
    static final String CB = "android.bluetooth.IBluetoothHciVendorSpecificCallback";
    static final CountDownLatch complete = new CountDownLatch(1);
    static volatile int commandStatus = -1;
    static int expectedOcf = 0x153;
    static volatile boolean firmwareVersionMatched;

    static synchronized void emit(String event, String fields) {
        System.out.println("{\"event\":\"" + event + "\"" + fields + "}");
    }
    static int code(String descriptor, String method) throws Exception {
        Field f = Class.forName(descriptor + "$Stub").getDeclaredField("TRANSACTION_" + method);
        f.setAccessible(true);
        return f.getInt(null);
    }
    static IBinder service(String name) throws Exception {
        return (IBinder) Class.forName("android.os.ServiceManager")
            .getMethod("checkService", String.class).invoke(null, name);
    }
    static Parcel request(String descriptor) {
        Parcel p = Parcel.obtain(); p.writeInterfaceToken(descriptor); return p;
    }
    static Parcel call(IBinder b, int code, Parcel p) throws Exception {
        Parcel r = Parcel.obtain();
        try {
            if (!b.transact(code, p, r, 0)) throw new RemoteException("Unsupported transaction");
            r.readException(); return r;
        } catch (Exception e) { r.recycle(); throw e; }
        finally { p.recycle(); }
    }
    static int state(IBinder manager) throws Exception {
        Parcel r = call(manager, code(MANAGER, "getState"), request(MANAGER));
        try { return r.readInt(); } finally { r.recycle(); }
    }
    static final class VendorCallback extends Binder {
        protected boolean onTransact(int c, Parcel d, Parcel r, int flags) throws RemoteException {
            if (c == INTERFACE_TRANSACTION) { r.writeString(CB); return true; }
            d.enforceInterface(CB);
            if (c == 1) {
                int ocf = d.readInt(), status = d.readInt();
                emit("vendor_command_status", ",\"ocf\":" + ocf + ",\"status\":" + status);
                if (ocf == expectedOcf) { commandStatus = status; complete.countDown(); }
                return true;
            }
            if (c == 2) {
                int ocf = d.readInt(); byte[] p = d.createByteArray();
                int status = p != null && p.length > 0 ? p[0] & 255 : -1;
                emit("vendor_command_complete", ",\"ocf\":" + ocf + ",\"status\":" + status
                    + ",\"response_bytes\":" + (p == null ? 0 : p.length));
                if (ocf == 0 && expectedOcf == 0 && p != null && p.length == 15
                        && p[0] == 0 && p[1] == 0x19 && p[2] == 12) {
                    int patch = (p[7] & 255) | ((p[8] & 255) << 8);
                    int rom = (p[9] & 255) | ((p[10] & 255) << 8);
                    emit("qca_version_header", ",\"bytes\":[" + (p[0] & 255) + ","
                        + (p[1] & 255) + "," + (p[2] & 255) + "]");
                    firmwareVersionMatched = patch == 0x7c95 && rom == 0x0200;
                    emit("qca_firmware_version", ",\"patch_version\":" + patch
                        + ",\"rom_version\":" + rom
                        + ",\"matches_extracted_header\":" + firmwareVersionMatched);
                }
                if (ocf == expectedOcf) { commandStatus = status; complete.countDown(); }
                return true;
            }
            if (c == 3 || c == 4) { d.readInt(); d.createByteArray(); return true; }
            return super.onTransact(c, d, r, flags);
        }
    }
    static void metadata(String descriptor) throws Exception {
        IBinder b = service(descriptor + "/default");
        if (b == null) { emit("vendor_service_absent", ",\"interface\":\"" + descriptor + "\""); return; }
        Parcel r = call(b, 16777215, request(descriptor));
        int version; try { version = r.readInt(); } finally { r.recycle(); }
        emit("vendor_service_version", ",\"interface\":\"" + descriptor + "\",\"version\":" + version);
    }
    static void addressFileRead(IBinder manager) throws Exception {
        // ID 0 is identified by this build's BluetoothBDTestService as bt_addr.
        // Only compare results; never print or persist the address itself.
        String descriptor = "vendor.samsung.hardware.bluetooth.ISehBluetooth";
        Parcel p = request(descriptor); p.writeByte((byte) 0);
        Parcel r = call(service(descriptor + "/default"), 2, p);
        String direct;
        try { direct = r.readString(); } finally { r.recycle(); }
        p = request(MANAGER); p.writeInt(0);
        r = call(manager, code(MANAGER, "readFile"), p);
        String viaManager;
        try { viaManager = r.readString(); } finally { r.recycle(); }
        emit("known_address_file_read", ",\"direct_chars\":" + (direct == null ? -1 : direct.length())
            + ",\"manager_chars\":" + (viaManager == null ? -1 : viaManager.length())
            + ",\"equal\":" + Objects.equals(direct, viaManager)
            + ",\"file_purpose\":\"local_bluetooth_address\"");
    }
    public static void main(String[] args) {
        IBinder manager = null, bt = null;
        VendorCallback callback = new VendorCallback();
        Binder managerCallback = new Binder() {
            protected boolean onTransact(int c, Parcel d, Parcel r, int flags) {
                if (c == INTERFACE_TRANSACTION) { r.writeString("android.bluetooth.IBluetoothManagerCallback"); return true; }
                d.enforceInterface("android.bluetooth.IBluetoothManagerCallback");
                return true;
            }
        };
        boolean registered = false, adapterRegistered = false;
        int result = 1;
        try {
            String mode = args.length == 0 ? "capabilities" : args[0];
            if (args.length > 1 || !(mode.equals("capabilities") || mode.equals("address-file")
                    || mode.equals("firmware-version")))
                throw new IllegalArgumentException("Use capabilities, address-file, or firmware-version");
            if (android.os.Process.myUid() != 2000) throw new IllegalStateException("ADB shell only");
            manager = service("bluetooth_manager");
            int before = state(manager);
            emit("adapter_before", ",\"state\":" + before);
            if (before != 12) throw new IllegalStateException("Adapter must already be ON");
            metadata("vendor.samsung.hardware.bluetooth.ISehBluetooth");
            metadata("vendor.qti.hardware.bttpi.IBtTpi");
            if (mode.equals("address-file")) {
                addressFileRead(manager); result = 0; return;
            }
            expectedOcf = mode.equals("firmware-version") ? 0 : 0x153;
            Parcel p = request(MANAGER); p.writeStrongBinder(managerCallback);
            Parcel r = call(manager, code(MANAGER, "registerAdapter"), p);
            try { bt = r.readStrongBinder(); } finally { r.recycle(); }
            adapterRegistered = true;
            if (bt == null) throw new IllegalStateException("No active Bluetooth host");
            p = request(BT); p.writeStrongBinder(callback); p.writeIntArray(new int[0]); p.writeIntArray(new int[0]);
            call(bt, code(BT, "registerHciVendorSpecificCallback"), p).recycle();
            registered = true;
            emit("vendor_callback_registered", "");
            p = request(BT); p.writeInt(expectedOcf);
            p.writeByteArray(expectedOcf == 0 ? new byte[] {0x19} : new byte[0]);
            p.writeStrongBinder(callback);
            call(bt, code(BT, "sendHciVendorSpecificCommand"), p).recycle();
            emit("readonly_vendor_command_requested", ",\"ocf\":" + expectedOcf);
            boolean arrived = complete.await(5, TimeUnit.SECONDS);
            emit("readonly_vendor_command_result", ",\"callback_received\":" + arrived + ",\"status\":" + commandStatus);
            result = arrived && commandStatus == 0 ? 0 : 2;
            if (mode.equals("firmware-version")) { result = firmwareVersionMatched ? 0 : 2; return; }
            // The actual build rejects full standard opcodes in its Java wrapper.
            // Empty parameters ensure this is never a usable encryption request.
            p = request(BT); p.writeInt(0x2019); p.writeByteArray(new byte[0]); p.writeStrongBinder(callback);
            try {
                call(bt, code(BT, "sendHciVendorSpecificCommand"), p).recycle();
                emit("standard_opcode_unexpectedly_accepted", "");
            } catch (IllegalArgumentException expected) {
                emit("standard_opcode_rejected_by_api", "");
            }
        } catch (Throwable e) {
            Throwable cause = e.getCause() == null ? e : e.getCause();
            emit("failure", ",\"type\":\"" + cause.getClass().getSimpleName() + "\"");
        } finally {
            if (registered) try {
                Parcel p = request(BT); p.writeStrongBinder(callback);
                call(bt, code(BT, "unregisterHciVendorSpecificCallback"), p).recycle();
                emit("vendor_callback_unregistered", "");
            } catch (Throwable e) { emit("vendor_cleanup_failed", ""); result = 1; }
            if (adapterRegistered) try {
                Parcel p = request(MANAGER); p.writeStrongBinder(managerCallback);
                call(manager, code(MANAGER, "unregisterAdapter"), p).recycle();
            } catch (Throwable e) { emit("adapter_cleanup_failed", ""); result = 1; }
            if (manager != null) try { emit("adapter_after", ",\"state\":" + state(manager)); }
            catch (Throwable e) { emit("state_check_failed", ""); }
            System.exit(result);
        }
    }
}
