package me.kavishdevar.librepods.presentation.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.asPaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
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
import androidx.core.text.HtmlCompat
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import com.kyant.backdrop.backdrops.layerBackdrop
import com.kyant.backdrop.backdrops.rememberLayerBackdrop
import me.kavishdevar.librepods.R
import me.kavishdevar.librepods.presentation.components.StyledButton
import me.kavishdevar.librepods.presentation.theme.DesignSystem
import me.kavishdevar.librepods.presentation.theme.LocalDesignSystem
import me.kavishdevar.librepods.presentation.viewmodel.AppleAccountViewModel
import me.kavishdevar.librepods.presentation.viewmodel.RootAccessViewModel

@Composable
fun AppleAccountScreen(
    navigateToFinding: () -> Unit,
    viewModel: AppleAccountViewModel = viewModel(),
    rootViewModel: RootAccessViewModel = viewModel(),
) {
    val status by viewModel.status.collectAsStateWithLifecycle()
    val enrollment by viewModel.enrollmentStatus.collectAsStateWithLifecycle()
    val devices by viewModel.deviceListStatus.collectAsStateWithLifecycle()
    val rootStatus by rootViewModel.status.collectAsStateWithLifecycle()
    // Credentials deliberately do not use rememberSaveable or SavedStateHandle.
    var email by remember { mutableStateOf("") }
    var password by remember { mutableStateOf("") }
    var code by remember { mutableStateOf("") }
    val lifecycle = LocalLifecycleOwner.current.lifecycle
    DisposableEffect(lifecycle) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_STOP) {
                password = ""
                code = ""
            }
        }
        lifecycle.addObserver(observer)
        onDispose {
            lifecycle.removeObserver(observer)
            password = ""
            code = ""
        }
    }

    val backdrop = rememberLayerBackdrop()
    val material = LocalDesignSystem.current == DesignSystem.Material
    val top = if (material) 16.dp else WindowInsets.statusBars.asPaddingValues().calculateTopPadding() + 84.dp
    val bottom = WindowInsets.navigationBars.asPaddingValues().calculateBottomPadding() + 24.dp

    Box(Modifier.fillMaxSize()) {
        // Capture only the background. Buttons sample this sibling layer; capturing
        // the buttons themselves creates a RenderNode cycle and a RenderThread crash.
        Box(Modifier.matchParentSize().layerBackdrop(backdrop)
            .background(MaterialTheme.colorScheme.surfaceContainer))
        Column(
        modifier = Modifier.fillMaxSize()
            .verticalScroll(rememberScrollState())
            .padding(horizontal = 20.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp),
    ) {
        Spacer(Modifier.height(top))
        Text(stringResource(R.string.apple_account_intro), style = MaterialTheme.typography.bodyMedium)

        Text(stringResource(R.string.findmy_root_title), style = MaterialTheme.typography.titleMedium)
        Text(stringResource(R.string.findmy_root_intro), style = MaterialTheme.typography.bodyMedium)
        if (rootStatus.busy) LinearProgressIndicator(Modifier.fillMaxWidth())
        rootStatus.result?.let { result ->
            Text(stringResource(when {
                !result.granted -> R.string.findmy_root_required
                result.error != null -> R.string.findmy_root_check_failed
                !result.bluetoothPolicyAllowed || !result.recognizedHal -> R.string.findmy_root_restricted
                else -> R.string.findmy_root_ready
            }))
        }
        StyledButton(
            onClick = { rootViewModel.requestRoot() },
            backdrop = backdrop,
            enabled = !rootStatus.busy,
            modifier = Modifier.fillMaxWidth(),
        ) { Text(stringResource(R.string.findmy_root_request)) }
        StyledButton(
            onClick = navigateToFinding,
            backdrop = backdrop,
            modifier = Modifier.fillMaxWidth(),
        ) { Text(stringResource(R.string.findmy_finding_start)) }

        if (status.busy) LinearProgressIndicator(Modifier.fillMaxWidth())
        if (status.message.isNotBlank()) {
            Text(status.message, style = MaterialTheme.typography.bodyMedium)
        }

        when (status.state) {
            "needs_2fa" -> {
                Text(stringResource(R.string.apple_account_choose_verification))
                status.methods.forEach { method ->
                    StyledButton(
                        onClick = { viewModel.requestCode(method.id) },
                        backdrop = backdrop,
                        enabled = !status.busy,
                        modifier = Modifier.fillMaxWidth(),
                    ) { Text(method.label) }
                }
                OutlinedTextField(
                    value = code,
                    onValueChange = { value -> code = value.filter { it in '0'..'9' }.take(6) },
                    label = { Text(stringResource(R.string.apple_account_verification_code)) },
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.NumberPassword),
                    singleLine = true,
                    enabled = !status.busy,
                    modifier = Modifier.fillMaxWidth(),
                )
                StyledButton(
                    onClick = { viewModel.submitCode(code); code = "" },
                    backdrop = backdrop,
                    enabled = !status.busy && code.length == 6 && status.selectedMethodId != null,
                    modifier = Modifier.fillMaxWidth(),
                ) { Text(stringResource(R.string.apple_account_verify)) }
            }
            "needs_terms" -> {
                Text(stringResource(R.string.apple_account_terms_intro))
                val terms = status.termsHtml
                if (!terms.isNullOrBlank()) {
                    // Display text only: no remote scripts, images, or WebView navigation.
                    val text = remember(terms) {
                        HtmlCompat.fromHtml(terms, HtmlCompat.FROM_HTML_MODE_LEGACY).toString()
                    }
                    Text(text, style = MaterialTheme.typography.bodySmall)
                    StyledButton(
                        onClick = { viewModel.acceptTerms() },
                        backdrop = backdrop,
                        enabled = !status.busy,
                        modifier = Modifier.fillMaxWidth(),
                    ) { Text(stringResource(R.string.apple_account_accept_terms)) }
                } else {
                    StyledButton(
                        onClick = { viewModel.fetchTerms() },
                        backdrop = backdrop,
                        enabled = !status.busy,
                    ) { Text(stringResource(R.string.apple_account_read_terms)) }
                }
            }
            "signed_in" -> {
                Text(stringResource(R.string.apple_account_connected), style = MaterialTheme.typography.titleMedium)
                Text(stringResource(R.string.findmy_devices_title), style = MaterialTheme.typography.titleMedium)
                if (devices.busy) LinearProgressIndicator(Modifier.fillMaxWidth())
                if (devices.message.isNotBlank()) Text(devices.message)
                devices.devices.forEach { device ->
                    Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                        Text(device.name, style = MaterialTheme.typography.titleSmall)
                        Text("${device.type} · ${device.state}", style = MaterialTheme.typography.bodyMedium)
                    }
                }
                StyledButton(
                    onClick = { viewModel.refreshDevices() }, backdrop = backdrop,
                    enabled = !status.busy && !devices.busy,
                    modifier = Modifier.fillMaxWidth(),
                ) { Text(stringResource(R.string.findmy_devices_refresh)) }
                if (enrollment.busy) LinearProgressIndicator(Modifier.fillMaxWidth())
                if (enrollment.message.isNotBlank()) Text(enrollment.message, style = MaterialTheme.typography.bodyMedium)
                StyledButton(
                    onClick = { viewModel.refreshEnrollment() },
                    backdrop = backdrop,
                    enabled = !status.busy && !enrollment.busy,
                    modifier = Modifier.fillMaxWidth(),
                ) { Text(stringResource(R.string.findmy_account_check)) }
                CaseRecoverySection(viewModel, backdrop, status.busy || enrollment.busy || devices.busy)
            }
            "ready", "reauth_required", "error" -> {
                OutlinedTextField(
                    value = email,
                    onValueChange = { email = it },
                    label = { Text(stringResource(R.string.apple_account_email)) },
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Email),
                    singleLine = true,
                    enabled = !status.busy,
                    modifier = Modifier.fillMaxWidth(),
                )
                OutlinedTextField(
                    value = password,
                    onValueChange = { password = it },
                    label = { Text(stringResource(R.string.apple_account_password)) },
                    visualTransformation = PasswordVisualTransformation(),
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Password),
                    singleLine = true,
                    enabled = !status.busy,
                    modifier = Modifier.fillMaxWidth(),
                )
                StyledButton(
                    onClick = { viewModel.signIn(email, password); password = "" },
                    backdrop = backdrop,
                    enabled = !status.busy && email.isNotBlank() && password.isNotEmpty(),
                    modifier = Modifier.fillMaxWidth(),
                ) { Text(stringResource(R.string.apple_account_sign_in)) }
            }
            else -> {
                StyledButton(
                    onClick = { viewModel.connect() },
                    backdrop = backdrop,
                    enabled = !status.busy,
                    modifier = Modifier.fillMaxWidth(),
                ) { Text(stringResource(R.string.apple_account_continue)) }
            }
        }
        if (status.state in setOf("needs_2fa", "needs_terms", "signed_in", "reauth_required", "error", "ready")) {
            StyledButton(
                onClick = { password = ""; code = ""; viewModel.signOut() },
                backdrop = backdrop,
                enabled = !status.busy,
                modifier = Modifier.fillMaxWidth(),
            ) { Text(stringResource(R.string.apple_account_sign_out)) }
        }
        Spacer(Modifier.height(bottom))
        }
    }
}
