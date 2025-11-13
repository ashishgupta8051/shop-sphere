import UIKit
import flutter_intelligence_sign3
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      if #available(iOS 15.0, *) {
          let flutterIntelligenceSign3Plugin = FlutterIntelligenceSign3Plugin()
          OptionsBuilder.build(
//            clientId: "test_tenant_ios",
//            secret: "secret-0ba302d5-6001-4462-a130-c413f87b689b",
            clientId: "niyo-di-ios-prod",
            secret: "secret-95bc3c3f-af00-47e2-ad2d-d12fc09338e4",
            env: OptionsBuilder.ENV_DEV)
          flutterIntelligenceSign3Plugin.initAsync()
      } 
      
      
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
