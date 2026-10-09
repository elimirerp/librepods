package me.kavishdevar.librepods.findmy.uwb

import android.os.Bundle
import android.os.SystemClock
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import kotlinx.coroutines.delay
import me.kavishdevar.librepods.presentation.screens.CaseFindingScreen
import me.kavishdevar.librepods.presentation.theme.LibrePodsTheme

/** Explicitly labelled debug simulation. This activity doesn't exist in release builds. */
class FindingPreviewActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        val scenario = intent.getStringExtra("scenario") ?: "ahead"
        setContent {
            var reading by remember { mutableStateOf<FindingReading?>(null) }
            LaunchedEffect(scenario) {
                while (true) {
                    val time = SystemClock.elapsedRealtime()
                    reading = when (scenario) {
                        "searching" -> null
                        "lost" -> FindingReading(2.3f, 0f, true, time - 5000)
                        "nearby" -> FindingReading(.2f, null, false, time)
                        "left" -> FindingReading(2.3f, -55f, true, time)
                        "distance" -> FindingReading(2.3f, null, false, time)
                        else -> FindingReading(2.3f, 0f, true, time)
                    }
                    delay(250)
                }
            }
            LibrePodsTheme {
                CaseFindingScreen(reading, simulation = true, onClose = { finish() })
            }
        }
    }
}
