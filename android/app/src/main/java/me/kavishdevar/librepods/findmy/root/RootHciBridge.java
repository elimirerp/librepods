package me.kavishdevar.librepods.findmy.root;

import android.content.AttributionSource;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/** Root-only H4 pipe. Keys/packets aren't logged; EOF or deadline restores Android Bluetooth. */
public final class RootHciBridge {
    private static final String HAL = "android.hardware.bluetooth.IBluetoothHci";
    private static final String CALLBACK = "android.hardware.bluetooth.IBluetoothHciCallbacks";
    private static final String HASH = "f0eb2eb6d3b970cef8fb1b6e22c4ec39a4da5119";
    private static final CountDownLatch initialized = new CountDownLatch(1);
    private static volatile int initStatus = -1;
    private static volatile boolean initializeAccepted;
    private static volatile boolean changedBluetooth;
    private static String oldScan;
    private static IBinder hal;
    private static final AtomicBoolean cleaned = new AtomicBoolean();

    private static void event(String name) {
        System.err.println("{\"event\":\"" + name + "\"}");
        System.err.flush();
    }

    private static IBinder service(String name) throws Exception {
        return (IBinder) Class.forName("android.os.ServiceManager")
            .getMethod("checkService", String.class).invoke(null, name);
    }

    private static Parcel request(String descriptor) {
        Parcel data = Parcel.obtain();
        data.writeInterfaceToken(descriptor);
        return data;
    }

    private static void call(int code, Parcel data) throws Exception {
        Parcel reply = Parcel.obtain();
        try {
            if (!hal.transact(code, data, reply, 0)) throw new RemoteException("HAL transaction unavailable");
            reply.readException();
        } finally { data.recycle(); reply.recycle(); }
    }

    private static int adapterState() throws Exception {
        IBinder manager = service("bluetooth_manager");
        java.lang.reflect.Field code = Class.forName("android.bluetooth.IBluetoothManager$Stub")
            .getDeclaredField("TRANSACTION_getState");
        code.setAccessible(true);
        Parcel data = request("android.bluetooth.IBluetoothManager"), reply = Parcel.obtain();
        try {
            if (!manager.transact(code.getInt(null), data, reply, 0)) throw new RemoteException("No state");
            reply.readException(); return reply.readInt();
        } finally { data.recycle(); reply.recycle(); }
    }

    private static void holdOff(boolean hold) throws Exception {
        if (android.os.Process.myUid() == 0) {
            String classpath = System.getenv("CLASSPATH");
            if (classpath == null || classpath.indexOf('\n') >= 0) throw new IllegalStateException("Classpath unavailable");
            String quoted = "'" + classpath.replace("'", "'\\''") + "'";
            // Samsung validates this operation's package/UID attribution. Use a real
            // shell UID in a separate process; retain root in the radio process.
            command("/system/bin/su", "2000", "-c", "CLASSPATH=" + quoted
                + " /system/bin/app_process /system/bin me.kavishdevar.librepods.findmy.root.RootHciBridge "
                + (hold ? "hold-on" : "hold-off"));
            return;
        }
        if (android.os.Process.myUid() != 2000) throw new SecurityException("Shell attribution required");
        IBinder manager = service("bluetooth_manager");
        java.lang.reflect.Field code = Class.forName("android.bluetooth.IBluetoothManager$Stub")
            .getDeclaredField("TRANSACTION_shutdown");
        code.setAccessible(true);
        Parcel data = request("android.bluetooth.IBluetoothManager"), reply = Parcel.obtain();
        try {
            data.writeBoolean(hold);
            data.writeTypedObject(new AttributionSource.Builder(2000).setPackageName("com.android.shell").build(), 0);
            if (!manager.transact(code.getInt(null), data, reply, 0)) throw new RemoteException("No shutdown");
            reply.readException();
            boolean accepted = reply.readBoolean();
            if (hold && !accepted) throw new IllegalStateException("Shutdown rejected");
        } finally { data.recycle(); reply.recycle(); }
    }

    private static String command(String... args) throws Exception {
        Process child = new ProcessBuilder(args).redirectErrorStream(true).start();
        try {
            if (!child.waitFor(5, TimeUnit.SECONDS)) throw new IOException("Command timeout");
            byte[] text = new byte[4096];
            int size = child.getInputStream().read(text);
            if (child.exitValue() != 0) throw new IOException("Command failed");
            return size > 0 ? new String(text, 0, size, java.nio.charset.StandardCharsets.UTF_8).trim() : "";
        } finally { child.destroy(); }
    }

    private static void cleanup() {
        if (!cleaned.compareAndSet(false, true)) return;
        if (initializeAccepted && initStatus != 1) {
            try { call(1, request(HAL)); event("hal_closed"); }
            catch (Exception ignored) { event("hal_close_failed"); }
        }
        if (changedBluetooth) {
            try { holdOff(false); } catch (Exception ignored) { event("hold_release_failed"); }
            try {
                if ("null".equals(oldScan)) command("/system/bin/settings", "delete", "global", "ble_scan_always_enabled");
                else command("/system/bin/settings", "put", "global", "ble_scan_always_enabled", oldScan);
            } catch (Exception ignored) { event("scan_restore_failed"); }
            try {
                command("/system/bin/cmd", "bluetooth_manager", "enable");
                for (int n = 0; n < 16 && adapterState() != 12; n++) Thread.sleep(500);
                event(adapterState() == 12 ? "bluetooth_restored" : "bluetooth_restore_pending");
            } catch (Exception ignored) { event("bluetooth_restore_failed"); }
        }
    }

    private static final class Callback extends Binder implements IInterface {
        Callback() throws Exception {
            attachInterface(this, CALLBACK);
            Method mark = Binder.class.getDeclaredMethod("markVintfStability");
            mark.setAccessible(true); mark.invoke(this);
        }
        public IBinder asBinder() { return this; }
        protected boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == INTERFACE_TRANSACTION) { reply.writeString(CALLBACK); return true; }
            data.enforceInterface(CALLBACK);
            if (code == 16777215) { reply.writeNoException(); reply.writeInt(1); return true; }
            if (code == 16777214) { reply.writeNoException(); reply.writeString(HASH); return true; }
            if (code == 3) {
                initStatus = data.readInt(); initialized.countDown();
            } else if (code == 1 || code == 2 || code == 4 || code == 5) {
                byte[] packet = data.createByteArray();
                if (packet == null || packet.length > 65540) throw new RemoteException("Invalid packet");
                int type = code == 1 ? 2 : code == 2 ? 4 : code == 4 ? 5 : 3;
                synchronized (System.out) {
                    try {
                        System.out.write(type); System.out.write(packet); System.out.flush();
                        if (System.out.checkError()) throw new IOException("Pipe closed");
                    } catch (IOException error) { throw new RemoteException("Output pipe closed"); }
                }
            } else return super.onTransact(code, data, reply, flags);
            if (reply != null) reply.writeNoException();
            return true;
        }
    }

    private static void forward() throws Exception {
        DataInputStream input = new DataInputStream(System.in);
        while (true) {
            int type;
            try { type = input.readUnsignedByte(); } catch (EOFException done) { return; }
            int headerSize = type == 1 || type == 3 ? 3 : type == 2 || type == 5 ? 4 : -1;
            if (headerSize < 0) throw new IOException("Unsupported H4 input");
            byte[] header = new byte[headerSize]; input.readFully(header);
            int length = headerSize == 3 ? header[2] & 255 : (header[2] & 255) | ((header[3] & 255) << 8);
            if (type == 5) length &= 0x3fff;
            byte[] packet = new byte[headerSize + length];
            System.arraycopy(header, 0, packet, 0, headerSize);
            input.readFully(packet, headerSize, length);
            Parcel data = request(HAL); data.writeByteArray(packet);
            call(type == 1 ? 4 : type == 2 ? 3 : type == 5 ? 5 : 6, data);
        }
    }

    public static void main(String[] args) {
        int exit = 1;
        Runtime.getRuntime().addShutdownHook(new Thread(RootHciBridge::cleanup, "restore-bluetooth"));
        Thread deadline = new Thread(() -> {
            try { Thread.sleep(180000); } catch (InterruptedException ignored) { return; }
            event("deadline"); System.exit(124);
        }, "hci-deadline");
        deadline.setDaemon(true); deadline.start();
        try {
            if (args.length == 1 && android.os.Process.myUid() == 2000 &&
                    ("hold-on".equals(args[0]) || "hold-off".equals(args[0]))) {
                holdOff("hold-on".equals(args[0]));
                event("hold_applied"); exit = 0; return;
            }
            if (args.length != 1 || !"bridge".equals(args[0]) || android.os.Process.myUid() != 0)
                throw new SecurityException("Root bridge required");
            if (adapterState() != 12) throw new IllegalStateException("Initial Bluetooth must be ON");
            hal = service(HAL + "/default");
            if (hal == null) throw new IllegalStateException("HAL unavailable");
            Parcel data = request(HAL), reply = Parcel.obtain();
            try {
                if (!hal.transact(16777214, data, reply, 0)) throw new RemoteException("No hash");
                reply.readException();
                if (!HASH.equals(reply.readString())) throw new IllegalStateException("Unsupported HAL");
            } finally { data.recycle(); reply.recycle(); }
            oldScan = command("/system/bin/settings", "get", "global", "ble_scan_always_enabled");
            if (!oldScan.equals("null") && !oldScan.matches("[0-9]+")) throw new IllegalStateException("Scan setting unavailable");
            changedBluetooth = true;
            command("/system/bin/settings", "put", "global", "ble_scan_always_enabled", "0");
            holdOff(true);
            for (int n = 0; n < 24 && adapterState() != 10; n++) Thread.sleep(500);
            if (adapterState() != 10) throw new IllegalStateException("Android Bluetooth still active");
            Callback callback = new Callback();
            data = request(HAL); data.writeStrongBinder(callback); call(2, data);
            initializeAccepted = true;
            if (!initialized.await(8, TimeUnit.SECONDS) || initStatus != 0)
                throw new IllegalStateException("HAL initialization failed");
            event("bridge_ready");
            forward(); exit = 0;
        } catch (Throwable error) {
            event("bridge_failed_" + (error.getCause() == null ? error : error.getCause()).getClass().getSimpleName());
        } finally {
            cleanup(); System.exit(exit);
        }
    }
}
