//
//  AppDelegate.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 23/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appRouter: AppRouter?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        #if DEBUG
        Current = .mock
        #endif


        let aae = UIWindow()

        window = UIWindow(frame: UIScreen.main.bounds)
        appRouter = AppRouter(window: window)
        appRouter?.start()

        return true
    }
}
