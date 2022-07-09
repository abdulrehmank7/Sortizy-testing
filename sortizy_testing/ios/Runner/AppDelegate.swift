import UIKit
import Flutter
import moengage_flutter
import MoEngage

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    // Call SDK Initialize method
    // Update your SDK Config here.
    var sdkConfig : MOSDKConfig
    let yourAppID = "" //App ID: You can be obtain it from App Settings in MoEngage Dashboard.
    if let config = MoEngage.sharedInstance().getDefaultSDKConfiguration() 		{
        sdkConfig = config
        sdkConfig.moeAppID = yourAppID
        sdkConfig.appGroupID = ""
    }
    else{
        sdkConfig = MOSDKConfig.init(appID: yourAppID)
    }

    // Set Correct Data Center here
    sdkConfig.moeDataCenter = DATA_CENTER_03

    // Set App Group ID for sharing data between App and extensions(if Any)
    //sdkConfig.appGroupID = "app group id"

    // Change these if required, by default all the below opt-outs are set to false.
    //sdkConfig.optOutIDFATracking = false
    //sdkConfig.optOutIDFVTracking = false
    //sdkConfig.optOutDataTracking = false
    //sdkConfig.optOutPushNotification = false
    //sdkConfig.optOutInAppCampaign = false
    MoEngage.enableSDKLogs(false)
    MOFlutterInitializer.sharedInstance.initializeWithSDKConfig(sdkConfig, andLaunchOptions: launchOptions)

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
