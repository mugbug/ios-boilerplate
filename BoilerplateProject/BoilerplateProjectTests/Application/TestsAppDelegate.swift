//
//  TestsAppDelegate.swift
//  BoilerplateProjectTests
//
//  Created by Pedro M. Zaroni on 24/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit
@testable import BoilerplateProject

@objc(TestsAppDelegate)
class TestsAppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        Current = .mock

        return true
    }

}
