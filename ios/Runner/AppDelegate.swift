import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
   // GMSServices.provideAPIKey("AIzaSyBOvJBtR7TLwI8o48gCKdY_bE0X9iEPTjA")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
//  -> BOOL application:(UIApplication *)application
//     didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//   [GMSServices provideAPIKey:@"YOUR KEY HERE"];
//   [GeneratedPluginRegistrant registerWithRegistry:self];
//   return [super application:application didFinishLaunchingWithOptions:launchOptions];
// }
}
