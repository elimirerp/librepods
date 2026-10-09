package me.kavishdevar.librepods.findmy

import android.content.Context
import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import android.util.AtomicFile
import com.chaquo.python.PyObject
import com.chaquo.python.Python
import com.chaquo.python.android.AndroidPlatform
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.withContext
import me.kavishdevar.librepods.findmy.anisette.LocalAnisette
import me.kavishdevar.librepods.findmy.enrollment.EnrollmentStatus
import me.kavishdevar.librepods.findmy.recovery.CaseRecoveryStatus
import me.kavishdevar.librepods.findmy.root.OwnerLinkStatus
import me.kavishdevar.librepods.findmy.root.RootOwnerLinkAdapter
import org.json.JSONObject
import java.io.File
import java.security.KeyStore
import java.util.concurrent.Executors
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec

// Sign-in protocol and local ADI adapter are based on OpenTagViewer, MIT (2025 ShaneB).
// See anisette/THIRD_PARTY_LICENSE.txt. Account state, passwords and tokens must never be logged.
data class VerificationMethod(val id: String, val label: String, val kind: String)
data class AppleAccountStatus(
    val state: String = "signed_out",
    val message: String = "",
    val methods: List<VerificationMethod> = emptyList(),
    val selectedMethodId: String? = null,
    val termsHtml: String? = null,
    val busy: Boolean = false,
)

/** Application singleton. Construction is inert: no network, Python or ADI until Connect. */
class AppleAccountBackend private constructor(context: Context) {
    private val app = context.applicationContext
    private val dispatcher = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "LibrePodsAppleAccount")
    }.asCoroutineDispatcher()
    private val mutableStatus = MutableStateFlow(AppleAccountStatus())
    val status: StateFlow<AppleAccountStatus> = mutableStatus.asStateFlow()
    private val mutableEnrollmentStatus = MutableStateFlow(EnrollmentStatus())
    val enrollmentStatus: StateFlow<EnrollmentStatus> = mutableEnrollmentStatus.asStateFlow()
    private val mutableCaseRecoveryStatus = MutableStateFlow(CaseRecoveryStatus())
    val caseRecoveryStatus: StateFlow<CaseRecoveryStatus> = mutableCaseRecoveryStatus.asStateFlow()
    private val mutableDeviceListStatus = MutableStateFlow(DeviceListStatus())
    val deviceListStatus: StateFlow<DeviceListStatus> = mutableDeviceListStatus.asStateFlow()
    private val mutableOwnerLinkStatus = MutableStateFlow(OwnerLinkStatus())
    val ownerLinkStatus: StateFlow<OwnerLinkStatus> = mutableOwnerLinkStatus.asStateFlow()
    private val recoveryScope = CoroutineScope(dispatcher + SupervisorJob())
    private var keyExpiry: Job? = null
    private var caseRecovery: PyObject? = null
    private val native = LocalAnisette(app)
    private val store = SessionStore(app)
    private var session: PyObject? = null

    companion object {
        @Volatile private var instance: AppleAccountBackend? = null
        fun get(context: Context): AppleAccountBackend = instance ?: synchronized(this) {
            instance ?: AppleAccountBackend(context).also { instance = it }
        }
    }

    private suspend fun operation(work: () -> AppleAccountStatus): AppleAccountStatus = withContext(dispatcher) {
        mutableStatus.value = mutableStatus.value.copy(busy = true)
        val result = try { work() } catch (_: Exception) {
            AppleAccountStatus("error", "Apple Account operation failed. Check the connection and try again.")
        }
        mutableStatus.value = result.copy(busy = false)
        mutableStatus.value
    }

    private fun prepareSession(): AppleAccountStatus {
        if (session != null) {
            val current = parse(session!!.callAttr("status").toString())
            return if (current.state == "signed_out")
                AppleAccountStatus("ready", "Sign in to your Apple Account.") else current
        }
        return if (!native.ensureReady()) {
            AppleAccountStatus("unavailable", native.unavailableReason() ?: "Local Apple sign-in is unavailable.")
        } else {
            // Do not initialize Python in :adiprobe: the application must skip its normal
            // initialization in that process. That service only tests native library loading.
            if (!Python.isStarted()) Python.start(AndroidPlatform(app))
            session = Python.getInstance().getModule("findmy_account").callAttr("AccountSession", native)
            parse(session!!.callAttr("status").toString())
        }
    }

    /** Preparation and restoration share one worker operation, preserving an active login. */
    suspend fun connect(): AppleAccountStatus = operation {
        val current = prepareSession()
        if (current.state == "ready") restoreSession() else current
    }

    /** Opening settings with no stored account must not provision ADI or contact Apple. */
    suspend fun restoreIfSaved(): AppleAccountStatus = operation {
        if (session != null) prepareSession()
        else if (!store.exists()) AppleAccountStatus()
        else {
            val current = prepareSession()
            if (current.state == "ready") restoreSession() else current
        }
    }

    private fun call(method: String, vararg args: Any): AppleAccountStatus {
        val current = session ?: return AppleAccountStatus("unavailable", "Connect to prepare local Apple sign-in first.")
        val result = parse(current.callAttr(method, *args).toString())
        if (result.state == "signed_in") {
            try { store.save(current.callAttr("export_session").toString()) }
            catch (_: Exception) {
                clearCaseRecoveryOnWorker()
                current.callAttr("close")
                return AppleAccountStatus("error", "The Apple session could not be saved securely. Sign in again.")
            }
            inspectEnrollmentOnWorker()
        }
        return result
    }

    suspend fun signIn(email: String, password: String): AppleAccountStatus = operation {
        if (email.isBlank() || password.isEmpty()) AppleAccountStatus("error", "Enter your Apple Account email and password.")
        else { clearCaseRecoveryOnWorker(); mutableDeviceListStatus.value = DeviceListStatus(); mutableEnrollmentStatus.value = EnrollmentStatus(); store.delete(); call("sign_in", email.trim(), password) }
    }
    suspend fun requestCode(methodId: String): AppleAccountStatus = operation { call("request_code", methodId) }
    suspend fun submitCode(code: String): AppleAccountStatus = operation { call("submit_code", code) }
    suspend fun fetchTerms(): AppleAccountStatus = operation { call("fetch_terms") }
    suspend fun acceptTerms(): AppleAccountStatus = operation { call("accept_terms") }
    private fun restoreSession(): AppleAccountStatus {
        return try {
            val saved = store.read()
            if (saved == null) AppleAccountStatus("ready", "Sign in to your Apple Account.")
            else call("restore", saved)
        } catch (_: Exception) {
            AppleAccountStatus("reauth_required", "Saved session cannot be decrypted. Sign in again.")
        }
    }
    suspend fun signOut(): AppleAccountStatus = operation {
        clearCaseRecoveryOnWorker()
        mutableDeviceListStatus.value = DeviceListStatus()
        store.delete()
        session?.callAttr("close")
        mutableEnrollmentStatus.value = EnrollmentStatus()
        AppleAccountStatus("signed_out", "Signed out on this installation.")
    }

    private fun enrollmentCall(method: String, vararg args: Any): EnrollmentStatus {
        val current = session ?: return EnrollmentStatus()
        if (parse(current.callAttr("status").toString()).state != "signed_in") return EnrollmentStatus()
        return EnrollmentStatus.fromJson(Python.getInstance().getModule("findmy_enrollment")
            .callAttr(method, current, *args).toString())
    }

    private fun inspectEnrollmentOnWorker() {
        mutableEnrollmentStatus.value = try { enrollmentCall("inspect_account") }
        catch (_: Exception) { EnrollmentStatus("error", "Find My account access could not be checked. Try again.") }
    }

    suspend fun inspectEnrollment(): EnrollmentStatus = withContext(dispatcher) {
        inspectEnrollmentOnWorker()
        mutableEnrollmentStatus.value
    }

    suspend fun refreshEnrollment(audioAddress: String = ""): EnrollmentStatus = withContext(dispatcher) {
        mutableEnrollmentStatus.value = mutableEnrollmentStatus.value.copy(busy = true)
        mutableEnrollmentStatus.value = try { enrollmentCall("refresh_account", audioAddress).copy(busy = false) }
        catch (_: Exception) { EnrollmentStatus("error", "Find My account access could not be checked. Try again.") }
        mutableEnrollmentStatus.value
    }

    private fun clearCaseRecoveryOnWorker() {
        keyExpiry?.cancel()
        keyExpiry = null
        caseRecovery?.callAttr("clear")
        caseRecovery = null
        mutableCaseRecoveryStatus.value = CaseRecoveryStatus()
        mutableOwnerLinkStatus.value = OwnerLinkStatus()
    }

    private suspend fun recoveryCall(method: String, vararg args: String): CaseRecoveryStatus = withContext(dispatcher) {
        mutableOwnerLinkStatus.value = OwnerLinkStatus()
        val current = session
        if (current == null || parse(current.callAttr("status").toString()).state != "signed_in") {
            clearCaseRecoveryOnWorker()
            mutableCaseRecoveryStatus.value = CaseRecoveryStatus("signed_out", "Sign in before recovering case keys.")
        } else {
            mutableCaseRecoveryStatus.value = mutableCaseRecoveryStatus.value.copy(busy = true)
            val result = try {
                val recovery = caseRecovery ?: Python.getInstance().getModule("findmy_case_recovery")
                    .callAttr("CaseRecovery", current).also { caseRecovery = it }
                CaseRecoveryStatus.fromJson(recovery.callAttr(method, *args).toString())
            } catch (_: Exception) {
                // Neither Python exception text nor input credentials cross the status boundary.
                CaseRecoveryStatus("recovery_unavailable", "Case key recovery could not finish. Try again.")
            }
            mutableCaseRecoveryStatus.value = result.copy(busy = false)
            if (result.state == "choose_case") {
                keyExpiry?.cancel()
                keyExpiry = recoveryScope.launch {
                    delay(30L * 60L * 1000L)
                    clearCaseRecoveryOnWorker()
                    mutableCaseRecoveryStatus.value = CaseRecoveryStatus("idle", "Case keys expired and were cleared from memory.")
                }
            } else if (!result.keysAvailable && result.state != "choose_case") {
                keyExpiry?.cancel()
                keyExpiry = null
            }
        }
        mutableCaseRecoveryStatus.value
    }

    suspend fun listRecoveryOptions(applePassword: String) = recoveryCall("list_options", applePassword)
    suspend fun recoverCase(optionId: String, applePassword: String, devicePasscode: String) =
        recoveryCall("recover", optionId, applePassword, devicePasscode)
    suspend fun selectRecoveredCase(caseId: String) = recoveryCall("select_case", caseId)
    suspend fun clearCaseKeys(): CaseRecoveryStatus = withContext(dispatcher) {
        clearCaseRecoveryOnWorker()
        mutableCaseRecoveryStatus.value
    }

    suspend fun refreshDevices(): DeviceListStatus = withContext(dispatcher) {
        val current = session
        mutableDeviceListStatus.value = mutableDeviceListStatus.value.copy(busy = true)
        mutableDeviceListStatus.value = try {
            if (current == null || parse(current.callAttr("status").toString()).state != "signed_in")
                DeviceListStatus("signed_out", "Sign in to read your Find My devices.")
            else DeviceListStatus.fromJson(Python.getInstance().getModule("findmy_devices")
                .callAttr("refresh_devices", current).toString())
        } catch (_: Exception) {
            DeviceListStatus("service_unavailable", "The Find My device list could not be read. Refresh to try again.")
        }
        mutableDeviceListStatus.value
    }

    /** Explicit root-radio action. Keys remain inside Python on the account worker. */
    suspend fun runOwnerLinkDiagnostic(): OwnerLinkStatus = withContext(dispatcher) {
        mutableOwnerLinkStatus.value = mutableOwnerLinkStatus.value.copy(busy = true)
        val result = try {
            val recovery = caseRecovery
            val ready = recovery?.let { CaseRecoveryStatus.fromJson(it.callAttr("status").toString()) }
            if (ready != null) mutableCaseRecoveryStatus.value = ready
            if (recovery == null || ready?.keysAvailable != true) {
                OwnerLinkStatus("error", "Recover and select this account’s case before testing its connection.", reason = "case_keys_required")
            } else {
                OwnerLinkStatus.fromJson(Python.getInstance().getModule("findmy_owner_radio")
                    .callAttr("run_diagnostic", recovery, RootOwnerLinkAdapter(app)).toString())
            }
        } catch (_: Exception) {
            OwnerLinkStatus("error", "The case connection check could not finish.", reason = "owner_link_failed")
        }
        mutableOwnerLinkStatus.value = result.copy(busy = false)
        mutableOwnerLinkStatus.value
    }

    private fun parse(json: String): AppleAccountStatus {
        val data = JSONObject(json)
        val methods = data.optJSONArray("methods")
        val converted = if (methods == null) emptyList() else (0 until methods.length()).map {
            val method = methods.getJSONObject(it)
            VerificationMethod(method.getString("id"), method.getString("label"), method.getString("kind"))
        }
        return AppleAccountStatus(data.getString("state"), data.optString("message"), converted,
            data.opt("selectedMethodId")?.takeUnless { it == JSONObject.NULL }?.toString(),
            data.opt("termsHtml")?.takeUnless { it == JSONObject.NULL }?.toString())
    }
}

/** Versioned AEAD blob in noBackup storage. Decryption never creates/replaces a missing key. */
internal class SessionStore(private val file: AtomicFile, private val alias: String) {
    constructor(context: Context) : this(
        AtomicFile(File(context.noBackupFilesDir, "findmy-account/session.bin")),
        "librepods.findmy.account.v1",
    )
    private val aad = "LibrePods.FindMy.NativeADI.v1".toByteArray(Charsets.UTF_8)
    fun exists(): Boolean = file.baseFile.exists() || File(file.baseFile.path + ".bak").exists()
    private fun existing(): SecretKey? {
        val ks = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
        return ks.getKey(alias, null) as? SecretKey
    }
    private fun key(): SecretKey = existing() ?: KeyGenerator.getInstance(KeyProperties.KEY_ALGORITHM_AES, "AndroidKeyStore").run {
        init(KeyGenParameterSpec.Builder(alias, KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT)
            .setBlockModes(KeyProperties.BLOCK_MODE_GCM).setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE)
            .setKeySize(256).build())
        generateKey()
    }
    fun save(serialized: String) {
        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
        cipher.init(Cipher.ENCRYPT_MODE, key())
        cipher.updateAAD(aad)
        val payload = cipher.doFinal(serialized.toByteArray(Charsets.UTF_8))
        check(cipher.iv.size == 12)
        val blob = byteArrayOf(1) + cipher.iv + payload
        val directory = file.baseFile.parentFile!!
        check(directory.isDirectory || directory.mkdirs())
        val out = file.startWrite()
        try { out.write(blob); file.finishWrite(out) }
        catch (failure: Exception) { file.failWrite(out); throw failure }
    }
    fun read(): String? {
        val blob = try { file.readFully() } catch (_: java.io.FileNotFoundException) { return null }
        require(blob.size >= 29 && blob[0].toInt() == 1) { "Invalid encrypted session envelope" }
        val key = existing() ?: throw IllegalStateException("Missing account encryption key")
        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
        cipher.init(Cipher.DECRYPT_MODE, key, GCMParameterSpec(128, blob.copyOfRange(1,13)))
        cipher.updateAAD(aad)
        return cipher.doFinal(blob.copyOfRange(13,blob.size)).toString(Charsets.UTF_8)
    }
    fun delete() { file.delete() }
}
