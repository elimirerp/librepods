package me.kavishdevar.librepods.findmy.root;

import android.os.IBinder;
import android.os.Parcel;
import org.json.JSONObject;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

/** Fixed, read-only entry point launched from this APK through the user's su grant. */
public final class RootBluetoothProbe {
    private static final String HAL = "android.hardware.bluetooth.IBluetoothHci";
    private static final String EXPECTED_HASH = "f0eb2eb6d3b970cef8fb1b6e22c4ec39a4da5119";

    private static IBinder service(String name) throws Exception {
        return (IBinder) Class.forName("android.os.ServiceManager")
            .getMethod("checkService", String.class).invoke(null, name);
    }

    private static boolean allowed(Method check, String source, String target, String permission)
            throws Exception {
        return (Boolean) check.invoke(null, source, target, "binder", permission);
    }

    private static String domain() throws Exception {
        return new String(Files.readAllBytes(Paths.get("/proc/self/attr/current")),
            StandardCharsets.UTF_8).replace("\u0000", "").trim();
    }

    private static void inspect(JSONObject result) throws Exception {
        String source = domain();
        result.put("selinuxDomain", source);
        Class<?> selinux = Class.forName("android.os.SELinux");
        result.put("selinuxEnforcing", selinux.getMethod("isSELinuxEnforced").invoke(null));
        Method check = selinux.getMethod("checkSELinuxAccess", String.class, String.class,
            String.class, String.class);
        String target = "u:r:hal_bluetooth_default:s0";
        boolean outgoingCall = allowed(check, source, target, "call");
        boolean outgoingTransfer = allowed(check, source, target, "transfer");
        boolean incomingCall = allowed(check, target, source, "call");
        boolean incomingTransfer = allowed(check, target, source, "transfer");
        result.put("halBinderCall", outgoingCall).put("halBinderTransfer", outgoingTransfer)
            .put("halCallbackCall", incomingCall).put("halCallbackTransfer", incomingTransfer)
            .put("halCallbackPolicyAllowed", outgoingCall && outgoingTransfer && incomingCall && incomingTransfer);

        IBinder hal = service(HAL + "/default");
        result.put("halAvailable", hal != null);
        if (hal != null) {
            Parcel data = Parcel.obtain(), reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(HAL);
                if (!hal.transact(16777214, data, reply, 0)) throw new IllegalStateException("HAL hash unavailable");
                reply.readException();
                result.put("halInterfaceRecognized", EXPECTED_HASH.equals(reply.readString()));
            } finally { data.recycle(); reply.recycle(); }
        }
        IBinder manager = service("bluetooth_manager");
        if (manager != null) {
            java.lang.reflect.Field field = Class.forName("android.bluetooth.IBluetoothManager$Stub")
                .getDeclaredField("TRANSACTION_getState");
            field.setAccessible(true);
            Parcel data = Parcel.obtain(), reply = Parcel.obtain();
            try {
                data.writeInterfaceToken("android.bluetooth.IBluetoothManager");
                if (!manager.transact(field.getInt(null), data, reply, 0))
                    throw new IllegalStateException("Bluetooth state unavailable");
                reply.readException();
                result.put("adapterState", reply.readInt());
            } finally { data.recycle(); reply.recycle(); }
        }
    }

    public static void main(String[] args) {
        Thread watchdog = new Thread(() -> {
            try { Thread.sleep(12000); } catch (InterruptedException ignored) { return; }
            System.exit(124);
        }, "root-probe-deadline");
        watchdog.setDaemon(true);
        watchdog.start();
        JSONObject result = new JSONObject();
        int exit = 1;
        try {
            if (args.length != 1 || !"inspect".equals(args[0]))
                throw new IllegalArgumentException("Only inspect is supported");
            int uid = android.os.Process.myUid();
            result.put("uid", uid).put("rootGranted", uid == 0);
            if (uid != 0) throw new SecurityException("Root permission required");
            inspect(result);
            result.put("status", "success");
            exit = 0;
        } catch (Throwable error) {
            Throwable cause = error.getCause() == null ? error : error.getCause();
            try { result.put("status", "error").put("errorType", cause.getClass().getSimpleName()); }
            catch (Exception ignored) { }
        }
        System.out.println(result);
        System.out.flush();
        System.exit(exit);
    }
}
