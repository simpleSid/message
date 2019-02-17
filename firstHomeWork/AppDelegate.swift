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
<<<<<<< HEAD
    let logManager = LogManager()
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        logManager.isLoggedState = false
        logManager.printCurrentState(text: "Application moved from not running state to inactive state, method:\(#function)", isLogged: logManager.isLoggedState)
=======

    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
>>>>>>> secondLesson
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

