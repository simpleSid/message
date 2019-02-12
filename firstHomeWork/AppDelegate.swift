//
//  AppDelegate.swift
//  firstHomeWork
//
//  Created by Денис Сидоренко on 07/02/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let logManager = LogManager()
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        logManager.isLoggedState = false
        logManager.printCurrentState(text: "Application moved from not running state to inactive state, method:\(#function)", isLogged: logManager.isLoggedState)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        logManager.printCurrentState(text: "Application moved from \(logManager.previoslyState) state to inactive state, method:\(#function)", isLogged: logManager.isLoggedState)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        logManager.printCurrentState(text: "Application moved from inactive state to background, method:\(#function)", isLogged: logManager.isLoggedState)
        logManager.previoslyState = "background"
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        logManager.printCurrentState(text: "Application moved from background to inactive, method:\(#function)", isLogged: logManager.isLoggedState)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        logManager.printCurrentState(text: "Application moved from inactive state to active state, method:\(#function)", isLogged: logManager.isLoggedState)
        logManager.previoslyState = "active"
    }

    func applicationWillTerminate(_ application: UIApplication) {
        logManager.printCurrentState(text: "Application moved from background to not running state, method:\(#function)", isLogged: logManager.isLoggedState)
    }
}

