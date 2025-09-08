import UIKit
import flutter_intelligence_sign3
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      let flutterIntelligenceSign3Plugin = FlutterIntelligenceSign3Plugin()
      OptionsBuilder.build(
          clientId: "test_tenant_ios",
          secret: "secret-0ba302d5-6001-4462-a130-c413f87b689b",
          env: OptionsBuilder.ENV_DEV)
      flutterIntelligenceSign3Plugin.initAsync()
      
      
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
