import android.bluetooth.BluetoothAdapter;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/** Bounded shell-only investigation of the phone's stable AIDL Bluetooth HAL.
 * No pairing, key input, scanning, arbitrary HCI commands, or persistent writes.
 * Exclusive mode requires the Android adapter (including BLE) to be fully OFF.
 */
public final class NonRootHalProbe {
    static final String HAL = "android.hardware.bluetooth.IBluetoothHci";
    static final String CALLBACK = "android.hardware.bluetooth.IBluetoothHciCallbacks";
    static final String HASH = "f0eb2eb6d3b970cef8fb1b6e22c4ec39a4da5119";
    static final CountDownLatch initialized = new CountDownLatch(1);
    static final CountDownLatch versionRead = new CountDownLatch(1);
    static volatile int initStatus = -1;

    static synchronized void emit(String event, String fields) {
        System.out.println("{\"event\":\"" + event + "\"" + fields + "}");
        System.out.flush();
    }

    static int adapterState() throws Exception {
        IBinder manager = (IBinder) Class.forName("android.os.ServiceManager")
            .getMethod("checkService", String.class).invoke(null, "bluetooth_manager");
        if (manager == null) throw new IllegalStateException("No Bluetooth manager");
        Class<?> stub = Class.forName("android.bluetooth.IBluetoothManager$Stub");
        java.lang.reflect.Field transaction = stub.getDeclaredField("TRANSACTION_getState");
        transaction.setAccessible(true);
        Parcel data = Parcel.obtain(), reply = Parcel.obtain();
        try {
            data.writeInterfaceToken("android.bluetooth.IBluetoothManager");
            if (!manager.transact(transaction.getInt(null), data, reply, 0))
                throw new RemoteException("No adapter state");
            reply.readException();
            return reply.readInt();
        } finally { data.recycle(); reply.recycle(); }
    }

    static IBinder service() throws Exception {
        return (IBinder) Class.forName("android.os.ServiceManager")
            .getMethod("checkService", String.class).invoke(null, HAL + "/default");
    }

    static void shutdownBluetooth(boolean holdOff) throws Exception {
        if (android.os.Process.myUid() != 2000)
            throw new IllegalStateException("Shutdown probe is for ADB shell only");
        IBinder manager = (IBinder) Class.forName("android.os.ServiceManager")
            .getMethod("checkService", String.class).invoke(null, "bluetooth_manager");
        java.lang.reflect.Field transaction = Class.forName("android.bluetooth.IBluetoothManager$Stub")
            .getDeclaredField("TRANSACTION_shutdown");
        transaction.setAccessible(true);
        Parcel data = Parcel.obtain(), reply = Parcel.obtain();
        try {
            data.writeInterfaceToken("android.bluetooth.IBluetoothManager");
            // Samsung's manager gate suppresses background BLE clients while held.
            // The wrapper MUST call shutdown(false) before restoring Bluetooth.
            data.writeBoolean(holdOff);
            data.writeTypedObject(new android.content.AttributionSource.Builder(2000)
                .setPackageName("com.android.shell").build(), 0);
            if (!manager.transact(transaction.getInt(null), data, reply, 0))
                throw new RemoteException("No shutdown transaction");
            reply.readException();
            emit("bluetooth_shutdown_returned", ",\"accepted\":" + reply.readBoolean());
        } finally { data.recycle(); reply.recycle(); }
    }

    static Parcel request() {
        Parcel p = Parcel.obtain();
        p.writeInterfaceToken(HAL);
        return p;
    }

    static void call(IBinder binder, int code, Parcel data) throws Exception {
        Parcel reply = Parcel.obtain();
        try {
            if (!binder.transact(code, data, reply, 0))
                throw new RemoteException("Transaction unsupported");
            reply.readException();
        } finally { data.recycle(); reply.recycle(); }
    }

    static final class Callback extends Binder implements IInterface {
        Callback() throws Exception {
            attachInterface(this, CALLBACK);
            Method mark = Binder.class.getDeclaredMethod("markVintfStability");
            mark.setAccessible(true);
            mark.invoke(this);
        }
        public IBinder asBinder() { return this; }
        protected boolean onTransact(int code, Parcel data, Parcel reply, int flags)
                throws RemoteException {
            if (code == INTERFACE_TRANSACTION) { reply.writeString(CALLBACK); return true; }
            data.enforceInterface(CALLBACK);
            if (code == 16777215) { reply.writeNoException(); reply.writeInt(1); return true; }
            if (code == 16777214) { reply.writeNoException(); reply.writeString(HASH); return true; }
            if (code == 3) {
                initStatus = data.readInt();
                emit("initialization_complete", ",\"status\":" + initStatus);
                initialized.countDown();
            } else if (code == 1 || code == 2 || code == 4 || code == 5) {
                byte[] packet = data.createByteArray();
                // Only disclose the harmless Read Local Version completion.
                if (code == 2 && packet != null && packet.length >= 6
                        && packet[0] == 0x0e && packet[3] == 0x01 && packet[4] == 0x10) {
                    emit("read_local_version_complete", ",\"status\":" + (packet[5] & 255)
                            + ",\"bytes\":" + packet.length);
                    versionRead.countDown();
                } else {
                    emit("hal_packet", ",\"kind\":" + code + ",\"bytes\":"
                            + (packet == null ? 0 : packet.length));
                }
            } else return super.onTransact(code, data, reply, flags);
            if (reply != null) reply.writeNoException();
            return true;
        }
    }

    public static void main(String[] args) {
        IBinder binder = null;
        boolean initializeAccepted = false;
        int result = 1;
        try {
            if (args.length != 1 || !(args[0].equals("status") || args[0].equals("exclusive")
                    || args[0].equals("shutdown") || args[0].equals("hold-off")))
                throw new IllegalArgumentException("Use status, exclusive, shutdown, or hold-off");
            int state = adapterState();
            emit("adapter_state", ",\"state\":" + state + ",\"uid\":" + android.os.Process.myUid());
            binder = service();
            if (binder == null) throw new IllegalStateException("HAL unavailable");
            Parcel data = request(), reply = Parcel.obtain();
            String hash;
            try {
                if (!binder.transact(16777214, data, reply, 0)) throw new RemoteException("No hash");
                reply.readException(); hash = reply.readString();
            } finally { data.recycle(); reply.recycle(); }
            if (!HASH.equals(hash)) throw new IllegalStateException("Unrecognized HAL interface hash");
            emit("interface_verified", ",\"aidl_version\":1");
            if (args[0].equals("status")) { result = 0; return; }
            if (args[0].equals("shutdown") || args[0].equals("hold-off")) {
                shutdownBluetooth(args[0].equals("hold-off")); result = 0; return;
            }
            if (state != BluetoothAdapter.STATE_OFF)
                throw new IllegalStateException("Refusing initialization while Android Bluetooth is active");
            Callback callback = new Callback();
            data = request(); data.writeStrongBinder(callback);
            call(binder, 2, data);
            initializeAccepted = true;
            emit("initialize_returned", "");
            if (!initialized.await(8, TimeUnit.SECONDS)) throw new IllegalStateException("Initialization timeout");
            if (initStatus != 0) throw new IllegalStateException("Initialization rejected");
            data = request(); data.writeByteArray(new byte[] {0x01, 0x10, 0x00});
            call(binder, 4, data);
            emit("read_local_version_sent", "");
            if (!versionRead.await(3, TimeUnit.SECONDS)) throw new IllegalStateException("No version response");
            result = 0;
        } catch (Throwable e) {
            Throwable cause = e.getCause() == null ? e : e.getCause();
            String message = String.valueOf(cause.getMessage()).replace("\\", "\\\\")
                .replace("\"", "\\\"").replace("\n", " ").replace("\r", " ");
            emit("failure", ",\"type\":\"" + cause.getClass().getSimpleName()
                    + "\",\"message\":\"" + message + "\"");
        } finally {
            // Never close another client's ALREADY_INITIALIZED session.
            if (initializeAccepted && initStatus != 1) {
                try { call(binder, 1, request()); emit("hal_closed", ""); }
                catch (Throwable e) { emit("close_failed", ""); }
            }
            System.exit(result);
        }
    }
}
