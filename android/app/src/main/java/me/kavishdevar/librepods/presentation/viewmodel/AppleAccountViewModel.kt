package me.kavishdevar.librepods.presentation.viewmodel

import android.app.Application
import android.bluetooth.BluetoothAdapter
import android.content.Context
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import me.kavishdevar.librepods.findmy.AppleAccountBackend
import java.util.Locale

class AppleAccountViewModel(application: Application) : AndroidViewModel(application) {
    private val backend = AppleAccountBackend.get(application)
    val status = backend.status
    val enrollmentStatus = backend.enrollmentStatus
    val caseRecoveryStatus = backend.caseRecoveryStatus
    val deviceListStatus = backend.deviceListStatus
    val ownerLinkStatus = backend.ownerLinkStatus

    init {
        viewModelScope.launch { backend.restoreIfSaved() }
        viewModelScope.launch {
            status.map { it.state }.distinctUntilChanged().collect { state ->
                if (state == "signed_in") backend.refreshDevices()
            }
        }
    }

    fun connect() = viewModelScope.launch { backend.connect() }

    fun signIn(email: String, password: String) = viewModelScope.launch {
        backend.signIn(email.trim(), password)
    }

    fun requestCode(methodId: String) = viewModelScope.launch { backend.requestCode(methodId) }
    fun submitCode(code: String) = viewModelScope.launch { backend.submitCode(code) }
    fun signOut() = viewModelScope.launch { backend.signOut() }
    fun fetchTerms() = viewModelScope.launch { backend.fetchTerms() }
    fun acceptTerms() = viewModelScope.launch { backend.acceptTerms() }
    fun listRecoveryOptions(applePassword: String) = viewModelScope.launch { backend.listRecoveryOptions(applePassword) }
    fun recoverCase(optionId: String, applePassword: String, devicePasscode: String) = viewModelScope.launch {
        backend.recoverCase(optionId, applePassword, devicePasscode)
    }
    fun selectRecoveredCase(caseId: String) = viewModelScope.launch { backend.selectRecoveredCase(caseId) }
    fun clearCaseKeys() = viewModelScope.launch { backend.clearCaseKeys() }
    fun refreshDevices() = viewModelScope.launch { backend.refreshDevices() }
    fun runOwnerLinkDiagnostic() = viewModelScope.launch { backend.runOwnerLinkDiagnostic() }
    fun refreshEnrollment() = viewModelScope.launch {
        val saved = getApplication<Application>().getSharedPreferences("settings", Context.MODE_PRIVATE)
            .getString("mac_address", "").orEmpty().uppercase(Locale.ROOT)
        val audioAddress = saved.takeIf {
            BluetoothAdapter.checkBluetoothAddress(it) && it !in setOf(
                "00:00:00:00:00:00", "FF:FF:FF:FF:FF:FF", "02:00:00:00:00:00",
            )
        }.orEmpty()
        backend.refreshEnrollment(audioAddress)
    }
}
