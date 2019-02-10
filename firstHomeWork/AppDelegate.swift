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
    private let isLoggedAppState = false
    private var previoslyState = ""

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.printCurrentState(text: "Application moved from not running state to inactive state, method:\(#function)", isLogged: isLoggedAppState)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        self.printCurrentState(text: "Application moved from \(previoslyState) state to inactive state, method:\(#function)", isLogged: isLoggedAppState)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        self.printCurrentState(text: "Application moved from inactive state to background, method:\(#function)", isLogged: isLoggedAppState)
        self.previoslyState = "background"
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        self.printCurrentState(text: "Application moved from background to inactive, method:\(#function)", isLogged: isLoggedAppState)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        self.printCurrentState(text: "Application moved from inactive state to active state, method:\(#function)", isLogged: isLoggedAppState)
        self.previoslyState = "active"
    }

    func applicationWillTerminate(_ application: UIApplication) {
        self.printCurrentState(text: "Application moved from background to not running state, method:\(#function)", isLogged: isLoggedAppState)
    }

    // MARK: print with option:
    private func printCurrentState(text message: String, isLogged: Bool) {
        guard isLogged else { return }
        print(message)
    }
}

