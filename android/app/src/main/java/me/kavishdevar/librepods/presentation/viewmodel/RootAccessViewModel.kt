package me.kavishdevar.librepods.presentation.viewmodel

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import me.kavishdevar.librepods.findmy.root.RootAccess
import me.kavishdevar.librepods.findmy.root.RootAccessResult

data class RootAccessState(val busy: Boolean = false, val result: RootAccessResult? = null)

class RootAccessViewModel(application: Application) : AndroidViewModel(application) {
    private val mutableState = MutableStateFlow(RootAccessState())
    val status = mutableState.asStateFlow()

    fun requestRoot() {
        if (mutableState.value.busy) return
        mutableState.value = RootAccessState(busy = true)
        viewModelScope.launch {
            val result = runCatching { RootAccess.request(getApplication()) }
                .getOrElse { RootAccessResult(error = "root_check_failed") }
            mutableState.value = RootAccessState(result = result)
        }
    }
}
