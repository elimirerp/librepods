package me.kavishdevar.librepods.findmy

import android.os.Bundle
import android.view.ViewTreeObserver
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import me.kavishdevar.librepods.presentation.screens.AppleAccountScreen
import me.kavishdevar.librepods.presentation.theme.LibrePodsTheme
import java.util.concurrent.atomic.AtomicInteger

/** Internal debug renderer regression. Shows account controls without input or root requests. */
class AppleAccountRenderProbeActivity : ComponentActivity() {
    val drawnFrames = AtomicInteger()
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setShowWhenLocked(true)
        setTurnScreenOn(true)
        enableEdgeToEdge()
        window.decorView.viewTreeObserver.addOnDrawListener(object : ViewTreeObserver.OnDrawListener {
            override fun onDraw() {
                drawnFrames.incrementAndGet()
                window.decorView.postInvalidateOnAnimation()
            }
        })
        setContent {
            LibrePodsTheme(m3eEnabled = false) {
                AppleAccountScreen(navigateToFinding = { finish() })
            }
        }
    }
}
