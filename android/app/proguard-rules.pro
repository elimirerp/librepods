# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-keep class me.kavishdevar.librepods.utils.KotlinModule { *; }

# JNI symbols and the Python bridge refer to these Java names directly.
-keep class me.kavishdevar.librepods.findmy.anisette.** { *; }

# app_process launches this exact class from the installed APK.
-keep class me.kavishdevar.librepods.findmy.root.RootBluetoothProbe { *; }
-keep class me.kavishdevar.librepods.findmy.root.RootHciBridge** { *; }
