package me.kavishdevar.librepods.presentation.screens

import android.os.SystemClock
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.systemBarsPadding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.rotate
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlinx.coroutines.delay
import me.kavishdevar.librepods.R
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.lifecycle.viewmodel.compose.viewModel
import me.kavishdevar.librepods.presentation.viewmodel.AppleAccountViewModel
import me.kavishdevar.librepods.presentation.viewmodel.RootAccessViewModel
import me.kavishdevar.librepods.findmy.uwb.FindingReading
import androidx.compose.ui.platform.LocalContext
import java.util.Locale
import kotlin.math.abs

@Composable
fun CaseFindingRoute(
    onClose: () -> Unit,
    account: AppleAccountViewModel = viewModel(),
    root: RootAccessViewModel = viewModel(),
) {
    val rootState by root.status.collectAsStateWithLifecycle()
    val accountState by account.status.collectAsStateWithLifecycle()
    val recovery by account.caseRecoveryStatus.collectAsStateWithLifecycle()
    val owner by account.ownerLinkStatus.collectAsStateWithLifecycle()
    LaunchedEffect(Unit) { root.requestRoot() }
    val rootReady = rootState.result?.let {
        it.granted && it.bluetoothPolicyAllowed && it.recognizedHal
    } == true
    val busy = rootState.busy || owner.busy || recovery.busy
    val title = stringResource(when {
        owner.busy -> R.string.findmy_owner_checking
        rootState.busy || rootState.result == null -> R.string.findmy_owner_access_checking
        !rootReady -> R.string.findmy_owner_access_needed
        accountState.state != "signed_in" -> R.string.findmy_owner_account_needed
        !recovery.keysAvailable -> R.string.findmy_owner_keys_needed
        owner.verified -> R.string.findmy_owner_connected
        owner.state == "restore_unconfirmed" -> R.string.findmy_owner_restore_unknown
        owner.state == "error" -> R.string.findmy_owner_failed
        else -> R.string.findmy_owner_ready
    })
    val message = when {
        owner.busy -> stringResource(R.string.findmy_owner_checking_message)
        rootState.busy || rootState.result == null -> stringResource(R.string.findmy_owner_access_message)
        !rootReady -> stringResource(if (rootState.result?.granted == true)
            R.string.findmy_root_restricted else R.string.findmy_root_required)
        accountState.state != "signed_in" -> stringResource(R.string.findmy_owner_account_message)
        !recovery.keysAvailable -> stringResource(R.string.findmy_owner_keys_message)
        owner.state != "idle" -> owner.message
        else -> stringResource(R.string.findmy_owner_ready_message)
    }
    val canConnect = rootReady && accountState.state == "signed_in" && recovery.keysAvailable && !busy
    CaseFindingScreen(
        reading = null,
        message = message,
        statusTitle = title,
        busy = busy,
        actionLabel = stringResource(if (!rootReady) R.string.findmy_root_request else
            if (owner.state == "error" || owner.state == "restore_unconfirmed") R.string.findmy_owner_retry
            else R.string.findmy_owner_check),
        onAction = when {
            busy -> null
            !rootReady -> ({ root.requestRoot() })
            canConnect -> ({ account.runOwnerLinkDiagnostic() })
            else -> null
        },
        closeLabel = stringResource(R.string.findmy_owner_close),
        onClose = onClose,
    )
}

/** Real sessions supply readings here. Sample data is confined to the debug activity. */
@Composable
fun CaseFindingScreen(
    reading: FindingReading?,
    message: String? = null,
    simulation: Boolean = false,
    onClose: () -> Unit,
    onPlaySound: (() -> Unit)? = null,
    statusTitle: String? = null,
    busy: Boolean = false,
    actionLabel: String? = null,
    onAction: (() -> Unit)? = null,
    closeLabel: String? = null,
) {
    var now by remember { mutableLongStateOf(SystemClock.elapsedRealtime()) }
    LaunchedEffect(reading) {
        while (true) { now = SystemClock.elapsedRealtime(); delay(250) }
    }
    val fix = reading?.takeIf { it.usableAt(now) }
    val bearing = fix?.bearingAt(now)
    val nearby = fix != null && fix.distanceMeters < 0.4f
    val background = if (fix != null) Color(0xFF00C45A) else Color(0xFF252B2D)
    val direction = when {
        nearby -> stringResource(R.string.findmy_finding_here)
        bearing == null -> stringResource(R.string.findmy_finding_move_phone)
        abs(bearing) < 20 -> stringResource(R.string.findmy_finding_ahead)
        abs(bearing) > 150 -> stringResource(R.string.findmy_finding_behind)
        bearing < 0 -> stringResource(R.string.findmy_finding_left)
        else -> stringResource(R.string.findmy_finding_right)
    }
    // Unwrap the circle so crossing -180/180 doesn't spin the arrow a full turn.
    var targetAngle by remember { mutableStateOf(0f) }
    LaunchedEffect(bearing) {
        if (bearing != null) {
            val delta = ((bearing - targetAngle + 540f) % 360f + 360f) % 360f - 180f
            targetAngle += delta
        }
    }
    val arrowAngle by animateFloatAsState(targetAngle, tween(180), label = "case-bearing")
    Column(
        Modifier.fillMaxSize().background(background).systemBarsPadding().padding(horizontal = 26.dp),
    ) {
        Spacer(Modifier.height(24.dp))
        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically) {
            Text(stringResource(R.string.findmy_finding_label), color = Color.White.copy(alpha = .65f),
                fontSize = 12.sp, letterSpacing = .6.sp)
            if (simulation) Text(stringResource(R.string.findmy_finding_simulation),
                color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.SemiBold,
                modifier = Modifier.background(Color.Black.copy(alpha = .18f), CircleShape)
                    .padding(horizontal = 12.dp, vertical = 6.dp))
        }
        Text(stringResource(R.string.findmy_finding_case), color = Color.White,
            fontSize = 28.sp, lineHeight = 34.sp, fontWeight = FontWeight.SemiBold)
        Canvas(Modifier.fillMaxWidth().weight(1f).semantics {
            contentDescription = if (bearing != null) direction else "Searching for case"
        }) {
            val centerX = size.width / 2
            val haloY = size.height * .22f
            drawCircle(Color.White.copy(alpha = .12f), 39.dp.toPx(), Offset(centerX, haloY))
            drawCircle(Color.White, 10.dp.toPx(), Offset(centerX, haloY))
            val arrowCenter = Offset(centerX, size.height * .62f)
            if (bearing != null && !nearby) {
                val arm = minOf(size.width * .23f, 76.dp.toPx())
                val shaft = minOf(size.height * .24f, 94.dp.toPx())
                val stroke = 22.dp.toPx()
                rotate(arrowAngle, arrowCenter) {
                    val tip = Offset(centerX, arrowCenter.y - shaft)
                    drawLine(Color.White, tip, Offset(centerX, arrowCenter.y + shaft), stroke, StrokeCap.Round)
                    drawLine(Color.White, tip, Offset(centerX - arm, tip.y + arm), stroke, StrokeCap.Round)
                    drawLine(Color.White, tip, Offset(centerX + arm, tip.y + arm), stroke, StrokeCap.Round)
                }
            } else {
                val radius = if (nearby) 55.dp.toPx() else 38.dp.toPx()
                drawCircle(Color.White.copy(alpha = .13f), radius * 1.6f, arrowCenter)
                drawCircle(Color.White, radius, arrowCenter)
            }
        }
        if (fix != null) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(String.format(Locale.getDefault(), "%.1f", fix.distanceMeters), color = Color.White,
                    fontSize = 56.sp, fontWeight = FontWeight.Light)
                Spacer(Modifier.width(8.dp))
                Text("m", color = Color.White.copy(alpha = .55f), fontSize = 56.sp, fontWeight = FontWeight.Light)
            }
            Text(direction, color = Color.White, fontSize = 44.sp, lineHeight = 50.sp,
                fontWeight = FontWeight.Light)
        } else {
            Text(statusTitle ?: stringResource(if (reading != null) R.string.findmy_finding_signal_lost else R.string.findmy_finding_connecting),
                color = Color.White, fontSize = 36.sp, lineHeight = 42.sp, fontWeight = FontWeight.Light)
            Text(message ?: stringResource(R.string.findmy_finding_move_around),
                color = Color.White.copy(alpha = .7f), fontSize = 16.sp, lineHeight = 22.sp)
        }
        if (busy) {
            Spacer(Modifier.height(14.dp))
            CircularProgressIndicator(color = Color.White, modifier = Modifier.size(24.dp))
        }
        if (actionLabel != null && !busy) {
            Spacer(Modifier.height(14.dp))
            Button(onClick = { onAction?.invoke() }, enabled = onAction != null,
                modifier = Modifier.fillMaxWidth()) { Text(actionLabel) }
        }
        Spacer(Modifier.height(28.dp))
        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
            IconButton(onClick = onClose, modifier = Modifier.size(56.dp)
                .background(Color.White.copy(alpha = .18f), CircleShape)) {
                Icon(Icons.Default.Close, closeLabel ?: stringResource(R.string.findmy_finding_stop), tint = Color.White)
            }
            IconButton(onClick = { onPlaySound?.invoke() }, enabled = onPlaySound != null,
                modifier = Modifier.size(56.dp).background(Color.White.copy(alpha = .18f), CircleShape)) {
                Canvas(Modifier.size(25.dp).semantics {
                    contentDescription = if (onPlaySound == null) "Play sound unavailable" else "Play sound"
                }) {
                    val tint = Color.White.copy(alpha = if (onPlaySound != null) 1f else .4f)
                    val w = size.width; val h = size.height
                    drawLine(tint, Offset(w * .15f, h * .38f), Offset(w * .15f, h * .62f), w * .19f, StrokeCap.Round)
                    drawLine(tint, Offset(w * .23f, h * .42f), Offset(w * .47f, h * .21f), w * .13f, StrokeCap.Round)
                    drawLine(tint, Offset(w * .47f, h * .21f), Offset(w * .47f, h * .79f), w * .13f, StrokeCap.Round)
                    drawLine(tint, Offset(w * .47f, h * .79f), Offset(w * .23f, h * .58f), w * .13f, StrokeCap.Round)
                    drawArc(tint, -45f, 90f, false, Offset(w * .25f, h * .08f),
                        androidx.compose.ui.geometry.Size(w * .7f, h * .84f),
                        style = androidx.compose.ui.graphics.drawscope.Stroke(w * .09f, cap = StrokeCap.Round))
                }
            }
        }
        Spacer(Modifier.height(22.dp))
    }
}
