package com.example.shopsphere

import android.os.Build
import com.sign3.intelligence.flutter_intelligence_sign3.OptionsBuilder
import com.sign3.intelligence.flutter_intelligence_sign3.Sign3IntelligencePlugin
import io.flutter.app.FlutterApplication

class MyApp : FlutterApplication() {

    override fun onCreate() {
        super.onCreate()

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            val sign3IntelligencePlugin = Sign3IntelligencePlugin()
            if (sign3IntelligencePlugin.stop()) return
            OptionsBuilder.build(
                "test_tenant_flutter",
                "secret-3c23efa9-22af-47ff-bd64-42b266d4bf55",
                OptionsBuilder.ENV_PROD  // For Prod: Options.ENV_PROD, For Dev: Options.ENV_DEV
            )
            sign3IntelligencePlugin.initAsync(this)
        }
    }
}