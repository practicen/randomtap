//
//  AppDelegate.swift
//  randomtap
//
//  Created by 丸井優希 on 2022/12/02.
//

import UIKit
import GoogleMobileAds
import NCMB

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    let applicationkey  = "bb4b093be1ac0232f8553c637e59aa6b1757d2dbec3c4e91e6a349c91b169860"
    let clientkey       = "669e5cd0a70c2d4c406c66087eb80e414c3b18aa85aae3a576cdac62c5a3935e"


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        NCMB.initialize(applicationKey: applicationkey, clientKey: clientkey)
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

