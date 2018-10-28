//
//  AppDelegate.swift
//  UICollectionViewProgrammatically
//
//  Created by Rudrank Riyam on 28/10/18.
//  Copyright © 2018 iOS-Projects. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let flowlayout = UICollectionViewFlowLayout()
        let customCollectionViewController = CustomCollectionViewController(collectionViewLayout: flowlayout)
        
        window?.rootViewController = UINavigationController(rootViewController: customCollectionViewController)

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}
