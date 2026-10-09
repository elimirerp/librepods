package me.kavishdevar.librepods.presentation.screens

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.kyant.backdrop.Backdrop
import me.kavishdevar.librepods.R
import me.kavishdevar.librepods.presentation.components.StyledButton
import me.kavishdevar.librepods.presentation.viewmodel.AppleAccountViewModel

@Composable
internal fun CaseRecoverySection(viewModel: AppleAccountViewModel, backdrop: Backdrop, accountBusy: Boolean) {
    val status by viewModel.caseRecoveryStatus.collectAsStateWithLifecycle()
    // No saveable state, preferences, intents, or logs for either credential.
    var applePassword by remember { mutableStateOf("") }
    var devicePasscode by remember { mutableStateOf("") }
    var selectedOption by remember { mutableStateOf<String?>(null) }
    val lifecycle = LocalLifecycleOwner.current.lifecycle
    DisposableEffect(lifecycle) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_STOP) { applePassword = ""; devicePasscode = "" }
        }
        lifecycle.addObserver(observer)
        onDispose { lifecycle.removeObserver(observer); applePassword = ""; devicePasscode = "" }
    }
    val enabled = !accountBusy && !status.busy
    val selected = status.options.singleOrNull { it.id == selectedOption }
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Text(stringResource(R.string.findmy_recovery_title), style = MaterialTheme.typography.titleMedium)
        Text(stringResource(R.string.findmy_recovery_intro), style = MaterialTheme.typography.bodyMedium)
        if (status.busy) LinearProgressIndicator(Modifier.fillMaxWidth())
        if (status.message.isNotBlank()) Text(status.message)
        status.groups.forEach { group ->
            Text(group.label, style = MaterialTheme.typography.titleSmall)
            Text(group.components.joinToString(" · "))
        }
        if (!status.keysAvailable && status.cases.isEmpty()) {
            OutlinedTextField(
                value = applePassword, onValueChange = { applePassword = it },
                label = { Text(stringResource(R.string.findmy_recovery_apple_password)) },
                visualTransformation = PasswordVisualTransformation(),
                keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Password),
                singleLine = true, enabled = enabled, modifier = Modifier.fillMaxWidth(),
            )
            StyledButton(
                onClick = { selectedOption = null; devicePasscode = ""; viewModel.listRecoveryOptions(applePassword); applePassword = "" },
                backdrop = backdrop, enabled = enabled && applePassword.isNotEmpty(), modifier = Modifier.fillMaxWidth(),
            ) { Text(stringResource(R.string.findmy_recovery_list)) }
            status.options.forEach { option ->
                StyledButton(
                    onClick = { selectedOption = option.id; devicePasscode = "" },
                    backdrop = backdrop, enabled = enabled, modifier = Modifier.fillMaxWidth(),
                ) { Text(option.label) }
            }
            if (selected != null) {
                Text(stringResource(R.string.findmy_recovery_selected, selected.label))
                OutlinedTextField(
                    value = devicePasscode, onValueChange = { devicePasscode = it },
                    label = { Text(stringResource(R.string.findmy_recovery_device_passcode)) },
                    visualTransformation = PasswordVisualTransformation(),
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Password),
                    singleLine = true, enabled = enabled, modifier = Modifier.fillMaxWidth(),
                )
                StyledButton(
                    onClick = { viewModel.recoverCase(selected.id, applePassword, devicePasscode); applePassword = ""; devicePasscode = "" },
                    backdrop = backdrop, enabled = enabled && applePassword.isNotEmpty() && devicePasscode.isNotEmpty(),
                    modifier = Modifier.fillMaxWidth(),
                ) { Text(stringResource(R.string.findmy_recovery_unlock)) }
            }
        }
        status.cases.forEach { case ->
            StyledButton(
                onClick = { viewModel.selectRecoveredCase(case.id) }, backdrop = backdrop,
                enabled = enabled, modifier = Modifier.fillMaxWidth(),
            ) { Text(case.label) }
        }
        if (status.state != "idle") {
            StyledButton(
                onClick = { applePassword = ""; devicePasscode = ""; selectedOption = null; viewModel.clearCaseKeys() },
                backdrop = backdrop, enabled = enabled, modifier = Modifier.fillMaxWidth(),
            ) { Text(stringResource(R.string.findmy_recovery_clear)) }
        }
    }
}
