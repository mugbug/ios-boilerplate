//
//  main.swift
//  BoilerplateProject
//
//  Created by Pedro M. Zaroni on 24/05/20.
//  Copyright © 2020 mugbug. All rights reserved.
//

import UIKit

let appDelegateClass: AnyClass =
    NSClassFromString("TestsAppDelegate") ?? AppDelegate.self

        UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    nil,
    NSStringFromClass(appDelegateClass)
)
