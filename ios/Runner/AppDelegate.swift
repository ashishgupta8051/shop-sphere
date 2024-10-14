import UIKit
import Flutter
import Foundation


@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      
      // Usage example
      if let credentials = readCredentials() {
          print("Username: \(credentials["REPO_USERNAME"] ?? "No username")")
          print("Password: \(credentials["REPO_PASSWORD"] ?? "No password")")
          print("URL: \(credentials["REPO_URL"] ?? "No URL")")
      }else{
          print("Not able to read file")
      }
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    func readCredentials() -> [String: String]? {
        if let filePath = Bundle.main.path(forResource: "sign3Credential", ofType: "env") {
            do {
                let fileContents = try String(contentsOfFile: filePath)
                var credentials = [String: String]()
                let lines = fileContents.split(separator: "\n")
                
                for line in lines {
                    let cleanedLine = line.trimmingCharacters(in: .whitespacesAndNewlines)
                    
                    // Ignore comments
                    if cleanedLine.starts(with: "#") || cleanedLine.isEmpty {
                        continue
                    }
                    
                    let keyValue = cleanedLine.split(separator: "=")
                    if keyValue.count == 2 {
                        let key = String(keyValue[0]).trimmingCharacters(in: .whitespaces)
                        let value = String(keyValue[1]).trimmingCharacters(in: .whitespaces)
                        credentials[key] = value
                    }
                }
                
                return credentials
            } catch {
                print("Error reading properties file: \(error)")
            }
        }
        return nil
    }

    
}
