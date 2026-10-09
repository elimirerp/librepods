package me.kavishdevar.librepods.findmy

import android.content.Context
import android.util.AtomicFile
import org.json.JSONObject
import java.io.File
import java.security.KeyStore
import java.util.UUID

/** Synthetic Android Keystore check. Uses a disposable file and alias, never the account. */
internal object AppleAccountStoreProbe {
    fun run(context: Context): JSONObject {
        val identifier = UUID.randomUUID().toString()
        val directory = File(context.noBackupFilesDir, "findmy-account-probe/$identifier")
        val file = AtomicFile(File(directory, "synthetic.bin"))
        val alias = "librepods.findmy.account.probe.$identifier"
        val store = SessionStore(file, alias)
        val result = JSONObject().put("mode", "account_store")
        val keys = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
        val fixture = "{\"version\":1,\"synthetic\":true}"
        try {
            check(!store.exists() && store.read() == null)
            store.save(fixture)
            check(SessionStore(file, alias).read() == fixture)
            result.put("encryptedRoundtrip", true)
            val envelope = file.readFully()
            check(!String(envelope, Charsets.UTF_8).contains(fixture))
            result.put("plaintextAbsent", true)

            val backup = File(file.baseFile.path + ".bak")
            check(file.baseFile.renameTo(backup))
            check(store.exists() && store.read() == fixture)
            result.put("atomicBackupRestored", true)

            val corrupted = envelope.copyOf()
            corrupted[corrupted.lastIndex] = (corrupted.last().toInt() xor 1).toByte()
            write(file, corrupted)
            check(runCatching { store.read() }.isFailure)
            result.put("tamperRejected", true)

            store.save(fixture)
            keys.deleteEntry(alias)
            check(runCatching { store.read() }.isFailure && !keys.containsAlias(alias))
            result.put("missingKeyRejectedWithoutReplacement", true)
            store.delete()
            check(!store.exists() && store.read() == null)
            result.put("signoutDeleted", true).put("status", "success")
        } catch (_: Exception) {
            result.put("status", "error").put("error", "synthetic_account_store_check_failed")
        } finally {
            store.delete()
            keys.deleteEntry(alias)
            directory.delete()
            directory.parentFile?.delete() // Only succeeds when this probe's parent is empty.
        }
        return result
    }

    private fun write(file: AtomicFile, data: ByteArray) {
        val output = file.startWrite()
        try { output.write(data); file.finishWrite(output) }
        catch (failure: Exception) { file.failWrite(output); throw failure }
    }
}
