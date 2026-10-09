/* Adapted from OpenTagViewer. Copyright (c) 2025 ShaneB. MIT License; see THIRD_PARTY_LICENSE.txt. */
package me.kavishdevar.librepods.findmy.anisette;

import android.content.Context;
import android.os.Build;
import android.util.AtomicFile;
import android.util.Log;
import org.json.JSONObject;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/** Local-only native ADI. Call only on the account worker, after explicit Connect. */
public final class LocalAnisette {
    private static final Object LOAD_LOCK = new Object();
    private static AdiLibrary loaded;
    private static AdiDeviceIdentity loadedIdentity;
    private static final List<String> FROM_APPLE = Arrays.asList("libc++_shared.so", "libstoreservicescore.so");
    private final Context context;
    private final File root;
    private final String abi;
    private AdiDeviceIdentity identity;
    private String reason;
    private Map<String,String> cached;
    private long cachedAt;

    public LocalAnisette(Context context) {
        this.context = context.getApplicationContext();
        this.root = new File(context.getNoBackupFilesDir(), "findmy-adi");
        this.abi = Arrays.stream(Build.SUPPORTED_ABIS).filter(a -> a.equals("arm64-v8a") || a.equals("x86_64"))
                .findFirst().orElse("unsupported");
    }

    public synchronized boolean ensureReady() {
        synchronized (LOAD_LOCK) {
            String stage = "supported_cpu";
            AdiProvisioning provisioning = null;
            try {
                if (abi.equals("unsupported")) throw new Exception("This CPU is not supported for local Apple sign-in.");
                if (loaded == null) {
                    stage = "library_manifest";
                    AdiLibraryManifest manifest = AdiLibraryManifest.load(context);
                    int version = (int) context.getPackageManager().getPackageInfo(context.getPackageName(), 0).getLongVersionCode();
                    String attempt = NativeLoadGuard.attemptFor(version, abi, manifest.apkVersion());
                    NativeLoadGuard guard = new NativeLoadGuard(store("native-load"), attempt);
                    stage = "native_crash_guard";
                    if (guard.previousAttemptCrashed()) throw new Exception("Local Apple libraries did not survive the previous load.");
                    File lib = new File(root,"lib/"+abi);
                    List<String> names = Arrays.asList("libc++_shared.so", "libstoreservicescore.so", AdiLibrary.CORE_ADI);
                    stage = "library_download";
                    AdiLibraryFetcher.fetchInto(lib,abi,names);
                    for (String name:names) {
                        stage = "library_verification";
                        String mismatch = manifest.verify(new File(lib,name),abi);
                        if (mismatch != null) throw new Exception(mismatch);
                    }
                    AppleLibraryProbe probe = new AppleLibraryProbe(context,lib);
                    stage = "native_probe";
                    TryItElsewhereFirst.Verdict verdict = new TryItElsewhereFirst(store("native-probe"),attempt).decide(probe);
                    if (verdict != TryItElsewhereFirst.Verdict.LOAD) throw new Exception("Local Apple library probe did not succeed. Restart the app to retry.");
                    if (probe.loadError() != null) throw new Exception("Local Apple libraries could not be initialized.");
                    stage = "local_identity";
                    loadedIdentity = loadOrCreateIdentity();
                    stage = "native_initialization";
                    loaded = guard.around(() -> openAndInitialise(lib,new File(root,"provisioning"),loadedIdentity.adiIdentifier()));
                }
                identity = loadedIdentity;
                stage = "provisioning";
                provisioning = new AdiProvisioning(context,identity,loaded);
                provisioning.provisionIfNeeded(AdiProvisioning.ANONYMOUS_DS_ID);
                reason = null;
                return true;
            } catch (Exception | LinkageError failure) {
                // Only static categories reach the UI; library exceptions never include account credentials.
                if (provisioning != null) stage += "/" + provisioning.diagnosticStage();
                Throwable cause = failure;
                for (int depth = 0; depth < 8 && cause.getCause() != null; depth++) cause = cause.getCause();
                Log.w("LocalAnisette", "Local Apple setup failed at " + stage
                        + " (" + failure.getClass().getSimpleName() + "/" + cause.getClass().getSimpleName() + ")");
                reason = "Local Apple sign-in setup is unavailable (" + stage
                        + "). Check the connection and retry.";
                return false;
            }
        }
    }

    static AdiLibrary openAndInitialise(File lib,File provisioning,String identifier) throws Exception {
        System.loadLibrary("CoreFoundation");
        System.loadLibrary("mediaplatform");
        AdiLibrary result = AdiLibrary.open(lib,FROM_APPLE);
        result.initialise(lib,provisioning,identifier);
        return result;
    }

    private NativeLoadGuard.Store store(String name) {
        File file = new File(root,name);
        return new NativeLoadGuard.Store() {
            public String get() {
                try { return new String(new AtomicFile(file).readFully(),StandardCharsets.UTF_8); }
                catch (java.io.FileNotFoundException absent) { return null; }
                catch (Exception e) { throw new IllegalStateException("Cannot read native load guard",e); }
            }
            public void set(String value) { write(file,value); }
            public void clear() { new AtomicFile(file).delete(); }
        };
    }

    private static void write(File file,String value) {
        File parent=file.getParentFile();
        if (!parent.isDirectory() && !parent.mkdirs()) throw new IllegalStateException("Cannot create account storage");
        AtomicFile atomic=new AtomicFile(file); FileOutputStream out=null;
        try { out=atomic.startWrite(); out.write(value.getBytes(StandardCharsets.UTF_8)); atomic.finishWrite(out); }
        catch (Exception e) { if(out!=null)atomic.failWrite(out); throw new IllegalStateException("Cannot persist native identity",e); }
    }

    private AdiDeviceIdentity loadOrCreateIdentity() throws Exception {
        File file=new File(root,"identity.json");
        AtomicFile atomic = new AtomicFile(file);
        JSONObject data;
        try { data=new JSONObject(new String(atomic.readFully(),StandardCharsets.UTF_8)); }
        catch (java.io.FileNotFoundException absent) {
            AdiDeviceIdentity fresh=AdiDeviceIdentity.generate();
            data=new JSONObject().put("deviceId",fresh.uniqueDeviceIdentifier()).put("adiId",fresh.adiIdentifier())
                    .put("uid",fresh.localUserUuid()).put("serial",fresh.serial()).put("hardware",fresh.hardware().name());
            write(file,data.toString());
        }
        // Missing/corrupt fields fail closed; never mint a different identity beside an existing session.
        return new AdiDeviceIdentity(data.getString("deviceId"),data.getString("adiId"),data.getString("uid"),
                data.getString("serial"),AdiDeviceIdentity.Hardware.valueOf(data.getString("hardware")));
    }
    private AdiDeviceIdentity current() {
        if (identity==null) throw new IllegalStateException("Prepare local Apple sign-in first");
        return identity;
    }
    public synchronized String hardwareProfileJson() { return current().hardware().toJson(); }
    public synchronized String deviceIdsJson() {
        try { return new JSONObject().put("uid",current().localUserUuid()).put("devid",current().uniqueDeviceIdentifier()).toString(); }
        catch(Exception e) { throw new IllegalStateException("Cannot describe local identity",e); }
    }
    public synchronized String serial() { return current().serial(); }
    public synchronized String unavailableReason() { return reason; }
    public synchronized String otp() { return header("X-Apple-I-MD"); }
    public synchronized String machine() { return header("X-Apple-I-MD-M"); }
    private String header(String name) {
        if (loaded==null || identity==null) throw new IllegalStateException("Local Apple sign-in is not prepared");
        if(cached==null || System.currentTimeMillis()-cachedAt>5000) {
            try { cached=new AnisetteHeaders(loaded,identity).generate(AdiProvisioning.ANONYMOUS_DS_ID); cachedAt=System.currentTimeMillis(); }
            catch(Exception e) { throw new IllegalStateException("Local anisette generation failed"); }
        }
        String value=cached.get(name);
        if(value==null || value.isEmpty())throw new IllegalStateException("Local anisette is unavailable");
        return value;
    }
}
