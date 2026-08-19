# ProGuard rules for Headwind MDM (HMDM) Launcher

# Keep Jackson/JSON data classes from obfuscation
-keep class com.hmdm.launcher.json.** { *; }

# Keep system-called components
-keep class com.hmdm.launcher.AdminReceiver { *; }
-keep class com.hmdm.launcher.receiver.** { *; }
-keep class com.hmdm.launcher.service.** { *; }
-keep class com.hmdm.launcher.worker.** { *; }

# Keep Jackson annotations
-keepattributes *Annotation*,EnclosingMethod,Signature
-keepnames class com.fasterxml.jackson.** { *; }

# Retrofit rules
-keepattributes Signature, InnerClasses, RuntimeVisibleAnnotations, RuntimeVisibleParameterAnnotations
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keep interface retrofit2.** { *; }

# Paho MQTT rules
-keep class org.eclipse.paho.client.mqttv3.** { *; }
-dontwarn org.eclipse.paho.client.mqttv3.**

# Keep everything else that was previously kept (Headwind Kiosk compatibility if needed)
# -keep class !com.hmdm.launcher.** { *; } # Be careful with this, it's very broad

# Preserve line numbers for crash reporting
-keepattributes SourceFile,LineNumberTable

# Suppress warnings for missing java.beans classes (often needed by Jackson/JAX-B)
-dontwarn java.beans.ConstructorProperties
-dontwarn java.beans.Transient
